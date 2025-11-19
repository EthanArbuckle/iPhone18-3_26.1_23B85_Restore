uint64_t getEnumTagSinglePayload for Event.Animation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Event.Animation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Event.RenderTick(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Event.RenderTick(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of static EventAbstraction.subtype(source:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  return v4(v8);
}

uint64_t getEnumTagSinglePayload for AbstractionSubtype(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AbstractionSubtype(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for Tree.AttributeIterator(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Tree.AttributeIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for Tree.AttributeIterator(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata completion function for MortalReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v8 <= 0x3F)
  {
    result = a5(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Tree.ValueIterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    else
    {
      return *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) == 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for Tree.ValueIterator(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v9 >= a3)
  {
    v14 = 0;
    if (v9 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v9 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v9 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7)
      {
        v17 = *(v6 + 56);

        v17();
      }

      else
      {
        v18 = (&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 == 1)
        {
          *v18 = 0;
        }

        else
        {
          *v18 = a2 - 2;
        }
      }

      return;
    }
  }

  v15 = ~v9 + a2;
  bzero(a1, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void type metadata accessor for IndexingIterator<UnsafeArray<TreeValue>>?()
{
  if (!lazy cache variable for type metadata for IndexingIterator<UnsafeArray<TreeValue>>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss16IndexingIteratorVy21SwiftUITracingSupport11UnsafeArrayVyAC9TreeValueVGGMd, &_ss16IndexingIteratorVy21SwiftUITracingSupport11UnsafeArrayVyAC9TreeValueVGGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<UnsafeArray<TreeValue>>?);
    }
  }
}

uint64_t type metadata completion function for Defaulted(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Defaulted(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
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
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
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
    goto LABEL_23;
  }

LABEL_12:
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

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for Defaulted(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTag for Tree.CacheKey(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Tree.CacheKey(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tree.CacheKey and conformance Tree.CacheKey()
{
  result = lazy protocol witness table cache variable for type Tree.CacheKey and conformance Tree.CacheKey;
  if (!lazy protocol witness table cache variable for type Tree.CacheKey and conformance Tree.CacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tree.CacheKey and conformance Tree.CacheKey);
  }

  return result;
}

uint64_t outlined consume of TreeValue?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_26C24EC34()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C24EC74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of ByteString.Storage(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t partial apply for specialized closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v10[0]) = a5 & 1;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = *(a2 + 32);
  return v6(a1, v10, a3, a4, a5 & 0xFFFFFFFF00000001) & 1;
}

uint64_t sub_26C24EF24()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for specialized closure #2 in UnsafeTree.traverse(visitor:revisit:)(int *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v6 = *a1;
  return v3(&v6, v4);
}

uint64_t partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()(int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

unint64_t lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)()
{
  return partial apply for closure #1 in closure #1 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)();
}

{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    return 1;
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for specialized closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    return v3(result, a2 & 0xFFFFFFFF00000001);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 3);
  v7 = a1[2];
  v8 = *(a1 + 6);
  v9 = *a2;
  v12 = *a1;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v11 = v9;
  return v3(&v12, &v11);
}

uint64_t partial apply for closure #1 in Tree.ValueIterator.next()@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return closure #1 in Tree.ValueIterator.next()(a1, v2[4], a2);
}

uint64_t objectdestroy_44Tm(uint64_t a1)
{
  v3 = v1[4];

  v4 = v1[5];

  v5 = v1[6];

  v6 = v1[9];

  v7 = v1[11];

  v8 = v1[13];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t getEnumTagSinglePayload for PType.Pattern(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 20))
  {
    return (*a1 + 124);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PType.Pattern(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t one-time initialization function for variadicViewTree(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  result = PType.Pattern.IsA.init(_:genericParams:)(a2, 0, &v10);
  v9 = v10;
  if (one-time initialization token for currentIdx != -1)
  {
    result = swift_once();
  }

  *a3 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *a4 = v9;
  *a5 = 0;
  return result;
}

uint64_t one-time initialization function for types()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A00;
  if (one-time initialization token for staticIf != -1)
  {
    swift_once();
  }

  v1 = qword_280495508;
  v2 = dword_280495510;
  *(v0 + 32) = static Tree.Pattern.staticIf;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for emptyModifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495520;
  v5 = dword_280495528;
  *(v0 + 56) = static Tree.Pattern.emptyModifier;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for emptyView;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280495538;
  v8 = dword_280495540;
  *(v0 + 80) = static Tree.Pattern.emptyView;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  static ChargeToParentA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A10;
  if (one-time initialization token for variadicViewTree != -1)
  {
    swift_once();
  }

  v1 = qword_280495550;
  v2 = dword_280495558;
  *(v0 + 32) = static Tree.Pattern.variadicViewTree;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for hStack;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495598;
  v5 = dword_2804955A0;
  *(v0 + 56) = static Tree.Pattern.hStack;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for vStack;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2804955B0;
  v8 = dword_2804955B8;
  *(v0 + 80) = static Tree.Pattern.vStack;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = one-time initialization token for zStack;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2804955C8;
  v11 = dword_2804955D0;
  *(v0 + 104) = static Tree.Pattern.zStack;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  v12 = one-time initialization token for group;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2804955E0;
  v14 = dword_2804955E8;
  *(v0 + 128) = static Tree.Pattern.group;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  v15 = one-time initialization token for geometryReader;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_2804955F8;
  v17 = dword_280495600;
  *(v0 + 152) = static Tree.Pattern.geometryReader;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  static VariadicViewTreeA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for text != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495610;
  v2 = dword_280495618;
  *(v0 + 32) = static Tree.Pattern.text;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static TextA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for anyView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495670;
  v2 = dword_280495678;
  *(v0 + 32) = static Tree.Pattern.anyView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static AnyViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for conditionalContent != -1)
  {
    swift_once();
  }

  v1 = qword_280495688;
  v2 = dword_280495690;
  *(v0 + 32) = static Tree.Pattern.conditionalContent;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for optional;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_2804956A0;
  v5 = dword_2804956A8;
  *(v0 + 56) = static Tree.Pattern.optional;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  static ConditionalViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for tupleView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495658;
  v2 = dword_280495660;
  *(v0 + 32) = static Tree.Pattern.tupleView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static TupleViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A00;
  if (one-time initialization token for forEach != -1)
  {
    swift_once();
  }

  v1 = qword_280495718;
  v2 = dword_280495720;
  *(v0 + 32) = static Tree.Pattern.forEach;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for idView;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495700;
  v5 = dword_280495708;
  *(v0 + 56) = static Tree.Pattern.idView;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for section;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280495730;
  v8 = dword_280495738;
  *(v0 + 80) = static Tree.Pattern.section;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  static SubgraphManagingViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for navigationSplitView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495750;
  v2 = dword_280495758;
  *(v0 + 32) = static Tree.Pattern.navigationSplitView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static NavigationSplitViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for button != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495778;
  v2 = dword_280495780;
  *(v0 + 32) = static Tree.Pattern.button;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static ButtonA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for color != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495818;
  v2 = dword_280495820;
  *(v0 + 32) = static Tree.Pattern.color;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static ColorA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for opacityRendererEffect != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495858;
  v2 = dword_280495860;
  *(v0 + 32) = static Tree.Pattern.opacityRendererEffect;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static OpacityRendererEffectA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for tabView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495898;
  v2 = dword_2804958A0;
  *(v0 + 32) = static Tree.Pattern.tabView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static TabViewA.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for modifiedContent != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_2804958D8;
  v2 = dword_2804958E0;
  *(v0 + 32) = static Tree.Pattern.modifiedContent;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static ModifierAbstraction.types = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32E0A0;
  if (one-time initialization token for rootEnvironment != -1)
  {
    swift_once();
  }

  v1 = unk_280495938;
  v55[2] = xmmword_280495928;
  v56[0] = unk_280495938;
  v2 = unk_280495946;
  *(v56 + 14) = unk_280495946;
  v4 = static Attribute.Pattern.rootEnvironment;
  v3 = unk_280495918;
  v55[0] = static Attribute.Pattern.rootEnvironment;
  v55[1] = unk_280495918;
  *(v0 + 64) = xmmword_280495928;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v55, v79);
  if (one-time initialization token for environmentWritingModifier != -1)
  {
    swift_once();
  }

  v5 = xmmword_280495DA8;
  v6 = unk_280495DB8;
  v57[2] = xmmword_280495DA8;
  v58[0] = unk_280495DB8;
  v7 = unk_280495DC6;
  *(v58 + 14) = unk_280495DC6;
  v8 = static Attribute.Pattern.environmentWritingModifier;
  v57[0] = static Attribute.Pattern.environmentWritingModifier;
  v57[1] = unk_280495D98;
  *(v0 + 120) = unk_280495D98;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  outlined init with copy of Attribute.Pattern(v57, v79);
  if (one-time initialization token for foregroundEnvironment != -1)
  {
    swift_once();
  }

  v9 = xmmword_280495E00;
  v59[2] = xmmword_280495DF0;
  v60[0] = xmmword_280495E00;
  v10 = *(&xmmword_280495E00 + 14);
  *(v60 + 14) = *(&xmmword_280495E00 + 14);
  v12 = static Attribute.Pattern.foregroundEnvironment;
  v11 = xmmword_280495DE0;
  v59[0] = static Attribute.Pattern.foregroundEnvironment;
  v59[1] = xmmword_280495DE0;
  *(v0 + 208) = xmmword_280495DF0;
  *(v0 + 224) = v9;
  *(v0 + 238) = v10;
  *(v0 + 176) = v12;
  *(v0 + 192) = v11;
  outlined init with copy of Attribute.Pattern(v59, v79);
  if (one-time initialization token for childEnvironment != -1)
  {
    swift_once();
  }

  v13 = unk_2804959C8;
  v15 = static Attribute.Pattern.childEnvironment;
  v14 = unk_2804959A8;
  v61[1] = unk_2804959A8;
  v61[2] = xmmword_2804959B8;
  v62[0] = unk_2804959C8;
  v16 = unk_2804959D6;
  *(v62 + 14) = unk_2804959D6;
  v61[0] = static Attribute.Pattern.childEnvironment;
  *(v0 + 280) = xmmword_2804959B8;
  *(v0 + 296) = v13;
  *(v0 + 310) = v16;
  *(v0 + 248) = v15;
  *(v0 + 264) = v14;
  outlined init with copy of Attribute.Pattern(v61, v79);
  if (one-time initialization token for someChildEnvironment != -1)
  {
    swift_once();
  }

  v17 = *&dword_280495E48;
  v63[2] = xmmword_280495E38;
  v64[0] = *&dword_280495E48;
  v18 = *(&qword_280495E50 + 6);
  *(v64 + 14) = *(&qword_280495E50 + 6);
  v20 = static Attribute.Pattern.someChildEnvironment;
  v19 = *&dword_280495E28;
  v63[0] = static Attribute.Pattern.someChildEnvironment;
  v63[1] = *&dword_280495E28;
  *(v0 + 352) = xmmword_280495E38;
  *(v0 + 368) = v17;
  *(v0 + 382) = v18;
  *(v0 + 320) = v20;
  *(v0 + 336) = v19;
  v21 = xmmword_280495DE0;
  *(v66 + 14) = *(&xmmword_280495E00 + 14);
  v65[2] = xmmword_280495DF0;
  v66[0] = xmmword_280495E00;
  v22 = xmmword_280495DF0;
  v23 = static Attribute.Pattern.foregroundEnvironment;
  v65[0] = static Attribute.Pattern.foregroundEnvironment;
  v65[1] = xmmword_280495DE0;
  v24 = xmmword_280495E00;
  *(v0 + 454) = *(&xmmword_280495E00 + 14);
  *(v0 + 424) = v22;
  *(v0 + 440) = v24;
  *(v0 + 392) = v23;
  *(v0 + 408) = v21;
  outlined init with copy of Attribute.Pattern(v63, v79);
  outlined init with copy of Attribute.Pattern(v65, v79);
  if (one-time initialization token for externalEnvironmentValues != -1)
  {
    swift_once();
  }

  v25 = unk_280495980;
  v27 = static Attribute.Pattern.externalEnvironmentValues;
  v26 = unk_280495960;
  v67[1] = unk_280495960;
  v67[2] = xmmword_280495970;
  v68[0] = unk_280495980;
  v28 = unk_28049598E;
  *(v68 + 14) = unk_28049598E;
  v67[0] = static Attribute.Pattern.externalEnvironmentValues;
  *(v0 + 496) = xmmword_280495970;
  *(v0 + 512) = v25;
  *(v0 + 526) = v28;
  *(v0 + 464) = v27;
  *(v0 + 480) = v26;
  outlined init with copy of Attribute.Pattern(v67, v79);
  if (one-time initialization token for updateEnvironment != -1)
  {
    swift_once();
  }

  v29 = unk_280495A10;
  v69[2] = xmmword_280495A00;
  v70[0] = unk_280495A10;
  v30 = unk_280495A1E;
  *(v70 + 14) = unk_280495A1E;
  v32 = static Attribute.Pattern.updateEnvironment;
  v31 = *algn_2804959F0;
  v69[0] = static Attribute.Pattern.updateEnvironment;
  v69[1] = *algn_2804959F0;
  *(v0 + 568) = xmmword_280495A00;
  *(v0 + 584) = v29;
  *(v0 + 598) = v30;
  *(v0 + 536) = v32;
  *(v0 + 552) = v31;
  outlined init with copy of Attribute.Pattern(v69, v79);
  if (one-time initialization token for mergedEnvironment != -1)
  {
    swift_once();
  }

  v33 = unk_280495AA0;
  v71[2] = xmmword_280495A90;
  v72[0] = unk_280495AA0;
  v34 = unk_280495AAE;
  *(v72 + 14) = unk_280495AAE;
  v36 = static Attribute.Pattern.mergedEnvironment;
  v35 = unk_280495A80;
  v71[0] = static Attribute.Pattern.mergedEnvironment;
  v71[1] = unk_280495A80;
  *(v0 + 640) = xmmword_280495A90;
  *(v0 + 656) = v33;
  *(v0 + 670) = v34;
  *(v0 + 608) = v36;
  *(v0 + 624) = v35;
  outlined init with copy of Attribute.Pattern(v71, v79);
  if (one-time initialization token for starEnvironment != -1)
  {
    swift_once();
  }

  v37 = *&dword_280495D28;
  v39 = static Attribute.Pattern.starEnvironment;
  v38 = *&dword_280495D08;
  v73[1] = *&dword_280495D08;
  v73[2] = xmmword_280495D18;
  v74[0] = *&dword_280495D28;
  v40 = *(&qword_280495D30 + 6);
  *(v74 + 14) = *(&qword_280495D30 + 6);
  v73[0] = static Attribute.Pattern.starEnvironment;
  *(v0 + 712) = xmmword_280495D18;
  *(v0 + 728) = v37;
  *(v0 + 742) = v40;
  *(v0 + 680) = v39;
  *(v0 + 696) = v38;
  outlined init with copy of Attribute.Pattern(v73, v79);
  if (one-time initialization token for rootEnvironmentModifierChild != -1)
  {
    swift_once();
  }

  v41 = *&dword_280495D70;
  v75[2] = xmmword_280495D60;
  v76[0] = *&dword_280495D70;
  v42 = *(&qword_280495D78 + 6);
  *(v76 + 14) = *(&qword_280495D78 + 6);
  v44 = static Attribute.Pattern.rootEnvironmentModifierChild;
  v43 = *&dword_280495D50;
  v75[0] = static Attribute.Pattern.rootEnvironmentModifierChild;
  v75[1] = *&dword_280495D50;
  *(v0 + 784) = xmmword_280495D60;
  *(v0 + 800) = v41;
  *(v0 + 814) = v42;
  *(v0 + 752) = v44;
  *(v0 + 768) = v43;
  outlined init with copy of Attribute.Pattern(v75, v79);
  if (one-time initialization token for focus != -1)
  {
    swift_once();
  }

  v45 = unk_280495B30;
  v77[2] = xmmword_280495B20;
  v78[0] = unk_280495B30;
  v46 = unk_280495B3E;
  *(v78 + 14) = unk_280495B3E;
  v48 = static Attribute.Pattern.focus;
  v47 = *algn_280495B10;
  v77[0] = static Attribute.Pattern.focus;
  v77[1] = *algn_280495B10;
  *(v0 + 856) = xmmword_280495B20;
  *(v0 + 872) = v45;
  *(v0 + 886) = v46;
  *(v0 + 824) = v48;
  *(v0 + 840) = v47;
  outlined init with copy of Attribute.Pattern(v77, v79);
  if (one-time initialization token for environmentFetch != -1)
  {
    swift_once();
  }

  v49 = unk_280495A58;
  v51 = static Attribute.Pattern.environmentFetch;
  v50 = unk_280495A38;
  v79[1] = unk_280495A38;
  v79[2] = xmmword_280495A48;
  v80[0] = unk_280495A58;
  v52 = unk_280495A66;
  *(v80 + 14) = unk_280495A66;
  v79[0] = static Attribute.Pattern.environmentFetch;
  *(v0 + 928) = xmmword_280495A48;
  *(v0 + 944) = v49;
  *(v0 + 958) = v52;
  *(v0 + 896) = v51;
  *(v0 + 912) = v50;
  static EnvironmentWriting.types = v0;
  return outlined init with copy of Attribute.Pattern(v79, v54);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for displayList != -1)
  {
    swift_once();
  }

  v1 = unk_280496118;
  v11[2] = xmmword_280496108;
  v12[0] = unk_280496118;
  v2 = unk_280496126;
  *(v12 + 14) = unk_280496126;
  v4 = static Attribute.Pattern.displayList;
  v3 = unk_2804960F8;
  v11[0] = static Attribute.Pattern.displayList;
  v11[1] = unk_2804960F8;
  *(v0 + 64) = xmmword_280496108;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v11, v13);
  if (one-time initialization token for rootDisplayList != -1)
  {
    swift_once();
  }

  v5 = xmmword_280496150;
  v6 = unk_280496160;
  v13[2] = xmmword_280496150;
  v14[0] = unk_280496160;
  v7 = unk_28049616E;
  *(v14 + 14) = unk_28049616E;
  v8 = static Attribute.Pattern.rootDisplayList;
  v13[0] = static Attribute.Pattern.rootDisplayList;
  v13[1] = unk_280496140;
  *(v0 + 120) = unk_280496140;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  static DisplayList.types = v0;
  return outlined init with copy of Attribute.Pattern(v13, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for platformItemList != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_2804961A8;
  v8[2] = xmmword_280496198;
  v9[0] = unk_2804961A8;
  v2 = unk_2804961B6;
  *(v9 + 14) = unk_2804961B6;
  v4 = static Attribute.Pattern.platformItemList;
  v3 = unk_280496188;
  v8[0] = static Attribute.Pattern.platformItemList;
  v8[1] = unk_280496188;
  *(v0 + 64) = xmmword_280496198;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static PlatformItemList.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for viewList != -1)
  {
    swift_once();
  }

  v1 = unk_280495E90;
  v11[2] = xmmword_280495E80;
  v12[0] = unk_280495E90;
  v2 = unk_280495E9E;
  *(v12 + 14) = unk_280495E9E;
  v4 = static Attribute.Pattern.viewList;
  v3 = *algn_280495E70;
  v11[0] = static Attribute.Pattern.viewList;
  v11[1] = *algn_280495E70;
  *(v0 + 64) = xmmword_280495E80;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v11, v13);
  if (one-time initialization token for viewTraitCollection != -1)
  {
    swift_once();
  }

  v5 = xmmword_280495F58;
  v6 = unk_280495F68;
  v13[2] = xmmword_280495F58;
  v14[0] = unk_280495F68;
  v7 = unk_280495F76;
  *(v14 + 14) = unk_280495F76;
  v8 = static Attribute.Pattern.viewTraitCollection;
  v13[0] = static Attribute.Pattern.viewTraitCollection;
  v13[1] = unk_280495F48;
  *(v0 + 120) = unk_280495F48;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  static ViewList.types = v0;
  return outlined init with copy of Attribute.Pattern(v13, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for platformViewChild != -1)
  {
    swift_once();
  }

  v1 = unk_2804964C0;
  v11[2] = xmmword_2804964B0;
  v12[0] = unk_2804964C0;
  v2 = unk_2804964CE;
  *(v12 + 14) = unk_2804964CE;
  v4 = static Attribute.Pattern.platformViewChild;
  v3 = unk_2804964A0;
  v11[0] = static Attribute.Pattern.platformViewChild;
  v11[1] = unk_2804964A0;
  *(v0 + 64) = xmmword_2804964B0;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v11, v13);
  if (one-time initialization token for makeRepresentable != -1)
  {
    swift_once();
  }

  v5 = xmmword_280496420;
  v6 = unk_280496430;
  v13[2] = xmmword_280496420;
  v14[0] = unk_280496430;
  v7 = unk_28049643E;
  *(v14 + 14) = unk_28049643E;
  v8 = static Attribute.Pattern.makeRepresentable;
  v13[0] = static Attribute.Pattern.makeRepresentable;
  v13[1] = *algn_280496410;
  *(v0 + 120) = *algn_280496410;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  static PlatformViews.types = v0;
  return outlined init with copy of Attribute.Pattern(v13, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334DB0;
  if (one-time initialization token for preferenceList != -1)
  {
    swift_once();
  }

  v1 = unk_280495FB0;
  v19[2] = xmmword_280495FA0;
  v20[0] = unk_280495FB0;
  v2 = unk_280495FBE;
  *(v20 + 14) = unk_280495FBE;
  v4 = static Attribute.Pattern.preferenceList;
  v3 = *algn_280495F90;
  v19[0] = static Attribute.Pattern.preferenceList;
  v19[1] = *algn_280495F90;
  *(v0 + 64) = xmmword_280495FA0;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v19, v25);
  if (one-time initialization token for anchorTransform != -1)
  {
    swift_once();
  }

  v5 = xmmword_280495AD8;
  v6 = unk_280495AE8;
  v21[2] = xmmword_280495AD8;
  v22[0] = unk_280495AE8;
  v7 = unk_280495AF6;
  *(v22 + 14) = unk_280495AF6;
  v8 = static Attribute.Pattern.anchorTransform;
  v21[0] = static Attribute.Pattern.anchorTransform;
  v21[1] = unk_280495AC8;
  *(v0 + 120) = unk_280495AC8;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  outlined init with copy of Attribute.Pattern(v21, v25);
  if (one-time initialization token for dynamicPreferenceCombiner != -1)
  {
    swift_once();
  }

  v9 = unk_2804960D0;
  v23[2] = xmmword_2804960C0;
  v24[0] = unk_2804960D0;
  v10 = unk_2804960DE;
  *(v24 + 14) = unk_2804960DE;
  v12 = static Attribute.Pattern.dynamicPreferenceCombiner;
  v11 = *algn_2804960B0;
  v23[0] = static Attribute.Pattern.dynamicPreferenceCombiner;
  v23[1] = *algn_2804960B0;
  *(v0 + 208) = xmmword_2804960C0;
  *(v0 + 224) = v9;
  *(v0 + 238) = v10;
  *(v0 + 176) = v12;
  *(v0 + 192) = v11;
  outlined init with copy of Attribute.Pattern(v23, v25);
  if (one-time initialization token for anyPairPreferenceCombiner != -1)
  {
    swift_once();
  }

  v13 = xmmword_280496078;
  v14 = unk_280496088;
  v15 = static Attribute.Pattern.anyPairPreferenceCombiner;
  v25[1] = unk_280496068;
  v25[2] = xmmword_280496078;
  v26[0] = unk_280496088;
  v16 = unk_280496096;
  *(v26 + 14) = unk_280496096;
  v25[0] = static Attribute.Pattern.anyPairPreferenceCombiner;
  *(v0 + 264) = unk_280496068;
  *(v0 + 280) = v13;
  *(v0 + 296) = v14;
  *(v0 + 310) = v16;
  *(v0 + 248) = v15;
  static PreferenceList.types = v0;
  return outlined init with copy of Attribute.Pattern(v25, v18);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for accessibilityNodeList != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_280496478;
  v8[2] = xmmword_280496468;
  v9[0] = unk_280496478;
  v2 = unk_280496486;
  *(v9 + 14) = unk_280496486;
  v4 = static Attribute.Pattern.accessibilityNodeList;
  v3 = unk_280496458;
  v8[0] = static Attribute.Pattern.accessibilityNodeList;
  v8[1] = unk_280496458;
  *(v0 + 64) = xmmword_280496468;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static AccessibilityNodeList.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for viewTransform != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_280496358;
  v8[2] = xmmword_280496348;
  v9[0] = unk_280496358;
  v2 = unk_280496366;
  *(v9 + 14) = unk_280496366;
  v4 = static Attribute.Pattern.viewTransform;
  v3 = unk_280496338;
  v8[0] = static Attribute.Pattern.viewTransform;
  v8[1] = unk_280496338;
  *(v0 + 64) = xmmword_280496348;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static ViewTransform.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A10;
  if (one-time initialization token for layoutComputer != -1)
  {
    swift_once();
  }

  v1 = unk_2804961F0;
  v27[2] = xmmword_2804961E0;
  v28[0] = unk_2804961F0;
  v2 = unk_2804961FE;
  *(v28 + 14) = unk_2804961FE;
  v4 = static Attribute.Pattern.layoutComputer;
  v3 = *algn_2804961D0;
  v27[0] = static Attribute.Pattern.layoutComputer;
  v27[1] = *algn_2804961D0;
  *(v0 + 64) = xmmword_2804961E0;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v27, v37);
  if (one-time initialization token for viewGeometry != -1)
  {
    swift_once();
  }

  v5 = xmmword_280496228;
  v6 = unk_280496238;
  v29[2] = xmmword_280496228;
  v30[0] = unk_280496238;
  v7 = unk_280496246;
  *(v30 + 14) = unk_280496246;
  v8 = static Attribute.Pattern.viewGeometry;
  v29[0] = static Attribute.Pattern.viewGeometry;
  v29[1] = unk_280496218;
  *(v0 + 120) = unk_280496218;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  outlined init with copy of Attribute.Pattern(v29, v37);
  if (one-time initialization token for arrayViewGeometry != -1)
  {
    swift_once();
  }

  v9 = *&dword_280496508;
  v31[2] = xmmword_2804964F8;
  v32[0] = *&dword_280496508;
  v10 = *(&qword_280496510 + 6);
  *(v32 + 14) = *(&qword_280496510 + 6);
  v12 = static Attribute.Pattern.arrayViewGeometry;
  v11 = *&dword_2804964E8;
  v31[0] = static Attribute.Pattern.arrayViewGeometry;
  v31[1] = *&dword_2804964E8;
  *(v0 + 208) = xmmword_2804964F8;
  *(v0 + 224) = v9;
  *(v0 + 238) = v10;
  *(v0 + 176) = v12;
  *(v0 + 192) = v11;
  outlined init with copy of Attribute.Pattern(v31, v37);
  if (one-time initialization token for viewOrigin != -1)
  {
    swift_once();
  }

  v13 = unk_280496280;
  v15 = static Attribute.Pattern.viewOrigin;
  v14 = unk_280496260;
  v33[1] = unk_280496260;
  v33[2] = xmmword_280496270;
  v34[0] = unk_280496280;
  v16 = unk_28049628E;
  *(v34 + 14) = unk_28049628E;
  v33[0] = static Attribute.Pattern.viewOrigin;
  *(v0 + 280) = xmmword_280496270;
  *(v0 + 296) = v13;
  *(v0 + 310) = v16;
  *(v0 + 248) = v15;
  *(v0 + 264) = v14;
  outlined init with copy of Attribute.Pattern(v33, v37);
  if (one-time initialization token for viewSize != -1)
  {
    swift_once();
  }

  v17 = unk_2804962C8;
  v35[2] = xmmword_2804962B8;
  v36[0] = unk_2804962C8;
  v18 = unk_2804962D6;
  *(v36 + 14) = unk_2804962D6;
  v20 = static Attribute.Pattern.viewSize;
  v19 = unk_2804962A8;
  v35[0] = static Attribute.Pattern.viewSize;
  v35[1] = unk_2804962A8;
  *(v0 + 352) = xmmword_2804962B8;
  *(v0 + 368) = v17;
  *(v0 + 382) = v18;
  *(v0 + 320) = v20;
  *(v0 + 336) = v19;
  outlined init with copy of Attribute.Pattern(v35, v37);
  if (one-time initialization token for viewFrame != -1)
  {
    swift_once();
  }

  v21 = unk_280496310;
  v37[2] = xmmword_280496300;
  v38[0] = unk_280496310;
  v22 = unk_28049631E;
  *(v38 + 14) = unk_28049631E;
  v24 = static Attribute.Pattern.viewFrame;
  v23 = *algn_2804962F0;
  v37[0] = static Attribute.Pattern.viewFrame;
  v37[1] = *algn_2804962F0;
  *(v0 + 424) = xmmword_280496300;
  *(v0 + 440) = v21;
  *(v0 + 454) = v22;
  *(v0 + 392) = v24;
  *(v0 + 408) = v23;
  static Layout.types = v0;
  return outlined init with copy of Attribute.Pattern(v37, v26);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for graphInputsPhase != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_280495C98;
  v8[2] = xmmword_280495C88;
  v9[0] = unk_280495C98;
  v2 = unk_280495CA6;
  *(v9 + 14) = unk_280495CA6;
  v4 = static Attribute.Pattern.graphInputsPhase;
  v3 = unk_280495C78;
  v8[0] = static Attribute.Pattern.graphInputsPhase;
  v8[1] = unk_280495C78;
  *(v0 + 64) = xmmword_280495C88;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static PhaseWriting.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for transaction != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_280495FF8;
  v8[2] = xmmword_280495FE8;
  v9[0] = unk_280495FF8;
  v2 = unk_280496006;
  *(v9 + 14) = unk_280496006;
  v4 = static Attribute.Pattern.transaction;
  v3 = unk_280495FD8;
  v8[0] = static Attribute.Pattern.transaction;
  v8[1] = unk_280495FD8;
  *(v0 + 64) = xmmword_280495FE8;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static Transactions.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334DB0;
  if (one-time initialization token for staticViewBody != -1)
  {
    swift_once();
  }

  v1 = unk_280495C08;
  v19[2] = xmmword_280495BF8;
  v20[0] = unk_280495C08;
  v2 = unk_280495C16;
  *(v20 + 14) = unk_280495C16;
  v4 = static Attribute.Pattern.staticViewBody;
  v3 = unk_280495BE8;
  v19[0] = static Attribute.Pattern.staticViewBody;
  v19[1] = unk_280495BE8;
  *(v0 + 64) = xmmword_280495BF8;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v19, v25);
  if (one-time initialization token for dynamicViewBody != -1)
  {
    swift_once();
  }

  v5 = xmmword_2804828D8;
  v6 = unk_2804828E8;
  v21[2] = xmmword_2804828D8;
  v22[0] = unk_2804828E8;
  v7 = unk_2804828F6;
  *(v22 + 14) = unk_2804828F6;
  v8 = static Attribute.Pattern.dynamicViewBody;
  v21[0] = static Attribute.Pattern.dynamicViewBody;
  v21[1] = unk_2804828C8;
  *(v0 + 120) = unk_2804828C8;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  outlined init with copy of Attribute.Pattern(v21, v25);
  if (one-time initialization token for forEachChild != -1)
  {
    swift_once();
  }

  v9 = unk_280495CE0;
  v23[2] = xmmword_280495CD0;
  v24[0] = unk_280495CE0;
  v10 = unk_280495CEE;
  *(v24 + 14) = unk_280495CEE;
  v12 = static Attribute.Pattern.forEachChild;
  v11 = unk_280495CC0;
  v23[0] = static Attribute.Pattern.forEachChild;
  v23[1] = unk_280495CC0;
  *(v0 + 208) = xmmword_280495CD0;
  *(v0 + 224) = v9;
  *(v0 + 238) = v10;
  *(v0 + 176) = v12;
  *(v0 + 192) = v11;
  outlined init with copy of Attribute.Pattern(v23, v25);
  if (one-time initialization token for geometryReaderChild != -1)
  {
    swift_once();
  }

  v13 = xmmword_280495C40;
  v14 = unk_280495C50;
  v15 = static Attribute.Pattern.geometryReaderChild;
  v25[1] = *algn_280495C30;
  v25[2] = xmmword_280495C40;
  v26[0] = unk_280495C50;
  v16 = unk_280495C5E;
  *(v26 + 14) = unk_280495C5E;
  v25[0] = static Attribute.Pattern.geometryReaderChild;
  *(v0 + 264) = *algn_280495C30;
  *(v0 + 280) = v13;
  *(v0 + 296) = v14;
  *(v0 + 310) = v16;
  *(v0 + 248) = v15;
  static ViewBodies.types = v0;
  return outlined init with copy of Attribute.Pattern(v25, v18);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for unwrapConditional != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_280496040;
  v8[2] = xmmword_280496030;
  v9[0] = unk_280496040;
  v2 = unk_28049604E;
  *(v9 + 14) = unk_28049604E;
  v4 = static Attribute.Pattern.unwrapConditional;
  v3 = unk_280496020;
  v8[0] = static Attribute.Pattern.unwrapConditional;
  v8[1] = unk_280496020;
  *(v0 + 64) = xmmword_280496030;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static ConditionalContent.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for resolvedTextFilter != -1)
  {
    swift_once();
  }

  v1 = unk_280495B78;
  v11[2] = xmmword_280495B68;
  v12[0] = unk_280495B78;
  v2 = unk_280495B86;
  *(v12 + 14) = unk_280495B86;
  v4 = static Attribute.Pattern.resolvedTextFilter;
  v3 = unk_280495B58;
  v11[0] = static Attribute.Pattern.resolvedTextFilter;
  v11[1] = unk_280495B58;
  *(v0 + 64) = xmmword_280495B68;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v11, v13);
  if (one-time initialization token for resolvedImage != -1)
  {
    swift_once();
  }

  v5 = xmmword_280495BB0;
  v6 = unk_280495BC0;
  v13[2] = xmmword_280495BB0;
  v14[0] = unk_280495BC0;
  v7 = unk_280495BCE;
  *(v14 + 14) = unk_280495BCE;
  v8 = static Attribute.Pattern.resolvedImage;
  v13[0] = static Attribute.Pattern.resolvedImage;
  v13[1] = unk_280495BA0;
  *(v0 + 120) = unk_280495BA0;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  static ResolvedContent.types = v0;
  return outlined init with copy of Attribute.Pattern(v13, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32F2A0;
  if (one-time initialization token for dynamicContainerInfo != -1)
  {
    swift_once();
  }

  v1 = unk_2804963A0;
  v11[2] = xmmword_280496390;
  v12[0] = unk_2804963A0;
  v2 = unk_2804963AE;
  *(v12 + 14) = unk_2804963AE;
  v4 = static Attribute.Pattern.dynamicContainerInfo;
  v3 = unk_280496380;
  v11[0] = static Attribute.Pattern.dynamicContainerInfo;
  v11[1] = unk_280496380;
  *(v0 + 64) = xmmword_280496390;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v11, v13);
  if (one-time initialization token for placeholderInfo != -1)
  {
    swift_once();
  }

  v5 = xmmword_2804963D8;
  v6 = unk_2804963E8;
  v13[2] = xmmword_2804963D8;
  v14[0] = unk_2804963E8;
  v7 = unk_2804963F6;
  *(v14 + 14) = unk_2804963F6;
  v8 = static Attribute.Pattern.placeholderInfo;
  v13[0] = static Attribute.Pattern.placeholderInfo;
  v13[1] = unk_2804963C8;
  *(v0 + 120) = unk_2804963C8;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  static ViewCreation.types = v0;
  return outlined init with copy of Attribute.Pattern(v13, v10);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for viewResponderArray != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = *&dword_280482978;
  v8[2] = xmmword_280482968;
  v9[0] = *&dword_280482978;
  v2 = *(&qword_280482980 + 6);
  *(v9 + 14) = *(&qword_280482980 + 6);
  v4 = static Attribute.Pattern.viewResponderArray;
  v3 = *&dword_280482958;
  v8[0] = static Attribute.Pattern.viewResponderArray;
  v8[1] = *&dword_280482958;
  *(v0 + 64) = xmmword_280482968;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  static ViewResponder.types = v0;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t one-time initialization function for hiddenTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A20;
  if (one-time initialization token for variadicViewTree != -1)
  {
    swift_once();
  }

  v1 = qword_280495550;
  v2 = dword_280495558;
  *(v0 + 32) = static Tree.Pattern.variadicViewTree;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for hStack;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495598;
  v5 = dword_2804955A0;
  *(v0 + 56) = static Tree.Pattern.hStack;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for vStack;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2804955B0;
  v8 = dword_2804955B8;
  *(v0 + 80) = static Tree.Pattern.vStack;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = one-time initialization token for zStack;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2804955C8;
  v11 = dword_2804955D0;
  *(v0 + 104) = static Tree.Pattern.zStack;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  v12 = one-time initialization token for group;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2804955E0;
  v14 = dword_2804955E8;
  *(v0 + 128) = static Tree.Pattern.group;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  v15 = one-time initialization token for variadicViewChildren;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280495568;
  v17 = dword_280495570;
  *(v0 + 152) = static Tree.Pattern.variadicViewChildren;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  v18 = one-time initialization token for variadicViewChildrenElement;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280495580;
  v20 = dword_280495588;
  *(v0 + 176) = static Tree.Pattern.variadicViewChildrenElement;
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  static VariadicViewTreeA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A00;
  if (one-time initialization token for text != -1)
  {
    swift_once();
  }

  v1 = qword_280495610;
  v2 = dword_280495618;
  *(v0 + 32) = static Tree.Pattern.text;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for accessibilityStyledTextContentView;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495628;
  v5 = dword_280495630;
  *(v0 + 56) = static Tree.Pattern.accessibilityStyledTextContentView;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for styledTextContentView;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280495640;
  v8 = dword_280495648;
  *(v0 + 80) = static Tree.Pattern.styledTextContentView;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  static TextA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A10;
  if (one-time initialization token for button != -1)
  {
    swift_once();
  }

  v1 = qword_280495778;
  v2 = dword_280495780;
  *(v0 + 32) = static Tree.Pattern.button;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = one-time initialization token for resolvedButton;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280495790;
  v5 = dword_280495798;
  *(v0 + 56) = static Tree.Pattern.resolvedButton;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = one-time initialization token for accessibilityDefaultAction;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2804957A8;
  v8 = dword_2804957B0;
  *(v0 + 80) = static Tree.Pattern.accessibilityDefaultAction;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = one-time initialization token for primitiveButtonStyleContainerModifier;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_2804957C0;
  v11 = dword_2804957C8;
  *(v0 + 104) = static Tree.Pattern.primitiveButtonStyleContainerModifier;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  v12 = one-time initialization token for wrappedButtonStyleBody;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2804957D8;
  v14 = dword_2804957E0;
  *(v0 + 128) = static Tree.Pattern.wrappedButtonStyleBody;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  v15 = one-time initialization token for buttonBehavior;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_2804957F0;
  v17 = dword_2804957F8;
  *(v0 + 152) = static Tree.Pattern.buttonBehavior;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  static ButtonA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for colorView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495830;
  v2 = dword_280495838;
  *(v0 + 32) = static Tree.Pattern.colorView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static ColorA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for placeholderContentView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_280495870;
  v2 = dword_280495878;
  *(v0 + 32) = static Tree.Pattern.placeholderContentView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static OpacityRendererEffectA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4TreeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  if (one-time initialization token for resolvedTabView != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = qword_2804958B0;
  v2 = dword_2804958B8;
  *(v0 + 32) = static Tree.Pattern.resolvedTabView;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  static TabViewA.hiddenTypes = v0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9AttributeV7PatternVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C334A00;
  if (one-time initialization token for preferenceList != -1)
  {
    swift_once();
  }

  v1 = unk_280495FB0;
  v15[2] = xmmword_280495FA0;
  v16[0] = unk_280495FB0;
  v2 = unk_280495FBE;
  *(v16 + 14) = unk_280495FBE;
  v4 = static Attribute.Pattern.preferenceList;
  v3 = *algn_280495F90;
  v15[0] = static Attribute.Pattern.preferenceList;
  v15[1] = *algn_280495F90;
  *(v0 + 64) = xmmword_280495FA0;
  *(v0 + 80) = v1;
  *(v0 + 94) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  outlined init with copy of Attribute.Pattern(v15, v19);
  if (one-time initialization token for dynamicPreferenceCombiner != -1)
  {
    swift_once();
  }

  v5 = xmmword_2804960C0;
  v6 = unk_2804960D0;
  v17[2] = xmmword_2804960C0;
  v18[0] = unk_2804960D0;
  v7 = unk_2804960DE;
  *(v18 + 14) = unk_2804960DE;
  v8 = static Attribute.Pattern.dynamicPreferenceCombiner;
  v17[0] = static Attribute.Pattern.dynamicPreferenceCombiner;
  v17[1] = *algn_2804960B0;
  *(v0 + 120) = *algn_2804960B0;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 166) = v7;
  *(v0 + 104) = v8;
  outlined init with copy of Attribute.Pattern(v17, v19);
  if (one-time initialization token for anyPairPreferenceCombiner != -1)
  {
    swift_once();
  }

  v9 = unk_280496088;
  v19[2] = xmmword_280496078;
  v20[0] = unk_280496088;
  v10 = unk_280496096;
  *(v20 + 14) = unk_280496096;
  v12 = static Attribute.Pattern.anyPairPreferenceCombiner;
  v11 = unk_280496068;
  v19[0] = static Attribute.Pattern.anyPairPreferenceCombiner;
  v19[1] = unk_280496068;
  *(v0 + 208) = xmmword_280496078;
  *(v0 + 224) = v9;
  *(v0 + 238) = v10;
  *(v0 + 176) = v12;
  *(v0 + 192) = v11;
  static PreferenceList.hiddenTypes = v0;
  return outlined init with copy of Attribute.Pattern(v19, v14);
}

void one-time initialization function for hiddenTypes()
{
  static ConditionalViewA.hiddenTypes = MEMORY[0x277D84F90];
}

{
  static NavigationSplitViewA.hiddenTypes = MEMORY[0x277D84F90];
}

uint64_t static TupleViewA.displayName(for:within:)(unsigned int *a1, uint64_t a2)
{
  return static TupleViewA.displayName(for:within:)(a1, a2);
}

{
  if (*(a1 + 9) == 2)
  {
    v2 = *a1;
    v3 = *(*a2 + 136);
    v5 = v3[1];
    v4 = v3[2];
    v22[0] = *v3;
    v22[1] = v5;
    v22[2] = v4;
    v6 = v3[6];
    v8 = v3[3];
    v7 = v3[4];
    v22[5] = v3[5];
    v22[6] = v6;
    v22[3] = v8;
    v22[4] = v7;
    v9 = v3[5];
    v19 = v3[4];
    v20 = v9;
    v21 = v3[6];
    v10 = v3[1];
    v15 = *v3;
    v16 = v10;
    v11 = v3[3];
    v17 = v3[2];
    v18 = v11;
    outlined init with copy of Interpreter.Storage.Types(v22, v14);
    v12 = Interpreter.Storage.Types.subscript.getter(v2);
    outlined destroy of Interpreter.Storage.Types(v22);
    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static TreeAbstraction.displayName(for:within:) in conformance TupleViewA(unsigned int *a1, uint64_t a2)
{
  return protocol witness for static TreeAbstraction.displayName(for:within:) in conformance TupleViewA(a1, a2);
}

{
  if (*(a1 + 9) == 2)
  {
    v2 = *a1;
    v3 = *(*a2 + 136);
    v5 = v3[1];
    v4 = v3[2];
    v22[0] = *v3;
    v22[1] = v5;
    v22[2] = v4;
    v6 = v3[6];
    v8 = v3[3];
    v7 = v3[4];
    v22[5] = v3[5];
    v22[6] = v6;
    v22[3] = v8;
    v22[4] = v7;
    v9 = v3[5];
    v19 = v3[4];
    v20 = v9;
    v21 = v3[6];
    v10 = v3[1];
    v15 = *v3;
    v16 = v10;
    v11 = v3[3];
    v17 = v3[2];
    v18 = v11;
    outlined init with copy of Interpreter.Storage.Types(v22, v14);
    v12 = Interpreter.Storage.Types.subscript.getter(v2);
    outlined destroy of Interpreter.Storage.Types(v22);
    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static NavigationSplitViewA.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0xD000000000000013;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static TreeAbstraction.displayName(for:within:) in conformance NavigationSplitViewA(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0xD000000000000013;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static ButtonA.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0x6E6F74747542;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static TreeAbstraction.displayName(for:within:) in conformance ButtonA(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0x6E6F74747542;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static ColorA.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0x726F6C6F43;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static TreeAbstraction.displayName(for:within:) in conformance ColorA(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0x726F6C6F43;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static OpacityRendererEffectA.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0xD000000000000015;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static TreeAbstraction.displayName(for:within:) in conformance OpacityRendererEffectA(uint64_t a1)
{
  if (*(a1 + 9) == 2)
  {
    return 0xD000000000000015;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static VariadicViewTreeA.displayName(for:within:)(unsigned int *a1, uint64_t a2)
{
  if (*(a1 + 9) == 2)
  {
    v3 = *a1;
    if (one-time initialization token for variadicViewTree != -1)
    {
      swift_once();
    }

    v4 = *(*a2 + 136);
    v6 = v4[1];
    v5 = v4[2];
    v57[0] = *v4;
    v57[1] = v6;
    v57[2] = v5;
    v7 = v4[6];
    v9 = v4[3];
    v8 = v4[4];
    v57[5] = v4[5];
    v57[6] = v7;
    v57[3] = v9;
    v57[4] = v8;
    LODWORD(v42) = static Tree.Pattern.variadicViewTree;
    *(&v42 + 1) = qword_280495550;
    LODWORD(v43) = dword_280495558;
    v53 = v4[3];
    v54 = v4[4];
    v55 = v4[5];
    v56 = v4[6];
    v50 = *v4;
    v51 = v4[1];
    v52 = v4[2];
    outlined init with copy of Interpreter.Storage.Types(v57, v49);

    PType.Pattern.match(type:within:)(v3, &v50);
    v11 = v10;

    outlined destroy of Interpreter.Storage.Types(v57);
    if ((v11 & 1) == 0)
    {
      v22 = *(*a2 + 136);
      v53 = v22[3];
      v54 = v22[4];
      v55 = v22[5];
      v56 = v22[6];
      v50 = *v22;
      v51 = v22[1];
      v52 = v22[2];
      return Interpreter.Storage.Types.subscript.getter(v3);
    }

    v12 = *(*a2 + 136);
    v14 = v12[1];
    v13 = v12[2];
    v50 = *v12;
    v51 = v14;
    v52 = v13;
    v15 = v12[6];
    v17 = v12[3];
    v16 = v12[4];
    v55 = v12[5];
    v56 = v15;
    v53 = v17;
    v54 = v16;
    v49[3] = v12[3];
    v49[4] = v12[4];
    v49[5] = v12[5];
    v49[6] = v12[6];
    v49[0] = *v12;
    v49[1] = v12[1];
    v49[2] = v12[2];
    outlined init with copy of Interpreter.Storage.Types(&v50, &v42);
    v18 = Interpreter.Storage.Types.subscript.getter(v3);
    v20 = v19;
    outlined destroy of Interpreter.Storage.Types(&v50);
    if (v18 == 0x4C6B636174535A5FLL && v20 == 0xED000074756F7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6B636174535ALL;
    }

    if (v18 == 0x4C6B63617453485FLL && v20 == 0xED000074756F7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6B6361745348;
    }

    if (v18 == 0x4C6B63617453565FLL && v20 == 0xED000074756F7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v18 == 0xD000000000000021 && 0x800000026C33C6C0 == v20)
    {

      return 0x6B6361745356;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return 0x6B6361745356;
    }

    v24 = *(*a2 + 136);
    v26 = v24[1];
    v25 = v24[2];
    v42 = *v24;
    v43 = v26;
    v44 = v25;
    v27 = v24[6];
    v29 = v24[3];
    v28 = v24[4];
    v47 = v24[5];
    v48 = v27;
    v45 = v29;
    v46 = v28;
    v30 = v24[5];
    v39 = v24[4];
    v40 = v30;
    v41 = v24[6];
    v31 = v24[1];
    v35 = *v24;
    v36 = v31;
    v32 = v24[3];
    v37 = v24[2];
    v38 = v32;
    outlined init with copy of Interpreter.Storage.Types(&v42, v34);
    v33 = Interpreter.Storage.Types.subscript.getter(v3);
    outlined destroy of Interpreter.Storage.Types(&v42);
    return v33;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ModifierAbstraction.displayName(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 9) == 2)
  {
    v4 = *a1;
    v26 = a3;
    v27 = a4;
    v5 = *(*a2 + 136);
    v7 = v5[1];
    v6 = v5[2];
    v28[0] = *v5;
    v28[1] = v7;
    v28[2] = v6;
    v8 = v5[6];
    v10 = v5[3];
    v9 = v5[4];
    v28[5] = v5[5];
    v28[6] = v8;
    v28[3] = v10;
    v28[4] = v9;
    v11 = v5[5];
    v23 = v5[4];
    v24 = v11;
    v25 = v5[6];
    v12 = v5[1];
    v19 = *v5;
    v20 = v12;
    v13 = v5[3];
    v21 = v5[2];
    v22 = v13;
    outlined init with copy of Interpreter.Storage.Types(v28, v18);
    v14 = Interpreter.Storage.Types.subscript.getter(v4);
    v16 = v15;
    outlined destroy of Interpreter.Storage.Types(v28);
    MEMORY[0x26D69CDB0](v14, v16);

    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t specialized static ChargeToParentA.observes(tree:within:)(unint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_30;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
    goto LABEL_38;
  }

  v37 = *(a2 + 22);
  v38 = a2;
  v2 = *(*(v5 + 8 * v4) + 8);
  if (one-time initialization token for types != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v6 = static ChargeToParentA.types;
    v7 = *(static ChargeToParentA.types + 16);
    v8 = HIDWORD(result);
    v36 = result;
    v9 = result;
    if (!v7)
    {
      break;
    }

    v10 = 0;
    v11 = (static ChargeToParentA.types + 48);
    while (v10 < *(v6 + 16))
    {
      if (*(v2 + 124) <= v8)
      {
        goto LABEL_27;
      }

      v12 = *(v2 + 112);
      if (!v12)
      {
        goto LABEL_36;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v13 = *(v12 + 168 * v8);
      if (v9 >= *(v13 + 16))
      {
        goto LABEL_29;
      }

      v14 = *(v13 + 208 * v9 + 120);
      if (v14 != -1)
      {
        v15 = *(v11 - 4);
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = *(*v2 + 136);
        v20 = v18[1];
        v19 = v18[2];
        v44[0] = *v18;
        v44[1] = v20;
        v44[2] = v19;
        v21 = v18[6];
        v23 = v18[3];
        v22 = v18[4];
        v44[5] = v18[5];
        v44[6] = v21;
        v44[3] = v23;
        v44[4] = v22;
        v41 = v15;
        v42 = v16;
        v43 = v17;
        v24 = v18[5];
        v40[4] = v18[4];
        v40[5] = v24;
        v40[6] = v18[6];
        v25 = v18[1];
        v40[0] = *v18;
        v40[1] = v25;
        v26 = v18[3];
        v40[2] = v18[2];
        v40[3] = v26;

        outlined init with copy of Interpreter.Storage.Types(v44, v39);
        PType.Pattern.match(type:within:)(v14, v40);
        v28 = v27;

        result = outlined destroy of Interpreter.Storage.Types(v44);
        if (v28)
        {
          return 1;
        }
      }

      ++v10;
      v11 += 6;
      if (v7 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v35 = result;
    swift_once();
    result = v35;
  }

LABEL_16:
  if (v38[48])
  {
    goto LABEL_39;
  }

  v29 = *v38;
  if (v29 >= *(v37 + 116))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = *(v37 + 104);
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = *(*(v30 + 8 * v29) + 8);
  if (v8 >= *(v31 + 124))
  {
    goto LABEL_33;
  }

  v32 = *(v31 + 112);
  if (!v32)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  if (v36 < 0)
  {
    goto LABEL_34;
  }

  v33 = *(v32 + 168 * v8);
  if (v9 >= *(v33 + 16))
  {
    goto LABEL_35;
  }

  v34 = v33 + 208 * v9;
  return *(v34 + 148) != 1 || *(v34 + 136) == 0;
}

uint64_t specialized static ChargeToParentA.model(tree:within:position:abstraction:)(uint64_t result, unsigned __int8 *a2, _BYTE *a3, unint64_t a4, char a5)
{
  if ((*a3 == 0) | a5 & 1)
  {
    return 0;
  }

  if (a2[48])
  {
    goto LABEL_18;
  }

  v10 = *(a2 + 22);
  v11 = *a2;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = a4;
  v13 = *(*(v12 + 8 * v11) + 8);
  if (HIDWORD(a4) >= *(v13 + 124))
  {
    goto LABEL_14;
  }

  v14 = *(v13 + 112);
  if (v14)
  {
    v7 = result;
    v8 = (v14 + 168 * HIDWORD(a4));
    v6 = *v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v6;
    if (result)
    {
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    *v8 = result;
    if ((v5 & 0x80000000) == 0)
    {
LABEL_10:
      if (v5 < *(v6 + 16))
      {
        Tree.hide(within:_:)(a2, v7);
        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for environmentValues()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  static PType.Pattern.environmentValues = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  dword_280495900 = 0;
  result = PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for environmentValues, 0, &v1);
  qword_2804958F8 = v1;
  return result;
}

uint64_t one-time initialization function for resolvedImage()
{
  static Attribute.Pattern.body(_:)(&static Attribute.Pattern.resolvedImage);

  return swift_arrayDestroy();
}

uint64_t static Attribute.Pattern.dynamicViewBody.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for dynamicViewBody != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_2804828E8;
  v8[2] = xmmword_2804828D8;
  v9[0] = unk_2804828E8;
  v2 = unk_2804828F6;
  *(v9 + 14) = unk_2804828F6;
  v4 = static Attribute.Pattern.dynamicViewBody;
  v3 = unk_2804828C8;
  v8[0] = static Attribute.Pattern.dynamicViewBody;
  v8[1] = unk_2804828C8;
  *(a1 + 32) = xmmword_2804828D8;
  *(a1 + 48) = v1;
  *(a1 + 62) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t one-time initialization function for geometryReaderChild()
{
  static Attribute.Pattern.body(_:)(&static Attribute.Pattern.geometryReaderChild);

  return swift_arrayDestroy();
}

uint64_t one-time initialization function for graphInputsPhase()
{
  static Attribute.Pattern.value(_:)(&static Attribute.Pattern.graphInputsPhase);

  return swift_arrayDestroy();
}

uint64_t one-time initialization function for starEnvironment()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for starEnvironment, 0, &v7);
  v1 = v7;
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v2 = static PType.Pattern.any;
  v3 = add_explicit + 1;
  v4 = qword_280481D18;
  v5 = dword_280481D20;
  dword_280495D10 = static PType.Pattern.any;
  *&xmmword_280495D18 = qword_280481D18;
  DWORD2(xmmword_280495D18) = dword_280481D20;
  dword_280495D28 = static PType.Pattern.any;
  qword_280495D30 = qword_280481D18;
  dword_280495D38 = dword_280481D20;
  word_280495D3C = 0;
  LODWORD(static Attribute.Pattern.starEnvironment) = v3;
  *(&static Attribute.Pattern.starEnvironment + 1) = v1;
  dword_280495D08 = 0;
  swift_retain_n();

  dword_280495D28 = v2;
  qword_280495D30 = v4;
  dword_280495D38 = v5;
}

uint64_t one-time initialization function for rootEnvironmentModifierChild()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for rootEnvironmentModifierChild, 0, &v11);
  v1 = v11;
  if (one-time initialization token for environmentValues != -1)
  {
    swift_once();
  }

  v2 = static PType.Pattern.environmentValues;
  v3 = qword_2804958F8;
  v4 = dword_280495900;
  v5 = one-time initialization token for any;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.any;
  v7 = add_explicit + 1;
  v8 = qword_280481D18;
  v9 = dword_280481D20;
  dword_280495D70 = static PType.Pattern.any;
  qword_280495D78 = qword_280481D18;
  dword_280495D80 = dword_280481D20;
  word_280495D84 = 0;
  LODWORD(static Attribute.Pattern.rootEnvironmentModifierChild) = v7;
  *(&static Attribute.Pattern.rootEnvironmentModifierChild + 1) = v1;
  dword_280495D50 = 0;
  dword_280495D58 = v2;
  *&xmmword_280495D60 = v3;
  DWORD2(xmmword_280495D60) = v4;
  swift_retain_n();

  dword_280495D70 = v6;
  qword_280495D78 = v8;
  dword_280495D80 = v9;
}

uint64_t one-time initialization function for someChildEnvironment()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for someChildEnvironment, 0, &v11);
  v1 = v11;
  if (one-time initialization token for environmentValues != -1)
  {
    swift_once();
  }

  v2 = static PType.Pattern.environmentValues;
  v3 = qword_2804958F8;
  v4 = dword_280495900;
  v5 = one-time initialization token for any;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static PType.Pattern.any;
  v7 = add_explicit + 1;
  v8 = qword_280481D18;
  v9 = dword_280481D20;
  dword_280495E48 = static PType.Pattern.any;
  qword_280495E50 = qword_280481D18;
  dword_280495E58 = dword_280481D20;
  word_280495E5C = 0;
  LODWORD(static Attribute.Pattern.someChildEnvironment) = v7;
  *(&static Attribute.Pattern.someChildEnvironment + 1) = v1;
  dword_280495E28 = 0;
  dword_280495E30 = v2;
  *&xmmword_280495E38 = v3;
  DWORD2(xmmword_280495E38) = v4;
  swift_retain_n();

  dword_280495E48 = v6;
  qword_280495E50 = v8;
  dword_280495E58 = v9;
}

uint64_t one-time initialization function for traitWritingModifierAddTrait()
{
  static Attribute.Pattern.value(_:)(&static Attribute.Pattern.traitWritingModifierAddTrait);

  return swift_arrayDestroy();
}

uint64_t one-time initialization function for appBody()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #1 of one-time initialization function for appBody, 0, &v8);
  *(v0 + 32) = v8;
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for appBody, v0, &v8);
  v1 = v8;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v3 = static PType.Pattern.any;
  v4 = add_explicit + 1;
  v5 = qword_280481D18;
  v6 = dword_280481D20;
  dword_280482918 = static PType.Pattern.any;
  *&xmmword_280482920 = qword_280481D18;
  DWORD2(xmmword_280482920) = dword_280481D20;
  dword_280482930 = static PType.Pattern.any;
  qword_280482938 = qword_280481D18;
  dword_280482940 = dword_280481D20;
  word_280482944 = 0;
  LODWORD(static Attribute.Pattern.appBody) = v4;
  *(&static Attribute.Pattern.appBody + 1) = v1;
  dword_280482910 = 0;
  swift_retain_n();

  dword_280482930 = v3;
  qword_280482938 = v5;
  dword_280482940 = v6;
}

uint64_t static Attribute.Pattern.appBody.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for appBody != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&dword_280482930;
  v8[2] = xmmword_280482920;
  v9[0] = *&dword_280482930;
  v2 = *(&qword_280482938 + 6);
  *(v9 + 14) = *(&qword_280482938 + 6);
  v4 = static Attribute.Pattern.appBody;
  v3 = *&dword_280482910;
  v8[0] = static Attribute.Pattern.appBody;
  v8[1] = *&dword_280482910;
  *(a1 + 32) = xmmword_280482920;
  *(a1 + 48) = v1;
  *(a1 + 62) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t one-time initialization function for viewResponderArray()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C328DC0;
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #1 of one-time initialization function for viewResponderArray, 0, &v8);
  *(v0 + 32) = v8;
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for viewResponderArray, v0, &v8);
  v1 = v8;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v3 = static PType.Pattern.any;
  v4 = add_explicit + 1;
  v5 = qword_280481D18;
  v6 = dword_280481D20;
  dword_280482978 = static PType.Pattern.any;
  qword_280482980 = qword_280481D18;
  dword_280482988 = dword_280481D20;
  word_28048298C = 0;
  LODWORD(static Attribute.Pattern.viewResponderArray) = static PType.Pattern.any;
  *(&static Attribute.Pattern.viewResponderArray + 1) = qword_280481D18;
  dword_280482958 = dword_280481D20;
  dword_280482960 = v4;
  *&xmmword_280482968 = v1;
  DWORD2(xmmword_280482968) = 0;
  swift_retain_n();

  dword_280482978 = v3;
  qword_280482980 = v5;
  dword_280482988 = v6;
}

uint64_t static Attribute.Pattern.viewResponderArray.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewResponderArray != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&dword_280482978;
  v8[2] = xmmword_280482968;
  v9[0] = *&dword_280482978;
  v2 = *(&qword_280482980 + 6);
  *(v9 + 14) = *(&qword_280482980 + 6);
  v4 = static Attribute.Pattern.viewResponderArray;
  v3 = *&dword_280482958;
  v8[0] = static Attribute.Pattern.viewResponderArray;
  v8[1] = *&dword_280482958;
  *(a1 + 32) = xmmword_280482968;
  *(a1 + 48) = v1;
  *(a1 + 62) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of Attribute.Pattern(v8, v7);
}

uint64_t one-time initialization function for arrayViewGeometry()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v1 = @nonobjc NSRegularExpression.init(pattern:options:)(0x2479617272415ELL, 0xE700000000000000, 0);
  v2 = swift_allocObject();
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV7PatternV3IsAOGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C328DC0;
  PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for arrayViewGeometry, 0, &v10);
  *(v3 + 32) = v10;
  v2[3] = v3;
  v2[4] = 0;
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed);
  if (one-time initialization token for any != -1)
  {
    swift_once();
  }

  v5 = static PType.Pattern.any;
  v6 = add_explicit + 1;
  v7 = qword_280481D18;
  v8 = dword_280481D20;
  dword_280496508 = static PType.Pattern.any;
  qword_280496510 = qword_280481D18;
  dword_280496518 = dword_280481D20;
  word_28049651C = 0;
  LODWORD(static Attribute.Pattern.arrayViewGeometry) = static PType.Pattern.any;
  *(&static Attribute.Pattern.arrayViewGeometry + 1) = qword_280481D18;
  dword_2804964E8 = dword_280481D20;
  dword_2804964F0 = v6;
  *&xmmword_2804964F8 = v2;
  DWORD2(xmmword_2804964F8) = 0;
  swift_retain_n();

  dword_280496508 = v5;
  qword_280496510 = v7;
  dword_280496518 = v8;
}

uint64_t static PlatformItemList.displayName(for:within:)(unsigned int *a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v2 = *a1;
    v3 = *(*a2 + 136);
    _StringGuts.grow(_:)(36);

    v10 = v3[4];
    v11 = v3[5];
    v12 = v3[6];
    v6 = *v3;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    v4 = Interpreter.Storage.Types.subscript.getter(v2);
    MEMORY[0x26D69CDB0](v4);

    return 0xD000000000000022;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static EventAbstraction.displayName(for:within:) in conformance PlatformItemList(unsigned int *a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v2 = *a1;
    v3 = *(*a2 + 136);
    _StringGuts.grow(_:)(36);

    v10 = v3[4];
    v11 = v3[5];
    v12 = v3[6];
    v6 = *v3;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    v4 = Interpreter.Storage.Types.subscript.getter(v2);
    MEMORY[0x26D69CDB0](v4);

    return 0xD000000000000022;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static ViewList.hasOwnership(for:within:)(uint64_t result, unsigned __int8 *a2)
{
  if (!a2[48])
  {
    v4 = *(a2 + 22);
    v5 = *a2;
    if (v5 >= *(v4 + 29))
    {
LABEL_44:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 13);
      if (!v6)
      {
        goto LABEL_57;
      }

      v2 = result;
      v3 = *(*(v6 + 8 * v5) + 8);
      if (one-time initialization token for types == -1)
      {
        goto LABEL_5;
      }
    }

    v35 = a2;
    result = swift_once();
    a2 = v35;
LABEL_5:
    v7 = static ViewList.types;
    v8 = *(static ViewList.types + 2);
    if (!v8)
    {
      return 0;
    }

    v36 = v4;
    v37 = a2;
    v9 = 0;
    v10 = static ViewList.types + 32;
    v11 = 312;
    while (1)
    {
      if (v9 >= v7[2])
      {
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
        goto LABEL_44;
      }

      if (v3[11] <= v2)
      {
        goto LABEL_38;
      }

      v12 = *(v3 + 4);
      if (!v12)
      {
        break;
      }

      v13 = v12 + (v2 << 7);
      v16 = *(v13 + 8);
      v15 = v13 + 8;
      v14 = v16;
      if (!*(v15 + 24))
      {
        goto LABEL_39;
      }

      if (*(v15 + 16))
      {
        goto LABEL_50;
      }

      if (!v14)
      {
        goto LABEL_51;
      }

      if (*v14 == &type metadata for Event.AttributeValue)
      {
        v17 = *(v10 + 3);
        v40 = *(v10 + 2);
        v41[0] = v17;
        *(v41 + 14) = *(v10 + 62);
        v18 = *(v10 + 1);
        v38 = *v10;
        v39 = v18;
        v19 = *(v14 + 8);
        if (v19 >= v3[21])
        {
          goto LABEL_40;
        }

        v20 = *(v3 + 9);
        if (!v20)
        {
          goto LABEL_52;
        }

        v4 = &v38;
        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v3);
        if (result)
        {
          if (v37[48])
          {
            goto LABEL_59;
          }

          v21 = *v37;
          if (v21 >= *(v36 + 29))
          {
LABEL_47:
            __break(1u);
          }

          else
          {
            v22 = *(v36 + 13);
            if (!v22)
            {
              goto LABEL_60;
            }

            v11 = *(*(v22 + 8 * v21) + 8);
            if (one-time initialization token for types == -1)
            {
LABEL_22:
              v3 = static ViewBodies.types;
              v23 = *(static ViewBodies.types + 2);
              if (!v23)
              {
                return 1;
              }

              v24 = 0;
              v25 = static ViewBodies.types + 32;
              while (v24 < *(v3 + 2))
              {
                if (*(v11 + 44) <= v2)
                {
                  goto LABEL_42;
                }

                v26 = *(v11 + 32);
                if (!v26)
                {
                  goto LABEL_53;
                }

                v27 = v26 + (v2 << 7);
                v30 = *(v27 + 8);
                v29 = v27 + 8;
                v28 = v30;
                if (!*(v29 + 24))
                {
                  goto LABEL_43;
                }

                if (*(v29 + 16))
                {
                  goto LABEL_54;
                }

                if (!v28)
                {
                  goto LABEL_55;
                }

                if (*v28 == &type metadata for Event.AttributeValue)
                {
                  v31 = *(v25 + 3);
                  v40 = *(v25 + 2);
                  v41[0] = v31;
                  *(v41 + 14) = *(v25 + 62);
                  v32 = *(v25 + 1);
                  v38 = *v25;
                  v39 = v32;
                  v33 = *(v28 + 8);
                  if (v33 >= *(v11 + 84))
                  {
                    __break(1u);
                    goto LABEL_47;
                  }

                  v34 = *(v11 + 72);
                  if (!v34)
                  {
                    goto LABEL_58;
                  }

                  v4 = &v38;
                  result = Attribute.Pattern.match(_:within:)(*(v34 + 312 * v33 + 32), v11);
                  if (result)
                  {
                    return 0;
                  }
                }

                ++v24;
                v25 += 72;
                if (v23 == v24)
                {
                  return 1;
                }
              }

              goto LABEL_41;
            }
          }

          result = swift_once();
          goto LABEL_22;
        }
      }

      ++v9;
      v10 += 72;
      if (v8 == v9)
      {
        return 0;
      }
    }

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
  return result;
}

uint64_t protocol witness for static EventAbstraction.hasOwnership(for:within:) in conformance ViewList(uint64_t result, unsigned __int8 *a2)
{
  if (!a2[48])
  {
    v4 = *(a2 + 22);
    v5 = *a2;
    if (v5 >= *(v4 + 29))
    {
LABEL_44:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 13);
      if (!v6)
      {
        goto LABEL_57;
      }

      v2 = result;
      v3 = *(*(v6 + 8 * v5) + 8);
      if (one-time initialization token for types == -1)
      {
        goto LABEL_5;
      }
    }

    v35 = a2;
    result = swift_once();
    a2 = v35;
LABEL_5:
    v7 = static ViewList.types;
    v8 = *(static ViewList.types + 2);
    if (!v8)
    {
      return 0;
    }

    v36 = v4;
    v37 = a2;
    v9 = 0;
    v10 = static ViewList.types + 32;
    v11 = 312;
    while (1)
    {
      if (v9 >= v7[2])
      {
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
        goto LABEL_44;
      }

      if (v3[11] <= v2)
      {
        goto LABEL_38;
      }

      v12 = *(v3 + 4);
      if (!v12)
      {
        break;
      }

      v13 = v12 + (v2 << 7);
      v16 = *(v13 + 8);
      v15 = v13 + 8;
      v14 = v16;
      if (!*(v15 + 24))
      {
        goto LABEL_39;
      }

      if (*(v15 + 16))
      {
        goto LABEL_50;
      }

      if (!v14)
      {
        goto LABEL_51;
      }

      if (*v14 == &type metadata for Event.AttributeValue)
      {
        v17 = *(v10 + 3);
        v40 = *(v10 + 2);
        v41[0] = v17;
        *(v41 + 14) = *(v10 + 62);
        v18 = *(v10 + 1);
        v38 = *v10;
        v39 = v18;
        v19 = *(v14 + 8);
        if (v19 >= v3[21])
        {
          goto LABEL_40;
        }

        v20 = *(v3 + 9);
        if (!v20)
        {
          goto LABEL_52;
        }

        v4 = &v38;
        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v3);
        if (result)
        {
          if (v37[48])
          {
            goto LABEL_59;
          }

          v21 = *v37;
          if (v21 >= *(v36 + 29))
          {
LABEL_47:
            __break(1u);
          }

          else
          {
            v22 = *(v36 + 13);
            if (!v22)
            {
              goto LABEL_60;
            }

            v11 = *(*(v22 + 8 * v21) + 8);
            if (one-time initialization token for types == -1)
            {
LABEL_22:
              v3 = static ViewBodies.types;
              v23 = *(static ViewBodies.types + 2);
              if (!v23)
              {
                return 1;
              }

              v24 = 0;
              v25 = static ViewBodies.types + 32;
              while (v24 < *(v3 + 2))
              {
                if (*(v11 + 44) <= v2)
                {
                  goto LABEL_42;
                }

                v26 = *(v11 + 32);
                if (!v26)
                {
                  goto LABEL_53;
                }

                v27 = v26 + (v2 << 7);
                v30 = *(v27 + 8);
                v29 = v27 + 8;
                v28 = v30;
                if (!*(v29 + 24))
                {
                  goto LABEL_43;
                }

                if (*(v29 + 16))
                {
                  goto LABEL_54;
                }

                if (!v28)
                {
                  goto LABEL_55;
                }

                if (*v28 == &type metadata for Event.AttributeValue)
                {
                  v31 = *(v25 + 3);
                  v40 = *(v25 + 2);
                  v41[0] = v31;
                  *(v41 + 14) = *(v25 + 62);
                  v32 = *(v25 + 1);
                  v38 = *v25;
                  v39 = v32;
                  v33 = *(v28 + 8);
                  if (v33 >= *(v11 + 84))
                  {
                    __break(1u);
                    goto LABEL_47;
                  }

                  v34 = *(v11 + 72);
                  if (!v34)
                  {
                    goto LABEL_58;
                  }

                  v4 = &v38;
                  result = Attribute.Pattern.match(_:within:)(*(v34 + 312 * v33 + 32), v11);
                  if (result)
                  {
                    return 0;
                  }
                }

                ++v24;
                v25 += 72;
                if (v23 == v24)
                {
                  return 1;
                }
              }

              goto LABEL_41;
            }
          }

          result = swift_once();
          goto LABEL_22;
        }
      }

      ++v9;
      v10 += 72;
      if (v8 == v9)
      {
        return 0;
      }
    }

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
  return result;
}

uint64_t static PlatformViews.subtype(source:within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for platformViewChild != -1)
  {
    v11 = result;
    swift_once();
    result = v11;
  }

  v18[2] = xmmword_2804964B0;
  v19[0] = unk_2804964C0;
  *(v19 + 14) = unk_2804964CE;
  v18[0] = static Attribute.Pattern.platformViewChild;
  v18[1] = unk_2804964A0;
  v16 = xmmword_2804964B0;
  v17[0] = unk_2804964C0;
  *(v17 + 14) = unk_2804964CE;
  v14 = static Attribute.Pattern.platformViewChild;
  v15 = unk_2804964A0;
  if (*(a2 + 84) <= result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5 + 312 * result;
  if (*(v6 + 101))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 92);
  v8 = *(v6 + 100);
  outlined init with copy of Attribute.Pattern(v18, v12);
  LOBYTE(v12[0]) = 1;
  v9 = Attribute.Pattern.match(_:view:within:)(v7, v8, 0x100000000, a2);
  v12[2] = v16;
  v13[0] = v17[0];
  *(v13 + 14) = *(v17 + 14);
  v12[0] = v14;
  v12[1] = v15;
  result = outlined destroy of Attribute.Pattern(v12);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *a3 = v10;
  *(a3 + 8) = 768;
  return result;
}

uint64_t static AccessibilityNodeList.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0xD000000000000018;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.displayName(for:within:) in conformance AccessibilityNodeList(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0xD000000000000018;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static PhaseWriting.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0x6843206573616850;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.displayName(for:within:) in conformance PhaseWriting(uint64_t a1)
{
  if (*(a1 + 9) == 1)
  {
    return 0x6843206573616850;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static EnvironmentWriting.subtype(source:within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a2 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    v5 = *(v4 + 100);
    *a3 = *(v4 + 92);
    *(a3 + 8) = v5;
    *(a3 + 9) = 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static EnvironmentWriting.types.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t specialized static DisplayList.displayName(for:within:)(unsigned int *a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *a1;
    _StringGuts.grow(_:)(20);

    v4 = *(*a2 + 136);
    v11 = v4[4];
    v12 = v4[5];
    v13 = v4[6];
    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    v10 = v4[3];
    v5 = Interpreter.Storage.Types.subscript.getter(v3);
    MEMORY[0x26D69CDB0](v5);

    return 0xD000000000000012;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static PlatformViews.displayName(for:within:)(uint64_t a1)
{
  if (*(a1 + 9) != 3)
  {
    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    return 0x6D726F6674616C50;
  }

  if (*a1 == 2)
  {
    return 0xD000000000000030;
  }

LABEL_6:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static PreferenceList.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (one-time initialization token for anchorTransform != -1)
    {
      swift_once();
    }

    v26[2] = xmmword_280495AD8;
    v27[0] = unk_280495AE8;
    *(v27 + 14) = unk_280495AF6;
    v26[0] = static Attribute.Pattern.anchorTransform;
    v26[1] = unk_280495AC8;
    v22 = xmmword_280495AD8;
    *v23 = unk_280495AE8;
    *&v23[14] = unk_280495AF6;
    v20 = static Attribute.Pattern.anchorTransform;
    v21 = unk_280495AC8;
    outlined init with copy of Attribute.Pattern(v26, v17);
    LOBYTE(v17[0]) = 1;
    v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v28[2] = v22;
    v29[0] = *v23;
    *(v29 + 14) = *&v23[14];
    v28[0] = v20;
    v28[1] = v21;
    outlined destroy of Attribute.Pattern(v28);
    if (v5)
    {
      *&v20 = 0;
      *(&v20 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v18 = 0xD000000000000011;
      v19 = 0x800000026C33C870;
      v6 = *(*a2 + 136);
      v8 = v6[1];
      v7 = v6[2];
      v20 = *v6;
      v21 = v8;
      v22 = v7;
      v9 = v6[6];
      v11 = v6[3];
      v10 = v6[4];
      v24 = v6[5];
      v25 = v9;
      *v23 = v11;
      *&v23[16] = v10;
      v17[3] = v6[3];
      v17[4] = v6[4];
      v17[5] = v6[5];
      v17[6] = v6[6];
      v17[0] = *v6;
      v17[1] = v6[1];
      v17[2] = v6[2];
      outlined init with copy of Interpreter.Storage.Types(&v20, v16);
      v12 = Interpreter.Storage.Types.subscript.getter(v4);
      v14 = v13;
      outlined destroy of Interpreter.Storage.Types(&v20);
      MEMORY[0x26D69CDB0](v12, v14);

      return v18;
    }

    else
    {
      return 0x6E65726566657250;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ResolvedContent.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (one-time initialization token for resolvedImage != -1)
    {
      swift_once();
    }

    v11[2] = xmmword_280495BB0;
    v12[0] = unk_280495BC0;
    *(v12 + 14) = unk_280495BCE;
    v11[0] = static Attribute.Pattern.resolvedImage;
    v11[1] = unk_280495BA0;
    v9 = xmmword_280495BB0;
    *v10 = unk_280495BC0;
    *&v10[14] = unk_280495BCE;
    v7 = static Attribute.Pattern.resolvedImage;
    v8 = unk_280495BA0;
    outlined init with copy of Attribute.Pattern(v11, v13);
    LOBYTE(v13[0]) = 1;
    v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v13[2] = v9;
    v14[0] = *v10;
    *(v14 + 14) = *&v10[14];
    v13[0] = v7;
    v13[1] = v8;
    outlined destroy of Attribute.Pattern(v13);
    if (v5)
    {
      return 0x6F43206567616D49;
    }

    else
    {
      return 0x6E6F432074786554;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static EnvironmentWriting.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    goto LABEL_27;
  }

  v3 = *(a1 + 8);
  v4 = *a1;
  if (one-time initialization token for rootEnvironment != -1)
  {
    swift_once();
  }

  v52[2] = xmmword_280495928;
  v53[0] = unk_280495938;
  *(v53 + 14) = unk_280495946;
  v52[0] = static Attribute.Pattern.rootEnvironment;
  v52[1] = unk_280495918;
  v40 = xmmword_280495928;
  *v41 = unk_280495938;
  *&v41[14] = unk_280495946;
  v38 = static Attribute.Pattern.rootEnvironment;
  v39 = unk_280495918;
  outlined init with copy of Attribute.Pattern(v52, &v30);
  LOBYTE(v30) = 1;
  v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v54[2] = v40;
  v55[0] = *v41;
  *(v55 + 14) = *&v41[14];
  v54[0] = v38;
  v54[1] = v39;
  outlined destroy of Attribute.Pattern(v54);
  if (v5)
  {
    if (one-time initialization token for rootEnvironmentModifierChild != -1)
    {
      swift_once();
    }

    v32 = xmmword_280495D60;
    *v33 = *&dword_280495D70;
    *&v33[14] = *(&qword_280495D78 + 6);
    v30 = static Attribute.Pattern.rootEnvironmentModifierChild;
    v31 = *&dword_280495D50;
    v28 = xmmword_280495D60;
    v29[0] = *&dword_280495D70;
    *(v29 + 14) = *(&qword_280495D78 + 6);
    v26 = static Attribute.Pattern.rootEnvironmentModifierChild;
    v27 = *&dword_280495D50;
    outlined init with copy of Attribute.Pattern(&v30, v50);
    LOBYTE(v50[0]) = 1;
    v6 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
    v40 = v28;
    *v41 = v29[0];
    *&v41[14] = *(v29 + 14);
    v38 = v26;
    v39 = v27;
    outlined destroy of Attribute.Pattern(&v38);
    if (v6)
    {
      return 0xD000000000000010;
    }
  }

  if (one-time initialization token for externalEnvironmentValues != -1)
  {
    swift_once();
  }

  v48[2] = xmmword_280495970;
  v49[0] = unk_280495980;
  *(v49 + 14) = unk_28049598E;
  v48[0] = static Attribute.Pattern.externalEnvironmentValues;
  v48[1] = unk_280495960;
  v40 = xmmword_280495970;
  *v41 = unk_280495980;
  *&v41[14] = unk_28049598E;
  v38 = static Attribute.Pattern.externalEnvironmentValues;
  v39 = unk_280495960;
  outlined init with copy of Attribute.Pattern(v48, &v30);
  LOBYTE(v30) = 1;
  v8 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v50[2] = v40;
  v51[0] = *v41;
  *(v51 + 14) = *&v41[14];
  v50[0] = v38;
  v50[1] = v39;
  outlined destroy of Attribute.Pattern(v50);
  if (v8)
  {
    return 0xD000000000000014;
  }

  if (one-time initialization token for someChildEnvironment != -1)
  {
    swift_once();
  }

  v44[2] = xmmword_280495E38;
  v45[0] = *&dword_280495E48;
  *(v45 + 14) = *(&qword_280495E50 + 6);
  v44[0] = static Attribute.Pattern.someChildEnvironment;
  v44[1] = *&dword_280495E28;
  v40 = xmmword_280495E38;
  *v41 = *&dword_280495E48;
  *&v41[14] = *(&qword_280495E50 + 6);
  v38 = static Attribute.Pattern.someChildEnvironment;
  v39 = *&dword_280495E28;
  outlined init with copy of Attribute.Pattern(v44, &v30);
  LOBYTE(v30) = 1;
  v9 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v46[2] = v40;
  v47[0] = *v41;
  *(v47 + 14) = *&v41[14];
  v46[0] = v38;
  v46[1] = v39;
  outlined destroy of Attribute.Pattern(v46);
  if (v9)
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    *&v30 = 0xD000000000000013;
    *(&v30 + 1) = 0x800000026C33CA50;
LABEL_23:
    v24 = *(*a2 + 136);
    *v41 = v24[3];
    *&v41[16] = v24[4];
    v42 = v24[5];
    v43[0] = v24[6];
    v38 = *v24;
    v39 = v24[1];
    v40 = v24[2];
    v25 = Interpreter.Storage.Types.subscript.getter(v4);
    MEMORY[0x26D69CDB0](v25);

    return v30;
  }

  v10 = *(*a2 + 136);
  v11 = v10[4];
  if (v4 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 4 * v4 + 32);
    if (v12 < *(v10 + 3))
    {
      v13 = *v10;
      if (v13)
      {
        v14 = v13 + 120 * v12;
        *&v41[16] = *(v14 + 64);
        v42 = *(v14 + 80);
        v43[0] = *(v14 + 96);
        *(v43 + 14) = *(v14 + 110);
        v38 = *v14;
        v39 = *(v14 + 16);
        v40 = *(v14 + 32);
        *v41 = *(v14 + 48);
        if (PType.genericParamCount.getter() >= 1)
        {
          *&v38 = 0;
          *(&v38 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v36 = 0xD000000000000013;
          v37 = 0x800000026C33CA30;
          v15 = *(*a2 + 136);
          v17 = v15[1];
          v16 = v15[2];
          v38 = *v15;
          v39 = v17;
          v40 = v16;
          v18 = v15[6];
          v20 = v15[3];
          v19 = v15[4];
          v42 = v15[5];
          v43[0] = v18;
          *v41 = v20;
          *&v41[16] = v19;
          *v33 = v15[3];
          *&v33[16] = v15[4];
          v34 = v15[5];
          v35 = v15[6];
          v30 = *v15;
          v31 = v15[1];
          v32 = v15[2];
          outlined init with copy of Interpreter.Storage.Types(&v38, &v26);
          v21 = Interpreter.Storage.Types.subscript.getter(v4);
          v23 = v22;
          outlined destroy of Interpreter.Storage.Types(&v38);
          MEMORY[0x26D69CDB0](v21, v23);

          return v36;
        }

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        *&v30 = 0xD000000000000013;
        *(&v30 + 1) = 0x800000026C33CA30;
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Layout.displayName(for:within:)(unsigned int *a1, uint64_t a2)
{
  if (*(a1 + 9) == 1)
  {
    v2 = *(*a2 + 136);
    v9 = v2[4];
    v10 = v2[5];
    v11 = v2[6];
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    v8 = v2[3];
    v3 = Interpreter.Storage.Types.subscript.getter(*a1);
    MEMORY[0x26D69CDB0](v3);

    return 0x203A74756F79614CLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ViewList.displayName(for:within:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    goto LABEL_25;
  }

  v3 = *(a1 + 8);
  v4 = *a1;
  if (one-time initialization token for viewList != -1)
  {
    swift_once();
  }

  v59[2] = xmmword_280495E80;
  v60[0] = unk_280495E90;
  *(v60 + 14) = unk_280495E9E;
  v59[0] = static Attribute.Pattern.viewList;
  v59[1] = *algn_280495E70;
  v47 = xmmword_280495E80;
  *v48 = unk_280495E90;
  *&v48[14] = unk_280495E9E;
  v45 = static Attribute.Pattern.viewList;
  v46 = *algn_280495E70;
  outlined init with copy of Attribute.Pattern(v59, &v37);
  LOBYTE(v37) = 1;
  v5 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v61[2] = v47;
  v62[0] = *v48;
  *(v62 + 14) = *&v48[14];
  v61[0] = v45;
  v61[1] = v46;
  outlined destroy of Attribute.Pattern(v61);
  if (v5)
  {
    v6 = 0x73694C2077656956;
    v7 = 0xEA00000000002074;
LABEL_6:
    *&v37 = v6;
    *(&v37 + 1) = v7;
LABEL_7:
    v8 = *(*a2 + 136);
    *v48 = v8[3];
    *&v48[16] = v8[4];
    v49 = v8[5];
    v50[0] = v8[6];
    v45 = *v8;
    v46 = v8[1];
    v47 = v8[2];
    v9 = Interpreter.Storage.Types.subscript.getter(v4);
    MEMORY[0x26D69CDB0](v9);

    return v37;
  }

  if (one-time initialization token for traitWritingModifier != -1)
  {
    swift_once();
  }

  v55[2] = xmmword_280495EC8;
  v56[0] = unk_280495ED8;
  *(v56 + 14) = unk_280495EE6;
  v55[0] = static Attribute.Pattern.traitWritingModifier;
  v55[1] = unk_280495EB8;
  v47 = xmmword_280495EC8;
  *v48 = unk_280495ED8;
  *&v48[14] = unk_280495EE6;
  v45 = static Attribute.Pattern.traitWritingModifier;
  v46 = unk_280495EB8;
  outlined init with copy of Attribute.Pattern(v55, &v37);
  LOBYTE(v37) = 1;
  v11 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v57[2] = v47;
  v58[0] = *v48;
  *(v58 + 14) = *&v48[14];
  v57[0] = v45;
  v57[1] = v46;
  outlined destroy of Attribute.Pattern(v57);
  if (v11)
  {
    strcpy(v53, "Trait Writer ");
    HIWORD(v53[0]) = -4864;
    v12 = *(*a2 + 136);
    v14 = v12[1];
    v13 = v12[2];
    v45 = *v12;
    v46 = v14;
    v47 = v13;
    v15 = v12[6];
    v17 = v12[3];
    v16 = v12[4];
    v49 = v12[5];
    v50[0] = v15;
    *v48 = v17;
    *&v48[16] = v16;
    v40 = v12[3];
    v41 = v12[4];
    v42 = v12[5];
    v43 = v12[6];
    v37 = *v12;
    v38 = v12[1];
    v39 = v12[2];
    outlined init with copy of Interpreter.Storage.Types(&v45, v36);
    v18 = Interpreter.Storage.Types.subscript.getter(v4);
    v20 = v19;
    outlined destroy of Interpreter.Storage.Types(&v45);
    MEMORY[0x26D69CDB0](v18, v20);

    return *&v53[0];
  }

  if (one-time initialization token for traitWritingModifierAddTrait != -1)
  {
    swift_once();
  }

  v51[2] = xmmword_280495F10;
  v52[0] = unk_280495F20;
  *(v52 + 14) = unk_280495F2E;
  v51[0] = static Attribute.Pattern.traitWritingModifierAddTrait;
  v51[1] = unk_280495F00;
  v47 = xmmword_280495F10;
  *v48 = unk_280495F20;
  *&v48[14] = unk_280495F2E;
  v45 = static Attribute.Pattern.traitWritingModifierAddTrait;
  v46 = unk_280495F00;
  outlined init with copy of Attribute.Pattern(v51, &v37);
  LOBYTE(v37) = 1;
  v21 = Attribute.Pattern.match(_:view:within:)(v4, v3, 0x100000000, a2);
  v53[2] = v47;
  v54[0] = *v48;
  *(v54 + 14) = *&v48[14];
  v53[0] = v45;
  v53[1] = v46;
  outlined destroy of Attribute.Pattern(v53);
  if (v21)
  {
    v6 = 0x7257207469617254;
    v7 = 0xED00002072657469;
    goto LABEL_6;
  }

  v22 = *(*a2 + 136);
  v23 = v22[4];
  if (v4 >= *(v23 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v24 = *(v23 + 4 * v4 + 32);
  if (v24 >= *(v22 + 3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = *v22;
  if (!v25)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = v25 + 120 * v24;
  *&v48[16] = *(v26 + 64);
  v49 = *(v26 + 80);
  v50[0] = *(v26 + 96);
  *(v50 + 14) = *(v26 + 110);
  v45 = *v26;
  v46 = *(v26 + 16);
  v47 = *(v26 + 32);
  *v48 = *(v26 + 48);
  if (PType.genericParamCount.getter() < 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    *&v37 = 0xD00000000000001ALL;
    *(&v37 + 1) = 0x800000026C33C990;
    goto LABEL_7;
  }

  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v44, "Trait Writer: ");
  HIBYTE(v44[1]) = -18;
  v27 = *(*a2 + 136);
  v29 = v27[1];
  v28 = v27[2];
  v45 = *v27;
  v46 = v29;
  v47 = v28;
  v30 = v27[6];
  v32 = v27[3];
  v31 = v27[4];
  v49 = v27[5];
  v50[0] = v30;
  *v48 = v32;
  *&v48[16] = v31;
  v40 = v27[3];
  v41 = v27[4];
  v42 = v27[5];
  v43 = v27[6];
  v37 = *v27;
  v38 = v27[1];
  v39 = v27[2];
  outlined init with copy of Interpreter.Storage.Types(&v45, v36);
  v33 = Interpreter.Storage.Types.subscript.getter(v4);
  v35 = v34;
  outlined destroy of Interpreter.Storage.Types(&v45);
  MEMORY[0x26D69CDB0](v33, v35);

  return v44[0];
}

uint64_t sub_26C257928()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t (*Interpreter.Iterator.reading.read())()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  v2 = *v0;
  if (v2 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = *(*(v3 + 8 * v2) + 8);
    return EventTreeStats.count.modify;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t Interpreter.Iterator.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = result;
  v6 = *(v3 + 29);
  v7 = *(v3 + 22);
  v8 = (v7 + 40);
  v9 = *(v7 + 56);
  v94[0] = *(v7 + 40);
  v94[1] = v9;
  v95[0] = *(v7 + 72);
  v10 = (v7 + 72);
  v11 = (v7 + 84);
  v12 = (v7 + 88);
  v13 = 8 * v6;
  *(v95 + 9) = *(v7 + 81);
  v14 = (v7 + 40);
  v15 = (v7 + 72);
  v16 = (v7 + 84);
  v17 = (v7 + 88);
  v60 = v7;
  while (1)
  {
    v18 = *v17;
    if (v6 < *v16)
    {
      v19 = (*v15 + v13);
      if ((v19[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v18)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v94, specialized EvolutionTable.describe(state:));
    }

    v15 = (v18 + 32);
    v16 = (v18 + 44);
    v17 = (v18 + 48);
    v14 = v18;
  }

  if (!*v14)
  {
    goto LABEL_56;
  }

  v20 = *v14 + 24 * *v19;
  v21 = *(*v20 + 184);
  v22 = *(*v20 + 196);
  v58 = *(*v20 + 192);
  result = AttachmentID.init<A>(_:)(v61, a2, a3);
  v59 = a3;
  if (!v22)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v23 = 0;
    goto LABEL_40;
  }

  if (!v21)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v23 = v22 - 1;
  if (*(v21 + 32 * (v22 - 1)) >= result)
  {
    v30 = v22 >> 1;
    v31 = *(v21 + 32 * (v22 >> 1));
    if (v22 != 1 && v31 != result)
    {
      v57 = result;
      if (result >= v31)
      {
        v33 = v30 + 1;
        v30 = v22;
      }

      else
      {
        v33 = 0;
      }

      v36 = specialized Collection<>.binarySearch(for:)(result, v33, v30, v21, v58 | (v22 << 32));
      if (v37)
      {
        v30 = v22 - 1;
      }

      else
      {
        v30 = v36;
      }

      result = v57;
    }

    v38 = (v21 + 32 * v30);
    v23 = v30;
    while (v30 < v22)
    {
      if (result >= *v38)
      {
        goto LABEL_11;
      }

      if (!v23)
      {
        goto LABEL_39;
      }

      --v23;
      v38 -= 8;
      if (v23 > v22)
      {
        __break(1u);
LABEL_39:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_11:
  v24 = v8[1];
  v92[0] = *v8;
  v92[1] = v24;
  v93[0] = v8[2];
  *(v93 + 9) = *(v8 + 41);
  while (1)
  {
    v25 = *v12;
    if (v6 < *v11)
    {
      v26 = (*v10 + v13);
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v6, 0, v92, specialized EvolutionTable.describe(state:));
    }

    v10 = (v25 + 32);
    v11 = (v25 + 44);
    v12 = (v25 + 48);
    v8 = v25;
  }

  if (!*v8)
  {
    goto LABEL_58;
  }

  result = *v8 + 24 * *v26;
  if (v23 >= *(*result + 196))
  {
    goto LABEL_51;
  }

  v34 = *(*result + 184);
  if (v34)
  {
    v35 = (v34 + 32 * v23);
    v27 = *v35;
    v28 = v35[1];
    v29 = v35[2];
    v23 = v35[3];
LABEL_40:
    v39 = (*(*(v59 + 8) + 24))(a2);
    v84 = 0;
    *&v63 = v6 | (v39 << 32);
    *(&v63 + 1) = AttachmentID.Typed.rawValue.getter(v61, a2, v59) << 32;
    *&v64 = v27;
    *(&v64 + 1) = v28;
    *&v65 = v29;
    *(&v65 + 1) = v23;
    LOBYTE(v66) = 1;
    Interpreter.Iterator.init(_:kind:onEvent:)(v60, &v63, 0, 0, v79);
    Interpreter.Iterator.read()();
    v90[0] = v80;
    v90[1] = v81;
    v91[0] = *v82;
    *(v91 + 9) = *&v82[9];
    v40 = v80;
    v41 = *v82;
    result = v83;
    v42 = *&v82[16];
    if (v83 >= *&v82[12])
    {
      goto LABEL_42;
    }

    while (1)
    {
      v43 = (v41 + 8 * v83);
      if ((v43[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_42:
        if (!v42)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v83, 0, v90, specialized EvolutionTable.describe(state:));
        }

        v40 = *v42;
        v41 = v42[4];
        v44 = *(v42 + 11);
        v42 = v42[6];
      }

      while (v83 >= v44);
    }

    if (!v40)
    {
      goto LABEL_57;
    }

    result = v40 + 24 * *v43;
    v45 = *result;
    v46 = *(*result + 96);
    if (v46 != 2)
    {
      v47 = *(v45 + 104);
      v48 = *(v45 + 88);
      v85 = *(v45 + 72);
      v86 = v48;
      v87 = v46 & 0x101;
      v88 = HIDWORD(v46);
      v89 = v47 & 1;
      result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v49 & 1) == 0)
      {
        v50 = v4[5];
        v67 = v4[4];
        v68 = v50;
        v69 = v4[6];
        v51 = *(v4 + 28);
        v52 = v4[1];
        v63 = *v4;
        v64 = v52;
        v53 = v4[3];
        v65 = v4[2];
        v66 = v53;
        v70 = v51;
        v71 = v6;
        v54 = *(v4 + 120);
        v55 = *(v4 + 136);
        v56 = *(v4 + 21);
        v74 = *(v4 + 152);
        v73 = v55;
        v72 = v54;
        v75 = v56;
        v76 = v60;
        v78 = *(v4 + 192);
        v77 = *(v4 + 23);
        (*(v59 + 16))(result);
        return specialized EvolutionTable.deallocate()();
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t specialized EvolutionTable.describe(state:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Interpreter.Iterator.Mode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11InterpreterC8IteratorV4ModeVmMd, &_s21SwiftUITracingSupport11InterpreterC8IteratorV4ModeVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Interpreter.Context;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11InterpreterC7ContextVmMd, &_s21SwiftUITracingSupport11InterpreterC7ContextVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Attachment_Entry;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16Attachment_EntryVmMd, &_s21SwiftUITracingSupport16Attachment_EntryVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 48);
  v21 = *(v1 + 56);
  *(&v22[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  *&v22[0] = &type metadata for Tracepoint_Entry;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16Tracepoint_EntryVmMd, &_s21SwiftUITracingSupport16Tracepoint_EntryVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  LOBYTE(v22[0]) = v21;
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v30 = *a1 - 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v9;
    v33 = *(a1 + 3);
    v34 = v8;
    v10 = specialized InspectionState.wrapDescription<A>(_:)(v3, v4);
    MEMORY[0x26D69CDB0](v10);

    result = MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
    if (!v5)
    {
      v20 = 0xE400000000000000;
      v18 = 1953460082;
      goto LABEL_6;
    }

    v11 = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 3);
    v14 = *(a1 + 40);
    v15 = *(a1 + 41);
    v22[0] = *v5;
    v22[1] = v5[1];
    v23[0] = v5[2];
    *(v23 + 9) = *(v5 + 41);
    v16 = __OFSUB__(v11, 1);
    v17 = v11 - 1;
    if (!v16)
    {
      v24 = v17;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v22);
      v20 = v19;
LABEL_6:
      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
      return 0;
    }
  }

  __break(1u);
  return result;
}

void specialized error #1 <A>() in EvolutionTable.address(of:in:)(unsigned int a1, char a2, uint64_t a3)
{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

{
  specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, a2, a3, specialized EvolutionTable.describe(state:));
}

void specialized error #1 <A>() in EvolutionTable.address(of:in:)(unsigned int a1, char a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C328DC0;
  *(&v18 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v17, "cannot find ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  *&v18 = a1;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  if (a2)
  {
    v9 = 0x6C61636F6C206E69;
  }

  else
  {
    v9 = 0xD000000000000050;
  }

  if (a2)
  {
    v10 = 0xEF2E656C62617420;
  }

  else
  {
    v10 = 0x800000026C33B690;
  }

  MEMORY[0x26D69CDB0](v9, v10);

  MEMORY[0x26D69CDB0](2105376, 0xE300000000000000);
  v12 = v17[0];
  v11 = v17[1];
  v13 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = v12;
  *(v7 + 40) = v11;

  print(_:separator:terminator:)();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C328DC0;
  v18 = xmmword_26C32DAD0;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22 = 512;
  v15 = a4(&v18);
  *(v14 + 56) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  print(_:separator:terminator:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*specialized EvolutionTable.subscript.read(void *a1, unsigned int a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  for (i = v2; ; i = *(i + 48))
  {
    if (*(i + 44) > a2)
    {
      v7 = (*(i + 32) + 8 * a2);
      if ((v7[1] & 1) == 0)
      {
        break;
      }
    }

    if (!*(i + 48))
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a2, 0, v2, specialized EvolutionTable.describe(state:));
    }
  }

  if (*i)
  {
    v8 = *(*i + 24 * *v7);
    *(result + 4) = specialized Strong.subscript.read();
    return UnsafeTree.subjectsMap.readspecialized ;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*specialized EvolutionTable.subscript.modify(void (**a1)(uint64_t a1), unsigned int a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x68uLL);
  }

  *a1 = result;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *(result + 41) = *(v2 + 41);
  *(result + 1) = v7;
  *(result + 2) = v8;
  *result = v6;
  while (1)
  {
    if (*(v2 + 11) > a2)
    {
      v9 = (*(v2 + 4) + 8 * a2);
      if ((v9[1] & 1) == 0)
      {
        break;
      }
    }

    if (!*(v2 + 6))
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a2, 0, result, specialized EvolutionTable.describe(state:));
    }

    v2 = *(v2 + 6);
  }

  if (*v2)
  {
    v10 = *(*v2 + 24 * *v9);
    *(result + 12) = specialized Strong.subscript.modify();
    return EvolutionTable.subscript.modifyspecialized ;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void EvolutionTable.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();

  free(v1);
}

BOOL specialized EvolutionTable.matches(local:remote:_:)(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (((a1 | a2) & 0x100000000) != 0)
  {
    return (a3 & 1) == 0;
  }

  v9 = *v7;
  v10 = *(v7 + 16);
  v11 = *(v7 + 28);
  v12 = *(v7 + 32);
  v13 = *(v7 + 44);
  v14 = *(v7 + 48);
  if (a1 >= v11)
  {
    v4 = a2;
    if (a2 >= v13)
    {
      return 1;
    }

    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    v3 = 8 * a1;
    goto LABEL_19;
  }

  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = 8 * a1;
  v4 = a2;
  if (a2 >= v13)
  {
    goto LABEL_19;
  }

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  a3 = (v10 + v3);
  v6 = v12 + 8 * a2;
  v5 = *(v6 + 4);
  if (*(v10 + v3 + 4))
  {
    if (!*(v6 + 4))
    {
      goto LABEL_19;
    }

    return 1;
  }

LABEL_13:
  if (*a3 != *v6)
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_19:
    v37 = a2;
    v38 = v3;
    v34 = v4;
    v35 = v12;
    v36 = v13;
    v15 = a1;
    v40 = a1;
    v39 = v11;
    v16 = v9;
    v17 = v14;
    _StringGuts.grow(_:)(41);

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v18);

    MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
    v19 = v16;
    v20 = v17;
    if (v40 >= v39)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if ((*(v10 + v38 + 4) & 1) == 0)
      {
        if (!v19)
        {
          __break(1u);
        }

        v22 = *(*(v19 + 24 * *(v10 + v38)) + 16);
        v23 = *v22;
        v24 = v22[1];

        MEMORY[0x26D69CDB0](v23, v24);

        MEMORY[0x26D69CDB0](0x6920686369687720, 0xEF2820746F6E2073);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v25);

        MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
        v26 = v16;
        v27 = v17;
        v28 = v35;
        if (v34 >= v36)
        {
LABEL_29:
          while (v27)
          {
            v26 = *v27;
            v28 = v27[4];
            v30 = *(v27 + 11);
            v27 = v27[6];
            if (v34 < v30)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          v29 = (v28 + 8 * v34);
          if (v29[1])
          {
            goto LABEL_29;
          }

          if (v26)
          {
            while (1)
            {
              v31 = *(*(v26 + 24 * *v29) + 16);
              v32 = *v31;
              v33 = v31[1];

              MEMORY[0x26D69CDB0](v32, v33);

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          __break(1u);
        }

        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v37, 0, v7, specialized EvolutionTable.describe(state:));
      }

      do
      {
LABEL_21:
        if (!v20)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v15, 1, v7, specialized EvolutionTable.describe(state:));
        }

        v19 = *v20;
        v10 = v20[2];
        v21 = *(v20 + 7);
        v20 = v20[6];
      }

      while (v40 >= v21);
    }
  }

  return 1;
}

uint64_t specialized EvolutionTable.deallocate()()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 40);
      if (!v5)
      {
        goto LABEL_14;
      }

      outlined destroy of String(*(*v3 + 40));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      *(v4 + 40) = 0;
      outlined destroy of Tracepoint_Entry(v4);
      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_6:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v6 = v0[2];
    if (v6)
    {
      MEMORY[0x26D69EAB0](v6, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (!v5)
      {
        goto LABEL_14;
      }

      outlined destroy of String(*(*v3 + 16));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      *(v4 + 16) = 0;
      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 3;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_6:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v6 = v0[2];
    if (v6)
    {
      MEMORY[0x26D69EAB0](v6, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

{
  v1 = v0;
  v2 = *(v0 + 3);
  if (v2)
  {
    v3 = *v0;
    v4 = *v0;
    while (v3)
    {
      v5 = *v4;
      v6 = **v4;
      if (!v6)
      {
        goto LABEL_18;
      }

      outlined destroy of String(**v4);
      MEMORY[0x26D69EAB0](v6, -1, -1);
      *v5 = 0;
      v7 = v5[4];
      if (v7)
      {
        MEMORY[0x26D69EAB0](v7, -1, -1);
        v5[4] = 0;
      }

      specialized EvolutionTable.deallocate()();
      specialized EvolutionTable.deallocate()();
      v8 = v5[23];
      if (v8)
      {
        MEMORY[0x26D69EAB0](v8, -1, -1);
        v5[23] = 0;
      }

      MEMORY[0x26D69EAB0](v5, -1, -1);
      *v4 = 0;
      v4 += 3;
      if (!--v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_10:
    if (*v1)
    {
      MEMORY[0x26D69EAB0](*v1, -1, -1);
      *v1 = 0;
    }

    v9 = v1[2];
    if (v9)
    {
      MEMORY[0x26D69EAB0](v9, -1, -1);
      v1[2] = 0;
    }

    result = v1[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v1[4] = 0;
    }
  }

  return result;
}

{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    v3 = *v0;
    while (v2)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (!v5)
      {
        goto LABEL_16;
      }

      outlined destroy of String(*(*v3 + 16));
      MEMORY[0x26D69EAB0](v5, -1, -1);
      v4[2] = 0;
      v6 = v4[15];
      if (v6)
      {
        project #1 <A>(_:) in Interpreter.Iterator.Mode.deallocate()(v6, v4, v4[15], v4[16]);
      }

      MEMORY[0x26D69EAB0](v4, -1, -1);
      *v3 = 0;
      v3 += 24;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_16:
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_8:
    if (*v0)
    {
      MEMORY[0x26D69EAB0](*v0, -1, -1);
      *v0 = 0;
    }

    v7 = v0[2];
    if (v7)
    {
      MEMORY[0x26D69EAB0](v7, -1, -1);
      v0[2] = 0;
    }

    result = v0[4];
    if (result)
    {
      result = MEMORY[0x26D69EAB0](result, -1, -1);
      v0[4] = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall Interpreter.Iterator.AddressMap.deallocate()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v3 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  type metadata accessor for Dictionary();
  type metadata accessor for Strong();

  Strong.deallocate()();
}

uint64_t Interpreter.Iterator.AddressMap.init()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v4 = Dictionary.init()();
  v1 = type metadata accessor for Dictionary();
  v2 = specialized Strong.init(_:)(&v4, v1);

  return v2;
}

uint64_t Interpreter.Iterator.init(_:kind:onEvent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for TraceChunk(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[3];
  v147 = a2[2];
  v148 = v16;
  v17 = a2[4];
  v145 = a2[5];
  v146 = v17;
  v18 = *(a2 + 48);
  v165 = 1;
  v19 = *(a1 + 8);
  if (*(a1 + 32) == 1 && (*(a1 + 24) & 1) == 0)
  {
    goto LABEL_114;
  }

  if (!v19)
  {
    goto LABEL_104;
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    if (v14 >= *(a1 + 132))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v21 = *(a1 + 120);
    if (!v21)
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v20 = *(v21 + 8 * v14);
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 88);
  v135 = (a1 + 88);
  if (v23)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v150 = v22;
  *&v136 = v13;
  v142 = v19;
  v143 = v14;
  v137 = v20;
  v138 = v15;
  v144 = v18;
  v139 = a3;
  v140 = a4;
  v141 = a5;
  v24 = *(a1 + 52);
  v25 = *(a1 + 56);
  v26 = *(a1 + 72);
  v133 = (a1 + 72);
  v134 = (a1 + 40);
  v154 = *(a1 + 64);
  v27 = *(a1 + 68);
  v152 = v25;
  v153 = v27;
  v28 = *(a1 + 80);
  v151 = *(a1 + 84);
  v132 = (a1 + 84);
  v149 = a1;
  v29 = *(a1 + 96);
  v30 = MEMORY[0x277D84F90];
  v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v33 = v32;
  v34 = HIDWORD(v32);
  v35 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v30);
  _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v30);
  v155 = v31;
  v156 = __PAIR64__(v34, v33);
  v157 = v35;
  v163 = 0;
  v164 = v29;
  if (v26)
  {
    v36 = swift_slowAlloc();
    v37 = v151;
    memcpy(v36, v26, 8 * v151);
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = v151;
  }

  v160 = v36;
  v161 = v28;
  v162 = v38;
  v39 = v149;
  v40 = v152;
  if (v152)
  {
    v41 = v154;
    v42 = swift_slowAlloc();
    v43 = v153;
    memcpy(v42, v40, 8 * v153);
  }

  else
  {
    v42 = 0;
    v43 = v153;
    v41 = v154;
  }

  v157 = v42;
  v158 = v41;
  v159 = v43;
  specialized UnsafeArray.growToCapacity(_:)(v24);
  if (v24)
  {
    if (!v150)
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v44 = (v150 + 12);
    while (1)
    {
      LODWORD(v153) = *(v44 - 1);
      LODWORD(v152) = *v44;
      LODWORD(v151) = *(v44 + 1);
      LODWORD(v150) = v44[8];
      v45 = *(v44 - 12);
      v47 = *v45;
      v46 = *(v45 + 8);
      v48 = *(v45 + 16);
      LOBYTE(v202) = 1;
      v154 = v24;
      if (v46)
      {
        v49 = swift_conformsToProtocol2();
        if (v49)
        {
          v50 = project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v46, v46);
          v51 = v46;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v49 = 0;
      }

      v53 = *v47;
      v52 = v47[1];

      v54 = swift_slowAlloc();
      *v54 = v53;
      v54[1] = v52;
      v205[0] = v46;
      v205[1] = v48;
      v205[2] = v54;
      v205[3] = 0;
      v205[4] = 0;
      v206 = 0;
      v207 = 0;
      v208 = 0;
      v209 = v202;
      v210 = 1;
      v212 = 0;
      v213 = 0;
      v211 = 0;
      v214 = 2;
      v215 = 0;
      v216 = v50;
      v217 = v51;
      v218 = v49;
      v219 = 0;
      v220 = 0;
      _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC8IteratorV4ModeV_Tt0B5(v205);
      v56 = v55;
      if (HIDWORD(v156) == v156)
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * HIDWORD(v156));
      }

      v58 = v154;
      v57 = v155;
      if (!v155)
      {
        goto LABEL_102;
      }

      v59 = HIDWORD(v156);
      v60 = v155 + 24 * HIDWORD(v156);
      *v60 = v56;
      *(v60 + 8) = v153;
      *(v60 + 12) = v152;
      *(v60 + 16) = v151;
      *(v60 + 20) = v150;
      v61 = __CFADD__(v59, 1);
      v62 = v59 + 1;
      if (v61)
      {
        __break(1u);
        goto LABEL_99;
      }

      HIDWORD(v156) = v62;
      v44 += 24;
      v24 = (v58 - 1);
      if (!v24)
      {
        v39 = v149;
        goto LABEL_31;
      }
    }
  }

  v57 = v155;
LABEL_31:
  v63 = v156;
  v154 = v157;
  LODWORD(v153) = v158;
  LODWORD(v152) = v159;
  v64 = v160;
  v65 = v162;
  LODWORD(v151) = v161;
  v66 = v163;
  LODWORD(v150) = v164;
  v67 = v144;
  if (v144 != 1 || !v148)
  {
    if (*(v39 + 32))
    {
      v77 = &v169;
      specialized T_Header.init()(&v168);
    }

    else
    {
      v77 = &v167;
      v78 = *(v39 + 24);
      v79 = v156;
      v80 = v144;
      v81 = v163;
      v82 = v160;
      v83 = v162;
      v84 = v136;
      outlined init with copy of TraceChunk(v78, v136);
      v85 = *(*v84 + 32);
      v86 = v84;
      v65 = v83;
      v64 = v82;
      v66 = v81;
      v67 = v80;
      v63 = v79;
      v39 = v149;
      outlined destroy of TraceChunk(v86);
      specialized T_Header.init(loadedFrom:)(v85, &v166);
    }

    v68 = *v77;
    if (v68 == 1)
    {
      goto LABEL_44;
    }

    if (v68 == 2)
    {
      v68 = 0;
LABEL_44:
      v87 = *(v39 + 8);
      if (*(v39 + 32) == 1 && (*(v39 + 24) & 1) == 0)
      {
        goto LABEL_114;
      }

      *&v202 = v57;
      *(&v202 + 1) = v63;
      *&v203 = v154;
      *(&v203 + 1) = __PAIR64__(v152, v153);
      *&v204[0] = v64;
      *(&v204[0] + 1) = __PAIR64__(v65, v151);
      v88 = v57;
      *&v204[1] = v66;
      v89 = v64;
      v90 = v66;
      BYTE8(v204[1]) = v150;
      if (v68 >= v65)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v91 = &v89[8 * v68];
        if ((v91[4] & 1) == 0)
        {
          break;
        }

        do
        {
LABEL_48:
          if (!v90)
          {
            v136 = v87;
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, &v202, specialized EvolutionTable.describe(state:));
          }

          v88 = *v90;
          v89 = v90[4];
          v92 = *(v90 + 11);
          v90 = v90[6];
        }

        while (v68 >= v92);
      }

      if (!v88)
      {
        goto LABEL_109;
      }

      v93 = 0;
      *(*(v88 + 24 * *v91) + 136) = v87;
LABEL_89:
      v170[0] = v57;
      v170[1] = v63;
      v116 = v154;
      v170[2] = v154;
      v171 = v153;
      v172 = v152;
      v173 = v64;
      v174 = v151;
      v175 = v65;
      v117 = v57;
      v176 = v66;
      v118 = v66;
      v177 = v150;
      if (!v152)
      {
        goto LABEL_91;
      }

      while ((v116[1] & 1) != 0)
      {
        do
        {
LABEL_91:
          if (!v118)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v170, specialized EvolutionTable.describe(state:));
          }

          v117 = *v118;
          v116 = v118[2];
          v119 = *(v118 + 7);
          v118 = v118[6];
        }

        while (!v119);
      }

      if (!v117)
      {
        goto LABEL_107;
      }

      v120 = *(*(v117 + 24 * *v116) + 112);
      if (v120)
      {
        v121 = *(v120 + 32);
        v122 = *(v121 + 24);
        v123 = *(v121 + 32);
        v124 = v140;
        *(v121 + 24) = v139;
        *(v121 + 32) = v124;
        result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v122, v123);
        v126 = v165;
        v127 = v141;
        v128 = v138;
        *v141 = v143;
        v127[1] = v128;
        v129 = v148;
        v127[2] = v147;
        v127[3] = v129;
        v130 = v145;
        v127[4] = v146;
        v127[5] = v130;
        *(v127 + 48) = v67;
        v127[7] = v57;
        v127[8] = v63;
        v127[9] = v154;
        LODWORD(v130) = v152;
        *(v127 + 20) = v153;
        *(v127 + 21) = v130;
        v127[11] = v64;
        *(v127 + 24) = v151;
        *(v127 + 25) = v65;
        v127[13] = v66;
        *(v127 + 112) = v150;
        *(v127 + 29) = v68;
        v127[15] = 0;
        *(v127 + 64) = 0;
        v127[17] = v93;
        *(v127 + 36) = -1;
        v127[19] = v137;
        v127[20] = 0;
        *(v127 + 168) = v126;
        *(v127 + 43) = -1;
        v131 = v142;
        v127[22] = v39;
        v127[23] = v131;
        *(v127 + 192) = 1;
        return result;
      }

      goto LABEL_105;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v142 = v156;
  v68 = v143;
  v69 = v133;
  v70 = v134;
  v71 = v134[1];
  v202 = *v134;
  v203 = v71;
  v204[0] = v134[2];
  *(v204 + 9) = *(v134 + 41);
  v72 = 8 * v143;
  v73 = v135;
  v74 = v132;
  while (1)
  {
    v75 = *v73;
    if (v143 < *v74)
    {
      v76 = (*v69 + v72);
      if ((v76[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v75)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v143, 0, &v202, specialized EvolutionTable.describe(state:));
    }

    v69 = (v75 + 32);
    v74 = (v75 + 44);
    v73 = (v75 + 48);
    v70 = v75;
  }

  if (!*v70)
  {
    goto LABEL_110;
  }

  v94 = *v70 + 24 * *v76;
  v95 = *(*v94 + 44);
  v96 = *(*v94 + 32);
  while (v95)
  {
    if (!*(*v94 + 32))
    {
      goto LABEL_103;
    }

    v97 = *v96++;
    v98 = v97;
    v99 = *(&v97 + 1);
    --v95;
    if (v97 - 1 < v148 && v99 > v148)
    {
      goto LABEL_67;
    }
  }

  v98 = *(v149 + 8);
  if (*(v149 + 32) == 1 && (*(v149 + 24) & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_67:
  v194[0] = v57;
  v194[1] = v142;
  v194[2] = v154;
  v195 = v153;
  v196 = v152;
  v197 = v160;
  v198 = v151;
  v199 = v162;
  v101 = v163;
  v200 = v163;
  v102 = v160;
  v103 = v57;
  v201 = v150;
  if (v143 >= v162)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v104 = &v102[v72];
    if ((v104[4] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_69:
      if (!v101)
      {
        v136 = v98;
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v143, 0, v194, specialized EvolutionTable.describe(state:));
      }

      v103 = *v101;
      v102 = v101[4];
      v105 = *(v101 + 11);
      v101 = v101[6];
    }

    while (v143 >= v105);
  }

  if (!v103)
  {
    goto LABEL_111;
  }

  *(*(v103 + 24 * *v104) + 136) = v98;
  v186[0] = v57;
  v186[1] = v142;
  v186[2] = v154;
  v187 = v153;
  v188 = v152;
  v189 = v64;
  v190 = v151;
  v191 = v65;
  v106 = v66;
  v192 = v66;
  v107 = v64;
  v108 = v57;
  v193 = v150;
  if (v68 >= v65)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v109 = &v107[v72];
    if ((v109[4] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_76:
      if (!v106)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, v186, specialized EvolutionTable.describe(state:));
      }

      v108 = *v106;
      v107 = v106[4];
      v110 = *(v106 + 11);
      v106 = v106[6];
    }

    while (v68 >= v110);
  }

  if (v108)
  {
    *(*(v108 + 24 * *v109) + 68) = v147;
    v178[0] = v57;
    v178[1] = v142;
    v178[2] = v154;
    v179 = v153;
    v180 = v152;
    v181 = v64;
    v182 = v151;
    v183 = v65;
    v111 = v66;
    v184 = v66;
    v112 = v64;
    v113 = v57;
    v185 = v150;
    if (v68 >= v65)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v114 = &v112[v72];
      if ((v114[4] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_83:
        if (!v111)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v68, 0, v178, specialized EvolutionTable.describe(state:));
        }

        v113 = *v111;
        v112 = v111[4];
        v115 = *(v111 + 11);
        v111 = v111[6];
      }

      while (v68 >= v115);
    }

    v39 = v149;
    v67 = v144;
    v63 = v142;
    if (v113)
    {
      v93 = v145;
      *(*(v113 + 24 * *v114) + 48) = v146;
      v142 = v148;
      goto LABEL_89;
    }

    goto LABEL_113;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall Interpreter.Iterator.read()()
{
  v3 = v0;
  v4 = *(v0 + 22);
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  CFAbsoluteTimeGetCurrent();
  if (v0[48])
  {
    v9 = 0;
    v1 = (v0 + 8);
    v10 = v0 + 16;
  }

  else
  {
    v11 = *v0;
    if (v11 >= *(v4 + 33))
    {
      __break(1u);
      goto LABEL_65;
    }

    add_explicit = *(v4 + 15);
    if (!add_explicit)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v9 = *(add_explicit + 8 * v11);
    v10 = v0 + 16;
    v1 = (v0 + 8);
    if ((*(v0 + 4) & 1) == 0)
    {
      v12 = *v1;
      add_explicit = atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
      if (v12 != add_explicit)
      {
        goto LABEL_8;
      }
    }
  }

  if ((v0[129] & 1) == 0)
  {
    v14 = v0[48];
    if (v0[48])
    {
      goto LABEL_14;
    }

    add_explicit = *v0;
    if ((*v0 & 0xFF00) != 0x400)
    {
      goto LABEL_14;
    }

    if (*v0 < *(v4 + 29))
    {
      v15 = *(v4 + 13);
      if (!v15)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v16 = *&v15[8 * *v0] + 8;
      Snapshot.reset()();
      v14 = v3[48];
LABEL_14:
      if (v14)
      {
        goto LABEL_15;
      }

      if ((*v10 & 1) == 0)
      {
        v34 = *v1;
        add_explicit = atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
        if (v34 != add_explicit)
        {
          goto LABEL_8;
        }

        if (v3[48])
        {
          goto LABEL_15;
        }
      }

      v24 = *v3;
      if (v24 < *(v4 + 29))
      {
        v25 = *(v4 + 13);
        if (!v25)
        {
          goto LABEL_78;
        }

        v26 = *(*(*&v25[8 * v24] + 8) + 8);
        v27 = *(v26 + 16);
        if (*(v26 + 32) != 1 || v27 == 0)
        {
LABEL_15:
          v17 = *(v3 + 23);
          if (v5)
          {
            v18 = v17 >= v5;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && v17 < v6)
          {
            do
            {
              if (!v3[48] && (*v10 & 1) == 0)
              {
                v23 = *(v3 + 1);
                if (v23 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
                {
                  break;
                }
              }

              if (v3[129])
              {
                break;
              }

              *(v3 + 15) = v17;
              if (**(v3 + 22))
              {
                v21 = T_TracepointID.model(within:);
                v22 = T_TracepointID.describe(state:);
              }

              else
              {
                v21 = T_TracepointIDV0.model(within:);
                v22 = T_TracepointIDV0.describe(state:);
              }

              _s21SwiftUITracingSupport16TracepointIDLikePAAE5model6withinyAA11InterpreterC8IteratorVz_tFZSo02T_D4IDV0a_Tt0g5Tm(v3, v21, v22);
              v17 = *(v3 + 23);
              if (v17 < v5)
              {
                break;
              }
            }

            while (v17 < v6);
          }

          if (!v3[48] && (*v10 & 1) == 0 && (v20 = *(v3 + 1), v20 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed)) || (v3[129] & 1) != 0)
          {
LABEL_29:
            if (!v3[48] && (*v10 & 1) == 0)
            {
              atomic_fetch_add_explicit(v9, 0, memory_order_relaxed);
            }

            CFAbsoluteTimeGetCurrent();
            v13 = v3[48];
            if (v3[48])
            {
              if (v13 == 1)
              {
                return v13 & 1;
              }
            }

            else
            {
              if (v3[1] << 8 == 1280)
              {
                LOBYTE(v13) = 1;
                return v13 & 1;
              }

              if ((*v10 & 1) == 0)
              {
                v35 = *v1;
                if (v35 != atomic_fetch_add_explicit(v9, 0, memory_order_relaxed))
                {
                  goto LABEL_8;
                }
              }
            }

            LOBYTE(v13) = v3[129] ^ 1;
            return v13 & 1;
          }

          if (v5)
          {
            if (v17 == v6)
            {
              goto LABEL_29;
            }

            goto LABEL_71;
          }

LABEL_70:
          __break(1u);
LABEL_71:
          v58 = *v3;
          v37 = *(v1 + 16);
          *&v66[8] = *v1;
          v67 = v37;
          v68 = *(v1 + 32);
          v38 = v3[48];
          *(&v69 + 1) = *(v3 + 49);
          HIDWORD(v69) = *(v3 + 13);
          v2 = *(v3 + 7);
          v89 = *(v3 + 4);
          v9 = *(v3 + 11);
          v90 = *(v3 + 10);
          LODWORD(v10) = *(v3 + 25);
          LODWORD(v56) = *(v3 + 24);
          v4 = *(v3 + 13);
          LODWORD(v55) = v3[112];
          v78 = *(v3 + 113);
          v79 = v3[115];
          v57 = *(v3 + 29);
          v81 = *(v3 + 120);
          v59 = *(v3 + 17);
          *&v60 = 0;
          v39 = *(v3 + 10);
          v83 = *(v3 + 9);
          v84 = v39;
          v40 = *(v3 + 22);
          v54 = *(v3 + 23);
          v41 = v3[192];
          *(&v60 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(284);
          v88 = v60;
          MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
          v42 = v58;
          *v66 = v58;
          if (v38)
          {
            v42 = 0;
          }

          LODWORD(v53) = v38;
          LOBYTE(v69) = v38;
          v70 = v2;
          v71 = v89;
          v72 = v90;
          v73 = v9;
          v74 = v56;
          v75 = v10;
          v76 = v4;
          v77 = v55;
          v80 = v57;
          v82 = v59;
          v43 = v54;
          v85 = v40;
          v86 = v54;
          v87 = v41;
          v60 = xmmword_26C32DAD0;
          v61 = 0;
          v62 = 0;
          v63 = v40;
          v52 = v40;
          v64 = v42;
          v65 = 1;
          v44 = Interpreter.Iterator.describe(state:)(&v60);
          MEMORY[0x26D69CDB0](v44);

          MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33CB80);
          *v66 = v43;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D69CDB0](0x697469736F702820, 0xEE00202D20296E6FLL);
          *v66 = v6;
          _print_unlocked<A, B>(_:_:)();
          v45 = MEMORY[0x26D69CDB0](0x3D2029666F652820, 0xE900000000000020);
          if (__OFSUB__(0, &v6[-v43]))
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          *v66 = v43 - v6;
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v46);

          MEMORY[0x26D69CDB0](0xD0000000000000BBLL, 0x800000026C33CBA0);
          *v66 = v59;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x26D69CDB0](v47);

          v3 = 0xD000000000000012;
          v45 = MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33CC60);
          v25 = v53;
          if (v53)
          {
            goto LABEL_79;
          }

          v25 = v58;
          if (v58 >= *(v52 + 116))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          add_explicit = *(v52 + 104);
          if (add_explicit)
          {
            goto LABEL_81;
          }

          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v53 = v1;
        v57 = &v52;
        v29 = *(v26 + 24);
        v59 = *(v27 - 8);
        v30 = *(v59 + 64);
        v58 = v24;
        MEMORY[0x28223BE20](v7);
        v54 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
        v55 = v31;
        v2 = &v52 - v54;
        v32 = (*(v31 + 16))(v27);
        v56 = &v52;
        MEMORY[0x28223BE20](v32);
        v33 = &v52 - v54;
        (*(v59 + 16))(&v52 - v54, v2, v27);
        v1 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(v33, v27, v55);
        (*(v59 + 8))(v2, v27);
        add_explicit = v58;
        if (v58 < *(v4 + 29))
        {
          v25 = *(v4 + 13);
          if (!v25)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            *v66 = *(*(*(add_explicit + 8 * v25) + 8) + 16);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](v3 + 1, 0x800000026C33CC80);
            *v66 = v2;
            *&v66[8] = v89;
            *&v67 = v90;
            *(&v67 + 1) = v9;
            v68 = __PAIR64__(v10, v56);
            v69 = v4;
            LOBYTE(v70) = v55;
            v45 = v57;
            v48 = v57;
            if (v57 >= v10)
            {
              goto LABEL_83;
            }

LABEL_82:
            v49 = &v9[v48];
            if ((v9[v48] & 0x100000000) != 0)
            {
LABEL_83:
              while (v4)
              {
                v2 = *v4;
                v9 = *(v4 + 4);
                v50 = *(v4 + 11);
                v4 = *(v4 + 6);
                if (v57 < v50)
                {
                  goto LABEL_82;
                }
              }

LABEL_90:
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v45, 0, v66, specialized EvolutionTable.describe(state:));
            }

            if (v2)
            {
              while (1)
              {
                *&v60 = *(*&v2[24 * *v49] + 32);
                v51 = dispatch thunk of CustomStringConvertible.description.getter();
                MEMORY[0x26D69CDB0](v51);

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_88;
          }

          *(*(*&v25[8 * v58] + 8) + 216) = v1;
          v1 = v53;
          goto LABEL_15;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_8:
  LOBYTE(v13) = 0;
  return v13 & 1;
}

void (*Interpreter.Iterator.mode.read(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *v3 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v1 + 88);
  *(v3 + 41) = *(v1 + 97);
  *(v3 + 96) = specialized EvolutionTable.subscript.read((v3 + 64), *(v1 + 116));
  return Interpreter.Iterator.mode.read;
}

void Interpreter.Iterator.mode.read(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();

  free(v1);
}

uint64_t Interpreter.Iterator.AttachmentBuffer.buffer.getter()
{
  result = *v0;
  if (*(v0 + 25))
  {
    if (result)
    {
      v2 = v0[1] - result;
    }

    else
    {
      v2 = 0;
    }

    v3 = v0[2];
    if (__OFSUB__(v2, v3))
    {
      goto LABEL_13;
    }

    if (v2 != v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }
  }

  if (result == -1)
  {
    return 0;
  }

  if (result)
  {
    v4 = v0[1];
  }

  return result;
}

uint64_t (*Interpreter.Iterator.reading.modify())()
{
  if (v0[48])
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 22);
  v2 = *v0;
  if (v2 >= *(v1 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    result = EventTreeStats.count.modify;
    v5 = *(v3 + 8 * v2) + 8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*Interpreter.Iterator.swiftUI.read(uint64_t (**a1)()))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x39uLL);
  }

  *a1 = result;
  v4 = (v1 + 56);
  v5 = *(v1 + 72);
  *result = *(v1 + 56);
  *(result + 1) = v5;
  *(result + 2) = *(v1 + 88);
  *(result + 41) = *(v1 + 97);
  v6 = (v1 + 72);
  v7 = (v1 + 84);
  v8 = (v1 + 104);
  while (1)
  {
    v9 = *v8;
    if (*v7 > 1u)
    {
      v10 = *v6;
      if ((*(v10 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, result, specialized EvolutionTable.describe(state:));
    }

    v6 = (v9 + 16);
    v7 = (v9 + 28);
    v8 = (v9 + 48);
    v4 = v9;
  }

  v11 = *v4;
  if (v11)
  {
    result = (v11 + 24 * *(v10 + 8));
    if (*(*result + 112))
    {
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Iterator.debugMode.getter()
{
  v1 = (v0 + 56);
  v2 = *(v0 + 72);
  v12[0] = *(v0 + 56);
  v12[1] = v2;
  v13[0] = *(v0 + 88);
  *(v13 + 9) = *(v0 + 97);
  v3 = (v0 + 88);
  v4 = (v0 + 100);
  v5 = (v0 + 104);
  result = *(v0 + 116);
  v7 = *(v0 + 176);
  v8 = *(v0 + 192);
  while (1)
  {
    v9 = *v5;
    if (result < *v4)
    {
      v10 = (*v3 + 8 * result);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v12, specialized EvolutionTable.describe(state:));
    }

    v3 = (v9 + 32);
    v4 = (v9 + 44);
    v5 = (v9 + 48);
    v1 = v9;
  }

  v11 = *v1;
  if (v11)
  {
    if (((*(*(v11 + 24 * *v10) + 48) >= 0) & v8) == 1)
    {
      return *(v7 + 160);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Interpreter.Iterator.mode.modify(uint64_t *a1))()
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
  *(v3 + 32) = specialized EvolutionTable.subscript.modify(v3, *(v1 + 116));
  return UnsafeTree.storage.modify;
}

uint64_t Interpreter.Iterator.Mode.add(context:)(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(result + 8);
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (!v1[14])
      {
        v4 = result;
        result = project #1 <A>(_:) in Interpreter.Iterator.Mode.add(context:)(v2, v2);
        v1[14] = result;
        v5 = *(v4 + 16);
        *v1 = v2;
        v1[1] = v5;
        v1[15] = v2;
        v1[16] = v4;
      }
    }
  }

  return result;
}

uint64_t *Interpreter.Iterator.iterate<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = (*(*(a2 + 8) + 72))();
  v8 = result;
  v9 = *(v4 + 116);
  v10 = *(v4 + 176);
  v11 = (v10 + 40);
  v12 = *(v10 + 56);
  v81[0] = *(v10 + 40);
  v81[1] = v12;
  v82[0] = *(v10 + 72);
  *(v82 + 9) = *(v10 + 81);
  v13 = (v10 + 72);
  v14 = (v10 + 84);
  v15 = (v10 + 88);
  v16 = 8 * v9;
  while (1)
  {
    v17 = *v15;
    if (v9 < *v14)
    {
      v18 = (*v13 + v16);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v81, specialized EvolutionTable.describe(state:));
    }

    v13 = (v17 + 32);
    v14 = (v17 + 44);
    v15 = (v17 + 48);
    v11 = v17;
  }

  v19 = *v11;
  if (!v19)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  result = (v19 + 24 * *v18);
  v20 = *result;
  v21 = (*result + 56);
  v22 = *(*result + 72);
  v79[0] = *v21;
  v79[1] = v22;
  v80[0] = *(v20 + 88);
  *(v80 + 9) = *(v20 + 97);
  v23 = (v20 + 72);
  v24 = (v20 + 84);
  v25 = (v20 + 104);
  while (1)
  {
    v26 = *v25;
    if (v8 < *v24)
    {
      v27 = (*v23 + 8 * v8);
      if ((v27[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v26)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v8, 1, v79, specialized EvolutionTable.describe(state:));
    }

    v23 = (v26 + 16);
    v24 = (v26 + 28);
    v25 = (v26 + 48);
    v21 = v26;
  }

  v28 = *v21;
  if (!v28)
  {
    goto LABEL_73;
  }

  result = (v28 + 24 * *v27);
  if (*(*result + 64))
  {
    v69 = a1;
    v70 = *(*result + 64);
    v68 = a3;
    v71 = v4;
    v29 = v4 + 56;
    v31 = *(v4 + 72);
    v77[0] = *(v4 + 56);
    v30 = *&v77[0];
    v77[1] = v31;
    *(v78 + 9) = *(v4 + 97);
    v33 = (v4 + 88);
    v32 = *(v4 + 88);
    v34 = *(v4 + 88);
    v36 = (v4 + 100);
    v35 = *(v4 + 100);
    v38 = (v29 + 48);
    v37 = *(v29 + 48);
    v78[0] = v34;
    v72 = *(v29 + 128);
    v39 = *&v77[0];
    v40 = v32;
    v41 = v37;
    if (v9 >= v35)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v42 = (v40 + v16);
      if ((v42[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_18:
        if (!v41)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v77, specialized EvolutionTable.describe(state:));
        }

        v39 = *v41;
        v40 = v41[4];
        v43 = *(v41 + 11);
        v41 = v41[6];
      }

      while (v9 >= v43);
    }

    if (!v39)
    {
      goto LABEL_74;
    }

    result = (v39 + 24 * *v42);
    v46 = *(*result + 136);
    v47 = *(*result + 144);
    if (v9 >= v35)
    {
      goto LABEL_29;
    }

    while ((*(v32 + v16 + 4) & 1) != 0)
    {
      do
      {
LABEL_29:
        if (!v37)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v77, specialized EvolutionTable.describe(state:));
        }

        v30 = *v37;
        v32 = v37[4];
        v48 = *(v37 + 11);
        v37 = v37[6];
      }

      while (v9 >= v48);
    }

    if (!v30)
    {
      goto LABEL_75;
    }

    result = (v30 + 24 * *(v32 + 8 * v9));
    v49 = *(v29 + 128);
    v50 = *(*result + 136);
    if (v50)
    {
      if (v46)
      {
        v51 = v47 - v46;
      }

      else
      {
        v51 = 0;
      }

      v52 = &v72[-v50];
      v53 = __OFSUB__(v51, &v72[-v50]);
      v54 = v51 - &v72[-v50];
      if (v54 < 0 != v53)
      {
        __break(1u);
      }

      else if ((v52 & 0x8000000000000000) == 0)
      {
        if (v54 >= v70)
        {
          v54 = v70;
        }

        v55 = &v72[v54];
        *(v71 + 184) = &v72[v54];
        v56 = *(v29 + 16);
        v75[0] = *v29;
        v75[1] = v56;
        v76[0] = *(v29 + 32);
        *(v76 + 9) = *(v29 + 41);
        v57 = (v29 + 48);
        v58 = v36;
        v59 = v33;
        for (i = v29; ; i = v61)
        {
          v61 = *v57;
          if (v9 < *v58)
          {
            v62 = (*v59 + v16);
            if ((v62[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v61)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v75, specialized EvolutionTable.describe(state:));
          }

          v59 = (v61 + 32);
          v58 = (v61 + 44);
          v57 = (v61 + 48);
        }

        if (*i)
        {
          result = (*i + 24 * *v62);
          v63 = *(*result + 136);
          if (v63)
          {
            if (v55 >= v63 && v55 < *(*result + 144))
            {
              goto LABEL_63;
            }
          }

          v65 = *(v29 + 16);
          v73[0] = *v29;
          v73[1] = v65;
          v74[0] = *(v29 + 32);
          *(v74 + 9) = *(v29 + 41);
          while (1)
          {
            v66 = *v38;
            if (v9 < *v36)
            {
              v67 = (*v33 + v16);
              if ((v67[1] & 1) == 0)
              {
                break;
              }
            }

            if (!v66)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v73, specialized EvolutionTable.describe(state:));
            }

            v33 = (v66 + 32);
            v36 = (v66 + 44);
            v38 = (v66 + 48);
            v29 = v66;
          }

          if (*v29)
          {
            *(*(*v29 + 24 * *v67) + 41) = 1;
LABEL_63:

            return closure #1 in Interpreter.Iterator.iterate<A>()(v72, v55, v69, v68);
          }

LABEL_77:
          __break(1u);
          return result;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  v44 = *(v4 + 184);
  if (*(*(a1 - 8) + 64) < 1)
  {

    return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, v44, a1, a3);
  }

  else
  {
    v45 = *(v4 + 184);

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v45, v45, a1, a3);
  }
}

void Interpreter.Iterator.swiftUI.getter(_OWORD *a1@<X8>)
{
  v3 = (v1 + 56);
  v4 = *(v1 + 72);
  v15[0] = *(v1 + 56);
  v15[1] = v4;
  v16[0] = *(v1 + 88);
  *(v16 + 9) = *(v1 + 97);
  v5 = (v1 + 72);
  v6 = (v1 + 84);
  v7 = (v1 + 104);
  while (1)
  {
    v8 = *v7;
    if (*v6 >= 2u)
    {
      v9 = *v5;
      if ((*(v9 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v8)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v15, specialized EvolutionTable.describe(state:));
    }

    v5 = (v8 + 16);
    v6 = (v8 + 28);
    v7 = (v8 + 48);
    v3 = v8;
  }

  v10 = *v3;
  if (v10)
  {
    v11 = *(*(v10 + 24 * *(v9 + 8)) + 112);
    if (v11)
    {
      v12 = v11[5];
      a1[4] = v11[4];
      a1[5] = v12;
      a1[6] = v11[6];
      *(a1 + 109) = *(v11 + 109);
      v13 = v11[1];
      *a1 = *v11;
      a1[1] = v13;
      v14 = v11[3];
      a1[2] = v11[2];
      a1[3] = v14;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void (*Interpreter.Iterator.swiftUI.modify(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x39uLL);
  }

  *a1 = result;
  v4 = (v1 + 56);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  *(result + 41) = *(v1 + 97);
  *(result + 1) = v6;
  *(result + 2) = v7;
  *result = v5;
  v8 = (v1 + 72);
  v9 = (v1 + 84);
  v10 = (v1 + 104);
  while (1)
  {
    v11 = *v10;
    if (*v9 > 1u)
    {
      v12 = *v8;
      if ((*(v12 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, result, specialized EvolutionTable.describe(state:));
    }

    v8 = (v11 + 16);
    v9 = (v11 + 28);
    v10 = (v11 + 48);
    v4 = v11;
  }

  v13 = *v4;
  if (v13)
  {
    result = (v13 + 24 * *(v12 + 8));
    if (*(*result + 112))
    {
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*Interpreter.Iterator.control.read(void (**a1)(void **a1)))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x79uLL);
  }

  v4 = result;
  *a1 = result;
  v5 = (v1 + 56);
  v6 = *(v1 + 72);
  *(result + 4) = *(v1 + 56);
  *(result + 5) = v6;
  *(result + 6) = *(v1 + 88);
  *(result + 105) = *(v1 + 97);
  v7 = (v1 + 72);
  v8 = (v1 + 84);
  v9 = (v1 + 104);
  while (1)
  {
    v10 = *v9;
    if (*v8)
    {
      v11 = *v7;
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, result + 64, specialized EvolutionTable.describe(state:));
    }

    v7 = (v10 + 16);
    v8 = (v10 + 28);
    v9 = (v10 + 48);
    v5 = v10;
  }

  v12 = *v5;
  if (v12)
  {
    result = (v12 + 24 * *v11);
    v13 = *(*result + 112);
    if (v13)
    {
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      *(v4 + 2) = v13[2];
      *(v4 + 3) = v16;
      *v4 = v14;
      *(v4 + 1) = v15;
      return Snapshot.subscript.read;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void Interpreter.Iterator.method.getter(char *a1@<X8>)
{
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v2 = 5;
    }

    else
    {
      v2 = 1;
    }

    *a1 = v2;
  }

  else
  {
    *a1 = *(v1 + 1);
  }
}

uint64_t Interpreter.Iterator.endInflight(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[48];
  v5 = *(v1 + 72);
  v215[0] = *(v1 + 56);
  v215[1] = v5;
  v216[0] = *(v1 + 88);
  *(v216 + 9) = *(v1 + 97);
  v6 = (v1 + 72);
  v7 = v1 + 84;
  v8 = (v1 + 104);
  v9 = *(v1 + 22);
  for (i = (v1 + 56); ; i = v11)
  {
    v11 = *v8;
    if (*v7)
    {
      v12 = *v6;
      if ((v12[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v11)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v215, specialized EvolutionTable.describe(state:));
    }

    v6 = (v11 + 16);
    v7 = (v11 + 28);
    v8 = (v11 + 48);
  }

  v13 = *i;
  if (!v13)
  {
    goto LABEL_228;
  }

  v14 = *(*(v13 + 24 * *v12) + 112);
  if (!v14)
  {
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    _StringGuts.grow(_:)(51);
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v203 = xmmword_26C32DAD0;
    LOBYTE(v204) = 1;
    *(&v204 + 1) = 0;
    *&v205[0] = 0;
    WORD4(v205[0]) = 512;
    v199 = Event.describe(state:)(&v203);
    MEMORY[0x26D69CDB0](v199);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = *(*(v14 + 32) + 8);
  v16 = *(v15 + 16);
  v17 = (v15 + 48 * v16 - 16);
  do
  {
    if (v16 <= 0)
    {
      goto LABEL_190;
    }

    if (v16-- > *(v15 + 16))
    {
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    if (v4)
    {
      goto LABEL_191;
    }

    if (*(v9 + 116) <= v3)
    {
      goto LABEL_154;
    }

    v18 = *(v9 + 104);
    if (!v18)
    {
      goto LABEL_192;
    }

    v19 = *v17;
    v20 = *(*(v18 + 8 * v3) + 8);
    if (v19 >= *(v20 + 44))
    {
      goto LABEL_155;
    }

    v21 = *(v20 + 32);
    if (!v21)
    {
      goto LABEL_193;
    }

    v22 = (v21 + (v19 << 7));
    v23 = v22[5];
    v17 -= 12;
    v214[6] = v22[4];
    v214[7] = v23;
    v24 = v22[7];
    v214[8] = v22[6];
    v214[9] = v24;
    v25 = v22[1];
    v214[2] = *v22;
    v214[3] = v25;
    v26 = v22[3];
    v214[4] = v22[2];
    v214[5] = v26;
  }

  while (!Event.contains<A>(noun:)(a1, a1));
  v27 = *(v1 + 40);
  v28 = *(v1 + 43);
  v29 = *(v9 + 104);
  if (!v27 && v28 == -1)
  {
    v30 = v1 + 56;
    if (v1[48])
    {
      goto LABEL_206;
    }

    goto LABEL_33;
  }

  v30 = v1 + 56;
  if (v1[48])
  {
    goto LABEL_225;
  }

  v31 = *v1;
  if (v31 >= *(v9 + 116))
  {
    goto LABEL_187;
  }

  if (!v29)
  {
    goto LABEL_226;
  }

  v32 = *(*(v29 + 8 * v31) + 8);
  if (v19 >= *(v32 + 44))
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v33 = *(v32 + 32);
  if (!v33)
  {
    goto LABEL_227;
  }

  v34 = v33 + (v19 << 7);
  v36 = *(v34 + 68);
  v35 = v34 + 68;
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v35 + 12) == -1;
  }

  if (v37)
  {
    v38 = *(v1 + 41);
    v39 = v1[168];
    *v35 = v27;
    *(v35 + 4) = v38;
    *(v35 + 8) = v39;
    *(v35 + 12) = v28;
    v29 = *(v9 + 104);
    if (v1[48])
    {
      goto LABEL_206;
    }
  }

LABEL_33:
  v40 = *(v9 + 116);
  v41 = *v1;
  if (v41 >= v40)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (!v29)
  {
    goto LABEL_200;
  }

  v42 = *(*(v29 + 8 * v41) + 8);
  if (v19 >= *(v42 + 44))
  {
    goto LABEL_161;
  }

  v43 = *(v42 + 32);
  if (!v43)
  {
    goto LABEL_201;
  }

  v44 = v43 + (v19 << 7);
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v48 = *(v44 + 25);
  v51 = v44 + 28;
  v50 = *(v44 + 28);
  v49 = *(v51 + 4);
  LOBYTE(v206) = v47;
  v37 = v48 == 0;
  v52 = 256;
  if (v37)
  {
    v52 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV6UpdateV_Ttgq5(v45, v46, v52 | (v50 << 32) | v47, v49))
  {
    if (v1[48])
    {
      goto LABEL_207;
    }

    v53 = *v1;
    if (v53 < v40)
    {
      v54 = *(*(v29 + 8 * v53) + 8);
      v55 = v30[1];
      v213[0] = *v30;
      v213[1] = v55;
      v214[0] = v30[2];
      *(v214 + 9) = *(v30 + 41);
      v56 = v1 + 100;
      v57 = *(v1 + 29);
      v58 = v30;
      v59 = (v1 + 104);
      v60 = v1 + 88;
      while (1)
      {
        v61 = *v59;
        if (v57 < *v56)
        {
          v62 = (*v60 + 8 * v57);
          if ((v62[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v61)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v57, 0, v213, specialized EvolutionTable.describe(state:));
        }

        v60 = (v61 + 32);
        v56 = (v61 + 44);
        v59 = (v61 + 48);
        v58 = v61;
      }

      if (!*v58)
      {
        goto LABEL_234;
      }

      if (v19 < *(v54 + 44))
      {
        v63 = *(v54 + 32);
        if (!v63)
        {
          goto LABEL_208;
        }

        v64 = *(*(*v58 + 24 * *v62) + 32);
        v65 = v63 + (v19 << 7);
        v67 = *(v65 + 8);
        v66 = *(v65 + 16);
        v68 = *(v65 + 24);
        v69 = *(v65 + 25);
        v72 = v65 + 28;
        v70 = *(v65 + 28);
        v71 = *(v72 + 4);
        LOBYTE(v206) = v68;
        v37 = v69 == 0;
        v73 = 256;
        if (v37)
        {
          v73 = 0;
        }

        v74 = v73 | (v70 << 32);
        updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(v67, v66, v74 | v68, v71);
        LOBYTE(v206) = v68;
        v76 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v67, v66, v74 | v68, v71);
        if (v64 >= v76->Kind)
        {
          v76->Description = v64;
          goto LABEL_57;
        }

LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

LABEL_57:
  if (v1[48])
  {
    goto LABEL_202;
  }

  v77 = *(v9 + 116);
  v78 = *v1;
  if (v78 >= v77)
  {
    goto LABEL_162;
  }

  v79 = *(v9 + 104);
  if (!v79)
  {
    goto LABEL_203;
  }

  v80 = *(*(v79 + 8 * v78) + 8);
  if (v19 >= *(v80 + 44))
  {
    goto LABEL_163;
  }

  v81 = *(v80 + 32);
  if (!v81)
  {
    goto LABEL_204;
  }

  v82 = v81 + (v19 << 7);
  v83 = *(v82 + 8);
  v84 = *(v82 + 16);
  v85 = *(v82 + 24);
  v86 = *(v82 + 25);
  v89 = v82 + 28;
  v88 = *(v82 + 28);
  v87 = *(v89 + 4);
  LOBYTE(v206) = v85;
  if (!specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v83, v84, v85, v87))
  {
    goto LABEL_142;
  }

  if (v1[48])
  {
    goto LABEL_209;
  }

  v90 = *v1;
  if (v90 >= v77)
  {
    goto LABEL_167;
  }

  v91 = *(*(v79 + 8 * v90) + 8);
  if (v19 >= *(v91 + 44))
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v92 = *(v91 + 32);
  if (!v92)
  {
    goto LABEL_210;
  }

  v93 = (v92 + (v19 << 7));
  v94 = v93[1];
  v206 = *v93;
  *v207 = v94;
  v95 = v93[5];
  v209 = v93[4];
  v210 = v95;
  v96 = v93[7];
  v211 = v93[6];
  v212 = v96;
  v97 = v93[3];
  *&v207[16] = v93[2];
  v208 = v97;
  LOBYTE(v203) = v207[8];
  v98 = 256;
  if (!v207[9])
  {
    v98 = 0;
  }

  v99 = v98 | (*&v207[12] << 32);
  v100 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(*(&v206 + 1), *v207, v99 | v207[8], *&v207[16]);
  if (*&v207[12] != v100)
  {
    if (HIDWORD(v100) < *&v207[16])
    {
      if (v207[8])
      {
        goto LABEL_230;
      }

      if (*(&v206 + 1))
      {
        v104 = *(&v206 + 1) + v100;
        v102 = *(v104 + 8);
        v103 = *(v104 + 16);
        goto LABEL_76;
      }

      goto LABEL_231;
    }

LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  LOBYTE(v203) = v207[8];
  v101 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV12InvalidationV_Ttgq5(*(&v206 + 1), *v207, v99 | v207[8], *&v207[16]);
  if (!v101)
  {
    goto LABEL_235;
  }

  v102 = *v101;
  v103 = *v101;
LABEL_76:
  v105 = Interval.overlappingSelection(within:)(v1, v102, v103);
  if (v1[48])
  {
    goto LABEL_211;
  }

  v106 = *(v9 + 116);
  v107 = *v1;
  if (v107 >= v106)
  {
    goto LABEL_169;
  }

  v108 = *(v9 + 104);
  if (!v108)
  {
    goto LABEL_212;
  }

  if ((v105 & 0x8000000000000000) != 0)
  {
    goto LABEL_170;
  }

  v109 = *(*(v108 + 8 * v107) + 8);
  if (v19 >= *(v109 + 44))
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v110 = *(v109 + 32);
  if (!v110)
  {
    goto LABEL_213;
  }

  v111 = v110 + (v19 << 7);
  v113 = *(v111 + 40);
  v112 = (v111 + 40);
  v114 = &v105[v113];
  if (__OFADD__(v113, v105))
  {
    goto LABEL_172;
  }

  *v112 = v114;
  if (v1[48])
  {
    goto LABEL_214;
  }

  v115 = *v1;
  if (v115 >= v106)
  {
    goto LABEL_173;
  }

  v116 = *(*(v108 + 8 * v115) + 8);
  if (v19 >= *(v116 + 44))
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v200 = v105;
  v117 = *(v116 + 32);
  if (!v117)
  {
    goto LABEL_215;
  }

  v118 = v117 + (v19 << 7);
  v119 = *(v118 + 8);
  v120 = *(v118 + 16);
  v121 = *(v118 + 24);
  v122 = *(v118 + 25);
  v125 = v118 + 28;
  v123 = *(v118 + 28);
  v124 = *(v125 + 4);
  LOBYTE(v203) = v121;
  v37 = v122 == 0;
  v126 = 256;
  if (v37)
  {
    v126 = 0;
  }

  v127 = v126 | (v123 << 32);
  v128 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v119, v120, v126 | v121, v124);
  if (v128)
  {
    v30 = v1 + 56;
    v129 = v200;
    goto LABEL_93;
  }

  LOBYTE(v203) = v121;
  v128 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v119, v120, v127 | v121, v124);
  v30 = v1 + 56;
  v129 = v200;
  if (v128)
  {
LABEL_93:
    if (v1[48])
    {
      goto LABEL_221;
    }

    v130 = *v1;
    if (v130 < v106)
    {
      v131 = *v128;
      v132 = *(*(v108 + 8 * v130) + 8);
      if (*v128 < *(v132 + 84))
      {
        v133 = *(v132 + 72);
        if (!v133)
        {
          goto LABEL_222;
        }

        v134 = v133 + 312 * v131;
        v135 = *(v134 + 232);
        v136 = &v129[v135];
        if (!__OFADD__(v135, v129))
        {
          v137 = v129 != 0;
          *(v134 + 232) = v136;
          if (v1[48])
          {
            goto LABEL_223;
          }

          v138 = *v1;
          if (v138 < v106)
          {
            v139 = *(*(v108 + 8 * v138) + 8);
            if (v131 < *(v139 + 84))
            {
              v140 = *(v139 + 72);
              if (!v140)
              {
                goto LABEL_224;
              }

              v141 = v140 + 312 * v131;
              v142 = *(v141 + 248);
              v143 = __OFADD__(v142, v137);
              v144 = v142 + v137;
              if (!v143)
              {
                *(v141 + 248) = v144;
                goto LABEL_104;
              }

LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

LABEL_104:
  v145 = v30[1];
  v203 = *v30;
  v204 = v145;
  v205[0] = v30[2];
  *(v205 + 9) = *(v30 + 41);
  v146 = v30;
  v148 = v1 + 84;
  v147 = (v1 + 72);
  v149 = (v1 + 104);
  while (1)
  {
    v150 = *v149;
    if (*v148)
    {
      v151 = *v147;
      if ((v151[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v150)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v203, specialized EvolutionTable.describe(state:));
    }

    v147 = (v150 + 16);
    v148 = (v150 + 28);
    v149 = (v150 + 48);
    v146 = v150;
  }

  v152 = *v146;
  if (!v152)
  {
    goto LABEL_232;
  }

  v153 = *(*(v152 + 24 * *v151) + 112);
  if (!v153)
  {
    goto LABEL_216;
  }

  v154 = *(*(v153 + 32) + 8);
  v155 = *(v154 + 16);
  v156 = v155 - 1;
  if (!v155)
  {
    v156 = 0;
  }

  v157 = (48 * v155 - 48 * (v155 != 0) + v154 - 16);
  v158 = v156;
  while (v158)
  {
    if (--v158 >= v156)
    {
      goto LABEL_156;
    }

    if (v1[48])
    {
      goto LABEL_194;
    }

    v159 = *(v9 + 116);
    v160 = *v1;
    if (v160 >= v159)
    {
      goto LABEL_157;
    }

    v161 = *(v9 + 104);
    if (!v161)
    {
      goto LABEL_195;
    }

    v162 = *v157;
    v163 = *(*(v161 + 8 * v160) + 8);
    if (v162 >= *(v163 + 44))
    {
      goto LABEL_158;
    }

    v164 = *(v163 + 32);
    if (!v164)
    {
      goto LABEL_196;
    }

    v165 = v164 + (v162 << 7);
    if (!*(v165 + 32))
    {
      goto LABEL_159;
    }

    if (*(v165 + 24))
    {
      goto LABEL_198;
    }

    v166 = *(v165 + 8);
    if (!v166)
    {
      goto LABEL_197;
    }

    v157 -= 12;
    if (*v166 == &type metadata for Event.AttributeValue)
    {
      v167 = *(v165 + 40);
      v143 = __OFSUB__(v167, v129);
      v168 = v167 - v129;
      if (v143)
      {
        goto LABEL_175;
      }

      *(v165 + 40) = v168;
      if (v1[48])
      {
        goto LABEL_217;
      }

      v169 = *v1;
      if (v169 >= v159)
      {
        goto LABEL_176;
      }

      v170 = *(*(v161 + 8 * v169) + 8);
      if (v162 >= *(v170 + 44))
      {
        goto LABEL_177;
      }

      v171 = *(v170 + 32);
      if (!v171)
      {
        goto LABEL_218;
      }

      v172 = v171 + (v162 << 7);
      v173 = *(v172 + 8);
      v174 = *(v172 + 16);
      v175 = *(v172 + 24);
      v176 = *(v172 + 25);
      v179 = v172 + 28;
      v177 = *(v172 + 28);
      v178 = *(v179 + 4);
      LOBYTE(v201[0]) = v175;
      v37 = v176 == 0;
      v180 = 256;
      if (v37)
      {
        v180 = 0;
      }

      v181 = v180 | (v177 << 32);
      v182 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v173, v174, v180 | v175, v178);
      if (!v182)
      {
        LOBYTE(v201[0]) = v175;
        v182 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5(v173, v174, v181 | v175, v178);
        if (!v182)
        {
          goto LABEL_233;
        }
      }

      if (v1[48])
      {
        goto LABEL_219;
      }

      v183 = *v1;
      if (v183 < v159)
      {
        v184 = *(*(v161 + 8 * v183) + 8);
        if (*v182 >= *(v184 + 84))
        {
          goto LABEL_179;
        }

        v185 = *(v184 + 72);
        if (!v185)
        {
          goto LABEL_220;
        }

        v186 = v185 + 312 * *v182;
        v187 = *(v186 + 232);
        v143 = __OFSUB__(v187, v200);
        v188 = v187 - v200;
        if (v143)
        {
          goto LABEL_180;
        }

        *(v186 + 232) = v188;
        break;
      }

      goto LABEL_178;
    }
  }

LABEL_142:
  v189 = v30[1];
  v201[0] = *v30;
  v201[1] = v189;
  v202[0] = v30[2];
  *(v202 + 9) = *(v30 + 41);
  v190 = v1 + 84;
  v191 = (v1 + 72);
  v192 = (v1 + 104);
  while (1)
  {
    v193 = *v192;
    if (*v190)
    {
      if (((*v191)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v193)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v201, specialized EvolutionTable.describe(state:));
    }

    v191 = (v193 + 16);
    v190 = (v193 + 28);
    v192 = (v193 + 48);
    v30 = v193;
  }

  if (!*v30)
  {
    goto LABEL_229;
  }

  v194 = *(*(*v30 + 24 * **v191) + 112);
  if (!v194)
  {
    goto LABEL_205;
  }

  v195 = *(v194 + 32);
  v196 = *(v195 + 24);
  v197 = *(v195 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v196, v197);
  Interpreter.Iterator.finalize(update:observer:)(v19, v196, v197);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Event, @unowned Snapshot) -> (@unowned UnsafeRawPointer))?(v196, v197);
}

void Interpreter.Iterator.updatingValue.getter()
{
  v1 = *v0;
  v55 = v0[48];
  v2 = *(v0 + 72);
  v57[0] = *(v0 + 56);
  v57[1] = v2;
  v58[0] = *(v0 + 88);
  *(v58 + 9) = *(v0 + 97);
  v3 = *(v0 + 21);
  v4 = *(v0 + 7);
  v5 = *(v0 + 13);
  v6 = *(v0 + 9);
  v7 = v5;
  v8 = *(v0 + 22);
  if (!v3)
  {
    goto LABEL_3;
  }

  while ((v6[1] & 1) != 0)
  {
    do
    {
LABEL_3:
      if (!v7)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v57, specialized EvolutionTable.describe(state:));
      }

      v4 = *v7;
      v6 = v7[2];
      v9 = *(v7 + 7);
      v7 = v7[6];
    }

    while (!v9);
  }

  if (!v4)
  {
    goto LABEL_75;
  }

  v10 = *(*(v4 + 24 * *v6) + 112);
  if (!v10)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v11 = *(v10 + 60);
  if (v11)
  {
    v12 = *(v10 + 48);
    if (v12)
    {
      v13 = (*(v12 + 4 * v11 - 4) << 32) | 0xFFFFFFFF;
      return;
    }

    goto LABEL_74;
  }

  v14 = *(v0 + 7);
  v15 = *(v0 + 9);
  v16 = *(v0 + 21);
  v17 = *(v0 + 13);
  if (!v3)
  {
    goto LABEL_14;
  }

  while ((v15[1] & 1) != 0)
  {
    do
    {
LABEL_14:
      if (!v17)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v57, specialized EvolutionTable.describe(state:));
      }

      v14 = *v17;
      v15 = v17[2];
      v18 = *(v17 + 7);
      v17 = v17[6];
    }

    while (!v18);
  }

  if (!v14)
  {
    goto LABEL_78;
  }

  v52 = *(v0 + 21);
  v53 = *(v0 + 9);
  v54 = *(v0 + 7);
  v19 = *(*(v14 + 24 * *v15) + 112);
  if (!v19)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v20 = *(*(v19 + 32) + 8);
  v21 = *(v20 + 16);
  v22 = (v20 + 48 * v21 - 16);
  while (v21-- >= 1)
  {
    if ((v21 + 1) > *(v20 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v55)
    {
      goto LABEL_65;
    }

    if (*(v8 + 116) <= v1)
    {
      goto LABEL_59;
    }

    v24 = *(v8 + 104);
    if (!v24)
    {
      goto LABEL_66;
    }

    v25 = *v22;
    v26 = *(*(v24 + 8 * v1) + 8);
    if (v25 >= *(v26 + 44))
    {
      goto LABEL_60;
    }

    v27 = *(v26 + 32);
    if (!v27)
    {
      goto LABEL_67;
    }

    v28 = v27 + (v25 << 7);
    v29 = *(v28 + 8);
    v31 = *(v28 + 28);
    v30 = *(v28 + 32);
    v56 = *(v28 + 24);
    v32 = 256;
    if (!*(v28 + 25))
    {
      v32 = 0;
    }

    v33 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5(v29, *(v28 + 16), v32 | (v31 << 32) | v56, v30);
    if (v31 == v33 && v30 == HIDWORD(v33))
    {
      goto LABEL_38;
    }

    if (HIDWORD(v33) >= v30)
    {
      goto LABEL_61;
    }

    if (v56)
    {
      goto LABEL_68;
    }

    v22 -= 12;
    if (!v29)
    {
      __break(1u);
LABEL_38:
      v35 = v53;
      v36 = v54;
      if (!v3)
      {
        goto LABEL_40;
      }

      while ((v35[1] & 1) != 0)
      {
        do
        {
LABEL_40:
          if (!v5)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v57, specialized EvolutionTable.describe(state:));
          }

          v36 = *v5;
          v35 = v5[2];
          v37 = *(v5 + 7);
          v5 = v5[6];
        }

        while (!v37);
      }

      if (v36)
      {
        v38 = *(*(v36 + 24 * *v35) + 112);
        if (!v38)
        {
          goto LABEL_77;
        }

        v39 = *(*(v38 + 32) + 8);
        v40 = *(v39 + 16);
        v41 = (v39 + 48 * v40 - 16);
        v42 = v40 + 1;
        while (--v42)
        {
          if (*(v8 + 116) <= v1)
          {
            goto LABEL_62;
          }

          v43 = *(v8 + 104);
          if (!v43)
          {
            goto LABEL_69;
          }

          v44 = *v41;
          v45 = *(*(v43 + 8 * v1) + 8);
          if (v44 >= *(v45 + 44))
          {
            goto LABEL_63;
          }

          v46 = *(v45 + 32);
          if (!v46)
          {
            goto LABEL_70;
          }

          v47 = v46 + (v44 << 7);
          v50 = *(v47 + 8);
          v49 = v47 + 8;
          v48 = v50;
          if (!*(v49 + 24))
          {
            goto LABEL_64;
          }

          if (*(v49 + 16))
          {
            goto LABEL_72;
          }

          if (!v48)
          {
            goto LABEL_71;
          }

          v41 -= 12;
          if (*v48 == &type metadata for Event.AttributeValue)
          {
            v51 = v44 | (*(v48 + 8) << 32);
            return;
          }
        }

        return;
      }

      goto LABEL_79;
    }
  }
}