void *sub_1AF6A10C0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t sub_1AF6A124C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1AF6A13CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1AF6A1618()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1AF6A16B8(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 8) & ~v5, (a2 + v5 + 8) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *sub_1AF6A17E0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_1AF6A1850(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_1AF6A18C0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_1AF6A1930(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_1AF6A19A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1AF6A1B00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t initializeWithCopy for StringCodingKeys(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for StringCodingKeys(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t assignWithTake for StringCodingKeys(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

unint64_t sub_1AF6A1E50()
{
  result = qword_1EB63D298;
  if (!qword_1EB63D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D298);
  }

  return result;
}

unint64_t sub_1AF6A1EA8()
{
  result = qword_1ED72B288;
  if (!qword_1ED72B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72B288);
  }

  return result;
}

unint64_t sub_1AF6A1F00()
{
  result = qword_1ED72B290;
  if (!qword_1ED72B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72B290);
  }

  return result;
}

unint64_t sub_1AF6A1F58()
{
  result = qword_1ED72AEC0;
  if (!qword_1ED72AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72AEC0);
  }

  return result;
}

unint64_t sub_1AF6A1FB0()
{
  result = qword_1ED72AEB8;
  if (!qword_1ED72AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72AEB8);
  }

  return result;
}

unint64_t sub_1AF6A201C()
{
  result = qword_1EB63D2A8;
  if (!qword_1EB63D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2A8);
  }

  return result;
}

void sub_1AF6A2070(void *a1, id a2, unsigned __int8 a3)
{
  if ((a3 >> 5) > 6u)
  {
  }

  else
  {
  }
}

unint64_t sub_1AF6A20C8()
{
  result = qword_1ED72A8E8[0];
  if (!qword_1ED72A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED72A8E8);
  }

  return result;
}

unint64_t sub_1AF6A211C()
{
  result = qword_1ED726C78;
  if (!qword_1ED726C78)
  {
    sub_1AF6A24BC(255, &unk_1ED726C80, &type metadata for EntityTableEntryCoder, MEMORY[0x1E69E62F8]);
    sub_1AF6A21B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C78);
  }

  return result;
}

unint64_t sub_1AF6A21B8()
{
  result = qword_1ED7285E8;
  if (!qword_1ED7285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7285E8);
  }

  return result;
}

unint64_t sub_1AF6A220C()
{
  result = qword_1EB63D2B8;
  if (!qword_1EB63D2B8)
  {
    sub_1AF6A24BC(255, &qword_1EB63D2B0, &type metadata for EntityCoder, MEMORY[0x1E69E62F8]);
    sub_1AF69D570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2B8);
  }

  return result;
}

unint64_t sub_1AF6A22A8()
{
  result = qword_1ED726C98;
  if (!qword_1ED726C98)
  {
    sub_1AF6A24BC(255, &qword_1ED726CA0, &type metadata for RelationsCoder, MEMORY[0x1E69E62F8]);
    sub_1AF69D968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C98);
  }

  return result;
}

unint64_t sub_1AF6A2344()
{
  result = qword_1EB63D2C8;
  if (!qword_1EB63D2C8)
  {
    sub_1AF6A24BC(255, &qword_1EB63D2C0, &type metadata for ComponentProperty, MEMORY[0x1E69E62F8]);
    sub_1AF648860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2C8);
  }

  return result;
}

uint64_t sub_1AF6A23E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AF6A2428()
{
  result = qword_1ED726C58;
  if (!qword_1ED726C58)
  {
    sub_1AF6A24BC(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C58);
  }

  return result;
}

void sub_1AF6A24BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF6A2518()
{
  result = qword_1ED72D8C8[0];
  if (!qword_1ED72D8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED72D8C8);
  }

  return result;
}

unint64_t sub_1AF6A256C()
{
  result = qword_1ED72C188;
  if (!qword_1ED72C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72C188);
  }

  return result;
}

unint64_t sub_1AF6A25C0()
{
  result = qword_1EB63D2D0;
  if (!qword_1EB63D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2D0);
  }

  return result;
}

unint64_t sub_1AF6A2614()
{
  result = qword_1EB63D2E0;
  if (!qword_1EB63D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2E0);
  }

  return result;
}

uint64_t sub_1AF6A2668(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF69DA10(255, &qword_1ED72C770, sub_1AF69D570, sub_1AF69D5C4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF6A2708()
{
  result = qword_1EB63D2F8;
  if (!qword_1EB63D2F8)
  {
    sub_1AF6A24BC(255, &qword_1ED726CA0, &type metadata for RelationsCoder, MEMORY[0x1E69E62F8]);
    sub_1AF69D9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D2F8);
  }

  return result;
}

unint64_t sub_1AF6A2814()
{
  result = qword_1EB63D308;
  if (!qword_1EB63D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D308);
  }

  return result;
}

unint64_t sub_1AF6A286C()
{
  result = qword_1EB63D310;
  if (!qword_1EB63D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D310);
  }

  return result;
}

unint64_t sub_1AF6A28C4()
{
  result = qword_1EB63D318;
  if (!qword_1EB63D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D318);
  }

  return result;
}

unint64_t sub_1AF6A291C()
{
  result = qword_1EB63D320;
  if (!qword_1EB63D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D320);
  }

  return result;
}

unint64_t sub_1AF6A2974()
{
  result = qword_1ED72D8B8;
  if (!qword_1ED72D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72D8B8);
  }

  return result;
}

unint64_t sub_1AF6A29CC()
{
  result = qword_1ED72D8C0;
  if (!qword_1ED72D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72D8C0);
  }

  return result;
}

unint64_t sub_1AF6A2A24()
{
  result = qword_1ED72A8D8;
  if (!qword_1ED72A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72A8D8);
  }

  return result;
}

unint64_t sub_1AF6A2A7C()
{
  result = qword_1ED72A8E0;
  if (!qword_1ED72A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72A8E0);
  }

  return result;
}

unint64_t sub_1AF6A2AD4()
{
  result = qword_1EB63D328;
  if (!qword_1EB63D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D328);
  }

  return result;
}

unint64_t sub_1AF6A2B2C()
{
  result = qword_1EB63D330;
  if (!qword_1EB63D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D330);
  }

  return result;
}

unint64_t sub_1AF6A2BB8()
{
  result = qword_1ED728600;
  if (!qword_1ED728600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED728600);
  }

  return result;
}

void sub_1AF6A2C0C()
{
  if (!qword_1ED726A80)
  {
    sub_1AF6A2C9C(255, &qword_1ED726A88, sub_1AF6A2D04, &type metadata for ComponentCoder.CodingKeys_pre2000, MEMORY[0x1E69E6F48]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726A80);
    }
  }
}

void sub_1AF6A2C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF6A2D04()
{
  result = qword_1ED72C1A0;
  if (!qword_1ED72C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72C1A0);
  }

  return result;
}

uint64_t sub_1AF6A2D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF6A2DB8(uint64_t a1, uint64_t a2)
{
  sub_1AF69D4DC(0, &qword_1ED7268D8, &qword_1ED7268E0, MEMORY[0x1E69E6FA0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6A2E48(uint64_t a1, uint64_t a2)
{
  sub_1AF6A2C0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6A2EAC(uint64_t a1, uint64_t a2)
{
  sub_1AF6A2C0C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF6A2F10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF69D4DC(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1AF6A2FA4()
{
  result = qword_1EB63D348;
  if (!qword_1EB63D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D348);
  }

  return result;
}

unint64_t sub_1AF6A2FFC()
{
  result = qword_1EB63D350;
  if (!qword_1EB63D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D350);
  }

  return result;
}

unint64_t sub_1AF6A3054()
{
  result = qword_1ED72C190;
  if (!qword_1ED72C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72C190);
  }

  return result;
}

unint64_t sub_1AF6A30AC()
{
  result = qword_1ED72C198;
  if (!qword_1ED72C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72C198);
  }

  return result;
}

unint64_t sub_1AF6A3104()
{
  result = qword_1ED7285F0;
  if (!qword_1ED7285F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7285F0);
  }

  return result;
}

unint64_t sub_1AF6A315C()
{
  result = qword_1ED7285F8;
  if (!qword_1ED7285F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7285F8);
  }

  return result;
}

uint64_t sub_1AF6A31C4(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + 96);
  v5 = *(v1 + 96);
  v7 = v1 + 16;
  v6 = *(v1 + 16);
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = (v6 + 32);

    v10 = 0;
    do
    {
      v11 = &v9[5 * v10];
      v12 = *v11;
      v13 = v11[1];
      ++v10;
      v14 = v8 + 1;
      v15 = v9;
      while (--v14)
      {
        v16 = v15 + 5;
        v17 = *v15;
        v15 += 5;
        if (v17 == v12)
        {
          v14 = *(v16 - 2);
          break;
        }
      }

      sub_1AF641904(v5 + v14, a1, &off_1F2532090, v12, v13);
    }

    while (v10 != v8);

    v4 = (v1 + 96);
    v2 = v1;
  }

  v18 = *(a1 + 24);
  v19 = 0xFFFFFFFFLL;
  if (*(v18 + 16))
  {
    v20 = sub_1AF449D3C(*(v2 + 84));
    if (v21)
    {
      v19 = *(*(v18 + 56) + 8 * v20);
    }
  }

  v22 = *(v7 + 48);
  v32[2] = *(v7 + 32);
  v32[3] = v22;
  v33 = *(v7 + 64);
  v23 = *(v7 + 16);
  v32[0] = *v7;
  v32[1] = v23;
  v24 = *(v2 + 96);
  v25 = *(v2 + 104);
  v26 = *(v2 + 112);
  v27 = swift_allocObject();
  *(v27 + 84) = v19;
  v28 = *(v7 + 48);
  *(v27 + 48) = *(v7 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(v7 + 64);
  v29 = *(v7 + 16);
  *(v27 + 16) = *v7;
  *(v27 + 32) = v29;
  *(v27 + 96) = v24;
  *(v27 + 104) = v25;
  *(v27 + 112) = v26;
  *(v2 + 84) = 0xFFFFFFFFLL;
  *v4 = 0;
  v4[1] = 0;
  *(v2 + 112) = 1;
  sub_1AF5DD36C(v32, v31);
  return v27;
}

uint64_t sub_1AF6A3388(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + 96);
  v44 = *(v1 + 96);
  v6 = (v1 + 16);
  v5 = *(v1 + 16);
  v7 = *(v5 + 16);
  if (v7)
  {
    v39 = (v1 + 16);
    v40 = (v1 + 96);
    v41 = v1;
    v8 = (v5 + 32);
    v42 = OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed;

    v9 = 0;
    v43 = a1;
    do
    {
      v18 = &v8[5 * v9];
      v19 = *v18;
      v20 = v18[1];
      ++v9;
      v21 = v7 + 1;
      v22 = v8;
      while (--v21)
      {
        v23 = v22 + 5;
        v24 = *v22;
        v22 += 5;
        if (v24 == v19)
        {
          v25 = *(v23 - 2);
          goto LABEL_12;
        }
      }

      v25 = 0;
LABEL_12:
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = *(a1 + v42);
        v11 = Strong;
        [*(Strong + 16) lock];
        v12 = *(v11 + 16);
        v13 = 24;
        if (v10)
        {
          v13 = 32;
        }

        v14 = *(v11 + v13);

        [v12 unlock];
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC8];
      }

      type metadata accessor for RemapContext();
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = MEMORY[0x1E69E7CC0];
      *(v15 + 24) = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
      v17 = sub_1AF42B590(v16);

      *(v15 + 24) = v14;
      *(v15 + 32) = v17;
      *(v15 + 16) = 0;
      sub_1AF641904(v44 + v25, v15, &off_1F2532090, v19, v20);

      a1 = v43;
    }

    while (v9 != v7);

    v4 = v40;
    v2 = v41;
    v6 = v39;
  }

  *(&v47 + 1) = &type metadata for Entity;
  *&v48 = &off_1F2535EA8;
  *&v46 = *(v2 + 84);
  v27 = sub_1AF441150(&v46, &type metadata for Entity);
  v45[3] = &type metadata for Entity;
  v45[4] = &off_1F2535EA8;
  v28 = sub_1AF585714(v45);
  *v28 = sub_1AF6C97E0(*v27);
  sub_1AF648908();
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
  v29 = v45[9];
  v30 = v6[3];
  v48 = v6[2];
  v49 = v30;
  v50 = *(v6 + 64);
  v31 = v6[1];
  v46 = *v6;
  v47 = v31;
  v32 = *(v2 + 96);
  v33 = *(v2 + 104);
  v34 = *(v2 + 112);
  v35 = swift_allocObject();
  *(v35 + 84) = v29;
  v36 = v6[3];
  *(v35 + 48) = v6[2];
  *(v35 + 64) = v36;
  *(v35 + 80) = *(v6 + 64);
  v37 = v6[1];
  *(v35 + 16) = *v6;
  *(v35 + 32) = v37;
  *(v35 + 96) = v32;
  *(v35 + 104) = v33;
  *(v35 + 112) = v34;
  *(v2 + 84) = 0xFFFFFFFFLL;
  *v4 = 0;
  v4[1] = 0;
  *(v2 + 112) = 1;
  sub_1AF5DD36C(&v46, v45);
  return v35;
}

uint64_t sub_1AF6A36A4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 64);
    v16 = *(v0 + 48);
    v17 = v2;
    v3 = *(v0 + 32);
    v15[0] = *(v0 + 16);
    v15[1] = v3;
    v4 = *(v0 + 64);
    v12 = v16;
    v13 = v4;
    v5 = *(v0 + 96);
    v18 = *(v0 + 80);
    v14 = *(v0 + 80);
    v10 = v15[0];
    v11 = v1;
    sub_1AF5DD36C(v15, v9);
    sub_1AF64FA78();
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v19 = v10;
    v20 = v11;
    sub_1AF5DD3C8(&v19);
    if (v5)
    {
      MEMORY[0x1B271DEA0](v5, -1, -1);
    }
  }

  v6 = *(v0 + 64);
  v21 = *(v0 + 48);
  v22 = v6;
  v23 = *(v0 + 80);
  v7 = *(v0 + 32);
  v19 = *(v0 + 16);
  v20 = v7;
  sub_1AF5DD3C8(&v19);
  return swift_deallocClassInstance();
}

uint64_t sub_1AF6A37C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF6A3388(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF6A37F4(unint64_t a1)
{
  v2 = sub_1AF65ADEC(a1);
  if ((v3 & 0x100000000) != 0)
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v4 = v2;

    v6 = sub_1AF3C3FEC(v5);

    sub_1AF64F3CC(v6, 0, 256, 0, &v12);
    v18 = v12;
    v7 = v14;
    v19 = v13;
    v8 = v15;
    v17[0] = v16[0];
    *(v17 + 9) = *(v16 + 9);
    v9 = swift_slowAlloc();
    type metadata accessor for EntitySnapshot();
    v10 = swift_allocObject();
    *(v10 + 84) = a1;
    *(v10 + 16) = v18;
    *(v10 + 32) = v19;
    *(v10 + 40) = v7;
    *(v10 + 48) = v8;
    *(v10 + 56) = v17[0];
    *(v10 + 65) = *(v17 + 9);
    *(v10 + 96) = v9;
    *(v10 + 104) = v9 + v7;
    *(v10 + 112) = 0;

    sub_1AF64A520(v10, v4 << 16 >> 48);

    return v10;
  }

  return result;
}

uint64_t sub_1AF6A39AC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = *(a2 + 24);
    if (!*(v4 + 16) || (v5 = sub_1AF449D3C(*(a1 + 84)), (v6 & 1) == 0))
    {
      v9 = 0;
      v10 = 0xFFFFFFFFLL;
      goto LABEL_8;
    }

    v7 = (*(v4 + 56) + 8 * v5);
    v8 = v7 + 1;
  }

  else
  {
    v7 = (a1 + 84);
    v8 = (a1 + 88);
  }

  v10 = *v7;
  v9 = *v8 << 32;
LABEL_8:
  v11 = sub_1AF65ADEC(v9 | v10);
  if ((v12 & 0x100000000) != 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF2F190);
    v16 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v16);

    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v13 = v11 << 16 >> 48;

    if (a2)
    {

      v3 = sub_1AF6A31C4(v14);
      sub_1AF64A684(v13, v3);
    }

    else
    {
      sub_1AF64A684(v13, v3);
    }

    return v3;
  }

  return result;
}

uint64_t sub_1AF6A3B54(uint64_t a1)
{
  v2 = sub_1AF6A4774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6A3B90(uint64_t a1)
{
  v2 = sub_1AF6A4774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6A3C1C(uint64_t a1)
{
  v2 = sub_1AF6A46C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6A3C58(uint64_t a1)
{
  v2 = sub_1AF6A46C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6A3CE4(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF6A4714(0, a4, a5);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF6A3E0C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED73B840;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for OldEvent;
  *(inited + 40) = &off_1F25344E8;
  sub_1AF5F58E4(inited, 1, v6);
  swift_setDeallocating();
  v2 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = &type metadata for NewEvent;
  *(v3 + 40) = &off_1F2534468;
  sub_1AF5F58E4(v3, 1, v8);
  swift_setDeallocating();
  v4 = v8[1];
  *(v0 + 56) = v8[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v9;
  return v0;
}

void sub_1AF6A3F5C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1AF6A40BC()
{
  v0 = swift_allocObject();
  sub_1AF6A3E0C();
  return v0;
}

void sub_1AF6A4114(uint64_t a1)
{
  v3 = *(v1 + 32);
  v71[0] = *(v1 + 16);
  v71[1] = v3;
  v72 = *(v1 + 48);
  sub_1AF6B06C0(a1, v71, 0x200000000, &v51);
  if (v51)
  {
    v62 = v51;
    v65 = v54;
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v63 = v52;
    v64 = v53;
    sub_1AF6B8EAC(0);
    sub_1AF5C43E8(&v51, sub_1AF5C3C90);
  }

  v4 = *(v1 + 72);
  v69[0] = *(v1 + 56);
  v69[1] = v4;
  v70 = *(v1 + 88);
  sub_1AF6B06C0(a1, v69, 0x200000000, v58);
  if (*&v58[0])
  {
    if (v61 >= 1 && v60)
    {
      v5 = v59;
      v6 = v59 + 48 * v60;
      v36 = v6;
      do
      {
        v7 = *(v5 + 40);
        v8 = *(v7 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v8);
        os_unfair_lock_lock(*(v7 + 344));
        v9 = *(v7 + 24);

        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        memset(v50, 0, 40);
        v10 = sub_1AF65A4B4(v9, &type metadata for OldEvent, &off_1F2534568, 0, 0, &v43, v50);

        sub_1AF5C43E8(v50, sub_1AF5C4448);
        sub_1AF5C43E8(&v43, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v10);
        }

        else
        {
          v12 = *(v7 + 232);
          v11 = *(v7 + 240);
          v39 = *(v7 + 120);
          v42 = *(v7 + 28);
          v41 = *(v7 + 32);
          v13 = *(v7 + 16);
          v14 = *(v7 + 40);
          v15 = *(v14 + 200);
          v40 = *(*(v13 + 88) + 8 * v10 + 32);

          if ((v15 & 1) != 0 || *(v40 + 200) == 1)
          {
            *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v14 = *(v7 + 40);
          }

          v16 = v39;
          v17 = *(v7 + 256);
          sub_1AF5B4FCC(v14, v12, v11, 0, v7);
          v38 = *(v7 + 256);
          v18 = v38 - v17;
          if (v38 == v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          v50[0] = v19;
          v20 = *(*(v7 + 40) + 24);
          v21 = *(v20 + 16);
          if (v21)
          {
            v37 = v5;
            v22 = v20 + 32;

            v23 = 0;
            v24 = v38 - v17;
            do
            {
              v25 = v22 + 40 * v23;
              if ((*(v25 + 32) & 1) == 0)
              {
                v26 = *(v40 + 24);
                v27 = *(v26 + 16);
                if (v27)
                {
                  v28 = (v26 + 32);
                  while (*v28 != *v25)
                  {
                    v28 += 5;
                    if (!--v27)
                    {
                      goto LABEL_18;
                    }
                  }
                }

                else
                {
LABEL_18:
                  sub_1AF640BC8();
                  v24 = v38 - v17;
                }
              }

              ++v23;
            }

            while (v23 != v21);
            v18 = v24;

            v5 = v37;
            v16 = v39;
          }

          if (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v18);
          }

          if (*(v7 + 184))
          {
            v29 = 0;
          }

          else
          {
            v29 = *(v7 + 168);
          }

          v49 = 0;

          MEMORY[0x1EEE9AC00](v30, v31);
          v32 = v42;
          v33 = v41;
          DWORD2(v44) = -1;
          v45 = v17;
          v46 = v38;
          v47 = v17;
          v48 = v38;
          *&v43 = v17;
          *(&v43 + 1) = v38;
          *&v44 = v29;
          if (v18 < 1)
          {

            v6 = v36;
          }

          else
          {
            v6 = v36;
            do
            {
              sub_1AF6248A8(v10, v32 | (v33 << 32), v16, v13, &v43, sub_1AF5C5ACC);
              v33 = v41;
              v32 = v42;
            }

            while ((*(&v43 + 1) - v43) > 0);
          }

          v34 = *(v7 + 192);
          if (v34)
          {
            v35 = *(v7 + 208);
            sub_1AF75D364(v17, v38, v34);
            sub_1AF75D364(v17, v38, v35);
          }
        }

        v5 += 48;
        os_unfair_lock_unlock(*(v7 + 344));
        os_unfair_lock_unlock(*(v7 + 376));
      }

      while (v5 != v6);
    }

    sub_1AF5C43E8(v58, sub_1AF5C3C90);
  }
}

unint64_t sub_1AF6A46C0()
{
  result = qword_1EB63D360;
  if (!qword_1EB63D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D360);
  }

  return result;
}

void sub_1AF6A4714(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AFDFE9A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF6A4774()
{
  result = qword_1EB63D370;
  if (!qword_1EB63D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D370);
  }

  return result;
}

unint64_t sub_1AF6A47EC()
{
  result = qword_1EB63D378;
  if (!qword_1EB63D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D378);
  }

  return result;
}

unint64_t sub_1AF6A4844()
{
  result = qword_1EB63D380;
  if (!qword_1EB63D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D380);
  }

  return result;
}

unint64_t sub_1AF6A489C()
{
  result = qword_1EB63D388;
  if (!qword_1EB63D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D388);
  }

  return result;
}

unint64_t sub_1AF6A48F4()
{
  result = qword_1EB63D390;
  if (!qword_1EB63D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D390);
  }

  return result;
}

uint64_t sub_1AF6A4948()
{

  return swift_deallocClassInstance();
}

void sub_1AF6A49A4(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x1E69E7CD0];
  *(a1 + 24) = MEMORY[0x1E69E7CD0];
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
}

uint64_t sub_1AF6A49CC(uint64_t a1, uint64_t a2)
{

  MEMORY[0x1B2718E00](v4);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  result = sub_1AFDFD4B8();
  if (*(a2 + 16))
  {
    if (*(a2 + 16) != 2)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1AF6A4A6C(uint64_t *a1)
{
  if (*(a1[4] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v9 = a1[4];
    sub_1AF6A5E78();
    sub_1AFDFE098();
    a1[4] = v9;
  }

  v2 = *a1;
  if (*a1 < 0 || (v2 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v2 = *a1, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    if (v2 >> 62)
    {
      v8 = sub_1AFDFE108();
      sub_1AFDFE108();
      sub_1AFDFE108();
      v6 = v8;
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v7 = sub_1AFC892CC(0, v6);

    *a1 = v7;
  }

  else
  {
    if (v2 >> 62)
    {
      v4 = sub_1AFDFE108();
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return sub_1AF64D5C8(0, v4);
  }

  return result;
}

unint64_t sub_1AF6A4BF8()
{
  result = qword_1EB63D398;
  if (!qword_1EB63D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D398);
  }

  return result;
}

unint64_t sub_1AF6A4C50()
{
  result = qword_1EB63D3A0;
  if (!qword_1EB63D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3A0);
  }

  return result;
}

unint64_t sub_1AF6A4CA8()
{
  result = qword_1EB63D3A8;
  if (!qword_1EB63D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3A8);
  }

  return result;
}

unint64_t sub_1AF6A4D00()
{
  result = qword_1EB63D3B0;
  if (!qword_1EB63D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3B0);
  }

  return result;
}

unint64_t sub_1AF6A4D58()
{
  result = qword_1EB63D3B8;
  if (!qword_1EB63D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3B8);
  }

  return result;
}

unint64_t sub_1AF6A4DB0()
{
  result = qword_1EB63D3C0;
  if (!qword_1EB63D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3C0);
  }

  return result;
}

unint64_t sub_1AF6A4E08()
{
  result = qword_1EB63D3C8;
  if (!qword_1EB63D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3C8);
  }

  return result;
}

unint64_t sub_1AF6A4E60()
{
  result = qword_1EB63D3D0;
  if (!qword_1EB63D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3D0);
  }

  return result;
}

unint64_t sub_1AF6A4EB8()
{
  result = qword_1EB63D3D8;
  if (!qword_1EB63D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3D8);
  }

  return result;
}

unint64_t sub_1AF6A4F10()
{
  result = qword_1EB63D3E0;
  if (!qword_1EB63D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3E0);
  }

  return result;
}

uint64_t sub_1AF6A4F64(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2FBC(&type metadata for InputStream, &off_1F2534998, v1);
}

uint64_t sub_1AF6A4FCC()
{
  result = swift_allocObject();
  *(result + 16) = 1500;
  return result;
}

uint64_t sub_1AF6A500C(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for InputStream, &off_1F2534998, v1);
}

uint64_t sub_1AF6A5074(char a1)
{
  result = 7958113;
  switch(a1)
  {
    case 1:
      v3 = 1952867660;
      return v3 | 0x6F72724100000000;
    case 2:
      return 0x7272417468676952;
    case 3:
      v3 = 1853321028;
      return v3 | 0x6F72724100000000;
    case 4:
      return 0x776F7272417055;
    case 5:
      return 81;
    case 6:
      return 87;
    case 7:
      return 69;
    case 8:
      return 82;
    case 9:
      return 84;
    case 10:
      return 89;
    case 11:
      return 85;
    case 12:
      return 73;
    case 13:
      return 79;
    case 14:
      return 80;
    case 15:
      return 65;
    case 16:
      return 83;
    case 17:
      return 68;
    case 18:
      return 70;
    case 19:
      return 71;
    case 20:
      return 72;
    case 21:
      return 74;
    case 22:
      return 75;
    case 23:
      return 76;
    case 24:
      return 90;
    case 25:
      return 88;
    case 26:
      return 67;
    case 27:
      return 86;
    case 28:
      return 66;
    case 29:
      return 78;
    case 30:
      return 77;
    case 31:
      return 49;
    case 32:
      return 50;
    case 33:
      return 51;
    case 34:
      return 52;
    case 35:
      return 54;
    case 36:
      return 53;
    case 37:
      return 55;
    case 38:
      return 56;
    case 39:
      return 57;
    case 40:
      return 48;
    case 41:
      return 0x6C61757145;
    case 42:
      return 0x73756E694DLL;
    case 43:
      return 0x6172427468676952;
    case 44:
      return 0x636172427466654CLL;
    case 45:
      return 0x65746F7551;
    case 46:
      return 0x6F6C6F63696D6553;
    case 47:
      return 0x73616C736B636142;
    case 48:
      return 0x616D6D6F43;
    case 49:
      return 0x6873616C53;
    case 50:
      return 0x646F69726550;
    case 51:
      return 0x6576617247;
    case 52:
      return 0x654464617079654BLL;
    case 53:
      return 0x754D64617079654BLL;
    case 54:
      return 0x6C5064617079654BLL;
    case 55:
      return 0x6C4364617079654BLL;
    case 56:
      return 0x694464617079654BLL;
    case 57:
      return 0x6E4564617079654BLL;
    case 58:
      return 0x694D64617079654BLL;
    case 59:
      return 0x714564617079654BLL;
    case 60:
      return 0x3064617079654BLL;
    case 61:
      return 0x3164617079654BLL;
    case 62:
      return 0x3264617079654BLL;
    case 63:
      return 0x3364617079654BLL;
    case 64:
      return 0x3464617079654BLL;
    case 65:
      return 0x3564617079654BLL;
    case 66:
      return 0x3664617079654BLL;
    case 67:
      return 0x3764617079654BLL;
    case 68:
      return 0x3864617079654BLL;
    case 69:
      return 0x3964617079654BLL;
    case 70:
      return 0x6E7275746552;
    case 71:
      return 6447444;
    case 72:
      return 0x6563617053;
    case 73:
      return 0x6574656C6544;
    case 74:
      return 0x657061637345;
    case 75:
      return 0x646E616D6D6F43;
    case 76:
      return 0x7466696853;
    case 77:
      return 0x6B636F4C73706143;
    case 78:
      return 0x6E6F6974704FLL;
    case 79:
      return 0x6C6F72746E6F43;
    case 80:
      return 0x6D6F437468676952;
    case 81:
      return 0x6968537468676952;
    case 82:
      return 0x74704F7468676952;
    case 83:
      return 0x6E6F437468676952;
    case 84:
      return 0x6E6F6974636E7546;
    case 85:
      return 0x7055656D756C6F56;
    case 86:
      return 0x6F44656D756C6F56;
    case 87:
      return 1702131021;
    case 88:
      return 0x75747865746E6F43;
    case 89:
      return 12614;
    case 90:
      return 12870;
    case 91:
      return 13126;
    case 92:
      return 13382;
    case 93:
      return 13638;
    case 94:
      return 13894;
    case 95:
      return 14150;
    case 96:
      return 14406;
    case 97:
      return 14662;
    case 98:
      return 3158342;
    case 99:
      return 3223878;
    case 100:
      return 3289414;
    case 101:
      return 3354950;
    case 102:
      return 3420486;
    case 103:
      v4 = 327680;
      goto LABEL_115;
    case 104:
      return 3551558;
    case 105:
      return 3617094;
    case 106:
      return 3682630;
    case 107:
      v4 = 589824;
LABEL_115:
      result = v4 | 0x303146;
      break;
    case 108:
      result = 3158598;
      break;
    case 109:
      result = 1886152008;
      break;
    case 110:
      result = 1701670728;
      break;
    case 111:
      result = 0x705565676150;
      break;
    case 112:
      result = 0x4464726177726F46;
      break;
    case 113:
      result = 6581829;
      break;
    case 114:
      result = 0x6E776F4465676150;
      break;
    case 115:
      result = 0x746365535F4F5349;
      break;
    case 116:
      result = 0x6E65595F53494ALL;
      break;
    case 117:
      result = 0x65646E555F53494ALL;
      break;
    case 118:
      result = 0x7079654B5F53494ALL;
      break;
    case 119:
      result = 0x757369455F53494ALL;
      break;
    case 120:
      result = 0x616E614B5F53494ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF6A59E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE6F450[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A5A6C()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE6F450[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A5AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF6A64B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF6A5BDC()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AFC0603C(0, 121, 0);
  v0 = v15;
  v1 = *(v15 + 16);
  v2 = 24 * v1;
  v3 = -2904;
  v4 = &byte_1F24F3F00;
  do
  {
    v6 = *v4++;
    v5 = v6;
    v7 = sub_1AF6A5074(v6);
    v16 = v0;
    v9 = *(v0 + 24);
    v10 = v1 + 1;
    if (v1 >= v9 >> 1)
    {
      v12 = v7;
      v13 = v8;
      sub_1AFC0603C(v9 > 1, v10, 1);
      v8 = v13;
      v7 = v12;
      v0 = v16;
    }

    *(v0 + 16) = v10;
    v11 = v0 + v2 + v3;
    *(v11 + 2936) = v7;
    *(v11 + 2944) = v8;
    *(v11 + 2952) = v5;
    ++v1;
    v3 += 24;
  }

  while (v3);
  return v0;
}

float32x2_t *sub_1AF6A5CD4(void *a1, void *a2)
{
  v3 = v2;
  v2[2].i8[1] = 1;
  v6 = [a1 phase];
  v7 = 0x402010100uLL >> (8 * v6);
  if (v6 >= 5)
  {
    LOBYTE(v7) = 10;
  }

  v2[2].i8[0] = v7;
  v8 = [a2 window];
  [a1 locationInView_];
  v20 = v10;
  v23 = v9;

  v11.f64[0] = v23;
  v11.f64[1] = v20;
  v3[6] = vcvt_f32_f64(v11);
  v12 = a2;
  [a1 locationInView_];
  v21 = v14;
  v24 = v13;
  [v12 bounds];
  v26.y = v21;
  v26.x = v24;
  v3[8].i8[0] = CGRectContainsPoint(v27, v26);
  v15.f64[0] = v24;
  v15.f64[1] = v21;
  v3[7] = vcvt_f32_f64(v15);
  v3[9] = [a1 _touchIdentifier];
  sub_1AFDFF308();
  MEMORY[0x1B271ACB0](a2);
  v3[5] = sub_1AFDFF2E8();
  [a1 previousLocationInView_];
  v22 = v17;
  v25 = v16;

  v18.f64[0] = v25;
  v18.f64[1] = v22;
  v3[12] = vsub_f32(v3[7], vcvt_f32_f64(v18));
  v3[15].i8[0] = 0;
  v3[13].i16[0] = 0;
  v3[13].i8[2] = 0;
  v3[14] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v3[16] = [a1 tapCount];
  v3[3] = 0;
  v3[4] = 0;
  return v3;
}

void sub_1AF6A5E78()
{
  if (!qword_1EB63D3E8)
  {
    v0 = sub_1AFDFE0A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D3E8);
    }
  }
}

uint64_t destroy for InputStream()
{
}

uint64_t initializeWithCopy for InputStream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for InputStream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

__n128 initializeWithTake for InputStream(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for InputStream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t getEnumTagSinglePayload for InputStream(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t storeEnumTagSinglePayload for InputStream(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXKeyCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x88)
  {
    goto LABEL_17;
  }

  if (a2 + 120 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 120) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 120;
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

      return (*a1 | (v4 << 8)) - 120;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 120;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x79;
  v8 = v6 - 121;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXKeyCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 120 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 120) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x88)
  {
    v4 = 0;
  }

  if (a2 > 0x87)
  {
    v5 = ((a2 - 136) >> 8) + 1;
    *result = a2 + 120;
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
    *result = a2 + 120;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF6A6284(uint64_t a1)
{
  *(a1 + 8) = sub_1AF6A62B4();
  result = sub_1AF6A6308();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF6A62B4()
{
  result = qword_1EB63D3F0;
  if (!qword_1EB63D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3F0);
  }

  return result;
}

unint64_t sub_1AF6A6308()
{
  result = qword_1EB63D3F8;
  if (!qword_1EB63D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D3F8);
  }

  return result;
}

unint64_t sub_1AF6A6360()
{
  result = qword_1EB63D400;
  if (!qword_1EB63D400)
  {
    sub_1AF6A63B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D400);
  }

  return result;
}

void sub_1AF6A63B8()
{
  if (!qword_1EB63D408)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D408);
    }
  }
}

unint64_t sub_1AF6A640C()
{
  result = qword_1EB63D410;
  if (!qword_1EB63D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D410);
  }

  return result;
}

unint64_t sub_1AF6A6460()
{
  result = qword_1EB63D418;
  if (!qword_1EB63D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D418);
  }

  return result;
}

uint64_t sub_1AF6A64B4(uint64_t a1)
{
  v1 = a1 + 1;
  v2 = 0;
  result = 25;
  switch(v1)
  {
    case 0:
      goto LABEL_121;
    case 1:
      v2 = 15;
      goto LABEL_121;
    case 2:
      v2 = 16;
      goto LABEL_121;
    case 3:
      v2 = 17;
      goto LABEL_121;
    case 4:
      v2 = 18;
      goto LABEL_121;
    case 5:
      v2 = 20;
      goto LABEL_121;
    case 6:
      v2 = 19;
      goto LABEL_121;
    case 7:
      v2 = 24;
      goto LABEL_121;
    case 8:
      return result;
    case 9:
      return 26;
    case 10:
      return 27;
    case 11:
      return 115;
    case 12:
      return 28;
    case 13:
      v2 = 5;
      goto LABEL_121;
    case 14:
      v2 = 6;
      goto LABEL_121;
    case 15:
      v2 = 7;
      goto LABEL_121;
    case 16:
      v2 = 8;
      goto LABEL_121;
    case 17:
      v2 = 10;
      goto LABEL_121;
    case 18:
      v2 = 9;
      goto LABEL_121;
    case 19:
      return 31;
    case 20:
      return 32;
    case 21:
      return 33;
    case 22:
      return 34;
    case 23:
      return 35;
    case 24:
      return 36;
    case 25:
      return 41;
    case 26:
      return 39;
    case 27:
      return 37;
    case 28:
      return 42;
    case 29:
      return 38;
    case 30:
      return 40;
    case 31:
      return 43;
    case 32:
      v2 = 13;
      goto LABEL_121;
    case 33:
      v2 = 11;
      goto LABEL_121;
    case 34:
      return 44;
    case 35:
      v2 = 12;
      goto LABEL_121;
    case 36:
      v2 = 14;
      goto LABEL_121;
    case 37:
      return 70;
    case 38:
      v2 = 23;
      goto LABEL_121;
    case 39:
      v2 = 21;
      goto LABEL_121;
    case 40:
      return 45;
    case 41:
      v2 = 22;
      goto LABEL_121;
    case 42:
      return 46;
    case 43:
      return 47;
    case 44:
      return 48;
    case 45:
      return 49;
    case 46:
      return 29;
    case 47:
      return 30;
    case 48:
      return 50;
    case 49:
      return 71;
    case 50:
      return 72;
    case 51:
      return 51;
    case 52:
      return 73;
    case 54:
      return 74;
    case 55:
      return 80;
    case 56:
      return 75;
    case 57:
      return 76;
    case 58:
      return 77;
    case 59:
      return 78;
    case 60:
      return 79;
    case 61:
      return 81;
    case 62:
      return 82;
    case 63:
      return 83;
    case 64:
      return 84;
    case 65:
      return 105;
    case 66:
      return 52;
    case 68:
      return 53;
    case 70:
      return 54;
    case 72:
      return 55;
    case 73:
      return 85;
    case 74:
      return 86;
    case 75:
      return 87;
    case 76:
      return 56;
    case 77:
      return 57;
    case 79:
      return 58;
    case 80:
      return 106;
    case 81:
      return 107;
    case 82:
      return 59;
    case 83:
      return 60;
    case 84:
      return 61;
    case 85:
      return 62;
    case 86:
      return 63;
    case 87:
      return 64;
    case 88:
      return 65;
    case 89:
      return 66;
    case 90:
      return 67;
    case 91:
      return 108;
    case 92:
      return 68;
    case 93:
      return 69;
    case 94:
      return 116;
    case 95:
      return 117;
    case 96:
      return 118;
    case 97:
      return 93;
    case 98:
      return 94;
    case 99:
      return 95;
    case 100:
      return 91;
    case 101:
      return 96;
    case 102:
      return 97;
    case 103:
      return 119;
    case 104:
      return 99;
    case 105:
      return 120;
    case 106:
      return 101;
    case 107:
      return 104;
    case 108:
      return 102;
    case 110:
      return 98;
    case 111:
      return 88;
    case 112:
      return 100;
    case 114:
      return 103;
    case 115:
      return 109;
    case 116:
      return 110;
    case 117:
      return 111;
    case 118:
      return 112;
    case 119:
      return 92;
    case 120:
      return 113;
    case 121:
      return 90;
    case 122:
      return 114;
    case 123:
      return 89;
    case 124:
      v2 = 1;
      goto LABEL_121;
    case 125:
      v2 = 2;
      goto LABEL_121;
    case 126:
      v2 = 3;
      goto LABEL_121;
    case 127:
      v2 = 4;
LABEL_121:
      result = v2;
      break;
    default:
      result = 121;
      break;
  }

  return result;
}

void sub_1AF6A68B8(float32x4_t *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>)
{
  v4 = vabsq_f32(a2);
  v5 = 0uLL;
  v7 = v4.f32[0] > 0.00000011921 || v4.f32[1] > 0.00000011921 || v4.f32[2] > 0.00000011921;
  v8 = 0uLL;
  if (v7)
  {
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v8 = vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  }

  v11 = vabsq_f32(a3);
  if (v11.f32[0] > 0.00000011921 || v11.f32[1] > 0.00000011921 || v11.f32[2] > 0.00000011921)
  {
    v14 = vmulq_f32(a3, a3);
    *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
    *v14.f32 = vrsqrte_f32(v15);
    *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
    v5 = vmulq_n_f32(a3, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  }

  v16 = vabsq_f32(a4);
  if (v16.f32[0] > 0.00000011921 || v16.f32[1] > 0.00000011921 || (v17 = v16.f32[2], v18 = 0uLL, v17 > 0.00000011921))
  {
    v19 = vmulq_f32(a4, a4);
    *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v20);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
    v18 = vmulq_n_f32(a4, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  }

  *a1 = v8;
  a1[1] = v5;
  a1[2] = v18;
}

double sub_1AF6A6AA8(float32x4_t a1, float32x4_t a2)
{
  a1.i32[3] = 0;
  a1.i64[0] = vmulq_n_f32(a2, vmaxnmq_f32(a1, xmmword_1AFE20A30).f32[0]).u64[0];
  return *a1.i64;
}

float32x4_t sub_1AF6A6ACC(float32x4_t a1)
{
  a1.i32[3] = 0;
  v2 = vmaxnmq_f32(a1, xmmword_1AFE20A30);
  v3 = vmulq_lane_f32(v1[1], *v2.f32, 1);
  *v1 = vmulq_n_f32(*v1, v2.f32[0]);
  v1[1] = v3;
  result = vmulq_laneq_f32(v1[2], v2, 2);
  v1[2] = result;
  return result;
}

double sub_1AF6A6AFC(char a1, double a2, double a3, float32x4_t a4)
{
  if (a1)
  {
    a4.i64[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, a4.f32[0]), xmmword_1AFE20160, *a4.f32, 1), xmmword_1AFE206C0, a4, 2), xmmword_1AFE20BF0, a4, 3).u64[0];
  }

  return *a4.i64;
}

uint64_t sub_1AF6A6BD0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A6C34()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF6A6C7C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A6CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF6A8DC0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF6A6D50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF6A8DC0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF6A6D78(uint64_t a1)
{
  v2 = sub_1AF6ABB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6A6DB4(uint64_t a1)
{
  v2 = sub_1AF6ABB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t simd_float2x2.hash(into:)()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

uint64_t simd_float2x3.hash(into:)()
{
  sub_1AF6A8C94();

  return sub_1AF6A8C94();
}

uint64_t simd_float2x4.hash(into:)()
{
  sub_1AF6A8C04();

  return sub_1AF6A8C04();
}

uint64_t sub_1AF6A6F14(void *a1, double a2, double a3)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v10 = a2;
  sub_1AF448018(v8, v9);
  v6 = MEMORY[0x1E69E7428];
  sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF6ABBBC(&qword_1ED72F798, &unk_1ED72F770, v6);
  sub_1AFDFEC38();
  if (!v3)
  {
    v10 = a3;
    sub_1AF448018(v8, v9);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

void sub_1AF6A707C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF6A8E44(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1AF6A70C4()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A7120()
{
  sub_1AF6A8D0C();

  return sub_1AF6A8D0C();
}

uint64_t sub_1AF6A7168()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A71E0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E7450];
  sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF6ABBBC(&qword_1ED72F758, &qword_1ED72F740, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

__n128 sub_1AF6A7350@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF6A9224(a1);
  if (!v2)
  {
    DWORD2(v6) = v7;
    DWORD2(v4) = v5;
    *a2 = v4;
    a2[1] = v6;
  }

  result.n128_u64[0] = v4;
  result.n128_u32[2] = DWORD2(v4);
  return result;
}

uint64_t sub_1AF6A73C0()
{
  sub_1AF6A8C94();

  return sub_1AF6A8C94();
}

uint64_t sub_1AF6A743C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E74A8];
  sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF6ABBBC(&qword_1ED72F710, &qword_1ED72F6E0, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF6A75A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF6A9610(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1AF6A7600(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, __n128))
{
  v6 = *v3;
  v7 = v3[1];
  sub_1AFDFF288();
  a3(v8, v6);
  a3(v8, v7);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A7664()
{
  sub_1AF6A8C04();

  return sub_1AF6A8C04();
}

uint64_t sub_1AF6A76C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, __n128))
{
  v7 = *v4;
  v8 = v4[1];
  sub_1AFDFF288();
  a4(v9, v7);
  a4(v9, v8);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A7764(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E7428];
  sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF6ABBBC(&qword_1ED72F798, &unk_1ED72F770, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

void sub_1AF6A7914(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF6A99F4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1AF6A7964()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A79D8()
{
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();

  return sub_1AF6A8D0C();
}

uint64_t sub_1AF6A7A30()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A7AC8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E7450];
  sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF6ABBBC(&qword_1ED72F758, &qword_1ED72F740, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

double sub_1AF6A7C74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF6A9E58(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF6A7D30(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E74A8];
  sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF6ABBBC(&qword_1ED72F710, &qword_1ED72F6E0, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF6A7ED8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF6AA2D4(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF6A7F40(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, __n128))
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  sub_1AFDFF288();
  a3(v9, v6);
  a3(v9, v7);
  a3(v9, v8);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A7FD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__n128))
{
  v7 = v4[1];
  v8 = v4[2];
  a4(*v4);
  (a4)(a1, v7);

  return (a4)(a1, v8);
}

uint64_t sub_1AF6A8064(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, __n128))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  sub_1AFDFF288();
  a4(v10, v7);
  a4(v10, v8);
  a4(v10, v9);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A8120(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v14 = a2;
  sub_1AF448018(v12, v13);
  v10 = MEMORY[0x1E69E7428];
  sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF6ABBBC(&qword_1ED72F798, &unk_1ED72F770, v10);
  sub_1AFDFEC38();
  if (!v5)
  {
    v14 = a3;
    sub_1AF448018(v12, v13);
    sub_1AFDFEC38();
    v14 = a4;
    sub_1AF448018(v12, v13);
    sub_1AFDFEC38();
    v14 = a5;
    sub_1AF448018(v12, v13);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

void sub_1AF6A8310(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF6AA73C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1AF6A8360()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A83E0()
{
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();

  return sub_1AF6A8D0C();
}

uint64_t sub_1AF6A844C()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A84F0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E7450];
  sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AF6ABBBC(&qword_1ED72F758, &qword_1ED72F740, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

double sub_1AF6A86E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF6AAC1C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1AF6A879C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  v2 = MEMORY[0x1E69E74A8];
  sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AF6ABBBC(&qword_1ED72F710, &qword_1ED72F6E0, v2);
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF6A8984@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF6AB118(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1AF6A89EC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, __n128))
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  sub_1AFDFF288();
  a3(v10, v6);
  a3(v10, v7);
  a3(v10, v8);
  a3(v10, v9);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A8A90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__n128))
{
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a4(*v4);
  (a4)(a1, v7);
  (a4)(a1, v8);

  return (a4)(a1, v9);
}

uint64_t sub_1AF6A8B38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, __n128))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = v4[3];
  sub_1AFDFF288();
  a4(v11, v7);
  a4(v11, v8);
  a4(v11, v9);
  a4(v11, v10);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6A8C04()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF6A8C94()
{
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

unint64_t sub_1AF6A8D6C()
{
  result = qword_1EB6335F8;
  if (!qword_1EB6335F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335F8);
  }

  return result;
}

uint64_t sub_1AF6A8DC0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

float32_t sub_1AF6A8E0C(float32x4_t a1)
{
  a1.i32[3] = 0;
  a1.i32[0] = vmaxnmq_f32(a1, xmmword_1AFE20A30).u32[0];
  return a1.f32[0];
}

double sub_1AF6A8E44(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-1] - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2005, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      LOBYTE(v15) = 0;
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v12);
      sub_1AFDFE768();
      v2 = *v16;
      LOBYTE(v15) = 1;
      sub_1AFDFE768();
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v13 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      sub_1AF448018(v16, v17);
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v13);
      sub_1AFDFEAD8();
      v2 = v15;
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF6A9224(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF69504C(2005, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = MEMORY[0x1E69E7450];
      sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      LOBYTE(v16) = 0;
      sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v11);
      sub_1AFDFE768();
      v15 = v17;
      LOBYTE(v16) = 1;
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v14 = v17;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E7450];
      sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      sub_1AF448018(&v17, v18);
      sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v12);
      sub_1AFDFEAD8();
      v15 = v16;
      sub_1AF448018(&v17, v18);
      sub_1AFDFEAD8();
      v14 = v16;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v17);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF6A9610(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF69504C(2005, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      LOBYTE(v16) = 0;
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v11);
      sub_1AFDFE768();
      v15 = v17;
      LOBYTE(v16) = 1;
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v14 = v17;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF448018(&v17, v18);
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v12);
      sub_1AFDFEAD8();
      v15 = v16;
      sub_1AF448018(&v17, v18);
      sub_1AFDFEAD8();
      v14 = v16;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v17);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

double sub_1AF6A99F4(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-1] - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2005, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      LOBYTE(v18) = 0;
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v12);
      sub_1AFDFE768();
      v2 = *v16;
      LOBYTE(v18) = 1;
      sub_1AFDFE768();
      LOBYTE(v18) = 2;
      sub_1AFDFE768();
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v13 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      sub_1AF448018(v16, v17);
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v13);
      sub_1AFDFEAD8();
      v2 = v18;
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF6A9E58@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (!sub_1AF69504C(2005, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v2)
    {
      v14 = MEMORY[0x1E69E7450];
      sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      sub_1AF448018(&v21, v22);
      sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v14);
      sub_1AFDFEAD8();
      v19 = v20;
      sub_1AF448018(&v21, v22);
      sub_1AFDFEAD8();
      v18 = v20;
      sub_1AF448018(&v21, v22);
      sub_1AFDFEAD8();
      v17 = v20;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v21);
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF6ABB68();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13 = MEMORY[0x1E69E7450];
  sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  LOBYTE(v20) = 0;
  sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v13);
  sub_1AFDFE768();
  v19 = v21;
  LOBYTE(v20) = 1;
  sub_1AFDFE768();
  v18 = v21;
  LOBYTE(v20) = 2;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v17 = v21;
LABEL_7:
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v16 = v18;
  *a2 = v19;
  a2[1] = v16;
  a2[2] = v17;
  return result;
}

uint64_t sub_1AF6AA2D4(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF69504C(2005, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      LOBYTE(v17) = 0;
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v11);
      sub_1AFDFE768();
      v16 = v18;
      LOBYTE(v17) = 1;
      sub_1AFDFE768();
      v15 = v18;
      LOBYTE(v17) = 2;
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v14 = v18;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF448018(&v18, v19);
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v12);
      sub_1AFDFEAD8();
      v16 = v17;
      sub_1AF448018(&v18, v19);
      sub_1AFDFEAD8();
      v15 = v17;
      sub_1AF448018(&v18, v19);
      sub_1AFDFEAD8();
      v14 = v17;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v18);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

double sub_1AF6AA73C(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16[-1] - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2005, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      LOBYTE(v15) = 0;
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v12);
      sub_1AFDFE768();
      v2 = *v16;
      LOBYTE(v15) = 1;
      sub_1AFDFE768();
      LOBYTE(v15) = 2;
      sub_1AFDFE768();
      LOBYTE(v15) = 3;
      sub_1AFDFE768();
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v13 = MEMORY[0x1E69E7428];
      sub_1AF6ABC20(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      sub_1AF448018(v16, v17);
      sub_1AF6ABBBC(&qword_1ED72F780, &unk_1ED72F770, v13);
      sub_1AFDFEAD8();
      v2 = v15;
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      sub_1AF448018(v16, v17);
      sub_1AFDFEAD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF6AAC1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (!sub_1AF69504C(2005, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v2)
    {
      v14 = MEMORY[0x1E69E7450];
      sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      sub_1AF448018(&v23, v24);
      sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v14);
      sub_1AFDFEAD8();
      v21 = v22;
      sub_1AF448018(&v23, v24);
      sub_1AFDFEAD8();
      v20 = v22;
      sub_1AF448018(&v23, v24);
      sub_1AFDFEAD8();
      v19 = v22;
      sub_1AF448018(&v23, v24);
      sub_1AFDFEAD8();
      v18 = v22;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v23);
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF6ABB68();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13 = MEMORY[0x1E69E7450];
  sub_1AF6ABC20(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  LOBYTE(v22) = 0;
  sub_1AF6ABBBC(&qword_1ED72F748, &qword_1ED72F740, v13);
  sub_1AFDFE768();
  v21 = v23;
  LOBYTE(v22) = 1;
  sub_1AFDFE768();
  v20 = v23;
  LOBYTE(v22) = 2;
  sub_1AFDFE768();
  v19 = v23;
  LOBYTE(v22) = 3;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v18 = v23;
LABEL_7:
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v16 = v20;
  *a2 = v21;
  a2[1] = v16;
  v17 = v18;
  a2[2] = v19;
  a2[3] = v17;
  return result;
}

uint64_t sub_1AF6AB118(void *a1)
{
  sub_1AF6ABC20(0, &qword_1ED722FA8, sub_1AF6ABB68, &type metadata for MatrixCodingKeys_pre2005, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF69504C(2005, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF6ABB68();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      LOBYTE(v18) = 0;
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v11);
      sub_1AFDFE768();
      v17 = v19;
      LOBYTE(v18) = 1;
      sub_1AFDFE768();
      v16 = v19;
      LOBYTE(v18) = 2;
      sub_1AFDFE768();
      v15 = v19;
      LOBYTE(v18) = 3;
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v14 = v19;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      v12 = MEMORY[0x1E69E74A8];
      sub_1AF6ABC20(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      sub_1AF448018(&v19, v20);
      sub_1AF6ABBBC(&qword_1ED72F6F0, &qword_1ED72F6E0, v12);
      sub_1AFDFEAD8();
      v17 = v18;
      sub_1AF448018(&v19, v20);
      sub_1AFDFEAD8();
      v16 = v18;
      sub_1AF448018(&v19, v20);
      sub_1AFDFEAD8();
      v15 = v18;
      sub_1AF448018(&v19, v20);
      sub_1AFDFEAD8();
      v14 = v18;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v19);
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

float32x4_t sub_1AF6AB600@<Q0>(float32x4_t *a1@<X8>, double a2@<D0>, float a3@<S1>, double a4@<D2>)
{
  v5 = __sincosf_stret(a3);
  LODWORD(v6) = HIDWORD(v5);
  *(&v6 + 1) = -*&v5;
  v7 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v6, *&a2), 0, v5), 0);
  v8 = vmulq_f32(v6, 0);
  v9 = vaddq_f32(vmlaq_lane_f32(v8, v5, *&a2, 1), 0);
  v10 = vaddq_f32(vmlaq_f32(v8, 0, v5), xmmword_1AFE20180);
  result = vaddq_f32(v10, vmlaq_lane_f32(vmulq_n_f32(v7, *&a4), v9, *&a4, 1));
  *a1 = vmlaq_f32(vmlaq_f32(v7, 0, v9), 0, v10);
  a1[1] = vmlaq_f32(vaddq_f32(v9, vmulq_f32(v7, 0)), 0, v10);
  a1[2] = result;
  return result;
}

unint64_t sub_1AF6AB750()
{
  result = qword_1EB63D420;
  if (!qword_1EB63D420)
  {
    sub_1AF6AB7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D420);
  }

  return result;
}

void sub_1AF6AB7A8()
{
  if (!qword_1EB63D428)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D428);
    }
  }
}

unint64_t sub_1AF6AB7FC()
{
  result = qword_1EB63D430;
  if (!qword_1EB63D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D430);
  }

  return result;
}

unint64_t sub_1AF6AB854()
{
  result = qword_1EB63D438;
  if (!qword_1EB63D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D438);
  }

  return result;
}

unint64_t sub_1AF6AB8AC()
{
  result = qword_1EB63D440;
  if (!qword_1EB63D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D440);
  }

  return result;
}

unint64_t sub_1AF6AB904()
{
  result = qword_1EB63D448;
  if (!qword_1EB63D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D448);
  }

  return result;
}

unint64_t sub_1AF6AB95C()
{
  result = qword_1EB63D450;
  if (!qword_1EB63D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D450);
  }

  return result;
}

unint64_t sub_1AF6AB9B4()
{
  result = qword_1EB63D458;
  if (!qword_1EB63D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D458);
  }

  return result;
}

unint64_t sub_1AF6ABA0C()
{
  result = qword_1EB63D460;
  if (!qword_1EB63D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D460);
  }

  return result;
}

unint64_t sub_1AF6ABA64()
{
  result = qword_1EB63D468;
  if (!qword_1EB63D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D468);
  }

  return result;
}

unint64_t sub_1AF6ABABC()
{
  result = qword_1EB63D470;
  if (!qword_1EB63D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D470);
  }

  return result;
}

unint64_t sub_1AF6ABB14()
{
  result = qword_1EB63D478;
  if (!qword_1EB63D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D478);
  }

  return result;
}

unint64_t sub_1AF6ABB68()
{
  result = qword_1ED7248A0;
  if (!qword_1ED7248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7248A0);
  }

  return result;
}

uint64_t sub_1AF6ABBBC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF6ABC20(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF6ABC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF6ABCA4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vandq_s8(vceqq_f32(a1, a3), vceqq_f32(a2, a4));
  v4.i32[3] = v4.i32[2];
  return vminvq_u32(v4) >> 31;
}

uint64_t sub_1AF6ABD04(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = vandq_s8(vandq_s8(vceqq_f32(a1, a4), vceqq_f32(a2, a5)), vceqq_f32(a3, a6));
  v6.i32[3] = v6.i32[2];
  return vminvq_u32(v6) >> 31;
}

uint64_t sub_1AF6ABD7C(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vandq_s8(vandq_s8(vceqq_f32(a1, a5), vceqq_f32(a2, a6)), vandq_s8(vceqq_f32(a3, a7), vceqq_f32(a4, a8)));
  v8.i32[3] = v8.i32[2];
  return vminvq_u32(v8) >> 31;
}

unint64_t sub_1AF6ABDEC()
{
  result = qword_1EB63D480[0];
  if (!qword_1EB63D480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63D480);
  }

  return result;
}

unint64_t sub_1AF6ABE44()
{
  result = qword_1ED724890;
  if (!qword_1ED724890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED724890);
  }

  return result;
}

unint64_t sub_1AF6ABE9C()
{
  result = qword_1ED724898;
  if (!qword_1ED724898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED724898);
  }

  return result;
}

uint64_t sub_1AF6ABEF0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  v3 = sub_1AF3C9078(a1);
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF6ABF64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF6AC7DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AF6ABF90(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEEE8();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

double sub_1AF6AC044()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF702CBC(1, v1);

  result = *v1;
  xmmword_1ED73B568 = v1[0];
  *&qword_1ED73B578 = v1[1];
  qword_1ED73B588 = v2;
  return result;
}

uint64_t sub_1AF6AC0F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1ED725978 != -1)
  {
    swift_once();
  }

  v63 = xmmword_1ED73B568;
  v64 = DWORD2(xmmword_1ED73B568);
  v65 = BYTE12(xmmword_1ED73B568);
  v66 = qword_1ED73B578 & 0xFFFFFFFFFFFFFFFELL | a4 & 1;
  v67 = byte_1ED73B580;
  v68 = qword_1ED73B588;

  sub_1AF6B06C0(v4, &v63, a3 & 0xFFFFFFFFFFLL, v54);
  v40 = *v54;
  if (!*v54)
  {

    return 0;
  }

  v39 = *&v54[40];
  v9 = *(&v55 + 1);
  v45 = *(&v56 + 1);
  v58 = *&v54[8];
  v59 = *&v54[24];
  if (v57 <= 0)
  {

    sub_1AF5D1564(v54);
    return 0;
  }

  if (!*(&v55 + 1))
  {
    v50 = *&v54[32];
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v48 = *v54;
    v49 = *&v54[16];
    sub_1AF5DD298(&v48, v46);

    sub_1AF5D1564(v54);
    v12 = 0;
LABEL_39:
    sub_1AF5D1564(v54);
    return v12;
  }

  v44 = *(*(&v56 + 1) + 32);
  v10 = *(v56 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v50 = *&v54[32];
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v48 = *v54;
  v49 = *&v54[16];
  sub_1AF5DD298(&v48, v46);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v38 = v9;
  v37 = v10;
  while (1)
  {
    v42 = v13;
    v43 = v11;
    v14 = (v39 + 48 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v14 + 2);
    v41 = *(v14 + 3);
    v19 = *(v14 + 4);
    v18 = *(v14 + 5);
    if (v10)
    {
      v20 = *(v18 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v18 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v44);
    v21 = *(v45 + 64);
    v46[0] = *(v45 + 48);
    v46[1] = v21;
    v47 = *(v45 + 80);
    v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
    *(v45 + 48) = ecs_stack_allocator_allocate(*(v45 + 32), 48 * v22, 8);
    *(v45 + 56) = v22;
    *(v45 + 72) = 0;
    *(v45 + 80) = 0;
    *(v45 + 64) = 0;
    v23 = sub_1AF64B110(&type metadata for Name, &off_1F2535068, v17, v41, v19, v45);
    if (v17)
    {
      if (v19)
      {
        v24 = (v23 + 8);
        while (1)
        {
          v26 = *v17++;
          v25 = v26;
          v27 = *(v24 - 1) == a1 && *v24 == a2;
          if (v27 || (sub_1AFDFEE28() & 1) != 0)
          {

            if (*(v18 + 184))
            {
              goto LABEL_41;
            }

            v29 = *(*(v18 + 168) + 4 * v25);
            v30 = *(*(v28 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v29 + 8);

            v12 = v29 | (v30 << 32);
          }

          v24 += 2;
          if (!--v19)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_23;
    }

    if (v16 != v15)
    {
      break;
    }

LABEL_23:
    v60 = v40;
    v61 = v58;
    v62 = v59;
    v13 = v42;
    sub_1AF630994(v45, &v60, v46);
    sub_1AF62D29C(v18);
    ecs_stack_allocator_pop_snapshot(v44);
    v10 = v37;
    if (v37)
    {
      os_unfair_lock_unlock(*(v18 + 344));
      os_unfair_lock_unlock(*(v18 + 376));
    }

    v11 = v43 + 1;
    if (v43 + 1 == v38)
    {

      sub_1AF5D1564(v54);
      goto LABEL_39;
    }
  }

  v31 = (v23 + 16 * v16 + 8);
  while (1)
  {
    v32 = *(v31 - 1) == a1 && *v31 == a2;
    if (!v32 && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(v18 + 184))
    {
      break;
    }

    v34 = *(*(v18 + 168) + 4 * v16);
    v35 = *(*(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v34 + 8);

    v12 = v34 | (v35 << 32);
LABEL_26:
    ++v16;
    v31 += 2;
    if (v15 == v16)
    {
      goto LABEL_23;
    }
  }

LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6AC5B4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = HIDWORD(a3);
  if (a2)
  {
    v12[0] = result;
    v12[1] = a2;
    if (v6 || a3 != -1)
    {

      MEMORY[0x1EEE9AC00](v9, v10);
      sub_1AFC75668(0, sub_1AF6AC768);
    }

    else
    {
    }
  }

  else if (v6 || a3 != -1)
  {
    v7 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v7)
    {
      v8 = *(v7 + 80);
      swift_unknownObjectWeakLoadStrong();
      v7 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectUnownedInit();
    v12[0] = a4;
    v12[2] = v7;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v13 = v8;
    sub_1AF6C150C(&type metadata for Name, &off_1F2535068, a3);
    sub_1AF579490(v12);
    if (v8)
    {
      v11 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v11 ^ 1);
    }
  }

  return result;
}

void *assignWithCopy for Name(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1AF6AC7DC(void *a1)
{
  sub_1AF479810();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2000, v9, v10))
  {
    v11 = sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(v14, v14[3]);
      v11 = sub_1AFDFEE38();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
    }
  }

  else
  {
    v11 = sub_1AF441150(a1, a1[3]);
    sub_1AF47986C();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v11 = sub_1AFDFE708();
      (*(v5 + 8))(v8, v4);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v11;
}

uint64_t sub_1AF6AC9EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16)
{
  v17 = *a9;
  v18 = *a10;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v16 + 205) = 16777472;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 160) = v19;
  *(v16 + 216) = 0;
  v20 = *(v18 + 80);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a9;
  *(v16 + 40) = v20;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = a15 | 0x480;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = a11;
  *(v16 + 152) = a12;
  v21 = *&a3;
  v22 = v21;
  if (a4)
  {
    v22 = 0.0;
  }

  *(v16 + 184) = v22;
  *(v16 + 188) = a4 & 1;
  v23 = *&a5;
  v24 = v23;
  if (a6)
  {
    v24 = 0.0;
  }

  *(v16 + 192) = v24;
  *(v16 + 196) = a6 & 1;
  v25 = *&a7;
  v26 = v25;
  if (a8)
  {
    v26 = 0.0;
  }

  *(v16 + 200) = v26;
  *(v16 + 204) = a8 & 1;
  *(v16 + 210) = a15 | 0x480;
  *(v16 + 168) = a13;
  *(v16 + 176) = a14;

  *(v16 + 80) = a10;
  *(v16 + 88) = &off_1F2535378;

  swift_unknownObjectRelease();
  v27 = swift_allocObject();
  v27[2] = *(v17 + *MEMORY[0x1E69E6B90]);
  v27[3] = a16;
  v27[4] = a10;
  v28 = *(v16 + 64);
  *(v16 + 64) = sub_1AF6AF3C4;
  *(v16 + 72) = v27;
  sub_1AF0FB8EC(v28);
  return v16;
}

uint64_t sub_1AF6ACB94()
{

  sub_1AF0FB8EC(*(v0 + 64));
  swift_unknownObjectRelease();

  sub_1AF0FB8EC(*(v0 + 120));

  return v0;
}

uint64_t sub_1AF6ACC04(uint64_t a1, char a2)
{
  v3 = v2;
  if ((*(v2 + 112) & 1) == 0 && ((a2 & 1) != 0 || *(v2 + 104) > a1))
  {
    v5 = *(v2 + 136);
    if (v5)
    {

      return v5;
    }

    v6 = *(v3 + 120);
    if (v6)
    {

      v6(v9);
      v10 = sub_1AF6ACC04(a1, a2 & 1);

      sub_1AF0FB8EC(v6);
      *(v3 + 136) = v10;

      return v10;
    }
  }

  return v3;
}

void *sub_1AF6ACCE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EntityGetSet();
  v5 = swift_allocObject();
  v6 = *(v2 + 80);
  v5[2] = v6;
  v5[3] = a2;
  v5[4] = a1;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a1;
  v8 = swift_allocObject();
  v8[4] = sub_1AF6AF1D0;
  v8[5] = v5;
  v8[2] = sub_1AF6AF1DC;
  v8[3] = v7;
  v8[6] = a1;
  swift_retain_n();
  return v8;
}

void *sub_1AF6ACDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  result[6] = a5;
  return result;
}

uint64_t sub_1AF6ACE48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16)
{
  v21 = swift_allocObject();
  sub_1AF6AC9EC(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8 & 1, a9, a10, a11, a12, a13, a14, a15, a16);
  return v21;
}

uint64_t sub_1AF6ACF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13, int a14, char a15, int a16, char a17, int a18, char a19, int a20, char a21, __int16 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  type metadata accessor for PropertyDescription();
  type metadata accessor for EntityGetSet();

  v28 = sub_1AF6ACCE0(a3, a27);
  v29 = swift_allocObject();

  sub_1AF6AD484(a1, a2, a8, a9 & 1, a10, a11 & 1, a12, a13 & 1, a15, a16, a17 & 1, v31, a19, a20, a21 & 1, a7, a5, a6, v28, v32, a3, a23, a24, a22, a25, a26, a27);
  return v29;
}

BOOL sub_1AF6AD1C4(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1AF6AD1F4@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1AF6AD220@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_1AF6AD2E0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1AF6AD310@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1AF6AD368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, char a9, int a10, char a11, int a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, __int16 a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = swift_allocObject();
  sub_1AF6AD484(a1, a2, a3, a4 & 1, a5, a6 & 1, a7, a8 & 1, a9, a10, a11 & 1, v30, a13, a14, a15 & 1, a16, a17, a18, a19, v31, a21, a22, a23, a24, a25, a26, a27);
  return v28;
}

uint64_t sub_1AF6AD484(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, char a9, int a10, char a11, int a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, __int16 a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = v27;
  v49 = *a19;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;
  *(v27 + 160) = v31;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 210) = 0;
  *(v27 + 216) = 0;
  sub_1AFAF6160(a1, a2, a21, a24, &v54);

  v32 = v55[0];
  *(v27 + 16) = v54;
  *(v27 + 32) = v32;
  *(v27 + 44) = *(v55 + 12);
  v33 = *&a3;
  v34 = v33;
  if (a4)
  {
    v34 = 0.0;
  }

  *(v27 + 184) = v34;
  *(v27 + 188) = a4 & 1;
  v35 = *&a5;
  v36 = v35;
  if (a6)
  {
    v36 = 0.0;
  }

  *(v27 + 192) = v36;
  *(v27 + 196) = a6 & 1;
  v37 = *&a7;
  v38 = v37;
  if (a8)
  {
    v38 = 0.0;
  }

  *(v27 + 200) = v38;
  *(v27 + 204) = a8 & 1;
  v39 = a25;
  if (a11)
  {
    v40 = 0;
  }

  else
  {
    v40 = a9;
  }

  *(v28 + 205) = v40;
  *(v28 + 206) = a11 & 1;
  if (a15)
  {
    a13 = 0;
  }

  *(v28 + 207) = a13;
  *(v28 + 208) = a15 & 1;
  v42 = *(v28 + 64);
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  sub_1AF0FB8EC(v42);
  *(v28 + 96) = a16;

  *(v28 + 144) = a17;
  *(v28 + 152) = a18;
  *(v28 + 80) = a19;
  *(v28 + 88) = &off_1F2535378;

  swift_unknownObjectRelease();
  *(v28 + 210) = a24;
  if (!*(a25 + 16))
  {

    v43 = *(v49 + 80);
    v44 = swift_conformsToProtocol2();
    if (v44 && v43)
    {
      v43 = (*(v44 + 8))(v43, v44);
    }

    v45 = swift_conformsToProtocol2();
    if (!v45 || !v43)
    {

      goto LABEL_20;
    }

    v39 = (*(v45 + 8))(v43, v45);
  }

  *(v28 + 160) = v39;

LABEL_20:
  v46 = swift_allocObject();
  *(v46 + 16) = a27;
  *(v46 + 24) = a21;
  v47 = *(v28 + 64);
  *(v28 + 64) = sub_1AF6AF3D0;
  *(v28 + 72) = v46;
  sub_1AF0FB8EC(v47);
  *(v28 + 168) = a22;
  *(v28 + 176) = a23;

  *(v28 + 216) = a26;

  return v28;
}

void *sub_1AF6AD7E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for EntityValueAccessors();
  v11 = swift_allocObject();

  result = sub_1AF6AED24(a1, a2, a3, a4);
  a5[3] = v10;
  a5[4] = &off_1F2535390;
  *a5 = v11;
  return result;
}

uint64_t sub_1AF6AD8B4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1AF6AED24(a1, a2, a3, a4);
  return v8;
}

void *sub_1AF6AD91C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for EntityValueAccessors();
  v9 = swift_allocObject();

  result = sub_1AF6AE874(a1, a2, a3);
  a4[3] = v8;
  a4[4] = &off_1F2535390;
  *a4 = v9;
  return result;
}

uint64_t sub_1AF6AD9B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AF6AE874(a1, a2, a3);
  return v6;
}

uint64_t sub_1AF6ADA0C(uint64_t result)
{
  v2 = 1;
  switch(result)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v2 = 2;
      goto LABEL_33;
    case 2:
      v2 = 3;
      goto LABEL_33;
    case 3:
      v2 = 5;
      goto LABEL_33;
    case 4:
      v2 = 6;
      goto LABEL_33;
    case 5:
      v2 = 7;
      goto LABEL_33;
    case 6:
      v2 = 8;
      goto LABEL_33;
    case 7:
      v2 = 9;
      goto LABEL_33;
    case 8:
      v2 = 10;
      goto LABEL_33;
    case 9:
      v2 = 11;
      goto LABEL_33;
    case 10:
      v2 = 12;
      goto LABEL_33;
    case 11:
      goto LABEL_35;
    case 12:
      v2 = 13;
      goto LABEL_33;
    case 13:
      v2 = 20;
      goto LABEL_33;
    case 14:
      v2 = 15;
      goto LABEL_33;
    case 15:
      v2 = 22;
      goto LABEL_33;
    case 16:
      v2 = 21;
      goto LABEL_33;
    case 17:
      v2 = 19;
      goto LABEL_33;
    case 18:
      v2 = 4;
      goto LABEL_33;
    case 19:
      v2 = 14;
      goto LABEL_33;
    case 20:
      v2 = 23;
      goto LABEL_33;
    case 21:
      v2 = 26;
      goto LABEL_33;
    case 22:
      v2 = 27;
      goto LABEL_33;
    case 23:
      v2 = 28;
      goto LABEL_33;
    case 24:
      v2 = 29;
      goto LABEL_33;
    case 25:
      v2 = 30;
      goto LABEL_33;
    case 26:
      v2 = 31;
      goto LABEL_33;
    case 27:
      v2 = 32;
      goto LABEL_33;
    case 28:
      v2 = 24;
      goto LABEL_33;
    case 29:
      v2 = 33;
      goto LABEL_33;
    case 30:
      v2 = 25;
      goto LABEL_33;
    case 31:
      v2 = 34;
      goto LABEL_33;
    case 32:
      v2 = 18;
LABEL_33:
      *v1 = v2;
      v1[1] = 0;
      break;
    default:
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000041, 0x80000001AFF2F4C0);
      v3 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v3);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
LABEL_35:
      result = sub_1AFDFE518();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1AF6ADC50(uint64_t a1)
{
  if ((a1 - 1) > 0x21)
  {
    return 11;
  }

  else
  {
    return qword_1AFE707D0[a1 - 1];
  }
}

uint64_t sub_1AF6ADC74(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1701736302;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x656C616373;
      break;
    case 2:
      result = 0x656C676E61;
      break;
    case 3:
      result = 0x73726574656DLL;
      break;
    case 4:
      result = 0x73746E65747865;
      break;
    case 5:
      result = 0x726F6C6F63;
      break;
    case 6:
      result = 0x6C676E4173697861;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x656665526873656DLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x72657474696D65;
      break;
    case 11:
      result = 0x74694B656E656373;
      break;
    case 12:
      result = 0x75466C656E72656BLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6946726564616873;
      break;
    case 15:
      result = 0x726564616873;
      break;
    case 16:
    case 18:
      result = 0x6C6169726574616DLL;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x656C67676F74;
      break;
    case 20:
      result = 0x65646E496D756E65;
      break;
    case 21:
      result = 7107189;
      break;
    case 22:
      result = 0x61547265646E6572;
      break;
    case 23:
      result = 0x6C6553724F796E61;
      break;
    case 24:
      result = 0x4F65646F4E796E61;
      break;
    case 25:
      result = 0x56664F746E696F70;
      break;
    case 26:
      result = 0x6174736554746968;
      break;
    case 27:
      v3 = 0x64696C6C6F63;
      goto LABEL_17;
    case 28:
      result = 0x6576727563;
      break;
    case 29:
      result = 0x6D6152726F6C6F63;
      break;
    case 30:
      result = 0x6F6974616D696E61;
      break;
    case 31:
      v3 = 0x74616D696E61;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      break;
    case 32:
      result = 0x6F69647561;
      break;
    case 33:
      result = 0x626166657270;
      break;
    default:
      result = 0x6F43656372756F73;
      break;
  }

  return result;
}

uint64_t sub_1AF6AE01C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0x21)
  {
    v2 = 11;
  }

  else
  {
    v2 = qword_1AFE707D0[a2 - 1];
  }

  return MEMORY[0x1B271ACB0](v2);
}

uint64_t sub_1AF6AE060()
{
  v1 = *v0;
  sub_1AFDFF288();
  v2 = sub_1AF6ADC50(v1);
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6AE0B8()
{
  v1 = *v0;
  sub_1AFDFF288();
  v2 = sub_1AF6ADC50(v1);
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

void *sub_1AF6AE104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF6AF25C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AF6AE130(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF6ADC50(v2);
  sub_1AF448018(v4, v5);
  sub_1AFDFEF18();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF6AE1D8()
{
  sub_1AF6ACB94();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6AE278()
{
  v1 = *v0;
  sub_1AFDFDFD8();
  v3 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](*(v1 + 16), *(v1 + 24));
  return v3;
}

BOOL sub_1AF6AE2F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1AFDFF288();
  v4 = sub_1AF6ADC50(v2);
  MEMORY[0x1B271ACB0](v4);
  v5 = sub_1AFDFF2F8();
  sub_1AFDFF288();
  v6 = sub_1AF6ADC50(v3);
  MEMORY[0x1B271ACB0](v6);
  return v5 == sub_1AFDFF2F8();
}

uint64_t sub_1AF6AE450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*v3)[10];
  v8 = sub_1AFDFDD58();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - v12;
  (v3[4])(a1, a2, v11);
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    result = (*(v9 + 8))(v13, v8);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v7;
    v16 = sub_1AF585714(a3);
    return (*(v14 + 32))(v16, v13, v7);
  }

  return result;
}

uint64_t sub_1AF6AE5D4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12[-v7];
  v9 = v2[2];
  sub_1AF0D5A54(v10, v12);
  swift_dynamicCast();
  v9(a1, a2, v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF6AE6F0@<X0>(unint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = (*a2 + *MEMORY[0x1E69E6CE8]);
  v10 = *v8;
  v9 = v8[1];

  sub_1AF67C8E4(a1, v10, a3, a2, v9, a4);
}

uint64_t sub_1AF6AE7B8()
{

  return swift_deallocClassInstance();
}

void *sub_1AF6AE874(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v6;
  *(v8 + 28) = v7;
  *(v8 + 32) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v3[2] = sub_1AF6AF3AC;
  v3[3] = v8;
  v3[4] = sub_1AF6AF3B8;
  v3[5] = v9;
  swift_retain_n();
  return v3;
}

uint64_t sub_1AF6AE934(void (**a1)(void, void), uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 10);
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v21 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v21 - v15;
  a1[4](a2, a3);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    return sub_1AFDFD478();
  }

  else
  {
    v18 = *(v13 + 32);
    v18(v16, v12, v6);
    sub_1AF6AF1F4(v6, v6);
    swift_allocObject();
    v19 = sub_1AFDFD438();
    v18(v20, v16, v6);
    sub_1AFDFD538();
    return v19;
  }
}

uint64_t sub_1AF6AEB5C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = (*a2)[10];
  v9 = sub_1AFDFDD58();
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v19 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = v19 - v16;
  v19[1] = a1;
  sub_1AFDFD538();
  swift_getWitnessTable();
  sub_1AFDFD8C8();
  (*(v14 + 48))(v13, 1, v8);
  (*(v14 + 32))(v17, v13, v8);
  (a2[2])(a3, a4, v17);
  return (*(v14 + 8))(v17, v8);
}

void *sub_1AF6AED24(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = HIDWORD(a1);
  v11 = *a3;
  v4[6] = a1;
  v4[7] = a2;
  type metadata accessor for EntityGetSet();
  v12 = sub_1AF6ACCE0(a3, a4);

  v5[8] = v12;
  v13 = swift_allocObject();
  v14 = *(v11 + *MEMORY[0x1E69E6CE8]);
  *(v13 + 16) = v14;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = v9;
  *(v13 + 44) = v10;
  *(v13 + 48) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a4;
  *(v15 + 32) = v12;
  *(v15 + 40) = v9;
  *(v15 + 44) = v10;
  *(v15 + 48) = a2;
  v5[2] = sub_1AF6AF338;
  v5[3] = v13;
  v5[4] = sub_1AF6AF348;
  v5[5] = v15;
  swift_retain_n();
  return v5;
}

uint64_t sub_1AF6AEE7C()
{

  return v0;
}

uint64_t sub_1AF6AEEAC()
{
  sub_1AF6AEE7C();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PropertyDescription.Semantic(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDC && *(a1 + 16))
  {
    return (*a1 + 2147483613);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0x23)
  {
    return (v3 - 34);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PropertyDescription.Semantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483613;
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 34;
    }
  }

  return result;
}

uint64_t sub_1AF6AEFB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  if ((v1 + 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1AF6AEFD8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

unint64_t sub_1AF6AF01C()
{
  result = qword_1EB63D588;
  if (!qword_1EB63D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D588);
  }

  return result;
}

unint64_t sub_1AF6AF074()
{
  result = qword_1EB63D590;
  if (!qword_1EB63D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D590);
  }

  return result;
}

unint64_t sub_1AF6AF0CC()
{
  result = qword_1EB63D598;
  if (!qword_1EB63D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D598);
  }

  return result;
}

unint64_t sub_1AF6AF124()
{
  result = qword_1EB63D5A0;
  if (!qword_1EB63D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5A0);
  }

  return result;
}

unint64_t sub_1AF6AF17C()
{
  result = qword_1EB63D5A8;
  if (!qword_1EB63D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D5A8);
  }

  return result;
}

void sub_1AF6AF1F4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    sub_1AF6AF358();
  }

  else
  {

    sub_1AFDFEA18();
  }
}

void *sub_1AF6AF25C(void *a1)
{
  v7 = xmmword_1AFE22A20;
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v6, v6[3]);
    v4 = sub_1AFDFEE68();
    sub_1AF6ADA0C(v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    v3 = v7;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

void sub_1AF6AF358()
{
  if (!qword_1ED726900)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726900);
    }
  }
}

BOOL sub_1AF6AF3F4(float32x4_t a1)
{
  result = 0;
  a1.f32[3] = a1.f32[3] + -1.0;
  v2 = vabsq_f32(a1);
  if (*v2.i32 <= 0.00000011921)
  {
    v3 = vcge_f32(0x3400000034000000, *&vextq_s8(v2, v2, 4uLL));
    if (v3.i8[0] & 1) != 0 && (v3.i8[4])
    {
      return *&v2.i32[3] <= 0.00000011921;
    }
  }

  return result;
}

float32x2_t sub_1AF6AF448(int32x4_t a1, int32x4_t a2)
{
  v2 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
  v3 = vnegq_f32(a2);
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL), v3), a1, v2);
  v5 = v4.f32[1] + v4.f32[1];
  v6.i32[0] = vextq_s8(v4, v4, 8uLL).u32[0];
  v6.i32[1] = v4.i32[0];
  *v4.f32 = vadd_f32(v6, v6);
  v4.f32[2] = v5;
  v7 = vadd_f32(*a1.i8, vmul_laneq_f32(*v4.f32, a2, 3));
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v3), v4, v2);
  v2.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
  v2.i32[1] = v8.i32[0];
  return vadd_f32(v7, *v2.f32);
}

uint64_t sub_1AF6AF4D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF6AF5D0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF6AF4FC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF6AF6D4();
  sub_1AF6AF730(&qword_1ED72F710);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF6AF5D0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v4, v4[3]);
    sub_1AF6AF6D4();
    sub_1AF6AF730(&qword_1ED72F6F0);
    sub_1AFDFEE88();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

void sub_1AF6AF6D4()
{
  if (!qword_1ED72F6E0)
  {
    sub_1AF43A0C8();
    v0 = sub_1AFDFF238();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F6E0);
    }
  }
}

uint64_t sub_1AF6AF730(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6AF6D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for Query(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for Query(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for Query(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1AF6AF8F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  result = sub_1AF649C6C(*(v8 + 40), a1, v11);
  if (LOBYTE(v11[0]) == 1)
  {
    v11[0] = a1;
    v11[1] = a4;
    v12 = 1;
    MEMORY[0x1EEE9AC00](result, v10);

    sub_1AF63023C(a2 & 1, v8, sub_1AF6AFD38);

    return sub_1AF635250(v11);
  }

  return result;
}

uint64_t sub_1AF6AF9F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  result = sub_1AF649C6C(*(v8 + 40), a1, v11);
  if ((v11[0] & 1) == 0)
  {
    v11[0] = a1;
    v11[1] = a4;
    v12 = 0;
    MEMORY[0x1EEE9AC00](result, v10);

    sub_1AF63023C(a2 & 1, v8, sub_1AF6AFAF8);

    return sub_1AF635250(v11);
  }

  return result;
}

uint64_t sub_1AF6AFAFC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 32);
  if (v4 < *(v3 + 256) || v4 >= *(v3 + 232))
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10 = 5;
    MEMORY[0x1EEE9AC00](result, a2);
    v7 = v6 & 1;

    sub_1AF63023C(v7, v3, sub_1AF6AFD38);

    return sub_1AF635250(v8);
  }

  return result;
}

uint64_t sub_1AF6AFBDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = sub_1AF64B110(a1, a4, *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 16));
  if (result)
  {
    v9 = (v8 - result) / *(*(a3 - 8) + 72);
  }

  else
  {
    v9 = 0;
  }

  *a5 = result;
  a5[1] = v9;
  return result;
}

__n128 initializeWithTake for RenderArguments(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for RenderArguments(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for RenderArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AF6AFD3C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  os_unfair_lock_lock(*(v3 + 40));
  if (*(*(v3 + 56) + 16) && (sub_1AF449CBC(a1), (v4 & 1) != 0))
  {
    v5 = *(v3 + 40);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_unlock(*(v3 + 40));
    v6 = *(*(v1 + 88) + 8 * a1 + 32);

    sub_1AF6B1138(v1, v6);
  }
}

uint64_t sub_1AF6AFDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  result = sub_1AF449CBC(a2);
  if (v5)
  {
    v6 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 56);
    v48[0] = *(v3 + 56);
    *(v3 + 56) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AF844FAC();
      v8 = v48[0];
    }

    v9 = *(v8[7] + 8 * v6);
    sub_1AF6B1F04(v6, v8);
    *(v3 + 56) = v8;

    if (*(v9 + 16))
    {
      v10 = 0;
      v45 = v9 + 32;
      v46 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
      v43 = v9;
      v42 = v3;
      do
      {
        v11 = *(v45 + 8 * v10);
        v13 = sub_1AF6B09CC(v48, v11);
        if (*v12)
        {
          v14 = v12;
          v15 = v12[1];
          v16 = *(v15 + 2);
          if (v16)
          {
            v17 = 0;
            v18 = 1;
            while (*&v15[v17 + 32] != v44)
            {
              ++v18;
              v17 += 4;
              if (!--v16)
              {
                goto LABEL_17;
              }
            }

            v19 = swift_isUniquelyReferenced_nonNull_native();
            v14[1] = v15;
            if ((v19 & 1) == 0)
            {
              v15 = sub_1AFC0D9CC(v15);
              v14[1] = v15;
            }

            v20 = *(v15 + 2);
            v21 = v20 - 1;
            memmove(&v15[v17 + 32], &v15[v17 + 36], 4 * (v20 - v18));
            *(v15 + 2) = v21;
            v14[1] = v15;
            v9 = v43;
          }
        }

LABEL_17:
        (v13)(v48, 0);
        v22 = *(v3 + 48);
        if (*(v22 + 16))
        {
          v23 = sub_1AF449CB8(v11);
          if (v24)
          {
            v25 = *(v22 + 56) + 24 * v23;
            if (!*(*(v25 + 8) + 16))
            {
              v26 = *(v25 + 16);
              v27 = *(v26 + 16);
              if (v27)
              {
                swift_bridgeObjectRetain_n();

                v28 = 32;
                while (1)
                {
                  v29 = v26;
                  v30 = *(v26 + v28);
                  v31 = *(a1 + v46);
                  v32 = *(v31 + 56);

                  os_unfair_lock_lock(v32);
                  v33 = swift_isUniquelyReferenced_nonNull_native();
                  v48[0] = *(v31 + 152);
                  v34 = v48[0];
                  *(v31 + 152) = 0x8000000000000000;
                  v35 = sub_1AF419D60(v30);
                  v37 = v36;
                  v38 = v34[2] + ((v36 & 1) == 0);
                  if (v34[3] >= v38)
                  {
                    if ((v33 & 1) == 0)
                    {
                      sub_1AF845420();
                      v34 = v48[0];
                    }
                  }

                  else
                  {
                    sub_1AF82DD74(v38, v33);
                    v34 = v48[0];
                    v39 = sub_1AF419D60(v30);
                    if ((v37 & 1) != (v40 & 1))
                    {
                      result = sub_1AFDFF1A8();
                      __break(1u);
                      return result;
                    }

                    v35 = v39;
                  }

                  v26 = v29;
                  *(v31 + 152) = v34;

                  v41 = *(v31 + 152);
                  if ((v37 & 1) == 0)
                  {
                    v41[(v35 >> 6) + 8] |= 1 << v35;
                    *(v41[6] + 8 * v35) = v30;
                    *(v41[7] + 8 * v35) = 0;
                    ++v41[2];
                  }

                  --*(v41[7] + 8 * v35);
                  os_unfair_lock_unlock(*(v31 + 56));

                  v28 += 8;
                  if (!--v27)
                  {
                    swift_bridgeObjectRelease_n();

                    v3 = v42;
                    v9 = v43;
                    break;
                  }
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v10 != *(v9 + 16));
    }

    else
    {
    }
  }

  return result;
}

void sub_1AF6B01BC(void *a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF441150(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[3];
  v6 = a1[4];
  sub_1AF441150(a1, v5);
  v7 = v2;
  v8 = (*(v6 + 16))(v5, v6);
  v9 = *(v2 + 48);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
LABEL_4:
  while (v12)
  {
LABEL_8:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = *(v9 + 56) + 24 * v17;
    v19 = *v18;
    v20 = *(*v18 + 30);
    if (v20 >= 0x18)
    {
      v21 = *(*(v9 + 48) + 8 * v17);
      v22 = *(v19 + 28);
      v23 = v19 + v22 + 24 * ((178956971 * v20) >> 32) + 41;
      v24 = v22 + 41;
      while (1)
      {
        v25 = v19 + v24;
        if (*(v19 + v24) == DynamicType && *(v19 + v24 + 16) == v8)
        {
          break;
        }

        v24 += 24;
        if (v25 + 24 == v23)
        {
          goto LABEL_4;
        }
      }

      v27 = sub_1AF449CB8(v21);
      if (v28)
      {
        v29 = v27;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v7;
        v34 = v7;
        v32 = *(v7 + 48);
        *(v31 + 48) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF845100();
        }

        sub_1AF6B2070(v29, v32);

        *(v34 + 48) = v32;

        v7 = v34;
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  v33 = *(v7 + 40);

  os_unfair_lock_unlock(v33);
}

uint64_t sub_1AF6B0440(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = *(*v1 + 16);
    while (*v5 != result)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AF4228C0(0, v4 + 1, 1, v3);
      v3 = result;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_1AF4228C0(v7 > 1, v8 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v8 + 1;
    *(v3 + 8 * v8 + 32) = v2;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1AF6B0504(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    v8 = *(*v2 + 16);
    while (1)
    {
      result = *(v7 - 1);
      if (result == a1 && *v7 == a2)
      {
        break;
      }

      result = sub_1AFDFEE28();
      if (result)
      {
        break;
      }

      v7 += 2;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AF420554(0, v6 + 1, 1, v5);
      v5 = result;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1AF420554(v11 > 1, v12 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1AF6B05F4(unint64_t result)
{
  v2 = result;
  v3 = HIDWORD(result);
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (v5)
  {
    v6 = (v4 + 36);
    v7 = *(*v1 + 16);
    while (*(v6 - 1) != result || *v6 != HIDWORD(result))
    {
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AF4217DC(0, v5 + 1, 1, v4);
      v4 = result;
    }

    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1AF4217DC(v9 > 1, v10 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v10 + 1;
    v11 = v4 + 8 * v10;
    *(v11 + 32) = v2;
    *(v11 + 36) = v3;
    *v1 = v4;
  }

  return result;
}

__n128 sub_1AF6B06C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  os_unfair_lock_lock(*(v4 + 40));
  v10 = *a2;
  v11 = *(v4 + 48);
  if (*(v11 + 16) && (v12 = sub_1AF449CB8(*(v10 + 32)), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 24 * v12 + 8);
    sub_1AF6B75B4(a2, v34);
  }

  else
  {

    sub_1AF6B1714(a1, v10);
    v14 = v15;
  }

  os_unfair_lock_unlock(*(v5 + 40));
  v16 = *(v14 + 16);
  if (v16)
  {
    if (BYTE4(a3) == 2 && !a3)
    {
      LODWORD(a3) = *(a2 + 8);
    }

    v17 = thread_worker_index();
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v17 != -1)
    {
      v19 += *v17 + 1;
    }

    v20 = *v19;
    if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) == 4)
    {
      v21 = *(a1 + 224);
      if (*(a1 + 233) == 1)
      {
        v22 = v21 <= 1;
      }

      else
      {
        v22 = v21 <= 0;
      }

      v23 = !v22;
    }

    else
    {
      v23 = 1;
    }

    if (*(a2 + 24) != 2)
    {
      v23 = *(a2 + 24);
    }

    v24 = *(a2 + 16);
    v25 = *(a2 + 32);
    v35 = v10;
    v36 = a3;
    v37 = v18;
    v38 = v24;
    v39 = v23;
    v40 = v25;

    sub_1AF6BB028(v26, v20, &v35, (v14 + 32), v16, v34);
    v32 = v34[1];
    v33 = v34[0];
    v30 = v34[3];
    v31 = v34[2];
    v28 = v34[5];
    v29 = v34[4];
    sub_1AF692DB0(a2);
  }

  else
  {
    sub_1AF692DB0(a2);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  *a4 = v33;
  a4[1] = v32;
  a4[2] = v31;
  a4[3] = v30;
  result = v29;
  a4[4] = v29;
  a4[5] = v28;
  return result;
}

uint64_t sub_1AF6B0910(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  os_unfair_lock_lock(*(v3 + 40));
  v6 = *a2;
  v7 = *(v3 + 48);
  if (*(v7 + 16) && (v8 = sub_1AF449CB8(*(v6 + 32)), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 24 * v8 + 8);
  }

  else
  {
    sub_1AF6B1714(a1, v6);
    v10 = v11;
  }

  os_unfair_lock_unlock(*(v3 + 40));

  return v10;
}

uint64_t (*sub_1AF6B09CC(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AF6B5A70(v4, a2);
  return sub_1AF6B7614;
}

uint64_t (*sub_1AF6B0A44(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AF6B5B14(v4, a2);
  return sub_1AF6B7614;
}

void (*sub_1AF6B0ABC(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for TextureCache.TextureKey() - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1AF6B718C(a2, v8);
  v6[5] = sub_1AF6B5BB8(v6, v9);
  return sub_1AF6B0B84;
}

void sub_1AF6B0B84(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1AF6B71F0(v2);
  free(v2);

  free(v1);
}

uint64_t (*sub_1AF6B0BE0(uint64_t **a1, unsigned __int8 a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AF6B5D1C(v6, a2, a3);
  return sub_1AF6B7614;
}

uint64_t (*sub_1AF6B0C68(uint64_t **a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AF6B5DC8(v4, a2 | ((HIDWORD(a2) & 1) << 32));
  return sub_1AF6B7614;
}

uint64_t (*sub_1AF6B0CF0(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1AF6B5E7C(v4, a2);
  return sub_1AF6B7614;
}

uint64_t sub_1AF6B0D68(uint64_t a1)
{
  v3 = v1 + 41;
  v4 = v1[9];
  if (v4 >= 0x10)
  {
    v7 = &v3[v1[8]];
    v8 = v1[11];
    v9 = 16 * (v4 >> 4);
    v10 = v1 + 41;
    while (1)
    {
      if (!v8 || v10[v1[10]] != 5)
      {
        if (!*(*(a1 + 128) + 16))
        {
          break;
        }

        sub_1AF449CB8(*v7);
        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      v7 += 16;
      ++v10;
      v9 -= 16;
      if (!v9)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    v5 = v1[13];
    if (v5 >= 0x10)
    {
      v12 = &v3[v1[12]];
      v13 = *(*(a1 + 128) + 16);
      v14 = 16 * (v5 >> 4);
      while (1)
      {
        if (v13)
        {
          sub_1AF449CB8(*v12);
          if (v15)
          {
            break;
          }
        }

        v12 += 16;
        v14 -= 16;
        if (!v14)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      if (v1[15] < 0x18u)
      {
        return 2;
      }

      v16 = &v3[v1[14]];
      v17 = 24 * (v1[15] / 0x18uLL);
      while (*(*(a1 + 128) + 16))
      {
        sub_1AF449CB8(*v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += 24;
        v17 -= 24;
        if (!v17)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AF6B0EB8(uint64_t a1)
{
  v2 = *(v1 + 30);
  if (v2 < 0x18)
  {
    return 1;
  }

  v4 = v1;
  v5 = *(a1 + 184);
  if (*(v5 + 16))
  {
    v6 = 24 * ((178956971 * v2) >> 32);
    for (i = (*(v4 + 28) + v4 + 57); ; i += 3)
    {
      v8 = *i;
      v9 = sub_1AF449CB8(*(i - 2));
      if ((v10 & 1) == 0 || v8 != *(*(v5 + 56) + 8 * v9))
      {
        break;
      }

      v6 -= 24;
      if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AF6B0F58()
{
  MEMORY[0x1B271DEA0](*(v0 + 40), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t destroy for QueryManager.QueryInfo()
{
}

void *sub_1AF6B1010(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for QueryManager.QueryInfo(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for QueryManager.QueryInfo(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void sub_1AF6B1138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock(*(v2 + 40));
  v5 = *(a2 + 16);
  v6 = *(a2 + 204);
  v7 = *(v2 + 48);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v62 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    do
    {
      if (!v10)
      {
        do
        {
          v13 = v12 + 1;
          if (v12 + 1 >= v11)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v3[7];
            v3[7] = 0x8000000000000000;
            sub_1AF85190C(v66, v6, isUniquelyReferenced_nonNull_native);
            v3[7] = v71;
            v53 = v3[5];

            os_unfair_lock_unlock(v53);
            return;
          }

          v10 = *(v7 + 8 * v12++ + 72);
        }

        while (!v10);
        v12 = v13;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v12 << 6);
      v16 = *(*(v7 + 48) + 8 * v15);
      v17 = *(v7 + 56) + 24 * v15;
      v67 = *(v17 + 8);
      v68 = v16;
      v69 = *(v17 + 16);
      v18 = sub_1AF6B0D68(v5);
    }

    while (!v18 || v18 == 1 && (sub_1AF6B0EB8(a2) & 1) == 0);
    v57 = v6;
    v55 = v5;
    v56 = a2;
    if (!*(v67 + 16))
    {
      v19 = v69;
      if (*(v69 + 16))
      {
        break;
      }
    }

LABEL_24:
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v3[6];
    v70 = v32;
    v3[6] = 0x8000000000000000;
    v34 = sub_1AF449CB8(v68);
    v35 = v32[2] + ((v33 & 1) == 0);
    v65 = v33;
    if (v32[3] >= v35)
    {
      if ((v60 & 1) == 0)
      {
        v51 = v34;
        sub_1AF845100();
        v33 = v65;
        v34 = v51;
      }
    }

    else
    {
      sub_1AF82D618(v35, v60);
      v36 = sub_1AF449CB8(v68);
      v38 = v37 & 1;
      v33 = v65;
      if ((v65 & 1) != v38)
      {
        goto LABEL_53;
      }

      v34 = v36;
    }

    v61 = v34;
    if (v33)
    {
      v39 = (v32[7] + 24 * v34);
      v41 = *v39;
      v40 = v39[1];
      v42 = v39[2];
    }

    else
    {
      v41 = 0;
      v40 = 0;
      v42 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1AF420E8C(0, *(v40 + 2) + 1, 1, v40);
    }

    v44 = *(v40 + 2);
    v43 = *(v40 + 3);
    v45 = v68;
    if (v44 >= v43 >> 1)
    {
      v40 = sub_1AF420E8C(v43 > 1, v44 + 1, 1, v40);
      v45 = v68;
    }

    *(v40 + 2) = v44 + 1;
    *&v40[4 * v44 + 32] = v57;
    if (v41)
    {
      if (v65)
      {
        v46 = (v70[7] + 24 * v61);
        *v46 = v41;
        v46[1] = v40;
        v46[2] = v42;
      }

      else
      {
        v70[(v61 >> 6) + 8] |= 1 << v61;
        *(v70[6] + 8 * v61) = v45;
        v47 = (v70[7] + 24 * v61);
        *v47 = v41;
        v47[1] = v40;
        v47[2] = v42;
        ++v70[2];
      }
    }

    else if (v65)
    {
      sub_1AF6B2070(v61, v70);
    }

    v3[6] = v70;
    v48 = v66;
    a2 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC06F08(0, *(v66 + 16) + 1, 1);
      v48 = v66;
    }

    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1AFC06F08(v49 > 1, v50 + 1, 1);

      v48 = v66;
    }

    else
    {
    }

    *(v48 + 16) = v50 + 1;
    v66 = v48;
    *(v48 + 8 * v50 + 32) = v68;
    v6 = v57;
    v5 = v55;
  }

  v64 = *(v69 + 16);
  v54 = v3;
  swift_bridgeObjectRetain_n();

  v20 = 32;
  while (1)
  {
    v21 = *(v19 + v20);
    v22 = *(a1 + v62);
    v23 = *(v22 + 56);

    os_unfair_lock_lock(v23);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v22 + 152);
    *(v22 + 152) = 0x8000000000000000;
    v25 = sub_1AF419D60(v21);
    v27 = v26;
    v28 = *(v24 + 16) + ((v26 & 1) == 0);
    v58 = v21;
    if (*(v24 + 24) >= v28)
    {
      if ((v59 & 1) == 0)
      {
        sub_1AF845420();
      }

      goto LABEL_21;
    }

    sub_1AF82DD74(v28, v59);
    v29 = sub_1AF419D60(v21);
    if ((v27 & 1) != (v30 & 1))
    {
      break;
    }

    v25 = v29;
LABEL_21:
    v19 = v69;
    *(v22 + 152) = v24;

    v31 = *(v22 + 152);
    if ((v27 & 1) == 0)
    {
      v31[(v25 >> 6) + 8] |= 1 << v25;
      *(v31[6] + 8 * v25) = v58;
      *(v31[7] + 8 * v25) = 0;
      ++v31[2];
    }

    ++*(v31[7] + 8 * v25);
    os_unfair_lock_unlock(*(v22 + 56));

    v20 += 8;
    if (!--v64)
    {

      v3 = v54;
      goto LABEL_24;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_53:
  sub_1AFDFF1A8();
  __break(1u);
}

uint64_t sub_1AF6B1714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v4 = *(a2 + 32);
  v5 = *(v2 + 48);
  if (!*(v5 + 16) || (v6 = sub_1AF449CB8(*(a2 + 32)), (v7 & 1) == 0))
  {
    v8 = *(v3 + 56);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (v11)
    {
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(*(v8 + 48) + ((v13 << 8) | (4 * v16)));
      v18 = *(*(a1 + 88) + 8 * v17 + 32);
      v19 = sub_1AF6B0D68(*(v18 + 16));
      if (v19 && (v19 != 1 || (sub_1AF6B0EB8(v18) & 1) != 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AFC05EDC(0, *(v14 + 16) + 1, 1);
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_1AFC05EDC(v20 > 1, v21 + 1, 1);
          v22 = v21 + 1;
        }

        *(v14 + 16) = v22;
        *(v14 + 4 * v21 + 32) = v17;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (v13 + 1 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v13++ + 72);
      if (v11)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

    swift_retain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v3 + 48);
    *(v3 + 48) = 0x8000000000000000;
    sub_1AF851A44(v43, v14, MEMORY[0x1E69E7CC0], v4, isUniquelyReferenced_nonNull_native);
    *(v3 + 48) = v44;
    v24 = *(v14 + 16);
    if (!v24)
    {
LABEL_39:

      return v43;
    }

    v25 = 32;
    while (1)
    {
      v26 = *(v14 + v25);
      v27 = *(v3 + 56);
      if (*(v27 + 16) && (v28 = sub_1AF449CBC(*(v14 + v25)), (v29 & 1) != 0))
      {
        v30 = *(*(v27 + 56) + 8 * v28);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC06F08(0, *(v30 + 16) + 1, 1);
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1AFC06F08(v31 > 1, v32 + 1, 1);
      }

      *(v30 + 16) = v32 + 1;
      *(v30 + 8 * v32 + 32) = v4;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v3 + 56);
      *(v3 + 56) = 0x8000000000000000;
      v35 = sub_1AF449CBC(v26);
      v37 = v36;
      v38 = v34[2] + ((v36 & 1) == 0);
      if (v34[3] < v38)
      {
        break;
      }

      if (v33)
      {
        goto LABEL_35;
      }

      v40 = v35;
      sub_1AF844FAC();
      v35 = v40;
      if (v37)
      {
LABEL_36:
        *(v34[7] + 8 * v35) = v30;

        goto LABEL_22;
      }

LABEL_21:
      v34[(v35 >> 6) + 8] |= 1 << v35;
      *(v34[6] + 4 * v35) = v26;
      *(v34[7] + 8 * v35) = v30;
      ++v34[2];
LABEL_22:
      *(v3 + 56) = v34;

      v25 += 4;
      if (!--v24)
      {
        goto LABEL_39;
      }
    }

    sub_1AF82D3C8(v38, v33);
    v35 = sub_1AF449CBC(v26);
    if ((v37 & 1) != (v39 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_35:
    if (v37)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  v43 = *(*(v5 + 56) + 24 * v6);

  return v43;
}

uint64_t sub_1AF6B1B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 32);
  v7 = *(v3 + 48);
  if (*(v7 + 16) && (v8 = sub_1AF449CB8(*(a3 + 32)), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 24 * v8 + 8);
  }

  else
  {
    v10 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  v14 = sub_1AF449CB8(v6);
  v15 = v13;
  v16 = v12[2] + ((v13 & 1) == 0);
  if (v12[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1AF845100();
      if (v15)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v21 = 0;
    v20 = 0uLL;
    goto LABEL_14;
  }

  sub_1AF82D618(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_1AF449CB8(v6);
  if ((v15 & 1) != (v18 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v14 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v19 = v12[7] + 24 * v14;
  v20 = *v19;
  v21 = *(v19 + 16);
LABEL_14:
  v25 = v20;
  v26 = v21;
  sub_1AF6B0440(a2);
  if (v25)
  {
    if (v15)
    {
      v22 = v12[7] + 24 * v14;
      *v22 = v25;
      *(v22 + 16) = v26;
    }

    else
    {
      sub_1AF843220(v14, v6, v25, *(&v25 + 1), v26, v12);
    }
  }

  else if (v15)
  {
    sub_1AF6B2070(v14, v12);
  }

  *(v4 + 48) = v12;
  v23 = *(v10 + 16) != 0;

  sub_1AF6D6A24(a2, v23);
}

char *sub_1AF6B1D58(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();

      sub_1AFDFD038();
      v9 = sub_1AFDFF2F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 88 * v3);
        v15 = (v14 + 88 * v6);
        if (v3 != v6 || result >= v15 + 88)
        {
          result = memmove(result, v15, 0x58uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B1F04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1B271AC80](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B2070(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_1AFDFF278();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B21E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 4 * v3);
          v17 = (v15 + 4 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B234C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();

      sub_1AFDFD038();
      v9 = sub_1AFDFF2F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B24F4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 144 * v3;
          v16 = (v15 + 144 * v6);
          if (144 * v3 < (144 * v6) || result >= v16 + 144 || v3 != v6)
          {
            result = memmove(result, v16, 0x90uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void sub_1AF6B2674(int64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFE488();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1AFDFE078();
    v14 = v12;
    v36 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v37 = *(v15 + 56);
    v34 = (v15 - 8);
    v35 = v16;
    do
    {
      v17 = v9;
      v18 = v37 * v11;
      v19 = v14;
      v20 = v15;
      v35(v8, *(a2 + 48) + v37 * v11, v4);
      v21 = sub_1AFDFCCF8();
      (*v34)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v36)
      {
        if (v22 >= v36 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v37 * a1;
          v27 = v25 + v18 + v37;
          v28 = v37 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v37 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 32 * a1);
          v32 = (v30 + 32 * v11);
          if (a1 != v11 || v31 >= v32 + 2)
          {
            v33 = v32[1];
            *v31 = *v32;
            v31[1] = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v36 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
}

uint64_t sub_1AF6B2920(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B2A88(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void sub_1AF6B2C10(int64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1AFDFE078();
    v14 = v12;
    v29 = (v13 + 1) & v12;
    v30 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v27 = (v15 - 8);
    v28 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v28(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1AF6B7458(&qword_1EB633A20, MEMORY[0x1E69695A8]);
      v21 = sub_1AFDFCCF8();
      (*v27)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v29)
      {
        if (v22 >= v29 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v25 < v18 || *(a2 + 56) + v25 >= (*(a2 + 56) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v26 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v29 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v30;
    }

    while (((*(v30 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
}

uint64_t sub_1AF6B2F08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B3070(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 80 * v3;
          v16 = (v15 + 80 * v6);
          if (80 * v3 < (80 * v6) || result >= v16 + 80 || v3 != v6)
          {
            result = memmove(result, v16, 0x50uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void sub_1AF6B31F0(int64_t a1, uint64_t a2)
{
  v36 = sub_1AFDFC318();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v37 = a2;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_1AFDFE078();
    v12 = v10;
    v34 = (v11 + 1) & v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v32 = a2 + 64;
    v33 = v14;
    v15 = *(v13 + 56);
    v31 = (v13 - 8);
    v16 = v36;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = v35;
      v20 = v12;
      v21 = v13;
      v33(v35, v37[6] + v15 * v9, v16);
      sub_1AF6B7458(&qword_1EB633A20, MEMORY[0x1E69695A8]);
      v22 = sub_1AFDFCCF8();
      (*v31)(v19, v16);
      v12 = v20;
      v23 = v22 & v20;
      if (a1 >= v34)
      {
        if (v23 >= v34 && a1 >= v23)
        {
LABEL_15:
          v13 = v21;
          if (v17 * a1 < v18 || (v15 = v17, v37[6] + v17 * a1 >= (v37[6] + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v15 = v17;
            v12 = v20;
            v7 = v32;
          }

          else
          {
            v7 = v32;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v17;
              v12 = v20;
            }
          }

          v26 = v37[7];
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v34 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v13 = v21;
      v7 = v32;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v12;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = v37;
  --v37[2];
  ++*(v29 + 9);
}

uint64_t sub_1AF6B3500(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      result = sub_1AFDFF278();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 8 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 56 * v3;
          v20 = (v18 + 56 * v6);
          if (56 * v3 < (56 * v6) || v19 >= v20 + 56 || v3 != v6)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[2];
            *(v19 + 48) = *(v20 + 6);
            *(v19 + 16) = v10;
            *(v19 + 32) = v11;
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B3690(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2F8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 8 * v3);
        v12 = (v10 + 8 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B382C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AFDFF278();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        sub_1AF6B7550(0, qword_1ED731070, type metadata accessor for TextureCache, type metadata accessor for WeakReference);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        sub_1AF6B7550(0, qword_1ED731070, type metadata accessor for TextureCache, type metadata accessor for WeakReference);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B3A2C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v9);
      result = sub_1AFDFF2F8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 80 * v3;
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B3BBC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    while (1)
    {
      v9 = 8 * v6;
      v10 = *(a2 + 48) + 8 * v6;
      v11 = *v10;
      v12 = *(v10 + 4);
      sub_1AFDFF288();
      if (v12 == 1)
      {
        if (v11)
        {
          v13 = v11 == 1 ? 1 : 3;
        }

        else
        {
          v13 = 0;
        }

        MEMORY[0x1B271ACB0](v13);
      }

      else
      {
        MEMORY[0x1B271ACB0](2);
        sub_1AFDFF2C8();
      }

      result = sub_1AFDFF2F8();
      v14 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + v9);
      if (8 * v3 != v9 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for GraphScriptingConfig.ScriptInfo() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B3DD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();

      sub_1AFDFD038();
      v9 = sub_1AFDFF2F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void sub_1AF6B3F80(unint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for TextureCache.TextureKey();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1AFDFE078();
    v13 = *(v4 + 72);
    v31 = v11;
    v32 = a2;
    v29 = v13;
    v30 = (v12 + 1) & v11;
    while (1)
    {
      v14 = v8;
      v36 = a1;
      v15 = v13 * v10;
      sub_1AF6B718C(*(a2 + 48) + v13 * v10, v7);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](*v7);
      v16 = v34;
      sub_1AFDFC128();
      sub_1AF6B7458(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
      sub_1AFDFCD08();
      v17 = &v7[*(v16 + 24)];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = v17[24];
      v22 = *(v17 + 4);
      v35 = *(v17 + 5);
      v33 = *(v17 + 6);
      v23 = *(v17 + 28);
      MEMORY[0x1B271ACB0](v18);
      if (v21 < 0xFE)
      {
        sub_1AFDFF2A8();
        if ((v21 & 0x80) != 0)
        {
          MEMORY[0x1B271ACB0](1);
          MEMORY[0x1B271ACB0](v19);
          MEMORY[0x1B271ACB0](v20);
        }

        else
        {
          MEMORY[0x1B271ACB0](0);
          MEMORY[0x1B271ACB0](v19);
          MEMORY[0x1B271ACB0](v20);
          sub_1AFDFF2A8();
        }
      }

      else
      {
        sub_1AFDFF2A8();
      }

      v8 = v14;
      if ((v23 & 0xFF00) == 0x300)
      {
        v25 = v30;
        v24 = v31;
      }

      else
      {
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](v22);
        MEMORY[0x1B271ACB0](v35);
        v25 = v30;
        sub_1AFDFF2A8();
        if ((v23 & 1) == 0)
        {
          MEMORY[0x1B271ACB0](v33);
        }

        v24 = v31;
      }

      sub_1AFDFF2A8();
      v26 = sub_1AFDFF2F8();
      sub_1AF6B71F0(v7);
      v27 = v26 & v24;
      a1 = v36;
      a2 = v32;
      if (v36 >= v25)
      {
        break;
      }

      v13 = v29;
      if (v27 < v25)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v13 * v36 < v15 || *(v32 + 48) + v13 * v36 >= (*(v32 + 48) + v15 + v13))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v13 * v36 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if ((104 * a1) < (104 * v10) || *(a2 + 56) + 104 * a1 >= *(a2 + 56) + 104 * v10 + 104)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == v10)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v10;
LABEL_5:
      v10 = (v10 + 1) & v24;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v13 = v29;
    if (v27 < v25)
    {
      goto LABEL_5;
    }

LABEL_20:
    if (v36 < v27)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_30:
  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
}

uint64_t sub_1AF6B4360(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      sub_1AFDFF288();

      sub_1AFDFD038();
      v11 = sub_1AFDFF2F8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

void sub_1AF6B4528(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1AFDFCEF8();
      sub_1AFDFF288();
      v10 = v9;
      sub_1AFDFD038();
      v11 = sub_1AFDFF2F8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
}

unint64_t sub_1AF6B46E8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v9);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2F8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 96 * v3;
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

uint64_t sub_1AF6B48B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 16 * v6);
      sub_1AFDFF288();
      MEMORY[0x1B271ACB0](v11);
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2F8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}

unint64_t sub_1AF6B4A80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AFDFE078() + 1) & ~v5;
    while (1)
    {
      v9 = 8 * v6;
      v10 = *(*(a2 + 48) + 8 * v6 + 4);
      sub_1AFDFF288();
      sub_1AFDFF2A8();
      if (v10 != 1)
      {
        sub_1AFDFF2C8();
      }

      result = sub_1AFDFF2F8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + v9);
      if (8 * v3 != v9 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1AFDFC128() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  --*(a2 + 16);
  ++*(a2 + 36);
  return result;
}