void sub_27540ADB8()
{
  if (!qword_2809DAED8)
  {
    sub_2753F1680(255, &qword_2809DADD0);
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAED8);
    }
  }
}

uint64_t sub_27540AE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_27540AE80()
{
  if (!qword_2809DB060)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB060);
    }
  }
}

uint64_t sub_27540AF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27540AF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_27540AFA4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_27540AFE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27540B020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_4_5()
{
  v0[3] = v1;
  v0[4] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1(v0);
}

uint64_t *OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a17 = v18;
  a18 = *(v19 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

void *OUTLINED_FUNCTION_12_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_13_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, (v10 + 88), 0x50uLL);
}

double sub_27540B1D4()
{
  sub_2753F12B8(v0, __src);
  if (v5)
  {
    return *&__src[8] - *__src;
  }

  memcpy(v3, __src, 0x51uLL);
  v1 = sub_27540A9DC();
  sub_2753F1398(v3);
  return v1;
}

uint64_t sub_27540B25C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27540B298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

uint64_t sub_27540B2EC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 81) = a2;
  return result;
}

uint64_t sub_27540B32C(uint64_t a1, uint64_t a2)
{
  sub_2753F12B8(a1, v8);
  sub_2753F12B8(a2, v9);
  if (v8[81])
  {
    sub_2753F12B8(v8, v7);
    if (v10 == 1)
    {
      v3 = vmovn_s64(vceqzq_f64(vsubq_f64(*v9, v7[0])));
      v4 = v3.i8[0] & v3.i8[4];
LABEL_8:
      sub_2753F122C(v8);
      return v4 & 1;
    }
  }

  else
  {
    sub_2753F12B8(v8, v7);
    if ((v10 & 1) == 0)
    {
      memcpy(__dst, v9, 0x51uLL);
      v4 = sub_27540AABC(v7, __dst);
      sub_2753F1398(__dst);
      sub_2753F1398(v7);
      goto LABEL_8;
    }

    sub_2753F1398(v7);
  }

  sub_27540B428(v8);
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_27540B428(uint64_t a1)
{
  sub_27540B484();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27540B484()
{
  if (!qword_2809DB068)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB068);
    }
  }
}

uint64_t sub_27540B51C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_275409AE4(a1);
  }

  sub_275409858(v12);
  sub_2753F12B8(v12, __src);
  if (__src[81])
  {
    v3 = &__src[8];
  }

  else
  {
    v3 = &v8[8];
    memcpy(__dst, __src, 0x51uLL);
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  sub_2753F122C(v12);
  v5 = *v3;
  sub_2754097E0(__src);
  sub_2753F12B8(__src, __dst);
  if (__dst[81])
  {
    v6 = &__dst[8];
    sub_275409AE4(a1);
  }

  else
  {
    v6 = &v10;
    memcpy(v8, __dst, 0x51uLL);
    sub_275409C88();
    sub_275409AE4(a1);
    sub_2753F1398(v8);
  }

  result = sub_2753F122C(__src);
  v7 = *v6 - v5;
  return result;
}

uint64_t sub_27540B644(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      a3 = a3 * v6;
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_27540B6A4()
{
  result = qword_2809DB070;
  if (!qword_2809DB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB070);
  }

  return result;
}

uint64_t sub_27540B710(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27540B750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27540B814(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x277C77C00](*&a1);
}

uint64_t sub_27540B870()
{
  sub_27546E550();
}

uint64_t sub_27540B8C8()
{
  sub_27546E550();
}

uint64_t sub_27540B958()
{
  sub_27546E550();
}

uint64_t sub_27540B9B8()
{
  sub_27546E550();
}

uint64_t sub_27540BA30()
{
  sub_27546E550();
}

uint64_t sub_27540BAA8()
{
  sub_27546E550();
}

uint64_t sub_27540BBC4()
{
  sub_27546E550();
}

uint64_t sub_27540BCB4()
{
  OUTLINED_FUNCTION_0_17();
  sub_2754271B0(v0);
  sub_27546E550();

  return sub_27546EAC0();
}

uint64_t sub_27540BD0C()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_10();

  return sub_27546EAC0();
}

uint64_t sub_27540BD88()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_10();

  return sub_27546EAC0();
}

uint64_t sub_27540BE04()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_10();

  return sub_27546EAC0();
}

uint64_t sub_27540BE68()
{
  sub_27546EA90();
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_27540BEB8()
{
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_10();

  return sub_27546EAC0();
}

uint64_t sub_27540BF38()
{
  OUTLINED_FUNCTION_0_17();
  sub_27546E550();

  return sub_27546EAC0();
}

uint64_t sub_27540BFA4(uint64_t a1, uint64_t a2)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](a2);
  return sub_27546EAC0();
}

uint64_t sub_27540C000(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_27546EA90();
  a3(v6, a2);
  return sub_27546EAC0();
}

uint64_t sub_27540C04C()
{
  sub_27546EA90();
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_27540C098(double a1, uint64_t a2, void (*a3)(_BYTE *, double))
{
  sub_27546EA90();
  a3(v6, a1);
  return sub_27546EAC0();
}

BOOL sub_27540C0EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v7 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = a2[40];
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  if (a1[40])
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_27543C938(v7, v10) & 1) == 0 || (sub_27543C938(v8, v11) & 1) == 0 || (sub_27540C1D8(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_2754098D4((a1 + 72), (a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 31) == *(a2 + 31);
}

uint64_t sub_27540C1D8(uint64_t result, uint64_t a2)
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

    v17 = sub_27540C314(v14, v15);
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

unint64_t sub_27540C314(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_27546EA90();
  sub_27546E550();
  v6 = sub_27546EAC0();

  return sub_27540C38C(a1, a2, v6);
}

unint64_t sub_27540C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_27546E9A0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_27546EA90();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_27546E550();
}

uint64_t sub_27540C47C(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t *a4)
{
  sub_2753EF3C8(a3, __src);
  if (__src[170])
  {
    return MEMORY[0x277D84F90];
  }

  memcpy(v9, __src, 0xAAuLL);
  v11 = a2;
  v7 = sub_27540E7EC(a1, &v11, v9, a4);
  sub_2753F13EC(v9);
  return v7;
}

unint64_t *sub_27540C528@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_27540D54C(a1, a3);
  if (!v4)
  {
    v12 = v11;
    if (v11 == -1)
    {
      MEMORY[0x28223BE20](result);
      v21 = a1;
      sub_2754246AC();
      v18 = a4;
    }

    else
    {
      v13 = result;
      v14 = v10;
      v22 = a3;
      v15 = sub_275409368(result, v10, v11 & 1);
      v16 = sub_27540CB40(v13, v14, v12);
      MEMORY[0x28223BE20](v16);
      v20[2] = &v22;
      v20[3] = a1;
      LOBYTE(v21) = a2;
      v17 = sub_27541BF98(sub_27540CBAC, v20, v15);

      v18 = a4;
      v19 = v17;
    }

    sub_27540C800(v19, v18);
  }

  return result;
}

uint64_t sub_27540C69C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t, char *)@<X3>, void *a4@<X8>)
{
  v8 = a2;
  result = a3(a1, &v8);
  if (!v4)
  {
    MEMORY[0x28223BE20](result);
    sub_2754246AC();
    sub_27540C800(v7, a4);
  }

  return result;
}

uint64_t sub_27540C748@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  result = sub_27540C47C(a3, a4, a1, a2);
  if (!v5)
  {
    MEMORY[0x28223BE20](result);
    sub_2754246AC();
    sub_27540C800(v8, a5);
  }

  return result;
}

void sub_27540C800(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v3; --v3)
  {
    sub_2753F2548(v4, __src);
    if (__src[31] <= 0.0)
    {
      sub_2753F25A4(__src);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2754419BC(0, *(i + 16) + 1, 1);
        i = v14;
      }

      v8 = *(i + 16);
      v7 = *(i + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2754419BC((v7 > 1), v8 + 1, 1);
        i = v14;
      }

      *(i + 16) = v8 + 1;
      memcpy((i + (v8 << 8) + 32), __dst, 0x100uLL);
    }

    v4 += 256;
  }

  v9 = *(i + 16);
  if (v9)
  {
    sub_2753F2548(i + 32, __src);
    v10 = i + 288;
    for (j = 1; ; ++j)
    {
      if (v9 == j)
      {

        memcpy(a2, __src, 0x100uLL);
        return;
      }

      if (j >= *(i + 16))
      {
        break;
      }

      sub_2753F2548(v10, __dst);
      if (__src[31] >= __dst[31])
      {
        sub_2753F25A4(__dst);
      }

      else
      {
        sub_2753F25A4(__src);
        memcpy(__src, __dst, sizeof(__src));
      }

      v10 += 256;
    }

    __break(1u);
  }

  else
  {

    bzero(a2, 0x100uLL);
  }
}

uint64_t sub_27540C9BC(uint64_t a1, uint64_t a2)
{
  if (sub_2754070A0(a1))
  {
    v6 = *(a2 + 80);
    v7 = *(a2 + 88);
    v8 = *(a2 + 104);
    v9 = *(a2 + 120);
    v4 = sub_2753F1C20(a1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_27540CB40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_27540CB58();
  }

  return result;
}

uint64_t sub_27540CB58()
{
}

uint64_t sub_27540CC04(void *a1)
{
  v1 = a1[4] >> 1;
  v37 = a1[3];
  v2 = v1 - v37;
  if (__OFSUB__(v1, v37))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = *a1;
  v4 = a1[1];
  v35 = a1[2];
  v38 = *(*a1 + 16);
  if (v2 >= v38)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v37;
  }

  v43 = MEMORY[0x277D84F90];
  sub_27544114C(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_38:
    __break(1u);
    return result;
  }

  v6 = v43;
  v39 = v1;
  v36 = v3;
  v34 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v3 + 32;

    result = swift_unknownObjectRetain();
    v11 = v37;
    v10 = v38;
    v12 = v35 + 40 * v37;
    while (v10)
    {
      sub_2753F161C(v8, __src);
      if (v1 == v11)
      {
        goto LABEL_37;
      }

      if (v11 >= v1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(__src, __dst);
      sub_2753F161C(v12, &__dst[5]);
      v14 = __dst[3];
      v13 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      (*(*(v13 + 8) + 8))(__src, v14);
      v15 = *__src;
      v17 = __dst[8];
      v16 = __dst[9];
      __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
      (*(*(v16 + 8) + 8))(v40, v17);
      v18 = *v40;
      result = sub_275415334(__dst, sub_2754152C0);
      v43 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_27544114C((v19 > 1), v20 + 1, 1);
        v6 = v43;
      }

      v8 += 40;
      *(v6 + 16) = v20 + 1;
      *(v6 + 8 * v20 + 32) = v18 - v15;
      --v10;
      v12 += 40;
      v1 = v39;
      ++v11;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v11 = v37;
LABEL_16:
  v21 = v35 + 40 * v11;
  v22 = v34;
  v23 = v36 + 40 * v34 + 32;
  v24 = v11;
  while (v38 != v22)
  {
    if (v22 >= v38)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v23, v40);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_33;
    }

    if (v1 == v24)
    {
      __swift_destroy_boxed_opaque_existential_1(v40);
      break;
    }

    if (v11 < v37 || v24 >= v1)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v40, __src);
    sub_2753F161C(v21, &__src[2] + 8);
    memcpy(__dst, __src, 0x50uLL);
    v27 = __dst[3];
    v26 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(*(v26 + 8) + 8))(__src, v27);
    v28 = *__src;
    v30 = __dst[8];
    v29 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    (*(*(v29 + 8) + 8))(v40, v30);
    v31 = *v40;
    sub_275415334(__dst, sub_2754152C0);
    v43 = v6;
    v33 = *(v6 + 16);
    v32 = *(v6 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_27544114C((v32 > 1), v33 + 1, 1);
      v6 = v43;
    }

    *(v6 + 16) = v33 + 1;
    *(v6 + 8 * v33 + 32) = v31 - v28;
    v21 += 40;
    ++v22;
    v23 += 40;
    ++v24;
    v1 = v39;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27540CFE4(void *a1)
{
  v1 = a1[4] >> 1;
  v39 = a1[3];
  v2 = v1 - v39;
  if (__OFSUB__(v1, v39))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = *a1;
  v4 = a1[1];
  v37 = a1[2];
  v40 = *(*a1 + 16);
  if (v2 >= v40)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v39;
  }

  v45 = MEMORY[0x277D84F90];
  sub_275441A1C(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_42:
    __break(1u);
    return result;
  }

  v6 = v45;
  v41 = v1;
  v38 = v3;
  v36 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v3 + 32;

    result = swift_unknownObjectRetain();
    v11 = v39;
    v10 = v40;
    v12 = v37 + 40 * v39;
    while (v10)
    {
      sub_2753F161C(v8, __src);
      if (v1 == v11)
      {
        goto LABEL_41;
      }

      if (v11 >= v1)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_2753F16E0(__src, __dst);
      sub_2753F161C(v12, &__dst[5]);
      v14 = __dst[3];
      v13 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      (*(*(v13 + 8) + 8))(__src, v14);
      v15 = *__src;
      v17 = __dst[8];
      v16 = __dst[9];
      __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
      (*(*(v16 + 8) + 8))(v42, v17);
      v18 = *&v42[0];
      if (*v42 < v15)
      {
        goto LABEL_34;
      }

      result = sub_275415334(__dst, sub_2754152C0);
      v45 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_275441A1C((v19 > 1), v20 + 1, 1);
        v6 = v45;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 16 * v20;
      v8 += 40;
      *(v21 + 32) = v15;
      *(v21 + 40) = v18;
      --v10;
      v12 += 40;
      ++v11;
      --v7;
      v1 = v41;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  v11 = v39;
LABEL_17:
  v22 = v37 + 40 * v11;
  v23 = v36;
  v24 = v38 + 40 * v36 + 32;
  v25 = v11;
  while (v40 != v23)
  {
    if (v23 >= v40)
    {
      goto LABEL_35;
    }

    sub_2753F161C(v24, v42);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_36;
    }

    if (v1 == v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      break;
    }

    if (v11 < v39 || v25 >= v1)
    {
      goto LABEL_37;
    }

    sub_2753F16E0(v42, __src);
    sub_2753F161C(v22, &__src[2] + 8);
    memcpy(__dst, __src, 0x50uLL);
    v28 = __dst[3];
    v27 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(*(v27 + 8) + 8))(__src, v28);
    v29 = *__src;
    v31 = __dst[8];
    v30 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    (*(*(v30 + 8) + 8))(v42, v31);
    v32 = *&v42[0];
    if (*v42 < v29)
    {
      goto LABEL_38;
    }

    sub_275415334(__dst, sub_2754152C0);
    v45 = v6;
    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_275441A1C((v33 > 1), v34 + 1, 1);
      v6 = v45;
    }

    *(v6 + 16) = v34 + 1;
    v35 = v6 + 16 * v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v32;
    v22 += 40;
    ++v23;
    v24 += 40;
    ++v25;
    v1 = v41;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27540D3D4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  result = (*(v5 + 16))(v4, v5);
  if (result < v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v11 = v0[8];
  v12 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v11);
  result = (*(v12 + 16))(v11, v12);
  if (result < v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

double sub_27540D4F4@<D0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_27541BC3C(a2, a1, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

unint64_t *sub_27540D54C(void *a1, uint64_t a2)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_10_3();
  v8(v7);
  if (!v44)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v16 = sub_27546E3E0();
    __swift_project_value_buffer(v16, qword_2809F3C00);
    v17 = sub_27546E3C0();
    v18 = sub_27546E6E0();
    if (!OUTLINED_FUNCTION_1_11(v18))
    {
      goto LABEL_14;
    }

    v19 = OUTLINED_FUNCTION_16_0();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    *(v19 + 4) = OUTLINED_FUNCTION_15_0("Beat-Matched Filtered Cross-Fade");
    v21 = "%s: Region pair map: None. Outgoing song structure not available.";
    goto LABEL_13;
  }

  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v63 = v48;
  v9 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v10 = *(v9 + 88);
  v11 = OUTLINED_FUNCTION_10_3();
  v13 = v12(v11);
  if (!v49)
  {
    sub_2754150C4(&v44, &qword_2809DB008, &_s13SongStructureVN);
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v22 = sub_27546E3E0();
    __swift_project_value_buffer(v22, qword_2809F3C00);
    v17 = sub_27546E3C0();
    v23 = sub_27546E6E0();
    if (!OUTLINED_FUNCTION_1_11(v23))
    {
      goto LABEL_14;
    }

    v19 = OUTLINED_FUNCTION_16_0();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    *(v19 + 4) = OUTLINED_FUNCTION_15_0("Beat-Matched Filtered Cross-Fade");
    v21 = "%s: Region pair map: None. Incoming song structure not available.";
LABEL_13:
    _os_log_impl(&dword_2753EC000, v17, a2, v21, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
LABEL_14:

    return 0;
  }

  v54 = v49;
  v55 = v50;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  MEMORY[0x28223BE20](v13);
  v42[2] = a2;
  v42[3] = a1;
  v14 = sub_27541C890(sub_275415600, v42, a2);
  if (v2)
  {
    v15 = &qword_2809DB008;
    sub_2754150C4(&v49, &qword_2809DB008, &_s13SongStructureVN);
    sub_2754150C4(&v44, &qword_2809DB008, &_s13SongStructureVN);
  }

  else
  {
    v25 = sub_2753FD524(v14);
    v27 = v26;

    if (v27)
    {
      v25 = 8;
    }

    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    (*(v29 + 24))(&v43, v28, v29);
    v30 = sub_27540DA50(&v59, &v43);
    v31 = a1[8];
    v32 = a1[9];
    __swift_project_boxed_opaque_existential_1(a1 + 5, v31);
    (*(v32 + 40))(&v43, v31, v32);
    v33 = sub_27540DD74(&v54, &v43, v25);
    v34 = sub_27540E274(v30, v25);

    v35 = sub_27540E274(v33, v25);

    v36 = sub_27540E380(v34, &v59);

    v37 = sub_27540E380(v35, &v54);

    v38 = sub_27540E4D8(v36);
    sub_2754150C4(&v44, &qword_2809DB008, &_s13SongStructureVN);

    sub_27540E4D8(v37);
    sub_2754150C4(&v49, &qword_2809DB008, &_s13SongStructureVN);

    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    v41 = (*(v40 + 104))(v39, v40);
    v15 = sub_27540E5C8(v38, v41);
  }

  return v15;
}

uint64_t sub_27540DA50(uint64_t a1, double *a2)
{
  v3 = *a2;
  sub_2753FA864(&v29);
  if (v30)
  {
    v4 = sub_2753F16E0(&v29, v32);
    v5 = *(a1 + 16);
    MEMORY[0x28223BE20](v4);
    v25 = v32;

    sub_2754241F8(sub_275415630, v24, v5);
    MEMORY[0x28223BE20](v6);
    v25 = v32;
    v26 = 4;
    sub_2754241F8(sub_275415650, v24, v7);
    v9 = v8;
    v10 = 0;
    v11 = *(v8 + 16);
    v12 = v8 + 32;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v11 == v10)
      {

        __swift_destroy_boxed_opaque_existential_1(v32);
        return v13;
      }

      if (v10 >= *(v9 + 16))
      {
        break;
      }

      sub_2753F161C(v12, &v29);
      v15 = v30;
      v14 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      (*(*(*(v14 + 8) + 8) + 8))(v27, v15);
      if (*v27 >= v3)
      {
        sub_2753F16E0(&v29, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2754412B4(0, *(v13 + 16) + 1, 1);
          v13 = v28;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2754412B4(v17 > 1, v18 + 1, 1);
          v13 = v28;
        }

        *(v13 + 16) = v18 + 1;
        sub_2753F16E0(v27, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v29);
      }

      v12 += 40;
      ++v10;
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_2754154D8(&v29, &qword_2809DAED8, &qword_2809DADD0);
  if (qword_2809DACB0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v19 = sub_27546E3E0();
  __swift_project_value_buffer(v19, qword_2809F3C00);
  v20 = sub_27546E3C0();
  v21 = sub_27546E6E0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2753EC000, v20, v21, "Candidate outgoing end downbeats: Empty. First phrase start downbeat not identified.", v22, 2u);
    MEMORY[0x277C78090](v22, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_27540DD74(uint64_t a1, double *a2, uint64_t a3)
{
  v46 = a3;
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  for (i = v4 + 32; v5; --v5)
  {
    sub_2753F161C(i, &v53);
    v9 = v54;
    v8 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    (*(*(*(*(*(v8 + 8) + 8) + 8) + 8) + 8))(&v50, v9);
    if (v3 >= *&v50)
    {
      sub_2753F16E0(&v53, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_275441934(0, *(v6 + 16) + 1, 1);
        v6 = v56;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_275441934(v11 > 1, v12 + 1, 1);
        v6 = v56;
      }

      v13 = v51;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v50, v51);
      v15 = *(*(v13 - 8) + 64);
      MEMORY[0x28223BE20](v14);
      v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);
      v19 = *v17;
      v48 = &_s33SongStructureSectionBoundaryEventVN;
      v49 = &off_2884129F0;
      v20 = swift_allocObject();
      *&v47 = v20;
      *(v20 + 16) = v19;
      v21 = *(v17 + 8);
      *(v20 + 40) = *(v17 + 24);
      *(v20 + 24) = v21;
      *(v6 + 16) = v12 + 1;
      sub_2753F16E0(&v47, v6 + 40 * v12 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    i += 40;
  }

  sub_2753F8E44(v6, &v50);
  if (v51)
  {
    sub_2753F16E0(&v50, &v53);
    v23 = v54;
    v22 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v24 = (*(*(*(v22 + 8) + 8) + 16))(v23);
    v25 = v46;
    if (v24 >= v46)
    {
      v33 = sub_27541004C(v6);
LABEL_29:

      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v33;
    }

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v26 = sub_27546E3E0();
    __swift_project_value_buffer(v26, qword_2809F3C00);
    sub_2753F161C(&v53, &v50);
    v27 = sub_27546E3C0();
    v28 = sub_27546E6E0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      v31 = v51;
      v30 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, v51);
      v32 = (*(*(*(v30 + 8) + 8) + 16))(v31);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      *(v29 + 4) = v32;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v25;
      _os_log_impl(&dword_2753EC000, v27, v28, "Candidate incoming end downbeats: Discarding first section boundary at downbeat index %ld as it is less than %ld bars from the beginning of the song.", v29, 0x16u);
      MEMORY[0x277C78090](v29, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    v34 = sub_27544FBA0(1, v6);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (v39)
    {
      sub_27546EA30();
      swift_unknownObjectRetain_n();
      v43 = swift_dynamicCastClass();
      if (!v43)
      {
        swift_unknownObjectRelease();
        v43 = MEMORY[0x277D84F90];
      }

      v44 = *(v43 + 16);

      if (__OFSUB__(v40 >> 1, v38))
      {
        __break(1u);
      }

      else if (v44 == (v40 >> 1) - v38)
      {
        v42 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v42)
        {
LABEL_28:
          v33 = sub_27541004C(v42);
          goto LABEL_29;
        }

        v42 = MEMORY[0x277D84F90];
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      swift_unknownObjectRelease();
    }

    sub_27541B964(v34, v36, v38, v40);
    v42 = v41;
    goto LABEL_27;
  }

  sub_2754154D8(&v50, &qword_2809DAEE8, &qword_2809DAEF0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_27540E274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_27544196C(0, v2, 0);
    v3 = v12;
    v6 = a1 + 32;
    do
    {
      sub_2753F161C(v6, v10);
      sub_2753FA740(v10, a2, __src);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v12 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_27544196C(v7 > 1, v8 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v8 + 1;
      memcpy((v3 + 80 * v8 + 32), __src, 0x50uLL);
      v6 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_27540E380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v5 = a1 + 32;
  do
  {
    sub_2753F1548(v5, v13);
    sub_27541018C(v13, a2, __src);
    sub_2753F15A4(v13);
    if (*(&__src[1] + 1))
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_275431A6C(0, *(v4 + 16) + 1, 1, v4);
        v4 = v8;
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_275431A6C(v6 > 1, v7 + 1, 1, v4);
        v4 = v9;
      }

      *(v4 + 16) = v7 + 1;
      memcpy((v4 + 80 * v7 + 32), __dst, 0x50uLL);
    }

    else
    {
      sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
    }

    v5 += 80;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_27540E4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_27544199C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2753F1548(v4, __src);
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27544199C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 88 * v6;
      memcpy((v7 + 32), __src, 0x50uLL);
      *(v7 + 112) = 1;
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27540E5C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v5 = a1 + 32;
      v2 = MEMORY[0x277D84F90];
      do
      {
        sub_2753F1440(v5, v17);
        sub_275410790(v17, a2, v15);
        sub_2753F1398(v17);
        if (v15[80] == 255)
        {
          sub_2754150C4(v15, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
        }

        else
        {
          memcpy(__dst, v15, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = *(v2 + 16);
            sub_275431BA8();
            v2 = v8;
          }

          v6 = *(v2 + 16);
          if (v6 >= *(v2 + 24) >> 1)
          {
            sub_275431BA8();
            v2 = v9;
          }

          *(v2 + 16) = v6 + 1;
          memcpy((v2 + 88 * v6 + 32), __dst, 0x51uLL);
        }

        v5 += 88;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v10 = sub_27546E3E0();
    __swift_project_value_buffer(v10, qword_2809F3C00);
    v11 = sub_27546E3C0();
    v12 = sub_27546E6E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2753EC000, v11, v12, "Non-silent outgoing candidate regions: All outgoing candidate regions. Outgoing loudness map not available.", v13, 2u);
      MEMORY[0x277C78090](v13, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_27540E7EC(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v8 = *a2;
  v124 = a4;
  v125 = v8;
  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = sub_27546E3E0();
  v10 = __swift_project_value_buffer(v9, qword_2809F3C00);
  *&v123 = a3;
  sub_275409520(a3, v129);
  v126 = v10;
  v11 = sub_27546E3C0();
  v12 = sub_27546E6E0();
  v13 = "Beat-Matched Filtered Cross-Fade";
  if (OUTLINED_FUNCTION_17_0(v12))
  {
    v122 = v4;
    v14 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = "Smart Cross-Fade";
    v16 = 0xD000000000000020;
    switch(v125)
    {
      case 1:
        v17 = "Smart Cross-Fade";
        goto LABEL_8;
      case 2:
        v17 = "Dead-Air Removal";
LABEL_8:
        v15 = (v17 - 32);
        v16 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v15 = "utgoing";
        v16 = 0xD000000000000013;
        break;
      default:
        break;
    }

    v19 = sub_275446968(v16, v15 | 0x8000000000000000, v131);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_275409520(v129, v128);
    v20 = sub_27546E540();
    v13 = v21;
    sub_2753F13EC(v129);
    v22 = sub_275446968(v20, v13, v131);

    *(v14 + 14) = v22;
    v18 = 0xD000000000000010;
    _os_log_impl(&dword_2753EC000, v11, a3, "%s: Candidate result. Candidate region pair = %s.", v14, 0x16u);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v5 = v122;
  }

  else
  {

    sub_2753F13EC(v129);
    v18 = 0xD000000000000010;
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = *(v24 + 88);
  v26 = OUTLINED_FUNCTION_11_2();
  v27(v26);
  if (!v132)
  {
    v33 = sub_27546E3C0();
    v38 = sub_27546E6E0();
    if (OUTLINED_FUNCTION_1_11(v38))
    {
      OUTLINED_FUNCTION_16_0();
      v39 = OUTLINED_FUNCTION_6_6();
      OUTLINED_FUNCTION_20_1(v39);
      *v23 = 136315138;
      v40 = OUTLINED_FUNCTION_4_6();
      switch(v41)
      {
        case 1:
        case 2:
          v40 = OUTLINED_FUNCTION_3_8();
          break;
        case 3:
          v40 = OUTLINED_FUNCTION_19_0();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_23_0(v40);
      OUTLINED_FUNCTION_24_0();
      *(v23 + 4) = 0xD000000000000010;
      v55 = "%s: No candidate result. Outgoing song structure not available.";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v147 = v132;
  v13 = &v132;
  v148 = v133;
  v149 = v134;
  v150 = v135;
  v151 = v136;
  v28 = a1[8];
  v29 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v28);
  v30 = *(v29 + 88);
  v31 = OUTLINED_FUNCTION_11_2();
  v32(v31);
  if (!v137)
  {
    sub_2754150C4(&v132, &qword_2809DB008, &_s13SongStructureVN);
    v33 = sub_27546E3C0();
    v42 = sub_27546E6E0();
    if (OUTLINED_FUNCTION_1_11(v42))
    {
      OUTLINED_FUNCTION_16_0();
      v43 = OUTLINED_FUNCTION_6_6();
      OUTLINED_FUNCTION_20_1(v43);
      *v28 = 136315138;
      v44 = OUTLINED_FUNCTION_4_6();
      switch(v45)
      {
        case 1:
        case 2:
          v44 = OUTLINED_FUNCTION_3_8();
          break;
        case 3:
          v44 = OUTLINED_FUNCTION_19_0();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_23_0(v44);
      OUTLINED_FUNCTION_24_0();
      *(v28 + 4) = 0xD000000000000010;
      v55 = "%s: No candidate result. Incoming song structure not available.";
      goto LABEL_35;
    }

LABEL_36:

    return MEMORY[0x277D84F90];
  }

  v142 = v137;
  v143 = v138;
  v144 = v139;
  v145 = v140;
  v146 = v141;
  v13 = v124;
  sub_27540F5F8(v123, &v147, &v142, v129);
  if (LOBYTE(v129[10]) == 0xFF)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_4();
    sub_2754150C4(v129, &qword_2809DB078, &_s27StructuredStylingRegionPairVN);
    v33 = sub_27546E3C0();
    v34 = sub_27546E6E0();
    if (OUTLINED_FUNCTION_1_11(v34))
    {
      OUTLINED_FUNCTION_16_0();
      v35 = OUTLINED_FUNCTION_6_6();
      OUTLINED_FUNCTION_20_1(v35);
      LODWORD(_s13SongStructureVN.Kind) = 136315138;
      v36 = OUTLINED_FUNCTION_4_6();
      switch(v37)
      {
        case 1:
        case 2:
          v36 = OUTLINED_FUNCTION_3_8();
          break;
        case 3:
          v36 = OUTLINED_FUNCTION_19_0();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_23_0(v36);
      OUTLINED_FUNCTION_24_0();
      *(&_s13SongStructureVN.Kind + 4) = 0xD000000000000010;
      v55 = "%s: No candidate result. Scaled candidate region pair not identified.";
LABEL_35:
      OUTLINED_FUNCTION_21_0(&dword_2753EC000, v53, v54, v55);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  memcpy(v131, v129, 0xAAuLL);
  sub_275409520(v131, v129);
  v46 = sub_27546E3C0();
  v47 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_17_0(v47))
  {
    v48 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v48 = 136315394;
    v49 = OUTLINED_FUNCTION_12_2();
    switch(v51)
    {
      case 1:
        v52 = "Smart Cross-Fade";
        goto LABEL_32;
      case 2:
        v52 = "Dead-Air Removal";
LABEL_32:
        v18 = (v52 - 32);
        v49 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v18 = "utgoing";
        v49 = v50 + 3;
        break;
      default:
        break;
    }

    sub_275446968(v49, v18 | 0x8000000000000000, v130);

    OUTLINED_FUNCTION_13_2();
    sub_27546E540();
    sub_2753F13EC(v129);
    v57 = OUTLINED_FUNCTION_18_0();
    v60 = sub_275446968(v57, v58, v59);

    *(v48 + 14) = v60;
    OUTLINED_FUNCTION_22_1(&dword_2753EC000, v61, v62, "%s: Candidate result. Scaled candidate region pair = %s.");
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v18 = 0xD000000000000010;
    v13 = v124;
  }

  else
  {

    sub_2753F13EC(v129);
  }

  sub_27540FB68(v131, &v142, v129);
  if (LOBYTE(v129[10]) == 0xFF)
  {
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_4();
    sub_2754150C4(v129, &qword_2809DB078, &_s27StructuredStylingRegionPairVN);
    v63 = sub_27546E3C0();
    v64 = sub_27546E6E0();
    if (OUTLINED_FUNCTION_1_11(v64))
    {
      OUTLINED_FUNCTION_16_0();
      v65 = OUTLINED_FUNCTION_6_6();
      OUTLINED_FUNCTION_20_1(v65);
      LODWORD(_s13SongStructureVN.Kind) = 136315138;
      v66 = OUTLINED_FUNCTION_4_6();
      switch(v67)
      {
        case 1:
        case 2:
          v66 = OUTLINED_FUNCTION_3_8();
          break;
        case 3:
          v66 = OUTLINED_FUNCTION_19_0();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_23_0(v66);
      OUTLINED_FUNCTION_24_0();
      *(&_s13SongStructureVN.Kind + 4) = 0xD000000000000010;
      OUTLINED_FUNCTION_21_0(&dword_2753EC000, v76, v77, "%s: No candidate result. Truncated candidate region pair not identified.");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_7_3();
    }

    sub_2753F13EC(v131);
    return MEMORY[0x277D84F90];
  }

  memcpy(v130, v129, 0xAAuLL);
  sub_275409520(v130, v129);
  v68 = sub_27546E3C0();
  v69 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_17_0(v69))
  {
    v70 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v70 = 136315394;
    v71 = OUTLINED_FUNCTION_12_2();
    switch(v73)
    {
      case 1:
        v74 = "Smart Cross-Fade";
        goto LABEL_50;
      case 2:
        v74 = "Dead-Air Removal";
LABEL_50:
        v18 = (v74 - 32);
        v71 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v18 = "utgoing";
        v71 = v72 + 3;
        break;
      default:
        break;
    }

    sub_275446968(v71, v18 | 0x8000000000000000, &v127);

    OUTLINED_FUNCTION_13_2();
    sub_27546E540();
    v18 = v78;
    sub_2753F13EC(v129);
    v79 = OUTLINED_FUNCTION_18_0();
    v82 = sub_275446968(v79, v80, v81);

    *(v70 + 14) = v82;
    OUTLINED_FUNCTION_22_1(&dword_2753EC000, v83, v84, "%s: Candidate result. Truncated candidate region pair = %s.");
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v13 = v124;
  }

  else
  {

    v75 = sub_2753F13EC(v129);
  }

  v129[0] = v13;
  MEMORY[0x28223BE20](v75);
  v116 = v129;
  v117 = a1;
  v85 = sub_27541C750(sub_275415190, v115, v13);
  if (v5)
  {
    sub_2753F13EC(v131);
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_4();
LABEL_60:
    sub_2753F13EC(v130);
    return v18;
  }

  v86 = v85;
  v87 = sub_27540FD04(a1);
  v122 = 0;
  LODWORD(v124) = v87;
  v88 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v89 = *(v88 + 96);
  v90 = OUTLINED_FUNCTION_11_2();
  v92 = v91(v90);
  v93 = v13;
  v94 = a1[8];
  v95 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v94);
  v96 = (*(v95 + 96))(v94, v95);
  v18 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v97 = *(v18 + 104);
  v98 = OUTLINED_FUNCTION_18_0();
  v100 = v99(v98);
  v101 = MEMORY[0x28223BE20](v100);
  v114[2] = v93;
  v114[3] = v130;
  v114[4] = &v147;
  v114[5] = v92;
  v115[0] = &v142;
  v115[1] = v96;
  v116 = v101;
  LOBYTE(v117) = v124 & 1;
  BYTE1(v117) = v125;
  v102 = v122;
  v103 = sub_27541BE2C(sub_2754151B0, v114, v86);
  if (v102)
  {
    sub_2753F13EC(v131);

    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_4();

    goto LABEL_60;
  }

  v18 = v103;
  v122 = 0;

  sub_2754150C4(&v132, &qword_2809DB008, &_s13SongStructureVN);
  sub_2754150C4(&v137, &qword_2809DB008, &_s13SongStructureVN);

  v105 = *(v18 + 16);
  if (v105)
  {
    v106 = v18 + 32;
    *&v104 = 136315650;
    v123 = v104;
    v120 = "Dead-Air Removal";
    v121 = "Smart Cross-Fade";
    v118 = "utgoing";
    v119 = "Fallback Cross-Fade";
    do
    {
      sub_2753F2548(v106, v129);
      sub_2753F2548(v106, v128);
      v107 = sub_27546E3C0();
      v108 = sub_27546E6E0();
      if (OUTLINED_FUNCTION_1_11(v108))
      {
        swift_slowAlloc();
        v124 = OUTLINED_FUNCTION_6_6();
        v127 = v124;
        *v92 = v123;
        v109 = 0xD000000000000020;
        v110 = v121;
        switch(v125)
        {
          case 1:
            v109 = OUTLINED_FUNCTION_5_6();
            v110 = v120;
            break;
          case 2:
            v109 = OUTLINED_FUNCTION_5_6();
            v110 = v119;
            break;
          case 3:
            v109 = 0xD000000000000013;
            v110 = v118;
            break;
          default:
            break;
        }

        v111 = sub_275446968(v109, v110 | 0x8000000000000000, &v127);

        *(v92 + 4) = v111;
        *(v92 + 12) = 2048;
        v112 = v129[1];
        sub_2753F25A4(v129);
        *(v92 + 14) = v112;
        *(v92 + 22) = 2048;
        v113 = v128[31];
        sub_2753F25A4(v128);
        *(v92 + 24) = v113;
        _os_log_impl(&dword_2753EC000, v107, v96, "%s: Candidate result. Style ID = %ld. Score = %f.", v92, 0x20u);
        LOBYTE(v96) = v124;
        __swift_destroy_boxed_opaque_existential_1(v124);
        OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_7_3();
      }

      else
      {
        sub_2753F25A4(v129);

        sub_2753F25A4(v128);
      }

      v106 += 256;
      --v105;
    }

    while (v105);
  }

  sub_2753F13EC(v131);
  sub_2753F13EC(v130);
  return v18;
}

void sub_27540F5F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_275409E34();
  if (!__src[3])
  {
    sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 == -1)
    {
LABEL_9:
      v30 = sub_27546E3E0();
      __swift_project_value_buffer(v30, qword_2809F3C00);
      v31 = sub_27546E3C0();
      v32 = sub_27546E6E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2753EC000, v31, v32, "Scaled candidate region pair: None. Outgoing bar range not identified.", v33, 2u);
        MEMORY[0x277C78090](v33, -1, -1);
      }

      v34 = 0uLL;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      goto LABEL_27;
    }

LABEL_30:
    swift_once();
    goto LABEL_9;
  }

  memcpy(__dst, __src, 0x50uLL);
  sub_275409E34();
  if (__src[3])
  {
    memcpy(v46, __src, sizeof(v46));
    v8 = __dst[3];
    v9 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v10 = (*(v9 + 16))(v8, v9);
    v11 = __dst[8];
    v12 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    v13 = (*(v12 + 16))(v11, v12);
    if (v13 < v10)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_275410A90(v10, v13, a2);
      v15 = v46[3];
      v16 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v17 = (*(v16 + 16))(v15, v16);
      v18 = v46[8];
      v19 = v46[9];
      __swift_project_boxed_opaque_existential_1(&v46[5], v46[8]);
      v20 = (*(v19 + 16))(v18, v19);
      if (v20 >= v17)
      {
        v21 = sub_275410A90(v17, v20, a3);
        v22 = sub_275410C24(v14);
        v24 = v23;

        v25 = sub_275410C24(v21);
        v27 = v26;

        sub_2753F8300(v22, v24 & 1, v25, v27 & 1);
        v29 = v28;
        if (v28)
        {
          if (v28 == 1)
          {
            sub_2753F1440(a1 + 88, v43);
          }

          else
          {
            sub_2754115B4(a3, v43);
          }
        }

        else
        {
          sub_275411100(a3, v43);
        }

        memcpy(v44, v43, 0x51uLL);
        if (v44[80] != 255)
        {
          sub_2753F15A4(v46);
          sub_2753F15A4(__dst);
          memcpy(__src, v44, 0x51uLL);
          sub_2753F1440(a1, a4);
          memcpy((a4 + 88), __src, 0x51uLL);
          *(a4 + 169) = v29;
          return;
        }

        sub_2754150C4(v44, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
        if (qword_2809DACB0 != -1)
        {
          swift_once();
        }

        v39 = sub_27546E3E0();
        __swift_project_value_buffer(v39, qword_2809F3C00);
        v40 = sub_27546E3C0();
        v41 = sub_27546E6E0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_2753EC000, v40, v41, "Scaled candidate region pair: None. Scaled incoming candidate region not identified.", v42, 2u);
          MEMORY[0x277C78090](v42, -1, -1);
        }

        sub_2753F15A4(v46);
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v35 = sub_27546E3E0();
  __swift_project_value_buffer(v35, qword_2809F3C00);
  v36 = sub_27546E3C0();
  v37 = sub_27546E6E0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2753EC000, v36, v37, "Scaled candidate region pair: None. Incoming bar range not identified.", v38, 2u);
    MEMORY[0x277C78090](v38, -1, -1);
  }

LABEL_26:
  sub_2753F15A4(__dst);
  v34 = 0uLL;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
LABEL_27:
  *(a4 + 80) = 255;
  *(a4 + 88) = v34;
  *(a4 + 104) = v34;
  *(a4 + 120) = v34;
  *(a4 + 136) = v34;
  *(a4 + 152) = v34;
  *(a4 + 168) = 0;
}

double sub_27540FB68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_275411804(a1);
  sub_275411888(a2, v6, v13);
  if (v13[80] == 255)
  {
    sub_2754150C4(v13, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v9 = sub_27546E3E0();
    __swift_project_value_buffer(v9, qword_2809F3C00);
    v10 = sub_27546E3C0();
    v11 = sub_27546E6E0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2753EC000, v10, v11, "Truncated candidate region pair: None. Truncated incoming candidate region not identified.", v12, 2u);
      MEMORY[0x277C78090](v12, -1, -1);
    }

    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 80) = 255;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 168) = 0;
  }

  else
  {
    memcpy(__dst, v13, sizeof(__dst));
    v7 = *(a1 + 169);
    sub_2753F1440(a1, a3);
    memcpy((a3 + 88), __dst, 0x51uLL);
    *(a3 + 169) = v7;
  }

  return result;
}

BOOL sub_27540FD04(void *a1)
{
  if (sub_275411FAC(a1) != 3)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v2 = sub_27546E3E0();
  __swift_project_value_buffer(v2, qword_2809F3C00);
  v3 = sub_27546E3C0();
  v4 = sub_27546E6E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2753EC000, v3, v4, "Tonalities are compatible: Tonality relationship incompatible but checking for insignificant melodicness.", v5, 2u);
    MEMORY[0x277C78090](v5, -1, -1);
  }

  if (sub_2754121D4(a1))
  {
    return 1;
  }

  return sub_2754121D4(a1 + 5);
}

uint64_t sub_27540FE44@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_27541BC3C(a2, *a1, v11);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v8 = v12;
    v9 = v13;
    v17 = v14;
    sub_275415670(&v17);
    v16 = v15;
    result = sub_275415670(&v16);
    v10 = 8;
    if (!v9)
    {
      v10 = v8;
    }

    *a4 = v10;
  }

  return result;
}

BOOL sub_27540FED8(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return (*(v7 + 16))(v6, v7) < v5;
}

uint64_t sub_27540FF78(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  result = (*(v9 + 16))(v8, v9);
  v11 = v7 - result;
  if (__OFSUB__(v7, result))
  {
    __break(1u);
  }

  else if (a3 == -1)
  {
    return 1;
  }

  else
  {
    if (a3)
    {
      v11 %= a3;
    }

    return v11 == 0;
  }

  return result;
}

uint64_t sub_27541004C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2754412B4(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2753F161C(v4, v8);
      sub_2753F1680(0, &qword_2809DAEF0);
      sub_2753F1680(0, &qword_2809DADD0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2754412B4(v5 > 1, v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2753F16E0(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_27541018C(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 + 64);
  v19[3] = &_s12SongBarRangeVN;
  v19[4] = &off_288412CB0;
  v19[0] = swift_allocObject();
  sub_2753F1548(a1, v19[0] + 16);
  sub_2753F6FF0(v19, v6, __src);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    v7 = sub_27540B08C(__src);
    v8 = *__src;
    sub_27540B090(v19, v7);
    if (*v19 <= v8)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_19;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Stable candidate bar range: None. Stable suffix duration zero.";
    }

    else
    {
      if (sub_2754104D0(__dst, a2))
      {
        memcpy(a3, __dst, 0x50uLL);
        return;
      }

      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v18 = sub_27546E3E0();
      __swift_project_value_buffer(v18, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_19;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Stable candidate bar range: None. Beats not stable.";
    }

    _os_log_impl(&dword_2753EC000, v14, v15, v17, v16, 2u);
    MEMORY[0x277C78090](v16, -1, -1);
LABEL_19:

    sub_2753F15A4(__dst);
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    return;
  }

  sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v9 = sub_27546E3E0();
  __swift_project_value_buffer(v9, qword_2809F3C00);
  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2753EC000, v10, v11, "Stable candidate bar range: None. Stable suffix not identified.", v12, 2u);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
}

uint64_t sub_2754104D0(uint64_t a1, uint64_t a2)
{
  v4 = (sub_2753F7698)();
  v6 = v5;
  v7 = sub_2753F7698(v4);
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 - v7 < 1)
  {
    if (qword_2809DACB0 == -1)
    {
LABEL_9:
      v29 = sub_27546E3E0();
      __swift_project_value_buffer(v29, qword_2809F3C00);
      v30 = sub_27546E3C0();
      v31 = sub_27546E6E0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2753EC000, v30, v31, "Beats are stable: True. No beats in candidate bar range.", v32, 2u);
        MEMORY[0x277C78090](v32, -1, -1);
      }

      return 1;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v8 = sub_27540B08C(v35);
  v9 = *v35;
  v10 = sub_27540B090(&v34, v8);
  v11 = v34;
  v12 = sub_2753F7698(v10);
  v14 = v13;
  v15 = sub_2753F7698(v12);
  if (__OFSUB__(v14, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = (v11 - v9) / (v14 - v15);
  v17 = *(a2 + 8);
  MEMORY[0x28223BE20]();
  v33[2] = a1;

  sub_2754244F0(sub_2754155E0, v33, v17);
  v19 = v18;

  v20 = sub_27544FBA0(1, v19);
  v35[0] = v19;
  v35[1] = v20;
  v35[2] = v21;
  v35[3] = v22;
  v35[4] = v23;
  v24 = sub_27540CC04(v35);
  swift_unknownObjectRelease();

  v25 = *(v24 + 16);
  v26 = 32;
  while (v25)
  {
    v27 = vabdd_f64(*(v24 + v26), v16);
    v26 += 8;
    --v25;
    if (v27 > 0.031)
    {

      return 0;
    }
  }

  return 1;
}

BOOL sub_275410704(void *a1)
{
  v2 = sub_2753F7698();
  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  return v7 >= v2 && v4 >= v7;
}

double sub_275410790@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_275409C88();
  v24[0] = v24[1];
  v6 = sub_2753F4414(v24, a2);
  v8 = sub_2753F3C88(v6, v7);
  if ((v9 & 1) == 0 && COERCE_DOUBLE(v8 & 0x7FFFFFFFFFFFFFFFLL) >= 1.0)
  {

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v19 = sub_27546E3E0();
    __swift_project_value_buffer(v19, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_22;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Non-silent outgoing candidate region: None. Fade rate is significant.";
LABEL_16:
    _os_log_impl(&dword_2753EC000, v14, v15, v17, v16, 2u);
    v20 = v16;
LABEL_21:
    MEMORY[0x277C78090](v20, -1, -1);
LABEL_22:

    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 80) = -1;
    return result;
  }

  v10 = COERCE_DOUBLE(sub_2753F3AF4(v6));
  v12 = v11;

  if (v12)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v13 = sub_27546E3E0();
    __swift_project_value_buffer(v13, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_22;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Non-silent outgoing candidate region: None. Average loudness not identified.";
    goto LABEL_16;
  }

  if (v10 <= -30.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v21 = sub_27546E3E0();
    __swift_project_value_buffer(v21, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v22 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v22))
    {
      goto LABEL_22;
    }

    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v10;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 0xC03E000000000000;
    _os_log_impl(&dword_2753EC000, v14, v22, "Non-silent outgoing candidate region: None. Average loudness is insignificant. Average loudness = %f. Maximum insignificant average loudness = %f.", v23, 0x16u);
    v20 = v23;
    goto LABEL_21;
  }

  sub_2753F1440(a1, a3);
  return result;
}

uint64_t sub_275410A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  for (i = MEMORY[0x277D84F90]; v6; --v6)
  {
    sub_2753F6E08(v7, __src);
    v9 = __src[3];
    v10 = __src[4];
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v11 = (*(v10 + 16))(v9, v10);
    v12 = v11 >= a1 && v11 <= a2;
    if (v12 && ((v13 = __src[8], v14 = __src[9], __swift_project_boxed_opaque_existential_1(&__src[5], __src[8]), v15 = (*(v14 + 16))(v13, v14), v15 >= a1) ? (v16 = v15 <= a2) : (v16 = 0), v16))
    {
      memcpy(v21, __src, sizeof(v21));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27544122C(0, *(i + 16) + 1, 1);
        i = v23;
      }

      v19 = *(i + 16);
      v18 = *(i + 24);
      if (v19 >= v18 >> 1)
      {
        sub_27544122C(v18 > 1, v19 + 1, 1);
        i = v23;
      }

      *(i + 16) = v19 + 1;
      memcpy((i + 80 * v19 + 32), v21, 0x50uLL);
    }

    else
    {
      sub_2753F7454(__src);
    }

    v7 += 80;
  }

  return i;
}

uint64_t sub_275410C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v48 = v1;
  if (v1)
  {
    v2 = a1 + 32;
    v3 = 0.0;
    while (1)
    {
      sub_2753F6E08(v2, v56);
      v4 = v57;
      v5 = v58;
      v6 = __swift_project_boxed_opaque_existential_1(v56, v57);
      v50 = v4;
      v51 = *(v5 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
      v8 = v50;
      v9 = v51;
      v10 = __swift_project_boxed_opaque_existential_1(v49, v50);
      v53 = v8;
      v11 = *(v9 + 8);
      v54 = v11;
      v12 = __swift_allocate_boxed_opaque_existential_1(v52);
      (*(*(v8 - 8) + 16))(v12, v10, v8);
      __swift_destroy_boxed_opaque_existential_1(v49);
      (*(v11 + 8))(&v55, v8, v11);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v13 = v55;
      v14 = v60;
      v15 = v61;
      v16 = __swift_project_boxed_opaque_existential_1(v59, v60);
      v50 = v14;
      v51 = *(v15 + 8);
      v17 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(*(v14 - 8) + 16))(v17, v16, v14);
      v18 = v50;
      v19 = v51;
      v20 = __swift_project_boxed_opaque_existential_1(v49, v50);
      v53 = v18;
      v21 = *(v19 + 8);
      v54 = v21;
      v22 = __swift_allocate_boxed_opaque_existential_1(v52);
      (*(*(v18 - 8) + 16))(v22, v20, v18);
      __swift_destroy_boxed_opaque_existential_1(v49);
      (*(v21 + 8))(v49, v18, v21);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v23 = *v49;
      v24 = v57;
      v25 = v58;
      v26 = __swift_project_boxed_opaque_existential_1(v56, v57);
      v53 = v24;
      v27 = *(v25 + 8);
      v54 = v27;
      v28 = __swift_allocate_boxed_opaque_existential_1(v52);
      (*(*(v24 - 8) + 16))(v28, v26, v24);
      v29 = (*(v27 + 16))(v24, v27);
      v30 = v60;
      v31 = v61;
      v32 = __swift_project_boxed_opaque_existential_1(v59, v60);
      v50 = v30;
      v33 = *(v31 + 8);
      v51 = v33;
      v34 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(*(v30 - 8) + 16))(v34, v32, v30);
      *&result = COERCE_DOUBLE((*(v33 + 16))(v30, v33));
      if (result < v29)
      {
        break;
      }

      v36 = result;
      __swift_destroy_boxed_opaque_existential_1(v49);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v37 = v57;
      v38 = v58;
      v39 = __swift_project_boxed_opaque_existential_1(v56, v57);
      v53 = v37;
      v40 = *(v38 + 8);
      v54 = v40;
      v41 = __swift_allocate_boxed_opaque_existential_1(v52);
      (*(*(v37 - 8) + 16))(v41, v39, v37);
      v42 = (*(v40 + 16))(v37, v40);
      v43 = v60;
      v44 = v61;
      v45 = __swift_project_boxed_opaque_existential_1(v59, v60);
      v50 = v43;
      v46 = *(v44 + 8);
      v51 = v46;
      v47 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(*(v43 - 8) + 16))(v47, v45, v43);
      *&result = COERCE_DOUBLE((*(v46 + 16))(v43, v46));
      if (result < v42)
      {
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1(v49);
      __swift_destroy_boxed_opaque_existential_1(v52);
      *&result = COERCE_DOUBLE(sub_2753F7454(v56));
      if (__OFSUB__(v36, v42))
      {
        goto LABEL_12;
      }

      v3 = v3 + 60.0 / ((v23 - v13) / (v36 - v42));
      v2 += 80;
      if (!--v1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    v3 = 0.0;
LABEL_9:
    *&result = v3 / v48;
  }

  return result;
}

void sub_275411100(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_275409E34();
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_2753F161C(&__dst[40], v34);
    v4 = v35;
    v5 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v6 = (*(v5 + 16))(v4, v5);
    v7 = sub_27540D3D4();
    if (v7 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v6 >= 2 * v7)
      {
        v8 = 2 * v7;
      }

      else
      {
        v8 = v6;
      }

      v9 = v35;
      v10 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v11 = (*(v10 + 16))(v9, v10);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
        v13 = *(a1 + 16);
        v14 = *(v13 + 16);
        v15 = v13 + 32;
        if (v14)
        {
          while (1)
          {
            sub_2753F161C(v15, v32);
            v16 = *(&v32[1] + 1);
            v17 = *&v32[2];
            __swift_project_boxed_opaque_existential_1(v32, *(&v32[1] + 1));
            if ((*(v17 + 16))(v16, v17) == v12)
            {
              break;
            }

            __swift_destroy_boxed_opaque_existential_1(v32);
            v15 += 40;
            if (!--v14)
            {
              goto LABEL_10;
            }
          }

          sub_2753F16E0(v32, __src);
          sub_2753F16E0(__src, v33);
          sub_2753F161C(v33, __src);
          sub_2753F161C(v34, &__src[2] + 8);
          sub_27541018C(__src, a1, v31);
          if (*(&v31[1] + 1))
          {
            sub_2753F15A4(__src);
            __swift_destroy_boxed_opaque_existential_1(v33);
            sub_2753F15A4(__dst);
            memcpy(v32, v31, sizeof(v32));
            memcpy(a2, v32, 0x50uLL);
            v26 = 1;
LABEL_27:
            *(a2 + 80) = v26;
            __swift_destroy_boxed_opaque_existential_1(v34);
            return;
          }

          sub_2754150C4(v31, &qword_2809DADC8, &_s12SongBarRangeVN);
          if (qword_2809DACB0 != -1)
          {
            swift_once();
          }

          v27 = sub_27546E3E0();
          __swift_project_value_buffer(v27, qword_2809F3C00);
          v28 = sub_27546E3C0();
          v29 = sub_27546E6E0();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&dword_2753EC000, v28, v29, "Doubled incoming candidate region: None. Scaled bar range not identified.", v30, 2u);
            MEMORY[0x277C78090](v30, -1, -1);
          }

          sub_2753F15A4(__src);
          __swift_destroy_boxed_opaque_existential_1(v33);
        }

        else
        {
LABEL_10:
          if (qword_2809DACB0 != -1)
          {
            swift_once();
          }

          v18 = sub_27546E3E0();
          __swift_project_value_buffer(v18, qword_2809F3C00);
          v19 = sub_27546E3C0();
          v20 = sub_27546E6D0();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_2753EC000, v19, v20, "Doubled incoming candidate region: None. Scaled start downbeat not identified.", v21, 2u);
            MEMORY[0x277C78090](v21, -1, -1);
          }
        }

        sub_2753F15A4(__dst);
        *a2 = 0u;
        a2[1] = 0u;
        a2[2] = 0u;
        a2[3] = 0u;
        a2[4] = 0u;
        v26 = -1;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
  if (qword_2809DACB0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v22 = sub_27546E3E0();
  __swift_project_value_buffer(v22, qword_2809F3C00);
  v23 = sub_27546E3C0();
  v24 = sub_27546E6D0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2753EC000, v23, v24, "Doubled incoming candidate region: None. Incoming bar range not identified.", v25, 2u);
    MEMORY[0x277C78090](v25, -1, -1);
  }

  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 80) = -1;
}

uint64_t sub_2754115B4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_275409D20();
  sub_2753F161C(&__src[2] + 8, v24);
  sub_2753EDF40(__src);
  sub_275409D20();
  v4 = sub_2753EDE30();
  sub_2753EDF40(__src);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v7 - v4 / 2;
  if (__OFSUB__(v7, v4 / 2))
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  v11 = v9 + 32;
  if (!v10)
  {
LABEL_5:
    if (qword_2809DACB0 == -1)
    {
LABEL_6:
      v14 = sub_27546E3E0();
      __swift_project_value_buffer(v14, qword_2809F3C00);
      v15 = sub_27546E3C0();
      v16 = sub_27546E6D0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2753EC000, v15, v16, "Halved incoming candidate region: None. Halved start beat not identified.", v17, 2u);
        MEMORY[0x277C78090](v17, -1, -1);
      }

      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
      a2[80] = -1;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  while (1)
  {
    sub_2753F161C(v11, &v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    if ((*(v13 + 16))(v12, v13) == v8)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v19);
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_5;
    }
  }

  sub_2753F16E0(&v19, __src);
  sub_2753F16E0(__src, v22);
  sub_2753F16E0(v22, __src);
  sub_2753F161C(v24, &__src[2] + 8);
  memcpy(a2, __src, 0x50uLL);
  a2[80] = 0;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_275411804(uint64_t a1)
{
  sub_275409D20();
  v2 = sub_2753EDE30();
  result = sub_2753EDF40(&v4);
  if (*(a1 + 169))
  {
    if (*(a1 + 169) != 1)
    {
      v2 /= 2;
    }

    return v2;
  }

  if (v2 + 0x4000000000000000 >= 0)
  {
    v2 *= 2;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_275411888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  sub_275409D20();
  sub_2753F161C(&__src[2] + 8, v28);
  sub_2753EDF40(__src);
  sub_275409D20();
  v6 = sub_2753EDE30();
  sub_2753EDF40(__src);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = v29;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v10 = (*(v9 + 16))(v8, v9);
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 16);
  v15 = v13 + 32;
  if (!v14)
  {
LABEL_8:
    if (qword_2809DACB0 == -1)
    {
LABEL_9:
      v18 = sub_27546E3E0();
      __swift_project_value_buffer(v18, qword_2809F3C00);
      v19 = sub_27546E3C0();
      v20 = sub_27546E6D0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2753EC000, v19, v20, "Truncated incoming candidate region: None. Truncated start beat not identified.", v21, 2u);
        MEMORY[0x277C78090](v21, -1, -1);
      }

      *(a3 + 3) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      a3[80] = -1;
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  while (1)
  {
    sub_2753F161C(v15, &v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    if ((*(v17 + 16))(v16, v17) == v12)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v15 += 40;
    if (!--v14)
    {
      goto LABEL_8;
    }
  }

  sub_2753F16E0(&v23, __src);
  sub_2753F16E0(__src, v26);
  sub_2753F16E0(v26, __src);
  sub_2753F161C(v28, &__src[2] + 8);
  memcpy(a3, __src, 0x50uLL);
  a3[80] = 0;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void sub_275411ADC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 169);
  if (v6 || a3 + 0x4000000000000000 >= 0)
  {
    sub_275411C88(a2, v11);
    if (v11[80] == 255)
    {
      sub_2754150C4(v11, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v7 = sub_27546E3E0();
      __swift_project_value_buffer(v7, qword_2809F3C00);
      v8 = sub_27546E3C0();
      v9 = sub_27546E6E0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2753EC000, v8, v9, "Shifted candidate region pair: None. Shifted incoming candidate region not identified.", v10, 2u);
        MEMORY[0x277C78090](v10, -1, -1);
      }

      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      *(a4 + 80) = 255;
      *(a4 + 88) = 0u;
      *(a4 + 104) = 0u;
      *(a4 + 120) = 0u;
      *(a4 + 136) = 0u;
      *(a4 + 152) = 0u;
      *(a4 + 168) = 0;
    }

    else
    {
      memcpy(__dst, v11, sizeof(__dst));
      sub_2753F1440(a1, a4);
      memcpy((a4 + 88), __dst, 0x51uLL);
      *(a4 + 169) = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275411C88@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_275409D20();
  sub_2753F161C(v14, v15);
  sub_2753EDF40(v14);
  sub_275409D20();
  sub_2753F161C(&v14[2] + 8, v13);
  sub_2753EDF40(v14);
  v4 = *(a1 + 8);
  sub_2753F8C78(sub_2754156C4, v4, v14);
  if (*(&v14[1] + 1))
  {
    v5 = sub_2753F16E0(v14, v12);
    MEMORY[0x28223BE20](v5);
    sub_2753F8C78(sub_275415580, v4, v14);
    if (*(&v14[1] + 1))
    {
      sub_2753F16E0(v14, v11);
      sub_2753F16E0(v12, v14);
      sub_2753F16E0(v11, &v14[2] + 8);
      memcpy(a2, v14, 0x50uLL);
      *(a2 + 80) = 0;
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  sub_2754154D8(v14, &qword_2809DB0A8, &qword_2809DADD8);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2753EC000, v7, v8, "Shifted candidate region: None. Shifted start and end beats not identified.", v9, 2u);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 80) = -1;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_275411F00(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = OUTLINED_FUNCTION_18_0();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v12 = *(v9 + 16);
  v13 = OUTLINED_FUNCTION_10_3();
  result = v14(v13);
  if (!__OFADD__(result, a3))
  {
    return v7 == result + a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_275411FAC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 112))(v2, v3);
  if ((v4 & 0xFF000000) == 0x3000000)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v5 = sub_27546E3E0();
    __swift_project_value_buffer(v5, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6E0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Tonality relationship: Incompatible. Outgoing tonality not available.";
LABEL_11:
    _os_log_impl(&dword_2753EC000, v6, v7, v9, v8, 2u);
    MEMORY[0x277C78090](v8, -1, -1);
LABEL_12:

    return 3;
  }

  v10 = HIWORD(v4);
  v11 = a1[8];
  v12 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  v13 = (*(v12 + 112))(v11, v12);
  if ((v13 & 0xFF000000) == 0x3000000)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v14 = sub_27546E3E0();
    __swift_project_value_buffer(v14, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6E0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Tonality relationship: Incompatible. Incoming tonality not available.";
    goto LABEL_11;
  }

  return sub_2753FCB58(v10, SHIWORD(v13));
}

BOOL sub_2754121D4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 136))(&v8, v1, v2);
  if (v10)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v3 = sub_27546E3E0();
    __swift_project_value_buffer(v3, qword_2809F3C00);
    v4 = sub_27546E3C0();
    v5 = sub_27546E6E0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2753EC000, v4, v5, "Melodicness is insignificant: False. Melodicness not available.", v6, 2u);
      MEMORY[0x277C78090](v6, -1, -1);
    }

    return 0;
  }

  else
  {
    return v9 > 1.0 || v9 < 0.25;
  }
}

void sub_275412310(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, char a9, char a10)
{
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  v11 = a10;
  sub_275412380(a2, a3, a4, a5, a6, a7, a9, &v11, a8, v12);
}

void sub_275412380(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v70 = *a8;
  if (*(a10 + 32))
  {
    v17 = 8;
  }

  else
  {
    v17 = a10[3];
  }

  sub_275412B04(a1, a2, a4, v17, __src);
  if (__src[80] == 0xFF)
  {
    sub_2754150C4(__src, &qword_2809DB078, &_s27StructuredStylingRegionPairVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v18 = sub_27546E3E0();
    __swift_project_value_buffer(v18, qword_2809F3C00);
    v19 = sub_27546E3C0();
    v20 = sub_27546E6C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2753EC000, v19, v20, "Candidate result: None. Candidate style region pair not identified.", v21, 2u);
      MEMORY[0x277C78090](v21, -1, -1);
    }

    goto LABEL_48;
  }

  memcpy(__dst, __src, 0xAAuLL);
  v22 = *a10;
  if (*a10 == 12)
  {
    sub_275411ADC(__dst, a4, 16, __src);
    if (__src[80] != 0xFF)
    {
      memcpy(v74, __src, 0xAAuLL);
      v53 = sub_2754142BC(v74, a2, a4, 0);
      v54 = 1.0;
      v55 = 0.0;
      if (sub_2754142BC(v74, a2, a4, 1) <= 0xFBu)
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.0;
      }

      if (v53 <= 0xFB)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = v56;
      }

      v58 = sub_275413B2C(v74);
      if (sub_275413DFC(v58, v59 & 1))
      {
        v55 = 1.0;
      }

      if (sub_275413190(&v74[88], a4, a5))
      {
        v60 = 0.75;
      }

      else
      {
        v60 = 1.0;
      }

      v61 = COERCE_DOUBLE(sub_275413664(&v74[88], a5, a6));
      if ((v62 & 1) == 0)
      {
        v54 = v61;
      }

      sub_275415488(0, &qword_2809DB080, &_s12StylingScoreVN, MEMORY[0x277D84560]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_275474510;
      *(v63 + 32) = v57;
      *(v63 + 40) = v55;
      *(v63 + 48) = v60;
      *(v63 + 56) = v54;
      sub_275409520(v74, __src);
      v73 = 0;
      sub_2753EF3C8(__src, v71);
      sub_27540B51C(v71, 1);
      sub_27540B644(v63, v64, 10.0);
      v66 = v65;
      sub_275409AE4(__src);
      sub_2754151F0();
      v67 = sub_27546E4A0();
      sub_2753F13EC(__dst);
      v68 = a10[6];
      *__src = a10[5];
      v71[0] = v68;
      memcpy(a9 + 72, v74, 0xAAuLL);
      a9[242] = 0;
      *a9 = v70;
      v69 = *(a10 + 1);
      *(a9 + 8) = *a10;
      *(a9 + 24) = v69;
      *(a9 + 40) = *(a10 + 2);
      *(a9 + 7) = a10[6];
      *(a9 + 8) = v67;
      *(a9 + 31) = v66;
      sub_275415244(__src, v74);
      v48 = v74;
      goto LABEL_40;
    }

    sub_2754150C4(__src, &qword_2809DB078, &_s27StructuredStylingRegionPairVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v49 = sub_27546E3E0();
    __swift_project_value_buffer(v49, qword_2809F3C00);
    v50 = sub_27546E3C0();
    v51 = sub_27546E6C0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2753EC000, v50, v51, "Expanded tempo range candidateResult: None. Shifted candidate region pair not identified.", v52, 2u);
      MEMORY[0x277C78090](v52, -1, -1);
    }
  }

  else
  {
    if (v22 == 9)
    {
      v33 = 1.0;
      v34 = 0.0;
      if (sub_2754142BC(__dst, a2, a4, 0) <= 0xFBu)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.0;
      }

      if (a7)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = sub_275413B2C(__dst);
      if (sub_275413DFC(v37, v38 & 1))
      {
        v39 = 1.0;
      }

      else
      {
        v39 = 0.0;
      }

      if ((sub_275413FAC(__dst, a2, a3, a4, a5) & 1) == 0)
      {
        v34 = 1.0;
      }

      if (sub_275413190(&__dst[88], a4, a5))
      {
        v40 = 0.75;
      }

      else
      {
        v40 = 1.0;
      }

      v41 = COERCE_DOUBLE(sub_275413664(&__dst[88], a5, a6));
      if ((v42 & 1) == 0)
      {
        v33 = v41;
      }

      sub_275415488(0, &qword_2809DB080, &_s12StylingScoreVN, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_275476D60;
      *(v30 + 32) = v35;
      *(v30 + 40) = v36;
      *(v30 + 48) = v39;
      *(v30 + 56) = v34;
      *(v30 + 64) = v40;
      *(v30 + 72) = v33;
      sub_275409520(__dst, __src);
      v73 = 0;
      sub_2753EF3C8(__src, v71);
      sub_27540B51C(v71, 1);
      v32 = 15.0;
      goto LABEL_39;
    }

    if (v22 == 8)
    {
      v23 = 1.0;
      if (sub_2754142BC(__dst, a2, a4, 0) <= 0xFBu)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      if (sub_275413190(&__dst[88], a4, a5))
      {
        v25 = 0.75;
      }

      else
      {
        v25 = 1.0;
      }

      sub_275413504(__dst);
      v27 = v26;
      v28 = COERCE_DOUBLE(sub_275413664(&__dst[88], a5, a6));
      if ((v29 & 1) == 0)
      {
        v23 = v28;
      }

      sub_275415488(0, &qword_2809DB080, &_s12StylingScoreVN, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_275474510;
      *(v30 + 32) = v24;
      *(v30 + 40) = v25;
      *(v30 + 48) = v27;
      *(v30 + 56) = v23;
      sub_275409520(__dst, __src);
      v73 = 0;
      sub_2753EF3C8(__src, v71);
      sub_27540B51C(v71, 1);
      v32 = 10.0;
LABEL_39:
      sub_27540B644(v30, v31, v32);
      v44 = v43;
      sub_275409AE4(__src);
      sub_2754151F0();
      v45 = sub_27546E4A0();
      v46 = a10[6];
      *__src = a10[5];
      v71[0] = v46;
      memcpy(a9 + 72, __dst, 0xAAuLL);
      a9[242] = 0;
      *a9 = v70;
      v47 = *(a10 + 1);
      *(a9 + 8) = *a10;
      *(a9 + 24) = v47;
      *(a9 + 40) = *(a10 + 2);
      *(a9 + 7) = a10[6];
      *(a9 + 8) = v45;
      *(a9 + 31) = v44;
      sub_275415244(__src, __dst);
      v48 = __dst;
LABEL_40:
      sub_275415244(v71, v48);
      return;
    }
  }

  sub_2753F13EC(__dst);
LABEL_48:
  bzero(a9, 0x100uLL);
}

void sub_275412B04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_275412E0C(a2, a4, __src);
  if (__src[80] == 255)
  {
    sub_2754150C4(__src, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v10 = sub_27546E3E0();
    __swift_project_value_buffer(v10, qword_2809F3C00);
    v11 = sub_27546E3C0();
    v12 = sub_27546E6C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2753EC000, v11, v12, "Candidate style region pair: None. Candidate style outgoing region not identified.", v13, 2u);
      MEMORY[0x277C78090](v13, -1, -1);
    }

    v14 = 0uLL;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
LABEL_19:
    *(a5 + 80) = 255;
    *(a5 + 88) = v14;
    *(a5 + 104) = v14;
    *(a5 + 120) = v14;
    *(a5 + 136) = v14;
    *(a5 + 152) = v14;
    *(a5 + 168) = 0;
    return;
  }

  memcpy(__dst, __src, 0x51uLL);
  sub_275409D20();
  v8 = sub_2753EDE30();
  sub_2753EDF40(__src);
  v9 = *(a1 + 169);
  if (*(a1 + 169))
  {
    if (v9 != 1)
    {
      v8 /= 2;
    }

    goto LABEL_12;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    v8 *= 2;
LABEL_12:
    sub_275411888(a3, v8, v19);
    if (v19[80] != 255)
    {
      memcpy(__src, v19, 0x51uLL);
      memcpy(a5, __dst, 0x51uLL);
      memcpy((a5 + 88), __src, 0x51uLL);
      *(a5 + 169) = v9;
      return;
    }

    sub_2754150C4(v19, &qword_2809DB0A0, &_s23StructuredStylingRegionVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2753EC000, v16, v17, "Candidate style region pair: None. Candidate style incoming region not identified.", v18, 2u);
      MEMORY[0x277C78090](v18, -1, -1);
    }

    sub_2753F1398(__dst);
    v14 = 0uLL;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_275412E0C(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  sub_275409E34();
  if (!*(&__src[1] + 1))
  {
    sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 == -1)
    {
LABEL_7:
      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6C0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2753EC000, v14, v15, "Candidate style outgoing region: None. Outgoing bar range not identified.", v16, 2u);
        MEMORY[0x277C78090](v16, -1, -1);
      }

      *(a3 + 3) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_7;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v6 = __dst[8];
  v7 = __dst[9];
  __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = __dst[3];
  v10 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v12 <= 0)
  {
    if (v11 <= 0)
    {
      v12 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v12 = v11;
    goto LABEL_13;
  }

  if (v12 < v11)
  {
    goto LABEL_11;
  }

LABEL_13:
  v17 = *(a1 + 16);
  v18 = *(v17 + 16);
  v19 = v17 + 32;
  if (!v18)
  {
LABEL_16:
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v22 = sub_27546E3E0();
    __swift_project_value_buffer(v22, qword_2809F3C00);
    v23 = sub_27546E3C0();
    v24 = sub_27546E6D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2753EC000, v23, v24, "Candidate style outgoing region: None. Style outgoing start beat not identified.", v25, 2u);
      MEMORY[0x277C78090](v25, -1, -1);
    }

    sub_2753F15A4(__dst);
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
LABEL_21:
    a3[80] = -1;
    return;
  }

  while (1)
  {
    sub_2753F161C(v19, &v26);
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    if ((*(v21 + 16))(v20, v21) == v12)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v19 += 40;
    if (!--v18)
    {
      goto LABEL_16;
    }
  }

  sub_2753F16E0(&v26, __src);
  sub_2753F16E0(__src, v29);
  sub_2753F16E0(v29, __src);
  sub_2753F161C(&__dst[5], &__src[2] + 8);
  memcpy(a3, __src, 0x50uLL);
  a3[80] = 1;
  sub_2753F15A4(__dst);
}

uint64_t sub_275413190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v9 = sub_27546E3E0();
    __swift_project_value_buffer(v9, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6C0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Leading incoming vocal activity is significant: False. Incoming vocal activity map not available.";
    goto LABEL_16;
  }

  sub_275414E7C(a2, &v21);
  if (v22)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v4 = sub_27546E3E0();
    __swift_project_value_buffer(v4, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6C0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Leading incoming vocal activity is significant: False. Leading song time range not identified.";
LABEL_16:
    _os_log_impl(&dword_2753EC000, v5, v6, v8, v7, 2u);
    MEMORY[0x277C78090](v7, -1, -1);
LABEL_17:

    return 0;
  }

  v10 = sub_2753FD218(&v21, a3);
  if (v10 == 5)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6C0();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_17;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Leading incoming vocal activity is significant: False. Leading vocal activity strength not identified.";
    goto LABEL_16;
  }

  if (v10 < 3u)
  {
    return 0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v13 = sub_27546E3E0();
  __swift_project_value_buffer(v13, qword_2809F3C00);
  v14 = sub_27546E3C0();
  v15 = sub_27546E6C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v21 = v17;
    *v16 = 136315138;
    v18 = sub_27546E540();
    v20 = sub_275446968(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2753EC000, v14, v15, "Leading incoming vocal activity is significant: True. Leading vocal activity strength = %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C78090](v17, -1, -1);
    MEMORY[0x277C78090](v16, -1, -1);
  }

  return 1;
}

void sub_275413504(uint64_t a1)
{
  sub_275409E34();
  if (v7[3])
  {
    v2 = sub_27540D3D4();
    sub_2753F15A4(v7);
    if (*(a1 + 169) && *(a1 + 169) != 1 && v2 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }
  }

  else
  {
    sub_2754150C4(v7, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v3 = sub_27546E3E0();
    __swift_project_value_buffer(v3, qword_2809F3C00);
    v4 = sub_27546E3C0();
    v5 = sub_27546E6C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2753EC000, v4, v5, "Incoming bar count score: Zero. Incoming bar count not identified.", v6, 2u);
      MEMORY[0x277C78090](v6, -1, -1);
    }
  }
}

uint64_t sub_275413664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v13 = sub_27546E3E0();
    __swift_project_value_buffer(v13, qword_2809F3C00);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6C0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Trailing incoming loudness ratio: None. Incoming vocal activity map not available.";
    goto LABEL_16;
  }

  if (!a3)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v14 = sub_27546E3E0();
    __swift_project_value_buffer(v14, qword_2809F3C00);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6C0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Trailing incoming loudness ratio: None. Incoming loudness map not available.";
    goto LABEL_16;
  }

  sub_275409C88();
  v4 = sub_2753F4414(&v29, a3);
  v5 = COERCE_DOUBLE(sub_2753F3AF4(v4));
  v7 = v6;

  if (v7)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v8 = sub_27546E3E0();
    __swift_project_value_buffer(v8, qword_2809F3C00);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6C0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Trailing incoming loudness ratio: None. Region loudness not identified.";
LABEL_16:
    _os_log_impl(&dword_2753EC000, v9, v10, v12, v11, 2u);
    MEMORY[0x277C78090](v11, -1, -1);
LABEL_17:

LABEL_18:
    *&result = 0.0;
    return result;
  }

  v16 = v5;
  if (v5 >= 0.0)
  {
    if (qword_2809DACB0 == -1)
    {
LABEL_27:
      v23 = sub_27546E3E0();
      __swift_project_value_buffer(v23, qword_2809F3C00);
      v24 = sub_27546E3C0();
      v25 = sub_27546E6C0();
      if (!os_log_type_enabled(v24, v25))
      {
LABEL_30:

        goto LABEL_18;
      }

      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v5;
      v27 = "Trailing incoming loudness ratio: None. Region loudness not negative. Region loudness = %f.";
LABEL_29:
      _os_log_impl(&dword_2753EC000, v24, v25, v27, v26, 0xCu);
      MEMORY[0x277C78090](v26, -1, -1);
      goto LABEL_30;
    }

LABEL_38:
    swift_once();
    goto LABEL_27;
  }

  v17 = sub_27540A9DC();
  sub_275409C88();
  if (v17 + v30 < v30)
  {
    __break(1u);
    goto LABEL_38;
  }

  v29 = v30;
  v30 = v17 + v30;
  v18 = sub_2753F4414(&v29, a3);
  v19 = COERCE_DOUBLE(sub_2753F3AF4(v18));
  v21 = v20;

  if (v21)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v22 = sub_27546E3E0();
    __swift_project_value_buffer(v22, qword_2809F3C00);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6C0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Trailing incoming loudness ratio: None. Trailing loudness not identified.";
    goto LABEL_16;
  }

  if (v19 >= 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v28 = sub_27546E3E0();
    __swift_project_value_buffer(v28, qword_2809F3C00);
    v24 = sub_27546E3C0();
    v25 = sub_27546E6C0();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_30;
    }

    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v19;
    v27 = "Trailing incoming loudness ratio: None. Trailing loudness not negative. Trailing loudness = %f.";
    goto LABEL_29;
  }

  *&result = v16 / v19;
  return result;
}

uint64_t sub_275413B2C(uint64_t a1)
{
  sub_275409E34();
  if (!v13)
  {
    sub_2754150C4(v12, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v5 = sub_27546E3E0();
    __swift_project_value_buffer(v5, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6C0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_22;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Matching bar count: None. Outgoing bar count not identified.";
    goto LABEL_21;
  }

  v2 = sub_27540D3D4();
  sub_2753F15A4(v12);
  sub_275409E34();
  if (!v13)
  {
    sub_2754150C4(v12, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v10 = sub_27546E3E0();
    __swift_project_value_buffer(v10, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6C0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_22;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Matching bar count: None. Incoming bar count not identified.";
    goto LABEL_21;
  }

  v3 = sub_27540D3D4();
  result = sub_2753F15A4(v12);
  if (!*(a1 + 169))
  {
    v3 /= 2;
    goto LABEL_16;
  }

  if (*(a1 + 169) == 1)
  {
LABEL_16:
    if (v3 == v2)
    {
      return v2;
    }

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6C0();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_22:

      return 0;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Matching bar count: None. Scaled incoming bar count does not match outgoing bar count.";
LABEL_21:
    _os_log_impl(&dword_2753EC000, v6, v7, v9, v8, 2u);
    MEMORY[0x277C78090](v8, -1, -1);
    goto LABEL_22;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
    v3 *= 2;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_275413DFC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v2 = sub_27546E3E0();
    __swift_project_value_buffer(v2, qword_2809F3C00);
    v3 = sub_27546E3C0();
    v4 = sub_27546E6C0();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Matching bar count compatibility: Incompatible. Matching bar count not identified.";
    v7 = v4;
    v8 = v3;
    v9 = v5;
    v10 = 2;
LABEL_11:
    _os_log_impl(&dword_2753EC000, v8, v7, v6, v9, v10);
    MEMORY[0x277C78090](v5, -1, -1);
LABEL_12:

    return 0;
  }

  if (a1 <= 7)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v12 = sub_27546E3E0();
    __swift_project_value_buffer(v12, qword_2809F3C00);
    v3 = sub_27546E3C0();
    v13 = sub_27546E6C0();
    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = a1;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 8;
    v6 = "Matching bar count compatibility: Incompatible. Matching bar count = %ld. Minimum compatible matching bar count = %ld.";
    v7 = v13;
    v8 = v3;
    v9 = v5;
    v10 = 22;
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_275413FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6C0();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Vocal activity relationship: Incompatible. Outgoing vocal activity map not available.";
    goto LABEL_16;
  }

  if (!a5)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v30 = sub_27546E3E0();
    __swift_project_value_buffer(v30, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6C0();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Vocal activity relationship: Incompatible. Incoming vocal activity map not available.";
LABEL_16:
    _os_log_impl(&dword_2753EC000, v26, v27, v29, v28, 2u);
    MEMORY[0x277C78090](v28, -1, -1);
LABEL_17:

    v24 = 1;
    return v24 & 1;
  }

  v9 = *(a2 + 8);
  v33 = MEMORY[0x28223BE20](a1);

  sub_2754244F0(sub_2754152A0, v32, v9);
  v11 = v10;
  v12 = *(a1 + 169);
  if (v12 >= 2)
  {
    sub_275414B34(v10);
    v14 = v13;

    v11 = v14;
  }

  v15 = *(a4 + 8);
  MEMORY[0x28223BE20](v10);
  v33 = v16;

  sub_2754244F0(sub_2754156E0, v32, v15);
  v18 = v17;
  if (!v12)
  {
    sub_275414B34(v17);
    v20 = v19;

    v18 = v20;
  }

  v21 = sub_2754149F0(v11, a3);

  v22 = sub_2754149F0(v18, a5);

  sub_2753FD568(v21, v22);
  v24 = v23;

  return v24 & 1;
}

uint64_t sub_2754142BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_275414744(a2, &v38);
  if (!v39)
  {
    sub_2754154D8(&v38, &qword_2809DAED8, &qword_2809DADD0);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v21 = sub_27546E3E0();
    __swift_project_value_buffer(v21, qword_2809F3C00);
    v22 = sub_27546E3C0();
    v23 = sub_27546E6C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2753EC000, v22, v23, "Tempo relationship: Incompatible. Outgoing start downbeat not identified.", v24, 2u);
      MEMORY[0x277C78090](v24, -1, -1);
    }

    return 252;
  }

  sub_2753F16E0(&v38, v41);
  sub_275414744(a3, &v36);
  if (!v37)
  {
    sub_2754154D8(&v36, &qword_2809DAED8, &qword_2809DADD0);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2753EC000, v26, v27, "Tempo relationship: Incompatible. Incoming start downbeat not identified.", v28, 2u);
      MEMORY[0x277C78090](v28, -1, -1);
    }

    goto LABEL_28;
  }

  sub_2753F16E0(&v36, &v38);
  v7 = v42;
  v8 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = v39;
  v11 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, v39);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = sub_2753F6F90(v9, *(a2 + 64));
  if (v14 == -1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v29 = sub_27546E3E0();
    __swift_project_value_buffer(v29, qword_2809F3C00);
    v30 = sub_27546E3C0();
    v31 = sub_27546E6C0();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_27;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Tempo relationship: Incompatible. Outgoing start tempo not identified.";
    goto LABEL_26;
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_2753F6F90(v12, *(a3 + 64));
  if (v18 == -1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v34 = sub_27546E3E0();
    __swift_project_value_buffer(v34, qword_2809F3C00);
    v30 = sub_27546E3C0();
    v31 = sub_27546E6C0();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_27;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Tempo relationship: Incompatible. Incoming start tempo not identified.";
LABEL_26:
    _os_log_impl(&dword_2753EC000, v30, v31, v33, v32, 2u);
    MEMORY[0x277C78090](v32, -1, -1);
LABEL_27:

    __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v41);
    return 252;
  }

  v19 = 0.16;
  if (a4)
  {
    v19 = 0.287;
  }

  v20 = sub_2753F7FF0(v15, v16 & 1, v17, v18 & 1, v19);
  __swift_destroy_boxed_opaque_existential_1(&v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v20;
}

uint64_t sub_275414744@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275409E34();
  if (__src[3])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_2753F161C(__dst, a2);
    return sub_2753F15A4(__dst);
  }

  else
  {
    sub_2754150C4(__src, &qword_2809DADC8, &_s12SongBarRangeVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v5 = sub_27546E3E0();
    __swift_project_value_buffer(v5, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2753EC000, v6, v7, "Start downbeat: Using beat range rather than bar range.", v8, 2u);
      MEMORY[0x277C78090](v8, -1, -1);
    }

    v9 = sub_275409D20();
    v10 = *(a1 + 16);
    MEMORY[0x28223BE20](v9);
    v15[2] = __dst;
    __src[0] = v11;
    v12 = sub_2753FC200(sub_275415468, v15, v11);
    MEMORY[0x28223BE20](v12);
    sub_2753FC2C0(sub_2753FC34C, v14, v13 & 1, a2);
    return sub_2753EDF40(__dst);
  }
}

BOOL sub_275414950(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = (*(*(v3 + 8) + 16))(v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return (*(v7 + 16))(v6, v7) >= v5;
}

uint64_t sub_2754149F0(uint64_t a1, uint64_t a2)
{

  v17[0] = a1;
  v17[1] = sub_27544FBA0(1, a1);
  v17[2] = v4;
  v17[3] = v5;
  v17[4] = v6;

  v7 = sub_27540CFE4(v17);
  swift_unknownObjectRelease();

  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2754419FC(0, v8, 0);
    v9 = 32;
    v10 = v16;
    do
    {
      *v15 = *(v7 + v9);
      v11 = sub_2753FD218(v15, a2);
      v16 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2754419FC((v12 > 1), v13 + 1, 1);
        v10 = v16;
      }

      *(v10 + 16) = v13 + 1;
      *(v10 + v13 + 32) = v11;
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

void sub_275414B34(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    *&v18 = v1;
    sub_2753F161C(v3, &v18 + 8);
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (v1)
    {
      sub_275415334(&v21, sub_275415388);
    }

    else
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2754419DC(0, *(v5 + 16) + 1, 1);
        v5 = v24;
      }

      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2754419DC((v7 > 1), v8 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v8 + 1;
      v9 = (v5 + 48 * v8);
      v10 = v18;
      v11 = v20;
      v9[3] = v19;
      v9[4] = v11;
      v9[2] = v10;
    }

    v3 += 40;
    ++v1;
  }

  v12 = *(v5 + 16);
  if (v12)
  {
    v24 = v4;
    sub_27544125C(0, v12, 0);
    v13 = 0;
    v14 = v24;
    v15 = v5 + 32;
    while (v13 < *(v5 + 16))
    {
      sub_275415404(v15, &v21);
      sub_2753F161C(&v21 + 8, &v18);
      sub_275415334(&v21, sub_275415388);
      v24 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27544125C(v16 > 1, v17 + 1, 1);
        v14 = v24;
      }

      ++v13;
      *(v14 + 16) = v17 + 1;
      sub_2753F16E0(&v18, v14 + 40 * v17 + 32);
      v15 += 48;
      if (v12 == v13)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_275414D6C(void *a1)
{
  sub_275409D20();
  v2 = v14;
  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = (*(v3 + 16))(v2, v3);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  result = (*(v6 + 16))(v5, v6);
  if (result < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    sub_2753EDF40(v13);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 16))(v9, v10);
    return v11 >= v4 && v8 >= v11;
  }

  return result;
}

void sub_275414E7C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_275409D20();
  sub_2753F161C(v25, &v22);
  sub_2753EDF40(v25);
  v4 = v23;
  v5 = v24;
  __swift_project_boxed_opaque_existential_1(&v22, v23);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (__OFSUB__(v6, 4))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (!v8)
  {
LABEL_5:
    if (qword_2809DACB0 == -1)
    {
LABEL_6:
      v12 = sub_27546E3E0();
      __swift_project_value_buffer(v12, qword_2809F3C00);
      v13 = sub_27546E3C0();
      v14 = sub_27546E6C0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2753EC000, v13, v14, "Leading incoming vocal activity song time range: None. Last leading beat not identified.", v15, 2u);
        MEMORY[0x277C78090](v15, -1, -1);
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  while (1)
  {
    sub_2753F161C(v9, &v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    if ((*(v11 + 16))(v10, v11) == v6 - 4)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v19);
    v9 += 40;
    if (!--v8)
    {
      goto LABEL_5;
    }
  }

  sub_2753F16E0(&v19, &v22);
  sub_2753F16E0(&v22, v25);
  v17 = v26;
  v16 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(*(v16 + 8) + 8))(&v22, v17);
  v18 = v22;
  if (*&v22 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v18;
    *(a2 + 16) = 0;
    __swift_destroy_boxed_opaque_existential_1(v25);
  }
}

uint64_t sub_2754150C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_275415488(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_2_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

double sub_275415128@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  result = sub_27540D4F4(*a1, a3, v11);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v10 = v11[1];
    *a5 = v11[0];
    *(a5 + 16) = v10;
    result = *&v12;
    *(a5 + 32) = v12;
    *(a5 + 48) = v13;
  }

  return result;
}

unint64_t sub_2754151F0()
{
  result = qword_2809DB088;
  if (!qword_2809DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB088);
  }

  return result;
}

void sub_2754152C0()
{
  if (!qword_2809DB090)
  {
    sub_2753F1680(255, &qword_2809DADD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB090);
    }
  }
}

uint64_t sub_275415334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_275415388()
{
  if (!qword_2809DB098)
  {
    sub_2753F1680(255, &qword_2809DADD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB098);
    }
  }
}

uint64_t sub_275415404(uint64_t a1, uint64_t a2)
{
  sub_275415388();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_275415488(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2754154D8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_275415528(0, a2, a3);
  OUTLINED_FUNCTION_2_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_275415528(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2753F1680(255, a3);
    v4 = sub_27546E6F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2754155A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

BOOL OUTLINED_FUNCTION_1_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  result = v1 + 16;
  v3 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x277C78090);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return sub_2754150C4(v0 + 1040, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2754150C4(v0 + 968, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_2()
{
  result = v0 + 16;
  v3 = *(v1 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_2()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;

  return sub_275409520(v0 + 360, v0 + 104);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(uint64_t a1@<X8>)
{

  return sub_275446968(0xD000000000000020, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_22_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{

  return sub_275446968(a1, v2 | 0x8000000000000000, (v1 + 360));
}

uint64_t OUTLINED_FUNCTION_24_0()
{
}

uint64_t sub_275415938(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v195 = *a2;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_16_1();
  v11 = v10(v9);
  v12 = *(v6 + 72);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_16_1();
  v16 = v15(v14);
  v17 = *(v6 + 24);
  v18 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v17);
  v19 = *(v18 + 104);
  v20 = OUTLINED_FUNCTION_16_1();
  v22 = v21(v20);
  if (!v22)
  {
    OUTLINED_FUNCTION_23_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v38 = sub_27546E3E0();
    __swift_project_value_buffer(v38, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6E0();
    if (!OUTLINED_FUNCTION_12_3(v27))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_8_5();
    v28 = OUTLINED_FUNCTION_21_1();
    __dst[0] = v28;
    v39 = OUTLINED_FUNCTION_6_7(4.8149e-34);
    switch(v47)
    {
      case 1:
      case 2:
        v39 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v39 = 0x2809DA003uLL;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v39, v40, v41, v42, v43, v44, v45, v46, v190, v192, v193, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    *(v17 + 4) = 0x2809DA000uLL;
    v66 = "%s: No candidate result. Outgoing loudness map not available.";
    goto LABEL_33;
  }

  v23 = v22;
  if (sub_275416844(v22, v11))
  {

    OUTLINED_FUNCTION_23_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6E0();
    if (!OUTLINED_FUNCTION_12_3(v27))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_8_5();
    v28 = OUTLINED_FUNCTION_21_1();
    __dst[0] = v28;
    v29 = OUTLINED_FUNCTION_6_7(4.8149e-34);
    switch(v37)
    {
      case 1:
      case 2:
        v29 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v29 = 0x2809DA003uLL;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v29, v30, v31, v32, v33, v34, v35, v36, v190, v192, v193, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    *(v17 + 4) = 0x2809DA000uLL;
    v66 = "%s: No candidate result. Outgoing loudness map duration delta significant.";
LABEL_33:
    _os_log_impl(&dword_2753EC000, v26, v27, v66, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_7_3();
LABEL_34:

    return MEMORY[0x277D84F90];
  }

  v17 = sub_275416A0C(v23, v11);

  sub_275416B20(v17, __dst);

  if (__dst[2])
  {
    OUTLINED_FUNCTION_23_1();
    if (!v24)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v48 = sub_27546E3E0();
    __swift_project_value_buffer(v48, qword_2809F3C00);
    v26 = sub_27546E3C0();
    v27 = sub_27546E6E0();
    if (!OUTLINED_FUNCTION_12_3(v27))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_8_5();
    v28 = OUTLINED_FUNCTION_21_1();
    __dst[0] = v28;
    v49 = OUTLINED_FUNCTION_6_7(4.8149e-34);
    switch(v57)
    {
      case 1:
      case 2:
        v49 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v49 = 0x2809DA003uLL;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v49, v50, v51, v52, v53, v54, v55, v56, v190, v192, v193, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    *(v17 + 4) = 0x2809DA000uLL;
    v66 = "%s: No candidate result. Outgoing start sample not identified.";
    goto LABEL_33;
  }

  v59 = __dst[0];
  v58 = __dst[1];
  OUTLINED_FUNCTION_23_1();
  if (!v24)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v60 = sub_27546E3E0();
  v194 = __swift_project_value_buffer(v60, qword_2809F3C00);
  v61 = sub_27546E3C0();
  v62 = sub_27546E6E0();
  v191 = v3;
  if (OUTLINED_FUNCTION_12_3(v62))
  {
    v63 = OUTLINED_FUNCTION_17_1();
    *__src = swift_slowAlloc();
    *v63 = 136315394;
    v64 = "Smart Cross-Fade";
    v65 = 0xD000000000000020;
    switch(v195)
    {
      case 1:
        v64 = "Dead-Air Removal";
        goto LABEL_30;
      case 2:
        v64 = "Fallback Cross-Fade";
LABEL_30:
        v65 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v64 = "utgoing";
        v65 = 0xD000000000000013;
        break;
      default:
        break;
    }

    v68 = sub_275446968(v65, v64 | 0x8000000000000000, __src);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    __dst[0] = v59;
    __dst[1] = v58;
    v69 = sub_27546E540();
    v71 = sub_275446968(v69, v70, __src);

    *(v63 + 14) = v71;
    _os_log_impl(&dword_2753EC000, v61, v62, "%s: Candidate result. Outgoing start sample = %s.", v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v4 = v3;
  }

  else
  {
  }

  v72 = *(v6 + 64);
  v73 = *(v6 + 72);
  __swift_project_boxed_opaque_existential_1((v6 + 40), v72);
  v74 = (*(v73 + 104))(v72, v73);
  *&v75 = 0.0;
  if (v74)
  {
    v76 = sub_275416C5C(v74, v16);
    v77 = (v76 + 32);
    v78 = *(v76 + 16) + 1;
    while (--v78)
    {
      v79 = v77 + 2;
      v80 = *v77;
      v81 = *v77 < -50.0;
      v77 += 2;
      if (!v81)
      {
        v75 = *(v79 - 1);

        HIDWORD(v192) = 0;
        v82 = *&v80;
        goto LABEL_45;
      }
    }
  }

  v82 = 0;
  HIDWORD(v192) = 1;
LABEL_45:
  v83 = sub_27546E3C0();
  v84 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v84))
  {
    OUTLINED_FUNCTION_17_1();
    *__src = OUTLINED_FUNCTION_20_2();
    *a3 = 136315394;
    v85 = "Smart Cross-Fade";
    v86 = 0xD000000000000020;
    switch(v195)
    {
      case 1:
        v87 = "Smart Cross-Fade";
        goto LABEL_50;
      case 2:
        v87 = "Dead-Air Removal";
LABEL_50:
        v85 = (v87 - 32);
        v86 = OUTLINED_FUNCTION_5_6();
        break;
      case 3:
        v85 = "utgoing";
        v86 = 0xD000000000000013;
        break;
      default:
        break;
    }

    sub_275446968(v86, v85 | 0x8000000000000000, __src);

    OUTLINED_FUNCTION_14_2();
    __dst[0] = v82;
    __dst[1] = v75;
    LOBYTE(__dst[2]) = BYTE4(v192);
    sub_2753F75D8(0, &qword_2809DB0B8, &_s14LoudnessSampleVN, MEMORY[0x277D83D88]);
    v88 = sub_27546E540();
    OUTLINED_FUNCTION_25(v88, v89, v90, v91, v92, v93, v94, v95, v3, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src);
    OUTLINED_FUNCTION_24_1();
    *(a3 + 14) = v82;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v96, v97, "%s: Candidate result. Incoming start sample = %s.");
    OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();

    v4 = v191;
  }

  else
  {
  }

  v98 = v11 - *&v58;
  v99 = sub_27546E3C0();
  v100 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v100))
  {
    OUTLINED_FUNCTION_17_1();
    v101 = OUTLINED_FUNCTION_19_1();
    __dst[0] = v101;
    *a3 = 136315394;
    v102 = OUTLINED_FUNCTION_0_19();
    switch(v110)
    {
      case 1:
      case 2:
        v102 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v102 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v102, v103, v104, v105, v106, v107, v108, v109, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_15_1();
    *(a3 + 14) = v98;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v111, v112, "%s: Candidate result. Maximum outgoing region duration = %f.");
    __swift_destroy_boxed_opaque_existential_1(v101);
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();
  }

  if (!HIDWORD(v192))
  {
    v16 = v16 - *&v75;
  }

  v113 = sub_27546E3C0();
  v114 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v114))
  {
    OUTLINED_FUNCTION_17_1();
    v115 = OUTLINED_FUNCTION_19_1();
    __dst[0] = v115;
    *a3 = 136315394;
    v116 = OUTLINED_FUNCTION_0_19();
    switch(v124)
    {
      case 1:
      case 2:
        v116 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v116 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v116, v117, v118, v119, v120, v121, v122, v123, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_15_1();
    *(a3 + 14) = v16;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v125, v126, "%s: Candidate result. Maximum incoming region duration = %f.");
    __swift_destroy_boxed_opaque_existential_1(v115);
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();
  }

  if (v16 < v98)
  {
    v98 = v16;
  }

  v127 = sub_27546E3C0();
  v128 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v128))
  {
    OUTLINED_FUNCTION_17_1();
    v129 = OUTLINED_FUNCTION_19_1();
    __dst[0] = v129;
    *a3 = 136315394;
    v130 = OUTLINED_FUNCTION_0_19();
    switch(v138)
    {
      case 1:
      case 2:
        v130 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v130 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v130, v131, v132, v133, v134, v135, v136, v137, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], __dst[0]);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_15_1();
    *(a3 + 14) = v98;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v139, v140, "%s: Candidate result. Maximum region duration = %f.");
    __swift_destroy_boxed_opaque_existential_1(v129);
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();
  }

  v141 = *&v58 + v98;
  if (*&v58 + v98 < *&v58)
  {
    __break(1u);
    goto LABEL_96;
  }

  v142 = sub_27546E3C0();
  v143 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v143))
  {
    OUTLINED_FUNCTION_17_1();
    *__src = OUTLINED_FUNCTION_20_2();
    *a3 = 136315394;
    v144 = OUTLINED_FUNCTION_0_19();
    switch(v145)
    {
      case 1:
      case 2:
        v144 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v144 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    sub_275446968(v144, v82 | 0x8000000000000000, __src);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_14_2();
    __dst[0] = v58;
    *&__dst[1] = *&v58 + v98;
    v146 = sub_27546E540();
    OUTLINED_FUNCTION_25(v146, v147, v148, v149, v150, v151, v152, v153, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src);
    OUTLINED_FUNCTION_24_1();
    *(a3 + 14) = v82;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v154, v155, "%s: Candidate result. Outgoing region = %s.");
    OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();
  }

  if ((v192 & 0x100000000) == 0)
  {
    v156 = *&v75 + v98;
    if (v156 >= *&v75)
    {
      goto LABEL_82;
    }

LABEL_97:
    __break(1u);
    JUMPOUT(0x275416794);
  }

  if (v98 < 0.0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *&v75 = 0.0;
  v156 = v98 + 0.0;
LABEL_82:
  v157 = sub_27546E3C0();
  v158 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_7_4(v158))
  {
    OUTLINED_FUNCTION_17_1();
    *__src = OUTLINED_FUNCTION_20_2();
    *a3 = 136315394;
    v159 = OUTLINED_FUNCTION_0_19();
    switch(v160)
    {
      case 1:
      case 2:
        v159 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v159 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    sub_275446968(v159, v82 | 0x8000000000000000, __src);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_14_2();
    __dst[0] = v75;
    *&__dst[1] = v156;
    v161 = sub_27546E540();
    OUTLINED_FUNCTION_25(v161, v162, v163, v164, v165, v166, v167, v168, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src);
    OUTLINED_FUNCTION_24_1();
    *(a3 + 14) = v82;
    OUTLINED_FUNCTION_3_9(&dword_2753EC000, v169, v170, "%s: Candidate result. Incoming region = %s.");
    OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_5_7();
  }

  v171 = sub_27546E3C0();
  v172 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_12_3(v172))
  {
    v173 = OUTLINED_FUNCTION_17_1();
    *__src = swift_slowAlloc();
    *v173 = 136315394;
    v174 = OUTLINED_FUNCTION_0_19();
    switch(v175)
    {
      case 1:
      case 2:
        v174 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v174 = OUTLINED_FUNCTION_11_3();
        break;
      default:
        break;
    }

    sub_275446968(v174, v82 | 0x8000000000000000, __src);
    OUTLINED_FUNCTION_13_3();
    *(v173 + 4) = &stru_275473FFC[0].MangledTypeName;
    *(v173 + 12) = 2080;
    __dst[0] = v58;
    *&__dst[1] = v141;
    __dst[2] = v75;
    *&__dst[3] = v156;
    v176 = sub_27546E540();
    OUTLINED_FUNCTION_25(v176, v177, v178, v179, v180, v181, v182, v183, v191, v192, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, *__src);
    OUTLINED_FUNCTION_24_1();
    *(v173 + 14) = v82;
    _os_log_impl(&dword_2753EC000, v171, v172, "%s: Candidate result. Region pair = %s.", v173, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  *__src = v58;
  *&__src[8] = v141;
  *&__src[16] = v75;
  *&__src[24] = v156;
  __src[170] = 1;
  sub_2754151F0();
  v184 = sub_27546E4A0();
  sub_27541BC3C(v6, 0, v221);
  if (v4)
  {
    sub_275409AE4(__src);
  }

  else
  {
    v185 = *(v6 + 80);
    sub_2753EF3C8(__src, &v196);
    sub_27540B51C(&v196, v185);
    sub_27540B644(MEMORY[0x277D84F90], v186, 2.0);
    v188 = v187;
    memcpy(__dst, __src, 0xABuLL);
    *&v220[7] = v221[0];
    *&v220[23] = v221[1];
    *&v220[39] = v221[2];
    *&v220[55] = v222;
    sub_2753F75D8(0, &qword_2809DB0B0, &_s13StylingResultVN, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_275474500;
    *(v6 + 32) = v195;
    v189 = *&v220[16];
    *(v6 + 33) = *v220;
    *(v6 + 49) = v189;
    *(v6 + 65) = *&v220[32];
    *(v6 + 80) = *&v220[47];
    *(v6 + 96) = v184;
    memcpy((v6 + 104), __dst, 0xABuLL);
    *(v6 + 280) = v188;
  }

  return v6;
}

uint64_t sub_275416844(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  if (!v4)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Outgoing loudness map duration delta is significant: True. Last sample not identified.";
    v12 = v9;
    v13 = v8;
    v14 = v10;
    v15 = 2;
    goto LABEL_12;
  }

  v5 = vabdd_f64(a2, *(v2 + 16 * v3 + 8));
  if (v5 < 2.0)
  {
    return 0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v16 = sub_27546E3E0();
  __swift_project_value_buffer(v16, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v17 = sub_27546E6E0();
  if (os_log_type_enabled(v8, v17))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v5;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 0x4000000000000000;
    v11 = "Outgoing loudness map duration delta is significant: True. Duration delta = %f. Minimum significant duration delta = %f.";
    v12 = v17;
    v13 = v8;
    v14 = v10;
    v15 = 22;
LABEL_12:
    _os_log_impl(&dword_2753EC000, v13, v12, v11, v14, v15);
    MEMORY[0x277C78090](v10, -1, -1);
  }

LABEL_13:

  return 1;
}

uint64_t sub_275416A0C(uint64_t result, double a2)
{
  v3 = fmax(a2 + -10.0, 0.0);
  if (v3 > a2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = (result + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v5;
      v8 = v5[1];
      if (v8 >= v3 && v8 <= a2)
      {
        v13 = *v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27544116C(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v13;
        if (v11 >= v10 >> 1)
        {
          sub_27544116C((v10 > 1), v11 + 1, 1);
          v12 = v13;
        }

        *(v6 + 16) = v11 + 1;
        *(v6 + 16 * v11 + 32) = v12;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
    return v6;
  }

  return result;
}

double sub_275416B20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275416D54(a1, &v9);
  if (v10)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v4 = sub_27546E3E0();
    __swift_project_value_buffer(v4, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2753EC000, v5, v6, "Outgoing start sample: Target loudness ceiling not satisfied. Using last sample.", v7, 2u);
      MEMORY[0x277C78090](v7, -1, -1);
    }

    sub_275417FFC(a1, a2);
  }

  else
  {
    result = *&v9;
    *a2 = v9;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_275416C5C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = fmin(a2, 10.0);
  v4 = (a1 + 32);
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = *v4;
    if (v3 >= v4[1])
    {
      v11 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27544116C(0, *(v5 + 16) + 1, 1);
      }

      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      v9 = v11;
      if (v8 >= v7 >> 1)
      {
        sub_27544116C((v7 > 1), v8 + 1, 1);
        v9 = v11;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + 16 * v8 + 32) = v9;
    }

    v4 += 2;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_275416D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_27541B8D0(a1);
  v4 = 0;
  v5 = v3[2];
  v6 = 4;
  v7.n128_u64[0] = -30.0;
  while (v5 != v4)
  {
    if (*&v3[v6] > -30.0)
    {
      v5 = v4;
      break;
    }

    ++v4;
    v6 += 2;
  }

  sub_27544FBA4(0, v5, v3, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = swift_unknownObjectRetain();
  v15 = sub_27541BA70(v14, v9, v11, v13);
  swift_unknownObjectRelease();
  v16 = v15[2];
  if (v16)
  {
    v17 = v15[4];
    v18 = v15[5];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v19 = v16 == 0;
  swift_unknownObjectRelease();

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  return result;
}

void OUTLINED_FUNCTION_3_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_5_7()
{

  JUMPOUT(0x277C78090);
}

BOOL OUTLINED_FUNCTION_7_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x277C78090);
}

BOOL OUTLINED_FUNCTION_12_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_3()
{
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{

  return sub_275446968(a1, v57 | 0x8000000000000000, &a57);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return sub_275446968(a1, a2, &a35);
}

uint64_t sub_27541706C(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = a1;
  v129 = *a2;
  v5 = sub_275417A9C(a1);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  v7 = __swift_project_value_buffer(v6, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  p_MangledTypeName = &stru_275473FFC[0].MangledTypeName;
  v101 = v4;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = OUTLINED_FUNCTION_17_1();
    v19 = OUTLINED_FUNCTION_7_5();
    *&__dst[0] = v19;
    *v11 = 136315394;
    v20 = 0xD000000000000020;
    switch(v129)
    {
      case 1:
      case 2:
        v20 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v20 = 0xD000000000000013;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v20, v12, v13, v14, v15, v16, v17, v18, v97, v98, v7, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__dst[0]);
    OUTLINED_FUNCTION_13_3();
    *(v11 + 4) = &stru_275473FFC[0].MangledTypeName;
    OUTLINED_FUNCTION_5_8();
    *(v11 + 12) = 2048;
    *(v11 + 14) = v5;
    _os_log_impl(&dword_2753EC000, v8, v9, "%s: Candidate result. Outgoing song duration = %f.", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v3 = v2;
    v4 = v101;
  }

  else
  {

    OUTLINED_FUNCTION_5_8();
  }

  v21 = sub_275417A9C(v4 + 5);
  v22 = sub_27546E3C0();
  v23 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_8_6(v23))
  {
    v24 = OUTLINED_FUNCTION_17_1();
    v25 = OUTLINED_FUNCTION_7_5();
    *&__dst[0] = v25;
    *v24 = 136315394;
    v26 = OUTLINED_FUNCTION_1_12();
    switch(v34)
    {
      case 1:
      case 2:
        v26 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v26 = OUTLINED_FUNCTION_4_7();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_18_1(v26, v27, v28, v29, v30, v31, v32, v33, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__dst[0]);
    OUTLINED_FUNCTION_13_3();
    *(v24 + 4) = &stru_275473FFC[0].MangledTypeName;
    OUTLINED_FUNCTION_5_8();
    *(v24 + 12) = 2048;
    *(v24 + 14) = v21;
    OUTLINED_FUNCTION_2_10(&dword_2753EC000, v35, v36, "%s: Candidate result. Incoming song duration = %f.");
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v4 = v101;
  }

  else
  {
  }

  if (v5 < 2.0)
  {
    v37 = sub_27546E3C0();
    v38 = sub_27546E6D0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_7_5();
      v40 = OUTLINED_FUNCTION_7_5();
      *&__dst[0] = v40;
      *v39 = 136315650;
      v41 = OUTLINED_FUNCTION_1_12();
      switch(v49)
      {
        case 1:
        case 2:
          v41 = OUTLINED_FUNCTION_2_9();
          break;
        case 3:
          v41 = OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_18_1(v41, v42, v43, v44, v45, v46, v47, v48, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__dst[0]);
      OUTLINED_FUNCTION_13_3();
      *(v39 + 4) = &stru_275473FFC[0].MangledTypeName;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v5;
      *(v39 + 22) = 2048;
      *(v39 + 24) = 0x4000000000000000;
      v65 = "%s: No candidate result. Outgoing song duration less than Fallback Cross-Fade duration. Outgoing song duration = %f. Fallback Cross-Fade duration = %f.";
LABEL_31:
      _os_log_impl(&dword_2753EC000, v37, v38, v65, v39, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (v21 < 2.0)
  {
    v37 = sub_27546E3C0();
    v38 = sub_27546E6D0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_7_5();
      v40 = OUTLINED_FUNCTION_7_5();
      *&__dst[0] = v40;
      *v39 = 136315650;
      v50 = OUTLINED_FUNCTION_1_12();
      switch(v58)
      {
        case 1:
        case 2:
          v50 = OUTLINED_FUNCTION_2_9();
          break;
        case 3:
          v50 = OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_18_1(v50, v51, v52, v53, v54, v55, v56, v57, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], *&__src[136], *&__src[144], *&__src[152], *&__src[160], *&__src[168], *&__dst[0]);
      OUTLINED_FUNCTION_13_3();
      *(v39 + 4) = &stru_275473FFC[0].MangledTypeName;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v21;
      *(v39 + 22) = 2048;
      *(v39 + 24) = 0x4000000000000000;
      v65 = "%s: No candidate result. Incoming song duration less than Fallback Cross-Fade duration. Incoming song duration = %f. Fallback Cross-Fade duration = %f.";
      goto LABEL_31;
    }

LABEL_32:

    return MEMORY[0x277D84F90];
  }

  if (v5 < v5 + -2.0)
  {
    __break(1u);
    JUMPOUT(0x275417A2CLL);
  }

  v59 = sub_27546E3C0();
  v60 = sub_27546E6E0();
  v61 = v4;
  v99 = v3;
  if (OUTLINED_FUNCTION_8_6(v60))
  {
    v62 = OUTLINED_FUNCTION_17_1();
    *__src = swift_slowAlloc();
    *v62 = 136315394;
    v63 = OUTLINED_FUNCTION_1_12();
    switch(v64)
    {
      case 1:
      case 2:
        v63 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v63 = OUTLINED_FUNCTION_4_7();
        break;
      default:
        break;
    }

    sub_275446968(v63, 0x800000027546F100, __src);
    OUTLINED_FUNCTION_13_3();
    *(v62 + 4) = &stru_275473FFC[0].MangledTypeName;
    *(v62 + 12) = 2080;
    *__dst = v5 + -2.0;
    *(__dst + 1) = v5;
    v67 = sub_27546E540();
    p_MangledTypeName = v68;
    v69 = sub_275446968(v67, v68, __src);
    OUTLINED_FUNCTION_5_8();

    *(v62 + 14) = v69;
    OUTLINED_FUNCTION_2_10(&dword_2753EC000, v70, v71, "%s: Candidate result. Outgoing region = %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v3 = v99;
  }

  else
  {
  }

  v72 = sub_27546E3C0();
  v73 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_8_6(v73))
  {
    v74 = OUTLINED_FUNCTION_17_1();
    *__src = swift_slowAlloc();
    *v74 = 136315394;
    v75 = OUTLINED_FUNCTION_1_12();
    switch(v76)
    {
      case 1:
      case 2:
        v75 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v75 = OUTLINED_FUNCTION_4_7();
        break;
      default:
        break;
    }

    sub_275446968(v75, 0x800000027546F100, __src);
    OUTLINED_FUNCTION_13_3();
    *(v74 + 4) = p_MangledTypeName;
    *(v74 + 12) = 2080;
    __dst[0] = xmmword_275476E40;
    v77 = sub_27546E540();
    p_MangledTypeName = v78;
    v79 = sub_275446968(v77, v78, __src);
    OUTLINED_FUNCTION_5_8();

    *(v74 + 14) = v79;
    OUTLINED_FUNCTION_2_10(&dword_2753EC000, v80, v81, "%s: Candidate result. Incoming region = %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v3 = v99;
  }

  else
  {
  }

  v82 = sub_27546E3C0();
  v83 = sub_27546E6E0();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_17_1();
    *__src = swift_slowAlloc();
    *v84 = 136315394;
    v85 = OUTLINED_FUNCTION_1_12();
    switch(v86)
    {
      case 1:
      case 2:
        v85 = OUTLINED_FUNCTION_2_9();
        break;
      case 3:
        v85 = OUTLINED_FUNCTION_4_7();
        break;
      default:
        break;
    }

    sub_275446968(v85, 0x800000027546F100, __src);
    OUTLINED_FUNCTION_13_3();
    *(v84 + 4) = p_MangledTypeName;
    *(v84 + 12) = 2080;
    *__dst = v5 + -2.0;
    *(__dst + 1) = v5;
    v87 = &unk_275476000;
    __dst[1] = xmmword_275476E40;
    v88 = sub_27546E540();
    v90 = sub_275446968(v88, v89, __src);

    *(v84 + 14) = v90;
    _os_log_impl(&dword_2753EC000, v82, v83, "%s: Candidate result. Region pair = %s.", v84, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();

    v4 = v61;
  }

  else
  {

    v87 = &unk_275476000;
  }

  *__src = v5 + -2.0;
  *&__src[8] = v5;
  *&__src[16] = v87[228];
  __src[170] = 1;
  sub_2754151F0();
  v91 = sub_27546E4A0();
  sub_27541BC3C(v4, 1, v127);
  if (v3)
  {
    sub_275409AE4(__src);
  }

  else
  {
    v92 = *(v4 + 80);
    sub_2753EF3C8(__src, &v102);
    sub_27540B51C(&v102, v92);
    sub_27540B644(MEMORY[0x277D84F90], v93, 1.0);
    v95 = v94;
    memcpy(__dst, __src, 0xABuLL);
    *(v126 + 7) = v127[0];
    *(&v126[1] + 7) = v127[1];
    *(&v126[2] + 7) = v127[2];
    *(&v126[3] + 7) = v128;
    sub_275417F20();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_275474500;
    *(v61 + 32) = v129;
    v96 = v126[1];
    *(v61 + 33) = v126[0];
    *(v61 + 49) = v96;
    *(v61 + 65) = v126[2];
    *(v61 + 80) = *(&v126[2] + 15);
    *(v61 + 96) = v91;
    memcpy((v61 + 104), __dst, 0xABuLL);
    *(v61 + 280) = v95;
  }

  return v61;
}

double sub_275417A9C(void *a1)
{
  v2 = sub_275417C74(a1);
  if (v3)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 16))(v4, v5);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      v11 = "Song duration: Using expected duration rather than actual duration. Expected duration = %f.";
      v12 = v9;
LABEL_10:
      _os_log_impl(&dword_2753EC000, v8, v12, v11, v10, 0xCu);
      MEMORY[0x277C78090](v10, -1, -1);
    }
  }

  else
  {
    v13 = v2;
    v6 = *&v2;
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v14 = sub_27546E3E0();
    __swift_project_value_buffer(v14, qword_2809F3C00);
    v8 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v15))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v13;
      v11 = "Song duration: Using actual duration rather than expected duration. Actual duration = %f.";
      v12 = v15;
      goto LABEL_10;
    }
  }

  return v6;
}

uint64_t sub_275417C74(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = COERCE_DOUBLE((*(v2 + 16))(v1, v2));
  v4 = v3;
  if (v5)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v6 = sub_27546E3E0();
    __swift_project_value_buffer(v6, qword_2809F3C00);
    v7 = sub_27546E3C0();
    v8 = sub_27546E6E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2753EC000, v7, v8, "Actual duration: None. Actual duration not available.", v9, 2u);
LABEL_15:
      MEMORY[0x277C78090](v9, -1, -1);
    }
  }

  else
  {
    if (v3 < 2.0)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v10 = sub_27546E3E0();
      __swift_project_value_buffer(v10, qword_2809F3C00);
      v7 = sub_27546E3C0();
      v11 = sub_27546E6D0();
      if (!os_log_type_enabled(v7, v11))
      {
        v4 = 0.0;
        goto LABEL_17;
      }

      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v4;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v7, v11, "Actual duration: Ignoring invalid actual duration less than Fallback Cross-Fade duration. Actual duration = %f. Fallback Cross-Fade duration = %f.", v9, 0x16u);
      v4 = 0.0;
      goto LABEL_15;
    }

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v12 = sub_27546E3E0();
    __swift_project_value_buffer(v12, qword_2809F3C00);
    v7 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v7, v13))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v4;
      _os_log_impl(&dword_2753EC000, v7, v13, "Actual duration: Actual stereo or spatial duration = %f.", v9, 0xCu);
      goto LABEL_15;
    }
  }

LABEL_17:

  return *&v4;
}

void sub_275417F20()
{
  if (!qword_2809DB0B0)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB0B0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  result = v0 + 16;
  v3 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_2_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_8_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_275417FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  result = a1 + 16;
  v3 = v4;
  if (v4)
  {
    v5 = *(result + 16 * v3);
  }

  else
  {
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v3 == 0;
  return result;
}

double sub_275418024@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2753FC774(a1 + 80 * v2 - 48, a2);
  }

  else
  {
    result = 0.0;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_275418080(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(v5, -result, 0, a2);
    if (v6)
    {
      result = 0;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_275418140@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[19];
  v6 = a1[20];
  __swift_project_boxed_opaque_existential_1(a1 + 16, v5);
  result = (*(v6 + 16))(&v20, a2, v5, v6);
  v8 = v24;
  if (v24)
  {
    v9 = v23;
    v10 = v22;
    v11 = v25;
    v12 = v21;
    *a3 = v20;
    *(a3 + 8) = v12;
    *(a3 + 24) = v10;
    *(a3 + 32) = v9 & 1;
    *(a3 + 40) = v8;
    *(a3 + 48) = v11;
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v13 = sub_27546E3E0();
    v14 = OUTLINED_FUNCTION_23_2(v13, qword_2809F3C00);
    v15 = sub_27546E6D0();
    v16 = OUTLINED_FUNCTION_8_7();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a2;
      _os_log_impl(&dword_2753EC000, v14, v15, "Transition style missing. ID = %ld.", v18, 0xCu);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    sub_275408F98();
    swift_allocError();
    *v19 = 13;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_275419DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t), const char *a6, const char *a7)
{
  v13 = a4();
  v14 = a5(a1, a2, a3);
  if (!*(v13 + 16))
  {

    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v21 = sub_27546E3E0();
    __swift_project_value_buffer(v21, qword_2809F3C00);
    v22 = sub_27546E3C0();
    v23 = sub_27546E6E0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2753EC000, v22, v23, a7, v24, 2u);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    return 0;
  }

  if (!*(v14 + 16))
  {

    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6E0();
    v18 = OUTLINED_FUNCTION_8_7();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2753EC000, v16, v17, a6, v20, 2u);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    return 0;
  }

  return v13;
}

void sub_275419FA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_27541B148(a1, &v18, a4);
  v9 = v18;
  v10 = v19;
  sub_27541B4F0(a2, &v18);
  if (v10)
  {
    if (v19)
    {
      if (qword_2809DACB0 == -1)
      {
LABEL_4:
        v11 = sub_27546E3E0();
        __swift_project_value_buffer(v11, qword_2809F3C00);
        v12 = sub_27546E3C0();
        v13 = sub_27546E6E0();
        if (!os_log_type_enabled(v12, v13))
        {
LABEL_16:

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          return;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Incoming styling region: None. Start time not identified.";
LABEL_15:
        _os_log_impl(&dword_2753EC000, v12, v13, v15, v14, 2u);
        MEMORY[0x277C78090](v14, -1, -1);
        goto LABEL_16;
      }

LABEL_20:
      swift_once();
      goto LABEL_4;
    }

    v16 = v18;
  }

  else if ((v19 & 1) != 0 || (v16 = v18, v9 > v18))
  {
    v16 = v9;
  }

  if (a5 - v16 < a4)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v17 = sub_27546E3E0();
    __swift_project_value_buffer(v17, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Incoming styling region: None. Duration exceeds maximum.";
    goto LABEL_15;
  }

  if (v16 + a4 < v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  *a3 = v16;
  *(a3 + 8) = v16 + a4;
  *(a3 + 16) = 0;
}

void sub_27541A1D0(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  if (*a1 >= a3)
  {
    if (qword_2809DACB0 == -1)
    {
LABEL_13:
      v15 = sub_27546E3E0();
      __swift_project_value_buffer(v15, qword_2809F3C00);
      v7 = sub_27546E3C0();
      v16 = sub_27546E6E0();
      if (!os_log_type_enabled(v7, v16))
      {
LABEL_16:

        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 1;
        return;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Truncated styling region pair: None. Outgoing region starts at or after end of song.";
      v11 = v16;
      v12 = v7;
      v13 = v9;
      v14 = 2;
LABEL_15:
      _os_log_impl(&dword_2753EC000, v12, v11, v10, v13, v14);
      MEMORY[0x277C78090](v9, -1, -1);
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  if (*a1 > a3)
  {
    v4 = a3;
  }

  if (a1[1] <= a3)
  {
    a3 = a1[1];
  }

  if (a3 < v4)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3 - v4;
  if (a3 - v4 < 2.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v6 = sub_27546E3E0();
    __swift_project_value_buffer(v6, qword_2809F3C00);
    v7 = sub_27546E3C0();
    v8 = sub_27546E6E0();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_16;
    }

    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 0x4000000000000000;
    v10 = "Truncated styling region pair: None. Truncated regions too short. Truncated region duration = %f. Minimum truncated region duration = %f.";
    v11 = v8;
    v12 = v7;
    v13 = v9;
    v14 = 22;
    goto LABEL_15;
  }

  v17 = a1[2];
  if (v17 + v5 < v17)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = a3;
    *(a2 + 16) = v17;
    *(a2 + 24) = v17 + v5;
    *(a2 + 32) = 0;
  }
}

double sub_27541A3DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2753F41C8(a2);
  sub_2753F3B7C(v2, v8);

  if ((v9 & 1) == 0)
  {
    return v8[1] - v8[0];
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2753EC000, v4, v5, "Outgoing non-silent duration: Zero. No non-silent samples after last section.", v6, 2u);
    MEMORY[0x277C78090](v6, -1, -1);
  }

  return 0.0;
}

uint64_t sub_27541A4F0(uint64_t a1, char *a2, uint64_t a3, char a4, double a5)
{
  v70 = a3;
  v7 = *a2;
  if (a4)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (a4)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  if (a5 >= 5.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  if (a5 >= 5.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  sub_27541B880(0, &qword_2809DB080, &_s12StylingScoreVN, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2754744F0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2754744F0;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2754744F0;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2754744F0;
  *(v15 + 32) = v8;
  *(v15 + 40) = v11;
  sub_2754151F0();
  v16 = sub_27546E4A0();
  v38 = a1;
  sub_275418140(a1, 3, v62);
  if (v5)
  {
  }

  else
  {
    v17 = v70;
    v18 = *(v38 + 80);
    sub_2753EF3C8(v70, v48);
    sub_27540B51C(v48, v18);
    sub_27540B644(v12, v19, 3.0);
    v21 = v20;
    sub_2753EF3C8(v17, v61);
    LOBYTE(v17) = v7;
    v55 = v7;
    v56 = v62[0];
    v57 = v62[1];
    v58 = v62[2];
    v59 = v63;
    v60 = v16;
    v61[22] = v21;
    v22 = sub_27546E4A0();
    sub_275418140(v38, 33, v64);
    v24 = v70;
    sub_2753EF3C8(v70, v41);
    sub_27540B51C(v41, v18);
    sub_27540B644(v13, v25, 3.0);
    v27 = v26;
    sub_2753EF3C8(v24, v54);
    v48[0] = v7;
    v49 = v64[0];
    v50 = v64[1];
    v51 = v64[2];
    v52 = v65;
    v53 = v22;
    v54[22] = v27;
    v28 = sub_27546E4A0();
    sub_275418140(v38, 4, v66);
    v29 = v70;
    sub_2753EF3C8(v70, __src);
    sub_27540B51C(__src, v18);
    sub_27540B644(v14, v30, 3.0);
    v32 = v31;
    sub_2753EF3C8(v29, v47);
    v41[0] = v7;
    v42 = v66[0];
    v43 = v66[1];
    v44 = v66[2];
    v45 = v67;
    v46 = v28;
    v47[22] = v32;
    v33 = sub_27546E4A0();
    sub_275418140(v38, 44, v68);
    v34 = v70;
    sub_2753EF3C8(v70, v39);
    sub_27540B51C(v39, v18);
    sub_27540B644(v15, v35, 3.0);
    v37 = v36;
    sub_2753EF3C8(v34, &__src[9]);
    LOBYTE(__src[0]) = v17;
    *&__src[1] = v68[0];
    *&__src[3] = v68[1];
    *&__src[5] = v68[2];
    __src[7] = v69;
    __src[8] = v33;
    __src[31] = v37;
    sub_27541B880(0, &qword_2809DB0B0, &_s13StylingResultVN, MEMORY[0x277D84560]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_275474510;
    sub_2753F2548(&v55, a1 + 32);
    sub_2753F2548(v48, a1 + 288);
    sub_2753F2548(v41, a1 + 544);
    memcpy((a1 + 800), __src, 0x100uLL);
    sub_2753F25A4(v41);
    sub_2753F25A4(v48);
    sub_2753F25A4(&v55);
  }

  return a1;
}

uint64_t sub_27541AA44(uint64_t a1, uint64_t a2)
{
  sub_27540A43C();
  result = sub_27540A524();
  if (v5 < v4[0])
  {
    __break(1u);
  }

  else
  {
    v4[1] = v5;
    return sub_2753F4414(v4, a2);
  }

  return result;
}

uint64_t sub_27541AAAC(uint64_t a1, uint64_t a2)
{
  sub_27540A43C();
  result = sub_27540A524();
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    return sub_2753F4354(&v5, a2);
  }

  return result;
}

uint64_t sub_27541AB14(uint64_t a1, uint64_t a2)
{
  sub_27540A43C();
  result = sub_27540A524();
  if (v4 >= v5)
  {
    return sub_2753F4294(&v5, a2);
  }

  __break(1u);
  return result;
}

void sub_27541AB7C(uint64_t a1)
{
  sub_2753F3B7C(a1, &v66);
  if (v68)
  {
    if (qword_2809DACB0 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_3;
  }

  v7 = v67;
  if (v67 + -1.0 < v66)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v8 = sub_27546E3E0();
    __swift_project_value_buffer(v8, qword_2809F3C00);
    v3 = sub_27546E3C0();
    v4 = sub_27546E6E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Stable duration before fade out: Zero. Too close to end of song.";
LABEL_10:
      _os_log_impl(&dword_2753EC000, v3, v4, v6, v5, 2u);
      MEMORY[0x277C78090](v5, -1, -1);
    }

    goto LABEL_11;
  }

  v67 = v67 + -1.0;
  v9 = sub_2753F4414(&v66, a1);
  v10 = v9;
  v62 = *(v9 + 16);
  if (!v62)
  {
LABEL_68:

    return;
  }

  v11 = 0;
  v12 = *(a1 + 16);
  v60 = a1 + 32;
  v61 = v9 + 32;
  v13 = 1.0;
  v14 = MEMORY[0x277D84F90];
  while (v11 < *(v10 + 16))
  {
    v15 = *(v61 + 16 * v11 + 8);
    if (v15 + v13 < v15)
    {
      goto LABEL_71;
    }

    if (v12)
    {
      v16 = v60;
      v17 = v12;
      v18 = v14;
      do
      {
        v19 = *v16;
        v20 = *(v16 + 8);
        if (v20 >= v15 && v15 + v13 >= v20)
        {
          v63 = *v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27544116C(0, *(*&v18 + 16) + 1, 1);
            v18 = v66;
          }

          v24 = *(*&v18 + 16);
          v23 = *(*&v18 + 24);
          v25 = v63;
          if (v24 >= v23 >> 1)
          {
            sub_27544116C((v23 > 1), v24 + 1, 1);
            v25 = v63;
            v18 = v66;
          }

          *(*&v18 + 16) = v24 + 1;
          *(*&v18 + 16 * v24 + 32) = v25;
        }

        v16 += 16;
        --v17;
      }

      while (v17);
    }

    else
    {
      v18 = v14;
    }

    v26 = *(*&v18 + 16);
    if (v26)
    {
      v66 = v14;
      sub_27544110C(0, v26, 0);
      v27 = v66;
      v28 = (*&v18 + 32);
      v29 = *(*&v66 + 16);
      do
      {
        v30 = *v28;
        v66 = v27;
        v31 = *(*&v27 + 24);
        v32 = v29 + 1;
        if (v29 >= v31 >> 1)
        {
          v64 = v30;
          sub_27544110C((v31 > 1), v29 + 1, 1);
          v30 = v64;
          v27 = v66;
        }

        *(*&v27 + 16) = v32;
        *(*&v27 + 16 * v29 + 32) = vextq_s8(v30, v30, 8uLL);
        ++v28;
        ++v29;
        --v26;
      }

      while (v26);
    }

    else
    {
      v32 = *(*&v14 + 16);
      if (!v32)
      {

        goto LABEL_67;
      }

      v27 = v14;
    }

    v33 = (*&v27 + 40);
    v34 = 0.0;
    v35 = v32;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    do
    {
      v39 = *(v33 - 1);
      v38 = v38 + v39;
      v37 = v37 + v39 * v39;
      v36 = v36 + *v33;
      v34 = v34 + v39 * *v33;
      v33 += 2;
      --v35;
    }

    while (v35);

    v40 = v32;
    v41 = v37 * v32 - v38 * v38;
    if (v41 != 0.0)
    {
      if (v7 < v15)
      {
        goto LABEL_72;
      }

      if (v12)
      {
        v42 = v60;
        v43 = v12;
        v44 = v14;
        do
        {
          v45 = *v42;
          v46 = *(v42 + 8);
          if (v46 >= v15 && v7 >= v46)
          {
            v65 = *v42;
            v48 = swift_isUniquelyReferenced_nonNull_native();
            v66 = v44;
            if ((v48 & 1) == 0)
            {
              sub_27544116C(0, *(*&v44 + 16) + 1, 1);
              v44 = v66;
            }

            v50 = *(*&v44 + 16);
            v49 = *(*&v44 + 24);
            v51 = v65;
            if (v50 >= v49 >> 1)
            {
              sub_27544116C((v49 > 1), v50 + 1, 1);
              v51 = v65;
              v44 = v66;
            }

            *(*&v44 + 16) = v50 + 1;
            *(*&v44 + 16 * v50 + 32) = v51;
          }

          v42 += 16;
          --v43;
        }

        while (v43);
      }

      else
      {
        v44 = v14;
      }

      v52 = *(*&v44 + 16);
      if (v52)
      {
        v66 = v14;
        sub_2754410DC(0, v52, 0);
        *&v53 = v66;
        v54 = *(*&v66 + 16);
        v55 = 32;
        do
        {
          v56 = *(*&v44 + v55);
          v66 = *&v53;
          v57 = *(v53 + 24);
          if (v54 >= v57 >> 1)
          {
            sub_2754410DC(v57 > 1, v54 + 1, 1);
            *&v53 = v66;
          }

          *(v53 + 16) = v54 + 1;
          *(v53 + 8 * v54 + 32) = v56;
          v55 += 16;
          ++v54;
          --v52;
        }

        while (v52);

        v13 = 1.0;
      }

      else
      {

        *&v53 = v14;
      }

      v58 = (v34 * v40 - v38 * v36) / v41;
      v59 = sub_2753F3D70(v53);

      if (fabs(v58) >= v13 && (v59 & 1) != 0 && v58 < 0.0)
      {
        goto LABEL_68;
      }
    }

LABEL_67:
    if (++v11 == v62)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_3:
  v2 = sub_27546E3E0();
  __swift_project_value_buffer(v2, qword_2809F3C00);
  v3 = sub_27546E3C0();
  v4 = sub_27546E6E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Stable duration before fade out: Zero. No samples.";
    goto LABEL_10;
  }

LABEL_11:
}

void sub_27541B148(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_2753F8E44(*(a1 + 32), &v28);
  if (v29)
  {
    v6 = sub_2753F16E0(&v28, v31);
    v7 = *(a1 + 16);
    MEMORY[0x28223BE20](v6);
    v24 = v31;

    sub_2754241F8(sub_27541BB8C, &v23, v7);
    v9 = sub_275418080(2, v8, sub_27544FB9C, sub_27544FBA4);
    MEMORY[0x28223BE20](v9);
    v24 = v31;
    v25 = a3;
    sub_2753F8D6C(sub_27541BBAC, v10, v11, v12, &v26);
    if (v27)
    {
      sub_2753F16E0(&v26, &v28);
      v14 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      (*(*(*(v13 + 8) + 8) + 8))(&v26, v14);
      swift_unknownObjectRelease();
      *a2 = v26;
      *(a2 + 8) = 0;
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      sub_27541BB28(&v26, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v19 = sub_27546E3E0();
      __swift_project_value_buffer(v19, qword_2809F3C00);
      v20 = sub_27546E3C0();
      v21 = sub_27546E6E0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2753EC000, v20, v21, "Incoming start time: None. First downbeat within styling region not identified.", v22, 2u);
        MEMORY[0x277C78090](v22, -1, -1);
      }

      swift_unknownObjectRelease();
      *a2 = 0;
      *(a2 + 8) = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_27541BB28(&v28, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2753EC000, v16, v17, "Incoming start time: None. First section boundary event not identified.", v18, 2u);
      MEMORY[0x277C78090](v18, -1, -1);
    }

    *a2 = 0;
    *(a2 + 8) = 1;
  }
}

void sub_27541B4F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_27541B8D0(a1);
  v4 = sub_2753F41C8(v3);

  v5 = sub_27541B8D0(v4);

  sub_2753F3B7C(v5, &v12);

  v6 = v13;
  if (v13)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2753EC000, v8, v9, "Incoming start time: None. Non-silent start time not identified.", v10, 2u);
      MEMORY[0x277C78090](v10, -1, -1);
    }

    v11 = 0;
  }

  else
  {
    v11 = v12;
  }

  *a2 = v11;
  *(a2 + 8) = v6;
}

BOOL sub_27541B638(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(*(v3 + 8) + 8) + 8))(&v10, v4);
  v5 = v10;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(*(*(*(v6 + 8) + 8) + 8) + 8) + 8))(&v9, v7);
  return v5 < v9;
}

BOOL sub_27541B6FC(void *a1, void *a2, double a3)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(*(*(v5 + 8) + 8) + 8))(&v12, v6);
  v7 = v12;
  v9 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(*(*(*(*(v8 + 8) + 8) + 8) + 8) + 8))(&v11, v9);
  return v11 - v7 <= a3;
}

uint64_t sub_27541B7C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_27541B880(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_2_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_27541B880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_27541B8D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_275431F10(*(a1 + 16), 0);
  v4 = sub_2754649D4(&v6, v3 + 2, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_27541B964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_27541BBD0(0, &qword_2809DB0C8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      sub_2753F1680(0, &qword_2809DAEF0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_27541BA70(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (!__OFSUB__(a4 >> 1, a3))
  {
    if (v4)
    {
      v8 = result;
      v9 = sub_275431F10((a4 >> 1) - a3, 0);
      v10 = sub_275464B14(v11, v9 + 2, v4, v8, a2, a3, a4);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (v10 == v4)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_27541BB28(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_27541BBD0(0, a2, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_2_8(v5);
  (*(v6 + 8))(a1);
  return a1;
}

void sub_27541BBD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2753F1680(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_10()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x277C78090);
}

void OUTLINED_FUNCTION_7_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{

  return sub_275446968(a1, v53 | 0x8000000000000000, &a53);
}

uint64_t OUTLINED_FUNCTION_19_2()
{
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_27546E3C0();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_275446968(a1, v13 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_27_0()
{
}

BOOL OUTLINED_FUNCTION_28_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_slowAlloc();
}

uint64_t sub_27541BE2C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 80);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v6 - 16);
      v11 = *(v6 - 3);
      v33 = *(v6 - 6);
      v34 = *(v6 - 5);
      v35 = v11;
      v36 = v10;
      v37 = v8;
      v38 = v9;

      a1(v32, &v33);
      if (v3)
      {
        break;
      }

      if (v32[6])
      {
        v20 = OUTLINED_FUNCTION_0_20(v12, v13, v14, v15, v16, v17, v18, v19, v30, v31);
        memcpy(v20, v21, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_12();
          v7 = v27;
        }

        v23 = *(v7 + 16);
        if (v23 >= *(v7 + 24) >> 1)
        {
          sub_2754319AC();
          v7 = v28;
        }

        *(v7 + 16) = v23 + 1;
        v24 = OUTLINED_FUNCTION_1_14(v7 + (v23 << 8));
        memcpy(v24, v25, v26);
      }

      else
      {
        sub_27541C60C(v32);
      }

      v6 += 7;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_27541BF98(void *(*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = ~v5;
    v10 = v7 + 176 * v5;
    v11 = v6 - v5;
    if (!v11)
    {
      break;
    }

    while (1)
    {
      v12 = a1(v33, v10);
      if (v3)
      {

        return v8;
      }

      if (v33[6])
      {
        break;
      }

      sub_27541C60C(v33);
      --v9;
      v10 += 176;
      if (!--v11)
      {
        return v8;
      }
    }

    v20 = OUTLINED_FUNCTION_0_20(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32);
    memcpy(v20, v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_2_12();
      v8 = v28;
    }

    v24 = *(v8 + 16);
    if (v24 >= *(v8 + 24) >> 1)
    {
      sub_2754319AC();
      v8 = v29;
    }

    v5 = -v9;
    *(v8 + 16) = v24 + 1;
    v25 = OUTLINED_FUNCTION_1_14(v8 + (v24 << 8));
    memcpy(v25, v26, v27);
    v6 = v34;
  }

  return v8;
}

uint64_t sub_27541C0D0(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = ~v5;
    v10 = v7 + 40 * v5;
    v11 = v6 - v5;
    if (!v11)
    {
      break;
    }

    while (1)
    {
      a1(__src, v10);
      if (v3)
      {

        return v8;
      }

      if (__src[6])
      {
        break;
      }

      sub_27541C60C(__src);
      --v9;
      v10 += 40;
      if (!--v11)
      {
        return v8;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 16);
      sub_2754319AC();
      v8 = v15;
    }

    v13 = *(v8 + 16);
    if (v13 >= *(v8 + 24) >> 1)
    {
      sub_2754319AC();
      v8 = v16;
    }

    v5 = -v9;
    *(v8 + 16) = v13 + 1;
    memcpy((v8 + (v13 << 8) + 32), __dst, 0x100uLL);
    v6 = v20;
  }

  return v8;
}

uint64_t sub_27541C22C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = a4;
  v9 = a2;
  v10 = a3;
  v8[2] = a1;
  v8[3] = &v9;
  result = sub_27541C0D0(sub_27541C5F0, v8, a4);
  if (!v5)
  {
    sub_27541C314(result, a5);
  }

  return result;
}

uint64_t sub_27541C2AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t)@<X3>, void *a5@<X8>)
{
  v10 = a3;
  v9 = a2;
  v8[2] = a1;
  v8[3] = &v9;
  result = sub_27541C0D0(a4, v8, a3);
  if (!v5)
  {
    sub_27541C314(result, a5);
  }

  return result;
}

void sub_27541C314(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v3; --v3)
  {
    v6 = sub_2753F2548(v4, __dst);
    if (__dst[31] <= 0.0)
    {
      sub_2753F25A4(__dst);
    }

    else
    {
      v14 = OUTLINED_FUNCTION_0_20(v6, v7, v8, v9, v10, v11, v12, v13, v26, SLOBYTE(__src[0]));
      memcpy(v14, v15, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2754419BC(0, *(i + 16) + 1, 1);
        i = v29;
      }

      v19 = *(i + 16);
      v18 = *(i + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2754419BC((v18 > 1), v19 + 1, 1);
        i = v29;
      }

      *(i + 16) = v19 + 1;
      v20 = OUTLINED_FUNCTION_1_14(i + (v19 << 8));
      memcpy(v20, v21, v22);
    }

    v4 += 256;
  }

  v23 = *(i + 16);
  if (v23)
  {
    sub_2753F2548(i + 32, __dst);
    v24 = i + 288;
    for (j = 1; ; ++j)
    {
      if (v23 == j)
      {

        memcpy(a2, __dst, 0x100uLL);
        return;
      }

      if (j >= *(i + 16))
      {
        break;
      }

      sub_2753F2548(v24, __src);
      if (__dst[31] >= __src[31])
      {
        sub_2753F25A4(__src);
      }

      else
      {
        sub_2753F25A4(__dst);
        memcpy(__dst, __src, sizeof(__dst));
      }

      v24 += 256;
    }

    __break(1u);
  }

  else
  {

    bzero(a2, 0x100uLL);
  }
}

uint64_t sub_27541C4C0(void *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a3;
  return (*(v6 + 64))(a2, &v8, v5, v6);
}

uint64_t sub_27541C5D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 16);
  return sub_27541C4C0(a1, a2, *a3);
}

uint64_t sub_27541C60C(uint64_t a1)
{
  sub_27541C668();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27541C668()
{
  if (!qword_2809DB0D0)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB0D0);
    }
  }
}

void OUTLINED_FUNCTION_2_12()
{
  v2 = *(v0 + 16) + 1;

  sub_2754319AC();
}

uint64_t sub_27541C750(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2754418F4(0, v5, 0);
    v6 = v35;
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v29 = v9;
      a1(&v30, &v29, &v28);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v10 = v30;
      v11 = v31;
      v12 = v32;
      v13 = v33;
      v14 = v34;
      v35 = v6;
      v15 = *(v6 + 16);
      if (v15 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_40();
        v25 = v18;
        v26 = v17;
        v20 = v19;
        sub_2754418F4(v21, v22, v23);
        v12 = v20;
        v14 = v25;
        v11 = v26;
        v6 = v35;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 56 * v15;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      *(v16 + 72) = v14;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_27541C890(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v20 = MEMORY[0x277D84F90];
    sub_275441914(0, v5, 0);
    v6 = v20;
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v18 = v10;
      a1(&v19, &v18, &v17);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v11 = v19;
      v20 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_40();
        sub_275441914(v13, v14, v15);
        v6 = v20;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_27541C9A0(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_275441A3C(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_275441A3C((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27541CAC8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_275441A3C(0, v5, 0);
  v6 = v20;
  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *(i - 1);
    v10 = *i;
    v18[0] = *(i - 2);
    v18[1] = v9;
    v18[2] = v10;

    a1(v19, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v19[0];
    v11 = v19[1];
    v20 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_275441A3C((v13 > 1), v14 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_27541CC10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  v11 = (a4 + 48);
  if (v10)
  {
    while (1)
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      sub_275421F78(v12, v13, *v11);
      if (sub_2753F26B8(a1, a2, v12, v13, v14) == 2)
      {
        break;
      }

      sub_275421FD4(v12, v13, v14);
      v11 += 24;
      if (!--v10)
      {
        return v10 == 0;
      }
    }

    sub_27541D43C(a1, a2, v12, v13, v14, a3, a4, a5);
    sub_275421FD4(v12, v13, v14);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2753EC000, v16, v17, "Genre compatibility: Incompatible.", v18, 2u);
      MEMORY[0x277C78090](v18, -1, -1);
    }
  }

  return v10 == 0;
}

void sub_27541D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  v157 = a6;
  v159 = a2;
  v12 = 0x2809DA000uLL;
  v160 = a8;
  if (!a5)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);

    sub_275421F78(a3, a4, 0);
    v14 = sub_27546E3C0();
    v26 = sub_27546E6E0();
    sub_275421FD4(a3, a4, 0);
    if (os_log_type_enabled(v14, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v156 = v28;
      v158 = a7;
      v163[0] = v28;
      *v27 = 136315138;
      MEMORY[0x28223BE20](v28);
      v154 = v167;
      sub_27541C9A0(sub_2754223B4, v153, a3);
      v29 = sub_275420164();
      v31 = v30;

      v32 = v158;

      v33 = sub_275446968(v29, v31, v163);
      v12 = 0x2809DA000uLL;

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2753EC000, v14, v26, "Genre compatibility: Allowed genres = %s.", v27, 0xCu);
      v34 = v156;
      __swift_destroy_boxed_opaque_existential_1(v156);
      MEMORY[0x277C78090](v34, -1, -1);
      MEMORY[0x277C78090](v27, -1, -1);

      v24 = v32;
      goto LABEL_12;
    }

LABEL_11:

    v24 = a7;
    goto LABEL_12;
  }

  if (a5 == 1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v13 = sub_27546E3E0();
    __swift_project_value_buffer(v13, qword_2809F3C00);

    sub_275421F78(a3, a4, 1u);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    sub_275421FD4(a3, a4, 1u);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v163[0] = v17;
      *v16 = 136315138;
      MEMORY[0x28223BE20](v17);
      v154 = v167;
      sub_27541C9A0(sub_2754223B4, v153, a3);
      v18 = a7;
      v19 = sub_275420164();
      v21 = v20;

      v22 = sub_275446968(v19, v21, v163);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2753EC000, v14, v15, "Genre compatibility: Denied genres = %s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v23 = v17;
      v12 = 0x2809DA000;
      MEMORY[0x277C78090](v23, -1, -1);
      MEMORY[0x277C78090](v16, -1, -1);

      v24 = v18;
LABEL_12:
      v35 = v159;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v53 = sub_27546E3E0();
  v54 = __swift_project_value_buffer(v53, qword_2809F3C00);

  v55 = sub_27546E3C0();
  v56 = sub_27546E6E0();

  if (os_log_type_enabled(v55, v56))
  {
    v156 = v54;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v155 = v58;
    v163[0] = v58;
    *v57 = 136315138;
    MEMORY[0x28223BE20](v58);
    v154 = v167;
    sub_27541C9A0(sub_2754223B4, v153, a3);
    v158 = 0;
    v59 = sub_275420164();
    v61 = v60;

    v62 = a7;

    v63 = sub_275446968(v59, v61, v163);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_2753EC000, v55, v56, "Genre compatibility: Allowed genres = %s.", v57, 0xCu);
    v64 = v155;
    __swift_destroy_boxed_opaque_existential_1(v155);
    MEMORY[0x277C78090](v64, -1, -1);
    MEMORY[0x277C78090](v57, -1, -1);

    v24 = v62;
  }

  else
  {
    v158 = 0;

    v24 = a7;
  }

  v145 = sub_27546E3C0();
  v146 = sub_27546E6E0();

  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v163[0] = v148;
    *v147 = 136315138;
    MEMORY[0x28223BE20](v148);
    v154 = v167;
    sub_27541C9A0(sub_2754223B4, v153, a4);
    v149 = sub_275420164();
    v151 = v150;

    v152 = sub_275446968(v149, v151, v163);

    *(v147 + 4) = v152;
    _os_log_impl(&dword_2753EC000, v145, v146, "Genre compatibility: Denied genres = %s.", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v148);
    MEMORY[0x277C78090](v148, -1, -1);
    MEMORY[0x277C78090](v147, -1, -1);
  }

  else
  {
  }

  v35 = v159;
  v12 = 0x2809DA000;
LABEL_13:
  v36 = *(a1 + 8);
  if (v36)
  {
    v167[0] = *a1;
    v167[1] = v36;
    v37 = *(a1 + 32);
    v168 = *(a1 + 16);
    v169 = v37;
    v170 = *(a1 + 48);
    v38 = v160;
    if (*(v12 + 3248) != -1)
    {
      swift_once();
    }

    v39 = sub_27546E3E0();
    __swift_project_value_buffer(v39, qword_2809F3C00);

    sub_275422030(a1, v163);
    v40 = sub_27546E3C0();
    v41 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    v42 = os_log_type_enabled(v40, v41);
    v158 = v24;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v163[0] = v44;
      *v43 = 136315138;
      v45 = sub_27541FD60(v167, v157, v24, v38);
      v47 = v46;

      v48 = sub_275446968(v45, v47, v163);

      *(v43 + 4) = v48;
      v24 = v158;
      _os_log_impl(&dword_2753EC000, v40, v41, "Genre compatibility: Outgoing genre tree = %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x277C78090](v44, -1, -1);
      MEMORY[0x277C78090](v43, -1, -1);
    }

    else
    {
    }

    sub_275422030(a1, v163);
    v65 = sub_27546E3C0();
    v66 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v163[0] = v68;
      *v67 = 136315138;

      *(v67 + 4) = sub_275446968(*(&v168 + 1), v169, v163);
      _os_log_impl(&dword_2753EC000, v65, v66, "Genre compatibility: Main outgoing genre = %s.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x277C78090](v68, -1, -1);
      MEMORY[0x277C78090](v67, -1, -1);
    }

    else
    {
    }

    sub_275422030(a1, v163);
    v69 = sub_27546E3C0();
    v70 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v162[0] = v72;
      *v71 = 136315138;
      MEMORY[0x28223BE20](v72);
      v154 = v163;
      sub_27541C9A0(sub_2754223B4, v153, v73);
      v74 = sub_275420164();
      v76 = v75;

      v77 = v74;
      v24 = v158;
      v78 = sub_275446968(v77, v76, v162);
      v38 = v160;

      *(v71 + 4) = v78;
      _os_log_impl(&dword_2753EC000, v69, v70, "Genre compatibility: Ancestor outgoing genres = %s.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x277C78090](v72, -1, -1);
      MEMORY[0x277C78090](v71, -1, -1);
    }

    else
    {
    }

    sub_275422030(a1, v163);
    v79 = sub_27546E3C0();
    v80 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v162[0] = v82;
      *v81 = 136315138;
      MEMORY[0x28223BE20](v82);
      v154 = v163;
      sub_27541C9A0(sub_2754223B4, v153, v83);
      v84 = sub_275420164();
      v86 = v85;

      v87 = v84;
      v38 = v160;
      v88 = sub_275446968(v87, v86, v162);
      v24 = v158;

      *(v81 + 4) = v88;
      _os_log_impl(&dword_2753EC000, v79, v80, "Genre compatibility: Descendant outgoing genres = %s.", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x277C78090](v82, -1, -1);
      MEMORY[0x277C78090](v81, -1, -1);
    }

    else
    {
    }

    v35 = v159;

    sub_275422030(a1, v163);
    v89 = sub_27546E3C0();
    v90 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v162[0] = v92;
      *v91 = 136315138;
      MEMORY[0x28223BE20](v92);
      v154 = v163;
      sub_27541C9A0(sub_2754223B4, v153, v93);
      v94 = sub_275420164();
      v96 = v95;

      v97 = v94;
      v38 = v160;
      v98 = sub_275446968(v97, v96, v162);

      *(v91 + 4) = v98;
      _os_log_impl(&dword_2753EC000, v89, v90, "Genre compatibility: Significant outgoing genres = %s.", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x277C78090](v92, -1, -1);
      MEMORY[0x277C78090](v91, -1, -1);
    }

    else
    {
    }

    v12 = 0x2809DA000uLL;
  }

  else
  {
    v38 = v160;
    if (*(v12 + 3248) != -1)
    {
      swift_once();
    }

    v49 = sub_27546E3E0();
    __swift_project_value_buffer(v49, qword_2809F3C00);
    v50 = sub_27546E3C0();
    v51 = sub_27546E6E0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2753EC000, v50, v51, "Genre compatibility: Outgoing genres not available.", v52, 2u);
      MEMORY[0x277C78090](v52, -1, -1);
    }
  }

  v99 = *(v35 + 8);
  if (v99)
  {
    v163[0] = *v35;
    v163[1] = v99;
    v100 = *(v35 + 32);
    v164 = *(v35 + 16);
    v165 = v100;
    v166 = *(v35 + 48);
    if (*(v12 + 3248) != -1)
    {
      swift_once();
    }

    v101 = sub_27546E3E0();
    __swift_project_value_buffer(v101, qword_2809F3C00);

    sub_275422030(v35, v162);
    v102 = sub_27546E3C0();
    v103 = sub_27546E6E0();
    sub_275421F08(v35, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v162[0] = v105;
      *v104 = 136315138;
      v106 = sub_27541FD60(v163, v157, v24, v38);
      v108 = v107;

      v109 = sub_275446968(v106, v108, v162);

      *(v104 + 4) = v109;
      _os_log_impl(&dword_2753EC000, v102, v103, "Genre compatibility: Incoming genre tree = %s.", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x277C78090](v105, -1, -1);
      MEMORY[0x277C78090](v104, -1, -1);
    }

    else
    {
    }

    sub_275422030(v35, v162);
    v114 = sub_27546E3C0();
    v115 = sub_27546E6E0();
    sub_275421F08(v35, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v162[0] = v117;
      *v116 = 136315138;

      *(v116 + 4) = sub_275446968(*(&v164 + 1), v165, v162);
      _os_log_impl(&dword_2753EC000, v114, v115, "Genre compatibility: Main incoming genre = %s.", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x277C78090](v117, -1, -1);
      MEMORY[0x277C78090](v116, -1, -1);
    }

    else
    {
    }

    sub_275422030(v35, v162);
    v118 = sub_27546E3C0();
    v119 = sub_27546E6E0();
    sub_275421F08(v35, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v161 = v121;
      *v120 = 136315138;
      MEMORY[0x28223BE20](v121);
      v154 = v162;
      sub_27541C9A0(sub_2754223B4, v153, v122);
      v123 = sub_275420164();
      v125 = v124;

      v126 = sub_275446968(v123, v125, &v161);
      v35 = v159;

      *(v120 + 4) = v126;
      _os_log_impl(&dword_2753EC000, v118, v119, "Genre compatibility: Ancestor incoming genres = %s.", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x277C78090](v121, -1, -1);
      MEMORY[0x277C78090](v120, -1, -1);
    }

    else
    {
    }

    sub_275422030(v35, v162);
    v127 = sub_27546E3C0();
    v128 = sub_27546E6E0();
    sub_275421F08(v35, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v161 = v130;
      *v129 = 136315138;
      MEMORY[0x28223BE20](v130);
      v154 = v162;
      sub_27541C9A0(sub_2754223B4, v153, v131);
      v132 = sub_275420164();
      v134 = v133;

      v135 = sub_275446968(v132, v134, &v161);
      v35 = v159;

      *(v129 + 4) = v135;
      _os_log_impl(&dword_2753EC000, v127, v128, "Genre compatibility: Descendant incoming genres = %s.", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x277C78090](v130, -1, -1);
      MEMORY[0x277C78090](v129, -1, -1);
    }

    else
    {
    }

    sub_275422030(v35, v162);
    v136 = sub_27546E3C0();
    v137 = sub_27546E6E0();
    sub_275421F08(v35, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v161 = v139;
      *v138 = 136315138;
      MEMORY[0x28223BE20](v139);
      v154 = v162;
      sub_27541C9A0(sub_275422100, v153, v140);
      v141 = sub_275420164();
      v143 = v142;

      v144 = sub_275446968(v141, v143, &v161);

      *(v138 + 4) = v144;
      _os_log_impl(&dword_2753EC000, v136, v137, "Genre compatibility: Significant incoming genres = %s.", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x277C78090](v139, -1, -1);
      MEMORY[0x277C78090](v138, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (*(v12 + 3248) != -1)
    {
      swift_once();
    }

    v110 = sub_27546E3E0();
    __swift_project_value_buffer(v110, qword_2809F3C00);
    v111 = sub_27546E3C0();
    v112 = sub_27546E6E0();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_2753EC000, v111, v112, "Genre compatibility: Incoming genres not available.", v113, 2u);
      MEMORY[0x277C78090](v113, -1, -1);
    }
  }
}

void sub_27541EC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, int a6, uint64_t *a7, void (*a8)(void *__return_ptr, void *), uint64_t a9, void (*a10)(void *__return_ptr, void *), void (*a11)(void *__return_ptr, void *), void (*a12)(void *__return_ptr, void *), void (*a13)(void *__return_ptr, void *), void (*a14)(void *__return_ptr, void *), void (*a15)(void *__return_ptr, void *))
{
  v187 = a7;
  v185 = a6;
  v186 = a2;
  v184 = a9;
  if (!a5)
  {
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v38 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v38, qword_2809F3C00);

    sub_275421F78(a3, a4, 0);
    v24 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    sub_275421FD4(a3, a4, 0);
    if (OUTLINED_FUNCTION_26_1())
    {
      v39 = OUTLINED_FUNCTION_16_0();
      v40 = OUTLINED_FUNCTION_7_5();
      v183 = &v181;
      v190[0] = v40;
      *v39 = 136315138;
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_2_13();
      *(v41 - 16) = v194;
      sub_27541C9A0(a8, v42, a3);
      a3 = sub_275420164();
      v44 = v43;

      v45 = sub_275446968(a3, v44, v190);

      *(v39 + 4) = v45;
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v46, v47, v48, v49);
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_7_3();

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (a5 == 1)
  {
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v20 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v20, qword_2809F3C00);

    OUTLINED_FUNCTION_40();
    sub_275421F78(v21, v22, v23);
    v24 = sub_27546E3C0();
    v25 = sub_27546E6E0();
    OUTLINED_FUNCTION_40();
    sub_275421FD4(v26, v27, v28);
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_16_0();
      v29 = OUTLINED_FUNCTION_16_2();
      v190[0] = v29;
      *v15 = 136315138;
      MEMORY[0x28223BE20](v29);
      OUTLINED_FUNCTION_2_13();
      v31 = OUTLINED_FUNCTION_27_1(v30);
      sub_27541C9A0(v31, v32, a3);
      v33 = sub_275420164();
      v35 = v34;

      a3 = v187;

      v36 = sub_275446968(v33, v35, v190);

      *(v15 + 4) = v36;
      _os_log_impl(&dword_2753EC000, v24, v25, "Genre compatibility: Denied genres = %s.", v15, 0xCu);
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_17_3();

LABEL_12:
      OUTLINED_FUNCTION_25_0();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23_3();
  if (!v19)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v65 = sub_27546E3E0();
  OUTLINED_FUNCTION_12_4(v65, qword_2809F3C00);

  v66 = sub_27546E3C0();
  v67 = sub_27546E6E0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_16_0();
    v69 = OUTLINED_FUNCTION_7_5();
    v182 = v69;
    v190[0] = v69;
    *v68 = 136315138;
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_2_13();
    v71 = OUTLINED_FUNCTION_27_1(v70);
    sub_27541C9A0(v71, v72, a3);
    v183 = 0;
    a3 = sub_275420164();
    v74 = v73;

    v75 = sub_275446968(a3, v74, v190);

    *(v68 + 4) = v75;
    OUTLINED_FUNCTION_50(&dword_2753EC000, v66, v67, "Genre compatibility: Allowed genres = %s.");
    __swift_destroy_boxed_opaque_existential_1(v182);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v183 = 0;
  }

  v170 = sub_27546E3C0();
  v15 = sub_27546E6E0();

  if (OUTLINED_FUNCTION_26_1())
  {
    v171 = OUTLINED_FUNCTION_16_0();
    v172 = OUTLINED_FUNCTION_7_5();
    a3 = &v181;
    v190[0] = v172;
    *v171 = 136315138;
    MEMORY[0x28223BE20](v172);
    OUTLINED_FUNCTION_2_13();
    v174 = OUTLINED_FUNCTION_27_1(v173);
    sub_27541C9A0(v174, v175, a4);
    sub_275420164();
    OUTLINED_FUNCTION_35();

    v176 = sub_275446968(a4, &v181, v190);

    *(v171 + 4) = v176;
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_50(v177, v178, v179, v180);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_18_3();

    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    OUTLINED_FUNCTION_25_0();
  }

LABEL_13:
  v50 = *(a1 + 8);
  if (v50)
  {
    v194[0] = *a1;
    v194[1] = v50;
    v51 = *(a1 + 32);
    v195 = *(a1 + 16);
    v196 = v51;
    v197 = *(a1 + 48);
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v52 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v52, qword_2809F3C00);

    OUTLINED_FUNCTION_38();
    v53 = sub_27546E3C0();
    v54 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_16_0();
      v55 = OUTLINED_FUNCTION_16_2();
      v190[0] = v55;
      *v15 = 136315138;
      v56 = OUTLINED_FUNCTION_36(v194);
      v58 = v57;

      v59 = sub_275446968(v56, v58, v190);
      OUTLINED_FUNCTION_29_1();

      *(v15 + 4) = v59;
      OUTLINED_FUNCTION_34(&dword_2753EC000, v60, v54, "Genre compatibility: Outgoing genre tree = %s.");
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_17_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_38();
    v15 = sub_27546E3C0();
    v76 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v15, v76))
    {
      v77 = OUTLINED_FUNCTION_16_0();
      v78 = OUTLINED_FUNCTION_7_5();
      v190[0] = v78;
      *v77 = 136315138;

      *(v77 + 4) = sub_275446968(*(&v195 + 1), v196, v190);
      OUTLINED_FUNCTION_50(&dword_2753EC000, v15, v76, "Genre compatibility: Main outgoing genre = %s.");
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_38();
    v79 = sub_27546E3C0();
    v80 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_16_0();
      v81 = OUTLINED_FUNCTION_16_2();
      v82 = OUTLINED_FUNCTION_33(v81);
      *v15 = 136315138;
      MEMORY[0x28223BE20](v82);
      OUTLINED_FUNCTION_2_13();
      *(v83 - 16) = v190;
      sub_27541C9A0(a10, v84, v85);
      sub_275420164();
      v87 = v86;

      v88 = OUTLINED_FUNCTION_29_1();
      v90 = sub_275446968(v88, v87, v89);

      *(v15 + 4) = v90;
      OUTLINED_FUNCTION_34(&dword_2753EC000, v91, v80, "Genre compatibility: Ancestor outgoing genres = %s.");
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_17_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_38();
    v92 = sub_27546E3C0();
    a3 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v92, a3))
    {
      OUTLINED_FUNCTION_16_0();
      v93 = OUTLINED_FUNCTION_16_2();
      v94 = OUTLINED_FUNCTION_33(v93);
      *v15 = 136315138;
      MEMORY[0x28223BE20](v94);
      OUTLINED_FUNCTION_2_13();
      *(v95 - 16) = v190;
      sub_27541C9A0(a11, v96, v97);
      v98 = sub_275420164();
      v100 = v99;

      v101 = sub_275446968(v98, v100, v189);
      OUTLINED_FUNCTION_29_1();

      *(v15 + 4) = v101;
      OUTLINED_FUNCTION_34(&dword_2753EC000, v102, a3, "Genre compatibility: Descendant outgoing genres = %s.");
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_17_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_0();

    OUTLINED_FUNCTION_38();
    v103 = sub_27546E3C0();
    v104 = sub_27546E6E0();
    sub_275421F08(a1, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v103, v104))
    {
      OUTLINED_FUNCTION_16_0();
      v105 = OUTLINED_FUNCTION_16_2();
      v106 = OUTLINED_FUNCTION_33(v105);
      *v15 = 136315138;
      MEMORY[0x28223BE20](v106);
      OUTLINED_FUNCTION_2_13();
      *(v107 - 16) = v190;
      sub_27541C9A0(a12, v108, v109);
      sub_275420164();

      v110 = OUTLINED_FUNCTION_18_0();
      v113 = sub_275446968(v110, v111, v112);

      *(v15 + 4) = v113;
      _os_log_impl(&dword_2753EC000, v103, v104, "Genre compatibility: Significant outgoing genres = %s.", v15, 0xCu);
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_17_3();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v61 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v61, qword_2809F3C00);
    v62 = sub_27546E3C0();
    v63 = sub_27546E6E0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_39();
      *v64 = 0;
      _os_log_impl(&dword_2753EC000, v62, v63, "Genre compatibility: Outgoing genres not available.", v64, 2u);
      OUTLINED_FUNCTION_7_3();
    }
  }

  v114 = a3[1];
  if (v114)
  {
    v190[0] = *a3;
    v190[1] = v114;
    v115 = *(a3 + 2);
    v191 = *(a3 + 1);
    v192 = v115;
    v193 = *(a3 + 3);
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v116 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v116, qword_2809F3C00);

    OUTLINED_FUNCTION_37();
    v117 = sub_27546E3C0();
    v118 = sub_27546E6E0();
    sub_275421F08(a3, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v117, v118))
    {
      OUTLINED_FUNCTION_16_0();
      v119 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_33(v119);
      *v15 = 136315138;
      v120 = OUTLINED_FUNCTION_36(v190);
      v122 = v121;

      v123 = sub_275446968(v120, v122, v189);

      *(v15 + 4) = v123;
      _os_log_impl(&dword_2753EC000, v117, v118, "Genre compatibility: Incoming genre tree = %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_17_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
    v130 = sub_27546E3C0();
    v131 = sub_27546E6E0();
    sub_275421F08(a3, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v130, v131))
    {
      v132 = OUTLINED_FUNCTION_16_0();
      v133 = OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_33(v133);
      *v132 = 136315138;

      *(v132 + 4) = sub_275446968(*(&v191 + 1), v192, v189);
      _os_log_impl(&dword_2753EC000, v130, v131, "Genre compatibility: Main incoming genre = %s.", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v133);
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_7_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
    v134 = sub_27546E3C0();
    v135 = sub_27546E6E0();
    sub_275421F08(a3, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v134, v135))
    {
      v136 = OUTLINED_FUNCTION_16_0();
      v137 = OUTLINED_FUNCTION_7_5();
      v138 = OUTLINED_FUNCTION_45(v137);
      *v136 = 136315138;
      MEMORY[0x28223BE20](v138);
      OUTLINED_FUNCTION_2_13();
      *(v139 - 16) = v189;
      sub_27541C9A0(a13, v140, v141);
      sub_275420164();
      OUTLINED_FUNCTION_35();

      v142 = sub_275446968(v189, a3, &v188);
      OUTLINED_FUNCTION_25_0();

      *(v136 + 4) = v142;
      OUTLINED_FUNCTION_49(&dword_2753EC000, v143, v144, "Genre compatibility: Ancestor incoming genres = %s.");
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_7_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
    v145 = sub_27546E3C0();
    v146 = sub_27546E6E0();
    sub_275421F08(a3, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (os_log_type_enabled(v145, v146))
    {
      v147 = OUTLINED_FUNCTION_16_0();
      v148 = OUTLINED_FUNCTION_7_5();
      v149 = OUTLINED_FUNCTION_45(v148);
      *v147 = 136315138;
      MEMORY[0x28223BE20](v149);
      OUTLINED_FUNCTION_2_13();
      *(v150 - 16) = v189;
      sub_27541C9A0(a14, v151, v152);
      sub_275420164();
      OUTLINED_FUNCTION_35();

      v153 = sub_275446968(v189, a3, &v188);
      OUTLINED_FUNCTION_25_0();

      *(v147 + 4) = v153;
      OUTLINED_FUNCTION_49(&dword_2753EC000, v154, v155, "Genre compatibility: Descendant incoming genres = %s.");
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_7_3();
    }

    else
    {
    }

    OUTLINED_FUNCTION_37();
    v156 = sub_27546E3C0();
    sub_27546E6E0();
    sub_275421F08(a3, &qword_2809DAFF8, &_s9GenreTreeVN);
    if (OUTLINED_FUNCTION_26_1())
    {
      v157 = OUTLINED_FUNCTION_16_0();
      v158 = OUTLINED_FUNCTION_7_5();
      v188 = v158;
      *v157 = 136315138;
      MEMORY[0x28223BE20](v158);
      OUTLINED_FUNCTION_2_13();
      *(v159 - 16) = v189;
      sub_27541C9A0(a15, v160, v161);
      v162 = sub_275420164();
      v164 = v163;

      v165 = sub_275446968(v162, v164, &v188);

      *(v157 + 4) = v165;
      OUTLINED_FUNCTION_32();
      _os_log_impl(v166, v167, v168, v169, v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v158);
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_7_3();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    if (!v19)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v124 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v124, qword_2809F3C00);
    v125 = sub_27546E3C0();
    v126 = sub_27546E6E0();
    if (OUTLINED_FUNCTION_24_2(v126))
    {
      v127 = OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_43(v127);
      OUTLINED_FUNCTION_11_5(&dword_2753EC000, v128, v129, "Genre compatibility: Incoming genres not available.");
      OUTLINED_FUNCTION_13_5();
    }
  }
}