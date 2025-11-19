uint64_t sub_25E1B125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1B85F0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_25E1B1308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E1B85F0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 sub_25E1B13C4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_25E1B1470(char *a1, int a2)
{
  v3 = v2;
  v20 = a2;
  v5 = *v2;
  v6 = sub_25E1B85F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  sub_25E1B8570();
  v11 = sub_25E1B8590();
  v13 = v12;
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = v21;
  v16 = sub_25E1B1610(v11, v13, v20);
  if (v15)
  {

    v14(a1, v6);
  }

  else
  {
    v17 = v16;
    v14(a1, v6);

    v3[2] = v17;
  }

  return v3;
}

sqlite3 *sub_25E1B1610(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_slowAlloc();
  *v6 = 0;
  if (a3)
  {
    v7 = 3211270;
  }

  else
  {
    v7 = 65542;
  }

  v8 = sub_25E1B1BE8(a1, a2, v6, v7);
  v9 = *v6;
  if (*v6)
  {
    v10 = v8;
    if (!v8)
    {
      MEMORY[0x25F8AE230](v6, -1, -1);
      return v9;
    }

    sub_25E1B17A0(*v6);
  }

  else
  {
    v10 = 0;
  }

  v9 = (v9 == 0);
  sub_25E1B2944();
  swift_allocError();
  *v11 = v10;
  *(v11 + 4) = v9;
  swift_willThrow();
  MEMORY[0x25F8AE230](v6, -1, -1);
  return v9;
}

void sub_25E1B1710()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_25E1B17A0(v1);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_25E1B1734()
{
  sub_25E1B1710();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_25E1B17A0(sqlite3 *a1)
{
  v1 = sqlite3_close_v2(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_2810B8A20 != -1)
    {
      swift_once();
    }

    v3 = sub_25E1B8680();
    __swift_project_value_buffer(v3, qword_2810B8CA0);
    oslog = sub_25E1B8660();
    v4 = sub_25E1B8710();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v2;
      _os_log_impl(&dword_25E1B0000, oslog, v4, "Close db connection failed with code %{public}d", v5, 8u);
      MEMORY[0x25F8AE230](v5, -1, -1);
    }
  }
}

uint64_t sub_25E1B18BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(swift_allocObject() + 16) = a4;
  sub_25E1B60B4(a1, a2, a3, 1, 2, sub_25E1B2998, &v10);

  if (!v4)
  {
    if (v11 == 255)
    {
      sub_25E1B2944();
      swift_allocError();
      *v9 = 2;
      *(v9 + 4) = 1;
      return swift_willThrow();
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void sub_25E1B19BC(sqlite3_stmt *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  switch(sqlite3_column_type(a1, 0))
  {
    case 1:
      if (!a2)
      {
        sqlite3_column_int64(a1, 0);
        v6 = sub_25E1B8760();
        goto LABEL_27;
      }

      if (a2 == 1)
      {
        *a3 = sqlite3_column_int64(a1, 0);
        *(a3 + 8) = 0;
        v13 = 1;
        break;
      }

      if (a2 != 4)
      {
        goto LABEL_21;
      }

      *a3 = sqlite3_column_int(a1, 0);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    case 2:
      if (!a2)
      {
        sqlite3_column_double(a1, 0);
        v6 = sub_25E1B8700();
        goto LABEL_27;
      }

      if (a2 == 2 || a2 == 5)
      {
        *a3 = sqlite3_column_double(a1, 0);
        *(a3 + 8) = 0;
        v13 = 4;
        break;
      }

      goto LABEL_21;
    case 3:
      if (a2)
      {
        goto LABEL_21;
      }

      if (sqlite3_column_bytes(a1, 0) >= 1 && sqlite3_column_text(a1, 0))
      {
        v6 = sub_25E1B86E0();
LABEL_27:
        *a3 = v6;
        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = xmmword_25E1B8C60;
      }

      v13 = 2;
      break;
    case 4:
      if (a2 != 3)
      {
        goto LABEL_21;
      }

      v8 = sqlite3_column_bytes(a1, 0);
      if (v8 >= 1 && (v9 = v8, (v10 = sqlite3_column_blob(a1, 0)) != 0))
      {
        *a3 = MEMORY[0x25F8ADC70](v10, v9);
        *(a3 + 8) = v11;
      }

      else
      {
        *a3 = xmmword_25E1B8C70;
      }

      v13 = 3;
      break;
    default:
LABEL_21:
      *a3 = 0;
      *(a3 + 8) = 0;
      v13 = -1;
      break;
  }

  *(a3 + 16) = v13;
}

uint64_t sub_25E1B1BA0@<X0>(char *zSql@<X0>, sqlite3 *db@<X1>, sqlite3_stmt **ppStmt@<X2>, const char **pzTail@<X3>, _DWORD *a5@<X8>)
{
  result = sqlite3_prepare_v2(db, zSql, -1, ppStmt, pzTail);
  *a5 = result;
  return result;
}

uint64_t sub_25E1B1BE8(uint64_t a1, uint64_t a2, sqlite3 **ppDb, int flags)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *filename = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = filename;
      return sqlite3_open_v2(v5, ppDb, flags, 0);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sqlite3_open_v2(v5, ppDb, flags, 0);
    }
  }

  result = sub_25E1B8740();
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_25E1B1CA0(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v11 = a1;
      v12 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if (v6 >= 0xFFFFFFFF80000000)
        {
          if (v6 <= 0x7FFFFFFF)
          {
            if (qword_2810B8B10 == -1)
            {
LABEL_14:
              v8 = qword_2810B8B08;
              v9 = v11;
              return sqlite3_bind_text(a3, v6, v9, -1, v8);
            }

LABEL_25:
            swift_once();
            goto LABEL_14;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if (v6 >= 0xFFFFFFFF80000000)
        {
          if (v6 <= 0x7FFFFFFF)
          {
            v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
            if (qword_2810B8B10 != -1)
            {
              swift_once();
            }

            v8 = qword_2810B8B08;
            v9 = (v7 + 32);
            return sqlite3_bind_text(a3, v6, v9, -1, v8);
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  result = sub_25E1B8740();
  if (!v4)
  {
    return v13;
  }

  return result;
}

uint64_t sub_25E1B1E28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_25E1B2944();
    swift_allocError();
    *v2 = v1;
    *(v2 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25E1B1E84(uint64_t a1, unint64_t a2, char a3, uint64_t a4, sqlite3_stmt *a5)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v6 = *v5;
  v7 = a1;
  switch(a3)
  {
    case 1:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_1();
      if (v8 != v9)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0();
      if (!(v8 ^ v9 | v11))
      {
        goto LABEL_51;
      }

      return sqlite3_bind_int64(a5, a2, v19);
    case 2:
      result = sub_25E1B1CA0(a1, a2, a5, a4);
      goto LABEL_42;
    case 3:
      switch(a2 >> 62)
      {
        case 1uLL:
          if (a1 >> 32 < a1)
          {
            goto LABEL_54;
          }

          a1 = a1;
          v20 = a2;
          v21 = v7 >> 32;
          break;
        case 2uLL:
          a1 = *(a1 + 16);
          v20 = a2;
          v21 = *(v7 + 24);
          break;
        case 3uLL:
          memset(v26, 0, 14);
          LODWORD(a2) = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_1();
          if (v8 != v9)
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_0();
          if (!(v8 ^ v9 | v11))
          {
            goto LABEL_57;
          }

          if (qword_2810B8B10 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_59;
        default:
          v26[0] = a1;
          LOWORD(v26[1]) = a2;
          BYTE2(v26[1]) = BYTE2(a2);
          BYTE3(v26[1]) = BYTE3(a2);
          BYTE4(v26[1]) = BYTE4(a2);
          BYTE5(v26[1]) = BYTE5(a2);
          v14 = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            goto LABEL_53;
          }

          if (v14 > 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          if (v14 < 0xFFFFFFFF80000000)
          {
            goto LABEL_58;
          }

          v15 = HIWORD(a2);
          if (qword_2810B8B10 != -1)
          {
            v25 = a5;
            swift_once();
            a5 = v25;
          }

          v16 = v15;
          v17 = a5;
          LODWORD(a2) = v14;
          v18 = qword_2810B8B08;
          goto LABEL_38;
      }

      result = sub_25E1B27F4(a1, v21, v20, a5, a4);
      goto LABEL_42;
    case 4:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
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
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_1();
      if (v8 != v9)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_0();
      if (v8 ^ v9 | v11)
      {

        return sqlite3_bind_double(a5, a2, v13);
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v23 = a2;
      v24 = a5;
      swift_once();
      LODWORD(a2) = v23;
      a5 = v24;
LABEL_37:
      v17 = a5;
      v16 = 0;
      v18 = qword_2810B8B08;
LABEL_38:
      result = sqlite3_bind_blob(v17, a2, v26, v16, v18);
LABEL_42:
      v22 = *MEMORY[0x277D85DE8];
      return result;
    default:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_1();
      if (v8 != v9)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0();
      if (!(v8 ^ v9 | v11))
      {
        goto LABEL_50;
      }

      return sqlite3_bind_int(a5, a2, v10);
  }
}

uint64_t sub_25E1B224C@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a4;
  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v5 = a1;
  if (qword_2810B8B10 != -1)
  {
LABEL_9:
    swift_once();
  }

  result = sqlite3_bind_text(v6, v7, v5, -1, qword_2810B8B08);
  *v4 = result;
  return result;
}

uint64_t sub_25E1B2328()
{
  v0 = sub_25E1B86C0();
  v2 = v1;
  if (v0 == sub_25E1B86C0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25E1B8770();
  }

  return v5 & 1;
}

uint64_t sub_25E1B23BC(uint64_t a1, id *a2)
{
  result = sub_25E1B86A0();
  *a2 = 0;
  return result;
}

uint64_t sub_25E1B2438(uint64_t a1, id *a2)
{
  v3 = sub_25E1B86B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E1B24B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1B29EC();
  *a1 = result;
  return result;
}

uint64_t sub_25E1B24E8()
{
  v0 = sub_25E1B86C0();
  v1 = MEMORY[0x25F8ADD50](v0);

  return v1;
}

uint64_t sub_25E1B2528()
{
  sub_25E1B86C0();
  sub_25E1B86D0();
}

uint64_t sub_25E1B2584()
{
  sub_25E1B86C0();
  sub_25E1B87C0();
  sub_25E1B86D0();
  v0 = sub_25E1B87E0();

  return v0;
}

uint64_t sub_25E1B25F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25E1B2328();
}

uint64_t sub_25E1B2604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E1B8690();

  *a2 = v5;
  return result;
}

uint64_t sub_25E1B264C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1B2678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E1B267C(uint64_t a1)
{
  v2 = sub_25E1B277C(&qword_27FCDEDD8);
  v3 = sub_25E1B277C(&qword_27FCDEDE0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E1B277C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E1B27F4(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v10 = sub_25E1B84F0();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_25E1B8500();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v7 = a5 + 1;
      if (!__OFADD__(a5, 1))
      {
        if (v7 >= 0xFFFFFFFF80000000)
        {
          if (v7 <= 0x7FFFFFFF)
          {
            if (v10)
            {
              a5 = v15;
            }

            else
            {
              a5 = 0;
            }

            if (a5 >= 0xFFFFFFFF80000000)
            {
              if (a5 <= 0x7FFFFFFF)
              {
                if (qword_2810B8B10 == -1)
                {
                  return sqlite3_bind_blob(a4, v7, v10, a5, qword_2810B8B08);
                }

LABEL_24:
                swift_once();
                return sqlite3_bind_blob(a4, v7, v10, a5, qword_2810B8B08);
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  result = sub_25E1B8510();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t sub_25E1B2944()
{
  result = qword_2810B8A10;
  if (!qword_2810B8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B8A10);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E1B29EC()
{
  sub_25E1B86C0();
  v0 = sub_25E1B8690();

  return v0;
}

uint64_t sub_25E1B2A24@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_open_v2(a1, *(v2 + 16), *(v2 + 24), 0);
  *a2 = result;
  return result;
}

uint64_t sub_25E1B2A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E1B2A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_25E1B2ACC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataStore.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataStore.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25E1B2B78(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E1B2B98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E1B2C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_25E1B2C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t PegasusPersistenceReader.codableForResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E1B84B0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v16[3] = v12;
  v16[4] = &protocol witness table for JSONDecoder;
  v16[0] = sub_25E1B84A0();
  (*(a5 + 24))(a1, a2, v16, a4, a6, a3, a5);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t PegasusPersistenceReader.codableForResource<A>(_:decoder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a6 + 8))(a1, a2, a4, a6);
  if (!v7)
  {
    v13 = result;
    v14 = v12;
    v17 = a7;
    v16 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v16);
    (*(v15 + 8))(a5, v13, v14, a5, v17, v16, v15);
    return sub_25E1B2F5C(v13, v14);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E1B2F5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static PegasusKeyValueElement<>.read(fromPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  return (*(v11 + 104))(a2, a3, a4, a6, v10, v11);
}

uint64_t PegasusKeyValueElement<>.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  return (*(v13 + 112))(v7, a2, a3, a4, a7, v12, v13);
}

uint64_t static Int.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_0_0();
  return v4(v3);
}

uint64_t Int.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_3(a1);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_2();
  return v3();
}

uint64_t sub_25E1B3224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int.read(fromPegasusKeyValueStore:at:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static Double.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_0_0();
  return v4(v3);
}

uint64_t Double.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 48))(a2, a3, v7, v8, a4);
}

uint64_t sub_25E1B3334@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Double.read(fromPegasusKeyValueStore:at:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static Date.read(fromPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 88))(a2, a3, v5, v6);
}

uint64_t Date.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_3(a1);
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_2();
  return v3();
}

uint64_t static Bool.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_0_0();
  return v4(v3);
}

uint64_t Bool.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_3(a1);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_2();
  return v3();
}

uint64_t sub_25E1B34E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.read(fromPegasusKeyValueStore:at:)(a1);
  *a2 = result;
  return result;
}

uint64_t static Data.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_0_0();
  return v4(v3);
}

uint64_t Data.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_5(a1);
  v2 = *(v1 + 64);
  v3 = OUTLINED_FUNCTION_4();
  return v4(v3);
}

uint64_t sub_25E1B35B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.read(fromPegasusKeyValueStore:at:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E1B35DC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Data.write(toPegasusKeyValueStore:at:)(a1);
}

uint64_t static String.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_0_0();
  return v4(v3);
}

uint64_t String.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_5(a1);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_4();
  return v4(v3);
}

uint64_t sub_25E1B3680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.read(fromPegasusKeyValueStore:at:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E1B36A8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return String.write(toPegasusKeyValueStore:at:)(a1);
}

uint64_t sub_25E1B37E8(uint64_t a1, uint64_t a2)
{
  v25[0] = a2;
  v3 = sub_25E1B8580();
  v4 = OUTLINED_FUNCTION_0_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E1B85F0();
  v12 = OUTLINED_FUNCTION_0_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  v25[2] = a1;
  v25[3] = v25[0];
  (*(v6 + 104))(v10, *MEMORY[0x277CC91D0], v3);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v6 + 8))(v10, v3);
  sub_25E1B8570();
  v22 = *(v14 + 8);
  v22(v19, v11);
  v23 = sub_25E1B8600();
  v22(v21, v11);
  return v23;
}

uint64_t sub_25E1B3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a4;
  v26[2] = a1;
  v26[3] = a2;
  v5 = sub_25E1B8580();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E1B85F0();
  v14 = OUTLINED_FUNCTION_0_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v26 - v22;
  v26[4] = a3;
  v26[5] = v26[0];
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D0], v5);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v8 + 8))(v12, v5);
  sub_25E1B8570();
  v24 = *(v16 + 8);
  v24(v21, v13);
  sub_25E1B8620();
  return (v24)(v23, v13);
}

uint64_t sub_25E1B3C20()
{
  v1 = OBJC_IVAR____TtC18PegasusPersistence22PegasusFilePersistence_baseFolder;
  v2 = sub_25E1B85F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PegasusFilePersistence()
{
  result = qword_27FCDEDF0;
  if (!qword_27FCDEDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E1B3D10()
{
  result = sub_25E1B85F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25E1B3DE8()
{
  result = qword_2810B8A60;
  if (!qword_2810B8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B8A60);
  }

  return result;
}

uint64_t sub_25E1B3E50()
{
  v0 = sub_25E1B8680();
  __swift_allocate_value_buffer(v0, qword_2810B8CA0);
  __swift_project_value_buffer(v0, qword_2810B8CA0);
  return sub_25E1B8670();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t PegasusPersistenceContext.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E1B85F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PegasusPersistenceContext.init(location:fileManager:)@<X0>(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1(v6);
  v8 = v7;
  (*(v9 + 16))(a3, a1, v6);
  if (!a2)
  {
    a2 = [objc_opt_self() defaultManager];
  }

  (*(v8 + 8))(a1, v6);
  result = type metadata accessor for PegasusPersistenceContext();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for PegasusPersistenceContext()
{
  result = qword_2810B8C10;
  if (!qword_2810B8C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PegasusPersistenceContext.localDirectory()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56[7] = *MEMORY[0x277D85DE8];
  v4 = sub_25E1B8550();
  v52 = OUTLINED_FUNCTION_0_1(v4);
  v53 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v50 - v10;
  v11 = sub_25E1B85F0();
  v12 = OUTLINED_FUNCTION_0_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E1B8580();
  v20 = OUTLINED_FUNCTION_0_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = 0x6C61636F6CLL;
  v56[1] = 0xE500000000000000;
  (*(v22 + 104))(v26, *MEMORY[0x277CC91C0], v19);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v22 + 8))(v26, v19);
  sub_25E1B8570();
  sub_25E1B85D0();
  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v27 = v29;
  v30 = v18;
  v31 = v11;
  v32 = a1;
  v29(v30, v11);
  v33 = *(v2 + *(type metadata accessor for PegasusPersistenceContext() + 20));
  v34 = v55;
  v35 = sub_25E1B8690();

  LOBYTE(v26) = [v33 fileExistsAtPath_];

  if ((v26 & 1) == 0)
  {
    v36 = sub_25E1B85C0();
    v56[0] = 0;
    v37 = [v33 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v56];

    if (!v37)
    {
      v48 = v56[0];
      sub_25E1B8560();

      swift_willThrow();
      result = v27(v32, v31);
      goto LABEL_10;
    }

    v38 = v56[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEE00, &qword_25E1B9160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E1B9150;
  v40 = *MEMORY[0x277CBE878];
  *(inited + 32) = *MEMORY[0x277CBE878];
  v41 = v40;
  sub_25E1B45E4(inited);
  v42 = v54;
  sub_25E1B85A0();
  if (v42)
  {
    v27(v32, v31);
  }

  else
  {
    v54 = v28;

    v44 = sub_25E1B8520();
    v45 = v52;
    v46 = *(v53 + 8);
    v53 += 8;
    result = v46(v34, v52);
    if (v44 != 2 && (v44 & 1) == 0)
    {
      v47 = v51;
      sub_25E1B8540();
      sub_25E1B8530();
      sub_25E1B85B0();
      result = v46(v47, v45);
    }
  }

LABEL_10:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_25E1B45E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEE08, &unk_25E1B9190), v2 = sub_25E1B8730(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_25E1B86C0();
      sub_25E1B87C0();
      v27 = v6;
      sub_25E1B86D0();
      v8 = sub_25E1B87E0();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_25E1B86C0();
        v17 = v16;
        if (v15 == sub_25E1B86C0() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_25E1B8770();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

unint64_t sub_25E1B4860()
{
  result = sub_25E1B85F0();
  if (v1 <= 0x3F)
  {
    result = sub_25E1B48E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25E1B48E4()
{
  result = qword_2810B8A18;
  if (!qword_2810B8A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810B8A18);
  }

  return result;
}

void PegasusKeyValueStore.codable<A>(for:)()
{
  OUTLINED_FUNCTION_2_0();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_25E1B8720();
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v21 = (*(v2 + 56))(v10, v8, v6, v2);
  if (v22 >> 60 == 15)
  {
    OUTLINED_FUNCTION_1_1();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    v28 = v21;
    v29 = v22;
    v30 = sub_25E1B84B0();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_25E1B84A0();
    sub_25E1B8490();
    sub_25E1B4B08(v28, v29);

    __swift_storeEnumTagSinglePayload(v20, 0, 1, v4);
    (*(v15 + 32))(v12, v20, v13);
    OUTLINED_FUNCTION_1_1();
  }
}

uint64_t sub_25E1B4B08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25E1B2F5C(a1, a2);
  }

  return a1;
}

uint64_t PegasusKeyValueStore.setCodable<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_25E1B84E0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_25E1B84D0();
  v14 = sub_25E1B84C0();
  v16 = v15;

  if (!v6)
  {
    (*(a6 + 64))(v14, v16, a2, a3, a4, a6);
    return sub_25E1B2F5C(v14, v16);
  }

  return result;
}

uint64_t PegasusKeyValueStore.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a3;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  (*(a6 + 8))(v14, a1, a2, a4, a6);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void PegasusKeyValueStore.subscript.setter()
{
  OUTLINED_FUNCTION_2_0();
  v30 = v2;
  v31 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v32 = v9;
  v11 = v10;
  v12 = sub_25E1B8720();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v14 + 16);
  v33 = v11;
  v27(v19, v11, v12);
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    v28 = *(v14 + 8);
    v28(v19, v12);
    (*(v4 + 120))(v31, v32, v8, v4);
    v28(v33, v12);
  }

  else
  {
    (*(v21 + 32))(v26, v19, v6);
    v34[3] = v8;
    v34[4] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v0, v8);
    (*(v30 + 16))(v34, v31, v32, v6);

    (*(v14 + 8))(v33, v12);
    (*(v21 + 8))(v26, v6);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  OUTLINED_FUNCTION_1_1();
}

uint64_t (*sub_25E1B5054(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  PegasusKeyValueStore.subscript.modify();
  v2[4] = v3;
  return sub_25E1B50F8;
}

void PegasusKeyValueStore.subscript.modify()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_coroFrameAllocStub(0x58uLL);
  *v14 = v15;
  v15[5] = v2;
  v15[6] = v0;
  v15[3] = v6;
  v15[4] = v4;
  v15[1] = v10;
  v15[2] = v8;
  *v15 = v12;
  v16 = sub_25E1B8720();
  v15[7] = v16;
  v17 = *(v16 - 8);
  v15[8] = v17;
  v18 = *(v17 + 64);
  v15[9] = __swift_coroFrameAllocStub(v18);
  v15[10] = __swift_coroFrameAllocStub(v18);
  PegasusKeyValueStore.subscript.getter(v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_1_1();
}

void sub_25E1B5218(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[7];
    v6 = v2[8];
    v19 = v2[5];
    v20 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v10 = v2[1];
    v9 = v2[2];
    v11 = *v2;
    (*(v6 + 16))(v3, v4, v5);

    PegasusKeyValueStore.subscript.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = v2[5];
    v12 = v2[6];
    v15 = v2[3];
    v14 = v2[4];
    v17 = v2[1];
    v16 = v2[2];
    v18 = *v2;

    PegasusKeyValueStore.subscript.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t PegasusKeyValueStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v1);
  return sub_25E1B87E0();
}

uint64_t sub_25E1B5408()
{
  v1 = *v0;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v1);
  return sub_25E1B87E0();
}

unint64_t sub_25E1B5450()
{
  result = qword_27FCDEE10[0];
  if (!qword_27FCDEE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDEE10);
  }

  return result;
}

void sub_25E1B54D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = sub_25E1B8720();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = *a3;
  v13 = a3[1];
  (*(v15 + 16))(&v16 - v12, a1);

  PegasusKeyValueStore.subscript.setter();
}

uint64_t getEnumTagSinglePayload for PegasusKeyValueStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusKeyValueStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25E1B5A04()
{
  result = sub_25E1B73B4();
  if (v2 != 3)
  {
    if (v2 != 255)
    {
      sub_25E1B5FA8(result, v1, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25E1B5A68()
{
  v0 = sub_25E1B73B4();
  if (v2 != 255)
  {
    if (!v2)
    {
      return v0 == 1;
    }

    sub_25E1B5FA8(v0, v1, v2);
  }

  return 2;
}

uint64_t sub_25E1B5AD8()
{
  result = sub_25E1B73B4();
  if (v2 != 255)
  {
    if (v2 == 2)
    {
      return result;
    }

    sub_25E1B5FA8(result, v1, v2);
  }

  return 0;
}

uint64_t sub_25E1B5B3C()
{
  result = sub_25E1B73B4();
  if (v2 != 1)
  {
    if (v2 != 255)
    {
      sub_25E1B5FA8(result, v1, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25E1B5BB8()
{
  result = sub_25E1B73B4();
  if (v2 != 255)
  {
    if (v2 == 4)
    {
      return result;
    }

    sub_25E1B5FA8(result, v1, v2);
  }

  return 0;
}

uint64_t sub_25E1B5C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E1B73B4();
  if (v4 != 255)
  {
    if (v4 == 4)
    {
      sub_25E1B8630();
      v5 = 0;
      goto LABEL_6;
    }

    sub_25E1B5FA8(v2, v3, v4);
  }

  v5 = 1;
LABEL_6:
  v6 = sub_25E1B8650();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_25E1B5ECC()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *v1 = v2;
  PegasusKeyValueStore.subscript.modify();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_1();
}

void sub_25E1B5F60(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25E1B5FA8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25E1B5FBC(result, a2, a3);
  }

  return result;
}

uint64_t sub_25E1B5FBC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_25E1B2F5C(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25E1B6024()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_25E1B60B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr)@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v7 + 16);
  if (v9)
  {
    v51 = a5;
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25E1B66B0(a1, a2, v9, v14, v15);
    sub_25E1B1E28(v16);
    if (v8)
    {
LABEL_3:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
      return;
    }

    v18 = *v14;
    if (!*v14)
    {
      sub_25E1B2944();
      OUTLINED_FUNCTION_4_0();
      *v35 = 1;
      *(v35 + 4) = 1;
      swift_willThrow();
      goto LABEL_3;
    }

    v45 = a7;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
    v19 = 0;
    v20 = *(a3 + 16);
    v21 = (a3 + 48);
    while (v20 != v19)
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      v25 = OUTLINED_FUNCTION_1_2();
      sub_25E1B7C7C(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_1_2();
      v31 = sub_25E1B1E84(v28, v29, v30, v19, v18);
      sub_25E1B1E28(v31);
      ++v19;
      v32 = OUTLINED_FUNCTION_1_2();
      sub_25E1B5FBC(v32, v33, v34);
      v21 += 24;
    }

    v36 = 0;
    v37 = v51;
    while (1)
    {
      v38 = sqlite3_step(v18);
      if (v38 != 100)
      {
        break;
      }

      if (v36 + 1 >= v37)
      {
        goto LABEL_23;
      }

      if (a6)
      {
        a6(&v48);
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = -1;
      }

      v39 = v49;
      v40 = v50;
      if (v36 + 2 >= v37)
      {
        *v45 = v48;
        *(v45 + 8) = v39;
        *(v45 + 16) = v40;
        goto LABEL_28;
      }

      sub_25E1B5FA8(v48, v49, v50);
      ++v36;
    }

    v41 = v38;
    if (v38 != 101)
    {
      sub_25E1B2944();
      OUTLINED_FUNCTION_4_0();
      *v44 = v41;
      *(v44 + 4) = 0;
      goto LABEL_25;
    }

    if (v36 < a4 || v36 >= v37)
    {
LABEL_23:
      sub_25E1B2944();
      OUTLINED_FUNCTION_4_0();
      *v43 = 3;
      *(v43 + 4) = 1;
LABEL_25:
      swift_willThrow();
      goto LABEL_28;
    }

    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = -1;
LABEL_28:
    sqlite3_finalize(v18);
  }

  else
  {
    sub_25E1B2944();
    OUTLINED_FUNCTION_4_0();
    *v17 = 0;
    *(v17 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_25E1B6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr), uint64_t a7)
{
  v9 = *(v7 + 16);
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25E1B66B0(a1, a2, v9, v14, v15);
    sub_25E1B1E28(v16);
    if (!v8)
    {
      v18 = *v14;
      if (*v14)
      {
        v34 = a4;
        MEMORY[0x25F8AE230](v15, -1, -1);
        MEMORY[0x25F8AE230](v14, -1, -1);
        v19 = 0;
        v20 = *(a3 + 16);
        v21 = (a3 + 48);
        while (v20 != v19)
        {
          v22 = *(v21 - 2);
          v23 = *(v21 - 1);
          v24 = *v21;
          sub_25E1B7C7C(v22, v23, *v21);
          v25 = sub_25E1B1E84(v22, v23, v24, v19, v18);
          sub_25E1B1E28(v25);
          ++v19;
          sub_25E1B5FBC(v22, v23, v24);
          v21 += 24;
        }

        v27 = 0;
        v7 = a7;
        while (1)
        {
          v28 = sqlite3_step(v18);
          if (v28 != 100)
          {
            break;
          }

          if (v27 + 1 >= a5)
          {
            goto LABEL_25;
          }

          if (a6)
          {
            a6(&v38);
          }

          else
          {
            LOBYTE(v38) = 1;
          }

          if (v27 + 2 >= a5)
          {
            v7 = v38;
            goto LABEL_27;
          }

          ++v27;
        }

        v29 = v28;
        if (v28 == 101)
        {
          v7 = 1;
          if (v27 >= v34 && v27 < a5)
          {
LABEL_27:
            sqlite3_finalize(v18);
            return v7;
          }

LABEL_25:
          sub_25E1B2944();
          swift_allocError();
          *v32 = 3;
          *(v32 + 4) = 1;
        }

        else
        {
          sub_25E1B2944();
          swift_allocError();
          *v31 = v29;
          *(v31 + 4) = 0;
        }

        swift_willThrow();
        goto LABEL_27;
      }

      sub_25E1B2944();
      swift_allocError();
      *v26 = 1;
      *(v26 + 4) = 1;
      swift_willThrow();
    }

    MEMORY[0x25F8AE230](v15, -1, -1);
    MEMORY[0x25F8AE230](v14, -1, -1);
  }

  else
  {
    sub_25E1B2944();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_25E1B66B0(uint64_t a1, uint64_t a2, sqlite3 *db, sqlite3_stmt **a4, const char **a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *zSql = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = zSql;
      return sqlite3_prepare_v2(db, v6, -1, a4, a5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sqlite3_prepare_v2(db, v6, -1, a4, a5);
    }
  }

  result = sub_25E1B8740();
  if (!v5)
  {
    return v10;
  }

  return result;
}

void sub_25E1B6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  sub_25E1B7D78((a3 + 16));
  os_unfair_lock_unlock((a3 + 24));
}

void *sub_25E1B67C4(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v6);
  if (!v2)
  {
    v5 = *a1;

    *a1 = v6;
  }

  return result;
}

uint64_t *static PegasusKeyValueStoreFactory.store(at:requiresAuthentication:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t **a3@<X8>)
{
  v7 = sub_25E1B85F0();
  v8 = OUTLINED_FUNCTION_0_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11, a1);
  v15 = type metadata accessor for KeyValueStore();
  swift_allocObject();
  result = sub_25E1B6E44(v13, a2);
  if (!v3)
  {
    a3[3] = v15;
    a3[4] = &off_286FDF040;
    *a3 = result;
  }

  return result;
}

uint64_t static PegasusKeyValueStoreFactory.deviceInfoStore(context:name:requiresAuthentication:)@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, uint64_t **a4@<X8>)
{
  v42 = a3;
  v37 = a1;
  v38 = a2;
  v36 = a4;
  v5 = sub_25E1B8580();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  v39 = sub_25E1B85F0();
  v14 = OUTLINED_FUNCTION_0_1(v39);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v36 - v25;
  result = PegasusPersistenceContext.localDirectory()(v24);
  if (!v4)
  {
    v28 = 0x642E656369766564;
    if (v38)
    {
      v28 = v37;
    }

    v29 = 0xE900000000000062;
    if (v38)
    {
      v29 = v38;
    }

    v37 = v29;
    v40 = v28;
    v41 = v29;
    (*(v8 + 104))(v13, *MEMORY[0x277CC91D0], v5);
    sub_25E1B3DE8();

    sub_25E1B85E0();
    (*(v8 + 8))(v13, v5);

    v30 = *(v16 + 8);
    v31 = v24;
    v32 = v39;
    v30(v31, v39);
    (*(v16 + 16))(v21, v26, v32);
    v33 = type metadata accessor for KeyValueStore();
    swift_allocObject();
    v34 = sub_25E1B6E44(v21, v42 & 1);
    v35 = v36;
    v36[3] = v33;
    v35[4] = &off_286FDF040;
    *v35 = v34;
    return (v30)(v26, v32);
  }

  return result;
}

uint64_t static PegasusKeyValueStoreFactory.defaultStore(at:requiresAuthentication:)@<X0>(int a1@<W1>, uint64_t **a2@<X8>)
{
  v29 = a2;
  v3 = sub_25E1B8580();
  v4 = OUTLINED_FUNCTION_0_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  v12 = sub_25E1B85F0();
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v30 = 0xD000000000000017;
  v31 = 0x800000025E1BA1A0;
  (*(v6 + 104))(v11, *MEMORY[0x277CC91D0], v3);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v6 + 8))(v11, v3);
  (*(v15 + 16))(v20, v22, v12);
  v23 = type metadata accessor for KeyValueStore();
  swift_allocObject();
  v24 = v32;
  v25 = sub_25E1B6E44(v20, a1);
  if (!v24)
  {
    v26 = v29;
    v29[3] = v23;
    v26[4] = &off_286FDF040;
    *v26 = v25;
  }

  return (*(v15 + 8))(v22, v12);
}

uint64_t *sub_25E1B6E44(uint64_t a1, int a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_25E1B85F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  type metadata accessor for DataStore();
  swift_allocObject();
  v13 = sub_25E1B1470(v12, a2);
  if (v3)
  {
    (*(v9 + 8))(a1, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    sub_25E1B6378(0xD000000000000058, 0x800000025E1BA330, MEMORY[0x277D84F90], 0, 1, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA8, &qword_25E1B9418);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 16) = v14;
    (*(v9 + 8))(a1, v8);
    v4[2] = v16;
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for PegasusKeyValueStoreFactory(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PegasusKeyValueStoreFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_25E1B7168()
{
  sub_25E1B6764(sub_25E1B7330, 0, *(v0 + 16));

  return v0;
}

uint64_t sub_25E1B7208()
{
  v0 = sub_25E1B7168();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25E1B7244(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E1B7294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25E1B72E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25E1B7300(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25E1B7330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;

    sub_25E1B1710();

    *a2 = 0;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    *v5 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25E1B73B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7BBC();
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_25E1B7434()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7D94();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_25E1B7504()
{
  v1 = v0[2];
  v2 = *v0;
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7D94();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_25E1B75C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7BBC();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_25E1B7640(uint64_t *a1)
{
  if (*a1)
  {
    v2 = *a1;

    sub_25E1B6378(0xD000000000000022, 0x800000025E1BA300, MEMORY[0x277D84F90], 0, 1, 0, 0);
    if (!v1)
    {
      sub_25E1B6378(0xD000000000000058, 0x800000025E1BA330, MEMORY[0x277D84F90], 0, 1, 0, 0);
    }
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

void *sub_25E1B7730@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, unsigned __int8 a4@<W4>, uint64_t a5@<X8>)
{
  if (!*result)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E1B9360;
  *(inited + 32) = a4 + 1;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  *(inited + 72) = 2;

  v12 = sub_25E1B18BC(0xD00000000000003ALL, 0x800000025E1BA2C0, inited, a4);
  if (v5)
  {

    swift_setDeallocating();
    result = sub_25E1B7C38();
LABEL_7:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = -1;
    return result;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;

  swift_setDeallocating();
  result = sub_25E1B7C38();
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17;
  return result;
}

uint64_t sub_25E1B7888(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7, char a8)
{
  if (*a1)
  {
    v10 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E1B9370;
      *(inited + 32) = a3;
      *(inited + 40) = a4;
      *(inited + 48) = 2;
      v16 = a5 + 1;
      *(inited + 56) = v16;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 80) = a6;
      *(inited + 88) = a7;
      *(inited + 96) = a8;
      *(inited + 104) = v16;
      *(inited + 112) = 0;
      *(inited + 120) = 0;
      *(inited + 128) = a6;
      *(inited + 136) = a7;
      *(inited + 144) = a8;
      sub_25E1B7C7C(a6, a7, a8);
      sub_25E1B7C7C(a6, a7, a8);

      sub_25E1B6378(0xD00000000000006FLL, 0x800000025E1BA250, inited, 0, 1, 0, 0);

      swift_setDeallocating();
      return sub_25E1B7C38();
    }

    sub_25E1B7BE4();
    swift_allocError();
    v19 = 1;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    v19 = 2;
  }

  *v18 = v19;
  return swift_willThrow();
}

uint64_t sub_25E1B7A4C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*a1)
  {
    v6 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v6 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E1B9150;
      *(inited + 32) = a3;
      *(inited + 40) = a4;
      *(inited + 48) = 2;

      sub_25E1B6378(0xD000000000000027, 0x800000025E1BA220, inited, 0, 1, 0, 0);

      swift_setDeallocating();
      return sub_25E1B7C38();
    }

    sub_25E1B7BE4();
    swift_allocError();
    v10 = 1;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    v10 = 2;
  }

  *v9 = v10;
  return swift_willThrow();
}

uint64_t sub_25E1B7BBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_25E1B7BE4()
{
  result = qword_27FCDEE98;
  if (!qword_27FCDEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDEE98);
  }

  return result;
}

uint64_t sub_25E1B7C38()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25E1B7C7C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_25E1B7CA0(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25E1B7CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void OUTLINED_FUNCTION_3_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x25F8AE230);
}

uint64_t PegasusPersistenceControllerError.hashValue.getter()
{
  v1 = *v0;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v1);
  return sub_25E1B87E0();
}

uint64_t static PegasusPersistenceControllerFactory.create(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25E1B85F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = type metadata accessor for PegasusFilePersistence();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  result = (*(v5 + 32))(v12 + OBJC_IVAR____TtC18PegasusPersistence22PegasusFilePersistence_baseFolder, v8, v4);
  a2[3] = v9;
  a2[4] = &off_286FDEE58;
  *a2 = v12;
  return result;
}

unint64_t sub_25E1B7FC0()
{
  result = qword_27FCDEEB0;
  if (!qword_27FCDEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDEEB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusPersistenceControllerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusPersistenceControllerFactory(_BYTE *result, int a2, int a3)
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

uint64_t PegasusPersistenceWriter.persistCodable<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_25E1B84E0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v18[3] = v14;
  v18[4] = &protocol witness table for JSONEncoder;
  v18[0] = sub_25E1B84D0();
  (*(a6 + 24))(a1, v18, a2, a3, a5, a7, a4, a6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t PegasusPersistenceWriter.persistCodable<A>(_:encoder:name:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  result = (*(v14 + 8))(a1, a6, a8, v13, v14);
  if (!v8)
  {
    v17 = result;
    v18 = v16;
    (*(a7 + 8))();
    return sub_25E1B2F5C(v17, v18);
  }

  return result;
}