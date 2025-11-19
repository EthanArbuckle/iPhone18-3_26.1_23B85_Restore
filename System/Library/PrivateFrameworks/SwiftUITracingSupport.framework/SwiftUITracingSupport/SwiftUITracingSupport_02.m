uint64_t getEnumTagSinglePayload for T_ReuseCacheItemWithID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_ReuseCacheItemWithID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for T_ReuseBody(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for T_ReuseBody(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 __swift_memcpy32_1(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeTreeEditDistance.Node(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnsafeTreeEditDistance.Node(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeArray(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularBuffer.Buffer.Header(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Stats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Stats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *__swift_memcpy13_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for T_SubgraphTreeUpdate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_SubgraphTreeUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 13) = v3;
  return result;
}

__n128 __swift_memcpy20_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy36_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for T_TypeDecl(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_TypeDecl(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Edge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Edge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy56_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for T_Header(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_Header(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_nTm(void *result)
{
  v13 = result;
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = v1;
      result = swift_slowAlloc();
      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v7 = v13[v3 + 4];
        v8 = v13[v3 + 5];
        v9 = BYTE4(v13[v3 + 5]);
        v10 = v13[v3 + 6];
        v11 = BYTE4(v13[v3 + 6]);
        if (v5 == v2)
        {
          if (v2)
          {
            v12 = v4;
          }

          else
          {
            v12 = 1;
          }

          if (HIDWORD(v12))
          {
            __break(1u);
            goto LABEL_18;
          }

          v2 = v12;
          if (result)
          {
            result = realloc(result, 24 * v12);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        v6 = &result[v3];
        *v6 = v7;
        ++v5;
        *(v6 + 2) = v8;
        *(v6 + 12) = v9;
        *(v6 + 4) = v10;
        v4 += 2;
        v3 += 3;
        *(v6 + 20) = v11;
        if (v1 == v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_nTm(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = v2 + 4;
      while (1)
      {
        v7 = v6[v5];
        if (v5 == v3)
        {
          if (v3)
          {
            v8 = v4;
          }

          else
          {
            v8 = 1;
          }

          if (HIDWORD(v8))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v8;
          if (result)
          {
            result = realloc(result, 8 * v8);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        result[v5] = v7;
        v4 += 2;
        if (v1 == ++v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV_SayAHGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
    goto LABEL_20;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = v1;
  result = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v2 + 4;
  while (1)
  {
    v14 = *&v7[v4 + 8];
    v15 = *&v7[v4 + 10];
    v16 = *&v7[v4 + 12];
    v17 = *&v7[v4 + 14];
    v10 = *&v7[v4];
    v11 = *&v7[v4 + 2];
    v12 = *&v7[v4 + 4];
    v13 = *&v7[v4 + 6];
    if (v6 == v3)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_21;
    }

LABEL_15:
    v9 = &result[v4];
    v9[4] = v14;
    v9[5] = v15;
    v9[6] = v16;
    v9[7] = v17;
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    if (v1 - 1 == v6)
    {
      return result;
    }

    v5 += 2;
    v4 += 16;
    ++v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if (!HIDWORD(v8))
  {
    v3 = v8;
    if (result)
    {
      result = realloc(result, v8 << 7);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = swift_slowAlloc();
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV10EventIndexV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = v2 + 4;
      while (1)
      {
        v7 = v6[v5];
        if (v5 == v3)
        {
          if (v3)
          {
            v8 = v4;
          }

          else
          {
            v8 = 1;
          }

          if (HIDWORD(v8))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v8;
          if (result)
          {
            result = realloc(result, 8 * v8);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        result[v5] = v7;
        v4 += 2;
        if (v1 == ++v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

char *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV_SayAHGTt0g5Tf4g_n(char *result)
{
  v1 = *(result + 2);
  if (HIDWORD(v1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v1)
  {
    v2 = result;
    v3 = v1;
    v4 = swift_slowAlloc();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v2 + 32;
    while (1)
    {
      result = memcpy(__dst, &v8[v5 / 8], 0x131uLL);
      if (v7 == v3)
      {
        if (v3)
        {
          v9 = v6;
        }

        else
        {
          v9 = 1;
        }

        if (HIDWORD(v9))
        {
          goto LABEL_26;
        }

        v3 = v9;
        if (v4)
        {
          outlined init with copy of Attribute(__dst, v13);
          v10 = swift_slowAlloc();
          v11 = v10;
          if (v10 != v4 || v10 >= &v4[v5])
          {
            memmove(v10, v4, v5);
          }

          MEMORY[0x26D69EAB0](v4, -1, -1);
          v4 = v11;
        }

        else
        {
          outlined init with copy of Attribute(__dst, v13);
          v11 = swift_slowAlloc();
          v4 = v11;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_28;
        }

        outlined init with copy of Attribute(__dst, v13);
        v11 = v4;
      }

      result = memcpy((v11 + v5), __dst, 0x131uLL);
      if (v6 == 0x1FFFFFFFELL)
      {
        break;
      }

      ++v7;
      v6 += 2;
      v5 += 312;
      if (v1 == v7)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA4EdgeV_SayAHGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = v2[v4 + 4];
        v9 = v2[v4 + 5];
        v10 = v2[v4 + 6];
        if (v6 == v3)
        {
          if (v3)
          {
            v11 = v5;
          }

          else
          {
            v11 = 1;
          }

          if (HIDWORD(v11))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v11;
          if (result)
          {
            result = realloc(result, 24 * v11);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        v7 = &result[v4];
        *v7 = v8;
        ++v6;
        v7[1] = v9;
        *(v7 + 4) = v10;
        v5 += 2;
        v4 += 3;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SubgraphV_SayAHGTt0g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v1)
  {
    v2 = result;
    v3 = v1;
    result = swift_slowAlloc();
    v4 = result;
    v5 = 0;
    v6 = v2 + 32;
    while (1)
    {
      v7 = (v6 + 168 * v5);
      v8 = v7[9];
      v34 = v7[8];
      v35 = v8;
      v36 = *(v7 + 20);
      v9 = v7[5];
      v30 = v7[4];
      v31 = v9;
      v10 = v7[7];
      v32 = v7[6];
      v33 = v10;
      v11 = v7[1];
      v26 = *v7;
      v27 = v11;
      v12 = v7[3];
      v28 = v7[2];
      v29 = v12;
      if (v5 == v3)
      {
        v13 = 2 * v5;
        if (!v3)
        {
          v13 = 1;
        }

        if (HIDWORD(v13))
        {
          goto LABEL_22;
        }

        v3 = v13;
        if (v4)
        {
          outlined init with copy of Subgraph(&v26, v25);
          v14 = swift_slowAlloc();
          v15 = v14;
          if (v14 != v4 || v14 >= &v4[168 * v5])
          {
            memmove(v14, v4, 168 * v5);
          }

          result = MEMORY[0x26D69EAB0](v4, -1, -1);
          v4 = v15;
        }

        else
        {
          outlined init with copy of Subgraph(&v26, v25);
          result = swift_slowAlloc();
          v15 = result;
          v4 = result;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_24;
        }

        result = outlined init with copy of Subgraph(&v26, v25);
        v15 = v4;
      }

      v16 = &v15[168 * v5];
      v17 = v26;
      v18 = v28;
      *(v16 + 1) = v27;
      *(v16 + 2) = v18;
      *v16 = v17;
      v19 = v29;
      v20 = v30;
      v21 = v32;
      *(v16 + 5) = v31;
      *(v16 + 6) = v21;
      *(v16 + 3) = v19;
      *(v16 + 4) = v20;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      *(v16 + 20) = v36;
      *(v16 + 8) = v23;
      *(v16 + 9) = v24;
      *(v16 + 7) = v22;
      if (v5 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (++v5 == v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return 0;
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GraphContextV_SayAHGTt0g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v1)
  {
    v2 = result;
    v3 = v1;
    result = swift_slowAlloc();
    v4 = result;
    v5 = 0;
    v6 = v2 + 32;
    while (1)
    {
      v7 = (v6 + 80 * v5);
      v8 = v7[3];
      v20 = v7[2];
      v21 = v8;
      v22 = v7[4];
      v9 = v7[1];
      v18 = *v7;
      v19 = v9;
      if (v5 == v3)
      {
        v10 = 2 * v5;
        if (!v3)
        {
          v10 = 1;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_22;
        }

        v3 = v10;
        if (v4)
        {
          outlined init with copy of GraphContext(&v18, v17);
          v11 = swift_slowAlloc();
          v12 = v11;
          if (v11 != v4 || v11 >= &v4[80 * v5])
          {
            memmove(v11, v4, 80 * v5);
          }

          result = MEMORY[0x26D69EAB0](v4, -1, -1);
          v4 = v12;
        }

        else
        {
          outlined init with copy of GraphContext(&v18, v17);
          result = swift_slowAlloc();
          v12 = result;
          v4 = result;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_24;
        }

        result = outlined init with copy of GraphContext(&v18, v17);
        v12 = v4;
      }

      v13 = &v12[80 * v5];
      *v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = v22;
      *(v13 + 3) = v21;
      *(v13 + 4) = v16;
      *(v13 + 1) = v14;
      *(v13 + 2) = v15;
      if (v5 == 0xFFFFFFFFLL)
      {
        break;
      }

      if (++v5 == v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return 0;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14ReuseEventItemO_SayAHGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = *&v2[v4 + 4];
        v9 = v2[v4 + 6];
        if (v6 == v3)
        {
          if (v3)
          {
            v10 = v5;
          }

          else
          {
            v10 = 1;
          }

          if (HIDWORD(v10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v11 = *&v2[v4 + 4];
          v3 = v10;
          if (result)
          {
            result = realloc(result, 24 * v10);
            if (!result)
            {
              goto LABEL_20;
            }

            v8 = v11;
          }

          else
          {
            result = swift_slowAlloc();
            v8 = v11;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        ++v6;
        v7 = &result[v4];
        *v7 = v8;
        *(v7 + 16) = v9;
        v5 += 2;
        v4 += 3;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11UpdateReuseV_SayAHGTt0g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
    goto LABEL_21;
  }

  v2 = result;
  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  result = swift_slowAlloc();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v2 + 32;
  while (1)
  {
    v13 = *(v8 + v6);
    if (v7 == v3)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_22;
    }

    v9 = v13;
    v10 = v4;
LABEL_6:
    ++v7;
    *&v10[v6] = v9;
    v6 += 16;
    v5 += 2;
    if (v1 == v7)
    {
      return v4;
    }
  }

  if (v3)
  {
    v11 = v5;
  }

  else
  {
    v11 = 1;
  }

  if (!HIDWORD(v11))
  {
    v3 = v11;
    if (v4)
    {

      v12 = swift_slowAlloc();
      v10 = v12;
      if (v12 != v4 || v12 >= &v4[v6])
      {
        memmove(v12, v4, v6);
      }

      result = MEMORY[0x26D69EAB0](v4, -1, -1);
      v4 = v10;
      v9 = v13;
    }

    else
    {

      result = swift_slowAlloc();
      v9 = v13;
      v10 = result;
      v4 = result;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV11AbstractionV_SayAJGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
    goto LABEL_20;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = result;
  v3 = v1;
  result = swift_slowAlloc();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v2 + 4;
  while (1)
  {
    v14 = *&v7[v4 + 8];
    v15 = *&v7[v4 + 10];
    v16 = *&v7[v4 + 12];
    v17 = v7[v4 + 14];
    v10 = *&v7[v4];
    v11 = *&v7[v4 + 2];
    v12 = *&v7[v4 + 4];
    v13 = *&v7[v4 + 6];
    if (v6 == v3)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_21;
    }

LABEL_15:
    v9 = &result[v4];
    *(v9 + 4) = v14;
    *(v9 + 5) = v15;
    *(v9 + 6) = v16;
    v9[14] = v17;
    *v9 = v10;
    *(v9 + 1) = v11;
    *(v9 + 2) = v12;
    *(v9 + 3) = v13;
    if (v1 - 1 == v6)
    {
      return result;
    }

    v5 += 2;
    v4 += 15;
    ++v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  if (!HIDWORD(v8))
  {
    v3 = v8;
    if (result)
    {
      result = realloc(result, 120 * v8);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = swift_slowAlloc();
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = v2 + 4;
      while (1)
      {
        v7 = *(v6 + v5);
        if (v5 == v3)
        {
          if (v3)
          {
            v8 = v4;
          }

          else
          {
            v8 = 1;
          }

          if (HIDWORD(v8))
          {
            __break(1u);
            goto LABEL_18;
          }

          v3 = v8;
          if (result)
          {
            result = realloc(result, 4 * v8);
            if (!result)
            {
              goto LABEL_20;
            }
          }

          else
          {
            result = swift_slowAlloc();
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        *(result + v5) = v7;
        v4 += 2;
        if (v1 == ++v5)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5TraceV9HandleBoxVSg_SayAKGTt0g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (HIDWORD(v1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = result;
      v3 = v1;
      result = swift_slowAlloc();
      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v8 = *&v2[v4 + 4];
        v9 = v2[v4 + 6];
        if (v6 == v3)
        {
          if (v3)
          {
            v10 = v5;
          }

          else
          {
            v10 = 1;
          }

          if (HIDWORD(v10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v11 = *&v2[v4 + 4];
          v3 = v10;
          if (result)
          {
            result = realloc(result, 24 * v10);
            if (!result)
            {
              goto LABEL_20;
            }

            v8 = v11;
          }

          else
          {
            result = swift_slowAlloc();
            v8 = v11;
          }
        }

        else if (!result)
        {
          goto LABEL_19;
        }

        ++v6;
        v7 = &result[v4];
        *v7 = v8;
        v7[2] = v9;
        v5 += 2;
        v4 += 3;
        if (v1 == v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

double partial apply for specialized closure #1 in UnsafeTree.add(child:to:default:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 40);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

uint64_t partial apply for closure #1 in UnsafeTree.sort(_:)@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return closure #1 in UnsafeTree.sort(_:)(a1, a2);
}

uint64_t partial apply for closure #2 in UnsafeTree.sort(_:)(int *a1, int *a2)
{
  v4 = v2[5];
  v3 = v2[6];
  v5 = v2[7];
  v6 = *a1;
  v8 = *a2;
  v9 = v6;
  return v4(&v9, &v8, v5) & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_memcpy14_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for T_HeaderV0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 14))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for T_HeaderV0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 14) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AGTreeElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AGTreeElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __copy_assignment_8_8_pa0_65378_0_pa0_34562_8_pa0_19484_16_pa0_61410_24_pa0_57512_32_pa0_14389_40_pa0_43219_48_pa0_63934_56_pa0_3758_64_pa0_6027_72_pa0_18472_80_pa0_3398_88_pa0_16233_96_pa0_55737_104_pa0_53179_112_pa0_8858_120_t128w4(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  *result = *a2;
  v3 = a2[1];
  if (v3)
  {
    v4 = a2[1];
  }

  *(result + 8) = v3;
  v5 = a2[2];
  if (v5)
  {
    v6 = a2[2];
  }

  *(result + 16) = v5;
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[3];
  }

  *(result + 24) = v7;
  v9 = a2[4];
  if (v9)
  {
    v10 = a2[4];
  }

  *(result + 32) = v9;
  v11 = a2[5];
  if (v11)
  {
    v12 = a2[5];
  }

  *(result + 40) = v11;
  v13 = a2[6];
  if (v13)
  {
    v14 = a2[6];
  }

  *(result + 48) = v13;
  v15 = a2[7];
  if (v15)
  {
    v16 = a2[7];
  }

  *(result + 56) = v15;
  v17 = a2[8];
  if (v17)
  {
    v18 = a2[8];
  }

  *(result + 64) = v17;
  v19 = a2[9];
  if (v19)
  {
    v20 = a2[9];
  }

  *(result + 72) = v19;
  v21 = a2[10];
  if (v21)
  {
    v22 = a2[10];
  }

  *(result + 80) = v21;
  v23 = a2[11];
  if (v23)
  {
    v24 = a2[11];
  }

  *(result + 88) = v23;
  v25 = a2[12];
  if (v25)
  {
    v26 = a2[12];
  }

  *(result + 96) = v25;
  v27 = a2[13];
  if (v27)
  {
    v28 = a2[13];
  }

  *(result + 104) = v27;
  v29 = a2[14];
  if (v29)
  {
    v30 = a2[14];
  }

  *(result + 112) = v29;
  v31 = a2[15];
  if (v31)
  {
    v32 = a2[15];
  }

  *(result + 120) = v31;
  *(result + 128) = *(a2 + 32);
  return result;
}

uint64_t getEnumTagSinglePayload for malloc_introspection_t(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for malloc_introspection_t(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AGGraphRef and conformance AGGraphRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for T_BeginTreeWrite(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for T_BeginTreeWrite(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for AGSubgraphRef(uint64_t a1, unint64_t *a2)
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

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  if (qword_26C32D830[a1] == qword_26C32D830[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000676E6963;
  v3 = 0x6172546E69676562;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x537465675F6C7463;
    v12 = 0xEC00000065746174;
    if (a1 != 6)
    {
      v11 = 0xD000000000000011;
      v12 = 0x800000026C33B120;
    }

    v13 = 0x62616E655F6C7463;
    v14 = 0xEA0000000000656CLL;
    if (a1 != 4)
    {
      v13 = 0x617369645F6C7463;
      v14 = 0xEB00000000656C62;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x707673526E6FLL;
    if (a1 != 2)
    {
      v6 = 0x6665636172476E6FLL;
      v5 = 0xEE00746978456C75;
    }

    v7 = 0x6963617254646E65;
    v8 = 0xEA0000000000676ELL;
    if (!a1)
    {
      v7 = 0x6172546E69676562;
      v8 = 0xEC000000676E6963;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEC00000065746174;
        if (v9 != 0x537465675F6C7463)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x800000026C33B120;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000656CLL;
      if (v9 != 0x62616E655F6C7463)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xEB00000000656C62;
      if (v9 != 0x617369645F6C7463)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v9 != 0x707673526E6FLL)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v3 = 0x6665636172476E6FLL;
      v2 = 0xEE00746978456C75;
    }

    else if (a2)
    {
      v2 = 0xEA0000000000676ELL;
      if (v9 != 0x6963617254646E65)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v9 != v3)
    {
LABEL_44:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

{
  v2 = 0xEF646E616D6D6F63;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE600000000000000;
    v13 = 0x6769666E6F63;
    if (a1 != 2)
    {
      v13 = 0x65636172745F7369;
      v12 = 0xE900000000000072;
    }

    v14 = 0xEA00000000006466;
    if (!a1)
    {
      v14 = 0xEF646E616D6D6F63;
    }

    if (a1 <= 1u)
    {
      v10 = 0x5F69757466697773;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x72775F7365747962;
    v5 = 0xED00006E65747469;
    v6 = 0xD000000000000018;
    v7 = 0x800000026C33B0B0;
    if (a1 != 7)
    {
      v6 = 0x5F69757466697773;
      v7 = 0xEF73746E65696C63;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xE300000000000000;
    v9 = 6580592;
    if (a1 != 4)
    {
      v9 = 0x6E5F7972616E6962;
      v8 = 0xEB00000000656D61;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x6769666E6F63)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000072;
        if (v10 != 0x65636172745F7369)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEA00000000006466;
      if (v10 != 0x5F69757466697773)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE300000000000000;
        if (v10 != 6580592)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEB00000000656D61;
        if (v10 != 0x6E5F7972616E6962)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xED00006E65747469;
      if (v10 != 0x72775F7365747962)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0x800000026C33B0B0;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xEF73746E65696C63;
  }

  if (v10 != 0x5F69757466697773)
  {
LABEL_49:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.Traceinfo.DateSync.CodingKeys()
{
  if (*v0)
  {
    result = 1701669236;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.Traceinfo.DateSync.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000026C33B470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.Traceinfo.DateSync.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.Traceinfo.DateSync.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.Traceinfo.DateSync.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.Traceinfo.DateSync@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized ARTraceV3.Traceinfo.DateSync.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ARTraceV3.Traceinfo.DateSync(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return ARTraceV3.Traceinfo.DateSync.encode(to:)(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys()
{
  if (*v0)
  {
    result = 0x546B726F7774656ELL;
  }

  else
  {
    result = 0x69546D6574737973;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69546D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x546B726F7774656ELL && a2 == 0xEB00000000656D69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.Traceinfo.NetworkTimeDomain.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = a2;
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys()
{
  v1 = 0x6E696F50636E7973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.Traceinfo.NetworkTimeDomain@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ARTraceV3.Traceinfo.NetworkTimeDomain.init(from:)(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ARTraceV3.Traceinfo.NetworkTimeDomain(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  return ARTraceV3.Traceinfo.NetworkTimeDomain.encode(to:)(a1, v1[1]);
}

uint64_t ARTraceV3.Traceinfo.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x434D656D69547369;
    v7 = 0x614E656369766564;
    if (a1 != 10)
    {
      v7 = 0x44496563617274;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656D695465746164;
    v9 = 0x4673646E6F636573;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73726946656D6974;
    v2 = 0x737570635F6D756ELL;
    v3 = 0x6F4D656369766564;
    if (a1 != 4)
    {
      v3 = 0x69737265765F736FLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7473614C656D6974;
    if (a1 != 1)
    {
      v4 = 0xD000000000000017;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t ARTraceV3.Traceinfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v27 = v3[8];
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v3[9];
    v20 = *(v3 + 80);
    LOBYTE(v27) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 11);
    v28 = *(v3 + 104);
    v29 = 8;
    lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + 105);
    LOBYTE(v27) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[14];
    v23 = v3[15];
    LOBYTE(v27) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[16];
    v25 = v3[17];
    LOBYTE(v27) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.Traceinfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.Traceinfo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.Traceinfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.Traceinfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance ARTraceV3.Traceinfo@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ARTraceV3.Traceinfo.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.Library.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[6];
    v18[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.ProcessMap.Library.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6874676E656CLL;
  v4 = 1684632949;
  if (v1 != 3)
  {
    v4 = 0x73746E656D676573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73736572646461;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.Library.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Library.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.Library.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.Library.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap.Library@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ARTraceV3.ProcessMap.Library.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.Segment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v20 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.ProcessMap.Segment.CodingKeys()
{
  v1 = 1701667182;
  v2 = 0x6874676E656CLL;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974636573;
  }

  if (*v0)
  {
    v1 = 0x73736572646461;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.Segment.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Segment.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.Segment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.Segment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap.Segment@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ARTraceV3.ProcessMap.Segment.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.Section.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.ProcessMap.Section.CodingKeys()
{
  v1 = 0x74657366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x6874676E656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.Section.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Section.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.Section.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.Section.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap.Section@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Section.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.Thread.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v16 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.ProcessMap.Thread.CodingKeys()
{
  v1 = 6580596;
  v2 = 0x6E69614D7369;
  if (*v0 != 2)
  {
    v2 = 0x656C64497369;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.Thread.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Thread.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.Thread.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.Thread.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap.Thread@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Thread.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.Process.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0V10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0V10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[5];
    HIBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v3[6];
    HIBYTE(v17) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMR);
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.ProcessMap.Process.CodingKeys()
{
  v1 = *v0;
  v2 = 6580592;
  v3 = 1919251317;
  v4 = 0x73646165726874;
  if (v1 != 3)
  {
    v4 = 0x656972617262696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.Process.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.Process.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.Process.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.Process.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap.Process@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ARTraceV3.ProcessMap.Process.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t ARTraceV3.ProcessMap.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMR);
  lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.ProcessMap.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.ProcessMap.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.ProcessMap.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65737365636F7270 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.ProcessMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.ProcessMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ARTraceV3.ProcessMap@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized ARTraceV3.ProcessMap.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.TelemetryString.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryStringV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryStringV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys()
{
  if (*v0)
  {
    result = 7500915;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7500915 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpost.TelemetryString.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryNumberV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryNumberV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 8);
    v14[15] = 1;
    type metadata accessor for NSDecimal(0);
    lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, 255, type metadata accessor for NSDecimal);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys()
{
  if (*v0)
  {
    result = 7173486;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7173486 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.OSSignposts.OSSignpost.Scope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_26C32D830[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARTraceV3.OSSignposts.OSSignpost.Scope()
{
  v1 = qword_26C32D830[*v0];
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.OSSignposts.OSSignpost.Scope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_26C32D830[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ARTraceV3.OSSignposts.OSSignpost.Scope@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpost.Scope.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ARTraceV3.OSSignposts.OSSignpost.EventType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 105;
  if (v2 != 1)
  {
    v4 = 26977;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 101;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 105;
  if (*a2 != 1)
  {
    v8 = 26977;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 101;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.OSSignposts.OSSignpost.EventType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARTraceV3.OSSignposts.OSSignpost.EventType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.OSSignposts.OSSignpost.EventType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ARTraceV3.OSSignposts.OSSignpost.EventType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpost.EventType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ARTraceV3.OSSignposts.OSSignpost.EventType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 105;
  if (v2 != 1)
  {
    v5 = 26977;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 101;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t ARTraceV3.OSSignposts.OSSignpost.CodingKeys.stringValue.getter(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 7501156;
      break;
    case 3:
      result = 0x4449627573;
      break;
    case 4:
      result = 0x4449746163;
      break;
    case 5:
      result = 0x4449656D616ELL;
      break;
    case 6:
      result = 0x44496E676973;
      break;
    case 7:
      result = 0x65706F6373;
      break;
    case 8:
      result = 0x7463694472747461;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
      result = 0x7274656D656C6574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpost.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.__deallocating_deinit()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[16];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[13], v0[14]);
  v4 = v0[19];
  v5 = v0[20];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[17], v0[18]);
  v6 = v0[22];

  v7 = v0[27];

  return swift_deallocClassInstance();
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26[0] = *(v3 + 16);
  v28 = 0;
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v26[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    v26[0] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 48);
    v26[0] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 56);
    v26[0] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 64);
    v26[0] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 72);
    v26[0] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26[0] = *(v3 + 80);
    v28 = 7;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *v26 = *(v3 + 88);
    v28 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v3 + 96);
    v26[0] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 120);
    *v26 = *(v3 + 104);
    *&v26[16] = v19;
    v28 = 10;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 152);
    *v26 = *(v3 + 136);
    *&v26[16] = v20;
    v28 = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + 192);
    v22 = *(v3 + 200);
    *v26 = *(v3 + 168);
    *&v26[8] = *(v3 + 176);
    *&v26[24] = v21;
    v27 = v22;
    v28 = 12;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v23 = *(v3 + 232);
    v24 = *(v3 + 240);
    *v26 = *(v3 + 208);
    *&v26[8] = *(v3 + 216);
    *&v26[24] = v23;
    v27 = v24;
    v28 = 13;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ARTraceV3.OSSignposts.OSSignpost.init(from:)(a1);
  return v2;
}

uint64_t ARTraceV3.OSSignposts.OSSignpost.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v31 - v7;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0;
  v9 = a1[3];
  v10 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys();
  v33 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    v11 = v3;
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 16) = v35;
    LOBYTE(v35) = 1;
    *(v3 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v35) = 2;
    *(v3 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v3 + 40) = v12 & 1;
    LOBYTE(v35) = 3;
    *(v3 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v35) = 4;
    *(v3 + 56) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v35) = 5;
    *(v3 + 64) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v35) = 6;
    *(v3 + 72) = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = 7;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 80) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v38 = 8;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 88);
    *(v3 + 88) = v35;

    LOBYTE(v35) = 9;
    *(v3 + 96) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v38 = 10;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 104);
    v16 = *(v3 + 112);
    v17 = *(v3 + 120);
    v18 = *(v3 + 128);
    v19 = v36;
    *(v3 + 104) = v35;
    *(v3 + 120) = v19;
    outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v15, v16);
    v38 = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 136);
    v21 = *(v3 + 144);
    v22 = *(v3 + 152);
    v23 = *(v3 + 160);
    v24 = v36;
    *(v3 + 136) = v35;
    *(v3 + 152) = v24;
    outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v20, v21);
    v38 = 12;
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v37;
    v26 = *(v3 + 176);
    v27 = v36;
    *(v3 + 168) = v35;
    *(v3 + 184) = v27;
    *(v3 + 200) = v25;

    v38 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v33, v32);
    v28 = v37;
    v11 = v3;
    v29 = *(v3 + 216);
    v30 = v36;
    *(v3 + 208) = v35;
    *(v3 + 224) = v30;
    *(v3 + 240) = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.OSSignposts.OSSignpost@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 544))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x44496E676973;
  if (v2 != 1)
  {
    v4 = 0x617461646174656DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6580596;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x44496E676973;
  if (*a2 != 1)
  {
    v8 = 0x617461646174656DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6580596;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x44496E676973;
  if (v2 != 1)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6580596;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys()
{
  v1 = 0x44496E676973;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580596;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.OSSignposts.OSSignpostEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v1[31];
  LOBYTE(v14[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v1[9];
  LOBYTE(v14[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = v1[33];
  if (v13)
  {
    v14[0] = v1[32];
    v14[1] = v13;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  ARTraceV3.OSSignposts.OSSignpost.encode(to:)(a1);
  return (*(v5 + 8))(v8, v4);
}

void *ARTraceV3.OSSignposts.OSSignpostEvent.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v2[32] = 0;
  v2[33] = 0;
  v2[31] = 0;
  outlined init with copy of Aggregate_AccessorProtocol(a1, v4);
  ARTraceV3.OSSignposts.OSSignpost.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t ARTraceV3.OSSignposts.OSSignpostEvent.__deallocating_deinit()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[16];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[13], v0[14]);
  v4 = v0[19];
  v5 = v0[20];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[17], v0[18]);
  v6 = v0[22];

  v7 = v0[27];

  v8 = v0[33];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x6E69676562;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6581861;
  }

  else
  {
    v6 = 0x6E69676562;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x6E69676562;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x6E69676562;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.OSSignposts.OSSignpostInterval.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV18OSSignpostIntervalC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV18OSSignpostIntervalC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v1 + 248);
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventCSgMd, &_s21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventCSgMR);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = *(v1 + 256);
  v12 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  ARTraceV3.OSSignposts.OSSignpost.encode(to:)(a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ARTraceV3.OSSignposts.OSSignpostInterval.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  outlined init with copy of Aggregate_AccessorProtocol(a1, v4);
  ARTraceV3.OSSignposts.OSSignpost.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t ARTraceV3.OSSignposts.OSSignpostInterval.__ivar_destroyer()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 256);
}

void *ARTraceV3.OSSignposts.OSSignpostInterval.deinit()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[16];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[13], v0[14]);
  v4 = v0[19];
  v5 = v0[20];
  outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(v0[17], v0[18]);
  v6 = v0[22];

  v7 = v0[27];

  v8 = v0[31];

  v9 = v0[32];

  return v0;
}

uint64_t ARTraceV3.OSSignposts.OSSignpostInterval.__deallocating_deinit()
{
  ARTraceV3.OSSignposts.OSSignpostInterval.deinit();

  return swift_deallocClassInstance();
}

uint64_t ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void *))
{
  v17[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6(v14);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  v15 = v17[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys()
{
  if (*v0)
  {
    result = 7501156;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7501156 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = specialized ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 7565414;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0x800000026C33B050;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 7565414;
  }

  if (*a2)
  {
    v7 = 0x800000026C33B050;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x800000026C33B050;
  v3 = 7565414;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 7565414;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ARTraceV3.OSSignposts.OSSignpostAnimationInterval.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v1 + 264);
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    if (*(v1 + 272))
    {
      v12[1] = *(v1 + 272);
      v13 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGSgMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGSgMR);
      lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent]? and conformance <A> A?();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    ARTraceV3.OSSignposts.OSSignpostInterval.encode(to:)(a1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ARTraceV3.OSSignposts.OSSignpostAnimationInterval.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ARTraceV3.OSSignposts.OSSignpostAnimationInterval.init(from:)(a1);
  return v2;
}

uint64_t ARTraceV3.OSSignposts.OSSignpostAnimationInterval.init(from:)(uint64_t *a1)
{
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  outlined init with copy of Aggregate_AccessorProtocol(a1, v5);
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  outlined init with copy of Aggregate_AccessorProtocol(v5, v4);
  ARTraceV3.OSSignposts.OSSignpost.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t ARTraceV3.OSSignposts.OSSignpostAnimationInterval.__deallocating_deinit()
{
  ARTraceV3.OSSignposts.OSSignpostInterval.deinit();
  v1 = *(v0 + 272);

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t assignWithTake for ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.TelemetryString(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.TelemetryString(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ARTraceV3.OSSignposts(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ARTraceV3.OSSignposts(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.Traceinfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.Traceinfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.EventType and conformance ARTraceV3.OSSignposts.OSSignpost.EventType);
  }

  return result;
}

uint64_t ARTraceV3.OSSignposts.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
  lazy protocol witness table accessor for type [Int : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : String] and conformance <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMR);
    lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpost] and conformance <A> [A](&lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpost] and conformance <A> [A], &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost and conformance ARTraceV3.OSSignposts.OSSignpost);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ARTraceV3.OSSignposts.CodingKeys()
{
  if (*v0)
  {
    result = 0x74736F706E676973;
  }

  else
  {
    result = 0x73676E69727473;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ARTraceV3.OSSignposts.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73676E69727473 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736F706E676973 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ARTraceV3.OSSignposts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ARTraceV3.OSSignposts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ARTraceV3.OSSignposts@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ARTraceV3.OSSignposts.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.Scope and conformance ARTraceV3.OSSignposts.OSSignpost.Scope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMR);
    lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMR);
    lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync and conformance ARTraceV3.Traceinfo.DateSync);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process and conformance ARTraceV3.ProcessMap.Process);
  }

  return result;
}

uint64_t specialized ARTraceV3.Traceinfo.DateSync.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001DLL && 0x800000026C33B490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696F50636E7973 && a2 == 0xEA00000000007374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33B4B0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ARTraceV3.Traceinfo.NetworkTimeDomain.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v13 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
    v12 = 1;
    lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[1];
    v11 = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized ARTraceV3.Traceinfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73726946656D6974 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473614C656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026C33B430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737570635F6D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69737265765F736FLL && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xED000073636E7953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4673646E6F636573 && a2 == 0xEE00544D476D6F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C33B450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x434D656D69547369 && a2 == 0xE900000000000054 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x44496563617274 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t specialized ARTraceV3.Traceinfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v97 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.CodingKeys and conformance ARTraceV3.Traceinfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v62 = v2;
    v60 = 0uLL;
    v56 = 0;
    v58 = 0;
    v59 = 0;
    v54 = 0;
    v55 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0xE000000000000000;
    v61 = 2;
    v19 = 0xE000000000000000;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v57);
    v73 = v16;
    v74 = v15;
    v75 = v17;
    v76 = v14;
    v77 = v13;
    v78 = v19;
    v79 = v12;
    v80 = v18;
    v81 = v54;
    v82 = v59;
    v83 = v97;
    *v84 = *v96;
    *&v84[3] = *&v96[3];
    v85 = v55;
    v86 = v58;
    v87 = v56;
    v88 = v61;
    v89 = v94;
    v90 = v95;
    v91 = v60;
    v92 = 0;
    v93 = 0;
    return outlined destroy of ARTraceV3.Traceinfo(&v73);
  }

  LOBYTE(v73) = 0;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v73) = 1;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v73) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v21;
  LOBYTE(v73) = 3;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v73) = 4;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v23;
  v50 = v22;
  LOBYTE(v73) = 5;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = 0;
  v47 = v25;
  v48 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV8DateSyncVGMR);
  LOBYTE(v63) = 6;
  lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.DateSync] and conformance <A> [A]();
  v26 = v62;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v26)
  {
    v62 = v26;
    (*(v6 + 8))(v9, v5);
    v60 = 0uLL;
    v56 = 0;
    v58 = 0;
    v59 = 0;
    v54 = 0;
    v55 = 0;
LABEL_10:
    v61 = 2;
    v15 = v52;
    v16 = v53;
    v13 = v50;
    v14 = v51;
    v18 = v47;
    v12 = v48;
    v19 = v49;
    goto LABEL_4;
  }

  v27 = v73;
  LOBYTE(v73) = 7;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = 0;
  v54 = v27;
  v59 = v28;
  v97 = v29 & 1;
  LOBYTE(v63) = 8;
  lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain and conformance ARTraceV3.Traceinfo.NetworkTimeDomain();
  v30 = v62;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62 = v30;
  if (v30)
  {
    (*(v6 + 8))(v9, v5);
    v60 = 0uLL;
    v56 = 0;
    v58 = 0;
    v55 = 0;
    goto LABEL_10;
  }

  v55 = v73;
  v58 = v74;
  v56 = v75;
  LOBYTE(v73) = 9;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = 0;
  LOBYTE(v73) = 10;
  *&v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v60 + 1) = v31;
  v62 = 0;
  v72 = 11;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = 0;
  v33 = v32;
  v35 = v34;
  (*(v6 + 8))(v9, v5);
  *&v63 = v53;
  *(&v63 + 1) = v52;
  *&v64 = v17;
  *(&v64 + 1) = v51;
  *&v65 = v50;
  *(&v65 + 1) = v49;
  *&v66 = v48;
  *(&v66 + 1) = v47;
  *&v67 = v27;
  v36 = v60;
  *(&v67 + 1) = v59;
  v46 = v97;
  LOBYTE(v68) = v97;
  v37 = v55;
  *(&v68 + 1) = v55;
  *&v69 = v58;
  v38 = v56;
  BYTE8(v69) = v56;
  v39 = v61;
  BYTE9(v69) = v61;
  v40 = *(&v60 + 1);
  v70 = v60;
  *&v71 = v33;
  *(&v71 + 1) = v35;
  outlined init with copy of ARTraceV3.Traceinfo(&v63, &v73);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v73 = v53;
  v74 = v52;
  v75 = v17;
  v76 = v51;
  v77 = v50;
  v78 = v49;
  v79 = v48;
  v80 = v47;
  v81 = v54;
  v82 = v59;
  v83 = v46;
  v85 = v37;
  v86 = v58;
  v87 = v38;
  v88 = v39;
  *&v91 = v36;
  *(&v91 + 1) = v40;
  v92 = v33;
  v93 = v35;
  result = outlined destroy of ARTraceV3.Traceinfo(&v73);
  v41 = v70;
  a2[6] = v69;
  a2[7] = v41;
  a2[8] = v71;
  v42 = v66;
  a2[2] = v65;
  a2[3] = v42;
  v43 = v68;
  a2[4] = v67;
  a2[5] = v43;
  v44 = v64;
  *a2 = v63;
  a2[1] = v44;
  return result;
}

uint64_t specialized ARTraceV3.ProcessMap.Library.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized ARTraceV3.ProcessMap.Library.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v32 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v26 = v11;
    v31 = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = 3;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v23 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMR);
    v28 = 4;
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v17 = v27;

    __swift_destroy_boxed_opaque_existential_1(a1);

    v19 = v25;
    *a2 = v26;
    a2[1] = v13;
    v20 = v23;
    v21 = v24;
    a2[2] = v19;
    a2[3] = v21;
    a2[4] = v20;
    a2[5] = v16;
    a2[6] = v17;
  }

  return result;
}

uint64_t specialized ARTraceV3.ProcessMap.Segment.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ARTraceV3.ProcessMap.Segment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    v24 = 1;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMR);
    v22 = 3;
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v14;
    a2[1] = v13;
    v17 = v19;
    a2[2] = v20;
    a2[3] = v17;
    a2[4] = v15;
  }

  return result;
}

uint64_t specialized ARTraceV3.ProcessMap.Section.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized ARTraceV3.ProcessMap.Section.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t specialized ARTraceV3.ProcessMap.Thread.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580596 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69614D7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C64497369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ARTraceV3.ProcessMap.Thread.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v15 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11[1] = v9;
    v13 = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = 3;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized ARTraceV3.ProcessMap.Process.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646165726874 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656972617262696CLL && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized ARTraceV3.ProcessMap.Process.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0V10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0I0V10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v29) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v26 = v11;
    LOBYTE(v29) = 2;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMR);
    v28 = 3;
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = a2;
    v17 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMR);
    v28 = 4;
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v18 = v29;

    __swift_destroy_boxed_opaque_existential_1(a1);

    v20 = v26;
    v21 = v24;
    *v24 = v27;
    v21[1] = v20;
    v22 = v25;
    v21[2] = v13;
    v21[3] = v22;
    v21[4] = v16;
    v21[5] = v17;
    v21[6] = v18;
  }

  return result;
}

void *specialized ARTraceV3.ProcessMap.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V10ProcessMapV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.ProcessMap.CodingKeys and conformance ARTraceV3.ProcessMap.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV0F0VGMR);
    lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Process] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t specialized ARTraceV3.OSSignposts.OSSignpost.TelemetryString.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryStringV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryStringV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryNumberV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostC15TelemetryNumberV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = MEMORY[0x26D69D340](0);
  v22 = v11;
  v23 = v10;
  v33 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = 0;
    v30 = 0xE000000000000000;
    *&v31 = v23;
    *(&v31 + 1) = v22;
    v32 = v33;
    return outlined destroy of ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(&v29);
  }

  else
  {
    LOBYTE(v29) = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    type metadata accessor for NSDecimal(0);
    v34 = 1;
    lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, 255, type metadata accessor for NSDecimal);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v17 = v27;
    v18 = v28;
    *&v24 = v14;
    *(&v24 + 1) = v16;
    v25 = v27;
    v26 = v28;
    outlined init with copy of ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(&v24, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = v14;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    result = outlined destroy of ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(&v29);
    v20 = v25;
    *a2 = v24;
    *(a2 + 16) = v20;
    *(a2 + 32) = v26;
  }

  return result;
}

unint64_t specialized ARTraceV3.OSSignposts.OSSignpost.Scope.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ARTraceV3.OSSignposts.OSSignpost.Scope.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ARTraceV3.OSSignposts.OSSignpost.EventType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ARTraceV3.OSSignposts.OSSignpost.EventType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ARTraceV3.OSSignposts.OSSignpost.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7501156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449627573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449746163 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656D616ELL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44496E676973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7463694472747461 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33B2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED00003172745379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED00003272745379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED0000316D754E79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED0000326D754E79)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t specialized ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.init(from:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = v15;
  v17 = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v11 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1)
{
  v2 = *(a1 + 8);

  return a1;
}

uint64_t outlined init with copy of ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v4;

  return a2;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString.CodingKeys);
  }

  return result;
}

uint64_t specialized ARTraceV3.OSSignposts.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10CodingKeys33_D5C4811F7697D382991F4A93D521A903LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    HIBYTE(v10) = 0;
    lazy protocol witness table accessor for type [Int : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : String] and conformance <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMR);
    HIBYTE(v10) = 1;
    lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpost] and conformance <A> [A](&lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpost] and conformance <A> [A], &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost and conformance ARTraceV3.OSSignposts.OSSignpost);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.CodingKeys and conformance ARTraceV3.OSSignposts.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpost] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV10OSSignpostCGMR);
    lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(a2, v5, type metadata accessor for ARTraceV3.OSSignposts.OSSignpost);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Process.CodingKeys and conformance ARTraceV3.ProcessMap.Process.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV6ThreadVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Thread] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread and conformance ARTraceV3.ProcessMap.Thread);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7LibraryVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Library] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library and conformance ARTraceV3.ProcessMap.Library);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpost.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryString and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryString);
  }

  return result;
}

uint64_t outlined consume of ARTraceV3.OSSignposts.OSSignpost.TelemetryString?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber and conformance ARTraceV3.OSSignposts.OSSignpost.TelemetryNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGSgMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGSgMR);
    lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV27OSSignpostAnimationIntervalC07GenericI5EventVGMR);
    lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent and conformance ARTraceV3.OSSignposts.OSSignpostAnimationInterval.GenericIntervalEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostInterval.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventCSgMd, &_s21SwiftUITracingSupport9ARTraceV3V11OSSignpostsV15OSSignpostEventCSgMR);
    lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent and conformance ARTraceV3.OSSignposts.OSSignpost, v1, type metadata accessor for ARTraceV3.OSSignposts.OSSignpostEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys and conformance ARTraceV3.OSSignposts.OSSignpostEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.Traceinfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.Traceinfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.Traceinfo.NetworkTimeDomain(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ARTraceV3.Traceinfo.NetworkTimeDomain(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.ProcessMap.Process(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.ProcessMap.Process(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.ProcessMap.Thread(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.ProcessMap.Thread(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.DateSync.CodingKeys and conformance ARTraceV3.Traceinfo.DateSync.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
    lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
    lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Thread.CodingKeys and conformance ARTraceV3.ProcessMap.Thread.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Library.CodingKeys and conformance ARTraceV3.ProcessMap.Library.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SegmentVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Segment] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment and conformance ARTraceV3.ProcessMap.Segment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys and conformance ARTraceV3.Traceinfo.NetworkTimeDomain.SyncPoint.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.ProcessMap.Process.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.ProcessMap.Process.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.ProcessMap.Segment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.ProcessMap.Segment(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Segment.CodingKeys and conformance ARTraceV3.ProcessMap.Segment.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMd, &_sSay21SwiftUITracingSupport9ARTraceV3V10ProcessMapV7SectionVGMR);
    lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARTraceV3.ProcessMap.Section] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section and conformance ARTraceV3.ProcessMap.Section);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.Scope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.OSSignposts.OSSignpost.Scope(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARTraceV3.ProcessMap.Section(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ARTraceV3.ProcessMap.Section(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys;
  if (!lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARTraceV3.ProcessMap.Section.CodingKeys and conformance ARTraceV3.ProcessMap.Section.CodingKeys);
  }

  return result;
}

uint64_t intptr<A>(_:)(uint64_t result, uint64_t a2)
{
  if (*(*(a2 - 8) + 64) == 8)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t TreeValueFlags.name.getter()
{
  v1 = *v0;
  if (*v0 > 4)
  {
    v2 = 0x64657375636F4640;
    v7 = 0x617453797A614C40;
    if (v1 != 8)
    {
      v7 = 0;
    }

    if (v1 != 7)
    {
      v2 = v7;
    }

    v4 = 0x7453656E65635340;
    v8 = 0x624F657461745340;
    if (v1 != 6)
    {
      v8 = 0;
    }

    if (v1 != 5)
    {
      v4 = v8;
    }

    v6 = v1 <= 6;
  }

  else
  {
    v2 = 0x6576726573624F40;
    v3 = 0x726F745370704140;
    if (v1 != 4)
    {
      v3 = 0;
    }

    if (v1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x657461745340;
    v5 = 0xD000000000000012;
    if (v1 != 2)
    {
      v5 = 0;
    }

    if (v1 != 1)
    {
      v4 = v5;
    }

    v6 = v1 <= 2;
  }

  if (v6)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t TreeValueFlags.describe(state:)()
{
  if (!*v0)
  {
    return 0;
  }

  result = TreeValueFlags.name.getter();
  if (v2)
  {
    MEMORY[0x26D69CDB0](result);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TreeValueFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TreeValueFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance TreeValueFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance TreeValueFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type TreeValueFlags and conformance TreeValueFlags()
{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags;
  if (!lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TreeValueFlags and conformance TreeValueFlags);
  }

  return result;
}

uint64_t Comparison.init(baseTraceComparable:candidateTraceComparable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v19 = *(a6 + 32);
  v19(a1, a2, a5, a6);

  v19(a3, v22, a5, a6);

  return (*(a6 + 24))(v18, v16, a5, a6);
}

uint64_t static Comparison.with<A>(snapshot:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(const os_unfair_lock *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a7 + 40))(a5, a7);
  v10 = *(a1 + 24);
  if (*(v10 + 116) <= result)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v10 + 104);
    if (v11)
    {
      v12 = *(v11 + 8 * result);
      os_unfair_lock_assert_owner(v12);
      return a3(v12 + 2);
    }
  }

  __break(1u);
  return result;
}

char *protocol witness for static Comparison.inputData(from:) in conformance <> UnsafeLongestCommonSubsequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = specialized static UnsafeLongestCommonSubsequence<>.inputData(from:)(a1, a2);
  *a3 = result;
  return result;
}

void static UnsafeTreeEditDistance.inputData(from:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 24);
  if (!*(v5 + 116))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *v6;
  os_unfair_lock_lock_with_options();
  UnsafeTree.init()(v14);
  UnsafeTreeEditDistance.Tree.init(tree:)(v14, a2, a3, a4);
  v11 = *(a1 + 24);
  if (!*(v11 + 116))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *(v11 + 104);
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = *v12;

  os_unfair_lock_unlock(v13);
}

uint64_t DiffBox.comparison.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t DiffBox.baseline.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DiffBox.baseline.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t key path setter for DiffBox.baseline : <A>DiffBox<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t DiffBox.candidate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DiffBox.candidate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 56);
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void static DiffBox.lock<A>(baseline:candidate:comparison:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = specialized static DiffBox.lock<A>(baseline:candidate:comparison:)(a1, a3, v10, v10, v11, v11);
  a6(v12);

  specialized static DiffBox.unlock<A>(baseline:candidate:comparison:)(a1, a3, v10, v10, v11, v11);
}

uint64_t DiffBox.__allocating_init(baseline:candidate:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  specialized DiffBox.init(baseline:candidate:comparison:)(a1, a2, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t DiffBox.init(baseline:candidate:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized DiffBox.init(baseline:candidate:comparison:)(a1, a2, a3, a4);
  v5 = v4;

  return v5;
}

uint64_t DiffBox.run(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in DiffBox.run(completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D69D2D0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t DiffBox._run(_:)(uint64_t (*a1)(void))
{
  v3 = *v1;
  v4 = DiffBox.baseline.getter();
  v5 = DiffBox.candidate.getter();
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  specialized static DiffBox.lock<A>(baseline:candidate:comparison:)(v4, v5, v6, v6, v7, v7);
  closure #1 in DiffBox._run(_:)(v1, a1);
  specialized static DiffBox.unlock<A>(baseline:candidate:comparison:)(v4, v5, v6, v6, v7, v7);
}

uint64_t closure #1 in DiffBox._run(_:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[4];
  v6 = *(v4 + 80);
  Atomic.lock()();
  v7 = *(type metadata accessor for Atomic.Storage() + 32);
  (*(*(v4 + 88) + 48))(v6);
  Atomic.unlock()();
  swift_beginAccess();
  v8 = a1[3];
  os_unfair_lock_lock_with_options();
  *(v8 + 6) = 1;
  os_unfair_lock_unlock(v8);
  return a2();
}

uint64_t (*specialized Atomic.subscript.modify(void *a1, char a2, os_unfair_lock *lock))()
{
  *a1 = lock;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
    return Atomic.subscript.modifyspecialized ;
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
    return EventTreeStats.count.modify;
  }
}

void (*specialized Atomic.subscript.modify(void *a1, char a2, os_unfair_lock *lock))(os_unfair_lock_t *a1, char a2)
{
  *a1 = lock;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
    return Atomic.subscript.modifyspecialized ;
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
    return EventTreeStats.count.modify;
  }
}

void Atomic.subscript.modifyspecialized (os_unfair_lock_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_unlock(*a1);
  }
}

void *DiffBox.deinit()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v1[4];
  v4 = *(v2 + 80);
  Atomic.lock()();
  v5 = *(type metadata accessor for Atomic.Storage() + 32);
  (*(*(*(v2 + 88) + 8) + 8))(v4);
  Atomic.unlock()();
  swift_beginAccess();
  type metadata accessor for Atomic();
  Atomic.deallocate()();
  swift_endAccess();
  swift_beginAccess();
  result = v1[3];
  if (result)
  {
    MEMORY[0x26D69EAB0](result, -1, -1);
    v1[3] = 0;
    swift_endAccess();

    v8 = v1[5];
    v7 = v1[6];

    v10 = v1[7];
    v9 = v1[8];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DiffBox.__deallocating_deinit()
{
  DiffBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized UnsafeLongestCommonSubsequence.count.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 32);
  if (v6 == 255)
  {
    v7 = *(result + 16);
    v8 = *(a2 + 16);
    v9 = v8 + 1;
    result = (v7 + 1) * (v8 + 1);
    if (((v7 + 1) * (v8 + 1)) >> 64 != result >> 63)
    {
      goto LABEL_57;
    }

    result = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(result);
    if (v7)
    {
      v11 = 0;
      v12 = HIDWORD(v10);
      do
      {
        v13 = v11 + 1;
        if (v8)
        {
          v14 = 0;
          v15 = *(v5 + 32 + 4 * v11);
          v16 = v11 * v9;
          v17 = (v11 * v9) >> 64 != (v11 * v9) >> 63;
          v18 = v13 * v9;
          do
          {
            v19 = v14 + 1;
            if (v15 == *(a2 + 32 + 4 * v14))
            {
              if (v17)
              {
                goto LABEL_41;
              }

              v20 = __OFADD__(v16, v14);
              v21 = v16 + v14;
              if (v20)
              {
                goto LABEL_42;
              }

              if (v21 >= v12)
              {
                goto LABEL_44;
              }

              if (!result)
              {
                goto LABEL_58;
              }

              v22 = *(result + 8 * v21);
              v23 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                goto LABEL_47;
              }

              if ((v13 * v9) >> 64 != (v13 * v9) >> 63)
              {
                goto LABEL_49;
              }

              v24 = v18 + v19;
              if (__OFADD__(v18, v19))
              {
                goto LABEL_51;
              }

              if (v24 >= v12)
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v17)
              {
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
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
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
                goto LABEL_55;
              }

              v25 = v16 + v19;
              if (__OFADD__(v16, v19))
              {
                goto LABEL_43;
              }

              if (v25 >= v12)
              {
                goto LABEL_45;
              }

              if (!result)
              {
                goto LABEL_59;
              }

              if ((v13 * v9) >> 64 != (v13 * v9) >> 63)
              {
                goto LABEL_46;
              }

              v26 = v18 + v14;
              if (__OFADD__(v18, v14))
              {
                goto LABEL_48;
              }

              if (v26 >= v12)
              {
                goto LABEL_50;
              }

              v24 = v18 + v19;
              if (__OFADD__(v18, v19))
              {
                goto LABEL_52;
              }

              v23 = *(result + 8 * v25);
              v27 = *(result + 8 * v26);
              if (v27 > v23)
              {
                v23 = v27;
              }

              if (v24 >= v12)
              {
                __break(1u);
                goto LABEL_31;
              }
            }

            *(result + 8 * v24) = v23;
            v14 = v19;
          }

          while (v8 != v19);
        }

        v11 = v13;
      }

      while (v13 != v7);
    }

LABEL_31:
    v28 = *a3;
    v29 = *(a3 + 8);
    v30 = *(a3 + 16);
    v31 = *(a3 + 24);
    *a3 = result;
    *(a3 + 8) = v10;
    *(a3 + 16) = v7 + 1;
    *(a3 + 24) = v9;
    v32 = *(a3 + 32);
    *(a3 + 32) = 0;
    result = outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v28, v29, v30, v31, v32);
    v6 = *(a3 + 32);
    if (v6 == 255)
    {
      goto LABEL_61;
    }
  }

  v33 = *a3;
  if (v6)
  {
    v34 = v33 + 16;
    return *v34;
  }

  v35 = *(a3 + 24);
  v36 = *(v5 + 16);
  v37 = v36 * v35;
  if ((v36 * v35) >> 64 != (v36 * v35) >> 63)
  {
    goto LABEL_54;
  }

  v38 = *(a2 + 16);
  v20 = __OFADD__(v37, v38);
  v39 = v37 + v38;
  if (v20)
  {
LABEL_55:
    __break(1u);
  }

  else if (v39 < *(a3 + 12))
  {
    if (v33)
    {
      v34 = v33 + 8 * v39;
      return *v34;
    }

    goto LABEL_60;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}