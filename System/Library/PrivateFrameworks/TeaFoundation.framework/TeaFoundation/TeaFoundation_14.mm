void sub_1BF10E180(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1BF10E374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1BF10E4A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1BF10E70C()
{
  result = qword_1EBDCC298;
  if (!qword_1EBDCC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC298);
  }

  return result;
}

uint64_t sub_1BF10E7D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF10E818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF10E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_65(a1, a2, a3, a4);
  v7(v6);
  v8 = OUTLINED_FUNCTION_2_51();
  sub_1BF10E9BC(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_37();
  (*(v12 + 8))(v4, v5);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t sub_1BF10E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_65(a1, a2, a3, a4);
  v7(v6);
  v8 = OUTLINED_FUNCTION_2_51();
  sub_1BF10EAF0(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_37();
  (*(v12 + 8))(v4, v5);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t (*sub_1BF10E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BF10ECC4;
}

uint64_t (*sub_1BF10EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BF10EC74;
}

uint64_t sub_1BF10EC24()
{
  OUTLINED_FUNCTION_4_30();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_53(v2, v3, v4);
  return v5();
}

uint64_t sub_1BF10EC74()
{
  OUTLINED_FUNCTION_4_30();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_53(v2, v3, v4);
  return v5();
}

uint64_t sub_1BF10ECC4()
{
  OUTLINED_FUNCTION_4_30();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_53(v2, v3, v4);
  return v5() & 1;
}

uint64_t static NetworkResponseOperationError.== infix(_:_:)(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (v3)
    {
      goto LABEL_12;
    }

    v2 = 0;
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_12;
    }

    v2 = 1;
LABEL_10:
    v4 = 1;
    goto LABEL_13;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
      v6 = OUTLINED_FUNCTION_42();
      sub_1BF10EE00(v6);
      sub_1BF10EE00(v2);
      OUTLINED_FUNCTION_16_17();
      v4 = sub_1BF17ADEC();
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3 != 2)
  {
LABEL_12:
    sub_1BF10EE00(*a2);
    sub_1BF10EE00(v2);
    v4 = 0;
    goto LABEL_13;
  }

  v4 = 1;
  v2 = 2;
LABEL_13:
  sub_1BF10EE10(v2);
  sub_1BF10EE10(v3);
  return v4 & 1;
}

id sub_1BF10EE00(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1BF10EE10(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1BF10EE30(uint64_t a1, uint64_t a2)
{
  sub_1BF10EE94();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF10EE94()
{
  if (!qword_1ED8EE440)
  {
    sub_1BF178C6C();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE440);
    }
  }
}

void *NetworkOperationResult.response.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

uint64_t sub_1BF10EF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BF1114B0(a1, a5);
  v9 = type metadata accessor for NetworkOperationResult();
  *(a5 + *(v9 + 28)) = a2;
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a3, a4);
}

uint64_t NetworkResponseOperation.underlyingOperationID.getter()
{
  v1 = (*(v0 + qword_1ED8EDA20) + qword_1ED8EF088);
  v2 = *v1;
  v3 = v1[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t NetworkResponseOperation.eventHandler.getter()
{
  v1 = (*(v0 + qword_1ED8EDA20) + qword_1ED8EE2D0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1BF009984(v3);
  return v3;
}

uint64_t sub_1BF10F09C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = NetworkResponseOperation.eventHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1BF1114A8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1BF10F10C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_1BF009984(v3);
  return NetworkResponseOperation.eventHandler.setter();
}

uint64_t NetworkResponseOperation.eventHandler.setter()
{
  OUTLINED_FUNCTION_76();
  v3 = (*(v1 + qword_1ED8EDA20) + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  sub_1BF009984(v2);
  sub_1BF0F8B9C(v4);
  return sub_1BF0F8B9C(v2);
}

uint64_t (*NetworkResponseOperation.eventHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = NetworkResponseOperation.eventHandler.getter();
  a1[1] = v3;
  return sub_1BF10F278;
}

uint64_t sub_1BF10F278(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_16_17();
    sub_1BF009984(v5);
    OUTLINED_FUNCTION_16_17();
    NetworkResponseOperation.eventHandler.setter();
    v6 = OUTLINED_FUNCTION_16_17();

    return sub_1BF0F8B9C(v6);
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    return NetworkResponseOperation.eventHandler.setter();
  }
}

uint64_t NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v2 = objc_allocWithZone(v1);
  v3 = OUTLINED_FUNCTION_42();
  return NetworkResponseOperation.init(requestAccessor:networkProxy:)(v3, v0);
}

uint64_t NetworkResponseOperation.init(requestAccessor:networkProxy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_20_14();
  v9 = *(v8 + 240);
  OUTLINED_FUNCTION_20_14();
  v11 = *(v10 + 248);
  v12 = type metadata accessor for NetworkOperation();
  sub_1BF0F86D0(a2, v15);

  *&v3[qword_1ED8EDA20] = NetworkOperation.__allocating_init(requestAccessor:networkProxy:)();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(a2);
  return v12;
}

uint64_t NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkResponseOperation.init(requestAccessor:networkProxy:networkActivitySession:)(v0, v1);
}

uint64_t NetworkResponseOperation.init(requestAccessor:networkProxy:networkActivitySession:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_20_14();
  v9 = *(v8 + 240);
  OUTLINED_FUNCTION_20_14();
  v11 = *(v10 + 248);
  v12 = type metadata accessor for NetworkOperation();
  sub_1BF0F86D0(a2, v15);

  *&v3[qword_1ED8EDA20] = NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(a2);
  return v12;
}

void NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:)();
}

void NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_21_11();
  v15 = *(v14 + 240);
  OUTLINED_FUNCTION_21_11();
  v17 = *(v16 + 248);
  type metadata accessor for NetworkOperation();
  OUTLINED_FUNCTION_22_10();
  v18 = OUTLINED_FUNCTION_10_25(v11);
  v19(v18, v2, v8);

  *(v0 + qword_1ED8EDA20) = NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  v20.receiver = v0;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_init);
  OUTLINED_FUNCTION_58_1();

  (*(v11 + 8))(v2, v8);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_0_44();
  NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_getObjectType();
  v9 = *v0;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1BF1794AC();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_66();
  v17 = *((v10 & v9) + 0xF0);
  v18 = *((v10 & v9) + 0xF8);
  type metadata accessor for NetworkOperation();
  OUTLINED_FUNCTION_22_10();
  v19 = OUTLINED_FUNCTION_10_25(v14);
  v20(v19, v4, v11);

  v21 = NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(v8, &v23, v0, v2);
  OUTLINED_FUNCTION_14_21(v21, qword_1ED8EDA20);
  objc_msgSendSuper2(&v22, sel_init);

  (*(v14 + 8))(v4, v11);
  sub_1BF0F840C(v6);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_42();
  NetworkResponseOperation.init(request:networkProxy:)();
}

void NetworkResponseOperation.init(request:networkProxy:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF178C6C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_66();
  v14 = *((v7 & v6) + 0xF0);
  v15 = *((v7 & v6) + 0xF8);
  type metadata accessor for NetworkOperation();
  v16 = OUTLINED_FUNCTION_10_25(v11);
  v17(v16, v4, v8);
  sub_1BF0F86D0(v2, v20);
  *(v0 + qword_1ED8EDA20) = NetworkOperation.__allocating_init(request:networkProxy:)(v0, v20);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_init);
  v18 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v18);
  (*(v11 + 8))(v4, v8);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(request:networkProxy:networkActivitySession:)();
}

void NetworkResponseOperation.init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF178C6C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_21_11();
  v15 = *(v14 + 240);
  OUTLINED_FUNCTION_21_11();
  v17 = *(v16 + 248);
  type metadata accessor for NetworkOperation();
  v18 = OUTLINED_FUNCTION_10_25(v11);
  v19(v18, v4, v8);
  sub_1BF0F86D0(v2, &v22);

  NetworkOperation.__allocating_init(request:networkProxy:networkActivitySession:)();
  *(v0 + qword_1ED8EDA20) = v20;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(v2);
  (*(v11 + 8))(v4, v8);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:)();
}

void NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v28 = sub_1BF1794AC();
  v8 = OUTLINED_FUNCTION_1(v28);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_66();
  v26 = sub_1BF178C6C();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = *((v7 & v6) + 0xF0);
  v22 = *((v7 & v6) + 0xF8);
  type metadata accessor for NetworkOperation();
  (*(v14 + 16))(v20, v27, v26);
  sub_1BF0F86D0(v4, &v31);
  v23 = OUTLINED_FUNCTION_10_25(v10);
  v24(v23, v2, v28);
  NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:)();
  *(v0 + qword_1ED8EDA20) = v25;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_init);
  (*(v10 + 8))(v2, v28);
  sub_1BF0F840C(v4);
  (*(v14 + 8))(v27, v26);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_0_44();
  NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v28 = v1;
  v3 = v2;
  v27 = v4;
  swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v25 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_66();
  v26 = sub_1BF178C6C();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = *((v6 & v5) + 0xF0);
  v21 = *((v6 & v5) + 0xF8);
  type metadata accessor for NetworkOperation();
  (*(v13 + 16))(v19, v27, v26);
  sub_1BF0F86D0(v28, &v30);
  v22 = OUTLINED_FUNCTION_10_25(v8);
  v23(v22, v3, v25);

  NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)();
  OUTLINED_FUNCTION_14_21(v24, qword_1ED8EDA20);
  objc_msgSendSuper2(&v29, sel_init);

  (*(v8 + 8))(v3, v25);
  sub_1BF0F840C(v28);
  (*(v13 + 8))(v27, v26);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = *((v7 & v6) + 0xF0);
  v18 = *((v7 & v6) + 0xF8);
  type metadata accessor for NetworkOperation();
  OUTLINED_FUNCTION_22_10();
  (*(v11 + 16))(v16, v3, v8);

  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)();
  *&v1[qword_1ED8EDA20] = v19;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_init);
  OUTLINED_FUNCTION_58_1();

  (*(v11 + 8))(v3, v8);
  sub_1BF0F840C(v5);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_9_25();
  NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1BF1794AC();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *((v6 & v5) + 0xF0);
  v17 = *((v6 & v5) + 0xF8);
  type metadata accessor for NetworkOperation();
  OUTLINED_FUNCTION_22_10();
  (*(v10 + 16))(v15, v2, v7);

  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  OUTLINED_FUNCTION_14_21(v18, qword_1ED8EDA20);
  objc_msgSendSuper2(&v19, sel_init);

  (*(v10 + 8))(v2, v7);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_9_25();
  NetworkResponseOperation.init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v28 = v1;
  v3 = v2;
  v27 = v4;
  ObjectType = swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v25 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v26 = sub_1BF17923C();
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_66();
  v20 = *((v6 & v5) + 0xF0);
  v21 = *((v6 & v5) + 0xF8);
  type metadata accessor for NetworkOperation();
  v22 = OUTLINED_FUNCTION_10_25(v16);
  v23(v22, v27, v26);
  sub_1BF0F86D0(v28, &v31);
  (*(v8 + 16))(v14, v3, v25);

  NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  *(v0 + qword_1ED8EDA20) = v24;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_init);

  (*(v8 + 8))(v3, v25);
  sub_1BF0F840C(v28);
  (*(v16 + 8))(v27, v26);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t NetworkResponseOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = swift_allocObject();
  v5[2] = *((v4 & v3) + 0xF0);
  v5[3] = *((v4 & v3) + 0xF8);
  v5[4] = v2;
  v5[5] = v0;
  v6 = *(v1 + qword_1ED8EDA20);

  sub_1BF11428C();
}

uint64_t sub_1BF110798(uint64_t a1, void (*a2)(char *))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  type metadata accessor for NetworkResponseOperation();
  sub_1BF1108DC(a1, v8);
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF1108D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1BF110798(a1, *(v1 + 32));
}

uint64_t sub_1BF1108DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = *(v2 + 240);
  v5 = *(v2 + 248);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for NetworkOperationResult();
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v17 - v11);
  v13 = *(v9 + 16);
  v13(&v17 - v11, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = sub_1BF110A68(*v12);

    *a2 = v15;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13(a2, a1, v8);
    return (*(*(v7 - 8) + 8))(v12, v7);
  }
}

void *sub_1BF110A68(void *a1)
{
  v1 = a1;
  v2 = a1;
  sub_1BEFF79E8();
  if (swift_dynamicCast())
  {
    sub_1BF111514();
    v1 = swift_allocError();
    *v3 = v6;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

id NetworkResponseOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkResponseOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation29NetworkResponseOperationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF110BCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF110C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1BF110C88(uint64_t a1)
{
  sub_1BF10EE94();
  if (v2 <= 0x3F)
  {
    sub_1BF1112D0();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BF110D28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF178C6C();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  if (v7)
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  if (v10 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = *(*(v6 - 8) + 64) + 1;
  }

  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v13)
  {
    v17 = ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v16;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_16;
    }

    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v20 >= 2)
    {
LABEL_16:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

LABEL_23:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v22 = v17;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 2:
            v23 = *a1;
            break;
          case 3:
            v23 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v23 = *a1;
            break;
          default:
            v23 = *a1;
            break;
        }
      }

      else
      {
        v23 = 0;
      }

      return v13 + (v23 | v21) + 1;
    }
  }

LABEL_33:
  if (v10 == v13)
  {
    if (v7 < 2)
    {
      return 0;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {

      return __swift_getEnumTagSinglePayload((v25 + v15 + 8) & ~v15, v11, v8);
    }

    else
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1BF110FB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF178C6C();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a4 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v11 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  v18 = *(v13 + 80);
  v19 = ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18) + *(v13 + 64);
  v20 = 8 * v19;
  if (a3 > v16)
  {
    if (v19 <= 3)
    {
      v21 = ((a3 - v16 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v21))
      {
        v9 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 == v16)
        {
          v26 = (a2 + 1);
          v27 = a1;
          v12 = v8;
        }

        else
        {
          v28 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (v15 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v28 = 0;
              *v28 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v28 = a2;
            }

            return;
          }

          v27 = (v28 + v18 + 8) & ~v18;
          v26 = a2;
          v10 = v14;
        }

        __swift_storeEnumTagSinglePayload(v27, v26, v10, v12);
        break;
    }
  }

  else
  {
    v23 = ~v16 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v25 = v23 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v19 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v19] = v24;
        break;
      case 2:
        *&a1[v19] = v24;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v19] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1BF1112D0()
{
  if (!qword_1ED8ECBC8)
  {
    sub_1BEFF9AF8(255, &qword_1ED8ECBD0, 0x1E696AF70);
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECBC8);
    }
  }
}

uint64_t sub_1BF1114B0(uint64_t a1, uint64_t a2)
{
  sub_1BF10EE94();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF111514()
{
  result = qword_1EBDCC2A0;
  if (!qword_1EBDCC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2A0);
  }

  return result;
}

uint64_t DiagnosticZipAttachment.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void *DiagnosticZipAttachment.init(attachment:name:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1BF1115C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1BF111618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t BridgedAssembly.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BridgedAssembly.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BF11171C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_1BF05F358(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_1BF05F448(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = sub_1BF17930C();
      v15 = v14;
      result = sub_1BF014E18(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSONBridge.write(to:)(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = sub_1BF178D3C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  sub_1BF178D0C();

  if (!v2)
  {
    v10 = OUTLINED_FUNCTION_60_0();
    v17 = MEMORY[0x1BFB51150](v10);
    v11 = sub_1BF088784(&v17, &v18);
    v13 = v12;
    sub_1BF17939C();
    sub_1BF014E18(v11, v13);
    OUTLINED_FUNCTION_60_0();
    sub_1BF17939C();
    v14 = OUTLINED_FUNCTION_60_0();
    result = sub_1BF014E18(v14, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static JSONBridge.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  result = sub_1BF05FFE8(v12);
  if (!v3)
  {
    v16 = result;
    v24 = v7;
    v25 = a3;
    v17 = *a1;
    v18 = *(a1 + 8);
    sub_1BF014DC0(*a1, v18);
    v27 = v16;
    sub_1BF11171C(v16, v17, v18, &v26);
    v19 = v26;
    v20 = sub_1BF178CAC();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1BF178C9C();
    OUTLINED_FUNCTION_60_0();
    sub_1BF178C8C();
    sub_1BF014E18(v19, *(&v19 + 1));

    v23 = *(v24 + 32);
    v23(v11, v14, a2);
    v23(v25, v11, a2);
    result = sub_1BF05F1AC(v27, *a1, *(a1 + 8), &v26);
    *a1 = v26;
  }

  return result;
}

uint64_t sub_1BF111C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF111CA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1BF111DE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t StringDeserializer.deserialize(_:)()
{
  v0 = sub_1BF17A12C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BF17A10C();
  result = sub_1BF17A0CC();
  if (!v3)
  {
    sub_1BF1120D4();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1BF1120D4()
{
  result = qword_1EBDCC2A8;
  if (!qword_1EBDCC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2A8);
  }

  return result;
}

uint64_t sub_1BF112140@<X0>(uint64_t *a1@<X8>)
{
  result = StringDeserializer.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_1BF112168@<X0>(uint64_t *a1@<X8>)
{
  result = StringDeserializer.deserialize(_:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t BinaryDecoder.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF112294()
{
  result = qword_1EBDCC2B0;
  if (!qword_1EBDCC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryDecoder.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF112400(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 24))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 32))(a2, a3, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      v18 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v16 = *(v13 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v17 = *(v19 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112828(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 48))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 56))(a2, a3, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      v18 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v16 = *(v13 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v17 = *(v19 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112C50(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 72))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall SceneStateManager.willResignActive(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF112604(v1, countAndFlagsBits, object);
}

Swift::Void __swiftcall SceneStateManager.didEnterBackground(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF112A2C(v1, countAndFlagsBits, object);
}

uint64_t SceneStateManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a1)
      {

        swift_beginAccess();
        sub_1BF0BDF3C(i);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t SceneStateManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SceneStateManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF113214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1BF113254(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1BF1132A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = v3;
  v24 = a2;
  v25 = a1;
  v26 = a3;
  v7 = sub_1BF1794AC();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_38();
  v13 = MEMORY[0x1E6969530];
  v14 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  OUTLINED_FUNCTION_7_27();
  sub_1BF11BC40(v6, v20, &qword_1ED8EF860, v13, v14, v21);
  result = __swift_getEnumTagSinglePayload(v20, 1, v7);
  if (result == 1)
  {
    v23 = v26;
    *v26 = 0u;
    v23[1] = 0u;
  }

  else
  {
    (*(v10 + 32))(v5, v20, v7);
    v25(v5);
    result = (*(v10 + 8))(v5, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t NetworkOperation.__allocating_init(request:networkProxy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_1();
  v5 = sub_1BF178C6C();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v2, v5);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v5);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v14, v15, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1BF11C150;
  *(v16 + 24) = v13;
  sub_1BF0F86D0(a2, v19);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:)();
  v17 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v17);
  (*(v8 + 8))(v2, v5);
  return v3;
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v2 = objc_allocWithZone(v1);
  v3 = OUTLINED_FUNCTION_42();
  return NetworkOperation.init(requestAccessor:networkProxy:)(v3, v0);
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkOperation.init(requestAccessor:networkProxy:networkActivitySession:)(v0, v1, v2);
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:)(v0, v1, v2);
}

void NetworkOperation.__allocating_init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14_1();
  v1 = sub_1BF178C6C();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v1);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v1);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v10, v11, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BF114C04;
  *(v12 + 24) = v9;
  OUTLINED_FUNCTION_33_7();
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)();
  v13 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v13);
  (*(v4 + 8))(v0, v1);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v26 = v2;
  v27 = v0;
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_38();
  v14 = sub_1BF178C6C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v7, v14);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v22 = swift_allocObject();
  (*(v17 + 32))(v22 + v21, v20, v14);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v23, v24, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1BF11C150;
  *(v25 + 24) = v22;
  sub_1BF0F86D0(v6, &v28);
  (*(v11 + 16))(v1, v4, v8);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  (*(v11 + 8))(v4, v8);
  sub_1BF0F840C(v6);
  (*(v17 + 8))(v26, v14);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v31 = v1;
  v32 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v30 = v6;
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_1BF178C6C();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v7, v17);
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v25 = swift_allocObject();
  (*(v20 + 32))(v25 + v24, v23, v17);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v26, v27, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1BF11C150;
  *(v28 + 24) = v25;
  OUTLINED_FUNCTION_33_7();
  (*(v11 + 16))(v16, v3, v8);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(v28, &v33, v16, v31);
  (*(v11 + 8))(v3, v8);
  sub_1BF0F840C(v5);
  (*(v20 + 8))(v30, v17);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BF1794AC();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_14_0();
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v7;
  v19[4] = v5;
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v20, v21, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1BF11C14C;
  *(v22 + 24) = v19;
  sub_1BF0F86D0(v3, &v23);
  (*(v13 + 16))(v18, v1, v10);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  (*(v13 + 8))(v1, v10);
  sub_1BF0F840C(v3);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BF1794AC();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_14_0();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v8;
  v17[4] = v6;
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v18, v19, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BF11520C;
  *(v20 + 24) = v17;
  sub_1BF0F86D0(v4, &v21);
  (*(v14 + 16))(v0, v2, v11);

  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();

  (*(v14 + 8))(v2, v11);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v37 = v1;
  v38 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v36 = v7;
  v34 = v8;
  v9 = sub_1BF1794AC();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_1BF17923C();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 16);
  v26 = OUTLINED_FUNCTION_31_1();
  v27(v26);
  v28 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v29 = swift_allocObject();
  (*(v21 + 32))(v29 + v28, v24, v18);
  OUTLINED_FUNCTION_2_52();
  sub_1BF115500(0, v30, v31, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1BF1154D4;
  *(v32 + 24) = v29;
  OUTLINED_FUNCTION_33_7();
  (*(v12 + 16))(v17, v3, v9);
  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  (*(v12 + 8))(v3, v9);
  sub_1BF0F840C(v5);
  (*(v21 + 8))(v34, v18);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF11428C()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = v1;

  sub_1BF115CDC(sub_1BF11C0BC, v3);
}

BOOL static NetworkOperationError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      return (v8 & 1) != 0;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t NetworkOperation.requestProcessors.getter()
{
  v1 = qword_1ED8EE298;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t NetworkOperation.requestProcessors.setter(uint64_t a1)
{
  v3 = qword_1ED8EE298;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BF11446C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BF0004B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BF009984(v4);
}

uint64_t sub_1BF11450C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BF11B938;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1ED8EE2D0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1BF009984(v3);
  return sub_1BF0F8B9C(v8);
}

uint64_t NetworkOperation.eventHandler.getter()
{
  v1 = (v0 + qword_1ED8EE2D0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_31_1();
  sub_1BF009984(v4);
  return OUTLINED_FUNCTION_31_1();
}

uint64_t NetworkOperation.eventHandler.setter()
{
  OUTLINED_FUNCTION_76();
  v3 = (v1 + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_1BF0F8B9C(v4);
}

id NetworkOperation.init(requestAccessor:networkProxy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42();
  ObjectType = swift_getObjectType();
  v5 = sub_1BF1794AC();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  *&v2[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v2[qword_1ED8EE2B8] = v2;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v8 + 32))(&v2[qword_1ED8EE2A8], v13, v5);
  *&v2[qword_1ED8ED240] = 0;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  sub_1BF0F840C(a2);
  return v14;
}

id NetworkOperation.init(requestAccessor:networkProxy:networkActivitySession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42();
  ObjectType = swift_getObjectType();
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_38();
  *&v3[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v3[qword_1ED8EE2B8] = v3;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v11 + 32))(&v3[qword_1ED8EE2A8], v4, v8);
  *&v3[qword_1ED8ED240] = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  sub_1BF0F840C(a2);
  return v14;
}

id NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v4[qword_1ED8EE2B8] = a1;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);
  v9 = qword_1ED8EE2A8;
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a3, v10);
  *&v4[qword_1ED8ED240] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a3, v10);
  sub_1BF0F840C(a2);
  return v12;
}

id NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v5[qword_1ED8EE2B8] = a1;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);
  v11 = qword_1ED8EE2A8;
  v12 = sub_1BF1794AC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a3, v12);
  *&v5[qword_1ED8ED240] = a4;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a3, v12);
  sub_1BF0F840C(a2);
  return v14;
}

uint64_t sub_1BF114C30(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  OUTLINED_FUNCTION_68(v4);
  return sub_1BF115468(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), a2);
}

void sub_1BF114CA8()
{
  OUTLINED_FUNCTION_32();
  v84 = v1;
  v81 = v2;
  v82 = v3;
  v5 = v4;
  v6 = sub_1BF178C6C();
  v7 = OUTLINED_FUNCTION_1(v6);
  v78 = v8;
  v79 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v83 = v12 - v11;
  OUTLINED_FUNCTION_2_52();
  v13 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, v14, v15, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  OUTLINED_FUNCTION_8_28();
  sub_1BF115500(0, v22, v23, v13);
  OUTLINED_FUNCTION_68(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v30 = sub_1BF178F0C();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_38();
  v36 = sub_1BF17923C();
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v37);
  v80 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v75 - v46;
  v48 = *(v5 + 16);
  v49 = *(v5 + 24);
  v48(v45);
  sub_1BF178E7C();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    OUTLINED_FUNCTION_8_28();
    sub_1BF11C0F8();
    v50 = OUTLINED_FUNCTION_17_13();
    v51(v50, v47, v36);
    OUTLINED_FUNCTION_22_11();
    goto LABEL_5;
  }

  (*(v33 + 32))(v0, v29, v30);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF178E6C();
  sub_1BF178E8C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v36) == 1)
  {
    OUTLINED_FUNCTION_2_52();
    sub_1BF11C0F8();
    v52 = OUTLINED_FUNCTION_17_13();
    v53(v52, v47, v36);
    OUTLINED_FUNCTION_22_11();
    (*(v33 + 8))(v0, v30);
LABEL_5:
    (*(v39 + 8))(v47, v36);
LABEL_17:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v75 = v0;
  v76 = v30;
  v81 = v33;
  v54 = v80;
  (*(v39 + 32))(v80, v21, v36);
  v55 = OUTLINED_FUNCTION_17_13();
  v77 = v36;
  v56(v55, v54, v36);
  sub_1BF178C2C();
  v57 = v84 + 64;
  v58 = 1 << *(v84 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v84 + 64);
  v61 = (v58 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v62 = 0;
  while (1)
  {
    v63 = v81;
    if (!v60)
    {
      break;
    }

    v64 = v62;
LABEL_15:
    v65 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v66 = (v64 << 10) | (16 * v65);
    v67 = (*(v84 + 48) + v66);
    v68 = *v67;
    v69 = v67[1];
    v70 = (*(v84 + 56) + v66);
    v71 = *v70;
    v72 = v70[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF178C4C();
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v61)
    {

      v73 = *(v39 + 8);
      v74 = v77;
      v73(v80, v77);
      (*(v63 + 8))(v75, v76);
      v73(v47, v74);
      (*(v78 + 32))(v82, v83, v79);
      goto LABEL_17;
    }

    v60 = *(v57 + 8 * v64);
    ++v62;
    if (v60)
    {
      v62 = v64;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1BF11520C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BF114CA8();
}

void NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v30[2] = v1;
  v31 = v0;
  v3 = v2;
  v5 = v4;
  v30[0] = v6;
  v30[1] = v7;
  v8 = v6;
  v9 = sub_1BF1794AC();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_1BF17923C();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v8, v18);
  v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v26 = swift_allocObject();
  (*(v21 + 32))(v26 + v25, v24, v18);
  OUTLINED_FUNCTION_2_52();
  sub_1BF115500(0, v27, v28, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BF11C154;
  *(v29 + 24) = v26;
  OUTLINED_FUNCTION_33_7();
  (*(v12 + 16))(v17, v3, v9);
  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)();
  (*(v12 + 8))(v3, v9);
  sub_1BF0F840C(v5);
  (*(v21 + 8))(v30[0], v18);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF115468(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(*(a2(0) - 8) + 16);
  v3 = OUTLINED_FUNCTION_31_1();

  return v4(v3);
}

void sub_1BF115500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t NetworkOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5298);
  v5 = v1;
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1BF01A7AC(*(v5 + qword_1ED8EF088), *(v5 + qword_1ED8EF088 + 8), &v14);
    _os_log_impl(&dword_1BEFE0000, v6, v7, "Network operation %{public}s started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v10 = swift_allocObject();
  v10[2] = *(v3 + 240);
  v10[3] = *(v3 + 248);
  v10[4] = v2;
  v10[5] = v0;
  OUTLINED_FUNCTION_14_0();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = sub_1BF1158AC;
  v11[4] = v10;
  v12 = v5;

  sub_1BF115CDC(sub_1BF115B04, v11);
}

uint64_t sub_1BF115780(uint64_t a1, void (*a2)(void *))
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v10 - v7);
  type metadata accessor for NetworkOperation();
  sub_1BF1158B8(a1, v8);
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF1158AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1BF115780(a1, *(v1 + 32));
}

uint64_t sub_1BF1158B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 240);
  v5 = *(v2 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for NetworkOperationResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for Result();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v21 - v15);
  (*(v17 + 16))(&v21 - v15, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    v19 = sub_1BF11B060(*v16);

    *a2 = v19;
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    (*(*(AssociatedTypeWitness - 8) + 16))(a2, &v12[*(v8 + 32)], AssociatedTypeWitness);
    (*(v9 + 8))(v12, v8);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF115B40(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for NetworkOperationResult();
  v6 = type metadata accessor for Result();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - v8);
  (*(v10 + 16))(&v14 - v8, a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v12 = sub_1BF11AC48(v11);
  }

  else
  {
    (*(*(v5 - 8) + 8))(v9, v5);
    return 0;
  }

  return v12;
}

uint64_t sub_1BF115CDC(uint64_t a1, uint64_t a2)
{
  sub_1BF11610C();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  sub_1BF0F86D0(v2 + qword_1ED8EE2C0, v15);
  switch(v16)
  {
    case 1:
      v12 = *&v15[0];
      v13 = v2;

      sub_1BF116B40(v12, sub_1BF11B960, v5);
      goto LABEL_9;
    case 2:
      v7 = *&v15[0];
      v8 = v2;

      sub_1BF11740C(v7, sub_1BF11B960, v5);
LABEL_9:

    case 3:
      v9 = qword_1ED8EDD40;
      v10 = v2;

      if (v9 != -1)
      {
        swift_once();
      }

      sub_1BEFE6A78(qword_1ED8EDD50, v14);
      goto LABEL_7;
    default:
      sub_1BEFE87B0(v15, v14);
      v6 = v2;

LABEL_7:
      sub_1BF116430(v14, sub_1BF11B960, v5);

      return __swift_destroy_boxed_opaque_existential_1(v14);
  }
}

uint64_t sub_1BF115EC0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BF115B40(a1);
  if (v12)
  {
    return a3(a1);
  }

  v14 = v11;
  sub_1BF11610C();
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1ED8F5298);
  v16 = a2;
  v17 = sub_1BF1797DC();
  v18 = sub_1BF17ACDC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BF01A7AC(*&v16[qword_1ED8EF088], *&v16[qword_1ED8EF088 + 8], &v24);
    *(v19 + 12) = 2050;
    *(v19 + 14) = v14;
    _os_log_impl(&dword_1BEFE0000, v17, v18, "Network operation %{public}s will retry with longer timeout after delay: %{public}f", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = a3;
  v21[4] = a4;
  v22 = qword_1ED8EF148;
  v23 = v16;

  if (v22 != -1)
  {
    swift_once();
  }

  TaskScheduler.scheduleAfter(_:_:)(a6, v21);
}

uint64_t sub_1BF11610C()
{
  OUTLINED_FUNCTION_76();
  sub_1BF115500(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_59();
  result = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v0 + qword_1ED8ED240);
  if (v8)
  {
    v9 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    OUTLINED_FUNCTION_14_0();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;

    sub_1BF089AC0();
  }

  return result;
}

uint64_t sub_1BF116210(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xF8);
  v7 = *((*MEMORY[0x1E69E7D40] & v5) + 0xF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v8 = type metadata accessor for Result();
  v9 = Result.removingValue()(v8);
  v11 = v10;
  sub_1BF1162F4(v9, v10 & 1);
  sub_1BF104FC0(v9, v11 & 1);
  return a3(a1);
}

uint64_t sub_1BF1162F4(void *a1, char a2)
{
  sub_1BF115500(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v14 - v8;
  v10 = *(v2 + qword_1ED8ED240);
  if (v10)
  {
    v11 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a1;
    v13 = a2 & 1;
    *(v12 + 48) = v13;

    sub_1BF104FB4(a1, v13);
    sub_1BF089AC0();
  }

  return result;
}

uint64_t sub_1BF116430(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = sub_1BF17923C();
  v67 = *(v70 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF115500(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v64 - v12;
  v13 = sub_1BF178C6C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - v19;
  v71 = swift_allocBox();
  v21 = *&v3[qword_1ED8EE2B8];
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v75 = v24;
  v22();
  v25 = qword_1ED8EE298;
  swift_beginAccess();
  v26 = *&v4[v25];
  v27 = *(v26 + 16);
  v73 = a1;
  v74 = v4;
  v72 = v14;
  if (v27)
  {
    v68 = a2;
    v65 = a3;
    v28 = v26 + 32;
    v77 = (v14 + 16);
    v78 = v20;
    v76 = (v14 + 8);
    v29 = (v14 + 40);
    v64 = v26;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v30 = v75;
    v31 = v78;
    do
    {
      sub_1BEFE6A78(v28, v79);
      v32 = v80;
      v33 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      (*v77)(v18, v30, v13);
      (*(v33 + 8))(v18, v32, v33);
      (*v76)(v18, v13);
      (*v29)(v30, v31, v13);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v28 += 40;
      --v27;
    }

    while (v27);

    a3 = v65;
    a1 = v73;
    v4 = v74;
    a2 = v68;
    v14 = v72;
    v20 = v78;
  }

  v34 = v69;
  v35 = v75;
  sub_1BF178C3C();
  v36 = v34;
  v37 = v34;
  v38 = v70;
  if (__swift_getEnumTagSinglePayload(v37, 1, v70))
  {
    sub_1BF11C0F8();
  }

  else
  {
    v39 = v67;
    v40 = v36;
    v41 = v66;
    (*(v67 + 16))(v66, v40, v38);
    sub_1BF11C0F8();
    v78 = sub_1BF17913C();
    v42 = v38;
    v44 = v43;
    (*(v39 + 8))(v41, v42);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v45 = sub_1BF1797FC();
    __swift_project_value_buffer(v45, qword_1ED8F5298);
    v46 = v4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v47 = sub_1BF1797DC();
    v48 = sub_1BF17ACDC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68 = a2;
      v51 = v50;
      v79[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_1BF01A7AC(*&v46[qword_1ED8EF088], *&v46[qword_1ED8EF088 + 8], v79);
      *(v49 + 12) = 2082;
      v52 = sub_1BF01A7AC(v78, v44, v79);

      *(v49 + 14) = v52;
      _os_log_impl(&dword_1BEFE0000, v47, v48, "Network operation %{public}s will issue request to URL: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      v53 = v51;
      a2 = v68;
      MEMORY[0x1BFB547B0](v53, -1, -1);
      v54 = v49;
      v35 = v75;
      MEMORY[0x1BFB547B0](v54, -1, -1);
    }

    else
    {
    }

    v14 = v72;
    a1 = v73;
  }

  sub_1BF178BFC();
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  (*(v14 + 16))(v20, v35, v13);
  v57 = swift_allocObject();
  v58 = v74;
  v57[2] = v74;
  v57[3] = a2;
  v78 = v13;
  v59 = v20;
  v60 = v71;
  v57[4] = a3;
  v57[5] = v60;
  v61 = *(v56 + 8);
  v62 = v58;

  v61(v79, v59, sub_1BF11B96C, v57, v55, v56);

  (*(v14 + 8))(v59, v78);
  sub_1BF11B9EC();
}

uint64_t sub_1BF116B40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v72 = a2;
  v77 = a1;
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = sub_1BF17923C();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF115500(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = v65 - v11;
  v12 = sub_1BF178C6C();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v65 - v17;
  v76 = swift_allocBox();
  v20 = v19;
  v21 = *&v3[qword_1ED8EE2B8];
  v22 = *(v21 + 24);
  (*(v21 + 16))();
  v23 = qword_1ED8EE298;
  swift_beginAccess();
  v24 = *&v4[v23];
  v25 = *(v24 + 16);
  v75 = v4;
  v70 = v5;
  v80 = v18;
  v81 = v20;
  if (v25)
  {
    v66 = v6;
    v26 = v24 + 32;
    v78 = (v74 + 8);
    v79 = (v74 + 16);
    v27 = v12;
    v28 = (v74 + 40);
    v65[1] = v24;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v29 = v80;
    do
    {
      sub_1BEFE6A78(v26, v82);
      v31 = v83;
      v30 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v32 = v81;
      (*v79)(v16, v81, v27);
      (*(v30 + 8))(v16, v31, v30);
      (*v78)(v16, v27);
      (*v28)(v32, v29, v27);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v26 += 40;
      --v25;
    }

    while (v25);

    v4 = v75;
    v12 = v27;
    v5 = v70;
    v6 = v66;
  }

  v33 = v69;
  sub_1BF178C3C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v6);
  v71 = v12;
  if (EnumTagSinglePayload)
  {
    sub_1BF11C0F8();
  }

  else
  {
    v35 = v68;
    v36 = v67;
    (*(v68 + 16))(v67, v33, v6);
    sub_1BF11C0F8();
    v79 = sub_1BF17913C();
    v38 = v37;
    (*(v35 + 8))(v36, v6);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v39 = sub_1BF1797FC();
    __swift_project_value_buffer(v39, qword_1ED8F5298);
    v40 = v4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v41 = sub_1BF1797DC();
    v42 = sub_1BF17ACDC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v82[0] = v44;
      *v43 = 136446466;
      *(v43 + 4) = sub_1BF01A7AC(*&v40[qword_1ED8EF088], *&v40[qword_1ED8EF088 + 8], v82);
      *(v43 + 12) = 2082;
      v45 = sub_1BF01A7AC(v79, v38, v82);

      *(v43 + 14) = v45;
      _os_log_impl(&dword_1BEFE0000, v41, v42, "Network operation %{public}s will issue background request to URL: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v44, -1, -1);
      MEMORY[0x1BFB547B0](v43, -1, -1);
    }

    else
    {
    }

    v5 = v70;
  }

  sub_1BF178BFC();
  v46 = *&v4[qword_1ED8EF088];
  v47 = *&v4[qword_1ED8EF088 + 8];
  v48 = v77[7];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v79 = *(v5 + 240);
  v50[2] = v79;
  v51 = *(v5 + 248);
  v50[3] = v51;
  v50[4] = v49;
  v50[5] = v46;
  v50[6] = v47;
  v52 = v72;
  v53 = v73;
  v50[7] = v72;
  v50[8] = v53;
  v50[9] = v76;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF07D9CC();

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v79;
  v55[3] = v51;
  v55[4] = v54;
  v55[5] = v46;
  v55[6] = v47;
  v55[7] = v52;
  v55[8] = v53;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v56 = v46;
  sub_1BF07DC4C();

  v57 = v77[5];
  v58 = v77[6];
  __swift_project_boxed_opaque_existential_1(v77 + 2, v57);
  v59 = v81;
  swift_beginAccess();
  v60 = v74;
  v61 = v80;
  v62 = v59;
  v63 = v71;
  (*(v74 + 16))(v80, v62, v71);
  (*(v58 + 16))(v82, v61, v56, v47, &v75[qword_1ED8EE2A8], v57, v58);
  (*(v60 + 8))(v61, v63);
  sub_1BF11B9EC();
}

uint64_t sub_1BF11740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v5 = sub_1BF179B5C();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF179BBC();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF179BEC();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  sub_1BF151DB0();
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v30 = sub_1BF17AD5C();
  sub_1BF179BDC();
  sub_1BF179C6C();
  v31 = *(v14 + 8);
  v31(v18, v13);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  v21[2] = v28;
  v21[3] = a1;
  v21[4] = v22;
  v21[5] = a3;
  aBlock[4] = sub_1BF11BD88;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);
  v25 = v23;

  sub_1BF179B8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF11C074(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF115500(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  v26 = v30;
  MEMORY[0x1BFB52B00](v20, v12, v8, v24);
  _Block_release(v24);

  (*(v35 + 8))(v8, v5);
  (*(v33 + 8))(v12, v34);
  return (v31)(v20, v32);
}

uint64_t sub_1BF117804(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v92 = a8;
  v93 = a7;
  v89 = a2;
  v13 = *a6;
  v14 = *MEMORY[0x1E69E7D40];
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v83 - v17;
  v19 = *((v14 & v13) + 0xF8);
  v20 = *((v14 & v13) + 0xF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v21 = type metadata accessor for Result();
  v90 = *(v21 - 8);
  v91 = v21;
  v22 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v83 - v23);
  v25 = sub_1BF178C6C();
  v26 = swift_projectBox();
  sub_1BF1181F8(a3, a4, a5);
  if (a5)
  {
    v27 = a5;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v28 = sub_1BF1797FC();
    __swift_project_value_buffer(v28, qword_1ED8F5298);
    v29 = a5;
    v30 = a6;
    v31 = sub_1BF1797DC();
    v32 = sub_1BF17ACBC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v94[0] = v35;
      *v33 = 136446466;
      *(v33 + 4) = sub_1BF01A7AC(*(v30 + qword_1ED8EF088), *(v30 + qword_1ED8EF088 + 8), v94);
      *(v33 + 12) = 2114;
      v36 = a5;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_1BEFE0000, v31, v32, "Network operation %{public}s failed with error: %{public}@", v33, 0x16u);
      sub_1BF11B9EC();
      MEMORY[0x1BFB547B0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB547B0](v35, -1, -1);
      MEMORY[0x1BFB547B0](v33, -1, -1);
    }

    *v24 = a5;
    v38 = v91;
    swift_storeEnumTagMultiPayload();
    v39 = a5;
    v93(v24);

    return (*(v90 + 8))(v24, v38);
  }

  v87 = v18;
  v88 = a1;
  v86 = v26;
  v41 = a3;
  if (!a3)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = v42;
  v44 = v41;
  if (sub_1BF081C58())
  {

LABEL_12:
    v45 = v89;
    if (v89 >> 60 == 15)
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v46 = sub_1BF1797FC();
      __swift_project_value_buffer(v46, qword_1ED8F5298);
      v47 = a6;
      v48 = sub_1BF1797DC();
      v49 = sub_1BF17ACBC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v94[0] = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_1BF01A7AC(*(v47 + qword_1ED8EF088), *(v47 + qword_1ED8EF088 + 8), v94);
        _os_log_impl(&dword_1BEFE0000, v48, v49, "Network operation %{public}s failed with unknown error", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1BFB547B0](v51, -1, -1);
        MEMORY[0x1BFB547B0](v50, -1, -1);
      }

      v38 = v91;
      sub_1BF11B998();
      v52 = swift_allocError();
      *v53 = 0;
      *(v53 + 8) = 1;
      *v24 = v52;
      swift_storeEnumTagMultiPayload();
      v93(v24);
    }

    else
    {
      v54 = v88;
      sub_1BF00F5E0(v88, v89);
      v55 = v41;
      sub_1BF00F5E0(v54, v45);
      v56 = a4;
      v85 = sub_1BF1184F4(v54, v45, v41, a4);
      v58 = v57;
      sub_1BF014E18(v54, v45);

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v59 = sub_1BF1797FC();
      __swift_project_value_buffer(v59, qword_1ED8F5298);
      v60 = a6;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v61 = sub_1BF1797DC();
      v62 = sub_1BF17ACDC();

      v63 = os_log_type_enabled(v61, v62);
      v64 = v87;
      if (v63)
      {
        v65 = swift_slowAlloc();
        v84 = v61;
        v66 = v65;
        v67 = swift_slowAlloc();
        v94[0] = v67;
        *v66 = 136446466;
        *(v66 + 4) = sub_1BF01A7AC(*(v60 + qword_1ED8EF088), *(v60 + qword_1ED8EF088 + 8), v94);
        *(v66 + 12) = 2082;
        v68 = sub_1BF01A7AC(v85, v58, v94);

        *(v66 + 14) = v68;
        v69 = v84;
        _os_log_impl(&dword_1BEFE0000, v84, v62, "Network operation %{public}s received response (%{public}s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v67, -1, -1);
        MEMORY[0x1BFB547B0](v66, -1, -1);
      }

      else
      {
      }

      v70 = v86;
      v71 = v88;
      swift_beginAccess();
      (*(*(v25 - 8) + 16))(v64, v70, v25);
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v25);
      v72 = v89;
      sub_1BF118DE4(v41, v64, v71, v89, v24);
      sub_1BF11C0F8();
      v93(v24);
      sub_1BF00F5F4(v71, v72);
      v38 = v91;
    }

    return (*(v90 + 8))(v24, v38);
  }

  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v73 = sub_1BF1797FC();
  __swift_project_value_buffer(v73, qword_1ED8F5298);
  v74 = a6;
  v75 = v44;
  v76 = sub_1BF1797DC();
  v77 = sub_1BF17ACBC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v94[0] = v79;
    *v78 = 136446466;
    *(v78 + 4) = sub_1BF01A7AC(*(v74 + qword_1ED8EF088), *(v74 + qword_1ED8EF088 + 8), v94);
    *(v78 + 12) = 2050;
    *(v78 + 14) = [v43 statusCode];

    _os_log_impl(&dword_1BEFE0000, v76, v77, "Network operation %{public}s failed with HTTP status code: %{public}ld", v78, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1BFB547B0](v79, -1, -1);
    MEMORY[0x1BFB547B0](v78, -1, -1);
  }

  else
  {
  }

  sub_1BF081F08();
  v80 = swift_allocError();
  *v81 = v43;
  *v24 = v80;
  v38 = v91;
  swift_storeEnumTagMultiPayload();
  v82 = v75;
  v93(v24);

  return (*(v90 + 8))(v24, v38);
}

void sub_1BF1181F8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = v3 + qword_1ED8EE2D0;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      v31 = a3;
      v32 = 0;
      v33 = 2;
      v9 = a3;
      sub_1BF009984(v7);
      v7(&v31);
      sub_1BF0F8B9C(v7);
LABEL_4:
      sub_1BF11BCB4(v31, v32, v33);
    }
  }

  else if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v29 = a1;
      if (sub_1BF081C58())
      {
        if (a2)
        {
          v14 = [a2 transactionMetrics];
          sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
          v15 = sub_1BF17A4DC();
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }

        v30 = sub_1BEFE90AC(v15);
        v20 = v4 + qword_1ED8EE2D0;
        swift_beginAccess();
        for (i = 0; ; ++i)
        {
          if (v30 == i)
          {
            goto LABEL_26;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFB53020](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v22 = *(v15 + 8 * i + 32);
          }

          v23 = v22;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if ([v22 resourceFetchType] == 3)
          {

LABEL_26:

            return;
          }

          v24 = *v20;
          if (*v20)
          {
            v25 = *(v20 + 8);
            v31 = v13;
            v32 = v23;
            v33 = 0;
            v26 = v29;
            sub_1BF009984(v24);
            v27 = v13;
            v28 = v23;
            v24(&v31);
            sub_1BF0F8B9C(v24);

            v13 = v27;
            sub_1BF11BCB4(v31, v32, v33);
          }

          else
          {
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
      }

      else
      {
        v16 = v4 + qword_1ED8EE2D0;
        swift_beginAccess();
        v17 = *v16;
        if (*v16)
        {
          v18 = *(v16 + 8);
          v31 = v13;
          v32 = 0;
          v33 = 1;
          v19 = v29;
          sub_1BF009984(v17);
          v17(&v31);
          sub_1BF0F8B9C(v17);

          goto LABEL_4;
        }
      }
    }
  }
}

uint64_t sub_1BF1184F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v76 = a3;
  v77 = a1;
  v78 = a2;
  v5 = sub_1BF178DEC();
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], v8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v73 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v73 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v73 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v73 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v73 - v32;
  v80 = v5;
  v81 = v31;
  v82 = v28;
  if (a4)
  {
    v34 = [a4 transactionMetrics];
    sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
    v35 = sub_1BF17A4DC();

    if (sub_1BEFE90AC(v35))
    {
      sub_1BF0F428C(0, (v35 & 0xC000000000000001) == 0, v35);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB53020](0, v35);
      }

      else
      {
        v36 = *(v35 + 32);
      }

      v37 = v36;

      v38 = v82;
      if (v37)
      {
        v39 = [v37 fetchStartDate];
        if (v39)
        {
          v40 = v39;
          sub_1BF17945C();

          v41 = sub_1BF1794AC();
          v42 = 0;
        }

        else
        {
          v41 = sub_1BF1794AC();
          v42 = 1;
        }

        v47 = 1;
        __swift_storeEnumTagSinglePayload(v25, v42, 1, v41);
        sub_1BF11BB00(v25, v33);
        v73 = v37;
        v48 = [v37 responseStartDate];
        if (v48)
        {
          v49 = v48;
          sub_1BF17945C();

          v47 = 0;
        }

        v50 = sub_1BF1794AC();
        v51 = 1;
        __swift_storeEnumTagSinglePayload(v22, v47, 1, v50);
        sub_1BF11BB00(v22, v31);
        v52 = [v73 requestStartDate];
        if (v52)
        {
          v53 = v52;
          sub_1BF17945C();

          v51 = 0;
        }

        v5 = v80;
        __swift_storeEnumTagSinglePayload(v19, v51, 1, v50);
        sub_1BF11BB00(v19, v82);
        v45 = v73;
        goto LABEL_17;
      }
    }

    else
    {

      v38 = v82;
    }

    v46 = sub_1BF1794AC();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v46);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v46);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v46);
    v45 = 0;
    v5 = v80;
LABEL_17:
    v54 = [a4 taskInterval];
    sub_1BF178D9C();

    v44 = 0;
    goto LABEL_18;
  }

  v43 = sub_1BF1794AC();
  v44 = 1;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v43);
  v45 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v14, v44, 1, v5);
  sub_1BF115500(0, &unk_1ED8EDD10, sub_1BF083DE0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17EBE0;
  *(inited + 32) = 0x6F43737574617473;
  *(inited + 40) = 0xEA00000000006564;
  if (v76 && (objc_opt_self(), (v56 = swift_dynamicCastObjCClass()) != 0))
  {
    v57 = [v56 statusCode];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v57;
  }

  else
  {
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1702521203;
  *(inited + 88) = 0xE400000000000000;
  v58 = objc_opt_self();
  v59 = [v58 stringFromByteCount:MEMORY[0x1BFB51150](v77 countStyle:{v78), 2}];
  v60 = sub_1BF17A0AC();
  v62 = v61;

  v63 = MEMORY[0x1E69E6158];
  *(inited + 96) = v60;
  *(inited + 104) = v62;
  *(inited + 120) = v63;
  *(inited + 128) = 0x646575657571;
  *(inited + 136) = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v64);
  *(&v73 - 2) = v14;
  v65 = sub_1BF1132A8(sub_1BF11BA38, (&v73 - 4), (inited + 144));
  *(inited + 176) = 1650881652;
  *(inited + 184) = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v65);
  *(&v73 - 2) = v82;
  sub_1BF1132A8(sub_1BF11BA9C, (&v73 - 4), (inited + 192));
  *(inited + 224) = 0x6C61746F74;
  *(inited + 232) = 0xE500000000000000;
  v66 = v79;
  sub_1BF11BC40(v14, v79, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1BF115500);
  v67 = v80;
  if (__swift_getEnumTagSinglePayload(v66, 1, v80) == 1)
  {
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    v69 = v74;
    v68 = v75;
    (*(v75 + 32))(v74, v66, v67);
    sub_1BF081954((inited + 240));
    (*(v68 + 8))(v69, v67);
  }

  sub_1BF11B53C(inited);
  v71 = v70;

  swift_setDeallocating();
  sub_1BF0C832C();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  return v71;
}

void sub_1BF118DE4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v24[2] = *MEMORY[0x1E69E7D40] & *v5;
  v10 = sub_1BF17A12C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24[1] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF1797FC();
  __swift_project_value_buffer(v13, qword_1ED8F5298);
  v14 = v5;
  sub_1BF014DC0(a3, a4);
  v15 = sub_1BF1797DC();
  v16 = sub_1BF17ACDC();

  if (os_log_type_enabled(v15, v16))
  {
    v24[0] = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1BF01A7AC(*(v14 + qword_1ED8EF088), *(v14 + qword_1ED8EF088 + 8), &v26);
    *(v17 + 12) = 2048;
    v19 = 0;
    switch(a4 >> 62)
    {
      case 1uLL:
        LODWORD(v19) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v19 = v19;
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_13;
      case 2uLL:
        v21 = *(a3 + 16);
        v20 = *(a3 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (!v22)
        {
          goto LABEL_10;
        }

LABEL_13:
        __break(1u);
        return;
      case 3uLL:
        goto LABEL_10;
      default:
        v19 = BYTE6(a4);
LABEL_10:
        *(v17 + 14) = v19;
        sub_1BF014E18(a3, a4);
        _os_log_impl(&dword_1BEFE0000, v15, v16, "Network operation %{public}s attempting to parse response with %ld bytes", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1BFB547B0](v18, -1, -1);
        MEMORY[0x1BFB547B0](v17, -1, -1);

        a5 = v24[0];
        goto LABEL_11;
    }
  }

  sub_1BF014E18(a3, a4);

LABEL_11:
  v23 = MEMORY[0x1BFB53D00]();
  sub_1BF11A444(a3, a4, v14, v25, a1, &v26, a5);
  objc_autoreleasePoolPop(v23);
}

uint64_t sub_1BF119338(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v36 = a8;
  v37 = a7;
  v34 = a2;
  v35 = a6;
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v15 = type metadata accessor for Result();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v34 - v18);
  v20 = sub_1BF178C6C();
  v21 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (a3)
    {
      *v19 = a1;
      swift_storeEnumTagMultiPayload();
      v24 = a1;
    }

    else
    {
      swift_beginAccess();
      (*(*(v20 - 8) + 16))(v14, v21, v20);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
      sub_1BF118DE4(0, v14, a1, v34, v19);
      sub_1BF11C0F8();
    }

    v37(v19);
  }

  else
  {
    v25 = v35;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1BF1797FC();
    __swift_project_value_buffer(v26, qword_1ED8F5298);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v27 = sub_1BF1797DC();
    v28 = sub_1BF17ACDC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1BF01A7AC(a5, v25, &v38);
      _os_log_impl(&dword_1BEFE0000, v27, v28, "Network operation %{public}s was abandoned", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFB547B0](v30, -1, -1);
      MEMORY[0x1BFB547B0](v29, -1, -1);
    }

    sub_1BF11B998();
    v31 = swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 1;
    *v19 = v31;
    swift_storeEnumTagMultiPayload();
    v37(v19);
  }

  return (*(v16 + 8))(v19, v15);
}

void sub_1BF119760(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v29[1] = a8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v14 = type metadata accessor for Result();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v29 - v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_1BF1181F8(a1, a2, a3);
  }

  else
  {
    v29[0] = a5;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v21 = sub_1BF1797FC();
    __swift_project_value_buffer(v21, qword_1ED8F5298);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF1797DC();
    v23 = sub_1BF17ACDC();

    v24 = v15;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1BF01A7AC(v29[0], a6, &v30);
      _os_log_impl(&dword_1BEFE0000, v22, v23, "Network operation %{public}s was abandoned", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFB547B0](v26, -1, -1);
      MEMORY[0x1BFB547B0](v25, -1, -1);
    }

    sub_1BF11B998();
    v27 = swift_allocError();
    *v28 = 1;
    *(v28 + 8) = 1;
    *v18 = v27;
    swift_storeEnumTagMultiPayload();
    a7(v18);
    (*(v24 + 8))(v18, v14);
  }
}

uint64_t sub_1BF119A24(uint64_t *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v89 = a4;
  v90 = a3;
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v83 - v10;
  v12 = *((v7 & v6) + 0xF8);
  v13 = *((v7 & v6) + 0xF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NetworkOperationResult();
  v88 = type metadata accessor for Result();
  v14 = *(v88 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v17 = (&v83 - v16);
  swift_beginAccess();
  v18 = a2[4];
  swift_beginAccess();
  v19 = a2[5];
  swift_beginAccess();
  v20 = a2[6];
  v21 = v18;
  v22 = v19;
  v23 = v20;
  sub_1BF1181F8(v18, v19, v20);

  v24 = a2[6];
  if (v24)
  {
    v25 = v24;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1BF1797FC();
    __swift_project_value_buffer(v26, qword_1ED8F5298);
    v27 = v24;
    v28 = a1;
    v29 = sub_1BF1797DC();
    v30 = sub_1BF17ACBC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v92[0] = v33;
      *v31 = 136446466;
      *(v31 + 4) = sub_1BF01A7AC(*(v28 + qword_1ED8EF088), *(v28 + qword_1ED8EF088 + 8), v92);
      *(v31 + 12) = 2114;
      v34 = v24;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      *v32 = v35;
      _os_log_impl(&dword_1BEFE0000, v29, v30, "Stub network operation %{public}s failed with error: %{public}@", v31, 0x16u);
      sub_1BF11B9EC();
      MEMORY[0x1BFB547B0](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB547B0](v33, -1, -1);
      MEMORY[0x1BFB547B0](v31, -1, -1);
    }

    v36 = v88;
    *v17 = v24;
    swift_storeEnumTagMultiPayload();
    v37 = v24;
    v90(v17);

    return (*(v14 + 8))(v17, v36);
  }

  v39 = a2[4];
  if (!v39)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {
    goto LABEL_12;
  }

  v41 = v40;
  v42 = v39;
  if (sub_1BF081C58())
  {

LABEL_12:
    swift_beginAccess();
    v43 = a2[3];
    if (v43 >> 60 == 15)
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v44 = sub_1BF1797FC();
      __swift_project_value_buffer(v44, qword_1ED8F5298);
      v45 = a1;
      v46 = sub_1BF1797DC();
      v47 = sub_1BF17ACBC();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v91 = v49;
        *v48 = 136446210;
        *(v48 + 4) = sub_1BF01A7AC(*(v45 + qword_1ED8EF088), *(v45 + qword_1ED8EF088 + 8), &v91);
        _os_log_impl(&dword_1BEFE0000, v46, v47, "Stub network operation %{public}s failed with unknown error", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1BFB547B0](v49, -1, -1);
        MEMORY[0x1BFB547B0](v48, -1, -1);
      }

      sub_1BF11B998();
      v50 = swift_allocError();
      *v51 = 0;
      *(v51 + 8) = 1;
      *v17 = v50;
      v36 = v88;
      swift_storeEnumTagMultiPayload();
      v90(v17);
    }

    else
    {
      v86 = v14;
      v52 = a2[2];
      v53 = a2[4];
      v54 = a2[5];
      sub_1BF00F5E0(v52, v43);
      sub_1BF00F5E0(v52, v43);
      v55 = v54;
      v56 = v53;
      v85 = sub_1BF1184F4(v52, v43, v53, v54);
      v58 = v57;
      v87 = v52;
      sub_1BF014E18(v52, v43);

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v59 = sub_1BF1797FC();
      __swift_project_value_buffer(v59, qword_1ED8F5298);
      v60 = a1;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v61 = sub_1BF1797DC();
      v62 = sub_1BF17ACDC();

      v63 = os_log_type_enabled(v61, v62);
      v14 = v86;
      if (v63)
      {
        v64 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v91 = v84;
        *v64 = 136446466;
        *(v64 + 4) = sub_1BF01A7AC(*(v60 + qword_1ED8EF088), *(v60 + qword_1ED8EF088 + 8), &v91);
        *(v64 + 12) = 2082;
        v65 = sub_1BF01A7AC(v85, v58, &v91);
        LODWORD(v85) = v62;
        v66 = v65;

        *(v64 + 14) = v66;
        _os_log_impl(&dword_1BEFE0000, v61, v85, "Stub network operation %{public}s received response (%{public}s", v64, 0x16u);
        v67 = v84;
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v67, -1, -1);
        MEMORY[0x1BFB547B0](v64, -1, -1);
      }

      else
      {
      }

      v68 = a2[4];
      v69 = sub_1BF178C6C();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v69);
      v70 = v68;
      v71 = v68;
      v72 = v87;
      sub_1BF118DE4(v71, v11, v87, v43, v17);

      sub_1BF11C0F8();
      v90(v17);
      sub_1BF00F5F4(v72, v43);
      v36 = v88;
    }

    return (*(v14 + 8))(v17, v36);
  }

  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v73 = sub_1BF1797FC();
  __swift_project_value_buffer(v73, qword_1ED8F5298);
  v74 = a1;
  v75 = v42;
  v76 = sub_1BF1797DC();
  v77 = sub_1BF17ACBC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v92[0] = v79;
    *v78 = 136446466;
    *(v78 + 4) = sub_1BF01A7AC(*(v74 + qword_1ED8EF088), *(v74 + qword_1ED8EF088 + 8), v92);
    *(v78 + 12) = 2050;
    *(v78 + 14) = [v41 statusCode];

    _os_log_impl(&dword_1BEFE0000, v76, v77, "Stub network operation %{public}s failed with HTTP status code: %{public}ld", v78, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1BFB547B0](v79, -1, -1);
    MEMORY[0x1BFB547B0](v78, -1, -1);
  }

  else
  {
  }

  v36 = v88;
  sub_1BF081F08();
  v80 = swift_allocError();
  *v81 = v41;
  *v17 = v80;
  swift_storeEnumTagMultiPayload();
  v82 = v75;
  v90(v17);

  return (*(v14 + 8))(v17, v36);
}

id sub_1BF11A444@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a6;
  v50 = a1;
  v51 = a2;
  v45 = a4;
  v46 = a5;
  v44 = a7;
  v8 = *a3;
  v9 = *MEMORY[0x1E69E7D40];
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v43 - v13;
  v14 = *((v9 & v8) + 0xF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v43 - v17;
  v19 = *((v9 & v8) + 0xF8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v21 = *(v47 + 64);
  v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v43 - v25;
  (*(v19 + 16))(v14, v19);
  v27 = v52;
  (*(v19 + 24))(v50, v51, v14, v19);
  result = (*(v15 + 8))(v18, v14);
  if (v27)
  {
    *v49 = v27;
  }

  else
  {
    v50 = v26;
    v51 = v24;
    v52 = AssociatedTypeWitness;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v32 = sub_1BF1797FC();
    __swift_project_value_buffer(v32, qword_1ED8F5298);
    v33 = a3;
    v34 = sub_1BF1797DC();
    v35 = sub_1BF17ACDC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1BF01A7AC(*(v33 + qword_1ED8EF088), *(v33 + qword_1ED8EF088 + 8), &v53);
      _os_log_impl(&dword_1BEFE0000, v34, v35, "Network operation %{public}s succeeded", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB547B0](v37, -1, -1);
      MEMORY[0x1BFB547B0](v36, -1, -1);
    }

    v38 = v31;
    v40 = v47;
    v39 = v48;
    v41 = v52;
    sub_1BF11BC40(v30, v48, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF115500);
    v42 = v51;
    (*(v40 + 32))(v51, v50, v41);
    sub_1BF10EF50(v39, v38, v42, v41, v29);
    type metadata accessor for NetworkOperationResult();
    type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
    return v38;
  }

  return result;
}

uint64_t sub_1BF11A8E4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  sub_1BF103ADC();
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF11A95C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  sub_1BF104034();
  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF11A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF11A9D8, a4, 0);
}

uint64_t sub_1BF11A9D8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  sub_1BF104180(*(v0 + 24), *(v0 + 32) & 1);
  OUTLINED_FUNCTION_9();

  return v2();
}

id NetworkOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BF11AAAC()
{
  v1 = *(v0 + qword_1ED8EE298);

  v2 = *(v0 + qword_1ED8EE2D0 + 8);
  sub_1BF0F8B9C(*(v0 + qword_1ED8EE2D0));
  v3 = *(v0 + qword_1ED8EE2B8);

  sub_1BF0F840C(v0 + qword_1ED8EE2C0);
  v4 = qword_1ED8EE2A8;
  v5 = sub_1BF1794AC();
  OUTLINED_FUNCTION_0_0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + qword_1ED8ED240);
}

id NetworkOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF11AB94(uint64_t a1)
{
  v2 = *(a1 + qword_1ED8EE298);

  v3 = *(a1 + qword_1ED8EE2D0 + 8);
  sub_1BF0F8B9C(*(a1 + qword_1ED8EE2D0));
  v4 = *(a1 + qword_1ED8EE2B8);

  sub_1BF0F840C(a1 + qword_1ED8EE2C0);
  v5 = qword_1ED8EE2A8;
  v6 = sub_1BF1794AC();
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(a1 + v5);
  v8 = *(a1 + qword_1ED8ED240);
}

uint64_t sub_1BF11AC48(void *a1)
{
  v2 = sub_1BF1796CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  sub_1BF115500(0, &unk_1ED8ED650, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - v12;
  v14 = sub_1BF1796DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  v19 = a1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    sub_1BF11C074(&qword_1ED8ED660, MEMORY[0x1E6969C20]);
    sub_1BF1790FC();
    sub_1BF1796BC();
    sub_1BF11C074(&qword_1ED8ED668, MEMORY[0x1E6969BF8]);
    v20 = sub_1BF17A05C();
    v21 = *(v3 + 8);
    v21(v7, v2);
    if (v20)
    {
      v21(v9, v2);
      (*(v15 + 8))(v18, v14);
      return 0x3FF0000000000000;
    }

    else
    {
      sub_1BF1796AC();
      v23 = sub_1BF17A05C();
      v21(v7, v2);
      v21(v9, v2);
      (*(v15 + 8))(v18, v14);
      if (v23)
      {
        return 0x3FF0000000000000;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1BF11C0F8();
    return 0;
  }
}

void *sub_1BF11B060(void *a1)
{
  v1 = a1;
  v2 = a1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30);
  if (swift_dynamicCast())
  {
    sub_1BF11B998();
    v1 = swift_allocError();
    v4 = v3;
    if (v8 >= 3)
    {
      v5 = [v8 statusCode];
      sub_1BF10EE10(v8);
    }

    else
    {
      v5 = v8;
    }

    *v4 = v5;
    *(v4 + 8) = v8 < 3;
  }

  else
  {
    v6 = v1;
  }

  return v1;
}

void sub_1BF11B150(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultSessionConfiguration];
  [v2 set:objc_msgSend(v2 timingDataOptions:sel__timingDataOptions) | 1];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  a1[3] = sub_1BEFF9AF8(0, &qword_1ED8EDD30, 0x1E696AF78);
  a1[4] = &protocol witness table for NSURLSession;

  *a1 = v3;
}

uint64_t sub_1BF11B218@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF178DCC();
  sub_1BF1793DC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v13[1] = sub_1BF081688(v8);
  v14 = sub_1BF17B6FC();
  v15 = v9;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  v11 = v14;
  v12 = v15;
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1BF11B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, unint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, void (*a6)(char *, uint64_t)@<X6>, _OWORD *a7@<X8>)
{
  v29 = a1;
  v30 = a6;
  v31 = a7;
  v11 = a3(0);
  OUTLINED_FUNCTION_1(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, a4, a5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  OUTLINED_FUNCTION_7_27();
  sub_1BF11BC40(a2, v25, a4, a5, v19, v26);
  result = __swift_getEnumTagSinglePayload(v25, 1, v11);
  if (result == 1)
  {
    v28 = v31;
    *v31 = 0u;
    v28[1] = 0u;
  }

  else
  {
    (*(v13 + 32))(v18, v25, v11);
    v30(v18, v29);
    result = (*(v13 + 8))(v18, v11);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BF11B53C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CA0];
  v14 = a1 + 32;
LABEL_2:
  for (i = v3 + 48 * v1; ; i += 48)
  {
    if (v2 == v1)
    {
      v18[0] = v4;
      sub_1BF11BBF0(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1BF01B738();
      sub_1BF179F7C();

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    sub_1BF084014(i, v18);
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v18[0];
    v8 = v18[1];
    sub_1BF11BC40(&v19, &v15, &qword_1ED8EFBA0, v5 + 8, MEMORY[0x1E69E6720], sub_1BF11BBF0);
    if (v16)
    {
      sub_1BEFF9A40(&v15, v17);
      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      MEMORY[0x1BFB52000](v7, v8);
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      sub_1BF17B40C();
      v9 = v15;
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_1BF11BB94(v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        sub_1BF0201A4();
        v4 = v12;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 16 * v10 + 32) = v9;
      ++v1;
      v3 = v14;
      goto LABEL_2;
    }

    sub_1BF11C0F8();
    sub_1BF11BB94(v18);
    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BF11B7C8()
{
  result = sub_1BF1794AC();
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

uint64_t get_enum_tag_for_layout_string_13TeaFoundation29NetworkOperationInternalErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF11B938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1BF11B998()
{
  result = qword_1EBDCAB70;
  if (!qword_1EBDCAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB70);
  }

  return result;
}

uint64_t sub_1BF11B9EC()
{
  v1 = OUTLINED_FUNCTION_14_1();
  sub_1BEFFE8A0(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  (*(v7 + 8))(v0);
  return v0;
}

uint64_t sub_1BF11BB00(uint64_t a1, uint64_t a2)
{
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF11BB94(uint64_t a1)
{
  sub_1BF083DE0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF11BBF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BF11BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BF11BCB4(void *a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return;
      }

      a1 = a2;
    }
  }
}

uint64_t sub_1BF11BD18(void *a1, unint64_t a2, char a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v5 = *(v3 + 72);
  return sub_1BF119338(a1, a2, a3 & 1, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
}

void sub_1BF11BD54(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1BF119760(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
}

uint64_t sub_1BF11BD94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_6(v7);

  return sub_1BF11A9B4(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_1BF11BE44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6(v5);

  return sub_1BF11A8C4(v7, v8, v9, v3);
}

uint64_t sub_1BF11BEEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6(v5);

  return sub_1BF11A93C(v7, v8, v9, v3);
}

uint64_t sub_1BF11BF88()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF11C074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF11C0F8()
{
  v1 = OUTLINED_FUNCTION_14_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t URLHandlerMatcher.__allocating_init(url:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  URLHandlerMatcher.init(url:)(a1);
  return v5;
}

uint64_t URLHandlerMatcher.match(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  if (v5)
  {
    while (1)
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v10, v6, sizeof(v10));
      sub_1BF11D1E4(__dst, &v9);
      sub_1BF11C9BC(v10, a2);
      if (!v3)
      {
        return sub_1BF11D240(__dst);
      }

      sub_1BF11D240(__dst);

      v3 = 0;
      v6 += 80;
      if (!--v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    sub_1BF11D294();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0;
    *(v7 + 56) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_1BF11C294(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a1 == 42 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

BOOL sub_1BF11C2C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  if (a2)
  {
    if (a4)
    {
      v12 = a1 == a3 && a2 == a4;
      if (v12 || (sub_1BF17B86C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  sub_1BF178D7C();
  v14 = sub_1BF178D8C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  v15 = isNilOrEmpty(_:trim:)(a1, a2);
  sub_1BF11FB70(v11, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v13 = 0;
  if (v15)
  {
    sub_1BF178D7C();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v13 = isNilOrEmpty(_:trim:)(a3, a4);
    sub_1BF11FB70(v11, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  }

  return v13;
}

uint64_t URLHandlerMatcher.init(url:)(uint64_t a1)
{
  v2 = v1;
  v74 = sub_1BF178E2C();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69681B8];
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  v19 = sub_1BF17923C();
  v68 = *(v19 - 8);
  (*(v68 + 16))(v2 + v18, a1, v19);
  sub_1BF178E7C();
  sub_1BF11FC94(v17, v15, &qword_1ED8EE420, v7);
  v20 = sub_1BF178F0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    OUTLINED_FUNCTION_0_68();
    sub_1BF11FB70(v15, v21, v22);
LABEL_30:
    v29 = MEMORY[0x1E69E7CC8];
LABEL_33:
    sub_1BF178E7C();
    (*(v68 + 8))(a1, v19);
    OUTLINED_FUNCTION_0_68();
    sub_1BF11FB70(v17, v59, v60);
    sub_1BF11F824(v12, v2 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents);
    *(v2 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_queryParamValues) = v29;
    return v2;
  }

  v23 = sub_1BF178E5C();
  (*(*(v20 - 8) + 8))(v15, v20);
  if (!v23)
  {
    goto LABEL_30;
  }

  v67 = v19;
  v24 = *(v23 + 16);
  if (!v24)
  {

    v29 = MEMORY[0x1E69E7CC8];
LABEL_32:
    v19 = v67;
    goto LABEL_33;
  }

  v63 = v17;
  v64 = v12;
  v65 = a1;
  v66 = v2;
  v26 = *(v4 + 16);
  v25 = v4 + 16;
  v27 = *(v25 + 64);
  v62 = v23;
  v28 = v23 + ((v27 + 32) & ~v27);
  v70 = *(v25 + 56);
  v71 = v26;
  v72 = v25;
  v69 = (v25 - 8);
  v29 = MEMORY[0x1E69E7CC8];
  v31 = v73;
  v30 = v74;
  while (1)
  {
    v71(v31, v28, v30);
    v32 = sub_1BF178E1C();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v36 = sub_1BF178E0C();
    v38 = v37;
    if (v29[2] && (v39 = sub_1BF014CA8(), (v40 & 1) != 0))
    {
      v41 = *(v29[7] + 8 * v39);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = *(v41 + 16);
      sub_1BF0201A4();
      v41 = v57;
    }

    v42 = *(v41 + 16);
    if (v42 >= *(v41 + 24) >> 1)
    {
      sub_1BF0201A4();
      v41 = v58;
    }

    *(v41 + 16) = v42 + 1;
    v43 = v41 + 16 * v42;
    *(v43 + 32) = v34;
    *(v43 + 40) = v35;
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v29;
    v44 = sub_1BF014CA8();
    if (__OFADD__(v29[2], (v45 & 1) == 0))
    {
      break;
    }

    v46 = v44;
    v47 = v45;
    sub_1BF08334C();
    if (sub_1BF17B43C())
    {
      v48 = sub_1BF014CA8();
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_36;
      }

      v46 = v48;
    }

    v29 = v75;
    if (v47)
    {
      v50 = v75[7];
      v51 = *(v50 + 8 * v46);
      *(v50 + 8 * v46) = v41;
    }

    else
    {
      v75[(v46 >> 6) + 8] |= 1 << v46;
      v52 = (v29[6] + 16 * v46);
      *v52 = v36;
      v52[1] = v38;
      *(v29[7] + 8 * v46) = v41;
      v53 = v29[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_35;
      }

      v29[2] = v55;
    }

    v31 = v73;
    v30 = v74;
    (*v69)(v73, v74);

    v28 += v70;
    if (!--v24)
    {

      a1 = v65;
      v2 = v66;
      v17 = v63;
      v12 = v64;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF11C9BC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v65 - v8;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  memcpy(__dst, a1, 0x50uLL);
  v23 = __dst[0];
  v22 = __dst[1];
  v24 = __dst[0] == 42 && __dst[1] == 0xE100000000000000;
  v69 = a2;
  if (!v24 && (sub_1BF17B86C() & 1) == 0)
  {
    v66 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
    sub_1BF11FC94(v3 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v21, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v25 = sub_1BF178F0C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v25);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v68 = v3;
    v67 = v25;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BF11FB70(v21, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v65 = 0;
    }

    else
    {
      v27 = sub_1BF178ECC();
      v28 = v21;
      v30 = v29;
      (*(*(v25 - 8) + 8))(v28, v25);
      if (v30)
      {
        v31 = v23 == v27 && v30 == v22;
        if (v31 || (sub_1BF17B86C() & 1) != 0)
        {

LABEL_19:

          v3 = v68;
          goto LABEL_20;
        }

        v65 = v27;
        v32 = v30;
LABEL_17:
        sub_1BF178D7C();
        v33 = sub_1BF178D8C();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v33);
        v34 = isNilOrEmpty(_:trim:)(v23, v22);
        sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
        if (v34)
        {
          sub_1BF178D7C();
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v33);
          v35 = isNilOrEmpty(_:trim:)(v65, v32);

          sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
          if (v35)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        sub_1BF11FC94(v68 + v66, v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v54 = v67;
        if (__swift_getEnumTagSinglePayload(v14, 1, v67) == 1)
        {
          sub_1BF11FB70(v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v55 = 0;
          v56 = 0;
        }

        else
        {
          v55 = sub_1BF178ECC();
          v56 = v57;
          (*(*(v54 - 8) + 8))(v14, v54);
        }

        sub_1BF11D294();
        swift_allocError();
        *v58 = v23;
        *(v58 + 8) = v22;
        *(v58 + 16) = v55;
        *(v58 + 24) = v56;
        *(v58 + 32) = v72[0];
        *(v58 + 48) = *&v72[1];
        *(v58 + 56) = 0;
        return swift_willThrow();
      }

      v65 = v27;
    }

    v32 = 0;
    goto LABEL_17;
  }

LABEL_20:
  v37 = __dst[2];
  v36 = __dst[3];
  if (sub_1BF11C294(__dst[2], __dst[3]))
  {
    goto LABEL_26;
  }

  v38 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
  sub_1BF11FC94(v3 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v19, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v39 = sub_1BF178F0C();
  v40 = __swift_getEnumTagSinglePayload(v19, 1, v39);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v41 = v3;
  if (v40 == 1)
  {
    sub_1BF11FB70(v19, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = sub_1BF178E9C();
    v43 = v44;
    (*(*(v39 - 8) + 8))(v19, v39);
  }

  v45 = sub_1BF11C2C0(v37, v36, v42, v43);

  if (!v45)
  {
    v48 = v41 + v38;
    v49 = v70;
    sub_1BF11FC94(v48, v70, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    if (__swift_getEnumTagSinglePayload(v49, 1, v39) == 1)
    {
      sub_1BF11FB70(v49, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v50 = sub_1BF178E9C();
      v51 = v52;
      (*(*(v39 - 8) + 8))(v49, v39);
    }

    sub_1BF11D294();
    swift_allocError();
    *v53 = v37;
    *(v53 + 8) = v36;
    *(v53 + 16) = v50;
    *(v53 + 24) = v51;
    *(v53 + 32) = v72[0];
    *(v53 + 48) = *&v72[1];
    *(v53 + 56) = 1;
    return swift_willThrow();
  }

  v3 = v41;
LABEL_26:
  v74 = MEMORY[0x1E69E7CC8];
  memcpy(v72, __dst, sizeof(v72));
  v46 = v71;
  sub_1BF11D2E8(v72, &v74);
  if (v46)
  {
  }

  memcpy(v72, __dst, sizeof(v72));
  sub_1BF11DDA4(v72);
  memcpy(v72, __dst, sizeof(v72));
  sub_1BF11E360(v72, &v74);
  v59 = v3;
  v60 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  v61 = sub_1BF17923C();
  v62 = v69;
  (*(*(v61 - 8) + 16))(v69, v59 + v60, v61);
  v63 = v74;
  v64 = type metadata accessor for URLHandlerMatch();
  memcpy((v62 + *(v64 + 20)), __dst, 0x50uLL);
  *(v62 + *(v64 + 24)) = v63;
  return sub_1BF11D1E4(__dst, v72);
}

unint64_t sub_1BF11D294()
{
  result = qword_1ED8EBAF8;
  if (!qword_1ED8EBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EBAF8);
  }

  return result;
}

unint64_t sub_1BF11D2E8(void *a1, uint64_t a2)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v106 - v8;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v106 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v106 - v19;
  v21 = a1[5];
  if (!v21)
  {
    return result;
  }

  v114 = a2;
  v22 = a1[4];
  if (v22 == 42 && v21 == 0xE100000000000000)
  {
    return result;
  }

  v111 = a1[9];
  result = sub_1BF17B86C();
  if (result)
  {
    return result;
  }

  v112 = v2;
  v125 = v3;
  *&v120 = v22;
  *(&v120 + 1) = v21;
  v123 = 14895;
  v124 = 0xE200000000000000;
  sub_1BF013170();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v24 = sub_1BF17AF8C();
  if ((v24 & 1) == 0)
  {
    *&v120 = v22;
    *(&v120 + 1) = v21;
    v123 = 10799;
    v124 = 0xE200000000000000;
    v24 = sub_1BF17AF8C();
    if ((v24 & 1) == 0)
    {

      v84 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
      sub_1BF11FC94(v112 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v85 = sub_1BF178F0C();
      if (__swift_getEnumTagSinglePayload(v17, 1, v85) == 1)
      {
        sub_1BF11FB70(v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v86 = 0;
        v87 = 0;
      }

      else
      {
        v86 = sub_1BF178EAC();
        v87 = v91;
        (*(*(v85 - 8) + 8))(v17, v85);
        v92 = v22 == v86 && v21 == v87;
        if (v92 || (sub_1BF17B86C() & 1) != 0)
        {
        }
      }

      v119 = v84;
      sub_1BF178D7C();
      v88 = sub_1BF178D8C();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v88);
      v89 = isNilOrEmpty(_:trim:)(v22, v21);
      sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
      if (v89)
      {
        sub_1BF178D7C();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v88);
        v90 = isNilOrEmpty(_:trim:)(v86, v87);

        result = sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
        if (v90)
        {
          return result;
        }
      }

      else
      {
      }

      sub_1BF11FC94(v112 + v119, v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v85);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (EnumTagSinglePayload == 1)
      {
        sub_1BF11FB70(v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v94 = 0;
        v95 = 0;
      }

      else
      {
        v94 = sub_1BF178EAC();
        v95 = v96;
        (*(*(v85 - 8) + 8))(v14, v85);
      }

      sub_1BF11D294();
      swift_allocError();
      *v103 = v22;
      *(v103 + 8) = v21;
      *(v103 + 16) = v94;
      *(v103 + 24) = v95;
      *(v103 + 32) = v120;
      *(v103 + 48) = v121;
      v104 = 2;
      goto LABEL_61;
    }
  }

  *&v120 = 47;
  *(&v120 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v120;
  v25 = v125;
  v26 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF014764, (&v106 - 4), v22, v21);
  v27 = v25;
  sub_1BF11FC94(v112 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v20, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v28 = sub_1BF178F0C();
  v29 = __swift_getEnumTagSinglePayload(v20, 1, v28);
  v113 = v26;
  if (v29 == 1)
  {
    sub_1BF11FB70(v20, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v30 = sub_1BF178EAC();
    v32 = v31;
    v33 = (*(*(v28 - 8) + 8))(v20, v28);
    *&v120 = 47;
    *(&v120 + 1) = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v33);
    v105 = &v120;
    v34 = v30;
    v26 = v113;
    result = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF11FD18, (&v106 - 4), v34, v32);
  }

  v35 = *(v26 + 16);
  v36 = *(result + 16);
  if (v35 != v36)
  {

    sub_1BF11D294();
    swift_allocError();
    *v103 = v35;
    *(v103 + 8) = v36;
    v82 = v122;
    v83 = v121;
    *(v103 + 16) = v120;
    *(v103 + 32) = v83;
    *(v103 + 48) = v82;
    v104 = 3;
LABEL_61:
    *(v103 + 56) = v104;
    return swift_willThrow();
  }

  v37 = 0;
  v38 = 0;
  v115 = *(v26 + 16);
  for (i = result; ; result = i)
  {
    if (v35 == v38)
    {
LABEL_44:
    }

    if (v38 >= *(v26 + 16))
    {
      break;
    }

    v39 = *(result + 16);
    if (v38 == v39)
    {
      goto LABEL_44;
    }

    if (v38 >= v39)
    {
      goto LABEL_66;
    }

    v125 = v27;
    v41 = *(v26 + v37 + 32);
    v40 = *(v26 + v37 + 40);
    v42 = *(v26 + v37 + 48);
    v43 = *(v26 + v37 + 56);
    v118 = v37;
    v44 = *(result + v37 + 32);
    v45 = *(result + v37 + 40);
    v46 = *(result + v37 + 56);
    v117 = *(result + v37 + 48);
    swift_bridgeObjectRetain_n();
    v119 = v46;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v47 = sub_1BF17AEEC();
    if (v42 == v50 && v43 == v49 && v41 >> 16 == v47 >> 16 && v40 >> 16 == v48 >> 16)
    {

      goto LABEL_42;
    }

    LOBYTE(v105) = 0;
    v54 = sub_1BF17B6EC();

    if ((v54 & 1) == 0)
    {
      if (sub_1BF00DC20(58, 0xE100000000000000, v41, v40))
      {
        result = sub_1BF17AEAC();
        if (v40 >> 14 < result >> 14)
        {
          goto LABEL_67;
        }

        v55 = sub_1BF17AEFC();
        v57 = v56;
        v59 = v58;
        v61 = v60;

        v107 = v59;
        v108 = v57;
        MEMORY[0x1BFB51F50](v55, v57, v59, v61);
        v62 = v111;
        v63 = *(v111 + 16);
        v109 = v55;
        v110 = v61;
        if (v63)
        {
          v64 = sub_1BF014CA8();
          v66 = v65;

          if (v66)
          {
            v67 = *(*(v62 + 56) + 8 * v64);
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_39:
            v69 = v44;
            v70 = v44;
            v71 = v117;
            v72 = v119;
            v73 = MEMORY[0x1BFB51F50](v70, v45, v117, v119);
            v74 = v125;
            sub_1BF11F508(v73, v75, v67);
            v125 = v74;
            if (v74)
            {
            }

            v76 = MEMORY[0x1BFB51F50](v69, v45, v71, v72);
            v78 = v77;

            v79 = MEMORY[0x1BFB51F50](v109, v108, v107, v110);
            v81 = v80;

            sub_1BF15195C(v76, v78, v79, v81);
            goto LABEL_41;
          }
        }

        else
        {
        }

        v67 = 0;
        goto LABEL_39;
      }

      v68 = v119;
      if ((sub_1BF11F7B0(v41, v40, v42, v43, v44, v45, v117, v119) & 1) == 0)
      {

        v97 = MEMORY[0x1BFB51F50](v41, v40, v42, v43);
        v99 = v98;

        v100 = MEMORY[0x1BFB51F50](v44, v45, v117, v68);
        v102 = v101;

        sub_1BF11D294();
        swift_allocError();
        *v103 = v97;
        *(v103 + 8) = v99;
        *(v103 + 16) = v100;
        *(v103 + 24) = v102;
        *(v103 + 32) = v120;
        *(v103 + 48) = v121;
        v104 = 4;
        goto LABEL_61;
      }
    }

LABEL_41:
    v26 = v113;
LABEL_42:

    v37 = v118 + 32;
    ++v38;
    v27 = v125;
    v35 = v115;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1BF11DDA4(uint64_t a1)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v43 - v5;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = *(a1 + 56);
  if (v18)
  {
    v50 = v1;
    v19 = *(a1 + 48);
    if (v19 != 42 || v18 != 0xE100000000000000)
    {
      result = sub_1BF17B86C();
      if ((result & 1) == 0)
      {
        *&v46 = v19;
        *(&v46 + 1) = v18;
        v48 = 58;
        v49 = 0xE100000000000000;
        sub_1BF013170();
        if (sub_1BF17AF8C())
        {
          sub_1BF11FC94(v50 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v21 = sub_1BF178F0C();
          if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
          {
            return sub_1BF11FB70(v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          }

          v24 = sub_1BF178EEC();
          v26 = v25;
          result = (*(*(v21 - 8) + 8))(v17, v21);
          if (v26)
          {
            v27 = sub_1BF17A1FC();
            v28 = sub_1BF0CF7B0(v27, v19, v18);
            v29 = MEMORY[0x1BFB51F50](v28);
            v31 = v30;

            sub_1BF15195C(v24, v26, v29, v31);
          }
        }

        else
        {
          v45 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
          sub_1BF11FC94(v50 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v22 = sub_1BF178F0C();
          if (__swift_getEnumTagSinglePayload(v14, 1, v22) == 1)
          {
            sub_1BF11FB70(v14, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
            v44 = 0;
            v23 = 0;
          }

          else
          {
            v32 = sub_1BF178EEC();
            v23 = v33;
            (*(*(v22 - 8) + 8))(v14, v22);
            if (v23)
            {
              v34 = v19 == v32 && v18 == v23;
              if (v34 || (sub_1BF17B86C() & 1) != 0)
              {
              }
            }

            v44 = v32;
          }

          sub_1BF178D7C();
          v35 = sub_1BF178D8C();
          __swift_storeEnumTagSinglePayload(v6, 0, 1, v35);
          v36 = isNilOrEmpty(_:trim:)(v19, v18);
          sub_1BF11FB70(v6, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
          if (v36)
          {
            sub_1BF178D7C();
            __swift_storeEnumTagSinglePayload(v6, 0, 1, v35);
            v37 = isNilOrEmpty(_:trim:)(v44, v23);

            result = sub_1BF11FB70(v6, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            if (v37)
            {
              return result;
            }
          }

          else
          {
          }

          sub_1BF11FC94(v50 + v45, v11, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v22);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          if (EnumTagSinglePayload == 1)
          {
            sub_1BF11FB70(v11, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
            v39 = 0;
            v40 = 0;
          }

          else
          {
            v39 = sub_1BF178EEC();
            v40 = v41;
            (*(*(v22 - 8) + 8))(v11, v22);
          }

          sub_1BF11D294();
          swift_allocError();
          *v42 = v19;
          *(v42 + 8) = v18;
          *(v42 + 16) = v39;
          *(v42 + 24) = v40;
          *(v42 + 32) = v46;
          *(v42 + 48) = v47;
          *(v42 + 56) = 7;
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BF11E360(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v213 = sub_1BF178D8C();
  v6 = *(v213 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v213);
  v189 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v199 = &v183 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v188 = &v183 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v198 = &v183 - v14;
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v197 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v183 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v183 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v196 = &v183 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v204 = &v183 - v30;
  result = MEMORY[0x1EEE9AC00](v29);
  v205 = &v183 - v34;
  v35 = *(a1 + 64);
  if (!v35)
  {
    return result;
  }

  v192 = *(v35 + 16);
  if (!v192)
  {
    return result;
  }

  v36 = 0;
  v194 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_queryParamValues;
  v193 = v35 + 32;
  v207 = (v6 + 8);
  v208 = (v6 + 32);
  v185 = v3;
  v186 = a2;
  v195 = v21;
  v201 = v32;
  v187 = v33;
  v191 = v35;
  v202 = v24;
LABEL_4:
  if (v36 >= *(v35 + 16))
  {
    goto LABEL_120;
  }

  v37 = v193 + 40 * v36;
  v38 = *v37;
  v206 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = *(v37 + 24);
  v41 = *(v37 + 32);
  v42 = HIBYTE(v40) & 0xF;
  v43 = v204;
  v211 = v38;
  v212 = v40;
  v214 = v39;
  v200 = v36 + 1;
  switch(v41)
  {
    case 1:
      v190 = v41;
      v64 = *(v3 + v194);
      if (*(v64 + 16))
      {
        sub_1BF11FBC4(v211, v206, v214, v40, 1u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v39 = v214;
        v65 = sub_1BF014CA8();
        v46 = MEMORY[0x1E69E7CC0];
        v66 = &qword_1ED8EDCF8;
        if (v67)
        {
          v46 = *(*(v64 + 56) + 8 * v65);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        sub_1BF11FBC4(v211, v206, v39, v40, 1u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v46 = MEMORY[0x1E69E7CC0];
        v66 = &qword_1ED8EDCF8;
      }

      v141 = 0;
      v142 = *(v46 + 16);
      v143 = v39 & 0xFFFFFFFFFFFFLL;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v143 = HIBYTE(v40) & 0xF;
      }

      v184 = v143;
      v144 = (v46 + 40);
      v210 = v46;
      v203 = v142;
      while (1)
      {
        if (v142 == v141)
        {
          v136 = v211;
          v137 = v206;
          v138 = v39;
          v139 = v40;
          v140 = 1;
          goto LABEL_108;
        }

        if (v141 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v145 = *(v144 - 1);
        v146 = *v144;
        v147 = v145 == v39 && v40 == v146;
        if (v147 || (v148 = *(v144 - 1), v149 = *v144, (sub_1BF17B86C() & 1) != 0))
        {
          v58 = v206;
          v46 = v210;
          v57 = v211;
          goto LABEL_117;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v150 = v201;
        sub_1BF178D7C();
        v151 = v213;
        __swift_storeEnumTagSinglePayload(v150, 0, 1, v213);
        v152 = v202;
        sub_1BF11FC94(v150, v202, v66, MEMORY[0x1E69680B8]);
        if (__swift_getEnumTagSinglePayload(v152, 1, v151) == 1)
        {
          v153 = MEMORY[0x1E69680B8];
          sub_1BF11FB70(v150, v66, MEMORY[0x1E69680B8]);
          sub_1BF11FB70(v152, v66, v153);
          v154 = v146;
        }

        else
        {
          v155 = *v208;
          v209 = v141;
          v156 = v66;
          v157 = v213;
          v158 = v144;
          v159 = v199;
          v155(v199, v152, v213);
          v215 = v145;
          v216 = v146;
          sub_1BF013170();
          v145 = sub_1BF17AF4C();
          v154 = v160;
          v161 = v159;
          v144 = v158;
          v162 = v157;
          v66 = v156;
          v141 = v209;
          v142 = v203;
          (*v207)(v161, v162);
          sub_1BF11FB70(v150, v66, MEMORY[0x1E69680B8]);
        }

        v163 = HIBYTE(v154) & 0xF;
        if ((v154 & 0x2000000000000000) == 0)
        {
          v163 = v145 & 0xFFFFFFFFFFFFLL;
        }

        v40 = v212;
        v39 = v214;
        if (v163)
        {

          v46 = v210;
        }

        else
        {
          v209 = v144;
          v164 = v66;
          v165 = v195;
          sub_1BF178D7C();
          v166 = v213;
          __swift_storeEnumTagSinglePayload(v165, 0, 1, v213);
          v167 = v197;
          sub_1BF11FC94(v165, v197, v164, MEMORY[0x1E69680B8]);
          if (__swift_getEnumTagSinglePayload(v167, 1, v166) == 1)
          {

            v168 = v167;
            v169 = MEMORY[0x1E69680B8];
            sub_1BF11FB70(v165, v164, MEMORY[0x1E69680B8]);
            sub_1BF11FB70(v168, v164, v169);
            v170 = v184;
          }

          else
          {
            v171 = v189;
            v172 = v213;
            (*v208)(v189, v167, v213);
            v215 = v39;
            v216 = v212;
            sub_1BF013170();
            v173 = sub_1BF17AF4C();
            v175 = v174;

            v176 = v171;
            v40 = v212;
            (*v207)(v176, v172);
            sub_1BF11FB70(v195, v164, MEMORY[0x1E69680B8]);

            v170 = HIBYTE(v175) & 0xF;
            if ((v175 & 0x2000000000000000) == 0)
            {
              v170 = v173 & 0xFFFFFFFFFFFFLL;
            }
          }

          v66 = v164;
          v144 = v209;
          v46 = v210;
          if (!v170)
          {
            goto LABEL_115;
          }
        }

        v144 += 2;
        v141 = (v141 + 1);
      }

    case 2:
      v190 = v41;
      v54 = *(v3 + v194);
      v55 = *(v54 + 16);
      v56 = v39;
      v57 = v211;
      v58 = v206;
      sub_1BF11FBC4(v211, v206, v56, v40, 2u);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v55 && (v59 = sub_1BF014CA8(), (v60 & 1) != 0))
      {
        v46 = *(*(v54 + 56) + 8 * v59);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
      }

      if (!*(v46 + 16))
      {
        goto LABEL_117;
      }

      v72 = *a2;
      if (*(*a2 + 16) && (v73 = sub_1BF014CA8(), (v74 & 1) != 0))
      {
        v215 = *(*(v72 + 56) + 8 * v73);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v215 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF0CABA8(v46);
      v75 = v215;
      v76 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v217 = *a2;
      v77 = v217;
      *a2 = 0x8000000000000000;
      v78 = sub_1BF014CA8();
      v80 = v214;
      if (__OFADD__(v77[2], (v79 & 1) == 0))
      {
        goto LABEL_121;
      }

      v81 = v78;
      v82 = v79;
      sub_1BF08334C();
      if (sub_1BF17B43C())
      {
        v83 = sub_1BF014CA8();
        a2 = v186;
        if ((v82 & 1) != (v84 & 1))
        {
          goto LABEL_125;
        }

        v81 = v83;
      }

      else
      {
        a2 = v186;
      }

      v85 = v217;
      if (v82)
      {
        v86 = v217[7];
        v87 = *(v86 + 8 * v81);
        *(v86 + 8 * v81) = v75;

        v88 = v211;
        v89 = v212;
        v90 = v58;
        v91 = v80;
        v92 = 2;
        goto LABEL_103;
      }

      v217[(v81 >> 6) + 8] |= 1 << v81;
      v93 = (v85[6] + 16 * v81);
      *v93 = v211;
      v93[1] = v58;
      *(v85[7] + 8 * v81) = v75;
      v94 = v85[2];
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_123;
      }

      goto LABEL_105;
    case 3:
      v190 = v41;
      v61 = *(v3 + v194);
      if (*(v61 + 16))
      {
        v58 = v206;
        sub_1BF11FBC4(v211, v206, v39, v40, 3u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v62 = sub_1BF014CA8();
        v46 = MEMORY[0x1E69E7CC0];
        if (v63)
        {
          v46 = *(*(v61 + 56) + 8 * v62);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        v58 = v206;
        sub_1BF11FBC4(v211, v206, v39, v40, 3u);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v46 = MEMORY[0x1E69E7CC0];
      }

      if (*(v46 + 16))
      {
        goto LABEL_116;
      }

      sub_1BF11FC2C(v211, v58, v214, v40, 3u);

      goto LABEL_110;
    case 4:
      v48 = *(v3 + v194);
      v49 = *(v48 + 16);
      v50 = v206;
      sub_1BF11FBC4(v211, v206, v39, v40, 4u);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v49 && (v51 = sub_1BF014CA8(), (v52 & 1) != 0))
      {
        v53 = *(*(v48 + 56) + 8 * v51);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      v68 = v214;

      if (*(v53 + 16))
      {
        v69 = *a2;
        if (*(*a2 + 16) && (v70 = sub_1BF014CA8(), (v71 & 1) != 0))
        {
          v215 = *(*(v69 + 56) + 8 * v70);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }

        else
        {
          v215 = MEMORY[0x1E69E7CC0];
        }

        sub_1BF0CABA8(v53);
        v97 = v215;
        v98 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v217 = *a2;
        v99 = v217;
        *a2 = 0x8000000000000000;
        v100 = sub_1BF014CA8();
        if (__OFADD__(v99[2], (v101 & 1) == 0))
        {
          goto LABEL_122;
        }

        v102 = v100;
        v103 = v101;
        sub_1BF08334C();
        if (sub_1BF17B43C())
        {
          v104 = sub_1BF014CA8();
          a2 = v186;
          if ((v103 & 1) != (v105 & 1))
          {
            goto LABEL_125;
          }

          v102 = v104;
        }

        else
        {
          a2 = v186;
        }

        v85 = v217;
        if (v103)
        {
          v177 = v217[7];
          v178 = *(v177 + 8 * v102);
          *(v177 + 8 * v102) = v97;

          v88 = v211;
          v89 = v212;
          v90 = v50;
          v91 = v68;
          v92 = 4;
LABEL_103:
          sub_1BF11FC2C(v88, v90, v91, v89, v92);
        }

        else
        {
          v217[(v102 >> 6) + 8] |= 1 << v102;
          v179 = (v85[6] + 16 * v102);
          *v179 = v211;
          v179[1] = v50;
          *(v85[7] + 8 * v102) = v97;
          v180 = v85[2];
          v95 = __OFADD__(v180, 1);
          v96 = v180 + 1;
          if (v95)
          {
            goto LABEL_124;
          }

LABEL_105:
          v85[2] = v96;
        }

        v3 = v185;
        v181 = *a2;

        *a2 = v85;
      }

      else
      {

        result = sub_1BF11FC2C(v211, v50, v68, v212, 4u);
      }

      goto LABEL_110;
    default:
      v190 = v41;
      v44 = *(v3 + v194);
      if (*(v44 + 16))
      {
        sub_1BF11FBC4(v211, v206, v214, v212, 0);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v40 = v212;
        v39 = v214;
        v45 = sub_1BF014CA8();
        v46 = MEMORY[0x1E69E7CC0];
        if (v47)
        {
          v46 = *(*(v44 + 56) + 8 * v45);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }
      }

      else
      {
        sub_1BF11FBC4(v211, v206, v39, v40, 0);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v46 = MEMORY[0x1E69E7CC0];
      }

      v106 = 0;
      v203 = *(v46 + 16);
      v107 = v39 & 0xFFFFFFFFFFFFLL;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v107 = v42;
      }

      v184 = v107;
      v108 = (v46 + 40);
      while (2)
      {
        if (v203 == v106)
        {
LABEL_115:
          v58 = v206;
LABEL_116:
          v57 = v211;
LABEL_117:
          sub_1BF11D294();
          swift_allocError();
          *v182 = v57;
          *(v182 + 8) = v58;
          *(v182 + 16) = v214;
          *(v182 + 24) = v40;
          *(v182 + 32) = v190;
          *(v182 + 40) = v46;
          *(v182 + 56) = 8;
          return swift_willThrow();
        }

        if (v106 < *(v46 + 16))
        {
          v109 = v46;
          v110 = *(v108 - 1);
          v111 = *v108;
          v112 = v110 == v39 && v40 == v111;
          if (v112 || (v113 = *(v108 - 1), v114 = *v108, (sub_1BF17B86C() & 1) != 0))
          {
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

            v136 = v211;
            v137 = v206;
            v138 = v39;
            v139 = v40;
            v140 = 0;
LABEL_108:
            sub_1BF11FC2C(v136, v137, v138, v139, v140);
          }

          else
          {
            v209 = v108;
            v210 = v106;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            v115 = v205;
            sub_1BF178D7C();
            v116 = v213;
            __swift_storeEnumTagSinglePayload(v115, 0, 1, v213);
            sub_1BF11FC94(v115, v43, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            if (__swift_getEnumTagSinglePayload(v43, 1, v116) == 1)
            {
              v117 = MEMORY[0x1E69680B8];
              sub_1BF11FB70(v115, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
              sub_1BF11FB70(v43, &qword_1ED8EDCF8, v117);
              v118 = v111;
            }

            else
            {
              v119 = v198;
              (*v208)(v198, v43, v116);
              v215 = v110;
              v216 = v111;
              sub_1BF013170();
              v110 = sub_1BF17AF4C();
              v118 = v120;
              v121 = v119;
              v40 = v212;
              (*v207)(v121, v116);
              sub_1BF11FB70(v115, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            }

            v122 = HIBYTE(v118) & 0xF;
            if ((v118 & 0x2000000000000000) == 0)
            {
              v122 = v110 & 0xFFFFFFFFFFFFLL;
            }

            v39 = v214;
            v123 = v210;
            if (v122)
            {

              v46 = v109;
              v124 = v209;
LABEL_74:
              v108 = v124 + 2;
              v106 = v123 + 1;
              continue;
            }

            v125 = v187;
            sub_1BF178D7C();
            v126 = v213;
            __swift_storeEnumTagSinglePayload(v125, 0, 1, v213);
            v127 = v196;
            sub_1BF11FC94(v125, v196, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
            if (__swift_getEnumTagSinglePayload(v127, 1, v126) == 1)
            {

              v128 = v127;
              v129 = MEMORY[0x1E69680B8];
              sub_1BF11FB70(v125, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
              sub_1BF11FB70(v128, &qword_1ED8EDCF8, v129);
              v130 = v184;
            }

            else
            {
              v131 = v188;
              (*v208)(v188, v127, v126);
              v215 = v214;
              v216 = v212;
              sub_1BF013170();
              v132 = sub_1BF17AF4C();
              v134 = v133;

              v135 = v131;
              v40 = v212;
              (*v207)(v135, v126);
              sub_1BF11FB70(v125, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);

              v130 = HIBYTE(v134) & 0xF;
              if ((v134 & 0x2000000000000000) == 0)
              {
                v130 = v132 & 0xFFFFFFFFFFFFLL;
              }
            }

            v124 = v209;
            v43 = v204;
            v39 = v214;
            v46 = v109;
            if (v130)
            {
              goto LABEL_74;
            }

            result = sub_1BF11FC2C(v211, v206, v39, v40, 0);
          }

          v3 = v185;
          a2 = v186;
LABEL_110:
          v36 = v200;
          v35 = v191;
          if (v200 == v192)
          {
            return result;
          }

          goto LABEL_4;
        }

        break;
      }

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
      result = sub_1BF17BAAC();
      __break(1u);
      return result;
  }
}

uint64_t sub_1BF11F508(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  for (i = (a3 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    if ((*i & 1) == 0)
    {
      break;
    }

    result = sub_1BF17A1BC();
    if (result != v8)
    {
      v10 = sub_1BF17B6FC();
      v12 = v11;
      sub_1BF17A1BC();
      v13 = sub_1BF17B6FC();
      v15 = v14;
      sub_1BF11D294();
      swift_allocError();
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = 1;
      *(v16 + 24) = v10;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      *(v16 + 48) = v15;
      *(v16 + 56) = 5;
      return swift_willThrow();
    }

LABEL_9:
    if (!--v3)
    {
      return result;
    }
  }

  sub_1BF11FCF8(*(i - 2), *(i - 1), 0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (sub_1BF0B6F44())
  {
    sub_1BF11FD08(v8, v7, 0);
    result = sub_1BF11FD08(v8, v7, 0);
    goto LABEL_9;
  }

  sub_1BF11D294();
  swift_allocError();
  *v9 = v8;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = a2;
  *(v9 + 56) = 5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return swift_willThrow();
}

uint64_t URLHandlerMatcher.deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  v2 = sub_1BF17923C();
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_0_68();
  sub_1BF11FB70(v0 + v4, v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_queryParamValues);

  return v0;
}

uint64_t URLHandlerMatcher.__deallocating_deinit()
{
  URLHandlerMatcher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF11F7B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B6EC() & 1;
  }
}

uint64_t sub_1BF11F824(uint64_t a1, uint64_t a2)
{
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for URLHandlerMatcher()
{
  result = qword_1ED8EBAE8;
  if (!qword_1ED8EBAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF11F8F8()
{
  v0 = sub_1BF17923C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1BF11FB1C(319, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation17URLHandlerMatcherC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 8)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF11FA50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 57))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 9)
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

uint64_t sub_1BF11FA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF11FAE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 9;
  }

  *(result + 56) = a2;
  return result;
}

void sub_1BF11FB1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF11FB70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF11FB1C(0, a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF11FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 3)
  {
    if (a5 > 1u)
    {
      return result;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF11FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 3)
  {
    if (a5 > 1u)
    {
      return result;
    }
  }
}

uint64_t sub_1BF11FC94(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BF11FB1C(0, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF11FCF8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF11FD08(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCSelectorBuilder(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF11FE6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF17B86C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1BF11FEF4(uint64_t *a1)
{
  sub_1BF120150();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF1201AC();
  sub_1BF17BBDC();
  if (!v1)
  {
    sub_1BF120200();
    sub_1BF120258();
    sub_1BF17B5FC();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1BF120080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF11FE6C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF1200AC(uint64_t a1)
{
  v2 = sub_1BF1201AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF1200E8(uint64_t a1)
{
  v2 = sub_1BF1201AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1BF120124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BF11FEF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1BF120150()
{
  if (!qword_1ED8E9BA0)
  {
    sub_1BF1201AC();
    v0 = sub_1BF17B63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BA0);
    }
  }
}

unint64_t sub_1BF1201AC()
{
  result = qword_1ED8EA728;
  if (!qword_1ED8EA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA728);
  }

  return result;
}

void sub_1BF120200()
{
  if (!qword_1ED8E9C50)
  {
    type metadata accessor for AuthTokenResponseItem();
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C50);
    }
  }
}

unint64_t sub_1BF120258()
{
  result = qword_1ED8E9C48;
  if (!qword_1ED8E9C48)
  {
    sub_1BF120200();
    sub_1BF1202D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C48);
  }

  return result;
}

unint64_t sub_1BF1202D0()
{
  result = qword_1ED8EA1A0;
  if (!qword_1ED8EA1A0)
  {
    type metadata accessor for AuthTokenResponseItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF1203D8()
{
  result = qword_1EBDCC330;
  if (!qword_1EBDCC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC330);
  }

  return result;
}

unint64_t sub_1BF120430()
{
  result = qword_1ED8EA718;
  if (!qword_1ED8EA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA718);
  }

  return result;
}

unint64_t sub_1BF120488()
{
  result = qword_1ED8EA720;
  if (!qword_1ED8EA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA720);
  }

  return result;
}

uint64_t static TaskScheduler.promise<A>(_:)(void *a1)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  return TaskScheduler.promise<A>(_:)(a1);
}

uint64_t static TaskScheduler.scheduleAfter(_:_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  return TaskScheduler.scheduleAfter(_:_:)(a1, a2);
}

uint64_t static TaskScheduler.shared.getter()
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }
}

uint64_t TaskScheduler.scheduleAfter(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_1BF179B5C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BF179BBC();
  v12 = OUTLINED_FUNCTION_1(v11);
  v49 = v13;
  v50 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_1BF179BEC();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - v28;
  v30 = [objc_opt_self() isMainThread];
  v54 = *(v2 + 16);
  sub_1BF179BDC();
  sub_1BF179C6C();
  v31 = *(v22 + 8);
  v53 = v19;
  v55 = v31;
  v31(v27, v19);
  if (v30)
  {
    sub_1BF179BAC();
    OUTLINED_FUNCTION_6_35();
    v58 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v59 = v32;
    v60 = &block_descriptor_9;
    _Block_copy(aBlock);
    v56 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v33, v34);
    v35 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v35);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v36, v37);

    sub_1BF17B0BC();
    v38 = sub_1BF179C4C();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_1BF179C1C();

    sub_1BF17AD3C();

    return v55(v29, v53);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    v58 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v59 = v42;
    v60 = &block_descriptor_6_0;
    v43 = _Block_copy(aBlock);

    sub_1BF179B8C();
    v56 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v44, v45);
    v46 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v46);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v47, v48);
    sub_1BF17B0BC();
    MEMORY[0x1BFB52B00](v29, v18, v10, v43);
    _Block_release(v43);
    (*(v51 + 8))(v10, v3);
    (*(v49 + 8))(v18, v50);
    v55(v29, v53);
  }
}

uint64_t TaskScheduler.promise<A>(_:)(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  type metadata accessor for Promise();
  v3 = a1;

  v4 = Promise.__allocating_init(_:scheduleOn:)();

  return v4;
}

uint64_t TaskScheduler.scheduleAsync<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF120B30()
{
  v1 = *(*(v0 + 32) + 24);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_20(v2);

  return sub_1BF16CC64(v3, v4);
}

uint64_t sub_1BF120BC4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TaskScheduler.scheduleLowPriorityAsync<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF120CD0()
{
  v1 = *(*(v0 + 32) + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_20(v2);

  return sub_1BF16CC64(v3, v4);
}

uint64_t TaskScheduler.__deallocating_deinit()
{
  TaskScheduler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id static TaskScheduler.schedule(_:)(uint64_t a1)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  v2 = *(off_1ED8EF150 + 3);

  return [v2 addOperation_];
}

id static TaskScheduler.callbackQueue.getter()
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  v0 = *(off_1ED8EF150 + 2);

  return v0;
}

id static TaskScheduler.scheduleLowPriority(_:)(uint64_t a1)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  v2 = *(off_1ED8EF150 + 4);

  return [v2 addOperation_];
}

uint64_t withOSActivity<A>(_:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v9 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = sub_1BF120FC4(a1, a2, a3, &dword_1BEFE0000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  result = swift_unknownObjectRelease();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

os_activity_t sub_1BF120FC4(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED8EBC20 == -1)
        {
LABEL_5:
          v6 = qword_1ED8EBC28;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        swift_once();
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1BF17B49C();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1ED8EBC20 != -1)
  {
    swift_once();
  }

  return _os_activity_create(dso, descriptiona, qword_1ED8EBC28, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t withOSActivity<A>(_:operation:)()
{
  OUTLINED_FUNCTION_5();
  v9 = *MEMORY[0x1E69E9840];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 96) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 32) = v6;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BF12125C, 0, 0);
}

uint64_t sub_1BF12125C()
{
  v1 = v0;
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v5 = sub_1BF120FC4(v4, v2, *(v0 + 96), &dword_1BEFE0000);
  *(v0 + 72) = v5;
  os_activity_scope_enter(v5, (v0 + 16));
  v12 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = sub_1BF1213AC;
  v8 = v1[8];
  v9 = v1[4];
  v10 = *MEMORY[0x1E69E9840];

  return v12(v9);
}

uint64_t sub_1BF1213AC()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1BF121580;
  }

  else
  {
    v3 = sub_1BF1214E8;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BF1214E8()
{
  OUTLINED_FUNCTION_5();
  v5 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[1];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0->opaque[1];
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1BF121580()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[1];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0->opaque[1];
  v3 = v0[5].opaque[1];
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1BF121618()
{
  qword_1ED8EBC28 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1BF1216BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_1BF121864(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF121784(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF1217C4()
{
  v1 = *(v0 + 24);

  MEMORY[0x1BFB548B0](v0 + 32);
  return v0;
}

uint64_t sub_1BF1217EC()
{
  v0 = sub_1BF1217C4();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

BOOL sub_1BF12181C()
{
  v1 = *(v0 + qword_1EBDCAB10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_1BF121864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v7;
  v14 = sub_1BF1794FC();
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = *(a3 + 16);
  LOBYTE(v21) = *(a4 + 16);
  *(v7 + qword_1EBDCAB20) = a2;
  v24 = v7 + qword_1EBDCAB18;
  *v24 = *a4;
  v24[16] = v21;
  v25 = v7 + qword_1EBDCAB28;
  *v25 = *a3;
  *(v25 + 2) = v23;
  v31 = *(v13 + 144);
  type metadata accessor for CallbackInstanceDefinition.Wrapper();
  v26 = sub_1BF121738(a5, a6);
  *(v7 + qword_1EBDCAB10) = v26;
  (*(v16 + 16))(v22, a1, v14);
  v27 = sub_1BEFF07BC(v22, sub_1BF121F6C, v26);
  v28 = *(v16 + 8);

  v28(a1, v14);
  return v27;
}

uint64_t sub_1BF121A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a3 + 24);
    (*(a3 + 16))(result, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF121AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3;
  v8 = sub_1BF1794FC();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_2_3();
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  (*(v22 + 16))(v21 - v20, a2, a3);
  v23 = *(v6 + 152);
  result = swift_dynamicCast();
  if (result)
  {
    v25 = *(v7 + 144);
    type metadata accessor for CallbackInstanceDefinition();
    (*(v10 + 16))(v16, v3 + qword_1ED8F52F0, v8);
    v26 = *(v3 + qword_1EBDCAB20);
    OUTLINED_FUNCTION_2_54();
    v27 = *(v3 + qword_1EBDCAB18 + 8);
    v28 = *(v3 + qword_1EBDCAB18 + 16);
    v38 = *(v3 + qword_1EBDCAB18);
    v39 = v27;
    v40 = v28;
    v29 = *(v3 + qword_1EBDCAB10);
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0DA424(v38, v27, v28);

    v32 = sub_1BF1216BC(v16, v26, v41, &v38, v30, v31);
    v33 = *(v32 + qword_1EBDCAB10);
    swift_unknownObjectWeakAssign();
    v34 = *(v32 + qword_1EBDCAB20);
    OUTLINED_FUNCTION_2_54();
    v36 = *(v32 + qword_1EBDCAB18 + 8);
    v37 = *(v32 + qword_1EBDCAB18 + 16);
    v38 = *(v32 + qword_1EBDCAB18);
    v35 = v38;
    v39 = v36;
    v40 = v37;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0DA424(v35, v36, v37);
    sub_1BEFEF4F4(v34, v41, &v38, v32);
    swift_unknownObjectRelease();

    sub_1BEFF3798(v38, v39, v40);
  }

  return result;
}

uint64_t sub_1BF121DB4()
{
  v1 = *(v0 + qword_1EBDCAB10);

  sub_1BEFF3798(*(v0 + qword_1EBDCAB18), *(v0 + qword_1EBDCAB18 + 8), *(v0 + qword_1EBDCAB18 + 16));
  v2 = *(v0 + qword_1EBDCAB28 + 16);
}

uint64_t sub_1BF121E10()
{
  v0 = sub_1BF00B2D4();
  v1 = *(v0 + qword_1EBDCAB10);

  sub_1BEFF3798(*(v0 + qword_1EBDCAB18), *(v0 + qword_1EBDCAB18 + 8), *(v0 + qword_1EBDCAB18 + 16));
  v2 = *(v0 + qword_1EBDCAB28 + 16);

  return v0;
}

uint64_t sub_1BF121E74()
{
  v0 = sub_1BF121E10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id (*static Merging.throwError<A>(_:)(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a1;
  return sub_1BF12206C;
}

_BYTE *storeEnumTagSinglePayload for Merging(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF122158@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF12217C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF12218C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_1BF1221B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BF122200(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF12223C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF122250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF122264(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF122278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF1764E8(*(a1 + 16), 0);
  v4 = sub_1BF176654(&v6, v3 + 32, v2, a1);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF122324(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF175310(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF12449C(v6);
  *a1 = v2;
  return result;
}

uint64_t JSON.difference(from:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v6[0] = *a1;
  v6[1] = v3;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1BF1223F0(v6, &v5, a2);
}

uint64_t sub_1BF1223F0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v3;
  v8 = *a1 >> 61;
  v9 = MEMORY[0x1E69E7CC0];
  switch(v6 >> 61)
  {
    case 1uLL:
      if (v8 != 1)
      {
        goto LABEL_70;
      }

      v116 = a3;
      v37 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v123[0] = MEMORY[0x1E69E7CC0];
      v9 = v4;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v115 = v9;
      sub_1BF01716C(v9);
      v114 = v6;
      sub_1BF01716C(v6);
      v120 = v37 + 32;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v39 = 4;
      for (i = v5; ; v5 = i)
      {
        v40 = v39 - 4;
        v41 = *(v37 + 16);
        if (v39 - 4 == v41)
        {
          break;
        }

        if (v39 - 4 >= v41)
        {
          goto LABEL_117;
        }

        v42 = v38[2];
        if (v40 == v42)
        {
          break;
        }

        if (v40 >= v42)
        {
          goto LABEL_118;
        }

        v43 = v5;
        v44 = v37;
        v45 = *(v37 + 8 * v39);
        v46 = v38[v39];
        v127 = v39 - 4;
        sub_1BF01716C(v45);
        sub_1BF01716C(v46);
        v47 = sub_1BF17B6FC();
        v49 = v48;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(i + 16) + 1, 1, i);
          v43 = v53;
        }

        v51 = *(v43 + 16);
        v50 = *(v43 + 24);
        v9 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          sub_1BF0A6578(v50 > 1, v51 + 1, 1, v43);
          v43 = v54;
        }

        *(v43 + 16) = v9;
        v52 = v43 + 16 * v51;
        *(v52 + 32) = v47;
        *(v52 + 40) = v49;
        v126 = v45;
        v124 = v43;
        v125 = v46;
        sub_1BF1223F0(&v127, &v125, &v124);

        sub_1BF0CAC58(v127);
        sub_1BF017214(v46);
        sub_1BF017214(v45);
        ++v39;
        v37 = v44;
      }

      v55 = v38[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DD60(v55, v37);
      v9 = v56;
      v58 = v57;
      swift_unknownObjectRelease();
      v59 = v58 >> 1;
      if ((v58 >> 1) < v9)
      {
        goto LABEL_119;
      }

      if (v9 == v59)
      {
        goto LABEL_95;
      }

      if (v9 >= v59)
      {
        goto LABEL_122;
      }

      if (v9 < 0)
      {
        goto LABEL_123;
      }

      v60 = *(v37 + 16);
      if (v59 > v60 || v58 < 2 || v9 >= v60)
      {
        goto LABEL_124;
      }

      v63 = v123[0];
      do
      {
        v64 = *(v120 + 8 * v9);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = *(v63 + 16);
          sub_1BF0A6DDC();
          v63 = v68;
        }

        v65 = *(v63 + 16);
        if (v65 >= *(v63 + 24) >> 1)
        {
          sub_1BF0A6DDC();
          v63 = v69;
        }

        *(v63 + 16) = v65 + 1;
        v66 = v63 + 40 * v65;
        *(v66 + 32) = v64;
        *(v66 + 40) = i;
        *(v66 + 48) = v9;
        *(v66 + 56) = 0;
        *(v66 + 64) = 4;
        ++v9;
      }

      while (v59 != v9);
      v123[0] = v63;
      v5 = i;
LABEL_95:
      v97 = *(v37 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DD60(v97, v38);
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      v102 = v101 >> 1;
      if ((v101 >> 1) < v99)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v99 == v102)
      {

        sub_1BF017214(v114);
        result = sub_1BF017214(v115);
        v103 = v123[0];
LABEL_114:
        *v116 = v103;
        return result;
      }

      if (v99 >= v102)
      {
        goto LABEL_125;
      }

      if (v99 < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v104 = v38[2];
      if (v102 <= v104 && v101 >= 2 && v99 < v104)
      {
        v103 = v123[0];
        do
        {
          v107 = v38[v99 + 4];
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF01716C(v107);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = *(v103 + 16);
            sub_1BF0A6DDC();
            v103 = v111;
          }

          v108 = *(v103 + 16);
          if (v108 >= *(v103 + 24) >> 1)
          {
            sub_1BF0A6DDC();
            v103 = v112;
          }

          *(v103 + 16) = v108 + 1;
          v109 = v103 + 40 * v108;
          *(v109 + 32) = v107;
          *(v109 + 40) = v5;
          *(v109 + 48) = v99;
          *(v109 + 56) = 0;
          *(v109 + 64) = 5;
          ++v99;
        }

        while (v102 != v99);

        sub_1BF017214(v114);
        result = sub_1BF017214(v115);
        goto LABEL_114;
      }

LABEL_127:
      __break(1u);

      __break(1u);
      return result;
    case 2uLL:
      if (v8 == 2)
      {
        goto LABEL_28;
      }

      goto LABEL_70;
    case 3uLL:
      if (v8 != 3)
      {
        goto LABEL_70;
      }

LABEL_28:
      v32 = v6;
      v33 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v33 || (v34 = *a1, v35 = sub_1BF17B86C(), v4 = v34, (v35 & 1) != 0))
      {
        v34 = v4;
        sub_1BF01716C(v4);
        v36 = v32;
        goto LABEL_34;
      }

      sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BF17DEF0;
      *(v9 + 32) = v5;
      *(v9 + 40) = v32;
      *(v9 + 48) = v34;
      *(v9 + 56) = 0;
      *(v9 + 64) = 1;
      sub_1BF01716C(v34);
      sub_1BF01716C(v32);
      sub_1BF01716C(v34);
      sub_1BF01716C(v32);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_93;
    case 4uLL:
      if (v6 == 0x8000000000000000)
      {
        if (v8 == 4)
        {
          if (v4 == 0x8000000000000000)
          {
LABEL_115:
            v32 = v6;
            v36 = *a1;
            v34 = v4;
LABEL_34:
            sub_1BF01716C(v36);
LABEL_93:
            sub_1BF017214(v32);
            v72 = v34;
            goto LABEL_94;
          }

          if (v4 == 0x8000000000000008)
          {
LABEL_67:
            v70 = *a1;
            sub_1BF01716C(*a1);
            sub_1BF017214(v6);
            sub_1BF017214(v70);
            sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1BF17DEF0;
            *(v71 + 32) = v5;
            *(v71 + 40) = v6;
            *(v71 + 48) = v70;
            *(v71 + 56) = 0;
            *(v71 + 64) = 1;
LABEL_71:
            *a3 = v71;
            sub_1BF01716C(v70);
            sub_1BF01716C(v6);

            return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          }
        }
      }

      else if (v6 == 0x8000000000000008)
      {
        if (v8 == 4)
        {
          if (v4 != 0x8000000000000000)
          {
            if (v4 != 0x8000000000000008)
            {
              goto LABEL_70;
            }

            goto LABEL_115;
          }

          goto LABEL_67;
        }
      }

      else if (v4 == 0x8000000000000010)
      {
        sub_1BF017214(0x8000000000000010);
        v72 = 0x8000000000000010;
LABEL_94:
        result = sub_1BF017214(v72);
        *a3 = v9;
        return result;
      }

LABEL_70:
      v70 = *a1;
      sub_1BF01716C(*a1);
      sub_1BF01716C(v6);
      sub_1BF017214(v6);
      sub_1BF017214(v70);
      sub_1BF126628(0, &qword_1EBDCB2E8, &type metadata for JSONDifference.Change, MEMORY[0x1E69E6F90]);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1BF17DEF0;
      *(v71 + 32) = v5;
      *(v71 + 40) = v6;
      *(v71 + 48) = v70;
      *(v71 + 56) = 0;
      *(v71 + 64) = 0;
      goto LABEL_71;
    default:
      if (v8)
      {
        goto LABEL_70;
      }

      v115 = *a1;
      v116 = a3;
      v10 = *(v6 + 16);
      v11 = *(v4 + 16);
      v127 = MEMORY[0x1E69E7CC0];
      sub_1BF01716C(v4);
      v114 = v6;
      sub_1BF01716C(v6);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v123[0] = sub_1BF0B6098(v10);
      sub_1BF122324(v123);
      v117 = v10;
      v12 = *(v123[0] + 16);
      v119 = v11;
      if (v12)
      {
        v13 = (v123[0] + 48);
        do
        {
          v14 = *(v13 - 2);
          v9 = *(v13 - 1);
          v15 = *v13;
          v16 = *(v11 + 16);
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          sub_1BF01716C(v15);
          if (v16 && (v17 = sub_1BF014CA8(), (v18 & 1) != 0))
          {
            v19 = *(*(v11 + 56) + 8 * v17);
            sub_1BF01716C(v19);
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            v20 = v5;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BF0A6578(0, *(v5 + 16) + 1, 1, v5);
              v20 = v30;
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_1BF0A6578(v21 > 1, v22 + 1, 1, v20);
              v20 = v31;
            }

            *(v20 + 16) = v22 + 1;
            v23 = v20 + 16 * v22;
            *(v23 + 32) = v14;
            *(v23 + 40) = v9;
            v126 = v15;
            v124 = v20;
            v125 = v19;
            sub_1BF1223F0(v123, &v125, &v124);

            sub_1BF0CAC58(v123[0]);
            sub_1BF017214(v19);
            sub_1BF017214(v15);
            v11 = v119;
          }

          else
          {
            v24 = v127;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = *(v24 + 16);
              sub_1BF0A6DDC();
              v24 = v28;
            }

            v25 = *(v24 + 16);
            if (v25 >= *(v24 + 24) >> 1)
            {
              sub_1BF0A6DDC();
              v24 = v29;
            }

            *(v24 + 16) = v25 + 1;
            v26 = v24 + 40 * v25;
            *(v26 + 32) = v15;
            *(v26 + 40) = v5;
            *(v26 + 48) = v14;
            *(v26 + 56) = v9;
            *(v26 + 64) = 2;
            v127 = v24;
          }

          v13 += 3;
          --v12;
        }

        while (v12);
      }

      v74 = 0;
      v75 = v11 + 64;
      v76 = 1 << *(v11 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v78 = v77 & *(v11 + 64);
      v79 = (v76 + 63) >> 6;
      v122 = v5;
      while (2)
      {
        if (v78)
        {
          goto LABEL_82;
        }

LABEL_78:
        v80 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
        }

        else
        {
          if (v80 < v79)
          {
            v78 = *(v75 + 8 * v80);
            ++v74;
            if (v78)
            {
              v74 = v80;
LABEL_82:
              v81 = __clz(__rbit64(v78));
              v78 &= v78 - 1;
              v82 = v81 | (v74 << 6);
              v83 = (*(v11 + 48) + 16 * v82);
              v85 = *v83;
              v84 = v83[1];
              v86 = *(*(v11 + 56) + 8 * v82);
              v87 = *(v117 + 16);
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              v118 = v86;
              v88 = v86;
              v9 = v84;
              sub_1BF01716C(v88);
              if (v87 && (sub_1BF014CA8(), (v89 & 1) != 0))
              {
                sub_1BF017214(v118);
              }

              else
              {
                v90 = v127;
                _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v93 = *(v90 + 16);
                  sub_1BF0A6DDC();
                  v90 = v94;
                }

                v91 = *(v90 + 16);
                if (v91 >= *(v90 + 24) >> 1)
                {
                  sub_1BF0A6DDC();
                  v90 = v95;
                }

                *(v90 + 16) = v91 + 1;
                v92 = v90 + 40 * v91;
                v11 = v119;
                *(v92 + 32) = v118;
                *(v92 + 40) = v122;
                *(v92 + 48) = v85;
                *(v92 + 56) = v84;
                *(v92 + 64) = 3;
                v127 = v90;
              }

              continue;
            }

            goto LABEL_78;
          }

          v9 = v127;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_91:
            v96 = *(v9 + 16);
            v123[0] = v9 + 32;
            v123[1] = v96;
            sub_1BF1243A8(v123);
            sub_1BF017214(v114);
            result = sub_1BF017214(v115);
            *v116 = v9;
            return result;
          }
        }

        break;
      }

      sub_1BF1071CC(v9);
      v9 = v113;
      goto LABEL_91;
  }
}