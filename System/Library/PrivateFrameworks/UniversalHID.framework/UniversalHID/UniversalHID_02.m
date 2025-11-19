uint64_t sub_270721CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReportSenderID();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v25 - v12;
  result = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25 - v16;
  v18 = 0;
  v26 = a2;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  for (i = (v19 + 63) >> 6; v21; result = sub_27072318C(v13))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_2707230C4(*(a1 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v17);
    sub_270723128(v17, v9);
    sub_270796224(v13, v9);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v26;
    }

    v21 = *(a1 + 64 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_270721EA0(unsigned __int8 a1)
{
  sub_2707A8F60();
  sub_2707A8F80();
  v2 = sub_2707A8FC0();

  return sub_270722248(a1, v2);
}

unint64_t sub_270721F0C(uint64_t a1)
{
  sub_2707A8F60();
  sub_2707A8410();
  sub_270724140(&qword_280829710, MEMORY[0x277CC95F0]);
  sub_2707A8540();
  v2 = type metadata accessor for EventReportSenderID();
  MEMORY[0x2743A8540](*(a1 + *(v2 + 20)));
  v3 = sub_2707A8FC0();

  return sub_2707222A8(a1, v3);
}

unint64_t sub_270721FD8()
{
  OUTLINED_FUNCTION_38_0();
  sub_2707A8620();
  v2 = sub_2707A8FC0();

  return sub_270722410(v1, v0, v2);
}

unint64_t sub_27072203C(uint64_t a1)
{
  v2 = sub_2707A8F50();

  return sub_2707224C4(a1, v2);
}

unint64_t sub_270722080(unsigned int a1)
{
  sub_2707A8F60();
  sub_2707A8F90();
  sub_2707A8F90();
  v2 = sub_2707A8FC0();

  return sub_270722524(a1, v2);
}

unint64_t sub_2707220FC(unsigned int a1)
{
  v3 = MEMORY[0x2743A84D0](*(v1 + 40), a1, 4);

  return sub_2707225A8(a1, v3);
}

unint64_t sub_270722144(uint64_t a1)
{
  sub_2707A8410();
  sub_270724140(&qword_280829710, MEMORY[0x277CC95F0]);
  v2 = sub_2707A8530();

  return sub_270722608(a1, v2);
}

unint64_t sub_2707221DC()
{
  OUTLINED_FUNCTION_38_0();
  MEMORY[0x2743A8540](v1);
  MEMORY[0x2743A8500](v0);
  v2 = sub_2707A8FC0();

  return sub_2707227C4(v1, v0, v2);
}

unint64_t sub_270722248(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_2707222A8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v5, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_2707230C4(*(v2 + 48) + v13 * v11, v9);
      if (sub_2707A83D0())
      {
        v14 = *&v9[*(v5 + 20)];
        sub_27072318C(v9);
        if (v14 == *(a1 + *(v5 + 20)))
        {
          return v11;
        }
      }

      else
      {
        sub_27072318C(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_270722410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2707A8EA0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2707224C4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270722524(unsigned int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = a1;
    v7 = HIWORD(a1);
    v8 = ~v4;
    do
    {
      v9 = (*(v2 + 48) + 4 * result);
      v10 = *v9;
      v11 = v9[1];
      if (v10 == v6 && v7 == v11)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2707225A8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270722608(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_2707A8410();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v14 = ~(-1 << *(v2 + 32));
  for (i = a2 & v14; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * i, v4, v7);
    sub_270724140(&qword_280829718, MEMORY[0x277CC95F0]);
    v11 = sub_2707A85B0();
    (*(v5 + 8))(v9, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2707227C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_27072283C@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_270722A84(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x2707229A8);
      }

      result = 1;
      break;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  return result;
}

uint64_t sub_2707229B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2707A81F0();
  v11 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2707A8200();
  sub_27072283C(v11, a4, a5, &v13);
  sub_270708D74(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_270722A84(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_2707A81F0();
  v8 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2707A8200();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

double sub_270722B3C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_270721F0C(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296F0);
    sub_2707A8C40();
    v7 = *(v10 + 48);
    v8 = type metadata accessor for EventReportSenderID();
    sub_27072318C(v7 + *(*(v8 - 8) + 72) * v6);
    memcpy(a2, (*(v10 + 56) + 80 * v6), 0x50uLL);
    sub_270724140(&qword_2808296E8, type metadata accessor for EventReportSenderID);
    sub_2707A8C60();
    *v2 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_2707AAE10;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
  }

  return result;
}

double sub_270722C84@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_270721FD8();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_44_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829720);
    sub_2707A8C40();

    sub_270724188((*(v7 + 56) + 32 * v5), a1);
    sub_2707A8C60();
    *v1 = v7;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_270722D68(unsigned int a1)
{
  v2 = v1;
  v3 = sub_270722080(a1);
  if ((v4 & 1) == 0)
  {
    return 3;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829730);
  OUTLINED_FUNCTION_53_0();
  v6 = *(*(v8 + 56) + v5);
  sub_27071207C();
  sub_2707A8C60();
  *v2 = v8;
  return v6;
}

uint64_t sub_270722E1C(unsigned int a1)
{
  v2 = v1;
  v3 = sub_2707220FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829728);
  OUTLINED_FUNCTION_53_0();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_2707A8460();
  sub_2707A8C60();
  *v2 = v8;
  return v6;
}

void *sub_270722ED4(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_270721F0C(a2);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808296F0);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_270721F0C(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_2707A8EF0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    v18 = v17[7] + 80 * v13;

    return sub_270724568(a1, v18);
  }

  else
  {
    sub_2707230C4(a2, v9);
    return sub_270723A00(v13, v9, a1, v17);
  }
}

uint64_t sub_2707230C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReportSenderID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270723128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReportSenderID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27072318C(uint64_t a1)
{
  v2 = type metadata accessor for EventReportSenderID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_2707231E8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_270721FD8();
  OUTLINED_FUNCTION_1_9();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_2707A8EF0();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829720);
  if (OUTLINED_FUNCTION_52_0())
  {
    sub_270721FD8();
    OUTLINED_FUNCTION_27_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v14[7] + 32 * v10);
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_47_0();

    return sub_270724188(v15, v16);
  }

  else
  {
    sub_270723AB0(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_47_0();
  }
}

void sub_270723300(uint64_t a1, uint64_t a2)
{
  sub_27072203C(a2);
  OUTLINED_FUNCTION_1_9();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_2707A8EF0();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829738);
  if (OUTLINED_FUNCTION_16_2())
  {
    sub_27072203C(a2);
    OUTLINED_FUNCTION_27_1();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    v12 = *(*v2 + 56) + 56 * v8;
    v13 = *(a1 + 16);
    *v12 = *a1;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a1 + 32);
    *(v12 + 47) = *(a1 + 47);
    OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    sub_270723B1C(v14, v15, v16, v17);
  }
}

uint64_t sub_270723400(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_22_1(a1, a2);
  sub_270721EA0(v4);
  OUTLINED_FUNCTION_1_9();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_2707A8EF0();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A320);
  if (OUTLINED_FUNCTION_16_2())
  {
    sub_270721EA0(v2);
    OUTLINED_FUNCTION_27_1();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(*(*v3 + 56) + 40 * v8);
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_47_0();

    return sub_27070F8A8(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return sub_270723B70(v16, v17, v18, v19);
  }
}

void sub_2707234F0()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_30_1();
  v9 = v8 - v7;
  sub_270721F0C(v2);
  OUTLINED_FUNCTION_1_9();
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829740);
  if ((sub_2707A8C40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_270721F0C(v2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_2707A8EF0();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v0;
  if (v14)
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    sub_2707230C4(v2, v9);
    sub_270723BDC(v13, v9, v4, v17);
    OUTLINED_FUNCTION_12_0();
  }
}

void sub_27072363C(char a1, unsigned int a2)
{
  sub_270722080(a2);
  OUTLINED_FUNCTION_1_9();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829730);
  if ((OUTLINED_FUNCTION_16_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_270722080(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    sub_2707A8EF0();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + v8) = a1;
    OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    sub_270723C7C(v12, v13, v14, v15);
  }
}

unint64_t sub_270723728(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_22_1(a1, a2);
  sub_2707220FC(v5);
  OUTLINED_FUNCTION_1_9();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829728);
  if ((OUTLINED_FUNCTION_16_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_2707220FC(v3);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_2707A8EF0();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v4 + 56) + 8 * v9) = v2;
    OUTLINED_FUNCTION_47_0();
  }

  else
  {
    OUTLINED_FUNCTION_47_0();

    return sub_270723CC0(v15, v16, v17, v18);
  }
}

void sub_270723814()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2707A8410();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_30_1();
  v12 = v11 - v10;
  sub_270722144(v2);
  OUTLINED_FUNCTION_1_9();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829708);
  if ((OUTLINED_FUNCTION_52_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_270722144(v2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_2707A8EF0();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    (*(v7 + 16))(v12, v2, v5);
    sub_270723D04(v16, v12, v4, v20);
    OUTLINED_FUNCTION_12_0();
  }
}

unint64_t sub_270723980(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_54_0(a1, a2, a3, a4);
  *(v7 + result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_2707239B8(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_270723A00(unint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EventReportSenderID();
  sub_270723128(a2, v8 + *(*(v9 - 8) + 72) * a1);
  result = memcpy((a4[7] + 80 * a1), a3, 0x50uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_270723AB0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_270724188(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_270723B1C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_54_0(a1, a2, a3, a4);
  *(v7 + 8 * result) = v6;
  v8 = *(v5 + 56) + 56 * result;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  *(v8 + 47) = *(v9 + 47);
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v13;
  }

  return result;
}

uint64_t sub_270723B70(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_27070F8A8(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_270723BDC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for EventReportSenderID();
  result = sub_270723128(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_270723C7C(unint64_t result, int a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_270723CC0(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_270723D04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2707A8410();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_270723DBC(uint64_t a1, uint64_t (*a2)(char *), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_270724478(v12, v8, v6, a2);
      MEMORY[0x2743A9010](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_2707961C0(0, v8, v9);
  sub_270724198(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t dispatch thunk of EventReportDispatcherProtocol.sendReport(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

{
  return (*(a5 + 40))();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_270723FCC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27072400C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_270724070(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 80))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2707240BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_270724140(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_270724188(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_270724198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v26[0] = a2;
  v27 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829748);
  MEMORY[0x28223BE20](v30, v5);
  v7 = v26 - v6;
  v8 = type metadata accessor for EventReportSenderID();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v12 = 0;
  v34 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v34;
    sub_2707230C4(*(v34 + 48) + *(v29 + 72) * v23, v11);
    memcpy(__dst, (*(v24 + 56) + 80 * v23), 0x50uLL);
    sub_2707230C4(v11, v7);
    memcpy(&v7[*(v30 + 48)], __dst, 0x50uLL);
    sub_27072305C(__dst, v32);
    sub_27072305C(__dst, v32);
    LOBYTE(v24) = v31(v7);
    sub_270724508(v7, &qword_280829748);
    sub_270723094(__dst);
    sub_27072318C(v11);
    if ((v24 & 1) == 0)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        sub_27073DA88();
        return;
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_15;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_270724478(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_270724198(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_270724508(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_11(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7)
{
  v13[104] = v15;
  v13[105] = a7;
  v13[106] = a6;
  v13[107] = a5;
  v13[108] = v7;
  v13[109] = a4;
  v13[110] = a2;
  v13[111] = a1;
  v13[112] = v14;
  v13[113] = v12;
  v13[114] = v11;
  v13[115] = v10;
  v13[116] = v9;
  v13[117] = v8;

  return memcmp(v13 + 128, v13 + 104, a3);
}

void *OUTLINED_FUNCTION_12_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void *OUTLINED_FUNCTION_13_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __dst)
{

  return memcpy(&__dst, (v31 - 176), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_2707A8C40();
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_27071D238(va, (v12 + 8), v13);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v4 = *(v0 + 8);

  return sub_27072283C(v4, v2, v1, (v0 + 128));
}

void *OUTLINED_FUNCTION_25_2()
{
  v2 = *(v0 + 72);
  v3 = v2[3];

  return __swift_project_boxed_opaque_existential_1(v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_27072305C(v0 + 208, v0 + 128);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_2707A8F60();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2707229B8(a1, a2, a3, v4, v3);
}

uint64_t OUTLINED_FUNCTION_40_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_270706C38(v2, v3);
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{

  return static EventReportAccumulator.Value.== infix(_:_:)(&a31, &a21);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{

  return sub_270708D74(a9, a10);
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_27072305C(v31 - 176, &a31);
}

void OUTLINED_FUNCTION_46_0(__n128 a1, __n128 a2)
{
  *(v4 - 160) = a2;
  *(v4 - 144) = a1;
  *(v4 - 128) = v3;
  *(v4 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_50_0()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_2707A8C40();
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_2707A8C40();
}

void (*HIDReport.subscript.modify(void *a1, uint64_t a2))()
{
  OUTLINED_FUNCTION_0_12(a1, a2);
  *(v2 + 16) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_270724A98;
}

{
  OUTLINED_FUNCTION_0_12(a1, a2);
  *(v2 + 16) = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  return sub_270724B0C;
}

{
  OUTLINED_FUNCTION_0_12(a1, a2);
  *(v2 + 16) = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  return sub_270724B80;
}

void (*HIDReport.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  return sub_270724C04;
}

uint64_t OUTLINED_FUNCTION_0_12(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = v2;
  return a2;
}

uint64_t sub_270724C58()
{
  result = sub_270724C7C();
  qword_280829778 = result;
  unk_280829780 = v1;
  return result;
}

uint64_t sub_270724C7C()
{
  v1 = sub_27070E504(&unk_2880763B8);
  v73 = v1;
  v74 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 255);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v71 = v74;
  v72 = v73;
  sub_270708D74(v73, v74);
  v4 = sub_27070E504(&unk_2880763E0);
  v73 = v4;
  v74 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 3);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v69 = v73;
  v70 = v74;
  sub_270708D74(v73, v74);
  v7 = sub_27070E504(&unk_288076408);
  v73 = v7;
  v74 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 192);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v67 = v74;
  v68 = v73;
  sub_270708D74(v73, v74);
  v10 = sub_27070E504(&unk_288076430);
  v73 = v10;
  v74 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 4);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v65 = v74;
  v66 = v73;
  sub_270708D74(v73, v74);
  v13 = sub_27070E504(&unk_288076458);
  v73 = v13;
  v74 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v63 = v74;
  v64 = v73;
  sub_270708D74(v73, v74);
  v16 = sub_27070E504(&unk_288076480);
  v73 = v16;
  v74 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v73, v74);
  v61 = v74;
  v62 = v73;
  sub_270708D74(v73, v74);
  LOBYTE(v73) = 7;
  v18 = sub_270740DC4(&v73, 255);
  v59 = v19;
  v60 = v18;
  v21 = sub_27070E504(&unk_2880764A8);
  v73 = v21;
  v74 = v20;
  v22 = 0;
  switch(v20 >> 62)
  {
    case 1uLL:
      v22 = v21 >> 32;
      break;
    case 2uLL:
      v22 = *(v21 + 24);
      break;
    case 3uLL:
      break;
    default:
      v22 = BYTE6(v20);
      break;
  }

  sub_270766E38(v22, v22, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v23 = v73;
  v24 = v74;
  sub_270706C38(v73, v74);
  v58 = v23;
  sub_270708D74(v23, v24);
  LOBYTE(v73) = 5;
  v25 = sub_27074110C(&v73, 0xFF00uLL);
  v56 = v26;
  v57 = v25;
  LOBYTE(v73) = 17;
  v54 = sub_27074110C(&v73, 0x102uLL);
  v55 = v27;
  v29 = sub_27070E504(&unk_2880764D0);
  v73 = v29;
  v74 = v28;
  v30 = 0;
  switch(v28 >> 62)
  {
    case 1uLL:
      v30 = v29 >> 32;
      break;
    case 2uLL:
      v30 = *(v29 + 24);
      break;
    case 3uLL:
      break;
    default:
      v30 = BYTE6(v28);
      break;
  }

  sub_270766E38(v30, v30, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v31 = v73;
  v32 = v74;
  sub_270706C38(v73, v74);
  sub_270708D74(v31, v32);
  LOBYTE(v73) = 7;
  v52 = sub_270740DC4(&v73, 255);
  v53 = v33;
  v35 = sub_27070E504(&unk_2880764F8);
  v73 = v35;
  v74 = v34;
  v36 = 0;
  switch(v34 >> 62)
  {
    case 1uLL:
      v36 = v35 >> 32;
      break;
    case 2uLL:
      v36 = *(v35 + 24);
      break;
    case 3uLL:
      break;
    default:
      v36 = BYTE6(v34);
      break;
  }

  sub_270766E38(v36, v36, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v37 = v73;
  v38 = v74;
  sub_270706C38(v73, v74);
  sub_270708D74(v37, v38);
  v40 = sub_27070E504(&unk_288076520);
  v73 = v40;
  v74 = v39;
  v41 = 0;
  switch(v39 >> 62)
  {
    case 1uLL:
      v41 = v40 >> 32;
      break;
    case 2uLL:
      v41 = *(v40 + 24);
      break;
    case 3uLL:
      break;
    default:
      v41 = BYTE6(v39);
      break;
  }

  sub_270766E38(v41, v41, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v42 = v73;
  v43 = v74;
  sub_270706C38(v73, v74);
  sub_270708D74(v42, v43);
  v45 = sub_27070E504(&unk_288076548);
  v73 = v45;
  v74 = v44;
  v46 = 0;
  switch(v44 >> 62)
  {
    case 1uLL:
      v46 = v45 >> 32;
      break;
    case 2uLL:
      v46 = *(v45 + 24);
      break;
    case 3uLL:
      break;
    default:
      v46 = BYTE6(v44);
      break;
  }

  sub_270766E38(v46, v46, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v48 = v73;
  v47 = v74;
  sub_270706C38(v73, v74);
  sub_270708D74(v48, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 4;
  *(inited + 72) = v72;
  *(inited + 80) = v71;
  *(inited + 136) = &type metadata for UsageMinimum;
  *(inited + 144) = &protocol witness table for UsageMinimum;
  *(inited + 112) = v69;
  *(inited + 120) = v70;
  *(inited + 176) = &type metadata for UsageMaximum;
  *(inited + 184) = &protocol witness table for UsageMaximum;
  *(inited + 152) = v68;
  *(inited + 160) = v67;
  *(inited + 192) = v66;
  *(inited + 200) = v65;
  *(inited + 232) = v64;
  *(inited + 240) = v63;
  *(inited + 272) = v62;
  *(inited + 280) = v61;
  *(inited + 312) = v60;
  *(inited + 320) = v59;
  *(inited + 352) = v58;
  *(inited + 360) = v24;
  *(inited + 416) = &type metadata for UsagePage;
  *(inited + 424) = &protocol witness table for UsagePage;
  *(inited + 96) = &type metadata for UsagePage;
  *(inited + 104) = &protocol witness table for UsagePage;
  *(inited + 392) = v57;
  *(inited + 400) = v56;
  *(inited + 456) = &type metadata for Usage;
  *(inited + 464) = &protocol witness table for Usage;
  *(inited + 432) = v54;
  *(inited + 440) = v55;
  *(inited + 496) = &type metadata for LogicalMinimum;
  *(inited + 504) = &protocol witness table for LogicalMinimum;
  *(inited + 296) = &type metadata for LogicalMinimum;
  *(inited + 304) = &protocol witness table for LogicalMinimum;
  *(inited + 472) = v31;
  *(inited + 480) = v32;
  *(inited + 536) = &type metadata for LogicalMaximum;
  *(inited + 336) = &type metadata for LogicalMaximum;
  *(inited + 344) = &protocol witness table for LogicalMaximum;
  *(inited + 544) = &protocol witness table for LogicalMaximum;
  *(inited + 512) = v52;
  *(inited + 520) = v53;
  *(inited + 576) = &type metadata for ReportSize;
  *(inited + 256) = &type metadata for ReportSize;
  *(inited + 264) = &protocol witness table for ReportSize;
  *(inited + 584) = &protocol witness table for ReportSize;
  *(inited + 552) = v37;
  *(inited + 560) = v38;
  *(inited + 616) = &type metadata for ReportCount;
  *(inited + 216) = &type metadata for ReportCount;
  *(inited + 224) = &protocol witness table for ReportCount;
  *(inited + 624) = &protocol witness table for ReportCount;
  *(inited + 592) = v42;
  *(inited + 600) = v43;
  *(inited + 656) = &type metadata for Input;
  *(inited + 376) = &type metadata for Input;
  *(inited + 384) = &protocol witness table for Input;
  *(inited + 664) = &protocol witness table for Input;
  *(inited + 632) = v48;
  *(inited + 640) = v47;
  *(inited + 16) = xmmword_2707AB1C0;
  v50 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v50;
}

uint64_t static AppleVendorTopCaseReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  v2 = qword_280829778;
  v3 = unk_280829780;
  *a1 = qword_280829778;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

unint64_t AppleVendorTopCaseReport.description.getter(uint64_t a1, unint64_t a2)
{
  sub_270706C38(a1, a2);
  for (i = 0; i < 4; ++i)
  {
    if ((_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() - 3) < 3u)
    {
      sub_270710EEC();
      v7 = sub_2707A8680();
      v8 = v5;
      MEMORY[0x2743A7BE0](32, 0xE100000000000000);
      MEMORY[0x2743A7BE0](v7, v8);
    }
  }

  sub_270708D74(a1, a2);

  MEMORY[0x2743A7BE0](41, 0xE100000000000000);

  return 0xD00000000000001ALL;
}

uint64_t AppleVendorTopCaseReport.makeIterator()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  return sub_270706C38(a1, a2);
}

void AppleVendorTopCaseReport.Iterator.next()()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = v1 + 1;
    v3 = 8 * v1;
    v4 = (v1 - 0x1000000000000000) >> 61;
    while (v4 >= 7)
    {
      if (__OFADD__(v3, 8))
      {
        goto LABEL_10;
      }

      v5 = (_s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0() - 6);
      *(v0 + 16) = v2;
      if (v5 <= 0xFC)
      {
        ++v2;
        v3 += 8;
        if (v2 != 5)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t AppleVendorTopCaseReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270725904@<X0>(uint64_t *a1@<X8>)
{
  result = AppleVendorTopCaseReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270725954@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  AppleVendorTopCaseReport.makeIterator()(v2, v3, a1);

  return sub_270708D74(v2, v3);
}

uint64_t AppleVendorTopCaseReport.update(with:)(unsigned __int8 a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      break;
    case 2uLL:
      v5 = *(v2 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v5, 4))
  {
    goto LABEL_50;
  }

  if (v5 + 4 < v5 + 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_270706C38(*v1, *(v1 + 8));
  v6 = sub_270725D94(v5 + 1, v5 + 4, v2, v3);
  v8 = v7;
  sub_270708D74(v2, v3);
  v9 = sub_270725E18(a1);
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    v24 = v5;
    v11 = v8 >> 62;
    v12 = 0;
    v25 = v9;
    switch(v8 >> 62)
    {
      case 1uLL:
        v12 = v6;
        break;
      case 2uLL:
        v12 = *(v6 + 16);
        break;
      default:
        break;
    }

    v23 = v12;
    while (1)
    {
      v13 = BYTE6(v8);
      switch(v11)
      {
        case 0:
          goto LABEL_14;
        case 1:
          v13 = v6 >> 32;
          goto LABEL_14;
        case 2:
          v13 = *(v6 + 24);
LABEL_14:
          if (v12 == v13)
          {
            a1 = 0;
            v10 = v25;
            goto LABEL_40;
          }

          if (v11 == 2)
          {
            if (v12 < *(v6 + 16))
            {
              goto LABEL_45;
            }

            if (v12 >= *(v6 + 24))
            {
              goto LABEL_47;
            }

            v19 = sub_2707A81F0();
            if (!v19)
            {
              goto LABEL_56;
            }

            v16 = v19;
            v20 = sub_2707A8210();
            v18 = v12 - v20;
            if (__OFSUB__(v12, v20))
            {
              goto LABEL_49;
            }

            goto LABEL_30;
          }

          if (v11 == 1)
          {
            if (v12 < v6 || v12 >= v6 >> 32)
            {
              goto LABEL_46;
            }

            v15 = sub_2707A81F0();
            if (!v15)
            {
              goto LABEL_55;
            }

            v16 = v15;
            v17 = sub_2707A8210();
            v18 = v12 - v17;
            if (__OFSUB__(v12, v17))
            {
              goto LABEL_48;
            }

LABEL_30:
            if (!*(v16 + v18))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          if (v12 >= BYTE6(v8))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v26 = v6;
          v27 = v8;
          v28 = BYTE2(v8);
          v29 = BYTE3(v8);
          v30 = BYTE4(v8);
          v31 = BYTE5(v8);
          if (!*(&v26 + v12))
          {
LABEL_36:
            if (!__OFSUB__(v12, v24))
            {
              OUTLINED_FUNCTION_5();
              v10 = v25;
              if (v21)
              {
                _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
                a1 = 0;
                goto LABEL_40;
              }

LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_34:
          ++v12;
          break;
        case 3:
          sub_270708D74(v6, v8);
          v10 = v25;
          if (v23)
          {
            goto LABEL_54;
          }

          a1 = 0;
          return a1 | (((v10 & 1) == 0) << 8);
        default:
          JUMPOUT(0);
      }
    }
  }

LABEL_40:
  sub_270708D74(v6, v8);
  return a1 | (((v10 & 1) == 0) << 8);
}

uint64_t sub_270725D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v5 = a3;
      v4 = a3 >> 32;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v5 > a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 + 1 < a1)
  {
LABEL_11:
    __break(1u);
    JUMPOUT(0x270725E08);
  }

  return sub_2707A82D0();
}

uint64_t sub_270725E18(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_2707A8380();
  MEMORY[0x28223BE20](v2, v3);
  v4 = OUTLINED_FUNCTION_4_6();
  sub_270706C38(v4, v5);
  OUTLINED_FUNCTION_4_6();
  sub_2707A8390();
  sub_2707275B8();
  do
  {
    OUTLINED_FUNCTION_28();
    sub_2707A8940();
  }

  while ((v10 & 1) == 0 && v9 != v1);
  v6 = OUTLINED_FUNCTION_7_5();
  v7(v6);
  return v10 ^ 1u;
}

unint64_t sub_270725F74(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  result = sub_270706C38(a2, a3);
  v7 = 0;
  while (2)
  {
    v8 = v7 < 4;
    if (v7 <= 3)
    {
      v9 = v7 - 0x1000000000000000;
      v10 = 8 * v7++;
      v11 = v9 >> 61;
      while (1)
      {
        if (v11 < 7)
        {
          __break(1u);
LABEL_12:
          __break(1u);
          return result;
        }

        result = v10 + 8;
        if (__OFADD__(v10, 8))
        {
          goto LABEL_12;
        }

        result = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
        if ((result - 3) < 3u)
        {
          break;
        }

        ++v7;
        v10 += 8;
        if (v7 == 5)
        {
          v8 = 0;
          goto LABEL_10;
        }
      }

      if (result != a1)
      {
        continue;
      }
    }

    break;
  }

LABEL_10:
  sub_270708D74(a2, a3);
  return v8;
}

uint64_t sub_270726054(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_5_6(a2, a3, *MEMORY[0x277D85DE8]);
  v6 = 1;
LABEL_2:
  v7 = v6 < 232;
  if (v6 <= 231)
  {
    v8 = v6 - 256;
    do
    {
      if (v8 > 0xFFFFFFFFFFFFFF00)
      {
        v9 = v8 + 264;
        v10 = 0;
        switch(a3 >> 62)
        {
          case 1uLL:
            v10 = a2;
            break;
          case 2uLL:
            v10 = *(a2 + 16);
            break;
          default:
            break;
        }

        v11 = v10 + (v9 >> 3);
        if (!__OFADD__(v10, v9 >> 3))
        {
          switch(a3 >> 62)
          {
            case 1uLL:
              if (v11 < a2 || v11 >= a2 >> 32)
              {
                goto LABEL_34;
              }

              if (!sub_2707A81F0())
              {
                goto LABEL_39;
              }

              v16 = OUTLINED_FUNCTION_8_5();
              v14 = v11 - v16;
              if (!__OFSUB__(v11, v16))
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            case 2uLL:
              if (v11 < *(a2 + 16))
              {
                goto LABEL_32;
              }

              if (v11 >= *(a2 + 24))
              {
                goto LABEL_35;
              }

              if (!sub_2707A81F0())
              {
                goto LABEL_40;
              }

              v13 = OUTLINED_FUNCTION_8_5();
              v14 = v11 - v13;
              if (__OFSUB__(v11, v13))
              {
                goto LABEL_37;
              }

LABEL_25:
              v12 = *(v3 + v14);
LABEL_26:
              if ((v12 & (1 << (v8 & 7))) == 0)
              {
                goto LABEL_27;
              }

              v6 = v8 + 257;
              v7 = v7;
              if (v18 == v8)
              {
                goto LABEL_30;
              }

              goto LABEL_2;
            case 3uLL:
              goto LABEL_38;
            default:
              if (v11 >= BYTE6(a3))
              {
                goto LABEL_33;
              }

              v19 = a2;
              v20 = a3;
              v21 = BYTE2(a3);
              v22 = BYTE3(a3);
              v23 = BYTE4(a3);
              v24 = BYTE5(a3);
              v12 = *(&v19 + v11);
              goto LABEL_26;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
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
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

LABEL_27:
      ++v8;
    }

    while (v8 != -24);
    v7 = 0;
  }

LABEL_30:
  sub_270708D74(a2, a3);
  return v7;
}

BOOL sub_270726308(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_6_5(a1, a2, a3);
  v4 = 0;
  do
  {
    v5 = v4 < 2;
    if (v4 > 1)
    {
      break;
    }

    while (1)
    {
      v6 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      if ((v6 - 49) > 0xCFu && v6 <= 0x21u && ((1 << v6) & 0x30003001ELL) != 0)
      {
        break;
      }

      v8 = v4 < 1;
      v4 = 1;
      if (!v8)
      {
        v5 = 0;
        goto LABEL_12;
      }
    }

    ++v4;
  }

  while (v6 != v3);
LABEL_12:
  v9 = OUTLINED_FUNCTION_7_5();
  sub_270708D74(v9, v10);
  return v5;
}

BOOL sub_2707263D4(unsigned int a1, uint64_t a2)
{
  v2 = (a2 + 34);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v5 = *(v2 - 1);
    v2 += 2;
  }

  while (v5 != a1 || v4 != HIWORD(a1));
  return v3 != 0;
}

uint64_t sub_270726414(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = OUTLINED_FUNCTION_6_5(a1, a2, a3);
  v5 = 0;
  while (2)
  {
    v6 = v5 < 4;
    if (v5 <= 3)
    {
      v7 = v5 - 0x800000000000000;
      v8 = (16 * v5++) | 8;
      v9 = v7 >> 60;
      while (1)
      {
        if (v9 < 0xF)
        {
          __break(1u);
          return result;
        }

        result = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
        if ((result - 1301) > 0xFAEBu)
        {
          break;
        }

        ++v5;
        v8 += 16;
        if (v5 == 5)
        {
          v6 = 0;
          goto LABEL_9;
        }
      }

      if (result != v3)
      {
        continue;
      }
    }

    break;
  }

LABEL_9:
  v10 = OUTLINED_FUNCTION_7_5();
  sub_270708D74(v10, v11);
  return v6;
}

BOOL sub_2707264E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_5_6(a2, a3, *MEMORY[0x277D85DE8]);
  v6 = 0;
LABEL_2:
  v17 = v6 < 3;
  if (v6 <= 2)
  {
    while (1)
    {
      v7 = 0;
      switch(a3 >> 62)
      {
        case 1uLL:
          v7 = a2;
          break;
        case 2uLL:
          v7 = *(a2 + 16);
          break;
        default:
          break;
      }

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
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
LABEL_39:
        __break(1u);
      }

      switch(a3 >> 62)
      {
        case 1uLL:
          if (v8 < a2 || v8 >= a2 >> 32)
          {
            goto LABEL_33;
          }

          if (!sub_2707A81F0())
          {
            goto LABEL_38;
          }

          v13 = OUTLINED_FUNCTION_8_5();
          v11 = v8 - v13;
          if (!__OFSUB__(v8, v13))
          {
            goto LABEL_23;
          }

          goto LABEL_35;
        case 2uLL:
          if (v8 < *(a2 + 16))
          {
            goto LABEL_32;
          }

          if (v8 >= *(a2 + 24))
          {
            goto LABEL_34;
          }

          if (!sub_2707A81F0())
          {
            goto LABEL_39;
          }

          v10 = OUTLINED_FUNCTION_8_5();
          v11 = v8 - v10;
          if (__OFSUB__(v8, v10))
          {
            goto LABEL_36;
          }

LABEL_23:
          v9 = *(v3 + v11);
LABEL_24:
          if ((v9 & (1 << (v6 & 7))) != 0)
          {
            if (v16 != v6++)
            {
              goto LABEL_2;
            }

            goto LABEL_29;
          }

          if (++v6 == 3)
          {
            v17 = 0;
            goto LABEL_29;
          }

          break;
        case 3uLL:
          goto LABEL_37;
        default:
          if (v8 >= BYTE6(a3))
          {
            goto LABEL_31;
          }

          v18 = a2;
          v19 = a3;
          v20 = BYTE2(a3);
          v21 = BYTE3(a3);
          v22 = BYTE4(a3);
          v23 = BYTE5(a3);
          v9 = *(&v18 + v8);
          goto LABEL_24;
      }
    }
  }

LABEL_29:
  sub_270708D74(a2, a3);
  return v17;
}

BOOL sub_270726798(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t AppleVendorTopCaseReport.remove(_:)(unsigned __int8 a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      break;
    case 2uLL:
      v4 = *(v2 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v4, 4))
  {
    goto LABEL_49;
  }

  if (v4 + 4 < v4 + 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v29 = v4;
  sub_270706C38(v2, v3);
  v5 = OUTLINED_FUNCTION_4_6();
  v7 = sub_270725D94(v5, v6, v2, v3);
  v9 = v8;
  sub_270708D74(v2, v3);
  v10 = v9 >> 62;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v7;
      break;
    case 2uLL:
      v11 = *(v7 + 16);
      break;
    default:
      break;
  }

  v28 = v11;
  while (2)
  {
    v12 = BYTE6(v9);
    switch(v10)
    {
      case 0:
        goto LABEL_13;
      case 1:
        v12 = v7 >> 32;
        goto LABEL_13;
      case 2:
        v12 = *(v7 + 24);
LABEL_13:
        v13 = v11 == v12;
        if (v11 != v12)
        {
          if (v10 == 2)
          {
            if (v11 < *(v7 + 16))
            {
              goto LABEL_44;
            }

            if (v11 >= *(v7 + 24))
            {
              goto LABEL_46;
            }

            v19 = sub_2707A81F0();
            if (!v19)
            {
              goto LABEL_55;
            }

            v16 = v19;
            v20 = sub_2707A8210();
            v18 = v11 - v20;
            if (__OFSUB__(v11, v20))
            {
              goto LABEL_48;
            }

            goto LABEL_29;
          }

          if (v10 == 1)
          {
            if (v11 < v7 || v11 >= v7 >> 32)
            {
              goto LABEL_45;
            }

            v15 = sub_2707A81F0();
            if (!v15)
            {
              goto LABEL_54;
            }

            v16 = v15;
            v17 = sub_2707A8210();
            v18 = v11 - v17;
            if (__OFSUB__(v11, v17))
            {
              goto LABEL_47;
            }

LABEL_29:
            v21 = *(v16 + v18);
            goto LABEL_32;
          }

          if (v11 >= BYTE6(v9))
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v31 = v7;
          v32 = v9;
          v33 = BYTE2(v9);
          v34 = BYTE3(v9);
          v35 = BYTE4(v9);
          v36 = BYTE5(v9);
          v21 = *(&v31 + v11);
LABEL_32:
          if (v21 == v30)
          {
            if (!__OFSUB__(v11, v29))
            {
              OUTLINED_FUNCTION_5();
              if (v22)
              {
                _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
                goto LABEL_39;
              }

LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          ++v11;
          continue;
        }

        v30 = 0;
LABEL_39:
        v23 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v23, v24);
        return v30 | (v13 << 8);
      case 3:
        v26 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v26, v27);
        if (v28)
        {
          goto LABEL_53;
        }

        v30 = 0;
        v13 = 1;
        return v30 | (v13 << 8);
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_270726BA8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = OUTLINED_FUNCTION_28();
  v4(v3);
  sub_270708D74(v2, v1);
  v5 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v5, v6);
}

uint64_t sub_270726C6C()
{
  OUTLINED_FUNCTION_28();
  sub_270763D2C();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_270726CBC()
{
  OUTLINED_FUNCTION_28();
  sub_27075A6E0();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_270726D18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t, unint64_t))
{
  v5 = *v4;
  v6 = v4[1];
  a4(*a1, a1[1], v5, v6);

  return sub_270708D74(v5, v6);
}

void sub_270726DA4()
{
  sub_270727564();

  EventReportProtocol<>.init<A>(_:)();
}

uint64_t AppleVendorTopCaseReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270726F00);
      }

      if (v4 >= 13)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270726F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = AppleVendorTopCaseReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void AppleVendorTopCaseReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x270727008);
      }

      if (v2 >= 13)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void (*AppleVendorTopCaseReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707270ECLL);
      }

      if (v6 >= 13)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_2707270FC;
  }
}

void sub_2707270FC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    AppleVendorTopCaseReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 13)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_2707271DC(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x2707272BCLL);
      }

      if (v7 >= 13)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_2707272CC;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_2707272CC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    AppleVendorTopCaseReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 13)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t sub_270727388()
{
  result = qword_280829788;
  if (!qword_280829788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829788);
  }

  return result;
}

unint64_t sub_2707273E0()
{
  result = qword_280829790;
  if (!qword_280829790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829790);
  }

  return result;
}

unint64_t sub_270727438()
{
  result = qword_280829798;
  if (!qword_280829798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829798);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2707274B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_270727504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_270727564()
{
  result = qword_2808297A0;
  if (!qword_2808297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297A0);
  }

  return result;
}

unint64_t sub_2707275B8()
{
  result = qword_2808297A8;
  if (!qword_2808297A8)
  {
    sub_2707A8380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 88) = a3;

  return sub_270706C38(a1, a2);
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, unint64_t a3)
{

  return sub_270706C38(a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_2707A8210();
}

void TranslationReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x270727730);
      }

      if (v2 >= 14)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void TranslationReport.phase.setter()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_1_6(v0);

  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
}

uint64_t sub_2707277E8()
{
  result = sub_27072780C();
  qword_2808297B0 = result;
  *algn_2808297B8 = v1;
  return result;
}

uint64_t sub_27072780C()
{
  v1 = sub_27070E504(&unk_288075670);
  v65 = v1;
  v66 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v63 = v66;
  v64 = v65;
  sub_270708D74(v65, v66);
  v4 = sub_27070E504(&unk_288075698);
  v65 = v4;
  v66 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v61 = v66;
  v62 = v65;
  sub_270708D74(v65, v66);
  v7 = sub_27070E504(&unk_2880756C0);
  v65 = v7;
  v66 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v59 = v66;
  v60 = v65;
  sub_270708D74(v65, v66);
  v10 = sub_27070E504(&unk_2880756E8);
  v65 = v10;
  v66 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v57 = v66;
  v58 = v65;
  sub_270708D74(v65, v66);
  v13 = sub_27070E504(&unk_288075710);
  v65 = v13;
  v66 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v65, v66);
  v55 = v66;
  v56 = v65;
  sub_270708D74(v65, v66);
  v16 = sub_27070E504(&unk_288075738);
  v65 = v16;
  v66 = v15;
  v17 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = v16 >> 32;
      break;
    case 2uLL:
      v17 = *(v16 + 24);
      break;
    case 3uLL:
      break;
    default:
      v17 = BYTE6(v15);
      break;
  }

  sub_270766E38(v17, v17, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v18 = v66;
  sub_270706C38(v65, v66);
  v54 = v65;
  sub_270708D74(v65, v66);
  LOBYTE(v65) = 5;
  v19 = sub_27074110C(&v65, 0xFF00uLL);
  v52 = v20;
  v53 = v19;
  LOBYTE(v65) = 17;
  v21 = sub_27074110C(&v65, 0x102uLL);
  v50 = v22;
  v51 = v21;
  v24 = sub_27070E504(&unk_288075760);
  v65 = v24;
  v66 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v26 = v65;
  v27 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v26, v27);
  LOBYTE(v65) = 7;
  v28 = sub_270740DC4(&v65, 255);
  v48 = v29;
  v49 = v28;
  v31 = sub_27070E504(&unk_288075788);
  v65 = v31;
  v66 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v33 = v65;
  v34 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v33, v34);
  v36 = sub_27070E504(&unk_2880757B0);
  v65 = v36;
  v66 = v35;
  v37 = 0;
  switch(v35 >> 62)
  {
    case 1uLL:
      v37 = v36 >> 32;
      break;
    case 2uLL:
      v37 = *(v36 + 24);
      break;
    case 3uLL:
      break;
    default:
      v37 = BYTE6(v35);
      break;
  }

  sub_270766E38(v37, v37, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v38 = v65;
  v39 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v38, v39);
  v41 = sub_27070E504(&unk_2880757D8);
  v65 = v41;
  v66 = v40;
  v42 = 0;
  switch(v40 >> 62)
  {
    case 1uLL:
      v42 = v41 >> 32;
      break;
    case 2uLL:
      v42 = *(v41 + 24);
      break;
    case 3uLL:
      break;
    default:
      v42 = BYTE6(v40);
      break;
  }

  sub_270766E38(v42, v42, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v65;
  v43 = v66;
  sub_270706C38(v65, v66);
  sub_270708D74(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AB530;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 17;
  *(inited + 96) = &type metadata for ReportSize;
  *(inited + 104) = &protocol witness table for ReportSize;
  *(inited + 72) = v64;
  *(inited + 80) = v63;
  *(inited + 136) = &type metadata for ReportCount;
  *(inited + 144) = &protocol witness table for ReportCount;
  *(inited + 112) = v62;
  *(inited + 120) = v61;
  *(inited + 176) = &type metadata for Input;
  *(inited + 184) = &protocol witness table for Input;
  *(inited + 152) = v60;
  *(inited + 160) = v59;
  *(inited + 216) = &type metadata for ReportSize;
  *(inited + 224) = &protocol witness table for ReportSize;
  *(inited + 192) = v58;
  *(inited + 200) = v57;
  *(inited + 256) = &type metadata for ReportCount;
  *(inited + 264) = &protocol witness table for ReportCount;
  *(inited + 232) = v56;
  *(inited + 240) = v55;
  *(inited + 296) = &type metadata for Input;
  *(inited + 304) = &protocol witness table for Input;
  *(inited + 272) = v54;
  *(inited + 280) = v18;
  *(inited + 336) = &type metadata for UsagePage;
  *(inited + 344) = &protocol witness table for UsagePage;
  *(inited + 312) = v53;
  *(inited + 320) = v52;
  *(inited + 376) = &type metadata for Usage;
  *(inited + 384) = &protocol witness table for Usage;
  *(inited + 352) = v51;
  *(inited + 360) = v50;
  *(inited + 416) = &type metadata for LogicalMinimum;
  *(inited + 424) = &protocol witness table for LogicalMinimum;
  *(inited + 392) = v26;
  *(inited + 400) = v27;
  *(inited + 456) = &type metadata for LogicalMaximum;
  *(inited + 464) = &protocol witness table for LogicalMaximum;
  *(inited + 432) = v49;
  *(inited + 440) = v48;
  *(inited + 496) = &type metadata for ReportSize;
  *(inited + 504) = &protocol witness table for ReportSize;
  *(inited + 472) = v33;
  *(inited + 480) = v34;
  *(inited + 536) = &type metadata for ReportCount;
  *(inited + 544) = &protocol witness table for ReportCount;
  *(inited + 512) = v38;
  *(inited + 520) = v39;
  *(inited + 576) = &type metadata for Input;
  *(inited + 584) = &protocol witness table for Input;
  *(inited + 552) = v44;
  *(inited + 560) = v43;
  v46 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v46;
}

uint64_t static TranslationReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829438 != -1)
  {
    swift_once();
  }

  v2 = qword_2808297B0;
  v3 = *algn_2808297B8;
  *a1 = qword_2808297B0;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t TranslationReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270728184@<X0>(uint64_t *a1@<X8>)
{
  result = TranslationReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2707281C4@<X0>(_BYTE *a1@<X8>)
{
  result = TranslationReport.flags.getter();
  *a1 = result;
  return result;
}

unint64_t sub_27072823C@<X0>(_BYTE *a1@<X8>)
{
  result = TranslationReport.phase.getter();
  *a1 = result;
  return result;
}

uint64_t TranslationReport.x.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_270710834();
  return OUTLINED_FUNCTION_20();
}

uint64_t TranslationReport.y.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_270710834();
  return OUTLINED_FUNCTION_20();
}

double TranslationReport.delta.getter()
{
  v0 = sub_270710834();
  sub_270710834();
  return v0;
}

void sub_27072845C(uint64_t a1@<X8>)
{
  *a1 = TranslationReport.delta.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void TranslationReport.delta.setter(double a1, double a2)
{
  sub_270713BE0(a1);

  sub_270713BE0(a2);
}

uint64_t TranslationReport.delta.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  v3 = sub_270710834();
  v4 = sub_270710834();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return OUTLINED_FUNCTION_20();
}

void sub_270728574(double *a1)
{
  v1 = a1[1];
  sub_270713BE0(*a1);
  sub_270713BE0(v1);
}

uint64_t TranslationReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270728668);
      }

      if (v4 >= 14)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270728678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TranslationReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TranslationReport.remoteTimestamp.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x2707287B0);
      }

      if (v6 >= 14)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return OUTLINED_FUNCTION_20();
  }
}

void sub_2707287C0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    TranslationReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 14)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_2707288A0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x270728980);
      }

      if (v7 >= 14)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_270728990;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_270728990(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    TranslationReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 14)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t OUTLINED_FUNCTION_4_7(void *a1)
{
  *a1 = v1;

  return _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
}

unint64_t HIDEventType.init(rawValue:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t HIDEventType.hashValue.getter()
{
  sub_2707A8F60();
  sub_2707A8FA0();
  return sub_2707A8FC0();
}

uint64_t sub_270728D84()
{
  sub_2707A8F60();
  HIDEventType.hash(into:)();
  return sub_2707A8FC0();
}

uint64_t HIDEventType.description.getter(int a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x6544726F646E6576;
    case 2:
      return 0x6E6F74747562;
    case 3:
      return 0x6472616F6279656BLL;
    case 4:
      v5 = 0x6C736E617274;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
    case 5:
      return 0x6E6F697461746F72;
    case 6:
      return 0x6C6C6F726373;
    case 7:
      v4 = 1818321779;
      goto LABEL_47;
    case 8:
      return 1836019578;
    case 9:
      v3 = 0x69636F6C6576;
      goto LABEL_27;
    case 10:
      v5 = 0x746E6569726FLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
    case 11:
      return 0x657A697469676964;
    case 12:
      return 0xD000000000000012;
    case 13:
      return 0x6F72656C65636361;
    case 14:
      return 0x74696D69786F7270;
    case 15:
      return 0x74617265706D6574;
    case 16:
      v6 = 0x61676976616ELL;
      goto LABEL_40;
    case 17:
      return 0x7265746E696F70;
    case 18:
      return 0x73736572676F7270;
    case 19:
      return 0xD000000000000010;
    case 20:
      return 1869773159;
    case 21:
      return 0x737361706D6F63;
    case 22:
      return 0x67676F546D6F6F7ALL;
    case 23:
      return 0x706977536B636F64;
    case 24:
      return 0x63696C6F626D7973;
    case 25:
      return 0x7265776F70;
    case 26:
      return 6579564;
    case 27:
      return 0xD000000000000011;
    case 28:
      return 0x797261646E756F62;
    case 29:
      return 0x697274656D6F6962;
    case 30:
      return 0x65646F63696E75;
    case 31:
      return 0xD000000000000013;
    case 32:
      v4 = 1668444006;
LABEL_47:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 33:
      result = 0x63416E6F69746F6DLL;
      break;
    case 34:
      result = 0x65476E6F69746F6DLL;
      break;
    case 35:
      result = 0x746E6F43656D6167;
      break;
    case 36:
      v3 = 0x6964696D7568;
LABEL_27:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
      break;
    case 37:
      v6 = 0x63656C6C6F63;
LABEL_40:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 38:
      result = 0x656E746867697262;
      break;
    case 39:
      result = 0x47636972656E6567;
      break;
    case 41:
      result = 0x6174536563726F66;
      break;
    case 42:
      result = 0xD000000000000014;
      break;
    default:
      result = sub_2707A8E70();
      break;
  }

  return result;
}

unint64_t sub_270729360()
{
  result = qword_2808297C0;
  if (!qword_2808297C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808297C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297C0);
  }

  return result;
}

unint64_t sub_2707293C8()
{
  result = qword_2808297D0;
  if (!qword_2808297D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297D0);
  }

  return result;
}

uint64_t sub_270729444()
{
  result = sub_270729468();
  qword_2808297D8 = result;
  unk_2808297E0 = v1;
  return result;
}

uint64_t sub_270729468()
{
  v1 = sub_27070E504(&unk_288074798);
  v91 = v1;
  v92 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 7);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v91, v92);
  v89 = v92;
  v90 = v91;
  sub_270708D74(v91, v92);
  v4 = sub_27070E504(&unk_2880747C0);
  v91 = v4;
  v92 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v91, v92);
  v87 = v92;
  v88 = v91;
  sub_270708D74(v91, v92);
  v7 = sub_27070E504(&unk_2880747E8);
  v91 = v7;
  v92 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 231);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v91, v92);
  v85 = v92;
  v86 = v91;
  sub_270708D74(v91, v92);
  LOBYTE(v91) = 14;
  v9 = sub_270740DC4(&v91, 232);
  v83 = v10;
  v84 = v9;
  v12 = sub_27070E504(&unk_288074810);
  v91 = v12;
  v92 = v11;
  v13 = 0;
  switch(v11 >> 62)
  {
    case 1uLL:
      v13 = v12 >> 32;
      break;
    case 2uLL:
      v13 = *(v12 + 24);
      break;
    case 3uLL:
      break;
    default:
      v13 = BYTE6(v11);
      break;
  }

  sub_270766E38(v13, v13, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v14 = v91;
  v15 = v92;
  sub_270706C38(v91, v92);
  v81 = v15;
  v82 = v14;
  sub_270708D74(v14, v15);
  v17 = sub_27070E504(&unk_288074838);
  v91 = v17;
  v92 = v16;
  v18 = 0;
  switch(v16 >> 62)
  {
    case 1uLL:
      v18 = v17 >> 32;
      break;
    case 2uLL:
      v18 = *(v17 + 24);
      break;
    case 3uLL:
      break;
    default:
      v18 = BYTE6(v16);
      break;
  }

  sub_270766E38(v18, v18, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v19 = v91;
  v20 = v92;
  sub_270706C38(v91, v92);
  v79 = v20;
  v80 = v19;
  sub_270708D74(v19, v20);
  LOBYTE(v91) = 7;
  v21 = sub_270740DC4(&v91, 231);
  v77 = v22;
  v78 = v21;
  v24 = sub_27070E504(&unk_288074860);
  v91 = v24;
  v92 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v26 = v91;
  v27 = v92;
  sub_270706C38(v91, v92);
  v76 = v26;
  sub_270708D74(v26, v27);
  v29 = sub_27070E504(&unk_288074888);
  v91 = v29;
  v92 = v28;
  v30 = 0;
  switch(v28 >> 62)
  {
    case 1uLL:
      v30 = v29 >> 32;
      break;
    case 2uLL:
      v30 = *(v29 + 24);
      break;
    case 3uLL:
      break;
    default:
      v30 = BYTE6(v28);
      break;
  }

  sub_270766E38(v30, v30, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v31 = v91;
  v32 = v92;
  sub_270706C38(v91, v92);
  sub_270708D74(v31, v32);
  v91 = v31;
  v92 = v32;
  v33 = sub_270729E6C();
  v35 = v34;
  sub_2707A8370();
  sub_270708D74(v33, v35);
  v36 = sub_27070E504(&unk_2880748B0);
  v38 = v37;
  sub_2707A8370();
  sub_270708D74(v36, v38);
  v74 = v92;
  v75 = v91;
  LOBYTE(v91) = 5;
  v39 = sub_27074110C(&v91, 0xFF00uLL);
  v72 = v40;
  v73 = v39;
  LOBYTE(v91) = 17;
  v41 = sub_27074110C(&v91, 0x102uLL);
  v70 = v42;
  v71 = v41;
  v44 = sub_27070E504(&unk_2880748D8);
  v91 = v44;
  v92 = v43;
  v45 = 0;
  switch(v43 >> 62)
  {
    case 1uLL:
      v45 = v44 >> 32;
      break;
    case 2uLL:
      v45 = *(v44 + 24);
      break;
    case 3uLL:
      break;
    default:
      v45 = BYTE6(v43);
      break;
  }

  sub_270766E38(v45, v45, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v46 = v91;
  v47 = v92;
  sub_270706C38(v91, v92);
  sub_270708D74(v46, v47);
  LOBYTE(v91) = 7;
  v48 = sub_270740DC4(&v91, 255);
  v68 = v49;
  v69 = v48;
  v51 = sub_27070E504(&unk_288074900);
  v91 = v51;
  v92 = v50;
  v52 = 0;
  switch(v50 >> 62)
  {
    case 1uLL:
      v52 = v51 >> 32;
      break;
    case 2uLL:
      v52 = *(v51 + 24);
      break;
    case 3uLL:
      break;
    default:
      v52 = BYTE6(v50);
      break;
  }

  sub_270766E38(v52, v52, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v53 = v91;
  v54 = v92;
  sub_270706C38(v91, v92);
  sub_270708D74(v53, v54);
  v56 = sub_27070E504(&unk_288074928);
  v91 = v56;
  v92 = v55;
  v57 = 0;
  switch(v55 >> 62)
  {
    case 1uLL:
      v57 = v56 >> 32;
      break;
    case 2uLL:
      v57 = *(v56 + 24);
      break;
    case 3uLL:
      break;
    default:
      v57 = BYTE6(v55);
      break;
  }

  sub_270766E38(v57, v57, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v58 = v91;
  v59 = v92;
  sub_270706C38(v91, v92);
  sub_270708D74(v58, v59);
  v61 = sub_27070E504(&unk_288074950);
  v91 = v61;
  v92 = v60;
  v62 = 0;
  switch(v60 >> 62)
  {
    case 1uLL:
      v62 = v61 >> 32;
      break;
    case 2uLL:
      v62 = *(v61 + 24);
      break;
    case 3uLL:
      break;
    default:
      v62 = BYTE6(v60);
      break;
  }

  sub_270766E38(v62, v62, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v64 = v91;
  v63 = v92;
  sub_270706C38(v91, v92);
  sub_270708D74(v64, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 72) = v90;
  *(inited + 80) = v89;
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 1;
  *(inited + 136) = &type metadata for UsageMinimum;
  *(inited + 144) = &protocol witness table for UsageMinimum;
  *(inited + 16) = xmmword_2707AB750;
  *(inited + 112) = v88;
  *(inited + 120) = v87;
  *(inited + 176) = &type metadata for UsageMaximum;
  *(inited + 184) = &protocol witness table for UsageMaximum;
  *(inited + 96) = &type metadata for UsagePage;
  *(inited + 104) = &protocol witness table for UsagePage;
  *(inited + 152) = v86;
  *(inited + 160) = v85;
  *(inited + 216) = &type metadata for ReportCount;
  *(inited + 224) = &protocol witness table for ReportCount;
  *(inited + 192) = v84;
  *(inited + 200) = v83;
  *(inited + 256) = &type metadata for ReportSize;
  *(inited + 264) = &protocol witness table for ReportSize;
  *(inited + 232) = v82;
  *(inited + 240) = v81;
  *(inited + 296) = &type metadata for LogicalMinimum;
  *(inited + 304) = &protocol witness table for LogicalMinimum;
  *(inited + 272) = v80;
  *(inited + 280) = v79;
  *(inited + 336) = &type metadata for LogicalMaximum;
  *(inited + 344) = &protocol witness table for LogicalMaximum;
  *(inited + 312) = v78;
  *(inited + 320) = v77;
  *(inited + 376) = &type metadata for Input;
  *(inited + 384) = &protocol witness table for Input;
  *(inited + 352) = v76;
  *(inited + 360) = v27;
  *(inited + 416) = &type metadata for LogicalCollection;
  *(inited + 424) = &protocol witness table for LogicalCollection;
  *(inited + 392) = v75;
  *(inited + 400) = v74;
  *(inited + 456) = &type metadata for UsagePage;
  *(inited + 464) = &protocol witness table for UsagePage;
  *(inited + 432) = v73;
  *(inited + 440) = v72;
  *(inited + 496) = &type metadata for Usage;
  *(inited + 504) = &protocol witness table for Usage;
  *(inited + 472) = v71;
  *(inited + 480) = v70;
  *(inited + 536) = &type metadata for LogicalMinimum;
  *(inited + 544) = &protocol witness table for LogicalMinimum;
  *(inited + 512) = v46;
  *(inited + 520) = v47;
  *(inited + 576) = &type metadata for LogicalMaximum;
  *(inited + 584) = &protocol witness table for LogicalMaximum;
  *(inited + 552) = v69;
  *(inited + 560) = v68;
  *(inited + 616) = &type metadata for ReportSize;
  *(inited + 624) = &protocol witness table for ReportSize;
  *(inited + 592) = v53;
  *(inited + 600) = v54;
  *(inited + 656) = &type metadata for ReportCount;
  *(inited + 664) = &protocol witness table for ReportCount;
  *(inited + 632) = v58;
  *(inited + 640) = v59;
  *(inited + 696) = &type metadata for Input;
  *(inited + 704) = &protocol witness table for Input;
  *(inited + 672) = v64;
  *(inited + 680) = v63;
  v66 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v66;
}

uint64_t sub_270729E6C()
{
  LOBYTE(v35) = 5;
  v0 = sub_27074110C(&v35, 0xFF1AuLL);
  v33 = v1;
  v34 = v0;
  LOBYTE(v35) = 17;
  v2 = sub_27074110C(&v35, 0xE0F1uLL);
  v31 = v3;
  v32 = v2;
  v5 = sub_27070E504(&unk_2880746F8);
  v35 = v5;
  v36 = v4;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = v5 >> 32;
      break;
    case 2uLL:
      v6 = *(v5 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = BYTE6(v4);
      break;
  }

  sub_270766E38(v6, v6, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v7 = v35;
  v8 = v36;
  sub_270706C38(v35, v36);
  v30 = v7;
  sub_270708D74(v7, v8);
  v10 = sub_27070E504(&unk_288074720);
  v35 = v10;
  v36 = v9;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v10 >> 32;
      break;
    case 2uLL:
      v11 = *(v10 + 24);
      break;
    case 3uLL:
      break;
    default:
      v11 = BYTE6(v9);
      break;
  }

  sub_270766E38(v11, v11, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v12 = v35;
  v13 = v36;
  sub_270706C38(v35, v36);
  sub_270708D74(v12, v13);
  v15 = sub_27070E504(&unk_288074748);
  v35 = v15;
  v36 = v14;
  v16 = 0;
  switch(v14 >> 62)
  {
    case 1uLL:
      v16 = v15 >> 32;
      break;
    case 2uLL:
      v16 = *(v15 + 24);
      break;
    case 3uLL:
      break;
    default:
      v16 = BYTE6(v14);
      break;
  }

  sub_270766E38(v16, v16, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v18 = v35;
  v17 = v36;
  sub_270706C38(v35, v36);
  sub_270708D74(v18, v17);
  v20 = sub_27070E504(&unk_288074770);
  v35 = v20;
  v36 = v19;
  v21 = 0;
  switch(v19 >> 62)
  {
    case 1uLL:
      v21 = v20 >> 32;
      break;
    case 2uLL:
      v21 = *(v20 + 24);
      break;
    case 3uLL:
      break;
    default:
      v21 = BYTE6(v19);
      break;
  }

  sub_270766E38(v21, v21, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v23 = v35;
  v22 = v36;
  sub_270706C38(v35, v36);
  sub_270708D74(v23, v22);
  LOBYTE(v35) = 0;
  v24 = sub_270740DC4(&v35, 1);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707AB760;
  *(inited + 56) = &type metadata for UsagePage;
  *(inited + 64) = &protocol witness table for UsagePage;
  *(inited + 32) = v34;
  *(inited + 40) = v33;
  *(inited + 96) = &type metadata for Usage;
  *(inited + 104) = &protocol witness table for Usage;
  *(inited + 72) = v32;
  *(inited + 80) = v31;
  *(inited + 136) = &type metadata for UsageMinimum;
  *(inited + 144) = &protocol witness table for UsageMinimum;
  *(inited + 112) = v30;
  *(inited + 120) = v8;
  *(inited + 176) = &type metadata for UsageMaximum;
  *(inited + 184) = &protocol witness table for UsageMaximum;
  *(inited + 152) = v12;
  *(inited + 160) = v13;
  *(inited + 216) = &type metadata for ReportSize;
  *(inited + 224) = &protocol witness table for ReportSize;
  *(inited + 192) = v18;
  *(inited + 200) = v17;
  *(inited + 256) = &type metadata for ReportCount;
  *(inited + 264) = &protocol witness table for ReportCount;
  *(inited + 232) = v23;
  *(inited + 240) = v22;
  *(inited + 296) = &type metadata for Input;
  *(inited + 304) = &protocol witness table for Input;
  *(inited + 272) = v24;
  *(inited + 280) = v26;
  v28 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v28;
}

uint64_t static KeyboardReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829440 != -1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  v2 = qword_2808297D8;
  v3 = unk_2808297E0;
  *a1 = qword_2808297D8;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t KeyboardReport.report.setter()
{
  OUTLINED_FUNCTION_9_5();
  result = sub_270708D74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t KeyboardReport.init<A>(usages:)()
{
  OUTLINED_FUNCTION_9_5();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4, v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v10 = &v23 - v9;
  if (qword_280829440 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_5_7();
  }

  v28 = qword_2808297D8;
  v29 = qword_2808297E0;
  sub_270706C38(qword_2808297D8, qword_2808297E0);
  v11 = HIDReportDescriptor.reportBitCount(for:)(1u);
  sub_270708D74(v28, v29);
  v28 = HIDReport.init(bitCount:id:)(v11, 1);
  v29 = v12;
  (*(v3 + 16))(v6, v1, v0);
  sub_2707A86A0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v10;
  v25 = AssociatedConformanceWitness;
  while (1)
  {
    sub_2707A8940();
    if (v27 == 1)
    {
      break;
    }

    v14 = v26 + 8;
    v15 = v28;
    v6 = v29;
    v16 = v29 >> 62;
    v17 = 0;
    v18 = v28;
    switch(v29 >> 62)
    {
      case 1uLL:
        v17 = v28;
        break;
      case 2uLL:
        v17 = *(v28 + 16);
        break;
      default:
        break;
    }

    if (__OFADD__(v17, v14 >> 3))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v19 = AssociatedTypeWitness;
    AssociatedTypeWitness = v3;
    v3 = v1;
    v1 = v0;
    v20 = v14 >> 3;
    v0 = v26 & 7;
    sub_2707A82E0();
    switch(v16)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v18 = *(v15 + 16);
LABEL_10:
        v21 = __OFADD__(v18, v20);
        v10 = (v18 + v20);
        if (!v21)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      default:
LABEL_11:
        sub_2707A82E0();
        sub_2707A82F0();
        v0 = v1;
        v1 = v3;
        v3 = AssociatedTypeWitness;
        AssociatedTypeWitness = v19;
        v10 = v24;
        break;
    }
  }

  (*(v3 + 8))(v1, v0);
  (*(v23 + 8))(v10, AssociatedTypeWitness);
  return v28;
}

uint64_t KeyboardReport.update(with:)(unsigned __int8 a1)
{
  v3 = OUTLINED_FUNCTION_6_6();
  HIDReport.offset(for:)(v3);
  v4 = OUTLINED_FUNCTION_6_6();
  HIDReport.mask(for:)(v4);
  v5 = OUTLINED_FUNCTION_16_3() & v1;
  v6 = OUTLINED_FUNCTION_15_4();
  HIDReport.offset(for:)(v6);
  v7 = OUTLINED_FUNCTION_15_4();
  HIDReport.mask(for:)(v7);
  sub_2707A82E0();
  sub_2707A82F0();
  if (v5)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  return v8 | ((v5 == 0) << 8);
}

uint64_t KeyboardReport.modifiers.getter()
{
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_1_10(227);
  OUTLINED_FUNCTION_1_10(224);
  OUTLINED_FUNCTION_1_10(226);
  OUTLINED_FUNCTION_1_10(225);
  OUTLINED_FUNCTION_1_10(231);
  OUTLINED_FUNCTION_1_10(228);
  OUTLINED_FUNCTION_1_10(230);
  OUTLINED_FUNCTION_1_10(229);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_27072A88C(uint64_t result, unsigned __int8 a2, unsigned __int8 a3)
{
  if (((result - a3) & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else if (result - a3) <= 7u && ((a2 >> (result - a3)))
  {
    v7 = v3;
    v8 = v4;
    v5 = result;
    swift_beginAccess();
    sub_270797DE4(&v6, v5);
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_27072A92C@<X0>(_BYTE *a1@<X8>)
{
  result = KeyboardReport.keyboardState.getter();
  *a1 = result;
  return result;
}

void (*KeyboardReport.keyboardState.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  return sub_27072A9B4;
}

uint64_t sub_27072A9E0@<X0>(uint64_t *a1@<X8>)
{
  result = KeyboardReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t KeyboardReport.description.getter()
{
  OUTLINED_FUNCTION_9_5();
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0xD000000000000010;
  v21 = 0x80000002707B43F0;
  sub_270706C38(v2, v3);
  v4 = 9;
  while (2)
  {
    v5 = v4 - 8;
    v6 = 0;
    switch(v0 >> 62)
    {
      case 1uLL:
        v6 = v1;
        break;
      case 2uLL:
        v6 = *(v1 + 16);
        break;
      default:
        break;
    }

    v7 = v6 + (v4 >> 3);
    if (__OFADD__(v6, v4 >> 3))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
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
    }

    switch(v0 >> 62)
    {
      case 1uLL:
        if (v7 < v1 || v7 >= v1 >> 32)
        {
          goto LABEL_32;
        }

        v14 = sub_2707A81F0();
        if (!v14)
        {
          goto LABEL_37;
        }

        v10 = v14;
        v15 = sub_2707A8210();
        v12 = v7 - v15;
        if (!__OFSUB__(v7, v15))
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      case 2uLL:
        if (v7 < *(v1 + 16))
        {
          goto LABEL_30;
        }

        if (v7 >= *(v1 + 24))
        {
          goto LABEL_33;
        }

        v9 = sub_2707A81F0();
        if (!v9)
        {
          goto LABEL_38;
        }

        v10 = v9;
        v11 = sub_2707A8210();
        v12 = v7 - v11;
        if (__OFSUB__(v7, v11))
        {
          goto LABEL_35;
        }

LABEL_22:
        v8 = *(v10 + v12);
LABEL_23:
        if ((v8 & (1 << (v5 & 7))) != 0)
        {
          v18 = v4 - 8;
          sub_270710EEC();
          v18 = sub_2707A8680();
          v19 = v16;
          MEMORY[0x2743A7BE0](32, 0xE100000000000000);
          MEMORY[0x2743A7BE0](v18, v19);

          if (v5 >= 0xE7)
          {
            goto LABEL_28;
          }

LABEL_27:
          ++v4;
          continue;
        }

        if (v5 <= 0xE6)
        {
          goto LABEL_27;
        }

LABEL_28:
        sub_270708D74(v1, v0);
        v18 = v20;
        v19 = v21;

        MEMORY[0x2743A7BE0](41, 0xE100000000000000);

        return v18;
      case 3uLL:
        goto LABEL_36;
      default:
        if (v7 >= BYTE6(v0))
        {
          goto LABEL_31;
        }

        v18 = v1;
        LOWORD(v19) = v0;
        BYTE2(v19) = BYTE2(v0);
        BYTE3(v19) = BYTE3(v0);
        BYTE4(v19) = BYTE4(v0);
        BYTE5(v19) = BYTE5(v0);
        v8 = *(&v18 + v7);
        goto LABEL_23;
    }
  }
}

uint64_t KeyboardReport.makeIterator()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 1;
  return sub_270706C38(a1, a2);
}

uint64_t KeyboardReport.Iterator.next()()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = 1;
  if (v1 <= 231)
  {
    while (v1 < 0 || !v1)
    {
LABEL_27:
      v0[2] = ++v1;
      if (v1 == 232)
      {
        LOBYTE(v1) = 0;
        v2 = 1;
        return v1 | (v2 << 8);
      }
    }

    v3 = v1 + 8;
    v4 = *v0;
    v5 = v0[1];
    v6 = 0;
    switch(v5 >> 62)
    {
      case 1uLL:
        v6 = v4;
        break;
      case 2uLL:
        v6 = *(v4 + 16);
        break;
      default:
        break;
    }

    v7 = v6 + (v3 >> 3);
    if (__OFADD__(v6, v3 >> 3))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
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
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    switch(v5 >> 62)
    {
      case 1uLL:
        if (v7 < v4 || v7 >= v4 >> 32)
        {
          goto LABEL_34;
        }

        v14 = sub_2707A81F0();
        if (!v14)
        {
          goto LABEL_39;
        }

        v10 = v14;
        v15 = sub_2707A8210();
        v12 = v7 - v15;
        if (!__OFSUB__(v7, v15))
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      case 2uLL:
        if (v7 < *(v4 + 16))
        {
          goto LABEL_33;
        }

        if (v7 >= *(v4 + 24))
        {
          goto LABEL_35;
        }

        v9 = sub_2707A81F0();
        if (!v9)
        {
          goto LABEL_40;
        }

        v10 = v9;
        v11 = sub_2707A8210();
        v12 = v7 - v11;
        if (__OFSUB__(v7, v11))
        {
          goto LABEL_37;
        }

LABEL_25:
        v8 = *(v10 + v12);
LABEL_26:
        if ((v8 & (1 << (v1 & 7))) == 0)
        {
          goto LABEL_27;
        }

        v2 = 0;
        v0[2] = v1 + 1;
        break;
      case 3uLL:
        goto LABEL_38;
      default:
        if (v7 >= BYTE6(v5))
        {
          goto LABEL_32;
        }

        v17 = *v0;
        v18 = BYTE2(v4);
        v19 = BYTE3(v4);
        v20 = BYTE4(v4);
        v21 = BYTE5(v4);
        v22 = BYTE6(v4);
        v23 = HIBYTE(v4);
        v24 = v5;
        v25 = BYTE2(v5);
        v26 = BYTE3(v5);
        v27 = BYTE4(v5);
        v28 = BYTE5(v5);
        v8 = *(&v17 + v7);
        goto LABEL_26;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_27072AFDC@<X0>(_BYTE *a1@<X8>)
{
  result = KeyboardReport.Iterator.next()();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27072B00C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  KeyboardReport.makeIterator()(v2, v3, a1);

  return sub_270708D74(v2, v3);
}

uint64_t KeyboardReport.remove(_:)(unsigned __int8 a1)
{
  v3 = OUTLINED_FUNCTION_6_6();
  HIDReport.offset(for:)(v3);
  v4 = OUTLINED_FUNCTION_6_6();
  HIDReport.mask(for:)(v4);
  v5 = OUTLINED_FUNCTION_16_3() & v1;
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_15_4();
    HIDReport.offset(for:)(v6);
    v7 = OUTLINED_FUNCTION_15_4();
    HIDReport.mask(for:)(v7);
    sub_2707A82E0();
    sub_2707A82F0();
  }

  else
  {
    a1 = 0;
  }

  return a1 | ((v5 == 0) << 8);
}

uint64_t KeyboardReport.formUnion(_:)()
{
  OUTLINED_FUNCTION_9_5();
  sub_270706C38(v0, v1);
  OUTLINED_FUNCTION_4_8();
  return OUTLINED_FUNCTION_8_6(v2, v3, v4, v5, sub_27072B164);
}

uint64_t sub_27072B164(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_11;
    case 2uLL:
      v9 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_11:
      result = sub_27072C8EC(v9, v8, a4 & 0x3FFFFFFFFFFFFFFFLL, v6, a2, sub_27072B2D8);
      if (v4)
      {

        __break(1u);
        JUMPOUT(0x27072B2C8);
      }

      return result;
    case 3uLL:
      return result;
    default:
      v10 = a3;
      v11 = a4;
      v12 = BYTE2(a4);
      v13 = BYTE3(a4);
      v14 = BYTE4(a4);
      v15 = BYTE5(a4);
      if (BYTE6(a4))
      {
        v7 = 0;
        do
        {
          if ((v7 - 30) > 0xFFFFFFFFFFFFFFE2)
          {
            *(result + v7) |= *(&v10 + v7);
          }

          ++v7;
        }

        while (BYTE6(a4) != v7);
      }

      break;
  }

  return result;
}

_BYTE *sub_27072B2D8(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result && result != a2)
  {
    for (i = 0; !__OFADD__(i, 1); ++i)
    {
      if ((i - 30) >= 0xFFFFFFFFFFFFFFE3)
      {
        *(a3 + i) |= *result;
      }

      if (++result == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyboardReport.formIntersection(_:)()
{
  OUTLINED_FUNCTION_9_5();
  sub_270706C38(v0, v1);
  OUTLINED_FUNCTION_3_6();
  return OUTLINED_FUNCTION_8_6(v2, v3, v4, v5, sub_27072B374);
}

uint64_t sub_27072B374(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_11;
    case 2uLL:
      v9 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_11:
      result = sub_27072C8EC(v9, v8, a4 & 0x3FFFFFFFFFFFFFFFLL, v6, a2, sub_27072B4E8);
      if (v4)
      {

        __break(1u);
        JUMPOUT(0x27072B4D8);
      }

      return result;
    case 3uLL:
      return result;
    default:
      v10 = a3;
      v11 = a4;
      v12 = BYTE2(a4);
      v13 = BYTE3(a4);
      v14 = BYTE4(a4);
      v15 = BYTE5(a4);
      if (BYTE6(a4))
      {
        v7 = 0;
        do
        {
          if ((v7 - 30) > 0xFFFFFFFFFFFFFFE2)
          {
            *(result + v7) &= *(&v10 + v7);
          }

          ++v7;
        }

        while (BYTE6(a4) != v7);
      }

      break;
  }

  return result;
}

_BYTE *sub_27072B4E8(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result && result != a2)
  {
    for (i = 0; !__OFADD__(i, 1); ++i)
    {
      if ((i - 30) >= 0xFFFFFFFFFFFFFFE3)
      {
        *(a3 + i) &= *result;
      }

      if (++result == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyboardReport.formSymmetricDifference(_:)()
{
  OUTLINED_FUNCTION_9_5();
  sub_270706C38(v0, v1);
  OUTLINED_FUNCTION_2_7();
  return OUTLINED_FUNCTION_8_6(v2, v3, v4, v5, sub_27072B584);
}

uint64_t sub_27072B584(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v8 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_11;
    case 2uLL:
      v9 = *(a3 + 16);
      v8 = *(a3 + 24);
LABEL_11:
      result = sub_27072C8EC(v9, v8, a4 & 0x3FFFFFFFFFFFFFFFLL, v6, a2, sub_27072B6F8);
      if (v4)
      {

        __break(1u);
        JUMPOUT(0x27072B6E8);
      }

      return result;
    case 3uLL:
      return result;
    default:
      v10 = a3;
      v11 = a4;
      v12 = BYTE2(a4);
      v13 = BYTE3(a4);
      v14 = BYTE4(a4);
      v15 = BYTE5(a4);
      if (BYTE6(a4))
      {
        v7 = 0;
        do
        {
          if ((v7 - 30) > 0xFFFFFFFFFFFFFFE2)
          {
            *(result + v7) ^= *(&v10 + v7);
          }

          ++v7;
        }

        while (BYTE6(a4) != v7);
      }

      break;
  }

  return result;
}

_BYTE *sub_27072B6F8(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result && result != a2)
  {
    for (i = 0; !__OFADD__(i, 1); ++i)
    {
      if ((i - 30) >= 0xFFFFFFFFFFFFFFE3)
      {
        *(a3 + i) ^= *result;
      }

      if (++result == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27072B79C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = OUTLINED_FUNCTION_28();
  v4(v3);
  sub_270708D74(v2, v1);
  v5 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v5, v6);
}

uint64_t sub_27072B808@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = KeyboardReport.remove(_:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27072B83C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = KeyboardReport.update(with:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_27072B870()
{
  OUTLINED_FUNCTION_28();
  KeyboardReport.formUnion(_:)();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_27072B8C0()
{
  OUTLINED_FUNCTION_28();
  KeyboardReport.formSymmetricDifference(_:)();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_27072B91C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t, unint64_t))
{
  v5 = *v4;
  v6 = v4[1];
  a4(*a1, a1[1], v5, v6);

  return sub_270708D74(v5, v6);
}

void sub_27072B9A8()
{
  sub_27072C7CC();

  EventReportProtocol<>.init<A>(_:)();
}

uint64_t KeyboardReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27072BB04);
      }

      if (v4 >= 39)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_27072BB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = KeyboardReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void KeyboardReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x27072BC0CLL);
      }

      if (v2 >= 39)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void (*KeyboardReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x27072BCF0);
      }

      if (v6 >= 39)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_27072BD00;
  }
}

void sub_27072BD00(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    KeyboardReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 39)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_27072BDE0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072BEC0);
      }

      if (v7 >= 39)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_27072BED0;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_27072BED0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    KeyboardReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 39)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

uint64_t sub_27072BF88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27072C088(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(__int128 *, __int128 *, uint64_t, unint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v49 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v50, v51);
      v52 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v52, v53);
      v54 = OUTLINED_FUNCTION_11_4();
      sub_270706C38(v54, v55);
      v56 = OUTLINED_FUNCTION_11_4();
      sub_270708D74(v56, v57);
      *a1 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      v58 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v58 < v6)
      {
        goto LABEL_14;
      }

      if (sub_2707A81F0() && __OFSUB__(v6, sub_2707A8210()))
      {
        goto LABEL_15;
      }

      sub_2707A8220();
      swift_allocObject();
      v59 = sub_2707A81D0();

      v49 = v59;
LABEL_10:
      if (v58 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      v60 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v60, v61);

      sub_27072C820(v6, v6 >> 32, v49, a2, a3, a5);

      v62 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v62, v63);
      v64 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v64, v65);
      v66 = OUTLINED_FUNCTION_0_13();
      result = sub_270708D74(v66, v67);
      *a1 = v6;
      a1[1] = v49 | 0x4000000000000000;
      return result;
    case 2uLL:
      v27 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v27, v28);
      v29 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v29, v30);
      v31 = OUTLINED_FUNCTION_11_4();
      sub_270706C38(v31, v32);
      v33 = OUTLINED_FUNCTION_11_4();
      sub_270708D74(v33, v34);
      *&v68 = v6;
      *(&v68 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_2707A9D20;
      sub_270708D74(0, 0xC000000000000000);
      sub_2707A8270();
      v35 = *(&v68 + 1);
      v36 = a5;
      v37 = *(v68 + 16);
      v38 = *(v68 + 24);
      v39 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v39, v40);
      sub_27072C820(v37, v38, *(&v68 + 1), a2, a3, v36);
      v41 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v41, v42);
      v43 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v43, v44);
      v45 = OUTLINED_FUNCTION_0_13();
      result = sub_270708D74(v45, v46);
      *a1 = v68;
      a1[1] = v35 | 0x8000000000000000;
      return result;
    case 3uLL:
      *(&v68 + 7) = 0;
      *&v68 = 0;
      a4(&v68, &v68, a2, a3);
      v47 = OUTLINED_FUNCTION_0_13();
      return sub_270708D74(v47, v48);
    default:
      v12 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v12, v13);
      v14 = OUTLINED_FUNCTION_0_13();
      sub_270706C38(v14, v15);
      v16 = OUTLINED_FUNCTION_11_4();
      sub_270708D74(v16, v17);
      *&v68 = v6;
      WORD4(v68) = v5;
      BYTE10(v68) = BYTE2(v5);
      BYTE11(v68) = BYTE3(v5);
      BYTE12(v68) = BYTE4(v5);
      BYTE13(v68) = BYTE5(v5);
      BYTE14(v68) = BYTE6(v5);
      a4(&v68, (&v68 + BYTE6(v5)), a2, a3);
      v18 = v68;
      v19 = DWORD2(v68) | ((WORD6(v68) | (BYTE14(v68) << 16)) << 32);
      v20 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v20, v21);
      v22 = OUTLINED_FUNCTION_0_13();
      sub_270708D74(v22, v23);
      v24 = OUTLINED_FUNCTION_0_13();
      result = sub_270708D74(v24, v25);
      *a1 = v18;
      a1[1] = v19;
      return result;
  }
}

unint64_t sub_27072C510()
{
  result = qword_2808297E8;
  if (!qword_2808297E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297E8);
  }

  return result;
}

unint64_t sub_27072C568()
{
  result = qword_2808297F0;
  if (!qword_2808297F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297F0);
  }

  return result;
}

unint64_t sub_27072C5C0()
{
  result = qword_2808297F8;
  if (!qword_2808297F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808297F8);
  }

  return result;
}

unint64_t sub_27072C618()
{
  result = qword_280829800;
  if (!qword_280829800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829800);
  }

  return result;
}

unint64_t sub_27072C670()
{
  result = qword_280829808;
  if (!qword_280829808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829808);
  }

  return result;
}

unint64_t sub_27072C6C8()
{
  result = qword_280829810;
  if (!qword_280829810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829810);
  }

  return result;
}

unint64_t sub_27072C720()
{
  result = qword_280829818;
  if (!qword_280829818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829818);
  }

  return result;
}

unint64_t sub_27072C7CC()
{
  result = qword_280829820;
  if (!qword_280829820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829820);
  }

  return result;
}

uint64_t sub_27072C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  result = sub_2707A81F0();
  if (!result)
  {
    goto LABEL_10;
  }

  v11 = result;
  result = sub_2707A8210();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = sub_2707A8200();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  a6(v11 + v12, v11 + v12 + v16, a4, a5);
  return sub_270708D74(a4, a5);
}

uint64_t sub_27072C8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_2707A81F0();
  v12 = result;
  if (result)
  {
    result = sub_2707A8210();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = sub_2707A8200();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 + v12;
  if (v12)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return a6(v12, v18, a4, a5);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return sub_27072A88C(a1, v1, 0xE0u);
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, __int128 *, uint64_t, unint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{

  return sub_27072C088(v6, v7, v5, a4, a5);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_2707A82E0();
}

uint64_t sub_27072CAB8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808293E0 != -1)
  {
    swift_once();
  }

  v5 = qword_2808293E8;
  v6 = qword_2808293F0;
  sub_270706C38(qword_2808293E8, qword_2808293F0);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x15u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 21);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072CB4C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808294F0 != -1)
  {
    swift_once();
  }

  v5 = qword_28082A7E0;
  v6 = *algn_28082A7E8;
  sub_270706C38(qword_28082A7E0, *algn_28082A7E8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0xFu);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 15);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072CBE0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808294B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829D70);
  v2 = HIDReportDescriptor.reportBitCount(for:)(6u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1]);
  result = HIDReport.init(bitCount:id:)(v12, 6);
  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_27072CC64@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829488 != -1)
  {
    swift_once();
  }

  v5 = qword_280829CD0;
  v6 = *algn_280829CD8;
  sub_270706C38(qword_280829CD0, *algn_280829CD8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(7u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 7);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072CCF8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808294F8 != -1)
  {
    swift_once();
  }

  v5 = qword_28082A808;
  v6 = qword_28082A810;
  sub_270706C38(qword_28082A808, qword_28082A810);
  v2 = HIDReportDescriptor.reportBitCount(for:)(5u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 5);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072CD8C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829458 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829AA0);
  v2 = HIDReportDescriptor.reportBitCount(for:)(2u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1]);
  result = HIDReport.init(bitCount:id:)(v12, 2);
  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_27072CE10@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829440 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_2808297D8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(1u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1]);
  result = HIDReport.init(bitCount:id:)(v12, 1);
  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_27072CE94@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808294D0 != -1)
  {
    swift_once();
  }

  v5 = qword_28082A6B8;
  v6 = qword_28082A6C0;
  sub_270706C38(qword_28082A6B8, qword_28082A6C0);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x10u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 16);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_27072CF28@<D0>(__int128 *a1@<X8>)
{
  if (qword_2808294A0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280829D30;
  sub_270706C38(xmmword_280829D30, *(&xmmword_280829D30 + 1));
  v2 = HIDReportDescriptor.reportBitCount(for:)(9u);
  sub_270708D74(v5, *(&v5 + 1));
  *&v5 = HIDReport.init(bitCount:id:)(v2, 9);
  *(&v5 + 1) = v3;
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t sub_27072CFD4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829478 != -1)
  {
    swift_once();
  }

  v5 = qword_280829BA0;
  v6 = *algn_280829BA8;
  sub_270706C38(qword_280829BA0, *algn_280829BA8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0xBu);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 11);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D068@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829428 != -1)
  {
    swift_once();
  }

  v5 = qword_2808296D8;
  v6 = qword_2808296E0;
  sub_270706C38(qword_2808296D8, qword_2808296E0);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0xEu);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 14);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D0FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829438 != -1)
  {
    swift_once();
  }

  v5 = qword_2808297B0;
  v6 = *algn_2808297B8;
  sub_270706C38(qword_2808297B0, *algn_2808297B8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x11u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 17);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D190@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2808294E8 != -1)
  {
    swift_once();
  }

  v5 = qword_28082A7B0;
  v6 = *algn_28082A7B8;
  sub_270706C38(qword_28082A7B0, *algn_28082A7B8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x12u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 18);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D224@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829420 != -1)
  {
    swift_once();
  }

  v5 = qword_280829620;
  v6 = *algn_280829628;
  sub_270706C38(qword_280829620, *algn_280829628);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x14u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 20);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D2B8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829450 != -1)
  {
    swift_once();
  }

  v5 = qword_280829A78;
  v6 = qword_280829A80;
  sub_270706C38(qword_280829A78, qword_280829A80);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0x13u);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 19);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D34C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829480 != -1)
  {
    swift_once();
  }

  v5 = qword_280829BB0;
  v6 = *algn_280829BB8;
  sub_270706C38(qword_280829BB0, *algn_280829BB8);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0xDu);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 13);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D3E0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829470 != -1)
  {
    swift_once();
  }

  v5 = qword_280829B90;
  v6 = *algn_280829B98;
  sub_270706C38(qword_280829B90, *algn_280829B98);
  v2 = HIDReportDescriptor.reportBitCount(for:)(0xCu);
  sub_270708D74(v5, v6);
  result = HIDReport.init(bitCount:id:)(v2, 12);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27072D474@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829778);
  v2 = HIDReportDescriptor.reportBitCount(for:)(4u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1]);
  result = HIDReport.init(bitCount:id:)(v12, 4);
  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_27072D4F8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_40_0(&qword_280829828);
  v2 = HIDReportDescriptor.reportBitCount(for:)(3u);
  OUTLINED_FUNCTION_42_0(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1]);
  result = HIDReport.init(bitCount:id:)(v12, 3);
  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t EventReportProtocol<>.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = static EventReportProtocol<>.reportBitCount.getter(a1, a2);
  v5 = OUTLINED_FUNCTION_20_3();
  v7 = v6(v5);
  v8 = HIDReport.init(bitCount:id:)(v4, v7);
  v9 = *(a3 + 40);

  return v9(v8);
}

double sub_27072D624@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27072D734);
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 > 439 && (v10 = HIDReport.init(bitCount:id:)(8 * v6, 21), v12 = v11, v15 = v11, sub_270706C38(v10, v11), v13 = HIDReport.initialize(from:)(), sub_270708D74(v10, v12), sub_270708D74(v4, v3), a1 = v10, a2 = v15, (v13 & 1) != 0))
      {
        *a3 = v10;
        a3[1] = v15;
      }

      else
      {
LABEL_9:
        sub_270708D74(a1, a2);
        result = 0.0;
        *a3 = xmmword_2707AAE10;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

void sub_27072D744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v21;
  v23 = v22;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v25)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072D820);
      }

      v24 = v24;
LABEL_6:
      if (8 * v24 > 15)
      {
        v28 = HIDReport.init(bitCount:id:)(8 * v24, v20);
        OUTLINED_FUNCTION_5_8(v28, v29);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v30 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v30, v31);
        v26 = a9;
        v27 = a10;
        if (&a9)
        {
          *v23 = a9;
          v23[1] = v27;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v26 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v26, v27);
      *v23 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v25)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v24 = BYTE6(v19);
      goto LABEL_6;
  }
}

double sub_27072D830@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27072D940);
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 > 103 && (v10 = HIDReport.init(bitCount:id:)(8 * v6, 7), v12 = v11, v15 = v11, sub_270706C38(v10, v11), v13 = HIDReport.initialize(from:)(), sub_270708D74(v10, v12), sub_270708D74(v4, v3), a1 = v10, a2 = v15, (v13 & 1) != 0))
      {
        *a3 = v10;
        a3[1] = v15;
      }

      else
      {
LABEL_9:
        sub_270708D74(a1, a2);
        result = 0.0;
        *a3 = xmmword_2707AAE10;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

void sub_27072D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v20;
  v22 = v21;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v24)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072DA2CLL);
      }

      v23 = v23;
LABEL_6:
      if (8 * v23 > 135)
      {
        v27 = HIDReport.init(bitCount:id:)(8 * v23, 5);
        OUTLINED_FUNCTION_5_8(v27, v28);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v29 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v29, v30);
        v25 = a9;
        v26 = a10;
        if (&a9)
        {
          *v22 = a9;
          v22[1] = v26;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v25 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v25, v26);
      *v22 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v23 = BYTE6(v19);
      goto LABEL_6;
  }
}

void sub_27072DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v20;
  v22 = v21;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v24)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072DB18);
      }

      v23 = v23;
LABEL_6:
      if (8 * v23 > 71)
      {
        v27 = HIDReport.init(bitCount:id:)(8 * v23, 2);
        OUTLINED_FUNCTION_5_8(v27, v28);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v29 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v29, v30);
        v25 = a9;
        v26 = a10;
        if (&a9)
        {
          *v22 = a9;
          v22[1] = v26;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v25 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v25, v26);
      *v22 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v23 = BYTE6(v19);
      goto LABEL_6;
  }
}

void sub_27072DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v20;
  v22 = v21;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v24)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072DC04);
      }

      v23 = v23;
LABEL_6:
      if (8 * v23 > 247)
      {
        v27 = HIDReport.init(bitCount:id:)(8 * v23, 1);
        OUTLINED_FUNCTION_5_8(v27, v28);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v29 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v29, v30);
        v25 = a9;
        v26 = a10;
        if (&a9)
        {
          *v22 = a9;
          v22[1] = v26;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v25 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v25, v26);
      *v22 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v23 = BYTE6(v19);
      goto LABEL_6;
  }
}

void sub_27072DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v21;
  v23 = v22;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v25)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072DCF0);
      }

      v24 = v24;
LABEL_6:
      if (8 * v24 > 31)
      {
        v28 = HIDReport.init(bitCount:id:)(8 * v24, v20);
        OUTLINED_FUNCTION_5_8(v28, v29);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v30 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v30, v31);
        v26 = a9;
        v27 = a10;
        if (&a9)
        {
          *v23 = a9;
          v23[1] = v27;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v26 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v26, v27);
      *v23 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v25)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v24 = BYTE6(v19);
      goto LABEL_6;
  }
}

double sub_27072DD00@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27072DE28);
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 > 319 && (v10 = HIDReport.init(bitCount:id:)(8 * v6, 9), v12 = v11, *&v15 = v10, *(&v15 + 1) = v11, sub_270706C38(v10, v11), _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0(), v13 = HIDReport.initialize(from:)(), sub_270708D74(v10, v12), sub_270708D74(v4, v3), a2 = *(&v15 + 1), a1 = v10, (v13 & 1) != 0))
      {
        *a3 = v15;
      }

      else
      {
LABEL_9:
        sub_270708D74(a1, a2);
        result = 0.0;
        *a3 = xmmword_2707AAE10;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

void sub_27072DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v21;
  v23 = v22;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v25)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072DF14);
      }

      v24 = v24;
LABEL_6:
      if (8 * v24 > 47)
      {
        v28 = HIDReport.init(bitCount:id:)(8 * v24, v20);
        OUTLINED_FUNCTION_5_8(v28, v29);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v30 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v30, v31);
        v26 = a9;
        v27 = a10;
        if (&a9)
        {
          *v23 = a9;
          v23[1] = v27;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v26 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v26, v27);
      *v23 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v25)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v24 = BYTE6(v19);
      goto LABEL_6;
  }
}

double sub_27072DF24@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x27072E034);
      }

      v6 = v6;
LABEL_6:
      if (8 * v6 > 303 && (v10 = HIDReport.init(bitCount:id:)(8 * v6, 18), v12 = v11, v15 = v11, sub_270706C38(v10, v11), v13 = HIDReport.initialize(from:)(), sub_270708D74(v10, v12), sub_270708D74(v4, v3), a1 = v10, a2 = v15, (v13 & 1) != 0))
      {
        *a3 = v10;
        a3[1] = v15;
      }

      else
      {
LABEL_9:
        sub_270708D74(a1, a2);
        result = 0.0;
        *a3 = xmmword_2707AAE10;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

void sub_27072E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v21;
  v23 = v22;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v25)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072E120);
      }

      v24 = v24;
LABEL_6:
      if (8 * v24 > 151)
      {
        v28 = HIDReport.init(bitCount:id:)(8 * v24, v20);
        OUTLINED_FUNCTION_5_8(v28, v29);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v30 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v30, v31);
        v26 = a9;
        v27 = a10;
        if (&a9)
        {
          *v23 = a9;
          v23[1] = v27;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v26 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v26, v27);
      *v23 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v25)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v24 = BYTE6(v19);
      goto LABEL_6;
  }
}

void sub_27072E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v20;
  v22 = v21;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v24)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072E20CLL);
      }

      v23 = v23;
LABEL_6:
      if (8 * v23 > 39)
      {
        v27 = HIDReport.init(bitCount:id:)(8 * v23, 4);
        OUTLINED_FUNCTION_5_8(v27, v28);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v29 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v29, v30);
        v25 = a9;
        v26 = a10;
        if (&a9)
        {
          *v22 = a9;
          v22[1] = v26;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v25 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v25, v26);
      *v22 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v23 = BYTE6(v19);
      goto LABEL_6;
  }
}

void sub_27072E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_18_3();
  a17 = v18;
  a18 = v20;
  v22 = v21;
  switch(v19 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_8_7();
      if (v24)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x27072E2F8);
      }

      v23 = v23;
LABEL_6:
      if (8 * v23 > 23)
      {
        v27 = HIDReport.init(bitCount:id:)(8 * v23, 3);
        OUTLINED_FUNCTION_5_8(v27, v28);
        OUTLINED_FUNCTION_4_6();
        HIDReport.initialize(from:)();
        OUTLINED_FUNCTION_6_7();
        v29 = OUTLINED_FUNCTION_4_6();
        sub_270708D74(v29, v30);
        v25 = a9;
        v26 = a10;
        if (&a9)
        {
          *v22 = a9;
          v22[1] = v26;
          goto LABEL_11;
        }
      }

      else
      {
LABEL_7:
        v25 = OUTLINED_FUNCTION_4_6();
      }

      sub_270708D74(v25, v26);
      *v22 = xmmword_2707AAE10;
LABEL_11:
      OUTLINED_FUNCTION_19_2();
      return;
    case 2uLL:
      OUTLINED_FUNCTION_7_6();
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_7;
    default:
      v23 = BYTE6(v19);
      goto LABEL_6;
  }
}

void EventReportProtocol<>.init(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_11();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_30_1();
  v14 = v13 - v12;
  v15 = 8 * MEMORY[0x2743A78F0]();
  if (v15 >= (*(v3 + 8))(v5, v3))
  {
    v28 = v9;
    v29 = v7;
    v19 = (*(v3 + 24))(v5, v3);
    v20 = HIDReport.init(bitCount:id:)(v15, v19);
    v22 = v21;
    v23 = *(v1 + 40);
    sub_270706C38(v20, v21);
    v23(v20, v22, v5, v1);
    v24 = (*(v1 + 24))(v30, v5, v1);
    OUTLINED_FUNCTION_20_3();
    v25 = HIDReport.initialize(from:)();
    v24(v30, 0);
    sub_270708D74(v20, v22);
    v26 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v26, v27);
    if (v25)
    {
      v7 = v29;
      (*(v28 + 32))(v29, v14, v5);
      v18 = 0;
    }

    else
    {
      (*(v28 + 8))(v14, v5);
      v18 = 1;
      v7 = v29;
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_20_3();
    sub_270708D74(v16, v17);
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v18, 1, v5);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.description.getter()
{
  OUTLINED_FUNCTION_18_3();
  v0 = sub_2707A9010();
  MEMORY[0x2743A7BE0](v0);

  MEMORY[0x2743A7BE0](32, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_4_6();
  v3 = v2(v1);
  v5 = v4;
  v6 = HIDReport.description.getter(v3, v4);
  v8 = v7;
  sub_270708D74(v3, v5);
  MEMORY[0x2743A7BE0](v6, v8);

  MEMORY[0x2743A7BE0](62, 0xE100000000000000);
  OUTLINED_FUNCTION_19_2();
}

void sub_27072E6F0()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_1_11();
  v12 = v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_30_1();
  v17 = v16 - v15;
  v18 = *(v12 + 16);
  v18(v10, v0, v6);
  v18(v17, v8, v6);
  v2(v17, v6, v4);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.insert(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v19 = v1;
  v20 = v0;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  v11 = sub_2707A8930();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v19 - v16;
  v18 = *(v6 + 16);
  v18(v10, v3, AssociatedTypeWitness);
  sub_2707A8A70();
  __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
  (*(v13 + 8))(v17, v11);
  v18(v20, v3, AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.formUnion(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v39 = v1;
  v40 = v0;
  v3 = v2;
  v5 = v4;
  v6 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v37 = v8;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_2_8();
  v38 = v11;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - v14;
  sub_2707A8930();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v35 - v18;
  OUTLINED_FUNCTION_1_11();
  v21 = v20;
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_30_1();
  v26 = v25 - v24;
  v27 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v36 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_13_4();
  (*(v21 + 16))(v26, v5, v3);
  sub_2707A86A0();
  v31 = v27;
  swift_getAssociatedConformanceWitness();
  v32 = (v37 + 32);
  for (i = (v37 + 8); ; (*i)(v15, AssociatedTypeWitness))
  {
    sub_2707A8940();
    OUTLINED_FUNCTION_21_3(v19);
    if (v34)
    {
      break;
    }

    (*v32)(v38, v19, AssociatedTypeWitness);
    sub_2707A8A50();
  }

  (*(v36 + 8))(v6, v31);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.formIntersection(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v54 = v0;
  v60 = v2;
  v61 = v3;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v51 = v7;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_2_8();
  v56 = v10;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v11, v12);
  v55 = &v48 - v13;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v14, v15);
  v53 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_0_1();
  v48 = v16;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_2_8();
  v52 = v19;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v48 - v22;
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v50 = v25;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_1_11();
  v29 = v28;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v34 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v49 = v29;
  v36 = *(v29 + 16);
  v58 = &v48 - v37;
  v36();
  (v36)(v34, v54, v5);
  sub_2707A86A0();
  v38 = v5;
  v60 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = (v51 + 4);
  v40 = (v51 + 1);
  v51 = (v48 + 8);
  while (1)
  {
    sub_2707A8940();
    OUTLINED_FUNCTION_21_3(v23);
    if (v41)
    {
      break;
    }

    (*v39)(v1, v23, AssociatedTypeWitness);
    v42 = OUTLINED_FUNCTION_14_2();
    v43(v42);
    v44 = v55;
    v45 = sub_2707A8A50();
    v46 = *v40;
    (*v40)(v44, AssociatedTypeWitness);
    if (v45)
    {
      v47 = v52;
      sub_2707A8A60();
      (*v51)(v47, v53);
    }

    v46(v1, AssociatedTypeWitness);
  }

  (*(v50 + 8))(v59, v60);
  (*(v49 + 8))(v58, v38);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.formSymmetricDifference(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v54 = v2;
  v55 = v0;
  v4 = v3;
  v53 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v46 = v7;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_2_8();
  v50 = v10;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v11, v12);
  v49 = &v44 - v13;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v14, v15);
  v48 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_0_1();
  v44 = v16;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_2_8();
  v47 = v19;
  OUTLINED_FUNCTION_10_4();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v44 - v22;
  OUTLINED_FUNCTION_1_11();
  v25 = v24;
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_30_1();
  v30 = v29 - v28;
  v31 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v45 = v32;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_13_4();
  (*(v25 + 16))(v30, v53, v4);
  sub_2707A86A0();
  v53 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = (v46 + 4);
  v36 = (v46 + 1);
  v46 = (v44 + 8);
  while (1)
  {
    sub_2707A8940();
    OUTLINED_FUNCTION_21_3(v23);
    if (v37)
    {
      break;
    }

    (*v35)(v1, v23, AssociatedTypeWitness);
    v38 = OUTLINED_FUNCTION_14_2();
    v39(v38);
    v40 = v49;
    v41 = sub_2707A8A50();
    v42 = *v36;
    (*v36)(v40, AssociatedTypeWitness);
    if ((v41 & 1) == 0)
    {
      v43 = v47;
      sub_2707A8A60();
      (*v46)(v43, v48);
    }

    v42(v1, AssociatedTypeWitness);
  }

  (*(v45 + 8))(v52, v53);
  OUTLINED_FUNCTION_12_0();
}

void EventReportProtocol<>.init<A>(_:)()
{
  OUTLINED_FUNCTION_11_0();
  v45 = v1;
  v46 = v0;
  v42[1] = v2;
  v49 = v4;
  v50 = v3;
  v6 = v5;
  v47 = v7;
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v44 = v11;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v42 - v18;
  sub_2707A8930();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v20, v21);
  v23 = v42 - v22;
  OUTLINED_FUNCTION_1_11();
  v25 = v24;
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_30_1();
  v30 = v29 - v28;
  v31 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v43 = v32;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v33, v34);
  v36 = v42 - v35;
  v37 = *(v45 + 32);
  v48 = v9;
  v37(v50);
  v45 = v25;
  (*(v25 + 16))(v30, v47, v6);
  v38 = v36;
  sub_2707A86A0();
  v46 = v6;
  v39 = v31;
  swift_getAssociatedConformanceWitness();
  v40 = (v44 + 32);
  for (i = (v44 + 8); ; (*i)(v19, AssociatedTypeWitness))
  {
    sub_2707A8940();
    if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v40)(v16, v23, AssociatedTypeWitness);
    sub_2707A8A50();
  }

  (*(v45 + 8))(v47, v46);
  (*(v43 + 8))(v38, v39);
  OUTLINED_FUNCTION_12_0();
}

uint64_t static EventReportProtocol<>.reportBitCount.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  (*(a2 + 16))(v7, a1, a2);
  v5 = HIDReportDescriptor.reportBitCount(for:)(v4);
  sub_270708D74(v7[0], v7[1]);
  return v5;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, unint64_t a2)
{

  return sub_270706C38(a1, a2);
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_270708D74(v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_2707A8930();
}

uint64_t sub_27072FAF4()
{
  result = sub_27072FB18();
  qword_280829828 = result;
  unk_280829830 = v1;
  return result;
}

uint64_t sub_27072FB18()
{
  LOBYTE(v81) = 5;
  v0 = sub_27074110C(&v81, 0xFF01uLL);
  v79 = v1;
  v80 = v0;
  v3 = sub_27070E504(&unk_288076570);
  v81 = v3;
  v82 = v2;
  v4 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v4 = v3 >> 32;
      break;
    case 2uLL:
      v4 = *(v3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v4 = BYTE6(v2);
      break;
  }

  sub_270766E38(v4, v4, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v6 = v81;
  v5 = v82;
  sub_270706C38(v81, v82);
  v77 = v6;
  v78 = v5;
  sub_270708D74(v6, v5);
  v8 = sub_27070E504(&unk_288076598);
  v81 = v8;
  v82 = v7;
  v9 = 0;
  switch(v7 >> 62)
  {
    case 1uLL:
      v9 = v8 >> 32;
      break;
    case 2uLL:
      v9 = *(v8 + 24);
      break;
    case 3uLL:
      break;
    default:
      v9 = BYTE6(v7);
      break;
  }

  sub_270766E38(v9, v9, 48);
  sub_2707A82E0();
  sub_2707A82F0();
  v10 = v81;
  v11 = v82;
  sub_270706C38(v81, v82);
  v75 = v11;
  v76 = v10;
  sub_270708D74(v10, v11);
  v13 = sub_27070E504(&unk_2880765C0);
  v81 = v13;
  v82 = v12;
  v14 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v14 = v13 >> 32;
      break;
    case 2uLL:
      v14 = *(v13 + 24);
      break;
    case 3uLL:
      break;
    default:
      v14 = BYTE6(v12);
      break;
  }

  sub_270766E38(v14, v14, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v15 = v81;
  v16 = v82;
  sub_270706C38(v81, v82);
  v73 = v16;
  v74 = v15;
  sub_270708D74(v15, v16);
  v18 = sub_27070E504(&unk_2880765E8);
  v81 = v18;
  v82 = v17;
  v19 = 0;
  switch(v17 >> 62)
  {
    case 1uLL:
      v19 = v18 >> 32;
      break;
    case 2uLL:
      v19 = *(v18 + 24);
      break;
    case 3uLL:
      break;
    default:
      v19 = BYTE6(v17);
      break;
  }

  sub_270766E38(v19, v19, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v20 = v81;
  v21 = v82;
  sub_270706C38(v81, v82);
  v71 = v21;
  v72 = v20;
  sub_270708D74(v20, v21);
  v23 = sub_27070E504(&unk_288076610);
  v81 = v23;
  v82 = v22;
  v24 = 0;
  switch(v22 >> 62)
  {
    case 1uLL:
      v24 = v23 >> 32;
      break;
    case 2uLL:
      v24 = *(v23 + 24);
      break;
    case 3uLL:
      break;
    default:
      v24 = BYTE6(v22);
      break;
  }

  sub_270766E38(v24, v24, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v25 = v81;
  v26 = v82;
  sub_270706C38(v81, v82);
  v70 = v25;
  sub_270708D74(v25, v26);
  LOBYTE(v81) = 7;
  v27 = sub_270740DC4(&v81, 255);
  v68 = v28;
  v69 = v27;
  v30 = sub_27070E504(&unk_288076638);
  v81 = v30;
  v82 = v29;
  v31 = 0;
  switch(v29 >> 62)
  {
    case 1uLL:
      v31 = v30 >> 32;
      break;
    case 2uLL:
      v31 = *(v30 + 24);
      break;
    case 3uLL:
      break;
    default:
      v31 = BYTE6(v29);
      break;
  }

  sub_270766E38(v31, v31, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v32 = v81;
  v33 = v82;
  sub_270706C38(v81, v82);
  v67 = v32;
  sub_270708D74(v32, v33);
  LOBYTE(v81) = 5;
  v34 = sub_27074110C(&v81, 0xFF00uLL);
  v65 = v35;
  v66 = v34;
  LOBYTE(v81) = 17;
  v63 = sub_27074110C(&v81, 0x102uLL);
  v64 = v36;
  v38 = sub_27070E504(&unk_288076660);
  v81 = v38;
  v82 = v37;
  v39 = 0;
  switch(v37 >> 62)
  {
    case 1uLL:
      v39 = v38 >> 32;
      break;
    case 2uLL:
      v39 = *(v38 + 24);
      break;
    case 3uLL:
      break;
    default:
      v39 = BYTE6(v37);
      break;
  }

  sub_270766E38(v39, v39, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v40 = v81;
  v41 = v82;
  sub_270706C38(v81, v82);
  sub_270708D74(v40, v41);
  LOBYTE(v81) = 7;
  v61 = sub_270740DC4(&v81, 255);
  v62 = v42;
  v44 = sub_27070E504(&unk_288076688);
  v81 = v44;
  v82 = v43;
  v45 = 0;
  switch(v43 >> 62)
  {
    case 1uLL:
      v45 = v44 >> 32;
      break;
    case 2uLL:
      v45 = *(v44 + 24);
      break;
    case 3uLL:
      break;
    default:
      v45 = BYTE6(v43);
      break;
  }

  sub_270766E38(v45, v45, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v46 = v81;
  v47 = v82;
  sub_270706C38(v81, v82);
  sub_270708D74(v46, v47);
  v49 = sub_27070E504(&unk_2880766B0);
  v81 = v49;
  v82 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v51 = v81;
  v52 = v82;
  sub_270706C38(v81, v82);
  sub_270708D74(v51, v52);
  v54 = sub_27070E504(&unk_2880766D8);
  v81 = v54;
  v82 = v53;
  v55 = 0;
  switch(v53 >> 62)
  {
    case 1uLL:
      v55 = v54 >> 32;
      break;
    case 2uLL:
      v55 = *(v54 + 24);
      break;
    case 3uLL:
      break;
    default:
      v55 = BYTE6(v53);
      break;
  }

  sub_270766E38(v55, v55, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v57 = v81;
  v56 = v82;
  sub_270706C38(v81, v82);
  sub_270708D74(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520);
  inited = swift_initStackObject();
  *(inited + 56) = &type metadata for ReportID;
  *(inited + 64) = &protocol witness table for ReportID;
  *(inited + 32) = 3;
  *(inited + 72) = v80;
  *(inited + 80) = v79;
  *(inited + 136) = &type metadata for UsageMinimum;
  *(inited + 144) = &protocol witness table for UsageMinimum;
  *(inited + 112) = v77;
  *(inited + 120) = v78;
  *(inited + 176) = &type metadata for UsageMaximum;
  *(inited + 184) = &protocol witness table for UsageMaximum;
  *(inited + 152) = v76;
  *(inited + 160) = v75;
  *(inited + 192) = v74;
  *(inited + 200) = v73;
  *(inited + 232) = v72;
  *(inited + 240) = v71;
  *(inited + 272) = v70;
  *(inited + 280) = v26;
  *(inited + 312) = v69;
  *(inited + 320) = v68;
  *(inited + 352) = v67;
  *(inited + 360) = v33;
  *(inited + 416) = &type metadata for UsagePage;
  *(inited + 424) = &protocol witness table for UsagePage;
  *(inited + 96) = &type metadata for UsagePage;
  *(inited + 104) = &protocol witness table for UsagePage;
  *(inited + 392) = v66;
  *(inited + 400) = v65;
  *(inited + 456) = &type metadata for Usage;
  *(inited + 464) = &protocol witness table for Usage;
  *(inited + 432) = v63;
  *(inited + 440) = v64;
  *(inited + 496) = &type metadata for LogicalMinimum;
  *(inited + 504) = &protocol witness table for LogicalMinimum;
  *(inited + 296) = &type metadata for LogicalMinimum;
  *(inited + 304) = &protocol witness table for LogicalMinimum;
  *(inited + 472) = v40;
  *(inited + 480) = v41;
  *(inited + 536) = &type metadata for LogicalMaximum;
  *(inited + 336) = &type metadata for LogicalMaximum;
  *(inited + 344) = &protocol witness table for LogicalMaximum;
  *(inited + 544) = &protocol witness table for LogicalMaximum;
  *(inited + 512) = v61;
  *(inited + 520) = v62;
  *(inited + 576) = &type metadata for ReportSize;
  *(inited + 256) = &type metadata for ReportSize;
  *(inited + 264) = &protocol witness table for ReportSize;
  *(inited + 584) = &protocol witness table for ReportSize;
  *(inited + 552) = v46;
  *(inited + 560) = v47;
  *(inited + 616) = &type metadata for ReportCount;
  *(inited + 216) = &type metadata for ReportCount;
  *(inited + 224) = &protocol witness table for ReportCount;
  *(inited + 624) = &protocol witness table for ReportCount;
  *(inited + 592) = v51;
  *(inited + 600) = v52;
  *(inited + 656) = &type metadata for Input;
  *(inited + 376) = &type metadata for Input;
  *(inited + 384) = &protocol witness table for Input;
  *(inited + 664) = &protocol witness table for Input;
  *(inited + 632) = v57;
  *(inited + 640) = v56;
  *(inited + 16) = xmmword_2707AB1C0;
  v59 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v59;
}

uint64_t static AppleVendorKeyboardReport.descriptor.getter@<X0>(void *a1@<X8>)
{
  if (qword_280829448 != -1)
  {
    swift_once();
  }

  v2 = qword_280829828;
  v3 = unk_280829830;
  *a1 = qword_280829828;
  a1[1] = v3;

  return sub_270706C38(v2, v3);
}

uint64_t AppleVendorKeyboardReport.report.setter(uint64_t a1, uint64_t a2)
{
  result = sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_270730520@<X0>(uint64_t *a1@<X8>)
{
  result = AppleVendorKeyboardReport.init(_report:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t AppleVendorKeyboardReport.description.getter(uint64_t a1, unint64_t a2)
{
  sub_270706C38(a1, a2);
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
    if ((v6 - 49) > 0xCFu && v6 <= 0x21u && ((1 << v6) & 0x30003001ELL) != 0)
    {
      sub_270710EEC();
      v9 = sub_2707A8680();
      v10 = v7;
      MEMORY[0x2743A7BE0](32, 0xE100000000000000);
      MEMORY[0x2743A7BE0](v9, v10);
    }

    v4 = 0;
  }

  while ((v5 & 1) != 0);
  sub_270708D74(a1, a2);

  MEMORY[0x2743A7BE0](41, 0xE100000000000000);

  return 0xD00000000000001BLL;
}

uint64_t AppleVendorKeyboardReport.makeIterator()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  return sub_270706C38(a1, a2);
}

void AppleVendorKeyboardReport.Iterator.next()()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    v2 = v1 + 1;
    v3 = 8 * v1;
    v4 = (v1 - 0x1000000000000000) >> 61;
    while (v4 >= 7)
    {
      if (__OFADD__(v3, 8))
      {
        goto LABEL_12;
      }

      v5 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
      if ((v5 - 49) >= 0xD0u && v5 <= 0x21u && ((1 << v5) & 0x30003001ELL) != 0)
      {
        *(v0 + 16) = v2;
        return;
      }

      *(v0 + 16) = v2++;
      v3 += 8;
      if (v2 == 3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t sub_2707307C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  AppleVendorKeyboardReport.makeIterator()(v2, v3, a1);

  return sub_270708D74(v2, v3);
}

uint64_t AppleVendorKeyboardReport.update(with:)(unsigned __int8 a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      break;
    case 2uLL:
      v5 = *(v2 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v5, 2))
  {
    goto LABEL_50;
  }

  if (v5 + 2 < v5 + 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_270706C38(*v1, *(v1 + 8));
  v6 = sub_270725D94(v5 + 1, v5 + 2, v2, v3);
  v8 = v7;
  sub_270708D74(v2, v3);
  v9 = sub_270725E18(a1);
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    v24 = v5;
    v11 = v8 >> 62;
    v12 = 0;
    v25 = v9;
    switch(v8 >> 62)
    {
      case 1uLL:
        v12 = v6;
        break;
      case 2uLL:
        v12 = *(v6 + 16);
        break;
      default:
        break;
    }

    v23 = v12;
    while (1)
    {
      v13 = BYTE6(v8);
      switch(v11)
      {
        case 0:
          goto LABEL_14;
        case 1:
          v13 = v6 >> 32;
          goto LABEL_14;
        case 2:
          v13 = *(v6 + 24);
LABEL_14:
          if (v12 == v13)
          {
            a1 = 0;
            v10 = v25;
            goto LABEL_40;
          }

          if (v11 == 2)
          {
            if (v12 < *(v6 + 16))
            {
              goto LABEL_45;
            }

            if (v12 >= *(v6 + 24))
            {
              goto LABEL_47;
            }

            v19 = sub_2707A81F0();
            if (!v19)
            {
              goto LABEL_56;
            }

            v16 = v19;
            v20 = sub_2707A8210();
            v18 = v12 - v20;
            if (__OFSUB__(v12, v20))
            {
              goto LABEL_49;
            }

            goto LABEL_30;
          }

          if (v11 == 1)
          {
            if (v12 < v6 || v12 >= v6 >> 32)
            {
              goto LABEL_46;
            }

            v15 = sub_2707A81F0();
            if (!v15)
            {
              goto LABEL_55;
            }

            v16 = v15;
            v17 = sub_2707A8210();
            v18 = v12 - v17;
            if (__OFSUB__(v12, v17))
            {
              goto LABEL_48;
            }

LABEL_30:
            if (!*(v16 + v18))
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          if (v12 >= BYTE6(v8))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v26 = v6;
          v27 = v8;
          v28 = BYTE2(v8);
          v29 = BYTE3(v8);
          v30 = BYTE4(v8);
          v31 = BYTE5(v8);
          if (!*(&v26 + v12))
          {
LABEL_36:
            if (!__OFSUB__(v12, v24))
            {
              OUTLINED_FUNCTION_5();
              v10 = v25;
              if (v21)
              {
                _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
                a1 = 0;
                goto LABEL_40;
              }

LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_34:
          ++v12;
          break;
        case 3:
          sub_270708D74(v6, v8);
          v10 = v25;
          if (v23)
          {
            goto LABEL_54;
          }

          a1 = 0;
          return a1 | (((v10 & 1) == 0) << 8);
        default:
          JUMPOUT(0);
      }
    }
  }

LABEL_40:
  sub_270708D74(v6, v8);
  return a1 | (((v10 & 1) == 0) << 8);
}

uint64_t AppleVendorKeyboardReport.remove(_:)(unsigned __int8 a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      break;
    case 2uLL:
      v4 = *(v2 + 16);
      break;
    default:
      break;
  }

  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
    goto LABEL_49;
  }

  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v25 = v4;
  sub_270706C38(v2, v3);
  v7 = sub_270725D94(v6, v5, v2, v3);
  v9 = v8;
  sub_270708D74(v2, v3);
  v10 = v9 >> 62;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      v11 = v7;
      break;
    case 2uLL:
      v11 = *(v7 + 16);
      break;
    default:
      break;
  }

  v24 = v11;
  while (2)
  {
    v12 = BYTE6(v9);
    switch(v10)
    {
      case 0:
        goto LABEL_13;
      case 1:
        v12 = v7 >> 32;
        goto LABEL_13;
      case 2:
        v12 = *(v7 + 24);
LABEL_13:
        v13 = v11 == v12;
        if (v11 != v12)
        {
          if (v10 == 2)
          {
            if (v11 < *(v7 + 16))
            {
              goto LABEL_44;
            }

            if (v11 >= *(v7 + 24))
            {
              goto LABEL_46;
            }

            v19 = sub_2707A81F0();
            if (!v19)
            {
              goto LABEL_55;
            }

            v16 = v19;
            v20 = sub_2707A8210();
            v18 = v11 - v20;
            if (__OFSUB__(v11, v20))
            {
              goto LABEL_48;
            }

            goto LABEL_29;
          }

          if (v10 == 1)
          {
            if (v11 < v7 || v11 >= v7 >> 32)
            {
              goto LABEL_45;
            }

            v15 = sub_2707A81F0();
            if (!v15)
            {
              goto LABEL_54;
            }

            v16 = v15;
            v17 = sub_2707A8210();
            v18 = v11 - v17;
            if (__OFSUB__(v11, v17))
            {
              goto LABEL_47;
            }

LABEL_29:
            v21 = *(v16 + v18);
            goto LABEL_32;
          }

          if (v11 >= BYTE6(v9))
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v27 = v7;
          v28 = v9;
          v29 = BYTE2(v9);
          v30 = BYTE3(v9);
          v31 = BYTE4(v9);
          v32 = BYTE5(v9);
          v21 = *(&v27 + v11);
LABEL_32:
          if (v21 == v26)
          {
            if (!__OFSUB__(v11, v25))
            {
              OUTLINED_FUNCTION_5();
              if (v22)
              {
                _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
                goto LABEL_39;
              }

LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          ++v11;
          continue;
        }

        v26 = 0;
LABEL_39:
        sub_270708D74(v7, v9);
        return v26 | (v13 << 8);
      case 3:
        sub_270708D74(v7, v9);
        if (v24)
        {
          goto LABEL_53;
        }

        v26 = 0;
        v13 = 1;
        return v26 | (v13 << 8);
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_270730FBC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = OUTLINED_FUNCTION_28();
  v4(v3);
  sub_270708D74(v2, v1);
  v5 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v5, v6);
}

uint64_t sub_270731080()
{
  OUTLINED_FUNCTION_28();
  sub_270763DF0();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_2707310D0()
{
  OUTLINED_FUNCTION_28();
  sub_27075A7A8();
  v0 = OUTLINED_FUNCTION_28();

  return sub_270708D74(v0, v1);
}

uint64_t sub_27073112C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t, unint64_t))
{
  v5 = *v4;
  v6 = v4[1];
  a4(*a1, a1[1], v5, v6);

  return sub_270708D74(v5, v6);
}

void sub_2707311B8()
{
  sub_2707318C8();

  EventReportProtocol<>.init<A>(_:)();
}

uint64_t AppleVendorKeyboardReport.remoteTimestamp.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_11;
      }

      v4 = v4;
LABEL_6:
      if ((v4 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270731314);
      }

      if (v4 >= 11)
      {
        return _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
      }

      else
      {
        return 0;
      }

    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      v4 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_270731324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = AppleVendorKeyboardReport.remoteTimestamp.getter(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void AppleVendorKeyboardReport.remoteTimestamp.setter()
{
  v1 = *v0;
  switch(v0[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v1), v1))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 2uLL:
      if (!__OFSUB__(*(v1 + 24), *(v1 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    case 3uLL:
      return;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v3)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x27073141CLL);
      }

      if (v2 >= 11)
      {
        _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
      }

      return;
  }
}

void (*AppleVendorKeyboardReport.remoteTimestamp.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = 1;
  v5 = 0;
  switch(v1[1] >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    case 2uLL:
      if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_10;
    default:
LABEL_5:
      OUTLINED_FUNCTION_5();
      if (!v7)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x270731500);
      }

      if (v6 >= 11)
      {
        v5 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

LABEL_10:
      *a1 = v5;
      *(a1 + 8) = v4;
      return sub_270731510;
  }
}

void sub_270731510(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    AppleVendorKeyboardReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 11)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

void (*sub_2707315F0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = 1;
  v6 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_12;
      }

      v7 = v7;
LABEL_6:
      if ((v7 - 0x1000000000000000) >> 61 != 7)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        JUMPOUT(0x2707316D0);
      }

      if (v7 >= 11)
      {
        v6 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
        v5 = 0;
      }

      else
      {
        v6 = 0;
        v5 = 1;
      }

LABEL_10:
      *a1 = v6;
      *(a1 + 8) = v5;
      return sub_2707316E0;
    case 2uLL:
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_10;
    default:
      v7 = BYTE6(v4);
      goto LABEL_6;
  }
}

void sub_2707316E0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_5(a1);
  if (v2)
  {
    AppleVendorKeyboardReport.remoteTimestamp.setter();
  }

  else
  {
    v3 = *v1;
    switch(v1[1] >> 62)
    {
      case 1uLL:
        v4 = __OFSUB__(HIDWORD(v3), v3);
        v5 = (HIDWORD(v3) - v3);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 2uLL:
        v8 = v3 + 16;
        v6 = *(v3 + 16);
        v7 = *(v8 + 8);
        v4 = __OFSUB__(v7, v6);
        v5 = v7 - v6;
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        return;
      default:
LABEL_8:
        OUTLINED_FUNCTION_5();
        if (!v9)
        {
          __break(1u);
LABEL_10:
          __break(1u);
LABEL_11:
          __break(1u);
        }

        if (v5 >= 11)
        {
          _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
        }

        break;
    }
  }
}

unint64_t sub_27073179C()
{
  result = qword_280829838;
  if (!qword_280829838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829838);
  }

  return result;
}

unint64_t sub_2707317F4()
{
  result = qword_280829840;
  if (!qword_280829840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829840);
  }

  return result;
}

unint64_t sub_27073184C()
{
  result = qword_280829848;
  if (!qword_280829848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829848);
  }

  return result;
}

unint64_t sub_2707318C8()
{
  result = qword_280829850;
  if (!qword_280829850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829850);
  }

  return result;
}

void HIDVirtualServicePool.sendReport(_:from:)()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  v34 = v5;
  v7 = v6;
  sub_2707A8480();
  OUTLINED_FUNCTION_0_1();
  v36 = v8;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_30_1();
  v35 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9_6();
  v15 = type metadata accessor for EventReportSenderID();
  v16 = OUTLINED_FUNCTION_4_9(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  v22 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = *(v2 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  sub_2707230C4(v4, v22);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  sub_270723128(v22, v25 + v23);
  v26 = (v25 + v24);
  v27 = v34;
  *v26 = v7;
  v26[1] = v27;
  v38[4] = sub_270732220;
  v38[5] = v25;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_14(COERCE_DOUBLE(1107296256));
  v38[2] = v28;
  v38[3] = &block_descriptor;
  v29 = _Block_copy(v38);

  sub_270706C38(v7, v27);
  sub_2707A8490();
  v37 = MEMORY[0x277D84F90];
  sub_27073262C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A2F0);
  sub_270732684();
  OUTLINED_FUNCTION_5_9();
  sub_2707A8A90();
  v30 = OUTLINED_FUNCTION_7_7();
  MEMORY[0x2743A7E10](v30);
  _Block_release(v29);
  v31 = OUTLINED_FUNCTION_58();
  v32(v31);
  (*(v12 + 8))(v1, v35);

  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_270731BD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for EventReportSenderID();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28082A120);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - v18;
  v20 = sub_2707378EC(a2);
  if (v20)
  {
    v21 = v20;
    v22 = OBJC_IVAR____TtCC12UniversalHID21HIDVirtualServicePool14VirtualService_gestures;
    swift_beginAccess();
    v23 = *(v21 + v22);

    v24 = HIDReport.reportID.getter(a3, a4);
    sub_270735918(v24, v23, &v49);

    if (v50)
    {
      sub_27070F8A8(&v49, v52);
      v25 = v53;
      v26 = v54;
      v27 = __swift_project_boxed_opaque_existential_1(v52, v53);
      sub_2707322AC(a3, a4, v27, a2, v21, v25, v26);

      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    sub_2707350C8(&v49, &qword_280829868);
    sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v16);
    v31 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v16, 1, v31) == 1)
    {

      v30 = v16;
      return sub_2707350C8(v30, &unk_28082A120);
    }

    sub_270706C38(a3, a4);
    v42 = sub_2707A8420();
    v43 = sub_2707A8830();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 16777472;
      v45 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          v46 = a3;
          v47 = a3 >> 32;
          goto LABEL_20;
        case 2uLL:
          v46 = *(a3 + 16);
          v47 = *(a3 + 24);
LABEL_20:
          if (v46 == v47)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        case 3uLL:
          goto LABEL_23;
        default:
          if ((a4 & 0xFF000000000000) != 0)
          {
LABEL_22:
            v45 = sub_2707A82E0();
          }

          else
          {
LABEL_21:
            v45 = 0;
          }

LABEL_23:
          v44[4] = v45;
          sub_270708D74(a3, a4);
          _os_log_impl(&dword_270703000, v42, v43, "unexpected report ID: 0x%hhx", v44, 5u);
          MEMORY[0x2743A9010](v44, -1, -1);
          break;
      }
    }

    else
    {
      sub_270708D74(a3, a4);
    }

    return (*(*(v31 - 8) + 8))(v16, v31);
  }

  else
  {
    sub_270734E94(a1 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_logger, v19);
    v29 = sub_2707A8440();
    if (__swift_getEnumTagSinglePayload(v19, 1, v29) == 1)
    {
      v30 = v19;
      return sub_2707350C8(v30, &unk_28082A120);
    }

    sub_2707230C4(a2, v11);
    v32 = sub_2707A8420();
    v33 = sub_2707A8830();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v49 = v48;
      *v34 = 136315138;
      sub_2707A83C0();
      v35 = sub_270748CAC(8);
      v36 = MEMORY[0x2743A7BA0](v35);
      v38 = v37;

      v52[0] = v36;
      v52[1] = v38;
      MEMORY[0x2743A7BE0](58, 0xE100000000000000);
      v51 = *&v11[*(v8 + 20)];
      sub_270735074();
      v39 = sub_2707A8680();
      MEMORY[0x2743A7BE0](v39);

      sub_27072318C(v11);
      v40 = sub_27073D0F4();

      *(v34 + 4) = v40;
      _os_log_impl(&dword_270703000, v32, v33, "%s: no virtual service; dropping events", v34, 0xCu);
      v41 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x2743A9010](v41, -1, -1);
      MEMORY[0x2743A9010](v34, -1, -1);
    }

    else
    {

      sub_27072318C(v11);
    }

    return (*(*(v29 - 8) + 8))(v19, v29);
  }
}

uint64_t sub_270732148()
{
  v1 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_2707A8410();
  OUTLINED_FUNCTION_6_8();
  (*(v7 + 8))(v0 + v4);
  sub_270708D74(*(v0 + v6), *(v0 + v6 + 8));

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_270732220()
{
  v1 = type metadata accessor for EventReportSenderID();
  OUTLINED_FUNCTION_4_9(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_270731BD0(v7, v0 + v6, v9, v10);
}

uint64_t sub_2707322AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v38 = a2;
  v39 = a7;
  v40 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_2707A8930();
  v32 = *(v10 - 8);
  v33 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v31 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12, v16);
  v18 = &v31 - v17;
  v19 = sub_2707A84C0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v7;
  v24 = *(v7 + OBJC_IVAR____TtC12UniversalHID21HIDVirtualServicePool_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_2707A84D0();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v27 = v39;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = *(AssociatedConformanceWitness + 48);
    v30 = v38;
    sub_270706C38(a1, v38);
    v29(a1, v30, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v32 + 8))(v14, v33);
    }

    else
    {
      (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
      sub_270733518(v18, v34, v35, v36, v40, v27);
      return (*(v15 + 8))(v18, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}