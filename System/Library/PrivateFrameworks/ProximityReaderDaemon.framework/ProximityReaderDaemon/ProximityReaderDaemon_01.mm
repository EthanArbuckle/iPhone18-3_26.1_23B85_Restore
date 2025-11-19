_OWORD *sub_26125A7B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26125A870(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26125A8D8()
{
  result = qword_27FE9F318;
  if (!qword_27FE9F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F318);
  }

  return result;
}

uint64_t sub_26125A92C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2613A256C();
  sub_2613A19DC();
  sub_26139F02C();
  return sub_2613A25CC();
}

uint64_t sub_26125A994()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2613A19DC();
  sub_26124C778(v4, v3);
  sub_26139F02C();

  return sub_26124C6C4(v4, v3);
}

uint64_t sub_26125A9FC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2613A256C();
  sub_2613A19DC();
  sub_26139F02C();
  return sub_2613A25CC();
}

uint64_t sub_26125AA60(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2613A241C() & 1) == 0)
  {
    return 0;
  }

  return sub_26125AF64(v2, v3, v4, v5);
}

uint64_t sub_26125AAEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26139ED1C();
    if (v10)
    {
      v11 = sub_26139ED4C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26139ED3C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26139ED1C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26139ED4C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26139ED3C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26125AD1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26125AEAC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26124C6C4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_26125AAEC(v14, a3, a4, &v13);
  v10 = v4;
  sub_26124C6C4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_26125AEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26139ED1C();
  v11 = result;
  if (result)
  {
    result = sub_26139ED4C();
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

  sub_26139ED3C();
  sub_26125AAEC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26125AF64(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26124C778(a3, a4);
          return sub_26125AD1C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26125B0D0()
{
  result = qword_27FE9F320;
  if (!qword_27FE9F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F320);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26125B14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26125B194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26125B1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SessionManager();
  v10[1] = a2;

  MEMORY[0x2666FFEA0](1886680110, 0xE400000000000000);
  v10[0] = a3;
  v6 = type metadata accessor for SessionStore();
  v7 = sub_26125B2D0(&qword_27FE9F328);
  v8 = sub_26125B2D0(&qword_27FE9F330);
  sub_2612F6F14(a1, a2, v10, v6, v7, v8);
}

uint64_t sub_26125B2D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionStore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26125B314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionManager();
  v9 = a1;
  v10 = a2;

  MEMORY[0x2666FFEA0](1886680110, 0xE400000000000000);
  v4 = a1;
  v5 = type metadata accessor for SessionStore();
  v6 = sub_26125B2D0(&qword_27FE9F328);
  v7 = sub_26125B2D0(&qword_27FE9F330);
  sub_2612F7868(v4, v10, v5, v6, v7, &v9);

  return v9;
}

uint64_t sub_26125B3FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionManager();

  MEMORY[0x2666FFEA0](1886680110, 0xE400000000000000);
  LOBYTE(a1) = sub_2612F8524(a1, a2);

  return a1 & 1;
}

uint64_t sub_26125B540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_26125A870(v4 + v8, a4, a2, a3);
}

uint64_t sub_26125B5C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_26125C010(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_26125B69C()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_26125B6F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_26125B7B4()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125B7F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125B8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  swift_beginAccess();
  v4 = sub_26139F13C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_26125B930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  swift_beginAccess();
  v4 = sub_26139F13C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_26125BA20()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BB14()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BB58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BC08()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BC4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BCFC()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BD40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BDF0()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BE34(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125BEE4()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26125BF28(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26125C010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26125C0D8()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26125C124(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_26125C1E0()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26125C22C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_26125C2EC()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C348(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26125C348(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26124C778(a1, a2);
  }

  return a1;
}

uint64_t sub_26125C35C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26124A168(v6, v7);
}

uint64_t sub_26125C420()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C498(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_26125C498(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_26124C778(result, a2);

    return sub_26124C778(a3, a4);
  }

  return result;
}

uint64_t sub_26125C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_26125C560(v10, v11, v12, v13);
}

uint64_t sub_26125C560(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_26124C6C4(result, a2);

    return sub_26124C6C4(a3, a4);
  }

  return result;
}

uint64_t sub_26125C610(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26125C650(a1);
  return v5;
}

uint64_t sub_26125C650(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCustomerLocale;
  v4 = sub_26139F1CC();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCardPreferredLocale, 1, 1, v4);
  v6 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource);
  *v6 = sub_2613A055C();
  v6[1] = v7;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardDeclineCount) = 0;
  sub_26139F12C();
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_disconnectionCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_attestationFailureCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerNotAvailableCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_vasErrorCount) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readSuccessReceived) = 0;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerReadyReceived) = 0;
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionData;
  v9 = type metadata accessor for TransactionData(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readerError;
  *v10 = 0;
  *(v10 + 8) = -4;
  v11 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readErrorToReturn;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob) = xmmword_2613A4620;
  v12 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature;
  *v12 = xmmword_2613A4620;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_26125C818(char a1)
{
  v3 = *(*(sub_26139F13C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v11 - v7;
  v9 = type metadata accessor for TransactionData(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(*v1 + 488))(v8);
  (*(*v1 + 512))(0, 252);
  (*(*v1 + 536))(0, 1);
  (*(*v1 + 560))(0, 0xF000000000000000);
  (*(*v1 + 440))(0);
  result = (*(*v1 + 464))(0);
  if ((a1 & 1) == 0)
  {
    sub_26139F12C();
    (*(*v1 + 320))(v5);
    (*(*v1 + 344))(0);
    (*(*v1 + 368))(0);
    (*(*v1 + 392))(0);
    return (*(*v1 + 416))(0);
  }

  return result;
}

uint64_t sub_26125CBB4()
{
  sub_2613A211C();

  strcpy(v10, "retry count D=");
  HIBYTE(v10[1]) = -18;
  (*(*v0 + 336))(v1);
  v2 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v2);

  v3 = MEMORY[0x2666FFEA0](4014368, 0xE300000000000000);
  (*(*v0 + 360))(v3);
  v4 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v4);

  v5 = MEMORY[0x2666FFEA0](1027690016, 0xE400000000000000);
  (*(*v0 + 384))(v5);
  v6 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v6);

  v7 = MEMORY[0x2666FFEA0](4019744, 0xE300000000000000);
  (*(*v0 + 408))(v7);
  v8 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v8);

  return v10[0];
}

uint64_t sub_26125CE0C()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v26 - v3;
  v5 = type metadata accessor for TransactionData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20]();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 480))(v8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v11 = sub_26124C718(v4, &qword_27FE9F340, &unk_2613A4B40);
  }

  else
  {
    sub_26125D080(v4, v10);
    v12 = v0[2];
    sub_26139FD1C();
    v13 = sub_2613A033C();
    v15 = v14;
    if (v13 == sub_2613A033C() && v15 == v16)
    {
    }

    else
    {
      v17 = sub_2613A241C();

      if ((v17 & 1) == 0)
      {
        v21 = &v10[*(v5 + 36)];
        v23 = *v21;
        v22 = *(v21 + 1);
        v24 = v23 & 0xFFFFFFFFFFFFLL;
        if ((v22 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v22) & 0xF;
        }

        else
        {
          v25 = v24;
        }

        v11 = sub_26125D0E4(v10);
        if (!v25)
        {
          return 0;
        }

        goto LABEL_8;
      }
    }

    v11 = sub_26125D0E4(v10);
  }

LABEL_8:
  v18 = (*(*v1 + 552))(v11);
  if (v19 >> 60 == 15)
  {
    return 1;
  }

  sub_26124A168(v18, v19);
  return 0;
}

uint64_t sub_26125D080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26125D0E4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26125D140()
{
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCustomerLocale, &qword_27FE9F338, &unk_2613A4630);
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_resolvedCardPreferredLocale, &qword_27FE9F338, &unk_2613A4630);
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_analyticsLanguageSource + 8);

  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_readId;
  v3 = sub_26139F13C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionData, &qword_27FE9F340, &unk_2613A4B40);
  sub_26124A168(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_cardReaderBlob + 8));
  sub_26125C560(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 8), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 16), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16TransactionStore_transactionSignature + 24));
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionStore()
{
  result = qword_27FEA17D0;
  if (!qword_27FEA17D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26125D2E0()
{
  sub_26125D480(319, &qword_27FE9F348, MEMORY[0x277CC9788]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_26139F13C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26125D480(319, &qword_27FE9F350, type metadata accessor for TransactionData);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26125D480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2613A1F8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_26125D524(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment] = 13;
  v12 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  type metadata accessor for DiscoveryCache(0);
  *&v3[v12] = sub_2612A6AC4();
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService;
  type metadata accessor for ContentWebService();
  *&v3[v13] = sub_2612F3988();
  v14 = &v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_bundleId];
  *v14 = a2;
  v14[1] = a3;
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_connection] = a1;
  type metadata accessor for DiscoveryAnalyticsManager();

  v15 = a1;
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_analyticsManager] = sub_26127F718(a2, a3);
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, sel_init);
  v17 = sub_26129B97C();
  sub_26125A870(v17, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {

    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "created", v22, 2u);
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v19 + 8))(v11, v18);
  }

  return v16;
}

id sub_26125D7B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = sub_26129B97C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "DiscoveryService deinit", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_26125DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = sub_26139F90C();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125DB78);
}

uint64_t sub_26125DB78()
{
  v1 = v0[37];
  v2 = sub_26129B97C();
  v0[38] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[39] = v3;
  v4 = *(v3 - 8);
  v0[40] = v4;
  v5 = *(v4 + 48);
  v0[41] = v5;
  v0[42] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[37], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[37];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get content", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[37];

    (*(v4 + 8))(v10, v3);
  }

  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_26125DD58;
  v12 = v0[30];

  return sub_26125E3B0();
}

uint64_t sub_26125DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v5 + 344);
  v7 = *v5;
  v7[44] = a2;
  v7[45] = a4;

  if (v4)
  {
    v9 = v7[36];
    v8 = v7[37];
    v11 = v7[34];
    v10 = v7[35];
    v12 = v7[33];

    v13 = v7[1];

    return v13();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26125DED4);
  }
}

void sub_26125DED4()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_14:
    v12 = *(v0 + 360);
    v14 = *(v0 + 328);
    v13 = *(v0 + 336);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 280);

    sub_26125A870(v16, v17, &qword_27FE9F560, &qword_2613A3CB0);
    if (v14(v17, 1, v15) == 1)
    {
      sub_26124C718(*(v0 + 280), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = *(v0 + 280);
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "DiscoveryService - content not found", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      v22 = *(v0 + 312);
      v23 = *(v0 + 320);
      v24 = *(v0 + 280);

      (*(v23 + 8))(v24, v22);
    }

    sub_26126468C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  v3 = 0;
  v4 = (v1 + 32);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[5];
    *(v0 + 80) = v4[4];
    *(v0 + 96) = v9;
    v10 = v4[1];
    *(v0 + 16) = *v4;
    *(v0 + 32) = v10;
    *(v0 + 48) = v8;
    *(v0 + 64) = v7;
    if (*(v0 + 80) == v5 && *(v0 + 88) == v6)
    {
      goto LABEL_10;
    }

    if (sub_2613A241C())
    {
LABEL_10:
      if (*(v0 + 96) == *(v0 + 224) && *(v0 + 104) == *(v0 + 232) || (sub_2613A241C() & 1) != 0)
      {
        break;
      }
    }

LABEL_3:
    ++v3;
    v4 += 6;
    if (v2 == v3)
    {
      v11 = *(v0 + 352);
      goto LABEL_14;
    }
  }

  sub_261264584(v0 + 16, v0 + 112);
  if ((sub_2612640F4((v0 + 16)) & 1) == 0)
  {
    sub_2612645E0(v0 + 16);
    goto LABEL_3;
  }

  v33 = *(v0 + 352);
  v32 = *(v0 + 360);
  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 248);
  v37 = *(v0 + 256);
  sub_2613015E0();

  sub_2612645E0(v0 + 16);
  (*(v37 + 32))(v34, v35, v36);
  sub_261264634();
  v38 = sub_26124A620(v36);
  if (v39 >> 60 == 15)
  {
    v41 = *(v0 + 328);
    v40 = *(v0 + 336);
    v42 = *(v0 + 312);
    v43 = *(v0 + 288);
    sub_26125A870(*(v0 + 304), v43, &qword_27FE9F560, &qword_2613A3CB0);
    if (v41(v43, 1, v42) == 1)
    {
      sub_26124C718(*(v0 + 288), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v51 = *(v0 + 288);
      v52 = sub_2613A122C();
      v53 = sub_2613A1D8C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "DiscoveryService - content encoding error", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      v55 = *(v0 + 312);
      v56 = *(v0 + 320);
      v57 = *(v0 + 288);

      (*(v56 + 8))(v57, v55);
    }

    v58 = *(v0 + 272);
    v59 = *(v0 + 248);
    v60 = *(v0 + 256);
    sub_26126468C();
    swift_allocError();
    *v61 = 6;
    swift_willThrow();
    (*(v60 + 8))(v58, v59);
LABEL_20:
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v30 = *(v0 + 264);

    v31 = *(v0 + 8);

    v31();
  }

  else
  {
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 280);
    v47 = *(v0 + 264);
    v48 = v38;
    v49 = v39;
    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));

    v50 = *(v0 + 8);

    v50(v48, v49);
  }
}

uint64_t sub_26125E3B0()
{
  v1[6] = v0;
  v2 = sub_26139F0BC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_26139F1CC();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125E56C);
}

uint64_t sub_26125E56C()
{
  v1 = v0[18];
  v2 = sub_26129B97C();
  v0[19] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[20] = v3;
  v4 = *(v3 - 8);
  v0[21] = v4;
  v5 = *(v4 + 48);
  v0[22] = v5;
  v0[23] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[18];
  if (v6 == 1)
  {
    sub_26124C718(v0[18], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[6];
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0x66696E614D746567, 0xED00002928747365, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  sub_26139F1BC();
  sub_26139F1AC();
  (*(v15 + 8))(v12, v14);
  v16 = sub_26139F19C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v13, 1, v16);
  v19 = v0[13];
  if (v18 == 1)
  {
    sub_26124C718(v0[13], &qword_27FE9F3B8, &qword_2613A4828);
    v20 = sub_2613A0D3C();
    v22 = v21;
  }

  else
  {
    v23 = v0[13];
    v20 = sub_26139F17C();
    v22 = v24;
    (*(v17 + 8))(v19, v16);
  }

  v25 = v0[6];
  v0[24] = v22;
  v0[25] = v20;
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  v0[26] = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_discoveryCache;
  v27 = *(v25 + v26);
  v0[27] = v27;
  v28 = (*v27 + 144) & 0xFFFFFFFFFFFFLL | 0xAF7A000000000000;
  v0[28] = *(*v27 + 144);
  v0[29] = v28;

  return MEMORY[0x2822009F8](sub_26125E81C);
}

uint64_t sub_26125E81C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = (*(v0 + 224))(*(v0 + 200), *(v0 + 192));
  v5 = v4;
  v7 = v6;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  *(v0 + 40) = v8;

  *(v0 + 240) = v3;
  *(v0 + 248) = v5;
  *(v0 + 256) = v7;

  return MEMORY[0x2822009F8](sub_26125E8B8);
}

uint64_t sub_26125E8B8()
{
  if (v0[31])
  {
    v31 = v0[31];
    v30 = v0[5];
    v2 = v0[23];
    v1 = v0[24];
    v3 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];

    sub_26125A870(v5, v6, &qword_27FE9F560, &qword_2613A3CB0);
    if (v3(v6, 1, v4) == 1)
    {
      sub_26124C718(v0[17], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = v0[17];
      v13 = sub_2613A122C();
      v14 = sub_2613A1D9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "DiscoveryService - configuration read from cache", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v17 = v0[20];
      v16 = v0[21];
      v18 = v0[17];

      (*(v16 + 8))(v18, v17);
    }

    v19 = v0[32];
    v20 = v0[30];
    v22 = v0[17];
    v21 = v0[18];
    v24 = v0[15];
    v23 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
    v28 = v0[9];

    v29 = v0[1];

    return v29(v20, v31, v19, v30);
  }

  else
  {
    v7 = v0[6];
    v8 = sub_261261970();
    v9 = swift_task_alloc();
    v0[33] = v9;
    *v9 = v0;
    v9[1] = sub_26125EB2C;
    v10 = v0[6];

    return sub_261261C24(v8);
  }
}

uint64_t sub_26125EB2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = sub_26125F558;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_26125EC54;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26125EC54()
{
  v1 = sub_261263400(v0[35]);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v0[36] = v3;
  v0[37] = v5;
  if (v3)
  {
    v0[38] = v7;

    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_26125EEFC;
    v9 = v0[6];

    return sub_2612622F4(v1, v3);
  }

  else
  {
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[14];

    sub_26125A870(v14, v16, &qword_27FE9F560, &qword_2613A3CB0);
    if (v13(v16, 1, v15) == 1)
    {
      sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = v0[14];
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "DiscoveryService - getManifest - unable to get region configuration", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      v21 = v0[20];
      v22 = v0[21];
      v23 = v0[14];

      (*(v22 + 8))(v23, v21);
    }

    sub_26126468C();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    v26 = v0[17];
    v25 = v0[18];
    v28 = v0[15];
    v27 = v0[16];
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[12];
    v32 = v0[9];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_26125EEFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 312);
  v9 = *v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[42] = v2;

  if (v2)
  {
    v6 = sub_26125F624;
  }

  else
  {
    v7 = v4[36];

    v6 = sub_26125F01C;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26125F01C()
{
  if (*(v0[41] + 16))
  {
    v2 = v0[22];
    v1 = v0[23];
    v3 = v0[20];
    v4 = v0[16];
    sub_26125A870(v0[19], v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v2(v4, 1, v3) == 1)
    {
      sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = v0[16];
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "DiscoveryService - configuration & manifest read from back-end", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = v0[20];
      v18 = v0[21];
      v19 = v0[16];

      (*(v18 + 8))(v19, v17);
    }

    v20 = v0[9];
    v21 = *(v0[6] + v0[26]);
    v0[43] = v21;

    sub_26139F0AC();
    v22 = (*v21 + 128) & 0xFFFFFFFFFFFFLL | 0x7CDA000000000000;
    v0[44] = *(*v21 + 128);
    v0[45] = v22;

    return MEMORY[0x2822009F8](sub_26125F3AC);
  }

  else
  {
    v5 = v0[38];
    v6 = v0[36];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[15];

    sub_26125A870(v11, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v9(v12, 1, v10) == 1)
    {
      sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = v0[15];
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "DiscoveryService - getManifest - empty manifest", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      v27 = v0[20];
      v28 = v0[21];
      v29 = v0[15];

      (*(v28 + 8))(v29, v27);
    }

    sub_26126468C();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();
    v32 = v0[17];
    v31 = v0[18];
    v34 = v0[15];
    v33 = v0[16];
    v36 = v0[13];
    v35 = v0[14];
    v37 = v0[12];
    v38 = v0[9];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_26125F3AC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  (*(v0 + 352))(v3, *(v0 + 200), *(v0 + 192), *(v0 + 320), *(v0 + 328), *(v0 + 296), *(v0 + 304));

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26125F46C);
}

uint64_t sub_26125F46C()
{
  v1 = v0[36];

  v2 = v0[40];
  v3 = v0[37];
  v14 = v0[38];
  v15 = v0[41];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12(v2, v15, v3, v14);
}

uint64_t sub_26125F558()
{
  v1 = v0[24];

  v2 = v0[34];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26125F624()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[24];

  swift_bridgeObjectRelease_n();
  v4 = v0[42];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26125F89C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_2613A18CC();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_2613A18CC();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_26125F998;

  return sub_26125DA54(v6, v8, v9, v11);
}

uint64_t sub_26125F998(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 32);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    v13 = sub_26139EE6C();

    v14 = v13;
    v15 = 0;
  }

  else
  {
    v16 = sub_26139EFFC();
    sub_26124C6C4(a1, a2);
    v15 = v16;
    v14 = 0;
    v13 = v16;
  }

  v17 = *(v7 + 24);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_26125FB6C()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26125FC14);
}

uint64_t sub_26125FC14()
{
  v1 = v0[5];
  v2 = sub_26129B97C();
  v0[6] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  v5 = *(v4 + 48);
  v0[9] = v5;
  v0[10] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get content list", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[5];

    (*(v4 + 8))(v10, v3);
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_26125FDF4;
  v12 = v0[3];

  return sub_26125E3B0();
}

uint64_t sub_26125FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *(*v5 + 88);
  v10 = *v5;

  if (v4)
  {
    v12 = v8[4];
    v11 = v8[5];

    v13 = *(v10 + 8);

    return v13();
  }

  else
  {
    v8[12] = a4;
    v8[13] = a2;

    return MEMORY[0x2822009F8](sub_26125FF60);
  }
}

uint64_t sub_26125FF60()
{
  v1 = v0[12];
  v2 = sub_2612646E0(v0[13]);

  v0[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F398, &qword_2613A4710);
  sub_2612648B4();
  v4 = sub_26124A620(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[7];
    v10 = v0[4];
    sub_26125A870(v0[6], v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v8(v10, 1, v9) == 1)
    {
      sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v0[4];
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "DiscoveryService - content list encoding error", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = v0[7];
      v20 = v0[8];
      v21 = v0[4];

      (*(v20 + 8))(v21, v19);
    }

    sub_26126468C();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();
    v24 = v0[4];
    v23 = v0[5];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v12 = v0[4];
    v11 = v0[5];

    v13 = v0[1];

    return v13(v4, v6);
  }
}

uint64_t sub_261260328(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2612603D0;

  return sub_26125FB6C();
}

uint64_t sub_2612603D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_26139EE6C();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    v14 = sub_26139EFFC();
    sub_26124C6C4(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_261260564(uint64_t a1, uint64_t a2)
{
  v3[58] = a2;
  v3[59] = v2;
  v3[57] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261260610);
}

uint64_t sub_261260610()
{
  v1 = v0[61];
  v2 = sub_26129B97C();
  v0[62] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[63] = v3;
  v4 = *(v3 - 8);
  v0[64] = v4;
  v5 = *(v4 + 48);
  v0[65] = v5;
  v0[66] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[61], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[61];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "DiscoveryService - get layoutBundle", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[61];

    (*(v4 + 8))(v10, v3);
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(40))
  {
    sub_26126468C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v13 = v0[60];
    v12 = v0[61];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = sub_261260880;
    v17 = v0[59];

    return sub_26125E3B0();
  }
}

uint64_t sub_261260880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[50] = v5;
  v7[51] = a1;
  v7[52] = a2;
  v7[53] = a3;
  v7[54] = a4;
  v7[55] = v4;
  v8 = v6[67];
  v9 = *v5;
  v7[68] = a2;
  v7[69] = a4;

  if (v4)
  {
    v11 = v7[60];
    v10 = v7[61];

    v12 = v9[1];

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2612609E8);
  }
}

uint64_t sub_2612609E8()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  v3 = 0uLL;
  if (v2)
  {
    v4 = (v1 + 32);
    while (1)
    {
      v5 = *(v0 + 456);
      v6 = *(v0 + 464);
      v7 = v4[1];
      *(v0 + 16) = *v4;
      *(v0 + 32) = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = v4[5];
      *(v0 + 80) = v4[4];
      *(v0 + 96) = v10;
      *(v0 + 48) = v8;
      *(v0 + 64) = v9;
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 40);
      v15 = *(v0 + 80);
      v48 = v15;
      v49 = *(v0 + 64);
      v46 = *(v0 + 48);
      v47 = *(v0 + 96);
      if (v12 == v5 && v6 == v11)
      {
        sub_261264584(v0 + 16, v0 + 208);
        v12 = *(v0 + 456);
        goto LABEL_11;
      }

      if (sub_2613A241C())
      {
        break;
      }

      v4 += 6;
      if (!--v2)
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
        v14 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v3 = 0uLL;
        goto LABEL_12;
      }
    }

    sub_261264584(v0 + 16, v0 + 112);
LABEL_11:
    v3 = v46;
    v18 = v47;
    v17 = v48;
    v16 = v49;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

LABEL_12:
  *(v0 + 304) = v12;
  *(v0 + 312) = v11;
  *(v0 + 320) = v13;
  *(v0 + 328) = v14;
  *(v0 + 336) = v3;
  *(v0 + 352) = v16;
  *(v0 + 368) = v17;
  *(v0 + 384) = v18;
  if (v11)
  {
    v19 = *(v0 + 552);
    v20 = *(v0 + 544);
    v21 = *(v0 + 424);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v50 = v3;

    *(v0 + 448) = v50;

    sub_2613A23EC();
    v24 = objc_allocWithZone(sub_26139FC3C());
    v25 = sub_26139FC2C();
    sub_26124C718(v0 + 304, &qword_27FE9F3A8, &qword_2613A4720);

    v26 = *(v0 + 8);

    return v26(v25);
  }

  else
  {
    v28 = *(v0 + 552);
    v29 = *(v0 + 544);
    v30 = *(v0 + 528);
    v31 = *(v0 + 520);
    v33 = *(v0 + 496);
    v32 = *(v0 + 504);
    v34 = *(v0 + 480);

    sub_26125A870(v33, v34, &qword_27FE9F560, &qword_2613A3CB0);
    if (v31(v34, 1, v32) == 1)
    {
      sub_26124C718(*(v0 + 480), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = *(v0 + 480);
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "DiscoveryService - get layoutBundle - content not found", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v0 + 504);
      v40 = *(v0 + 512);
      v41 = *(v0 + 480);

      (*(v40 + 8))(v41, v39);
    }

    sub_26126468C();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    v44 = *(v0 + 480);
    v43 = *(v0 + 488);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_261260F10(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2613A18CC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_261260FE4;

  return sub_261260564(v5, v7);
}

uint64_t sub_261260FE4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_26139EE6C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2612611A0()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126123C);
}

uint64_t sub_26126123C()
{
  v1 = v0[3];
  v2 = sub_26129B97C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[3];
  if (v5 == 1)
  {
    sub_26124C718(v0[3], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0x65526C65636E6163, 0xEF29287473657571, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[3];
  v12 = *(**(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService) + 128);

  v12(v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_261261568(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_261261610;

  return sub_2612611A0();
}

uint64_t sub_261261610()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_261261748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_26129B97C();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_26125A798();
    v14 = sub_261291AA8();
    sub_26129BC3C(v13 & 1, v3, 0xD00000000000001DLL, 0x80000002613B8320, v14, v15);

    (*(v12 + 8))(v9, v11);
  }

  v16 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_analyticsManager);
  return sub_26127F7B4(a1, a2);
}

uint64_t sub_261261970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22[-v3];
  type metadata accessor for DiscoveryEnvironmentManager();
  v5 = sub_261292304();
  v6 = (*(*v5 + 120))(v5);

  v8 = nullsub_1(v6, v7);
  v9 = v8;
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment;
  if (*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment) == 13 || (v22[6] = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_environment), v22[5] = v8, sub_2612650F0(), (sub_2613A188C() & 1) == 0))
  {
    *(v0 + v10) = v9;
    v11 = sub_26129B97C();
    sub_26125A870(v11, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v22[7] = v9;
        v18 = sub_261290024(&type metadata for WCSEnvironmentContext, &off_2873B6DE8);
        v20 = sub_26124C11C(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_261243000, v14, v15, "\nENVIRONMENT: ------------------------------------\ncontents: %s\n-------------------------------------------------", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x266701350](v17, -1, -1);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v4, v12);
    }
  }

  return v9;
}

uint64_t sub_261261C24(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 57) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261261CD0);
}

uint64_t sub_261261CD0()
{
  v1 = *(v0 + 80);
  v2 = sub_26129B97C();
  *(v0 + 88) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 96) = v3;
  v4 = *(v3 - 8);
  *(v0 + 104) = v4;
  v5 = *(v4 + 48);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 80);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = *(v0 + 64);
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0xD00000000000001ELL, 0x80000002613B84D0, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v12 = *(*(v0 + 64) + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService);
  *(v0 + 128) = v12;
  v13 = *(*v12 + 112);

  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_261261F34;
  v16 = *(v0 + 57);

  return v18(v0 + 16, v16);
}

uint64_t sub_261261F34()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26126204C);
}

uint64_t sub_26126204C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 56))
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = 6;
    if (*(v0 + 16) == 3)
    {
      v6 = 3;
    }

    if (*(v0 + 16) == 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }

    sub_26125A870(*(v0 + 88), *(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    if (v3(v5, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = *(v0 + 72);
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        sub_26126468C();
        swift_allocError();
        *v17 = v7;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_261243000, v13, v14, "DiscoveryService - getConfiguration - %@", v15, 0xCu);
        sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v16, -1, -1);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      v21 = *(v0 + 72);

      (*(v20 + 8))(v21, v19);
    }

    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    sub_26126468C();
    swift_allocError();
    *v24 = v7;
    swift_willThrow();
    sub_26124C718(v0 + 16, &qword_27FE9F3C8, &unk_2613A4850);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    v10 = *(v0 + 8);

    return v10(v1);
  }
}

uint64_t sub_2612622F4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261262394);
}

uint64_t sub_261262394()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon16DiscoveryService_contentWebService);
  v0[12] = v1;
  v2 = *(*v1 + 120);

  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2612624D4;
  v5 = v0[8];
  v6 = v0[9];

  return (v8)(v0 + 2, v5, v6);
}

uint64_t sub_2612624D4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612625EC);
}

uint64_t sub_2612625EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  if (*(v0 + 56))
  {
    v3 = 6;
    if (*(v0 + 16) == 3)
    {
      v3 = 3;
    }

    if (*(v0 + 16) == 5)
    {
      v4 = 5;
    }

    else
    {
      v4 = v3;
    }

    v5 = sub_26129B97C();
    sub_26125A870(v5, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v2, 1, v6) == 1)
    {
      sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v12 = *(v0 + 88);
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        sub_26126468C();
        swift_allocError();
        *v17 = v4;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_261243000, v13, v14, "DiscoveryService - getManifest - %@", v15, 0xCu);
        sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v16, -1, -1);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v19 = *(v0 + 88);

      (*(v7 + 8))(v19, v6);
    }

    v20 = *(v0 + 88);
    sub_26126468C();
    swift_allocError();
    *v21 = v4;
    swift_willThrow();
    sub_26124C718(v0 + 16, &qword_27FE9F3C0, &unk_2613A4840);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = *(v0 + 88);

    v10 = *(v0 + 8);

    return v10(v1, v8);
  }
}

uint64_t sub_2612628D4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_261265144;

  return v7();
}

uint64_t sub_2612629BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_261262AA4;

  return v8();
}

uint64_t sub_261262AA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261262B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_26125A870(a3, v24 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2613A1C0C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2613A1BCC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2613A198C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

    return v22;
  }

LABEL_8:
  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_261262E94(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261262F8C;

  return v7(a1);
}

uint64_t sub_261262F8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_261263084(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B0, &qword_2613A4818);
  v10 = *(sub_26139F90C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26139F90C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26126325C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_261263308(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_2613A20FC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_261263400(uint64_t a1)
{
  v2 = sub_26139F1CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = v52 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v54 = (v3 + 8);

  v15 = 0;
  v53 = a1;
  v52[0] = v2;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          v36 = 1 << *(a1 + 32);
          v37 = -1;
          if (v36 < 64)
          {
            v37 = ~(-1 << v36);
          }

          v38 = v37 & *(a1 + 64);
          v39 = (v36 + 63) >> 6;

          v40 = 0;
          if (v38)
          {
            while (1)
            {
              v41 = v40;
LABEL_25:
              v42 = (v41 << 10) | (16 * __clz(__rbit64(v38)));
              v43 = (*(a1 + 48) + v42);
              v44 = *v43;
              v45 = v43[1];
              v46 = (*(a1 + 56) + v42);
              v47 = *v46;
              v48 = v46[1];

              if (v44 == sub_2613A0D3C() && v45 == v49)
              {

                return v47;
              }

              v58 = v47;
              v51 = sub_2613A241C();

              if (v51)
              {
                break;
              }

              v38 &= v38 - 1;

              v40 = v41;
              if (!v38)
              {
                goto LABEL_22;
              }
            }

            return v58;
          }

LABEL_22:
          while (1)
          {
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v41 >= v39)
            {

              return 0;
            }

            v38 = *(v9 + 8 * v41);
            ++v40;
            if (v38)
            {
              goto LABEL_25;
            }
          }

LABEL_40:
          __break(1u);
          return result;
        }

        v12 = *(v9 + 8 * v16);
        ++v15;
        if (v12)
        {
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_11:
    v17 = (v15 << 10) | (16 * __clz(__rbit64(v12)));
    v18 = (*(a1 + 48) + v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = (*(a1 + 56) + v17);
    v22 = *v21;
    v23 = v21[1];
    v57 = v19;
    v58 = v22;
    swift_bridgeObjectRetain_n();

    v24 = v56;
    sub_26139F1BC();
    v25 = v55;
    sub_26139F1AC();
    v26 = v24;
    v27 = v25;
    (*v54)(v26, v2);
    v28 = sub_26139F19C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      sub_26124C718(v27, &qword_27FE9F3B8, &qword_2613A4828);

      a1 = v53;
      goto LABEL_5;
    }

    v52[1] = v23;
    v30 = v27;
    v31 = sub_26139F17C();
    v33 = v32;
    (*(v29 + 8))(v30, v28);
    if (v57 == v31 && v20 == v33)
    {

      return v58;
    }

    v35 = sub_2613A241C();

    a1 = v53;
    if (v35)
    {
      break;
    }

    v2 = v52[0];
LABEL_5:
    v12 &= v12 - 1;
  }

  return v58;
}

unint64_t sub_2612638AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2613A1A0C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2613A1AEC();
}

uint64_t sub_26126395C(uint64_t a1, unint64_t a2)
{
  if ((sub_2613A1AAC() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_2613A19EC();
  v5 = sub_2612638AC(v4, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (v5 >> 14 == v7 >> 14)
  {

    return 0;
  }

  v13 = v5 >> 14;
  while (1)
  {
    v15 = sub_2613A1FBC();
    v16 = v14;
    if (v15 == 44 && v14 == 0xE100000000000000)
    {
      break;
    }

    if ((sub_2613A241C() & 1) != 0 || v15 == 46 && v16 == 0xE100000000000000)
    {
      break;
    }

    v17 = sub_2613A241C();

    if (v17)
    {
      goto LABEL_15;
    }

    v13 = sub_2613A1F9C() >> 14;
    if (v13 == v7 >> 14)
    {
      v18 = MEMORY[0x2666FFE20](v5, v7, v9, v11);

      return v18;
    }
  }

LABEL_15:
  if (v13 < v5 >> 14)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_2613A1FDC();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = MEMORY[0x2666FFE20](v19, v21, v23, v25);

    return v26;
  }

  return result;
}

uint64_t sub_261263B7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_26126395C(a3, a4);
  v58 = result;
  v12 = v11;
  if (*(a5 + 16) && (result = sub_26124E5EC(a1, a2), (v13 & 1) != 0))
  {
    v14 = (*(a5 + 56) + 40 * result);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v15 = 1;
  }

  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v21 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!v12)
  {
LABEL_16:
    sub_261265024(v16, v15);
    goto LABEL_17;
  }

  if (v15)
  {
    if (v15 == 1)
    {

LABEL_17:
      v22 = 0;
      return v22 & 1;
    }

    v23 = v15;
  }

  else
  {
    v23 = 0xE100000000000000;
    v16 = 48;
  }

  v24 = HIBYTE(v23) & 0xF;
  v25 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_84;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {

    v28 = sub_26124E93C(v16, v23, 10);
    v46 = v56;
LABEL_83:

    if ((v46 & 1) == 0)
    {
      if (v17)
      {
        v47 = v17;
      }

      else
      {
        LODWORD(v59) = 0x7FFFFFFF;
        v18 = sub_2613A23EC();
        v47 = v48;
      }

      v49 = sub_26124D158(v18, v47);
      if (v50)
      {
      }

      else
      {
        v51 = v49;
        v52 = sub_26124D158(v58, v12);
        if ((v53 & 1) == 0)
        {
          if (v52 < v28 || v51 < v52)
          {
            if (v19)
            {
              v54 = v19;
            }

            else
            {
              v54 = MEMORY[0x277D84F90];
            }

            v59 = a3;
            v60 = a4;
            MEMORY[0x28223BE20](v55);
            v57[2] = &v59;
            v22 = sub_26126325C(sub_261265078, v57, v54);
          }

          else
          {

            v22 = 1;
          }

          return v22 & 1;
        }
      }

      goto LABEL_92;
    }

LABEL_84:

LABEL_92:

    goto LABEL_17;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2613A216C();
    }

    v27 = *result;
    if (v27 == 43)
    {
      if (v25 >= 1)
      {
        v24 = v25 - 1;
        if (v25 != 1)
        {
          v28 = 0;
          if (result)
          {
            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_81;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_81;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_81;
              }

              ++v35;
              if (!--v24)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_105;
    }

    if (v27 != 45)
    {
      if (v25)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              goto LABEL_81;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_81;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v25)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      v28 = 0;
      LOBYTE(v24) = 1;
      goto LABEL_82;
    }

    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (result)
        {
          v29 = (result + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_81;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_81;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_81;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v24) = 0;
LABEL_82:
        v61 = v24;
        v46 = v24;

        goto LABEL_83;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v59 = v16;
  v60 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v43 = &v59;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          v43 = (v43 + 1);
          if (!--v24)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = &v59 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_104;
  }

  if (v24)
  {
    if (--v24)
    {
      v28 = 0;
      v38 = &v59 + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        v40 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          break;
        }

        ++v38;
        if (!--v24)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_2612640F4(void *a1)
{
  type metadata accessor for Mock();
  v2 = sub_26129B1A8(54);
  v4 = v3;
  v5 = sub_26129B1A8(55);
  v7 = v5;
  v8 = v6;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0x656E6F685069;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = a1[7];
  v13 = a1[5];
  v50 = a1[6];
  v51 = v10;
  v14 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v14 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    if ((v11 & 0x600000000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v11;

    sub_2613A121C();
    v2 = sub_2613A120C();
    v11 = v21;
    v4 = v22;
    if ((v21 & 0x600000000000000) != 0)
    {
LABEL_14:
      v15 = v11;
      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  v23 = MCGestaltGetDeviceClass();
  if (!v23)
  {
    goto LABEL_41;
  }

  v24 = v23;
  v51 = sub_2613A18CC();
  v15 = v25;

  if (v9)
  {
LABEL_15:
    MEMORY[0x2666FFEA0](v7, v8);

    v17 = 0x656E6F685069;
    v16 = 0xE600000000000000;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_22:

  v26 = MCGestaltGetProductName();
  if (!v26)
  {
LABEL_41:

    goto LABEL_53;
  }

  v27 = v26;
  v17 = sub_2613A18CC();
  v16 = v28;

  if (v12)
  {
LABEL_16:
    v18 = sub_261263B7C(v51, v15, v17, v16, v12);

    if (v13 == 1)
    {

      v19 = 0;
      v20 = 0;
      if ((v18 & 1) == 0)
      {
        return v20 & 1;
      }

      goto LABEL_52;
    }

LABEL_28:
    v29 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v29 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 || !sub_261263308(v2, v4))
    {
      goto LABEL_48;
    }

    v30 = v15;
    v31 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v31 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      if (v13)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_50;
        }

        v32 = sub_26124E5EC(v51, v15);
        if ((v33 & 1) == 0)
        {
          goto LABEL_48;
        }

        v34 = *(v13 + 56) + 24 * v32;
        if (*(v34 + 16))
        {
          goto LABEL_48;
        }

        v35 = *v34;
        v36 = *(v34 + 8);
        sub_26124C7CC();

        v37 = sub_2613A1FFC();
        v39 = sub_261263308(v37, v38);
        sub_2612650D0(v35, v36, 0);

        if (!v39)
        {
          goto LABEL_48;
        }

        v30 = v15;
      }

      if (!v50)
      {
        v48 = 1.79769313e308;
        goto LABEL_55;
      }

      if (*(v50 + 16))
      {
        v40 = sub_26124E5EC(v51, v30);
        if (v41)
        {
          v42 = *(v50 + 56) + 24 * v40;
          if (!*(v42 + 16))
          {
            v44 = *v42;
            v43 = *(v42 + 8);
            sub_26124C7CC();

            v45 = sub_2613A1FFC();
            v47 = sub_261263308(v45, v46);
            sub_2612650D0(v44, v43, 0);

            if (v47)
            {
              v48 = 0.0;
LABEL_55:
              v19 = v48 >= 0.0;
LABEL_51:

              if (v18)
              {
LABEL_52:
                v20 = v13 == 1 || v19;
                return v20 & 1;
              }

LABEL_53:
              v20 = 0;
              return v20 & 1;
            }
          }
        }

LABEL_48:
        v19 = 0;
        goto LABEL_51;
      }
    }

LABEL_50:
    v19 = 0;
    goto LABEL_51;
  }

LABEL_24:

  if (v13 != 1)
  {
    v18 = 1;
    goto LABEL_28;
  }

  v20 = 1;
  return v20 & 1;
}

unint64_t sub_261264634()
{
  result = qword_27FE9F388;
  if (!qword_27FE9F388)
  {
    sub_26139F90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F388);
  }

  return result;
}

unint64_t sub_26126468C()
{
  result = qword_27FE9F390;
  if (!qword_27FE9F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F390);
  }

  return result;
}

void *sub_2612646E0(uint64_t a1)
{
  v2 = sub_26139F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = (a1 + 32);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8[3];
    v17[2] = v8[2];
    v17[3] = v10;
    v11 = v8[5];
    v17[4] = v8[4];
    v17[5] = v11;
    v12 = v8[1];
    v17[0] = *v8;
    v17[1] = v12;
    sub_261264584(v17, v16);
    if (sub_2612640F4(v17))
    {
      sub_2613015E0();
      sub_2612645E0(v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_261263084(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_261263084(v13 > 1, v14 + 1, 1, v9);
      }

      v9[2] = v14 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v6, v2);
    }

    else
    {
      sub_2612645E0(v17);
    }

    v8 += 6;
    --v7;
  }

  while (v7);
  return v9;
}

unint64_t sub_2612648B4()
{
  result = qword_27FE9F3A0;
  if (!qword_27FE9F3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F398, &qword_2613A4710);
    sub_261264634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3A0);
  }

  return result;
}

uint64_t sub_26126495C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261261568(v2, v3);
}

uint64_t sub_261264A08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_2612628D4(v2, v3, v5);
}

uint64_t sub_261264AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261265144;

  return sub_2612629BC(a1, v4, v5, v7);
}

uint64_t sub_261264B94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261265144;

  return sub_261262E94(a1, v5);
}

uint64_t sub_261264C4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261262AA4;

  return sub_261262E94(a1, v5);
}

uint64_t sub_261264D04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261260F10(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261264DF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_261260328(v2, v3);
}

uint64_t sub_261264EA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26125F89C(v2, v3, v5, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_BYTE *sub_261264FA4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_261265024(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_261265078(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2613A241C() & 1;
  }
}

uint64_t sub_2612650D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_2612650F0()
{
  result = qword_27FE9F3D0;
  if (!qword_27FE9F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3D0);
  }

  return result;
}

uint64_t DeprecationWarning.deprecationDate.getter()
{
  v1 = sub_26139F0BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  sub_26139F09C();
  sub_26139F04C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t DeprecationWarning.isOSVersionDeprecation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (sub_2613A197C() == 0x49535245565F534FLL && v3 == 0xEA00000000004E4FLL)
  {

    return 1;
  }

  else
  {
    v5 = sub_2613A241C();

    return v5 & 1;
  }
}

uint64_t DeprecationWarning.init(deprecationType:deprecationTime:value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static DeprecationWarning.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_2613A241C();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_2613A241C();
}

uint64_t sub_2612653A4()
{
  v1 = 0x65756C6176;
  if (*v0 == 1)
  {
    v1 = 0x7461636572706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636572706564;
  }
}

uint64_t sub_261265404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261266188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26126542C(uint64_t a1)
{
  v2 = sub_26126591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261265468(uint64_t a1)
{
  v2 = sub_26126591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeprecationWarning.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2613A19DC();
  MEMORY[0x266700A30](v3);

  return sub_2613A19DC();
}

uint64_t DeprecationWarning.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v3);
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t DeprecationWarning.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3D8, &unk_2613A4860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26126591C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v11 = sub_2613A22DC();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_2613A232C();
  v23 = 2;
  v15 = sub_2613A22DC();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2612657B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v3);
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_261265838()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2613A19DC();
  MEMORY[0x266700A30](v3);

  return sub_2613A19DC();
}

uint64_t sub_2612658A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2613A256C();
  sub_2613A19DC();
  MEMORY[0x266700A30](v3);
  sub_2613A19DC();
  return sub_2613A25CC();
}

unint64_t sub_26126591C()
{
  result = qword_27FEA17E0[0];
  if (!qword_27FEA17E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA17E0);
  }

  return result;
}

uint64_t sub_261265988(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_2613A241C();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_2613A241C();
}

uint64_t DeprecationWarning.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](v1, v2);
  MEMORY[0x2666FFEA0](0x3A65746164205D20, 0xEB00000000205B20);
  v6 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v6);

  MEMORY[0x2666FFEA0](0x65756C6176205D20, 0xEC000000205B203ALL);
  MEMORY[0x2666FFEA0](v3, v5);
  MEMORY[0x2666FFEA0](23840, 0xE200000000000000);
  return 0x205B203A65707974;
}

uint64_t Array<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_261265DD4(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;

      sub_2613A211C();

      MEMORY[0x2666FFEA0](v4, v5);
      MEMORY[0x2666FFEA0](0x3A65746164205D20, 0xEB00000000205B20);
      v9 = sub_2613A23EC();
      MEMORY[0x2666FFEA0](v9);

      MEMORY[0x2666FFEA0](0x65756C6176205D20, 0xEC000000205B203ALL);
      MEMORY[0x2666FFEA0](v6, v8);
      MEMORY[0x2666FFEA0](23840, 0xE200000000000000);

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_261265DD4((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = 0x205B203A65707974;
      *(v12 + 40) = 0xE800000000000000;
      v3 += 5;
      --v1;
    }

    while (v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
    sub_261265DF4();
    v13 = sub_2613A184C();
    v15 = v14;
  }

  else
  {
    v15 = 0xE400000000000000;
    v13 = 1701736270;
  }

  MEMORY[0x2666FFEA0](v13, v15);

  return 0;
}

char *sub_261265DD4(char *a1, int64_t a2, char a3)
{
  result = sub_26126607C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_261265DF4()
{
  result = qword_27FE9F3E8;
  if (!qword_27FE9F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F3E0, "R7");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3E8);
  }

  return result;
}

unint64_t sub_261265E5C()
{
  result = qword_27FE9F3F0;
  if (!qword_27FE9F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F3F0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261265EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_261265F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261265F78()
{
  result = qword_27FEA1AF0;
  if (!qword_27FEA1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA1AF0);
  }

  return result;
}

unint64_t sub_261265FD0()
{
  result = qword_27FEA1C00;
  if (!qword_27FEA1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA1C00);
  }

  return result;
}

unint64_t sub_261266028()
{
  result = qword_27FEA1C08[0];
  if (!qword_27FEA1C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA1C08);
  }

  return result;
}

char *sub_26126607C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
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

uint64_t sub_261266188(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636572706564 && a2 == 0xEF657079546E6F69;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEF656D69546E6F69 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t type metadata accessor for StoreAnalytics()
{
  result = qword_27FEA1C90;
  if (!qword_27FEA1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612662F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for StoreAnalytics();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612663C0);
}

uint64_t sub_2612663C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = *(v4 + *(v0[4] + 24));
  sub_261266560(v4, v1);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  sub_2612665C4(v1, v8 + v6);
  *(v8 + v7) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_2612664CC);
}

uint64_t sub_2612664CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261266560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAnalytics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612665C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAnalytics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261266628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_261266648);
}

uint64_t sub_261266648()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for StoreAnalytics() + 20);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(MEMORY[0x277D437D8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_261266708;
  v7 = v0[3];

  return MEMORY[0x2821A5190](v3, v4, v7, 0);
}

uint64_t sub_261266708()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261266800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26125A870(a3, v26 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2613A1BCC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2613A198C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261266B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for StoreAnalytics();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v17;
  v18 = sub_2613A0B1C();
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 80) = sub_2613A07BC();
  *(inited + 88) = v21;
  *(inited + 120) = v19;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  *(inited + 128) = sub_2613A07CC();
  *(inited + 136) = v22;
  *(inited + 168) = v19;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    a3 = sub_2613A0BFC();
  }

  *(inited + 144) = a3;
  *(inited + 152) = v23;

  v24 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (a5)
  {
    v25 = a5;
    v26 = sub_2613A086C();
    v28 = v27;
    v29 = [v25 description];
    v30 = sub_2613A18CC();
    v32 = v31;

    v52 = v19;
    *&v51 = v30;
    *(&v51 + 1) = v32;
    sub_26125A7B0(&v51, v49);
    LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
    v48 = v24;
    v33 = v50;
    v34 = __swift_mutable_project_boxed_opaque_existential_0(v49, v50);
    v35 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    v37 = (&v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    sub_261267EDC(*v37, v37[1], v26, v28, v29, &v48);

    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v24 = v48;
  }

  v39 = sub_2613A1C1C();
  (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
  v40 = v46;
  sub_261266560(v47, v46);
  v41 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  sub_2612665C4(v40, v42 + v41);
  *(v42 + ((v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_261266800(0, 0, v15, &unk_2613A4AC0, v42);
}

uint64_t sub_261266F18()
{
  v1 = type metadata accessor for StoreAnalytics();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2613A1C1C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_261266560(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_2612665C4(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_261266800(0, 0, v7, &unk_2613A4AD0, v10);
}

uint64_t sub_2612670B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for StoreAnalytics();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261267178);
}

uint64_t sub_261267178()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v4 + *(v0[3] + 24));
  sub_261266560(v4, v1);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  sub_2612665C4(v1, v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  sub_261268774();
  sub_2613A1BCC();

  return MEMORY[0x2822009F8](sub_261267260);
}

uint64_t sub_261267260()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_26139F8AC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261267314()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for StoreAnalytics() + 20);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(MEMORY[0x277D437C0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2612673CC;

  return MEMORY[0x2821A5178](v3, v4);
}

uint64_t sub_2612673CC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2612674C4(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_26139FA0C();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612675BC);
}

uint64_t sub_2612675BC()
{
  v1 = v0[9];
  sub_26139F9FC();
  v2 = sub_2613A090C();
  v4 = v3;
  v0[10] = v3;
  v5 = *(MEMORY[0x277D437B0] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_261267680;
  v7 = v0[9];

  return MEMORY[0x2821A5168](v2, v4, 0, 0);
}

uint64_t sub_261267680(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[11];
  v6 = v3[10];
  v8 = *v2;
  v4[12] = a2;

  return MEMORY[0x2822009F8](sub_2612677A4);
}

uint64_t sub_2612677A4()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[3];
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    v6 = v0[5];
    v7 = type metadata accessor for StoreAnalytics();
    (*(v4 + 16))(&v6[*(v7 + 20)], v3, v5);
    *v6 = v2;
    *(v6 + 1) = v1;
    v8 = *(v7 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    v9 = sub_26139F8BC();
    (*(v4 + 8))(v3, v5);
    *&v6[v8] = v9;
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v10 = v0[6];
    v11 = sub_26129B934();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      v14 = v0[6];
      (*(v0[8] + 8))(v0[9], v0[7]);
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v0[6];
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Could not create analytics session to report DB events", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v20 = v0[8];
      v19 = v0[9];
      v22 = v0[6];
      v21 = v0[7];

      (*(v20 + 8))(v19, v21);
      (*(v13 + 8))(v22, v12);
    }

    v23 = v0[5];
    v24 = type metadata accessor for StoreAnalytics();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  v25 = v0[9];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_261267A80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
  v36 = a2;
  result = sub_2613A223C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_26125A7B0(v25, v37);
      }

      else
      {
        sub_26124C994(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_26125A7B0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_261267D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
  v2 = *v0;
  v3 = sub_2613A222C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26124C994(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26125A7B0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

_OWORD *sub_261267EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_26124E5EC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_26125A7B0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_26124E5EC(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2612680C0(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v30);
}

_OWORD *sub_2612680C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_26125A7B0(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_261268144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F428, &qword_2613A5500);
    v3 = sub_2613A224C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26125A870(v4, &v13, &qword_27FE9F410, &qword_2613A54F0);
      v5 = v13;
      v6 = v14;
      result = sub_26124E5EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26125A7B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for StoreAnalytics() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[7];
  v9 = sub_26139FA0C();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v6 + v1[8]);

  v11 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_261268384()
{
  v2 = *(type metadata accessor for StoreAnalytics() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2612662F8(v5, v6, v7, v0 + v3, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2612684D4()
{
  v2 = *(type metadata accessor for StoreAnalytics() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612670B0(v4, v5, v6, v0 + v3);
}

void sub_2612685C4()
{
  sub_26139FA0C();
  if (v0 <= 0x3F)
  {
    sub_261268658();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_261268658()
{
  if (!qword_27FE9F418)
  {
    v0 = sub_26139F8CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F418);
    }
  }
}

uint64_t sub_2612686AC()
{
  v2 = *(type metadata accessor for StoreAnalytics() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return sub_2612672F4(v4, v0 + v3);
}

unint64_t sub_261268774()
{
  result = qword_27FE9F420;
  if (!qword_27FE9F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F400, &unk_2613A4A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F420);
  }

  return result;
}

uint64_t sub_2612687D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261265144;

  return sub_261262E94(a1, v5);
}

uint64_t sub_261268890()
{
  v2 = *(type metadata accessor for StoreAnalytics() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261266628(v5, v0 + v3, v4);
}

uint64_t sub_261268990@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  swift_beginAccess();
  return sub_2612689E8(v1 + v3, a1);
}

uint64_t sub_2612689E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261268A58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  swift_beginAccess();
  sub_261268AB8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_261268AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261268B88()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_261268BD4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_261268C94()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob;
  swift_beginAccess();
  v2 = *v1;
  sub_26125C348(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_261268CF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26124A168(v6, v7);
}

uint64_t sub_261268DB0()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_261268E08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_261268EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData;
  v12 = type metadata accessor for TransactionData(0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = v10 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_readError;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob) = xmmword_2613A4620;
  v14 = (v10 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource);
  *v14 = sub_2613A055C();
  v14[1] = v15;
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v17 = sub_26139F13C();
  (*(*(v17 - 8) + 32))(v10 + v16, a1, v17);
  v18 = (v10 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_pinToken);
  *v18 = a2;
  v18[1] = a3;
  return v10;
}

uint64_t sub_261268FF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TransactionData(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  (*(*v0 + 136))(v4);
  return (*(*v0 + 184))(0, 0xF000000000000000);
}

BOOL sub_2612690F8()
{
  v1 = (*(*v0 + 176))();
  v3 = v2 >> 60;
  if (v2 >> 60 != 15)
  {
    sub_26124A168(v1, v2);
  }

  return v3 > 0xE;
}

uint64_t sub_261269150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2612691B8()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v2 = sub_26139F13C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_pinToken + 8);

  sub_261269150(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionData);
  sub_26124A168(*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob), *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_cardReaderBlob + 8));
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_analyticsLanguageSource + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PINStore()
{
  result = qword_27FEA1CA0;
  if (!qword_27FEA1CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2612692F4()
{
  v0 = sub_26139F13C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2612693D8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2612693D8()
{
  if (!qword_27FE9F350)
  {
    type metadata accessor for TransactionData(255);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F350);
    }
  }
}

uint64_t sub_261269430()
{
  v1 = swift_allocObject();
  v2 = sub_261252928();
  if (v0)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v2;
  }

  return v1;
}

uint64_t sub_2612694A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1720) = v16;
  *(v9 + 1712) = v8;
  *(v9 + 1704) = a8;
  *(v9 + 153) = a5;
  *(v9 + 1696) = a4;
  *(v9 + 1688) = a3;
  *(v9 + 1680) = a2;
  *(v9 + 1672) = a1;
  v10 = sub_26139F13C();
  *(v9 + 1728) = v10;
  v11 = *(v10 - 8);
  *(v9 + 1736) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 1744) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = swift_task_alloc();
  *(v9 + 1776) = swift_task_alloc();
  *(v9 + 1784) = swift_task_alloc();
  *(v9 + 1792) = swift_task_alloc();
  *(v9 + 1800) = swift_task_alloc();
  *(v9 + 1808) = swift_task_alloc();
  *(v9 + 1816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126961C);
}

uint64_t sub_26126961C()
{
  v147 = v0;
  v1 = *(v0 + 1816);
  v2 = sub_26129B8EC();
  *(v0 + 1824) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 1832) = v3;
  v4 = *(v3 - 8);
  *(v0 + 1840) = v4;
  v5 = *(v4 + 48);
  *(v0 + 1848) = v5;
  *(v0 + 1856) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v132 = v3;
  v6 = v5(v1, 1);
  v7 = *(v0 + 1816);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 1816), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v128 = *(v0 + 1712);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v128, 0xD000000000000044, 0x80000002613B85C0, v9, v10);

    (*(v4 + 8))(v7, v132);
  }

  sub_261272CF4(*(v0 + 1688), *(v0 + 1696));
  v129 = v4;
  v11 = *(v0 + 1688);
  v12 = *(v11 + 80);
  *(v0 + 1864) = v12;
  v13 = *(v11 + 88);
  *(v0 + 1872) = v13;
  *(v0 + 1880) = type metadata accessor for SessionManager();
  v122 = v13;
  v125 = v12;
  v142 = v12;
  v143 = v13;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v14 = sub_261273E7C();
  *(v0 + 1888) = v14;
  v15 = sub_261273ED0();
  *(v0 + 1896) = v15;
  v116 = v14;
  v16 = v14;
  v17 = v15;
  sub_2612F7868(v12, v13, &type metadata for StoreAndForwardSession, v16, v15, (v0 + 304));

  v18 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v18;
  *(v0 + 281) = *(v0 + 425);
  v19 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v19;
  v20 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v20;
  v21 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v21;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v22 = (*(**(v0 + 1696) + 376))();
    *(v0 + 1904) = v22;
    if (v22)
    {
      v23 = v22;
      v24 = *(v0 + 1776);
      sub_26125A870(v2, v24, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v5)(v24, 1, v132) == 1)
      {
        sub_26124C718(*(v0 + 1776), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v46 = *(v0 + 1776);
        v47 = sub_2613A122C();
        v48 = sub_2613A1D7C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_261243000, v47, v48, "Creating a new SAF session", v49, 2u);
          MEMORY[0x266701350](v49, -1, -1);
        }

        v50 = *(v0 + 1776);

        (*(v129 + 8))(v50, v132);
      }

      v51 = swift_task_alloc();
      *(v0 + 1912) = v51;
      *v51 = v0;
      v51[1] = sub_26126A584;
      v52 = *(v0 + 1712);

      return sub_26126B6B0(v125, v13, v23);
    }

    v44 = *(v0 + 1752);
    sub_26125A870(v2, v44, &qword_27FE9F560, &qword_2613A3CB0);
    v45 = (v5)(v44, 1, v132);
    v35 = *(v0 + 1752);
    if (v45 != 1)
    {
      v81 = *(v0 + 1752);
      v82 = sub_2613A122C();
      v83 = sub_2613A1D8C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_261243000, v82, v83, "Could not load the previous online session to start SAF mode", v84, 2u);
        MEMORY[0x266701350](v84, -1, -1);
      }

      v85 = *(v0 + 1752);

      (*(v129 + 8))(v85, v132);
      goto LABEL_35;
    }

LABEL_21:
    sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_35:
    v86 = objc_allocWithZone(sub_26139F2CC());
    goto LABEL_36;
  }

  v25 = *(v0 + 1808);
  v138 = *(v0 + 224);
  v139 = *(v0 + 240);
  v140 = *(v0 + 256);
  v141 = *(v0 + 272);
  v134 = *(v0 + 160);
  v135 = *(v0 + 176);
  v136 = *(v0 + 192);
  v137 = *(v0 + 208);
  v26 = *(v0 + 280);
  v119 = *(v0 + 284);
  v27 = *(v0 + 288);
  v114 = *(v0 + 296);
  sub_26125A870(v2, v25, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v5)(v25, 1, v132) == 1)
  {
    sub_26124C718(*(v0 + 1808), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v28 = *(v0 + 1808);
    v29 = sub_2613A122C();
    v30 = sub_2613A1D7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "A SAF session is available", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    v32 = *(v0 + 1808);

    (*(v129 + 8))(v32, v132);
  }

  if (*(v0 + 153) == 1)
  {
    v33 = *(v0 + 1800);
    *(v0 + 1520) = v138;
    *(v0 + 1536) = v139;
    *(v0 + 1552) = v140;
    *(v0 + 1568) = v141;
    *(v0 + 1456) = v134;
    *(v0 + 1472) = v135;
    *(v0 + 1488) = v136;
    *(v0 + 1504) = v137;
    *(v0 + 1576) = v26;
    *(v0 + 1580) = v119;
    *(v0 + 1584) = v27;
    *(v0 + 1592) = v114;
    sub_261273FD4(v0 + 1456);
    sub_26125A870(v2, v33, &qword_27FE9F560, &qword_2613A3CB0);
    v34 = (v5)(v33, 1, v132);
    v35 = *(v0 + 1800);
    if (v34 != 1)
    {
      v36 = *(v0 + 1800);
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "Passcode changed and SAF session was invalidated", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      v40 = *(v0 + 1800);

      (*(v129 + 8))(v40, v132);
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v41 = *(v0 + 1688);
  v42 = *(v41 + 64);
  v43 = *(v41 + 72);
  v54 = sub_26126B184(&v142, *(v0 + 1704), *(*(v0 + 1696) + 48), *(*(v0 + 1696) + 56), v42, v43);
  v56 = v55;
  v106 = v43;
  v107 = v42;
  v108 = v142;
  v110 = v143;
  v57 = v145;
  v112 = v144;
  v58 = v146;
  v59 = sub_2612FF320();
  *(v0 + 1632) = v54;
  *(v0 + 1640) = v56;
  *(v0 + 1648) = v59;
  *(v0 + 1656) = v60;
  sub_261273F80();
  v61 = v54;
  v62 = sub_2613A185C();
  if (v62)
  {
    v63 = *(v0 + 1696);
    v142 = v125;
    v143 = v122;

    MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
    v64 = v142;
    v65 = v143;
    *(v0 + 944) = v138;
    *(v0 + 960) = v139;
    *(v0 + 976) = v140;
    *(v0 + 992) = v141;
    *(v0 + 880) = v134;
    *(v0 + 896) = v135;
    *(v0 + 912) = v136;
    *(v0 + 928) = v137;
    *(v0 + 1000) = v54;
    *(v0 + 1004) = v119;
    *(v0 + 1008) = v56;
    *(v0 + 1016) = v114;
    sub_2612F6F14(v64, v65, v0 + 880, &type metadata for StoreAndForwardSession, v116, v17);

    if (((*(*v63 + 304))(v66) & 1) == 0)
    {
      sub_2612736DC(v107, v106, *(v0 + 1696));
    }

    *(v0 + 1232) = v138;
    *(v0 + 1248) = v139;
    *(v0 + 1264) = v140;
    *(v0 + 1168) = v134;
    *(v0 + 1184) = v135;
    *(v0 + 1200) = v136;
    *(v0 + 1216) = v137;
    *(v0 + 1088) = v138;
    *(v0 + 1104) = v139;
    *(v0 + 1120) = v140;
    *(v0 + 1024) = v134;
    *(v0 + 1040) = v135;
    *(v0 + 1056) = v136;
    *(v0 + 1280) = v141;
    v67 = *(v0 + 1680);
    *(v0 + 1288) = v61;
    *(v0 + 1292) = v119;
    *(v0 + 1296) = v56;
    *(v0 + 1304) = v114;
    *(v0 + 1136) = v141;
    *(v0 + 1072) = v137;
    *(v0 + 1144) = v61;
    *(v0 + 1148) = v119;
    *(v0 + 1152) = v56;
    *(v0 + 1160) = v114;
    sub_261274028(v0 + 1168, v0 + 1312);
    sub_261273FD4(v0 + 1024);
    *v67 = v108;
    v67[1] = v110;
    v67[2] = v112;
    v67[3] = v57;
    v67[4] = v58;
    v133 = *(v0 + 1304);
    v130 = *(v0 + 1288);
    v68 = *(v0 + 1296);
    v69 = *(v0 + 1280);
    v123 = *(v0 + 1272);
    v126 = *(v0 + 1264);
    v118 = *(v0 + 1232);
    v120 = *(v0 + 1248);
    v115 = *(v0 + 1200);
    v117 = *(v0 + 1216);
    v111 = *(v0 + 1168);
    v113 = *(v0 + 1184);
    v70 = *(v0 + 1816);
    v71 = *(v0 + 1808);
    v72 = *(v0 + 1800);
    v73 = *(v0 + 1792);
    v74 = *(v0 + 1784);
    v75 = *(v0 + 1776);
    v76 = *(v0 + 1768);
    v77 = *(v0 + 1760);
    v78 = *(v0 + 1752);
    v109 = *(v0 + 1744);
    v79 = *(v0 + 1672);

    *v79 = v111;
    *(v79 + 16) = v113;
    *(v79 + 32) = v115;
    *(v79 + 48) = v117;
    *(v79 + 64) = v118;
    *(v79 + 80) = v120;
    *(v79 + 96) = v126;
    *(v79 + 104) = v123;
    *(v79 + 112) = v69;
    *(v79 + 120) = v130;
    *(v79 + 128) = v68;
    *(v79 + 136) = v133;
    v80 = *(v0 + 8);
    goto LABEL_37;
  }

  v98 = v26;
  v99 = *(v0 + 1792);
  sub_261273F3C(v108, v110);
  *(v0 + 800) = v138;
  *(v0 + 816) = v139;
  *(v0 + 832) = v140;
  *(v0 + 848) = v141;
  *(v0 + 736) = v134;
  *(v0 + 752) = v135;
  *(v0 + 768) = v136;
  *(v0 + 784) = v137;
  *(v0 + 856) = v98;
  *(v0 + 860) = v119;
  *(v0 + 864) = v27;
  *(v0 + 872) = v114;
  sub_261273FD4(v0 + 736);
  sub_26125A870(v2, v99, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v5)(v99, 1, v132) == 1)
  {
    sub_26124C718(*(v0 + 1792), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v100 = *(v0 + 1792);
    v101 = sub_2613A122C();
    v102 = sub_2613A1D8C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_261243000, v101, v102, "Stored SAF session has expired", v103, 2u);
      MEMORY[0x266701350](v103, -1, -1);
    }

    v104 = *(v0 + 1792);

    (*(v129 + 8))(v104, v132);
  }

  v105 = objc_allocWithZone(sub_26139F2CC());
LABEL_36:
  v87 = sub_26139F2DC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
  v88 = swift_allocError();
  *v89 = v87;
  swift_willThrow();
  v90 = *(v0 + 1816);
  v91 = *(v0 + 1808);
  v92 = *(v0 + 1800);
  v93 = *(v0 + 1792);
  v94 = *(v0 + 1784);
  v95 = *(v0 + 1776);
  v96 = *(v0 + 1768);
  v121 = *(v0 + 1760);
  v124 = *(v0 + 1752);
  v127 = *(v0 + 1744);
  v131 = *(v0 + 1720);
  v97 = sub_2612738E0(v88);
  *(v0 + 1664) = v97;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
  swift_willThrowTypedImpl();

  *v131 = v97;
  v80 = *(v0 + 8);
LABEL_37:

  return v80();
}

uint64_t sub_26126A584()
{
  v2 = *(*v1 + 1912);
  v5 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v3 = sub_26126AEFC;
  }

  else
  {
    v3 = sub_26126A698;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26126A698()
{
  v135 = v0;
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1688);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = sub_26126B184(&v130, *(v0 + 1704), *(*(v0 + 1696) + 48), *(*(v0 + 1696) + 56), v3, v4);
  v7 = *(v0 + 1904);
  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v9 = v134;
    v10 = *(v7 + 144);
    if (v10)
    {
      v11 = v6;
      v118 = v130;
      v121 = v131;
      v124 = v132;
      v127 = v133;
      v12 = *(v7 + 136);

      v13 = sub_2612FF320();
      *(v0 + 1600) = v5;
      *(v0 + 1608) = v11;
      *(v0 + 1616) = v13;
      *(v0 + 1624) = v14;
      sub_261273F80();
      if (sub_2613A185C())
      {
        v113 = v9;
        v15 = *(v0 + 1904);
        v109 = *(v0 + 1896);
        v105 = *(v0 + 1888);
        v107 = *(v0 + 1880);
        v102 = *(v0 + 1864);
        v103 = *(v0 + 1872);
        v16 = *(v0 + 1744);
        v101 = v12;
        v17 = *(v0 + 1736);
        v18 = *(v0 + 1728);
        v115 = *(v0 + 1696);
        v19 = *(v0 + 1688);
        v111 = *(v0 + 1680);
        sub_26139F12C();
        v99 = sub_26139F0FC();
        v100 = v20;
        v21 = (*(v17 + 8))(v16, v18);
        v22 = (*(*v15 + 192))(v21);
        v97 = v23;
        v98 = v22;
        v24 = v15[14];
        v95 = v15[13];
        v96 = v15[6];
        v25 = *(v19 + 40);
        v93 = *(v19 + 32);
        v94 = v15[7];
        v92 = *(*v115 + 208);

        v27 = v92(v26);
        *&v91 = v3;
        *(&v91 + 1) = v4;
        *&v90 = v101;
        *(&v90 + 1) = v10;
        sub_26127E734(v99, v100, v98, v97, v96, v94, v95, v24, v0 + 16, v27, v11, v90, v91, v93, v25, v5, 0);
        v130 = v102;
        v131 = v103;

        MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
        v28 = v130;
        v29 = v131;
        v30 = *(v0 + 128);
        *(v0 + 544) = *(v0 + 112);
        *(v0 + 560) = v30;
        *(v0 + 569) = *(v0 + 137);
        v31 = *(v0 + 64);
        *(v0 + 480) = *(v0 + 48);
        *(v0 + 496) = v31;
        v32 = *(v0 + 96);
        *(v0 + 512) = *(v0 + 80);
        *(v0 + 528) = v32;
        v33 = *(v0 + 32);
        *(v0 + 448) = *(v0 + 16);
        *(v0 + 464) = v33;
        sub_2612F6F14(v28, v29, v0 + 448, &type metadata for StoreAndForwardSession, v105, v109);

        sub_2612736DC(v3, v4, v115);

        *v111 = v118;
        v111[1] = v121;
        v111[2] = v124;
        v111[3] = v127;
        v111[4] = v113;
        v128 = *(v0 + 152);
        v125 = *(v0 + 136);
        v34 = *(v0 + 144);
        v35 = *(v0 + 128);
        v119 = *(v0 + 120);
        v122 = *(v0 + 112);
        v114 = *(v0 + 80);
        v116 = *(v0 + 96);
        v110 = *(v0 + 48);
        v112 = *(v0 + 64);
        v106 = *(v0 + 16);
        v108 = *(v0 + 32);
        v36 = *(v0 + 1816);
        v37 = *(v0 + 1808);
        v38 = *(v0 + 1800);
        v39 = *(v0 + 1792);
        v40 = *(v0 + 1784);
        v41 = *(v0 + 1776);
        v42 = *(v0 + 1768);
        v43 = *(v0 + 1760);
        v44 = *(v0 + 1752);
        v104 = *(v0 + 1744);
        v45 = *(v0 + 1672);

        *v45 = v106;
        *(v45 + 16) = v108;
        *(v45 + 32) = v110;
        *(v45 + 48) = v112;
        *(v45 + 64) = v114;
        *(v45 + 80) = v116;
        *(v45 + 96) = v122;
        *(v45 + 104) = v119;
        *(v45 + 112) = v35;
        *(v45 + 120) = v125;
        *(v45 + 128) = v34;
        *(v45 + 136) = v128;
        v46 = *(v0 + 8);
        goto LABEL_20;
      }

      v52 = *(v0 + 1856);
      v53 = *(v0 + 1848);
      v54 = *(v0 + 1832);
      v55 = *(v0 + 1824);
      v56 = *(v0 + 1768);
      sub_261273F3C(v118, v121);

      sub_26125A870(v55, v56, &qword_27FE9F560, &qword_2613A3CB0);
      if (v53(v56, 1, v54) == 1)
      {
        sub_26124C718(*(v0 + 1768), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v71 = *(v0 + 1768);
        v72 = sub_2613A122C();
        v73 = sub_2613A1D8C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_261243000, v72, v73, "SAF is expired, cannot create session", v74, 2u);
          MEMORY[0x266701350](v74, -1, -1);
        }

        v75 = *(v0 + 1840);
        v76 = *(v0 + 1832);
        v77 = *(v0 + 1768);

        (*(v75 + 8))(v77, v76);
      }

      v78 = *(v0 + 1904);
      v79 = objc_allocWithZone(sub_26139F2CC());
    }

    else
    {
      v47 = *(v0 + 1856);
      v48 = *(v0 + 1848);
      v49 = *(v0 + 1832);
      v50 = *(v0 + 1824);
      v51 = *(v0 + 1760);
      sub_261273F3C(v130, v131);
      sub_26125A870(v50, v51, &qword_27FE9F560, &qword_2613A3CB0);
      if (v48(v51, 1, v49) == 1)
      {
        sub_26124C718(*(v0 + 1760), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v57 = *(v0 + 1760);
        v58 = sub_2613A122C();
        v59 = sub_2613A1D8C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_261243000, v58, v59, "Could not retrieve SAF tpid", v60, 2u);
          MEMORY[0x266701350](v60, -1, -1);
        }

        v61 = *(v0 + 1840);
        v62 = *(v0 + 1832);
        v63 = *(v0 + 1760);

        (*(v61 + 8))(v63, v62);
      }

      v64 = *(v0 + 1904);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_2613A4310;
      v66 = sub_26139F2CC();
      *(v65 + 32) = sub_26139F27C();
      *(v65 + 40) = v67;
      v68 = sub_2613A0F3C();
      *(v65 + 72) = MEMORY[0x277D837D0];
      *(v65 + 48) = v68;
      *(v65 + 56) = v69;
      sub_261259E78(v65);
      swift_setDeallocating();
      sub_26124C718(v65 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
      swift_deallocClassInstance();
      v70 = objc_allocWithZone(v66);
    }

    v80 = sub_26139F2DC();
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
    v8 = swift_allocError();
    *v81 = v80;
    swift_willThrow();
  }

  v82 = *(v0 + 1816);
  v83 = *(v0 + 1808);
  v84 = *(v0 + 1800);
  v85 = *(v0 + 1792);
  v86 = *(v0 + 1784);
  v87 = *(v0 + 1776);
  v117 = *(v0 + 1768);
  v120 = *(v0 + 1760);
  v123 = *(v0 + 1752);
  v126 = *(v0 + 1744);
  v129 = *(v0 + 1720);
  v88 = sub_2612738E0(v8);
  *(v0 + 1664) = v88;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
  swift_willThrowTypedImpl();

  *v129 = v88;
  v46 = *(v0 + 8);
LABEL_20:

  return v46();
}

uint64_t sub_26126AEFC()
{
  v1 = v0[238];

  v2 = v0[240];
  v3 = v0[227];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[224];
  v7 = v0[223];
  v8 = v0[222];
  v12 = v0[221];
  v13 = v0[220];
  v14 = v0[219];
  v15 = v0[218];
  v16 = v0[215];
  v9 = sub_2612738E0(v2);
  v0[208] = v9;
  sub_26139F2CC();
  sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
  swift_willThrowTypedImpl();

  *v16 = v9;
  v10 = v0[1];

  return v10();
}

__n128 sub_26126B07C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SessionManager();
  *&v16 = a1;
  *(&v16 + 1) = a2;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v6 = sub_261273E7C();
  v7 = sub_261273ED0();
  sub_2612F7868(a1, a2, &type metadata for StoreAndForwardSession, v6, v7, v14);

  *(&v20[1] + 1) = *&v15[9];
  v20[1] = *&v15[8];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  result = v14[1];
  v16 = v14[0];
  v9 = v14[5];
  v10 = *v15;
  *(a3 + 96) = v14[6];
  *(a3 + 112) = v10;
  *(a3 + 121) = *(&v20[1] + 1);
  v11 = v18;
  v12 = v19;
  v13 = v16;
  *(a3 + 32) = v17;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  *(a3 + 80) = v9;
  *a3 = v13;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_26126B184(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 56);
  v58 = a3;
  v59 = a4;
  v21 = v60;
  result = v20(a3, a4, 0, 1, a5, a6, v18, v19);
  if (!v21)
  {
    v25 = v24;
    v57 = v23;
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    (*(v27 + 96))(v58, v59, v26, v27);
    v59 = 0;
    v29 = v28;
    type metadata accessor for Mock();
    v30 = sub_26129B284(29);
    v60 = v25;
    if (v30 >= 1)
    {
      v31 = v30;
      v32 = sub_26129B8EC();
      sub_26125A870(v32, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v33 = sub_2613A124C();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v17, 1, v33) == 1)
      {
        sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v35 = sub_2613A122C();
        v36 = sub_2613A1D7C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134217984;
          *(v37 + 4) = v31;
          _os_log_impl(&dword_261243000, v35, v36, "Using mocked SAF mode expiration interval of %ld seconds", v37, 0xCu);
          MEMORY[0x266701350](v37, -1, -1);
        }

        (*(v34 + 8))(v17, v33);
      }

      v29 = v31;
    }

    v38 = v61;
    v39 = sub_26129B8EC();
    sub_26125A870(v39, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v40 = sub_2613A124C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v15, 1, v40) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v42 = sub_2613A122C();
      v43 = sub_2613A1D9C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v62[0] = v45;
        *v44 = 136315138;
        sub_26124BFC4(v29);
        v48 = sub_26124C11C(v46, v47, v62);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_261243000, v42, v43, "SAF session expires in: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);
        MEMORY[0x266701350](v45, -1, -1);
        MEMORY[0x266701350](v44, -1, -1);
      }

      (*(v41 + 8))(v15, v40);
      v38 = v61;
    }

    result = v60;
    v49 = *(v60 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = (v60 + 64);
      while (v50 < *(result + 16))
      {
        v52 = *(v51 - 4);
        v53 = *(v51 - 3);
        v54 = *(v51 - 2);
        v55 = *(v51 - 1);
        v56 = *v51;
        v62[0] = v52;
        v62[1] = v53;
        v62[2] = v54;
        v62[3] = v55;
        v62[4] = v56;

        if (DeprecationWarning.isOSVersionDeprecation.getter())
        {

          v38 = v61;
          goto LABEL_23;
        }

        ++v50;
        v51 += 5;
        result = v60;
        v38 = v61;
        if (v49 == v50)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
LABEL_23:

      sub_2612FF320();
      result = sub_2612FF364();
      *v38 = v52;
      v38[1] = v53;
      v38[2] = v54;
      v38[3] = v55;
      v38[4] = v56;
    }
  }

  return result;
}

uint64_t sub_26126B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = sub_26139F13C();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v4[13] = *(v11 + 64);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126B854);
}

uint64_t sub_26126B854()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[4];
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  sub_26139F0CC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[6];
    sub_26124C718(v0[10], &qword_27FE9F280, &unk_2613A42B0);
    v8 = sub_26129B8EC();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = v0[6];
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "Could not parse partner ID", v30, 2u);
        MEMORY[0x266701350](v30, -1, -1);
      }

      v31 = v0[6];

      (*(v10 + 8))(v31, v9);
    }

    v32 = objc_allocWithZone(sub_26139F2CC());
    v33 = sub_26139F2DC();
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
    v36 = v0[14];
    v35 = v0[15];
    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[6];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v41 = v0[9];
    v16 = v0[5];
    v18 = v0[2];
    v17 = v0[3];
    v19 = *(v14 + 32);
    v19(v11, v0[10], v15);
    v20 = *(v16 + 16);
    v0[16] = v20;
    (*(v14 + 16))(v12, v11, v15);
    v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v22 = swift_allocObject();
    v0[17] = v22;
    *(v22 + 16) = v18;
    *(v22 + 24) = v17;
    v19(v22 + v21, v12, v15);

    v23 = MEMORY[0x277D84F78];
    sub_2612529C0(v41);
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_26126BC5C;
    v25 = v0[9];

    return sub_261252A34(v24, v25, sub_2612745FC, v22, v20, v23 + 8);
  }
}

uint64_t sub_26126BC5C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_26126BEC4;
  }

  else
  {
    v8 = sub_26126BE0C;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26126BE0C()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26126BEC4()
{
  (*(v0[12] + 8))(v0[15], v0[11]);
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26126BF78(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v5 = sub_26139F0BC();
  v3[70] = v5;
  v6 = *(v5 - 8);
  v3[71] = v6;
  v7 = *(v6 + 64) + 15;
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v8 = sub_2613A1EBC();
  v3[74] = v8;
  v9 = *(v8 - 8);
  v3[75] = v9;
  v10 = *(v9 + 64) + 15;
  v3[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126C0EC);
}

uint64_t sub_26126C0EC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  type metadata accessor for SessionManager();

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v3 = sub_261273E7C();
  v4 = sub_261273ED0();
  sub_2612F7868(v2, v1, &type metadata for StoreAndForwardSession, v3, v4, (v0 + 304));

  *(v0 + 281) = *(v0 + 425);
  v5 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v5;
  v6 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v6;
  v7 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v7;
  v8 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v8;
  v9 = *(v0 + 272);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v9;
  *(v0 + 137) = *(v0 + 281);
  v10 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v10;
  v11 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v11;
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v8;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v12 = *(v0 + 552);
    v13 = sub_26129B8EC();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_26124C718(*(v0 + 552), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = *(v0 + 552);
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "SAF mode was not started", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      v29 = *(v0 + 552);

      (*(v15 + 8))(v29, v14);
    }

    *(v0 + 472) = 3;
    *(v0 + 480) = 2;
    sub_261274084();
    swift_willThrowTypedImpl();
    v30 = *(v0 + 608);
    v31 = *(v0 + 584);
    v32 = *(v0 + 576);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);

    v35 = *(v0 + 8);

    return v35(3, 2);
  }

  else
  {
    v16 = *(v0 + 608);
    v17 = *(v0 + 528);
    v18 = *(v0 + 520);
    v19 = *(*(v0 + 536) + 16);
    *(v0 + 616) = v19;
    v20 = swift_allocObject();
    *(v0 + 624) = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v17;

    v21 = MEMORY[0x277D83B88];
    sub_2612529C0(v16);
    v22 = swift_task_alloc();
    *(v0 + 632) = v22;
    *v22 = v0;
    v22[1] = sub_26126C4C4;
    v23 = *(v0 + 608);

    return sub_261252A34(v0 + 504, v23, sub_2612746F8, v20, v19, v21);
  }
}

uint64_t sub_26126C4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 616);
  v6 = *(*v1 + 608);
  v7 = *(*v1 + 600);
  v8 = *(*v1 + 592);
  v9 = *v1;
  *(*v1 + 640) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    sub_26124C718(v2 + 160, &qword_27FE9F458, &unk_2613A4BE0);
    v10 = sub_26126C818;
  }

  else
  {
    v10 = sub_26126C698;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_26126C698()
{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v13 = v0[69];
  v14 = v0[68];
  v6 = v0[63];
  v7 = v0[18];
  sub_2612FF320();
  sub_26124C718((v0 + 20), &qword_27FE9F458, &unk_2613A4BE0);
  sub_26139F09C();
  sub_26139F04C();
  v8 = *(v4 + 8);
  v8(v3, v5);
  (*(v4 + 16))(v3, v2, v5);
  v9 = objc_allocWithZone(sub_2613A004C());
  v10 = sub_2613A003C();
  v8(v2, v5);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_26126C818()
{
  v1 = *(v0 + 544);
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 544), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = *(v0 + 640);
    v6 = *(v0 + 544);
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 640);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v8, v9, "An error happened while retrieving SAF status: [%@]", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v15 = *(v0 + 544);

    (*(v4 + 8))(v15, v3);
  }

  v16 = *(v0 + 640);
  swift_getErrorValue();
  v18 = *(v0 + 448);
  v17 = *(v0 + 456);
  v19 = *(v0 + 464);
  v20 = sub_2613A250C();
  *(v0 + 488) = v20;
  *(v0 + 496) = 1;
  sub_261274084();
  swift_willThrowTypedImpl();

  v21 = *(v0 + 608);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 552);
  v25 = *(v0 + 544);

  v26 = *(v0 + 8);

  return v26(v20, 1);
}

uint64_t sub_26126CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_26139F13C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v4[19] = *(v6 + 64);
  v4[20] = swift_task_alloc();
  v7 = sub_2613A1EBC();
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126CC1C);
}

uint64_t sub_26126CC1C()
{
  v1 = v0[25];
  v2 = sub_26129B8EC();
  v0[26] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v5 = *(v4 + 48);
  v0[29] = v5;
  v0[30] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[25];
  if (v6 == 1)
  {
    sub_26124C718(v0[25], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[16];
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0xD000000000000031, 0x80000002613B8610, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v13 = v0[22];
  v12 = v0[23];
  v15 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = *(v0[16] + 16);
  v0[31] = v22;
  (*(v13 + 104))(v12, *MEMORY[0x277CBE110], v14);
  (*(v17 + 16))(v15, v19, v18);
  v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24 = swift_allocObject();
  v0[32] = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  (*(v17 + 32))(v24 + v23, v15, v18);

  v25 = swift_task_alloc();
  v0[33] = v25;
  *v25 = v0;
  v25[1] = sub_26126CEC4;
  v26 = v0[23];
  v27 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v25, v26, sub_2612740D8, v24, v22, v27);
}

uint64_t sub_26126CEC4()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 272) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_26126D100;
  }

  else
  {
    v8 = sub_26126D074;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26126D074()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26126D100()
{
  v1 = *(v0 + 272);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 40);
    *(v0 + 72) = v3;
    v4 = *(v0 + 48);
    *(v0 + 80) = v4;
    sub_261274084();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 88);
  }

  else
  {
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 192);

    sub_26125A870(v9, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v7(v10, 1, v8) == 1)
    {
      sub_26124C718(*(v0 + 192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 192);
      v13 = v11;
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 272);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v16;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_261243000, v14, v15, "An error happened while declining a SAF transaction: [%@]", v17, 0xCu);
        sub_26124C718(v18, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 192);

      (*(v22 + 8))(v23, v21);
    }

    v24 = *(v0 + 272);
    swift_getErrorValue();
    v26 = *(v0 + 16);
    v25 = *(v0 + 24);
    v27 = *(v0 + 32);
    v3 = sub_2613A250C();
    *(v0 + 56) = v3;
    v4 = 1;
    *(v0 + 64) = 1;
    sub_261274084();
    swift_willThrowTypedImpl();
    v5 = v24;
  }

  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 160);

  v32 = *(v0 + 8);

  return v32(v3, v4);
}

void sub_26126D3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = sub_261253708(a2, a3, a4, a5);
  if (!v5)
  {
    if (v20)
    {
      v43 = v20;
      if (sub_2612525F4())
      {
        if (!sub_261252400())
        {
          sub_261255FE0(a2, a3, a4, a5);
LABEL_25:

          return;
        }

        v21 = sub_26129B8EC();
        sub_26125A870(v21, v17, &qword_27FE9F560, &qword_2613A3CB0);
        v22 = sub_2613A124C();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v17, 1, v22) == 1)
        {
          sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v39 = sub_2613A122C();
          v40 = sub_2613A1D8C();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_261243000, v39, v40, "Transaction cannot be declined as it was included in a batch", v41, 2u);
            MEMORY[0x266701350](v41, -1, -1);
          }

          (*(v23 + 8))(v17, v22);
        }

        sub_261274084();
        swift_allocError();
        v38 = 5;
      }

      else
      {
        v27 = sub_26129B8EC();
        sub_26125A870(v27, v14, &qword_27FE9F560, &qword_2613A3CB0);
        v28 = sub_2613A124C();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v14, 1, v28) == 1)
        {
          sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v34 = sub_2613A122C();
          v35 = sub_2613A1D8C();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_261243000, v34, v35, "Transaction declination time has expired", v36, 2u);
            MEMORY[0x266701350](v36, -1, -1);
          }

          (*(v29 + 8))(v14, v28);
        }

        sub_261274084();
        swift_allocError();
        v38 = 4;
      }

      *v37 = v38;
      *(v37 + 8) = 2;
      swift_willThrow();
      goto LABEL_25;
    }

    v24 = sub_26129B8EC();
    sub_26125A870(v24, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v19, 1, v25) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261243000, v30, v31, "Could not decline transaction as it was not found", v32, 2u);
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v26 + 8))(v19, v25);
    }

    sub_261274084();
    swift_allocError();
    *v33 = 6;
    *(v33 + 8) = 2;
    swift_willThrow();
  }
}

uint64_t sub_26126D92C(uint64_t a1)
{
  v2[132] = v1;
  v2[131] = a1;
  v3 = type metadata accessor for StoreAndForwardReadResult();
  v2[133] = v3;
  v4 = *(v3 - 8);
  v2[134] = v4;
  v2[135] = *(v4 + 64);
  v2[136] = swift_task_alloc();
  v5 = sub_2613A1EBC();
  v2[137] = v5;
  v6 = *(v5 - 8);
  v2[138] = v6;
  v7 = *(v6 + 64) + 15;
  v2[139] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15;
  v2[140] = swift_task_alloc();
  v9 = sub_26139F13C();
  v2[141] = v9;
  v10 = *(v9 - 8);
  v2[142] = v10;
  v2[143] = *(v10 + 64);
  v2[144] = swift_task_alloc();
  v2[145] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126DB7C);
}

uint64_t sub_26126DB7C()
{
  v1 = *(v0 + 1216);
  v2 = sub_26129B8EC();
  *(v0 + 1224) = v2;
  v137 = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 1232) = v3;
  v4 = *(v3 - 8);
  *(v0 + 1240) = v4;
  v5 = *(v4 + 48);
  *(v0 + 1248) = v5;
  *(v0 + 1256) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    v6 = v3;
    sub_26124C718(*(v0 + 1216), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = *(v0 + 1216);
    v8 = sub_2613A122C();
    v9 = sub_2613A1D7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5;
      v11 = v4;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "handleReadResult", v12, 2u);
      v13 = v12;
      v4 = v11;
      v5 = v10;
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = *(v0 + 1216);

    v6 = v3;
    (*(v4 + 8))(v14, v3);
  }

  v15 = *(v0 + 1048);
  v16 = *v15;
  v17 = v15[1];
  type metadata accessor for SessionManager();
  v130 = v16;
  v131 = v17;
  v140 = v17;

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  v18 = v16;
  v19 = sub_261273E7C();
  v132 = sub_261273ED0();
  v134 = v19;
  sub_2612F7868(v18, v140, &type metadata for StoreAndForwardSession, v19, v132, (v0 + 160));

  v20 = *(v0 + 272);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v20;
  *(v0 + 137) = *(v0 + 281);
  v21 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v21;
  v22 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v22;
  v23 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v23;
  v24 = v6;
  if (sub_261273F24(v0 + 16) == 1)
  {
    goto LABEL_9;
  }

  v128 = v4;
  v129 = v5;
  v25 = (v0 + 880);
  v26 = *(v0 + 1136);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v31 = *(v0 + 128);
  *(v0 + 976) = *(v0 + 112);
  *(v0 + 992) = v31;
  *(v0 + 1008) = *(v0 + 144);
  v32 = *(v0 + 64);
  *(v0 + 912) = *(v0 + 48);
  *(v0 + 928) = v32;
  v33 = *(v0 + 96);
  *(v0 + 944) = *(v0 + 80);
  *(v0 + 960) = v33;
  v34 = *(v0 + 32);
  *(v0 + 880) = *(v0 + 16);
  *(v0 + 896) = v34;
  v35 = *(v0 + 152);

  sub_26139F0CC();

  if ((*(v26 + 48))(v28, 1, v27) == 1)
  {
    v36 = *(v0 + 1120);
    v37 = *(v0 + 992);
    *(v0 + 400) = *(v0 + 976);
    *(v0 + 416) = v37;
    *(v0 + 432) = *(v0 + 1008);
    v38 = *(v0 + 928);
    *(v0 + 336) = *(v0 + 912);
    *(v0 + 352) = v38;
    v39 = *(v0 + 960);
    *(v0 + 368) = *(v0 + 944);
    *(v0 + 384) = v39;
    v40 = *(v0 + 896);
    *(v0 + 304) = *v25;
    *(v0 + 320) = v40;
    *(v0 + 440) = v35;
    sub_261273FD4(v0 + 304);
    sub_26124C718(v36, &qword_27FE9F280, &unk_2613A42B0);
    v4 = v128;
    v5 = v129;
LABEL_9:
    v41 = *(v0 + 1176);
    sub_26125A870(v137, v41, &qword_27FE9F560, &qword_2613A3CB0);
    if (v5(v41, 1, v24) == 1)
    {
      sub_26124C718(*(v0 + 1176), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v42 = *(v0 + 1176);
      v43 = sub_2613A122C();
      v44 = sub_2613A1D8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v43, v44, "Could not load SAF session", v45, 2u);
        MEMORY[0x266701350](v45, -1, -1);
      }

      v46 = *(v0 + 1176);

      (*(v4 + 8))(v46, v24);
    }

    v138 = 3;
LABEL_15:
    v47 = *(v0 + 1216);
    v48 = *(v0 + 1208);
    v49 = *(v0 + 1200);
    v50 = *(v0 + 1192);
    v51 = *(v0 + 1184);
    v52 = *(v0 + 1176);
    v53 = *(v0 + 1168);
    v54 = *(v0 + 1160);
    v55 = *(v0 + 1152);
    v56 = *(v0 + 1120);
    v133 = *(v0 + 1112);
    v135 = *(v0 + 1088);

    v57 = *(v0 + 8);

    return v57(v138, 2);
  }

  v59 = *(v0 + 1064);
  v60 = *(v0 + 1048);
  v127 = *(*(v0 + 1136) + 32);
  v127(*(v0 + 1160), *(v0 + 1120), *(v0 + 1128));
  type metadata accessor for Mock();
  v61 = sub_26129B338(36);
  v62 = v60 + *(v59 + 24);
  if (*(v62 + *(type metadata accessor for TransactionData(0) + 132)) != 1)
  {
    v63 = v129;
    if ((v61 & 1) == 0)
    {
LABEL_28:
      v76 = (v0 + 448);
      v77 = *(v0 + 1184);
      sub_26125A870(v137, v77, &qword_27FE9F560, &qword_2613A3CB0);
      if (v63(v77, 1, v24) == 1)
      {
        sub_26124C718(*(v0 + 1184), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v78 = *(v0 + 1184);
        v79 = sub_2613A122C();
        v80 = sub_2613A1D8C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_261243000, v79, v80, "Read was not executed in SAF mode, updating SAF session to force a new prepare", v81, 2u);
          MEMORY[0x266701350](v81, -1, -1);
        }

        v82 = *(v0 + 1184);

        (*(v128 + 8))(v82, v24);
      }

      v83 = *(v0 + 1160);
      v84 = *(v0 + 1136);
      v85 = *(v0 + 1128);
      v86 = *(v0 + 992);
      *(v0 + 544) = *(v0 + 976);
      *(v0 + 560) = v86;
      *(v0 + 576) = *(v0 + 1008);
      v87 = *(v0 + 928);
      *(v0 + 480) = *(v0 + 912);
      *(v0 + 496) = v87;
      v88 = *(v0 + 960);
      *(v0 + 512) = *(v0 + 944);
      *(v0 + 528) = v88;
      v89 = *(v0 + 896);
      *v76 = *v25;
      *(v0 + 464) = v89;
      v138 = 1;
      *(v0 + 584) = 1;

      MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
      v90 = *(v0 + 560);
      *(v0 + 688) = *(v0 + 544);
      *(v0 + 704) = v90;
      *(v0 + 713) = *(v0 + 569);
      v91 = *(v0 + 496);
      *(v0 + 624) = *(v0 + 480);
      *(v0 + 640) = v91;
      v92 = *(v0 + 528);
      *(v0 + 656) = *(v0 + 512);
      *(v0 + 672) = v92;
      v93 = *(v0 + 464);
      *(v0 + 592) = *v76;
      *(v0 + 608) = v93;
      sub_2612F6F14(v130, v131, v0 + 592, &type metadata for StoreAndForwardSession, v134, v132);

      (*(v84 + 8))(v83, v85);
      sub_261273FD4(v0 + 448);
      goto LABEL_15;
    }

LABEL_23:
    v70 = *(v0 + 1192);
    sub_26125A870(v137, v70, &qword_27FE9F560, &qword_2613A3CB0);
    if (v63(v70, 1, v24) == 1)
    {
      sub_26124C718(*(v0 + 1192), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v71 = *(v0 + 1192);
      v72 = sub_2613A122C();
      v73 = sub_2613A1D7C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_261243000, v72, v73, "Simulating SAF reader mode mismatch", v74, 2u);
        MEMORY[0x266701350](v74, -1, -1);
      }

      v75 = *(v0 + 1192);

      (*(v128 + 8))(v75, v24);
    }

    goto LABEL_28;
  }

  v63 = v129;
  if (v61)
  {
    goto LABEL_23;
  }

  v64 = *(v0 + 1208);
  v65 = *(v0 + 992);
  *(v0 + 832) = *(v0 + 976);
  *(v0 + 848) = v65;
  *(v0 + 864) = *(v0 + 1008);
  v66 = *(v0 + 928);
  *(v0 + 768) = *(v0 + 912);
  *(v0 + 784) = v66;
  v67 = *(v0 + 960);
  *(v0 + 800) = *(v0 + 944);
  *(v0 + 816) = v67;
  v68 = *(v0 + 896);
  *(v0 + 736) = *v25;
  *(v0 + 752) = v68;
  *(v0 + 872) = v35;
  sub_261273FD4(v0 + 736);
  sub_26125A870(v137, v64, &qword_27FE9F560, &qword_2613A3CB0);
  if (v129(v64, 1, v24) == 1)
  {
    sub_26124C718(*(v0 + 1208), &qword_27FE9F560, &qword_2613A3CB0);
    v69 = v128;
  }

  else
  {
    v94 = *(v0 + 1208);
    v95 = sub_2613A122C();
    v96 = sub_2613A1D7C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_261243000, v95, v96, "Saving SAF transaction", v97, 2u);
      MEMORY[0x266701350](v97, -1, -1);
    }

    v98 = *(v0 + 1208);

    v69 = v128;
    (*(v128 + 8))(v98, v24);
  }

  v99 = sub_26129B284(30);
  if (v99 < 1)
  {
    v102 = *(v0 + 128);
  }

  else
  {
    v100 = v99;
    v101 = *(v0 + 1200);
    sub_26125A870(v137, v101, &qword_27FE9F560, &qword_2613A3CB0);
    if (v129(v101, 1, v24) == 1)
    {
      sub_26124C718(*(v0 + 1200), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v103 = *(v0 + 1200);
      v104 = sub_2613A122C();
      v105 = sub_2613A1D7C();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_261243000, v104, v105, "Using mocked SAF transactions expiration", v106, 2u);
        v107 = v106;
        v69 = v128;
        MEMORY[0x266701350](v107, -1, -1);
      }

      v108 = *(v0 + 1200);

      (*(v69 + 8))(v108, v24);
    }

    v102 = v100;
  }

  v109 = *(v0 + 1160);
  v110 = *(v0 + 1152);
  v111 = *(v0 + 1144);
  v112 = *(v0 + 1136);
  v113 = *(v0 + 1128);
  v114 = *(v0 + 1112);
  v115 = *(v0 + 1104);
  v116 = *(v0 + 1096);
  v117 = *(v0 + 1088);
  v118 = *(v0 + 1080);
  v119 = *(v0 + 1072);
  v120 = *(v0 + 1048);
  v136 = v111;
  v139 = *(*(v0 + 1056) + 16);
  *(v0 + 1264) = v139;
  (*(v115 + 104))(v114, *MEMORY[0x277CBE110], v116);
  sub_261259440(v120, v117);
  (*(v112 + 16))(v110, v109, v113);
  v121 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v122 = (v118 + *(v112 + 80) + v121) & ~*(v112 + 80);
  v123 = swift_allocObject();
  *(v0 + 1272) = v123;
  sub_261274104(v117, v123 + v121);
  v127(v123 + v122, v110, v113);
  *(v123 + ((v136 + v122 + 7) & 0xFFFFFFFFFFFFFFF8)) = v102;

  v124 = swift_task_alloc();
  *(v0 + 1280) = v124;
  *v124 = v0;
  v124[1] = sub_26126E7B0;
  v125 = *(v0 + 1112);
  v126 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v124, v125, sub_261274168, v123, v139, v126);
}

uint64_t sub_26126E7B0()
{
  v2 = *(*v1 + 1280);
  v3 = *(*v1 + 1272);
  v4 = *(*v1 + 1264);
  v5 = *(*v1 + 1112);
  v6 = *(*v1 + 1104);
  v7 = *(*v1 + 1096);
  v10 = *v1;
  *(*v1 + 1288) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_26126EA8C;
  }

  else
  {
    v8 = sub_26126E960;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26126E960()
{
  (*(v0[142] + 8))(v0[145], v0[141]);
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[148];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[145];
  v9 = v0[144];
  v10 = v0[140];
  v13 = v0[139];
  v14 = v0[136];

  v11 = v0[1];

  return v11(0, 255);
}

uint64_t sub_26126EA8C()
{
  v1 = v0[157];
  v2 = v0[156];
  v3 = v0[154];
  v4 = v0[146];
  sub_26125A870(v0[153], v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(v0[146], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[161];
    v6 = v0[146];
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[161];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v8, v9, "Could not save SAF transaction due to: [ %@ ]", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v15 = v0[155];
    v16 = v0[154];
    v17 = v0[146];

    (*(v15 + 8))(v17, v16);
  }

  v18 = v0[161];
  v19 = v0[145];
  v20 = v0[142];
  v21 = v0[141];
  swift_getErrorValue();
  v22 = v0[127];
  v23 = v0[128];
  v24 = v0[129];
  v39 = sub_2613A250C();

  (*(v20 + 8))(v19, v21);
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];
  v29 = v0[148];
  v30 = v0[147];
  v31 = v0[146];
  v32 = v0[145];
  v33 = v0[144];
  v34 = v0[140];
  v37 = v0[139];
  v38 = v0[136];

  v35 = v0[1];

  return v35(v39, 1);
}

uint64_t sub_26126ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = sub_2613A1EBC();
  v9[11] = v10;
  v11 = *(v10 - 8);
  v9[12] = v11;
  v12 = *(v11 + 64) + 15;
  v9[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v9[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126EE58);
}

uint64_t sub_26126EE58()
{
  v1 = v0[14];
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[14];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Searching for expired transactions", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[14];

    (*(v4 + 8))(v9, v3);
  }

  v10 = v0[13];
  v12 = v0[3];
  v11 = v0[4];
  v13 = *(v0[10] + 16);
  v0[15] = v13;
  v14 = swift_allocObject();
  v0[16] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
  sub_2612529C0(v10);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_26126F0B0;
  v17 = v0[13];

  return sub_261252A34((v0 + 2), v17, sub_2612742D4, v14, v13, v15);
}

uint64_t sub_26126F0B0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[16];
  v6 = v2[15];
  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v7 = sub_26126F73C;
  }

  else
  {
    v7 = sub_26126F258;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26126F258()
{
  v1 = v0[2];
  v0[19] = v1;
  v0[20] = *(v1 + 16);
  v0[21] = sub_2613A0D6C();
  if (*(v1 + 16))
  {
    type metadata accessor for SafMonitorEventDispatcher();
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_26126F49C;
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];

    return sub_26129F7F8(v4, v7, v5, v6, v3, v1);
  }

  else
  {

    if (v0[20] >= v0[21])
    {
      v12 = v0[13];
      v14 = v0[3];
      v13 = v0[4];
      v15 = *(v0[10] + 16);
      v0[15] = v15;
      v16 = swift_allocObject();
      v0[16] = v16;
      *(v16 + 16) = v14;
      *(v16 + 24) = v13;

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
      sub_2612529C0(v12);
      v18 = swift_task_alloc();
      v0[17] = v18;
      *v18 = v0;
      v18[1] = sub_26126F0B0;
      v19 = v0[13];

      return sub_261252A34((v0 + 2), v19, sub_2612742D4, v16, v15, v17);
    }

    else
    {
      v10 = v0[13];
      v9 = v0[14];

      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_26126F49C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26126F5B4);
}

uint64_t sub_26126F5B4()
{
  if (v0[20] >= v0[21])
  {
    v5 = v0[13];
    v7 = v0[3];
    v6 = v0[4];
    v8 = *(v0[10] + 16);
    v0[15] = v8;
    v9 = swift_allocObject();
    v0[16] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2B0, &qword_2613A4378);
    sub_2612529C0(v5);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_26126F0B0;
    v12 = v0[13];

    return sub_261252A34((v0 + 2), v12, sub_2612742D4, v9, v8, v10);
  }

  else
  {
    v2 = v0[13];
    v1 = v0[14];

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_26126F73C()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

void sub_26126F7A8(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - v12;
  v30 = MEMORY[0x266700BB0](v11);
  v14 = sub_2613A0D6C();
  v15 = sub_261254C30();
  sub_261254C34(a1, a2, a3, v14, v15, v16);
  if (v4)
  {
    objc_autoreleasePoolPop(v30);
  }

  else
  {
    v18 = v17;
    v29 = a4;
    if (*(v17 + 16))
    {
      v19 = sub_26129B8EC();
      sub_26125A870(v19, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      v28 = v20;
      if (v22(v13, 1) == 1)
      {
        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v24 = sub_2613A122C();
        HIDWORD(v26) = sub_2613A1D9C();
        v27 = v24;
        if (os_log_type_enabled(v24, BYTE4(v26)))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_261243000, v27, BYTE4(v26), "Expired transactions found, deleting...", v25, 2u);
          MEMORY[0x266701350](v25, -1, -1);
        }

        (*(v21 + 8))(v13, v28);
      }

      sub_261256C8C(a1, a2, a3, v18);
      v23 = v29;
    }

    else
    {
      v23 = v29;
    }

    objc_autoreleasePoolPop(v30);
    *v23 = v18;
  }
}

uint64_t sub_26126FA18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2613A1EBC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26126FB14);
}

uint64_t sub_26126FB14()
{
  v1 = v0[8];
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[8];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking for empty batches", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[8];

    (*(v4 + 8))(v9, v3);
  }

  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[2];
  v13 = *(v0[4] + 16);
  v0[9] = v13;
  v14 = swift_allocObject();
  v0[10] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;

  v15 = MEMORY[0x277D84F78];
  sub_2612529C0(v10);
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_26126FD58;
  v17 = v0[7];

  return sub_261252A34(v16, v17, sub_2612742F0, v14, v13, v15 + 8);
}

uint64_t sub_26126FD58()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_26126FF74;
  }

  else
  {
    v8 = sub_26126FF08;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26126FF08()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26126FF74()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

void sub_26126FFE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v139 = a4;
  v140 = a1;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v116 - v12;
  MEMORY[0x28223BE20](v11);
  v130 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v128 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v116 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v116 - v21;
  MEMORY[0x28223BE20](v20);
  v131 = &v116 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v116 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v116 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = &v116 - v34;
  v133 = v7;
  v38 = *(v7 + 56);
  v37 = v7 + 56;
  v36 = v38;
  v135 = v6;
  v38(&v116 - v34, 1, 1, v6);
  v134 = a2;
  v137 = a3;
  v39 = v138;
  v40 = sub_261257344(a2, a3, v139, v35);
  sub_26124C718(v35, &qword_27FE9F280, &unk_2613A42B0);
  if (!v39)
  {
    v123 = v30;
    v124 = v33;
    v125 = v36;
    v126 = v37;
    v122 = v27;
    v41 = v137;
    if (v40)
    {
      v42 = v40;
      v138 = 0;
      v120 = sub_26129B8EC();
      v43 = v136;
      sub_26125A870(v120, v136, &qword_27FE9F560, &qword_2613A3CB0);
      v44 = sub_2613A124C();
      v131 = *(v44 - 8);
      v45 = *(v131 + 48);
      v119 = v131 + 48;
      v118 = v45;
      v46 = v45(v43, 1, v44);
      v47 = &off_279AD5000;
      v121 = v44;
      if (v46 == 1)
      {
        sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
        v49 = v134;
        v48 = v135;
        v50 = v133;
      }

      else
      {
        v58 = v40;
        v59 = sub_2613A122C();
        v60 = sub_2613A1D9C();

        v61 = os_log_type_enabled(v59, v60);
        v62 = v135;
        v50 = v133;
        if (v61)
        {
          v63 = swift_slowAlloc();
          v116 = v63;
          v117 = swift_slowAlloc();
          v141 = v117;
          *v63 = 136315138;
          v64 = v60;
          v65 = [v58 batchId];
          v66 = v130;
          sub_26139F11C();

          sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0]);
          v67 = sub_2613A23EC();
          v69 = v68;
          v70 = v66;
          v71 = v62;
          (*(v50 + 8))(v70, v62);
          v72 = sub_26124C11C(v67, v69, &v141);

          v73 = v116;
          *(v116 + 1) = v72;
          v47 = &off_279AD5000;
          _os_log_impl(&dword_261243000, v59, v64, "Checking if batch [%s] is empty", v73, 0xCu);
          v74 = v117;
          __swift_destroy_boxed_opaque_existential_0Tm(v117);
          MEMORY[0x266701350](v74, -1, -1);
          MEMORY[0x266701350](v73, -1, -1);

          v49 = v134;
        }

        else
        {
          v71 = v135;

          v49 = v134;
          v47 = &off_279AD5000;
        }

        (*(v131 + 8))(v136, v44);
        v41 = v137;
        v48 = v71;
      }

      v78 = [v42 v47[71]];
      v79 = v132;
      sub_26139F11C();

      v136 = v42;
      v80 = *(v50 + 32);
      v81 = v124;
      v80(v124, v79, v48);
      v82 = v125;
      v125(v81, 0, 1, v48);
      v83 = v123;
      v82(v123, 1, 1, v48);
      v84 = v138;
      v85 = sub_261253720(v49, v41, v139, v81, v83);
      if (v84)
      {

        sub_26124C718(v83, &qword_27FE9F280, &unk_2613A42B0);
        v57 = v81;
        v55 = &qword_27FE9F280;
        v56 = &unk_2613A42B0;
        goto LABEL_16;
      }

      v86 = v85;
      v132 = v80;
      v138 = 0;
      sub_26124C718(v83, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v81, &qword_27FE9F280, &unk_2613A42B0);
      if (v86 < 1)
      {
        v89 = v128;
        sub_26125A870(v120, v128, &qword_27FE9F560, &qword_2613A3CB0);
        v90 = v121;
        if (v118(v89, 1, v121) == 1)
        {
          sub_26124C718(v89, &qword_27FE9F560, &qword_2613A3CB0);
          v91 = v139;
          v92 = v135;
          v93 = v127;
          v94 = v122;
          v95 = v132;
        }

        else
        {
          v101 = v136;
          v102 = sub_2613A122C();
          v103 = sub_2613A1D9C();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v141 = v105;
            *v104 = 136315138;
            v106 = [v101 batchId];
            LODWORD(v129) = v103;
            v107 = v106;
            v108 = v130;
            sub_26139F11C();

            sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0]);
            v109 = v135;
            v110 = sub_2613A23EC();
            v112 = v111;
            (*(v133 + 8))(v108, v109);
            v113 = sub_26124C11C(v110, v112, &v141);

            *(v104 + 4) = v113;
            _os_log_impl(&dword_261243000, v102, v129, "Batch [%s] is empty, deleting it", v104, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v105);
            MEMORY[0x266701350](v105, -1, -1);
            MEMORY[0x266701350](v104, -1, -1);
          }

          v91 = v139;
          v93 = v127;
          v95 = v132;
          (*(v131 + 8))(v128, v90);
          v92 = v135;
          v94 = v122;
        }

        v114 = v136;
        v115 = [v136 batchId];
        sub_26139F11C();

        v95(v94, v93, v92);
        v125(v94, 0, 1, v92);
        sub_261257484(v134, v137, v91, v94, v140);
        sub_26124C718(v94, &qword_27FE9F280, &unk_2613A42B0);
      }

      else
      {
        v87 = v129;
        sub_26125A870(v120, v129, &qword_27FE9F560, &qword_2613A3CB0);
        v88 = v121;
        if (v118(v87, 1, v121) == 1)
        {

          sub_26124C718(v87, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v96 = sub_2613A122C();
          v97 = sub_2613A1D9C();
          v98 = os_log_type_enabled(v96, v97);
          v99 = v136;
          if (v98)
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&dword_261243000, v96, v97, "Batch is not empty", v100, 2u);
            MEMORY[0x266701350](v100, -1, -1);
          }

          (*(v131 + 8))(v87, v88);
        }
      }
    }

    else
    {
      v51 = sub_26129B8EC();
      v52 = v131;
      sub_26125A870(v51, v131, &qword_27FE9F560, &qword_2613A3CB0);
      v53 = sub_2613A124C();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53) == 1)
      {
        v55 = &qword_27FE9F560;
        v56 = &qword_2613A3CB0;
        v57 = v52;
LABEL_16:
        sub_26124C718(v57, v55, v56);
        return;
      }

      v75 = sub_2613A122C();
      v76 = sub_2613A1D9C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_261243000, v75, v76, "No batch found, cleanup is not needed", v77, 2u);
        MEMORY[0x266701350](v77, -1, -1);
      }

      (*(v54 + 8))(v52, v53);
    }
  }
}

uint64_t sub_261270B9C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 128) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_2613A1EBC();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261270CA0);
}

uint64_t sub_261270CA0()
{
  v1 = *(v0 + 80);
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 80), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking RTC counter in the transactions", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = *(v0 + 80);

    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v0 + 48);
  v11 = swift_allocObject();
  *(v0 + 88) = v11;
  *(v11 + 16) = 0;
  v12 = *(v0 + 72);
  v13 = *(v0 + 40);
  v14 = *(v0 + 128);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v10 + 16);
  *(v0 + 96) = v17;
  v18 = swift_allocObject();
  *(v0 + 104) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v14;
  *(v18 + 40) = v13;
  *(v18 + 48) = v11;

  v19 = MEMORY[0x277D83B88];
  sub_2612529C0(v12);
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  *v20 = v0;
  v20[1] = sub_261270F30;
  v21 = *(v0 + 72);

  return sub_261252A34(v0 + 16, v21, sub_26127430C, v18, v17, v19);
}

uint64_t sub_261270F30()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v7 = sub_2612712A0;
  }

  else
  {
    v7 = sub_2612710D8;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2612710D8()
{
  v1 = *(v0 + 16);
  v2 = sub_2613A0D6C();
  v3 = *(v0 + 88);
  if (v1 >= v2)
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 128);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = *(*(v0 + 48) + 16);
    *(v0 + 96) = v13;
    v14 = swift_allocObject();
    *(v0 + 104) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = v3;

    v15 = MEMORY[0x277D83B88];
    sub_2612529C0(v8);
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_261270F30;
    v17 = *(v0 + 72);

    return sub_261252A34(v0 + 16, v17, sub_26127430C, v14, v13, v15);
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2612712A0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

unint64_t sub_261271318@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, double *a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v72 = a7;
  v73 = a6;
  v76[7] = *MEMORY[0x277D85DE8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - v22;
  v24 = sub_2613A0D6C();
  v25 = v75;
  result = sub_26125545C(a1, a2, a3, a4, v24);
  v27 = v73;
  if (v25)
  {
LABEL_2:
    *v27 = v25;
    goto LABEL_42;
  }

  v28 = result;
  v70 = 0;
  v71 = v23;
  v75 = a1;
  v29 = (result >> 62);
  if (!(result >> 62))
  {
    v30 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_30:

    swift_beginAccess();
    v53 = *a5;
    v54 = sub_26129B8EC();
    if (v53 == 0.0)
    {
      v55 = v21;
      sub_26125A870(v54, v21, &qword_27FE9F560, &qword_2613A3CB0);
      v56 = sub_2613A124C();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        result = sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v61 = sub_2613A122C();
        v62 = sub_2613A1D9C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_261243000, v61, v62, "All transactions have a valid RTC counter", v63, 2u);
          MEMORY[0x266701350](v63, -1, -1);
        }

        result = (*(v57 + 8))(v55, v56);
      }
    }

    else
    {
      v58 = v18;
      sub_26125A870(v54, v18, &qword_27FE9F560, &qword_2613A3CB0);
      v59 = sub_2613A124C();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        result = sub_26124C718(v58, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v64 = sub_2613A122C();
        v65 = sub_2613A1D9C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_261243000, v64, v65, "No more transactions with invalid RTC counter", v66, 2u);
          MEMORY[0x266701350](v66, -1, -1);
        }

        result = (*(v60 + 8))(v58, v59);
      }
    }

    *v72 = 0;
    goto LABEL_42;
  }

LABEL_29:
  v30 = sub_2613A221C();
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_5:
  v74 = v30;
  v31 = sub_26129B8EC();
  v32 = v71;
  sub_26125A870(v31, v71, &qword_27FE9F560, &qword_2613A3CB0);
  v33 = sub_2613A124C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v32, 1, v33);
  v69 = v29;
  if (v35 == 1)
  {
    sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v36 = sub_2613A122C();
    v37 = sub_2613A1D9C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261243000, v36, v37, "There are RTC counters to be updated", v38, 2u);
      MEMORY[0x266701350](v38, -1, -1);
    }

    (*(v34 + 8))(v71, v33);
  }

  swift_beginAccess();
  swift_beginAccess();
  v21 = 0;
  v39 = v28 & 0xC000000000000001;
  v18 = (v28 & 0xFFFFFFFFFFFFFF8);
  v29 = &off_279AD5000;
  do
  {
    if (v39)
    {
      v40 = v28;
      v41 = MEMORY[0x2667005C0](v21, v28);
    }

    else
    {
      if (v21 >= *(v18 + 2))
      {
        goto LABEL_27;
      }

      v40 = v28;
      v41 = *(v28 + 8 * v21 + 32);
    }

    v42 = v41;
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v43 = *a5 + a8;
    sub_2613A0C6C();
    [v42 setTransactionCPUTime_];
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    [v42 setTransactionCPUTimeCounter_];

    *a5 = *a5 + 1.0;
    ++v21;
    v45 = v28 == v74;
    v28 = v40;
  }

  while (!v45);
  v76[0] = 0;
  v46 = [v75 save_];
  v47 = v76[0];
  if (!v46)
  {
    v49 = v76[0];

    v50 = sub_26139EE7C();

    result = swift_willThrow();
    v25 = v50;
    v27 = v73;
    goto LABEL_2;
  }

  if (v69)
  {
    v48 = sub_2613A221C();
  }

  else
  {
    v48 = *(v18 + 2);
  }

  v51 = v72;
  v52 = v47;

  *v51 = v48;
LABEL_42:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612719A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2613A1EBC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261271A6C);
}

uint64_t sub_261271A6C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[4] + 16);
  v0[8] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;

  v6 = MEMORY[0x277D839B0];
  sub_2612529C0(v1);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_261271B90;
  v8 = v0[7];

  return sub_261252A34((v0 + 12), v8, sub_2612743D8, v5, v4, v6);
}

uint64_t sub_261271B90()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_261271DAC;
  }

  else
  {
    v8 = sub_261271D40;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_261271D40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_261271DAC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2(0);
}

uint64_t sub_261271E14()
{
  v1 = *(v0 + 16);

  sub_261252DA0();
}

void sub_261271E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = sub_26139F13C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = v62;
  v21 = sub_261253210(a2, a3, a4);
  if (!v20)
  {
    v62 = v19;
    v22 = v61;
    v59 = v11;
    if (v21)
    {
      v23 = v13;
      v60 = v21;
      v24 = [v21 partnerId];
      v25 = v62;
      sub_26139F11C();

      sub_2612746B0(&unk_281451E70, MEMORY[0x277CC95F0]);
      LOBYTE(v24) = sub_2613A188C();
      v58 = *(v13 + 8);
      v58(v25, v12);
      if (v24)
      {
      }

      else
      {
        v26 = sub_26129B8EC();
        v27 = v59;
        sub_26125A870(v26, v59, &qword_27FE9F560, &qword_2613A3CB0);
        v28 = sub_2613A124C();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v27, 1, v28) == 1)
        {
          sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v30 = v12;
          (*(v23 + 16))(v17, v22, v12);
          v31 = v60;
          v32 = sub_2613A122C();
          v33 = sub_2613A1D8C();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v57 = v29;
            v35 = v34;
            v56 = swift_slowAlloc();
            v63 = v56;
            *v35 = 136315394;
            v36 = [v31 partnerId];
            v61 = v28;
            v37 = v36;
            v55 = v32;
            v38 = v62;
            sub_26139F11C();

            sub_2612746B0(&qword_27FE9F570, MEMORY[0x277CC95F0]);
            v39 = sub_2613A23EC();
            v41 = v40;
            v42 = v38;
            LOBYTE(v38) = v33;
            v43 = v58;
            v58(v42, v30);
            v44 = sub_26124C11C(v39, v41, &v63);

            *(v35 + 4) = v44;
            *(v35 + 12) = 2080;
            v45 = sub_2613A23EC();
            v47 = v46;
            v43(v17, v30);
            v48 = sub_26124C11C(v45, v47, &v63);

            *(v35 + 14) = v48;
            v28 = v61;
            v27 = v59;
            v49 = v55;
            _os_log_impl(&dword_261243000, v55, v38, "Different partner IDs: [%s] vs [%s]", v35, 0x16u);
            v50 = v56;
            swift_arrayDestroy();
            MEMORY[0x266701350](v50, -1, -1);
            v51 = v35;
            v29 = v57;
            MEMORY[0x266701350](v51, -1, -1);
          }

          else
          {

            v58(v17, v30);
          }

          (*(v29 + 8))(v27, v28);
        }

        v52 = objc_allocWithZone(sub_26139F2CC());
        v53 = sub_26139F2DC();
        sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
        swift_allocError();
        *v54 = v53;
        swift_willThrow();
      }
    }
  }
}