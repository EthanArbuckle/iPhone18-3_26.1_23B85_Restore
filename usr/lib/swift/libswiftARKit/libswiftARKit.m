Swift::Int ARPlaneAnchor.Classification.Status.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8660](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARPlaneAnchor.Classification.Status()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8660](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARPlaneAnchor.Classification.Status()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8660](v1);
  return Hasher._finalize()();
}

char *ARPlaneAnchor.classification.getter@<X0>(char *a1@<X8>)
{
  result = [v1 classification];
  if ((result - 1) >= 7)
  {
    result = [v1 classificationStatus];
    if (result == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (!result)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = result + 2;
  }

  *a1 = v4;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ARConfidenceLevel@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL specialized static ARPlaneAnchor.Classification.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 5)
  {
    if (*a1 > 7u)
    {
      if (v2 == 8)
      {
        return v3 == 8;
      }

      if (v2 == 9)
      {
        return v3 == 9;
      }
    }

    else
    {
      if (v2 == 6)
      {
        return v3 == 6;
      }

      if (v2 == 7)
      {
        return v3 == 7;
      }
    }

LABEL_18:
    if ((v3 - 3) >= 7)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      return v3 == 5;
    }

    goto LABEL_18;
  }

  return v3 == 4;
}

unint64_t lazy protocol witness table accessor for type ARPlaneAnchor.Classification.Status and conformance ARPlaneAnchor.Classification.Status()
{
  result = lazy protocol witness table cache variable for type ARPlaneAnchor.Classification.Status and conformance ARPlaneAnchor.Classification.Status;
  if (!lazy protocol witness table cache variable for type ARPlaneAnchor.Classification.Status and conformance ARPlaneAnchor.Classification.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARPlaneAnchor.Classification.Status and conformance ARPlaneAnchor.Classification.Status);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARPlaneAnchor.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ARPlaneAnchor.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ARPlaneAnchor.Classification(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ARPlaneAnchor.Classification(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARPlaneAnchor.Classification.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARPlaneAnchor.Classification.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

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

void type metadata accessor for ARConfidenceLevel(uint64_t a1, unint64_t *a2)
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

void *ARPointCloud.points.getter()
{
  v1 = [v0 points];
  v2 = [v0 count];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(v2, 0);
  memcpy(v4 + 4, v1, 16 * v3);
  return v4;
}

void *ARPointCloud.identifiers.getter()
{
  v1 = [v0 identifiers];
  v2 = [v0 count];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(v2, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  memcpy(v4 + 4, v1, 8 * v3);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int16V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13simd_float4x4a_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
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

unint64_t lazy protocol witness table accessor for type ARConfidenceLevel and conformance ARConfidenceLevel()
{
  result = lazy protocol witness table cache variable for type ARConfidenceLevel and conformance ARConfidenceLevel;
  if (!lazy protocol witness table cache variable for type ARConfidenceLevel and conformance ARConfidenceLevel)
  {
    type metadata accessor for ARConfidenceLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARConfidenceLevel and conformance ARConfidenceLevel);
  }

  return result;
}

uint64_t ARGeometrySource.subscript.getter(int a1)
{
  result = [v1 format];
  if (result != 30)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = [v1 buffer];
  v5 = [v4 contents];
  v6 = v4;
  v7 = [v1 offset];
  result = [v1 stride];
  v8 = result * a1;
  if ((result * a1) >> 64 != v8 >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = __OFADD__(v7, v8);
  v10 = &v7[v8];
  if (!v9)
  {
    v11 = &v10[v5];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  result = [v1 format];
  if (result != 45)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = [v1 buffer];
  v5 = [v4 contents];
  v6 = v4;
  v7 = [v1 offset];
  result = [v1 stride];
  v8 = result * a1;
  if ((result * a1) >> 64 != v8 >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = __OFADD__(v7, v8);
  v10 = &v7[v8];
  if (!v9)
  {
    return v10[v5];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ARGeometryElement.subscript.getter(uint64_t a1)
{
  result = [v1 bytesPerIndex];
  if (result != 4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = [v1 indexCountPerPrimitive];
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0, MEMORY[0x29EDCA190]);
  result = [v1 indexCountPerPrimitive];
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = result;
    if (!result)
    {
      return v5;
    }

    v7 = 0;
    while (1)
    {
      v8 = [v1 buffer];
      v9 = [v8 contents];
      v10 = v8;
      result = [v1 indexCountPerPrimitive];
      v11 = a1 * result;
      if ((a1 * result) >> 64 != (a1 * result) >> 63)
      {
        break;
      }

      v12 = __OFADD__(v11, v7);
      v13 = v11 + v7;
      if (v12)
      {
        goto LABEL_13;
      }

      if ((v13 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_14;
      }

      v14 = v9[v13];
      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
      }

      ++v7;
      *(v5 + 2) = v16 + 1;
      *&v5[4 * v16 + 32] = v14;
      if (v6 == v7)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *ARPlaneGeometry.textureCoordinates.getter()
{
  v1 = [v0 textureCoordinates];
  v2 = [v0 textureCoordinateCount];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(v2, 0);
  memcpy(v4 + 4, v1, 8 * v3);
  return v4;
}

uint64_t ARPlaneGeometry.triangleIndices.getter()
{
  v1 = [v0 triangleIndices];
  result = [v0 triangleCount];
  v3 = 3 * result;
  if ((result * 3) >> 64 == (3 * result) >> 63)
  {
    if (!v3)
    {
      return MEMORY[0x29EDCA190];
    }

    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int16V_Tt1g5(3 * result, 0);
    memcpy(v4 + 4, v1, 2 * v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ARPlaneGeometry.vertices.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v2 *a2];
  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(v5, 0);
  memcpy(v7 + 4, v4, 16 * v6);
  return v7;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t ARSCNView.unprojectPoint(_:ontoPlane:)()
{
  [v0 unprojectPoint_ontoPlaneWithTransform_];
  v3 = (~v1 & 0x7F800000) != 0 || (v1 & 0x7FFFFF) == 0;
  if (v3 && ((~HIDWORD(v1) & 0x7F800000) == 0 ? (v4 = (v1 & 0x7FFFFF00000000) == 0) : (v4 = 1), v4 && ((~v2 & 0x7F800000) == 0 ? (v5 = (v2 & 0x7FFFFF) == 0) : (v5 = 1), v5)))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

ARGeoAnchor __swiftcall ARGeoAnchor.init(coordinate:altitude:)(CLLocationCoordinate2D coordinate, Swift::Double_optional altitude)
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (v2)
  {
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = sel_initWithCoordinate_;
    v7 = latitude;
    v8 = longitude;
  }

  else
  {
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = sel_initWithCoordinate_altitude_;
    v7 = latitude;
    v8 = longitude;
  }

  return [v5 v6];
}

double ARGeoAnchor.altitude.getter()
{
  if ([v0 altitudeSource])
  {
    [v0 altitude];
  }

  return result;
}

char *ARSkeletonDefinition.parentIndices.getter()
{
  v1 = [v0 parentIndices];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v2 < 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x29C2A8640](v12);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v13 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29C2A8620](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void *ARSkeleton3D.jointModelTransforms.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 jointCount];
  if (!v3)
  {
    return MEMORY[0x29EDCA190];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13simd_float4x4a_Tt1g5(v3, 0);
  memcpy(v5 + 4, v2, v4 << 6);
  return v5;
}

void ARSkeleton3D.modelTransform(for:)(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 definition];
  v8 = [v7 indexForJointName_];

  if ((v8 & 0x8000000000000000) != 0 || (v9 = [v3 definition], v10 = objc_msgSend(v9, sel_jointCount), v9, v8 >= v10))
  {
    v17 = 1;
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    goto LABEL_6;
  }

  v11 = a2();
  if (v8 < *(v11 + 16))
  {
    v12 = (v11 + (v8 << 6));
    v20 = v12[3];
    v21 = v12[2];
    v18 = v12[5];
    v19 = v12[4];

    v14 = v18;
    v13 = v19;
    v16 = v20;
    v15 = v21;
    v17 = 0;
LABEL_6:
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 32) = v13;
    *(a3 + 48) = v14;
    *(a3 + 64) = v17;
    return;
  }

  __break(1u);
}

void *ARSkeleton2D.jointLandmarks.getter()
{
  v1 = [v0 jointLandmarks];
  v2 = [v0 jointCount];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(v2, 0);
  memcpy(v4 + 4, v1, 8 * v3);
  return v4;
}

void *ARSkeleton2D.landmark(for:)(uint64_t a1)
{
  v3 = [v1 definition];
  v4 = [v3 indexForJointName_];

  if ((v4 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v5 = [v1 definition];
  v6 = [v5 jointCount];

  if (v4 >= v6)
  {
    return 0;
  }

  result = ARSkeleton2D.jointLandmarks.getter();
  if (v4 >= result[2])
  {
    __break(1u);
  }

  else
  {
    v8 = result[v4 + 4];

    return v8;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *ARFaceGeometry.vertices.getter()
{
  v1 = [v0 vertices];
  v2 = [v0 vertexCount];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(v2, 0);
  memcpy(v4 + 4, v1, 16 * v3);
  return v4;
}

void *ARFaceGeometry.textureCoordinates.getter()
{
  v1 = [v0 textureCoordinates];
  v2 = [v0 textureCoordinateCount];
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(v2, 0);
  memcpy(v4 + 4, v1, 8 * v3);
  return v4;
}

uint64_t ARFaceGeometry.triangleIndices.getter()
{
  v1 = [v0 triangleIndices];
  result = [v0 triangleCount];
  v3 = 3 * result;
  if ((result * 3) >> 64 == (3 * result) >> 63)
  {
    if (!v3)
    {
      return MEMORY[0x29EDCA190];
    }

    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int16V_Tt1g5(3 * result, 0);
    memcpy(v4 + 4, v1, 2 * v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int ARCamera.TrackingState.Reason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8660](v1);
  return Hasher._finalize()();
}

id ARCamera.trackingState.getter@<X0>(char *a1@<X8>)
{
  result = [v1 trackingState];
  if (!result)
  {
    v4 = 4;
LABEL_9:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    result = [v1 trackingStateReason];
    if (result >= 5)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x302010002uLL >> (8 * result);
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    v4 = 5;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)(uint64_t a1)
{
  [v1 unprojectPoint:a1 ontoPlaneWithTransform:? orientation:? viewportSize:?];
  v4 = (~v2 & 0x7F800000) != 0 || (v2 & 0x7FFFFF) == 0;
  if (v4 && ((~HIDWORD(v2) & 0x7F800000) == 0 ? (v5 = (v2 & 0x7FFFFF00000000) == 0) : (v5 = 1), v5 && ((~v3 & 0x7F800000) == 0 ? (v6 = (v3 & 0x7FFFFF) == 0) : (v6 = 1), v6)))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

BOOL static ARCamera.TrackingState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t lazy protocol witness table accessor for type ARCamera.TrackingState.Reason and conformance ARCamera.TrackingState.Reason()
{
  result = lazy protocol witness table cache variable for type ARCamera.TrackingState.Reason and conformance ARCamera.TrackingState.Reason;
  if (!lazy protocol witness table cache variable for type ARCamera.TrackingState.Reason and conformance ARCamera.TrackingState.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARCamera.TrackingState.Reason and conformance ARCamera.TrackingState.Reason);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ARCamera.TrackingState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for ARCamera.TrackingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ARCamera.TrackingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ARCamera.TrackingState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ARCamera.TrackingState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARCamera.TrackingState.Reason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ARCamera.TrackingState.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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