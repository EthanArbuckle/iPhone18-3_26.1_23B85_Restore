uint64_t FileDescriptor._writeAll<A>(toAbsoluteOffset:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[4] = a3;
  v10 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySi6System5ErrnoVGMd, &_ss6ResultOySi6System5ErrnoVGMR);
  Sequence._withRawBufferPointer<A>(_:)(partial apply for closure #1 in FileDescriptor._writeAll<A>(toAbsoluteOffset:_:), v9, a4, v7, a5, &v11);
  return v11;
}

ssize_t closure #1 in FileDescriptor._writeAll<A>(toAbsoluteOffset:_:)@<X0>(int __fd@<W2>, ssize_t result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  v9 = 0;
  v10 = a3 - result;
  while (2)
  {
    if (v7)
    {
      v11 = v10 - v9;
      if (v10 > v9)
      {
        v12 = a4 + v9;
        if (!__OFADD__(a4, v9))
        {
          v13 = (v9 + v7);
          goto LABEL_9;
        }

        __break(1u);
        break;
      }

      v15 = 0;
LABEL_16:
      *a5 = v10;
      *(a5 + 8) = v15;
      return result;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v15 = 0;
      goto LABEL_16;
    }

    v12 = a4 + v9;
    if (!__OFADD__(a4, v9))
    {
      v13 = 0;
      v11 = 0;
LABEL_9:
      while (1)
      {
        result = pwrite(__fd, v13, v11, v12);
        if (result != -1)
        {
          break;
        }

        result = MEMORY[0x1E1278E40]();
        if (result != 4)
        {
          goto LABEL_15;
        }
      }

      v14 = __OFADD__(v9, result);
      v9 += result;
      if (!v14)
      {
        continue;
      }

      __break(1u);
LABEL_15:
      v10 = result;
      v15 = 1;
      goto LABEL_16;
    }

    break;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

Swift::Int FilePath.Component.init(platformString:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = specialized SystemString.init(platformString:)(a1);
  result = FilePath.Component.init(_:)(v3, &v8);
  v5 = v8;
  v6 = v9;
  if (!v8)
  {
    v7 = v8;

    v5 = v7;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t FilePath.Component.withPlatformString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = *(v3 + 1);
  v7 = lazy protocol witness table accessor for type FilePath.Component and conformance FilePath.Component();
  return _StrSlice._withPlatformString<A>(_:)(a1, a2, &type metadata for FilePath.Component, a3, v7);
}

Swift::Int FilePath.Root.init(platformString:)@<X0>(const char *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = specialized SystemString.init(platformString:)(a1);
  result = FilePath.Root.init(_:)(v3, &v7);
  v5 = v7;
  if (!v7)
  {
    v6 = v7;

    v5 = v6;
  }

  *a2 = v5;
  return result;
}

double FilePath.Root.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = specialized String.withCString<A>(_:)(a1, a2);

  FilePath.Root.init(_:)(v4, &v6);
  result = *&v6;
  *a3 = v6;
  return result;
}

uint64_t FilePath.Root.withPlatformString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = v3[1];
  v7 = lazy protocol witness table accessor for type FilePath.Root and conformance FilePath.Root();
  return _StrSlice._withPlatformString<A>(_:)(a1, a2, &type metadata for FilePath.Root, a3, v7);
}

void protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance FilePath(uint64_t *a1@<X0>, size_t *a2@<X8>)
{
  v3 = specialized String.withCString<A>(_:)(*a1, a1[1]);

  SystemString._normalizeSeparators()();
  *a2 = v3;
}

uint64_t FilePath.Component.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = specialized String.withCString<A>(_:)(a1, a2);
  FilePath.Component.init(_:)(v4, v9);
  v5 = v9[0];
  if (v9[0])
  {
    v7 = v9[1];
    v6 = v9[2];

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance FilePath.Component@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized String.withCString<A>(_:)(*a1, a1[1]);
  FilePath.Component.init(_:)(v3, v8);
  v4 = v8[0];
  if (v8[0])
  {
    v6 = v8[1];
    v5 = v8[2];

    *a2 = v4;
    a2[1] = v6;
    a2[2] = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t FilePath.Root.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = specialized String.withCString<A>(_:)(a1, a2);
  FilePath.Root.init(_:)(v4, v8);
  v5 = v8[0];
  if (v8[0])
  {
    v6 = v8[1];

    *a3 = v5;
    a3[1] = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance FilePath.Root@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = specialized String.withCString<A>(_:)(*a1, a1[1]);
  FilePath.Root.init(_:)(v3, v7);
  v4 = v7[0];
  if (v7[0])
  {
    v5 = v7[1];

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall String.init(decoding:)(System::FilePath decoding)
{
  v1 = *decoding._storage.nullTerminatedStorage._rawValue;
  v2 = String.init(cString:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t FilePath.debugDescription.getter()
{
  v3 = *v0;
  FilePath.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath()
{
  v3 = *v0;
  FilePath.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

uint64_t FilePath.Component.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(v2, v3, v1);
  v4 = String.init(cString:)();

  return v4;
}

uint64_t FilePath.Component.debugDescription.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  FilePath.Component.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.Component()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  FilePath.Component.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

void FilePath.Root.description.getter()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v0;

    _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v1, v2);
    String.init(cString:)();
  }
}

uint64_t FilePath.Root.debugDescription.getter()
{
  v3 = *v0;
  v4 = v0[1];
  FilePath.Root.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.Root()
{
  v3 = *v0;
  v4 = v0[1];
  FilePath.Root.description.getter();
  v1 = String.debugDescription.getter();

  return v1;
}

void FilePath.Root.string.getter()
{
  v1 = v0[1];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v0;

    _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v1, v2);
    String.init(cString:)();
  }
}

Swift::String_optional __swiftcall String.init(validating:)(System::FilePath validating)
{
  v1 = MEMORY[0x1E1278E80](*validating._storage.nullTerminatedStorage._rawValue + 32);
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t String.init(decoding:)(unint64_t *a1, uint64_t (*a2)(unint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  v6 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(v4, v5, v3);
  v7 = a2(v6 + 32);

  return v7;
}

unint64_t *String.init(decoding:)(unint64_t *result, uint64_t (*a2)(unint64_t))
{
  v2 = result[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;

    v5 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v2, v4);
    v6 = a2(v5 + 32);

    return v6;
  }

  return result;
}

void FilePath.init(platformString:)(const char *a1@<X0>, size_t *a2@<X8>)
{
  v3 = specialized SystemString.init(platformString:)(a1);
  SystemString._normalizeSeparators()();
  *a2 = v3;
}

System::FilePath __swiftcall FilePath.init(cString:)(Swift::OpaquePointer cString)
{
  v2 = v1;
  v3 = *(cString._rawValue + 2);
  if (v3)
  {
    v4 = cString._rawValue + 32;
    v5 = v4;
    while (*v5++)
    {
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = specialized SystemString.init(platformString:)(v4);
  SystemString._normalizeSeparators()();

  *v2 = v8;
  return result;
}

System::FilePath __swiftcall FilePath.init(cString:)(System::FilePath cString)
{
  if (*cString._storage.nullTerminatedStorage._rawValue)
  {
    cString._storage.nullTerminatedStorage._rawValue = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v1 = &outlined read-only object #0 of FilePath.init(cString:);
  }

  return cString;
}

System::FilePath __swiftcall FilePath.init(cString:)(Swift::String cString)
{
  object = cString._object;
  countAndFlagsBits = cString._countAndFlagsBits;
  v4 = v1;
  specialized Collection<>.firstIndex(of:)(0, 0xE100000000000000, cString._countAndFlagsBits, cString._object);
  if (v5)
  {
    v6 = specialized String.withCString<A>(_:)(countAndFlagsBits, object);

    v19 = v6;
  }

  else
  {
    v7 = String.subscript.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = MEMORY[0x1E1278E70](v7, v9, v11, v13);
    v16 = v15;

    v17 = specialized String.withCString<A>(_:)(v14, v16);

    v19 = v17;
  }

  SystemString._normalizeSeparators()();
  *v4 = v19;
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 == 1)
  {
    return 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 32;
    v8 = (v4 - 1) & ~((v4 - 1) >> 63);
    while (v4)
    {
      v9 = *(v7 + v6);
      result = v5(&v9);
      if (v3 || (result & 1) != 0)
      {
        return v6;
      }

      if (!v8)
      {
        goto LABEL_13;
      }

      ++v6;
      --v8;
      if (--v4 == 1)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t SystemString.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay6System0A4CharVGMd, &_sSay6System0A4CharVGMR);
  return Array.replaceSubrange<A>(_:with:)();
}

uint64_t Slice<>.withPlatformString<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{

  v13[2] = a6;
  v14 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(a3, a4, a5);
  v15 = a1;
  v16 = a2;
  SystemString.withNullTerminatedSystemChars<A>(_:)(partial apply for closure #1 in SystemString.withPlatformString<A>(_:), v13, v14, a6);
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = (unk_1F56AAAD0 - 1);

        specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(v12, v12, v5, a2, a3);

        ++v10;
        if (v11 == a4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a5 = &outlined read-only object #0 of specialized RangeReplaceableCollection.init(repeating:count:);
    a5[1] = 0;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  if (v4 == *(*v1 + 16) - 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = specialized Collection.first.getter(v4, result, &v5);
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a1 = v5;
  *(a1 + 8) = v6;

  return specialized RangeReplaceableCollection.removeFirst(_:)(1);
}

uint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = *(*v0 + 32);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    return v2;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemChar()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemChar()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SystemChar and conformance SystemChar()
{
  result = lazy protocol witness table cache variable for type SystemChar and conformance SystemChar;
  if (!lazy protocol witness table cache variable for type SystemChar and conformance SystemChar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemChar and conformance SystemChar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemChar and conformance SystemChar;
  if (!lazy protocol witness table cache variable for type SystemChar and conformance SystemChar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemChar and conformance SystemChar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemChar and conformance SystemChar;
  if (!lazy protocol witness table cache variable for type SystemChar and conformance SystemChar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemChar and conformance SystemChar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemChar and conformance SystemChar;
  if (!lazy protocol witness table cache variable for type SystemChar and conformance SystemChar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemChar and conformance SystemChar);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemString.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001DAD5BDD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemString.CodingKeys and conformance SystemString.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemString.CodingKeys and conformance SystemString.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 > result)
  {
    v5 = v4 >= a3;
    v6 = v4 == a3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6 || !v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_13:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
    goto LABEL_16;
  }

  if (result >= v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance SystemString(char *a1, unint64_t *a2)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v3;
    if (*(*v3 + 16) > v5)
    {
      v4 = *a1;
      v6 = *v3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = result;
LABEL_4:
  if (v5 >= *(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + v5 + 32) = v4;
    *v3 = v2;
  }

  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance SystemString(uint64_t (*result)(uint64_t a1, char a2), unint64_t *a2))(uint64_t a1, char a2)
{
  v3 = *a2;
  *result = v2;
  *(result + 1) = v3;
  v4 = *v2;
  *(result + 2) = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > v3)
  {
    *(result + 24) = *(v4 + v3 + 32);
    return protocol witness for MutableCollection.subscript.modify in conformance SystemString;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.modify in conformance SystemString(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v4 + 16);
  v7 = v6 > v5;
  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v6 > v5)
  {
    v8 = *(a1 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
LABEL_5:
    v10 = *(v4 + 16);
    v7 = v5 > v10;
    if (v5 < v10)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_7:
    ;
  }

  while (!v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 < *(v4 + 16))
  {
LABEL_12:
    v11 = *a1;
    *(v4 + v5 + 32) = v3;
    *v11 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance SystemString(uint64_t a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, *(a1 + 8), *(a1 + 16));
}

void (*protocol witness for MutableCollection.subscript.modify in conformance SystemString(void *a1, uint64_t *a2))(void *a1)
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
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance SystemString;
}

void protocol witness for MutableCollection.subscript.modify in conformance SystemString(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  result = *v3;
  v10 = *(*v3 + 2);
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 > a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = result;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[2];

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v6, v8, v5, v3, v4, v7);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[5], v8, v5, v3, v4, v7);
  }

  v10 = v2[2];

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance SystemString@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>.partition(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized MutableCollection<>.partition(by:)(uint64_t (*a1)(char *))
{
  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v6 = 0;
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    do
    {
      v15 = v4[v6 + 32];
      v8 = a1(&v15);
      if (v2)
      {
        goto LABEL_15;
      }

      if (v8)
      {
        v9 = &v4[v6];
        v10 = v7;
        while (1)
        {
          v7 = v10 - 1;
          if (v6 >= v10 - 1)
          {
            goto LABEL_13;
          }

          v14 = v4[v10 + 31];
          v11 = a1(&v14);
          v10 = v7;
          if ((v11 & 1) == 0)
          {
            v12 = v9[32];
            v9[32] = v4[v7 + 32];
            v4[v7 + 32] = v12;
            break;
          }
        }
      }
    }

    while (++v6 < v7);
  }

LABEL_13:
  *v1 = v4;
  if (v6 >= *(v4 + 2))
  {
    __break(1u);
LABEL_15:
    *v1 = v4;
  }

  return v6;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance SystemString@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(*v2 + 16) - 1)
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance SystemString(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(*v1 + 16) - 1)
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SystemString(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > v3)
  {
    *result = *(*v2 + v3 + 32);
    return Mach.Port._name.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SystemString@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[1];
  if (v5 > v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance SystemString(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    *a1 = 0;
    a1[1] = v2 - 1;
  }

  else
  {
    __break(1u);
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance SystemString@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 < *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance SystemString@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance SystemString(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result < v4 && v3 < v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance SystemString@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(*v2 + 16) - 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance SystemString(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(*v1 + 16) - 1)
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance SystemString()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance SystemString(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  SystemString.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

char *protocol witness for RangeReplaceableCollection.reserveCapacity(_:) in conformance SystemString(char *result)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v2 > *(v3 + 3) >> 1)
    {
      if (*(v3 + 2) <= v2)
      {
        v4 = v2;
      }

      else
      {
        v4 = *(v3 + 2);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v4, 0, v3);
      v3 = result;
    }

    *v1 = v3;
  }

  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance SystemString@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized RangeReplaceableCollection.init(repeating:count:)(*a1, a2);
  *a3 = result;
  return result;
}

char *protocol witness for RangeReplaceableCollection.remove(at:) in conformance SystemString@<X0>(char **a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RangeReplaceableCollection.remove(at:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance SystemString@<X0>(_BYTE *a1@<X8>)
{
  result = specialized RangeReplaceableCollection.removeFirst()();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RangeReplaceableCollection.removeFirst(_:) in conformance SystemString(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, result, *(*v1 + 16) - 1, *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return specialized Array.replaceSubrange<A>(_:with:)(0, result);
}

char *protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance SystemString(char a1)
{
  result = *v1;
  if (a1)
  {
    v4 = *(result + 2);
    if (v4)
    {

      return specialized Array.replaceSubrange<A>(_:with:)(0, v4 - 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *v1 = &outlined read-only object #0 of protocol witness for RangeReplaceableCollection.removeAll(keepingCapacity:) in conformance SystemString;
  }

  return result;
}

char *protocol witness for RangeReplaceableCollection.removeAll(where:) in conformance SystemString(uint64_t a1, uint64_t a2)
{
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 <= result)
    {
      __break(1u);
    }

    else
    {
      return specialized Array.replaceSubrange<A>(_:with:)(result, v5 - 1);
    }
  }

  return result;
}

uint64_t SystemString.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMd, &_ss22KeyedEncodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemString.CodingKeys and conformance SystemString.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay6System0A4CharVGMd, &_sSay6System0A4CharVGMR);
  lazy protocol witness table accessor for type [SystemChar] and conformance <A> [A](&lazy protocol witness table cache variable for type [SystemChar] and conformance <A> [A], lazy protocol witness table accessor for type SystemChar and conformance SystemChar);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int SystemString.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  MEMORY[0x1E1279200](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SystemString()
{
  v1 = *v0;
  MEMORY[0x1E1279200](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

void *protocol witness for Decodable.init(from:) in conformance SystemString@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized SystemString.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance SystemString@<X0>(uint64_t *a1@<X0>, size_t *a2@<X8>)
{
  v3 = specialized String.withCString<A>(_:)(*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemString()
{
  v1 = *(*v0 + 16) - 1;
  static String._fromUTF8Repairing(_:)();
  v2 = String.debugDescription.getter();

  return v2;
}

unint64_t lazy protocol witness table accessor for type SystemString and conformance SystemString()
{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString and conformance SystemString;
  if (!lazy protocol witness table cache variable for type SystemString and conformance SystemString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString and conformance SystemString);
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

uint64_t lazy protocol witness table accessor for type Slice<SystemString> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(AssociatedObject + 2);

  v19 = v23;
  result = a1(&AssociatedObject[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v3 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v1, MEMORY[0x1E69E7CC0], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized BidirectionalCollection._distance(from:to:)(a2, *(a1 + 16) - 1, a1);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System8FilePathV9ComponentV_Tt1g5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = v1 - 1;
    if (v1 != 1)
    {
      v3 = result;
      v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(v1 - 1, 0);
      v5 = specialized Sequence._copySequenceContents(initializing:)(&v6, v4 + 32, v2, v3);

      if (v5 == v2)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (!v13)
  {
    goto LABEL_28;
  }

  v10 = a2;
  if (a2 < 0)
  {
    goto LABEL_29;
  }

  v11 = a3;
  if (v13 <= a3)
  {
    goto LABEL_30;
  }

  v7 = a6;
  v8 = a5;
  v9 = a4;
  v6 = a1;
  v14 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *v6 = v12;
    v16 = v9 == v8;
    v17 = v10 == v11;
    if (v10 == v11 || v9 == v8)
    {
      break;
    }

    v18 = v8 - 1;
    v19 = v11 - 1;
    v20 = v9;
    while (v20 < v8)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v21 = *(v7 + 16);
      if (v21 <= v20)
      {
        goto LABEL_25;
      }

      v22 = *(v12 + 16);
      if (v22 <= v10)
      {
        goto LABEL_26;
      }

      v23 = v22 - 1;
      *(v12 + 32 + v10) = *(v7 + 32 + v20);
      if (v20 >= v21 - 1 || v10 >= v23)
      {
        goto LABEL_27;
      }

      v16 = v18 == v20;
      v17 = v19 == v10;
      if (v19 != v10)
      {
        ++v10;
        if (v18 != v20++)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
  }

LABEL_20:
  *v6 = v12;
  if (!v17)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (!v16)
  {
LABEL_33:
    __break(1u);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System8FilePathV9ComponentV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathV9ComponentVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4 != 1)
    {
      v5 = a3 - 1;
      v6 = v4 - 2;
      if (v4 < v4 - 2)
      {
        v6 = *(a4 + 16);
      }

      if (v5 >= v6)
      {
        v5 = v6;
      }

      if (v5 > 0xF && &a2[-a4 - 32] >= 0x10)
      {
        v9 = v5 + 1;
        v10 = a2;
        v11 = v9 & 0xF;
        if ((v9 & 0xF) == 0)
        {
          v11 = 16;
        }

        v7 = v9 - v11;
        v8 = v7 + 1;
        a2 += v7;
        v12 = v7;
        v13 = (a4 + 32);
        do
        {
          v14 = *v13++;
          *v10++ = v14;
          v12 -= 16;
        }

        while (v12);
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }

      while (v7 != v4)
      {
        v15 = v8;
        *a2 = *(a4 + 32 + v7);
        if (a3 == v8)
        {
          goto LABEL_21;
        }

        ++a2;
        ++v8;
        v7 = v15;
        if (v4 == v15 + 1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    a3 = v4 - 1;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, Swift::Int startingAt)
{
  v6 = result;
  if (!a2)
  {
LABEL_12:
    v7 = 0;
LABEL_13:
    v9 = startingAt;
LABEL_17:
    *v6 = a4;
    v6[1] = startingAt;
    v6[2] = v9;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = *(a4 + 16) - 1;
    v10 = 1;
    v15 = startingAt;
    v11 = startingAt;
    while (1)
    {
      if (v11 == v9)
      {
        v7 = v10 - 1;
LABEL_16:
        startingAt = v15;
        goto LABEL_17;
      }

      componentEnd = FilePath._parseComponent(startingAt:)(v11).componentEnd;

      if (componentEnd < v11)
      {
        break;
      }

      if (v11 == componentEnd)
      {
        goto LABEL_19;
      }

      nextStart = FilePath._parseComponent(startingAt:)(v11).nextStart;
      swift_bridgeObjectRetain_n();

      *v8 = a4;
      v8[1] = v11;
      v8[2] = componentEnd;
      if (v7 == v10)
      {
        v9 = nextStart;
        goto LABEL_16;
      }

      v8 += 3;
      v11 = nextStart;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = *v3;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  v9 = *(v6 + 16);
  if (v8)
  {
    return v9 - 1;
  }

  v2 = result;
  if ((result & 0x8000000000000000) == 0 && result < (v9 - 1))
  {
    v10 = result + 33;
    v16 = v5;
    while (v10 - 33 != v9 - 2)
    {
      v12 = v10 - 32;
      if (v10 - 32 >= v9)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v17 = *(v6 + v10);
      result = v5(&v17);
      if (result)
      {
        v9 = *(v6 + 16);
        v11 = v9 - 1;
      }

      else
      {
        if (v12 != v2)
        {
          if (v2 < 0)
          {
            goto LABEL_26;
          }

          v13 = *(v6 + 16);
          if (v13 <= v2)
          {
            goto LABEL_27;
          }

          if (v13 <= v12)
          {
            goto LABEL_28;
          }

          v14 = *(v6 + 32 + v2);
          v15 = *(v6 + v10);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v6 = result;
          }

          *(v6 + v2 + 32) = v15;
          *v3 = v6;
          if (*(v6 + 16) <= v12)
          {
            goto LABEL_29;
          }

          *(v6 + v10) = v14;
          *v3 = v6;
          v5 = v16;
        }

        v9 = *(v6 + 16);
        v11 = v9 - 1;
        if (v2 >= (v9 - 1))
        {
          goto LABEL_25;
        }

        ++v2;
      }

      ++v10;
      if (v12 >= v11)
      {
        goto LABEL_24;
      }
    }

    return v2;
  }

LABEL_30:
  __break(1u);
  return result;
}

size_t specialized SystemString.init(platformString:)(const char *a1)
{
  result = strlen(a1);
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == -1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(result + 1, 0);
    memcpy(v4 + 4, a1, v3);
    return v4;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
  result = swift_allocObject();
  v5 = result;
  *(result + 16) = xmmword_1DAD5C620;
  *(result + 32) = 0;
  if (!a2)
  {
    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = 1;
    do
    {
      if (v6 >= *(v5 + 3) >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v6 + 1, 1, v5);
        v7 = *(v5 + 2);
      }

      else
      {
        v7 = v6;
      }

      v8 = &v5[v6 - 1];
      memmove(v8 + 33, v8 + 32, v7 - (v6 - 1));
      v6 = *(v5 + 2) + 1;
      *(v5 + 2) = v6;
      v8[32] = a1;
      --a2;
    }

    while (a2);
    return v5;
  }

  __break(1u);
  return result;
}

void *specialized SystemString.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMd, &_ss22KeyedDecodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemString.CodingKeys and conformance SystemString.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay6System0A4CharVGMd, &_sSay6System0A4CharVGMR);
    lazy protocol witness table accessor for type [SystemChar] and conformance <A> [A](&lazy protocol witness table cache variable for type [SystemChar] and conformance <A> [A], lazy protocol witness table accessor for type SystemChar and conformance SystemChar);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v14;
    v11 = v14[2];
    if (!v11 || *(v14 + v11 + 31))
    {
      goto LABEL_13;
    }

    v12 = 32;
    while (*(v14 + v12))
    {
      ++v12;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    if (v11 == 1)
    {
      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
LABEL_13:
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type DefaultIndices<FilePath.ComponentView> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<SystemString.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMd, &_ss22KeyedDecodingContainerVy6System0D6StringV10CodingKeys33_4B88B1E6A2D930290BCBF95D50E4424CLLOGMR);
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type SystemString.CodingKeys and conformance SystemString.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemString.CodingKeys and conformance SystemString.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SystemChar] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay6System0A4CharVGMd, &_sSay6System0A4CharVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *partial apply for closure #1 in SystemString.withContiguousMutableStorageIfAvailable<A>(_:)(void *result)
{
  v4 = result[1];
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v9[1] = v6;
    v9[2] = v1;
    v9[4] = v2;
    v9[5] = v3;
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9[0] = *result;
    return v7(v9);
  }

  return result;
}

uint64_t partial apply for closure #1 in SystemString.withContiguousStorageIfAvailable<A>(_:)(uint64_t result, uint64_t a2)
{
  v3 = __OFSUB__(a2, 1);
  v4 = a2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 32);
    return (*(v2 + 24))(result, v4);
  }

  return result;
}

uint64_t static FilePath.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FilePath.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F74735FLL && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FilePath.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.CodingKeys and conformance FilePath.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.CodingKeys and conformance FilePath.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FilePath.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1E1279200](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int FilePath.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t FilePath.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMd, &_ss22KeyedDecodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.CodingKeys and conformance FilePath.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  lazy protocol witness table accessor for type SystemString and conformance SystemString();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v14[1];

  v12 = FilePath._invariantsSatisfied()();

  if (v12)
  {
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for DecodingError();
  swift_allocError();
  lazy protocol witness table accessor for type KeyedDecodingContainer<FilePath.CodingKeys> and conformance KeyedDecodingContainer<A>();
  static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
  swift_willThrow();
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FilePath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMd, &_ss22KeyedEncodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.CodingKeys and conformance FilePath.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  lazy protocol witness table accessor for type SystemString and conformance SystemString();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type FilePath.CodingKeys and conformance FilePath.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.CodingKeys and conformance FilePath.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<FilePath.CodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<FilePath.CodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<FilePath.CodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMd, &_ss22KeyedDecodingContainerVy6System8FilePathV10CodingKeys33_4EB63D2F9D23E0F36D260D15D3B661ABLLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<FilePath.CodingKeys> and conformance KeyedDecodingContainer<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilePath(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for FilePath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ssize_t FileDescriptor._write(_:retryOnInterrupt:)(void *__buf, uint64_t a2, char a3, int __fd)
{
  if (__buf)
  {
    v7 = a2 - __buf;
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    result = write(__fd, __buf, v7);
    if (result != -1)
    {
      break;
    }

    LODWORD(result) = MEMORY[0x1E1278E40]();
    if ((a3 & 1) == 0 || result != 4)
    {
      return result;
    }
  }

  return result;
}

void static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)(uint64_t a1, uint64_t a2, __int16 a3, int a4, char a5)
{
  while (1)
  {
    if ((a4 & 0x10000) == 0)
    {
      v8 = open(_:_:_:)();
      goto LABEL_5;
    }

    if ((a3 & 0x200) != 0)
    {
      break;
    }

    v8 = open(_:_:)();
LABEL_5:
    if (v8 == -1)
    {
      v9 = MEMORY[0x1E1278E40]();
      if ((a5 & 1) != 0 && v9 == 4)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
}

unint64_t FileDescriptor._close()(int a1)
{
  v1 = close(a1);
  v2 = v1;
  if (v1 == -1)
  {
    v1 = MEMORY[0x1E1278E40]();
  }

  return v1 | ((v2 == -1) << 32);
}

off_t FileDescriptor._seek(offset:from:)(off_t a1, int a2, int a3)
{
  result = lseek(a3, a1, a2);
  if (result == -1)
  {
    return MEMORY[0x1E1278E40]();
  }

  return result;
}

ssize_t FileDescriptor._read(into:retryOnInterrupt:)(void *a1, uint64_t a2, char a3, int a4)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  while (1)
  {
    result = read(a4, a1, v7);
    if (result != -1)
    {
      break;
    }

    LODWORD(result) = MEMORY[0x1E1278E40]();
    if ((a3 & 1) == 0 || result != 4)
    {
      return result;
    }
  }

  return result;
}

uint64_t FileDescriptor._write(toAbsoluteOffset:_:retryOnInterrupt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v11 = a3 - a2;
  }

  else
  {
    v11 = 0;
  }

  while (1)
  {
    result = a6(a5, a2, v11, a1);
    if (result != -1)
    {
      break;
    }

    LODWORD(result) = MEMORY[0x1E1278E40]();
    if ((a4 & 1) == 0 || result != 4)
    {
      return result;
    }
  }

  return result;
}

unint64_t FileDescriptor._duplicate(as:retryOnInterrupt:)(uint64_t a1, char a2, int a3)
{
  do
  {
    if ((a1 & 0x100000000) != 0)
    {
      v6 = dup(a3);
    }

    else
    {
      v6 = dup2(a3, a1);
    }

    v7 = v6;
    if (v6 != -1)
    {
      break;
    }

    v6 = MEMORY[0x1E1278E40]();
    if ((a2 & 1) == 0)
    {
      break;
    }
  }

  while (v6 == 4);
  return v6 | ((v7 == -1) << 32);
}

uint64_t static FileDescriptor._pipe()()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = -1;
  if (pipe(v2) == -1)
  {
    result = MEMORY[0x1E1278E40]();
  }

  else
  {
    result = v2[0];
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t FileDescriptor._resize(to:retryOnInterrupt:)(off_t a1, char a2, int a3)
{
  do
  {
    v6 = ftruncate(a3, a1);
    v7 = v6;
    if (v6 != -1)
    {
      break;
    }

    v6 = MEMORY[0x1E1278E40]();
    if ((a2 & 1) == 0)
    {
      break;
    }
  }

  while (v6 == 4);
  return v6 | ((v7 == -1) << 32);
}

uint64_t Errno.description.getter(int a1)
{
  if (strerror(a1))
  {
    return String.init(cString:)();
  }

  else
  {
    return 0x206E776F6E6B6E75;
  }
}

BOOL FilePath._relativeStart.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    return 0;
  }

  if (v1)
  {
    return *(*v0 + 32) == 47;
  }

  __break(1u);
  return result;
}

uint64_t FilePath._parseComponent(priorTo:)(uint64_t result)
{
  v2 = (result - 1);
  if (result < 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = result;
  v4 = *v1;
  v5 = *(v4 + 2);
  if (v5 == 1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    if (v4[32] == 47)
    {
      v6 = 1;
      if (result == 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_7:
    v6 = 0;
LABEL_8:
    if (v5 > result)
    {
      v12 = result;
      if (v5 - 1 == result)
      {
      }

      else
      {

        result = specialized Slice<>.remove(at:)(v2);
        v3 = v12;
      }

      v7 = v3;
      while (v6 != v7 && v7)
      {
        v8 = v7 - 1;
        if (__OFSUB__(v7, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          __break(1u);
          goto LABEL_39;
        }

        if (v8 >= v7)
        {
          goto LABEL_34;
        }

        if (v8 < 0)
        {
          goto LABEL_34;
        }

        v9 = *(v4 + 2);
        if (v8 >= (v9 - 1))
        {
          goto LABEL_34;
        }

        if (v8 >= v9)
        {
          goto LABEL_35;
        }

        if (v4[v8 + 32] == 47)
        {
          break;
        }

        if (!v9 || v7 >= v9)
        {
          goto LABEL_36;
        }

        if (v9 == 1)
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v9 - 1 > *(v4 + 3) >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v4);
        }

        result = memmove(&v4[v8 + 32], &v4[v7 + 32], *(v4 + 2) - v7);
        v11 = *(v4 + 2) - 1;
        *(v4 + 2) = v11;
        if (!v11)
        {
          goto LABEL_38;
        }

        if (--v7 >= v11)
        {
          __break(1u);
          break;
        }
      }

      if (v3 < v7)
      {
        goto LABEL_41;
      }

      return v7;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
  __break(1u);
  return result;
}

Swift::Bool __swiftcall FilePath._invariantsSatisfied()()
{
  v1 = *v0;
  v6 = *v0;

  SystemString._normalizeSeparators()();
  v2 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ6System0B4CharV_Tt1g5(v1, v6);

  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((*(v1 + 32) == 47) == v4 - 1)
  {
LABEL_9:
    if (v4)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    goto LABEL_12;
  }

  v3 = specialized BidirectionalCollection.last.getter(v1);
  if ((v3 & 0x100) != 0)
  {
LABEL_13:
    __break(1u);
    return v3;
  }

  if (v3 != 47)
  {
    v4 = *(v1 + 16);
    goto LABEL_9;
  }

LABEL_7:
  LOBYTE(v3) = 0;
  return v3;
}

char *specialized Slice<>.remove(at:)(char *a1)
{
  v2 = v1;
  v4 = v1[2];
  v3 = v1 + 2;
  v5 = *v2;
  v6 = *(v4 + 16);
  if (*v2 >= v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v2[1];
  if (v7 >= v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = specialized RangeReplaceableCollection.remove(at:)(a1);
  v9 = *(*v3 + 16);
  if (v9 <= v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v7 + ~v5;
  *v2 = v5;
  v11 = __OFADD__(v5, v10);
  v12 = v5 + v10;
  if (v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 < v9)
  {
    v2[1] = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return open(_:_:_:)();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x1EEE69308]();
}

{
  return MEMORY[0x1EEE69318]();
}

{
  return MEMORY[0x1EEE69330]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x1EEE69388]();
}

{
  return MEMORY[0x1EEE69398]();
}

{
  return MEMORY[0x1EEE693B0]();
}