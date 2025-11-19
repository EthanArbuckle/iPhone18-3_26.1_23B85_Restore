uint64_t vImage.PixelBuffer<>.withBNNSTensor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v8[2] = *(a3 + 16);
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = v9;
  v8[7] = a1;
  v8[8] = a2;
  return vImage.PixelBuffer<>.withUnsafeMutableBufferPointer<A>(_:)(partial apply for closure #1 in vImage.PixelBuffer<>.withBNNSTensor<A>(_:), v8, a3, a4, a5);
}

uint64_t closure #1 in vImage.PixelBuffer<>.withBNNSTensor<A>(_:)(uint64_t a1, void *a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v27 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E76E00;
  v13 = type metadata accessor for vImage.PixelBuffer();
  if (!a2[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2[5];
  if (v14 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 32) = v14;
  if (!a2[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = a2[6];
  if (v15 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v13;
  *(inited + 40) = v15;
  v17 = *(a7 + 24);
  *(inited + 48) = v17(a5, a7);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1B7E76E00;
  *v47 = a2;
  v19 = vImage.PixelBuffer<>.rowStride.getter(v16, a7);
  v20 = v17(a5, a7);
  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  *(v18 + 32) = v19 * v20;
  *(v18 + 40) = v17(a5, a7);
  *(v18 + 48) = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  BNNSTensor.init<A>(data:shape:stride:)(v27, inited, v18, AssociatedTypeWitness, a8, v37);
  v35 = v44;
  *v36 = v45[0];
  *&v36[12] = *(v45 + 12);
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v29 = v38;
  v30 = v39;
  v22 = *(*(AssociatedTypeWitness - 8) + 72);
  v23 = v27 * v22;
  if ((v27 * v22) >> 64 != (v27 * v22) >> 63)
  {
    goto LABEL_13;
  }

  v24 = v46;
  v25 = (*(a8 + 8))(AssociatedTypeWitness, a8);
  v52 = v34;
  v53 = v35;
  *v54 = *v36;
  *&v54[12] = *&v36[12];
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  *v47 = v25;
  *&v47[4] = v29;
  v55 = v23;
  v56 = v24;
  return a3(v47);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5Int16VGGMd, &_ss23_ContiguousArrayStorageCySays5Int16VGGMR, &_sSays5Int16VGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE07DynamicF6FormatVGGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE07DynamicF6FormatVGGMR, &_s10Accelerate6vImageO11PixelBufferVy_AC07DynamicC6FormatVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySuGGMd, &_ss23_ContiguousArrayStorageCySaySuGGMR, &_sSaySuGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE9Planar16UVGGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO11PixelBufferVy_AE9Planar16UVGGMR, &_s10Accelerate6vImageO11PixelBufferVy_AC9Planar16UVGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO5ShapeVGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18bnns_graph_shape_taGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO10BufferTypeOSgGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t partial apply for closure #1 in vImage.PixelBuffer<>.withUnsafePointerToVImageBuffer<A>(_:)(uint64_t a1, void *a2)
{
  result = (*(v2 + 40))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [vImage.BufferWrapper] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [vImage.BufferWrapper] and conformance [A];
  if (!lazy protocol witness table cache variable for type [vImage.BufferWrapper] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Accelerate6vImageO13BufferWrapperVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [vImage.BufferWrapper] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in vImage.PixelBuffer<>.init(planarBuffers:pixelFormat:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*result + 16))
  {
    v2 = *(*result + 48);
    if ((v2 & 0x8000000000000000) == 0)
    {
      *a2 = v2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for vImage.PixelBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t vImage.MultidimensionalLookupTable.LookupTableReference.__deallocating_deinit()
{
  vImageMultidimensionalTable_Release(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t vImage.MultidimensionalLookupTable.lookupTableReference.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t vImage.MultidimensionalLookupTable.init<A>(entryCountPerSourceChannel:destinationChannelCount:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, uint8x16_t a8@<Q1>)
{
  v41 = 0;
  if (a2 < 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(a1 + 16);
  *&v43 = v10;
  *(&v43 + 1) = a2;
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = specialized Sequence<>.min()(a1, a7, a8);
  if ((v15 & 0x100) != 0)
  {
    goto LABEL_22;
  }

  if (v15)
  {
    v38 = a6;
    v39 = a3;
    v42 = a1;
    v40 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v16 = v40;
    v17 = *(v40 + 16);
    v18 = 32;
    do
    {
      v19 = *(a1 + v18);
      v40 = v16;
      v20 = *(v16 + 24);
      v21 = v17 + 1;
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v16 = v40;
      }

      *(v16 + 16) = v21;
      *(v16 + 8 * v17 + 32) = v19;
      ++v18;
      ++v17;
      --v10;
    }

    while (v10);
    v22 = 0;
    v23 = 1;
    v24 = v39;
    do
    {
      v25 = *(v16 + 8 * v22 + 32);
      v26 = v23 * v25;
      if ((v23 * v25) >> 64 != (v23 * v25) >> 63)
      {
        __break(1u);
        goto LABEL_17;
      }

      ++v22;
      v23 *= v25;
    }

    while (v21 != v22);

    if ((v26 * a2) >> 64 != (v26 * a2) >> 63)
    {
      goto LABEL_20;
    }

    v27 = (*(a5 + 16))(a4, a5);
    if (v26 * a2 == v27)
    {
      MEMORY[0x1EEE9AC00](v27);
      v35[2] = &v41;
      v35[3] = a2;
      v36 = a1;
      v28 = *(a5 + 24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd);
      v28(&v40, partial apply for closure #2 in vImage.MultidimensionalLookupTable.init<A>(entryCountPerSourceChannel:destinationChannelCount:data:), v35, v29, a4, a5);
      v30 = v40;
      if (!v40)
      {
        goto LABEL_23;
      }

      (*(*(a4 - 8) + 8))(v24, a4);

      type metadata accessor for vImage.MultidimensionalLookupTable.LookupTableReference();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;

      v33 = v42;
      v34 = v38;
      *v38 = v31;
      v34[1] = v33;
      *(v34 + 1) = v43;
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  v37 = 0;
  v36 = 158;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.min()(uint64_t a1, double a2, uint8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    LOBYTE(v4) = 0;
    return v4 | ((v3 == 0) << 8);
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (a1 + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vminq_u8(v9[-1], v8);
        a3 = vminq_u8(*v9, a3);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vminq_u8(v8, a3);
      v11.i8[0] = vminvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        return v4 | ((v3 == 0) << 8);
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
LABEL_17:
        v16 = v3 - v6;
        v17 = (v6 + a1 + 32);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (v19 < v4)
          {
            LOBYTE(v4) = v18;
          }

          --v16;
        }

        while (v16);
        return v4 | ((v3 == 0) << 8);
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + a1 + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmin_u16(*a3.i8, (*&v12 & 0xFF00FF00FF00FFLL));
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vminv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4 | ((v3 == 0) << 8);
    }

    goto LABEL_17;
  }

  return v4 | ((v3 == 0) << 8);
}

const uint16_t *closure #2 in vImage.MultidimensionalLookupTable.init<A>(entryCountPerSourceChannel:destinationChannelCount:data:)@<X0>(uint64_t numDestChannels@<X3>, const uint16_t *result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X4>, const uint16_t **a5@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v6 = *(a3 + 16);
  if (v6 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (((v6 | numDestChannels) & 0x8000000000000000) == 0)
  {
    if (numDestChannels <= 0xFFFFFFFFLL)
    {
      result = vImageMultidimensionalTable_Create(result, v6, numDestChannels, (a4 + 32), kvImageMDTableHint_Float, 0, 0);
      *a5 = result;
      return result;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

Swift::Int vImage.MultidimensionalLookupTable.InterpolationMethod.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t vImage.MultidimensionalLookupTable.apply(sources:destinations:interpolation:)(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(result + 16);
  if (v4 != *(v3 + 16))
  {
    goto LABEL_21;
  }

  v5 = v3;
  v7 = *(a2 + 16);
  if (v7 != *(v3 + 24))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = result;
    v30 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v9 = v30;
    v11 = v10 + 32;
    while (1)
    {
      v12 = *v11;
      if (!*(*v11 + 16))
      {
        break;
      }

      v13 = *(v12 + 32);
      v14 = *(v12 + 48);
      width = v30->width;
      rowBytes = v30->rowBytes;
      if (width >= rowBytes >> 1)
      {
        v26 = v14;
        v28 = v13;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(rowBytes > 1, width + 1, 1);
        v14 = v26;
        v13 = v28;
      }

      v30->width = width + 1;
      v17 = &v30[width];
      *&v17[1].data = v13;
      *&v17[1].width = v14;
      v11 += 8;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v18 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v31 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v18 = v31;
    v19 = (a2 + 32);
    while (1)
    {
      v20 = *v19;
      if (!*(*v19 + 16))
      {
        break;
      }

      v21 = *(v20 + 32);
      v22 = *(v20 + 48);
      v24 = v31->width;
      v23 = v31->rowBytes;
      if (v24 >= v23 >> 1)
      {
        v27 = v22;
        v29 = v21;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v22 = v27;
        v21 = v29;
      }

      v31->width = v24 + 1;
      v25 = &v31[v24];
      *&v25[1].data = v21;
      *&v25[1].width = v22;
      ++v19;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (!*v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  vImageMultiDimensionalInterpolatedLookupTable_PlanarF(v9 + 1, v18 + 1, 0, *(*v5 + 16), *a3, 0);
}

const vImage_Buffer *vImage.MultidimensionalLookupTable.apply<A, B>(source:destination:interpolation:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a6 + 32))(a4, a6);
  if (result != v7[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  result = (*(a7 + 32))(a5, a7);
  if (result != v7[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for vImage.PixelBuffer();
  v12 = vImage.PixelBuffer<>.vImageBuffers.getter();
  type metadata accessor for vImage.PixelBuffer();
  result = vImage.PixelBuffer<>.vImageBuffers.getter();
  if (!*v7)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  vImageMultiDimensionalInterpolatedLookupTable_PlanarF(v12 + 1, result + 1, 0, *(*v7 + 16), *a3, 0);
}

unint64_t lazy protocol witness table accessor for type vImage.MultidimensionalLookupTable.InterpolationMethod and conformance vImage.MultidimensionalLookupTable.InterpolationMethod()
{
  result = lazy protocol witness table cache variable for type vImage.MultidimensionalLookupTable.InterpolationMethod and conformance vImage.MultidimensionalLookupTable.InterpolationMethod;
  if (!lazy protocol witness table cache variable for type vImage.MultidimensionalLookupTable.InterpolationMethod and conformance vImage.MultidimensionalLookupTable.InterpolationMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.MultidimensionalLookupTable.InterpolationMethod and conformance vImage.MultidimensionalLookupTable.InterpolationMethod);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vImage.MultidimensionalLookupTable(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for vImage.MultidimensionalLookupTable(uint64_t result, int a2, int a3)
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

uint64_t BNNS.FusedParametersLayer.__allocating_init(input:output:fusedLayerParameters:filterParameters:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v94 = *MEMORY[0x1E69E9840];
  if (*(v3 + 16) != 2)
  {
    __break(1u);
    goto LABEL_53;
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v3 + 32, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate22FusableLayerParameters_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate29FusableLayerParametersWrapper_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    memset(v69, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(v69, &_s10Accelerate29FusableLayerParametersWrapper_pSgMd);
    return 0;
  }

  outlined init with take of FusableTernaryInputLayerParametersWrapper(v69, v78);
  if (*(v12 + 16) < 2uLL)
  {
LABEL_53:
    __break(1u);
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(v12 + 72, v70);

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v69, 0, 40);
    outlined destroy of FusableTernaryInputLayerParametersWrapper?(v69, &_s10Accelerate29FusableLayerParametersWrapper_pSgMd);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v78);
    return 0;
  }

  v65 = v9;
  outlined init with take of FusableTernaryInputLayerParametersWrapper(v69, v75);
  v15 = v13[5];
  v16 = v13[7];
  v86 = v13[6];
  v87 = v16;
  v17 = v13[7];
  v88 = v13[8];
  v18 = v13[1];
  v19 = v13[3];
  v82 = v13[2];
  v83 = v19;
  v21 = v13[3];
  v20 = v13[4];
  v22 = v20;
  v85 = v13[5];
  v84 = v20;
  v23 = *v13;
  v24 = *v13;
  v81[1] = v13[1];
  v81[0] = v23;
  *v90 = *(v13 + 148);
  *&v90[12] = v13[10];
  v91[6] = v86;
  v91[7] = v17;
  v91[8] = v13[8];
  v91[2] = v82;
  v91[3] = v21;
  v91[5] = v15;
  v91[4] = v22;
  v25 = *(v14 + 144);
  v91[1] = v18;
  v91[0] = v24;
  v92 = v25;
  *v93 = *(v13 + 148);
  *&v93[12] = v13[10];
  v26 = v79;
  v27 = v80;
  __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  (*(v27 + 8))(v74, v14, v91, v26, v27);
  v89 = v25;
  v28 = v76;
  v29 = v77;
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  (*(v29 + 8))(v73, v81, v13, v28, v29);
  v30 = v79;
  v31 = v80;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = v76;
  v34 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v35 = (*(v34 + 16))(v33, v34);
  v36 = v35 - 2;
  if (!v32 && v36 < 4 || v32 == 6 && v36 <= 3)
  {
    v37 = v35;
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v74, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
    type metadata accessor for BNNSLayerParametersConvolution(0);
    swift_dynamicCast();
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v73, v71);
    type metadata accessor for BNNSLayerParametersNormalization(0);
    swift_dynamicCast();
    memcpy(v69, v70, sizeof(v69));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1B7E77850;
    *(v38 + 32) = __dst;
    *(v38 + 40) = v69;
    if (v65 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
      v39 = swift_allocObject();
      *(v39 + 32) = v32;
      v40 = (v39 + 32);
      *(v39 + 36) = v37;
      v41 = (v38 + 32);
LABEL_11:
      p_filter_params = 0;
      goto LABEL_15;
    }

    filter_params.flags = v11;
    filter_params.n_threads = v10;
    filter_params.alloc_memory = v65;
    filter_params.free_memory = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v43 = swift_allocObject();
    *(v43 + 32) = v32;
    v40 = (v43 + 32);
    *(v43 + 36) = v37;
    p_filter_params = &filter_params;
    v41 = (v38 + 32);
    goto LABEL_15;
  }

  if (v32 == 1 && v36 <= 3)
  {
    v49 = v35;
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v74, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
    type metadata accessor for BNNSLayerParametersFullyConnected(0);
    swift_dynamicCast();
    memcpy(__dst, __src, 0x2F0uLL);
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v73, v71);
    type metadata accessor for BNNSLayerParametersNormalization(0);
    swift_dynamicCast();
    memcpy(v69, v70, sizeof(v69));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B7E77850;
    *(v50 + 32) = __dst;
    v51 = (v50 + 32);
    *(v50 + 40) = v69;
    if (v9 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
      v52 = swift_allocObject();
      *(v52 + 32) = 1;
      v40 = (v52 + 32);
      *(v52 + 36) = v49;
LABEL_29:
      v41 = v51;
      goto LABEL_30;
    }

    filter_params.flags = v11;
    filter_params.n_threads = v10;
    filter_params.alloc_memory = v9;
    filter_params.free_memory = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v58 = swift_allocObject();
    *(v58 + 32) = 1;
    v40 = (v58 + 32);
    *(v58 + 36) = v49;
    goto LABEL_44;
  }

  v53 = v32 == 6 || v32 == 0;
  if (!v53 || v35 != 7)
  {
    if (v32 == 1 && v35 == 7)
    {
      outlined init with copy of BNNSGraph.Builder.SliceIndex(v74, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
      type metadata accessor for BNNSLayerParametersFullyConnected(0);
      swift_dynamicCast();
      memcpy(v69, v70, 0x2F0uLL);
      outlined init with copy of BNNSGraph.Builder.SliceIndex(v73, v71);
      type metadata accessor for BNNSLayerParametersQuantization(0);
      swift_dynamicCast();
      memcpy(__dst, __src, 0x2D0uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1B7E77850;
      *(v56 + 32) = v69;
      *(v56 + 40) = __dst;
      if (v9 != 1)
      {
        filter_params.flags = v11;
        filter_params.n_threads = v10;
        filter_params.alloc_memory = v9;
        filter_params.free_memory = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
        v63 = swift_allocObject();
        *(v63 + 32) = 0x700000001;
        v40 = (v63 + 32);
        p_filter_params = &filter_params;
        v41 = (v56 + 32);
        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
      v57 = swift_allocObject();
      *(v57 + 32) = 0x700000001;
      v40 = (v57 + 32);
      v41 = (v56 + 32);
LABEL_30:
      p_filter_params = 0;
      goto LABEL_15;
    }

    if (v32 != 8 || v36 > 3)
    {
      goto LABEL_22;
    }

    v59 = v35;
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v74, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
    type metadata accessor for BNNSLayerParametersArithmetic(0);
    swift_dynamicCast();
    *__dst = *__src;
    *&__dst[16] = *&__src[16];
    *&__dst[32] = *&__src[32];
    *&__dst[48] = *&__src[48];
    outlined init with copy of BNNSGraph.Builder.SliceIndex(v73, v71);
    type metadata accessor for BNNSLayerParametersNormalization(0);
    swift_dynamicCast();
    memcpy(v69, v70, sizeof(v69));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1B7E77850;
    *(v60 + 32) = __dst;
    v51 = (v60 + 32);
    *(v60 + 40) = v69;
    if (v9 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
      v61 = swift_allocObject();
      *(v61 + 32) = 8;
      v40 = (v61 + 32);
      *(v61 + 36) = v59;
      goto LABEL_29;
    }

    filter_params.flags = v11;
    filter_params.n_threads = v10;
    filter_params.alloc_memory = v9;
    filter_params.free_memory = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v64 = swift_allocObject();
    *(v64 + 32) = 8;
    v40 = (v64 + 32);
    *(v64 + 36) = v59;
LABEL_44:
    p_filter_params = &filter_params;
    v41 = v51;
    goto LABEL_15;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(v74, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate26BNNSFusableLayerParameters_pMd);
  type metadata accessor for BNNSLayerParametersConvolution(0);
  swift_dynamicCast();
  memcpy(v69, v70, 0x348uLL);
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v73, v71);
  type metadata accessor for BNNSLayerParametersQuantization(0);
  swift_dynamicCast();
  memcpy(__dst, __src, 0x2D0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVGMd);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B7E77850;
  *(v54 + 32) = v69;
  *(v54 + 40) = __dst;
  if (v9 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
    v55 = swift_allocObject();
    *(v55 + 32) = v32;
    v40 = (v55 + 32);
    *(v55 + 36) = 7;
    v41 = (v54 + 32);
    goto LABEL_11;
  }

  filter_params.flags = v11;
  filter_params.n_threads = v10;
  filter_params.alloc_memory = v9;
  filter_params.free_memory = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14BNNSFilterTypeaGMd);
  v62 = swift_allocObject();
  *(v62 + 32) = v32;
  v40 = (v62 + 32);
  *(v62 + 36) = 7;
  p_filter_params = &filter_params;
  v41 = (v54 + 32);
LABEL_15:
  FusedLayer = BNNSFilterCreateFusedLayer(2uLL, v40, v41, p_filter_params);
  swift_setDeallocating();
  swift_deallocClassInstance();

  type metadata accessor for BNNS.FusedParametersLayer();
  v45 = swift_allocObject();
  *(v45 + 24) = MEMORY[0x1E69E7CC0];
  if (!FusedLayer)
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v75);
    goto LABEL_23;
  }

  *(v45 + 16) = FusedLayer;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgGMd);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B7E77850;
  outlined init with copy of BNNSGraph.Builder.SliceIndex(v78, v70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v47 + 64) = 0;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
  }

  outlined init with copy of BNNSGraph.Builder.SliceIndex(v75, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v47 + 104) = 0;
    *(v47 + 88) = 0u;
    *(v47 + 72) = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  *(v46 + 24) = v47;

  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v46;
}

uint64_t BNNS.FusedParametersLayer.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      outlined init with copy of FusableLayerParametersWrapperDeallocatable?(v3, v10);
      outlined init with copy of FusableLayerParametersWrapperDeallocatable?(v10, v7);
      v5 = v8;
      if (v8)
      {
        v4 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        (*(v4 + 8))(v5, v4);
        outlined destroy of FusableTernaryInputLayerParametersWrapper?(v10, &_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(v7);
      }

      else
      {
        outlined destroy of FusableTernaryInputLayerParametersWrapper?(v10, &_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgMd);
        outlined destroy of FusableTernaryInputLayerParametersWrapper?(v7, &_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgMd);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  BNNSFilterDestroy(*(v0 + 16));

  return v0;
}

uint64_t BNNS.FusedParametersLayer.__deallocating_deinit()
{
  BNNS.FusedParametersLayer.deinit();

  return swift_deallocClassInstance();
}

uint64_t BNNS.FusedParametersLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of FusableLayerParametersWrapperDeallocatable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate42FusableLayerParametersWrapperDeallocatable_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of FusableLayerParametersWrapper.layerParameters(input:output:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[17];
  v5 = *(a1 + 36);
  v6 = a1[19];
  v7 = *(a1 + 40);
  v8 = a2[17];
  v9 = *(a2 + 36);
  v10 = a2[19];
  v11 = *(a2 + 40);
  v12 = *(a4 + 8);
  v28 = *a1;
  v29 = *(a1 + 1);
  v30 = *(a1 + 3);
  v31 = *(a1 + 5);
  v32 = *(a1 + 7);
  v33 = *(a1 + 9);
  v34 = *(a1 + 11);
  v35 = *(a1 + 13);
  v36 = *(a1 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a1 + 164);
  v14 = *a2;
  v15 = *(a2 + 1);
  v16 = *(a2 + 3);
  v17 = *(a2 + 5);
  v18 = *(a2 + 7);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  v21 = *(a2 + 13);
  v22 = *(a2 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a2 + 164);
  return v12(&v28, &v14);
}

uint64_t BNNS.PaddingMode.bnnsPaddingMode.getter()
{
  if (*(v0 + 4) < 2u)
  {
    return 0;
  }

  if (*v0)
  {
    return 2;
  }

  return 1;
}

uint64_t BNNS.PaddingMode.paddingBitPattern.getter()
{
  if (v0[4] >= 2u)
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t BNNS.PaddingLayer.__allocating_init(input:output:mode:size:filterParameters:)(__int128 *a1, __int128 *a2, int *a3, char *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = *MEMORY[0x1E69E9840];
  v13 = a2[9];
  v90 = a2[8];
  v91 = v13;
  v92 = a2[10];
  v14 = a2[5];
  v86 = a2[4];
  v87 = v14;
  v15 = a2[6];
  v89 = a2[7];
  v88 = v15;
  v16 = a2[1];
  v82 = *a2;
  v83 = v16;
  v17 = a2[2];
  v85 = a2[3];
  v84 = v17;
  v18 = a1[9];
  v101 = a1[8];
  v102 = v18;
  v103 = a1[10];
  v19 = a1[5];
  v97 = a1[4];
  v98 = v19;
  v20 = a1[6];
  v100 = a1[7];
  v99 = v20;
  v21 = a1[1];
  v93 = *a1;
  v94 = v21;
  v22 = a1[2];
  v96 = a1[3];
  v95 = v22;
  v23 = *a3;
  v24 = *(a3 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || *(a4 + 3) <= 0xFuLL)
  {
    if (*(a4 + 2) <= 8uLL)
    {
      v26 = 8;
    }

    else
    {
      v26 = *(a4 + 2);
    }

    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 0, a4);
  }

  v27 = *(a4 + 2);
  if (v27 <= 7)
  {
    v28 = *(a4 + 3);
    v29 = v27 + 1;
    if (v27 >= v28 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v27 + 1, 1, a4);
    }

    *(a4 + 2) = v29;
    v30 = &a4[16 * v27];
    *(v30 + 4) = 0;
    *(v30 + 5) = 0;
    if (v27 != 7)
    {
      v64 = a8;
      v31 = *(a4 + 3);
      v32 = v27 + 2;
      if (v29 >= v31 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v27 + 2, 1, a4);
      }

      *(a4 + 2) = v32;
      v33 = &a4[16 * v29];
      *(v33 + 4) = 0;
      *(v33 + 5) = 0;
      if (v27 > 5)
      {
        goto LABEL_29;
      }

      v34 = *(a4 + 3);
      v35 = v27 + 3;
      if (v32 >= v34 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v27 + 3, 1, a4);
      }

      *(a4 + 2) = v35;
      v36 = &a4[16 * v32];
      *(v36 + 4) = 0;
      *(v36 + 5) = 0;
      if (v27 == 5)
      {
        goto LABEL_29;
      }

      v37 = *(a4 + 3);
      v38 = v27 + 4;
      if (v35 >= v37 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v27 + 4, 1, a4);
      }

      *(a4 + 2) = v38;
      v39 = &a4[16 * v35];
      *(v39 + 4) = 0;
      *(v39 + 5) = 0;
      if (v27 > 3)
      {
        goto LABEL_29;
      }

      v40 = *(a4 + 3);
      v41 = v27 + 5;
      if (v38 >= v40 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v27 + 5, 1, a4);
      }

      *(a4 + 2) = v41;
      v42 = &a4[16 * v38];
      *(v42 + 4) = 0;
      *(v42 + 5) = 0;
      if (v27 == 3)
      {
        goto LABEL_29;
      }

      v43 = *(a4 + 3);
      v44 = v27 + 6;
      if (v41 >= v43 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v27 + 6, 1, a4);
      }

      *(a4 + 2) = v44;
      v45 = &a4[16 * v41];
      *(v45 + 4) = 0;
      *(v45 + 5) = 0;
      if (v27 > 1)
      {
        goto LABEL_29;
      }

      v46 = *(a4 + 3);
      v47 = v27 + 7;
      if (v44 >= v46 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v27 + 7, 1, a4);
      }

      *(a4 + 2) = v47;
      v48 = &a4[16 * v44];
      *(v48 + 4) = 0;
      *(v48 + 5) = 0;
      if (v27)
      {
LABEL_29:
        a8 = v64;
      }

      else
      {
        v55 = *(a4 + 3);
        a8 = v64;
        if (v47 >= v55 >> 1)
        {
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), 8, 1, a4);
        }

        *(a4 + 2) = 8;
        v56 = &a4[16 * v47];
        *(v56 + 4) = 0;
        *(v56 + 5) = 0;
      }
    }
  }

  if (v23)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  if (v24 >= 2)
  {
    v50 = 0;
  }

  else
  {
    v50 = v23;
  }

  if (v24 >= 2)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0;
  }

  v63 = *(a4 + 4);
  v65 = *(a4 + 2);
  v59 = *(a4 + 5);
  v60 = *(a4 + 3);
  v61 = *(a4 + 8);
  v62 = *(a4 + 6);
  v57 = *(a4 + 9);
  v58 = *(a4 + 7);

  __src[8] = v101;
  __src[9] = v102;
  __src[4] = v97;
  __src[5] = v98;
  __src[6] = v99;
  __src[7] = v100;
  __src[0] = v93;
  __src[1] = v94;
  __src[2] = v95;
  __src[3] = v96;
  __src[18] = v89;
  __src[19] = v90;
  __src[20] = v91;
  __src[21] = v92;
  __src[14] = v85;
  __src[15] = v86;
  __src[16] = v87;
  __src[17] = v88;
  __src[10] = v103;
  __src[11] = v82;
  __src[12] = v83;
  __src[13] = v84;
  memcpy(__dst, __src, sizeof(__dst));
  v72 = v65;
  v73 = v60;
  v74 = v63;
  v75 = v59;
  v76 = v62;
  v77 = v58;
  v78 = v61;
  v79 = v57;
  v80 = v51;
  v81 = v50;
  if (a7 == 1)
  {
    v52 = 0;
  }

  else
  {
    v66 = a5;
    v67 = a6;
    v68 = a7;
    v69 = a8;
    v52 = &v66;
  }

  v53 = MEMORY[0x1B8CB1AB0](__dst, v52);
  type metadata accessor for BNNS.PaddingLayer();
  result = swift_allocObject();
  if (v53)
  {
    *(result + 16) = v53;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.PaddingLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

{
  return partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

uint64_t static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

{
  return static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

uint64_t static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  result = (*(a4 + 16))(a3, a4);
  v13 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v14 = a3;
      v15 = a4;
      v16 = a1;
      v17 = a2;
      v18 = MEMORY[0x1EEE9AC00](result);
      return a6(v18, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(*(a7 + 8) + 16))(a5);
  result = (*(a6 + 16))(a4, a6);
  v15 = v13 + a2;
  if (__OFADD__(v13, a2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result == v17)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(a8);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    if (((a5 | a4) & 0x8000000000000000) == 0)
    {
      return a6();
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

{
  return partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:));
}

uint64_t partial apply for closure #1 in static vDSP.slidingWindowSum<A>(_:usingWindowLength:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6[2];
  v10 = v6[3];
  v12 = v6[4];
  v13 = v6[5];
  v17 = v6[6];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3);
  result = a6(v12, v13, a1, v11, v14, v10, v15);
  *a2 = v17;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6[2] = a1;
  v7 = *(v2 + 56);
  return (*(v4 + 24))(a2, v6, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E69591C0]);
}

{
  return closure #1 in closure #1 in static vDSP.slidingWindowSum<A, B>(_:usingWindowLength:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), MEMORY[0x1E69591B8]);
}

uint64_t static vForce.log<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vForce.log<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vForce.log<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vForce.log<A, B>(_:result:));
}

{
  return closure #1 in static vForce.log<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vForce.log<A, B>(_:result:));
}

uint64_t static vForce.log<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.log<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log<A, B>(_:result:));
}

{

  return static vForce.log<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log<A, B>(_:result:));
}

uint64_t closure #1 in static vForce.log<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vForce.log1p<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log1p<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.rectangularToPolar<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vForce.log1p<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vForce.log1p<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vForce.log<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log1p<A, B>(_:result:));
}

{

  return static vForce.log<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.log1p<A, B>(_:result:));
}

uint64_t static vForce.log<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 + 16);
  v12 = v11(a3, a5);
  if (v12 != (*(*(a6 + 8) + 16))(a4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = v11(a3, a5);
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v13);
  return (*(a6 + 16))(a7);
}

uint64_t static vForce.atan2<A, B, C>(x:y:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vForce.atan2<A, B, C>(x:y:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vForce.atan2<A, B, C>(x:y:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v12 = (*(a7 + 16))(a4, a7);
  v13 = *(a9 + 8);
  v14 = *(v13 + 16);
  if (v12 != v14(a6, v13))
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = (*(a8 + 16))(a5, a8);
  if (v15 != v14(a6, v13))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v16 = v14(a6, v13);
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v16 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v16);
  return (*(a9 + 16))(v17);
}

uint64_t static vForce.atan2<A, B>(x:y:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vForce.atan2<A, B>(x:y:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.atan2<A, B>(x:y:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vForce.atan2<A, B>(x:y:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vForce.atan2<A, B>(x:y:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
    return a7();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vForce.atan2<A, B>(x:y:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = *(a5 + 16);
  v13 = v12(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v13 == result)
  {
    v15 = v12(a3, a5);
    v16 = MEMORY[0x1EEE9AC00](v15);
    return a8(v16, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static vForce.atan2<A, B>(x:y:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t *a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v18 = *(a8 + 8);
  v19 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a11, a9);
  a12(a3, a4, a1, a5, a6, v17, a7, v18, v19);
  result = (*(a7 + 16))(a5, a7);
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in static vForce.log<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vForce.log<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vForce.log<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vForce.log1p<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vForce.log<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vForce.log1p<A, B>(_:result:));
}

{
  return closure #1 in static vForce.log<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vForce.log1p<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vForce.log1p<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:));
}

uint64_t partial apply for closure #1 in static vForce.atan2<A, B>(x:y:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vForce.atan2<A, B>(x:y:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vForce.atan2<A, B, C>(x:y:result:));
}

{
  return partial apply for closure #1 in static vForce.atan2<A, B>(x:y:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vForce.atan2<A, B, C>(x:y:result:));
}

uint64_t partial apply for closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vForce.pow<A, B, C>(bases:exponents:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vForce.pow<A, B, C>(bases:exponents:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E69592E0]);
}

{
  return closure #1 in closure #1 in closure #1 in static vForce.atan2<A, B, C>(x:y:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E69592E8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(a1, a2, MEMORY[0x1E69593D0]);
}

{
  return partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(a1, a2, MEMORY[0x1E69593D8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vForce.log<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(a1, a2, MEMORY[0x1E69593B8]);
}

{
  return partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(a1, a2, MEMORY[0x1E6959400]);
}

uint64_t partial apply for closure #1 in closure #1 in static vForce.log1p<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = **(v3 + 16);
  if (result)
  {
    if (a1)
    {
      return a3();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:axis:keep:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void, void)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = v7[1];
  v14 = v7[4];
  v21[0] = *v7;
  v21[1] = v13;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);

  LOBYTE(v22) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v21, v15, v16, &v22);
  if (!v14)
  {
    goto LABEL_4;
  }

  if (v13)
  {
    v18 = a1(v13, v14, a2, a3 & 1, 0);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, a4, a5);
LABEL_4:
    *a7 = v22;
    v19 = v24;
    *(a7 + 8) = v23;
    *(a7 + 24) = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:y:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 32);
  v12 = v6[1];
  v13 = v6[4];
  v19[0] = *v6;
  v19[1] = v12;
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);

  LOBYTE(v20) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v19, v14, v15, &v20);
  if (!v13 || !v11)
  {
    goto LABEL_5;
  }

  if (v12)
  {
    v17 = a1(v12, v13, v11, 0);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, a3, a4);
LABEL_5:
    *a6 = v20;
    v18 = v22;
    *(a6 + 8) = v21;
    *(a6 + 24) = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper_BOOL(fn:y:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 32);
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[4];

  specialized static BNNSGraph.Builder.calculateStride(_:)(MEMORY[0x1E69E7CC0]);

  if (!v13 || !v10)
  {
    goto LABEL_6;
  }

  if (v12)
  {
    result = a1(v12, v13, v10, 0);
    if (result)
    {
LABEL_7:
      *a5 = v11;
      *(a5 + 8) = v12;
      *(a5 + 16) = xmmword_1B7E77980;
      *(a5 + 32) = result;
      return result;
    }

    MEMORY[0x1B8CB1340](a3, a4);
    MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
    swift_beginAccess();
    MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
    swift_endAccess();

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = v5[1];
  v11 = v5[4];
  v17[0] = *v5;
  v17[1] = v10;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);

  LOBYTE(v18) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v17, v12, v13, &v18);
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v10)
  {
    v15 = a1(v10, v11, 0);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v15, a2, a3);
LABEL_4:
    *a5 = v18;
    v16 = v20;
    *(a5 + 8) = v19;
    *(a5 + 24) = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:axis:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = v6[1];
  v13 = v6[4];
  v19[0] = *v6;
  v19[1] = v12;
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);

  LOBYTE(v20) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v19, v14, v15, &v20);
  if (!v13)
  {
    goto LABEL_4;
  }

  if (v12)
  {
    v17 = a1(v12, v13, a2, 0);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, a3, a4);
LABEL_4:
    *a6 = v20;
    v18 = v22;
    *(a6 + 8) = v21;
    *(a6 + 24) = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:alpha:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, void, float)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, float a6@<S0>)
{
  v12 = v6[1];
  v13 = v6[4];
  v19[0] = *v6;
  v19[1] = v12;
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);

  LOBYTE(v20) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v19, v14, v15, &v20);
  if (!v13)
  {
    goto LABEL_4;
  }

  if (v12)
  {
    v17 = a1(v12, v13, 0, a6);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v17, a2, a3);
LABEL_4:
    *a5 = v20;
    v18 = v22;
    *(a5 + 8) = v21;
    *(a5 + 24) = v18;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:alpha:beta:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, void, float, float)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v14 = v7[1];
  v15 = v7[4];
  v21[0] = *v7;
  v21[1] = v14;
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);

  LOBYTE(v22) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v21, v16, v17, &v22);
  if (!v15)
  {
    goto LABEL_4;
  }

  if (v14)
  {
    v19 = a1(v14, v15, 0, a6, a7);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v19, a2, a3);
LABEL_4:
    *a5 = v22;
    v20 = v24;
    *(a5 + 8) = v23;
    *(a5 + 24) = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.operationHelper(fn:y:z:funcName:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = *(a2 + 32);
  v12 = *(a3 + 32);
  v13 = v7[1];
  v14 = v7[4];
  v21[0] = *v7;
  v21[1] = v13;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);

  LOBYTE(v22) = 1;
  result = BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], v21, v15, v16, &v22);
  if (!v14 || !v11 || !v12)
  {
    goto LABEL_6;
  }

  if (v13)
  {
    v18 = a1(v13, v14, v11, v12, 0);
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v18, a4, a5);
LABEL_6:
    *a7 = v22;
    v19 = v24;
    *(a7 + 8) = v23;
    *(a7 + 24) = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.rank.getter()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  _bnns_graph_builder_tensor_from_tensor_ref();
  return v2;
}

uint64_t BNNSGraph.Builder.Tensor.graphBuilderTensor(_:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
}

void BNNSGraph.Context.allocateTensor(forFunction:argument:fillKnownDynamicShapes:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  BNNSGraph.Context.tensor(forFunction:argument:fillKnownDynamicShapes:)(a1, &v39);
  *&v50[128] = v47;
  v51 = v48;
  v52 = v49;
  *&v50[64] = v43;
  *&v50[80] = v44;
  *&v50[96] = v45;
  *&v50[112] = v46;
  *v50 = v39;
  *&v50[16] = v40;
  *&v50[32] = v41;
  *&v50[48] = v42;
  if (_sSo10BNNSTensoraSgWOg(v50) == 1)
  {
    v85 = v47;
    v86 = v48;
    v87 = v49;
    v81 = v43;
    v82 = v44;
    v83 = v45;
    v84 = v46;
    v77 = v39;
    v78 = v40;
    v3 = v42;
    v4 = v41;
LABEL_18:
    v79 = v4;
    v80 = v3;
    goto LABEL_19;
  }

  v5 = &v50[4];
  v36 = *&v50[100];
  v37 = *&v50[116];
  v6 = *v50;
  v38 = *&v50[132];
  v32 = *&v50[36];
  v33 = *&v50[52];
  v34 = *&v50[68];
  v35 = *&v50[84];
  v30 = *&v50[4];
  v31 = *&v50[20];
  v7 = *&v50[136];
  v8 = v51;
  if (*v50 > 131103)
  {
    goto LABEL_8;
  }

  if (*v50 != 65552)
  {
    if (*v50 != 65568)
    {
      goto LABEL_12;
    }

    v71 = *&v50[84];
    v72 = *&v50[100];
    v73 = *&v50[116];
    v67 = *&v50[20];
    v68 = *&v50[36];
    v69 = *&v50[52];
    v70 = *&v50[68];
    v65 = 65568;
    v74 = *&v50[132];
    v66 = *&v50[4];
    v75 = *&v50[136];
    v76 = v51;
    v5 = ((BNNSTensor.count.getter() - 0x2000000000000000) >> 62);
    if (v5 == 3)
    {
LABEL_11:
      v14 = 4;
LABEL_16:
      v20 = swift_slowAlloc();
      v59 = v35;
      v60 = v36;
      v61 = v37;
      v55 = v31;
      v56 = v32;
      v57 = v33;
      v58 = v34;
      v53 = v6;
      v62 = v38;
      v54 = v30;
      v63 = v20;
      v64 = v8;
      v21 = BNNSTensor.count.getter();
      if ((v21 * v14) >> 64 == (v21 * v14) >> 63)
      {
        *&v27[84] = v35;
        *&v27[100] = v36;
        *&v27[116] = v37;
        *&v27[20] = v31;
        *&v27[36] = v32;
        *&v27[52] = v33;
        *&v27[68] = v34;
        *&v27[132] = v38;
        *&v27[4] = v30;
        *v27 = v6;
        *&v27[136] = v20;
        *&v28 = v21 * v14;
        *(&v28 + 1) = *(&v8 + 1);
        _sSo10BNNSTensoraSgWOi_(v27);
        v85 = *&v27[128];
        v86 = v28;
        v87 = v29;
        v81 = *&v27[64];
        v82 = *&v27[80];
        v83 = *&v27[96];
        v84 = *&v27[112];
        v77 = *v27;
        v78 = *&v27[16];
        v3 = *&v27[48];
        v4 = *&v27[32];
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_8:
    if (v6 == 1048584)
    {
      v15 = *(v5 + 4);
      v71 = *(v5 + 5);
      v16 = *(v5 + 7);
      v72 = *(v5 + 6);
      v73 = v16;
      v17 = *v5;
      v67 = *(v5 + 1);
      v18 = *(v5 + 3);
      v68 = *(v5 + 2);
      v69 = v18;
      v70 = v15;
      v19 = *(v5 + 32);
      v65 = 1048584;
      v74 = v19;
      v66 = v17;
      v75 = v7;
      v76 = v8;
      BNNSTensor.count.getter();
      v14 = 1;
      goto LABEL_16;
    }

    if (v6 == 131104)
    {
      v9 = *(v5 + 4);
      v71 = *(v5 + 5);
      v10 = *(v5 + 7);
      v72 = *(v5 + 6);
      v73 = v10;
      v11 = *v5;
      v67 = *(v5 + 1);
      v12 = *(v5 + 3);
      v68 = *(v5 + 2);
      v69 = v12;
      v70 = v9;
      v13 = *(v5 + 32);
      v65 = 131104;
      v74 = v13;
      v66 = v11;
      v75 = v7;
      v76 = v8;
      if ((BNNSTensor.count.getter() - 0x2000000000000000) >> 62 != 3)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_12:
    _sSo10BNNSTensoraSgWOi0_(&v77);
LABEL_19:
    v22 = v86;
    *(a2 + 128) = v85;
    *(a2 + 144) = v22;
    *(a2 + 160) = v87;
    v23 = v82;
    *(a2 + 64) = v81;
    *(a2 + 80) = v23;
    v24 = v84;
    *(a2 + 96) = v83;
    *(a2 + 112) = v24;
    v25 = v78;
    *a2 = v77;
    *(a2 + 16) = v25;
    v26 = v80;
    *(a2 + 32) = v79;
    *(a2 + 48) = v26;
    return;
  }

  v71 = *&v50[84];
  v72 = *&v50[100];
  v73 = *&v50[116];
  v67 = *&v50[20];
  v68 = *&v50[36];
  v69 = *&v50[52];
  v70 = *&v50[68];
  v65 = 65552;
  v74 = *&v50[132];
  v66 = *&v50[4];
  v75 = *&v50[136];
  v76 = v51;
  if ((BNNSTensor.count.getter() + 0x4000000000000000) >= 0)
  {
    v14 = 2;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

uint64_t BNNSGraph.Builder.ErrorMessagesWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v32 = a3;
  v31 = a9;
  v12 = *a5;
  v13 = a5[1];
  v35 = a2;
  *&v34 = v13;
  *(&v34 + 1) = a1;
  v33 = v12;
  if (a2)
  {
    v30 = *(a4 + 16);
    v16 = String.utf8CString.getter();
    v17 = v16 + 32;
    v18 = *(v16 + 16);

    v37 = a6;
    v38 = a7;
    v39 = a8;
    v40 = a10;
    v41 = a4;
    v42 = &v33;
    v43 = v12;
    v44 = v13;
    v19 = v32;
    v45 = v32;
    v46 = v30;
    v47 = v17;
    v48 = v18;
    (*(a10 + 24))(partial apply for closure #1 in closure #1 in BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:), v36, MEMORY[0x1E69E7CA8] + 8, a7, a10);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v29[2] = v20;
    v29[3] = a7;
    v29[4] = v21;
    v29[5] = a10;
    v29[6] = a4;
    v29[7] = &v33;
    v29[8] = v12;
    v29[9] = v13;
    v22 = v32;
    v29[10] = v32;
    v29[11] = v23;
    v24 = *(a10 + 24);

    v24(partial apply for closure #2 in BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:), v29, MEMORY[0x1E69E7CA8] + 8, a7, a10);
    v19 = v22;
  }

  v25 = v31;
  *v31 = v33;
  v26 = v35;
  *(v25 + 1) = v34;
  *(v25 + 3) = v26;
  v27 = *(*(a7 - 8) + 8);

  v27(v19, a7);
}

void closure #1 in closure #1 in BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a6)
  {
    goto LABEL_7;
  }

  v14 = (*(a14 + 16))(a12);
  if ((v14 * *(*(a11 - 8) + 72)) >> 64 != (v14 * *(*(a11 - 8) + 72)) >> 63)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!UnsafeBufferPointer.baseAddress.getter())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(a13 + 8))(a11);
  if (a9)
  {
    v15 = _bnns_graph_builder_register_constant_copy_data();
    BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v15, 0x746E6174736E6F43, 0xE800000000000000);
    return;
  }

LABEL_9:
  __break(1u);
}

void closure #2 in BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a6)
  {
    goto LABEL_6;
  }

  v12 = (*(a12 + 16))(a10);
  if ((v12 * *(*(a9 - 8) + 72)) >> 64 != (v12 * *(*(a9 - 8) + 72)) >> 63)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (UnsafeBufferPointer.baseAddress.getter())
  {
    (*(a11 + 8))(a9);
    v13 = _bnns_graph_builder_register_constant_copy_data();
    BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v13, 0x746E6174736E6F43, 0xE800000000000000);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #1 in BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  (*(a11 + 8))();
  v18 = *(a3 + 16);
  if (v18 > 0xFF)
  {
    __break(1u);
LABEL_72:
    a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), a3, 1, a10);
LABEL_15:
    *(a10 + 2) = a3;
    *&a10[8 * v11 + 32] = 0;
    if (v11 != 7)
    {
      v27 = *(a10 + 3);
      v28 = v11 + 2;
      if (a3 >= v27 >> 1)
      {
        a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v11 + 2, 1, a10);
      }

      *(a10 + 2) = v28;
      *&a10[8 * a3 + 32] = 0;
      if (v11 <= 5)
      {
        v29 = *(a10 + 3);
        v30 = v11 + 3;
        if (v28 >= v29 >> 1)
        {
          a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v11 + 3, 1, a10);
        }

        *(a10 + 2) = v30;
        *&a10[8 * v28 + 32] = 0;
        if (v11 != 5)
        {
          v31 = *(a10 + 3);
          v32 = v11 + 4;
          if (v30 >= v31 >> 1)
          {
            a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v11 + 4, 1, a10);
          }

          *(a10 + 2) = v32;
          *&a10[8 * v30 + 32] = 0;
          if (v11 <= 3)
          {
            v33 = *(a10 + 3);
            v34 = v11 + 5;
            if (v32 >= v33 >> 1)
            {
              a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v11 + 5, 1, a10);
            }

            *(a10 + 2) = v34;
            *&a10[8 * v32 + 32] = 0;
            if (v11 != 3)
            {
              v35 = *(a10 + 3);
              v36 = v11 + 6;
              if (v34 >= v35 >> 1)
              {
                a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v11 + 6, 1, a10);
              }

              *(a10 + 2) = v36;
              *&a10[8 * v34 + 32] = 0;
              if (v11 <= 1)
              {
                v37 = *(a10 + 3);
                v38 = v11 + 7;
                if (v36 >= v37 >> 1)
                {
                  a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v11 + 7, 1, a10);
                }

                *(a10 + 2) = v38;
                *&a10[8 * v36 + 32] = 0;
                if (!v11)
                {
                  v39 = *(a10 + 3);
                  if (v38 >= v39 >> 1)
                  {
                    a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), 8, 1, a10);
                  }

                  *(a10 + 2) = 8;
                  *&a10[8 * v38 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_37;
  }

  a10 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v19 = *(a3 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    a10 = v60;
    v20 = (a3 + 32);
    v21 = *(v60 + 16);
    do
    {
      v23 = *v20++;
      v22 = v23;
      v24 = *(v60 + 24);
      if (v21 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v21 + 1, 1);
      }

      *(v60 + 16) = v21 + 1;
      *(v60 + 8 * v21++ + 32) = v22;
      --v19;
    }

    while (v19);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || *(a10 + 3) <= 0xFuLL)
  {
    if (*(a10 + 2) <= 8uLL)
    {
      v26 = 8;
    }

    else
    {
      v26 = *(a10 + 2);
    }

    a10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 0, a10);
  }

  v11 = *(a10 + 2);
  if (v11 < 8)
  {
    v17 = *(a10 + 3);
    a3 = v11 + 1;
    if (v11 < v17 >> 1)
    {
      goto LABEL_15;
    }

    goto LABEL_72;
  }

LABEL_37:

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || *(a4 + 3) <= 0xFuLL)
  {
    if (*(a4 + 2) <= 8uLL)
    {
      v41 = 8;
    }

    else
    {
      v41 = *(a4 + 2);
    }

    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, 0, a4);
  }

  v42 = *(a4 + 2);
  if (v42 <= 7)
  {
    v43 = *(a4 + 3);
    v44 = v42 + 1;
    if (v42 >= v43 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42 + 1, 1, a4);
    }

    *(a4 + 2) = v44;
    *&a4[8 * v42 + 32] = 0;
    if (v42 != 7)
    {
      v45 = *(a4 + 3);
      v46 = v42 + 2;
      if (v44 >= v45 >> 1)
      {
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v42 + 2, 1, a4);
      }

      *(a4 + 2) = v46;
      *&a4[8 * v44 + 32] = 0;
      if (v42 <= 5)
      {
        v47 = *(a4 + 3);
        v48 = v42 + 3;
        if (v46 >= v47 >> 1)
        {
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v42 + 3, 1, a4);
        }

        *(a4 + 2) = v48;
        *&a4[8 * v46 + 32] = 0;
        if (v42 != 5)
        {
          v49 = *(a4 + 3);
          v50 = v42 + 4;
          if (v48 >= v49 >> 1)
          {
            a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v42 + 4, 1, a4);
          }

          *(a4 + 2) = v50;
          *&a4[8 * v48 + 32] = 0;
          if (v42 <= 3)
          {
            v51 = *(a4 + 3);
            v52 = v42 + 5;
            if (v50 >= v51 >> 1)
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v42 + 5, 1, a4);
            }

            *(a4 + 2) = v52;
            *&a4[8 * v50 + 32] = 0;
            if (v42 != 3)
            {
              v53 = *(a4 + 3);
              v54 = v42 + 6;
              if (v52 >= v53 >> 1)
              {
                a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v42 + 6, 1, a4);
              }

              *(a4 + 2) = v54;
              *&a4[8 * v52 + 32] = 0;
              if (v42 <= 1)
              {
                v55 = *(a4 + 3);
                v56 = v42 + 7;
                if (v54 >= v55 >> 1)
                {
                  a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v42 + 7, 1, a4);
                }

                *(a4 + 2) = v56;
                *&a4[8 * v54 + 32] = 0;
                if (!v42)
                {
                  v57 = *(a4 + 3);
                  if (v56 >= v57 >> 1)
                  {
                    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), 8, 1, a4);
                  }

                  *(a4 + 2) = 8;
                  *&a4[8 * v56 + 32] = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (a1)
  {
    if (a7)
    {
      v59 = _bnns_graph_builder_register_input();
      _StringGuts.grow(_:)(18);

      MEMORY[0x1B8CB1340](a8, a9);
      BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v59, 0xD000000000000010, 0x80000001B7E7E010);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.description.getter()
{
  v0 = BNNSGraph.Builder.Tensor.shape.getter();
  if (v0)
  {
    v1 = v0;
    v2 = BNNSGraph.Builder.Tensor.stride.getter();
    if (v2)
    {
      v3 = v2;
      _StringGuts.grow(_:)(22);

      v4 = MEMORY[0x1E69E6530];
      v5 = MEMORY[0x1B8CB1370](v1, MEMORY[0x1E69E6530]);
      v7 = v6;

      MEMORY[0x1B8CB1340](v5, v7);

      MEMORY[0x1B8CB1340](0x6469727473207C20, 0xEB00000000203A65);
      v8 = MEMORY[0x1B8CB1370](v3, v4);
      v10 = v9;

      MEMORY[0x1B8CB1340](v8, v10);

      return 0x203A6570616873;
    }
  }

  return 6369134;
}

void *BNNSGraph.Builder.Tensor.shape.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  result = *(v0 + 32);
  if (result)
  {
    _bnns_graph_builder_tensor_from_tensor_ref();
    v2 = __src[4];
    *&v4[63] = *&__src[68];
    *&v4[32] = *&__src[37];
    *&v4[48] = *&__src[53];
    *v4 = *&__src[5];
    *&v4[16] = *&__src[21];
    *__src = *&v4[3];
    *&__src[16] = *&v4[19];
    *&__src[32] = *&v4[35];
    *&__src[48] = *&v4[51];
    if (v2)
    {
      v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v2, 0);
      memcpy(v3 + 4, __src, 8 * v2);
      return v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

_OWORD *BNNSGraph.Builder.Tensor.stride.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    _bnns_graph_builder_tensor_from_tensor_ref();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    result = swift_allocObject();
    result[1] = xmmword_1B7E77EA0;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
    if (v4 > 8u)
    {
      __break(1u);
    }

    else if (((2 * v4) & 0x1E) != 0x10)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(result, (result + 2), 0, (2 * v4) | 1);
      v3 = v2;

      return v3;
    }
  }

  return result;
}

unint64_t BNNSGraph.Builder.Tensor.dataType.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    _bnns_graph_builder_tensor_from_tensor_ref();
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 32);
}

Swift::Int BNNSGraph.Builder.Intent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t specialized BNNSGraph.Builder.constant<A>(name:value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = result;
  if (a2)
  {
    result = String.utf8CString.getter();
    if (a4)
    {

      v10 = _bnns_graph_builder_register_constant_copy_data();
      if (v10)
      {
        v11 = v10;
      }

      else
      {

        MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
        MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
        swift_beginAccess();
        MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
        swift_endAccess();

        v11 = 0;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else if (a4)
  {

    result = _bnns_graph_builder_register_constant_copy_data();
    if (result)
    {
      v11 = result;
    }

    else
    {

      MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
      MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
      swift_beginAccess();
      MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
      swift_endAccess();

      v11 = 0;
    }

LABEL_10:
    *a5 = a3;
    a5[1] = a4;
    a5[2] = v8;
    a5[3] = a2;
    a5[4] = v11;
    return result;
  }

  __break(1u);
  return result;
}

{
  v8 = result;
  if (a2)
  {
    result = String.utf8CString.getter();
    if (a4)
    {

      v10 = _bnns_graph_builder_register_constant_copy_data();
      if (v10)
      {
        v11 = v10;
      }

      else
      {

        MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
        MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
        swift_beginAccess();
        MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
        swift_endAccess();

        v11 = 0;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else if (a4)
  {

    result = _bnns_graph_builder_register_constant_copy_data();
    if (result)
    {
      v11 = result;
    }

    else
    {

      MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
      MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
      swift_beginAccess();
      MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
      swift_endAccess();

      v11 = 0;
    }

LABEL_10:
    *a5 = a3;
    a5[1] = a4;
    a5[2] = v8;
    a5[3] = a2;
    a5[4] = v11;
    return result;
  }

  __break(1u);
  return result;
}

__n128 BNNSGraph.Builder.constant<A>(name:value:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *v6;
  v14 = v6[1];
  getContiguousArrayStorageType<A>(for:)(a4, a4);
  v15 = *(a4 - 8);
  swift_allocObject();

  v16 = static Array._adoptStorage(_:count:)();
  (*(v15 + 16))(v17, a3, a4);
  v24 = v16;
  v18 = type metadata accessor for Array();
  destructiveProjectEnumData for vImage(v18);
  v22[1] = v14;
  v23 = v16;
  v22[0] = v13;

  WitnessTable = swift_getWitnessTable();
  BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:)(a1, a2, &v23, &outlined read-only object #0 of BNNSGraph.Builder.constant<A>(name:value:), v22, a4, v18, a5, &v24, WitnessTable);
  result = v25;
  v21 = v26;
  *a6 = v24;
  *(a6 + 8) = result;
  *(a6 + 24) = v21;
  return result;
}

__n128 BNNSGraph.Builder.constant<A, B>(name:values:shape:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27 = a4;
  v28 = a6;
  v25 = a2;
  v26 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v8;
  v16 = v8[1];
  (*(v17 + 16))(v14, v18, v19);
  if (a3)
  {
    v20 = a3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B7E76D90;
    *(v20 + 32) = (*(a7 + 16))(a5, a7);
  }

  v29[0] = v15;
  v29[1] = v16;
  v21 = v25;

  BNNSGraph.Builder.Tensor.init<A>(_:values:shape:builder:)(v26, v21, v14, v20, v29, v27, a5, v28, &v30, a7);
  result = v31;
  v23 = v32;
  *a8 = v30;
  *(a8 + 8) = result;
  *(a8 + 24) = v23;
  return result;
}

uint64_t BNNSGraph.Builder.constant(values:rowMajor:)(uint64_t a1, uint64_t a2)
{
  return BNNSGraph.Builder.constant(values:rowMajor:)(a1, a2, Array<A>.graphBuilderTensor(_:rowMajor:));
}

{
  return BNNSGraph.Builder.constant(values:rowMajor:)(a1, a2, Array<A>.graphBuilderTensor(_:rowMajor:));
}

uint64_t Array<A>.graphBuilderTensor(_:rowMajor:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = a1[1];
  v41 = *a1;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v42;
    v8 = a3 + 32;
    v9 = *(v42 + 16);
    v10 = v6;
    do
    {
      v11 = *(*v8 + 16);
      v12 = *(v42 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
      }

      *(v42 + 16) = v9 + 1;
      *(v42 + 8 * v9 + 32) = v11;
      v8 += 8;
      ++v9;
      --v10;
    }

    while (v10);
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v7);

  if (*(v13 + 16) != 1)
  {
    goto LABEL_44;
  }

  if (!v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v27 = swift_allocObject();
    v28 = v27;
    *(v27 + 16) = xmmword_1B7E77850;
    if (a2)
    {
      *(v27 + 32) = v6;
      v29 = specialized Collection.first.getter(v13);
      if (v30)
      {
        goto LABEL_42;
      }

      v6 = v29;
    }

    else
    {
      v31 = specialized Collection.first.getter(v13);
      if (v32)
      {
        goto LABEL_43;
      }

      v33 = v31;

      *(v28 + 32) = v33;
    }

    *(v28 + 40) = v6;
    v34 = v40;
    if (!v40)
    {
      goto LABEL_41;
    }

    v35 = v41;
    if (*(v15 + 2) + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    v36 = _bnns_graph_builder_register_constant_copy_data();
    if (v36)
    {
      v37 = v36;
    }

    else
    {

      MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
      MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
      swift_beginAccess();
      v34 = v40;
      v35 = v41;
      MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
      swift_endAccess();

      v37 = 0;
    }

    *a4 = v35;
    a4[1] = v34;
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = v37;
    return result;
  }

  v14 = (a3 + 32);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v6;
  while (1)
  {
    v17 = *v14;
    v18 = *(*v14 + 16);
    v19 = *(v15 + 2);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= *(v15 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      if (*(v17 + 16))
      {
LABEL_20:
        v23 = *(v15 + 2);
        if ((*(v15 + 3) >> 1) - v23 < v18)
        {
          goto LABEL_38;
        }

        memcpy(&v15[2 * v23 + 32], (v17 + 32), 2 * v18);

        if (v18)
        {
          v24 = *(v15 + 2);
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_39;
          }

          *(v15 + 2) = v26;
        }

        goto LABEL_10;
      }
    }

    if (v18)
    {
      goto LABEL_37;
    }

LABEL_10:
    ++v14;
    if (!--v16)
    {
      goto LABEL_25;
    }
  }

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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v40 = a1[1];
  v41 = *a1;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v42;
    v8 = a3 + 32;
    v9 = *(v42 + 16);
    v10 = v6;
    do
    {
      v11 = *(*v8 + 16);
      v12 = *(v42 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
      }

      *(v42 + 16) = v9 + 1;
      *(v42 + 8 * v9 + 32) = v11;
      v8 += 8;
      ++v9;
      --v10;
    }

    while (v10);
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v7);

  if (*(v13 + 16) != 1)
  {
    goto LABEL_44;
  }

  if (!v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v27 = swift_allocObject();
    v28 = v27;
    *(v27 + 16) = xmmword_1B7E77850;
    if (a2)
    {
      *(v27 + 32) = v6;
      v29 = specialized Collection.first.getter(v13);
      if (v30)
      {
        goto LABEL_42;
      }

      v6 = v29;
    }

    else
    {
      v31 = specialized Collection.first.getter(v13);
      if (v32)
      {
        goto LABEL_43;
      }

      v33 = v31;

      *(v28 + 32) = v33;
    }

    *(v28 + 40) = v6;
    v34 = v40;
    if (!v40)
    {
      goto LABEL_41;
    }

    v35 = v41;
    if (*(v15 + 2) >> 61)
    {
      goto LABEL_40;
    }

    v36 = _bnns_graph_builder_register_constant_copy_data();
    if (v36)
    {
      v37 = v36;
    }

    else
    {

      MEMORY[0x1B8CB1340](0x746E6174736E6F43, 0xE800000000000000);
      MEMORY[0x1B8CB1340](23840, 0xE200000000000000);
      swift_beginAccess();
      v34 = v40;
      v35 = v41;
      MEMORY[0x1B8CB1340](0x3A726F727245205BLL, 0xE900000000000020);
      swift_endAccess();

      v37 = 0;
    }

    *a4 = v35;
    a4[1] = v34;
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = v37;
    return result;
  }

  v14 = (a3 + 32);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v6;
  while (1)
  {
    v17 = *v14;
    v18 = *(*v14 + 16);
    v19 = *(v15 + 2);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= *(v15 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      if (*(v17 + 16))
      {
LABEL_20:
        v23 = *(v15 + 2);
        if ((*(v15 + 3) >> 1) - v23 < v18)
        {
          goto LABEL_38;
        }

        memcpy(&v15[4 * v23 + 32], (v17 + 32), 4 * v18);

        if (v18)
        {
          v24 = *(v15 + 2);
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_39;
          }

          *(v15 + 2) = v26;
        }

        goto LABEL_10;
      }
    }

    if (v18)
    {
      goto LABEL_37;
    }

LABEL_10:
    ++v14;
    if (!--v16)
    {
      goto LABEL_25;
    }
  }

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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.constant(values:rowMajor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  return a3(v6, a2, a1);
}

double Array<A>.graphBuilderTensor(_:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *&result = BNNSGraph.Builder.constant<A, B>(name:values:shape:)(0, 0, 0, a1, v6, a2, WitnessTable, a3).n128_u64[0];
  return result;
}

double ContiguousArray<A>.graphBuilderTensor(_:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  *&result = BNNSGraph.Builder.constant<A, B>(name:values:shape:)(0, 0, 0, a1, v6, a2, WitnessTable, a3).n128_u64[0];
  return result;
}

double ArraySlice<A>.graphBuilderTensor(_:)@<D0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  *&result = BNNSGraph.Builder.constant<A, B>(name:values:shape:)(0, 0, 0, a1, v6, a2, WitnessTable, a3).n128_u64[0];
  return result;
}

uint64_t UnsafeBufferPointer<A>.graphBuilderTensor(_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void (*a3)(void, uint64_t)@<X5>, uint64_t a4@<X8>)
{
  a3(0, a1);
  swift_getWitnessTable();
  Array.init<A>(_:)();
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  BNNSGraph.Builder.constant<A, B>(name:values:shape:)(0, 0, 0, a1, v7, a2, WitnessTable, a4);
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v4 = 0;
    v5 = v2 + 3;
    do
    {
      if (v4 != v5 - 4)
      {
        v7 = *(v1 + 2);
        if (v4 >= v7)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v5 - 4 >= v7)
        {
          goto LABEL_15;
        }

        v8 = &v1[8 * v4];
        v9 = *(v8 + 4);
        *(v8 + 4) = *&v1[8 * v5];
        *&v1[8 * v5] = v9;
      }

      ++v4;
      v6 = v5 - 5;
      --v5;
    }

    while (v4 < v6);
    *v0 = v1;
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = v5 - 32;
  v6 = v5 < 32;
  v8 = v5 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  v4[1].i64[0] = v2;
  v4[1].i64[1] = 2 * (v8 >> 3);
  v9 = &v4[2];
  if (v2 < 4)
  {
    v10 = 0;
LABEL_11:
    v14 = v2 - v10;
    do
    {
      *v9++ = a2;
      --v14;
    }

    while (v14);
    return result;
  }

  v10 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v9 += v2 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = vdupq_n_s64(a2);
  v12 = v4 + 3;
  v13 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 4;
  }

  while (v13);
  if (v10 != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t _sSo10BNNSTensoraSgWOg(uint64_t a1)
{
  if (*(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type BNNSGraph.Builder.Intent and conformance BNNSGraph.Builder.Intent()
{
  result = lazy protocol witness table cache variable for type BNNSGraph.Builder.Intent and conformance BNNSGraph.Builder.Intent;
  if (!lazy protocol witness table cache variable for type BNNSGraph.Builder.Intent and conformance BNNSGraph.Builder.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNSGraph.Builder.Intent and conformance BNNSGraph.Builder.Intent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BNNSGraph.Builder.Tensor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for BNNSGraph.Builder.Tensor(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized BNNSGraph.Builder.Tensor.arrayToBitmask(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v20;
  v4 = v20[1].u64[0];
  v5 = 32;
  do
  {
    v6 = *(v1 + v5);
    v7 = v20[1].u64[1];
    if (v4 >= v7 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4 + 1, 1);
    }

    v20[1].i64[0] = v4 + 1;
    v20[2].i64[v4] = 1 << v6;
    v5 += 8;
    ++v4;
    --v2;
  }

  while (v2);

  v8 = v20[1].u64[0];
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0;
LABEL_17:
    v16 = v8 - v9;
    v17 = &v3[2].i64[v9];
    do
    {
      v18 = *v17++;
      *&v10 |= v18;
      --v16;
    }

    while (v16);
    goto LABEL_19;
  }

  v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = v3 + 3;
  v12 = 0uLL;
  v13 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = 0uLL;
  do
  {
    v12 = vorrq_s8(v11[-1], v12);
    v14 = vorrq_s8(*v11, v14);
    v11 += 2;
    v13 -= 4;
  }

  while (v13);
  v15 = vorrq_s8(v14, v12);
  v10 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  if (v8 != v9)
  {
    goto LABEL_17;
  }

LABEL_19:

  return v10;
}

uint64_t vDSP.FourierTransformDirection.dftDirection.getter()
{
  if (*v0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

Swift::Int vDSP.FourierTransformDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type vDSP.FourierTransformDirection and conformance vDSP.FourierTransformDirection()
{
  result = lazy protocol witness table cache variable for type vDSP.FourierTransformDirection and conformance vDSP.FourierTransformDirection;
  if (!lazy protocol witness table cache variable for type vDSP.FourierTransformDirection and conformance vDSP.FourierTransformDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.FourierTransformDirection and conformance vDSP.FourierTransformDirection);
  }

  return result;
}

uint64_t static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v3, partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:));
}

{
  v3 = (*(a3 + 16))(a2, a3);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v3, partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:));
}

uint64_t closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  **a1 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v12 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(a3, a1, a5, v11, a6, v12);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(void **a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v6;
  return closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(a1, a2, v5, &v8, v3, v4);
}

uint64_t static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v11 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v10(a3, a5);
  if (__OFSUB__(result, 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (((result - 2) & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v10 = *(a5 + 16);
  v11 = v10(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v11 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v10(a3, a5);
  if (__OFSUB__(result, 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (((result - 2) & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(const float *a1, int a2, __int128 *a3, float **a4, vDSP_Length __N)
{
  if (a1)
  {
    v5 = *(a3 + 4);
    v7 = *a3;
    v8 = v5;
    v6 = *a4;
    if (v6)
    {
      vDSP_deq22(a1, 1, &v7, v6, 1, __N);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  *v11 = 0;
  v11[1] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v13 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(a3, a1, a5, v12, a6, v13);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

void closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(const double *a1, int a2, uint64_t a3, double **a4, vDSP_Length __N)
{
  if (a1)
  {
    v5 = *(a3 + 32);
    v6 = *(a3 + 16);
    v8[0] = *a3;
    v8[1] = v6;
    v9 = v5;
    v7 = *a4;
    if (v7)
    {
      vDSP_deq22D(a1, 1, v8, v7, 1, __N);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v7[1] = *(v1 + 56);
  v8 = v4;
  v9 = a1;
  v10 = v5;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:), v7, MEMORY[0x1E69E7CA8] + 8, v2);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 72);
  v8[1] = *(v1 + 56);
  v8[2] = v6;
  v9 = v4;
  v10 = a1;
  v11 = v5;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:), v8, MEMORY[0x1E69E7CA8] + 8, v2);
}

uint64_t partial apply for closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(void *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 72);
  v7 = *(v2 + 56);
  v9[0] = *(v2 + 40);
  v9[1] = v7;
  v10 = v6;
  return closure #1 in static vDSP.twoPoleTwoZeroFilter<A>(_:coefficients:)(a1, a2, v5, v9, v3, v4);
}

double partial apply for closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(const double *a1, int a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 32);
  v6[0] = *(v2 + 16);
  v6[1] = v4;
  v7 = v3;
  closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(a1, a2, v6, *(v2 + 56), *(v2 + 64));
  return result;
}

float partial apply for closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(const float *a1, int a2)
{
  v3 = *(v2 + 32);
  v5 = *(v2 + 16);
  v6 = v3;
  closure #1 in closure #1 in static vDSP.twoPoleTwoZeroFilter<A, B>(_:coefficients:result:)(a1, a2, &v5, *(v2 + 40), *(v2 + 48));
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.gather<A>(indices:axis:batchDimensionCount:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v19 = *v4;
  v8 = v19;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v22) = 1;
  v16 = *(v4 + 8);
  v17 = *(v4 + 24);
  v11 = *(v4 + 8);
  *&v20 = v11;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v19, v9, v10, &v22);
  v19 = v8;
  v21 = v17;
  v20 = v16;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_6;
  }

  v18[0] = v8;
  v18[1] = v11;
  (*(a3 + 24))(&v19, v18, a2, a3);

  v12 = *(&v21 + 1);

  if (!v12)
  {
LABEL_6:
    *a4 = v22;
    v15 = v24;
    *(a4 + 8) = v23;
    *(a4 + 24) = v15;
    return result;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_gather();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000029, 0x80000001B7E7E030);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.gatherAlongAxis<A>(indices:axis:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19 = *v4;
  v8 = v19;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v22) = 1;
  v16 = *(v4 + 8);
  v17 = *(v4 + 24);
  v11 = *(v4 + 8);
  *&v20 = v11;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v19, v10, v9, &v22);
  v19 = v8;
  v21 = v17;
  v20 = v16;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_6;
  }

  v18[0] = v8;
  v18[1] = v11;
  (*(a3 + 24))(&v19, v18, a2, a3);

  v12 = *(&v21 + 1);

  if (!v12)
  {
LABEL_6:
    *a4 = v22;
    v15 = v24;
    *(a4 + 8) = v23;
    *(a4 + 24) = v15;
    return result;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_gather_along_axis();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD00000000000001ELL, 0x80000001B7E7E060);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.gatherND<A>(indices:batchDimensionCount:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19 = *v4;
  v8 = v19;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_retain_n();
  LOBYTE(v22) = 1;
  v16 = *(v4 + 8);
  v17 = *(v4 + 24);
  v11 = *(v4 + 8);
  *&v20 = v11;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v19, v10, v9, &v22);
  v19 = v8;
  v21 = v17;
  v20 = v16;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_6;
  }

  v18[0] = v8;
  v18[1] = v11;
  (*(a3 + 24))(&v19, v18, a2, a3);

  v12 = *(&v21 + 1);

  if (!v12)
  {
LABEL_6:
    *a4 = v22;
    v15 = v24;
    *(a4 + 8) = v23;
    *(a4 + 24) = v15;
    return result;
  }

  if (v11)
  {
    v14 = _bnns_graph_builder_register_gather_nd();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v14, 0xD000000000000026, 0x80000001B7E7E080);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.scatter<A>(updates:indices:mode:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v17 = *a1;
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  v25 = *v5;
  v9 = v25;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v5 + 8);
  v21 = *(v5 + 24);
  v12 = *(v5 + 8);
  *&v26 = v12;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v11, v10, &v28);
  v25 = v9;
  v26 = v20;
  v27 = v21;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v22 = v9;
  *&v23 = v12;
  (*(a4 + 24))(&v25, &v22, a3, a4);

  v13 = *(&v27 + 1);

  if (!v13)
  {

    goto LABEL_8;
  }

  v22 = v17;
  v24 = v18;
  v23 = v19;
  BNNSGraph.Builder.Tensor.graphBuilderTensor(_:)(&v25);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {
LABEL_8:
    *a5 = v28;
    *(a5 + 8) = v29;
    *(a5 + 24) = v30;
    return result;
  }

  if (v12)
  {
    v16 = _bnns_graph_builder_register_scatter();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD000000000000023, 0x80000001B7E7E0B0);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.scatterAlongAxis<A>(updates:indices:mode:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v17 = *a1;
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  v25 = *v5;
  v9 = v25;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v5 + 8);
  v21 = *(v5 + 24);
  v12 = *(v5 + 8);
  *&v26 = v12;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v11, v10, &v28);
  v25 = v9;
  v26 = v20;
  v27 = v21;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v22 = v9;
  *&v23 = v12;
  (*(a4 + 24))(&v25, &v22, a3, a4);

  v13 = *(&v27 + 1);

  if (!v13)
  {

    goto LABEL_8;
  }

  v22 = v17;
  v24 = v18;
  v23 = v19;
  BNNSGraph.Builder.Tensor.graphBuilderTensor(_:)(&v25);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {
LABEL_8:
    *a5 = v28;
    *(a5 + 8) = v29;
    *(a5 + 24) = v30;
    return result;
  }

  if (v12)
  {
    v16 = _bnns_graph_builder_register_scatter_along_axis();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD00000000000002CLL, 0x80000001B7E7E0E0);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t BNNSGraph.Builder.Tensor.scatterND<A>(updates:indices:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v17 = *a1;
  v18 = *(a1 + 24);
  v19 = *(a1 + 8);
  v25 = *v5;
  v9 = v25;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_retain_n();
  LOBYTE(v28) = 1;
  v20 = *(v5 + 8);
  v21 = *(v5 + 24);
  v12 = *(v5 + 8);
  *&v26 = v12;
  BNNSGraph.Builder.Tensor.init(_:intent:dataType:shape:builder:)(0, 0xE000000000000000, 0x100000000uLL, MEMORY[0x1E69E7CC0], &v25, v11, v10, &v28);
  v25 = v9;
  v26 = v20;
  v27 = v21;
  if (!BNNSGraph.Builder.Tensor.tensorData.getter())
  {

    goto LABEL_8;
  }

  v22 = v9;
  *&v23 = v12;
  (*(a4 + 24))(&v25, &v22, a3, a4);

  v13 = *(&v27 + 1);

  if (!v13)
  {

    goto LABEL_8;
  }

  v22 = v17;
  v24 = v18;
  v23 = v19;
  BNNSGraph.Builder.Tensor.graphBuilderTensor(_:)(&v25);

  v22 = v25;
  v23 = v26;
  v24 = v27;
  v14 = BNNSGraph.Builder.Tensor.tensorData.getter();

  if (!v14)
  {
LABEL_8:
    *a5 = v28;
    *(a5 + 8) = v29;
    *(a5 + 24) = v30;
    return result;
  }

  if (v12)
  {
    v16 = _bnns_graph_builder_register_scatter_nd();
    result = BNNSGraph.Builder.Tensor.setTensorData(_:operationName:)(v16, 0xD000000000000020, 0x80000001B7E7E110);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t vImage.PixelBuffer<>.premultiply(alpha:)(uint64_t *a1)
{
  v1 = MEMORY[0x1E6958A10];

  return vImage.PixelBuffer<>.premultiply(alpha:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958A18];

  return vImage.PixelBuffer<>.premultiply(alpha:)(a1, v1);
}

uint64_t vImage.PixelBuffer<>.unpremultiply(alpha:)(uint64_t *a1)
{
  v1 = MEMORY[0x1E6958AD0];

  return vImage.PixelBuffer<>.premultiply(alpha:)(a1, v1);
}

{
  v1 = MEMORY[0x1E6958AD8];

  return vImage.PixelBuffer<>.premultiply(alpha:)(a1, v1);
}

uint64_t vImage.PixelBuffer<>.premultiply(channelOrdering:)(_BYTE *a1)
{
  v1 = MEMORY[0x1E6958A00];
  v2 = MEMORY[0x1E6958A30];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

{
  v1 = MEMORY[0x1E69589F8];
  v2 = MEMORY[0x1E6958A28];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

{
  v1 = MEMORY[0x1E6958A08];
  v2 = MEMORY[0x1E6958A38];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

uint64_t vImage.PixelBuffer<>.unpremultiply(channelOrdering:)(_BYTE *a1)
{
  v1 = MEMORY[0x1E6958AC0];
  v2 = MEMORY[0x1E6958AF0];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

{
  v1 = MEMORY[0x1E6958AB8];
  v2 = MEMORY[0x1E6958AE8];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

{
  v1 = MEMORY[0x1E6958AC8];
  v2 = MEMORY[0x1E6958AF8];

  return vImage.PixelBuffer<>.premultiply(channelOrdering:)(a1, v1, v2);
}

uint64_t vImage.PixelBuffer<>.premultiply()()
{
  v0 = MEMORY[0x1E6958A20];

  return vImage.PixelBuffer<>.premultiply()(v0);
}

uint64_t vImage.PixelBuffer<>.unpremultiply()()
{
  v0 = MEMORY[0x1E6958AE0];

  return vImage.PixelBuffer<>.premultiply()(v0);
}

uint64_t vImage.PixelBuffer<>.premultiply()(uint64_t (*a1)(_OWORD *, _OWORD *, void))
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
  }

  v3 = *(v2 + 48);
  v5[0] = *(v2 + 32);
  v5[1] = v3;
  return a1(v5, v5, 0);
}

uint64_t vImage.PixelBuffer<>.premultiply(alpha:)(uint64_t *a1, uint64_t (*a2)(_OWORD *, _OWORD *, _OWORD *, void))
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  if (!*(*v2 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v4 = *(v3 + 48);
  v9[0] = *(v3 + 32);
  v9[1] = v4;
  v5 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 48);
  v8[0] = *(v5 + 32);
  v8[1] = v6;
  return a2(v9, v8, v9, 0);
}

uint64_t vImage.PixelBuffer<>.premultiply(channelOrdering:)(_BYTE *a1, uint64_t (*a2)(_OWORD *, _OWORD *, void), uint64_t (*a3)(_OWORD *, _OWORD *, void))
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    __break(1u);
  }

  v5 = *(v4 + 48);
  v7[0] = *(v4 + 32);
  v7[1] = v5;
  if (*a1)
  {
    return a3(v7, v7, 0);
  }

  else
  {
    return a2(v7, v7, 0);
  }
}

uint64_t vImage.PixelBuffer<>.premultipliedAlphaBlend(_:topLayer:destination:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v6)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 != v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6 != v9)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v11)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 != v5)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (v12 != v6)
  {
    goto LABEL_48;
  }

  v13 = v10[4];
  v14 = v10[7];
  srcBottom.data = v13;
  srcBottom.height = v6;
  srcBottom.width = v5;
  srcBottom.rowBytes = v14;
  v15 = v4[4];
  v16 = v4[7];
  srcTop.data = v15;
  srcTop.height = v6;
  srcTop.width = v5;
  srcTop.rowBytes = v16;
  v17 = v7[4];
  v18 = v7[7];
  dest.data = v17;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v18;
  v19 = *a1;
  if (v19 <= 1)
  {
    if (!*a1)
    {
      return vImagePremultipliedAlphaBlendMultiply_RGBA8888(&srcTop, &srcBottom, &dest, 0);
    }

    if (v19 == 1)
    {
      return vImagePremultipliedAlphaBlendScreen_RGBA8888(&srcTop, &srcBottom, &dest, 0);
    }

    goto LABEL_49;
  }

  if (v19 == 2)
  {
    return vImagePremultipliedAlphaBlendDarken_RGBA8888(&srcTop, &srcBottom, &dest, 0);
  }

  if (v19 != 3)
  {
LABEL_49:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return vImagePremultipliedAlphaBlendLighten_RGBA8888(&srcTop, &srcBottom, &dest, 0);
}

vImage_Error vImage.PixelBuffer<>.alphaComposite(_:topLayer:destination:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v5 != v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 != v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v11 != v5)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if (v12 != v6)
  {
    goto LABEL_46;
  }

  v13 = v10[4];
  v14 = v10[7];
  srcBottom.data = v13;
  srcBottom.height = v6;
  srcBottom.width = v5;
  srcBottom.rowBytes = v14;
  v15 = v4[4];
  v16 = v4[7];
  srcTop.data = v15;
  srcTop.height = v6;
  srcTop.width = v5;
  srcTop.rowBytes = v16;
  v17 = v7[4];
  v18 = v7[7];
  dest.data = v17;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v18;
  v19 = *a1;
  if (a1[1] != 1)
  {
    return vImagePremultipliedConstAlphaBlend_ARGB8888(&srcTop, v19, &srcBottom, &dest, 0);
  }

  if (!*a1)
  {
    return vImageAlphaBlend_ARGB8888(&srcTop, &srcBottom, &dest, 0);
  }

  if (v19 == 1)
  {
    return vImagePremultipliedAlphaBlend_ARGB8888(&srcTop, &srcBottom, &dest, 0);
  }

  return vImageAlphaBlend_NonpremultipliedToPremultiplied_ARGB8888(&srcTop, &srcBottom, &dest, 0);
}

vImage_Error vImage.PixelBuffer<>.alphaComposite(_:topLayer:destination:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4[6];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v5 != v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 != v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v10[6];
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = v10[5];
  if (v12 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v11 != v5)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if (v12 != v6)
  {
    goto LABEL_46;
  }

  v13 = v10[4];
  v14 = v10[7];
  srcBottom.data = v13;
  srcBottom.height = v6;
  srcBottom.width = v5;
  srcBottom.rowBytes = v14;
  v15 = v4[4];
  v16 = v4[7];
  srcTop.data = v15;
  srcTop.height = v6;
  srcTop.width = v5;
  srcTop.rowBytes = v16;
  v17 = v7[4];
  v18 = v7[7];
  dest.data = v17;
  dest.height = v6;
  dest.width = v5;
  dest.rowBytes = v18;
  v19 = *a1;
  if (*(a1 + 4) != 1)
  {
    return vImagePremultipliedConstAlphaBlend_ARGBFFFF(&srcTop, *a1, &srcBottom, &dest, 0);
  }

  if (v19 == 0.0)
  {
    return vImageAlphaBlend_ARGBFFFF(&srcTop, &srcBottom, &dest, 0);
  }

  if (LODWORD(v19) == 1)
  {
    return vImagePremultipliedAlphaBlend_ARGBFFFF(&srcTop, &srcBottom, &dest, 0);
  }

  return vImageAlphaBlend_NonpremultipliedToPremultiplied_ARGBFFFF(&srcTop, &srcBottom, &dest, 0);
}

Swift::Int vImage.BlendMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type vImage.BlendMode and conformance vImage.BlendMode()
{
  result = lazy protocol witness table cache variable for type vImage.BlendMode and conformance vImage.BlendMode;
  if (!lazy protocol witness table cache variable for type vImage.BlendMode and conformance vImage.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.BlendMode and conformance vImage.BlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vImage.CompositeMode(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 3;
  v7 = *(v4 + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 4)
        {
          return v18 - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for vImage.CompositeMode(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 3;
  if (v6 <= 2)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 3) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
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

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t static vDSP.minimum<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static vDSP.minimum<A>(_:_:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.minimum<A>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.minimum<A>(_:_:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.minimum<A>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t partial apply for closure #1 in static vDSP.minimum<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.minimum<A>(_:_:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.minimum<A, B>(_:_:result:));
}

{
  return closure #1 in static vDSP.minimum<A>(_:_:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.minimum<A, B>(_:_:result:));
}

uint64_t static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.minimum<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

{
  return static vDSP.minimum<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

uint64_t closure #1 in static vDSP.minimum<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unint64_t *a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v17 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a9, a7);
  a10(a3, a4, a1, a5, v16, a6, v17);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.maximum<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static vDSP.minimum<A>(_:_:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.maximum<A>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.minimum<A>(_:_:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.maximum<A>(_:_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.maximum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.minimum<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

{
  return static vDSP.minimum<A, B>(_:_:result:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

uint64_t static vDSP.minimum<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = *(a4 + 16);
  v11 = v10(a3, a4);
  result = v10(a3, a4);
  if (v11 == result)
  {
    v13 = v10(a3, a4);
    v14 = MEMORY[0x1EEE9AC00](v13);
    return a6(v14, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a6 + 16);
  v13 = v12(a4, a6);
  v14 = v12(a4, a6);
  result = (*(*(a7 + 8) + 16))(a5);
  if (v14 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  if (result < v16)
  {
    v16 = result;
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a7 + 16))(a8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *a5;
  if (v7)
  {
    return a7(a3, 1, result, 1, v7, 1, a6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.absolute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.absolute<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.absolute<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.absolute<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.absolute<A, B>(_:result:));
}

{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.absolute<A, B>(_:result:));
}

uint64_t closure #1 in static vDSP.absolute<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a8, a6);
  a9(a3, a1, a4, v15, a5, v16);
  result = (*(a5 + 16))(a4, a5);
  *a2 = result;
  return result;
}

uint64_t static vDSP.negativeAbsolute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.negativeAbsolute<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.negativeAbsolute<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.negativeAbsolute<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:));
}

{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:));
}

uint64_t static vDSP.negative<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.negative<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.negative<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.negative<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.negative<A, B>(_:result:));
}

{
  return static vDSP.absolute<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.negative<A, B>(_:result:));
}

uint64_t static vDSP.absolute<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (*(*(a6 + 8) + 16))(a4);
  result = (*(a5 + 16))(a3, a5);
  if (result == v11)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a6 + 16))(a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return a5();
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.reverse<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.reverse<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.reverse<A>(_:));
}

{
  return static vDSP.reverse<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.reverse<A>(_:));
}

uint64_t static vDSP.reverse<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*(a3 + 8) + 16))(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 16))(a4);
  }

  return result;
}

uint64_t vDSP.SortOrder.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t vDSP.SortOrder.rawValue.getter()
{
  if (*v0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance vDSP.SortOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance vDSP.SortOrder()
{
  if (*v0)
  {
    v1 = -1;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance vDSP.SortOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance vDSP.SortOrder@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance vDSP.SortOrder(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t static vDSP.sort<A>(_:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static vDSP.sort<A>(_:sortOrder:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:));
}

{
  return static vDSP.sort<A>(_:sortOrder:)(a1, a2, a3, a4, partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:));
}

uint64_t static vDSP.sort<A>(_:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(*(a4 + 8) + 16))(a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a4 + 16))(a5);
  }

  return result;
}

uint64_t static vDSP.square<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.square<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.square<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.square<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.square<A, B>(_:result:));
}

{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.square<A, B>(_:result:));
}

uint64_t static vDSP.signedSquare<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.signedSquare<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.signedSquare<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.signedSquare<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.signedSquare<A, B>(_:result:));
}

{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.signedSquare<A, B>(_:result:));
}

uint64_t static vDSP.trunc<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.trunc<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5);
}

{
  return static vDSP.absolute<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.trunc<A>(_:), _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5);
}

uint64_t static vDSP.trunc<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.trunc<A, B>(_:result:));
}

{
  return static vDSP.square<A, B>(_:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.trunc<A, B>(_:result:));
}

uint64_t static vDSP.absolute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  v10 = (*(a3 + 16))(a2, a3);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  return a5(v10, a4, v12);
}

uint64_t static vDSP.square<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 + 16);
  v12 = v11(a3, a5);
  result = (*(*(a6 + 8) + 16))(a4);
  if (v12 == result)
  {
    result = v11(a3, a5);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a6 + 16))(a7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.countZeroCrossings<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static vDSP.countZeroCrossings<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:));
}

{

  return static vDSP.countZeroCrossings<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:));
}

uint64_t static vDSP.countZeroCrossings<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (v6 < 0)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](v6);
  (*(a3 + 24))(a4);
  return 0;
}

uint64_t partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.maximum<A>(_:_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.minimum<A>(_:_:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.maximum<A, B>(_:_:result:));
}

{
  return closure #1 in static vDSP.minimum<A>(_:_:)(a1, a2, v2[4], v2[5], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.maximum<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.maximum<A, B>(_:_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  v5 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = v5;
  v10 = v3;
  v11 = a1;
  v12 = v4;
  return (*(v5 + 24))(a2, &v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in static vDSP.absolute<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.absolute<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.absolute<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.absolute<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.negativeAbsolute<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.negativeAbsolute<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.negativeAbsolute<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.negative<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.negative<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.negative<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.negative<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.negative<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.negative<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.reverse<A>(_:)(uint64_t *a1)
{
  return partial apply for closure #1 in static vDSP.reverse<A>(_:)(a1, MEMORY[0x1E69590E0]);
}

{
  return partial apply for closure #1 in static vDSP.reverse<A>(_:)(a1, MEMORY[0x1E69590E8]);
}

uint64_t partial apply for closure #1 in static vDSP.reverse<A>(_:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  result = *a1;
  if (result)
  {
    return a2(result, 1, *(v2 + 16));
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:)(uint64_t *a1)
{
  return partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:)(a1, MEMORY[0x1E6959160]);
}

{
  return partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:)(a1, MEMORY[0x1E6959168]);
}

uint64_t partial apply for closure #1 in static vDSP.sort<A>(_:sortOrder:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (result)
  {
    return a2();
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.square<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.square<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.square<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.square<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.square<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.square<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.signedSquare<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.signedSquare<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.signedSquare<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.signedSquare<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.signedSquare<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.signedSquare<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.trunc<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.trunc<A, B>(_:result:));
}

{
  return closure #1 in static vDSP.absolute<A>(_:)(a1, a2, v2[4], v2[2], v2[3], &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.trunc<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.trunc<A, B>(_:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:));
}

{
  return partial apply for closure #1 in static vDSP.convertElements<A, B>(of:to:)(a1, partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:)(a1, a2, MEMORY[0x1E6958D30]);
}

{
  return partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:)(a1, a2, MEMORY[0x1E6958D38]);
}

uint64_t partial apply for closure #1 in static vDSP.countZeroCrossings<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void, void))
{
  if (result)
  {
    return a3(result, 1, v3[2], v3[3], v3[4], v3[2]);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type vDSP.SortOrder and conformance vDSP.SortOrder()
{
  result = lazy protocol witness table cache variable for type vDSP.SortOrder and conformance vDSP.SortOrder;
  if (!lazy protocol witness table cache variable for type vDSP.SortOrder and conformance vDSP.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.SortOrder and conformance vDSP.SortOrder);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6958FB8]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6958FB0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.signedSquare<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6959190]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6959188]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.square<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6959180]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(a1, a2, MEMORY[0x1E6959178]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.trunc<A, B>(_:result:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    if (**(v3 + 16))
    {
      return a3();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.negative<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E69590A8]);
}

{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E69590A0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.negativeAbsolute<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6959098]);
}

{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6959090]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958DE0]);
}

{
  return closure #1 in closure #1 in static vDSP.absolute<A, B>(_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), MEMORY[0x1E6958DD8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959028]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959020]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959038]);
}

{
  return closure #1 in closure #1 in closure #1 in static vDSP.minimum<A, B>(_:_:result:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), MEMORY[0x1E6959030]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.maximum<A, B>(_:_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[4];
  v6 = v3[7];
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

void __swiftcall vImage_CGImageFormat.init(cgImage:)(vImage_CGImageFormat_optional *__return_ptr retstr, CGImageRef cgImage)
{
  specialized vImage_CGImageFormat.init(cgImage:)(cgImage, v5);

  v4 = v5[1];
  *&retstr->value.bitsPerComponent = v5[0];
  *&retstr->value.bitmapInfo = v4;
  *&retstr->value.renderingIntent = v6;
}

void __swiftcall vImage_CGImageFormat.init(bitsPerComponent:bitsPerPixel:colorSpace:bitmapInfo:renderingIntent:)(vImage_CGImageFormat_optional *__return_ptr retstr, Swift::Int bitsPerComponent, Swift::Int bitsPerPixel, CGColorSpaceRef colorSpace, CGBitmapInfo bitmapInfo, CGColorRenderingIntent renderingIntent)
{
  if (bitsPerComponent <= 0 || bitsPerPixel < 0)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    colorSpace = 1;
    goto LABEL_7;
  }

  if (HIDWORD(bitsPerComponent))
  {
    __break(1u);
  }

  else if (!HIDWORD(bitsPerPixel))
  {
    v7 = bitsPerComponent | (bitsPerPixel << 32);
    v8 = bitmapInfo;
    v9 = renderingIntent;
LABEL_7:
    *&retstr->value.bitsPerComponent = v7;
    retstr->value.colorSpace = colorSpace;
    *&retstr->value.bitmapInfo = v8;
    retstr->value.decode = 0;
    *&retstr->value.renderingIntent = v9;
    return;
  }

  __break(1u);
}

uint64_t vImage_CGImageFormat.componentCount.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v1;
  v4 = *(v0 + 32);
  return MEMORY[0x1B8CB3220](v3);
}

void specialized vImage_CGImageFormat.init(cgImage:)(CGImage *a1@<X0>, size_t *a2@<X8>)
{
  v4 = CGImageGetColorSpace(a1);
  if (!v4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v5 = 1;
    goto LABEL_8;
  }

  v5 = v4;
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if ((BitsPerComponent & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = BitsPerComponent;
  if (HIDWORD(BitsPerComponent))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  if ((BitsPerPixel & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = BitsPerPixel;
  if (!HIDWORD(BitsPerPixel))
  {
    v10 = v5;
    BitmapInfo = CGImageGetBitmapInfo(a1);
    RenderingIntent = CGImageGetRenderingIntent(a1);

    v13 = v7 | (v9 << 32);
    v14 = BitmapInfo;
    v15 = RenderingIntent;
LABEL_8:
    *a2 = v13;
    a2[1] = v5;
    a2[2] = v14;
    a2[3] = 0;
    a2[4] = v15;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t static vDSP.phase<A>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return static vDSP.phase<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.phase<A>(_:result:));
}

{
  return static vDSP.phase<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.phase<A>(_:result:));
}

void *partial apply for closure #1 in static vDSP.phase<A>(_:result:)(void *a1)
{
  return partial apply for closure #1 in static vDSP.phase<A>(_:result:)(a1, MEMORY[0x1E6959278]);
}

{
  return partial apply for closure #1 in static vDSP.phase<A>(_:result:)(a1, MEMORY[0x1E6959280]);
}

uint64_t static vDSP.copy(_:to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E6959258];

  return static vDSP.copy(_:to:count:)(a1, a2, a3, a4, v4);
}

{
  v4 = MEMORY[0x1E6959260];

  return static vDSP.copy(_:to:count:)(a1, a2, a3, a4, v4);
}

uint64_t static vDSP.copy(_:to:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (a4 < 0)
  {
    __break(1u);
  }

  v6[0] = a1;
  v6[1] = a2;
  return a5(v6, 1, a3, 1, a4);
}

uint64_t static vDSP.conjugate(_:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E6959228];

  return static vDSP.conjugate(_:count:result:)(a1, a2, a3, a4, v4);
}

{
  v4 = MEMORY[0x1E6959230];

  return static vDSP.conjugate(_:count:result:)(a1, a2, a3, a4, v4);
}

uint64_t static vDSP.conjugate(_:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v6[1] = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  return a5(v6, 1, a4, 1, a3);
}

uint64_t static vDSP.divide<A>(_:by:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vDSP.divide<A>(_:by:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in static vDSP.divide<A>(_:by:result:));
}

{

  return static vDSP.divide<A>(_:by:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in static vDSP.divide<A>(_:by:result:));
}

uint64_t static vDSP.multiply<A>(_:by:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static vDSP.divide<A>(_:by:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:));
}

{

  return static vDSP.divide<A>(_:by:result:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:));
}

uint64_t static vDSP.divide<A>(_:by:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v8[1] = a2;
  v10 = a5;
  v11 = a6;
  v12 = v8;
  v13 = a4;
  v14 = a3;
  return (*(a6 + 24))(a7, v9, MEMORY[0x1E69E7CA8] + 8, a5, a6);
}

uint64_t closure #1 in closure #1 in static vDSP.divide<A>(_:by:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    v11 = result;
    result = (*(a7 + 16))(a6, a7);
    if ((result & 0x8000000000000000) == 0)
    {
      return a8(a3, 1, v11, 1, a4, 1, result);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static vDSP.multiply(_:by:count:useConjugate:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = MEMORY[0x1E6959268];

  return static vDSP.multiply(_:by:count:useConjugate:result:)(a1, a2, a3, a4, a5, a6, a7, v7);
}

{
  v7 = MEMORY[0x1E6959270];

  return static vDSP.multiply(_:by:count:useConjugate:result:)(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t static vDSP.multiply(_:by:count:useConjugate:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;
  if (a5 < 0)
  {
    __break(1u);
  }

  if (a6)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

  return a8(v12, 1, v11, 1, a7, 1, a5, v9);
}

uint64_t static vDSP.add(_:to:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E6959218];

  return static vDSP.add(_:to:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

{
  v6 = MEMORY[0x1E6959220];

  return static vDSP.add(_:to:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t static vDSP.add(_:to:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (a5 < 0)
  {
    __break(1u);
  }

  return a7(v9, 1, v8, 1, a6, 1, a5);
}

uint64_t static vDSP.divide(_:by:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E6959238];

  return static vDSP.divide(_:by:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

{
  v6 = MEMORY[0x1E6959240];

  return static vDSP.divide(_:by:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t static vDSP.divide(_:by:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (a5 < 0)
  {
    __break(1u);
  }

  return a7(v8, 1, v9, 1, a6, 1, a5);
}

uint64_t static vDSP.subtract(_:from:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1E6959288];

  return static vDSP.subtract(_:from:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

{
  v6 = MEMORY[0x1E6959290];

  return static vDSP.subtract(_:from:count:result:)(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t static vDSP.subtract(_:from:count:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a1;
  v8[1] = a2;
  if (a5 < 0)
  {
    __break(1u);
  }

  return a7(v8, 1, v9, 1, a6, 1, a5);
}

uint64_t static vDSP.absolute<A>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return static vDSP.absolute<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.absolute<A>(_:result:));
}

{
  return static vDSP.absolute<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.absolute<A>(_:result:));
}

uint64_t partial apply for closure #1 in static vDSP.absolute<A>(_:result:)(void *a1)
{
  return closure #1 in static vDSP.absolute<A>(_:result:)(a1, v1[2], v1[3], v1[4], MEMORY[0x1E6959208]);
}

{
  return closure #1 in static vDSP.absolute<A>(_:result:)(a1, v1[2], v1[3], v1[4], MEMORY[0x1E6959210]);
}

uint64_t static vDSP.absolute<A>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*(a5 + 8) + 16))(a4);
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v11;
  return (*(a5 + 16))(a6, v13, MEMORY[0x1E69E7CA8] + 8, a4, a5);
}

uint64_t closure #1 in static vDSP.absolute<A>(_:result:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t))
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  if (!*a1)
  {
LABEL_5:
    __break(1u);
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  return a5(v6, 1);
}

uint64_t static vDSP.squareMagnitudes<A>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return static vDSP.phase<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.squareMagnitudes<A>(_:result:));
}

{
  return static vDSP.phase<A>(_:result:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.squareMagnitudes<A>(_:result:));
}

void *partial apply for closure #1 in static vDSP.squareMagnitudes<A>(_:result:)(void *a1)
{
  return partial apply for closure #1 in static vDSP.phase<A>(_:result:)(a1, MEMORY[0x1E6959248]);
}

{
  return partial apply for closure #1 in static vDSP.phase<A>(_:result:)(a1, MEMORY[0x1E6959250]);
}

uint64_t static vDSP.phase<A>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*(a5 + 8) + 16))(a4);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a5 + 16))(a6);
  }

  return result;
}

void *partial apply for closure #1 in static vDSP.phase<A>(_:result:)(void *result, uint64_t (*a2)(__int128 *, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  if (*result)
  {
    return a2(&v4, 1, *result, 1, v3);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:)(a1, a2, MEMORY[0x1E69591F0]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:)(a1, a2, MEMORY[0x1E69591E8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.divide<A>(_:by:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:)(a1, a2, MEMORY[0x1E69591E0]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.multiply<A>(_:by:result:)(a1, a2, MEMORY[0x1E69591D8]);
}

uint64_t BNNS.NearestNeighborsRef.__deallocating_deinit()
{
  MEMORY[0x1B8CB1970](*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.NearestNeighbors.init(capacity:dimensionCount:neighborCount:dataType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = a2;
  *(a5 + 16) = a1;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  type metadata accessor for BNNS.NearestNeighborsRef();
  result = swift_allocObject();
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 | a1 | a3) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  result = MEMORY[0x1B8CB1920](a1, a2, a3, a4, 0);
  if (result)
  {
    *(v11 + 16) = result;
    *a5 = v11;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t BNNS.NearestNeighbors.append(samples:)(uint64_t result)
{
  v2 = v1;
  if (*(result + 144) != *(v1 + 32))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = *v2;
  BNNSNDArrayDescriptor.shape.getter(v7);
  result = _s10Accelerate4BNNSO5ShapeOWOg(v7);
  if ((result - 1) >= 4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (!*(v3 + 136))
  {
    return result;
  }

  BNNSNDArrayDescriptor.shape.getter(v6);
  result = BNNS.Shape.size.getter(v5);
  if ((v5[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (HIDWORD(v5[0]))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x1B8CB1D60](*(v4 + 16));
  if (result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void BNNS.NearestNeighbors.apply(index:outputIndices:outputDistances:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a1 = -1;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    if (*(a3 + 136))
    {
      if (*(a4 + 136))
      {
LABEL_13:
        JUMPOUT(0x1B8CB1D50);
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __break(1u);
  goto LABEL_11;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.NearestNeighbors(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for BNNS.NearestNeighbors(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Int vDSP.DCTTransformType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

vDSP_DFT_SetupStruct *vDSP.DCT.init(previous:count:transformType:)(vDSP_DFT_SetupStruct *result, vDSP_Length a2, unsigned __int8 *a3)
{
  if (result)
  {
    result = *(result + 2);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    Setup = vDSP_DCT_CreateSetup(result, a2, (*a3 + 2));

    if (Setup)
    {
      *(v3 + 16) = Setup;
    }

    else
    {
      type metadata accessor for vDSP.DCT();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v3;
  }

  return result;
}

uint64_t closure #1 in vDSP.DCT.transform<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v12 = lazy protocol witness table accessor for type [vDSP.DCTTransformType] and conformance [A](&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  v13 = *(a3 + 16);
  v16 = a5;
  v17 = v11;
  v18 = a6;
  v19 = v12;
  v20 = a4;
  v21 = v13;
  (*(v12 + 16))(partial apply for closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dctSetup:source:destination:), v15, MEMORY[0x1E69E7CA8] + 8, v11, v12);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t vDSP.DCT.transform<A, B>(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a1;
  v9[7] = v7;
  return (*(a6 + 16))(partial apply for closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dctSetup:source:destination:), v9, MEMORY[0x1E69E7CA8] + 8, a4, a6);
}

uint64_t vDSP.DCT.__deallocating_deinit()
{
  vDSP_DFT_DestroySetup(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type vDSP.DCTTransformType and conformance vDSP.DCTTransformType()
{
  result = lazy protocol witness table cache variable for type vDSP.DCTTransformType and conformance vDSP.DCTTransformType;
  if (!lazy protocol witness table cache variable for type vDSP.DCTTransformType and conformance vDSP.DCTTransformType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.DCTTransformType and conformance vDSP.DCTTransformType);
  }

  return result;
}

uint64_t partial apply for closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dctSetup:source:destination:)(uint64_t a1)
{
  v5[3] = a1;
  v2 = v1[2];
  v3 = v1[4];
  v5[2] = v1[7];
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dctSetup:source:destination:), v5, MEMORY[0x1E69E7CA8] + 8, v2);
}

void partial apply for closure #1 in closure #1 in static vDSP.VectorizableFloat.transform<A, B>(dctSetup:source:destination:)(const float *__Input)
{
  if (__Input)
  {
    v2 = **(v1 + 24);
    if (v2)
    {
      vDSP_DCT_Execute(*(v1 + 16), __Input, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t lazy protocol witness table accessor for type [vDSP.DCTTransformType] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v14 = *(a8 + 16);
  v15 = v14(a5, a8);
  result = (*(a7 + 16))(a4, a7);
  if (v15 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = (*(*(a9 + 8) + 16))(a6);
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v14(a5, a8);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a9 + 16))(v17);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

void static vDSP.linearInterpolate<A, B>(values:atIndices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = static vDSP.maximum<A>(_:)(a2, a4, a6);
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(v6, 1))
  {
    v7 = MEMORY[0x1EEE9AC00](v6 + 1);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v7, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:));
    return;
  }

LABEL_9:
  __break(1u);
}

{
  v6 = static vDSP.maximum<A>(_:)(a2, a4, a6);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(v6, 1))
  {
    v7 = MEMORY[0x1EEE9AC00](v6 + 1);
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v7, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:));
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

{
  return partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *a5;
  if (v8)
  {
    return a8(a3, 1, result, 1, v8, 1, a6, a7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (*(a8 + 16))(a5, a8);
  v12 = *(a9 + 8);
  v13 = *(v12 + 16);
  result = v13(a6, v12);
  if (v11 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = (*(a7 + 16))(a4, a7);
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v13(a6, v12);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a9 + 16))(partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v11 = (*(a8 + 16))(a5, a8);
  v12 = *(a9 + 8);
  v13 = *(v12 + 16);
  result = v13(a6, v12);
  if (v11 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = (*(a7 + 16))(a4, a7);
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v13(a6, v12);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a9 + 16))(partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:));
  }

LABEL_7:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(const float *a1, int a2, const float *__C, int a4, vDSP_Length __M, float **a6, vDSP_Length __N, float a8, float a9)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = a8;
  v9 = a9;
  if (!__C)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a6)
  {
    vDSP_vtabi(a1, 1, &v10, &v9, __C, __M, *a6, 1, __N);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (*(a6 + 16))(a4, a6);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v6, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:));
}

{
  v6 = (*(a6 + 16))(a4, a6);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v6, partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:));
}

uint64_t closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(a3, a4, a1, a5, a6, v14, a7, a8, v15);
  result = (*(a8 + 16))(a6, a8);
  *a2 = result;
  return result;
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(a3, a4, a1, a5, a6, v14, a7, a8, v15);
  result = (*(a8 + 16))(a6, a8);
  *a2 = result;
  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(const double *a1, int a2, const double *__C, int a4, vDSP_Length __M, double **a6, vDSP_Length __N, double a8, double a9)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = a8;
  v9 = a9;
  if (!__C)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a6)
  {
    vDSP_vtabiD(a1, 1, &v10, &v9, __C, __M, *a6, 1, __N);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static vDSP.fill<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 8) + 16))(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 16))(partial apply for closure #1 in static vDSP.fill<A>(_:with:));
  }

  return result;
}

{
  result = (*(*(a3 + 8) + 16))(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 16))(partial apply for closure #1 in static vDSP.fill<A>(_:with:));
  }

  return result;
}

uint64_t static vDSP.clear<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static vDSP.clear<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.clear<A>(_:));
}

{
  return static vDSP.clear<A>(_:)(a1, a2, a3, partial apply for closure #1 in static vDSP.clear<A>(_:));
}

uint64_t static vDSP.clear<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*(a3 + 8) + 16))(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a3 + 16))(a4);
  }

  return result;
}

Swift::Int vDSP.WindowSequence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t static vDSP.window<A>(ofType:usingSequence:count:isHalfWindow:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a3 < 1)
  {
    __break(1u);
  }

  else
  {
    if (a5 == MEMORY[0x1E69E6448])
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = a3;
      v15 = v8 + 32;
      v16 = a3;
      v9 = *a2;
      v10 = MEMORY[0x1E6958C70];
      v11 = MEMORY[0x1E6958C60];
      v12 = MEMORY[0x1E6958BD8];
      goto LABEL_6;
    }

    if (a5 == MEMORY[0x1E69E63B0])
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = a3;
      v15 = v8 + 32;
      v16 = a3;
      v9 = *a2;
      v10 = MEMORY[0x1E6958C78];
      v11 = MEMORY[0x1E6958C68];
      v12 = MEMORY[0x1E6958BE0];
LABEL_6:
      _s10Accelerate4vDSPO10formWindow13usingSequence6result06isHalfD0yAC0dF0O_xzSbtAA0A13MutableBufferRzSf7ElementRtzlFZSrySfG_Tt2B5Tm(v9, &v15, a4 & 1, v10, v11, v12);
      *(v8 + 16) = a3;
      v13 = _arrayForceCast<A, B>(_:)();

      return v13;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:));
}

{
  return static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(a1, a2, a3, a4, a5, partial apply for closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:));
}

uint64_t _s10Accelerate4vDSPO10formWindow13usingSequence6result06isHalfD0yAC0dF0O_xzSbtAA0A13MutableBufferRzSf7ElementRtzlFZSrySfG_Tt2B5Tm(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a2[1] < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = *a2;
  if (v6 <= 1u)
  {
    if (v6)
    {
      if (result)
      {
        return a4();
      }

      goto LABEL_16;
    }

    if (result)
    {
      return a4();
    }

    goto LABEL_14;
  }

  if (v6 == 2)
  {
    if (result)
    {
      return a5();
    }

    goto LABEL_15;
  }

  if (result)
  {
    return a6();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(*(a5 + 8) + 16))(a4);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a5 + 16))(a6);
  }

  return result;
}

uint64_t closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(uint64_t *a1, unsigned __int8 a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t, void))
{
  result = *a1;
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (result)
      {
        return a5();
      }

      goto LABEL_14;
    }

    if (result)
    {
      return a5();
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    if (result)
    {
      return a6(result, a3, a4 & 1);
    }

    goto LABEL_13;
  }

  if (result)
  {
    return a7(result, a3, a4 & 1);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static vDSP.ramp(withInitialValue:increment:count:)(int64_t a1, float a2, float a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    __break(1u);
  }

  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = a1;
  v8 = a3;
  __A = a2;
  vDSP_vramp(&__A, &v8, (v6 + 32), 1, a1);
  *(v6 + 16) = a1;
  return v6;
}

uint64_t static vDSP.formRamp<A>(withInitialValue:increment:result:)(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = (*(*(a5 + 8) + 16))(a4);
  if (v9 < 0)
  {
    __break(1u);
  }

  v11 = a1;
  v12 = a2;
  v14 = &v11;
  v15 = &v12;
  v16 = v9;
  return (*(a5 + 16))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:), v13, MEMORY[0x1E69E7CA8] + 8, a4, a5);
}

uint64_t static vDSP.ramp(withInitialValue:increment:count:)(int64_t a1, double a2, double a3)
{
  __A[1] = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    __break(1u);
  }

  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = a1;
  __B = a3;
  __A[0] = a2;
  vDSP_vrampD(__A, &__B, (v6 + 32), 1, a1);
  *(v6 + 16) = a1;
  return v6;
}

uint64_t static vDSP.formRamp<A>(withInitialValue:increment:result:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = (*(*(a5 + 8) + 16))(a4);
  if (v9 < 0)
  {
    __break(1u);
  }

  v11 = a1;
  v12 = a2;
  v14 = &v11;
  v15 = &v12;
  v16 = v9;
  return (*(a5 + 16))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:), v13, MEMORY[0x1E69E7CA8] + 8, a4, a5);
}

uint64_t static vDSP.ramp(in:count:)(int64_t a1, float a2, float a3)
{

  return static vDSP.ramp(in:count:)(a1, a2, a3);
}

{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    __break(1u);
  }

  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = a1;
  v8 = a2;
  __B = (a3 - a2) / (a1 + -1.0);
  vDSP_vramp(&v8, &__B, (v6 + 32), 1, a1);
  *(v6 + 16) = a1;
  return v6;
}

uint64_t static vDSP.formRamp<A>(in:result:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{

  return static vDSP.formRamp<A>(in:result:)(a4, a5, a1, a2, a3, partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(in:result:));
}

uint64_t static vDSP.ramp(in:count:)(int64_t a1, double a2, double a3)
{

  return static vDSP.ramp(in:count:)(a1, a2, a3);
}

{
  __B[1] = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    __break(1u);
  }

  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = a1;
  __A = a2;
  __B[0] = (a3 - a2) / (a1 + -1.0);
  vDSP_vrampD(&__A, __B, (v6 + 32), 1, a1);
  *(v6 + 16) = a1;
  return v6;
}

uint64_t static vDSP.formRamp<A>(in:result:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{

  return static vDSP.formRamp<A>(in:result:)(a4, a5, a1, a2, a3, partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(in:result:));
}

uint64_t static vDSP.formRamp<A>(from:through:result:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{

  return static vDSP.formRamp<A>(in:result:)(a4, a5, a1, a2, a3, partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:));
}

uint64_t static vDSP.formRamp<A>(in:result:)(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = (*(*(a5 + 8) + 16))(a4);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v13 = a1;
  v14 = (a2 - a1) / (v11 + -1.0);
  v16 = &v13;
  v17 = &v14;
  v18 = v11;
  return (*(a5 + 16))(a6, v15, MEMORY[0x1E69E7CA8] + 8, a4, a5);
}

uint64_t static vDSP.formRamp<A>(from:through:result:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{

  return static vDSP.formRamp<A>(in:result:)(a4, a5, a1, a2, a3, partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:));
}

uint64_t static vDSP.formRamp<A>(in:result:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = (*(*(a5 + 8) + 16))(a4);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v13 = a1;
  v14 = (a2 - a1) / (v11 + -1.0);
  v16 = &v13;
  v17 = &v14;
  v18 = v11;
  return (*(a5 + 16))(a6, v15, MEMORY[0x1E69E7CA8] + 8, a4, a5);
}

uint64_t static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v4, partial apply for closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:));
}

{
  v4 = (*(a4 + 16))(a3, a4);
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v4, partial apply for closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:));
}

uint64_t closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v13 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(a3, a4, a1, a5, v12, a6, v13);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v13 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(a3, a4, a1, a5, v12, a6, v13);
  result = (*(a6 + 16))(a5, a6);
  *a2 = result;
  return result;
}

uint64_t static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a6 + 16))(a4, a6);
  v10 = *(a7 + 8);
  v11 = *(v10 + 16);
  result = v11(a5, v10);
  if (v9 == result)
  {
    result = v11(a5, v10);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a7 + 16))(partial apply for closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v9 = (*(a6 + 16))(a4, a6);
  v10 = *(a7 + 8);
  v11 = *(v10 + 16);
  result = v11(a5, v10);
  if (v9 == result)
  {
    result = v11(a5, v10);
    if ((result & 0x8000000000000000) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      return (*(a7 + 16))(partial apply for closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(const float *a1, int a2, float *a3, float **a4, vDSP_Length __N, float a6)
{
  v7 = *MEMORY[0x1E69E9840];
  __Step = a6;
  if (!a1)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!*a4)
  {
    goto LABEL_5;
  }

  vDSP_vrampmul(a1, 1, a3, &__Step, *a4, 1, __N);
}

void closure #1 in closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(const double *a1, int a2, double *a3, double **a4, vDSP_Length __N, double a6)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a6;
  if (!a1)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!*a4)
  {
    goto LABEL_5;
  }

  vDSP_vrampmulD(a1, 1, a3, v6, *a4, 1, __N);
}

uint64_t static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 16))(a4, a5);
  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v5, partial apply for closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:));
  result = 0;
  __break(1u);
  return result;
}

{
  v5 = (*(a5 + 16))(a4, a5);
  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v5, partial apply for closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:));
  result = 0;
  __break(1u);
  return result;
}

uint64_t static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a8 + 16);
  v13 = v12(a6, a8);
  result = v12(a6, a8);
  if (v13 != result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(a9 + 8);
  v16 = *(v15 + 16);
  v17 = v16(a7, v15);
  result = v16(a7, v15);
  if (v17 != result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v12(a6, a8);
  result = v16(a7, v15);
  if (v18 != result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v16(a7, v15);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a9 + 16))(partial apply for closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:));
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v12 = *(a8 + 16);
  v13 = v12(a6, a8);
  result = v12(a6, a8);
  if (v13 != result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(a9 + 8);
  v16 = *(v15 + 16);
  v17 = v16(a7, v15);
  result = v16(a7, v15);
  if (v17 != result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v12(a6, a8);
  result = v16(a7, v15);
  if (v18 != result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v16(a7, v15);
  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return (*(a9 + 16))(partial apply for closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:));
  }

LABEL_9:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(const float *__I1, int a2, const float *__I0, int a4, float *__Start, float **a6, float **a7, vDSP_Length __N, float a9)
{
  v12 = *MEMORY[0x1E69E9840];
  __Step = a9;
  if (!__I0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!__I1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = *a6;
  if (!v9)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v10 = *a7;
  if (!v10)
  {
    goto LABEL_9;
  }

  vDSP_vrampmul2(__I0, __I1, 1, __Start, &__Step, v9, v10, 1, __N);
}

void closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(const double *__I1, int a2, const double *__I0, int a4, double *__Start, double **a6, double **a7, vDSP_Length __N, double a9)
{
  __Step[1] = *MEMORY[0x1E69E9840];
  __Step[0] = a9;
  if (!__I0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!__I1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = *a6;
  if (!v9)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v10 = *a7;
  if (!v10)
  {
    goto LABEL_9;
  }

  vDSP_vrampmul2D(__I0, __I1, 1, __Start, __Step, v9, v10, 1, __N);
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = *(v2 + 40);
  v11 = v4;
  v12 = v5;
  v13 = a1;
  v14 = *(v2 + 80);
  return (*(v10 + 24))(a2, &v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(values:atIndices:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6[2];
  v10 = v6[3];
  v18 = v6[5];
  v19 = v6[4];
  v12 = v6[6];
  v13 = v6[7];
  v17 = v6[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v15 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3);
  result = a6(v12, v13, a1, v11, v10, v14, v19, v18, v15);
  *a2 = v17;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  v4 = *(v1 + 72);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v9 = *(v1 + 16);
  v10 = v2;
  v11 = *(v1 + 40);
  v12 = v3;
  v13 = v4;
  v14 = *(v1 + 80);
  v15 = v5;
  v16 = a1;
  v17 = v6;
  return (*(v11 + 24))(partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:), &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  v4 = *(v1 + 72);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v9 = *(v1 + 16);
  v10 = v2;
  v11 = *(v1 + 40);
  v12 = v3;
  v13 = v4;
  v14 = *(v1 + 80);
  v15 = v5;
  v16 = a1;
  v17 = v6;
  return (*(v11 + 24))(partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:), &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5]);
}

{
  return closure #1 in static vDSP.linearInterpolate<A, B>(lookupTable:withOffsets:scale:baseOffset:)(a1, a2, v2[6], v2[7], v2[2], v2[3], v2[4], v2[5]);
}

void partial apply for closure #1 in static vDSP.fill<A>(_:with:)(float **a1)
{
  v2 = *(v1 + 24);
  __A = *(v1 + 16);
  if (*a1)
  {
    vDSP_vfill(&__A, *a1, 1, v2);
  }

  else
  {
    __break(1u);
  }
}

void partial apply for closure #1 in static vDSP.fill<A>(_:with:)(double **a1)
{
  v2 = *(v1 + 24);
  __A = *(v1 + 16);
  if (*a1)
  {
    vDSP_vfillD(&__A, *a1, 1, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t partial apply for closure #1 in static vDSP.clear<A>(_:)(uint64_t *a1)
{
  return partial apply for closure #1 in static vDSP.clear<A>(_:)(a1, MEMORY[0x1E6958E48]);
}

{
  return partial apply for closure #1 in static vDSP.clear<A>(_:)(a1, MEMORY[0x1E6958E50]);
}

uint64_t partial apply for closure #1 in static vDSP.clear<A>(_:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  result = *a1;
  if (result)
  {
    return a2(result, 1, *(v2 + 16));
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(uint64_t *a1)
{
  return closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), MEMORY[0x1E6958C70], MEMORY[0x1E6958C60], MEMORY[0x1E6958BD8]);
}

{
  return closure #1 in static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), MEMORY[0x1E6958C78], MEMORY[0x1E6958C68], MEMORY[0x1E6958BE0]);
}

uint64_t partial apply for closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:)(uint64_t a1, uint64_t *a2)
{
  return closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

{
  return closure #1 in static vDSP.ramp<A>(withInitialValue:multiplyingBy:increment:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

uint64_t partial apply for closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v6[4] = *(v1 + 56);
  v7 = v4;
  v8 = a1;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:), v6, MEMORY[0x1E69E7CA8] + 8, v2);
}

{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[8];
  v6[2] = v1[7];
  v6[3] = v4;
  v6[4] = a1;
  return (*(v3 + 24))(partial apply for closure #1 in closure #1 in static vDSP.formRamp<A, B>(withInitialValue:multiplyingBy:increment:result:), v6, MEMORY[0x1E69E7CA8] + 8, v2);
}

uint64_t partial apply for closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 32);
  v6 = *(v2 + 40);
  *v4 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5(v6, partial apply for closure #1 in closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:));

  *a2 = v6;
  return result;
}

{
  v4 = *(v2 + 32);
  v6 = *(v2 + 40);
  *v4 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1gq5(v6, partial apply for closure #1 in closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:));

  *a2 = v6;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v6[2] = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v2;
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = v4;
  v12 = a1;
  return (*(v2 + 16))(partial apply for closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v6[2] = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v2;
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = v4;
  v12 = a1;
  return (*(v2 + 16))(partial apply for closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

unint64_t lazy protocol witness table accessor for type vDSP.WindowSequence and conformance vDSP.WindowSequence()
{
  result = lazy protocol witness table cache variable for type vDSP.WindowSequence and conformance vDSP.WindowSequence;
  if (!lazy protocol witness table cache variable for type vDSP.WindowSequence and conformance vDSP.WindowSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vDSP.WindowSequence and conformance vDSP.WindowSequence);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v2;
  v10 = v3;
  v11 = *(v1 + 72);
  v12 = a1;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9 = v2;
  v10 = v3;
  v11 = *(v1 + 72);
  v12 = a1;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), &v6, MEMORY[0x1E69E7CA8] + 8, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8[2] = *(v2 + 56);
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v2 + 64);
  v10 = v5;
  v11 = v6;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), v8, MEMORY[0x1E69E7CA8] + 8, v3);
}

{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8[4] = *(v2 + 56);
  v9 = a1;
  v10 = a2;
  v11 = *(v2 + 64);
  v12 = v5;
  v13 = v6;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:), v8, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.stereoRamp<A>(withInitialValue:multiplyingBy:_:increment:)(uint64_t a1, void *a2)
{
  v12 = v2[2];
  v13 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[8];
  v8 = v2[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySdGMd);
  v10 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, &_sSrySdGMd);
  result = static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(v4, v5, v6, a1, v7, v12, v9, v13, v10);
  *a2 = v8;
  return result;
}

{
  v12 = v2[2];
  v13 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[8];
  v8 = v2[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSrySfGMd);
  v10 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, &_sSrySfGMd);
  result = static vDSP.formStereoRamp<A, B>(withInitialValue:multiplyingBy:_:increment:results:_:)(v4, v5, v6, a1, v7, v12, v9, v13, v10);
  *a2 = v8;
  return result;
}

void *partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(in:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:)(a1, MEMORY[0x1E69590D8]);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:)(a1, MEMORY[0x1E69590D0]);
}

void *partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:)(void *result, uint64_t (*a2)(void, void, void, uint64_t, void))
{
  if (*result)
  {
    return a2(v2[2], v2[3], *result, 1, v2[4]);
  }

  __break(1u);
  return result;
}

void *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:)(a1, MEMORY[0x1E69590D8]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:)(a1, MEMORY[0x1E69590D0]);
}

void *partial apply for closure #1 in closure #1 in closure #1 in static vDSP.formRamp<A>(withInitialValue:increment:result:)(void *result, uint64_t (*a2)(void, void, void, uint64_t, void))
{
  if (*result)
  {
    return a2(v2[2], v2[3], *result, 1, v2[4]);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  v8[1] = *(v2 + 72);
  v9 = a1;
  v10 = a2;
  v11 = v5;
  v12 = v6;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:), v8, MEMORY[0x1E69E7CA8] + 8, v3);
}

{
  v3 = *(v2 + 24);
  v4 = *(v2 + 48);
  v5 = *(v2 + 80);
  v7[2] = *(v2 + 72);
  v7[3] = a1;
  v7[4] = a2;
  v8 = v5;
  return (*(v4 + 24))(partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(lookupTable:withOffsets:scale:baseOffset:result:), v7, MEMORY[0x1E69E7CA8] + 8, v3);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, MEMORY[0x1E6958FD8]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(a1, a2, MEMORY[0x1E6958FD0]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.linearInterpolate<A, B, C>(values:atIndices:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 48);
  v6 = *(v3 + 72);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v9 = *(v3 + 80);
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

void *partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(from:through:result:)(void *a1)
{
  return partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(in:result:)(a1);
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.formRamp<A>(in:result:)(a1);
}

uint64_t static vDSP.ramp(from:through:count:)(int64_t a1, float a2, float a3)
{

  return static vDSP.ramp(in:count:)(a1, a2, a3);
}

uint64_t static vDSP.ramp(from:through:count:)(int64_t a1, double a2, double a3)
{

  return static vDSP.ramp(in:count:)(a1, a2, a3);
}

uint64_t vImage.BufferType.init(bufferTypeCode:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = 0;
  switch(result)
  {
    case 1:
      v4 = (a2 & 0x1FFFFFFF8) == 0;
      v5 = 17;
      v6 = 8 * (a2 & 7);
      v7 = 0x141111110E031110;
      goto LABEL_12;
    case 2:
      v4 = (a2 & 0x1FFFFFFF8) == 0;
      v5 = 18;
      v6 = 8 * (a2 & 7);
      v7 = 0x151212120C041212;
      goto LABEL_12;
    case 3:
      v4 = (a2 & 0x1FFFFFFF8) == 0;
      v5 = 19;
      v6 = 8 * (a2 & 7);
      v7 = 0x161313130D051313;
LABEL_12:
      v8 = v7 >> v6;
      if (v4)
      {
        v5 = v8;
      }

      *a3 = v5;
      return result;
    case 4:
      *a3 = 2;
      return result;
    case 17:
      goto LABEL_10;
    case 18:
      *a3 = 11;
      return result;
    case 19:
      *a3 = 6;
      return result;
    case 20:
      *a3 = 15;
      return result;
    case 21:
      *a3 = 9;
      return result;
    case 22:
      *a3 = 7;
      return result;
    case 23:
      *a3 = 8;
      return result;
    case 24:
      *a3 = 1;
      return result;
    case 25:
      *a3 = 10;
      return result;
    default:
      v3 = 23;
LABEL_10:
      *a3 = v3;
      return result;
  }
}

double static vImage_ARGBToYpCbCrMatrix.itu_R_601_4.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0000849609638;
  *a1 = xmmword_1B7E7C160;
  a1[1] = xmmword_1B7E7C170;
  return result;
}

double static vImage_ARGBToYpCbCrMatrix.itu_R_709_2.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.000352343834;
  *a1 = xmmword_1B7E7C180;
  a1[1] = xmmword_1B7E7C190;
  return result;
}

uint64_t static vImageCVImageFormatRef.make(format:matrix:chromaSiting:colorSpace:alphaIsOpaqueHint:)(char *a1, _OWORD *a2, char *a3, uint64_t a4, char a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v7 = qword_1E7CC5CE0[*a3];
  v9[0] = *a2;
  v9[1] = v6;
  return MEMORY[0x1B8CB3240](dword_1B7E7C4BC[v5], v9, *v7, a4, a5 & 1);
}

uint64_t static vImageCVImageFormatRef.make(buffer:)()
{
  result = MEMORY[0x1B8CB3250]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for vImageCVImageFormatRef.alphaIsOpaqueHint : vImageCVImageFormatRef(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  result = MEMORY[0x1B8CB32D0](v3, v4);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t vImageCVImageFormatRef.alphaIsOpaqueHint.setter(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  result = MEMORY[0x1B8CB32D0](v1, v2);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*vImageCVImageFormatRef.alphaIsOpaqueHint.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = MEMORY[0x1B8CB3260](v1) != 0;
  return vImageCVImageFormatRef.alphaIsOpaqueHint.modify;
}

uint64_t vImageCVImageFormatRef.alphaIsOpaqueHint.modify(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  result = MEMORY[0x1B8CB32D0](*a1, v1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *vImageCVImageFormatRef.channels.getter()
{
  v1 = MEMORY[0x1B8CB3290](v0);
  v2 = MEMORY[0x1B8CB3270](v0);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v7)
    {
LABEL_4:
      v8 = (v4 + 4);
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v11 = *v8++;
        v10 = v11;
        v12 = MEMORY[0x1B8CB32B0](v0);
        v13 = v12;
        if (v12)
        {
          Model = CGColorSpaceGetModel(v12);

          v15 = Model;
        }

        else
        {
          v15 = 0;
        }

        vImage.BufferType.init(bufferTypeCode:model:)(v10, v15 | ((v13 == 0) << 32), &v19);
        v16 = v19;
        if (v19 != 23)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
          }

          v18 = *(v9 + 2);
          v17 = *(v9 + 3);
          if (v18 >= v17 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
          }

          *(v9 + 2) = v18 + 1;
          v9[v18 + 32] = v16;
        }

        --v7;
      }

      while (v7);
      goto LABEL_17;
    }

LABEL_16:
    v9 = MEMORY[0x1E69E7CC0];
LABEL_17:

    return v9;
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(v2, 0);
  result = specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, v3, v1, v3);
  if (v6 == v3)
  {
    v7 = v4[2];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

__int128 *vImageCVImageFormatRef.channelDescription(bufferType:)@<X0>(uint64_t a1@<X8>)
{
  v3 = vImage.BufferType.bufferTypeCode.getter();
  result = MEMORY[0x1B8CB3280](v1, v3);
  if (result)
  {
    v5 = *result;
    v6 = result[1];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = result == 0;
  return result;
}

void vImageCVImageFormatRef.chromaSiting.getter(char *a1@<X8>)
{
  v3 = MEMORY[0x1B8CB32A0](v1);

  vImageCVImageFormatRef.ChromaSiting.init(location:)(v3, a1);
}

void vImageCVImageFormatRef.chromaSiting.setter(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 3)
  {
    v3 = MEMORY[0x1E6965D30];
    v4 = MEMORY[0x1E6965D40];
    if (v2 != 2)
    {
      v4 = MEMORY[0x1E6965D38];
    }

    if (*a1)
    {
      v3 = MEMORY[0x1E6965D20];
    }

    if (*a1 <= 1u)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    goto LABEL_15;
  }

  if (*a1 <= 5u)
  {
    v6 = v2 == 4;
    v5 = MEMORY[0x1E6965D10];
    if (!v6)
    {
      v5 = MEMORY[0x1E6965D08];
    }

    goto LABEL_15;
  }

  if (v2 == 6)
  {
    v5 = MEMORY[0x1E6965D28];
LABEL_15:
    v7 = *v5;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_16:
  v8 = MEMORY[0x1B8CB32E0](v1, v7);

  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void vImageCVImageFormatRef.ChromaSiting.init(location:)(void *a1@<X0>, char *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v4 = *MEMORY[0x1E6965D30];
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v5 = v4;
  v6 = a1;
  v7 = static _CFObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    v9 = *MEMORY[0x1E6965D20];
    v10 = v6;
    v11 = v9;
    v12 = static _CFObject.== infix(_:_:)();

    if (v12)
    {

      v8 = 1;
      goto LABEL_17;
    }

    v13 = *MEMORY[0x1E6965D40];
    v14 = v10;
    v15 = v13;
    v16 = static _CFObject.== infix(_:_:)();

    if (v16)
    {

      v8 = 2;
      goto LABEL_17;
    }

    v17 = *MEMORY[0x1E6965D38];
    v18 = v14;
    v19 = v17;
    v20 = static _CFObject.== infix(_:_:)();

    if (v20)
    {

      v8 = 3;
      goto LABEL_17;
    }

    v21 = *MEMORY[0x1E6965D10];
    v22 = v18;
    v23 = v21;
    v24 = static _CFObject.== infix(_:_:)();

    if (v24)
    {

      v8 = 4;
      goto LABEL_17;
    }

    v25 = *MEMORY[0x1E6965D08];
    v26 = v22;
    v27 = v25;
    v28 = static _CFObject.== infix(_:_:)();

    if (v28)
    {

      v8 = 5;
      goto LABEL_17;
    }

    v29 = *MEMORY[0x1E6965D28];
    v30 = static _CFObject.== infix(_:_:)();

    if (v30)
    {
      v8 = 6;
      goto LABEL_17;
    }

LABEL_16:
    v8 = 7;
    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:
  *a2 = v8;
}

void (*vImageCVImageFormatRef.chromaSiting.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = (a1 + 1);
  v3 = MEMORY[0x1B8CB32A0](v1);
  vImageCVImageFormatRef.ChromaSiting.init(location:)(v3, v2);
  return vImageCVImageFormatRef.chromaSiting.modify;
}

void vImageCVImageFormatRef.chromaSiting.modify(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  if (a2)
  {
    v3 = *v2;
    v2 = &v3;
  }

  vImageCVImageFormatRef.chromaSiting.setter(v2);
}

uint64_t key path setter for vImageCVImageFormatRef.colorSpace : vImageCVImageFormatRef(void *a1, void *a2)
{
  result = MEMORY[0x1B8CB32F0](*a2, *a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void vImageCVImageFormatRef.colorSpace.setter(void *a1)
{
  if (MEMORY[0x1B8CB32F0](v1))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }
}

void (*vImageCVImageFormatRef.colorSpace.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = MEMORY[0x1B8CB32B0](v1);
  return vImageCVImageFormatRef.colorSpace.modify;
}

void vImageCVImageFormatRef.colorSpace.modify(uint64_t a1)
{
  v1 = *a1;
  if (MEMORY[0x1B8CB32F0](*(a1 + 8)))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type vImage.BufferType and conformance vImage.BufferType()
{
  result = lazy protocol witness table cache variable for type vImage.BufferType and conformance vImage.BufferType;
  if (!lazy protocol witness table cache variable for type vImage.BufferType and conformance vImage.BufferType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.BufferType and conformance vImage.BufferType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type vImageCVImageFormatRef.Format and conformance vImageCVImageFormatRef.Format()
{
  result = lazy protocol witness table cache variable for type vImageCVImageFormatRef.Format and conformance vImageCVImageFormatRef.Format;
  if (!lazy protocol witness table cache variable for type vImageCVImageFormatRef.Format and conformance vImageCVImageFormatRef.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImageCVImageFormatRef.Format and conformance vImageCVImageFormatRef.Format);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type vImageCVImageFormatRef.ChromaSiting and conformance vImageCVImageFormatRef.ChromaSiting()
{
  result = lazy protocol witness table cache variable for type vImageCVImageFormatRef.ChromaSiting and conformance vImageCVImageFormatRef.ChromaSiting;
  if (!lazy protocol witness table cache variable for type vImageCVImageFormatRef.ChromaSiting and conformance vImageCVImageFormatRef.ChromaSiting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImageCVImageFormatRef.ChromaSiting and conformance vImageCVImageFormatRef.ChromaSiting);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vImage.BufferType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for vImage.BufferType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for vImageCVImageFormatRef.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for vImageCVImageFormatRef.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
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
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t BNNS.LossLayer.__allocating_init(input:output:lossFunction:lossReduction:filterParameters:)(_OWORD *a1, __int128 *a2, uint64_t *a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v208 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a3[6];
  v15 = a3[7];
  v17 = a3[8];
  v16 = a3[9];
  v18 = *a4;
  v166 = v10;
  if (a7 == 1)
  {
    v19 = v13 >> 29;
    if (v13 >> 29 > 1)
    {
      if (v19 == 2)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v109 = a1[6];
        *&v207[116] = a1[7];
        v110 = a1[9];
        *&v207[132] = a1[8];
        *&v207[148] = v110;
        *&v207[164] = a1[10];
        v111 = a1[2];
        *&v207[52] = a1[3];
        v112 = a1[5];
        *&v207[68] = a1[4];
        *&v207[84] = v112;
        *&v207[100] = v109;
        v113 = a1[1];
        *&v207[4] = *a1;
        *&v207[20] = v113;
        *&v207[36] = v111;
        v114 = a2[8];
        v115 = a2[9];
        v116 = a2[6];
        v191 = a2[7];
        v192 = v114;
        v117 = a2[10];
        v193 = v115;
        v194 = v117;
        v118 = a2[4];
        v189 = a2[5];
        v190 = v116;
        v119 = a2[2];
        v187 = a2[3];
        v188 = v118;
        v120 = a2[1];
        v184 = *a2;
        v185 = v120;
        v186 = v119;
        v180 = *&v207[128];
        v181 = *&v207[144];
        v182 = *&v207[160];
        v176 = *&v207[64];
        v177 = *&v207[80];
        v178 = *&v207[96];
        v179 = *&v207[112];
        v172 = *v207;
        v173 = *&v207[16];
        v36 = *&v207[48];
        v174 = *&v207[32];
        v37 = 4;
        goto LABEL_25;
      }

      if (v19 == 3)
      {
        v53 = a1[6];
        *&v207[116] = a1[7];
        v54 = a1[9];
        *&v207[132] = a1[8];
        *&v207[148] = v54;
        *&v207[164] = a1[10];
        v55 = a1[2];
        *&v207[52] = a1[3];
        v56 = a1[5];
        *&v207[68] = a1[4];
        *&v207[84] = v56;
        *&v207[100] = v53;
        v57 = a1[1];
        *&v207[4] = *a1;
        *&v207[20] = v57;
        *&v207[36] = v55;
        v58 = a2[8];
        v59 = a2[9];
        v60 = a2[6];
        v191 = a2[7];
        v192 = v58;
        v61 = a2[10];
        v193 = v59;
        v194 = v61;
        v62 = a2[4];
        v189 = a2[5];
        v190 = v60;
        v63 = a2[2];
        v187 = a2[3];
        v188 = v62;
        v64 = a2[1];
        v184 = *a2;
        v185 = v64;
        v186 = v63;
        v180 = *&v207[128];
        v181 = *&v207[144];
        v182 = *&v207[160];
        v176 = *&v207[64];
        v177 = *&v207[80];
        v178 = *&v207[96];
        v179 = *&v207[112];
        v172 = *v207;
        v173 = *&v207[16];
        v174 = *&v207[32];
        v171 = 5;
        v175 = *&v207[48];
        v183 = *&v207[176];
        v195 = v18;
        v196 = v9;
        v23 = v8;
        v197 = v8;
        v198 = v10;
        v20 = v11;
        v199 = v11;
        v200 = v12;
        v22 = v12;
        v201 = v13 & 1;
        v202 = HIDWORD(v13);
        v203 = v14;
        v204 = v15;
        v205 = v17;
        v21 = v16;
        v206 = v16;
LABEL_62:
        v149 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      if (!v19)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v85 = a1[6];
        *&v207[116] = a1[7];
        v86 = a1[9];
        *&v207[132] = a1[8];
        *&v207[148] = v86;
        *&v207[164] = a1[10];
        v87 = a1[2];
        *&v207[52] = a1[3];
        v88 = a1[5];
        *&v207[68] = a1[4];
        *&v207[84] = v88;
        *&v207[100] = v85;
        v89 = a1[1];
        *&v207[4] = *a1;
        *&v207[20] = v89;
        *&v207[36] = v87;
        v90 = a2[8];
        v91 = a2[9];
        v92 = a2[6];
        v191 = a2[7];
        v192 = v90;
        v93 = a2[10];
        v193 = v91;
        v194 = v93;
        v94 = a2[4];
        v189 = a2[5];
        v190 = v92;
        v95 = a2[2];
        v187 = a2[3];
        v188 = v94;
        v96 = a2[1];
        v184 = *a2;
        v185 = v96;
        v186 = v95;
        v180 = *&v207[128];
        v181 = *&v207[144];
        v182 = *&v207[160];
        v176 = *&v207[64];
        v177 = *&v207[80];
        v178 = *&v207[96];
        v179 = *&v207[112];
        v172 = *v207;
        v173 = *&v207[16];
        v36 = *&v207[48];
        v174 = *&v207[32];
        v37 = 1;
        goto LABEL_25;
      }

      if (v19 == 1)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v24 = a1[6];
        *&v207[116] = a1[7];
        v25 = a1[9];
        *&v207[132] = a1[8];
        *&v207[148] = v25;
        *&v207[164] = a1[10];
        v26 = a1[2];
        *&v207[52] = a1[3];
        v27 = a1[5];
        *&v207[68] = a1[4];
        *&v207[84] = v27;
        *&v207[100] = v24;
        v28 = a1[1];
        *&v207[4] = *a1;
        *&v207[20] = v28;
        *&v207[36] = v26;
        v29 = a2[8];
        v30 = a2[9];
        v31 = a2[6];
        v191 = a2[7];
        v192 = v29;
        v32 = a2[10];
        v193 = v30;
        v194 = v32;
        v33 = a2[4];
        v189 = a2[5];
        v190 = v31;
        v34 = a2[2];
        v187 = a2[3];
        v188 = v33;
        v35 = a2[1];
        v184 = *a2;
        v185 = v35;
        v186 = v34;
        v180 = *&v207[128];
        v181 = *&v207[144];
        v182 = *&v207[160];
        v176 = *&v207[64];
        v177 = *&v207[80];
        v178 = *&v207[96];
        v179 = *&v207[112];
        v172 = *v207;
        v173 = *&v207[16];
        v36 = *&v207[48];
        v174 = *&v207[32];
        v37 = 2;
LABEL_25:
        v171 = v37;
        v175 = v36;
        v183 = *&v207[176];
        v195 = v18;
        v196 = v9;
        goto LABEL_62;
      }
    }

    v77 = v10 | v8;
    v78 = v12 | v14 | v15;
    v79 = v17 | v16;
    if (v13 != 0x80000000 || v77 | v9 | v11 | v78 | v79)
    {
      v133 = v77 | v11 | v78 | v79;
      if (v13 == 0x80000000 && v9 == 1 && !v133)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v80 = 6;
      }

      else if (v13 == 0x80000000 && v9 == 2 && !v133)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v80 = 7;
      }

      else if (v13 == 0x80000000 && v9 == 3 && !v133)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v80 = 8;
      }

      else
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        if (v133)
        {
          v135 = 0;
        }

        else
        {
          v135 = v9 == 4;
        }

        if (v135 && v13 == 0x80000000)
        {
          v80 = 9;
        }

        else
        {
          v80 = 10;
        }
      }
    }

    else
    {
      v20 = v11;
      v21 = v16;
      v22 = v12;
      v23 = v8;
      v80 = 3;
    }

    v137 = a1[6];
    *&v207[116] = a1[7];
    v138 = a1[9];
    *&v207[132] = a1[8];
    *&v207[148] = v138;
    *&v207[164] = a1[10];
    v139 = a1[2];
    *&v207[52] = a1[3];
    v140 = a1[5];
    *&v207[68] = a1[4];
    *&v207[84] = v140;
    *&v207[100] = v137;
    v141 = a1[1];
    *&v207[4] = *a1;
    *&v207[20] = v141;
    *&v207[36] = v139;
    v142 = a2[8];
    v143 = a2[9];
    v144 = a2[6];
    v191 = a2[7];
    v192 = v142;
    v145 = a2[10];
    v193 = v143;
    v194 = v145;
    v146 = a2[4];
    v189 = a2[5];
    v190 = v144;
    v147 = a2[2];
    v187 = a2[3];
    v188 = v146;
    v148 = a2[1];
    v184 = *a2;
    v185 = v148;
    v186 = v147;
    v180 = *&v207[128];
    v181 = *&v207[144];
    v182 = *&v207[160];
    v176 = *&v207[64];
    v177 = *&v207[80];
    v178 = *&v207[96];
    v179 = *&v207[112];
    v172 = *v207;
    v173 = *&v207[16];
    v174 = *&v207[32];
    v171 = v80;
    v175 = *&v207[48];
    v183 = *&v207[176];
    v195 = v18;
    goto LABEL_62;
  }

  v167 = a5;
  v168 = a6;
  v169 = a7;
  v170 = a8;
  v38 = v13 >> 29;
  if (v13 >> 29 <= 1)
  {
    if (!v38)
    {
      v20 = v11;
      v21 = v16;
      v22 = v12;
      v23 = v8;
      v97 = a1[6];
      *&v207[116] = a1[7];
      v98 = a1[9];
      *&v207[132] = a1[8];
      *&v207[148] = v98;
      *&v207[164] = a1[10];
      v99 = a1[2];
      *&v207[52] = a1[3];
      v100 = a1[5];
      *&v207[68] = a1[4];
      *&v207[84] = v100;
      *&v207[100] = v97;
      v101 = a1[1];
      *&v207[4] = *a1;
      *&v207[20] = v101;
      *&v207[36] = v99;
      v102 = a2[8];
      v103 = a2[9];
      v104 = a2[6];
      v191 = a2[7];
      v192 = v102;
      v105 = a2[10];
      v193 = v103;
      v194 = v105;
      v106 = a2[4];
      v189 = a2[5];
      v190 = v104;
      v107 = a2[2];
      v187 = a2[3];
      v188 = v106;
      v108 = a2[1];
      v184 = *a2;
      v185 = v108;
      v186 = v107;
      v180 = *&v207[128];
      v181 = *&v207[144];
      v182 = *&v207[160];
      v176 = *&v207[64];
      v177 = *&v207[80];
      v178 = *&v207[96];
      v179 = *&v207[112];
      v172 = *v207;
      v173 = *&v207[16];
      v51 = *&v207[48];
      v174 = *&v207[32];
      v52 = 1;
      goto LABEL_27;
    }

    if (v38 == 1)
    {
      v20 = v11;
      v21 = v16;
      v22 = v12;
      v23 = v8;
      v39 = a1[6];
      *&v207[116] = a1[7];
      v40 = a1[9];
      *&v207[132] = a1[8];
      *&v207[148] = v40;
      *&v207[164] = a1[10];
      v41 = a1[2];
      *&v207[52] = a1[3];
      v42 = a1[5];
      *&v207[68] = a1[4];
      *&v207[84] = v42;
      *&v207[100] = v39;
      v43 = a1[1];
      *&v207[4] = *a1;
      *&v207[20] = v43;
      *&v207[36] = v41;
      v44 = a2[8];
      v45 = a2[9];
      v46 = a2[6];
      v191 = a2[7];
      v192 = v44;
      v47 = a2[10];
      v193 = v45;
      v194 = v47;
      v48 = a2[4];
      v189 = a2[5];
      v190 = v46;
      v49 = a2[2];
      v187 = a2[3];
      v188 = v48;
      v50 = a2[1];
      v184 = *a2;
      v185 = v50;
      v186 = v49;
      v180 = *&v207[128];
      v181 = *&v207[144];
      v182 = *&v207[160];
      v176 = *&v207[64];
      v177 = *&v207[80];
      v178 = *&v207[96];
      v179 = *&v207[112];
      v172 = *v207;
      v173 = *&v207[16];
      v51 = *&v207[48];
      v174 = *&v207[32];
      v52 = 2;
LABEL_27:
      v171 = v52;
      v175 = v51;
      v183 = *&v207[176];
      v195 = v18;
      v196 = v9;
      goto LABEL_73;
    }

LABEL_19:
    v81 = v10 | v8;
    v82 = v12 | v14 | v15;
    v83 = v17 | v16;
    if (v13 != 0x80000000 || v81 | v9 | v11 | v82 | v83)
    {
      v134 = v81 | v11 | v82 | v83;
      if (v13 == 0x80000000 && v9 == 1 && !v134)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v84 = 6;
      }

      else if (v13 == 0x80000000 && v9 == 2 && !v134)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v84 = 7;
      }

      else if (v13 == 0x80000000 && v9 == 3 && !v134)
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        v84 = 8;
      }

      else
      {
        v20 = v11;
        v21 = v16;
        v22 = v12;
        v23 = v8;
        if (v134)
        {
          v150 = 0;
        }

        else
        {
          v150 = v9 == 4;
        }

        if (v150 && v13 == 0x80000000)
        {
          v84 = 9;
        }

        else
        {
          v84 = 10;
        }
      }
    }

    else
    {
      v20 = v11;
      v21 = v16;
      v22 = v12;
      v23 = v8;
      v84 = 3;
    }

    v152 = a1[6];
    *&v207[116] = a1[7];
    v153 = a1[9];
    *&v207[132] = a1[8];
    *&v207[148] = v153;
    *&v207[164] = a1[10];
    v154 = a1[2];
    *&v207[52] = a1[3];
    v155 = a1[5];
    *&v207[68] = a1[4];
    *&v207[84] = v155;
    *&v207[100] = v152;
    v156 = a1[1];
    *&v207[4] = *a1;
    *&v207[20] = v156;
    *&v207[36] = v154;
    v157 = a2[8];
    v158 = a2[9];
    v159 = a2[6];
    v191 = a2[7];
    v192 = v157;
    v160 = a2[10];
    v193 = v158;
    v194 = v160;
    v161 = a2[4];
    v189 = a2[5];
    v190 = v159;
    v162 = a2[2];
    v187 = a2[3];
    v188 = v161;
    v163 = a2[1];
    v184 = *a2;
    v185 = v163;
    v186 = v162;
    v180 = *&v207[128];
    v181 = *&v207[144];
    v182 = *&v207[160];
    v176 = *&v207[64];
    v177 = *&v207[80];
    v178 = *&v207[96];
    v179 = *&v207[112];
    v172 = *v207;
    v173 = *&v207[16];
    v174 = *&v207[32];
    v171 = v84;
    v175 = *&v207[48];
    v183 = *&v207[176];
    v195 = v18;
    goto LABEL_73;
  }

  if (v38 == 2)
  {
    v20 = v11;
    v21 = v16;
    v22 = v12;
    v23 = v8;
    v121 = a1[6];
    *&v207[116] = a1[7];
    v122 = a1[9];
    *&v207[132] = a1[8];
    *&v207[148] = v122;
    *&v207[164] = a1[10];
    v123 = a1[2];
    *&v207[52] = a1[3];
    v124 = a1[5];
    *&v207[68] = a1[4];
    *&v207[84] = v124;
    *&v207[100] = v121;
    v125 = a1[1];
    *&v207[4] = *a1;
    *&v207[20] = v125;
    *&v207[36] = v123;
    v126 = a2[8];
    v127 = a2[9];
    v128 = a2[6];
    v191 = a2[7];
    v192 = v126;
    v129 = a2[10];
    v193 = v127;
    v194 = v129;
    v130 = a2[4];
    v189 = a2[5];
    v190 = v128;
    v131 = a2[2];
    v187 = a2[3];
    v188 = v130;
    v132 = a2[1];
    v184 = *a2;
    v185 = v132;
    v186 = v131;
    v180 = *&v207[128];
    v181 = *&v207[144];
    v182 = *&v207[160];
    v176 = *&v207[64];
    v177 = *&v207[80];
    v178 = *&v207[96];
    v179 = *&v207[112];
    v172 = *v207;
    v173 = *&v207[16];
    v51 = *&v207[48];
    v174 = *&v207[32];
    v52 = 4;
    goto LABEL_27;
  }

  if (v38 != 3)
  {
    goto LABEL_19;
  }

  v65 = a1[6];
  *&v207[116] = a1[7];
  v66 = a1[9];
  *&v207[132] = a1[8];
  *&v207[148] = v66;
  *&v207[164] = a1[10];
  v67 = a1[2];
  *&v207[52] = a1[3];
  v68 = a1[5];
  *&v207[68] = a1[4];
  *&v207[84] = v68;
  *&v207[100] = v65;
  v69 = a1[1];
  *&v207[4] = *a1;
  *&v207[20] = v69;
  *&v207[36] = v67;
  v70 = a2[8];
  v71 = a2[9];
  v72 = a2[6];
  v191 = a2[7];
  v192 = v70;
  v73 = a2[10];
  v193 = v71;
  v194 = v73;
  v74 = a2[4];
  v189 = a2[5];
  v190 = v72;
  v75 = a2[2];
  v187 = a2[3];
  v188 = v74;
  v76 = a2[1];
  v184 = *a2;
  v185 = v76;
  v186 = v75;
  v180 = *&v207[128];
  v181 = *&v207[144];
  v182 = *&v207[160];
  v176 = *&v207[64];
  v177 = *&v207[80];
  v178 = *&v207[96];
  v179 = *&v207[112];
  v172 = *v207;
  v173 = *&v207[16];
  v174 = *&v207[32];
  v171 = 5;
  v175 = *&v207[48];
  v183 = *&v207[176];
  v195 = v18;
  v196 = v9;
  v23 = v8;
  v197 = v8;
  v198 = v10;
  v20 = v11;
  v199 = v11;
  v200 = v12;
  v22 = v12;
  v201 = v13 & 1;
  v202 = HIDWORD(v13);
  v203 = v14;
  v204 = v15;
  v205 = v17;
  v21 = v16;
  v206 = v16;
LABEL_73:
  v149 = &v167;
LABEL_74:
  v164 = MEMORY[0x1B8CB1A90](&v171, v149);
  type metadata accessor for BNNS.LossLayer();
  result = swift_allocObject();
  *(result + 24) = 0xFFFFFFFF00000000;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0;
  if (v164)
  {
    *(result + 16) = v164;
    *(result + 24) = v9;
    *(result + 32) = v23;
    *(result + 40) = v166;
    *(result + 48) = v20;
    *(result + 56) = v22;
    *(result + 64) = v13;
    *(result + 72) = v14;
    *(result + 80) = v15;
    *(result + 88) = v17;
    *(result + 96) = v21;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.LossFunction.bnnsLossFunction.getter()
{
  v1 = v0[5];
  v2 = v1 >> 29;
  if (v1 >> 29 <= 1)
  {
    if (v2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v2 == 2)
  {
    return 4;
  }

  else if (v2 == 3)
  {
    return 5;
  }

  else
  {
    v4 = *v0;
    v5 = v0[7];
    v6 = v0[8] | v0[9];
    v7 = v0[6] | v0[4] | v0[3];
    v8 = v0[2] | v0[1];
    if (v1 != 0x80000000 || v6 | v4 | v5 | v7 | v8)
    {
      v9 = v6 | v5 | v7 | v8;
      if (v1 == 0x80000000 && v4 == 1 && !v9)
      {
        return 6;
      }

      else if (v1 == 0x80000000 && v4 == 2 && !v9)
      {
        return 7;
      }

      else if (v1 == 0x80000000 && v4 == 3 && !v9)
      {
        return 8;
      }

      else
      {
        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v4 == 4;
        }

        if (v10 && v1 == 0x80000000)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }
    }

    else
    {
      return 3;
    }
  }
}

uint64_t BNNS.LossLayer.apply(batchSize:input:labels:output:generatingInputGradient:)(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 136);
  if (v6 && (out = *(a4 + 136)) != 0 && (v8 = *(a3 + 136)) != 0)
  {
    v9 = a5[9];
    *&in_delta.stride[7] = a5[8];
    *&in_delta.data_type = v9;
    *&in_delta.table_data_type = a5[10];
    v10 = a5[5];
    *&in_delta.size[7] = a5[4];
    *&in_delta.stride[1] = v10;
    v11 = a5[7];
    *&in_delta.stride[3] = a5[6];
    *&in_delta.stride[5] = v11;
    v12 = a5[1];
    *&in_delta.flags = *a5;
    *&in_delta.size[1] = v12;
    v13 = a5[3];
    *&in_delta.size[3] = a5[2];
    *&in_delta.size[5] = v13;
    filter = *(v5 + 16);
    BNNSNDArrayDescriptor.shape.getter(v24);
    v15 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v23);
    v16 = BNNS.Shape.batchStride.getter();
    BNNSNDArrayDescriptor.shape.getter(v22);
    v17 = BNNS.Shape.batchStride.getter();
    result = BNNSLossFilterApplyBatch(filter, a1, v6, v15, v8, v16, 0, 0, out, &in_delta, v17);
    if (!result)
    {
      return result;
    }

    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v19 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v20 = 2;
  }

  return swift_willThrow();
}

uint64_t BNNS.LossLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0xFFFFFFFF00000000;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0;
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.LossLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BNNS.LossLayer.apply(batchSize:input:labels:output:weights:broadcastsWeights:generatingInputGradient:)(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _OWORD *a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = *(a5 + 144);
  v57 = *(a5 + 128);
  v58 = v13;
  v59 = *(a5 + 160);
  v60 = *(a5 + 176);
  v14 = *(a5 + 80);
  v56[4] = *(a5 + 64);
  v56[5] = v14;
  v15 = *(a5 + 112);
  v56[6] = *(a5 + 96);
  v56[7] = v15;
  v16 = *(a5 + 16);
  v56[0] = *a5;
  v56[1] = v16;
  v17 = *(a5 + 48);
  v56[2] = *(a5 + 32);
  v56[3] = v17;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(v56) == 1)
  {
    v18 = *(a2 + 136);
    if (v18)
    {
      out = *(a4 + 136);
      if (out)
      {
        v20 = *(a3 + 136);
        if (v20)
        {
          v21 = a7[9];
          *&in_delta.stride[7] = a7[8];
          *&in_delta.data_type = v21;
          *&in_delta.table_data_type = a7[10];
          v22 = a7[5];
          *&in_delta.size[7] = a7[4];
          *&in_delta.stride[1] = v22;
          v23 = a7[7];
          *&in_delta.stride[3] = a7[6];
          *&in_delta.stride[5] = v23;
          v24 = a7[1];
          *&in_delta.flags = *a7;
          *&in_delta.size[1] = v24;
          v25 = a7[3];
          *&in_delta.size[3] = a7[2];
          *&in_delta.size[5] = v25;
          v26 = v7[2];
          BNNSNDArrayDescriptor.shape.getter(v54);
          v27 = BNNS.Shape.batchStride.getter();
          BNNSNDArrayDescriptor.shape.getter(v53);
          v28 = BNNS.Shape.batchStride.getter();
          BNNSNDArrayDescriptor.shape.getter(v52);
          v29 = BNNS.Shape.batchStride.getter();
          result = BNNSLossFilterApplyBatch(v26, a1, v18, v27, v20, v28, 0, 0, out, &in_delta, v29);
          if (!result)
          {
            return result;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_13:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v34 = 2;
    return swift_willThrow();
  }

  v31 = *(a2 + 136);
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = *(a4 + 136);
  if (!v32 || !*(&v57 + 1) || !*(a3 + 136))
  {
    goto LABEL_13;
  }

  if (a6)
  {
    labels = *(a3 + 136);
    v50 = *(&v57 + 1);
    v33 = 1;
    goto LABEL_22;
  }

  v35 = v7[8];
  if (v7[3] >= 0xFFFFFFFF00000000 && (v35 & 0xFFFFFFFE) == 0)
  {
    goto LABEL_23;
  }

  v36 = v35 >> 29;
  if (v35 >> 29 > 2)
  {
    if (v36 == 3)
    {
      goto LABEL_23;
    }

    labels = *(a3 + 136);
    v50 = *(&v57 + 1);
  }

  else
  {
    labels = *(a3 + 136);
    v50 = *(&v57 + 1);
    v33 = a1;
    if (v36 - 1 >= 2)
    {
      goto LABEL_22;
    }
  }

  BNNSNDArrayDescriptor.shape.getter(&in_delta);
  v37 = BNNS.Shape.denseTensorSize.getter();
  if ((a1 * v37) >> 64 != (a1 * v37) >> 63)
  {
    __break(1u);
  }

  v33 = a1 * v37;
LABEL_22:
  v38 = a7[9];
  *&in_delta.stride[7] = a7[8];
  *&in_delta.data_type = v38;
  *&in_delta.table_data_type = a7[10];
  v39 = a7[5];
  *&in_delta.size[7] = a7[4];
  *&in_delta.stride[1] = v39;
  v40 = a7[7];
  *&in_delta.stride[3] = a7[6];
  *&in_delta.stride[5] = v40;
  v41 = a7[1];
  *&in_delta.flags = *a7;
  *&in_delta.size[1] = v41;
  v42 = a7[3];
  *&in_delta.size[3] = a7[2];
  *&in_delta.size[5] = v42;
  v43 = v7[2];
  v44 = v33;
  BNNSNDArrayDescriptor.shape.getter(v54);
  v45 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v53);
  v46 = BNNS.Shape.batchStride.getter();
  BNNSNDArrayDescriptor.shape.getter(v52);
  v47 = BNNS.Shape.batchStride.getter();
  result = BNNSLossFilterApplyBatch(v43, a1, v31, v45, labels, v46, v50, v44, v32, &in_delta, v47);
  if (result)
  {
LABEL_23:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v48 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.LossFunction.YoloParameters.init(huberDelta:gridColumnCount:gridRowsCount:anchorBoxCount:anchorBoxSize:rescore:xyScale:whScale:objectScale:noObjectScale:classificationScale:objectMinimumIoU:noObjectMaximumIoU:anchorsData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float a10@<S2>, float a11@<S3>, float a12@<S4>, float a13@<S5>, float a14@<S6>, float a15@<S7>)
{
  *a7 = a8;
  *(a7 + 8) = result;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 44) = a9;
  *(a7 + 48) = a10;
  *(a7 + 52) = a11;
  *(a7 + 56) = a12;
  *(a7 + 60) = a13;
  *(a7 + 64) = a14;
  *(a7 + 68) = a15;
  *(a7 + 72) = a6;
  return result;
}

Swift::Int BNNS.LossReduction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BNNS.LossReduction and conformance BNNS.LossReduction()
{
  result = lazy protocol witness table cache variable for type BNNS.LossReduction and conformance BNNS.LossReduction;
  if (!lazy protocol witness table cache variable for type BNNS.LossReduction and conformance BNNS.LossReduction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.LossReduction and conformance BNNS.LossReduction);
  }

  return result;
}

uint64_t dispatch thunk of BNNS.LossLayer.apply(batchSize:input:labels:output:generatingInputGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 128);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.LossFunction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  if (*a1 > 0x80000000FFFFFFFFLL)
  {
    v2 = ~HIDWORD(*a1);
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double storeEnumTagSinglePayload for BNNS.LossFunction(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *a1 = -a2 << 32;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for BNNS.LossFunction(_DWORD *a1)
{
  v1 = a1[10];
  if (v1 >= 0)
  {
    return v1 >> 29;
  }

  else
  {
    return (*a1 + 4);
  }
}

unsigned int *destructiveInjectEnumTag for BNNS.LossFunction(unsigned int *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 5) & 0xFFFFFFFF00000001 | (a2 << 29);
    *result = *result;
    *(result + 5) = v2;
  }

  else
  {
    *result = a2 - 4;
    *(result + 2) = 0u;
    *(result + 6) = 0u;
    *(result + 5) = 0x80000000;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.LossFunction.YoloParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.LossFunction.YoloParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t static BNNS.clipByGlobalNorm(threshold:inputs:outputs:globalNorm:)(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v9 = v26;
    v10 = (a1 + 32);
    v11 = v4;
    do
    {
      v45 = v10[8];
      v47 = v10[9];
      v49 = v10[10];
      v37 = v10[4];
      v39 = v10[5];
      v41 = v10[6];
      v43 = v10[7];
      v29 = *v10;
      v31 = v10[1];
      v33 = v10[2];
      v35 = v10[3];
      v12 = swift_slowAlloc();
      v12[8] = v45;
      v12[9] = v47;
      v12[10] = v49;
      v12[4] = v37;
      v12[5] = v39;
      v12[6] = v41;
      v12[7] = v43;
      *v12 = v29;
      v12[1] = v31;
      v12[2] = v33;
      v12[3] = v35;
      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      v27 = v9;
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v9 = v27;
      }

      *(v9 + 2) = v14 + 1;
      *&v9[8 * v14 + 32] = v12;
      v10 += 11;
      --v11;
    }

    while (v11);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v16 = (a2 + 32);
    v17 = v4;
    do
    {
      v46 = v16[8];
      v48 = v16[9];
      v50 = v16[10];
      v38 = v16[4];
      v40 = v16[5];
      v42 = v16[6];
      v44 = v16[7];
      v30 = *v16;
      v32 = v16[1];
      v34 = v16[2];
      v36 = v16[3];
      v18 = swift_slowAlloc();
      v18[8] = v46;
      v18[9] = v48;
      v18[10] = v50;
      v18[4] = v38;
      v18[5] = v40;
      v18[6] = v42;
      v18[7] = v44;
      *v18 = v30;
      v18[1] = v32;
      v18[2] = v34;
      v18[3] = v36;
      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      v28 = v7;
      if (v20 >= v19 >> 1)
      {
        v21 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v21;
        v7 = v28;
      }

      *(v7 + 2) = v20 + 1;
      *&v7[8 * v20 + 32] = v18;
      v16 += 11;
      --v17;
    }

    while (v17);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2), 0, v7);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2), 0, v9);
  }

  v22 = BNNSClipByGlobalNorm(v7 + 4, v9 + 4, v4, a3, a4);
  swift_bridgeObjectRelease_n();
  result = swift_bridgeObjectRelease_n();
  if (v22)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.clip(to:input:output:)(_OWORD *a1, _OWORD *a2, float a3, float a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[9];
  *&src.stride[7] = a1[8];
  *&src.data_type = v4;
  *&src.table_data_type = a1[10];
  v5 = a1[5];
  *&src.size[7] = a1[4];
  *&src.stride[1] = v5;
  v6 = a1[7];
  *&src.stride[3] = a1[6];
  *&src.stride[5] = v6;
  v7 = a1[1];
  *&src.flags = *a1;
  *&src.size[1] = v7;
  v8 = a1[3];
  *&src.size[3] = a1[2];
  *&src.size[5] = v8;
  v9 = a2[9];
  *&v16.stride[7] = a2[8];
  *&v16.data_type = v9;
  *&v16.table_data_type = a2[10];
  v10 = a2[5];
  *&v16.size[7] = a2[4];
  *&v16.stride[1] = v10;
  v11 = a2[7];
  *&v16.stride[3] = a2[6];
  *&v16.stride[5] = v11;
  v12 = a2[1];
  *&v16.flags = *a2;
  *&v16.size[1] = v12;
  v13 = a2[3];
  *&v16.size[3] = a2[2];
  *&v16.size[5] = v13;
  result = BNNSClipByValue(&v16, &src, a3, a4);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static BNNS.clipByNorm(threshold:input:output:axes:)(_OWORD *a1, _OWORD *a2, uint64_t a3, float a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1[9];
  *&src.stride[7] = a1[8];
  *&src.data_type = v5;
  *&src.table_data_type = a1[10];
  v6 = a1[5];
  *&src.size[7] = a1[4];
  *&src.stride[1] = v6;
  v7 = a1[7];
  *&src.stride[3] = a1[6];
  *&src.stride[5] = v7;
  v8 = a1[1];
  *&src.flags = *a1;
  *&src.size[1] = v8;
  v9 = a1[3];
  *&src.size[3] = a1[2];
  *&src.size[5] = v9;
  v10 = a2[9];
  *&v18.stride[7] = a2[8];
  *&v18.data_type = v10;
  *&v18.table_data_type = a2[10];
  v11 = a2[5];
  *&v18.size[7] = a2[4];
  *&v18.stride[1] = v11;
  v12 = a2[7];
  *&v18.stride[3] = a2[6];
  *&v18.stride[5] = v12;
  v13 = a2[1];
  *&v18.flags = *a2;
  *&v18.size[1] = v13;
  v14 = a2[3];
  *&v18.size[3] = a2[2];
  *&v18.size[5] = v14;
  v15 = specialized static BNNS.computeAxisFlags(_:)(a3);
  result = BNNSClipByNorm(&v18, &src, a4, v15);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized static BNNS.computeAxisFlags(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_19;
  }

  v21 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v21;
  v4 = v21[1].u64[0];
  v5 = 32;
  do
  {
    v6 = *(v1 + v5);
    v7 = v21[1].u64[1];
    if (v4 >= v7 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4 + 1, 1);
    }

    v21[1].i64[0] = v4 + 1;
    v21[2].i32[v4] = 1 << v6;
    v5 += 8;
    ++v4;
    --v2;
  }

  while (v2);

  v8 = v21[1].u64[0];
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v8 <= 7)
  {
    v9 = 0;
    LODWORD(v10) = 0;
LABEL_17:
    v17 = v8 - v9;
    v18 = &v3[2].i32[v9];
    do
    {
      v19 = *v18++;
      v10 = v19 | v10;
      --v17;
    }

    while (v17);
    goto LABEL_19;
  }

  v9 = v8 & 0x7FFFFFFFFFFFFFF8;
  v11 = v3 + 3;
  v12 = 0uLL;
  v13 = v8 & 0x7FFFFFFFFFFFFFF8;
  v14 = 0uLL;
  do
  {
    v12 = vorrq_s8(v11[-1], v12);
    v14 = vorrq_s8(*v11, v14);
    v11 += 2;
    v13 -= 8;
  }

  while (v13);
  v15 = vorrq_s8(v14, v12);
  v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v10 = (v16.i32[0] | v16.i32[1]);
  if (v8 != v9)
  {
    goto LABEL_17;
  }

LABEL_19:

  return v10;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize vImageBuffer_GetSize(const vImage_Buffer *buf)
{
  MEMORY[0x1EEDB00E8](buf);
  result.height = v2;
  result.width = v1;
  return result;
}