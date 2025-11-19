unint64_t lazy protocol witness table accessor for type Type and conformance Type()
{
  result = lazy protocol witness table cache variable for type Type and conformance Type;
  if (!lazy protocol witness table cache variable for type Type and conformance Type)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Type and conformance Type);
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15RuntimeInternal16GenericSignatureV19ParameterDescriptorVGMd, &_ss23_ContiguousArrayStorageCy15RuntimeInternal16GenericSignatureV19ParameterDescriptorVGMR);
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t GenericArguments2.subscript.getter(int64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  if (a1 < 0 || a1 >= a4)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v6 = *a3;
  if (*a3)
  {
    v7 = (a3 + 4);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *v7++;
      v11 = v12;
      if (v12 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (*(v8 + 16) <= a1)
  {
    goto LABEL_50;
  }

  v13 = *(v8 + a1 + 32);

  v14 = GenericSignature.packShapeHeader.getter();
  if ((v14 & 0x100000000) != 0 || (v15 = WORD1(v14), (v16 = GenericSignature.packShapes.getter()) == 0))
  {
    if (!(a1 >> 60))
    {
      return *(a2 + 8 * a1);
    }

    goto LABEL_51;
  }

  v18 = a1 + v15;
  v19 = __OFADD__(a1, v15);
  if ((v13 & 0x3F) != 1)
  {
    if (!v19)
    {
      if ((v18 - 0x1000000000000000) >> 61 == 7)
      {
        return *(a2 + 8 * v18);
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    _StringGuts.grow(_:)(25);

    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B27070E0](v43);

    MEMORY[0x1B27070E0](0x6B636170206E6920, 0xE900000000000073);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = v16 - 4;
  v21 = 0x1000000000000001;
  do
  {
    if (!v17)
    {
      goto LABEL_55;
    }

    if (!--v21)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v19)
    {
      goto LABEL_47;
    }

    v22 = (v20 + 8);
    --v17;
    v23 = *(v20 + 6);
    v20 += 8;
  }

  while (v18 != v23);
  v24 = *v22;
  v25 = *(a2 + 8 * v24);
  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (v25)
  {
    v26 = *(a2 + 8 * v18) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a2 + 8 * v24);
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v25;
    v29 = v25 - 1;
    if (v25 - 1 >= 0x1000000000000000)
    {
      v29 = 0x1000000000000000;
    }

    if (v25 >= 5 && result - v26 < 0xFFFFFFFFFFFFFFE0)
    {
      v31 = v29 + 1;
      v32 = v31 & 3;
      if ((v31 & 3) == 0)
      {
        v32 = 4;
      }

      v30 = v31 - v32;
      v33 = (v26 + 16);
      v34 = (result + 48);
      v35 = v30;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
    }

    else
    {
      v30 = 0;
    }

    v37 = v30 - 0x1000000000000000;
    v38 = 8 * v30;
    v39 = (v26 + 8 * v30);
    v40 = v25 - v30;
    v41 = v38 + 32;
    while (v37)
    {
      v42 = *v39++;
      *(result + v41) = v42;
      ++v37;
      v41 += 8;
      if (!--v40)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_48;
  }

  result = MEMORY[0x1E69E7CC0];
LABEL_45:
  *(result + 16) = v25;
  return result;
}

uint64_t PartialType.create2(with:)(uint64_t a1, _DWORD *a2)
{
  if ((*a2 & 0x80) == 0)
  {
    if (!*(a1 + 16))
    {
      return ((a2 + a2[3] + 12))(0);
    }

    return 0;
  }

  v4 = 11;
  if ((*a2 & 0x1Fu) - 17 < 2)
  {
    v4 = 7;
  }

  v5 = &a2[v4];
  v6 = *(v5 + 4);
  if (*(v5 + 4))
  {
    v7 = (v5 + 4);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *v7++;
      v11 = v12;
      if (v12 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v8 + 16);

  if (v13 != *(a1 + 16))
  {
    return 0;
  }

  if (!v13)
  {
    return ((a2 + a2[3] + 12))(0);
  }

  v14 = (a1 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = *(v14 - 1);
    if (*v14)
    {
      v17 = *(v16 + 16);
      v18 = *(v14 - 1);

      MetadataPack = swift_allocateMetadataPack();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      *&v15[8 * v21 + 32] = MetadataPack;
      outlined consume of GenericArgument(v16, 1);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v15);
      }

      *(v15 + 2) = v23 + 1;
      *&v15[8 * v23 + 32] = v16;
    }

    v14 += 16;
    --v13;
  }

  while (v13);
  v25 = *(v15 + 2);
  v26 = _swift_instantiateCheckedGenericMetadata();

  return v26;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySVSgGMd, &_ss23_ContiguousArrayStorageCySVSgGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t static KeyPath.create(for:)(uint64_t a1, unint64_t *a2)
{
  v5 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v6 = *(v2 + 52) | 3;
  v7 = swift_allocObject();
  if (*a2 - 2048 >= 0xFFFFFFFFFFFFF801)
  {
    result = Field.offset.getter(a1, a2);
    v10 = -result;
    if (__OFSUB__(0, result))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = __OFSUB__(v10, 1);
    v8 = v10 - 1;
    if (v11)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 16) = v8;
  *(v7 + 24) = -1610612732;
  LODWORD(result) = Field.offset.getter(a1, a2);
  if (*a2 - 2048 < 0xFFFFFFFFFFFFF801)
  {
    result = ClassMetadata.fieldOffsets.getter();
    if ((a1 - 0x1000000000000000) >> 61 == 7)
    {
      result = *(result + 8 * a1);
      if ((result & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(result))
        {
          if (*a2 <= 0x7FF && *a2)
          {
            goto LABEL_11;
          }

LABEL_13:
          v12 = result | 0x3000000;
          goto LABEL_14;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (!*a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = result | 0x1000000;
LABEL_14:
  v13 = (v2 + *MEMORY[0x1E69E77B0]);
  v15 = *v13;
  v14 = v13[1];
  v16 = *(v15 - 8);
  *(v7 + 32) = v12;
  v17 = *(v16 + 64);
  v18 = *(v14 - 8);
  if (*(v18 + 64) > v17)
  {
    v17 = *(v18 + 64);
  }

  *(v7 + 40) = v17;
  return v7;
}

uint64_t Field.offset.getter(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a2 == 512)
  {
    v4 = StructMetadata.fieldOffsets.getter();
    if ((a1 - 0x2000000000000000) >> 62 == 3)
    {
      return *(v4 + 4 * a1);
    }

    __break(1u);
    return MEMORY[0x1EEE32B20](v4);
  }

  v6 = static Metadata.Kind.tuple.getter();
  if (v6 > 0x7FF)
  {
    if (v3 - 2048 >= 0xFFFFFFFFFFFFF801)
    {
      return 0;
    }
  }

  else if (v3 <= 0x7FF)
  {
    if (v6 != v3)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  TupleMetadata.init(_:)();
  v4 = TupleMetadata.Elements.subscript.getter();

  return MEMORY[0x1EEE32B20](v4);
}

int64_t _s18ReflectionInternal5CasesVSkAASk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3);
  *a3 = result;
  return result;
}

uint64_t _s18ReflectionInternal17GenericArguments2VSlAASl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t _s18ReflectionInternal17GenericArguments2VSlAASl5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s18ReflectionInternal16GenericArgumentsVSlAASl5countSivgTW_0()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void *Case.init(from:)(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if ((*DynamicType - 513) > 1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    result = 0;
  }

  else
  {
    v3 = *a1;
    v7 = a1[2];
    v4 = DynamicType;
    EnumValueWitnessTable.getEnumTag(_:)();
    __swift_destroy_boxed_opaque_existential_0(a1);
    result = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Case.name.getter(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  v2 = FieldDescriptor.subscript.getter();
  v3 = v2 + 8 + *(v2 + 8);

  return String.init(cString:)();
}

uint64_t Case.payloadType.getter(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(*(a1 + 8) + 16);
  if (!*(FieldDescriptor.subscript.getter() + 4))
  {
    return 0;
  }

  v4 = *(*v2 + 16);
  v5 = (FieldDescriptor.subscript.getter() + 4);
  v6 = *v5;
  result = MangledTypeReference.standardSubstitution.getter();
  if (!result)
  {
    return MEMORY[0x1B2706F10](v5 + v6, a1);
  }

  return result;
}

uint64_t Case.get(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v27);
  __swift_project_boxed_opaque_existential_0(&v27, v29);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_0(&v27);
  if (DynamicType != a2 || (v10 = *(a1 + 16), v11 = *(a1 + 24), v27 = *a1, v28 = v10, v29 = v11, *(*(v11 - 8) + 80), result = EnumValueWitnessTable.getEnumTag(_:)(), result != a3))
  {
    *a4 = 0u;
    a4[1] = 0u;
LABEL_6:
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  memset(v25, 0, sizeof(v25));
  v26 = a2;
  if ((*(*(v29 - 8) + 80) & 0x20000) != 0)
  {
    v12 = (v27 + ((*(*(v29 - 8) + 80) + 16) & ~*(*(v29 - 8) + 80)));
  }

  else
  {
    v12 = &v27;
  }

  closure #2 in Case.get(from:)(v12, v25);
  v14 = *(*(a2 + 8) + 16);
  if ((*FieldDescriptor.subscript.getter() & 1) != 0 || (result = Case.payloadType.getter(a2)) != 0)
  {
    swift_allocBox();
    v16 = v15;
    *(*(v26 - 8) + 80);
    EnumValueWitnessTable.destructiveProjectEnumData(_:)();
    ValueWitnessTable.initializeWithTake(_:_:)();
    v17 = *(*(a2 + 8) + 16);
    if (*FieldDescriptor.subscript.getter())
    {
      v18 = *v16;
      result = swift_projectBox();
      if (!result)
      {
        goto LABEL_18;
      }
    }

    result = Case.payloadType.getter(a2);
    if (result)
    {
      v22 = 0uLL;
      v23 = 0;
      v24 = result;
      if ((*(*(result - 8) + 82) & 2) != 0)
      {
        *&v22 = swift_allocBox();
      }

      ValueWitnessTable.initializeWithCopy(_:_:)();
      swift_deallocBox();
      v19 = v22;
      v20 = v23;
      v21 = v24;
      result = outlined init with copy of Any(&v19, a4);
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #2 in Case.get(from:)(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a2[3] - 8) + 82) & 2) != 0)
  {
    *a2 = swift_allocBox();
  }

  return ValueWitnessTable.initializeWithCopy(_:_:)();
}

Swift::Int Case.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](a1);
  MEMORY[0x1B2707190](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Case()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v1);
  MEMORY[0x1B2707190](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Case()
{
  v1 = v0[1];
  MEMORY[0x1B2707190](*v0);
  return MEMORY[0x1B2707190](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Case()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v1);
  MEMORY[0x1B2707190](v2);
  return Hasher._finalize()();
}

unint64_t *Case.description.getter(uint64_t a1)
{
  v12 = _typeName(_:qualified:)();
  MEMORY[0x1B27070E0](46, 0xE100000000000000);
  v2 = *(*(a1 + 8) + 16);
  v3 = *(FieldDescriptor.subscript.getter() + 8);
  v4 = String.init(cString:)();
  MEMORY[0x1B27070E0](v4);

  v5 = *(*(a1 + 8) + 16);
  if (!*(FieldDescriptor.subscript.getter() + 4))
  {
    return v12;
  }

  result = Case.payloadType.getter(a1);
  if (result)
  {
    v7 = *result;
    v8 = static Metadata.Kind.tuple.getter();
    if (v7 > 0x7FF)
    {
      if (v8 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v8 < 0x800)
      {
        if (v7 != v8)
        {
          goto LABEL_10;
        }

LABEL_8:
        v9 = _typeName(_:qualified:)();
LABEL_11:
        MEMORY[0x1B27070E0](v9, v10);

        return v12;
      }

      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v11 = _typeName(_:qualified:)();
    MEMORY[0x1B27070E0](v11);

    MEMORY[0x1B27070E0](41, 0xE100000000000000);
    v9 = 40;
    v10 = 0xE100000000000000;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t Cases.endIndex.getter(void *a1)
{
  if ((*a1 - 513) > 1)
  {
    return 0;
  }

  else
  {
    return (*(a1[1] + 20) & 0xFFFFFF) + *(a1[1] + 24);
  }
}

Swift::Int __swiftcall Cases.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Cases.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t Cases.subscript.getter(unint64_t result, void *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if ((*a2 - 513) <= 1 && (*(a2[1] + 20) & 0xFFFFFF) + *(a2[1] + 24) > result)
  {
    return a2;
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Cases@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Cases(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

unint64_t protocol witness for Collection.endIndex.getter in conformance Cases@<X0>(unint64_t *a1@<X8>)
{
  result = Cases.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Cases(unint64_t *a1, unint64_t *a2))()
{
  *a1 = Cases.subscript.getter(*a2, *v2);
  a1[1] = v4;
  return protocol witness for Collection.subscript.read in conformance Cases;
}

uint64_t protocol witness for Collection.subscript.getter in conformance Cases@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Collection<>.subscript.getter(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t result, int64_t a2, void *a3)
{
  if ((*a3 - 513) > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(a3[1] + 20) & 0xFFFFFF) + *(a3[1] + 24);
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance Cases@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized RandomAccessCollection<>.indices.getter(void *a1)
{
  if ((*a1 - 513) <= 1)
  {
    v1 = (*(a1[1] + 20) & 0xFFFFFF) + *(a1[1] + 24);
  }

  return 0;
}

int64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Cases@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance Cases(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = Cases.endIndex.getter(*v2);
  if (v3 > result)
  {
    __break(1u);
  }

  else if (v4 <= result)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Cases(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance Cases(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance Cases@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance Cases(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
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

unint64_t lazy protocol witness table accessor for type Case and conformance Case()
{
  result = lazy protocol witness table cache variable for type Case and conformance Case;
  if (!lazy protocol witness table cache variable for type Case and conformance Case)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Case and conformance Case);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Cases and conformance Cases()
{
  result = lazy protocol witness table cache variable for type Cases and conformance Cases;
  if (!lazy protocol witness table cache variable for type Cases and conformance Cases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cases and conformance Cases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cases and conformance Cases;
  if (!lazy protocol witness table cache variable for type Cases and conformance Cases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cases and conformance Cases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cases and conformance Cases;
  if (!lazy protocol witness table cache variable for type Cases and conformance Cases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cases and conformance Cases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cases and conformance Cases;
  if (!lazy protocol witness table cache variable for type Cases and conformance Cases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cases and conformance Cases);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Cases> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy18ReflectionInternal5CasesVGMd, &_ss5SliceVy18ReflectionInternal5CasesVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Cases> and conformance Slice<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Case(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Case(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cases(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Cases(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Field.isVar.getter(uint64_t a1, void *a2)
{
  if (*a2 <= 0x7FFuLL && (*a2 | 0x200) != 0x200)
  {
    return 0;
  }

  v2 = *(TypeMetadata.descriptor.getter() + 16);
  return (*FieldDescriptor.subscript.getter() >> 1) & 1;
}

BOOL Field.isWeakOrUnowned.getter(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = static Metadata.Kind.tuple.getter();
  if (v2 > 0x7FF)
  {
    if (v3 - 2048 >= 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v3 >= 0x800)
  {
    if (v2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v2 == v3)
  {
    return 0;
  }

LABEL_8:
  v5 = *(TypeMetadata.descriptor.getter() + 16);
  FieldDescriptor.subscript.getter();
  return FieldDescriptor.Element.referenceOwnership.getter() != 0;
}

uint64_t Field.name.getter(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = static Metadata.Kind.tuple.getter();
  if (v2 > 0x7FF)
  {
    if (v3 - 2048 < 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_6;
    }

LABEL_10:
    v5 = *(TypeMetadata.descriptor.getter() + 16);
    v6 = FieldDescriptor.subscript.getter();
    v7 = v6 + 8 + *(v6 + 8);

    return String.init(cString:)();
  }

  if (v3 >= 0x800)
  {
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (v2 != v3)
  {
    goto LABEL_10;
  }

LABEL_6:
  TupleMetadata.init(_:)();
  v4 = TupleMetadata.Elements.subscript.getter();

  return MEMORY[0x1EEE32B18](v4);
}

uint64_t Field.type.getter(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = static Metadata.Kind.tuple.getter();
  if (v3 > 0x7FF)
  {
    if (v4 - 2048 >= 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_10;
    }
  }

  else if (v4 >= 0x800)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else if (v3 != v4)
  {
LABEL_10:
    v6 = *(TypeMetadata.descriptor.getter() + 16);
    v7 = (FieldDescriptor.subscript.getter() + 4);
    v8 = *v7;
    result = MangledTypeReference.standardSubstitution.getter();
    if (!result)
    {
      return MEMORY[0x1B2706F10](v7 + v8, a2);
    }

    return result;
  }

  TupleMetadata.init(_:)();
  v5 = TupleMetadata.Elements.subscript.getter();

  return MEMORY[0x1EEE32B28](v5);
}

unint64_t Field.keyPath.getter(uint64_t a1, unint64_t *a2)
{
  v4 = Field.type.getter(a1, a2);

  return openedValue #1 <A><A1>(_:) in openedRoot #1 <A>(_:) in Field.keyPath.getter(v4, a1, a2);
}

unint64_t openedValue #1 <A><A1>(_:) in openedRoot #1 <A>(_:) in Field.keyPath.getter(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (Field.isVar.getter(a2, a3))
  {
    v5 = *a3;
    if (*a3 - 2048 >= 0xFFFFFFFFFFFFF801 && ((v6 = static Metadata.Kind.objcClassWrapper.getter(), v6 < 0x800) ? (v7 = v6 == v5) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), v5 - 515 >= 2 ? (v9 = v8 == 0) : (v9 = 0), v9))
    {
      type metadata accessor for WritableKeyPath();
    }

    else
    {
      type metadata accessor for ReferenceWritableKeyPath();
    }
  }

  else
  {
    type metadata accessor for KeyPath();
  }

  return static KeyPath.create(for:)(a2, a3);
}

unint64_t Field._optionalKeyPath.getter(uint64_t a1, unint64_t *a2)
{
  v4 = Field.type.getter(a1, a2);

  return openedValue #1 <A><A1>(_:) in openedRoot #1 <A>(_:) in Field._optionalKeyPath.getter(v4, a1, a2);
}

unint64_t openedValue #1 <A><A1>(_:) in openedRoot #1 <A>(_:) in Field._optionalKeyPath.getter(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  isOptionalType = swift_isOptionalType();
  type metadata accessor for Optional();
  if ((isOptionalType & 1) == 0)
  {
    type metadata accessor for Optional();
  }

  type metadata accessor for KeyPath();
  return static KeyPath.createOptional(for:wrap:)(a2, a3, isOptionalType ^ 1u);
}

Swift::Int Field.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](a2);
  MEMORY[0x1B2707190](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Field()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v2);
  MEMORY[0x1B2707190](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Field()
{
  v1 = *v0;
  MEMORY[0x1B2707190](v0[1]);
  return MEMORY[0x1B2707190](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Field()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v2);
  MEMORY[0x1B2707190](v1);
  return Hasher._finalize()();
}

uint64_t Field.description.getter(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = static Metadata.Kind.tuple.getter();
  if (v4 > 0x7FF)
  {
    if (v5 - 2048 < 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_15;
    }
  }

  else if (v5 >= 0x800)
  {
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_15;
  }

  v6 = *(TypeMetadata.descriptor.getter() + 16);
  FieldDescriptor.subscript.getter();
  v7 = FieldDescriptor.Element.referenceOwnership.getter();
  switch(v7)
  {
    case 4:
      v9 = 0x80000001AE7E1120;
      v8 = 0xD000000000000010;
      break;
    case 2:
      v8 = 0x2064656E776F6E75;
      v9 = 0xE800000000000000;
      break;
    case 1:
      v8 = 0x206B616577;
      v9 = 0xE500000000000000;
      break;
    default:
      goto LABEL_15;
  }

  MEMORY[0x1B27070E0](v8, v9);
LABEL_15:
  if (Field.isVar.getter(a1, a2))
  {
    v10 = 544366966;
  }

  else
  {
    v10 = 544499052;
  }

  MEMORY[0x1B27070E0](v10, 0xE400000000000000);
  v14 = Field.name.getter(a1, a2);
  v15 = v11;
  MEMORY[0x1B27070E0](8250, 0xE200000000000000);
  Field.type.getter(a1, a2);
  v12 = _typeName(_:qualified:)();
  MEMORY[0x1B27070E0](v12);

  MEMORY[0x1B27070E0](v14, v15);

  return 0;
}

uint64_t Fields.endIndex.getter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF || !v1)
  {
    v2 = 36;
    v3 = 8;
    return *(a1[v3] + v2);
  }

  if (v1 == 512)
  {
    v2 = 20;
    v3 = 1;
    return *(a1[v3] + v2);
  }

  if (static Metadata.Kind.tuple.getter() != v1)
  {
    return 0;
  }

  TupleMetadata.init(_:)();
  v5 = TupleMetadata.Elements.endIndex.getter();
  result = TupleMetadata.Elements.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v6 = TupleMetadata.Elements.endIndex.getter();
  if (v5 < 0 || (v7 = v6, result = v5, v7 < v5))
  {
    __break(1u);
    return 0;
  }

  return result;
}

Swift::Int __swiftcall Fields.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Fields.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Fields.subscript.getter(uint64_t result, uint64_t *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = Fields.endIndex.getter(a2);
    if (result > v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Fields@<X0>(uint64_t *a1@<X8>)
{
  result = Fields.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Fields(uint64_t (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  if (*a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *v2;
    result = Fields.endIndex.getter(v5);
    if (v3 < result)
    {
      *v4 = v3;
      *(v4 + 1) = v5;
      return protocol witness for Collection.subscript.read in conformance Cases;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance Fields@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = Fields.endIndex.getter(v6);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance Fields@<X0>(void *a1@<X8>)
{
  result = Fields.endIndex.getter(*v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Fields@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = Fields.endIndex.getter(*v3);
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Fields@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance Fields(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = Fields.endIndex.getter(*v2);
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = Fields.endIndex.getter(v5);
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Fields()
{
  v1 = *v0;
  v2 = Fields.endIndex.getter(v1);
  result = Fields.endIndex.getter(v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = Fields.endIndex.getter(v1);
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Field and conformance Field()
{
  result = lazy protocol witness table cache variable for type Field and conformance Field;
  if (!lazy protocol witness table cache variable for type Field and conformance Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field and conformance Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Fields and conformance Fields()
{
  result = lazy protocol witness table cache variable for type Fields and conformance Fields;
  if (!lazy protocol witness table cache variable for type Fields and conformance Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fields and conformance Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Fields and conformance Fields;
  if (!lazy protocol witness table cache variable for type Fields and conformance Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fields and conformance Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Fields and conformance Fields;
  if (!lazy protocol witness table cache variable for type Fields and conformance Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fields and conformance Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Fields and conformance Fields;
  if (!lazy protocol witness table cache variable for type Fields and conformance Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fields and conformance Fields);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Fields> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy18ReflectionInternal6FieldsVGMd, &_ss5SliceVy18ReflectionInternal6FieldsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Field(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, void *a4)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v4 = a4 + 1;
  if ((*a4 - 513) > 1 || !(*(*v4 + 20) & 0xFFFFFF | *(*v4 + 24)))
  {
LABEL_8:
    v5 = 0;
    a3 = 0;
    goto LABEL_10;
  }

  *a2 = a4;
  a2[1] = 0;
  if (a3 == 1)
  {
    v5 = 1;
LABEL_10:
    *result = a4;
    result[1] = v5;
    return a3;
  }

  v6 = a2 + 3;
  v5 = 1;
  while (1)
  {
    if ((*a4 - 513) > 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(*v4 + 20) & 0xFFFFFF) + *(*v4 + 24);
      if (v5 == v7)
      {
        a3 = v5;
        goto LABEL_10;
      }
    }

    if (v5 >= v7)
    {
      break;
    }

    *(v6 - 1) = a4;
    *v6 = v5;
    v6 += 2;
    if (a3 == ++v5)
    {
      v5 = a3;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result;
  if (!a2)
  {
    goto LABEL_54;
  }

  v6 = a3;
  if (!a3)
  {
    v15 = 0;
    goto LABEL_55;
  }

  if (a3 < 0)
  {
    goto LABEL_65;
  }

  v7 = *a4;
  if (*a4 > 0x7FF)
  {
    goto LABEL_7;
  }

  if (v7 == 512)
  {
    v8 = 20;
    v9 = a4 + 1;
    goto LABEL_8;
  }

  if (!v7)
  {
LABEL_7:
    v8 = 36;
    v9 = a4 + 8;
LABEL_8:
    v10 = *(*v9 + v8);
LABEL_9:
    if (v10)
    {
      v11 = *a4;
      if (*a4 <= 0x7FF)
      {
        if (v11 == 512)
        {
          v12 = 20;
          v13 = a4 + 1;
          goto LABEL_14;
        }

        if (v11)
        {
          v27 = a2;
          result = static Metadata.Kind.tuple.getter();
          if (result == v11)
          {
            TupleMetadata.init(_:)();
            v14 = TupleMetadata.Elements.endIndex.getter();
            result = TupleMetadata.Elements.endIndex.getter();
            if (result < 0)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            result = TupleMetadata.Elements.endIndex.getter();
            if ((v14 & 0x8000000000000000) == 0)
            {
              a2 = v27;
              if (result >= v14)
              {
                goto LABEL_15;
              }
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
          }

LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }
      }

      v12 = 36;
      v13 = a4 + 8;
LABEL_14:
      v14 = *(*v13 + v12);
LABEL_15:
      if (v14)
      {
        *a2 = 0;
        a2[1] = a4;
        if (v6 == 1)
        {
          v15 = 1;
LABEL_55:
          *v5 = a4;
          v5[1] = v15;
          return v6;
        }

        v16 = (a2 + 3);
        v15 = 1;
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_63;
          }

          v18 = *a4;
          if (*a4 > 0x7FF)
          {
            break;
          }

          if (v18 == 512)
          {
            v19 = a4 + 1;
            v20 = 20;
            goto LABEL_25;
          }

          if (!v18)
          {
            break;
          }

          result = static Metadata.Kind.tuple.getter();
          if (result != v18)
          {
            goto LABEL_27;
          }

          TupleMetadata.init(_:)();
          v21 = TupleMetadata.Elements.endIndex.getter();
          result = TupleMetadata.Elements.endIndex.getter();
          if (result < 0)
          {
            goto LABEL_67;
          }

          result = TupleMetadata.Elements.endIndex.getter();
          if (v21 < 0 || result < v21)
          {
            goto LABEL_53;
          }

LABEL_26:
          if (v15 == v21)
          {
            v6 = v15;
            goto LABEL_55;
          }

LABEL_27:
          v22 = *a4;
          if (*a4 <= 0x7FF)
          {
            if (v22 == 512)
            {
              v23 = a4 + 1;
              v24 = 20;
              goto LABEL_31;
            }

            if (v22)
            {
              result = static Metadata.Kind.tuple.getter();
              if (result == v22)
              {
                TupleMetadata.init(_:)();
                v25 = TupleMetadata.Elements.endIndex.getter();
                result = TupleMetadata.Elements.endIndex.getter();
                if (result < 0)
                {
                  goto LABEL_66;
                }

                result = TupleMetadata.Elements.endIndex.getter();
                if (v25 < 0 || result < v25)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_32;
            }
          }

          v23 = a4 + 8;
          v24 = 36;
LABEL_31:
          v25 = *(*v23 + v24);
LABEL_32:
          if (v15 >= v25)
          {
            goto LABEL_64;
          }

          *(v16 - 1) = v15;
          *v16 = a4;
          ++v15;
          v16 += 2;
          if (v17 == v6)
          {
            v15 = v6;
            goto LABEL_55;
          }
        }

        v19 = a4 + 8;
        v20 = 36;
LABEL_25:
        v21 = *(*v19 + v20);
        goto LABEL_26;
      }

      goto LABEL_64;
    }

LABEL_54:
    v15 = 0;
    v6 = 0;
    goto LABEL_55;
  }

  v26 = a2;
  if (static Metadata.Kind.tuple.getter() != v7)
  {
    goto LABEL_54;
  }

  TupleMetadata.init(_:)();
  v10 = TupleMetadata.Elements.endIndex.getter();
  result = TupleMetadata.Elements.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    result = TupleMetadata.Elements.endIndex.getter();
    if (v10 < 0 || (a2 = v26, result < v10))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
  return result;
}

int64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if ((*a3 - 513) > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(a3[1] + 20) & 0xFFFFFF) + *(a3[1] + 24);
  }

  if (result < 0 || v5 < result)
  {
    goto LABEL_9;
  }

  return result;
}

int64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, int64_t a3, void *a4)
{
  result = Cases.endIndex.getter(a4);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
  }

  else
  {
    result = Cases.endIndex.getter(a4);
    if ((a3 & 0x8000000000000000) == 0 && result >= a3)
    {
      v9 = a3 - a1;
      if (a2 < 1)
      {
        if (v9 > 0 || v9 <= a2)
        {
          return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a4);
        }
      }

      else if (v9 < 0 || v9 >= a2)
      {
        return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a4);
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = Fields.endIndex.getter(a4);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = Fields.endIndex.getter(a4);
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = Fields.endIndex.getter(a4);
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < a3 || (a3 | result) < 0 || a5 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || result > a5)
  {
    goto LABEL_17;
  }

  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_26:
    v5 = a3;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a5;
    if (a5)
    {
      v6 = a5 & ~(a5 >> 63);
      v7 = a3 - 1;
      v8 = a5 - 1;
      if (v6 < a5 - 1)
      {
        v8 = a5 & ~(a5 >> 63);
      }

      if (v8 < v7)
      {
        v7 = v8;
      }

      if (v7 >= 4 && (a2 - a4) > 0x1F)
      {
        if (v7 >= 0x1000000000000000)
        {
          v7 = 0x1000000000000000;
        }

        v13 = v7 + 1;
        v14 = v13 & 3;
        if ((v13 & 3) == 0)
        {
          v14 = 4;
        }

        v10 = v13 - v14;
        v11 = v10 + 1;
        v12 = (a2 + 8 * v10);
        v15 = (a4 + 16);
        v16 = (a2 + 16);
        v17 = v10;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
      }

      else
      {
        v10 = 0;
        v11 = 1;
        v12 = a2;
      }

      while (v10 != v6)
      {
        if (v10 == 0x1000000000000000)
        {
          goto LABEL_29;
        }

        v19 = v11;
        *v12 = *(a4 + 8 * v10);
        if (a3 == v11)
        {
          goto LABEL_26;
        }

        ++v12;
        ++v11;
        v10 = v19;
        if (a5 + 1 == v19 + 1)
        {
          v5 = a5;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    *result = a4;
    result[1] = a5;
    result[2] = v5;
    return v5;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t *specialized Sequence._copyContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_11:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = a3 - 1;
    while (a6 != v12)
    {
      *v11 = GenericArguments2.subscript.getter(v12, a4, a5, a6);
      *(v11 + 8) = v14 & 1;
      if (v13 == v12)
      {
        goto LABEL_11;
      }

      v11 += 16;
      if (++v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    v10 = a6;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance GenericArguments2(uint64_t a1, int64_t *a2))(uint64_t a1)
{
  v4 = GenericArguments2.subscript.getter(*a2, *v2, *(v2 + 8), *(v2 + 16));
  *(a1 + 16) = v4;
  *(a1 + 9) = v5;
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return protocol witness for Collection.subscript.read in conformance GenericArguments2;
}

void *protocol witness for Collection.subscript.getter in conformance GenericArguments2@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 2);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result[1];
  if (v3 >= v4)
  {
    v5 = *v2;
    *a2 = *result;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 32) = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 protocol witness for Collection.indices.getter in conformance GenericArguments2@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = v2;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance GenericArguments2@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

Swift::Int __swiftcall GenericArguments.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall GenericArguments.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t GenericArguments.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0 || result >= a3)
  {
    __break(1u);
  }

  else if (!(result >> 60))
  {
    return *(a2 + 8 * result);
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance GenericArguments(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0 || v3 >= v2[1])
  {
    __break(1u);
  }

  else if (!(v3 >> 60))
  {
    *result = *(*v2 + 8 * v3);
    return protocol witness for Collection.subscript.read in conformance Cases;
  }

  __break(1u);
  return result;
}

int64x2_t *protocol witness for Collection.subscript.getter in conformance GenericArguments@<X0>(int64x2_t *result@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *v2;
  if (v2->i64[1] < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (result->i64[0] < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((vmovn_s64(vcgtq_s64(v4, v3)).i32[1] & 1) == 0)
  {
    *a2 = v4;
    a2[1] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance GenericArguments(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance GenericArguments@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 8) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance GenericArguments@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance GenericArguments(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 8);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance GenericArguments@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void protocol witness for Sequence._copyToContiguousArray() in conformance GenericArguments()
{
  v1 = v0[1];
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = *v0;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18ReflectionInternal4TypeV_Tt1gq5Tm(v0[1], 0, &_ss23_ContiguousArrayStorageCy18ReflectionInternal4TypeVGMd, &_ss23_ContiguousArrayStorageCy18ReflectionInternal4TypeVGMR);
    if (specialized Sequence._copyContents(initializing:)(v4, (v3 + 4), v1, v2, v1) != v1)
    {
      __break(1u);
    }
  }
}

unsigned __int16 *Type.genericArguments.getter(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    goto LABEL_10;
  }

  while (1)
  {
    TypeMetadata.descriptor.getter();
    result = TypeDescriptor.genericSignature.getter();
    if (!result)
    {
      break;
    }

    v6 = *result;
    v4 = (result + 4);
    v5 = v6;
    if (!v6)
    {
      return TypeMetadata.genericArguments.getter();
    }

    v2 = 0;
    while (1)
    {
      v7 = *v4++;
      if (v7 < 0 && __OFADD__(v2++, 1))
      {
        break;
      }

      if (!--v5)
      {
        return TypeMetadata.genericArguments.getter();
      }
    }

    __break(1u);
LABEL_10:
    v9 = static Metadata.Kind.objcClassWrapper.getter();
    v11 = v9 < 0x800 && v9 == v2;
    if ((v2 - 515) >= 2 && !v11 && (*a1 - 512) > 2)
    {
      return 0;
    }
  }

  return result;
}

_WORD *Type.genericArguments2.getter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 <= 0x7FF && (v1 - 512) >= 3 && v1 != 0)
  {
    v9 = static Metadata.Kind.objcClassWrapper.getter();
    if ((v1 - 515) >= 2 && v9 != v1)
    {
      return 0;
    }
  }

  TypeMetadata.descriptor.getter();
  result = TypeDescriptor.genericSignature.getter();
  if (result)
  {
    v4 = (result + 4);
    v5 = *result;
    if (*result)
    {
      v6 = 0;
      while (1)
      {
        v7 = *v4++;
        if (v7 < 0 && __OFADD__(v6++, 1))
        {
          break;
        }

        if (!--v5)
        {
          return TypeMetadata.genericArguments.getter();
        }
      }

      __break(1u);
    }

    else
    {
      return TypeMetadata.genericArguments.getter();
    }
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, Cases.endIndex.getter, &_ss23_ContiguousArrayStorageCy18ReflectionInternal4CaseVGMd, &_ss23_ContiguousArrayStorageCy18ReflectionInternal4CaseVGMR, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, Fields.endIndex.getter, &_ss23_ContiguousArrayStorageCy18ReflectionInternal5FieldVGMd, &_ss23_ContiguousArrayStorageCy18ReflectionInternal5FieldVGMR, specialized Sequence._copySequenceContents(initializing:));
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, void *, uint64_t, uint64_t))
{
  v10 = a2();
  result = (a2)(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = (a2)(a1);
    if ((v10 & 0x8000000000000000) == 0 && result >= v10)
    {
      if (v10)
      {
        v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18ReflectionInternal4CaseV_Tt1gq5Tm(v10, 0, a3, a4);
        if (a5(&v13, v12 + 4, v10, a1) == v10)
        {
          return v12;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result, _WORD *a2, uint64_t a3)
{
  if (a3 > 0)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18ReflectionInternal15GenericArgumentOGMd, &_ss23_ContiguousArrayStorageCy18ReflectionInternal15GenericArgumentOGMR);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = 0;
    v10 = v7 - 32;
    v9 = v7 < 32;
    v11 = v7 - 17;
    if (!v9)
    {
      v11 = v10;
    }

    v6[2] = a3;
    v6[3] = 2 * (v11 >> 4);
    v12 = 4;
    do
    {
      v13 = v8 + 1;
      v14 = &v6[v12];
      *v14 = GenericArguments2.subscript.getter(v8, v5, a2, a3);
      *(v14 + 8) = v15 & 1;
      v12 += 2;
      v8 = v13;
    }

    while (a3 != v13);
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18ReflectionInternal4CaseV_Tt1gq5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18ReflectionInternal4TypeV_Tt1gq5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    return MEMORY[0x1E69E7CC0];
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

uint64_t specialized static GenericArgument.== infix(_:_:)(uint64_t result, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    return (result == a3) & ~a4;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GenericArguments2 and conformance GenericArguments2()
{
  result = lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2;
  if (!lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2;
  if (!lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2;
  if (!lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments2 and conformance GenericArguments2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<GenericArguments2> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type GenericArguments2 and conformance GenericArguments2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericArguments and conformance GenericArguments()
{
  result = lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments;
  if (!lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments;
  if (!lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments;
  if (!lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments;
  if (!lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericArguments and conformance GenericArguments);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<GenericArguments> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy18ReflectionInternal16GenericArgumentsVGMd, &_ss5SliceVy18ReflectionInternal16GenericArgumentsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GenericArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenericArguments2(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenericArguments2(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GenericArguments(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenericArguments(uint64_t result, int a2, int a3)
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

uint64_t specialized BidirectionalCollection.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if ((result < 0) ^ v3 | (result == 0))
  {
    if (result < 0 != v3)
    {
      result = a2 - a1;
      if (a2 - a1 < 0)
      {
        return result;
      }

      __break(1u);
    }

    return 0;
  }

  if ((a1 - a2) < 0x8000000000000001)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v5 = result - a3;
    if (result - a3 >= ~a2)
    {
      v5 = ~a2;
    }

    if (v5 > 1)
    {
      v9 = v5 & 0x7FFFFFFFFFFFFFFELL;
      v6 = -v9;
      result -= v9;
      do
      {
        v9 -= 2;
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }

    while (a3 != result)
    {
      --v6;
      --result;
      if (v6 <= a2)
      {
        return result;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if ((v3 + 1) > 2)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      result += v4;
      v7 = v4;
      do
      {
        v7 -= 2;
      }

      while (v7);
    }

    else
    {
      v4 = 0;
    }

    v8 = a2 - v4;
    while (a3 != result)
    {
      ++result;
      if (!--v8)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t outlined consume of GenericArgument(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t static KeyPath.createOptional(for:wrap:)(uint64_t a1, unint64_t *a2, char a3)
{
  v7 = (*(v3 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = *(v3 + 52) | 3;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = 0;
  if (a3)
  {
    v11 = -2147483612;
  }

  else
  {
    v11 = -2147483628;
  }

  v12 = MEMORY[0x1E69E77B0];
  *(v9 + 24) = v11;
  v13 = *(*(*(v3 + *v12) - 8) + 64);
  *(v9 + 32) = 0x4000000;
  *(v9 + 40) = a2;
  v14 = *(a2 - 1);
  if (*(v14 + 64) <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  LODWORD(result) = Field.offset.getter(a1, a2);
  if (*a2 - 2048 >= 0xFFFFFFFFFFFFF801)
  {
    if (*a2)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10[12] = result | 0x3000000;
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_17:
    v17 = v10 + 14;
    goto LABEL_18;
  }

  result = ClassMetadata.fieldOffsets.getter();
  if ((a1 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_25;
  }

  result = *(result + 8 * a1);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(result))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (*a2 > 0x7FF || !*a2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10[12] = result | 0x1000000;
  if ((a3 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  *(v10 + 7) = Field.type.getter(a1, a2);
  v17 = v10 + 16;
LABEL_18:
  v18 = *(*(Field.type.getter(a1, a2) - 8) + 64);
  if (v18 <= v15)
  {
    v18 = v15;
  }

  if (a3)
  {
    *v17 = 67108865;
    v17 += 2;
    v19 = *(*(v3 + *v12 + 8) - 8);
    if (*(v19 + 64) > v18)
    {
      v18 = *(v19 + 64);
    }
  }

  *v17 = v18;
  return v10;
}

uint64_t _typesThatConform(to:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = static Metadata.Kind.existential.getter();
  if (v1 > 0x7FF)
  {
    if (v2 - 2048 >= 0xFFFFFFFFFFFFF801)
    {
      return 0;
    }
  }

  else if (v2 >= 0x800)
  {
    if (v1)
    {
      return 0;
    }
  }

  else if (v1 != v2)
  {
    return 0;
  }

  ExistentialMetadata.init(_:)();
  v3 = ExistentialMetadata.protocols.getter();
  if (v4 == 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](*v3);
    _withConformanceCache(for:do:)();
    return v6;
  }

  return 0;
}

uint64_t partial apply for closure #1 in _typesThatConform(to:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
}

uint64_t PartialType.hasParameterPacks.getter(_DWORD *a1)
{
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  v2 = 11;
  if ((*a1 & 0x1Fu) - 17 < 2)
  {
    v2 = 7;
  }

  return HIWORD(a1[v2 + 3]) & 1;
}

uint64_t PartialType._create(with:)(void *a1, uint64_t a2, _DWORD *a3)
{
  if ((*a3 & 0x80) == 0)
  {
    if (!a2)
    {
      return ((a3 + a3[3] + 12))(0);
    }

    return 0;
  }

  if ((*a3 & 0x1Fu) - 17 >= 2)
  {
    v5 = 11;
  }

  else
  {
    v5 = 7;
  }

  v6 = &a3[v5];
  v7 = &a3[v5 + 2];
  v8 = LOWORD(a3[v5 + 2]);
  if (!LOWORD(a3[v5 + 2]))
  {
    if (!a2 && (*(v6 + 7) & 1) == 0)
    {
      return ((a3 + a3[3] + 12))(0);
    }

    return 0;
  }

  v9 = 0;
  v10 = v5 * 4 + 16;
  while ((*(a3 + v10) & 0x80000000) == 0 || !__OFADD__(v9++, 1))
  {
    ++v10;
    if (!--v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  if (v9 != a2 || (*(v6 + 7) & 1) != 0)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return ((a3 + a3[3] + 12))(0);
  }

  if (*(v6 + 5))
  {

    return PartialType._createRequirements(with:_:)(a1, a2, v7, a3);
  }

  else
  {

    return PartialType._createNoRequirements(with:)(a1, a2, a3);
  }
}

uint64_t PartialType._createNoRequirements(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 12);
  v3 = a3 + 12;
  v4 = v5;
  switch(a2)
  {
    case 3:
      return ((v3 + v4))(0, *a1, a1[1], a1[2]);
    case 2:
      return ((v3 + v4))(0, *a1, a1[1]);
    case 1:
      return ((v3 + v4))(0, *a1);
  }

  return ((v3 + v4))(0, a1);
}

uint64_t PartialType._createRequirements(with:_:)(const void *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSVSg_Tt1g5(a2, 0);
    memcpy(v8 + 32, a1, 8 * a2);
    v9 = a3[1];
    if (!a3[1])
    {
      goto LABEL_25;
    }

LABEL_5:
    v10 = (a3 + (-*a3 & 3) + *a3 + 8);
    while (1)
    {
      v11 = *v10 & 0x1F;
      if (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1 || (GenericSignature.RequirementDescriptor.checkSameType(in:with:)() & 1) == 0)
          {
LABEL_29:

            return 0;
          }
        }

        else
        {
          v12 = GenericSignature.RequirementDescriptor.checkProtocolConformance(in:with:)();
          if (!v12)
          {
            goto LABEL_29;
          }

          if ((*v10 & 0x80) != 0)
          {
            v13 = v12;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            }

            v15 = *(v8 + 2);
            v14 = *(v8 + 3);
            if (v15 >= v14 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
            }

            *(v8 + 2) = v15 + 1;
            *&v8[8 * v15 + 32] = v13;
          }
        }
      }

      else if (v11 == 2)
      {
        if ((GenericSignature.RequirementDescriptor.checkBaseClass(in:with:)() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v11 != 3 && (v11 != 31 || (GenericSignature.RequirementDescriptor.checkLayout(in:with:)() & 1) == 0))
      {
        goto LABEL_29;
      }

      v10 += 3;
      if (!--v9)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (a3[1])
  {
    goto LABEL_5;
  }

LABEL_25:
  v16 = *(v8 + 2);
  v19 = *(a4 + 12);
  v18 = a4 + 12;
  v17 = v19;
  switch(v16)
  {
    case 3:
      v20 = ((v18 + v17))(0, *(v8 + 4), *(v8 + 5), *(v8 + 6));
      break;
    case 2:
      v20 = ((v18 + v17))(0, *(v8 + 4), *(v8 + 5));
      break;
    case 1:
      v20 = ((v18 + v17))(0, *(v8 + 4));
      break;
    default:
      v20 = ((v18 + v17))(0, v8 + 32);
      break;
  }

  v21 = v20;

  return v21;
}

Swift::Int PartialType.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PartialType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PartialType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](v1);
  return Hasher._finalize()();
}

uint64_t Type.partial.getter(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v5 = static Metadata.Kind.objcClassWrapper.getter();
    v6 = v5 < 0x800 && v5 == v2;
    v7 = v6;
    v8 = v2 - 515;
    v2 = *a1;
    if (v8 >= 2 && !v7 && (v2 - 512) > 2)
    {
      return 0;
    }
  }

  v3 = 8;
  if ((v2 - 512) < 3)
  {
    v3 = 1;
  }

  return a1[v3];
}

uint64_t specialized PartialType.init(_:)(void *a1)
{
  v1 = 8;
  if ((*a1 - 512) < 3)
  {
    v1 = 1;
  }

  return a1[v1];
}

unint64_t lazy protocol witness table accessor for type PartialType and conformance PartialType()
{
  result = lazy protocol witness table cache variable for type PartialType and conformance PartialType;
  if (!lazy protocol witness table cache variable for type PartialType and conformance PartialType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialType and conformance PartialType);
  }

  return result;
}

BOOL Type.isEnum.getter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF)
  {
    v1 = 0;
  }

  else if (v1 == 513)
  {
    return 1;
  }

  return v1 == 514;
}

uint64_t Type.init(_:)(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return DynamicType;
}

BOOL Type.isTuple.getter(unint64_t *a1)
{
  v1 = *a1;
  v2 = static Metadata.Kind.tuple.getter();
  if (v2 >= 0x800)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (v1 >= 0x800)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v4 == v3;
}

BOOL Type.isClass.getter(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 - 2048) < 0xFFFFFFFFFFFFF801)
  {
    return 1;
  }

  v2 = static Metadata.Kind.objcClassWrapper.getter();
  return v2 <= 0x7FF && v2 == v1 || (v1 - 515) < 2;
}

BOOL Type.isExistential.getter(unint64_t *a1)
{
  v1 = *a1;
  v2 = static Metadata.Kind.existential.getter();
  if (v2 >= 0x800)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (v1 >= 0x800)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v4 == v3;
}

uint64_t Type.superclass.getter(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 - 2048) >= 0xFFFFFFFFFFFFF801 && ((v3 = static Metadata.Kind.objcClassWrapper.getter(), v3 < 0x800) ? (v4 = v3 == v2) : (v4 = 0), !v4 ? (v5 = 0) : (v5 = 1), (v2 - 515) >= 2 ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

Swift::Int Type.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2707190](a1);
  return Hasher._finalize()();
}