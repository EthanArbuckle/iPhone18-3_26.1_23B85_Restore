uint64_t _s15SonicFoundation8SQLErrorV4CodeO8ExtendedO2OKO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_8_23();
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E29F0()
{
  OUTLINED_FUNCTION_8_23();
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E2A5C()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t static SQLError.Code.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  switch(*(a1 + 4))
  {
    case 1:
      if (v4 != 1)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    case 5:
      if (v4 == 5)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    case 6:
      if (v4 == 6)
      {
        goto LABEL_35;
      }

      goto LABEL_57;
    case 7:
      if (v4 != 7)
      {
        goto LABEL_57;
      }

      v7 = *a2;
      if (*a1 != 33)
      {
        v12 = v7 == 33;
        goto LABEL_53;
      }

      if (v7 == 33)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_57;
      }

LABEL_43:
      v11 = *a2;
      if (*a1 != 3)
      {
        v12 = v11 == 3;
        goto LABEL_53;
      }

      if (v11 == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 9:
      if (v4 != 9)
      {
        goto LABEL_57;
      }

LABEL_35:
      v9 = *a2;
      if (*a1 != 6)
      {
        v12 = v9 == 6;
        goto LABEL_53;
      }

      if (v9 == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 0xA:
      if (v4 != 10)
      {
        goto LABEL_57;
      }

      v10 = *a2;
      if (*a1 == 12)
      {
        if (v10 == 12)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v12 = v10 == 12;
LABEL_53:
        v13 = (v3 ^ v2);
        if (!v12 && v13 == 0)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_57;
    case 0xB:
      if (v4 != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    case 0xC:
      if (v4 != 12)
      {
        goto LABEL_57;
      }

LABEL_29:
      v8 = *a2;
      if (*a1 != 2)
      {
        if (v8 == 2 || ((v3 ^ v2) & 1) != 0)
        {
          goto LABEL_57;
        }

LABEL_49:
        v5 = 1;
        return v5 & 1;
      }

      if (v8 == 2)
      {
        goto LABEL_49;
      }

LABEL_57:
      v5 = 0;
      return v5 & 1;
    case 0xD:
      if (v4 != 13)
      {
        goto LABEL_57;
      }

LABEL_33:
      v5 = v3 ^ v2 ^ 1;
      return v5 & 1;
    case 0xE:
      switch(*a1)
      {
        case 1:
          if (v4 != 14 || v3 != 1)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 2:
          if (v4 != 14 || v3 != 2)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 3:
          if (v4 != 14 || v3 != 3)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 4:
          if (v4 != 14 || v3 != 4)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 5:
          if (v4 != 14 || v3 != 5)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 6:
          if (v4 != 14 || v3 != 6)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 7:
          if (v4 != 14 || v3 != 7)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 8:
          if (v4 != 14 || v3 != 8)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 9:
          if (v4 != 14 || v3 != 9)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 10:
          if (v4 != 14 || v3 != 10)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 11:
          if (v4 != 14 || v3 != 11)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 12:
          if (v4 != 14 || v3 != 12)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 13:
          if (v4 != 14 || v3 != 13)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 14:
          if (v4 != 14 || v3 != 14)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 15:
          if (v4 != 14 || v3 != 15)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 16:
          if (v4 != 14 || v3 != 16)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 17:
          if (v4 != 14 || v3 != 17)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        default:
          if (v4 != 14 || v3 != 0)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
      }

    default:
      if (*(a2 + 4))
      {
        goto LABEL_57;
      }

      v5 = v2 == v3;
      return v5 & 1;
  }
}

void SQLError.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *(v1 + 4);
  *(a1 + 4) = v2;
}

uint64_t SQLError.code.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 4) = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t SQLError.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLError.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SQLError.message.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26B1E2F64(uint64_t a1)
{
  v2 = sub_26B1E3EA4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B1E2FA0(uint64_t a1)
{
  v2 = sub_26B1E3EA4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SQLError.errorUserInfo.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_26B1E30D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  v6 = *MEMORY[0x277CCA068];
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v7;
  sub_26B2128F0();
  MEMORY[0x26D670040](2112032, 0xE300000000000000);
  MEMORY[0x26D670040](v3, v4);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  return sub_26B2128C0();
}

void sub_26B1E30D0()
{
  if (!qword_2803E6C68)
  {
    sub_26B159ECC();
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6C68);
    }
  }
}

unint64_t sub_26B1E312C()
{
  result = qword_2803E8300;
  if (!qword_2803E8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8300);
  }

  return result;
}

unint64_t sub_26B1E3184()
{
  result = qword_2803E8308;
  if (!qword_2803E8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8308);
  }

  return result;
}

unint64_t sub_26B1E31DC()
{
  result = qword_2803E8310;
  if (!qword_2803E8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8310);
  }

  return result;
}

unint64_t sub_26B1E3234()
{
  result = qword_2803E8318;
  if (!qword_2803E8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8318);
  }

  return result;
}

unint64_t sub_26B1E328C()
{
  result = qword_2803E8320;
  if (!qword_2803E8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8320);
  }

  return result;
}

unint64_t sub_26B1E32E4()
{
  result = qword_2803E8328;
  if (!qword_2803E8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8328);
  }

  return result;
}

unint64_t sub_26B1E333C()
{
  result = qword_2803E8330;
  if (!qword_2803E8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8330);
  }

  return result;
}

unint64_t sub_26B1E3394()
{
  result = qword_2803E8338;
  if (!qword_2803E8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8338);
  }

  return result;
}

unint64_t sub_26B1E33EC()
{
  result = qword_2803E8340;
  if (!qword_2803E8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8340);
  }

  return result;
}

unint64_t sub_26B1E3444()
{
  result = qword_2803E8348;
  if (!qword_2803E8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8348);
  }

  return result;
}

unint64_t sub_26B1E349C()
{
  result = qword_2803E8350;
  if (!qword_2803E8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8350);
  }

  return result;
}

unint64_t sub_26B1E34F4()
{
  result = qword_2803E8358;
  if (!qword_2803E8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8358);
  }

  return result;
}

unint64_t sub_26B1E354C()
{
  result = qword_2803E8360;
  if (!qword_2803E8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8360);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF2 && *(a1 + 5))
    {
      v2 = *a1 + 241;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 0xE)
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

uint64_t storeEnumTagSinglePayload for SQLError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 4) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1E3670(uint64_t a1)
{
  if (*(a1 + 4) <= 0xDu)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_26B1E3688(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code.Extended.IO(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLError.Code.Extended.IO(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3848(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E38CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3994(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E3A18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code.Extended.Constraint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLError.Code.Extended.Constraint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3C64(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_3(a1);
}

_BYTE *sub_26B1E3CB0(_BYTE *result, int a2, int a3)
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

uint64_t sub_26B1E3D58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E3DDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B1E3EA4()
{
  result = qword_2803E8368;
  if (!qword_2803E8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8368);
  }

  return result;
}

uint64_t sub_26B1E3FC8@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26B1E3FF4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t SQLColumnResult<>.init(statement:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 16) + 8))(a1, a2, AssociatedTypeWitness);
  if (!v4)
  {
    return (*(a4 + 56))(v12, a3, a4);
  }

  return result;
}

uint64_t SQLValue.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v9 = *(v20 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = *(*a1 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v4)
  {
  }

  v18 = v20;
  (*(v20 + 16))(v12, v14, AssociatedTypeWitness);
  (*(a3 + 56))(v12, a2, a3);

  return (*(v18 + 8))(v14, AssociatedTypeWitness);
}

uint64_t SQLValueError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t SQLValueError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLValueError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_26B1E30D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  v4 = *MEMORY[0x277CCA068];
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  sub_26B2128F0();
  return sub_26B2128C0();
}

uint64_t sub_26B1E4434(uint64_t a1)
{
  v2 = sub_26B1E4544();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B1E4470(uint64_t a1)
{
  v2 = sub_26B1E4544();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_26B1E4544()
{
  result = qword_2803E8370;
  if (!qword_2803E8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8370);
  }

  return result;
}

uint64_t sub_26B1E4598(Swift::OpaquePointer a1, Swift::Int a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_26B1E45B4(a1, a2);
}

uint64_t sub_26B1E45B4(Swift::OpaquePointer a1, Swift::Int a2)
{
  sub_26B2128F0();
  String.bind(to:index:)(a1, a2);
}

uint64_t SQLBindable<>.bind(to:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16 - v12;
  result = (*(a4 + 64))(a3, a4);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t SQLBindPosition.Error.message.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t SQLBindPosition.Error.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static SQLBindPosition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_9();
      sub_26B1D679C(v19, v20, 0);
      v21 = OUTLINED_FUNCTION_2_33();
      sub_26B1D679C(v21, v22, 0);
      return v2 == v4;
    }

LABEL_11:
    v25 = OUTLINED_FUNCTION_2_33();
    sub_26B1E492C(v25, v26, v5);
    v27 = OUTLINED_FUNCTION_9();
    sub_26B1D679C(v27, v28, v3);
    v29 = OUTLINED_FUNCTION_2_33();
    sub_26B1D679C(v29, v30, v5);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v24 = a1[1];
    sub_26B2128F0();
    goto LABEL_11;
  }

  if (v2 != v4 || a1[1] != a2[1])
  {
    OUTLINED_FUNCTION_9();
    v7 = sub_26B213E30();
    v8 = OUTLINED_FUNCTION_2_33();
    sub_26B1E492C(v8, v9, 1);
    v10 = OUTLINED_FUNCTION_0_36();
    sub_26B1E492C(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_0_36();
    sub_26B1D679C(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_2_33();
    sub_26B1D679C(v16, v17, 1);
    return v7 & 1;
  }

  v23 = 1;
  v31 = OUTLINED_FUNCTION_0_36();
  sub_26B1E492C(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_0_36();
  sub_26B1E492C(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_0_36();
  sub_26B1D679C(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_0_36();
  sub_26B1D679C(v40, v41, v42);
  return v23;
}

uint64_t sub_26B1E492C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26B2128F0();
  }

  return result;
}

uint64_t SQLBindPosition.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    MEMORY[0x26D671480](1);

    return _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    return MEMORY[0x26D671480](v1);
  }
}

uint64_t SQLBindPosition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26B214030();
  if (v3 == 1)
  {
    MEMORY[0x26D671480](1);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    MEMORY[0x26D671480](v1);
  }

  return sub_26B214070();
}

uint64_t sub_26B1E4A54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26B214030();
  if (v3 == 1)
  {
    MEMORY[0x26D671480](1);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    MEMORY[0x26D671480](v1);
  }

  return sub_26B214070();
}

unint64_t sub_26B1E4ADC()
{
  result = qword_2803E8378[0];
  if (!qword_2803E8378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E8378);
  }

  return result;
}

uint64_t sub_26B1E4B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_26B1E4BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1E4C20@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = sub_26B211B70();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_26B1E4C50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v2;
  return sub_26B211B40();
}

uint64_t sub_26B1E4CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return a4();
}

uint64_t SQLCodable<>.init(nativeValue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(&v9, a3, a4);
  v7 = *(a4 + 16);
  sub_26B211B40();
  sub_26B14FF4C(a1, a2);
}

uint64_t SQLCodable<>.nativeValue.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v6);
  v3 = *(a2 + 24);
  v4 = sub_26B211B70();

  return v4;
}

void sub_26B1E4EF0(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v1[1] = v2 + 1;
    v7 = v1[2];
    if (!__OFADD__(v7, 1))
    {
      v1[2] = v7 + 1;
      *a1 = v7;
      a1[1] = v6;
      a1[2] = v5;
      sub_26B2128F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26B1E4F44(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26B1E50F4(a1);
  return v5;
}

uint64_t sub_26B1E4F84()
{
  sub_26B2136C0();

  v0 = sub_26B2141F0();
  MEMORY[0x26D670040](v0);

  sub_26B14FCC8();
  sub_26B2134A0();

  OUTLINED_FUNCTION_4_28();

  OUTLINED_FUNCTION_4_28();

  v1 = OUTLINED_FUNCTION_4_28();

  return v1;
}

uint64_t sub_26B1E51EC()
{
  sub_26B1E517C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B1E5258(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  sub_26B168D4C(&unk_287BBB0C0);
  return v3;
}

uint64_t sub_26B1E52AC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  memset(v56, 0, 41);
  v43 = a3;
  v6 = *(sub_26B1E5258(a2, a3) + 16);

  i = sub_26B1E5778(v56, v6);
  j = v5[2];
  __dst = a4;
  if (j)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v9 = 0;
      v10 = v5 + 4;
      v40 = v5;
      v41 = i + 40;
      v38 = v5 + 4;
      v39 = j;
      while (v9 < v5[2])
      {
        v11 = &v10[5 * v9];
        if (!*(v11 + 16))
        {
          v13 = *v11;
          v12 = v11[1];
          v44 = v11[3];
          v46 = v11[4];
          if (*(v11 + 17) != 1)
          {
            sub_26B2128F0();
            sub_26B2136C0();
            OUTLINED_FUNCTION_11_15();
            MEMORY[0x26D670040](0xD000000000000015);
            sub_26B2138F0();
            OUTLINED_FUNCTION_0_37();
            result = sub_26B2139E0();
            __break(1u);
            return result;
          }

          j = i;
          sub_26B2128F0();
          v14 = sub_26B1E5258(a2, v43);
          v15 = 0;
          v5 = (v14 + 40);
          v16 = *(v14 + 16);
          for (i = v41; ; i += 48)
          {
            if (v16 == v15)
            {

              goto LABEL_18;
            }

            v17 = *(v5 - 1) == v13 && *v5 == v12;
            if (v17 || (OUTLINED_FUNCTION_33_7() & 1) != 0)
            {
              break;
            }

            ++v15;
            v5 += 3;
          }

          if (v15 >= j[2])
          {
            goto LABEL_50;
          }

          v18 = *i;
          *(i - 8) = v13;
          *i = v12;
          *(i + 8) = 256;
          *(i + 16) = v44;
          *(i + 24) = v46;
          *(i + 32) = 1;
LABEL_18:

          i = j;
          j = v39;
          v5 = v40;
          v10 = v38;
        }

        if (++v9 == j)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      i = sub_26B16BB4C(i);
    }
  }

LABEL_20:
  v19 = 0;
  v5 = 0xEB000000006E6F69;
  v20 = *(i + 16);
  for (j = (i + 40); ; j += 6)
  {
    if (v20 == v19)
    {

      __dst[64] = 0;
      *(__dst + 2) = 0u;
      *(__dst + 3) = 0u;
      *__dst = 0u;
      *(__dst + 1) = 0u;
      return result;
    }

    if (v19 >= *(i + 16))
    {
      goto LABEL_49;
    }

    if (!*j)
    {

      goto LABEL_31;
    }

    if (*(j - 1) == 0x7463656C6C6F635FLL && *j == 0xEB000000006E6F69)
    {
      break;
    }

    v22 = sub_26B213E30();

    if (v22)
    {
      goto LABEL_34;
    }

LABEL_31:
    ++v19;
  }

LABEL_34:
  v24 = 0;
  v25 = 0;
  v26 = -*(i + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_35:
  v27 = v25 - 1;
  v28 = i + 48 * v25;
  while (v26 + v27 != -1)
  {
    if (v27 + 1 >= *(i + 16))
    {
      goto LABEL_48;
    }

    v29 = *(v28 + 40);
    ++v27;
    v28 += 48;
    if (v29)
    {
      v47 = i;
      v30 = *(v28 - 16);
      j = *v28;
      v45 = *(v28 + 8);
      v31 = *(v28 + 24);
      if (v27 < 0x20)
      {
        v24 |= 1 << v27;
      }

      sub_26B2128F0();
      LODWORD(v43) = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = v5[2];
        sub_26B16B4E8();
        v5 = v35;
      }

      v32 = v5[2];
      if (v32 >= v5[3] >> 1)
      {
        sub_26B16B4E8();
        v5 = v36;
      }

      v25 = v27 + 1;
      v5[2] = v32 + 1;
      v33 = &v5[6 * v32];
      v33[4] = v30;
      v33[5] = v29;
      *(v33 + 48) = j;
      *(v33 + 49) = BYTE1(j) & 1;
      *(v33 + 7) = v45;
      *(v33 + 72) = v31 & 1;
      i = v47;
      goto LABEL_35;
    }
  }

  v57 = 0;
  LODWORD(__src[0]) = v24;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = v5;
  LOBYTE(__src[4]) = 0;
  __src[5] = 0x3FF0000000000000;
  LOBYTE(__src[6]) = 0;
  __src[7] = 1000;
  LOBYTE(__src[8]) = 0;
  memcpy(__dst, __src, 0x41uLL);
  LODWORD(v50[0]) = v24;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = v5;
  LOBYTE(v51) = 0;
  v52 = 0x3FF0000000000000;
  v53 = 0;
  v54 = 1000;
  v55 = 0;
  sub_26B1EB894(__src, v48);
  return sub_26B1EB8F0(v50);
}

uint64_t sub_26B1E5778(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_26B1EC100(0, &qword_2803E7080);
      v4 = sub_26B212ED0();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 48)
      {
        v7 = (v4 + i);
        v8 = *v3;
        v9 = v3[1];
        *(v7 + 25) = *(v3 + 25);
        *v7 = v8;
        v7[1] = v9;
        if (!v5)
        {
          break;
        }

        sub_26B1EB944(v3, &v10);
        --v5;
      }
    }

    else
    {
      sub_26B1EB9B8(result);
      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

void sub_26B1E5830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_11_6();
  v83 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v84 = v17;
  v78 = v18;
  v19 = *(*(v11 + 8) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_12();
  v77 = v20;
  v21 = *(*(sub_26B2133E0() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v22);
  v75 = v72 - v23;
  OUTLINED_FUNCTION_23_7();
  v74 = sub_26B213A20();
  OUTLINED_FUNCTION_27(v74);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v26);
  v72[1] = v72 - v27;
  OUTLINED_FUNCTION_23_7();
  v76 = v19;
  v28 = *(*(sub_26B213A10() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v29);
  v73 = v72 - v30;
  OUTLINED_FUNCTION_9_0();
  v80 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_0();
  v72[0] = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v79 = v72 - v38;
  v39 = 0;
  v40 = 0;
  v41 = *v16;
  v81 = v16[1];
  v82 = v41;
  v42 = MEMORY[0x277D84F90];
  v43 = v12;
  do
  {
    if ((v84 >> v40))
    {
      v44 = sub_26B1E5258(v14, v12);
      if (v40 >= *(v44 + 16))
      {
        __break(1u);
        return;
      }

      v45 = v14;
      v47 = *(v44 + v39 + 32);
      v46 = *(v44 + v39 + 40);
      sub_26B2128F0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v42 + 16);
        sub_26B16B280();
        v42 = v51;
      }

      v48 = *(v42 + 16);
      if (v48 >= *(v42 + 24) >> 1)
      {
        sub_26B16B280();
        v42 = v52;
      }

      *(v42 + 16) = v48 + 1;
      v49 = v42 + 16 * v48;
      *(v49 + 32) = v47;
      *(v49 + 40) = v46;
      v12 = v43;
      v14 = v45;
    }

    ++v40;
    v39 += 24;
  }

  while (v40 != 32);
  v53 = sub_26B1E5D80(0x7463656C6C6F635FLL, 0xEB000000006E6F69, v42);
  if (v54)
  {

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000022, 0x800000026B220EE0);
    OUTLINED_FUNCTION_23_7();
    _s15CollectionTableVMa();
    v55 = sub_26B2141F0();
    MEMORY[0x26D670040](v55);

    OUTLINED_FUNCTION_11_15();
    MEMORY[0x26D670040](0xD000000000000010);
    v56 = v85;
    v57 = v86;
    sub_26B1B34BC();
    swift_allocError();
    *v58 = v56;
    v58[1] = v57;
    swift_willThrow();
  }

  else
  {
    v59 = v53;
    OUTLINED_FUNCTION_23_7();
    v60 = _s12ReferenceBoxCMa();
    v62 = v81;
    v61 = v82;
    v85 = v82;
    v86 = v81;
    v63 = v83;
    SQLTableFunctionCursorArguments.subscript.getter(v59, v60, v60, &off_287BC11B0);
    if (v63)
    {
    }

    else
    {
      v64 = v79;
      v65 = v80;
      (*(v80 + 16))(v79, a10 + *(*a10 + 88), v14);
      if (*(v42 + 16) < 2uLL)
      {
      }

      else
      {
        v85 = v61;
        v86 = v62;
        v66 = v72[0];
        (*(v12 + 24))(v42, &v85, v14, v12);
        (*(v65 + 8))(v64, v14);

        (*(v65 + 32))(v64, v66, v14);
      }

      MEMORY[0x26D670170](v14, v76);
      v67 = v73;
      sub_26B2139F0();

      (*(v65 + 8))(v64, v14);
      v68 = v75;
      OUTLINED_FUNCTION_30_9();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v77);
      sub_26B1E5E0C(v67, v68, 0, 1, v12, v78);
    }
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1E5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_26B213E30() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_26B1E5E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(*(a5 + 8) + 8);
  v12 = sub_26B213A10();
  OUTLINED_FUNCTION_27(v12);
  (*(v13 + 32))(a6, a1);
  v14 = _s15CollectionTableV6CursorVMa();
  v15 = *(v14 + 36);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_12();
  v16 = sub_26B2133E0();
  OUTLINED_FUNCTION_27(v16);
  result = (*(v17 + 32))(a6 + v15, a2);
  v19 = a6 + *(v14 + 40);
  *v19 = a3;
  *(v19 + 8) = a4 & 1;
  return result;
}

void sub_26B1E5F20()
{
  OUTLINED_FUNCTION_11_6();
  v48 = v0;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v50 = v1;
  v4 = *(*(v2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_23_7();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v46 = v8;
  v47 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_27(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  OUTLINED_FUNCTION_9_0();
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  sub_26B213A10();
  v27 = v48;
  sub_26B213A00();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, TupleTypeMetadata2);
  if (EnumTagSinglePayload == 1)
  {
    (*(v46 + 8))(v13, v47);
    v28 = v50;
    v29 = *(v50 + 36);
    v30 = sub_26B2133E0();
    OUTLINED_FUNCTION_27(v30);
    (*(v31 + 8))(v27 + v29);
    OUTLINED_FUNCTION_30_9();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, AssociatedTypeWitness);
    v35 = v27 + *(v28 + 40);
    *v35 = 0;
    *(v35 + 8) = 1;
  }

  else
  {
    v36 = *(TupleTypeMetadata2 + 48);
    v37 = *(v14 + 48);
    *v19 = *v13;
    v38 = *(v21 + 32);
    v38(&v19[v37], &v13[v36], AssociatedTypeWitness);
    v39 = *v19;
    v38(v26, &v19[*(v14 + 48)], AssociatedTypeWitness);
    v40 = v50;
    v41 = v27 + *(v50 + 40);
    *v41 = v39;
    *(v41 + 8) = 0;
    v42 = *(v40 + 36);
    v43 = sub_26B2133E0();
    OUTLINED_FUNCTION_27(v43);
    (*(v44 + 8))(v27 + v42);
    v38((v27 + v42), v26, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v27 + v42, 0, 1, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_10_2();
}

void sub_26B1E6258()
{
  OUTLINED_FUNCTION_11_6();
  v37 = v0;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  v36 = *(v3 + 24);
  v8 = *(*(v36 + 8) + 8);
  v35[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  v17 = v35 - v16;
  OUTLINED_FUNCTION_9_0();
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v22);
  v24 = v35 - v23;
  v25 = *v6;
  v26 = v6[1];
  (*(v12 + 16))(v17, v37 + *(v4 + 36), v10);
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v17, v10);
    v27 = v38;
    *(v38 + 24) = &type metadata for SQLNull;
    *(v27 + 32) = &protocol witness table for SQLNull;
  }

  else
  {
    v28 = v38;
    (*(v19 + 32))(v24, v17, AssociatedTypeWitness);
    v39[0] = v25;
    v39[1] = v26;
    (*(v36 + 32))(v40, v39, v24);
    if (v1)
    {
      v29 = *(v19 + 8);
      v30 = OUTLINED_FUNCTION_28_8();
      v31(v30);
    }

    else
    {
      v32 = *(v19 + 8);
      v33 = OUTLINED_FUNCTION_28_8();
      v34(v33);
      sub_26B150514(v40, v28);
    }
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t static _SQLBindableElement<>.columns()(uint64_t a1, uint64_t a2)
{
  sub_26B16CB64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B2162F0;
  OUTLINED_FUNCTION_27_9();
  *(v5 + 32) = v6;
  *(v5 + 40) = 0xE700000000000000;
  (*(*(a2 + 24) + 32))(a1);
  return v4;
}

void sub_26B1E6640()
{
  if (!qword_2803E7060)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7060);
    }
  }
}

uint64_t sub_26B1E66A4(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_value *a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v11 = *(i - 1);
      v12 = *i;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v13 = *(a2 + 8 * v9);
    if (!v13)
    {
      sub_26B2136C0();

      v15 = sub_26B213B90();
      MEMORY[0x26D670040](v15);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x6D616E79444C5153, 0xEF65756C61566369);
      sub_26B1B34BC();
      swift_allocError();
      *v16 = 0xD00000000000002ALL;
      v16[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v7 == v9;
    }

    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    v14 = sub_26B1EC55C(v13);

    v6 = v9 + 1;
    if (v14 != a4)
    {
      return v7 == v9;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E691C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (1)
  {
    if (v4 == v3)
    {
      return 1;
    }

    if (*(v5 - 1) != 0x746E656D656C65 || *v5 != 0xE700000000000000)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v9 = *(a2 + 8 * v3);
    if (!v9)
    {
      sub_26B2136C0();

      v17 = 0xD00000000000002ALL;
      v18 = 0x800000026B2209F0;
      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      v12 = 0x6C6C754E4C5153;
      v13 = 0xE700000000000000;
      goto LABEL_12;
    }

    v10 = sqlite3_value_type(*(a2 + 8 * v3));
    v5 += 2;
    ++v3;
    if (v10 != 5)
    {
      sub_26B2136C0();

      v17 = 0xD00000000000001ELL;
      v18 = 0x800000026B220150;
      sqlite3_value_type(v9);
      v11 = sub_26B213B90();
      MEMORY[0x26D670040](v11);

      v12 = 0x65756C617620;
      v13 = 0xE600000000000000;
LABEL_12:
      MEMORY[0x26D670040](v12, v13);
      sub_26B1B34BC();
      swift_allocError();
      *v15 = v17;
      v15[1] = v18;
      swift_willThrow();
      return 1;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

BOOL sub_26B1E6BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = 0;
  v91 = *MEMORY[0x277D85DE8];
  v86 = a5 >> 62;
  v87 = *(a1 + 16);
  v74 = HIDWORD(a4);
  v9 = __OFSUB__(HIDWORD(a4), a4);
  v77 = v9;
  v75 = BYTE6(a5);
  v76 = HIDWORD(a4) - a4;
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5 == 0xC000000000000000;
  }

  v11 = v10;
  v85 = v11;
  v78 = a4;
  v12 = (a1 + 40);
  v73 = a4 >> 32;
  while (2)
  {
    v13 = v87 == v8;
    if (v87 == v8)
    {
      goto LABEL_106;
    }

    v14 = *(v12 - 1);
    v15 = *v12;
    if (v14 != 0x746E656D656C65 || v15 != 0xE700000000000000)
    {
      v17 = *(v12 - 1);
      v18 = *v12;
      if ((sub_26B213E30() & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    v19 = *(v7 + 8 * v8);
    if (!v19)
    {
      *&__dst = 0;
      *(&__dst + 1) = 0xE000000000000000;
      sub_26B2136C0();

      *&__dst = 0xD00000000000002ALL;
      *(&__dst + 1) = 0x800000026B2209F0;
      __s2 = v8;
      v66 = sub_26B213B90();
      MEMORY[0x26D670040](v66);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](1635017028, 0xE400000000000000);
      v67 = *(&__dst + 1);
      v68 = __dst;
      sub_26B1B34BC();
      swift_allocError();
      goto LABEL_105;
    }

    v20 = sqlite3_value_blob(*(v7 + 8 * v8));
    v21 = sqlite3_value_bytes(v19);
    v22 = v21 == 1;
    if (v21 >= 1)
    {
      if (v20)
      {
        v23 = v21;
        v24 = v21;
        if (v21 < 0xF)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v21;
          memcpy(&__dst, v20, v21);
          v14 = __dst;
          v15 = v84 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v84 = v15;
        }

        else
        {
          v25 = sub_26B211D50();
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          swift_allocObject();
          if (v23 == 0x7FFFFFFF)
          {
            v28 = sub_26B211D00();
            sub_26B211F60();
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_26B219F00;
            v15 = v28 | 0x8000000000000000;
          }

          else
          {
            v14 = v24 << 32;
            v15 = sub_26B211D00() | 0x4000000000000000;
          }
        }

        goto LABEL_26;
      }

      v67 = 0x800000026B220E90;
      sub_26B1B34BC();
      swift_allocError();
      v68 = 0xD00000000000002BLL;
LABEL_105:
      *v69 = v68;
      v69[1] = v67;
      swift_willThrow();
      goto LABEL_106;
    }

    v14 = 0;
    v15 = 0xC000000000000000;
LABEL_26:
    v29 = v15 >> 62;
    if (!v22)
    {
      v33 = 0;
      switch(v86)
      {
        case 0uLL:
          v33 = v75;
          goto LABEL_39;
        case 1uLL:
          v33 = v76;
          if (v77)
          {
            goto LABEL_109;
          }

          goto LABEL_39;
        case 2uLL:
          v35 = *(a4 + 16);
          v34 = *(a4 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (!v36)
          {
            goto LABEL_39;
          }

          goto LABEL_110;
        case 3uLL:
          goto LABEL_39;
        default:
          goto LABEL_129;
      }
    }

    v30 = v85;
    v33 = 0;
    if (v15 >> 62 != 3)
    {
      v30 = 0;
    }

    if ((v30 & 1) != 0 && !v14 && v15 == 0xC000000000000000)
    {
      v31 = 0;
      v32 = 0xC000000000000000;
LABEL_60:
      sub_26B14FF4C(v31, v32);
      goto LABEL_101;
    }

LABEL_39:
    switch(v29)
    {
      case 1uLL:
        LODWORD(v37) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
        }

        v37 = v37;
LABEL_48:
        if (v33 == v37)
        {
          if (v33 < 1)
          {
LABEL_59:
            v31 = v14;
            v32 = v15;
            goto LABEL_60;
          }

          v40 = v14 >> 32;
          switch(v86)
          {
            case 1:
              if (v73 < v78)
              {
                goto LABEL_111;
              }

              v53 = v6;
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              v54 = sub_26B211D10();
              if (!v54)
              {
                goto LABEL_80;
              }

              v55 = sub_26B211D40();
              if (__OFSUB__(v78, v55))
              {
                goto LABEL_114;
              }

              v54 += v78 - v55;
LABEL_80:
              sub_26B211D30();
              v47 = v54;
              v48 = v14;
              v49 = v15;
              v50 = v53;
              goto LABEL_81;
            case 2:
              v81 = v6;
              v44 = *(a4 + 16);
              v72 = *(a4 + 24);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              v45 = sub_26B211D10();
              if (!v45)
              {
                goto LABEL_64;
              }

              v46 = sub_26B211D40();
              if (__OFSUB__(v44, v46))
              {
                goto LABEL_113;
              }

              v45 += v44 - v46;
LABEL_64:
              if (__OFSUB__(v72, v44))
              {
                goto LABEL_112;
              }

              sub_26B211D30();
              v47 = v45;
              v48 = v14;
              v49 = v15;
              v50 = v81;
LABEL_81:
              sub_26B1EB634(v47, v48, v49, &__dst);
              if (v50)
              {
                goto LABEL_128;
              }

              v6 = 0;
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              v56 = __dst;
              sub_26B14FF4C(v14, v15);
              v7 = a2;
              if ((v56 & 1) == 0)
              {
                goto LABEL_106;
              }

              break;
            case 3:
              *(&__dst + 6) = 0;
              *&__dst = 0;
              if (v29 == 2)
              {
                v80 = v6;
                v58 = *(v14 + 16);
                v59 = *(v14 + 24);
                sub_26B14F044(v14, v15);
                v41 = sub_26B211D10();
                if (v41)
                {
                  v60 = sub_26B211D40();
                  if (__OFSUB__(v58, v60))
                  {
                    goto LABEL_119;
                  }

                  v41 += v58 - v60;
                }

                v36 = __OFSUB__(v59, v58);
                v61 = v59 - v58;
                if (v36)
                {
                  goto LABEL_117;
                }

                v62 = sub_26B211D30();
                if (!v41)
                {
                  goto LABEL_124;
                }

                goto LABEL_96;
              }

              if (v29 != 1)
              {
LABEL_84:
                __s2 = v14;
                LOWORD(v89) = v15;
                BYTE2(v89) = BYTE2(v15);
                BYTE3(v89) = BYTE3(v15);
                BYTE4(v89) = BYTE4(v15);
                BYTE5(v89) = BYTE5(v15);
                v57 = memcmp(&__dst, &__s2, BYTE6(v15));
                sub_26B14FF4C(v14, v15);
                goto LABEL_100;
              }

              if (v40 < v14)
              {
                goto LABEL_115;
              }

              v80 = v6;
              sub_26B14F044(v14, v15);
              v41 = sub_26B211D10();
              if (v41)
              {
                v51 = sub_26B211D40();
                if (__OFSUB__(v14, v51))
                {
                  goto LABEL_121;
                }

                v41 += v14 - v51;
              }

              v43 = sub_26B211D30();
              if (!v41)
              {
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                *&__dst = 0;
                *(&__dst + 1) = 0xE000000000000000;
                sub_26B2128F0();
                sub_26B2136C0();
                MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
                __s2 = v14;
                v89 = v15;
                sub_26B2138F0();
                sub_26B2139E0();
                __break(1u);
LABEL_128:
                sub_26B14FF4C(v14, v15);
                sub_26B14FF4C(v14, v15);
                __break(1u);
LABEL_129:
                JUMPOUT(0);
              }

              goto LABEL_73;
            default:
              LODWORD(__dst) = a4;
              BYTE4(__dst) = v74;
              *(&__dst + 5) = *(&a4 + 5);
              BYTE7(__dst) = HIBYTE(a4);
              DWORD2(__dst) = a5;
              WORD6(__dst) = WORD2(a5);
              if (!v29)
              {
                goto LABEL_84;
              }

              v80 = v6;
              if (v29 == 1)
              {
                if (v40 < v14)
                {
                  goto LABEL_116;
                }

                sub_26B14F044(v14, v15);
                v41 = sub_26B211D10();
                if (v41)
                {
                  v42 = sub_26B211D40();
                  if (__OFSUB__(v14, v42))
                  {
                    goto LABEL_122;
                  }

                  v41 += v14 - v42;
                }

                v43 = sub_26B211D30();
                if (!v41)
                {
                  goto LABEL_126;
                }

LABEL_73:
                if (v43 >= v40 - v14)
                {
                  v52 = v40 - v14;
                }

                else
                {
                  v52 = v43;
                }
              }

              else
              {
                v63 = *(v14 + 16);
                v64 = *(v14 + 24);
                sub_26B14F044(v14, v15);
                v41 = sub_26B211D10();
                if (v41)
                {
                  v65 = sub_26B211D40();
                  if (__OFSUB__(v63, v65))
                  {
                    goto LABEL_120;
                  }

                  v41 += v63 - v65;
                }

                v36 = __OFSUB__(v64, v63);
                v61 = v64 - v63;
                if (v36)
                {
                  goto LABEL_118;
                }

                v62 = sub_26B211D30();
                if (!v41)
                {
                  goto LABEL_125;
                }

LABEL_96:
                if (v62 >= v61)
                {
                  v52 = v61;
                }

                else
                {
                  v52 = v62;
                }
              }

              v57 = memcmp(&__dst, v41, v52);
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              v6 = v80;
LABEL_100:
              v7 = a2;
              if (v57)
              {
                goto LABEL_106;
              }

              break;
          }

LABEL_101:
          v12 += 2;
          ++v8;
          continue;
        }

LABEL_103:
        sub_26B14FF4C(v14, v15);
        v13 = 0;
LABEL_106:
        v70 = *MEMORY[0x277D85DE8];
        return v13;
      case 2uLL:
        v39 = *(v14 + 16);
        v38 = *(v14 + 24);
        v36 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (!v36)
        {
          goto LABEL_48;
        }

        goto LABEL_108;
      case 3uLL:
        if (v33)
        {
          goto LABEL_103;
        }

        goto LABEL_59;
      default:
        v37 = BYTE6(v15);
        goto LABEL_48;
    }
  }
}

uint64_t sub_26B1E759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v8)
    {
      return v26 == v8;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v11 = *(i - 1);
      v12 = *i;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v13 = *(a2 + 8 * v8);
    if (!v13)
    {
      sub_26B2136C0();

      v24 = 0xD00000000000002ALL;
      v25 = 0x800000026B2209F0;
      v19 = sub_26B213B90();
      MEMORY[0x26D670040](v19);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x676E69727453, 0xE600000000000000);
      goto LABEL_23;
    }

    v14 = sqlite3_value_text(*(a2 + 8 * v8));
    sqlite3_value_bytes(v13);
    if (!v14)
    {
      v20 = 0x800000026B220100;
      sub_26B1B34BC();
      swift_allocError();
      v22 = 0xD00000000000002DLL;
      goto LABEL_24;
    }

    v15 = sub_26B212A40();
    if (!v16)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
      sub_26B2138F0();
LABEL_23:
      v22 = v24;
      v20 = v25;
      sub_26B1B34BC();
      swift_allocError();
LABEL_24:
      *v21 = v22;
      v21[1] = v20;
      swift_willThrow();
      return v26 == v8;
    }

    if (v15 == a4 && v16 == a5)
    {
    }

    else
    {
      v18 = sub_26B213E30();

      if ((v18 & 1) == 0)
      {
        return v26 == v8;
      }
    }

    ++v8;
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E78F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v11 = *(i - 1);
      v12 = *i;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v13 = *(a2 + 8 * v9);
    if (!v13)
    {
      sub_26B2136C0();

      v15 = sub_26B213B90();
      MEMORY[0x26D670040](v15);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](1819242306, 0xE400000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v16 = 0xD00000000000002ALL;
      v16[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v7 == v9;
    }

    v14 = (sqlite3_value_int(v13) == 0) ^ a4;
    v6 = v9 + 1;
    if ((v14 & 1) == 0)
    {
      return v7 == v9;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7B34(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = v5;
    if (v6 == v5)
    {
      return v6 == v8;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v10 = *(i - 1);
      v11 = *i;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v12 = *(a2 + 8 * v8);
    if (!v12)
    {
      sub_26B2136C0();

      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x656C62756F44, 0xE600000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v15 = 0xD00000000000002ALL;
      v15[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v6 == v8;
    }

    v13 = sqlite3_value_double(v12);
    v5 = v8 + 1;
    if (v13 != a3)
    {
      return v6 == v8;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7D7C(uint64_t a1, uint64_t a2, float a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = v5;
    if (v6 == v5)
    {
      return v6 == v8;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v10 = *(i - 1);
      v11 = *i;
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v12 = *(a2 + 8 * v8);
    if (!v12)
    {
      sub_26B2136C0();

      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x74616F6C46, 0xE500000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v15 = 0xD00000000000002ALL;
      v15[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v6 == v8;
    }

    v13 = sqlite3_value_double(v12);
    v5 = v8 + 1;
    if (v13 != a3)
    {
      return v6 == v8;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7FC8(uint64_t a1)
{
  OUTLINED_FUNCTION_8_24(a1);
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 == v8;
    }

    if (*(v2 - 1) != v5 || *v2 != v1)
    {
      v10 = *(v2 - 1);
      v11 = *v2;
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v12 = *(v4 + 8 * v8);
    if (!v12)
    {
      OUTLINED_FUNCTION_29_8();
      sub_26B2136C0();

      OUTLINED_FUNCTION_15_10();
      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      OUTLINED_FUNCTION_31_7();
      MEMORY[0x26D670040]();
      sub_26B1B34BC();
      swift_allocError();
      *v15 = v18;
      v15[1] = v19;
      swift_willThrow();
      return v6 == v8;
    }

    v13 = sqlite3_value_int64(v12);
    v2 += 2;
    v7 = v8 + 1;
    if (v13 != v3)
    {
      return v6 == v8;
    }
  }

  OUTLINED_FUNCTION_29_8();
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v17 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v17);
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E8188(uint64_t a1)
{
  OUTLINED_FUNCTION_8_24(a1);
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 == v8;
    }

    if (*(v2 - 1) != v5 || *v2 != v1)
    {
      v10 = *(v2 - 1);
      v11 = *v2;
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v12 = *(v4 + 8 * v8);
    if (!v12)
    {
      OUTLINED_FUNCTION_29_8();
      sub_26B2136C0();

      OUTLINED_FUNCTION_15_10();
      v14 = sub_26B213B90();
      MEMORY[0x26D670040](v14);

      OUTLINED_FUNCTION_31_7();
      MEMORY[0x26D670040]();
      sub_26B1B34BC();
      swift_allocError();
      *v15 = v18;
      v15[1] = v19;
      swift_willThrow();
      return v6 == v8;
    }

    v13 = sqlite3_value_int64(v12);
    if (v13 < 0)
    {
      break;
    }

    v2 += 2;
    v7 = v8 + 1;
    if (v13 != v3)
    {
      return v6 == v8;
    }
  }

  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_29_8();
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v17 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v17);
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

void _SQLBindableElement<>.filter(columns:arguments:)()
{
  OUTLINED_FUNCTION_11_6();
  v28 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v29 = *v13;
  v33 = *(v9 + 16);
  v15 = (v14 + 8);
  v16 = (v9 + 40);
  while (1)
  {
    v17 = v12;
    if (v33 == v12)
    {
LABEL_10:
      OUTLINED_FUNCTION_10_2();
      return;
    }

    v18 = v3;
    v20 = *(v16 - 1);
    v19 = *v16;
    OUTLINED_FUNCTION_27_9();
    if (v20 != v21 || v19 != 0xE700000000000000)
    {
      OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v3 = v18;
    v23 = *(*(v18 + 24) + 8);
    v32 = v29;
    SQLTableFunctionCursorArguments.subscript.getter(v17, v5, v5, v23);
    if (!v1)
    {
      v24 = *(*(v18 + 32) + 8);
      v25 = sub_26B212A20();
      (*v15)(v11, v5);
      v16 += 2;
      v12 = v17 + 1;
      if (v25)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v26 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v26);
  v30 = v20;
  v31 = v19;
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1E8570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (sub_26B213E30() & 1) != 0)
  {
    a4[3] = &type metadata for SQLDynamicValue;
    a4[4] = &protocol witness table for SQLDynamicValue;
    *a4 = a3;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E86A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = &type metadata for SQLNull;
    *(a3 + 32) = &protocol witness table for SQLNull;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E87BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_26B213E30() & 1) != 0)
  {
    a5[3] = MEMORY[0x277CC9318];
    a5[4] = &protocol witness table for Data;
    *a5 = a3;
    a5[1] = a4;

    return sub_26B14F044(a3, a4);
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_26B213E30() & 1) != 0)
  {
    a5[3] = MEMORY[0x277D837D0];
    a5[4] = &protocol witness table for String;
    *a5 = a3;
    a5[1] = a4;

    return sub_26B2128F0();
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a4 + 24) = MEMORY[0x277D839B0];
    *(a4 + 32) = &protocol witness table for Bool;
    *a4 = a3 & 1;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8B64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x277D839F8];
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = a4;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E8C8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x277D83A90];
    *(a3 + 32) = &protocol witness table for Float;
    *a3 = a4;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

void sub_26B1E8DB4(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_13_19();
  v11 = v9 == v10 && v8 == 0xE700000000000000;
  if (v11 || (OUTLINED_FUNCTION_22_12(), (sub_26B213E30() & 1) != 0))
  {
    a4[3] = a2;
    a4[4] = a3;
    *a4 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_11_15();
    v12 = OUTLINED_FUNCTION_17_13();
    MEMORY[0x26D670040](v12);
    sub_26B2138F0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_37();
    sub_26B2139E0();
    __break(1u);
  }
}

uint64_t _SQLBindableElement<>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_13_19();
  v9 = *v7 == v8 && v7[1] == 0xE700000000000000;
  if (v9 || (v10 = *v7, OUTLINED_FUNCTION_22_12(), (sub_26B213E30() & 1) != 0))
  {
    a3[3] = a1;
    a3[4] = *(*(a2 + 24) + 16);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    v12 = *(*(a1 - 8) + 16);

    return v12(boxed_opaque_existential_0, v3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_11_15();
    v14 = OUTLINED_FUNCTION_17_13();
    MEMORY[0x26D670040](v14);
    sub_26B2138F0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_37();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t static Collection<>.columns()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  return (*(a3 + 8))();
}

void Collection<>.filter(columns:arguments:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v20[1] = v10;
  OUTLINED_FUNCTION_9_0();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = *v15;
  v16 = v15[1];
  (*(v18 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  v20[4] = v7;
  v20[5] = v5;
  v20[6] = v3;
  v20[7] = v9;
  v20[8] = v17;
  v20[9] = v16;
  v19 = *(v5 + 8);
  sub_26B212DB0();
  if (!v1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_12();
    sub_26B212F50();
    swift_dynamicCast();
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1E9174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a3;
  v13[1] = a4;
  v9 = *(a7 + 16);
  v10 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a2, v13, AssociatedTypeWitness, a7) & 1;
}

uint64_t static Collection<>.result(of:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = *(a5 + 24);
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_26B2128F0();
  v7(v11, AssociatedTypeWitness, a5);
}

uint64_t sub_26B1E92EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.columns()(a1, WitnessTable, v3);
}

void sub_26B1E933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  swift_getWitnessTable();
  Collection<>.filter(columns:arguments:)();
}

uint64_t sub_26B1E93BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.result(of:from:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1E943C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.columns()(a1, WitnessTable, v3);
}

void sub_26B1E948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  swift_getWitnessTable();
  Collection<>.filter(columns:arguments:)();
}

uint64_t sub_26B1E950C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return static Collection<>.result(of:from:)(a1, a2, a3, WitnessTable, v7);
}

uint64_t static Dictionary<>.columns()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B16CB64();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B216070;
  *(v9 + 32) = 7955819;
  *(v9 + 40) = 0xE300000000000000;
  (*(a3 + 32))(a1, a3);
  *(v9 + 56) = 0x65756C6176;
  *(v9 + 64) = 0xE500000000000000;
  (*(a5 + 32))(a2, a5);
  return v9;
}

void Dictionary<>.filter(columns:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_11_6();
  v94 = v22;
  v87 = v24;
  v88 = v23;
  v97 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v84[0] = a21;
  v84[1] = v32;
  v96 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_0();
  v93 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = v84 - v41;
  v43 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_0();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  v53 = *v31;
  v99 = v31[1];
  v100 = v53;
  v98 = v84 - v54;
  OUTLINED_FUNCTION_30_9();
  v85 = v29;
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v29);
  v95 = v42;
  OUTLINED_FUNCTION_30_9();
  v86 = v27;
  v61 = __swift_storeEnumTagSinglePayload(v58, v59, v60, v27);
  v62 = 0;
  v90 = v34;
  v91 = (v34 + 40);
  v63 = *(v88 + 16);
  v89 = v45;
  v64 = (v45 + 40);
  v65 = (v88 + 40);
  v92 = v43;
  while (1)
  {
    if (v63 == v62)
    {
      MEMORY[0x28223BE20](v61);
      v78 = v86;
      v84[-8] = v85;
      v84[-7] = v78;
      v79 = v98;
      v80 = v87;
      v84[-6] = v97;
      v84[-5] = v80;
      v81 = v95;
      v82 = v84[0];
      v84[-4] = v94;
      v84[-3] = v82;
      v84[-2] = v79;
      v84[-1] = v81;
      sub_26B2128F0();
      sub_26B212900();
      (*(v90 + 8))(v81, v96);
      (*(v89 + 8))(v79, v43);
      goto LABEL_22;
    }

    v66 = *(v65 - 1);
    v67 = *v65;
    if (v66 != 7955819 || v67 != 0xE300000000000000)
    {
      v69 = *(v65 - 1);
      if ((OUTLINED_FUNCTION_33_7() & 1) == 0)
      {
        break;
      }
    }

    v101 = *(v97 + 8);
    OUTLINED_FUNCTION_7_19();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_25_9();
    SQLTableFunctionCursorArguments.subscript.getter(v62, v43, v43, v70);
    if (v21)
    {
      v83 = v96;
      goto LABEL_21;
    }

    v61 = (*v64)(v98, v51, v43);
LABEL_10:
    v65 += 2;
    ++v62;
  }

  if (v66 != 0x65756C6176 || v67 != 0xE500000000000000)
  {
    v61 = OUTLINED_FUNCTION_33_7();
    if ((v61 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v72 = v64;
  v73 = v51;
  v74 = v63;
  v102 = *(v94 + 8);
  OUTLINED_FUNCTION_7_19();
  v75 = v96;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_9();
  v76 = v93;
  SQLTableFunctionCursorArguments.subscript.getter(v62, v75, v75, v77);
  if (!v21)
  {
    v61 = (*v91)(v95, v76, v75);
    v63 = v74;
    v51 = v73;
    v64 = v72;
    v43 = v92;
    goto LABEL_10;
  }

  v83 = v75;
  v43 = v92;
LABEL_21:
  (*(v90 + 8))(v95, v83);
  (*(v89 + 8))(v98, v43);
LABEL_22:
  OUTLINED_FUNCTION_10_2();
}

BOOL sub_26B1E9A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a1;
  v41 = a8;
  v42 = a4;
  v46 = a2;
  v47 = a3;
  v10 = sub_26B2133E0();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = &v39 - v13;
  v50 = *(a6 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B2133E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v27 = *(v48 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v29 = &v39 - v28;
  (*(v22 + 16))(&v39 - v28, v49, a5);
  v49 = TupleTypeMetadata2;
  (*(v50 + 16))(&v29[*(TupleTypeMetadata2 + 48)], v46, a6);
  (*(v17 + 16))(v21, v47, v16);
  if (__swift_getEnumTagSinglePayload(v21, 1, a5) == 1)
  {
    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v22 + 32))(v25, v21, a5);
    v30 = *(v41 + 8);
    v31 = sub_26B212A20();
    (*(v22 + 8))(v25, a5);
    if ((v31 & 1) == 0)
    {
      (*(v48 + 8))(v29, v49);
      return 0;
    }
  }

  v33 = v43;
  v32 = v44;
  v34 = v45;
  (*(v44 + 16))(v43, v42, v45);
  if (__swift_getEnumTagSinglePayload(v33, 1, a6) == 1)
  {
    (*(v48 + 8))(v29, v49);
    (*(v32 + 8))(v33, v34);
    return 1;
  }

  v35 = v50;
  v36 = v40;
  (*(v50 + 32))(v40, v33, a6);
  v37 = sub_26B212A20();
  (*(v35 + 8))(v36, a6);
  (*(v48 + 8))(v29, v49);
  return (v37 & 1) != 0;
}

BOOL sub_26B1E9F58(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = v2[7];
  return sub_26B1E9A9C(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4], v2[5]);
}

void static Dictionary<>.result(of:from:)()
{
  OUTLINED_FUNCTION_11_6();
  v54 = v1;
  v55 = v0;
  v3 = v2;
  v5 = v4;
  v58 = v6;
  v59 = v7;
  v9 = v8;
  v11 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_0();
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v24 = *v11;
  v23 = v11[1];
  v25 = *(v5 - 8);
  (*(v25 + 16))(&v54 - v21, v9, v5);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v3 - 8);
  v28 = *(v27 + 16);
  v29 = v58;
  v58 = v3;
  v28(&v22[v26], v29, v3);
  v56 = v24;
  v30 = v24 == 7955819 && v23 == 0xE300000000000000;
  if (v30 || (sub_26B213E30() & 1) != 0)
  {
    v31 = v57;
    v32 = OUTLINED_FUNCTION_24_7(v57);
    v33(v32);
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = *(v55 + 16);
    v36 = v59;
    v59[3] = v5;
    v36[4] = v35;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    (*(v25 + 32))(boxed_opaque_existential_0, v19, v5);
    v38 = *(v31 + 8);
    v39 = OUTLINED_FUNCTION_28_8();
    v40(v39);
    (*(v27 + 8))(v19 + v34, v58);
LABEL_13:
    OUTLINED_FUNCTION_10_2();
    return;
  }

  v41 = v56 == 0x65756C6176 && v23 == 0xE500000000000000;
  if (v41 || (OUTLINED_FUNCTION_33_7() & 1) != 0)
  {
    v42 = v57;
    v43 = OUTLINED_FUNCTION_24_7(v57);
    v44(v43);
    v45 = *(TupleTypeMetadata2 + 48);
    v46 = *(v54 + 16);
    v48 = v58;
    v47 = v59;
    v59[3] = v58;
    v47[4] = v46;
    v49 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(v27 + 32))(v49, v19 + v45, v48);
    v50 = *(v42 + 8);
    v51 = OUTLINED_FUNCTION_28_8();
    v52(v51);
    (*(v25 + 8))(v19, v5);
    goto LABEL_13;
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v53 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v53);
  v60 = v56;
  v61 = v23;
  sub_26B2138F0();
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B1EA368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = a2 + *(swift_getTupleTypeMetadata2() + 48);
  static Dictionary<>.result(of:from:)();
}

uint64_t SQLBindPair.columnName.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_26B2128F0();
}

void *SQLBindPair.init(name:keyPath:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t SQLBindPair.column.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  *a1 = v4;
  a1[1] = v5;
  v7 = *(a3 + 24);
  v6 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 24);
  v10 = *(v9 + 32);
  sub_26B2128F0();
  return v10(AssociatedTypeWitness, v9);
}

uint64_t static SQLBindElement.columns()(uint64_t a1, uint64_t a2)
{
  v11[11] = (*(a2 + 16))();
  v11[6] = a1;
  v11[7] = a2;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = swift_getKeyPath();
  v11[9] = a1;
  OUTLINED_FUNCTION_2_34();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_18_12();
  v4 = sub_26B212F50();
  sub_26B1E6640();
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26B14B604(sub_26B1EA66C, v11, v4, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t sub_26B1EA5F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v9, &v8, v3, v4);
  v6 = v9[1];
  v7 = v8;
  *a2 = v9[0];
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void SQLBindElement.filter(columns:arguments:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9[1];
  v24 = *v9;
  v25 = v0;
  v23 = v10;
  v26 = (*(v3 + 16))(v5, v3);
  v37 = 0;
  v38 = 0;
  v36 = v8;
  sub_26B2128F0();
  while (1)
  {
    sub_26B1E4EF0(&v31);
    v12 = v33;
    if (!v33)
    {

      goto LABEL_9;
    }

    v27 = &v22;
    v13 = v31;
    v14 = v32;
    MEMORY[0x28223BE20](v11);
    *(&v22 - 4) = v6;
    *(&v22 - 3) = v4;
    v20 = v14;
    v21 = v12;
    v28 = v6;
    OUTLINED_FUNCTION_2_34();
    swift_getExtendedExistentialTypeMetadata();
    OUTLINED_FUNCTION_18_12();
    sub_26B212F50();
    OUTLINED_FUNCTION_10_18();
    sub_26B212DA0();
    if (!v30)
    {
      break;
    }

    v15 = v2;

    sub_26B150514(&v29, &v31);
    v16 = v34;
    v17 = v35;
    v18 = __swift_project_boxed_opaque_existential_1(&v31, v34);
    v19 = sub_26B1EA93C(v18, v24, v23, v13, v25, v6, v16, v4, v17);
    v2 = v15;
    if (v15 || (v19 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_9:
      OUTLINED_FUNCTION_10_2();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  MEMORY[0x26D670040](0xD000000000000017);
  *&v29 = v14;
  *(&v29 + 1) = v12;
  sub_26B2138F0();
  LODWORD(v21) = 0;
  v20 = 312;
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1EA918(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_26B1EAD10(a1, v1[4], v1[5]) & 1;
}

uint64_t sub_26B1EA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[1] = a1;
  v25[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v14 = *(v26 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  v20 = *(swift_getAssociatedConformanceWitness() + 24);
  v27[0] = a2;
  v27[1] = a3;
  v21 = v27;
  v22 = v27[3];
  SQLTableFunctionCursorArguments.subscript.getter(a4, AssociatedTypeWitness, AssociatedTypeWitness, v20);
  if (!v22)
  {
    (*(a9 + 48))(a7, a9);
    swift_getAtKeyPath();

    swift_getAssociatedConformanceWitness();
    LOBYTE(v21) = sub_26B212A20();
    v23 = *(v26 + 8);
    v23(v17, AssociatedTypeWitness);
    v23(v19, AssociatedTypeWitness);
  }

  return v21 & 1;
}

uint64_t SQLBindElement.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v15 = (*(a3 + 16))(a2, a3);
  OUTLINED_FUNCTION_2_34();
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_18_12();
  sub_26B212F50();
  OUTLINED_FUNCTION_10_18();
  sub_26B212DA0();
  if (v11)
  {

    sub_26B150514(&v10, &v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    sub_26B1EADC0(v7, v8, a4);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    sub_26B2136C0();
    OUTLINED_FUNCTION_11_15();
    MEMORY[0x26D670040](0xD000000000000017);
    sub_26B2138F0();
    OUTLINED_FUNCTION_0_37();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1EAD10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 40))(v10, v5, v6);
  if (v10[0] == a2 && v10[1] == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B213E30();
  }

  return v8 & 1;
}

uint64_t sub_26B1EADC0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  (*(a2 + 48))(a1, a2);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 32);
  __swift_allocate_boxed_opaque_existential_0(a3);
  swift_getAtKeyPath();
}

uint64_t sub_26B1EAE98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EAED4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EAF10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B1EB088()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1EB260(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v2;
  return sub_26B1E7FC8(a1) & 1;
}

uint64_t sub_26B1EB344(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v2;
  return sub_26B1E8188(a1) & 1;
}

uint64_t sub_26B1EB4CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  OUTLINED_FUNCTION_1_32();
  WitnessTable = swift_getWitnessTable();
  return static _SQLBindableElement<>.columns()(a1, WitnessTable);
}

uint64_t sub_26B1EB510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  OUTLINED_FUNCTION_1_32();
  swift_getWitnessTable();
  _SQLBindableElement<>.filter(columns:arguments:)();
  return v5 & 1;
}

uint64_t sub_26B1EB578@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  OUTLINED_FUNCTION_1_32();
  WitnessTable = swift_getWitnessTable();
  return _SQLBindableElement<>.subscript.getter(a1, WitnessTable, a3);
}

void sub_26B1EB634(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v7 = sub_26B1EB7A0(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_26B1EB7A0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_26B211D10();
  v8 = result;
  if (result)
  {
    result = sub_26B211D40();
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

  result = sub_26B211D30();
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

uint64_t sub_26B1EB944(uint64_t a1, uint64_t a2)
{
  sub_26B1EC100(0, &qword_2803E7080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1EB9B8(uint64_t a1)
{
  sub_26B1EC100(0, &qword_2803E7080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B1EBA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 8) + 8);
  sub_26B213A10();
  if (v3 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_26B2133E0();
    if (v4 <= 0x3F)
    {
      sub_26B1EC100(319, &qword_2803E8580);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26B1EBB10(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(*(a3 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  result = swift_getAssociatedTypeWitness();
  v11 = *(result - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  if (v12)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  if (v14 < a2)
  {
    v18 = ((v16 + *(*(result - 8) + 64) + (v17 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v18];
        if (a1[v18])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 2:
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *&a1[v18];
        if (!v22)
        {
          goto LABEL_31;
        }

LABEL_27:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v14 + (v24 | v23) + 1;
      default:
LABEL_31:
        if (v14)
        {
          break;
        }

        return 0;
    }
  }

  if (v9 >= v13)
  {

    return __swift_getEnumTagSinglePayload(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v17] & ~v15, v12, result);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_26B1EBD94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(*(a4 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = *(v14 + 80);
  if (v15)
  {
    v20 = *(*(v12 - 8) + 64);
  }

  else
  {
    v20 = *(*(v12 - 8) + 64) + 1;
  }

  v21 = ((v20 + ((v18 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v17 < a2)
  {
    v24 = ~v17 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v21 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v13)
    {
      case 1:
        a1[v21] = v25;
        break;
      case 2:
        *&a1[v21] = v25;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v21] = v25;
        break;
      default:
        return;
    }

    return;
  }

  switch(v13)
  {
    case 1:
      a1[v21] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *&a1[v21] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&a1[v21] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v11 < v16)
      {
        a1 = (&a1[v18 + v19] & ~v19);
        if (v16 < a2)
        {
          if (v20 <= 3)
          {
            v26 = ~(-1 << (8 * v20));
          }

          else
          {
            v26 = -1;
          }

          if (v20)
          {
            v27 = v26 & (~v16 + a2);
            if (v20 <= 3)
            {
              v28 = v20;
            }

            else
            {
              v28 = 4;
            }

            bzero(a1, v20);
            switch(v28)
            {
              case 2:
                *a1 = v27;
                break;
              case 3:
                *a1 = v27;
                a1[2] = BYTE2(v27);
                break;
              case 4:
                goto LABEL_50;
              default:
                *a1 = v27;
                break;
            }
          }

          return;
        }

        v29 = (a2 + 1);
        v30 = a1;
        goto LABEL_57;
      }

      if (v11 >= a2)
      {
        v30 = a1;
        v29 = a2;
        v15 = v11;
        v12 = AssociatedTypeWitness;
LABEL_57:

        __swift_storeEnumTagSinglePayload(v30, v29, v15, v12);
        return;
      }

      if (v18)
      {
        v27 = ~v11 + a2;
        bzero(a1, v18);
LABEL_50:
        *a1 = v27;
      }

      return;
  }
}

void sub_26B1EC100(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26B2133E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t *OUTLINED_FUNCTION_9_21(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *v2;
}

void OUTLINED_FUNCTION_31_7()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_26B2136C0();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_26B213E30();
}

uint64_t SQLDynamicValue.description.getter()
{
  v8[1] = *v0;
  SQLDynamicValue.nativeValue.getter(&v9);
  sub_26B150514(&v9, v10);
  v1 = v11;
  v2 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26B212AE0();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

sqlite3_stmt *SQLDynamicValue.init(statement:index:)@<X0>(uint64_t iCol@<X1>, sqlite3_stmt *result@<X0>, sqlite3_stmt **a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = sqlite3_column_value(result, iCol);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    result = sub_26B1EC55C(v5);
    *a3 = result;
  }

  else
  {
    sub_26B2136C0();

    v6 = sub_26B213B90();
    MEMORY[0x26D670040](v6);

    sub_26B1B34BC();
    swift_allocError();
    *v7 = 0xD000000000000022;
    v7[1] = 0x800000026B220F50;
    return swift_willThrow();
  }

  return result;
}

sqlite3_value *sub_26B1EC55C(const sqlite3_value *a1)
{
  result = sqlite3_value_dup(a1);
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1EC584()
{
  sqlite3_value_free(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B1EC5E8()
{
  sub_26B214030();
  MEMORY[0x26D671480](*(v0 + 16));
  return sub_26B214070();
}

uint64_t SQLDynamicValue.datatype.getter@<X0>(_BYTE *a1@<X8>)
{
  result = sqlite3_value_type(*(*v1 + 16));
  if ((result - 1) > 4)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0x4030201uLL >> (8 * (result - 1));
  }

  return result;
}

void SQLDynamicValue.nativeValue.getter(uint64_t *a1@<X8>)
{
  v4 = *v1;
  switch(sqlite3_value_type(*(v4 + 16)))
  {
    case 1:
      a1[3] = MEMORY[0x277D83B88];
      a1[4] = &protocol witness table for Int;
      *a1 = sqlite3_value_int64(*(v4 + 16));
      return;
    case 2:
      a1[3] = MEMORY[0x277D839F8];
      a1[4] = &protocol witness table for Double;
      *a1 = sqlite3_value_double(*(v4 + 16));
      return;
    case 3:
      a1[3] = MEMORY[0x277D837D0];
      a1[4] = &protocol witness table for String;
      v5 = *(v4 + 16);
      v6 = sqlite3_value_text(v5);
      sqlite3_value_bytes(v5);
      v7 = sub_26B1F0DA8(v6);
      goto LABEL_8;
    case 4:
      a1[3] = MEMORY[0x277CC9318];
      a1[4] = sub_26B1B3400();
      v14 = *(v4 + 16);
      v15 = sqlite3_value_blob(v14);
      v16 = sqlite3_value_bytes(v14);
      v7 = sub_26B1F2CF4(v15, v16);
LABEL_8:
      if (v2)
      {
        goto LABEL_9;
      }

      *a1 = v7;
      a1[1] = v8;
      break;
    case 5:
      a1[3] = &type metadata for SQLNull;
      a1[4] = sub_26B1B3510();
      v9 = *(v4 + 16);
      if (sqlite3_value_type(v9) == 5)
      {
        return;
      }

      sub_26B2136C0();

      OUTLINED_FUNCTION_0_38();
      v17 = v11;
      v18 = v10;
      sqlite3_value_type(v9);
      v12 = sub_26B213B90();
      MEMORY[0x26D670040](v12);

      MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v13 = v17;
      v13[1] = v18;
      swift_willThrow();
LABEL_9:
      __swift_deallocate_boxed_opaque_existential_2(a1);
      break;
    default:
      __break(1u);
      return;
  }
}

uint64_t sub_26B1EC8F8(uint64_t a1)
{
  sub_26B1B3454();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SQLDynamicValue.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](*(v1 + 16));
  return sub_26B214070();
}

uint64_t sub_26B1ECA0C()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](*(v1 + 16));
  return sub_26B214070();
}

uint64_t SQLDynamicValue.debugSQL.getter()
{
  v7 = *v0;
  SQLDynamicValue.nativeValue.getter(v4);
  v2 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(*(v1 + 8) + 16))(v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

sqlite3_value *sub_26B1ECB24@<X0>(const sqlite3_value *a1@<X0>, sqlite3_value **a2@<X8>)
{
  type metadata accessor for SQLDynamicValue.Box();
  swift_allocObject();
  result = sub_26B1EC55C(a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDynamicValue.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (index > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (sqlite3_bind_value(to._rawValue, index, *(*v2 + 16)))
  {
    sub_26B2136C0();

    OUTLINED_FUNCTION_0_38();
    v7 = v4;
    v8 = v3;
    v5 = sub_26B213B90();
    MEMORY[0x26D670040](v5);

    sub_26B1B34BC();
    swift_allocError();
    *v6 = v7;
    v6[1] = v8;
    swift_willThrow();
  }
}

unint64_t sub_26B1ECCF4()
{
  result = qword_2803E8588;
  if (!qword_2803E8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8588);
  }

  return result;
}

unint64_t sub_26B1ECD48(uint64_t a1)
{
  result = sub_26B1ECD70();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1ECD70()
{
  result = qword_2803E8590;
  if (!qword_2803E8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8590);
  }

  return result;
}

unint64_t sub_26B1ECDD8()
{
  result = qword_2803E8598;
  if (!qword_2803E8598)
  {
    type metadata accessor for SQLDynamicValue.Box();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8598);
  }

  return result;
}

uint64_t sub_26B1ECE68@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 117;
    }

    else
    {
      v4 = 27504;
    }

    if (v3 == 1)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    v4 = 99;
    v5 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v4, v5);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ECF00@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x564953554C435845;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000045;
  }

  MEMORY[0x26D670040](v4, v5);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ECF9C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = sub_26B1ED744(a1);
  MEMORY[0x26D670040](v3);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_26B1ED030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B213B90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1ED07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_26B2128F0();
  MEMORY[0x26D670040](a1, a2);
  MEMORY[0x26D670040](39, 0xE100000000000000);

  *a3 = 39;
  a3[1] = 0xE100000000000000;
  return result;
}

uint64_t SQLFunctionResult<>.debugSQL.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v14 - v10;
  (*(a2 + 64))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_26B1ED260(Swift::OpaquePointer a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_26B1ED27C(a1);
}

uint64_t sub_26B1ED27C(Swift::OpaquePointer a1)
{
  sub_26B2128F0();
  String.result(for:)(a1);
}

uint64_t SQLFunctionResult<>.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v17 - v13;
  result = (*(a3 + 64))(a2, a3);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 24) + 16) + 16))(a1, AssociatedTypeWitness);
    return (*(v10 + 8))(v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_26B1ED434@<X0>(sqlite3_value *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B1ED55C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26B1ED460(sqlite3_value *a1)
{
  result = sqlite3_value_type(a1);
  if (result != 5)
  {
    sub_26B2136C0();

    sqlite3_value_type(a1);
    v3 = sub_26B213B90();
    MEMORY[0x26D670040](v3);

    MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x800000026B220150;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1ED55C(sqlite3_value *a1)
{
  v2 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  return sub_26B1F0DA8(v2);
}

uint64_t SQLFunctionArgument<>.init(functionArgument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v3)
  {
    return (*(a3 + 56))(v10, a2, a3);
  }

  return result;
}

uint64_t sub_26B1ED6D8(char a1)
{
  if (!a1)
  {
    return 99;
  }

  if (a1 == 1)
  {
    return 117;
  }

  return 27504;
}

uint64_t sub_26B1ED70C(char a1)
{
  if (a1)
  {
    return 0x564953554C435845;
  }

  else
  {
    return 0x4C414D524F4ELL;
  }
}

uint64_t sub_26B1ED744(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

const char *SQLValueObject<>.bind(to:index:)(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 32);
  swift_unknownObjectRetain();
  result = v10(a3, a4);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    return sqlite3_bind_pointer(a1, a2, v5, result, sub_26B1EDD00);
  }

LABEL_9:
  __break(1u);
  return result;
}

void SQLValueObject<>.result(for:)(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 32);
  swift_unknownObjectRetain();
  v9 = v8(a2, a3);
  if (v10)
  {
    __break(1u);
  }

  else if (v9)
  {
    sqlite3_result_pointer(a1, v4, v9, sub_26B1EDCFC);
    return;
  }

  __break(1u);
}

const char *sub_26B1ED9A0@<X0>(sqlite3_value *a1@<X0>, const char **a2@<X8>)
{
  result = SQLValueObject<>.init(functionArgument:)(a1, v2, &off_287BC11C0);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

const char *SQLValueObject<>.init(functionArgument:)(sqlite3_value *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))(a2, a3);
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (sqlite3_value_pointer(a1, result))
  {
    v10 = swift_unknownObjectRetain();
    result = (*(*(a2 - 8) + 32))(&v11, &v10, a2);
    if (!v3)
    {
      return v11;
    }
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000032, 0x800000026B221050);
    v10 = a1;
    sub_26B2138F0();
    MEMORY[0x26D670040](0xD000000000000010, 0x800000026B221090);
    v8 = sub_26B2136E0();
    MEMORY[0x26D670040](v8);

    sub_26B1B34BC();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1EDC5C(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1EDD30@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_26B213AA0();
  if (v2 >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v3 = v2;

    *a1 = v3;
  }

  return result;
}

uint64_t sub_26B1EDE7C@<X0>(char *a1@<X8>)
{
  v2 = sub_26B213AA0();
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 1;
LABEL_5:

    *a1 = v3;
    return result;
  }

  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
  MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
  MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
  sub_26B2138F0();
  sub_26B1B34BC();
  swift_allocError();
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  swift_willThrow();
}

uint64_t sub_26B1EDFD0@<X0>(_BYTE *a1@<X8>)
{
  sub_26B2128F0();
  SQLDatabase.Options.JournalMode.init(rawValue:)(&v7);
  v2 = v7;
  if (v7 == 6)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    v3 = v7;
    v4 = v8;
    sub_26B1B34BC();
    swift_allocError();
    *v5 = v3;
    v5[1] = v4;
    swift_willThrow();
  }

  else
  {

    *a1 = v2;
  }

  return result;
}

unint64_t sub_26B1EE124@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void RawRepresentable<>.init(nativeValue:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v50 = v10;
  v11 = sub_26B2133E0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v48 = v13;
  v49 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  v54 = &v47 - v17;
  v51 = v5;
  v53 = v7;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_13();
  v24 = swift_checkMetadataState();
  v25 = OUTLINED_FUNCTION_0(v24);
  v52 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - v33;
  (*(v20 + 16))(v1, v9, AssociatedTypeWitness);
  (*(v3 + 56))(v1, v24, v3);
  if (v0)
  {
    (*(v20 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    v57 = AssociatedTypeWitness;
    v47 = v9;
    (*(v52 + 16))(v31, v34, v24);
    v35 = v53;
    v36 = v54;
    sub_26B212E00();
    OUTLINED_FUNCTION_15_11(v36);
    if (v37)
    {
      (*(v48 + 8))(v54, v49);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v38 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v38);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      v39 = v55;
      v40 = v56;
      sub_26B1B34BC();
      OUTLINED_FUNCTION_24_4();
      *v41 = v39;
      v41[1] = v40;
      swift_willThrow();
      (*(v20 + 8))(v47, v57);
      v42 = OUTLINED_FUNCTION_40_4();
      v43(v42);
    }

    else
    {
      (*(v20 + 8))(v47, v57);
      v44 = OUTLINED_FUNCTION_40_4();
      v45(v44);
      OUTLINED_FUNCTION_11_16();
      (*(v46 + 32))(v50, v54, v35);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.nativeValue.getter()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 64))(AssociatedTypeWitness, v1);
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_20_5();
  v10(v9);
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.result(for:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 16))(v3, AssociatedTypeWitness, v1);
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_20_5();
  v12(v11);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1EE9F8@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    v6 = sub_26B213AA0();

    if (v6 >= 3)
    {
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      sub_26B1B34BC();
      swift_allocError();
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {

      *a3 = v6;
    }
  }

  return result;
}

uint64_t sub_26B1EEB5C@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, char *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    v6 = sub_26B213AA0();

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    if (v6 == 1)
    {
      v7 = 1;
LABEL_6:

      *a3 = v7;
      return result;
    }

    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1EECD4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = String.init(statement:index:)(a1, a2)._countAndFlagsBits;
  if (!v5)
  {
    sub_26B2128F0();
    SQLDatabase.Options.JournalMode.init(rawValue:)(&v10);
    v6 = v10;
    if (v10 == 6)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      v7 = v10;
      v8 = v11;
      sub_26B1B34BC();
      swift_allocError();
      *v9 = v7;
      v9[1] = v8;
      swift_willThrow();
    }

    else
    {

      *a3 = v6;
    }
  }

  return result;
}

sqlite3_stmt *sub_26B1EEE30@<X0>(sqlite3_stmt *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int64(result, a2);
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void RawRepresentable<>.init(statement:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v36 = v12;
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v13);
  v37 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_9();
  v38 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v39 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v36 - v27;
  (*(v3 + 8))(v11, v9, AssociatedTypeWitness, v3);
  if (!v0)
  {
    v29 = v37;
    v40 = v13;
    v30 = v39;
    (*(v39 + 16))(v25, v28, AssociatedTypeWitness);
    sub_26B212E00();
    OUTLINED_FUNCTION_15_11(v1);
    if (v31)
    {
      (*(v29 + 8))(v1, v40);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v32 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v32);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      sub_26B1B34BC();
      v33 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_29_9(v33, v34);
      (*(v30 + 8))(v28, AssociatedTypeWitness);
    }

    else
    {
      (*(v30 + 8))(v28, AssociatedTypeWitness);
      OUTLINED_FUNCTION_11_16();
      (*(v35 + 32))(v36, v1, v7);
    }
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

sqlite3_stmt *sub_26B1EF3D4(sqlite3_stmt *result, uint64_t a2, unsigned __int8 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

void RawRepresentable<>.bind(to:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_20();
  (*(v1 + 8))(v5, v3, AssociatedTypeWitness, v1);
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_20_5();
  v14(v13);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1EF538@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    v7 = sub_26B213AA0();

    if (v7 >= 3)
    {
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x7079547865646E49, 0xE900000000000065);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      sub_26B1B34BC();
      swift_allocError();
      *v8 = 0;
      v8[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {

      *a2 = v7;
    }
  }

  return result;
}

uint64_t sub_26B1EF6BC@<X0>(sqlite3_value *a1@<X0>, char *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    v7 = sub_26B213AA0();

    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    if (v7 == 1)
    {
      v8 = 1;
LABEL_6:

      *a2 = v8;
      return result;
    }

    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_26B1EF854@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sqlite3_value_int64(a1);
  if (result >= 3)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
    MEMORY[0x26D670040](0x756361566F747541, 0xEE0065646F4D6D75);
    MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
    sub_26B2138F0();
    sub_26B1B34BC();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B1EF978@<X0>(sqlite3_value *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  result = sub_26B1F0DA8(v5);
  if (!v2)
  {
    sub_26B2128F0();
    SQLDatabase.Options.JournalMode.init(rawValue:)(&v11);
    v7 = v11;
    if (v11 == 6)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD000000000000011, 0x800000026B2210B0);
      MEMORY[0x26D670040](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x26D670040](0x206D6F726620, 0xE600000000000000);
      sub_26B2138F0();
      v8 = v11;
      v9 = v12;
      sub_26B1B34BC();
      swift_allocError();
      *v10 = v8;
      v10[1] = v9;
      swift_willThrow();
    }

    else
    {

      *a2 = v7;
    }
  }

  return result;
}

void RawRepresentable<>.init(functionArgument:)()
{
  sub_26B1F2868();
}

{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_20_10(v4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_9();
  v9 = OUTLINED_FUNCTION_28_9();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_5();
  v14 = *(v3 + 16);
  v15 = OUTLINED_FUNCTION_30_10();
  v16(v15);
  if (!v0)
  {
    v17 = OUTLINED_FUNCTION_5_23();
    v18(v17);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v1);
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_19_11();
      v21(v20);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v22 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v22);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      sub_26B1B34BC();
      v23 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_29_9(v23, v24);
      v29 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v25 = OUTLINED_FUNCTION_4_29();
      v26(v25);
      OUTLINED_FUNCTION_11_16();
      v28 = *(v27 + 32);
      v29 = OUTLINED_FUNCTION_37_5();
    }

    v30(v29);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

{
  RawRepresentable<>.init(functionArgument:)();
}

uint64_t sub_26B1EFB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1ED70C(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_26B1EFBDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1ED7DC(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B1EFCBC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1(*v2);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_26B1EFD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1280070990 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_16_12() & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 0x52454745544E49 && a2 == 0xE700000000000000;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 1279346002 && a2 == 0xE400000000000000;
      if (v10 || (OUTLINED_FUNCTION_16_12() & 1) != 0)
      {

        v8 = 2;
      }

      else
      {
        v11 = a1 == 1415071060 && a2 == 0xE400000000000000;
        if (v11 || (OUTLINED_FUNCTION_16_12() & 1) != 0)
        {

          v8 = 3;
        }

        else
        {
          v12 = a1 == 1112493122 && a2 == 0xE400000000000000;
          if (v12 || (OUTLINED_FUNCTION_16_12() & 1) != 0)
          {

            v8 = 4;
          }

          else if (a1 == 0x4E4544444948 && a2 == 0xE600000000000000)
          {

            v8 = 5;
          }

          else
          {
            v14 = sub_26B213E30();

            if (v14)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t SQLDataType.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t sub_26B1EFF9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_26B14F044(a1, a2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.init(raw:)(Swift::OpaquePointer raw)
{
  if (sqlite3_value_type(raw._rawValue) != 5)
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_42_4();
    sqlite3_value_type(raw._rawValue);
    v2 = sub_26B213B90();
    MEMORY[0x26D670040](v2);

    OUTLINED_FUNCTION_49_2();
    sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4();
    *v3 = v4;
    v3[1] = v5;
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = index;
  if (index > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(statement._rawValue, index) != 5)
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_42_4();
    sqlite3_column_type(statement._rawValue, v2);
    v4 = sub_26B213B90();
    MEMORY[0x26D670040](v4);

    OUTLINED_FUNCTION_49_2();
    sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4();
    *v5 = v6;
    v5[1] = v7;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLNull.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(to._rawValue, index);
    return;
  }

  __break(1u);
}

uint64_t Bool.debugSQL.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 48;
  if (result)
  {
    v2 = 49;
  }

  *a2 = v2;
  a2[1] = 0xE100000000000000;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (index > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
    return statement._rawValue;
  }

  LOBYTE(statement._rawValue) = sqlite3_column_int(statement._rawValue, index) != 0;
  return statement._rawValue;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_int(to._rawValue, index, v2 & 1);
    return;
  }

  __break(1u);
}

uint64_t sub_26B1F0518@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B1B33A4(*a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_26B1F054C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B1B33A4(*v1);
  *a1 = result & 1;
  return result;
}

BOOL sub_26B1F05A0@<W0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26B1F0680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B1F06B0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

sqlite3_stmt *sub_26B1F06F8(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_26B1F0740(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1F0810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B213B90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

sqlite3_int64 sub_26B1F0850(sqlite3_value *a1)
{
  result = sqlite3_value_int64(a1);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

sqlite3_int64 sub_26B1F0880(sqlite3_int64 result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sqlite3_column_int64(result, a2);
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_26B1F08D0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_26B1F0920(sqlite3_context *a1, sqlite3_int64 a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, a2);
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(statement._rawValue, index);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_double(to._rawValue, index, v2);
    return;
  }

  __break(1u);
}

uint64_t sub_26B1F0A84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = nullsub_1(a1);
  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

double sub_26B1F0AE8(Swift::OpaquePointer a1)
{
  v2 = *v1;
  Double.result(for:)(a1);
  return result;
}

void sub_26B1F0B04(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, double *a3@<X8>)
{
  v4 = Double.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = v4;
  }
}

double sub_26B1F0B30(Swift::OpaquePointer a1, Swift::Int a2)
{
  v3 = *v2;
  Double.bind(to:index:)(a1, a2);
  return result;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Float.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(statement._rawValue, index);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Float.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (index <= 0x7FFFFFFF)
  {
    sqlite3_bind_double(to._rawValue, index, v2);
    return;
  }

  __break(1u);
}

void sub_26B1F0C88(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = nullsub_1(a1);
  if (!v2)
  {
    *a2 = LODWORD(v5);
  }
}

void sub_26B1F0CB8(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = nullsub_1(a1);
  *a2 = LODWORD(v5);
}

float sub_26B1F0CEC(Swift::OpaquePointer a1)
{
  v2 = *v1;
  Float.result(for:)(a1);
  return result;
}

void sub_26B1F0D08(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, float *a3@<X8>)
{
  v4 = Float.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = v4;
  }
}

float sub_26B1F0D34(Swift::OpaquePointer a1, Swift::Int a2)
{
  v3 = *v2;
  Float.bind(to:index:)(a1, a2);
  return result;
}

void String.debugSQL.getter()
{
  MEMORY[0x26D670040]();
  v0 = MEMORY[0x26D670040](39, 0xE100000000000000);
  OUTLINED_FUNCTION_53_1(v0, v1, v2, v3, v4, v5, v6, v7, 39, 0xE100000000000000);
}

uint64_t sub_26B1F0DA8(uint64_t a1)
{
  if (a1)
  {
    result = sub_26B212A40();
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
    sub_26B2138F0();
    v4 = v6;
    v3 = v7;
    sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4();
  }

  else
  {
    v3 = 0x800000026B220100;
    sub_26B1B34BC();
    OUTLINED_FUNCTION_24_4();
    v4 = 0xD00000000000002DLL;
  }

  *v5 = v4;
  v5[1] = v3;
  return swift_willThrow();
}

void sub_26B1F0EA8(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  nullsub_1(*a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

uint64_t sub_26B1F0EDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  result = sub_26B1EFFA4(*v1);
  *a1 = result;
  a1[1] = v5;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(statement:index:)(Swift::OpaquePointer statement, Swift::Int index)
{
  if (index < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = index;
  if (index > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  rawValue = statement._rawValue;
  v4 = sqlite3_column_text(statement._rawValue, index);
  sqlite3_column_bytes(rawValue, v2);
  statement._rawValue = sub_26B1F0DA8(v4);
LABEL_6:
  result._object = index;
  result._countAndFlagsBits = statement._rawValue;
  return result;
}

uint64_t sub_26B1F0FB4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::String *a3@<X8>)
{
  v5 = String.init(statement:index:)(a1, a2);
  result = v5._countAndFlagsBits;
  if (!v6)
  {
    *a3 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  v3 = v2;
  v6 = sub_26B212AD0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  sub_26B212AC0();
  sub_26B14FCC8();
  v12 = sub_26B2134C0();
  v13 = *(v9 + 8);
  v14 = OUTLINED_FUNCTION_31_3();
  v15(v14);
  if (v12)
  {
    if (index < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (index <= 0x7FFFFFFF)
    {
      v3 = *(v12 + 16);
      if (v3)
      {
        if (qword_2803E6AA8 == -1)
        {
LABEL_6:
          sqlite3_bind_text64(to._rawValue, index, (v12 + 32), v3 - 1, qword_2803F29B0, 1u);

          OUTLINED_FUNCTION_46_3();
          return;
        }

LABEL_10:
        OUTLINED_FUNCTION_2_35();
        goto LABEL_6;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_26B1F1150(Swift::OpaquePointer a1, Swift::Int a2)
{
  v3 = *v2;
  v4 = v2[1];
  String.bind(to:index:)(a1, a2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(functionArgument:)(Swift::OpaquePointer functionArgument)
{
  v1 = sub_26B1F1184(functionArgument._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_26B1F1184(sqlite3_value *a1)
{
  v2 = sqlite3_value_text(a1);
  sqlite3_value_bytes(a1);
  return sub_26B1F0DA8(v2);
}

uint64_t sub_26B1F11F8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.result(for:)(Swift::OpaquePointer a1)
{
  v2 = sub_26B212AD0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  sub_26B212AC0();
  sub_26B14FCC8();
  v11 = sub_26B2134C0();
  (*(v5 + 8))(v10, v2);
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      if (qword_2803E6AA8 == -1)
      {
LABEL_4:
        sqlite3_result_text64(a1._rawValue, (v11 + 32), v12 - 1, qword_2803F29B0, 1u);

        OUTLINED_FUNCTION_46_3();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_2_35();
    goto LABEL_4;
  }

  __break(1u);
}

void sub_26B1F1374(Swift::OpaquePointer a1)
{
  v2 = *v1;
  v3 = v1[1];
  String.result(for:)(a1);
}

void Optional<A>.debugSQL.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v19 = OUTLINED_FUNCTION_9_22(v18);
  v20(v19);
  OUTLINED_FUNCTION_48_4();
  if (v21)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_45_2();
    v23(v22);
    (*(a2 + 16))(v26, v5, a2);
    (*(v7 + 8))(v13, v5);
    v25 = v26[0];
    v24 = v26[1];
  }

  *a3 = v25;
  a3[1] = v24;
}

{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_9_22(v19);
  v21(v20);
  OUTLINED_FUNCTION_48_4();
  if (v22)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    (*(v8 + 32))(v14, v3, v6);
    (*(*(a2 + 8) + 8))(v25, v6);
    (*(v8 + 8))(v14, v6);
    v24 = v25[0];
    v23 = v25[1];
  }

  *a3 = v24;
  a3[1] = v23;
}

{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v19 = OUTLINED_FUNCTION_9_22(v18);
  v20(v19);
  OUTLINED_FUNCTION_48_4();
  if (v21)
  {
    OUTLINED_FUNCTION_36_5();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_45_2();
    v23(v22);
    (*(a2 + 8))(v26, v5, a2);
    (*(v7 + 8))(v13, v5);
    v25 = v26[0];
    v24 = v26[1];
  }

  *a3 = v25;
  a3[1] = v24;
}

void Optional<A>.bind(to:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_8();
  v12 = v10 - v11;
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_29();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_8();
  v22 = v20 - v21;
  (*(v6 + 16))(v12, v23);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    (*(v16 + 32))(v22, v12, v14);
    (*(v27 + 8))(v4, v2, v14);
    (*(v16 + 8))(v22, v14);
    goto LABEL_6;
  }

  v24 = *(v6 + 8);
  v25 = OUTLINED_FUNCTION_31_3();
  v26(v25);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(v4, v2);
LABEL_6:
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_10_2();
    return;
  }

  __break(1u);
}

void Optional<A>.init(statement:index:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_13();
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(v9, v7) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    (*(v3 + 8))(v9, v7, v5, v3);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v1);
      v16 = *(v12 + 32);
      v17 = OUTLINED_FUNCTION_34_6();
      v18(v17);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void sub_26B1F1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  Optional<A>.init(statement:index:)();
}

void Optional<A>.init(nativeValue:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = sub_26B2133E0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v38 = v10;
  v39 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v14;
  v40 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  OUTLINED_FUNCTION_9_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v37 - v33;
  (*(v18 + 16))(v23, v6, v16);
  if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness) == 1)
  {
    v35 = *(v18 + 8);
    v35(v6, v16);
    v35(v23, v16);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v4);
  }

  else
  {
    (*(v25 + 32))(v34, v23, AssociatedTypeWitness);
    (*(v25 + 16))(v31, v34, AssociatedTypeWitness);
    v36 = v41;
    (*(v40 + 56))(v31, v4);
    (*(v18 + 8))(v6, v16);
    (*(v25 + 8))(v34, AssociatedTypeWitness);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v36);
      (*(v38 + 32))(v42, v36, v39);
    }
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void Optional<A>.nativeValue.getter()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_0(v3);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_9_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  (*(v9 + 16))(v14, v22, v4);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    (*(v9 + 8))(v14, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = 1;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v6, v24, 1, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v25 = *(v18 + 32);
  v26 = OUTLINED_FUNCTION_31_3();
  v27(v26);
  (*(v2 + 64))(v16, v2);
  v28 = OUTLINED_FUNCTION_40_4();
  v29(v28);
  if (!v0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = 0;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void sub_26B1F1D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  Optional<A>.init(nativeValue:)();
}

void Optional<A>.init(raw:)()
{
  v4 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_13();
  if (sqlite3_value_type(v3) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    v10 = *(v1 + 40);
    v11 = OUTLINED_FUNCTION_44_4();
    v12(v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v2);
      v13 = *(v6 + 32);
      v14 = OUTLINED_FUNCTION_34_6();
      v15(v14);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

void sub_26B1F1EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  Optional<A>.init(raw:)();
}

void Optional<A>.init(functionArgument:)()
{
  v4 = OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_13();
  if (sqlite3_value_type(v3) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = OUTLINED_FUNCTION_44_4();
    v12(v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_26_13(v2);
      v13 = *(v6 + 32);
      v14 = OUTLINED_FUNCTION_34_6();
      v15(v14);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

void sub_26B1F2170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  Optional<A>.init(functionArgument:)();
}

void Optional<A>.init(functionArgument:)(sqlite3_value *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v17 - v15;
  if (sqlite3_value_type(a1) == 5)
  {
    OUTLINED_FUNCTION_14_17();
  }

  else
  {
    (*(*(a3 + 8) + 16))(a1, a2);
    if (!v4)
    {
      OUTLINED_FUNCTION_26_13(v16);
      (*(v11 + 32))(a4, v16, v9);
    }
  }

  OUTLINED_FUNCTION_46_3();
}

uint64_t Optional<A>.init(functionArgument:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 16))();
  if (v3)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, a1);
}

void Optional<A>.result(for:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_8();
  v13 = v11 - v12;
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_29();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_8();
  v23 = v21 - v22;
  (*(v7 + 16))(v13, v24, v3);
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    (*(v7 + 8))(v13, v3);
    sqlite3_result_null(v5);
  }

  else
  {
    v25 = *(v17 + 32);
    v26 = OUTLINED_FUNCTION_31_3();
    v27(v26);
    (*(v1 + 16))(v5, v15, v1);
    (*(v17 + 8))(v23, v15);
  }

  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_2();
}

void RawRepresentable<>.init(raw:)()
{
  OUTLINED_FUNCTION_11_6();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_20_10(v4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_9();
  v9 = OUTLINED_FUNCTION_28_9();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_5();
  v14 = *(v3 + 40);
  v15 = OUTLINED_FUNCTION_30_10();
  v16(v15);
  if (!v0)
  {
    v17 = OUTLINED_FUNCTION_5_23();
    v18(v17);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v1);
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_19_11();
      v21(v20);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v22 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v22);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      sub_26B1B34BC();
      v23 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_29_9(v23, v24);
      v29 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v25 = OUTLINED_FUNCTION_4_29();
      v26(v25);
      OUTLINED_FUNCTION_11_16();
      v28 = *(v27 + 32);
      v29 = OUTLINED_FUNCTION_37_5();
    }

    v30(v29);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

void sub_26B1F2868()
{
  OUTLINED_FUNCTION_11_6();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_20_10(v5);
  OUTLINED_FUNCTION_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_9();
  v10 = OUTLINED_FUNCTION_28_9();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_38_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_5();
  (*(*(v4 + 8) + 16))(v0, v10);
  if (!v1)
  {
    v15 = OUTLINED_FUNCTION_5_23();
    v16(v15);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_15_11(v2);
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_19_11();
      v19(v18);
      OUTLINED_FUNCTION_8_25();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_7_20();
      v20 = OUTLINED_FUNCTION_50_4();
      MEMORY[0x26D670040](v20);

      OUTLINED_FUNCTION_12_18();
      sub_26B213DF0();
      sub_26B1B34BC();
      v21 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_29_9(v21, v22);
      v27 = OUTLINED_FUNCTION_4_29();
    }

    else
    {
      v23 = OUTLINED_FUNCTION_4_29();
      v24(v23);
      OUTLINED_FUNCTION_11_16();
      v26 = *(v25 + 32);
      v27 = OUTLINED_FUNCTION_37_5();
    }

    v28(v27);
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_10_2();
}

void Data.debugSQL.getter()
{
  v0 = sub_26B211FD0();
  MEMORY[0x26D670040](v0);

  OUTLINED_FUNCTION_53_1(v1, v2, v3, v4, v5, v6, v7, v8, 0x28343665736162, 0xE700000000000000);
}

uint64_t sub_26B1F2CF4(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (a1)
  {
    return MEMORY[0x26D66F430](a1, a2);
  }

  sub_26B1B34BC();
  OUTLINED_FUNCTION_24_4();
  *v3 = 0xD00000000000002BLL;
  v3[1] = 0x800000026B220E90;
  return swift_willThrow();
}

uint64_t sub_26B1F2E08(sqlite3_value *a1)
{
  v2 = sqlite3_value_blob(a1);
  v3 = sqlite3_value_bytes(a1);
  return sub_26B1F2CF4(v2, v3);
}

uint64_t sub_26B1F2E80@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.result(for:)(Swift::OpaquePointer a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = v2;
  v5 = v1;
  switch(v2 >> 62)
  {
    case 1uLL:
      if (v1 >> 32 < v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = sub_26B211D10();
      if (!v11)
      {
        goto LABEL_14;
      }

      v15 = sub_26B211D40();
      if (__OFSUB__(v5, v15))
      {
LABEL_26:
        __break(1u);
      }

      v11 += v5 - v15;
LABEL_14:
      v14 = (v5 >> 32) - v5;
LABEL_15:
      v16 = sub_26B211D30();
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17 + v11;
      if (v11)
      {
        LODWORD(v7) = v18;
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v8 = v11;
LABEL_22:
      sub_26B1F30C4(v8, v7, a1._rawValue, v5, v4);
      v19 = OUTLINED_FUNCTION_20_5();
      sub_26B14FF4C(v19, v20);
      if (v3)
      {

        __break(1u);
      }

      else
      {
        v21 = *MEMORY[0x277D85DE8];
      }

      return;
    case 2uLL:
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);

      v11 = sub_26B211D10();
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = sub_26B211D40();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_25;
      }

      v11 += v9 - v12;
LABEL_6:
      v13 = __OFSUB__(v10, v9);
      v14 = v10 - v9;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v22, 0, 14);
      v8 = v22;
      v7 = v22;
      goto LABEL_22;
    case 3uLL:
      goto LABEL_9;
    default:
      v22[0] = v1;
      LOWORD(v22[1]) = v2;
      BYTE2(v22[1]) = BYTE2(v2);
      BYTE3(v22[1]) = BYTE3(v2);
      BYTE4(v22[1]) = BYTE4(v2);
      BYTE5(v22[1]) = BYTE5(v2);
      v7 = v22 + BYTE6(v2);
      v8 = v22;
      goto LABEL_22;
  }
}

void sub_26B1F30C4(void *a1, int a2, sqlite3_context *a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v7 = HIDWORD(a4) - a4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a4 + 16);
      v8 = *(a4 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_6:
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
LABEL_7:
          if (qword_2803E6AA8 == -1)
          {
LABEL_8:
            sqlite3_result_blob64(a3, a1, v7, qword_2803F29B0);
            return;
          }
        }

        swift_once();
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_7;
    default:
      v7 = BYTE6(a5);
      goto LABEL_7;
  }
}

void sub_26B1F31A0(Swift::OpaquePointer a1)
{
  v2 = *v1;
  v3 = v1[1];
  Data.result(for:)(a1);
}

sqlite3_stmt *Data.init(statement:index:)(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_blob(result, iCol);
      v5 = sqlite3_column_bytes(v3, v2);
      return sub_26B1F2CF4(v4, v5);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_26B1F3234@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = Data.init(statement:index:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.bind(to:index:)(Swift::OpaquePointer to, Swift::Int index)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      if (v2 > v2 >> 32)
      {
        goto LABEL_36;
      }

      v13 = sub_26B211D10();
      if (!v13)
      {
        goto LABEL_26;
      }

      v23 = sub_26B211D40();
      if (__OFSUB__(v4, v23))
      {
        goto LABEL_46;
      }

      v13 += v4 - v23;
LABEL_26:
      sub_26B211D30();
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_43;
      }

      v24 = OUTLINED_FUNCTION_6_13();
      v16 = MEMORY[0x26D66F450](v24);
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      goto LABEL_15;
    default:
      v28[0] = v2;
      LOWORD(v28[1]) = v3;
      BYTE2(v28[1]) = BYTE2(v3);
      BYTE3(v28[1]) = BYTE3(v3);
      BYTE4(v28[1]) = BYTE4(v3);
      BYTE5(v28[1]) = BYTE5(v3);
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_39;
      }

      v10 = OUTLINED_FUNCTION_6_13();
      v11 = MEMORY[0x26D66F450](v10);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_7:
      v12 = *(v4 + 16);

      v13 = sub_26B211D10();
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = sub_26B211D40();
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_45;
      }

      v13 += v12 - v14;
LABEL_10:
      sub_26B211D30();
      if (index < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_54_1();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_40;
      }

      v15 = OUTLINED_FUNCTION_6_13();
      v16 = MEMORY[0x26D66F450](v15);
      if (v16 < 0)
      {
        __break(1u);
LABEL_15:
        memset(v28, 0, 14);
        if (index < 0xFFFFFFFF80000000)
        {
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
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
        }

        OUTLINED_FUNCTION_54_1();
        if (!(v8 ^ v9 | v7))
        {
          goto LABEL_38;
        }

        v17 = OUTLINED_FUNCTION_6_13();
        v11 = MEMORY[0x26D66F450](v17);
        if (v11 < 0)
        {
          goto LABEL_42;
        }

LABEL_19:
        v18 = v11;
        if (qword_2803E6AA8 != -1)
        {
          OUTLINED_FUNCTION_2_35();
        }

        v19 = qword_2803F29B0;
        v20 = v28;
        rawValue = to._rawValue;
        v22 = index;
      }

      else
      {
LABEL_30:
        v18 = v16;
        if (qword_2803E6AA8 != -1)
        {
          OUTLINED_FUNCTION_2_35();
        }

        v19 = qword_2803F29B0;
        rawValue = to._rawValue;
        v22 = index;
        v20 = v13;
      }

      sqlite3_bind_blob64(rawValue, v22, v20, v18, v19);
      v25 = OUTLINED_FUNCTION_6_13();
      sub_26B14FF4C(v25, v26);
      v27 = *MEMORY[0x277D85DE8];
      return;
  }
}

void sub_26B1F3534(Swift::OpaquePointer a1, Swift::Int a2)
{
  v3 = *v2;
  v4 = v2[1];
  Data.bind(to:index:)(a1, a2);
}

unint64_t sub_26B1F3550(void *(*a1)(unsigned int *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = WORD2(a4);
  v9 = a4;
  result = a1(&v7, &v8, &v8 + BYTE6(a4));
  if (!v4)
  {
    result = v7;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B1F35E0(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = WORD2(a4);
  v7 = a4;
  result = a1(&v6, &v6 + BYTE6(a4));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26B1F3664()
{
  result = qword_2803E85A0;
  if (!qword_2803E85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85A0);
  }

  return result;
}

unint64_t sub_26B1F36BC(uint64_t a1)
{
  result = sub_26B1F36E4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1F36E4()
{
  result = qword_2803E85A8;
  if (!qword_2803E85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85A8);
  }

  return result;
}

unint64_t sub_26B1F373C()
{
  result = qword_2803E85B0;
  if (!qword_2803E85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E85B0);
  }

  return result;
}

uint64_t sub_26B1F37F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_26B1F385C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v9 = *(*a3 + 8);
  a1[1] = swift_getWitnessTable();
  v8 = v4[2];
  a1[2] = swift_getWitnessTable();
  v7 = v4[3];
  a1[3] = swift_getWitnessTable();
  v6 = v4[4];
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_26B1F3940(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v8 = *(*a3 + 8);
  a1[1] = swift_getWitnessTable();
  v7 = *(v4 + 16);
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  v6 = *(v4 + 32);
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_26B1F3A20(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 24);
  v7 = *(v4 + 8);
  a1[1] = swift_getWitnessTable();
  v6 = *(v4 + 16);
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_26B1F3ADC(uint64_t a1)
{
  result = sub_26B1F3B04();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26B1F3B04()
{
  result = qword_2803E85B8[0];
  if (!qword_2803E85B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E85B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLDataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLNull(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.init(raw:)(Swift::OpaquePointer raw)
{
  v3 = String.init(functionArgument:)(raw);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void OUTLINED_FUNCTION_7_20()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_14_17()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_18_13()
{
  v2 = *(v0 - 104);

  return sub_26B212E00();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return sub_26B2133E0();
}

void OUTLINED_FUNCTION_43_3()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x26D670040);
}

uint64_t sub_26B1F42C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for AsyncNullSeparatedSequence.AsyncIterator() + 36)) = MEMORY[0x277D84F90];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t AsyncNullSeparatedSequence.AsyncIterator.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  OUTLINED_FUNCTION_0_39(v4);

  return MEMORY[0x282200308](v2 + 8);
}

uint64_t sub_26B1F4460()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_22();
  *v8 = v7;
  *(v9 + 56) = v0;

  if (v0)
  {
    v10 = sub_26B1F4764;
  }

  else
  {
    v10 = sub_26B1F456C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26B1F456C()
{
  v1 = *(v0 + 64);
  if (*(v0 + 65))
  {
    v2 = *(v0 + 24);
    v3 = *(*(v0 + 16) + 36);
    if (*(*(v2 + v3) + 16))
    {

      v4 = MEMORY[0x277D84F90];
      *(v2 + v3) = MEMORY[0x277D84F90];
    }

    else
    {
      v4 = 0;
    }

LABEL_14:
    v13 = *(v0 + 8);

    return v13(v4);
  }

  v5 = *(v0 + 24);
  v6 = *(*(v0 + 16) + 36);
  v4 = *(v5 + v6);
  if (!*(v0 + 64))
  {
    *(v5 + v6) = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v7 = *(v5 + v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v4 + 16);
    sub_26B14D4CC();
    v4 = v15;
  }

  v8 = *(v4 + 16);
  if (v8 >= *(v4 + 24) >> 1)
  {
    sub_26B14D4CC();
    v4 = v16;
  }

  *(v4 + 16) = v8 + 1;
  *(v4 + v8 + 32) = v1;
  *(v5 + v6) = v4;
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_0_39();

  return MEMORY[0x282200308](v0 + 64);
}

uint64_t sub_26B1F477C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B1F4814;

  return AsyncNullSeparatedSequence.AsyncIterator.next()(a2);
}

uint64_t sub_26B1F4814(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_22();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_26B1F491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[2] = a4;
  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[3] = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  v12[4] = v21;
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v12[5] = v23;
  v24 = *(MEMORY[0x277D856F8] + 4);
  v27 = swift_task_alloc();
  v12[6] = v27;
  *v27 = v12;
  v27[1] = sub_26B1F4A6C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v23, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_26B1F4A6C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_22();
  *v7 = v6;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v9 = v2[5];
  }

  v8 = v6[1];

  return v8();
}

uint64_t AsyncNullSeparatedSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v5 + 16))(v9, v2, v4);
  sub_26B213150();
  return sub_26B1F42C8(v14, a2);
}

uint64_t sub_26B1F4CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncNullSeparatedSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.nullSeparated.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_26B1F4E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26B1F4ED8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_26B1F5014(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void sub_26B1F5230(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_26B18D1CC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B1F52C8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(result - 8) + 84);
  }

  v11 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_26:
    if (v9 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v9, result);
    }
  }

  else
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v10 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_22:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *a1;
        }

        result = v10 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B1F5458(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v11 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v11 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 <= v11)
  {
    switch(v17)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v13) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v10 < 0x7FFFFFFF)
          {
            v20 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    switch(v17)
    {
      case 1:
        *(a1 + v13) = v18;
        break;
      case 2:
        *(a1 + v13) = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v13) = v18;
        break;
      default:
        return;
    }
  }
}