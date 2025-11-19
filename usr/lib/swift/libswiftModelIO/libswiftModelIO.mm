uint64_t (*MDLMatrix4x4Array.float4x4Array.modify(uint64_t *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  result = [v1 elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      type metadata accessor for simd_float4x4(0);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
    }

    else
    {
      v5 = MEMORY[0x29EDCA190];
    }

    [v1 getFloat4x4Array:v5 + 32 maxCount:v4];
    *(v5 + 16) = v4;
    *a1 = v5;
    return MDLMatrix4x4Array.float4x4Array.modify;
  }

  return result;
}

unint64_t MDLMatrix4x4Array.float4x4Array.getter(void (*a1)(void), const char **a2)
{
  result = [v2 elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      a1(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

    v8 = *a2;
    v9 = v7;
    [v2 v8];
    *(v9 + 16) = v6;
    return v9;
  }

  return result;
}

unint64_t key path getter for MDLMatrix4x4Array.float4x4Array : MDLMatrix4x4Array@<X0>(id *a1@<X0>, void (*a2)(void)@<X3>, SEL *a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  result = [*a1 elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      a2(0);
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x29EDCA190];
    }

    result = [v7 *a3];
    *(v10 + 16) = v9;
    *a4 = v10;
  }

  return result;
}

uint64_t MDLMatrix4x4Array.float4x4Array.setter(uint64_t a1, SEL *a2)
{
  [v2 *a2];

  return MEMORY[0x2A1C73318](a1);
}

uint64_t (*MDLMatrix4x4Array.double4x4Array.modify(uint64_t *a1))(id *a1, uint64_t a2)
{
  a1[1] = v1;
  result = [v1 elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (result)
    {
      type metadata accessor for simd_double4x4(0);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
    }

    else
    {
      v5 = MEMORY[0x29EDCA190];
    }

    [v1 getDouble4x4Array:v5 + 32 maxCount:v4];
    *(v5 + 16) = v4;
    *a1 = v5;
    return MDLMatrix4x4Array.double4x4Array.modify;
  }

  return result;
}

uint64_t MDLMatrix4x4Array.float4x4Array.modify(id *a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  [a1[1] *a3];

  return MEMORY[0x2A1C73318](v3);
}

uint64_t MDLAnimatedScalarArray.floatArray(atTime:)(double a1, uint64_t a2, SEL *a3)
{
  result = [v3 elementCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x29EDCA190];
    }

    [v3 *a3];
    *(v8 + 16) = v7;
    return v8;
  }

  return result;
}

uint64_t MDLAnimatedScalarArray.floatArray.getter(uint64_t a1, const char **a2)
{
  v4 = [v2 elementCount];
  result = [v2 timeSampleCount];
  v6 = v4 * result;
  if ((v4 * result) >> 64 != (v4 * result) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x29EDCA190];
  }

  v8 = *a2;
  v9 = v7;
  [v2 v8];
  *(v9 + 16) = v6;
  return v9;
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

uint64_t MDLAnimatedVector3Array.float3Array(atTime:)(uint64_t *a1, uint64_t *a2, SEL *a3, double a4)
{
  result = [v4 elementCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = v10;
    }

    else
    {
      v11 = MEMORY[0x29EDCA190];
    }

    [v4 *a3];
    *(v11 + 16) = v10;
    return v11;
  }

  return result;
}

uint64_t MDLAnimatedVector3Array.float3Array.getter(uint64_t *a1, uint64_t *a2, const char **a3)
{
  v7 = [v3 elementCount];
  result = [v3 timeSampleCount];
  v9 = v7 * result;
  if ((v7 * result) >> 64 != (v7 * result) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v11 = *a3;
  v12 = v10;
  [v3 v11];
  *(v12 + 16) = v9;
  return v12;
}

uint64_t MDLAnimatedQuaternionArray.floatQuaternionArray(atTime:)(void (*a1)(void), SEL *a2, double a3)
{
  result = [v3 elementCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result)
    {
      a1(0);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x29EDCA190];
    }

    [v3 *a2];
    *(v9 + 16) = v8;
    return v9;
  }

  return result;
}

void type metadata accessor for simd_float4x4(uint64_t a1, unint64_t *a2)
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

uint64_t MDLAnimatedQuaternionArray.floatQuaternionArray.getter(void (*a1)(void), const char **a2)
{
  v5 = [v2 elementCount];
  result = [v2 timeSampleCount];
  v7 = v5 * result;
  if ((v5 * result) >> 64 != (v5 * result) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v7)
  {
    a1(0);
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = MEMORY[0x29EDCA190];
  }

  v9 = *a2;
  v10 = v8;
  [v2 v9];
  *(v10 + 16) = v7;
  return v10;
}

uint64_t MDLAnimatedValue.times.getter(uint64_t a1, SEL *a2)
{
  result = [v2 timeSampleCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x29EDCA190];
    }

    [v2 *a2];
    *(v6 + 16) = v5;
    return v6;
  }

  return result;
}

uint64_t MDLAnimatedVector2.float2Array.getter(uint64_t *a1, uint64_t *a2, SEL *a3)
{
  result = [v3 timeSampleCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x29EDCA190];
    }

    [v3 *a3];
    *(v9 + 16) = v8;
    return v9;
  }

  return result;
}

uint64_t MDLAnimatedMatrix4x4.float4x4Array.getter(void (*a1)(void), SEL *a2)
{
  result = [v2 timeSampleCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
      a1(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

    [v2 *a2];
    *(v7 + 16) = v6;
    return v7;
  }

  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_quatd(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for simd_quatd(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_quatf(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for simd_quatf(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_float4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_float4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}