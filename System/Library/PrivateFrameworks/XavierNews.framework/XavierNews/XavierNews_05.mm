double sub_217ED2B9C@<D0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  v10 = *a3;
  v11 = *a4;
  *a5 = *a1;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 17) = v8;
  *(a5 + 18) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  return result;
}

__n128 sub_217ED2BD0@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *&v14 = a4;
  sub_217EC6A4C(a4);
  *(&v14 + 1) = a5;
  sub_217EC6C1C(a5);
  *v15 = a6;
  sub_217EC6DE8(a6);
  *&v15[8] = *a1;
  *&v15[24] = a1[1];
  *&v15[40] = a7;
  sub_217EC6FB4(a7);
  sub_217EC7178(a2);
  *(a3 + 32) = *&v15[16];
  *(a3 + 48) = *&v15[32];
  *(a3 + 64) = a2;
  result = *v15;
  *a3 = v14;
  *(a3 + 16) = *v15;
  return result;
}

double sub_217ED2CAC@<D0>(double *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = *a1;
  sub_217EC668C(*a1, a1[1]);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  sub_217EC686C(v4, v5);
  result = *&v7;
  *a3 = v7;
  a3[1] = v8;
  return result;
}

double sub_217ED2D58@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, double)@<X1>, void (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *&v15 = a5;
  v12 = a1();
  *(&v15 + 1) = a6;
  v13 = a2(v12, a6);
  a3(v13, a7);
  result = a7;
  *a4 = v15;
  *(a4 + 16) = a7;
  return result;
}

double sub_217ED2DF4@<D0>(char a1@<W0>, __int128 *a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, __int128 a17, double a18, double a19)
{
  v31 = *a2;
  v28 = *(a2 + 2);
  v32 = *a4;
  v29 = *(a4 + 2);
  LOBYTE(v35) = a1;
  *(&v35 + 1) = a8;
  sub_217EC0844(a8);
  *v36 = a9;
  sub_217EC0A10(a9);
  *&v36[8] = v31;
  *&v36[24] = v28;
  v37[0] = a3;
  *&v37[8] = v32;
  *&v37[24] = v29;
  *&v38 = a10;
  sub_217EC0BDC(a10);
  *(&v38 + 1) = a11;
  sub_217EC0DAC(a11);
  *&v39 = a12;
  sub_217EC0F78(a12);
  *(&v39 + 1) = a13;
  sub_217EC1140(a13);
  LOBYTE(v40) = a5;
  *(&v40 + 1) = a14;
  sub_217EC1308(a14);
  *&v41 = a15;
  sub_217EC14E0(a15);
  *(&v41 + 1) = a16;
  sub_217EC16A8(a16);
  sub_217EC1870(*&a17);
  sub_217EC1A50(*(&a17 + 1));
  LOBYTE(v42) = a6;
  *(&v42 + 1) = a18;
  sub_217EC1C1C(a18);
  sub_217EC1DE4(a19);
  *(a7 + 128) = v41;
  *(a7 + 144) = a17;
  *(a7 + 160) = v42;
  *(a7 + 176) = a19;
  *(a7 + 64) = *&v37[16];
  *(a7 + 80) = v38;
  *(a7 + 96) = v39;
  *(a7 + 112) = v40;
  *a7 = v35;
  *(a7 + 16) = *v36;
  result = *(&v31 + 1);
  *(a7 + 32) = *&v36[16];
  *(a7 + 48) = *v37;
  return result;
}

double sub_217ED2FF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *&v14 = a3;
  sub_217EBDEA8(a3);
  *(&v14 + 1) = a4;
  sub_217EBE070(a4);
  sub_217EBE240(a1);
  *&v15 = a5;
  sub_217EBE3F8(a5);
  *(&v15 + 1) = a6;
  sub_217EBE5C4(a6);
  sub_217EBE790(a7);
  result = a7;
  *a2 = v14;
  *(a2 + 16) = a1;
  *(a2 + 24) = v15;
  *(a2 + 40) = a7;
  return result;
}

__n128 sub_217ED30C8@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, __int128 a15)
{
  *&v29 = a7;
  sub_217EBE954(a7);
  BYTE8(v29) = a1;
  *&v30 = a8;
  sub_217EBEB30(a8);
  BYTE8(v30) = a2;
  *&v31 = a9;
  sub_217EBED00(a9);
  *(&v31 + 1) = a10;
  sub_217EBEEC8(a10);
  v32.n128_f64[0] = a11;
  sub_217EBF0A4(a11);
  v32.n128_f64[1] = a12;
  sub_217EBF26C(a12);
  *&v33 = a13;
  sub_217EBF430(a13);
  *(&v33 + 1) = a14;
  sub_217ECC860(a14);
  *v34 = a15;
  sub_217ECC868(*&a15);
  sub_217EBF5F8(*(&a15 + 1));
  v34[16] = a3;
  v34[17] = a4;
  v34[18] = a5;
  *(a6 + 64) = v33;
  *(a6 + 80) = a15;
  *a6 = v29;
  *(a6 + 16) = v30;
  result = v32;
  *(a6 + 32) = v31;
  *(a6 + 48) = v32;
  *(a6 + 95) = *&v34[15];
  return result;
}

double sub_217ED324C@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *&v10 = a2;
  sub_217EC1FAC(a2);
  *(&v10 + 1) = a3;
  sub_217EC2188(a3);
  *&v11 = a4;
  sub_217ECC85C(a4);
  *(&v11 + 1) = a5;
  sub_217ECC864(a5);
  result = *&v10;
  *a1 = v10;
  a1[1] = v11;
  return result;
}

unint64_t sub_217ED32E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return sub_217EC7330(v2);
}

uint64_t sub_217ED3314@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *a3 = v4;
  *(a3 + 8) = a4;
  *(a3 + 16) = result;
  return result;
}

__n128 sub_217ED3334@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  *(a1 + 18) = v4;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217ED3360@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x780uLL);
  memcpy(a1, (v1 + 40), 0x780uLL);
  return sub_217EB4358(__dst, v4);
}

__n128 sub_217ED33C4@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = *(v1 + 3000);
  v2 = *(v1 + 2984);
  *(a1 + 32) = *(v1 + 2968);
  *(a1 + 48) = v2;
  result = *(v1 + 2952);
  *a1 = *(v1 + 2936);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217ED3408@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_217ED34EC(uint64_t a1, uint64_t a2)
{
  if (((a1 | a2) & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v10 = sub_217F4B104();
  v11 = v5;
  v6 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v6);

  if (*(v4 + 16))
  {
    v7 = sub_217E8E88C(v10, v11);
    v9 = v8;

    if (v9)
    {
      return *(*(v4 + 56) + 8 * v7);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_217ED35E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_217ED3A44(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED3610(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_217E8E88C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED3744(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v34 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v3 + 56) + (v13 << 6);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v17 + 48);
    v36 = *(v17 + 56);
    v37 = *(v17 + 40);

    if (!v15)
    {
      return v15 == 0;
    }

    v35 = v10;
    v24 = v8;
    v25 = v3;
    v26 = sub_217E8E88C(v16, v15);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return v15 == 0;
    }

    v29 = *(a2 + 56) + (v26 << 6);
    v33 = *v29 == (v18 & 1) && *(v29 + 8) == v19 && *(v29 + 16) == v20 && *(v29 + 24) == v21 && *(v29 + 32) == v22;
    result = v15 == 0;
    if (v33 && ((*(v29 + 40) ^ v37) & 1) == 0 && *(v29 + 48) == v23)
    {
      v3 = v25;
      v8 = v24;
      v7 = v35;
      if (((*(v29 + 56) ^ v36) & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v34 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ED393C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_217E8E904(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED3A44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_217E8E88C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED3B80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v3 + 56) + 440 * v10);
      memcpy(__dst, v18, 0x1B2uLL);
      memcpy(__src, v18, 0x1B2uLL);
      v28 = v16;
      v29 = v17;
      memcpy(v30, __src, sizeof(v30));
      nullsub_133(&v28);

      sub_217F03A50(__dst, &v25, &qword_27CBF5FC0, &qword_217F5A050);
      v19 = v28;
      v20 = v29;
      memcpy(v31, v30, sizeof(v31));
      v12 = v4;
LABEL_16:
      memcpy(v30, v31, sizeof(v30));
      v28 = v19;
      v29 = v20;
      result = sub_217F03AB8(&v28);
      if (result == 1)
      {
        break;
      }

      memcpy(v33, v31, 0x1B2uLL);
      v21 = sub_217E8E88C(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        sub_217F03AD0(v33, &qword_27CBF5FC0, &qword_217F5A050);
        return 0;
      }

      memcpy(v32, (*(a2 + 56) + 440 * v21), 0x1B2uLL);
      sub_217F03A50(v32, __src, &qword_27CBF5FC0, &qword_217F5A050);
      v24 = sub_217EDA6E4(v32, v33);
      sub_217F03AD0(v33, &qword_27CBF5FC0, &qword_217F5A050);
      result = sub_217F03AD0(v32, &qword_27CBF5FC0, &qword_217F5A050);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_217F03B30(&v28);
        v19 = v28;
        v20 = v29;
        memcpy(v31, v30, sizeof(v31));
        v7 = 0;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_217ED3E38()
{
  v1 = 0x676E697070616DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217ED3E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EFF954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED3ECC(uint64_t a1)
{
  v2 = sub_217EF5584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED3F08(uint64_t a1)
{
  v2 = sub_217EF5584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED3F44(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D48, &unk_217F52130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v15 = *(v1 + 2);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF5584();
  sub_217F4B294();
  v20 = v10;
  v19 = 0;
  sub_217EF55D8();
  sub_217F4B0C4();
  if (!v2)
  {
    v14 = v15;
    v18 = 1;
    sub_217F4B0A4();
    v17 = v14;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    sub_217EF562C();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED4168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D70, &qword_217F52140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF5584();
  sub_217F4B274();
  if (!v2)
  {
    v20 = 0;
    sub_217EF56B0();
    sub_217F4AFC4();
    v12 = v21;
    v19 = 1;
    sub_217F4AFA4();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    v17[15] = 2;
    sub_217EF5704();
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v16 = v18;
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED43B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_217ED3A44(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

double sub_217ED43E8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_217ED43F4(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double sub_217ED4424@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return result;
}

double sub_217ED4448(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  *(v1 + 8) = *a1;
  *(v1 + 16) = v3;
  *(v1 + 17) = v4;
  *(v1 + 18) = v5;
  return result;
}

uint64_t sub_217ED4538()
{
  v1 = 0x52656C6369747261;
  v2 = 0x73694C6B63617274;
  if (*v0 != 2)
  {
    v2 = 0x7369566B63617274;
  }

  if (*v0)
  {
    v1 = 0x61547374726F7073;
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

uint64_t sub_217ED45DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EFFA7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED4610(uint64_t a1)
{
  v2 = sub_217EF6814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED464C(uint64_t a1)
{
  v2 = sub_217EF6814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED4688(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D88, &qword_217F52148);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v24 = *(v1 + 16);
  v12 = *(v1 + 17);
  v18 = *(v1 + 18);
  v19 = v12;
  v13 = v1[4];
  v17 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6814();
  sub_217F4B294();
  v20 = v11;
  v25 = 0;
  sub_217EF6868();
  sub_217F4B0C4();
  if (!v2)
  {
    v15 = v17;
    v20 = v10;
    v21 = v24;
    v22 = v19;
    v23 = v18;
    v25 = 1;
    sub_217EF68BC();
    sub_217F4B0C4();
    v20 = v15;
    v25 = 2;
    sub_217EF6910();
    sub_217F4B0C4();
    v20 = v13;
    v25 = 3;
    sub_217EF6964();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED48D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DB8, &qword_217F52150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6814();
  sub_217F4B274();
  if (!v2)
  {
    v28 = 0;
    sub_217EF69B8();
    sub_217F4AFC4();
    v12 = v23;
    v28 = 1;
    sub_217EF6A0C();
    sub_217F4AFC4();
    v13 = v23;
    v27 = v24;
    v14 = v25;
    v15 = v26;
    v28 = 2;
    sub_217EF6A60();
    sub_217F4AFC4();
    v21 = v14;
    v22 = v15;
    v17 = v23;
    v28 = 3;
    sub_217EF6AB4();
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v18 = v23;
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v27;
    v19 = v22;
    *(a2 + 17) = v21;
    *(a2 + 18) = v19;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217ED4BA0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED4BCC;
}

uint64_t sub_217ED4C20(uint64_t a1)
{
  v2 = sub_217EF6B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED4C5C(uint64_t a1)
{
  v2 = sub_217EF6B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED4C98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DE0, &qword_217F52158);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B08();
  sub_217F4B294();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DF0, &qword_217F52160);
  sub_217EF8694(&qword_27CBF5DF8, &qword_27CBF5DF0, &qword_217F52160);
  sub_217F4B0C4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_217ED4E24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E00, &qword_217F52168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B08();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5DF0, &qword_217F52160);
    sub_217EF8694(&qword_27CBF5E08, &qword_27CBF5DF0, &qword_217F52160);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217ED5028(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED5054;
}

uint64_t (*sub_217ED5094(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_217F03FF8;
}

_BYTE *(*sub_217ED50D8(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 9);
  return sub_217ED5104;
}

_BYTE *(*sub_217ED512C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 10);
  return sub_217ED5158;
}

unint64_t sub_217ED5168()
{
  v1 = 0x6E6F697461727564;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000022;
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

uint64_t sub_217ED51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EFFBF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED5224(uint64_t a1)
{
  v2 = sub_217EF6B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5260(uint64_t a1)
{
  v2 = sub_217EF6B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED529C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E10, &qword_217F52170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = v11;
  v12 = *(v1 + 10);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B5C();
  sub_217F4B294();
  v26 = v10;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E20, &qword_217F52178);
  sub_217EF8694(&qword_27CBF5E28, &qword_27CBF5E20, &qword_217F52178);
  sub_217F4B0C4();
  if (!v2)
  {
    v14 = v17;
    v24 = v18;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E30, &qword_217F52180);
    sub_217EF8694(&qword_27CBF5E38, &qword_27CBF5E30, &qword_217F52180);
    sub_217F4B0C4();
    v22 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E40, &qword_217F52188);
    sub_217EF8694(&qword_27CBF5E48, &qword_27CBF5E40, &qword_217F52188);
    sub_217F4B0C4();
    v20 = v12;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E50, &qword_217F52190);
    sub_217EF8694(&qword_27CBF5E58, &qword_27CBF5E50, &qword_217F52190);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED55C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E60, &qword_217F52198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6B5C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E20, &qword_217F52178);
    v25 = 0;
    sub_217EF8694(&qword_27CBF5E68, &qword_27CBF5E20, &qword_217F52178);
    sub_217F4AFC4();
    v12 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E30, &qword_217F52180);
    v23 = 1;
    sub_217EF8694(&qword_27CBF5E70, &qword_27CBF5E30, &qword_217F52180);
    sub_217F4AFC4();
    v18 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E40, &qword_217F52188);
    v21 = 2;
    sub_217EF8694(&qword_27CBF5E78, &qword_27CBF5E40, &qword_217F52188);
    sub_217F4AFC4();
    v17 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E50, &qword_217F52190);
    v19 = 3;
    sub_217EF8694(&qword_27CBF5E80, &qword_27CBF5E50, &qword_217F52190);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v14 = v20;
    *a2 = v12;
    v15 = v17;
    *(a2 + 8) = v18;
    *(a2 + 9) = v15;
    *(a2 + 10) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217ED5978(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217ED59A0;
}

uint64_t sub_217ED59F0(uint64_t a1)
{
  v2 = sub_217EF6BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5A2C(uint64_t a1)
{
  v2 = sub_217EF6BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED5A68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E88, &qword_217F521A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6BB0();
  sub_217F4B294();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E98, &qword_217F521A8);
  sub_217EF8694(&qword_27CBF5EA0, &qword_27CBF5E98, &qword_217F521A8);
  sub_217F4B0C4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_217ED5BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EA8, &qword_217F521B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6BB0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5E98, &qword_217F521A8);
    sub_217EF8694(&qword_27CBF5EB0, &qword_27CBF5E98, &qword_217F521A8);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217ED5DE4(void *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217ED5E0C;
}

uint64_t sub_217ED5E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217ED5EE4(uint64_t a1)
{
  v2 = sub_217EF6C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED5F20(uint64_t a1)
{
  v2 = sub_217EF6C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED5F5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EB8, &qword_217F521B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C04();
  sub_217F4B294();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EC8, &qword_217F521C0);
  sub_217EF8694(&qword_27CBF5ED0, &qword_27CBF5EC8, &qword_217F521C0);
  sub_217F4B0C4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_217ED60E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5ED8, &qword_217F521C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C04();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EC8, &qword_217F521C0);
    sub_217EF8694(&qword_27CBF5EE0, &qword_27CBF5EC8, &qword_217F521C0);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED62DC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 & 1) != 0 || (a4)
  {

    result = 0x3FF0000000000000;
    v7 = MEMORY[0x277D84FA0];
    a3 = 1;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
    if (a5)
    {
      v7 = a5;
    }
  }

  *a6 = result;
  a6[1] = a3;
  a6[2] = v7;
  return result;
}

uint64_t sub_217ED6338(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return sub_217ED6368(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED6368(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    v17 = sub_217F4B254();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED6520()
{
  v1 = 0x6953776F646E6977;
  if (*v0 != 1)
  {
    v1 = 0x546465776F6C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_217ED6590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EFFD64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED65C4(uint64_t a1)
{
  v2 = sub_217EF6C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED6600(uint64_t a1)
{
  v2 = sub_217EF6C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED663C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EE8, &qword_217F521D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[2];
  v14 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C58();
  sub_217F4B294();
  v18 = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v17 = 1;
    sub_217F4B0B4();
    v16 = v11;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF0, &qword_217F521D8);
    sub_217EF6CAC(&qword_280C27688);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED6868@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF8, &qword_217F521E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6C58();
  sub_217F4B274();
  if (!v2)
  {
    v20 = 0;
    sub_217F4AFA4();
    v13 = v12;
    v19 = 1;
    v15 = sub_217F4AFB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5EF0, &qword_217F521D8);
    v17[15] = 2;
    sub_217EF6CAC(&qword_27CBF5F00);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v16 = v18;
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED6AC0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return sub_217ED6368(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED6AF0@<X0>(char *a1@<X8>)
{
  v2 = sub_217F4AEE4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_217ED6B4C()
{
  v1 = 0x6C616E6F73726570;
  if (*v0 != 1)
  {
    v1 = 0x6669737265766964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616369706F74;
  }
}

uint64_t sub_217ED6BB8()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED6C6C()
{
  *v0;
  *v0;
  sub_217F4AB24();
}

uint64_t sub_217ED6D0C()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED6DBC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_217ED6AF0(a1);
}

void sub_217ED6DC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000064657A69;
  v5 = 0x6C616E6F73726570;
  if (v2 != 1)
  {
    v5 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616369706F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_217ED6EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C616E6F73726570;
  v4 = 0xEC00000064657A69;
  if (v2 != 1)
  {
    v3 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616369706F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6C616E6F73726570;
  v8 = 0xEC00000064657A69;
  if (*a2 != 1)
  {
    v7 = 0x6669737265766964;
    v8 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616369706F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217F4B144();
  }

  return v11 & 1;
}

uint64_t sub_217ED700C()
{
  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  *&xmmword_280C27A48 = 0;
  *(&xmmword_280C27A48 + 1) = MEMORY[0x277D84F90];
  xmmword_280C27A58 = xmmword_280C27E78;
  xmmword_280C27A68 = *&qword_280C27E88;
  qword_280C27A78 = qword_280C27E98;
  result = sub_217ED72A0(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  qword_280C27A80 = result;
  return result;
}

uint64_t sub_217ED7090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *(a2 + 32);
  *a4 = a5;
  *(a4 + 8) = a1;
  v9 = *(a2 + 16);
  *(a4 + 16) = *a2;
  *(a4 + 32) = v9;
  *(a4 + 48) = v8;

  v10 = sub_217ED72A0(a3, a1);

  *(a4 + 56) = v10;
  return result;
}

uint64_t sub_217ED713C(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

double sub_217ED718C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double sub_217ED71A0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_217ED71E0(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

double sub_217ED7230@<D0>(uint64_t a1@<X8>)
{
  if (qword_280C27E70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_280C27E98;
  v2 = *&qword_280C27E88;
  *a1 = xmmword_280C27E78;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217ED72A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_280C27E70 == -1)
    {
      v4 = *(a2 + 16);
      if (!v4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      swift_once();
      v4 = *(a2 + 16);
      if (!v4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v5 = xmmword_280C27E78;
    v6 = qword_280C27E88;
    v7 = qword_280C27E90;
    v8 = qword_280C27E98;
    result = sub_217F4AC54();
    *(result + 16) = v4;
    v9 = result + 32;
    if (v4 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v9 += 40 * (v4 & 0x7FFFFFFFFFFFFFFELL);
      v25 = (result + 56);
      v26 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v25 - 3) = v5;
        v25[3] = *(&v5 + 1);
        v25[4] = v6;
        *(v25 - 1) = v6;
        *v25 = v7;
        v25[1] = v8;
        v25[2] = v5;
        v25[5] = v7;
        v25[6] = v8;
        v25 += 10;
        v26 -= 2;
      }

      while (v26);
      if (v4 == v10)
      {
        return result;
      }
    }

    v27 = v4 - v10;
    do
    {
      *v9 = v5;
      *(v9 + 16) = v6;
      *(v9 + 24) = v7;
      *(v9 + 32) = v8;
      v9 += 40;
      --v27;
    }

    while (v27);
    return result;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16) == v2)
  {
  }

  if (qword_280C28EA0 != -1)
  {
    swift_once();
  }

  sub_217F4AD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_217F4C8A0;
  v12 = sub_217F4B104();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = sub_217E86438();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v17 = sub_217F4B104();
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  sub_217F4AA44();

  if (qword_280C27E70 != -1)
  {
    swift_once();
    if (v2)
    {
      goto LABEL_12;
    }

    return MEMORY[0x277D84F90];
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_12:
  v19 = xmmword_280C27E78;
  v20 = qword_280C27E88;
  v21 = qword_280C27E90;
  v22 = qword_280C27E98;
  result = sub_217F4AC54();
  *(result + 16) = v2;
  v23 = result + 32;
  if (v2 == 1)
  {
    v24 = 0;
LABEL_23:
    v30 = v2 - v24;
    do
    {
      *v23 = v19;
      *(v23 + 16) = v20;
      *(v23 + 24) = v21;
      *(v23 + 32) = v22;
      v23 += 40;
      --v30;
    }

    while (v30);
    return result;
  }

  v24 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v23 += 40 * (v2 & 0x7FFFFFFFFFFFFFFELL);
  v28 = (result + 56);
  v29 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v28 - 3) = v19;
    v28[3] = *(&v19 + 1);
    v28[4] = v20;
    *(v28 - 1) = v20;
    *v28 = v21;
    v28[1] = v22;
    v28[2] = v19;
    v28[5] = v21;
    v28[6] = v22;
    v28 += 10;
    v29 -= 2;
  }

  while (v29);
  if (v2 != v24)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_217ED75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[7];
  v24 = *(v2 + 1);
  v25 = *(v2 + 2);
  v26 = v2[6];

  sub_217ED77A8(a1);
  v9 = v8;
  v10 = sub_217EFFE94(v6, v7, sub_217F03A08);

  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  v11 = xmmword_280C27E78;
  v12 = qword_280C27E88;
  v13 = qword_280C27E90;
  v14 = qword_280C27E98;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  v15 = *(v10 + 2);

  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v16 = sub_217F4AC54();
  v17 = v16;
  *(v16 + 16) = v15;
  v18 = v16 + 32;
  if (v15 == 1)
  {
    v19 = 0;
LABEL_10:
    v22 = v15 - v19;
    do
    {
      *v18 = v11;
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      v18 += 40;
      --v22;
    }

    while (v22);
    goto LABEL_12;
  }

  v19 = v15 & 0x7FFFFFFFFFFFFFFELL;
  v18 += 40 * (v15 & 0x7FFFFFFFFFFFFFFELL);
  v20 = (v16 + 56);
  v21 = v15 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v20 - 3) = v11;
    v20[3] = *(&v11 + 1);
    v20[4] = v12;
    *(v20 - 1) = v12;
    *v20 = v13;
    v20[1] = v14;
    v20[2] = v11;
    v20[5] = v13;
    v20[6] = v14;
    v20 += 10;
    v21 -= 2;
  }

  while (v21);
  if (v15 != v19)
  {
    goto LABEL_10;
  }

LABEL_12:

  *(a2 + 56) = v17;
  return result;
}

void sub_217ED77A8(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v5 = a1;
    v6 = *v1;
    v7 = v1[1];
    swift_once();
    v3 = v6;
    v2 = v7;
    a1 = v5;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, xmmword_280C27E78), vceqq_f64(v2, *&qword_280C27E88)))) & 1) == 0 || v4 != *&qword_280C27E98)
  {
    if (v2.f64[1] > v4)
    {
      __break(1u);
    }

    else
    {
      pow(2.71828183, a1 * v2.f64[0]);
    }
  }
}

uint64_t sub_217ED78C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED791C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 64);
  v4 = (a2 + 64);
  while (v2)
  {
    result = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 - 4), *(v4 - 4)), vceqq_f64(*(v3 - 2), *(v4 - 2))))) & (*v3 == *v4);
    v5 = result != 1 || v2-- == 1;
    v3 += 5;
    v4 += 5;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ED79AC()
{
  v1 = 0x52746C7561666564;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x52646574746F6C73;
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

uint64_t sub_217ED7A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F00164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217ED7A74(uint64_t a1)
{
  v2 = sub_217EF6D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED7AB0(uint64_t a1)
{
  v2 = sub_217EF6D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED7AEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F08, &qword_217F521E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v18 = v1[1];
  v11 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v11;
  v12 = v1[6];
  v13 = v1[7];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6D18();
  sub_217F4B294();
  LOBYTE(v19) = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    *&v19 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F10, &qword_217F521F0);
    sub_217EF6D6C();
    sub_217F4B0C4();
    v20 = v16;
    v19 = v17;
    v21 = v12;
    v22 = 2;
    sub_217EF6DE8();
    sub_217F4B0C4();
    *&v19 = v13;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F18, &qword_217F521F8);
    sub_217EF6F0C(&qword_280C276A8, sub_217EF6DE8);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED7D6C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F20, &qword_217F52200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6D18();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_217F4AFA4();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F10, &qword_217F521F0);
  LOBYTE(v24) = 1;
  sub_217EF6E3C();
  sub_217F4AFC4();
  v14 = v28;
  LOBYTE(v24) = 2;
  sub_217EF6EB8();
  sub_217F4AFC4();
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F18, &qword_217F521F8);
  v36 = 3;
  sub_217EF6F0C(&qword_27CBF5F30, sub_217EF6EB8);
  sub_217F4AFC4();
  (*(v6 + 8))(v10, v5);
  v20 = v37;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  *&v25 = v15;
  *(&v25 + 1) = v16;
  *&v26 = v17;
  *(&v26 + 1) = v18;
  *&v27 = v19;
  *(&v27 + 1) = v37;
  v21 = v25;
  *a2 = v24;
  a2[1] = v21;
  v22 = v27;
  a2[2] = v26;
  a2[3] = v22;
  sub_217EB2994(&v24, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  return sub_217EB2A44(&v28);
}

void (*sub_217ED8104(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217ED8130;
}

double sub_217ED8178@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  sub_217EBA594(a2);
  if (a5 > a6)
  {
    if (qword_280C27E70 != -1)
    {
      swift_once();
    }

    a5 = *&qword_280C27E90;
    a6 = *&qword_280C27E98;
  }

  result = a2;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  return result;
}

void sub_217ED8220(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>, double a10, char a11)
{
  if (qword_280C27E70 != -1)
  {
    v28 = a1;
    v21 = a2;
    v22 = a8;
    v23 = a7;
    v24 = a6;
    v25 = a5;
    v26 = a4;
    v27 = a3;
    swift_once();
    a1 = v28;
    a2 = v21;
    a3 = v27;
    a4 = v26;
    a5 = v25;
    a6 = v24;
    a7 = v23;
    a8 = v22;
  }

  v12 = *&xmmword_280C27E78;
  v13 = qword_280C27E90;
  v14 = qword_280C27E98;
  if ((a2 & 1) == 0)
  {
    v12 = a1;
  }

  if (a4)
  {
    v15 = *(&xmmword_280C27E78 + 1);
  }

  else
  {
    v15 = a3;
  }

  if (a6)
  {
    v16 = *&qword_280C27E88;
  }

  else
  {
    v16 = a5;
  }

  if (a8)
  {
    v17 = *&qword_280C27E90;
  }

  else
  {
    v17 = a7;
  }

  if (a11)
  {
    v18 = *&qword_280C27E98;
  }

  else
  {
    v18 = a10;
  }

  v29 = v12;
  sub_217EBA594(v12);
  if (v17 <= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = *&v13;
  }

  if (v17 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = *&v14;
  }

  *a9 = v29;
  a9[1] = v15;
  a9[2] = v16;
  a9[3] = v19;
  a9[4] = v20;
}

uint64_t sub_217ED8374(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v11 = result;
    v12 = a2;
    v13 = v4;
    v14 = v3;
    swift_once();
    v4 = v13;
    v3 = v14;
    a2 = v12;
    result = v11;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, xmmword_280C27E78), vceqq_f64(v3, *&qword_280C27E88)))) & 1) == 0 || v5 != *&qword_280C27E98)
  {
    v6 = result;
    sub_217ED77A8(a2);
    v8 = round(v7);
    if (v8 > -9.22337204e18 && v8 < 9.22337204e18)
    {
      return v8;
    }

    else
    {
      if (qword_280C28EA0 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_217F4BC20;
      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      sub_217F4ACB4();
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_217E86438();
      *(v10 + 32) = v15;
      sub_217F4AA44();

      return v6;
    }
  }

  return result;
}

double sub_217ED8568()
{
  sub_217EBA594(1.0);
  xmmword_280C27E78 = 0x3FF0000000000000uLL;
  qword_280C27E88 = 0;
  result = -1.79769313e308;
  *&qword_280C27E90 = xmmword_217F520F0;
  return result;
}

uint64_t sub_217ED85CC()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED8684()
{
  *v0;
  *v0;
  *v0;
  sub_217F4AB24();
}

uint64_t sub_217ED8728()
{
  v1 = *v0;
  sub_217F4B224();
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217ED87DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_217F002E0();
  *a2 = result;
  return result;
}

void sub_217ED880C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6168706C61;
  v5 = 0xE100000000000000;
  v6 = 100;
  v7 = 7235949;
  if (v2 != 3)
  {
    v7 = 7889261;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 109;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_217ED8880()
{
  v1 = *v0;
  v2 = 0x6168706C61;
  v3 = 100;
  v4 = 7235949;
  if (v1 != 3)
  {
    v4 = 7889261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 109;
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

uint64_t sub_217ED88F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217F002E0();
  *a1 = result;
  return result;
}

uint64_t sub_217ED8930(uint64_t a1)
{
  v2 = sub_217EF6F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED896C(uint64_t a1)
{
  v2 = sub_217EF6F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED89A8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F38, &qword_217F52208);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2].f64[0];
  if (qword_280C27E70 != -1)
  {
    v16 = v1[1];
    v17 = v11;
    swift_once();
    v10 = v16;
    v11 = v17;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, xmmword_280C27E78), vceqq_f64(v10, *&qword_280C27E88)))) & 1) != 0 && v12 == *&qword_280C27E98)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217F4B284();
    __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_217F4B174();
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = v10;
    v17 = v11;
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217EF6F84();
    sub_217F4B294();
    LOBYTE(v18[0]) = 0;
    sub_217F4B0A4();
    if (!v2)
    {
      LOBYTE(v18[0]) = 1;
      sub_217F4B0A4();
      LOBYTE(v18[0]) = 2;
      sub_217F4B0A4();
      LOBYTE(v18[0]) = 3;
      sub_217F4B0A4();
      LOBYTE(v18[0]) = 4;
      sub_217F4B0A4();
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_217ED8C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F48, &qword_217F52210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F4B264();
  if (v2)
  {
    MEMORY[0x21CEAF510](v2);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_217F03AD0(v37, &qword_27CBF5F50, &qword_217F52218);
LABEL_4:
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217EF6F84();
    sub_217F4B274();
    if (qword_280C27E70 != -1)
    {
      swift_once();
    }

    v15 = *(&xmmword_280C27E78 + 1);
    v16 = *&qword_280C27E88;
    v17 = *&qword_280C27E90;
    v18 = *&qword_280C27E98;
    LOBYTE(v39[0]) = 0;
    sub_217F4AFA4();
    v20 = v19;
    LOBYTE(v39[0]) = 1;
    v21 = COERCE_DOUBLE(sub_217F4AF34());
    if ((v22 & 1) == 0)
    {
      v15 = v21;
    }

    LOBYTE(v39[0]) = 2;
    v23 = COERCE_DOUBLE(sub_217F4AF34());
    if ((v24 & 1) == 0)
    {
      v16 = v23;
    }

    LOBYTE(v39[0]) = 3;
    *&v25 = COERCE_DOUBLE(sub_217F4AF34());
    v27 = v26;
    v28 = *&v25;
    LOBYTE(v39[0]) = 4;
    v29 = COERCE_DOUBLE(sub_217F4AF34());
    if (v27)
    {
      v35 = v17;
    }

    else
    {
      v35 = v28;
    }

    if (v30)
    {
      v36 = v18;
    }

    else
    {
      v36 = v29;
    }

    *v39 = v20;
    sub_217EBA594(v20);
    (*(v6 + 8))(v10, v5);
    if (v35 <= v36)
    {
      v17 = v35;
      v18 = v36;
    }

    v33 = v39[0];
    goto LABEL_21;
  }

  sub_217EF6FD8(v37, v39);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v12 = sub_217F4B154();
  if (v12 == 0x797469746E656469 && v13 == 0xE800000000000000)
  {
  }

  else
  {
    v32 = sub_217F4B144();

    if ((v32 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
      goto LABEL_4;
    }
  }

  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  v15 = *(&xmmword_280C27E78 + 1);
  v33 = xmmword_280C27E78;
  v16 = *&qword_280C27E88;
  v17 = *&qword_280C27E90;
  v18 = *&qword_280C27E98;
  __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_21:
  *a2 = v33;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217ED90D0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 8);
  v5 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_217ED90F0(uint64_t a1, char a2)
{
  result = *v2;
  if ((*(v2 + 48) & 1) == 0 && (a2 & 1) == 0)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 24);
    v7 = *(v2 + 40);
    return sub_217ED8374(result, a1);
  }

  return result;
}

unint64_t sub_217ED914C()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x657A69536E696DLL;
  }

  *v0;
  return result;
}

uint64_t sub_217ED918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A69536E696DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5ED60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217ED927C(uint64_t a1)
{
  v2 = sub_217EF6FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED92B8(uint64_t a1)
{
  v2 = sub_217EF6FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED92F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F58, &qword_217F52220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v16 = *(v1 + 3);
  v17 = v11;
  v15 = v1[5];
  v22 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6FF0();
  sub_217F4B294();
  LOBYTE(v18) = 0;
  sub_217F4B0B4();
  if (!v2)
  {
    v18 = v17;
    v19 = v16;
    v20 = v15;
    v21 = v22;
    v23 = 1;
    sub_217EF6DE8();
    sub_217F4B054();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217ED94A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F60, &qword_217F52228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF6FF0();
  sub_217F4B274();
  if (!v2)
  {
    LOBYTE(v18[0]) = 0;
    v12 = sub_217F4AFB4();
    v21 = 1;
    sub_217EF6EB8();
    sub_217F4AF54();
    (*(v6 + 8))(v10, v5);
    v13 = v19;
    v14 = v20;
    v15 = v18[0];
    v16 = v18[1];
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 24) = v16;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217ED9678(uint64_t a1)
{
  v6 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 80);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED96E0(uint64_t a1)
{
  v6 = *(v1 + 48);
  v4 = *(a1 + 24);
  v5 = *(a1 + 88);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED9748(uint64_t a1)
{
  v6 = *(v1 + 96);
  v4 = *(a1 + 32);
  v5 = *(a1 + 96);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED97B0(uint64_t a1)
{
  v6 = *(v1 + 152);
  v4 = *(a1 + 40);
  v5 = *(a1 + 104);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED9818(uint64_t a1)
{
  v6 = *(v1 + 200);
  v4 = *(a1 + 48);
  v5 = *(a1 + 112);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED9880(uint64_t a1)
{
  v6 = *(v1 + 248);
  v4 = *(a1 + 56);
  v5 = *(a1 + 120);
  v2 = type metadata accessor for ConditionalConfigurableValue();
  ConditionalConfigurableValue.wrappedValue.getter(v2);
  return v4;
}

uint64_t sub_217ED991C(uint64_t a1)
{
  v6 = *(v1 + 296);
  v7 = *(v1 + 312);
  v8 = *(v1 + 328);
  v9 = *(v1 + 344);
  v4 = *(a1 + 64);
  v5 = *(a1 + 128);
  sub_217EF7044();
  v2 = type metadata accessor for ConditionalConfigurableValue();
  return ConditionalConfigurableValue.wrappedValue.getter(v2);
}

double sub_217ED9994@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = *(a1 + a2 - 128);
  v7 = *(a1 + a2 - 112);
  v8 = *(a1 + a2 - 96);
  v9 = *(a1 + a2 - 80);
  v10 = *(a1 + a2 - 64);
  v11 = *(a1 + a2 - 48);
  v12 = *(a1 + a2 - 32);
  v13 = *(a1 + a2 - 16);
  v4 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa();
  sub_217ED991C(v4);
  *a3 = v14;
  a3[1] = v15;
  result = *&v16;
  a3[2] = v16;
  a3[3] = v17;
  return result;
}

uint64_t sub_217ED9A08(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  v15 = *(a3 + a4 - 112);
  v16 = *(a3 + a4 - 128);
  v13 = *(a3 + a4 - 80);
  v14 = *(a3 + a4 - 96);
  v11 = *(a3 + a4 - 48);
  v12 = *(a3 + a4 - 64);
  v9 = *(a3 + a4 - 16);
  v10 = *(a3 + a4 - 32);
  sub_217EB2994(v18, v17);
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v12;
  v17[5] = v11;
  v17[6] = v10;
  v17[7] = v9;
  v7 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa();
  return sub_217ED9AB4(a1, v7);
}

uint64_t sub_217ED9AB4(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v6 = *(a2 + 64);
  v7 = *(a2 + 128);
  sub_217EF7044();
  v4 = type metadata accessor for ConditionalConfigurableValue();
  return ConditionalConfigurableValue.wrappedValue.setter(v8, v4);
}

void (*sub_217ED9B28(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x150uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 320) = v2;
  v7 = *(v2 + 296);
  v8 = *(v2 + 312);
  v9 = *(v2 + 344);
  *(v5 + 96) = *(v2 + 328);
  *(v5 + 112) = v9;
  *(v5 + 64) = v7;
  *(v5 + 80) = v8;
  v10 = *(a2 + 64);
  v11 = *(a2 + 128);
  v12 = sub_217EF7044();
  v6[16] = v10;
  v6[17] = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v6[18] = v11;
  v6[19] = v12;
  v13 = type metadata accessor for ConditionalConfigurableValue();
  v6[41] = v13;
  ConditionalConfigurableValue.wrappedValue.getter(v13);
  return sub_217ED9BEC;
}

void sub_217ED9BEC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[40];
    v4 = v2[41];
    v5 = *v2;
    v6 = *(v2 + 1);
    *(v2 + 8) = *v2;
    *(v2 + 9) = v6;
    v7 = *(v2 + 2);
    v8 = *(v2 + 3);
    *(v2 + 10) = v7;
    *(v2 + 11) = v8;
    *(v2 + 12) = v5;
    *(v2 + 13) = v6;
    *(v2 + 14) = v7;
    *(v2 + 15) = v8;
    sub_217EB2994((v2 + 16), (v2 + 32));
    ConditionalConfigurableValue.wrappedValue.setter((v2 + 24), v4);
    v9 = *(v2 + 1);
    *(v2 + 4) = *v2;
    *(v2 + 5) = v9;
    v10 = *(v2 + 3);
    *(v2 + 6) = *(v2 + 2);
    *(v2 + 7) = v10;
    sub_217EB2A44((v2 + 8));
  }

  else
  {
    v12 = v2[40];
    v11 = v2[41];
    v13 = *(v2 + 1);
    *(v2 + 4) = *v2;
    *(v2 + 5) = v13;
    v14 = *(v2 + 3);
    *(v2 + 6) = *(v2 + 2);
    *(v2 + 7) = v14;
    ConditionalConfigurableValue.wrappedValue.setter((v2 + 8), v11);
  }

  free(v2);
}

uint64_t sub_217ED9CA0(uint64_t a1)
{
  v6 = v1[45];
  v7 = v1[46];
  v8 = v1[47];
  v4 = *(a1 + 72);
  v5 = *(a1 + 136);
  sub_217EF7098();
  v2 = type metadata accessor for ConditionalConfigurableValue();
  return ConditionalConfigurableValue.wrappedValue.getter(v2);
}

double sub_217ED9D14@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + a2 - 128);
  v7 = *(a1 + a2 - 112);
  v8 = *(a1 + a2 - 96);
  v9 = *(a1 + a2 - 80);
  v10 = *(a1 + a2 - 64);
  v11 = *(a1 + a2 - 48);
  v12 = *(a1 + a2 - 32);
  v13 = *(a1 + a2 - 16);
  v4 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa();
  sub_217ED9CA0(v4);
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_217ED9D88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *a1;
  v7 = a1[1];
  v6 = a1[2];
  v18[0] = v5;
  v18[1] = v7;
  v18[2] = v6;

  v10 = *(v4 - 128);
  v11 = *(v4 - 112);
  v12 = *(v4 - 96);
  v13 = *(v4 - 80);
  v14 = *(v4 - 64);
  v15 = *(v4 - 48);
  v16 = *(v4 - 32);
  v17 = *(v4 - 16);
  v8 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa();
  return sub_217ED9E00(v18, v8);
}

uint64_t sub_217ED9E00(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v6 = *(a2 + 72);
  v7 = *(a2 + 136);
  sub_217EF7098();
  v4 = type metadata accessor for ConditionalConfigurableValue();
  return ConditionalConfigurableValue.wrappedValue.setter(v8, v4);
}

void (*sub_217ED9E74(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[10] = v2;
  v7 = v2[46];
  v8 = v2[47];
  v5[7] = v2[45];
  v5[8] = v7;
  v5[9] = v8;
  v9 = *(a2 + 72);
  v10 = *(a2 + 136);
  v11 = sub_217EF7098();
  *v6 = v9;
  v6[1] = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v6[2] = v10;
  v6[3] = v11;
  v12 = type metadata accessor for ConditionalConfigurableValue();
  v6[11] = v12;
  ConditionalConfigurableValue.wrappedValue.getter(v12);
  return sub_217ED9F38;
}

void sub_217ED9F38(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = v2[10];
  v7 = v2[11];
  *v2 = v3;
  v2[1] = v5;
  v2[2] = v4;
  if (a2)
  {

    ConditionalConfigurableValue.wrappedValue.setter(v2, v7);
    v8 = v2[6];
  }

  else
  {
    ConditionalConfigurableValue.wrappedValue.setter(v2, v7);
  }

  free(v2);
}

__n128 sub_217ED9FC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v2;
  result = *(v1 + 416);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 432);
  return result;
}

uint64_t sub_217ED9FDC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v13 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];
    v18 = v3[4];
    v19 = v3[5];
    memcpy(v20, v3 + 6, sizeof(v20));
    return sub_217ED9678(a3);
  }

  else
  {
    v8 = v3[1];
    v9 = v3[2];
    v10 = v3[3];
    v11 = v3[4];
    v12 = v3[5];
    v14 = *v3;
    memcpy(v20, v3 + 6, sizeof(v20));
    v7 = sub_217ED9678(a3);
    return sub_217ED8374(v7, a1);
  }
}

uint64_t sub_217EDA0A0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(v3 + 7);
  v5 = *(v3 + 8);
  v8 = *(v3 + 9);
  v7 = *(v3 + 10);
  v9 = *(v3 + 11);
  if (a2)
  {
    v18 = *v3;
    v20 = v3[1];
    v22 = v3[2];
    v24 = *(v3 + 6);
    v26 = *(v3 + 7);
    v27 = *(v3 + 8);
    v28 = *(v3 + 9);
    v29 = *(v3 + 10);
    v30 = *(v3 + 11);
    memcpy(v31, v3 + 6, sizeof(v31));
    return sub_217ED96E0(a3);
  }

  else
  {
    v13 = *(v3 + 7);
    v14 = *(v3 + 8);
    v15 = *(v3 + 9);
    v16 = *(v3 + 10);
    v17 = *(v3 + 11);
    v19 = *v3;
    v21 = v3[1];
    v23 = v3[2];
    v25 = *(v3 + 6);
    memcpy(v31, v3 + 6, sizeof(v31));
    v12 = sub_217ED96E0(a3);
    return sub_217ED8374(v12, a1);
  }
}

uint64_t sub_217EDA188(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(v3 + 13);
  v5 = *(v3 + 14);
  v8 = *(v3 + 15);
  v7 = *(v3 + 16);
  v9 = *(v3 + 17);
  if (a2)
  {
    v26 = v3[4];
    v28 = v3[5];
    v30 = *(v3 + 12);
    v18 = *v3;
    v20 = v3[1];
    v22 = v3[2];
    v24 = v3[3];
    v32 = *(v3 + 13);
    v33 = *(v3 + 14);
    v34 = *(v3 + 15);
    v35 = *(v3 + 16);
    v36 = *(v3 + 17);
    memcpy(v37, v3 + 9, sizeof(v37));
    return sub_217ED9748(a3);
  }

  else
  {
    v13 = *(v3 + 13);
    v14 = *(v3 + 14);
    v15 = *(v3 + 15);
    v16 = *(v3 + 16);
    v17 = *(v3 + 17);
    v27 = v3[4];
    v29 = v3[5];
    v31 = *(v3 + 12);
    v19 = *v3;
    v21 = v3[1];
    v23 = v3[2];
    v25 = v3[3];
    memcpy(v37, v3 + 9, sizeof(v37));
    v12 = sub_217ED9748(a3);
    return sub_217ED8374(v12, a1);
  }
}

uint64_t sub_217EDA280(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(v3 + 20);
  v4 = *(v3 + 21);
  v7 = *(v3 + 22);
  v6 = *(v3 + 23);
  v8 = (v3 + 200);
  v9 = *(v3 + 24);
  if (a2)
  {
    v30 = v3[6];
    v32 = v3[7];
    v34 = v3[8];
    v36 = v3[9];
    v22 = v3[2];
    v24 = v3[3];
    v26 = v3[4];
    v28 = v3[5];
    v18 = *v3;
    v20 = v3[1];
    v38 = *(v3 + 20);
    v39 = *(v3 + 21);
    v40 = *(v3 + 22);
    v41 = *(v3 + 23);
    v42 = *(v3 + 24);
    v67 = *(v3 + 392);
    *v69 = *(v3 + 408);
    *&v69[10] = *(v3 + 418);
    v59 = *(v3 + 328);
    v61 = *(v3 + 344);
    v63 = *(v3 + 360);
    v65 = *(v3 + 376);
    v51 = *(v3 + 264);
    v53 = *(v3 + 280);
    v55 = *(v3 + 296);
    v57 = *(v3 + 312);
    v49 = *(v3 + 248);
    v43 = *v8;
    v45 = *(v3 + 216);
    v47 = *(v3 + 232);
    return sub_217ED97B0(a3);
  }

  else
  {
    v13 = *(v3 + 20);
    v14 = *(v3 + 21);
    v15 = *(v3 + 22);
    v16 = *(v3 + 23);
    v17 = *(v3 + 24);
    v31 = v3[6];
    v33 = v3[7];
    v35 = v3[8];
    v37 = v3[9];
    v23 = v3[2];
    v25 = v3[3];
    v27 = v3[4];
    v29 = v3[5];
    v19 = *v3;
    v21 = v3[1];
    v68 = *(v3 + 392);
    *v70 = *(v3 + 408);
    *&v70[10] = *(v3 + 418);
    v60 = *(v3 + 328);
    v62 = *(v3 + 344);
    v64 = *(v3 + 360);
    v66 = *(v3 + 376);
    v52 = *(v3 + 264);
    v54 = *(v3 + 280);
    v56 = *(v3 + 296);
    v58 = *(v3 + 312);
    v50 = *(v3 + 248);
    v44 = *v8;
    v46 = *(v3 + 216);
    v48 = *(v3 + 232);
    v12 = sub_217ED97B0(a3);
    return sub_217ED8374(v12, a1);
  }
}

uint64_t sub_217EDA3FC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(v3 + 26);
  v4 = *(v3 + 27);
  v7 = *(v3 + 28);
  v6 = *(v3 + 29);
  v8 = (v3 + 248);
  v9 = *(v3 + 30);
  if (a2)
  {
    v38 = v3[10];
    v40 = v3[11];
    v42 = v3[12];
    v30 = v3[6];
    v32 = v3[7];
    v34 = v3[8];
    v36 = v3[9];
    v22 = v3[2];
    v24 = v3[3];
    v26 = v3[4];
    v28 = v3[5];
    v18 = *v3;
    v20 = v3[1];
    v44 = *(v3 + 26);
    v45 = *(v3 + 27);
    v46 = *(v3 + 28);
    v47 = *(v3 + 29);
    v48 = *(v3 + 30);
    v67 = *(v3 + 392);
    *v69 = *(v3 + 408);
    *&v69[10] = *(v3 + 418);
    v59 = *(v3 + 328);
    v61 = *(v3 + 344);
    v63 = *(v3 + 360);
    v65 = *(v3 + 376);
    v51 = *(v3 + 264);
    v53 = *(v3 + 280);
    v55 = *(v3 + 296);
    v57 = *(v3 + 312);
    v49 = *v8;
    return sub_217ED9818(a3);
  }

  else
  {
    v13 = *(v3 + 26);
    v14 = *(v3 + 27);
    v15 = *(v3 + 28);
    v16 = *(v3 + 29);
    v17 = *(v3 + 30);
    v39 = v3[10];
    v41 = v3[11];
    v43 = v3[12];
    v31 = v3[6];
    v33 = v3[7];
    v35 = v3[8];
    v37 = v3[9];
    v23 = v3[2];
    v25 = v3[3];
    v27 = v3[4];
    v29 = v3[5];
    v19 = *v3;
    v21 = v3[1];
    v68 = *(v3 + 392);
    *v70 = *(v3 + 408);
    *&v70[10] = *(v3 + 418);
    v60 = *(v3 + 328);
    v62 = *(v3 + 344);
    v64 = *(v3 + 360);
    v66 = *(v3 + 376);
    v52 = *(v3 + 264);
    v54 = *(v3 + 280);
    v56 = *(v3 + 296);
    v58 = *(v3 + 312);
    v50 = *v8;
    v12 = sub_217ED9818(a3);
    return sub_217ED8374(v12, a1);
  }
}

uint64_t sub_217EDA578(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  v4 = *(v3 + 33);
  v7 = *(v3 + 34);
  v6 = *(v3 + 35);
  v8 = (v3 + 296);
  v9 = *(v3 + 36);
  if (a2)
  {
    v42 = v3[12];
    v44 = v3[13];
    v46 = v3[14];
    v48 = v3[15];
    v34 = v3[8];
    v36 = v3[9];
    v38 = v3[10];
    v40 = v3[11];
    v26 = v3[4];
    v28 = v3[5];
    v30 = v3[6];
    v32 = v3[7];
    v18 = *v3;
    v20 = v3[1];
    v22 = v3[2];
    v24 = v3[3];
    v50 = *(v3 + 32);
    v51 = *(v3 + 33);
    v52 = *(v3 + 34);
    v53 = *(v3 + 35);
    v54 = *(v3 + 36);
    v67 = *(v3 + 392);
    *v69 = *(v3 + 408);
    *&v69[10] = *(v3 + 418);
    v59 = *(v3 + 328);
    v61 = *(v3 + 344);
    v63 = *(v3 + 360);
    v65 = *(v3 + 376);
    v55 = *v8;
    v57 = *(v3 + 312);
    return sub_217ED9880(a3);
  }

  else
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 33);
    v15 = *(v3 + 34);
    v16 = *(v3 + 35);
    v17 = *(v3 + 36);
    v43 = v3[12];
    v45 = v3[13];
    v47 = v3[14];
    v49 = v3[15];
    v35 = v3[8];
    v37 = v3[9];
    v39 = v3[10];
    v41 = v3[11];
    v27 = v3[4];
    v29 = v3[5];
    v31 = v3[6];
    v33 = v3[7];
    v19 = *v3;
    v21 = v3[1];
    v23 = v3[2];
    v25 = v3[3];
    v68 = *(v3 + 392);
    *v70 = *(v3 + 408);
    *&v70[10] = *(v3 + 418);
    v60 = *(v3 + 328);
    v62 = *(v3 + 344);
    v64 = *(v3 + 360);
    v66 = *(v3 + 376);
    v56 = *v8;
    v58 = *(v3 + 312);
    v12 = sub_217ED9880(a3);
    return sub_217ED8374(v12, a1);
  }
}

uint64_t sub_217EDA6E4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return result;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72))))) & 1) == 0 || *(a1 + 88) != *(a2 + 88))
  {
    return result;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 104), *(a2 + 104)), vceqq_f64(*(a1 + 120), *(a2 + 120))))) & 1) != 0 && *(a1 + 136) == *(a2 + 136))
  {
    v15 = v2;
    v16 = v3;
    v6 = a1;
    if ((sub_217ED3610(*(a1 + 144), *(a2 + 144)) & 1) == 0 || *(v6 + 152) != *(a2 + 152))
    {
      return 0;
    }

    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 160), *(a2 + 160)), vceqq_f64(*(v6 + 176), *(a2 + 176))))) & 1) != 0 && *(v6 + 192) == *(a2 + 192))
    {
      if (*(v6 + 200) != *(a2 + 200))
      {
        return 0;
      }

      result = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 208), *(a2 + 208)), vceqq_f64(*(v6 + 224), *(a2 + 224))))) & 1) != 0 && *(v6 + 240) == *(a2 + 240))
      {
        if (*(v6 + 248) != *(a2 + 248))
        {
          return 0;
        }

        result = 0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 256), *(a2 + 256)), vceqq_f64(*(v6 + 272), *(a2 + 272))))) & 1) != 0 && *(v6 + 288) == *(a2 + 288))
        {
          v8 = *(v6 + 312);
          v14[0] = *(v6 + 296);
          v14[1] = v8;
          v9 = *(v6 + 344);
          v14[2] = *(v6 + 328);
          v14[3] = v9;
          v10 = *(a2 + 312);
          v13[0] = *(a2 + 296);
          v13[1] = v10;
          v11 = *(a2 + 344);
          v13[2] = *(a2 + 328);
          v13[3] = v11;
          if (sub_217ED177C(v14, v13) & 1) != 0 && *(v6 + 360) == *(a2 + 360) && *(v6 + 368) == *(a2 + 368) && (sub_217ED6368(*(v6 + 376), *(a2 + 376)))
          {
            v12 = *(a2 + 433);
            if (*(v6 + 433))
            {
              return (v12 & 1) != 0;
            }

            if ((*(a2 + 433) & 1) == 0 && *(v6 + 384) == *(a2 + 384))
            {
              v12 = *(a2 + 432);
              if (*(v6 + 432))
              {
                return (v12 & 1) != 0;
              }

              if ((*(a2 + 432) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v6 + 392), *(a2 + 392)), vceqq_f64(*(v6 + 408), *(a2 + 408))))) & 1) != 0 && *(v6 + 424) == *(a2 + 424))
              {
                return 1;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_217EDA9E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = *a1;
  v18 = *(a1 + 5);
  v19 = a1[6];
  v20 = *(a1 + 11);
  v21 = a1[12];
  v22 = *(a1 + 17);
  v23 = a1[18];
  v82 = a1[19];
  v77 = *(a1 + 24);
  v76 = a1[25];
  v71 = *(a1 + 30);
  v70 = a1[31];
  v64 = *(a1 + 36);
  v24 = *(a1 + 39);
  v106 = *(a1 + 37);
  v107 = v24;
  v25 = *(a1 + 43);
  v108 = *(a1 + 41);
  v109 = v25;
  v61 = a1[45];
  v60 = a1[46];
  v62 = a1[47];
  v55 = a1[48];
  v47 = *(a1 + 53);
  v53 = *(a1 + 432);
  v57 = *(a1 + 433);
  v26 = *a2;
  v93 = *(a1 + 1);
  v94 = *(a1 + 3);
  v91 = *(a2 + 1);
  v92 = *(a2 + 3);
  v27 = *(a2 + 5);
  v28 = a2[6];
  v89 = *(a1 + 7);
  v90 = *(a1 + 9);
  v87 = *(a2 + 7);
  v88 = *(a2 + 9);
  v29 = *(a2 + 11);
  v30 = a2[12];
  v85 = *(a1 + 13);
  v86 = *(a1 + 15);
  v83 = *(a2 + 13);
  v84 = *(a2 + 15);
  v32 = a2[18];
  v31 = a2[19];
  v80 = *(a1 + 10);
  v81 = *(a1 + 11);
  v33 = a2[25];
  v74 = *(a1 + 13);
  v75 = *(a1 + 14);
  v69 = a2[31];
  v67 = *(a1 + 16);
  v68 = *(a1 + 17);
  v34 = *(a2 + 39);
  v110 = *(a2 + 37);
  v111 = v34;
  v35 = *(a2 + 43);
  v112 = *(a2 + 41);
  v113 = v35;
  *(&v58 + 1) = a2[46];
  v59 = a2[47];
  v50 = *(a1 + 49);
  v51 = *(a1 + 51);
  v48 = *(a2 + 49);
  v49 = *(a2 + 51);
  v54 = a2[48];
  *v105 = v17;
  v52 = *(a2 + 432);
  *v104 = v26;
  v56 = *(a2 + 433);
  v36 = *(a2 + 17);
  v78 = *(a2 + 10);
  v79 = *(a2 + 11);
  v37 = *(a2 + 24);
  v72 = *(a2 + 13);
  v73 = *(a2 + 14);
  v38 = *(a2 + 30);
  v65 = *(a2 + 16);
  v66 = *(a2 + 17);
  v63 = *(a2 + 36);
  *&v58 = a2[45];
  v46 = *(a2 + 53);
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v93, v91), vceqq_f64(v94, v92)))) & 1) == 0 || v18 != v27)
  {
    return result;
  }

  *&v105[0] = v19;
  *&v104[0] = v28;
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v89, v87), vceqq_f64(v90, v88)))) & 1) == 0 || v20 != v29)
  {
    return result;
  }

  *&v105[0] = v21;
  *&v104[0] = v30;
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v85, v83), vceqq_f64(v86, v84)))) & 1) == 0 || v22 != v36)
  {
    return result;
  }

  if ((sub_217ED3610(v23, v32) & 1) == 0)
  {
    return 0;
  }

  *&v105[0] = v82;
  *&v104[0] = v31;
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v80, v78), vceqq_f64(v81, v79)))) & 1) == 0 || v77 != v37)
  {
    return result;
  }

  *&v105[0] = v76;
  *&v104[0] = v33;
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v74, v72), vceqq_f64(v75, v73)))) & 1) == 0 || v71 != v38)
  {
    return result;
  }

  *&v105[0] = v70;
  *&v104[0] = v69;
  if ((static ConditionalConfigurableValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v67, v65), vceqq_f64(v68, v66)))) & 1) != 0 && v64 == v63)
  {
    v100 = v106;
    v101 = v107;
    v102 = v108;
    v103 = v109;
    v96 = v110;
    v97 = v111;
    v98 = v112;
    v99 = v113;
    v95[0] = a9;
    v95[1] = &_s14descr2829CD401O22QuotaConditionProviderVN;
    v95[2] = a17;
    v95[3] = sub_217EF7044();
    v40 = type metadata accessor for ConditionalConfigurableValue();
    v41 = *(v40 - 8);
    v42 = *(v41 + 16);
    v42(v95, &v106, v40);
    v42(v95, &v110, v40);
    v43 = static ConditionalConfigurableValue.== infix(_:_:)();
    v104[0] = v96;
    v104[1] = v97;
    v104[2] = v98;
    v104[3] = v99;
    v44 = *(v41 + 8);
    v44(v104, v40);
    v105[0] = v100;
    v105[1] = v101;
    v105[2] = v102;
    v105[3] = v103;
    v44(v105, v40);
    if (v43)
    {
      *&v100 = v61;
      *(&v100 + 1) = v60;
      *&v101 = v62;
      v96 = v58;
      *&v97 = v59;
      sub_217EF7098();

      v45 = static ConditionalConfigurableValue.== infix(_:_:)();

      if (v45)
      {
        if (v57)
        {
          if (v56)
          {
            return 1;
          }
        }

        else if ((v56 & 1) == 0 && v55 == v54)
        {
          if (v53)
          {
            if (v52)
            {
              return 1;
            }
          }

          else if ((v52 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v50, v48), vceqq_f64(v51, v49)))) & 1) != 0 && v47 == v46)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_217EDB0A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000217F5ED80 == a2;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217F5EDA0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EDD0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5EDF0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EE20 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5EE40 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217F5EE70 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x414347494178616DLL && a2 == 0xEF73656C63697472 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5EEA0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657A695378616DLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5EEC0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657A69536E696DLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5ED60 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5EEE0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5EF00 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_217EDB5D8(unsigned __int8 a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](a1);
  return sub_217F4B254();
}

uint64_t sub_217EDB620(char a1)
{
  result = 0x414347494178616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000024;
      break;
    case 7:
      return result;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      v3 = 1400398189;
      goto LABEL_7;
    case 10:
    case 12:
      result = 0xD000000000000015;
      break;
    case 11:
      v3 = 1399744877;
LABEL_7:
      result = v3 | 0x657A6900000000;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x7669446369706F74;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

BOOL sub_217EDB7F0(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v14 = *(a3 + 128);
  v15 = *(a3 + 136);
  v12 = *(a3 + 96);
  v13 = *(a3 + 112);
  v10 = *(a3 + 64);
  v11 = *(a3 + 80);
  return sub_217EDB5A0(*a1, *a2);
}

uint64_t sub_217EDB844(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14 = *(a1 + 136);
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_217EDB5D8(*v1);
}

uint64_t sub_217EDB898(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v14 = *(a2 + 128);
  v15 = *(a2 + 136);
  v12 = *(a2 + 96);
  v13 = *(a2 + 112);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  return sub_217EDB5B0(a1, *v2);
}

uint64_t sub_217EDB8E0(uint64_t a1, uint64_t a2)
{
  sub_217F4B224();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  sub_217EDB5B0(v17, *v2);
  return sub_217F4B254();
}

uint64_t sub_217EDB948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14 = *(a1 + 136);
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return sub_217EDB620(*v1);
}

uint64_t sub_217EDB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v16 = *(a3 + 128);
  v17 = *(a3 + 136);
  v14 = *(a3 + 96);
  v15 = *(a3 + 112);
  v12 = *(a3 + 64);
  v13 = *(a3 + 80);
  result = sub_217EDB0A8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_217EDBA00@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  v13 = *(a1 + 96);
  v14 = *(a1 + 112);
  v12 = *(a1 + 80);
  result = sub_217F0032C();
  *a2 = result;
  return result;
}

uint64_t sub_217EDBA5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217EDBAB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_217EDBB04(void *a1, void *a2)
{
  v4 = a2[3];
  v89 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[11];
  v88 = a2[10];
  v12 = a2[12];
  v13 = a2[13];
  v15 = a2[14];
  v14 = a2[15];
  v17 = a2[16];
  v16 = a2[17];
  *&v105 = v89;
  v85 = v11;
  v86 = v4;
  *(&v105 + 1) = v4;
  v78 = v5;
  v79 = v12;
  *&v106 = v5;
  v72 = v13;
  v73 = v6;
  *(&v106 + 1) = v6;
  v67 = v15;
  v68 = v7;
  *&v107 = v7;
  v62 = v14;
  v63 = v8;
  *(&v107 + 1) = v8;
  v57 = v17;
  v58 = v9;
  *&v108 = v9;
  v55 = v16;
  v56 = v10;
  *(&v108 + 1) = v10;
  v109 = v88;
  v110 = v11;
  v111 = v12;
  v112 = v13;
  v113 = v15;
  v114 = v14;
  v115 = v17;
  v116 = v16;
  _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsV10CodingKeysOMa();
  swift_getWitnessTable();
  v18 = sub_217F4B0E4();
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v53 - v21;
  v87 = *v2;
  v23 = *(v2 + 1);
  v83 = *(v2 + 3);
  v84 = v23;
  v24 = v2[5];
  v82 = v2[6];
  v25 = *(v2 + 7);
  v80 = *(v2 + 9);
  v81 = v25;
  v26 = v2[11];
  v77 = v2[12];
  v27 = *(v2 + 13);
  v75 = *(v2 + 15);
  v76 = v27;
  v28 = v2[17];
  v29 = v2[19];
  v74 = v2[18];
  v71 = v29;
  v30 = *(v2 + 10);
  v69 = *(v2 + 11);
  v70 = v30;
  v31 = v2[24];
  v66 = v2[25];
  v32 = *(v2 + 13);
  v64 = *(v2 + 14);
  v65 = v32;
  v33 = v2[30];
  v61 = v2[31];
  v34 = *(v2 + 16);
  v59 = *(v2 + 17);
  v60 = v34;
  v35 = v2[36];
  v36 = *(v2 + 39);
  v117 = *(v2 + 37);
  v118 = v36;
  v37 = *(v2 + 43);
  v119 = *(v2 + 41);
  v120 = v37;
  v38 = v2[45];
  v39 = v2[47];
  v53 = v2[46];
  v54 = v39;
  v40 = *(v2 + 25);
  v121 = *(v2 + 24);
  v122 = v40;
  v123 = *(v2 + 26);
  v124 = *(v2 + 216);
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v18;
  sub_217F4B294();
  *&v100 = v87;
  LOBYTE(v92) = 0;
  *&v105 = v89;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v88;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  v43 = v90;
  sub_217F4B0C4();
  if (v43)
  {
    return (*(v91 + 8))(v22, v18);
  }

  v45 = v82;
  v46 = v85;
  v47 = v86;
  v105 = v84;
  v106 = v83;
  *&v107 = v24;
  LOBYTE(v100) = 1;
  v48 = sub_217EF6DE8();
  sub_217F4B0C4();
  v89 = v48;
  *&v100 = v45;
  LOBYTE(v92) = 2;
  *&v105 = v47;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v46;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  v90 = v42;
  sub_217F4B0C4();
  v105 = v81;
  v106 = v80;
  *&v107 = v26;
  LOBYTE(v100) = 3;
  sub_217F4B0C4();
  *&v100 = v77;
  LOBYTE(v92) = 4;
  *&v105 = v78;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v79;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  sub_217F4B0C4();
  v105 = v76;
  v106 = v75;
  *&v107 = v28;
  LOBYTE(v100) = 5;
  sub_217F4B0C4();
  *&v105 = v74;
  LOBYTE(v100) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F68, &qword_217F52230);
  sub_217EF7104();
  sub_217F4B0C4();
  *&v100 = v71;
  LOBYTE(v92) = 7;
  *&v105 = v73;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v72;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  sub_217F4B0C4();
  v105 = v70;
  v106 = v69;
  *&v107 = v31;
  LOBYTE(v100) = 8;
  sub_217F4B0C4();
  *&v100 = v66;
  LOBYTE(v92) = 9;
  *&v105 = v68;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v67;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  sub_217F4B0C4();
  v105 = v65;
  v106 = v64;
  *&v107 = v33;
  LOBYTE(v100) = 10;
  sub_217F4B0C4();
  *&v100 = v61;
  LOBYTE(v92) = 11;
  *&v105 = v63;
  *(&v105 + 1) = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  *&v106 = v62;
  *(&v106 + 1) = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  sub_217F4B0C4();
  v105 = v60;
  v106 = v59;
  *&v107 = v35;
  LOBYTE(v100) = 12;
  sub_217F4B0C4();
  v105 = v117;
  v106 = v118;
  v107 = v119;
  v108 = v120;
  v104 = 13;
  v49 = sub_217EF7044();
  *&v100 = v58;
  *(&v100 + 1) = &_s14descr2829CD401O22QuotaConditionProviderVN;
  *&v101 = v57;
  *(&v101 + 1) = v49;
  v50 = type metadata accessor for ConditionalConfigurableValue();
  v51 = *(v50 - 8);
  (*(v51 + 16))(&v100, &v117, v50);
  swift_getWitnessTable();
  sub_217F4B0C4();
  v100 = v105;
  v101 = v106;
  v102 = v107;
  v103 = v108;
  (*(v51 + 8))(&v100, v50);
  v97 = v38;
  v98 = v53;
  v99 = v54;
  v96 = 14;
  v52 = sub_217EF7098();

  *&v92 = v56;
  *(&v92 + 1) = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  *&v93 = v55;
  *(&v93 + 1) = v52;
  type metadata accessor for ConditionalConfigurableValue();
  swift_getWitnessTable();
  sub_217F4B0C4();

  v92 = v121;
  v93 = v122;
  v94 = v123;
  v95 = v124;
  LOBYTE(v97) = 15;
  sub_217EF7188();
  sub_217F4B054();
  return (*(v91 + 8))(v22, v90);
}

uint64_t sub_217EDC50C@<X0>(uint64_t *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, ValueMetadata *a5@<X4>, ValueMetadata *a6@<X5>, ValueMetadata *a7@<X6>, ValueMetadata *a8@<X7>, void *a9@<X8>, ValueMetadata *a10, ValueMetadata *a11, ValueMetadata *a12, ValueMetadata *a13, ValueMetadata *a14, ValueMetadata *a15, ValueMetadata *a16, ValueMetadata *a17, ValueMetadata *a18)
{
  v88 = a9;
  v102 = a11;
  v103 = a2;
  v108 = a2;
  v100 = a12;
  v101 = a3;
  v109 = a3;
  v97 = a8;
  v98 = a4;
  v110 = a4;
  v94 = a5;
  v95 = a14;
  v111 = a5;
  v92 = a6;
  v93 = a15;
  v112 = a6;
  v90 = a7;
  v91 = a16;
  v113 = a7;
  v114 = a8;
  v115 = a10;
  v116 = a11;
  v117 = a12;
  v99 = a13;
  v118 = a13;
  v119 = a14;
  v120 = a15;
  v121 = a16;
  v96 = a17;
  v122 = a17;
  v89 = a18;
  v123 = a18;
  _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsV10CodingKeysOMa();
  swift_getWitnessTable();
  v105 = sub_217F4AFF4();
  v19 = *(v105 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v105, v21);
  v23 = &v58 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v104 = v23;
  v26 = v174;
  sub_217F4B274();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v27 = v19;
  v174 = a10;
  v108 = v103;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v28 = v101;
  v110 = v102;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 0;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v29 = *v107;
  v107[0] = 1;
  v30 = sub_217EF6EB8();
  sub_217F4AFC4();
  v86 = v29;
  v87 = v30;
  v31 = v108;
  v32 = v109;
  v33 = v110;
  v34 = v111;
  v35 = v112;
  v108 = v28;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v110 = v100;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 2;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v36 = *v107;
  v107[0] = 3;
  sub_217F4AFC4();
  v83 = v32;
  v84 = v31;
  v85 = v36;
  v37 = v108;
  v38 = v109;
  v39 = v110;
  v40 = v111;
  v41 = v112;
  v108 = v98;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v110 = v99;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 4;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v78 = v41;
  v79 = v39;
  v80 = v38;
  v81 = v37;
  v82 = v40;
  v42 = *v107;
  v107[0] = 5;
  sub_217F4AFC4();
  v77 = v42;
  v43 = v108;
  v44 = v109;
  v45 = v110;
  v46 = v111;
  v47 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F68, &qword_217F52230);
  v107[0] = 6;
  sub_217EF71DC();
  sub_217F4AFC4();
  v76 = v108;
  v108 = v94;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v110 = v95;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 7;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v75 = *v107;
  v107[0] = 8;
  sub_217F4AFC4();
  v74 = v47;
  v48 = v108;
  v72 = v110;
  v73 = v109;
  v70 = v112;
  v71 = v111;
  v108 = v92;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v110 = v93;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 9;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v49 = *v107;
  v107[0] = 10;
  sub_217F4AFC4();
  v68 = v109;
  v69 = v108;
  v66 = v111;
  v67 = v110;
  v65 = v112;
  v108 = v90;
  v109 = &_s14descr2829CD401O28PositiveIntConditionProviderVN;
  v110 = v91;
  v111 = &off_280C27760;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 11;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v50 = *v107;
  v107[0] = 12;
  sub_217F4AFC4();
  v63 = v109;
  v64 = v108;
  v61 = v111;
  v62 = v110;
  v87 = v112;
  v51 = sub_217EF7044();
  v108 = v97;
  v109 = &_s14descr2829CD401O22QuotaConditionProviderVN;
  v110 = v96;
  v111 = v51;
  type metadata accessor for ConditionalConfigurableValue();
  v161 = 13;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v170 = v162;
  v171 = v163;
  v172 = v164;
  v173 = v165;
  v52 = sub_217EF7098();
  v108 = v174;
  v109 = &_s14descr2829CD401O31TopicDiversityConditionProviderVN;
  v110 = v89;
  v111 = v52;
  type metadata accessor for ConditionalConfigurableValue();
  LOBYTE(v108) = 14;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v60 = *v107;
  v53 = *&v107[16];
  v59 = *&v107[8];
  v156 = 15;
  sub_217EF7260();
  sub_217F4AF54();
  (*(v27 + 8))(v104, v105);
  v166 = v157;
  v167 = v158;
  v168 = v159;
  *&v107[328] = v172;
  *&v107[344] = v173;
  *&v107[296] = v170;
  *&v107[312] = v171;
  *&v107[416] = v159;
  v169 = v160;
  v54 = v86;
  *v107 = v86;
  *&v107[8] = v84;
  *&v107[16] = v83;
  *&v107[24] = v33;
  *&v107[32] = v34;
  *&v107[40] = v35;
  *&v107[48] = v85;
  *&v107[56] = v81;
  *&v107[64] = v80;
  *&v107[72] = v79;
  *&v107[80] = v82;
  *&v107[88] = v78;
  *&v107[96] = v77;
  *&v107[104] = v43;
  *&v107[112] = v44;
  *&v107[120] = v45;
  *&v107[128] = v46;
  *&v107[136] = v74;
  *&v107[144] = v76;
  *&v107[152] = v75;
  *&v107[160] = v48;
  *&v107[168] = v73;
  *&v107[176] = v72;
  *&v107[184] = v71;
  *&v107[192] = v70;
  *&v107[200] = v49;
  *&v107[208] = v69;
  *&v107[216] = v68;
  *&v107[224] = v67;
  *&v107[232] = v66;
  *&v107[240] = v65;
  *&v107[248] = v50;
  *&v107[256] = v64;
  *&v107[264] = v63;
  *&v107[272] = v62;
  *&v107[280] = v61;
  *&v107[288] = v87;
  *&v107[360] = v60;
  *&v107[368] = v59;
  *&v107[376] = v53;
  *&v107[432] = v160;
  *&v107[400] = v158;
  *&v107[384] = v157;
  memcpy(v88, v107, 0x1B2uLL);
  v108 = v103;
  v109 = v28;
  v110 = v98;
  v111 = v94;
  v112 = v92;
  v113 = v90;
  v114 = v97;
  v115 = v174;
  v116 = v102;
  v117 = v100;
  v118 = v99;
  v119 = v95;
  v120 = v93;
  v121 = v91;
  v122 = v96;
  v123 = v89;
  v55 = _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV15ClusteringKnobsVMa();
  v56 = *(v55 - 8);
  (*(v56 + 16))(&v108, v107, v55);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v108 = v54;
  v109 = v84;
  v110 = v83;
  v111 = v33;
  v112 = v34;
  v113 = v35;
  v114 = v85;
  v115 = v81;
  v116 = v80;
  v117 = v79;
  v118 = v82;
  v119 = v78;
  v120 = v77;
  v121 = v43;
  v122 = v44;
  v123 = v45;
  v124 = v46;
  v125 = v74;
  v126 = v76;
  v127 = v75;
  v128 = v48;
  v129 = v73;
  v130 = v72;
  v131 = v71;
  v132 = v70;
  v133 = v49;
  v134 = v69;
  v135 = v68;
  v136 = v67;
  v137 = v66;
  v138 = v65;
  v139 = v50;
  v140 = v64;
  v141 = v63;
  v142 = v62;
  v143 = v61;
  v147 = v172;
  v148 = v173;
  v145 = v170;
  v146 = v171;
  v144 = v87;
  v149 = v60;
  v150 = v59;
  v151 = v53;
  v155 = v169;
  v153 = v167;
  v154 = v168;
  v152 = v166;
  return (*(v56 + 8))(&v108, v55);
}

uint64_t sub_217EDD2D4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1B2uLL);
  memcpy(a1, v1, 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F80, &qword_217F52238);
}

void *sub_217EDD338(const void *a1)
{
  memcpy(v4, v1, 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F80, &qword_217F52238);
  return memcpy(v1, a1, 0x1B2uLL);
}

uint64_t sub_217EDD3C4@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 440), 0x1B2uLL);
  memcpy(a1, (v1 + 440), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F88, &qword_217F52240);
}

void *sub_217EDD428(const void *a1)
{
  memcpy(v4, (v1 + 440), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F88, &qword_217F52240);
  return memcpy((v1 + 440), a1, 0x1B2uLL);
}

void (*sub_217EDD4E0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 880);
  return sub_217EDD50C;
}

_BYTE *(*sub_217EDD560(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 888);
  return sub_217EDD58C;
}

uint64_t sub_217EDD5D4(uint64_t a1)
{
  v3 = *(v1 + 896);

  *(v1 + 896) = a1;
  return result;
}

_BYTE *(*sub_217EDD63C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 904);
  return sub_217EDD668;
}

uint64_t (*sub_217EDD6AC(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 912);
  a1[1] = v1;
  return sub_217EDD6D4;
}

_BYTE *(*sub_217EDD714(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 920);
  return sub_217EDD740;
}

_BYTE *(*sub_217EDD768(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 921);
  return sub_217EDD794;
}

void (*sub_217EDD7D0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 928);
  return sub_217EDD7FC;
}

void (*sub_217EDD854(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 936);
  return sub_217EDD880;
}

uint64_t (*sub_217EDD8EC(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 944);
  a1[1] = v1;
  return sub_217EDD914;
}

void (*sub_217EDD970(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 952);
  return sub_217EDD99C;
}

void (*sub_217EDD9FC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 960);
  return sub_217EDDA28;
}

uint64_t _s10XavierNews7ClassicV13ConfigurationV010ClusteringD0V012DefaultTopicE28KnobsPaidBundleArticleQuotasV12defaultValueAG0L0VvgZ_0@<X0>(_OWORD *a1@<X8>)
{
  if (qword_280C27A40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_280C27A58;
  v7[0] = xmmword_280C27A48;
  v7[1] = xmmword_280C27A58;
  v2 = xmmword_280C27A68;
  v3 = *&qword_280C27A78;
  v7[2] = xmmword_280C27A68;
  v7[3] = *&qword_280C27A78;
  *a1 = xmmword_280C27A48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_217EB2994(v7, &v6);
}

uint64_t Classic.Configuration.ClusteringConfiguration.moreForYouClusteringKnobs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 968), 0x1B2uLL);
  memcpy(a1, (v1 + 968), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F90, &qword_217F52248);
}

void *Classic.Configuration.ClusteringConfiguration.moreForYouClusteringKnobs.setter(const void *a1)
{
  memcpy(v4, (v1 + 968), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F90, &qword_217F52248);
  return memcpy((v1 + 968), a1, 0x1B2uLL);
}

void (*sub_217EDDC4C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1408);
  return sub_217EDDC78;
}

void (*sub_217EDDCE0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1416);
  return sub_217EDDD0C;
}

uint64_t (*sub_217EDDD78(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 1424);
  a1[1] = v1;
  return sub_217EDDDA0;
}

void (*sub_217EDDE14(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1432);
  return sub_217EDDE40;
}

uint64_t sub_217EDDE74@<X0>(_OWORD *a1@<X8>)
{
  if (qword_280C27A40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_280C27A58;
  v7[0] = xmmword_280C27A48;
  v7[1] = xmmword_280C27A58;
  v2 = xmmword_280C27A68;
  v3 = *&qword_280C27A78;
  v7[2] = xmmword_280C27A68;
  v7[3] = *&qword_280C27A78;
  *a1 = xmmword_280C27A48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_217EB2994(v7, &v6);
}

uint64_t sub_217EDDEFC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1440), 0x1B2uLL);
  memcpy(a1, (v1 + 1440), 0x1B2uLL);
  return sub_217F03A50(__dst, v4, &qword_27CBF5F98, &qword_217F52250);
}

void *sub_217EDDF60(const void *a1)
{
  memcpy(v4, (v1 + 1440), 0x1B2uLL);
  sub_217F03AD0(v4, &qword_27CBF5F98, &qword_217F52250);
  return memcpy((v1 + 1440), a1, 0x1B2uLL);
}

void (*sub_217EDE024(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1880);
  return sub_217EDE050;
}

void (*sub_217EDE0B0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1888);
  return sub_217EDE0DC;
}

void (*sub_217EDE13C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1896);
  return sub_217EDE168;
}

void (*sub_217EDE1C8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1904);
  return sub_217EDE1F4;
}

void (*sub_217EDE254(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 1912);
  return sub_217EDE280;
}

unint64_t sub_217EDE2B0(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 9:
    case 15:
      result = 0xD000000000000016;
      break;
    case 2:
    case 13:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 8:
    case 11:
      result = 0xD000000000000025;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 10:
    case 18:
      result = 0xD00000000000001CLL;
      break;
    case 12:
    case 19:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 20:
    case 21:
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EDE4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F00334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EDE510(uint64_t a1)
{
  v2 = sub_217EF72CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EDE54C(uint64_t a1)
{
  v2 = sub_217EF72CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EDE588(uint64_t a1, uint64_t a2)
{
  v63 = v3;
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA0, &qword_217F52258);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v28 - v10;
  memcpy(v59, v4, 0x1B2uLL);
  memcpy(v60, (v4 + 440), 0x1B2uLL);
  v47 = *(v4 + 880);
  v48 = *(v4 + 888);
  v46 = *(v4 + 896);
  v45 = *(v4 + 904);
  v44 = *(v4 + 912);
  v12 = *(v4 + 920);
  v42 = *(v4 + 921);
  v43 = v12;
  v13 = *(v4 + 928);
  v40 = *(v4 + 936);
  v41 = v13;
  v39 = *(v4 + 944);
  v14 = *(v4 + 952);
  v37 = *(v4 + 960);
  v38 = v14;
  memcpy(v61, (v4 + 968), 0x1B2uLL);
  v15 = *(v4 + 1408);
  v16 = *(v4 + 1416);
  v36 = *(v4 + 1424);
  v17 = *(v4 + 1432);
  memcpy(v62, (v4 + 1440), 0x1B2uLL);
  v18 = *(v4 + 1880);
  v19 = *(v4 + 1888);
  v20 = *(v4 + 1896);
  v21 = *(v4 + 1904);
  v22 = *(v4 + 1912);
  v23 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_217F03A50(v59, v58, &qword_27CBF5F80, &qword_217F52238);
  sub_217EF72CC();
  sub_217F4B294();
  memcpy(v58, v59, 0x1B2uLL);
  v57[439] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F80, &qword_217F52238);
  v24 = v11;
  sub_217EF8694(&qword_280C27EF8, &qword_27CBF5F80, &qword_217F52238);
  v25 = v63;
  sub_217F4B0C4();
  if (v25)
  {
    memcpy(v57, v58, 0x1B2uLL);
    sub_217F03AD0(v57, &qword_27CBF5F80, &qword_217F52238);
  }

  else
  {
    v26 = v48;
    v63 = v15;
    v34 = v17;
    v35 = v16;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    memcpy(v57, v58, 0x1B2uLL);
    sub_217F03AD0(v57, &qword_27CBF5F80, &qword_217F52238);
    memcpy(v56, v60, sizeof(v56));
    v55[439] = 1;
    sub_217F03A50(v60, v55, &qword_27CBF5F88, &qword_217F52240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F88, &qword_217F52240);
    sub_217EF8694(&qword_280C27F08, &qword_27CBF5F88, &qword_217F52240);
    sub_217F4B0C4();
    v28 = v11;
    memcpy(v55, v56, 0x1B2uLL);
    sub_217F03AD0(v55, &qword_27CBF5F88, &qword_217F52240);
    v54[0] = v47;
    v53[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA8, &qword_217F52260);
    sub_217EF8694(&qword_280C28778, &qword_27CBF5FA8, &qword_217F52260);
    sub_217F4B0C4();
    LOBYTE(v54[0]) = v26;
    v53[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB0, &qword_217F52268);
    sub_217EF8694(qword_280C28860, &qword_27CBF5FB0, &qword_217F52268);
    sub_217F4B0C4();
    v54[0] = v46;
    v53[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB8, &unk_217F52270);
    sub_217EF7320();
    sub_217F4B0C4();
    LOBYTE(v54[0]) = v45;
    v53[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FC8, &qword_217F52280);
    sub_217EF8694(&qword_280C28858, &qword_27CBF5FC8, &qword_217F52280);
    sub_217F4B0C4();
    v54[0] = v44;
    v53[0] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD0, &qword_217F52288);
    sub_217EF8694(&qword_280C28710, &qword_27CBF5FD0, &qword_217F52288);
    sub_217F4B0C4();
    LOBYTE(v54[0]) = v43;
    v53[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD8, &qword_217F52290);
    sub_217EF8694(&qword_280C28848, &qword_27CBF5FD8, &qword_217F52290);
    sub_217F4B0C4();
    LOBYTE(v54[0]) = v42;
    v53[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE0, &qword_217F52298);
    sub_217EF8694(&qword_280C28850, &qword_27CBF5FE0, &qword_217F52298);
    sub_217F4B0C4();
    v54[0] = v41;
    v53[0] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE8, &qword_217F522A0);
    sub_217EF8694(&qword_280C28760, &qword_27CBF5FE8, &qword_217F522A0);
    sub_217F4B0C4();
    v54[0] = v40;
    v53[0] = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF0, &qword_217F522A8);
    sub_217EF8694(&qword_280C28720, &qword_27CBF5FF0, &qword_217F522A8);
    sub_217F4B0C4();
    v54[0] = v39;
    v53[0] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF8, &qword_217F522B0);
    sub_217EF8694(&qword_280C28708, &qword_27CBF5FF8, &qword_217F522B0);
    sub_217F4B0C4();
    v54[0] = v38;
    v53[0] = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6000, &qword_217F522B8);
    sub_217EF8694(&qword_280C28768, &qword_27CBF6000, &qword_217F522B8);
    sub_217F4B0C4();
    v54[0] = v37;
    v53[0] = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6008, &qword_217F522C0);
    sub_217EF8694(&qword_280C28770, &qword_27CBF6008, &qword_217F522C0);
    sub_217F4B0C4();
    memcpy(v54, v61, 0x1B2uLL);
    v53[439] = 14;
    sub_217F03A50(v61, v53, &qword_27CBF5F90, &qword_217F52248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F90, &qword_217F52248);
    sub_217EF8694(&qword_280C27F00, &qword_27CBF5F90, &qword_217F52248);
    sub_217F4B0C4();
    memcpy(v53, v54, 0x1B2uLL);
    sub_217F03AD0(v53, &qword_27CBF5F90, &qword_217F52248);
    v52[0] = v63;
    v51[0] = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6010, &qword_217F522C8);
    sub_217EF8694(&qword_280C28758, &qword_27CBF6010, &qword_217F522C8);
    sub_217F4B0C4();
    v52[0] = v35;
    v51[0] = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6018, &qword_217F522D0);
    sub_217EF8694(&qword_280C28750, &qword_27CBF6018, &qword_217F522D0);
    sub_217F4B0C4();
    v52[0] = v36;
    v51[0] = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6020, &qword_217F522D8);
    sub_217EF8694(&qword_280C28728, &qword_27CBF6020, &qword_217F522D8);
    sub_217F4B0C4();
    v52[0] = v34;
    v51[0] = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6028, &qword_217F522E0);
    sub_217EF8694(&qword_280C28718, &qword_27CBF6028, &qword_217F522E0);
    sub_217F4B0C4();
    memcpy(v52, v62, 0x1B2uLL);
    v51[439] = 19;
    sub_217F03A50(v62, v51, &qword_27CBF5F98, &qword_217F52250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F98, &qword_217F52250);
    sub_217EF8694(qword_280C27F18, &qword_27CBF5F98, &qword_217F52250);
    sub_217F4B0C4();
    memcpy(v51, v52, 0x1B2uLL);
    sub_217F03AD0(v51, &qword_27CBF5F98, &qword_217F52250);
    v50 = v29;
    v49 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6030, &qword_217F522E8);
    sub_217EF8694(&qword_280C28748, &qword_27CBF6030, &qword_217F522E8);
    sub_217F4B0C4();
    v50 = v30;
    v49 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6038, &qword_217F522F0);
    sub_217EF8694(&qword_280C28740, &qword_27CBF6038, &qword_217F522F0);
    sub_217F4B0C4();
    v50 = v31;
    v49 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6040, &qword_217F522F8);
    sub_217EF8694(&qword_280C28738, &qword_27CBF6040, &qword_217F522F8);
    sub_217F4B0C4();
    v50 = v32;
    v49 = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6048, &qword_217F52300);
    sub_217EF8694(qword_280C28780, &qword_27CBF6048, &qword_217F52300);
    sub_217F4B0C4();
    v50 = v33;
    v49 = 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6050, &qword_217F52308);
    sub_217EF8694(&qword_280C28730, &qword_27CBF6050, &qword_217F52308);
    v24 = v28;
    sub_217F4B0C4();
  }

  return (*(v7 + 8))(v24, v6);
}

uint64_t sub_217EDF60C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6058, &qword_217F52310);
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v89, v8);
  v10 = &v26 - v9;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_217EF72CC();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  v37 = v5;
  v38 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F80, &qword_217F52238);
  v76[439] = 0;
  sub_217EF8694(&qword_27CBF6060, &qword_27CBF5F80, &qword_217F52238);
  sub_217F4AFC4();
  memcpy(v88, v77, 0x1B2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F88, &qword_217F52240);
  v75[439] = 1;
  sub_217EF8694(&qword_27CBF6068, &qword_27CBF5F88, &qword_217F52240);
  sub_217F4AFC4();
  memcpy(&v88[440], v76, 0x1B2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FA8, &qword_217F52260);
  LOBYTE(v39[0]) = 2;
  sub_217EF8694(&qword_27CBF6070, &qword_27CBF5FA8, &qword_217F52260);
  v36 = 0;
  sub_217F4AFC4();
  v12 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB0, &qword_217F52268);
  LOBYTE(v39[0]) = 3;
  sub_217EF8694(&qword_27CBF6078, &qword_27CBF5FB0, &qword_217F52268);
  sub_217F4AFC4();
  v13 = LOBYTE(v40[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FB8, &unk_217F52270);
  LOBYTE(v39[0]) = 4;
  sub_217EF73D8();
  sub_217F4AFC4();
  v34 = v13;
  v35 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FC8, &qword_217F52280);
  LOBYTE(v39[0]) = 5;
  sub_217EF8694(&qword_27CBF6090, &qword_27CBF5FC8, &qword_217F52280);
  sub_217F4AFC4();
  v33 = LOBYTE(v40[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD0, &qword_217F52288);
  LOBYTE(v39[0]) = 6;
  sub_217EF8694(&qword_27CBF6098, &qword_27CBF5FD0, &qword_217F52288);
  sub_217F4AFC4();
  v32 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FD8, &qword_217F52290);
  LOBYTE(v39[0]) = 7;
  sub_217EF8694(&qword_27CBF60A0, &qword_27CBF5FD8, &qword_217F52290);
  sub_217F4AFC4();
  v31 = LOBYTE(v40[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE0, &qword_217F52298);
  LOBYTE(v39[0]) = 8;
  sub_217EF8694(&qword_27CBF60A8, &qword_27CBF5FE0, &qword_217F52298);
  sub_217F4AFC4();
  v14 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FE8, &qword_217F522A0);
  LOBYTE(v39[0]) = 9;
  sub_217EF8694(&qword_27CBF60B0, &qword_27CBF5FE8, &qword_217F522A0);
  sub_217F4AFC4();
  v15 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF0, &qword_217F522A8);
  LOBYTE(v39[0]) = 10;
  sub_217EF8694(&qword_27CBF60B8, &qword_27CBF5FF0, &qword_217F522A8);
  sub_217F4AFC4();
  v16 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5FF8, &qword_217F522B0);
  LOBYTE(v39[0]) = 11;
  sub_217EF8694(&qword_27CBF60C0, &qword_27CBF5FF8, &qword_217F522B0);
  sub_217F4AFC4();
  v17 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6000, &qword_217F522B8);
  LOBYTE(v39[0]) = 12;
  sub_217EF8694(&qword_27CBF60C8, &qword_27CBF6000, &qword_217F522B8);
  sub_217F4AFC4();
  v18 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6008, &qword_217F522C0);
  LOBYTE(v39[0]) = 13;
  sub_217EF8694(&qword_27CBF60D0, &qword_27CBF6008, &qword_217F522C0);
  sub_217F4AFC4();
  v19 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F90, &qword_217F52248);
  v74[439] = 14;
  sub_217EF8694(&qword_27CBF60D8, &qword_27CBF5F90, &qword_217F52248);
  sub_217F4AFC4();
  memcpy(v83, v75, sizeof(v83));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6010, &qword_217F522C8);
  LOBYTE(v39[0]) = 15;
  sub_217EF8694(&qword_27CBF60E0, &qword_27CBF6010, &qword_217F522C8);
  sub_217F4AFC4();
  v20 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6018, &qword_217F522D0);
  LOBYTE(v39[0]) = 16;
  sub_217EF8694(&qword_27CBF60E8, &qword_27CBF6018, &qword_217F522D0);
  sub_217F4AFC4();
  v21 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6020, &qword_217F522D8);
  LOBYTE(v39[0]) = 17;
  sub_217EF8694(&qword_27CBF60F0, &qword_27CBF6020, &qword_217F522D8);
  sub_217F4AFC4();
  v30 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6028, &qword_217F522E0);
  LOBYTE(v39[0]) = 18;
  sub_217EF8694(&qword_27CBF60F8, &qword_27CBF6028, &qword_217F522E0);
  sub_217F4AFC4();
  v22 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5F98, &qword_217F52250);
  v73 = 19;
  sub_217EF8694(&qword_27CBF6100, &qword_27CBF5F98, &qword_217F52250);
  sub_217F4AFC4();
  memcpy(v80, v74, sizeof(v80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6030, &qword_217F522E8);
  LOBYTE(v39[0]) = 20;
  sub_217EF8694(&qword_27CBF6108, &qword_27CBF6030, &qword_217F522E8);
  sub_217F4AFC4();
  v36 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6038, &qword_217F522F0);
  LOBYTE(v39[0]) = 21;
  sub_217EF8694(&qword_27CBF6110, &qword_27CBF6038, &qword_217F522F0);
  sub_217F4AFC4();
  v29 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6040, &qword_217F522F8);
  LOBYTE(v39[0]) = 22;
  sub_217EF8694(&qword_27CBF6118, &qword_27CBF6040, &qword_217F522F8);
  sub_217F4AFC4();
  v28 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6048, &qword_217F52300);
  LOBYTE(v39[0]) = 23;
  sub_217EF8694(&qword_27CBF6120, &qword_27CBF6048, &qword_217F52300);
  sub_217F4AFC4();
  v27 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6050, &qword_217F52308);
  v71 = 24;
  sub_217EF8694(&qword_27CBF6128, &qword_27CBF6050, &qword_217F52308);
  sub_217F4AFC4();
  (*(v38 + 8))(v10, v89);
  v89 = v72;
  memcpy(v39, v88, 0x370uLL);
  v39[110] = v12;
  v23 = v34;
  LOBYTE(v39[111]) = v34;
  *(&v39[111] + 1) = *v87;
  HIDWORD(v39[111]) = *&v87[3];
  v39[112] = v35;
  LOBYTE(v39[113]) = v33;
  *(&v39[113] + 1) = *v86;
  HIDWORD(v39[113]) = *&v86[3];
  v39[114] = v32;
  LOBYTE(v39[115]) = v31;
  BYTE1(v39[115]) = v14;
  *(&v39[115] + 2) = v84;
  HIWORD(v39[115]) = v85;
  v39[116] = v15;
  v39[117] = v16;
  v26 = v17;
  v39[118] = v17;
  v39[119] = v18;
  v39[120] = v19;
  memcpy(&v39[121], v83, 0x1B2uLL);
  *(&v39[175] + 2) = v81;
  HIWORD(v39[175]) = v82;
  v39[176] = v20;
  v39[177] = v21;
  v24 = v30;
  v39[178] = v30;
  v39[179] = v22;
  memcpy(&v39[180], v80, 0x1B2uLL);
  *(&v39[234] + 2) = v78;
  HIWORD(v39[234]) = v79;
  v39[235] = v36;
  v39[236] = v29;
  v39[237] = v28;
  v39[238] = v27;
  v39[239] = v72;
  memcpy(v37, v39, 0x780uLL);
  sub_217EB4358(v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v3);
  memcpy(v40, v88, 0x370uLL);
  v40[110] = v12;
  v41 = v23;
  *v42 = *v87;
  *&v42[3] = *&v87[3];
  v43 = v35;
  v44 = v33;
  *v45 = *v86;
  *&v45[3] = *&v86[3];
  v46 = v32;
  v47 = v31;
  v48 = v14;
  v49 = v84;
  v50 = v85;
  v51 = v15;
  v52 = v16;
  v53 = v26;
  v54 = v18;
  v55 = v19;
  memcpy(v56, v83, sizeof(v56));
  v57 = v81;
  v58 = v82;
  v59 = v20;
  v60 = v21;
  v61 = v24;
  v62 = v22;
  memcpy(v63, v80, sizeof(v63));
  v64 = v78;
  v65 = v79;
  v66 = v36;
  v67 = v29;
  v68 = v28;
  v69 = v27;
  v70 = v89;
  return sub_217EB5CB8(v40);
}

void (*sub_217EE0A50(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE0A7C;
}

void (*sub_217EE0AD8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE0B04;
}

double sub_217EE0B30@<D0>(_OWORD *a1@<X8>)
{
  result = 0.04;
  *a1 = xmmword_217F51D60;
  a1[1] = xmmword_217F51D70;
  return result;
}

double sub_217EE0B48@<D0>(_OWORD *a1@<X8>)
{
  result = 0.04;
  *a1 = xmmword_217F51D60;
  a1[1] = xmmword_217F51D70;
  return result;
}

__n128 sub_217EE0B60@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE0B98(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v4;
  return sub_217EE0C04;
}

void sub_217EE0C04(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 16;
  sub_217EC2A74(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void (*sub_217EE0C80(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EE0CAC;
}

void (*sub_217EE0D04(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EE0D30;
}

_BYTE *(*sub_217EE0D6C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_217EE0D98;
}

void (*sub_217EE0DD4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 72);
  return sub_217EE0E00;
}

void (*sub_217EE0E58(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE0E84;
}

void (*sub_217EE0EDC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE0F08;
}

void (*sub_217EE0F60(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 96);
  return sub_217EE0F8C;
}

void (*sub_217EE0FE4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 104);
  return sub_217EE1010;
}

void (*sub_217EE1068(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 112);
  return sub_217EE1094;
}

_BYTE *(*sub_217EE10D8(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 120);
  return sub_217EE1104;
}

double sub_217EE1114@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 168);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 152);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_217EE1138@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *(a1 + 64) = *(v1 + 240);
  *(a1 + 80) = v2;
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 16) = v3;
  result = *(v1 + 224);
  *(a1 + 32) = *(v1 + 208);
  *(a1 + 48) = result;
  *(a1 + 95) = *(v1 + 271);
  return result;
}

void (*sub_217EE1194(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 280);
  return sub_217EE11C0;
}

void (*sub_217EE1220(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 288);
  return sub_217EE124C;
}

__n128 sub_217EE1278@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 296);
  *(a1 + 16) = v2;
  result = *(v1 + 328);
  *(a1 + 32) = result;
  return result;
}

void (*sub_217EE12C4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 344);
  return sub_217EE12F0;
}

void (*sub_217EE1350(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 352);
  return sub_217EE137C;
}

void (*sub_217EE13DC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 360);
  return sub_217EE1408;
}

_BYTE *(*sub_217EE144C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 368);
  return sub_217EE1478;
}

void (*sub_217EE14BC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 376);
  return sub_217EE14E8;
}

__n128 sub_217EE1514@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *(a1 + 128) = *(v1 + 512);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 544);
  *(a1 + 176) = *(v1 + 560);
  v3 = *(v1 + 464);
  *(a1 + 64) = *(v1 + 448);
  *(a1 + 80) = v3;
  v4 = *(v1 + 496);
  *(a1 + 96) = *(v1 + 480);
  *(a1 + 112) = v4;
  v5 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v5;
  result = *(v1 + 416);
  v7 = *(v1 + 432);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_217EE1550@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 584);
  *a1 = *(v1 + 568);
  *(a1 + 16) = v2;
  result = *(v1 + 600);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_217EE1568@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 616);
  v3 = *(v1 + 632);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE15AC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 648);
  return sub_217EE15D8;
}

void (*sub_217EE1638(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 656);
  return sub_217EE1664;
}

void (*sub_217EE16C4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 664);
  return sub_217EE16F0;
}

void (*sub_217EE1750(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 672);
  return sub_217EE177C;
}

_BYTE *(*sub_217EE17C0(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 680);
  return sub_217EE17EC;
}

void (*sub_217EE1830(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 688);
  return sub_217EE185C;
}

void (*sub_217EE18BC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 696);
  return sub_217EE18E8;
}

void (*sub_217EE1948(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 704);
  return sub_217EE1974;
}

void (*sub_217EE19D4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 712);
  return sub_217EE1A00;
}

void (*sub_217EE1A60(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 720);
  return sub_217EE1A8C;
}

void (*sub_217EE1AEC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 728);
  return sub_217EE1B18;
}

void (*sub_217EE1B78(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 736);
  return sub_217EE1BA4;
}

void (*sub_217EE1C04(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 744);
  return sub_217EE1C30;
}

void (*sub_217EE1C90(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 752);
  return sub_217EE1CBC;
}

void (*sub_217EE1D1C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 760);
  return sub_217EE1D48;
}

void (*sub_217EE1DA8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 768);
  return sub_217EE1DD4;
}

void (*sub_217EE1E34(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 776);
  return sub_217EE1E60;
}

double sub_217EE1E8C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.1;
  *a1 = xmmword_217F51D80;
  a1[1] = xmmword_217F51D90;
  return result;
}

double sub_217EE1EA4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.1;
  *a1 = xmmword_217F51D80;
  a1[1] = xmmword_217F51D90;
  return result;
}

__n128 sub_217EE1EBC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 784);
  v3 = *(v1 + 800);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EE1EF4(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 800);
  *v3 = *(v1 + 784);
  *(v3 + 16) = v4;
  return sub_217EE1F60;
}

void sub_217EE1F60(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 784;
  sub_217EC5D20(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void (*sub_217EE1FDC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 816);
  return sub_217EE2008;
}

__n128 sub_217EE2034@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 840);
  *a1 = *(v1 + 824);
  *(a1 + 16) = v2;
  result = *(v1 + 856);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_217EE204C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 952);
  *(a1 + 64) = *(v1 + 936);
  *(a1 + 80) = v2;
  *(a1 + 95) = *(v1 + 967);
  v3 = *(v1 + 888);
  *a1 = *(v1 + 872);
  *(a1 + 16) = v3;
  result = *(v1 + 920);
  *(a1 + 32) = *(v1 + 904);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_217EE2088(char a1)
{
  result = 0x69746C754D666E61;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 19:
    case 39:
      result = 0xD00000000000001FLL;
      break;
    case 3:
    case 17:
    case 24:
      result = 0xD000000000000024;
      break;
    case 4:
    case 45:
      result = 0xD000000000000025;
      break;
    case 5:
    case 36:
    case 38:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD00000000000003ALL;
      break;
    case 8:
    case 9:
    case 41:
      result = 0xD000000000000029;
      break;
    case 10:
      result = 0xD000000000000033;
      break;
    case 11:
      result = 0xD00000000000002DLL;
      break;
    case 12:
      result = 0x72656E65706D6164;
      break;
    case 13:
    case 25:
      result = 0xD000000000000023;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x64656E657473696CLL;
      break;
    case 21:
    case 22:
    case 37:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 26:
    case 30:
      result = 0xD000000000000017;
      break;
    case 27:
      v3 = 1684104562;
      goto LABEL_14;
    case 28:
    case 43:
      result = 0xD000000000000021;
      break;
    case 29:
    case 32:
    case 35:
      result = 0xD00000000000001ALL;
      break;
    case 31:
      v3 = 1852138867;
LABEL_14:
      result = v3 | 0x616E655000000000;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
      result = 0xD000000000000027;
      break;
    case 40:
      result = 0xD00000000000001ELL;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 44:
      result = 0xD000000000000014;
      break;
    case 46:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EE2510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F00ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EE2550(uint64_t a1)
{
  v2 = sub_217EF7490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE258C(uint64_t a1)
{
  v2 = sub_217EF7490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE25C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6130, &qword_217F52318);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - v7;
  v9 = *v1;
  v96 = v1[1];
  v97 = v9;
  v10 = *(v1 + 1);
  v94 = *(v1 + 2);
  v95 = v10;
  v11 = v1[6];
  v92 = v1[7];
  v93 = v11;
  v91 = *(v1 + 64);
  v12 = v1[9];
  v89 = v1[10];
  v90 = v12;
  v13 = v1[11];
  v87 = v1[12];
  v88 = v13;
  v14 = v1[13];
  v85 = v1[14];
  v86 = v14;
  v84 = *(v1 + 120);
  v15 = v1[16];
  v82 = v1[17];
  v83 = v15;
  v78 = v1[18];
  v16 = v1[19];
  v80 = v1[20];
  v81 = v16;
  v79 = v1[21];
  v17 = *(v1 + 16);
  v110 = *(v1 + 15);
  v111[0] = v17;
  *(v111 + 15) = *(v1 + 271);
  v18 = *(v1 + 12);
  v106 = *(v1 + 11);
  v107 = v18;
  v19 = *(v1 + 14);
  v108 = *(v1 + 13);
  v109 = v19;
  *&v18 = v1[35];
  v76 = v1[36];
  v77 = v18;
  v20 = *(v1 + 37);
  v48 = *(v1 + 39);
  v49 = v20;
  *&v18 = v1[41];
  v46 = v1[42];
  v47 = v18;
  *&v20 = v1[44];
  v50 = v1[43];
  v51 = v20;
  v53 = v1[45];
  v54 = *(v1 + 368);
  v21 = *(v1 + 33);
  v120 = *(v1 + 32);
  v121 = v21;
  v122 = *(v1 + 34);
  v123 = v1[70];
  v22 = *(v1 + 29);
  v116 = *(v1 + 28);
  v117 = v22;
  v23 = *(v1 + 31);
  v118 = *(v1 + 30);
  v119 = v23;
  v24 = *(v1 + 25);
  v112 = *(v1 + 24);
  v113 = v24;
  v25 = *(v1 + 27);
  v114 = *(v1 + 26);
  v115 = v25;
  v26 = *(v1 + 71);
  v58 = *(v1 + 73);
  v59 = v26;
  v27 = *(v1 + 77);
  v60 = *(v1 + 79);
  v61 = v27;
  v28 = *(v1 + 680);
  v29 = *(v1 + 119);
  v128 = *(v1 + 117);
  v129[0] = v29;
  v30 = *(v1 + 111);
  v124 = *(v1 + 109);
  v125 = v30;
  v31 = *(v1 + 113);
  v127 = *(v1 + 115);
  v126 = v31;
  v32 = *(v1 + 103);
  v74 = *(v1 + 105);
  v75 = v32;
  *(v129 + 15) = *(v1 + 967);
  v33 = a1[3];
  v34 = a1[4];
  v52 = v1[47];
  *&v31 = v1[75];
  v55 = v1[76];
  v56 = v31;
  v57 = v1[81];
  *&v32 = v1[83];
  v62 = v1[82];
  v63 = v32;
  *&v32 = v1[86];
  v64 = v1[84];
  v65 = v32;
  *&v32 = v1[88];
  v66 = v1[87];
  v67 = v32;
  *&v32 = v1[90];
  v68 = v1[89];
  v69 = v32;
  *&v32 = v1[92];
  v70 = v1[91];
  v71 = v32;
  v35 = v1[93];
  v36 = v1[94];
  v37 = v1[95];
  v38 = v1[96];
  v39 = v1[97];
  v40 = *(v1 + 49);
  v72 = *(v1 + 50);
  v73 = v40;
  v41 = v1[102];
  v42 = v1[107];
  v43 = v1[108];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_217EF7490();
  sub_217F4B294();
  *&v98 = v97;
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6140, &qword_217F52320);
  sub_217EF8694(&qword_27CBF6148, &qword_27CBF6140, &qword_217F52320);
  v44 = v130;
  sub_217F4B0C4();
  if (v44)
  {
    return (*(v4 + 8))(v8, v3);
  }

  LODWORD(v97) = v28;
  v130 = v4;
  *&v98 = v96;
  v105 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6150, &qword_217F52328);
  sub_217EF8694(&qword_27CBF6158, &qword_27CBF6150, &qword_217F52328);
  sub_217F4B0C4();
  v98 = v95;
  v99 = v94;
  v105 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6160, &qword_217F52330);
  sub_217EF8694(&qword_27CBF6168, &qword_27CBF6160, &qword_217F52330);
  sub_217F4B0C4();
  *&v98 = v93;
  v105 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6170, &qword_217F52338);
  sub_217EF8694(&qword_27CBF6178, &qword_27CBF6170, &qword_217F52338);
  sub_217F4B0C4();
  *&v98 = v92;
  v105 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6180, &qword_217F52340);
  sub_217EF8694(&qword_27CBF6188, &qword_27CBF6180, &qword_217F52340);
  sub_217F4B0C4();
  LOBYTE(v98) = v91;
  v105 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6190, &qword_217F52348);
  sub_217EF8694(&qword_27CBF6198, &qword_27CBF6190, &qword_217F52348);
  sub_217F4B0C4();
  *&v98 = v90;
  v105 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61A0, &qword_217F52350);
  sub_217EF8694(&qword_27CBF61A8, &qword_27CBF61A0, &qword_217F52350);
  sub_217F4B0C4();
  *&v98 = v89;
  v105 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61B0, &qword_217F52358);
  sub_217EF8694(&qword_27CBF61B8, &qword_27CBF61B0, &qword_217F52358);
  sub_217F4B0C4();
  *&v98 = v88;
  v105 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61C0, &qword_217F52360);
  sub_217EF8694(&qword_27CBF61C8, &qword_27CBF61C0, &qword_217F52360);
  sub_217F4B0C4();
  *&v98 = v87;
  v105 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61D0, &qword_217F52368);
  sub_217EF8694(&qword_27CBF61D8, &qword_27CBF61D0, &qword_217F52368);
  sub_217F4B0C4();
  *&v98 = v86;
  v105 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61E0, &qword_217F52370);
  sub_217EF8694(&qword_27CBF61E8, &qword_27CBF61E0, &qword_217F52370);
  sub_217F4B0C4();
  *&v98 = v85;
  v105 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61F0, &qword_217F52378);
  sub_217EF8694(&qword_27CBF61F8, &qword_27CBF61F0, &qword_217F52378);
  sub_217F4B0C4();
  LOBYTE(v98) = v84;
  v105 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6200, &qword_217F52380);
  sub_217EF8694(&qword_27CBF6208, &qword_27CBF6200, &qword_217F52380);
  sub_217F4B0C4();
  *&v98 = v83;
  *(&v98 + 1) = v82;
  *&v99 = v78;
  *(&v99 + 1) = v81;
  *&v100 = v80;
  *(&v100 + 1) = v79;
  v105 = 13;
  sub_217EF74E4();
  sub_217F4B0C4();
  v102 = v110;
  v103[0] = v111[0];
  *(v103 + 15) = *(v111 + 15);
  v98 = v106;
  v99 = v107;
  v100 = v108;
  v101 = v109;
  v105 = 14;
  sub_217EF7538();
  sub_217F4B0C4();
  *&v98 = v77;
  v105 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6220, &qword_217F52388);
  sub_217EF8694(&qword_27CBF6228, &qword_27CBF6220, &qword_217F52388);
  sub_217F4B0C4();
  *&v98 = v76;
  v105 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6230, &qword_217F52390);
  sub_217EF8694(&qword_27CBF6238, &qword_27CBF6230, &qword_217F52390);
  sub_217F4B0C4();
  v98 = v49;
  v99 = v48;
  *&v100 = v47;
  *(&v100 + 1) = v46;
  v105 = 17;
  v96 = sub_217EF758C();
  sub_217F4B0C4();
  *&v98 = v50;
  v105 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6248, &qword_217F52398);
  sub_217EF8694(&qword_27CBF6250, &qword_27CBF6248, &qword_217F52398);
  sub_217F4B0C4();
  *&v98 = v51;
  v105 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6258, &qword_217F523A0);
  sub_217EF8694(&qword_27CBF6260, &qword_27CBF6258, &qword_217F523A0);
  sub_217F4B0C4();
  *&v98 = v53;
  v105 = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6268, &qword_217F523A8);
  sub_217EF8694(&qword_27CBF6270, &qword_27CBF6268, &qword_217F523A8);
  sub_217F4B0C4();
  LOBYTE(v98) = v54;
  v105 = 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6278, &qword_217F523B0);
  sub_217EF8694(&qword_27CBF6280, &qword_27CBF6278, &qword_217F523B0);
  sub_217F4B0C4();
  *&v98 = v52;
  v105 = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6288, &qword_217F523B8);
  sub_217EF8694(&qword_27CBF6290, &qword_27CBF6288, &qword_217F523B8);
  sub_217F4B0C4();
  v103[3] = v120;
  v103[4] = v121;
  v103[5] = v122;
  v104 = v123;
  v102 = v116;
  v103[0] = v117;
  v103[1] = v118;
  v103[2] = v119;
  v98 = v112;
  v99 = v113;
  v100 = v114;
  v101 = v115;
  v105 = 23;
  sub_217EF75E0();
  sub_217F4B0C4();
  v98 = v59;
  v99 = v58;
  *&v100 = v56;
  *(&v100 + 1) = v55;
  v105 = 24;
  sub_217F4B0C4();
  v98 = v61;
  v99 = v60;
  v105 = 25;
  sub_217EF7634();
  sub_217F4B0C4();
  *&v98 = v57;
  v105 = 26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62A8, &qword_217F523C0);
  sub_217EF8694(&qword_27CBF62B0, &qword_27CBF62A8, &qword_217F523C0);
  sub_217F4B0C4();
  *&v98 = v62;
  v105 = 27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62B8, &qword_217F523C8);
  sub_217EF8694(&qword_27CBF62C0, &qword_27CBF62B8, &qword_217F523C8);
  sub_217F4B0C4();
  *&v98 = v63;
  v105 = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62C8, &qword_217F523D0);
  sub_217EF8694(&qword_27CBF62D0, &qword_27CBF62C8, &qword_217F523D0);
  sub_217F4B0C4();
  *&v98 = v64;
  v105 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62D8, &qword_217F523D8);
  sub_217EF8694(&qword_27CBF62E0, &qword_27CBF62D8, &qword_217F523D8);
  sub_217F4B0C4();
  LOBYTE(v98) = v97;
  v105 = 30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62E8, &qword_217F523E0);
  sub_217EF8694(&qword_27CBF62F0, &qword_27CBF62E8, &qword_217F523E0);
  sub_217F4B0C4();
  *&v98 = v65;
  v105 = 31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62F8, &qword_217F523E8);
  sub_217EF8694(&qword_27CBF6300, &qword_27CBF62F8, &qword_217F523E8);
  sub_217F4B0C4();
  *&v98 = v66;
  v105 = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6308, &qword_217F523F0);
  sub_217EF8694(&qword_27CBF6310, &qword_27CBF6308, &qword_217F523F0);
  sub_217F4B0C4();
  *&v98 = v67;
  v105 = 33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6318, &qword_217F523F8);
  sub_217EF8694(&qword_27CBF6320, &qword_27CBF6318, &qword_217F523F8);
  sub_217F4B0C4();
  *&v98 = v68;
  v105 = 34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6328, &qword_217F52400);
  sub_217EF8694(&qword_27CBF6330, &qword_27CBF6328, &qword_217F52400);
  sub_217F4B0C4();
  *&v98 = v69;
  v105 = 35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6338, &qword_217F52408);
  sub_217EF8694(&qword_27CBF6340, &qword_27CBF6338, &qword_217F52408);
  sub_217F4B0C4();
  *&v98 = v70;
  v105 = 36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6348, &qword_217F52410);
  sub_217EF8694(&qword_27CBF6350, &qword_27CBF6348, &qword_217F52410);
  sub_217F4B0C4();
  *&v98 = v71;
  v105 = 37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6358, &qword_217F52418);
  sub_217EF8694(&qword_27CBF6360, &qword_27CBF6358, &qword_217F52418);
  sub_217F4B0C4();
  *&v98 = v35;
  v105 = 38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6368, &qword_217F52420);
  sub_217EF8694(&qword_27CBF6370, &qword_27CBF6368, &qword_217F52420);
  sub_217F4B0C4();
  *&v98 = v36;
  v105 = 39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6378, &qword_217F52428);
  sub_217EF8694(&qword_27CBF6380, &qword_27CBF6378, &qword_217F52428);
  sub_217F4B0C4();
  *&v98 = v37;
  v105 = 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6388, &qword_217F52430);
  sub_217EF8694(&qword_27CBF6390, &qword_27CBF6388, &qword_217F52430);
  sub_217F4B0C4();
  *&v98 = v38;
  v105 = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6398, &qword_217F52438);
  sub_217EF8694(&qword_27CBF63A0, &qword_27CBF6398, &qword_217F52438);
  sub_217F4B0C4();
  *&v98 = v39;
  v105 = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63A8, &qword_217F52440);
  sub_217EF8694(&qword_27CBF63B0, &qword_27CBF63A8, &qword_217F52440);
  sub_217F4B0C4();
  v98 = v73;
  v99 = v72;
  v105 = 43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63B8, &qword_217F52448);
  sub_217EF8694(&qword_27CBF63C0, &qword_27CBF63B8, &qword_217F52448);
  sub_217F4B0C4();
  *&v98 = v41;
  v105 = 44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63C8, &qword_217F52450);
  sub_217EF8694(&qword_27CBF63D0, &qword_27CBF63C8, &qword_217F52450);
  sub_217F4B0C4();
  v98 = v75;
  v99 = v74;
  *&v100 = v42;
  *(&v100 + 1) = v43;
  v105 = 45;
  sub_217F4B0C4();
  v102 = v128;
  v103[0] = v129[0];
  *(v103 + 15) = *(v129 + 15);
  v98 = v124;
  v99 = v125;
  v100 = v126;
  v101 = v127;
  v105 = 46;
  sub_217F4B0C4();
  return (*(v130 + 8))(v8, v3);
}

uint64_t sub_217EE3F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63D8, &qword_217F52458);
  v5 = *(v144 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v144, v7);
  v9 = &v45 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7490();
  sub_217F4B274();
  if (!v2)
  {
    v98 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6140, &qword_217F52320);
    LOBYTE(v120) = 0;
    sub_217EF8694(&qword_27CBF63E0, &qword_27CBF6140, &qword_217F52320);
    sub_217F4AFC4();
    v11 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6150, &qword_217F52328);
    LOBYTE(v120) = 1;
    sub_217EF8694(&qword_27CBF63E8, &qword_27CBF6150, &qword_217F52328);
    sub_217F4AFC4();
    v12 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6160, &qword_217F52330);
    LOBYTE(v120) = 2;
    sub_217EF8694(&qword_27CBF63F0, &qword_27CBF6160, &qword_217F52330);
    sub_217F4AFC4();
    v96 = v108;
    v97 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6170, &qword_217F52338);
    LOBYTE(v120) = 3;
    sub_217EF8694(&qword_27CBF63F8, &qword_27CBF6170, &qword_217F52338);
    sub_217F4AFC4();
    v13 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6180, &qword_217F52340);
    LOBYTE(v120) = 4;
    sub_217EF8694(&qword_27CBF6400, &qword_27CBF6180, &qword_217F52340);
    sub_217F4AFC4();
    v14 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6190, &qword_217F52348);
    LOBYTE(v120) = 5;
    sub_217EF8694(&qword_27CBF6408, &qword_27CBF6190, &qword_217F52348);
    sub_217F4AFC4();
    v95 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61A0, &qword_217F52350);
    LOBYTE(v120) = 6;
    sub_217EF8694(&qword_27CBF6410, &qword_27CBF61A0, &qword_217F52350);
    sub_217F4AFC4();
    v15 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61B0, &qword_217F52358);
    LOBYTE(v120) = 7;
    sub_217EF8694(&qword_27CBF6418, &qword_27CBF61B0, &qword_217F52358);
    sub_217F4AFC4();
    v16 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61C0, &qword_217F52360);
    LOBYTE(v120) = 8;
    sub_217EF8694(&qword_27CBF6420, &qword_27CBF61C0, &qword_217F52360);
    sub_217F4AFC4();
    v18 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61D0, &qword_217F52368);
    LOBYTE(v120) = 9;
    sub_217EF8694(&qword_27CBF6428, &qword_27CBF61D0, &qword_217F52368);
    sub_217F4AFC4();
    v19 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61E0, &qword_217F52370);
    LOBYTE(v120) = 10;
    sub_217EF8694(&qword_27CBF6430, &qword_27CBF61E0, &qword_217F52370);
    sub_217F4AFC4();
    v94 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF61F0, &qword_217F52378);
    LOBYTE(v120) = 11;
    sub_217EF8694(&qword_27CBF6438, &qword_27CBF61F0, &qword_217F52378);
    sub_217F4AFC4();
    v93 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6200, &qword_217F52380);
    LOBYTE(v120) = 12;
    sub_217EF8694(&qword_27CBF6440, &qword_27CBF6200, &qword_217F52380);
    sub_217F4AFC4();
    v20 = v107;
    LOBYTE(v120) = 13;
    sub_217EF7688();
    sub_217F4AFC4();
    v90 = *(&v107 + 1);
    v91 = v107;
    v92 = v108;
    v88 = v109;
    v89 = *(&v108 + 1);
    v87 = *(&v109 + 1);
    v119 = 14;
    v86 = sub_217EF76DC();
    sub_217F4AFC4();
    v142 = v124;
    v143[0] = *v125;
    *(v143 + 15) = *&v125[15];
    v138 = v120;
    v139 = v121;
    v141 = v123;
    v140 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6220, &qword_217F52388);
    LOBYTE(v99) = 15;
    sub_217EF8694(&qword_27CBF6458, &qword_27CBF6220, &qword_217F52388);
    sub_217F4AFC4();
    v85 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6230, &qword_217F52390);
    LOBYTE(v99) = 16;
    sub_217EF8694(&qword_27CBF6460, &qword_27CBF6230, &qword_217F52390);
    sub_217F4AFC4();
    v83 = v107;
    LOBYTE(v99) = 17;
    *&v84 = sub_217EF7730();
    sub_217F4AFC4();
    v81 = v108;
    v82 = v107;
    v79 = *(&v109 + 1);
    v80 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6248, &qword_217F52398);
    LOBYTE(v99) = 18;
    sub_217EF8694(&qword_27CBF6470, &qword_27CBF6248, &qword_217F52398);
    sub_217F4AFC4();
    v78 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6258, &qword_217F523A0);
    LOBYTE(v99) = 19;
    sub_217EF8694(&qword_27CBF6478, &qword_27CBF6258, &qword_217F523A0);
    sub_217F4AFC4();
    v77 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6268, &qword_217F523A8);
    LOBYTE(v99) = 20;
    sub_217EF8694(&qword_27CBF6480, &qword_27CBF6268, &qword_217F523A8);
    sub_217F4AFC4();
    v76 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6278, &qword_217F523B0);
    LOBYTE(v99) = 21;
    sub_217EF8694(&qword_27CBF6488, &qword_27CBF6278, &qword_217F523B0);
    sub_217F4AFC4();
    v75 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6288, &qword_217F523B8);
    LOBYTE(v99) = 22;
    sub_217EF8694(&qword_27CBF6490, &qword_27CBF6288, &qword_217F523B8);
    sub_217F4AFC4();
    v74 = v107;
    v106 = 23;
    sub_217EF7784();
    sub_217F4AFC4();
    v134 = v115;
    v135 = v116;
    v136 = v117;
    v137 = v118;
    v130 = v111;
    v131 = v112;
    v132 = v113;
    v133 = v114;
    v126 = v107;
    v127 = v108;
    v128 = v109;
    v129 = v110;
    v105 = 24;
    sub_217F4AFC4();
    v72 = v100;
    v73 = v99;
    v70 = *(&v101 + 1);
    v71 = v101;
    v105 = 25;
    sub_217EF77D8();
    sub_217F4AFC4();
    v68 = v100;
    v69 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62A8, &qword_217F523C0);
    v105 = 26;
    sub_217EF8694(&qword_27CBF64A8, &qword_27CBF62A8, &qword_217F523C0);
    sub_217F4AFC4();
    v67 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62B8, &qword_217F523C8);
    v105 = 27;
    sub_217EF8694(&qword_27CBF64B0, &qword_27CBF62B8, &qword_217F523C8);
    sub_217F4AFC4();
    v66 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62C8, &qword_217F523D0);
    v105 = 28;
    sub_217EF8694(&qword_27CBF64B8, &qword_27CBF62C8, &qword_217F523D0);
    sub_217F4AFC4();
    v65 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62D8, &qword_217F523D8);
    v105 = 29;
    sub_217EF8694(&qword_27CBF64C0, &qword_27CBF62D8, &qword_217F523D8);
    sub_217F4AFC4();
    v64 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62E8, &qword_217F523E0);
    v105 = 30;
    sub_217EF8694(&qword_27CBF64C8, &qword_27CBF62E8, &qword_217F523E0);
    sub_217F4AFC4();
    v63 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF62F8, &qword_217F523E8);
    v105 = 31;
    sub_217EF8694(&qword_27CBF64D0, &qword_27CBF62F8, &qword_217F523E8);
    sub_217F4AFC4();
    v62 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6308, &qword_217F523F0);
    v105 = 32;
    sub_217EF8694(&qword_27CBF64D8, &qword_27CBF6308, &qword_217F523F0);
    sub_217F4AFC4();
    v61 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6318, &qword_217F523F8);
    v105 = 33;
    sub_217EF8694(&qword_27CBF64E0, &qword_27CBF6318, &qword_217F523F8);
    sub_217F4AFC4();
    v60 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6328, &qword_217F52400);
    v105 = 34;
    sub_217EF8694(&qword_27CBF64E8, &qword_27CBF6328, &qword_217F52400);
    sub_217F4AFC4();
    v59 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6338, &qword_217F52408);
    v105 = 35;
    sub_217EF8694(&qword_27CBF64F0, &qword_27CBF6338, &qword_217F52408);
    sub_217F4AFC4();
    v58 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6348, &qword_217F52410);
    v105 = 36;
    sub_217EF8694(&qword_27CBF64F8, &qword_27CBF6348, &qword_217F52410);
    sub_217F4AFC4();
    v57 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6358, &qword_217F52418);
    v105 = 37;
    sub_217EF8694(&qword_27CBF6500, &qword_27CBF6358, &qword_217F52418);
    sub_217F4AFC4();
    v56 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6368, &qword_217F52420);
    v105 = 38;
    sub_217EF8694(&qword_27CBF6508, &qword_27CBF6368, &qword_217F52420);
    sub_217F4AFC4();
    v55 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6378, &qword_217F52428);
    v105 = 39;
    sub_217EF8694(&qword_27CBF6510, &qword_27CBF6378, &qword_217F52428);
    sub_217F4AFC4();
    v54 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6388, &qword_217F52430);
    v105 = 40;
    sub_217EF8694(&qword_27CBF6518, &qword_27CBF6388, &qword_217F52430);
    sub_217F4AFC4();
    v53 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6398, &qword_217F52438);
    v105 = 41;
    sub_217EF8694(&qword_27CBF6520, &qword_27CBF6398, &qword_217F52438);
    sub_217F4AFC4();
    v52 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63A8, &qword_217F52440);
    v105 = 42;
    sub_217EF8694(&qword_27CBF6528, &qword_27CBF63A8, &qword_217F52440);
    sub_217F4AFC4();
    v51 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63B8, &qword_217F52448);
    v105 = 43;
    sub_217EF8694(&qword_27CBF6530, &qword_27CBF63B8, &qword_217F52448);
    sub_217F4AFC4();
    v49 = v100;
    v50 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF63C8, &qword_217F52450);
    v105 = 44;
    sub_217EF8694(&qword_27CBF6538, &qword_27CBF63C8, &qword_217F52450);
    sub_217F4AFC4();
    v48 = v99;
    v105 = 45;
    sub_217F4AFC4();
    v84 = v100;
    v45 = v99;
    v46 = *(&v101 + 1);
    v47 = v101;
    v105 = 46;
    sub_217F4AFC4();
    (*(v98 + 8))(v9, v144);
    *a2 = v11;
    *(a2 + 8) = v12;
    v21 = v96;
    *(a2 + 16) = v97;
    *(a2 + 32) = v21;
    *(a2 + 48) = v13;
    *(a2 + 56) = v14;
    *(a2 + 72) = v15;
    *(a2 + 80) = v16;
    *(a2 + 88) = v18;
    *(a2 + 96) = v19;
    v22 = v93;
    *(a2 + 104) = v94;
    *(a2 + 112) = v22;
    v23 = v90;
    *(a2 + 128) = v91;
    *(a2 + 136) = v23;
    v24 = v88;
    *(a2 + 152) = v89;
    *(a2 + 160) = v24;
    *(a2 + 168) = v87;
    v25 = v83;
    *(a2 + 280) = v85;
    *(a2 + 288) = v25;
    v26 = v81;
    *(a2 + 296) = v82;
    *(a2 + 312) = v26;
    v27 = v79;
    *(a2 + 328) = v80;
    *(a2 + 336) = v27;
    v28 = v77;
    *(a2 + 344) = v78;
    *(a2 + 352) = v28;
    v29 = v143[0];
    *(a2 + 240) = v142;
    *(a2 + 256) = v29;
    v30 = v139;
    *(a2 + 176) = v138;
    *(a2 + 192) = v30;
    v31 = v141;
    *(a2 + 208) = v140;
    *(a2 + 224) = v31;
    *(a2 + 64) = v95;
    *(a2 + 120) = v20;
    *(a2 + 144) = v92;
    *(a2 + 271) = *(v143 + 15);
    *(a2 + 360) = v76;
    *(a2 + 368) = v75;
    *(a2 + 376) = v74;
    v32 = v129;
    *(a2 + 416) = v128;
    *(a2 + 432) = v32;
    v33 = v127;
    *(a2 + 384) = v126;
    *(a2 + 400) = v33;
    v34 = v133;
    *(a2 + 480) = v132;
    *(a2 + 496) = v34;
    v35 = v131;
    *(a2 + 448) = v130;
    *(a2 + 464) = v35;
    *(a2 + 560) = v137;
    v36 = v136;
    v37 = v134;
    *(a2 + 528) = v135;
    *(a2 + 544) = v36;
    *(a2 + 512) = v37;
    v38 = v72;
    *(a2 + 568) = v73;
    *(a2 + 584) = v38;
    *&v35 = v70;
    *(a2 + 600) = v71;
    *(a2 + 608) = v35;
    v39 = v68;
    *(a2 + 616) = v69;
    *(a2 + 632) = v39;
    *&v35 = v66;
    *(a2 + 648) = v67;
    *(a2 + 656) = v35;
    *&v35 = v64;
    *(a2 + 664) = v65;
    *(a2 + 672) = v35;
    *(a2 + 680) = v63;
    *&v35 = v61;
    *(a2 + 688) = v62;
    *(a2 + 696) = v35;
    *&v35 = v59;
    *(a2 + 704) = v60;
    *(a2 + 712) = v35;
    *&v35 = v57;
    *(a2 + 720) = v58;
    *(a2 + 728) = v35;
    *&v35 = v55;
    *(a2 + 736) = v56;
    *(a2 + 744) = v35;
    *&v35 = v53;
    *(a2 + 752) = v54;
    *(a2 + 760) = v35;
    *&v35 = v51;
    *(a2 + 768) = v52;
    *(a2 + 776) = v35;
    v40 = v49;
    *(a2 + 784) = v50;
    *(a2 + 800) = v40;
    *(a2 + 816) = v48;
    v41 = v84;
    *(a2 + 824) = v45;
    *(a2 + 840) = v41;
    *&v41 = v46;
    *(a2 + 856) = v47;
    *(a2 + 864) = v41;
    v42 = *v104;
    *(a2 + 936) = v103;
    *(a2 + 952) = v42;
    *(a2 + 967) = *&v104[15];
    v43 = v100;
    *(a2 + 872) = v99;
    *(a2 + 888) = v43;
    v44 = v102;
    *(a2 + 904) = v101;
    *(a2 + 920) = v44;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217EE5A44()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_217EE5AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F018EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EE5AE4(uint64_t a1)
{
  v2 = sub_217EF782C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE5B20(uint64_t a1)
{
  v2 = sub_217EF782C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE5B5C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6540, &qword_217F52460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16[-v8];
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF782C();
  sub_217F4B294();
  v16[15] = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v16[14] = 1;
    sub_217F4B0A4();
    v16[13] = 2;
    sub_217F4B0A4();
    v16[12] = 3;
    sub_217F4B0A4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EE5D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6550, &qword_217F52468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF782C();
  sub_217F4B274();
  if (!v2)
  {
    v25 = 0;
    sub_217F4AFA4();
    v13 = v12;
    v24 = 1;
    sub_217F4AFA4();
    v15 = v14;
    v23 = 2;
    sub_217F4AFA4();
    v18 = v17;
    v22 = 3;
    sub_217F4AFA4();
    v20 = v19;
    (*(v6 + 8))(v10, v5);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE5F60(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE5F8C;
}

void (*sub_217EE5FE0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE600C;
}

uint64_t (*sub_217EE6078(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_217EE60A0;
}

void (*sub_217EE60F4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EE6120;
}

void (*sub_217EE6178(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE61A4;
}

void (*sub_217EE61FC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE6228;
}

unint64_t sub_217EE6254()
{
  v1 = *v0;
  v2 = 0x65706D614478616DLL;
  v3 = 0x65726F63536E696DLL;
  v4 = 0x70784565726F6373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x746E65764578616DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EE6340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F01A5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EE6374(uint64_t a1)
{
  v2 = sub_217EF7880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE63B0(uint64_t a1)
{
  v2 = sub_217EF7880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE63EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6558, &qword_217F52470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v14 = v1[3];
  v13 = v1[4];
  v15 = v1[5];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7880();
  sub_217F4B294();
  v19 = v11;
  HIBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6568, &qword_217F52478);
  sub_217EF8694(&qword_27CBF6570, &qword_27CBF6568, &qword_217F52478);
  sub_217F4B0C4();
  if (!v2)
  {
    v19 = v10;
    HIBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6578, &qword_217F52480);
    sub_217EF8694(&qword_27CBF6580, &qword_27CBF6578, &qword_217F52480);
    sub_217F4B0C4();
    v19 = v12;
    HIBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6588, &qword_217F52488);
    sub_217EF8694(&qword_27CBF6590, &qword_27CBF6588, &qword_217F52488);
    sub_217F4B0C4();
    v19 = v14;
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6598, &qword_217F52490);
    sub_217EF8694(&qword_27CBF65A0, &qword_27CBF6598, &qword_217F52490);
    sub_217F4B0C4();
    v19 = v13;
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65A8, &qword_217F52498);
    sub_217EF8694(&qword_27CBF65B0, &qword_27CBF65A8, &qword_217F52498);
    sub_217F4B0C4();
    v19 = v15;
    HIBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65B8, &qword_217F524A0);
    sub_217EF8694(&qword_27CBF65C0, &qword_27CBF65B8, &qword_217F524A0);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EE6814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65C8, &qword_217F524A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7880();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6568, &qword_217F52478);
    v19 = 0;
    sub_217EF8694(&qword_27CBF65D0, &qword_27CBF6568, &qword_217F52478);
    sub_217F4AFC4();
    v12 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6578, &qword_217F52480);
    v19 = 1;
    sub_217EF8694(&qword_27CBF65D8, &qword_27CBF6578, &qword_217F52480);
    sub_217F4AFC4();
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6588, &qword_217F52488);
    v19 = 2;
    sub_217EF8694(&qword_27CBF65E0, &qword_27CBF6588, &qword_217F52488);
    sub_217F4AFC4();
    v18 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6598, &qword_217F52490);
    v19 = 3;
    sub_217EF8694(&qword_27CBF65E8, &qword_27CBF6598, &qword_217F52490);
    sub_217F4AFC4();
    v14 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65A8, &qword_217F52498);
    v19 = 4;
    sub_217EF8694(&qword_27CBF65F0, &qword_27CBF65A8, &qword_217F52498);
    sub_217F4AFC4();
    v16 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF65B8, &qword_217F524A0);
    v19 = 5;
    sub_217EF8694(&qword_27CBF65F8, &qword_27CBF65B8, &qword_217F524A0);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v17 = v20;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE6CE4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE6D10;
}

_BYTE *(*sub_217EE6D50(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_217EE6D7C;
}

void (*sub_217EE6DC0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE6DEC;
}

_BYTE *(*sub_217EE6E30(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_217EE6E5C;
}

void (*sub_217EE6EA0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE6ECC;
}

void (*sub_217EE6F30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE6F5C;
}

void (*sub_217EE6FC8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EE6FF4;
}

void (*sub_217EE7054(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EE7080;
}

void (*sub_217EE70E0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 64);
  return sub_217EE710C;
}

uint64_t (*sub_217EE716C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 72);
  return sub_217EE7198;
}

uint64_t (*sub_217EE71F8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE7224;
}

void (*sub_217EE728C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE72B8;
}

_BYTE *(*sub_217EE72FC(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 96);
  return sub_217EE7328;
}

_BYTE *(*sub_217EE7350(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 97);
  return sub_217EE737C;
}

_BYTE *(*sub_217EE73A4(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 98);
  return sub_217EE73D0;
}

unint64_t sub_217EE73E0(char a1)
{
  result = 0x6E6F6974756C6964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x65576C61626F6C67;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 13:
      v3 = 9;
      goto LABEL_12;
    case 8:
      result = 0x46676E6964646170;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6269726373627573;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    case 14:
      v3 = 11;
LABEL_12:
      result = v3 | 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_217EE75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F01C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EE7610(uint64_t a1)
{
  v2 = sub_217EF78D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE764C(uint64_t a1)
{
  v2 = sub_217EF78D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE7688(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6600, &qword_217F524B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = *v1;
  v33 = *(v1 + 8);
  v32 = v1[2];
  v31 = *(v1 + 24);
  v11 = v1[5];
  v30 = v1[4];
  v13 = v1[6];
  v12 = v1[7];
  v15 = v1[8];
  v14 = v1[9];
  v17 = v1[10];
  v16 = v1[11];
  v18 = *(v1 + 96);
  v28 = *(v1 + 97);
  v29 = v18;
  v19 = *(v1 + 98);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF78D4();
  sub_217F4B294();
  v35 = v10;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6610, &qword_217F524B8);
  sub_217EF8694(&qword_27CBF6618, &qword_27CBF6610, &qword_217F524B8);
  v21 = v4;
  sub_217F4B0C4();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v23 = v32;
  v24 = v31;
  v26 = v19;
  v27 = v5;
  LOBYTE(v35) = v33;
  v34 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6620, &qword_217F524C0);
  sub_217EF8694(&qword_27CBF6628, &qword_27CBF6620, &qword_217F524C0);
  sub_217F4B0C4();
  v35 = v23;
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6630, &qword_217F524C8);
  sub_217EF8694(&qword_27CBF6638, &qword_27CBF6630, &qword_217F524C8);
  sub_217F4B0C4();
  LOBYTE(v35) = v24;
  v34 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6640, &qword_217F524D0);
  sub_217EF8694(&qword_27CBF6648, &qword_27CBF6640, &qword_217F524D0);
  sub_217F4B0C4();
  v35 = v30;
  v34 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6650, &qword_217F524D8);
  sub_217EF8694(&qword_27CBF6658, &qword_27CBF6650, &qword_217F524D8);
  sub_217F4B0C4();
  v35 = v11;
  v34 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6660, &qword_217F524E0);
  sub_217EF8694(&qword_27CBF6668, &qword_27CBF6660, &qword_217F524E0);
  sub_217F4B0C4();
  v35 = v13;
  v34 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6670, &qword_217F524E8);
  sub_217EF8694(&qword_27CBF6678, &qword_27CBF6670, &qword_217F524E8);
  sub_217F4B0C4();
  v35 = v12;
  v34 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6680, &qword_217F524F0);
  sub_217EF8694(&qword_27CBF6688, &qword_27CBF6680, &qword_217F524F0);
  sub_217F4B0C4();
  v35 = v15;
  v34 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6690, &qword_217F524F8);
  sub_217EF8694(&qword_27CBF6698, &qword_27CBF6690, &qword_217F524F8);
  sub_217F4B0C4();
  v35 = v14;
  v34 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66A0, &qword_217F52500);
  sub_217EF8694(&qword_27CBF66A8, &qword_27CBF66A0, &qword_217F52500);
  sub_217F4B0C4();
  v35 = v17;
  v34 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66B0, &qword_217F52508);
  sub_217EF8694(&qword_27CBF66B8, &qword_27CBF66B0, &qword_217F52508);
  sub_217F4B0C4();
  v35 = v16;
  v34 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66C0, &qword_217F52510);
  sub_217EF8694(&qword_27CBF66C8, &qword_27CBF66C0, &qword_217F52510);
  sub_217F4B0C4();
  LOBYTE(v35) = v29;
  v34 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66D0, &qword_217F52518);
  sub_217EF8694(&qword_27CBF66D8, &qword_27CBF66D0, &qword_217F52518);
  sub_217F4B0C4();
  LOBYTE(v35) = v28;
  v34 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66E0, &qword_217F52520);
  sub_217EF8694(&qword_27CBF66E8, &qword_27CBF66E0, &qword_217F52520);
  sub_217F4B0C4();
  LOBYTE(v35) = v26;
  v34 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66F0, &qword_217F52528);
  sub_217EF8694(&qword_27CBF66F8, &qword_27CBF66F0, &qword_217F52528);
  sub_217F4B0C4();
  return (*(v27 + 8))(v9, v21);
}

uint64_t sub_217EE7FCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6700, &qword_217F52530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF78D4();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6610, &qword_217F524B8);
    v32 = 0;
    sub_217EF8694(&qword_27CBF6708, &qword_27CBF6610, &qword_217F524B8);
    sub_217F4AFC4();
    v12 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6620, &qword_217F524C0);
    v32 = 1;
    sub_217EF8694(&qword_27CBF6710, &qword_27CBF6620, &qword_217F524C0);
    sub_217F4AFC4();
    v31 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6630, &qword_217F524C8);
    v32 = 2;
    sub_217EF8694(&qword_27CBF6718, &qword_27CBF6630, &qword_217F524C8);
    sub_217F4AFC4();
    v13 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6640, &qword_217F524D0);
    v32 = 3;
    sub_217EF8694(&qword_27CBF6720, &qword_27CBF6640, &qword_217F524D0);
    sub_217F4AFC4();
    v30 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6650, &qword_217F524D8);
    v32 = 4;
    sub_217EF8694(&qword_27CBF6728, &qword_27CBF6650, &qword_217F524D8);
    sub_217F4AFC4();
    v14 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6660, &qword_217F524E0);
    v32 = 5;
    sub_217EF8694(&qword_27CBF6730, &qword_27CBF6660, &qword_217F524E0);
    sub_217F4AFC4();
    v15 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6670, &qword_217F524E8);
    v32 = 6;
    sub_217EF8694(&qword_27CBF6738, &qword_27CBF6670, &qword_217F524E8);
    sub_217F4AFC4();
    v16 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6680, &qword_217F524F0);
    v32 = 7;
    sub_217EF8694(&qword_27CBF6740, &qword_27CBF6680, &qword_217F524F0);
    sub_217F4AFC4();
    v17 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6690, &qword_217F524F8);
    v32 = 8;
    sub_217EF8694(&qword_27CBF6748, &qword_27CBF6690, &qword_217F524F8);
    sub_217F4AFC4();
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66A0, &qword_217F52500);
    v32 = 9;
    sub_217EF8694(&qword_27CBF6750, &qword_27CBF66A0, &qword_217F52500);
    sub_217F4AFC4();
    v19 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66B0, &qword_217F52508);
    v32 = 10;
    sub_217EF8694(&qword_27CBF6758, &qword_27CBF66B0, &qword_217F52508);
    sub_217F4AFC4();
    v29 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66C0, &qword_217F52510);
    v32 = 11;
    sub_217EF8694(&qword_27CBF6760, &qword_27CBF66C0, &qword_217F52510);
    sub_217F4AFC4();
    v28 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66D0, &qword_217F52518);
    v32 = 12;
    sub_217EF8694(&qword_27CBF6768, &qword_27CBF66D0, &qword_217F52518);
    sub_217F4AFC4();
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66E0, &qword_217F52520);
    v32 = 13;
    sub_217EF8694(&qword_27CBF6770, &qword_27CBF66E0, &qword_217F52520);
    sub_217F4AFC4();
    v26 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF66F0, &qword_217F52528);
    v32 = 14;
    sub_217EF8694(&qword_27CBF6778, &qword_27CBF66F0, &qword_217F52528);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v21 = v33;
    *a2 = v12;
    v22 = v30;
    *(a2 + 8) = v31;
    *(a2 + 16) = v13;
    *(a2 + 24) = v22;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
    *(a2 + 56) = v17;
    *(a2 + 64) = v18;
    *(a2 + 72) = v19;
    v23 = v28;
    *(a2 + 80) = v29;
    *(a2 + 88) = v23;
    v24 = v26;
    *(a2 + 96) = v27;
    *(a2 + 97) = v24;
    *(a2 + 98) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EE8958(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EE8984;
}

void (*sub_217EE89E4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE8A10;
}

void (*sub_217EE8A74(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE8AA0;
}

void (*sub_217EE8B00(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EE8B2C;
}

void (*sub_217EE8B8C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EE8BB8;
}

void (*sub_217EE8C1C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_217EE8C48;
}

unint64_t sub_217EE8C74()
{
  v1 = *v0;
  v2 = 0x6C754D6F69647561;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EE8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EE8D80(uint64_t a1)
{
  v2 = sub_217EF7928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EE8DBC(uint64_t a1)
{
  v2 = sub_217EF7928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EE8DF8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6780, &qword_217F52538);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v15 = v1[4];
  v14 = v1[5];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7928();
  sub_217F4B294();
  v19 = v11;
  HIBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6790, &qword_217F52540);
  sub_217EF8694(&qword_27CBF6798, &qword_27CBF6790, &qword_217F52540);
  sub_217F4B0C4();
  if (!v2)
  {
    v19 = v10;
    HIBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67A0, &qword_217F52548);
    sub_217EF8694(&qword_27CBF67A8, &qword_27CBF67A0, &qword_217F52548);
    sub_217F4B0C4();
    v19 = v13;
    HIBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67B0, &qword_217F52550);
    sub_217EF8694(&qword_27CBF67B8, &qword_27CBF67B0, &qword_217F52550);
    sub_217F4B0C4();
    v19 = v12;
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67C0, &qword_217F52558);
    sub_217EF8694(&qword_27CBF67C8, &qword_27CBF67C0, &qword_217F52558);
    sub_217F4B0C4();
    v19 = v15;
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67D0, &qword_217F52560);
    sub_217EF8694(&qword_27CBF67D8, &qword_27CBF67D0, &qword_217F52560);
    sub_217F4B0C4();
    v19 = v14;
    HIBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67E0, &qword_217F52568);
    sub_217EF8694(&qword_27CBF67E8, &qword_27CBF67E0, &qword_217F52568);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EE9214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67F0, &qword_217F52570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7928();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6790, &qword_217F52540);
    HIBYTE(v19) = 0;
    sub_217EF8694(&qword_27CBF67F8, &qword_27CBF6790, &qword_217F52540);
    sub_217F4AFC4();
    v12 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67A0, &qword_217F52548);
    HIBYTE(v19) = 1;
    sub_217EF8694(&qword_27CBF6800, &qword_27CBF67A0, &qword_217F52548);
    sub_217F4AFC4();
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67B0, &qword_217F52550);
    HIBYTE(v19) = 2;
    sub_217EF8694(&qword_27CBF6808, &qword_27CBF67B0, &qword_217F52550);
    sub_217F4AFC4();
    v14 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67C0, &qword_217F52558);
    HIBYTE(v19) = 3;
    sub_217EF8694(&qword_27CBF6810, &qword_27CBF67C0, &qword_217F52558);
    sub_217F4AFC4();
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67D0, &qword_217F52560);
    HIBYTE(v19) = 4;
    sub_217EF8694(&qword_27CBF6818, &qword_27CBF67D0, &qword_217F52560);
    sub_217F4AFC4();
    v17 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF67E0, &qword_217F52568);
    HIBYTE(v19) = 5;
    sub_217EF8694(&qword_27CBF6820, &qword_27CBF67E0, &qword_217F52568);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v18 = v20;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v17;
    a2[5] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217EE96D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_217EE9700;
}

void (*sub_217EE9744(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EE9770;
}

void (*sub_217EE97D0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EE97FC;
}

double sub_217EE9828@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

_BYTE *(*sub_217EE9854(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return sub_217EE9880;
}

double sub_217EE9890@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = result;
  return result;
}

void (*sub_217EE98D8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_217EE9904;
}

void (*sub_217EE9964(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 88);
  return sub_217EE9990;
}

void (*sub_217EE99F0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 96);
  return sub_217EE9A1C;
}

void (*sub_217EE9A7C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 104);
  return sub_217EE9AA8;
}

_BYTE *(*sub_217EE9AEC(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 112);
  return sub_217EE9B18;
}

void (*sub_217EE9B60(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 120);
  return sub_217EE9B8C;
}

void (*sub_217EE9BEC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 128);
  return sub_217EE9C18;
}

void (*sub_217EE9C78(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 136);
  return sub_217EE9CA4;
}

void (*sub_217EE9D20(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 144);
  return sub_217EE9D4C;
}

void (*sub_217EE9DAC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 152);
  return sub_217EE9DD8;
}

_BYTE *(*sub_217EE9E1C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 160);
  return sub_217EE9E48;
}

void (*sub_217EE9E8C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 168);
  return sub_217EE9EB8;
}

void (*sub_217EE9F18(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 176);
  return sub_217EE9F44;
}

unint64_t sub_217EE9F74(char a1)
{
  result = 0x46746C7561666564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0xD000000000000017;
    case 3:
    case 5:
      return 0xD00000000000001ELL;
    case 4:
    case 18:
      v3 = 9;
      goto LABEL_16;
    case 6:
      return 0x6F6C466863746566;
    case 7:
    case 17:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000026;
    case 9:
      return 0x696C7069746C756DLL;
    case 10:
      return 0xD00000000000002ALL;
    case 11:
      v3 = 10;
      goto LABEL_16;
    case 12:
      v3 = 5;
      goto LABEL_16;
    case 13:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_217EEA1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EEA1EC(uint64_t a1)
{
  v2 = sub_217EF797C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEA228(uint64_t a1)
{
  v2 = sub_217EF797C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEA264(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6828, &qword_217F52578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v50 = *(v1 + 1);
  v11 = *(v1 + 4);
  v47 = *(v1 + 3);
  v48 = v10;
  v45 = *(v1 + 5);
  v46 = v11;
  v55 = v1[48];
  v12 = *(v1 + 7);
  v43 = *(v1 + 8);
  v44 = v12;
  v13 = *(v1 + 10);
  v42 = *(v1 + 9);
  v41 = v13;
  v14 = *(v1 + 12);
  v40 = *(v1 + 11);
  v39 = v14;
  v15 = *(v1 + 13);
  v49 = v1[112];
  v16 = *(v1 + 15);
  v17 = *(v1 + 16);
  v19 = *(v1 + 17);
  v18 = *(v1 + 18);
  v20 = *(v1 + 19);
  v21 = v1[160];
  v23 = *(v1 + 21);
  v22 = *(v1 + 22);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF797C();
  sub_217F4B294();
  LOBYTE(v52) = v9;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6838, &qword_217F52580);
  sub_217EF8694(&qword_27CBF6840, &qword_27CBF6838, &qword_217F52580);
  v25 = v51;
  sub_217F4B0C4();
  if (v25)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v26 = v55;
  v51 = v15;
  v27 = v49;
  v38 = v16;
  v37 = v17;
  v36 = v19;
  v35 = v18;
  v34 = v20;
  v33 = v21;
  v32 = v23;
  v31 = v22;
  v52 = v50;
  v56 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6848, &qword_217F52588);
  sub_217EF8694(&qword_27CBF6850, &qword_27CBF6848, &qword_217F52588);
  sub_217F4B0C4();
  v52 = v48;
  v56 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6858, &qword_217F52590);
  sub_217EF8694(&qword_27CBF6860, &qword_27CBF6858, &qword_217F52590);
  v50 = v3;
  sub_217F4B0C4();
  v52 = v47;
  v53 = v46;
  v54 = v45;
  v56 = 3;
  sub_217EF79D0();
  sub_217F4B0C4();
  LOBYTE(v52) = v26;
  v56 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6870, &qword_217F52598);
  sub_217EF8694(&qword_27CBF6878, &qword_27CBF6870, &qword_217F52598);
  sub_217F4B0C4();
  v52 = v44;
  v53 = v43;
  v54 = v42;
  v56 = 5;
  sub_217F4B0C4();
  v52 = v41;
  v56 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6880, &qword_217F525A0);
  sub_217EF8694(&qword_27CBF6888, &qword_27CBF6880, &qword_217F525A0);
  sub_217F4B0C4();
  v52 = v40;
  v56 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6890, &qword_217F525A8);
  sub_217EF8694(&qword_27CBF6898, &qword_27CBF6890, &qword_217F525A8);
  sub_217F4B0C4();
  v52 = v39;
  v56 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68A0, &qword_217F525B0);
  sub_217EF8694(&qword_27CBF68A8, &qword_27CBF68A0, &qword_217F525B0);
  sub_217F4B0C4();
  v52 = v51;
  v56 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68B0, &qword_217F525B8);
  sub_217EF8694(&qword_27CBF68B8, &qword_27CBF68B0, &qword_217F525B8);
  sub_217F4B0C4();
  LOBYTE(v52) = v27;
  v56 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68C0, &qword_217F525C0);
  sub_217EF8694(&qword_27CBF68C8, &qword_27CBF68C0, &qword_217F525C0);
  sub_217F4B0C4();
  v52 = v38;
  v56 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68D0, &qword_217F525C8);
  sub_217EF8694(&qword_27CBF68D8, &qword_27CBF68D0, &qword_217F525C8);
  sub_217F4B0C4();
  v52 = v37;
  v56 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68E0, &qword_217F525D0);
  sub_217EF8694(&qword_27CBF68E8, &qword_27CBF68E0, &qword_217F525D0);
  sub_217F4B0C4();
  v52 = v36;
  v56 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68F0, &qword_217F525D8);
  sub_217EF8694(&qword_27CBF68F8, &qword_27CBF68F0, &qword_217F525D8);
  sub_217F4B0C4();
  v52 = v35;
  v56 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6900, &qword_217F525E0);
  sub_217EF8694(&qword_27CBF6908, &qword_27CBF6900, &qword_217F525E0);
  sub_217F4B0C4();
  v52 = v34;
  v56 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6910, &qword_217F525E8);
  sub_217EF8694(&qword_27CBF6918, &qword_27CBF6910, &qword_217F525E8);
  sub_217F4B0C4();
  LOBYTE(v52) = v33;
  v56 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6920, &qword_217F525F0);
  sub_217EF8694(&qword_27CBF6928, &qword_27CBF6920, &qword_217F525F0);
  sub_217F4B0C4();
  v52 = v32;
  v56 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6930, &qword_217F525F8);
  sub_217EF8694(&qword_27CBF6938, &qword_27CBF6930, &qword_217F525F8);
  sub_217F4B0C4();
  v52 = v31;
  v56 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6940, &qword_217F52600);
  sub_217EF8694(&qword_27CBF6948, &qword_27CBF6940, &qword_217F52600);
  v28 = v50;
  sub_217F4B0C4();
  return (*(v4 + 8))(v8, v28);
}

uint64_t sub_217EEADAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6950, &qword_217F52608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF797C();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6838, &qword_217F52580);
    v48 = 0;
    sub_217EF8694(&qword_27CBF6958, &qword_27CBF6838, &qword_217F52580);
    sub_217F4AFC4();
    v43 = a2;
    v12 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6848, &qword_217F52588);
    v48 = 1;
    sub_217EF8694(&qword_27CBF6960, &qword_27CBF6848, &qword_217F52588);
    sub_217F4AFC4();
    v47 = v12;
    v13 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6858, &qword_217F52590);
    v48 = 2;
    sub_217EF8694(&qword_27CBF6968, &qword_27CBF6858, &qword_217F52590);
    sub_217F4AFC4();
    v14 = v44;
    v48 = 3;
    sub_217EF7A24();
    sub_217F4AFC4();
    v15 = v44;
    v16 = v45;
    v17 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6870, &qword_217F52598);
    v48 = 4;
    sub_217EF8694(&qword_27CBF6978, &qword_27CBF6870, &qword_217F52598);
    sub_217F4AFC4();
    LOBYTE(v12) = v44;
    v48 = 5;
    sub_217F4AFC4();
    v18 = v44;
    v19 = v45;
    v20 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6880, &qword_217F525A0);
    v48 = 6;
    sub_217EF8694(&qword_27CBF6980, &qword_27CBF6880, &qword_217F525A0);
    sub_217F4AFC4();
    v42 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6890, &qword_217F525A8);
    v48 = 7;
    sub_217EF8694(&qword_27CBF6988, &qword_27CBF6890, &qword_217F525A8);
    sub_217F4AFC4();
    v41 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68A0, &qword_217F525B0);
    v48 = 8;
    sub_217EF8694(&qword_27CBF6990, &qword_27CBF68A0, &qword_217F525B0);
    sub_217F4AFC4();
    v40 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68B0, &qword_217F525B8);
    v48 = 9;
    sub_217EF8694(&qword_27CBF6998, &qword_27CBF68B0, &qword_217F525B8);
    sub_217F4AFC4();
    v39 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68C0, &qword_217F525C0);
    v48 = 10;
    sub_217EF8694(&qword_27CBF69A0, &qword_27CBF68C0, &qword_217F525C0);
    sub_217F4AFC4();
    v38 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68D0, &qword_217F525C8);
    v48 = 11;
    sub_217EF8694(&qword_27CBF69A8, &qword_27CBF68D0, &qword_217F525C8);
    sub_217F4AFC4();
    v37 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68E0, &qword_217F525D0);
    v48 = 12;
    sub_217EF8694(&qword_27CBF69B0, &qword_27CBF68E0, &qword_217F525D0);
    sub_217F4AFC4();
    v36 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF68F0, &qword_217F525D8);
    v48 = 13;
    sub_217EF8694(&qword_27CBF69B8, &qword_27CBF68F0, &qword_217F525D8);
    sub_217F4AFC4();
    v35 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6900, &qword_217F525E0);
    v48 = 14;
    sub_217EF8694(&qword_27CBF69C0, &qword_27CBF6900, &qword_217F525E0);
    sub_217F4AFC4();
    v34 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6910, &qword_217F525E8);
    v48 = 15;
    sub_217EF8694(&qword_27CBF69C8, &qword_27CBF6910, &qword_217F525E8);
    sub_217F4AFC4();
    v33 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6920, &qword_217F525F0);
    v48 = 16;
    sub_217EF8694(&qword_27CBF69D0, &qword_27CBF6920, &qword_217F525F0);
    sub_217F4AFC4();
    v32 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6930, &qword_217F525F8);
    v48 = 17;
    sub_217EF8694(&qword_27CBF69D8, &qword_27CBF6930, &qword_217F525F8);
    sub_217F4AFC4();
    v31 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6940, &qword_217F52600);
    v48 = 18;
    sub_217EF8694(&qword_27CBF69E0, &qword_27CBF6940, &qword_217F52600);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v22 = v44;
    v23 = v43;
    *v43 = v47;
    *(v23 + 1) = v13;
    *(v23 + 2) = v14;
    *(v23 + 3) = v15;
    *(v23 + 4) = v16;
    *(v23 + 5) = v17;
    v23[48] = v12;
    *(v23 + 7) = v18;
    *(v23 + 8) = v19;
    v25 = v41;
    v24 = v42;
    *(v23 + 9) = v20;
    *(v23 + 10) = v24;
    v26 = v39;
    v27 = v40;
    *(v23 + 11) = v25;
    *(v23 + 12) = v27;
    *(v23 + 13) = v26;
    v23[112] = v38;
    v28 = v36;
    *(v23 + 15) = v37;
    *(v23 + 16) = v28;
    v29 = v34;
    *(v23 + 17) = v35;
    *(v23 + 18) = v29;
    *(v23 + 19) = v33;
    v23[160] = v32;
    *(v23 + 21) = v31;
    *(v23 + 22) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEB918(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEB944;
}

void (*sub_217EEB9A0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEB9CC;
}

void (*sub_217EEBA30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEBA5C;
}

uint64_t sub_217EEBA88()
{
  v1 = 0x676E6964646170;
  if (*v0 != 1)
  {
    v1 = 0x726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656E6F707865;
  }
}

uint64_t sub_217EEBAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EEBB14(uint64_t a1)
{
  v2 = sub_217EF7A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEBB50(uint64_t a1)
{
  v2 = sub_217EF7A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEBB8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69E8, &qword_217F52610);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7A78();
  sub_217F4B294();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69F8, &qword_217F52618);
  sub_217EF8694(&qword_27CBF6A00, &qword_27CBF69F8, &qword_217F52618);
  sub_217F4B0C4();
  if (!v2)
  {
    v17 = v10;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A08, &qword_217F52620);
    sub_217EF8694(&qword_27CBF6A10, &qword_27CBF6A08, &qword_217F52620);
    sub_217F4B0C4();
    v17 = v12;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A18, &qword_217F52628);
    sub_217EF8694(&qword_27CBF6A20, &qword_27CBF6A18, &qword_217F52628);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EEBE28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A28, &qword_217F52630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7A78();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF69F8, &qword_217F52618);
    v17 = 0;
    sub_217EF8694(&qword_27CBF6A30, &qword_27CBF69F8, &qword_217F52618);
    sub_217F4AFC4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A08, &qword_217F52620);
    v17 = 1;
    sub_217EF8694(&qword_27CBF6A38, &qword_27CBF6A08, &qword_217F52620);
    sub_217F4AFC4();
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A18, &qword_217F52628);
    v17 = 2;
    sub_217EF8694(&qword_27CBF6A40, &qword_27CBF6A18, &qword_217F52628);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v15 = v18;
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEC148(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEC174;
}

void (*sub_217EEC1C8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEC1F4;
}

uint64_t (*sub_217EEC24C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEC278;
}

uint64_t (*sub_217EEC2D0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EEC2FC;
}

unint64_t sub_217EEC328()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_217EEC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EEC3C8(uint64_t a1)
{
  v2 = sub_217EF7ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEC404(uint64_t a1)
{
  v2 = sub_217EF7ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEC440(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A48, &qword_217F52638);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7ACC();
  sub_217F4B294();
  v17 = v11;
  HIBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A58, &qword_217F52640);
  sub_217EF8694(&qword_27CBF6A60, &qword_27CBF6A58, &qword_217F52640);
  sub_217F4B0C4();
  if (!v2)
  {
    v17 = v10;
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A68, &qword_217F52648);
    sub_217EF8694(&qword_27CBF6A70, &qword_27CBF6A68, &qword_217F52648);
    sub_217F4B0C4();
    v17 = v13;
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A78, &qword_217F52650);
    sub_217EF8694(&qword_27CBF6A80, &qword_27CBF6A78, &qword_217F52650);
    sub_217F4B0C4();
    v17 = v12;
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A88, &qword_217F52658);
    sub_217EF8694(&qword_27CBF6A90, &qword_27CBF6A88, &qword_217F52658);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EEC758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A98, &qword_217F52660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7ACC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A58, &qword_217F52640);
    HIBYTE(v17) = 0;
    sub_217EF8694(&qword_27CBF6AA0, &qword_27CBF6A58, &qword_217F52640);
    sub_217F4AFC4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A68, &qword_217F52648);
    HIBYTE(v17) = 1;
    sub_217EF8694(&qword_27CBF6AA8, &qword_27CBF6A68, &qword_217F52648);
    sub_217F4AFC4();
    v13 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A78, &qword_217F52650);
    HIBYTE(v17) = 2;
    sub_217EF8694(&qword_27CBF6AB0, &qword_27CBF6A78, &qword_217F52650);
    sub_217F4AFC4();
    v15 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6A88, &qword_217F52658);
    HIBYTE(v17) = 3;
    sub_217EF8694(&qword_27CBF6AB8, &qword_27CBF6A88, &qword_217F52658);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v16 = v18;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EECB04(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EECB30;
}

void (*sub_217EECBA4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EECBD0;
}

void (*sub_217EECC48(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EECC74;
}

__n128 sub_217EECCA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EECCE4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return sub_217EECD10;
}

uint64_t (*sub_217EECD70(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_217EECD98;
}

unint64_t sub_217EECDC4()
{
  v1 = *v0;
  v2 = 0x73726F697270;
  v3 = 0xD00000000000001FLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001CLL;
  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EECE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EECEC0(uint64_t a1)
{
  v2 = sub_217EF7EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EECEFC(uint64_t a1)
{
  v2 = sub_217EF7EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EECF38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AC0, &qword_217F52668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = *(v1 + 3);
  v18 = *(v1 + 5);
  v19 = v13;
  v14 = v1[7];
  v15 = v1[8];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7EF0();
  sub_217F4B294();
  *&v20 = v11;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AD0, &qword_217F52670);
  sub_217EF8694(&qword_27CBF6AD8, &qword_27CBF6AD0, &qword_217F52670);
  sub_217F4B0C4();
  if (!v2)
  {
    *&v20 = v10;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AE0, &qword_217F52678);
    sub_217EF8694(&qword_27CBF6AE8, &qword_27CBF6AE0, &qword_217F52678);
    sub_217F4B0C4();
    *&v20 = v12;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AF0, &qword_217F52680);
    sub_217EF8694(&qword_27CBF6AF8, &qword_27CBF6AF0, &qword_217F52680);
    sub_217F4B0C4();
    v20 = v19;
    v21 = v18;
    v22 = 3;
    sub_217EF7F44();
    sub_217F4B0C4();
    *&v20 = v14;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B08, &qword_217F52688);
    sub_217EF8694(&qword_27CBF6B10, &qword_27CBF6B08, &qword_217F52688);
    sub_217F4B0C4();
    *&v20 = v15;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B18, &qword_217F52690);
    sub_217EF8694(&qword_27CBF6B20, &qword_27CBF6B18, &qword_217F52690);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EED328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B28, &qword_217F52698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7EF0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AD0, &qword_217F52670);
    v23 = 0;
    sub_217EF8694(&qword_27CBF6B30, &qword_27CBF6AD0, &qword_217F52670);
    sub_217F4AFC4();
    v12 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AE0, &qword_217F52678);
    v23 = 1;
    sub_217EF8694(&qword_27CBF6B38, &qword_27CBF6AE0, &qword_217F52678);
    sub_217F4AFC4();
    v13 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6AF0, &qword_217F52680);
    v23 = 2;
    sub_217EF8694(&qword_27CBF6B40, &qword_27CBF6AF0, &qword_217F52680);
    sub_217F4AFC4();
    v14 = v21;
    v23 = 3;
    sub_217EF7F98();
    sub_217F4AFC4();
    v19 = v21;
    v20 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B08, &qword_217F52688);
    v23 = 4;
    sub_217EF8694(&qword_27CBF6B50, &qword_27CBF6B08, &qword_217F52688);
    sub_217F4AFC4();
    v16 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B18, &qword_217F52690);
    v23 = 5;
    sub_217EF8694(&qword_27CBF6B58, &qword_27CBF6B18, &qword_217F52690);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v17 = v21;
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    v18 = v20;
    *(a2 + 24) = v19;
    *(a2 + 40) = v18;
    *(a2 + 56) = v16;
    *(a2 + 64) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EED7A4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_217EED7D0;
}

double sub_217EED7F8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DA0;
  return result;
}

void (*sub_217EED830(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 16);
  return sub_217EED85C;
}

uint64_t sub_217EED888()
{
  if (*v0)
  {
    result = 0x6C6172656E6567;
  }

  else
  {
    result = 0x656E696C65736162;
  }

  *v0;
  return result;
}

uint64_t sub_217EED8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

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

uint64_t sub_217EED9AC(uint64_t a1)
{
  v2 = sub_217EF7FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EED9E8(uint64_t a1)
{
  v2 = sub_217EF7FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEDA24(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B60, &qword_217F526A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7FEC();
  sub_217F4B294();
  v18 = v10;
  v19 = v11;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B70, &qword_217F526A8);
  sub_217EF8694(&qword_27CBF6B78, &qword_27CBF6B70, &qword_217F526A8);
  sub_217F4B0C4();
  if (!v2)
  {
    v18 = v12;
    v19 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B80, &qword_217F526B0);
    sub_217EF8694(&qword_27CBF6B88, &qword_27CBF6B80, &qword_217F526B0);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EEDC44@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B90, &qword_217F526B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF7FEC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B70, &qword_217F526A8);
    v16 = 0;
    sub_217EF8694(&qword_27CBF6B98, &qword_27CBF6B70, &qword_217F526A8);
    sub_217F4AFC4();
    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6B80, &qword_217F526B0);
    v16 = 1;
    sub_217EF8694(&qword_27CBF6BA0, &qword_27CBF6B80, &qword_217F526B0);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v13 = v15;
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217EEDF1C(uint64_t a1)
{
  v2 = sub_217EF8040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEDF58(uint64_t a1)
{
  v2 = sub_217EF8040();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EEE058@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217ECBAD8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t (*sub_217EEE094(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;

  return sub_217EEE0E0;
}

unint64_t sub_217EEE0E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_217EC7330(*a1);
  }

  v4 = *a1;

  sub_217EC7330(v5);
}

uint64_t sub_217EEE14C()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EEE190()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EEE1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000217F5FEF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217F4B144();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217EEE28C(uint64_t a1)
{
  v2 = sub_217EF83A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEE2C8(uint64_t a1)
{
  v2 = sub_217EF83A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEE304(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BC0, &qword_217F526D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83A0();

  sub_217F4B294();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BD0, &qword_217F526D8);
  sub_217EF8694(&qword_27CBF6BD8, &qword_27CBF6BD0, &qword_217F526D8);
  sub_217F4B0C4();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_217EEE4A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BE0, &qword_217F526E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83A0();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BD0, &qword_217F526D8);
    sub_217EF8694(&qword_27CBF6BE8, &qword_27CBF6BD0, &qword_217F526D8);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_217EEE6A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_217F03FF4;
}

void (*sub_217EEE704(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEE730;
}

uint64_t (*sub_217EEE790(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_217EEE7B8;
}

void (*sub_217EEE814(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_217EEE840;
}

void (*sub_217EEE8A0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_217EEE8CC;
}

_BYTE *(*sub_217EEE910(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_217EEE93C;
}

void (*sub_217EEE980(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return sub_217EEE9AC;
}

_BYTE *(*sub_217EEE9F0(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_217EEEA1C;
}

double sub_217EEEA2C@<D0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  LOBYTE(v17) = a1;
  *(&v17 + 1) = a6;
  sub_217EC9D8C(a6);
  *&v18 = a2;
  sub_217EC9F54(a2);
  *(&v18 + 1) = a7;
  sub_217ECA10C(a7);
  *v19 = a8;
  sub_217ECA2D4(a8);
  v19[8] = a3;
  *&v19[16] = a9;
  sub_217ECA4A0(a9);
  v19[24] = a4;
  *a5 = v17;
  a5[1] = v18;
  a5[2] = *v19;
  result = *&v19[9];
  *(a5 + 41) = *&v19[9];
  return result;
}

unint64_t sub_217EEEB04()
{
  v1 = *v0;
  v2 = 0x7361427441706163;
  v3 = 0x6867696557676174;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6C754D65726F6373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x476E4974696D696CLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EEEC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F02DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EEEC74(uint64_t a1)
{
  v2 = sub_217EF83F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEECB0(uint64_t a1)
{
  v2 = sub_217EF83F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEECEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF0, &qword_217F526E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v22 = *(v1 + 2);
  v13 = *(v1 + 3);
  v12 = *(v1 + 4);
  v24 = v1[40];
  v14 = *(v1 + 6);
  v21 = v1[56];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83F4();
  sub_217F4B294();
  LOBYTE(v23) = v10;
  v16 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF8, &qword_217F526F0);
  sub_217EF8694(&qword_280C28840, &qword_27CBF6BF8, &qword_217F526F0);
  sub_217F4B0C4();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v17 = v22;
  v18 = v24;
  v23 = v11;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C00, &qword_217F526F8);
  sub_217EF8694(&qword_280C286E0, &qword_27CBF6C00, &qword_217F526F8);
  sub_217F4B0C4();
  v23 = v17;
  v25 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C08, &qword_217F52700);
  sub_217EF8694(&qword_280C286F0, &qword_27CBF6C08, &qword_217F52700);
  sub_217F4B0C4();
  v23 = v13;
  v25 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C10, &qword_217F52708);
  sub_217EF8694(&qword_280C28700, &qword_27CBF6C10, &qword_217F52708);
  sub_217F4B0C4();
  v23 = v12;
  v25 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C18, &qword_217F52710);
  sub_217EF8694(&qword_280C286E8, &qword_27CBF6C18, &qword_217F52710);
  sub_217F4B0C4();
  LOBYTE(v23) = v18;
  v25 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C20, &qword_217F52718);
  sub_217EF8694(&qword_280C28838, &qword_27CBF6C20, &qword_217F52718);
  sub_217F4B0C4();
  v23 = v14;
  v25 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C28, &qword_217F52720);
  sub_217EF8694(&qword_280C286F8, &qword_27CBF6C28, &qword_217F52720);
  sub_217F4B0C4();
  LOBYTE(v23) = v21;
  v25 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C30, &qword_217F52728);
  sub_217EF8694(&qword_280C28830, &qword_27CBF6C30, &qword_217F52728);
  sub_217F4B0C4();
  return (*(v5 + 8))(v16, v4);
}

uint64_t sub_217EEF22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C38, &qword_217F52730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF83F4();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6BF8, &qword_217F526F0);
    v26 = 0;
    sub_217EF8694(&qword_27CBF6C40, &qword_27CBF6BF8, &qword_217F526F0);
    sub_217F4AFC4();
    v23 = a2;
    v12 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C00, &qword_217F526F8);
    v26 = 1;
    sub_217EF8694(&qword_27CBF6C48, &qword_27CBF6C00, &qword_217F526F8);
    sub_217F4AFC4();
    v25 = v12;
    v13 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C08, &qword_217F52700);
    v26 = 2;
    sub_217EF8694(&qword_27CBF6C50, &qword_27CBF6C08, &qword_217F52700);
    sub_217F4AFC4();
    v14 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C10, &qword_217F52708);
    v26 = 3;
    sub_217EF8694(&qword_27CBF6C58, &qword_27CBF6C10, &qword_217F52708);
    sub_217F4AFC4();
    v15 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C18, &qword_217F52710);
    v26 = 4;
    sub_217EF8694(&qword_27CBF6C60, &qword_27CBF6C18, &qword_217F52710);
    sub_217F4AFC4();
    v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C20, &qword_217F52718);
    v26 = 5;
    sub_217EF8694(&qword_27CBF6C68, &qword_27CBF6C20, &qword_217F52718);
    sub_217F4AFC4();
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C28, &qword_217F52720);
    v26 = 6;
    sub_217EF8694(&qword_27CBF6C70, &qword_27CBF6C28, &qword_217F52720);
    sub_217F4AFC4();
    v18 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C30, &qword_217F52728);
    v26 = 7;
    sub_217EF8694(&qword_27CBF6C78, &qword_27CBF6C30, &qword_217F52728);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v19 = v24;
    v20 = v23;
    *v23 = v25;
    *(v20 + 1) = v13;
    *(v20 + 2) = v14;
    *(v20 + 3) = v15;
    *(v20 + 4) = v16;
    v20[40] = v22;
    *(v20 + 6) = v18;
    v20[56] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_217EEF7F4@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217EEF850()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_217EEF888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217F5FF90 == a2 || (sub_217F4B144() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5FFB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217F4B144();

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

uint64_t sub_217EEF978(uint64_t a1)
{
  v2 = sub_217EF8448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EEF9B4(uint64_t a1)
{
  v2 = sub_217EF8448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EEF9F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6C80, &qword_217F52738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15[-1] - v9;
  v14 = *v3;
  v11 = *(v3 + 2);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8448();
  sub_217F4B294();
  v15[0] = v14;
  *&v15[1] = v11;
  v16 = 0;
  sub_217EF849C();
  sub_217F4B0C4();
  if (!v2)
  {
    memcpy(v15, v3 + 24, sizeof(v15));
    v16 = 1;
    sub_217EF84F0();
    sub_217F4B0C4();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_217EEFBB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CA0, &qword_217F52740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8448();
  sub_217F4B274();
  if (!v2)
  {
    v11 = v5;
    v12 = v18;
    v20 = 0;
    sub_217EF8544();
    sub_217F4AFC4();
    v13 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    v20 = 1;
    sub_217EF8598();
    sub_217F4AFC4();
    (*(v11 + 8))(v9, v4);
    *v12 = v13;
    v12[1] = v14;
    v12[2] = v15;
    memcpy(v12 + 3, v19, 0x220uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_217EEFE10(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_217EEFE3C;
}

void (*sub_217EEFE90(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_217EEFEBC;
}

void (*sub_217EEFF14(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_217EEFF40;
}

uint64_t sub_217EEFF6C()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461527961636564;
  }
}