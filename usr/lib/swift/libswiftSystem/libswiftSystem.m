void FilePath.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  v4 = specialized String.withCString<A>(_:)(a1, a2);

  SystemString._normalizeSeparators()();
  *a3 = v4;
}

size_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      result = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      v6 = result + 1;
      if (!__OFADD__(result, 1))
      {
        if (result != -1)
        {
          v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(result + 1, 0);
          v7 = v2 + 4;
          v8 = (v4 + 32);
LABEL_10:
          memcpy(v7, v8, v6);
          return v2;
        }

        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_16;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v11;
    }

    return v2;
  }

  *__s = a1;
  v10 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = strlen(__s);
  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
    if (result != -1)
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(result + 1, 0);
      v7 = v2 + 4;
      v8 = __s;
      goto LABEL_10;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

size_t closure #1 in SystemString.init(_:)@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  result = strlen(a1);
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == -1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(result + 1, 0);
      result = memcpy(v6 + 4, a1, v5);
    }

    *a2 = v6;
  }

  return result;
}

Swift::Void __swiftcall SystemString._normalizeSeparators()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    return;
  }

  if (!v2)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = 0;
  v4 = 0;
  while (2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v2 <= v3)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v5 = *(v1 + v3 + 32);
    specialized MutableCollection.swapAt(_:_:)(v4, v3);
    v1 = *v0;
    v2 = *(*v0 + 16);
    v6 = v2 - 1;
    if (v3 >= (v2 - 1) || v4 >= v6)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v8 = v3;
      v9 = v3 + 1;
      if (v5 != 47 || v9 >= v6)
      {
        break;
      }

      v10 = *(v1 + 33 + v3++);
      if (v10 != 47)
      {
        goto LABEL_5;
      }
    }

    if (v9 < v6)
    {
LABEL_5:
      v3 = v8 + 1;
      ++v4;
      continue;
    }

    break;
  }

  if (v4 + 1 >= v2 || v3 + 1 >= v2)
  {
    goto LABEL_43;
  }

  if (v4 != v3)
  {
    if (((v3 - v4) & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(v2 - 1, v4 - v3, 0, *v0);
    if (v12)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v2 <= v11)
    {
      goto LABEL_40;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v11, v2 - 1);
    v1 = *v0;
    v2 = *(*v0 + 16);
  }

  if (v2 == 1)
  {
    return;
  }

  if (!v2)
  {
    goto LABEL_39;
  }

  if ((*(v1 + 32) == 47) != v2 - 1)
  {
    v13 = specialized BidirectionalCollection.last.getter(v1);
    if ((v13 & 0x100) != 0)
    {
LABEL_45:
      __break(1u);
      return;
    }

    if (v13 == 47)
    {
      v14 = *(v1 + 16);
      if (v14 == 1)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!v14)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      specialized RangeReplaceableCollection.remove(at:)((v14 - 2));
    }
  }
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + result);
          v6 = *(v4 + 32 + a2);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
LABEL_6:
        *(v4 + 32 + v7) = v6;
        *v3 = v4;
        if (*(v4 + 16) <= v2)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 32 + v2) = v5;
          *v3 = v4;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1)
  {
    v2 = 0;
    return v2 | ((v1 == 1) << 8);
  }

  if (v1)
  {
    v2 = *(result + v1 + 30);
    return v2 | ((v1 == 1) << 8);
  }

  __break(1u);
  return result;
}

double FilePath.Component.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = specialized String.withCString<A>(_:)(a1, a2);

  FilePath.Component.init(_:)(v4, &v7);
  v5 = v8;
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v5;
  return result;
}

Swift::Int FilePath.Component.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15[0] = a1;

  SystemString._normalizeSeparators()();
  v4 = SystemString._parseRoot()();
  result = v4.rootEnd;
  if (!v4.relativeBegin)
  {
    v5 = *(v15[0] + 16);
    v6 = v5 - 1;
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      if (!v5)
      {
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v15[0] + 32) == 47;
    }

    v8 = specialized BidirectionalCollection._distance(from:to:)(v7, v6, v15[0]);

    if (v8 != 1)
    {
      goto LABEL_10;
    }

    v9 = *(v15[0] + 16);
    if (v9 == 1)
    {
      v10 = 0;
      goto LABEL_14;
    }

    if (v9)
    {
      v10 = *(v15[0] + 32) == 47;
LABEL_14:

      specialized Collection.first.getter(v10, v11, v15);

      v12 = v15[0];
      if (v15[0])
      {
        v14 = v15[1];
        v13 = v15[2];

        *a2 = v12;
        a2[1] = v14;
        a2[2] = v13;
        return result;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  SystemString._parseRoot()();
LABEL_10:

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

Swift::tuple_rootEnd_Int_relativeBegin_Int __swiftcall SystemString._parseRoot()()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v0 = 0;
    v2 = 0;
  }

  else if (v1)
  {
    v0 = *(v0 + 32) == 47;
    v2 = v0;
  }

  else
  {
    __break(1u);
  }

  result.relativeBegin = v2;
  result.rootEnd = v0;
  return result;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result < a2)
  {
    v5 = *(a3 + 16);
    v6 = 1;
    do
    {
      while (!v4 && v5 != 1)
      {
        if (!v5)
        {
          goto LABEL_32;
        }

        if (*(a3 + 32) != 47)
        {
          break;
        }

        if (a2 == 1)
        {
          return v6;
        }

        v4 = 1;
        v7 = __OFADD__(v6++, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      if (v5 <= v4 || !v5)
      {
        goto LABEL_29;
      }

      if (v4 < 0)
      {
        goto LABEL_30;
      }

      if (v4 != v5 - 1)
      {
        v8 = (a3 + 32 + v4++);
        while (1)
        {
          v9 = *v8++;
          if (v9 == 47)
          {
            break;
          }

          if (v5 == ++v4)
          {
            v4 = v5 - 1;
            break;
          }
        }
      }

      if (v4 == a2)
      {
        return v6;
      }

      v7 = __OFADD__(v6++, 1);
    }

    while (!v7);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (a2 < result)
  {
    v6 = 0;
    while (1)
    {
      v7 = __OFSUB__(v6--, 1);
      if (v7)
      {
        break;
      }

      v4 = FilePath._parseComponent(priorTo:)(v4);

      if (v4 == a2)
      {
        return v6;
      }
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t specialized Collection.first.getter@<X0>(Swift::Int startingAt@<X1>, uint64_t result@<X0>, uint64_t *a3@<X8>)
{
  if (*(result + 16) - 1 == startingAt)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v5 = result;
  componentEnd = FilePath._parseComponent(startingAt:)(startingAt).componentEnd;

  if (componentEnd < startingAt)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (componentEnd == startingAt)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a3 = v5;
  a3[1] = startingAt;
  a3[2] = componentEnd;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v31 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v32;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v31, a2, a3, a4, a5, a6, v29, v19);
    v17 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v30, v17, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      if (a3 < 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = MEMORY[0x1E1279120](v27);
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v32;
    result = v31(v20, v23, v17);
    if (v24)
    {
      return (*(v13 + 32))(v30, v17, a6);
    }
  }

  return result;
}

uint64_t SystemString.withNullTerminatedSystemChars<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<SystemChar>) -> (@out A, @error @owned Error), v8, a3, &type metadata for SystemChar, a4, v6, MEMORY[0x1E69E7288], &v9);
}

uint64_t SystemString.withPlatformString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v5[3] = a3;
  v5[4] = a1;
  v5[5] = a2;
  return SystemString.withNullTerminatedSystemChars<A>(_:)(partial apply for closure #1 in SystemString.withPlatformString<A>(_:), v5, a3, a4);
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v13, v16, v17, v18, v19, v20, v21, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a6);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemString()
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

Swift::Int FilePath.push(_:)(uint64_t *a1)
{
  v2 = *a1;
  v4 = SystemString._parseRoot()();
  result = v4.rootEnd;
  if (v4.relativeBegin)
  {
    SystemString._parseRoot()();
    v5 = *v1;

    *v1 = v2;
  }

  else
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      FilePath._append(unchecked:)(0, v6 - 1, v2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Int FilePath.pushing(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return FilePath.push(_:)(&v5);
}

char *FilePath._append(unchecked:)(char *result, int64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = *(*v3 + 16);
    result = (v6 - 1);
    if (v6 != 1)
    {
      if (v6 < 2)
      {
        __break(1u);
        return result;
      }

      if (*(*v3 + v6 + 30) != 47)
      {
        v7 = a3;
        specialized Array.replaceSubrange<A>(_:with:)(result, v6 - 1, 47);
        a3 = v7;
      }
    }

    v8 = a3;

    return specialized RangeReplaceableCollection.append<A>(contentsOf:)(v5, a2, v8);
  }

  return result;
}

void FilePath.append(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if (*(*v3 + 16) == 1)
    {
      v7 = *v3;

      v8 = specialized String.withCString<A>(_:)(a1, a2);

      SystemString._normalizeSeparators()();
      *v3 = v8;
      return;
    }

    v9 = specialized String.withCString<A>(_:)(a1, a2);

    SystemString._normalizeSeparators()();
    v10 = *(v9 + 16);
    if (v10 == 1)
    {
      goto LABEL_11;
    }

    if (!v10)
    {
      __break(1u);
      __break(1u);
      return;
    }

    if (*(v9 + 32) != 47)
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    FilePath._append(unchecked:)(v11, v10 - 1, v9);
  }
}

void FilePath.components.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    a1[1] = 0;
  }

  else if (v3)
  {
    a1[1] = *(v2 + 32) == 47;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sSPsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_SPyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a5);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v18(v15, v17);
  if (v11)
  {
    return (*(v13 + 32))(a11, v17, a8);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<SystemChar>) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t closure #1 in SystemString.withPlatformString<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v8 = result;
    MEMORY[0x1EEE9AC00](result);
    v14[2] = v10;
    v14[3] = v9;
    v14[4] = v11;
    v14[5] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    return _sSPsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_SPyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lF(MEMORY[0x1E69E7230], a2, partial apply for closure #1 in closure #1 in SystemString.withPlatformString<A>(_:), v14, v8, &type metadata for SystemChar, MEMORY[0x1E69E7230], v13, a6, MEMORY[0x1E69E7288], &v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SystemString.withPlatformString<A>(_:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilePath.Component(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

Swift::tuple_componentEnd_Int_nextStart_Int __swiftcall FilePath._parseComponent(startingAt:)(Swift::Int startingAt)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (!startingAt && v4 != 1)
  {
    if (!v4)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (*(v3 + 32) == 47)
    {
      startingAt = 1;
      v1 = 1;
      goto LABEL_21;
    }
  }

  if (v4 <= startingAt || v4 == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (startingAt < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v1 = v4 - 1;
  if (v4 - 1 == startingAt)
  {
    v1 = startingAt;
  }

  else
  {
    v6 = v3 + 32;
    while (1)
    {
      v7 = startingAt + 1;
      if (*(v6 + startingAt) == 47)
      {
        break;
      }

      ++startingAt;
      if (v1 == v7)
      {
        startingAt = v1;
        goto LABEL_21;
      }
    }

    v1 = startingAt + 1;
  }

LABEL_21:
  result.nextStart = v1;
  result.componentEnd = startingAt;
  return result;
}

int64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)(int64_t result, int64_t a2, uint64_t a3)
{
  if (result == a2)
  {
  }

  else
  {
    if (result < a2)
    {
      v6 = result;
      v7 = *(a3 + 16);
      v8 = *v3;
      if (v7 <= result)
      {
        v9 = result;
      }

      else
      {
        v9 = *(a3 + 16);
      }

      if (result <= (v7 - 1))
      {
        v10 = v7 - 1;
      }

      else
      {
        v10 = result;
      }

      v11 = result;
      while (v11 >= v6 && v11 < a2)
      {
        if (v11 < 0)
        {
          goto LABEL_27;
        }

        if (v9 == v11)
        {
          goto LABEL_28;
        }

        if (v11 >= *(a3 + 16))
        {
          goto LABEL_29;
        }

        if (v10 == v11)
        {
          goto LABEL_30;
        }

        v14 = *(v8 + 2);
        if (!v14)
        {
          goto LABEL_31;
        }

        v15 = *(a3 + 32 + v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v14 >= *(v8 + 3) >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v8);
        }

        v12 = v14 - 1;
        v13 = &v8[v14 - 1];
        result = memmove(v13 + 33, v13 + 32, *(v8 + 2) - v12);
        ++*(v8 + 2);
        v13[32] = v15;
        if (a2 == ++v11)
        {

          *v3 = v8;
          return result;
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
      __break(1u);
    }

    __break(1u);
  }

  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
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

char *specialized Array.replaceSubrange<A>(_:with:)(char *result, uint64_t a2, char a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FilePath.Root(uint64_t result, int a2, int a3)
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

void FilePath.init(root:components:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*a1)
  {
    v6 = &outlined read-only object #0 of FilePath.init(root:components:);
    goto LABEL_5;
  }

  v5 = a1[1];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v5, *a1);
LABEL_5:
    v7 = v6;
    specialized SystemString.appendComponents<A>(components:)(a2);

    SystemString._normalizeSeparators()();
    *a3 = v7;
    return;
  }

  __break(1u);
}

uint64_t specialized SystemString.appendComponents<A>(components:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v24 = *(a1 + 16);
    while (1)
    {
      v8 = (v4 + 24 * v3);
      v10 = *v8;
      v9 = v8[1];
      v11 = v8[2];
      v12 = v11 - v9;
      if (v11 != v9)
      {
        break;
      }

LABEL_15:

      v5 = *v1;
      v21 = *(*v1 + 16);
      if (!v21)
      {
        goto LABEL_23;
      }

      v22 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 >= *(v5 + 3) >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v5);
      }

      ++v3;
      v6 = v21 - 1;
      v7 = &v5[v21 - 1];
      memmove(v7 + 33, v7 + 32, *(v5 + 2) - v6);
      ++*(v5 + 2);
      v7[32] = 47;
      *v1 = v5;
      if (v3 == v2)
      {
        goto LABEL_19;
      }
    }

    v13 = v4;
    v14 = (v10 + 32 + v9);
    v15 = *v1;
    v16 = *(*v1 + 16);

    while (v16)
    {
      v19 = *v14;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (!v20 || v16 >= *(v15 + 3) >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v16 + 1, 1, v15);
      }

      v18 = &v15[v16 - 1];
      result = memmove(v18 + 33, v18 + 32, *(v15 + 2) - (v16 - 1));
      v16 = *(v15 + 2) + 1;
      *(v15 + 2) = v16;
      v18[32] = v19;
      ++v14;
      if (!--v12)
      {
        *v1 = v15;
        v4 = v13;
        v2 = v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:

    return $defer #1 <A>() in SystemString.appendComponents<A>(components:)(v1);
  }

  return result;
}

uint64_t $defer #1 <A>() in SystemString.appendComponents<A>(components:)(uint64_t *a1)
{
  v2 = *a1;
  if (SystemString._parseRoot()().relativeBegin != *(v2 + 16) - 1)
  {
    result = specialized BidirectionalCollection.last.getter(v2);
    if ((result & 0x100) != 0)
    {
      goto LABEL_12;
    }

    if (result == 47)
    {
      v4 = *(v2 + 16);
      if (v4 == 1)
      {
        __break(1u);
      }

      else if (v4)
      {
        specialized RangeReplaceableCollection.remove(at:)((v4 - 2));
        goto LABEL_7;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }
  }

LABEL_7:
  v5 = *a1;

  SystemString._normalizeSeparators()();
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized RangeReplaceableCollection.remove(at:)(char *result)
{
  v2 = *(*v1 + 16);
  if (v2 == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 - 1 > result)
  {
    v3 = result[*v1 + 32];
    specialized Array.replaceSubrange<A>(_:with:)(result, (result + 1));
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *specialized Array.replaceSubrange<A>(_:with:)(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t FilePath.append(_:)(uint64_t *a1)
{
  v4 = *a1;
  result = a1[1];
  v5 = a1[2];
  if (result == v5)
  {
  }

  else
  {
    v6 = *(*v1 + 16);
    if (v6 != 1)
    {
      if (v6 < 2)
      {
        __break(1u);
        return result;
      }

      if (*(*v1 + v6 + 30) != 47)
      {
        v7 = result;
        v8 = a1[2];
        specialized Array.replaceSubrange<A>(_:with:)((v6 - 1), v6 - 1, 47);
        v5 = v8;
        result = v7;
      }
    }

    return specialized RangeReplaceableCollection.append<A>(contentsOf:)(result, v5, v4);
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance FilePath.ComponentView(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance FilePath.ComponentView(void *a1, Swift::Int *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  componentEnd = FilePath._parseComponent(startingAt:)(*a2).componentEnd;

  if (componentEnd < v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v5;
    a1[1] = v4;
    a1[2] = componentEnd;
    if (v4 != componentEnd)
    {

      return protocol witness for Collection.subscript.read in conformance FilePath.ComponentView;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance FilePath.ComponentView(Swift::Int *a1)
{
  v5 = *v1;
  nextStart = FilePath._parseComponent(startingAt:)(*a1).nextStart;

  *a1 = nextStart;
  return result;
}

unint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 <= result || v3 <= a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC6System0H4CharV_Tt1g5(a2 - result, 0);
  v10 = specialized Slice._copyContents(initializing:)(&v11, v9 + 4, v7, v6, a2, a3);

  if (v10 != v7)
  {
    goto LABEL_11;
  }

  return v9;
}

unint64_t _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3);

  v4 = *(v3 + 16);
  if (!v4 || *(v3 + v4 + 31))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 + 1, 1, v3);
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 16) = v6 + 1;
    *(v3 + v6 + 32) = 0;
  }

  return v3;
}

uint64_t FilePath.Component.string.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(v2, v3, v1);
  v4 = String.init(cString:)();

  return v4;
}

unint64_t *specialized Slice._copyContents(initializing:)(unint64_t *result, void *__dst, int64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 <= a4 || v6 <= a5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(a4, a5 - a4))
  {
    goto LABEL_17;
  }

  if (a5 < a4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  v12 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = a5 - a4;
    }

    result = memcpy(__dst, (a6 + a4 + 32), v12);
  }

  v13 = a4 + v12;
  if (__OFADD__(a4, v12))
  {
    goto LABEL_19;
  }

  if (v13 < *(a6 + 16))
  {
    *v11 = a4;
    v11[1] = a5;
    v11[2] = a6;
    v11[3] = v13;
    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall FilePath._normalizeSpecialDirectories()()
{
  v1 = *v0;
  FilePath.isLexicallyNormal.getter();
  if (v2)
  {
    return;
  }

  v3 = *(v1 + 2);
  if (v3 == 1)
  {
    return;
  }

  if (!v3)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v35 = v1[32];
  if (v35 == 47)
  {
    if (v3 <= 2)
    {
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v0 = v1;
    v5 = 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v5 = 0;
    *v0 = v1;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
LABEL_9:
  v34 = v0;
  *v0 = v1;
  v7 = v5;
  v8 = v5;
  nextStart = v5;
  do
  {
    v10 = FilePath._parseComponent(startingAt:)(nextStart);
    if (v10.componentEnd < nextStart)
    {
      goto LABEL_63;
    }

    v11 = *(v1 + 2);
    if (!v11)
    {
      goto LABEL_64;
    }

    if (v11 <= v10.componentEnd)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAD5C620;
    *(inited + 32) = 46;
    v13 = specialized Sequence<>.elementsEqual<A>(_:)(inited, nextStart, v10.componentEnd, v1);
    swift_setDeallocating();
    if (v13)
    {
      goto LABEL_45;
    }

    v14 = *(v1 + 2);
    if (!v14)
    {
      goto LABEL_66;
    }

    if (v14 <= v10.componentEnd)
    {
      goto LABEL_67;
    }

    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1DAD5E320;
    *(v15 + 32) = 11822;
    v16 = specialized Sequence<>.elementsEqual<A>(_:)(v15, nextStart, v10.componentEnd, v1);
    swift_setDeallocating();
    if (v16)
    {
      if (v35 == 47)
      {
        v7 = v8;
        if (v8 == v5)
        {
          v7 = v5;
          v8 = v5;
LABEL_45:
          nextStart = v10.nextStart;
          continue;
        }
      }

      v17 = v5;
      if (v7 != v5)
      {

        v18 = FilePath._parseComponent(priorTo:)(v7);
        v20 = v19;

        v21 = *(v1 + 2);
        if (!v21)
        {
          goto LABEL_68;
        }

        if (v18 < 0)
        {
          goto LABEL_69;
        }

        if (v21 <= v20)
        {
          goto LABEL_70;
        }

        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1DAD5E320;
        *(v22 + 32) = 11822;
        v23 = specialized Sequence<>.elementsEqual<A>(_:)(v22, v18, v20, v1);
        swift_setDeallocating();
        v17 = v7;
        if ((v23 & 1) == 0)
        {
          v7 = v18;
          v8 = v18;
          goto LABEL_45;
        }
      }
    }

    else
    {
      v17 = v7;
    }

    if (nextStart == v17)
    {
      v7 = v10.nextStart;
      v8 = v10.nextStart;
      goto LABEL_45;
    }

    if (nextStart != v10.nextStart)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v24 = v1 + 32;
      while (1)
      {
        if (nextStart != v17)
        {
          if (nextStart < 0)
          {
            goto LABEL_60;
          }

          v25 = *(v1 + 2);
          if (v25 <= nextStart)
          {
            goto LABEL_61;
          }

          if (v17 >= v25)
          {
            goto LABEL_62;
          }

          v26 = v24[nextStart];
          v24[nextStart] = v24[v17];
          v24[v17] = v26;
        }

        v27 = nextStart + 1;
        if (__OFADD__(nextStart, 1))
        {
          break;
        }

        v28 = *(v1 + 2) - 1;
        if (v17 >= v28 || (nextStart | v17) < 0 || nextStart >= v28)
        {
          goto LABEL_59;
        }

        ++v17;
        ++nextStart;
        if (v27 == v10.nextStart)
        {
          v7 = v17;
          v8 = v17;
          goto LABEL_45;
        }
      }

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
      goto LABEL_71;
    }

    v7 = v17;
  }

  while (nextStart < *(v1 + 2) - 1);
  *v34 = v1;
  if (nextStart == v7)
  {
    return;
  }

  v29 = *(v1 + 2);
  if (v29 <= v7)
  {
    goto LABEL_72;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v7, v29 - 1);
  v30 = *v34;
  v31 = *(*v34 + 16);
  if (v31 == 1)
  {
    return;
  }

  if (!v31)
  {
    goto LABEL_73;
  }

  if ((*(v30 + 32) == 47) == v31 - 1)
  {
    return;
  }

  v32 = specialized BidirectionalCollection.last.getter(*v34);
  if ((v32 & 0x100) != 0)
  {
LABEL_76:
    __break(1u);
    return;
  }

  if (v32 != 47)
  {
    return;
  }

  v33 = *(v30 + 16);
  if (v33 == 1)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!v33)
  {
    goto LABEL_75;
  }

  specialized RangeReplaceableCollection.remove(at:)((v33 - 2));
}

void FilePath.isLexicallyNormal.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = *(v1 + 32) == 47;
LABEL_5:
    v4 = *v0;
    if (v3 == v2 - 1)
    {

      v5 = v3;
LABEL_24:
      v9 = *(v1 + 16);
      if (v9 <= v5)
      {
        goto LABEL_59;
      }

      if (v9 <= v3)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v5 < v3)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v10 = v9 - 1;

      if (v5 == v10)
      {
LABEL_42:
        swift_bridgeObjectRelease_n();
        return;
      }

      v11 = v5;
      while (v11 >= v5 && v11 < v10)
      {
        componentEnd = FilePath._parseComponent(startingAt:)(v11).componentEnd;

        if (componentEnd < v11)
        {
          goto LABEL_44;
        }

        if (v11 == componentEnd)
        {
          goto LABEL_45;
        }

        nextStart = FilePath._parseComponent(startingAt:)(v11).nextStart;
        swift_bridgeObjectRetain_n();

        v14 = *(v1 + 16);
        if (!v14)
        {
          goto LABEL_46;
        }

        if (v14 <= componentEnd)
        {
          goto LABEL_47;
        }

        if (specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #2 of FilePath.isLexicallyNormal.getter, v11, componentEnd, v1))
        {

          goto LABEL_42;
        }

        v15 = *(v1 + 16);
        if (!v15)
        {
          goto LABEL_48;
        }

        if (v15 <= componentEnd)
        {
          goto LABEL_49;
        }

        v16 = specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #3 of FilePath.isLexicallyNormal.getter, v11, componentEnd, v1);

        if ((v16 & 1) == 0)
        {
          v11 = nextStart;
          if (nextStart != v10)
          {
            continue;
          }
        }

        goto LABEL_42;
      }

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
    }

    else
    {

      v5 = v3;
      while (1)
      {
        v6 = FilePath._parseComponent(startingAt:)(v5).componentEnd;

        if (v6 < v5)
        {
          break;
        }

        if (v5 == v6)
        {
          goto LABEL_51;
        }

        v7 = *(v1 + 16);
        if (v2 == 1)
        {
          if (!v7)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v7 == 1)
          {
            goto LABEL_57;
          }

          if (!v7)
          {
            goto LABEL_58;
          }

          if (*(v1 + 32) == 47)
          {
            goto LABEL_24;
          }
        }

        if (v5 < 0)
        {
          goto LABEL_53;
        }

        if (v7 <= v6)
        {
          goto LABEL_54;
        }

        if (specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of FilePath.isLexicallyNormal.getter, v5, v6, v1))
        {
          goto LABEL_24;
        }

        v8 = *(v1 + 16);
        if (!v8)
        {
          goto LABEL_55;
        }

        if (v8 <= v6)
        {
          goto LABEL_56;
        }

        if ((specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #1 of FilePath.isLexicallyNormal.getter, v5, v6, v1) & 1) == 0)
        {
          goto LABEL_24;
        }

        v5 = FilePath._parseComponent(startingAt:)(v5).nextStart;

        if (v5 == *(v1 + 16) - 1)
        {
          v5 = *(v1 + 16) - 1;
          goto LABEL_24;
        }
      }
    }

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
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  __break(1u);
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t result, int64_t a2, int64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = a2;
  while (1)
  {
    if (v7 == a3)
    {
      v8 = 0;
      v9 = a3;
      goto LABEL_10;
    }

    if (v7 < a2 || v7 >= a3)
    {
      break;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v10 = *(a4 + 16);
    if (v10 <= v7)
    {
      goto LABEL_22;
    }

    if (v7 >= v10 - 1)
    {
      goto LABEL_24;
    }

    v8 = *(a4 + 32 + v7);
    v9 = v7 + 1;
LABEL_10:
    result = v4 == v5;
    if (v4 == v5)
    {
      v11 = 0;
      v12 = v5;
      if (v7 == a3)
      {
        return result;
      }
    }

    else
    {
      if (v4 >= v5)
      {
        goto LABEL_21;
      }

      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }

      v11 = *(v6 + v4);
      if (v7 == a3)
      {
        return result;
      }
    }

    result = 0;
    if (v4 != v5)
    {
      v4 = v12;
      v7 = v9;
      if (v8 == v11)
      {
        continue;
      }
    }

    return result;
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
  return result;
}

{
  v4 = 0;
  v5 = *(result + 16);
  v6 = v5 - 1;
  v7 = result + 32;
  v8 = a2;
  while (1)
  {
    if (v8 == a3)
    {
      v9 = 0;
      v10 = a3;
      goto LABEL_10;
    }

    if (v8 < a2 || v8 >= a3)
    {
      break;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v11 = *(a4 + 16);
    if (v11 <= v8)
    {
      goto LABEL_21;
    }

    if (v8 >= v11 - 1)
    {
      goto LABEL_22;
    }

    v9 = *(a4 + 32 + v8);
    v10 = v8 + 1;
LABEL_10:
    result = v4 == v6;
    if (v4 == v6)
    {
      v12 = 0;
      v13 = v5 - 1;
      if (v8 == a3)
      {
        return result;
      }
    }

    else
    {
      if (v4 >= v5)
      {
        goto LABEL_20;
      }

      v12 = *(v7 + v4);
      v13 = v4 + 1;
      if (v8 == a3)
      {
        return result;
      }
    }

    result = 0;
    if (v4 != v6)
    {
      v4 = v13;
      v8 = v10;
      if (v9 == v12)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

System::FilePath __swiftcall FilePath.lexicallyNormalized()()
{
  *v0 = *v1;
  FilePath._normalizeSpecialDirectories()();
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ6System0B4CharV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance Errno@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

double sub_1DAD4B8A4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *a1;
  FilePath.root.getter(v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

uint64_t *sub_1DAD4B8E8(__int128 *a1)
{
  v2 = *a1;

  return FilePath.root.setter(&v2);
}

void sub_1DAD4B928(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  FilePath.extension.getter();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1DAD4B964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FilePath.extension.setter(v1, v2);
}

uint64_t sub_1DAD4BA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = FilePath._relativeStart.getter();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t _s6System0A6StringVSlAASl5countSivgTW_0()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    return v1 - 1;
  }

  __break(1u);
  return result;
}

uint64_t _machPrecondition(file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Mach.Port.init(name:)@<X0>(uint64_t result@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  if (a2 != &type metadata for Mach.ReceiveRight)
  {
    v4 = 0;
LABEL_6:
    *a3 = v3;
    *(a3 + 8) = v4;
    return result;
  }

  if (result == -1)
  {
    goto LABEL_8;
  }

  v5 = a3;
  v4 = arc4random();
  result = mach_port_guard(*MEMORY[0x1E69E9A60], v3, v4, 0);
  a3 = v5;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Mach.Port.deinit(uint64_t result)
{
  v2 = *v1;
  if (*(result + 16) != &type metadata for Mach.ReceiveRight)
  {
    result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    if (!result)
    {
      return result;
    }

    __break(1u);
  }

  if (v2 == -1)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = mach_port_destruct(*MEMORY[0x1E69E9A60], v2, 0, *(v1 + 8));
  if (result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

Swift::Int Mach.PortRightError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Mach.PortRightError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Mach.PortRightError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](0);
  return Hasher._finalize()();
}

uint64_t Mach.Port<>.init(name:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Mach.Port<>.init()@<X0>(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  name = 0;
  v2 = MEMORY[0x1E69E9A60];
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = name;
  if (!name)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (name == -1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = arc4random();
  result = mach_port_guard(*v2, v3, v4, 0);
  if (result)
  {
    goto LABEL_9;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Mach.Port<>.relinquish()()
{
  result = *v0;
  v2 = *(v0 + 1);
  return result;
}

{
  return *v0;
}

uint64_t Mach.Port<>.unguardAndRelinquish()()
{
  v1 = *v0;
  result = mach_port_unguard(*MEMORY[0x1E69E9A60], *v0, *(v0 + 1));
  if (!result)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t Mach.Port<>.makeSendOnceRight()@<X0>(uint64_t a1@<X8>)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = MEMORY[0x1E1279350](*MEMORY[0x1E69E9A60], *v1, 21, v5 + 4, v5);
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (LODWORD(v5[0]) != 18)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!HIDWORD(v5[0]))
  {
    goto LABEL_7;
  }

  *a1 = HIDWORD(v5[0]);
  *(a1 + 8) = 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Mach.Port<>.makeSendRight()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = mach_port_insert_right(*MEMORY[0x1E69E9A60], v3, v3, 0x14u);
  if (v3)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *a1 = v3;
    *(a1 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Mach.Port<>.makeSendCount.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *port_info_out = 0u;
  v5 = 0u;
  port_info_outCnt = 10;
  if (mach_port_get_attributes(*MEMORY[0x1E69E9A60], *v0, 2, port_info_out, &port_info_outCnt))
  {
    __break(1u);
  }

  result = port_info_out[2];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Mach.Port<>.makeSendCount.setter(uint64_t a1)
{
  result = MEMORY[0x1E1279390](*MEMORY[0x1E69E9A60], *v1, a1);
  if (result)
  {
    __break(1u);
  }

  return result;
}

void (*Mach.Port<>.makeSendCount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x34uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 44) = 10;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v5 = *v1;
  *(v3 + 48) = *v1;
  if (mach_port_get_attributes(*MEMORY[0x1E69E9A60], v5, 2, v3, (v3 + 44)))
  {
    __break(1u);
  }

  *(v4 + 40) = *(v4 + 8);
  v6 = *MEMORY[0x1E69E9840];
  return Mach.Port<>.makeSendCount.modify;
}

void Mach.Port<>.makeSendCount.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1E1279390](*MEMORY[0x1E69E9A60], *(*a1 + 48), *(*a1 + 40));
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v3);
}

uint64_t Mach.Port<>.copySendRight()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = mach_port_insert_right(*MEMORY[0x1E69E9A60], *v1, *v1, 0x13u);
  if (result == 15 || result == 20)
  {
    lazy protocol witness table accessor for type Mach.PortRightError and conformance Mach.PortRightError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    if (v3)
    {
      v6 = result == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *a1 = v3;
      *(a1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Mach.PortRightError and conformance Mach.PortRightError()
{
  result = lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError;
  if (!lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError;
  if (!lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Mach.PortRightError and conformance Mach.PortRightError);
  }

  return result;
}

uint64_t assignWithTake for Mach.Port(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for Mach.Port(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Mach.Port(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Mach.PortRightError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Mach.PortRightError(_WORD *result, int a2, int a3)
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

BOOL protocol witness for SetAlgebra.insert(_:) in conformance FileDescriptor.OpenOptions(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance FileDescriptor.OpenOptions@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *protocol witness for SetAlgebra.update(with:) in conformance FileDescriptor.OpenOptions@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance FileDescriptor.OpenOptions@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FileDescriptor()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FileDescriptor()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t FileDescriptor.AccessMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 0x796C6E4F64616572;
    case 2:
      return 0x7469725764616572;
    case 1:
      return 0x6C6E4F6574697277;
  }

  _StringGuts.grow(_:)(16);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1278EC0](v2);

  MEMORY[0x1E1278EC0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t FileDescriptor.SeekOrigin.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7472617473;
    }

    if (a1 == 1)
    {
      return 0x746E6572727563;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 6581861;
      case 3:
        return 0x656C6F487478656ELL;
      case 4:
        return 0x617461447478656ELL;
    }
  }

  _StringGuts.grow(_:)(16);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1278EC0](v2);

  MEMORY[0x1E1278EC0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t specialized OptionSet._buildDescription(_:)(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 6);
      if ((v4 & ~a2) == 0)
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 1);
        v7 = *v3;
        v8 = a2;
        v9 = StaticString.description.getter();
        MEMORY[0x1E1278EC0](v9);

        v10 = v8 & ~v4;
        if (v10)
        {
          MEMORY[0x1E1278EC0](8236, 0xE200000000000000);
          a2 = v10;
        }

        else
        {
          a2 = 0;
        }
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  if (a2)
  {
    _StringGuts.grow(_:)(16);
    MEMORY[0x1E1278EC0](0x6974704F6E65704FLL, 0xEB00000000736E6FLL);
    MEMORY[0x1E1278EC0](0x756C615677617228, 0xEB00000000203A65);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E1278EC0](41, 0xE100000000000000);
    MEMORY[0x1E1278EC0](0, 0xE000000000000000);
  }

  MEMORY[0x1E1278EC0](93, 0xE100000000000000);
  return 91;
}

uint64_t specialized OptionSet._buildDescription(_:)(uint64_t a1, unsigned __int16 a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 12);
      if ((v5 & ~v2) == 0)
      {
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v9 = StaticString.description.getter();
        MEMORY[0x1E1278EC0](v9);

        v2 &= v5 ^ 0xFFFF;
        if (v2)
        {
          MEMORY[0x1E1278EC0](8236, 0xE200000000000000);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  if (v2)
  {
    _StringGuts.grow(_:)(16);
    MEMORY[0x1E1278EC0](0x6D726550656C6946, 0xEF736E6F69737369);
    MEMORY[0x1E1278EC0](0x756C615677617228, 0xEB00000000203A65);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E1278EC0](41, 0xE100000000000000);
    MEMORY[0x1E1278EC0](0, 0xE000000000000000);
  }

  MEMORY[0x1E1278EC0](93, 0xE100000000000000);
  return 91;
}

unint64_t lazy protocol witness table accessor for type FileDescriptor and conformance FileDescriptor()
{
  result = lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor;
  if (!lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor;
  if (!lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor and conformance FileDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode()
{
  result = lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode;
  if (!lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode;
  if (!lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.AccessMode and conformance FileDescriptor.AccessMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions()
{
  result = lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions;
  if (!lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions;
  if (!lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions;
  if (!lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions;
  if (!lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.OpenOptions and conformance FileDescriptor.OpenOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin()
{
  result = lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin;
  if (!lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin;
  if (!lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDescriptor.SeekOrigin and conformance FileDescriptor.SeekOrigin);
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, Swift::Int a2, uint64_t a3, Swift::Int a4)
{
  v8 = *(a3 + 16) - 1;

  while (a4 != v8)
  {
    componentEnd = FilePath._parseComponent(startingAt:)(a4).componentEnd;

    if (componentEnd < a4)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (a4 == componentEnd)
    {
      goto LABEL_20;
    }

    nextStart = FilePath._parseComponent(startingAt:)(a4).nextStart;
    swift_bridgeObjectRetain_n();

    if (a2 == *(a1 + 16) - 1)
    {

      swift_bridgeObjectRelease_n();
      return 1;
    }

    v12 = FilePath._parseComponent(startingAt:)(a2).componentEnd;

    if (v12 < a2)
    {
      goto LABEL_21;
    }

    if (a2 == v12)
    {
      goto LABEL_22;
    }

    v13 = FilePath._parseComponent(startingAt:)(a2).nextStart;
    swift_bridgeObjectRetain_n();

    v14 = specialized Sequence<>.elementsEqual<A>(_:)(a2, v12, a1, a4, componentEnd, a3);

    a2 = v13;
    a4 = nextStart;
    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  if (a2 == *(a1 + 16) - 1)
  {

    return 1;
  }

  v15 = FilePath._parseComponent(startingAt:)(a2).componentEnd;

  if (v15 < a2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a2 == v15)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  FilePath._parseComponent(startingAt:)(a2);
  swift_bridgeObjectRetain_n();

  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16) - 1;
  v9 = *(a3 + 16) - 1;

  while (v9 != a4)
  {

    v9 = FilePath._parseComponent(priorTo:)(v9);

    componentEnd = FilePath._parseComponent(startingAt:)(v9).componentEnd;

    if (componentEnd < v9)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v9 == componentEnd)
    {
      goto LABEL_19;
    }

    v12 = v8 == a2;
    if (v8 == a2)
    {

LABEL_13:

LABEL_17:

      return v12;
    }

    v8 = FilePath._parseComponent(priorTo:)(v8);

    v13 = FilePath._parseComponent(startingAt:)(v8).componentEnd;

    if (v13 < v8)
    {
      goto LABEL_20;
    }

    if (v8 == v13)
    {
      goto LABEL_21;
    }

    v14 = specialized Sequence<>.elementsEqual<A>(_:)(v8, v13, a1, v9, componentEnd, a3);

    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v8 == a2)
  {
    v12 = 1;
    goto LABEL_17;
  }

  v15 = FilePath._parseComponent(priorTo:)(v8);

  v16 = FilePath._parseComponent(startingAt:)(v15).componentEnd;

  if (v16 < v15)
  {
    goto LABEL_22;
  }

  if (v15 != v16)
  {
    v12 = 0;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t FilePath.isAbsolute.getter()
{
  result = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2)
  {
    if (*(result + 32) == 47)
    {
      SystemString._parseRoot()();
      return 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t FilePath.root.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 == 1)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    __break(1u);
    return result;
  }

  if (*(v2 + 32) != 47)
  {
LABEL_7:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v4 = *v1;
  v6 = SystemString._parseRoot()();
  *a1 = v2;
  a1[1] = v6.relativeBegin;
}

uint64_t FilePath.isRelative.getter()
{
  result = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    return 1;
  }

  if (v2)
  {
    if (*(result + 32) == 47)
    {
      SystemString._parseRoot()();
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall FilePath.starts(with:)(System::FilePath with)
{
  v2 = *with._storage.nullTerminatedStorage._rawValue;
  if (*(*with._storage.nullTerminatedStorage._rawValue + 16) == 1)
  {
    return 1;
  }

  v4 = *v1;
  if (SystemString._parseRoot()().relativeBegin)
  {
    relativeBegin = SystemString._parseRoot()().relativeBegin;

    if (SystemString._parseRoot()().relativeBegin)
    {
      v6 = v4;
      goto LABEL_8;
    }

    if (v4)
    {
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!SystemString._parseRoot()().relativeBegin)
  {
    goto LABEL_14;
  }

  relativeBegin = 0;
  v6 = 0;
LABEL_8:
  v7 = SystemString._parseRoot()().relativeBegin;

  if (!v6)
  {
LABEL_13:

    return 0;
  }

  if ((v7 | relativeBegin) < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = specialized Sequence<>.elementsEqual<A>(_:)(0, v7, v2, 0, relativeBegin, v6);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v9 = *(v4 + 16);
  if (v9 != 1)
  {
    if (v9)
    {
      v10 = *(v4 + 32) == 47;
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
LABEL_19:
  v11 = *(v2 + 16);
  if (v11 == 1)
  {
    v12 = 0;
LABEL_23:

    v14 = specialized Sequence<>.starts<A>(with:)(v13, v12, v4, v10);

    return v14 & 1;
  }

  if (v11)
  {
    v12 = *(v2 + 32) == 47;
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall FilePath.ends(with:)(System::FilePath with)
{
  v2 = *with._storage.nullTerminatedStorage._rawValue;
  v3 = *v1;
  v5 = SystemString._parseRoot()();
  result = v5.rootEnd;
  if (!v5.relativeBegin)
  {
    v6 = *(v3 + 16);
    if (v6 == 1)
    {
      v7 = 0;
    }

    else
    {
      if (!v6)
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v3 + 32) == 47;
    }

    v8 = *(v2 + 16);
    if (v8 == 1)
    {
      v9 = 0;
LABEL_13:

      v10 = specialized Sequence<>.starts<A>(with:)(v2, v9, v3, v7);

      return v10 & 1;
    }

    if (v8)
    {
      v9 = *(v2 + 32) == 47;
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  SystemString._parseRoot()();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ6System0B4CharV_Tt1g5(v3, v2);
}

uint64_t *FilePath.root.setter(uint64_t *result)
{
  if (*result)
  {
    v2 = result[1];
    v3 = *(*v1 + 16);
    if (v3 == 1)
    {
      v4 = 0;
    }

    else
    {
      if (!v3)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v4 = *(*v1 + 32) == 47;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, v4, 0, v2, *result);
    }

    __break(1u);
    goto LABEL_18;
  }

  v5 = *(*v1 + 16);
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v6 = *(*v1 + 32) == 47;
  }

  return specialized Array.replaceSubrange<A>(_:with:)(0, v6);
}

uint64_t *(*FilePath.root.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  if (SystemString._parseRoot()().relativeBegin)
  {
    relativeBegin = SystemString._parseRoot()().relativeBegin;
  }

  else
  {
    v3 = 0;
    relativeBegin = 0;
  }

  *a1 = v3;
  a1[1] = relativeBegin;
  return FilePath.root.modify;
}

uint64_t *FilePath.root.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = v2;

    FilePath.root.setter(&v6);
  }

  else
  {
    v6 = *a1;
    v7 = v2;
    return FilePath.root.setter(&v6);
  }
}

System::FilePath __swiftcall FilePath.removingRoot()()
{
  v2 = *v1;
  *v0 = *v1;
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = 0;
    return specialized Array.replaceSubrange<A>(_:with:)(0, v4);
  }

  if (v3)
  {
    v4 = *(v2 + 32) == 47;
    return specialized Array.replaceSubrange<A>(_:with:)(0, v4);
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 16) - 1;
  if (v4 == a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v5 = result;

  v6 = FilePath._parseComponent(priorTo:)(v4);

  componentEnd = FilePath._parseComponent(startingAt:)(v6).componentEnd;

  if (componentEnd < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v6 == componentEnd)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = componentEnd;
}

Swift::Bool __swiftcall FilePath.removeLastComponent()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (!v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(v2 + 32) == 47;
  }

  specialized BidirectionalCollection.last.getter(v5, v4, v13);

  v6 = *v13;
  if (!*v13)
  {
    return v6 != 0;
  }

  *v13 = *&v13[8];
  *&v13[16] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
  Slice.indices.getter();

  specialized Array.replaceSubrange<A>(_:with:)(v11, v12);
  v7 = *v1;
  v9 = SystemString._parseRoot()();
  result = v9.rootEnd;
  v10 = *(v7 + 16);
  if (v9.relativeBegin == v10 - 1)
  {
    return v6 != 0;
  }

  if (v10 != 1)
  {
    if (v10)
    {
      if (*(v7 + v10 + 30) == 47)
      {
        specialized RangeReplaceableCollection.remove(at:)((v10 - 2));
      }

      return v6 != 0;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

int64_t FilePath.Component.extension.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = FilePath.Component._extensionRange()();
  if (v6)
  {
    return 0;
  }

  if (result < v2 || v3 < v5)
  {
    __break(1u);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
    Slice.indices.getter();
    v8 = static String._fromUTF8Repairing(_:)();

    return v8;
  }

  return result;
}

void FilePath.Component.stem.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  FilePath.Component.kind.getter();
  if (v4 == 2)
  {
    v5 = specialized BidirectionalCollection<>.lastIndex(of:)(0x2Eu, v2, v3, v1);
    if (v5 == v2)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5;
    }

    if (v6)
    {
      v7 = v3;
    }
  }

  else
  {
    v7 = v3;
  }

  if (v7 < v2)
  {
    __break(1u);
  }

  else if (v3 >= v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
    Slice.indices.getter();
    static String._fromUTF8Repairing(_:)();

    return;
  }

  __break(1u);
}

void FilePath.extension.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    if (!v1)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v2 = *(*v0 + 32) == 47;
  }

  specialized BidirectionalCollection.last.getter(v3, v2, v9);

  if (!v9[0])
  {
    return;
  }

  v5 = v9[1];
  v4 = v9[2];
  v6 = FilePath.Component._extensionRange()();
  if ((v8 & 1) == 0)
  {
    if (v6 >= v5 && v4 >= v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
      Slice.indices.getter();
      static String._fromUTF8Repairing(_:)();
      swift_bridgeObjectRelease_n();
      return;
    }

    goto LABEL_13;
  }
}

uint64_t FilePath.extension.setter(uint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = *(*v2 + 16);
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    v6 = *(*v2 + 32) == 47;
  }

  v7 = *v2;

  specialized BidirectionalCollection.last.getter(v8, v6, &v26);

  v9 = v26;
  if (v26)
  {
    v11 = v27;
    v10 = v28;
    FilePath.Component.kind.getter();
    if (v12 != 2)
    {

      goto LABEL_28;
    }

    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DAD5C620;
      *(v13 + 32) = 0;
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v13);
      v15 = *(v14 + 2);
      memmove(v14 + 33, v14 + 32, v15);
      *(v14 + 2) = v15 + 1;
      v14[32] = 46;
      v16 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v16 = v4 & 0xFFFFFFFFFFFFLL;
      }

      v26 = v4;
      v27 = a2;
      v28 = 0;
      v29 = v16;
      v30 = implicit closure #1 in _makeExtension(_:);
      v31 = 0;
      result = specialized LazyMapSequence.Iterator.next()();
      if ((result & 0x100) == 0)
      {
        v17 = result;
        while (1)
        {
          v18 = *(v14 + 2);
          if (!v18)
          {
            break;
          }

          if (v18 >= *(v14 + 3) >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v18 + 1, 1, v14);
          }

          v19 = v18 - 1;
          v20 = &v14[v18 - 1];
          memmove(v20 + 33, v20 + 32, *(v14 + 2) - v19);
          ++*(v14 + 2);
          v20[32] = v17;
          result = specialized LazyMapSequence.Iterator.next()();
          v17 = result;
          if ((result & 0x100) != 0)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_19:
    }

    else
    {
      v14 = &outlined read-only object #0 of FilePath.extension.setter;
    }

    v26 = v9;
    v27 = v11;
    v28 = v10;
    FilePath.Component.kind.getter();
    if (v21 == 2)
    {
      v22 = specialized BidirectionalCollection<>.lastIndex(of:)(0x2Eu, v11, v10, v9);
      v24 = v23;

      v25 = v10;
      if (v24)
      {
        goto LABEL_27;
      }

      v25 = v10;
      if (v22 == v11)
      {
        goto LABEL_27;
      }

      v25 = v22;
      if (v10 >= v22)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    v25 = v10;
LABEL_27:
    specialized Array.replaceSubrange<A>(_:with:)(v25, v10, v14);
  }

LABEL_28:
}

uint64_t (*FilePath.extension.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v6 = *v1;
  FilePath.extension.getter();
  *a1 = v3;
  a1[1] = v4;
  return FilePath.extension.modify;
}

uint64_t FilePath.extension.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return FilePath.extension.setter(*a1, v2);
  }

  v5 = a1[1];

  FilePath.extension.setter(v3, v2);
}

void FilePath.stem.getter()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    if (!v1)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v2 = *(*v0 + 32) == 47;
  }

  specialized BidirectionalCollection.last.getter(v3, v2, v11);

  v4 = v11[0];
  if (v11[0])
  {
    v5 = v11[1];
    v6 = v11[2];
    FilePath.Component.kind.getter();
    if (v7 == 2)
    {
      v8 = specialized BidirectionalCollection<>.lastIndex(of:)(0x2Eu, v5, v6, v4);
      if (v8 == v5)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      if (v9)
      {
        v10 = v6;
      }
    }

    else
    {
      v10 = v6;
    }

    if (v10 < v5)
    {
      __break(1u);
    }

    else if (v6 >= v10)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy6System0B6StringVGMd, &_ss5SliceVy6System0B6StringVGMR);
      Slice.indices.getter();
      static String._fromUTF8Repairing(_:)();
      swift_bridgeObjectRelease_n();
      return;
    }

    __break(1u);
    goto LABEL_20;
  }
}

void FilePath.lexicallyResolving(_:)(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(*a1 + 2);
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    if (!v6)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = v4[32] == 47;
  }

  v8 = v6 - v7;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v6 <= v8)
    {
      v11 = v6 - v7;
    }

    else
    {
      v11 = v6;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v7, 0);
  v19 = v4;
  FilePath._normalizeSpecialDirectories()();
  v12 = *(v4 + 2);
  if (v12 == 1)
  {

    *a2 = v5;
    return;
  }

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = *(v19 + 32) == 47;

  specialized Collection.first.getter(v13, v14, &v19);

  if (v19)
  {
    FilePath.Component.kind.getter();
    v16 = v15;

    if (v16 == 1)
    {

      *a2 = 0;
      return;
    }
  }

  v17 = *(v4 + 2);
  if (v17 != 1)
  {
    if (v17)
    {
      v18 = v4[32] == 47;
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v18 = 0;
LABEL_21:
  v19 = v5;
  specialized FilePath.append<A>(_:)(v4, v18);
  *a2 = v19;
}

uint64_t FilePath.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *v3;
  specialized FilePath.append<A>(_:)(a1, a2);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

Swift::Bool __swiftcall FilePath.removePrefix(_:)(System::FilePath a1)
{
  v2 = *a1._storage.nullTerminatedStorage._rawValue;
  v3 = *v1;
  if (SystemString._parseRoot()().relativeBegin)
  {
    relativeBegin = SystemString._parseRoot()().relativeBegin;

    if (!SystemString._parseRoot()().relativeBegin)
    {
      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (!SystemString._parseRoot()().relativeBegin)
    {
      goto LABEL_14;
    }

    relativeBegin = 0;
    v3 = 0;
  }

  v5 = SystemString._parseRoot()().relativeBegin;

  if (!v3)
  {
    if (v2)
    {
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!v2)
  {
LABEL_13:

    return 0;
  }

  if ((v5 | relativeBegin) < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = specialized Sequence<>.elementsEqual<A>(_:)(0, v5, v2, 0, relativeBegin, v3);

  if (v7)
  {
LABEL_15:
    v8 = *v1;
    v9 = *(*v1 + 16);
    if (v9 == 1)
    {
      v10 = 0;
LABEL_19:
      v11 = *(v2 + 16);
      if (v11 == 1)
      {
        v12 = 0;
LABEL_23:

        specialized _dropCommonPrefix<A>(_:_:)(&v17, v16, v8, v10, v2, v12);

        v13 = v17;
        v14 = v16[0];
        v15 = v16[1];

        if (v14 != v15)
        {
          return 0;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, v13);
          return 1;
        }

LABEL_31:
        __break(1u);
        return result;
      }

      if (v11)
      {
        v12 = *(v2 + 32) == 47;
        goto LABEL_23;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v9)
    {
      v10 = *(v8 + 32) == 47;
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return 0;
}

uint64_t specialized _dropCommonPrefix<A>(_:_:)(uint64_t result, Swift::Int *a2, uint64_t a3, Swift::Int a4, uint64_t a5, Swift::Int a6)
{
  v6 = *(a3 + 16);
  if (v6 <= a4)
  {
    goto LABEL_34;
  }

  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = v6 - 1;
  v29 = a3;
  v30 = a4;
  v27 = a4;
  v28 = v6 - 1;
  v12 = *(a5 + 16);
  if (v12 <= a6)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = v12 - 1;
  v25 = a5;
  v26 = a6;
  v23 = a6;
  v24 = v12 - 1;

  if (v11 != v9)
  {
    while (1)
    {
      if (v9 >= v11)
      {
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
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v22[0] = v10;
      componentEnd = FilePath._parseComponent(startingAt:)(v9).componentEnd;

      if (componentEnd < v9)
      {
        goto LABEL_27;
      }

      if (v9 == componentEnd)
      {
        goto LABEL_28;
      }

      v22[0] = v10;
      v16 = FilePath._parseComponent(startingAt:)(v9).componentEnd;

      if (v16 < v9)
      {
        goto LABEL_29;
      }

      if (v9 == v16)
      {
        goto LABEL_30;
      }

      v7 = v23;
      v14 = v24;
      v8 = v25;

      if (v7 == v14)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_31;
      }

      v22[0] = v8;
      v17 = FilePath._parseComponent(startingAt:)(v7).componentEnd;

      if (v17 < v7)
      {
        goto LABEL_32;
      }

      if (v7 == v17)
      {
        goto LABEL_33;
      }

      if (!v10)
      {
        if (v8)
        {
          v10 = 0;
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_6;
      }

      if (!v8)
      {
        goto LABEL_24;
      }

      v18 = specialized Sequence<>.elementsEqual<A>(_:)(v7, v17, v8, v9, v16, v10);

      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_7:
      specialized Collection<>.removeFirst()(v22);

      specialized Collection<>.removeFirst()(v22);

      v9 = v27;
      v11 = v28;
      v10 = v29;
      if (v27 == v28)
      {
        v7 = v23;
        v14 = v24;
        v11 = v27;
        v8 = v25;
        goto LABEL_25;
      }
    }

    if (v10)
    {
      goto LABEL_24;
    }

LABEL_6:

    goto LABEL_7;
  }

  v11 = v9;
LABEL_25:
  v19 = v30;
  *v13 = v9;
  v13[1] = v11;
  v13[2] = v10;
  v13[3] = v19;
  v20 = v26;
  *a2 = v7;
  a2[1] = v14;
  a2[2] = v8;
  a2[3] = v20;
  return result;
}

uint64_t specialized FilePath.append<A>(_:)(uint64_t result, int64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  v27 = v4 - 1;
  if (v4 - 1 == a2)
  {
LABEL_2:
  }

  else
  {
    v5 = v2;
    v6 = a2;
    v29 = (result + 32);
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (v4 == 1)
    {
LABEL_10:
      while (v4 > v6 && v4)
      {
        if (v6 < 0)
        {
          goto LABEL_69;
        }

        v7 = v6;
        if (v6 != v4 - 1)
        {
          v7 = v6;
          while (v29[v7] != 47)
          {
            if (v4 - 1 == ++v7)
            {
              v7 = v4 - 1;
              break;
            }
          }

          if (v7 < v6)
          {
            goto LABEL_70;
          }
        }

        if (v6 == v7)
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          break;
        }

        if (!v6)
        {
          goto LABEL_21;
        }

LABEL_24:
        if (v4 <= v6)
        {
          goto LABEL_71;
        }

        if (v6 < 0)
        {
          goto LABEL_72;
        }

        if (v6 == v4 - 1)
        {
          v8 = v6;
        }

        else
        {
          v8 = v6 + 1;
          v9 = &v29[v6];
          while (1)
          {
            v10 = *v9++;
            if (v10 == 47)
            {
              break;
            }

            if (v4 == ++v8)
            {
              v8 = v4 - 1;
              break;
            }
          }
        }

LABEL_32:
        v11 = *(*v5 + 2);
        v12 = (v11 - 1);
        if (v11 == 1)
        {
        }

        else
        {
          if (v11 < 2)
          {
            goto LABEL_73;
          }

          v13 = (*v5)[v11 + 30];

          if (v13 != 47)
          {
            result = specialized Array.replaceSubrange<A>(_:with:)(v12, v12, 47);
          }
        }

        if (v6 >= v7)
        {
          goto LABEL_67;
        }

        v28 = v8;
        v14 = *(v3 + 16);
        v15 = v5;
        v16 = *v5;
        if (v6 <= v14)
        {
          v17 = *(v3 + 16);
        }

        else
        {
          v17 = v6;
        }

        if (v6 <= (v14 - 1))
        {
          v18 = v14 - 1;
        }

        else
        {
          v18 = v6;
        }

        v19 = v6;
        do
        {
          if (v19 < v6 || v19 >= v7)
          {
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
            goto LABEL_66;
          }

          if (v19 < 0)
          {
            goto LABEL_61;
          }

          if (v17 == v19)
          {
            goto LABEL_62;
          }

          if (v19 >= *(v3 + 16))
          {
            goto LABEL_63;
          }

          if (v18 == v19)
          {
            goto LABEL_64;
          }

          v22 = v6;
          v23 = v3;
          v24 = *(v16 + 2);
          if (!v24)
          {
            goto LABEL_65;
          }

          v25 = v29[v19];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v24 >= *(v16 + 3) >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v16);
          }

          v20 = v24 - 1;
          v21 = &v16[v24 - 1];
          result = memmove(v21 + 33, v21 + 32, *(v16 + 2) - v20);
          ++*(v16 + 2);
          v21[32] = v25;
          ++v19;
          v3 = v23;
          v6 = v22;
        }

        while (v7 != v19);

        *v15 = v16;
        v6 = v28;
        if (v28 == v27)
        {
          goto LABEL_2;
        }

        v5 = v15;
        v4 = *(v3 + 16);
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      __break(1u);
    }

    else if (v4)
    {
      if (*v29 != 47)
      {
        goto LABEL_10;
      }

      v7 = 1;
LABEL_21:
      if (v4 != 1 && *v29 == 47)
      {
        v8 = 1;
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  return result;
}

uint64_t FilePath.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  specialized FilePath.append<A>(_:)(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t *FilePath.appending(_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = *v2;
  *a2 = *v2;
  if (v4 != v5)
  {
    v7 = *(v6 + 16);
    if (v7 != 1)
    {
      if (!v7)
      {
        __break(1u);
        return result;
      }

      if (*(v6 + v7 + 30) != 47)
      {
        specialized Array.replaceSubrange<A>(_:with:)((v7 - 1), v7 - 1, 47);
      }
    }

    return specialized RangeReplaceableCollection.append<A>(contentsOf:)(v4, v5, v3);
  }
}

Swift::Void __swiftcall FilePath.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (keepingCapacity)
  {
    v2 = *(*v1 + 16);
    if (v2)
    {

      specialized Array.replaceSubrange<A>(_:with:)(0, v2 - 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *v1 = &outlined read-only object #0 of FilePath.removeAll(keepingCapacity:);
  }
}

Swift::Void __swiftcall FilePath.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if (!isUniquelyReferenced_nonNull_native || v2 > *(v3 + 3) >> 1)
    {
      if (*(v3 + 2) <= v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = *(v3 + 2);
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 0, v3);
    }

    *v1 = v3;
  }
}

BOOL FilePath.dirname.getter@<W0>(void *a1@<X8>)
{
  *a1 = *v1;

  return FilePath.removeLastComponent()();
}

void FilePath.lastComponent.getter(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = *(*v1 + 32) == 47;
  }

  v5 = *v1;

  specialized BidirectionalCollection.last.getter(v6, v4, a1);
}

int64_t specialized Sequence<>.elementsEqual<A>(_:)(int64_t result, int64_t a2, uint64_t a3, int64_t a4, int64_t a5, uint64_t a6)
{
  v6 = result;
  v7 = a4;
  while (1)
  {
    if (v7 == a5)
    {
      v8 = 0;
      v9 = a5;
      goto LABEL_10;
    }

    if (v7 < a4 || v7 >= a5)
    {
      break;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    v10 = *(a6 + 16);
    if (v10 <= v7)
    {
      goto LABEL_24;
    }

    if (v7 >= v10 - 1)
    {
      goto LABEL_27;
    }

    v8 = *(a6 + 32 + v7);
    v9 = v7 + 1;
LABEL_10:
    v11 = v6 == a2;
    if (v6 == a2)
    {
      v12 = 0;
      v13 = a2;
      if (v7 == a5)
      {
        return v11;
      }
    }

    else
    {
      if (v6 < result || v6 >= a2)
      {
        goto LABEL_25;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(a3 + 16);
      if (v14 <= v6)
      {
        goto LABEL_28;
      }

      if (v6 >= v14 - 1)
      {
        goto LABEL_29;
      }

      v12 = *(a3 + 32 + v6);
      v13 = v6 + 1;
      if (v7 == a5)
      {
        return v11;
      }
    }

    v11 = 0;
    if (v6 != a2)
    {
      v6 = v13;
      v7 = v9;
      if (v8 == v12)
      {
        continue;
      }
    }

    return v11;
  }

  __break(1u);
LABEL_23:
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
  return result;
}

int64_t specialized BidirectionalCollection<>.lastIndex(of:)(unsigned __int8 a1, int64_t a2, int64_t a3, uint64_t a4)
{
  v4 = a1;
  result = a3;
  while (1)
  {
    v6 = result;
    if (a2 == result)
    {
      return 0;
    }

    --result;
    if (__OFSUB__(v6, 1))
    {
      break;
    }

    if (result >= a3)
    {
      goto LABEL_14;
    }

    if (result < a2)
    {
      goto LABEL_14;
    }

    if (result < 0)
    {
      goto LABEL_14;
    }

    v7 = *(a4 + 16);
    if (result >= (v7 - 1))
    {
      goto LABEL_14;
    }

    if (result >= v7)
    {
      goto LABEL_15;
    }

    if (*(a4 + 32 + result) == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

Swift::Int specialized RangeReplaceableCollection.remove(at:)@<X0>(Swift::Int result@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (v2[1] == *(*v2 + 16) - 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v8 = *v2;
  componentEnd = FilePath._parseComponent(startingAt:)(result).componentEnd;

  if (componentEnd < v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (componentEnd == v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *v2;
  nextStart = FilePath._parseComponent(startingAt:)(v5).nextStart;

  if (nextStart >= v5)
  {
    result = specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(v5, nextStart);
    *a2 = v4;
    a2[1] = v5;
    a2[2] = componentEnd;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Collection<>.removeFirst()(Swift::Int *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (*v1 == v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*v1 >= v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v1;
  v6 = v1[2];
  componentEnd = FilePath._parseComponent(startingAt:)(v4).componentEnd;

  if (componentEnd < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 == componentEnd)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *a1 = v6;
  a1[1] = v4;
  a1[2] = componentEnd;
  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];

  nextStart = FilePath._parseComponent(startingAt:)(v8).nextStart;
  swift_bridgeObjectRetain_n();

  v14 = v5[1];
  v13 = v5[2];

  if (v14 < nextStart)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (nextStart >= v8 && v9 >= v14)
  {
    v5[2] = v10;
    v5[3] = v11;
    *v5 = nextStart;
    v5[1] = v14;
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v10 = 0;
    return v10 | ((v1 >= v2) << 8);
  }

  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v6 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15[0] = *v0;
      v15[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v5 = v15 + v1;
    }

    else
    {
      if ((*v0 & 0x1000000000000000) != 0)
      {
        v4 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v13 = *v0;
        v14 = v0[1];
        v4 = _StringObject.sharedUTF8.getter();
      }

      v5 = (v4 + v1);
    }

    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v12 = (__clz(v6 ^ 0xFF) - 24);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v6 = ((v6 & 0xF) << 12) | ((v5[1] & 0x3F) << 6) | v5[2] & 0x3F;
        v7 = 3;
      }

      else
      {
        v6 = ((v6 & 0xF) << 18) | ((v5[1] & 0x3F) << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
        v7 = 4;
      }

      goto LABEL_10;
    }

    if (v12 == 1)
    {
LABEL_9:
      v7 = 1;
    }

    else
    {
      v7 = 2;
      v6 = v5[1] & 0x3F | ((v6 & 0x1F) << 6);
    }
  }

LABEL_10:
  v0[2] = v7 + v1;
  v8 = v0[4];
  v9 = v0[5];
  LODWORD(v15[0]) = v6;
  v8(&v16, v15);
  v10 = v16;
  return v10 | ((v1 >= v2) << 8);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, int64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = *v6;
  v10 = &result[v9 + 32];
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = *(v9 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
    goto LABEL_25;
  }

  result = &v10[a3];
  v14 = (v9 + 32 + a2);
  if (&v10[a3] != v14 || result >= &v14[v13])
  {
    v16 = a3;
    v17 = a4;
    v18 = a6;
    v19 = a5;
    result = memmove(result, v14, v13);
    a5 = v19;
    a6 = v18;
    a4 = v17;
    a3 = v16;
  }

  v20 = *(v9 + 16);
  v12 = __OFADD__(v20, v8);
  v21 = v20 + v8;
  if (v12)
  {
    goto LABEL_26;
  }

  *(v9 + 16) = v21;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  v22 = *(a6 + 16);
  if (v22 <= a4 || v22 <= a5)
  {
    goto LABEL_27;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a5 < a4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a5 - a4 != a3)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  return memcpy(v10, (a6 + 32 + a4), a3);
}

char *specialized Array.replaceSubrange<A>(_:with:)(char *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = *(a5 + 16);
  if (v14 <= a3 || v14 <= a4)
  {
    goto LABEL_21;
  }

  v16 = __OFSUB__(a4 - a3, v10);
  v17 = a4 - a3 - v10;
  if (v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v8 + v17;
  if (__OFADD__(v8, v17))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v19 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v18 > *(v7 + 3) >> 1)
  {
    if (v8 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v7);
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, a4 - a3, a3, a4, a5);
  *v5 = v7;
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

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = &v8[a3];
  v12 = (v7 + 32 + a2);
  if (&v8[a3] != v12 || result >= &v12[v11])
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, v11);
    a4 = v15;
    a3 = v14;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) - 1 != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return memcpy(v8, (a4 + 32), a3);
}

char *specialized Array.replaceSubrange<A>(_:with:)(char *result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(a3 + 16);
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10 - 1;
  v12 = __OFSUB__(v10 - 1, v8);
  v13 = v10 - 1 - v8;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v6 + v13;
  if (__OFADD__(v6, v13))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v15 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v5 + 3) >> 1)
  {
    if (v6 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v11, a3);
  *v3 = v5;
  return result;
}

char *specialized FilePath.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[0] = *(AssociatedTypeWitness - 8);
  v13 = *(v32[0] + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v32 - v14;
  (*(v6 + 16))(v9, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v17 = v36;
  if (!v36)
  {
    return (*(v32[0] + 8))(v15, AssociatedTypeWitness);
  }

  v18 = v37;
  v19 = v38;
  v34 = AssociatedTypeWitness;
  v35 = v3;
  v32[1] = AssociatedConformanceWitness;
  v33 = v15;
  while (v18 == v19)
  {

LABEL_4:
    dispatch thunk of IteratorProtocol.next()();
    v17 = v36;
    v18 = v37;
    v19 = v38;
    if (!v36)
    {
      return (*(v32[0] + 8))(v15, AssociatedTypeWitness);
    }
  }

  v20 = *(*v3 + 2);
  result = (v20 - 1);
  if (v20 == 1)
  {
    goto LABEL_10;
  }

  if (v20 >= 2)
  {
    if ((*v3)[v20 + 30] != 47)
    {
      result = specialized Array.replaceSubrange<A>(_:with:)(result, v20 - 1, 47);
    }

LABEL_10:
    if (v18 < v19)
    {
      v22 = *(v17 + 16);
      v23 = *v3;
      if (v18 <= v22)
      {
        v24 = *(v17 + 16);
      }

      else
      {
        v24 = v18;
      }

      if (v18 <= (v22 - 1))
      {
        v25 = v22 - 1;
      }

      else
      {
        v25 = v18;
      }

      v26 = v18;
      while (v26 >= v18 && v26 < v19)
      {
        if (v26 < 0)
        {
          goto LABEL_33;
        }

        if (v24 == v26)
        {
          goto LABEL_34;
        }

        if (v26 >= *(v17 + 16))
        {
          goto LABEL_35;
        }

        if (v25 == v26)
        {
          goto LABEL_36;
        }

        v29 = *(v23 + 2);
        if (!v29)
        {
          goto LABEL_37;
        }

        v30 = *(v17 + 32 + v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v29 >= *(v23 + 3) >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v29 + 1, 1, v23);
        }

        v27 = v29 - 1;
        v28 = &v23[v29 - 1];
        result = memmove(v28 + 33, v28 + 32, *(v23 + 2) - v27);
        ++*(v23 + 2);
        v28[32] = v30;
        if (v19 == ++v26)
        {

          AssociatedTypeWitness = v34;
          v3 = v35;
          *v35 = v23;
          v15 = v33;
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for _RawBuffer.Storage()
{
  result = type metadata singleton initialization cache for _RawBuffer.Storage;
  if (!type metadata singleton initialization cache for _RawBuffer.Storage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _RawBuffer(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _RawBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

int64_t FilePath.Component._extensionRange()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  FilePath.Component.kind.getter();
  if (v4 != 2)
  {
    return 0;
  }

  v5 = specialized BidirectionalCollection<>.lastIndex(of:)(0x2Eu, v2, v3, v1);
  result = 0;
  if ((v7 & 1) == 0 && v5 != v2)
  {
    if (v5 < 0 || v5 >= *(v1 + 16) - 1)
    {
      __break(1u);
    }

    else if (v3 > v5)
    {
      return v5 + 1;
    }

    __break(1u);
  }

  return result;
}

void FilePath.Component.kind.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v0[1];
  if (v3 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v0[2];
  if (v2 <= v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of FilePath.Component.kind.getter, v0[1], v0[2], *v0) & 1) == 0)
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      if (v5 > v4)
      {
        specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #1 of FilePath.Component.kind.getter, v3, v4, v1);
        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FilePath.Root.CodingKeys()
{
  if (*v0)
  {
    result = 0x646E45746F6F725FLL;
  }

  else
  {
    result = 0x687461705FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FilePath.Root.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687461705FLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E45746F6F725FLL && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FilePath.Root.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.Root.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePath.Root.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePath.Root.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FilePath.Component.CodingKeys()
{
  if (*v0)
  {
    result = 0x65676E61725FLL;
  }

  else
  {
    result = 0x687461705FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FilePath.Component.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687461705FLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E61725FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FilePath.Component.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.Component.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int FilePath.Component.Kind.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](a1);
  return Hasher._finalize()();
}

uint64_t SystemString.appendComponents<A>(components:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v48 - v9;
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v48 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = swift_getAssociatedTypeWitness();
  v48 = *(v16 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - v18;
  dispatch thunk of Collection.indices.getter();
  v20 = v61;
  dispatch thunk of Sequence.makeIterator()();
  v21 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v19;
  v60 = v16;
  v57 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v23 = v62;
  v55 = *(v62 + 48);
  v56 = v62 + 48;
  if (v55(v20, 1, v21) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v59, v60);
    return $defer #1 <A>() in SystemString.appendComponents<A>(components:)(v4);
  }

  else
  {
    v25 = *(v23 + 32);
    v62 = v23 + 32;
    v53 = (v23 + 8);
    v54 = v25;
    v51 = a1;
    v52 = a2;
    v50 = a3;
    while (1)
    {
      v29 = v58;
      v54(v58, v20, v21);
      v30 = dispatch thunk of Collection.subscript.read();
      v33 = *v31;
      v32 = v31[1];
      v34 = v31[2];

      v30(v63, 0);
      v35 = v29;
      v36 = v21;
      result = (*v53)(v35, v21);
      v37 = v34 - v32;
      if (v34 != v32)
      {
        break;
      }

LABEL_15:

      v26 = *v4;
      v45 = *(*v4 + 16);
      if (!v45)
      {
        goto LABEL_20;
      }

      v46 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v45 >= *(v26 + 24) >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v45 + 1, 1, v26);
      }

      v21 = v36;
      v20 = v61;
      v27 = v45 - 1;
      v28 = v26 + v45 - 1;
      memmove((v28 + 33), (v28 + 32), *(v26 + 16) - v27);
      ++*(v26 + 16);
      *(v28 + 32) = 47;
      *v4 = v26;
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v20, 1, v36) == 1)
      {
        goto LABEL_2;
      }
    }

    v38 = (v33 + 32 + v32);
    v39 = v4;
    v40 = *v4;
    v41 = *(*v4 + 16);
    while (v41)
    {
      v43 = *v38;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      if (!v44 || v41 >= *(v40 + 24) >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v41 + 1, 1, v40);
      }

      v42 = v40 + v41 - 1;
      result = memmove((v42 + 33), (v42 + 32), *(v40 + 16) - (v41 - 1));
      v41 = *(v40 + 16) + 1;
      *(v40 + 16) = v41;
      *(v42 + 32) = v43;
      ++v38;
      if (!--v37)
      {
        v4 = v39;
        *v39 = v40;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t _StrSlice._withPlatformString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 40))(a3, a5);
  v11 = (*(a5 + 48))(a3, a5);
  Slice<>.withPlatformString<A>(_:)(a1, a2, v11, v12, v10, a4);
}

void specialized _StrSlice.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4 <= a3 || v4 <= a4)
  {
    goto LABEL_13;
  }

  v7 = a3;
  MEMORY[0x1E1279200](a4 - a3);
  if (a4 != v7)
  {
    if (a4 <= v7)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v9 = a2 + 32;
    while (v7 < a4)
    {
      Hasher._combine(_:)(*(v9 + v7++));
      if (a4 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

void specialized _StrSlice.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a3;
  if (*(a2 + 16) <= a3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  MEMORY[0x1E1279200](a3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v3;
    }

    while (v3);
  }
}

{
  v3 = *(a2 + 16);
  if (v3 <= a3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1E1279200](v3 - 1 - a3);
  if (v3 - 1 != a3)
  {
    if (v3 - 1 <= a3)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = ~a3 + v3;
    v7 = (a3 + a2 + 32);
    while (v6)
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t FilePath.Component.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy6System8FilePathV9ComponentV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMd, &_ss22KeyedEncodingContainerVy6System8FilePathV9ComponentV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v10;
  v17 = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

Swift::Int FilePath.Component.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t FilePath.Component.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy6System8FilePathV9ComponentV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMd, &_ss22KeyedDecodingContainerVy6System8FilePathV9ComponentV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v15 = 1;
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v14;
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for _StrSlice._range.getter in conformance FilePath.Component()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePath.Component()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePath.Component()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t FilePath.Root.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy6System8FilePathV4RootV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMd, &_ss22KeyedEncodingContainerVy6System8FilePathV4RootV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

Swift::Int FilePath.Root.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t FilePath.Root.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy6System8FilePathV4RootV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMd, &_ss22KeyedDecodingContainerVy6System8FilePathV4RootV10CodingKeys33_70C0EF22B766C75A2AC4DA6839A63A8BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14[15] = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v14[14] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for _StrSlice._range.getter in conformance FilePath.Root()
{
  if ((*(v0 + 8) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

Swift::Int FilePath.Root.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  SystemString._normalizeSeparators()();
  if (!SystemString._parseRoot()().relativeBegin)
  {
    goto LABEL_7;
  }

  result = SystemString._parseRoot()().rootEnd;
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    goto LABEL_3;
  }

  if (v4)
  {
    if ((*(a1 + 32) == 47) == v4 - 1)
    {
LABEL_3:
      relativeBegin = SystemString._parseRoot()().relativeBegin;

      if (relativeBegin)
      {
        v6 = SystemString._parseRoot()();
        result = v6.rootEnd;
        *a2 = a1;
        a2[1] = v6.relativeBegin;
        return result;
      }

      goto LABEL_9;
    }

LABEL_7:

    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePath.Root()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePath.Root()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t *protocol witness for static Equatable.== infix(_:_:) in conformance FilePath.Root(uint64_t *result, uint64_t *a2)
{
  v3 = result[1];
  v4 = a2[1];
  if (((v4 | v3) & 0x8000000000000000) == 0)
  {
    return specialized Sequence<>.elementsEqual<A>(_:)(0, v4, *a2, 0, v3, *result);
  }

  __break(1u);
  return result;
}

_DWORD *implicit closure #1 in _makeExtension(_:)@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result > 0x7Fu)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
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

unint64_t lazy protocol witness table accessor for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component.CodingKeys and conformance FilePath.Component.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath and conformance FilePath()
{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath and conformance FilePath;
  if (!lazy protocol witness table cache variable for type FilePath and conformance FilePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath and conformance FilePath);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

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

unint64_t lazy protocol witness table accessor for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root.CodingKeys and conformance FilePath.Root.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.Component.Kind and conformance FilePath.Component.Kind()
{
  result = lazy protocol witness table cache variable for type FilePath.Component.Kind and conformance FilePath.Component.Kind;
  if (!lazy protocol witness table cache variable for type FilePath.Component.Kind and conformance FilePath.Component.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component.Kind and conformance FilePath.Component.Kind);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FilePath.Component(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FilePath.Component and conformance FilePath.Component();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.Component and conformance FilePath.Component()
{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component;
  if (!lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Component and conformance FilePath.Component);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FilePath.Root(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FilePath.Root and conformance FilePath.Root();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.Root and conformance FilePath.Root()
{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root;
  if (!lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.Root and conformance FilePath.Root);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FilePath.Component(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FilePath.Root(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FilePath.Component(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilePath.Component.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FilePath.Component.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FilePath.Root.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilePath.Root.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(keepingCapacity:)(char a1)
{
  if (a1)
  {
    result = v1[1];
    v3 = *(*v1 + 16);
    if (v3 <= result)
    {
      __break(1u);
    }

    else
    {

      return specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(result, v3 - 1);
    }
  }

  else
  {
    v4 = *v1;

    *v1 = &outlined read-only object #0 of specialized RangeReplaceableCollection.removeAll(keepingCapacity:);
    v1[1] = 0;
  }

  return result;
}

char *specialized SystemString.appendComponents<A>(components:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = a3 - a2;
  if (a3 != a2)
  {
    v6 = &result[a2 + 32];
    v7 = *(v4 + 2);
    while (v7)
    {
      v9 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 >= *(v4 + 3) >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v7 + 1, 1, v4);
      }

      v8 = &v4[v7 - 1];
      result = memmove(v8 + 33, v8 + 32, *(v4 + 2) - (v7 - 1));
      v7 = *(v4 + 2) + 1;
      *(v4 + 2) = v7;
      v8[32] = v9;
      ++v6;
      if (!--v5)
      {
        *v3 = v4;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  v11 = *(v4 + 2);
  if (!v11)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  if ((v12 & 1) == 0 || v11 >= *(v4 + 3) >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12, v11 + 1, 1, v4);
  }

  v13 = v11 - 1;
  v14 = &v4[v11 - 1];
  memmove(v14 + 33, v14 + 32, *(v4 + 2) - v13);
  ++*(v4 + 2);
  v14[32] = 47;
  *v3 = v4;

  return $defer #1 <A>() in SystemString.appendComponents<A>(components:)(v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FilePath.ComponentView.CodingKeys()
{
  if (*v0)
  {
    result = 0x74726174735FLL;
  }

  else
  {
    result = 0x687461705FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FilePath.ComponentView.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x687461705FLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74726174735FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FilePath.ComponentView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FilePath.ComponentView.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t key path setter for FilePath.components : FilePath(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  v3 = FilePath.components.modify(v7);
  v5 = *v4;
  *v4 = v1;
  v4[1] = v2;

  return (v3)(v7, 0);
}

uint64_t (*FilePath.components.modify(unint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *v1;
  if (SystemString._parseRoot()().relativeBegin)
  {
    v5 = SystemString._parseRoot()();
    result = v5.rootEnd;
    if (v5.relativeBegin < 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    result = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v5.relativeBegin, v3);
  }

  else
  {
    result = &outlined read-only object #0 of FilePath.components.modify;
  }

  a1[3] = result;
  v6 = *v1;
  *a1 = *v1;
  v7 = *(v6 + 16);
  if (v7 == 1)
  {
    v8 = 0;
LABEL_9:
    a1[1] = v8;
    *v1 = &outlined read-only object #1 of FilePath.components.modify;
    return FilePath.components.modify;
  }

  if (v7)
  {
    v8 = *(v6 + 32) == 47;
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t FilePath.components.modify(uint64_t a1)
{
  $defer #1 () in FilePath.components.modify(*(a1 + 16), a1, *(a1 + 24));

  v2 = *a1;
}

Swift::Int $defer #1 () in FilePath.components.modify(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = *a1;
  if (!SystemString._parseRoot()().relativeBegin)
  {
    goto LABEL_4;
  }

  v8 = SystemString._parseRoot()();
  result = v8.rootEnd;
  if (v8.relativeBegin < 0)
  {
    __break(1u);
    return result;
  }

  result = specialized Sequence<>.elementsEqual<A>(_:)(a3, 0, v8.relativeBegin, v6);
  if ((result & 1) == 0)
  {
LABEL_4:

    FilePath.Root.init(_:)(v9, &v11);
    v10 = v11;
    return FilePath.root.setter(&v10);
  }

  return result;
}

Swift::Int FilePath.components.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  if (SystemString._parseRoot()().relativeBegin)
  {
    v6 = SystemString._parseRoot()();
    result = v6.rootEnd;
    if (v6.relativeBegin < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    v7 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v6.relativeBegin, v4);
  }

  else
  {
    v7 = &outlined read-only object #0 of FilePath.components.setter;
  }

  result = *v1;
  if (!*(*v1 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *v1 = &outlined read-only object #1 of FilePath.components.setter;
  v8[0] = v2;
  v8[1] = v3;
  $defer #1 () in FilePath.components.modify(v1, v8, v7);
}

Swift::Int FilePath.ComponentView.Index.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePath.ComponentView.Index()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePath.ComponentView.Index()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1279200](v1);
  return Hasher._finalize()();
}

uint64_t FilePath.ComponentView.index(after:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v6 = *v2;
  nextStart = FilePath._parseComponent(startingAt:)(*a1).nextStart;

  *a2 = nextStart;
  return result;
}

uint64_t FilePath.ComponentView.index(before:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v7 = *v2;

  v5 = FilePath._parseComponent(priorTo:)(v4);

  *a2 = v5;
  return result;
}

uint64_t FilePath.ComponentView.subscript.getter@<X0>(Swift::Int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  componentEnd = FilePath._parseComponent(startingAt:)(*a1).componentEnd;

  if (componentEnd < v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = componentEnd;
  if (v4 == componentEnd)
  {
LABEL_7:
    __break(1u);
    return result;
  }
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance FilePath.ComponentView@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v7 = *v2;

  v5 = FilePath._parseComponent(priorTo:)(v4);

  *a2 = v5;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance FilePath.ComponentView(uint64_t *a1)
{
  v3 = *a1;
  v6 = *v1;

  v4 = FilePath._parseComponent(priorTo:)(v3);

  *a1 = v4;
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = result;
  if (a2 < 0)
  {
    v11 = 0;
    do
    {
      --v11;

      v5 = FilePath._parseComponent(priorTo:)(v5);
    }

    while (v11 > a2);
    goto LABEL_20;
  }

  if (!a2)
  {
LABEL_20:
    *a4 = v5;
    return result;
  }

  v7 = 0;
  v8 = *(a3 + 16);
  while (1)
  {
    ++v7;
    if (!v5 && v8 != 1)
    {
      if (!v8)
      {
        goto LABEL_23;
      }

      if (*(a3 + 32) == 47)
      {
        v5 = 1;
        goto LABEL_5;
      }
    }

    if (v8 <= v5 || !v8)
    {
      break;
    }

    if (v5 < 0)
    {
      goto LABEL_22;
    }

    if (v5 != v8 - 1)
    {
      v9 = (a3 + 32 + v5++);
      while (1)
      {
        v10 = *v9++;
        if (v10 == 47)
        {
          break;
        }

        if (v8 == ++v5)
        {
          v5 = v8 - 1;
          break;
        }
      }
    }

LABEL_5:
    if (v7 >= a2)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      v13 = v7 == a3;
      if (v7 == a3)
      {
        break;
      }

      --v14;

      v7 = FilePath._parseComponent(priorTo:)(v7);

      if (v14 <= a2)
      {
        goto LABEL_28;
      }
    }

    v7 = 0;
LABEL_28:
    *a5 = v7;
    *(a5 + 8) = v13;
    return result;
  }

  if (!a2)
  {
LABEL_26:
    v13 = 0;
    goto LABEL_28;
  }

  if (result == a3)
  {
LABEL_21:
    v7 = 0;
    v13 = 1;
    goto LABEL_28;
  }

  v9 = *(a4 + 16);
  v10 = 1;
  while (1)
  {
    if (!v7 && v9 != 1)
    {
      if (!v9)
      {
        goto LABEL_32;
      }

      if (*(a4 + 32) == 47)
      {
        if (v10 >= a2)
        {
          v13 = 0;
          v7 = 1;
          goto LABEL_28;
        }

        v7 = 1;
        goto LABEL_20;
      }
    }

    if (v9 <= v7 || !v9)
    {
      break;
    }

    if (v7 < 0)
    {
      goto LABEL_31;
    }

    if (v7 != v9 - 1)
    {
      v11 = (a4 + 32 + v7++);
      while (1)
      {
        v12 = *v11++;
        if (v12 == 47)
        {
          break;
        }

        if (v9 == ++v7)
        {
          v7 = v9 - 1;
          break;
        }
      }
    }

    if (v10 >= a2)
    {
      goto LABEL_26;
    }

LABEL_20:
    ++v10;
    if (v7 == a3)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance FilePath.ComponentView@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = v2[1];
  v6 = *(*v2 + 16);
  if (v6 <= v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *a1;
  if (*a1 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[1];
  if (v6 > v8)
  {
    a2[2] = result;
    a2[3] = v5;
    *a2 = v7;
    a2[1] = v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance FilePath.ComponentView@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16) - 1;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FilePath.ComponentView(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FilePath.ComponentView(void *result, void *a2)
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

uint64_t protocol witness for Collection.index(after:) in conformance FilePath.ComponentView@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v6 = *v2;
  nextStart = FilePath._parseComponent(startingAt:)(*a1).nextStart;

  *a2 = nextStart;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance FilePath.ComponentView()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1]);

  return v1;
}

uint64_t specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16) - 1;
  if (v2[1] == v4)
  {
    v5 = *v2;
    if (SystemString._parseRoot()().relativeBegin)
    {
      relativeBegin = SystemString._parseRoot()().relativeBegin;
    }

    else
    {
      v3 = 0;
      relativeBegin = 0;
    }

    _s6System8FilePathV4root_A2C4RootVSg_xtcSlRzAC9ComponentV7ElementRtzlufCs15EmptyCollectionVyAIG_Tt2B5(v3, relativeBegin, &v13);
    v11 = v13;
    v12 = *v2;

    *v2 = v11;
    return result;
  }

  if (a2 < result)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = specialized Array.replaceSubrange<A>(_:with:)(result, a2);
  if (v4 != a2)
  {
    return result;
  }

  v8 = *v2;
  v9 = SystemString._parseRoot()();
  result = v9.rootEnd;
  if (v9.relativeBegin == *(v8 + 16) - 1)
  {
    return result;
  }

  result = specialized BidirectionalCollection.last.getter(v8);
  if ((result & 0x100) != 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (result != 47)
  {
    return result;
  }

  v10 = *(v8 + 16);
  if (v10 == 1)
  {
    goto LABEL_18;
  }

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return specialized RangeReplaceableCollection.remove(at:)((v10 - 2));
}

uint64_t specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = *MEMORY[0x1E69E9840];
  v10 = *v5;
  if (v6[1] == *(v10 + 16) - 1)
  {
    if (!SystemString._parseRoot()().relativeBegin)
    {
      v22 = &outlined read-only object #0 of specialized FilePath.ComponentView.replaceSubrange<A>(_:with:);

      goto LABEL_15;
    }

    relativeBegin = SystemString._parseRoot()().relativeBegin;

    if ((relativeBegin & 0x8000000000000000) == 0)
    {

      v22 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, relativeBegin, v10);
LABEL_15:
      specialized SystemString.appendComponents<A>(components:)(a3, a4, a5);

      SystemString._normalizeSeparators()();
      v20 = *v6;

      *v6 = v22;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a2 < a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAD5C620;
  *(inited + 32) = 0;
  v23 = inited;
  if ((*(v10 + 16) - 1) == a1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, 47);
    specialized SystemString.appendComponents<A>(components:)(a3, a4, a5);
    v16 = v15;
  }

  else
  {
    specialized SystemString.appendComponents<A>(components:)(a3, a4, a5);
    v16 = v23;
    v17 = *(v23 + 16);
    if (!v17)
    {
      goto LABEL_19;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v17 >= *(v23 + 24) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v23);
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)((v17 - 1), v17 - 1, 1, 47);
  }

  specialized Array.replaceSubrange<A>(_:with:)(a1, a2, v16);

LABEL_16:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FilePath.ComponentView.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35[7] = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  if (v5[1] == *(*v5 + 16) - 1)
  {
    v15 = *v5;
    if (SystemString._parseRoot()().relativeBegin)
    {
      relativeBegin = SystemString._parseRoot()().relativeBegin;
    }

    else
    {
      v14 = 0;
      relativeBegin = 0;
    }

    v35[0] = v14;
    v35[1] = relativeBegin;
    (*(v9 + 16))(v13, a2, a3);
    FilePath.init<A>(root:_:)(v35, v13, a3, a4, &v34);
    v28 = v34;
    v29 = *v5;

    *v5 = v28;
    goto LABEL_25;
  }

  v18 = *v11;
  v17 = *(v11 + 8);
  if (v17 < *v11)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System0D4CharVGMd, &_ss23_ContiguousArrayStorageCy6System0D4CharVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAD5C620;
    *(inited + 32) = 0;
    v35[0] = inited;
    if (v18 == (*(v14 + 16) - 1))
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
      v35[0] = v26;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, 47);
      v35[0] = v26;
      SystemString.appendComponents<A>(components:)(a2, a3, a4);
      v27 = v35[0];
LABEL_24:
      specialized Array.replaceSubrange<A>(_:with:)(v18, v17, v27);

      goto LABEL_25;
    }

    SystemString.appendComponents<A>(components:)(a2, a3, a4);
    v27 = v35[0];
    v30 = *(v35[0] + 16);
    if (v30)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v30 >= *(v27 + 3) >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30 + 1, 1, v27);
        v35[0] = v27;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)((v30 - 1), v30 - 1, 1, 47);
      v35[0] = v27;
      goto LABEL_24;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(v14 + 16) - 1;
  result = specialized Array.replaceSubrange<A>(_:with:)(v18, v17);
  if (v17 != v19)
  {
    goto LABEL_25;
  }

  v21 = *v5;
  v22 = SystemString._parseRoot()();
  result = v22.rootEnd;
  if (v22.relativeBegin == *(v21 + 16) - 1)
  {
    goto LABEL_25;
  }

  result = specialized BidirectionalCollection.last.getter(v21);
  if ((result & 0x100) != 0)
  {
    __break(1u);
    return result;
  }

  if (result != 47)
  {
LABEL_25:
    v32 = *MEMORY[0x1E69E9840];
    return result;
  }

  v23 = *(v21 + 16);
  if (v23 == 1)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = *MEMORY[0x1E69E9840];

  return specialized RangeReplaceableCollection.remove(at:)((v23 - 2));
}

void _s6System8FilePathV4root_A2C4RootVSg_xtcSlRzAC9ComponentV7ElementRtzlufCs15EmptyCollectionVyAIG_Tt2B5(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v4 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, a2, a1);
  }

  else
  {
    v4 = &_s6System8FilePathV4root_A2C4RootVSg_xtcSlRzAC9ComponentV7ElementRtzlufCs15EmptyCollectionVyAIG_Tt2B5Tv_r;
  }

  v5 = SystemString._parseRoot()();
  v6 = v4[2];
  if (v5.relativeBegin == v6 - 1)
  {
LABEL_11:

    SystemString._normalizeSeparators()();

    SystemString._normalizeSeparators()();
    *a3 = v4;
    return;
  }

  v7 = specialized BidirectionalCollection.last.getter(v4);
  if ((v7 & 0x100) == 0)
  {
    if (v7 == 47)
    {
      if (v6 != 1)
      {
        if (v6 >= 2)
        {
          specialized RangeReplaceableCollection.remove(at:)((v6 - 2));
          goto LABEL_11;
        }

        goto LABEL_14;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

unint64_t *FilePath.init<A>(root:_:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!*result)
  {
    v10 = &outlined read-only object #0 of FilePath.init<A>(root:_:);
    goto LABEL_5;
  }

  v9 = result[1];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v9, *result);
LABEL_5:
    v11 = v10;
    SystemString.appendComponents<A>(components:)(a2, a3, a4);
    SystemString._normalizeSeparators()();
    result = (*(*(a3 - 8) + 8))(a2, a3);
    *a5 = v11;
    return result;
  }

  __break(1u);
  return result;
}

BOOL protocol witness for RangeReplaceableCollection.init() in conformance FilePath.ComponentView@<W0>(void *a1@<X8>)
{
  result = FilePath._relativeStart.getter();
  *a1 = &outlined read-only object #0 of protocol witness for RangeReplaceableCollection.init() in conformance FilePath.ComponentView;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance FilePath.ComponentView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FilePath.ComponentView.replaceSubrange<A>(_:with:)(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance FilePath.ComponentView(uint64_t a1)
{
  specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)((*(*v1 + 16) - 1), *(*v1 + 16) - 1, *a1, *(a1 + 8), *(a1 + 16));
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance FilePath.ComponentView(uint64_t a1, char **a2)
{
  specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(*a2, *a2, *a1, *(a1 + 8), *(a1 + 16));
}

void protocol witness for RangeReplaceableCollection._customRemoveLast() in conformance FilePath.ComponentView(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1[1];
  result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(v2, result, *(*v1 + 16) - 1, *v1, &v4);
  if (v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = v4;
  if (v4 < v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)(v2, v3);
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(char **))
{
  v4 = *v1;
  v5 = v1[1];
  v6 = &outlined read-only object #0 of specialized RangeReplaceableCollection.removeAll(where:);
  v18 = &outlined read-only object #0 of specialized RangeReplaceableCollection.removeAll(where:);
  v19 = 0;
  v7 = *(v4 + 16) - 1;

  if (v5 == v7)
  {
    v8 = 0;
    v9 = v20;
LABEL_12:

    *v9 = v6;
    v9[1] = v8;
  }

  else
  {
    while (1)
    {
      v15 = v4;
      componentEnd = FilePath._parseComponent(startingAt:)(v5).componentEnd;

      if (componentEnd < v5)
      {
        break;
      }

      if (v5 == componentEnd)
      {
        goto LABEL_14;
      }

      v15 = v4;
      nextStart = FilePath._parseComponent(startingAt:)(v5).nextStart;
      swift_bridgeObjectRetain_n();

      v15 = v4;
      v16 = v5;
      v17 = componentEnd;
      v13 = a1(&v15);
      if (v2)
      {
      }

      if ((v13 & 1) == 0)
      {
        specialized FilePath.ComponentView.replaceSubrange<A>(_:with:)((v18[2] - 1), v18[2] - 1, v15, v16, v17);
      }

      v5 = nextStart;
      if (nextStart == v7)
      {
        v9 = v20;
        v14 = *v20;
        v6 = v18;
        v8 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

void FilePath.init(root:_:)(unint64_t *a1@<X0>, int64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (!*a1)
  {
    v9 = &outlined read-only object #0 of FilePath.init(root:_:);
LABEL_5:
    v12 = v9;
    v10 = *(v7 + 16);
    if (v5 < v4 || v10 <= v6)
    {
      __break(1u);
    }

    else if (v4 >= v6)
    {
      if (v10 > v5)
      {
        specialized RangeReplaceableCollection.append<A>(contentsOf:)(v4, v5, v7);
        SystemString._normalizeSeparators()();
        *a3 = v12;
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = a1[1];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = _s6System0A6StringVyACxcSlRzAA0A4CharV7ElementRtzlufCs5SliceVyACG_Tt0g5(0, v8, *a1);
    goto LABEL_5;
  }

LABEL_15:
  __break(1u);
}

uint64_t FilePath.ComponentView.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy6System8FilePathV13ComponentViewV10CodingKeys33_F5740257EA6CC2A0DB65C60FBAC2721DLLOGMd, &_ss22KeyedEncodingContainerVy6System8FilePathV13ComponentViewV10CodingKeys33_F5740257EA6CC2A0DB65C60FBAC2721DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

Swift::Int FilePath.ComponentView.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t FilePath.ComponentView.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy6System8FilePathV13ComponentViewV10CodingKeys33_F5740257EA6CC2A0DB65C60FBAC2721DLLOGMd, &_ss22KeyedDecodingContainerVy6System8FilePathV13ComponentViewV10CodingKeys33_F5740257EA6CC2A0DB65C60FBAC2721DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14[15] = 0;
  lazy protocol witness table accessor for type FilePath and conformance FilePath();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v14[14] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for _StrSlice._range.getter in conformance FilePath.ComponentView()
{
  result = v0[1];
  if (*(*v0 + 16) <= result)
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePath.ComponentView()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePath.ComponentView()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized _StrSlice.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t *protocol witness for static Equatable.== infix(_:_:) in conformance FilePath.ComponentView(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(*result + 16);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    result = a2[1];
    v5 = *(*a2 + 16);
    if (v5 > result)
    {
      return specialized Sequence<>.elementsEqual<A>(_:)(result, v5 - 1, *a2, v2, v4 - 1, v3);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.CodingKeys and conformance FilePath.ComponentView.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index()
{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView.Index and conformance FilePath.ComponentView.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView()
{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView;
  if (!lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePath.ComponentView and conformance FilePath.ComponentView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<FilePath.ComponentView> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<FilePath.ComponentView> and conformance DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type Slice<FilePath.ComponentView> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<FilePath.ComponentView> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<FilePath.ComponentView> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy6System8FilePathV13ComponentViewVGMd, &_ss5SliceVy6System8FilePathV13ComponentViewVGMR);
    lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<FilePath.ComponentView> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FilePath.ComponentView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for FilePath.ComponentView(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
  a1[2] = lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
  result = lazy protocol witness table accessor for type FilePath.ComponentView and conformance FilePath.ComponentView();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FilePath.ComponentView.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FilePath.ComponentView.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t Sequence._withRawBufferPointer<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v29 = *(a3 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v32 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Optional();
  v30 = *(v28 - 8);
  v14 = *(v30 + 64);
  v15 = MEMORY[0x1EEE9AC00](v28);
  v17 = v27 - v16;
  v31 = *(a4 - 8);
  v18 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a1;
  v38 = a2;
  v21 = v39;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (!v21)
  {
    v27[1] = a5;
    v27[2] = a1;
    v23 = v32;
    v27[3] = a2;
    v39 = 0;
    v24 = v30;
    v25 = v31;
    if ((*(v31 + 48))(v17, 1, a4) == 1)
    {
      (*(v24 + 8))(v17, v28);
      (*(v29 + 16))(v23, v6, a3);
      swift_getAssociatedTypeWitness();
      Array.init<A>(_:)();
      Array.withUnsafeBytes<A>(_:)();
    }

    else
    {
      v26 = *(v25 + 32);
      v26(v20, v17, a4);
      return (v26)(v33, v20, a4);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in Sequence._withRawBufferPointer<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1E1278F30](a1, a2, AssociatedTypeWitness);
  return v7(v10);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FilePermissions()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FilePermissions()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance FilePermissions(_WORD *a1, unsigned __int16 *a2)
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

unsigned __int16 *protocol witness for SetAlgebra.remove(_:) in conformance FilePermissions@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
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

unsigned __int16 *protocol witness for SetAlgebra.update(with:) in conformance FilePermissions@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance FilePermissions@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance FilePermissions@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type FilePermissions and conformance FilePermissions()
{
  result = lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions;
  if (!lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions;
  if (!lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions;
  if (!lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions;
  if (!lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilePermissions and conformance FilePermissions);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t FileDescriptor.closeAfter<A>(_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10();
  if (v4)
  {
    if (close(a2) == -1)
    {
      v16[3] = MEMORY[0x1E1278E40]();
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_willThrowTypedImpl();
    }

    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(a4, v12, a3);
    result = close(a2);
    if (result == -1)
    {
      v14 = MEMORY[0x1E1278E40]();
      v16[2] = v14;
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v15 = v14;
      return (*(v8 + 8))(a4, a3);
    }
  }

  return result;
}

uint64_t FileDescriptor._writeAll<A>(_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySi6System5ErrnoVGMd, &_ss6ResultOySi6System5ErrnoVGMR);
  Sequence._withRawBufferPointer<A>(_:)(partial apply for closure #1 in FileDescriptor._writeAll<A>(_:), v8, a3, v6, a4, &v9);
  return v9;
}

ssize_t closure #1 in FileDescriptor._writeAll<A>(_:)@<X0>(int __fd@<W2>, ssize_t result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = 0;
  v8 = a3 - result;
  while (2)
  {
    if (v5)
    {
      v9 = v8 - v7;
      if (v8 > v7)
      {
        v10 = (v7 + v5);
        goto LABEL_7;
      }

      v12 = 0;
    }

    else
    {
      v10 = 0;
      if (v7 < 0)
      {
        v9 = 0;
LABEL_7:
        while (1)
        {
          result = write(__fd, v10, v9);
          if (result != -1)
          {
            break;
          }

          result = MEMORY[0x1E1278E40]();
          if (result != 4)
          {
            goto LABEL_13;
          }
        }

        v11 = __OFADD__(v7, result);
        v7 += result;
        if (!v11)
        {
          continue;
        }

        __break(1u);
LABEL_13:
        v8 = result;
        v12 = 1;
      }

      else
      {
        v12 = 0;
        v8 = 0;
      }
    }

    break;
  }

  *a4 = v8;
  *(a4 + 8) = v12;
  return result;
}