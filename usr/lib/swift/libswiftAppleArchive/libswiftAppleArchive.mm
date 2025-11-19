uint64_t _s12AppleArchive0B6HeaderCSlAASl8endIndex0E0QzvgTW_0@<X0>(void *a1@<X8>)
{
  result = AAHeaderGetFieldCount(*(*v1 + 16));
  *a1 = result;
  return result;
}

uint64_t _s12AppleArchive0B6HeaderCSlAASl7indices7IndicesQzvgTW_0@<X0>(void *a1@<X8>)
{
  result = AAHeaderGetFieldCount(*(*v1 + 16));
  *a1 = 0;
  a1[1] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveEncryptionContext.Profile(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ArchiveEncryptionContext.Profile(uint64_t result, int a2, int a3)
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

uint64_t sub_299A22378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = result == 0;
  return result;
}

uint64_t sub_299A223E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 2);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = result == 0;
  return result;
}

uint64_t sub_299A22448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 3);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = result == 0;
  return result;
}

uint64_t sub_299A224B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = result == 0;
  return result;
}

uint64_t sub_299A22518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 56);
  }

  else
  {
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = result == 0;
  return result;
}

uint64_t sub_299A22580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = result == 0;
  return result;
}

uint64_t sub_299A225E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_getter(*v3);
  if (result)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = result == 0;
  return result;
}

double sub_299A22690@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  ArchiveHeader.EntryXATBlob._attribute(at:)(*a2, &v6);
  *a3 = v6;
  result = *&v7;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_299A226D8(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  return ArchiveHeader.EntryXATBlob._set(at:attribute:)(v3, &v6);
}

uint64_t sub_299A22788@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AEAContextGetPaddingSize(*(*a1 + 16));
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_299A227C4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = AEAContextGetChecksumMode(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_299A22824@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = AEAContextGetCompressionAlgorithm(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_299A22884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AEAContextGetCompressionBlockSize(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_299A2290C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  outlined copy of Data?(*a1, v3);
  return ArchiveEncryptionContext.authData.setter(v2, v3);
}

uint64_t ArchiveHeader.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = AAHeaderCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.init()()
{
  v1 = AAHeaderCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.__allocating_init(keySet:directory:path:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = swift_allocObject();
  v12 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();

  v8 = type metadata accessor for FilePath();
  if (v13)
  {
    v9 = *(*(v8 - 8) + 8);
    v9(a2, v8);
    *(v7 + 16) = v13;
    *(v7 + 24) = 1;
    v9(a3, v8);
  }

  else
  {
    v10 = *(*(v8 - 8) + 8);
    v10(a2, v8);
    v10(a3, v8);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

uint64_t ArchiveHeader.init(keySet:directory:path:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v12 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();

  v8 = type metadata accessor for FilePath();
  if (v13)
  {
    v9 = *(*(v8 - 8) + 8);
    v9(a2, v8);
    *(v5 + 16) = v13;
    *(v5 + 24) = 1;
    v9(a3, v8);
  }

  else
  {
    v10 = *(*(v8 - 8) + 8);
    v10(a2, v8);
    v10(a3, v8);
    type metadata accessor for ArchiveHeader();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t partial apply for closure #1 in ArchiveHeader.init(keySet:directory:path:flags:)()
{
  return partial apply for closure #1 in ArchiveHeader.init(keySet:directory:path:flags:)();
}

{
  v1 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  return FilePath.withCString<A>(_:)();
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

uint64_t type metadata accessor for ArchiveHeader()
{
  result = type metadata singleton initialization cache for ArchiveHeader;
  if (!type metadata singleton initialization cache for ArchiveHeader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArchiveHeader.__allocating_init(copying:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = AAHeaderClone(*(a1 + 16));
  if (v3)
  {
    v4 = v3;

    *(v2 + 16) = v4;
    *(v2 + 24) = 1;
    return v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.init(copying:)(uint64_t a1)
{
  v2 = AAHeaderClone(*(a1 + 16));
  if (v2)
  {
    v3 = v2;

    *(v1 + 16) = v3;
    *(v1 + 24) = 1;
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unsigned int ArchiveHeader.field(forKey:)@<W0>(AAFieldKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = AAHeaderGetKeyIndex(*(v2 + 16), v4);
  if ((result & 0x80000000) != 0)
  {
    v7 = 0;
    v6 = 0uLL;
    v8 = -1;
  }

  else
  {
    result = ArchiveHeader._field(at:)(result, &v9).ikey;
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

AAFieldKey ArchiveHeader._field(at:)@<W0>(unint64_t i@<X0>, uint64_t a2@<X8>)
{
  offset[1] = *MEMORY[0x29EDCA608];
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(i))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v2 + 16);
  FieldType = AAHeaderGetFieldType(v5, i);
  if (FieldType < 0)
  {
    goto LABEL_47;
  }

  v7 = FieldType;
  result = AAHeaderGetFieldKey(v5, i);
  if ((result.ikey << 8) >> 24 < 32 || HIBYTE(result.ikey) != 0)
  {
    goto LABEL_47;
  }

  v10 = result;
  if (result.skey[0] < 32 || *result.skey >> 8 <= 31)
  {
    goto LABEL_47;
  }

  if (v7 <= 2)
  {
    if (!v7)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = result.ikey;
      *(a2 + 24) = 0;
LABEL_34:
      v22 = *MEMORY[0x29EDCA608];
      return result;
    }

    if (v7 == 1)
    {
      value[0] = 0;
      result.ikey = AAHeaderGetFieldUInt(v5, i, value);
      if ((result.ikey & 0x80000000) == 0)
      {
        v12 = value[0];
        *a2 = v10.ikey;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        v13 = 1;
LABEL_33:
        *(a2 + 24) = v13;
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    if (v7 != 2)
    {
      goto LABEL_47;
    }

    value[0] = 0;
    if (AAHeaderGetFieldString(v5, i, 0, 0, value) < 0)
    {
      goto LABEL_47;
    }

    if (!__OFADD__(value[0], 1))
    {
      v15 = swift_slowAlloc();
      if (!__OFADD__(value[0], 1))
      {
        v16 = v15;
        if ((AAHeaderGetFieldString(v5, i, value[0] + 1, v15, 0) & 0x80000000) == 0)
        {
          v17 = String.init(cString:)();
          v19 = v18;
          result.ikey = MEMORY[0x29C2A93A0](v16, -1, -1);
          *a2 = v10.ikey;
          *(a2 + 8) = v17;
          *(a2 + 16) = v19;
          v13 = 2;
          goto LABEL_33;
        }

        MEMORY[0x29C2A93A0](v16, -1, -1);
        goto LABEL_47;
      }

LABEL_38:
      __break(1u);
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  switch(v7)
  {
    case 3:
      LODWORD(value[0]) = 0;

      v14 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5UInt8V_Tt1g5056_s12AppleArchive0B6HeaderC6_field2atAC5FieldOSi_tFySrys5F13VGz_SiztXEfU_0H7Archive0vK0CSis6UInt32VTf1nc_nTf4ngnn_n(0x40uLL, v2, i, value);

      *a2 = v10.ikey | (LODWORD(value[0]) << 32);
      *(a2 + 8) = v14;
      *(a2 + 16) = 0;
      v13 = 3;
      goto LABEL_33;
    case 4:
      value[0] = 0;
      value[1] = 0;
      result.ikey = AAHeaderGetFieldTimespec(v5, i, value);
      if ((result.ikey & 0x80000000) == 0)
      {
        *a2 = v10.ikey;
        *(a2 + 8) = *value;
        v13 = 4;
        goto LABEL_33;
      }

      break;
    case 5:
      value[0] = 0;
      offset[0] = 0;
      result.ikey = AAHeaderGetFieldBlob(v5, i, value, offset);
      if ((result.ikey & 0x80000000) == 0)
      {
        v20 = value[0];
        v21 = offset[0];
        *a2 = v10.ikey;
        *(a2 + 8) = v20;
        *(a2 + 16) = v21;
        v13 = 5;
        goto LABEL_33;
      }

      break;
  }

LABEL_47:
  result.ikey = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader._append(_:)(uint64_t *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v10.ikey = *a1;
      result = AAHeaderSetFieldHash(*(v1 + 16), 0xFFFFFFFF, v10, HIDWORD(v3), (v2 + 32));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v5 == 4)
    {
      value.tv_sec = a1[1];
      value.tv_nsec = v4;
      v8.ikey = v3;
      result = AAHeaderSetFieldTimespec(*(v1 + 16), 0xFFFFFFFF, v8, &value);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v15.ikey = *a1;
    result = AAHeaderSetFieldBlob(*(v1 + 16), 0xFFFFFFFF, v15, v2);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!*(a1 + 24))
  {
    v9.ikey = *a1;
    result = AAHeaderSetFieldFlag(*(v1 + 16), 0xFFFFFFFF, v9);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v5 == 1)
  {
    v6.ikey = *a1;
    result = AAHeaderSetFieldUInt(*(v1 + 16), 0xFFFFFFFF, v6, v2);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v16 = *MEMORY[0x29EDCA608];
    return result;
  }

  v11 = a1[1];
  v12 = String.utf8CString.getter();
  v13.ikey = v3;
  if (AAHeaderSetFieldString(*(v1 + 16), 0xFFFFFFFF, v13, (v12 + 32), *(v12 + 16) - 1) < 0)
  {
    goto LABEL_20;
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t ArchiveHeader._set(at:field:)(unint64_t i, uint64_t *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        value.tv_sec = v5;
        value.tv_nsec = v7;
        if ((i & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(i))
          {
            v11.ikey = v6;
            result = AAHeaderSetFieldTimespec(*(v2 + 16), i, v11, &value);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            goto LABEL_31;
          }

          goto LABEL_41;
        }

        goto LABEL_35;
      }

      if ((i & 0x8000000000000000) != 0)
      {
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
        goto LABEL_42;
      }

      if (HIDWORD(i))
      {
        goto LABEL_43;
      }

      v17.ikey = v6;
      result = AAHeaderSetFieldBlob(*(v2 + 16), i, v17, v5);
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    if ((i & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(i))
      {
        v13.ikey = v6;
        result = AAHeaderSetFieldHash(*(v2 + 16), i, v13, HIDWORD(v6), (v5 + 32));
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_31;
      }

      goto LABEL_39;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v8)
  {
    if ((i & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(i))
      {
        v12.ikey = v6;
        result = AAHeaderSetFieldFlag(*(v2 + 16), i, v12);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_31;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v8 == 1)
  {
    if ((i & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(i))
      {
        v9.ikey = v6;
        result = AAHeaderSetFieldUInt(*(v2 + 16), i, v9, v5);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_44;
        }

LABEL_31:
        v18 = *MEMORY[0x29EDCA608];
        return result;
      }

      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v14 = String.utf8CString.getter();
  if ((i & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(i))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v15.ikey = v6;
  if (AAHeaderSetFieldString(*(v2 + 16), i, v15, (v14 + 32), *(v14 + 16) - 1) < 0)
  {
LABEL_44:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t ArchiveHeader.__allocating_init(withAAEncodedData:)(const uint8_t *a1, size_t a2)
{
  result = swift_allocObject();
  if (a1)
  {
    v5 = result;
    v6 = AAHeaderCreateWithEncodedData(a2, a1);
    if (v6)
    {
      *(v5 + 16) = v6;
      *(v5 + 24) = 1;
    }

    else
    {
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const uint8_t *ArchiveHeader.init(withAAEncodedData:)(const uint8_t *data, size_t data_size)
{
  if (data)
  {
    v3 = AAHeaderCreateWithEncodedData(data_size, data);
    if (v3)
    {
      *(v2 + 16) = v3;
      *(v2 + 24) = 1;
    }

    else
    {
      type metadata accessor for ArchiveHeader();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return data;
}

uint64_t ArchiveHeader.withAAEncodedData<A>(_:)(uint64_t (*a1)(const uint8_t *, size_t))
{
  v3 = *(v1 + 16);
  EncodedSize = AAHeaderGetEncodedSize(v3);
  EncodedData = AAHeaderGetEncodedData(v3);
  return a1(EncodedData, EncodedSize);
}

uint64_t ArchiveHeader.deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAHeaderDestroy(*(v0 + 16));
  }

  return v0;
}

uint64_t ArchiveHeader.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAHeaderDestroy(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _AAEncodableProtocol.init(withAAEncodedData:) in conformance ArchiveHeader@<X0>(const uint8_t *a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArchiveHeader();
  result = swift_allocObject();
  if (a1)
  {
    v7 = result;
    result = AAHeaderCreateWithEncodedData(a2, a1);
    if (result)
    {
      *(v7 + 16) = result;
      *(v7 + 24) = 1;
    }

    else
    {
      result = swift_deallocPartialClassInstance();
      v7 = 0;
    }

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double key path getter for ArchiveHeader.subscript(_:) : ArchiveHeader@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  ArchiveHeader._field(at:)(*a2, &v8);
  v5 = v9;
  v6 = v10;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t key path setter for ArchiveHeader.subscript(_:) : ArchiveHeader(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *a2;
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  return ArchiveHeader._set(at:field:)(v3, &v8);
}

uint64_t ArchiveHeader.subscript.setter(uint64_t a1, unint64_t i)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7[0] = *a1;
  v2 = v7[0];
  v7[1] = v3;
  v7[2] = v4;
  v8 = v5;
  ArchiveHeader._set(at:field:)(i, v7);

  return outlined consume of ArchiveHeader.Field(v2, v3, v4, v5);
}

uint64_t outlined consume of ArchiveHeader.Field(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

void (*ArchiveHeader.subscript.modify(uint64_t *a1, unint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  ArchiveHeader._field(at:)(a2, v5);
  return ArchiveHeader.subscript.modify;
}

void ArchiveHeader.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = *(*a1 + 24);
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v13[0] = v4;
  v13[1] = v3;
  v13[2] = v5;
  v14 = v6;
  if (a2)
  {
    outlined copy of ArchiveHeader.Field(v4, v3, v5, v6);
    ArchiveHeader._set(at:field:)(v8, v13);
    outlined consume of ArchiveHeader.Field(v4, v3, v5, v6);
    v9 = *v2;
    v10 = v2[1];
    v11 = v2[2];
    v12 = *(v2 + 24);
  }

  else
  {
    ArchiveHeader._set(at:field:)(v8, v13);
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
  }

  outlined consume of ArchiveHeader.Field(v9, v10, v11, v12);

  free(v2);
}

uint64_t outlined copy of ArchiveHeader.Field(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

Swift::Void __swiftcall ArchiveHeader.removeAll()()
{
  if (AAHeaderClear(*(v0 + 16)))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t ArchiveHeader.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ArchiveHeader._field(at:)(a1, &v9);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(a1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v9;
  v5 = v10;
  v6 = v11;
  result = AAHeaderRemoveField(*(v2 + 16), a1);
  if (!result)
  {
    *a2 = v8;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    return result;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.append(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return ArchiveHeader._append(_:)(&v4);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArchiveHeader(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10[0] = *a1;
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v11 = v8;
  ArchiveHeader._set(at:field:)(v3, v10);

  return outlined consume of ArchiveHeader.Field(v5, v6, v7, v8);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader(uint64_t *a1, unint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v6 + 32) = *a2;
  *(v6 + 40) = *v2;
  ArchiveHeader._field(at:)(v7, v6);
  return ArchiveHeader.subscript.modify;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArchiveHeader(uint64_t a1, uint64_t a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, *(a2 + 8), *a1, *(a1 + 8), *(a1 + 16));
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader;
}

void protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance ArchiveHeader@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveHeader(uint64_t a1, unint64_t *a2))(uint64_t a1)
{
  v3 = *v2;
  ArchiveHeader._field(at:)(*a2, a1);
  return protocol witness for Collection.subscript.read in conformance ArchiveHeader;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArchiveHeader@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  result = AAHeaderGetFieldCount(*(v6 + 16));
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 > result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveHeader@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArchiveHeader(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C72918](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveHeader()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t ArchiveHeader._FieldTypes.subscript.getter@<X0>(unint64_t i@<X0>, _DWORD *a2@<X8>)
{
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(i))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = AAHeaderGetFieldType(*(*v2 + 16), i);
  if ((result & 0x80000000) == 0)
  {
    *a2 = result;
    return result;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveHeader._FieldTypes(int *a1, unint64_t *a2))()
{
  v3 = *a2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(v3))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  FieldType = AAHeaderGetFieldType(*(*v2 + 16), v3);
  if ((FieldType & 0x80000000) == 0)
  {
    *a1 = FieldType;
    return protocol witness for Collection.subscript.read in conformance ArchiveHeader._FieldTypes;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveHeader._FieldTypes()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

AAFieldKey ArchiveHeader._FieldKeys.subscript.getter@<W0>(unint64_t i@<X0>, AAFieldKey *a2@<X8>)
{
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(i))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = AAHeaderGetFieldKey(*(*v2 + 16), i);
  if ((result.ikey << 8) >> 24 >= 32 && HIBYTE(result.ikey) == 0 && result.skey[0] >= 32 && *result.skey >> 8 > 31)
  {
    *a2 = result;
    return result;
  }

LABEL_15:
  result.ikey = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader._FieldKeys._customIndexOfEquatableElement(_:)(AAFieldKey *a1)
{
  v2 = *a1;
  KeyIndex = AAHeaderGetKeyIndex(*(*v1 + 16), v2);
  return KeyIndex & ~(KeyIndex >> 31);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ArchiveHeader@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = AAHeaderGetFieldCount(*(*v2 + 16));
    if (v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ArchiveHeader(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = AAHeaderGetFieldCount(*(*v1 + 16));
    if (v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveHeader._FieldKeys(AAFieldKey *a1, unint64_t *a2))()
{
  v3 = *a2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  FieldKey = AAHeaderGetFieldKey(*(*v2 + 16), v3);
  if ((FieldKey.ikey << 8) >> 24 >= 32 && HIBYTE(FieldKey.ikey) == 0 && FieldKey.skey[0] >= 32 && *FieldKey.skey >> 8 > 31)
  {
    *a1 = FieldKey;
    return protocol witness for Collection.subscript.read in conformance ArchiveHeader._FieldTypes;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArchiveHeader._FieldTypes@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  result = AAHeaderGetFieldCount(*(v6 + 16));
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 > result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  a2[1] = v5;
  a2[2] = v6;
  *a2 = v4;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance ArchiveHeader._FieldKeys@<X0>(AAFieldKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = AAHeaderGetKeyIndex(*(*v2 + 16), v4);
  *a2 = result & ~(result >> 31);
  *(a2 + 8) = result < 0;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ArchiveHeader@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = AAHeaderGetFieldCount(*(*v3 + 16));
    if (v5 <= result)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveHeader._FieldTypes@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, void)@<X5>, uint64_t a5@<X8>)
{
  result = a4(*a1, a2, *a3, *v5);
  *a5 = result;
  *(a5 + 8) = v8 & 1;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance ArchiveHeader(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*v2 + 16);
  result = AAHeaderGetFieldCount(v5);
  if (v3 > result)
  {
    __break(1u);
  }

  else
  {
    result = AAHeaderGetFieldCount(v5);
    if (v4 <= result)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance ArchiveHeader(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance ArchiveHeader(void *result, void *a2)
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

uint64_t protocol witness for Collection.index(after:) in conformance ArchiveHeader@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = AAHeaderGetFieldCount(*(*v2 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance ArchiveHeader(unint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = AAHeaderGetFieldCount(*(v3 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance ArchiveHeader._FieldTypes()
{
  v1 = *v0;
  FieldCount = AAHeaderGetFieldCount(*(v1 + 16));
  v3 = *(v1 + 16);
  AAHeaderGetFieldCount(v3);
  result = AAHeaderGetFieldCount(v3);
  if (result >= FieldCount)
  {
    return FieldCount;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveHeader._FieldKeys()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

unsigned int ArchiveHeader.entryType.getter@<W0>(uint64_t a1@<X8>)
{
  ArchiveHeader.FieldKey.init(_:)(&v12.ikey);
  v3 = v12;
  result = AAHeaderGetKeyIndex(*(v1 + 16), v3);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  result = ArchiveHeader._field(at:)(result, &v8).ikey;
  v5 = v9;
  v6 = v11;
  if (v11 != 1)
  {
LABEL_5:
    result = outlined consume of ArchiveHeader.Field(v8, v5, v10, v6);
LABEL_6:
    LODWORD(v5) = 0;
    LOBYTE(v7) = 1;
    goto LABEL_7;
  }

  v7 = HIDWORD(v9);
  if (HIDWORD(v9))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  *a1 = v5;
  *(a1 + 4) = v7;
  return result;
}

uint64_t ArchiveHeader.entryPath.getter@<X0>(uint64_t a1@<X8>)
{
  ArchiveHeader.FieldKey.init(_:)(&v13.ikey);
  v3 = v13;
  KeyIndex = AAHeaderGetKeyIndex(*(v1 + 16), v3);
  if ((KeyIndex & 0x80000000) == 0)
  {
    ArchiveHeader._field(at:)(KeyIndex, &v9);
    if (v12 == 2)
    {
      MEMORY[0x29C2A8890](v10, v11);
      v5 = 0;
      goto LABEL_6;
    }

    outlined consume of ArchiveHeader.Field(v9, v10, v11, v12);
  }

  v5 = 1;
LABEL_6:
  v6 = type metadata accessor for FilePath();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
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

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader> and conformance <> Slice<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy12AppleArchive0C6HeaderCGMd, &_ss5SliceVy12AppleArchive0C6HeaderCGMR);
    lazy protocol witness table accessor for type ArchiveHeader and conformance ArchiveHeader(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ArchiveHeader and conformance ArchiveHeader(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArchiveHeader();
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

unint64_t lazy protocol witness table accessor for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldTypes and conformance ArchiveHeader._FieldTypes);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader._FieldTypes> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy12AppleArchive0C6HeaderC11_FieldTypesVGMd, &_ss5SliceVy12AppleArchive0C6HeaderC11_FieldTypesVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys;
  if (!lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader._FieldKeys and conformance ArchiveHeader._FieldKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader._FieldKeys> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy12AppleArchive0C6HeaderC10_FieldKeysVGMd, &_ss5SliceVy12AppleArchive0C6HeaderC10_FieldKeysVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader> and conformance Slice<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for _AAHeaderTraits(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _AAHeaderTraits(_WORD *result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ArchiveHeader._FieldTypes(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ArchiveHeader._FieldTypes(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AAEntryAttributes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AAEntryAttributes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for timespec(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for timespec(uint64_t result, int a2, int a3)
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

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5UInt8V_Tt1g5056_s12AppleArchive0B6HeaderC6_field2atAC5FieldOSi_tFySrys5F13VGz_SiztXEfU_0H7Archive0vK0CSis6UInt32VTf1nc_nTf4ngnn_n(unint64_t a1, uint64_t a2, unint64_t a3, AAHashFunction *a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = a1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x29EDCA190];
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_4:
  if (HIDWORD(a3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((AAHeaderGetFieldHash(*(a2 + 16), a3, 0x40uLL, a4, (v8 + 32)) & 0x80000000) == 0)
  {
    v9 = *a4 - 1;
    if (v9 <= 4)
    {
      v10 = qword_299A3B368[v9];
      if (v10 <= a1)
      {
LABEL_10:
        *(v8 + 16) = v10;
        return v8;
      }

      __break(1u);
    }

    v10 = 0;
    goto LABEL_10;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

AAHeader partial apply for closure #1 in closure #1 in ArchiveHeader.init(keySet:directory:path:flags:)@<X0>(char *path@<X0>, AAHeader *a2@<X8>)
{
  result = AAHeaderCreateWithPath(*(*(v2 + 16) + 16), *(v2 + 24), path, *(v2 + 32));
  *a2 = result;
  return result;
}

void type metadata accessor for AAFieldKey(uint64_t a1, unint64_t *a2)
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

Swift::Int ArchiveError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8B00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArchiveError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8B00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchiveError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8B00](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError()
{
  result = lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError;
  if (!lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError;
  if (!lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveError and conformance ArchiveError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArchiveError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t ArchiveHeader.EntryMessage.description.getter()
{
  result = 0x7845686372616573;
  switch(*v0)
  {
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      return result;
    case 0xC:
      result = 0x6146686372616573;
      break;
    case 0x14:
      result = 0x4274636172747865;
      break;
    case 0x15:
      result = 0x4574636172747865;
      break;
    case 0x16:
      result = 0x4674636172747865;
      break;
    case 0x17:
      result = 0xD000000000000011;
      break;
    case 0x18:
      result = 0x5874636172747865;
      break;
    case 0x19:
      result = 0x4174636172747865;
      break;
    case 0x1E:
      result = 0x635365646F636E65;
      break;
    case 0x1F:
      result = 0x725765646F636E65;
      break;
    case 0x28:
      result = 0x45747265766E6F63;
      break;
    case 0x3C:
      result = 0x655265646F636564;
      break;
    default:
      result = 4144959;
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.EntryMessage and conformance ArchiveHeader.EntryMessage()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.EntryMessage and conformance ArchiveHeader.EntryMessage;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.EntryMessage and conformance ArchiveHeader.EntryMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.EntryMessage and conformance ArchiveHeader.EntryMessage);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArchiveHeader.EntryMessage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchiveHeader.EntryMessage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance ArchiveHeader.EntryMessage@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveHeader.Field(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchiveHeader.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t ArchiveHeader.EntryAttributes.uid.getter()
{
  v1 = *(v0 + 16);
  v2 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_getter(*v1);
  if (v2)
  {
    v3 = *(v1 + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t ArchiveHeader.EntryAttributes.uid.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v5 = *(v1 + 16);
    v7[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_setter(0, v7);
    *v5 = v7[0];
  }

  else
  {
    v2 = a1;
    v3 = *(v1 + 16);
    v6[0] = *v3;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_setter(1, v6);
    *v3 = v6[0];
    *(*(v1 + 16) + 4) = v2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.uid.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v4 == 0;
  return ArchiveHeader.EntryAttributes.uid.modify;
}

uint64_t ArchiveHeader.EntryAttributes.uid.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 12))
  {
    v2 = *(v1 + 16);
    v6[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_setter(0, v6);
    *v2 = v6[0];
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(v1 + 16);
    v6[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_UID_setter(1, v6);
    *v5 = v6[0];
    *(*(v1 + 16) + 4) = v4;
  }

  return result;
}

unint64_t ArchiveHeader.EntryAttributes.gid.getter()
{
  v1 = *(v0 + 16);
  v2 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_getter(*v1);
  if (v2)
  {
    v3 = *(v1 + 2);
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t ArchiveHeader.EntryAttributes.gid.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v5 = *(v1 + 16);
    v7[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_setter(0, v7);
    *v5 = v7[0];
  }

  else
  {
    v2 = a1;
    v3 = *(v1 + 16);
    v6[0] = *v3;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_setter(1, v6);
    *v3 = v6[0];
    *(*(v1 + 16) + 8) = v2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.gid.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v4 == 0;
  return ArchiveHeader.EntryAttributes.gid.modify;
}

uint64_t ArchiveHeader.EntryAttributes.gid.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 12))
  {
    v2 = *(v1 + 16);
    v6[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_setter(0, v6);
    *v2 = v6[0];
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(v1 + 16);
    v6[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_GID_setter(1, v6);
    *v5 = v6[0];
    *(*(v1 + 16) + 8) = v4;
  }

  return result;
}

unint64_t ArchiveHeader.EntryAttributes.flg.getter()
{
  v1 = *(v0 + 16);
  v2 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_getter(*v1);
  if (v2)
  {
    v3 = *(v1 + 3);
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t ArchiveHeader.EntryAttributes.flg.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v5 = *(v1 + 16);
    v7[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_setter(0, v7);
    *v5 = v7[0];
  }

  else
  {
    v2 = a1;
    v3 = *(v1 + 16);
    v6[0] = *v3;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_setter(1, v6);
    *v3 = v6[0];
    *(*(v1 + 16) + 12) = v2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.flg.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 3);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v4 == 0;
  return ArchiveHeader.EntryAttributes.flg.modify;
}

uint64_t ArchiveHeader.EntryAttributes.flg.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 12))
  {
    v2 = *(v1 + 16);
    v6[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_setter(0, v6);
    *v2 = v6[0];
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(v1 + 16);
    v6[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_FLG_setter(1, v6);
    *v5 = v6[0];
    *(*(v1 + 16) + 12) = v4;
  }

  return result;
}

unint64_t ArchiveHeader.EntryAttributes.mod.getter()
{
  v1 = *(v0 + 16);
  v2 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_getter(*v1);
  if (v2)
  {
    v3 = *(v1 + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t ArchiveHeader.EntryAttributes.mod.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v5 = *(v1 + 16);
    v7[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_setter(0, v7);
    *v5 = v7[0];
  }

  else
  {
    v2 = a1;
    v3 = *(v1 + 16);
    v6[0] = *v3;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_setter(1, v6);
    *v3 = v6[0];
    *(*(v1 + 16) + 16) = v2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.mod.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v4 == 0;
  return ArchiveHeader.EntryAttributes.mod.modify;
}

uint64_t ArchiveHeader.EntryAttributes.mod.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 12))
  {
    v2 = *(v1 + 16);
    v6[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_setter(0, v6);
    *v2 = v6[0];
  }

  else
  {
    v4 = *(a1 + 2);
    v5 = *(v1 + 16);
    v6[0] = *v5;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MOD_setter(1, v6);
    *v5 = v6[0];
    *(*(v1 + 16) + 16) = v4;
  }

  return result;
}

uint64_t ArchiveHeader.EntryAttributes.mtm.getter()
{
  v1 = *(v0 + 16);
  if (!_So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_getter(*v1))
  {
    return 0;
  }

  v3 = *(v1 + 7);
  v2 = *(v1 + 8);
  return v3;
}

uint64_t ArchiveHeader.EntryAttributes.mtm.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (a3)
  {
    v10[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_setter(0, v10);
    *v4 = v10[0];
  }

  else
  {
    v9[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_setter(1, v9);
    *v4 = v9[0];
    v8 = *(v3 + 16);
    *(v8 + 56) = a1;
    *(v8 + 64) = a2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.mtm.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 56);
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4 == 0;
  return ArchiveHeader.EntryAttributes.mtm.modify;
}

uint64_t ArchiveHeader.EntryAttributes.mtm.modify(uint64_t *a1)
{
  v1 = a1[3];
  if (a1[2])
  {
    v2 = *(v1 + 16);
    v8[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_setter(0, v8);
    *v2 = v8[0];
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = *(v1 + 16);
    v8[0] = *v6;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_MTM_setter(1, v8);
    *v6 = v8[0];
    v7 = *(v1 + 16);
    *(v7 + 56) = v5;
    *(v7 + 64) = v4;
  }

  return result;
}

uint64_t ArchiveHeader.EntryAttributes.ctm.getter()
{
  v1 = *(v0 + 16);
  if (!_So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_getter(*v1))
  {
    return 0;
  }

  v3 = *(v1 + 5);
  v2 = *(v1 + 6);
  return v3;
}

uint64_t ArchiveHeader.EntryAttributes.ctm.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (a3)
  {
    v10[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_setter(0, v10);
    *v4 = v10[0];
  }

  else
  {
    v9[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_setter(1, v9);
    *v4 = v9[0];
    v8 = *(v3 + 16);
    *(v8 + 40) = a1;
    *(v8 + 48) = a2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.ctm.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 40);
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4 == 0;
  return ArchiveHeader.EntryAttributes.ctm.modify;
}

uint64_t ArchiveHeader.EntryAttributes.ctm.modify(uint64_t *a1)
{
  v1 = a1[3];
  if (a1[2])
  {
    v2 = *(v1 + 16);
    v8[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_setter(0, v8);
    *v2 = v8[0];
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = *(v1 + 16);
    v8[0] = *v6;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_CTM_setter(1, v8);
    *v6 = v8[0];
    v7 = *(v1 + 16);
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
  }

  return result;
}

uint64_t ArchiveHeader.EntryAttributes.btm.getter()
{
  v1 = *(v0 + 16);
  if (!_So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_getter(*v1))
  {
    return 0;
  }

  v3 = *(v1 + 3);
  v2 = *(v1 + 4);
  return v3;
}

uint64_t ArchiveHeader.EntryAttributes.btm.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (a3)
  {
    v10[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_setter(0, v10);
    *v4 = v10[0];
  }

  else
  {
    v9[0] = *v4;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_setter(1, v9);
    *v4 = v9[0];
    v8 = *(v3 + 16);
    *(v8 + 24) = a1;
    *(v8 + 32) = a2;
  }

  return result;
}

uint64_t (*ArchiveHeader.EntryAttributes.btm.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_getter(*v3);
  if (v4)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4 == 0;
  return ArchiveHeader.EntryAttributes.btm.modify;
}

uint64_t ArchiveHeader.EntryAttributes.btm.modify(uint64_t *a1)
{
  v1 = a1[3];
  if (a1[2])
  {
    v2 = *(v1 + 16);
    v8[0] = *v2;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_setter(0, v8);
    *v2 = v8[0];
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = *(v1 + 16);
    v8[0] = *v6;
    result = _So17AAEntryAttributesa34__Unnamed_union___Anonymous_field0V02__c10_struct___E7_field1V_BTM_setter(1, v8);
    *v6 = v8[0];
    v7 = *(v1 + 16);
    *(v7 + 24) = v5;
    *(v7 + 32) = v4;
  }

  return result;
}

unint64_t ArchiveHeader.EntryFilterData.init(message:data:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (!a2)
  {
    result = 0xF000000000000007;
    goto LABEL_13;
  }

  v5 = *a1;
  result = 0xF000000000000007;
  if (v5 <= 23)
  {
    if (v5 != 20)
    {
      if (v5 == 23)
      {
        type metadata accessor for ArchiveHeader.EntryAttributes();
        v7 = swift_allocObject();
        *(v7 + 16) = a2;
        result = v7 | 0x4000000000000000;
      }

      goto LABEL_13;
    }

LABEL_11:
    type metadata accessor for ArchiveHeader();
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = 0;
    goto LABEL_13;
  }

  if (v5 == 24)
  {
    type metadata accessor for ArchiveHeader.EntryXATBlob();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = 0;
    result = v8 | 0x8000000000000000;
    goto LABEL_13;
  }

  if (v5 == 50 || v5 == 40)
  {
    goto LABEL_11;
  }

LABEL_13:
  *a3 = result;
  return result;
}

unint64_t closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x2A1C7C4A8]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    MEMORY[0x29C2A8870](a3);
    v18 = a2;
    result = ArchiveHeader.EntryFilterData.init(message:data:)(&v18, a4, &v19);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = v19;
      v16 = *(a1 + 24);
      v17 = a2;
      v14(&v18, &v17, v13, &v19);
      (*(v9 + 8))(v13, v8);

      outlined consume of ArchiveHeader.EntryFilterData?(v15);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ArchiveHeader._EntryFilterWrapper.deinit()
{
  v1 = *(v0 + 24);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(*(v0 + 16));
  return v0;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ArchiveHeader._EntryFilterWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ArchiveHeader.EntryFilterData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ArchiveHeader.EntryFilterData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t outlined consume of ArchiveHeader.EntryFilterData?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t ArchiveHash.size.getter()
{
  v1 = *v0 - 1;
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_299A3B870[v1];
  }
}

uint64_t ArchiveHash.description.getter()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (v1 == 1)
    {
      return 0x3233637263;
    }

    if (v1 == 2)
    {
      return 828467315;
    }
  }

  else
  {
    switch(v1)
    {
      case 3:
        return 0x363532616873;
      case 4:
        return 0x343833616873;
      case 5:
        return 0x323135616873;
    }
  }

  return 4144959;
}

unint64_t lazy protocol witness table accessor for type ArchiveHash and conformance ArchiveHash()
{
  result = lazy protocol witness table cache variable for type ArchiveHash and conformance ArchiveHash;
  if (!lazy protocol witness table cache variable for type ArchiveHash and conformance ArchiveHash)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHash and conformance ArchiveHash);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.EncryptionMode.description.getter()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x747079726373;
      }

      return 4144959;
    }

    return 0x32705F6568646365;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x697274656D6D7973;
      }

      return 4144959;
    }

    return 1701736302;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveEncryptionContext.EncryptionMode and conformance ArchiveEncryptionContext.EncryptionMode()
{
  result = lazy protocol witness table cache variable for type ArchiveEncryptionContext.EncryptionMode and conformance ArchiveEncryptionContext.EncryptionMode;
  if (!lazy protocol witness table cache variable for type ArchiveEncryptionContext.EncryptionMode and conformance ArchiveEncryptionContext.EncryptionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveEncryptionContext.EncryptionMode and conformance ArchiveEncryptionContext.EncryptionMode);
  }

  return result;
}

uint64_t ArchiveHeader.EntryMessageStatus.description.getter()
{
  v1 = *v0;
  v2 = 27503;
  v3 = 4144959;
  if (*v0 == 1)
  {
    v3 = 1885956979;
  }

  if (v1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.EntryMessageStatus and conformance ArchiveHeader.EntryMessageStatus()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.EntryMessageStatus and conformance ArchiveHeader.EntryMessageStatus;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.EntryMessageStatus and conformance ArchiveHeader.EntryMessageStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.EntryMessageStatus and conformance ArchiveHeader.EntryMessageStatus);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchiveHeader.EntryMessageStatus()
{
  v1 = *v0;
  v2 = 27503;
  if (*v0)
  {
    v2 = 4144959;
  }

  if (v1 == 1)
  {
    v2 = 1885956979;
  }

  if (v1 == -1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return v2;
  }
}

uint64_t static ArchiveStream._withStream<A>(stream:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    result = a2();
    if (!v4)
    {
      swift_beginAccess();
      result = *(a1 + 16);
      if (result)
      {
        result = AAArchiveStreamClose(result);
        *(a1 + 16) = 0;
        if (result)
        {
          lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
          swift_allocError();
          *v9 = 0;
          swift_willThrow();
          return (*(*(a3 - 8) + 8))(a4, a3);
        }
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static ArchiveStream.withEncodeStream<A>(writingTo:selectUsing:flags:threadCount:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(uint64_t, void *, uint64_t (*)(), uint64_t, uint64_t))
{
  v23 = *a4;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v14 = swift_allocObject();
  v15 = v14;
  v14[2] = a2;
  v14[3] = a3;
  if (a2)
  {
    v16 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v16 = 0;
  }

  v14[4] = v16;
  result = swift_beginAccess();
  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a2);
  v20 = a9(v18, v19, v16, v23, a5);
  if (v20)
  {
    v21 = v20;
    type metadata accessor for ArchiveStream();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    swift_beginAccess();
    *(v22 + 16) = v21;
    *(v22 + 24) = 1;
    *(v22 + 32) = v15;
  }

  else
  {

    v22 = 0;
  }

  static ArchiveStream._withStream<A>(stream:_:)(v22, a6, a7, a8);
}

uint64_t static ArchiveStream.withExtractStream<A>(extractingTo:selectUsing:flags:threadCount:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = *a3;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v10 = swift_allocObject();
  v11 = v10;
  v10[2] = a1;
  v10[3] = a2;
  if (a1)
  {
    v12 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v12 = 0;
  }

  v10[4] = v12;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();
  if (v16)
  {
    type metadata accessor for ArchiveStream();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    swift_beginAccess();
    *(v13 + 16) = v16;
    *(v13 + 24) = 1;
    *(v13 + 32) = v11;
  }

  else
  {

    v13 = 0;
  }

  static ArchiveStream._withStream<A>(stream:_:)(v13, a4, a5, a6);
}

uint64_t static ArchiveStream.withConvertStream<A>(writingTo:insertKeySet:removeKeySet:selectUsing:flags:threadCount:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, AAFlagSet *a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  flags = *a6;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v17 = swift_allocObject();
  v18 = v17;
  v17[2] = a4;
  v17[3] = a5;
  if (a4)
  {
    v19 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v19 = 0;
  }

  v17[4] = v19;
  result = swift_beginAccess();
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  if (a7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a7 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v23 = *(a2 + 16);
  v24 = *(a3 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a4);
  v25 = AAConvertArchiveOutputStreamOpen(v21, v23, v24, v22, v19, flags, a7);
  if (v25)
  {
    v26 = v25;
    type metadata accessor for ArchiveStream();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    swift_beginAccess();
    *(v27 + 16) = v26;
    *(v27 + 24) = 1;
    *(v27 + 32) = v18;
  }

  else
  {

    v27 = 0;
  }

  static ArchiveStream._withStream<A>(stream:_:)(v27, a8, a11, a9);
}

uint64_t static ArchiveStream.withStream<A, B>(wrapping:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = static ArchiveStream.customStream<A>(instance:)(a1, a3, a5);
  static ArchiveStream._withStream<A>(stream:_:)(v9, a2, a4, a6);
}

uint64_t ArchiveCompression.init(algo:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = Algorithm.rawValue.getter();
  v5 = type metadata accessor for Algorithm();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t ArchiveCompression.description.getter()
{
  v1 = *v0;
  if (*v0 > 1284)
  {
    if (v1 == 1285)
    {
      return 1651076218;
    }

    if (v1 != 1794)
    {
      if (v1 == 2049)
      {
        return 0x6573667A6CLL;
      }

      return 4144959;
    }

    return 0x70616D7469627A6CLL;
  }

  else
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 != 256)
    {
      if (v1 == 774)
      {
        return 1634564716;
      }

      return 4144959;
    }

    return 3439212;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveCompression and conformance ArchiveCompression()
{
  result = lazy protocol witness table cache variable for type ArchiveCompression and conformance ArchiveCompression;
  if (!lazy protocol witness table cache variable for type ArchiveCompression and conformance ArchiveCompression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveCompression and conformance ArchiveCompression);
  }

  return result;
}

uint64_t ArchiveHeader.EntryType.description.getter()
{
  v1 = *v0;
  if (*v0 <= 76)
  {
    if (v1 <= 67)
    {
      if (v1 == 66)
      {
        return 0x6570536B636F6C62;
      }

      if (v1 == 67)
      {
        return 0xD000000000000010;
      }
    }

    else
    {
      switch(v1)
      {
        case 'D':
          return 0x726F746365726964;
        case 'F':
          return 0x4672616C75676572;
        case 'L':
          return 1802398060;
      }
    }
  }

  else if (v1 > 82)
  {
    switch(v1)
    {
      case 'S':
        return 0x74656B636F73;
      case 'T':
        return 1953656688;
      case 'W':
        return 0x74756F6574696877;
    }
  }

  else
  {
    switch(v1)
    {
      case 'M':
        return 0x617461646174656DLL;
      case 'P':
        return 1868982630;
      case 'R':
        return 1919905636;
    }
  }

  return 4144959;
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.EntryType and conformance ArchiveHeader.EntryType()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.EntryType and conformance ArchiveHeader.EntryType;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.EntryType and conformance ArchiveHeader.EntryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.EntryType and conformance ArchiveHeader.EntryType);
  }

  return result;
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
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
  v9 = *v3;
  result = AAHeaderGetFieldCount(*(v9 + 16));
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

{
  if (MEMORY[0x29EDCA1B0])
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
  v9 = *v3;
  result = AAEntryXATBlobGetEntryCount(*(v9 + 16));
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (result >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  if (a2)
  {
    v11 = (*a1)[2];

    a3(v8, v10, v7, v5, v6, v9);
  }

  else
  {
    a3((*a1)[5], v10, v7, v5, v6, v9);
  }

  v12 = v4[2];

  free(v4);
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = *v2;
  ArchiveHeader.EntryXATBlob._attribute(at:)(result, &v10);
  v6 = v11;
  ArchiveHeader.EntryXATBlob._attribute(at:)(a2, &v10);
  v7 = v11;
  v8 = String.utf8CString.getter();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(v4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (AAEntryXATBlobSetEntry(*(v5 + 16), v4, (v8 + 32), (v7 + 32), *(v7 + 16)))
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = String.utf8CString.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (HIDWORD(a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (AAEntryXATBlobSetEntry(*(v5 + 16), a2, (v9 + 32), (v6 + 32), *(v6 + 16)))
  {
    goto LABEL_15;
  }
}

{
  if (result != a2)
  {
    v22 = v2;
    v23 = v3;
    v24 = v4;
    v6 = *v2;
    i = result;
    ArchiveHeader._field(at:)(result, &v18);
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    outlined copy of ArchiveHeader.Field(v18, v19, v20, v21);
    outlined consume of ArchiveHeader.Field(v7, v8, v9, v10);
    ArchiveHeader._field(at:)(a2, &v18);
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    outlined copy of ArchiveHeader.Field(v18, v19, v20, v21);
    outlined consume of ArchiveHeader.Field(v11, v12, v13, v14);
    v16[0] = v11;
    v16[1] = v12;
    v16[2] = v13;
    v17 = v14;
    ArchiveHeader._set(at:field:)(i, v16);
    outlined consume of ArchiveHeader.Field(v11, v12, v13, v14);
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    ArchiveHeader._set(at:field:)(a2, &v18);
    return outlined consume of ArchiveHeader.Field(v7, v8, v9, v10);
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.ExtendedAttribute.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v12 = v0[1];
    v13 = *v0;

    v6 = 0;
    v7 = MEMORY[0x29EDCA018];
    v8 = MEMORY[0x29EDCA030];
    while (v6 < *(v3 + 16))
    {
      v9 = *(v3 + v6++ + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_299A3BCB0;
      *(v10 + 56) = v7;
      *(v10 + 64) = v8;
      *(v10 + 32) = v9;
      v11 = String.init(format:_:)();
      MEMORY[0x29C2A8980](v11);

      if (v4 == v6)
      {

        v2 = v12;
        v1 = v13;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    MEMORY[0x29C2A8980](v1, v2);

    MEMORY[0x29C2A8980](0x3A61746164202CLL, 0xE700000000000000);

    MEMORY[0x29C2A8980](0, 0xE000000000000000);

    return 0x203A79656BLL;
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.ExtendedAttribute.init(key:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static ArchiveHeader.EntryXATBlob.ExtendedAttribute.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v9++;
    result = v10 == v12;
    if (v10 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZs5UInt8V_Tt1g5(uint64_t result, uint64_t a2)
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

void ArchiveHeader.EntryXATBlob.ExtendedAttribute.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  v4 = *(v3 + 16);
  MEMORY[0x29C2A8B00](v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }
}

Swift::Int ArchiveHeader.EntryXATBlob.ExtendedAttribute.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = *(v3 + 16);
  MEMORY[0x29C2A8B00](v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZs5UInt8V_Tt1g5(v2, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized ContiguousArray<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  String.hash(into:)();

  specialized ContiguousArray<A>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized ContiguousArray<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t ArchiveHeader.EntryXATBlob.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = AAEntryXATBlobCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.init()()
{
  v1 = AAEntryXATBlobCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.init(directory:path:flags:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v11 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();
  v7 = type metadata accessor for FilePath();
  if (v12)
  {
    v8 = *(*(v7 - 8) + 8);
    v8(a1, v7);
    *(v4 + 16) = v12;
    *(v4 + 24) = 1;
    v8(a2, v7);
  }

  else
  {
    v9 = *(*(v7 - 8) + 8);
    v9(a1, v7);
    v9(a2, v7);
    type metadata accessor for ArchiveHeader.EntryXATBlob();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t ArchiveHeader.EntryXATBlob.apply(directory:path:flags:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = FilePath.withCString<A>(_:)();
  if (v6)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob._attribute(at:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  key_length[1] = *MEMORY[0x29EDCA608];
  v8 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  data_size = 0;
  key_length[0] = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (HIDWORD(a1))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v4 = *(v2 + 16);
  if (AAEntryXATBlobGetEntry(v4, a1, 0, 0, key_length, 0, 0, &data_size))
  {
    goto LABEL_45;
  }

  v11 = key_length[0] + 1;
  v12 = __OFADD__(key_length[0], 1);
  if (__OFADD__(key_length[0], 1))
  {
    goto LABEL_38;
  }

  v13 = v11 + data_size;
  if (__OFADD__(v11, data_size))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v13)
  {
    v2 = MEMORY[0x29EDCA190];
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = v13;
  v11 = key_length[0] + 1;
  if (__OFADD__(key_length[0], 1))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_15:
  v3 = v2 + 32;
  if (!AAEntryXATBlobGetEntry(v4, a1, v11, (v2 + 32), 0, data_size, (v2 + 32 + v11), 0))
  {
    *(v2 + 16) = v13;
    if ((key_length[0] & 0x8000000000000000) == 0)
    {
      if (v13 >= key_length[0])
      {
        v15 = key_length[0];
      }

      else
      {
        v15 = v13;
      }

      v16 = 2 * v15;
      v17 = 1;
      v25[1] = v2;
      v25[2] = v2 + 32;
      if (key_length[0])
      {
        v17 = v16 + 1;
      }

      v25[3] = 0;
      v25[4] = v17;

      static String.Encoding.utf8.getter();
      v4 = &_ss10ArraySliceVys5UInt8VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
      lazy protocol witness table accessor for type Slice<ArchiveHeader> and conformance Slice<A>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
      v10 = String.init<A>(bytes:encoding:)();
      a1 = v18;
      swift_unknownObjectRelease();
      if (!a1)
      {
        __break(1u);
      }

      if ((data_size & 0x8000000000000000) == 0)
      {
        v5 = *(v2 + 16);
        if (v5 >= data_size)
        {
          v4 = (v5 - data_size);
        }

        else
        {
          v4 = 0;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = MEMORY[0x29EDCA190];
        }

        v20 = *(v19 + 16);

        if (v20 == v5 - v4)
        {
          v21 = swift_dynamicCastClass();
          result = swift_unknownObjectRelease();
          if (v21)
          {
LABEL_33:
            *a2 = v10;
            a2[1] = a1;
            a2[2] = v21;
            v23 = *MEMORY[0x29EDCA608];
            return result;
          }

          v21 = MEMORY[0x29EDCA190];
LABEL_32:
          result = swift_unknownObjectRelease();
          goto LABEL_33;
        }

LABEL_43:
        swift_unknownObjectRelease();
        specialized _copyCollectionToContiguousArray<A>(_:)(v2, v3, v4, (2 * v5) | 1);
        v21 = v24;
        goto LABEL_32;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_45:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.EntryXATBlob._set(at:attribute:)(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = String.utf8CString.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(a1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (AAEntryXATBlobSetEntry(*(v2 + 16), a1, (v7 + 32), (v6 + 32), *(v6 + 16)))
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }
}

uint64_t ArchiveHeader.EntryXATBlob.__allocating_init(withAAEncodedData:)(const uint8_t *a1, size_t a2)
{
  result = swift_allocObject();
  if (a1)
  {
    v5 = result;
    v6 = AAEntryXATBlobCreateWithEncodedData(a1, a2);
    if (v6)
    {
      *(v5 + 16) = v6;
      *(v5 + 24) = 1;
    }

    else
    {
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const uint8_t *ArchiveHeader.EntryXATBlob.init(withAAEncodedData:)(const uint8_t *result, size_t a2)
{
  if (result)
  {
    v3 = AAEntryXATBlobCreateWithEncodedData(result, a2);
    if (v3)
    {
      *(v2 + 16) = v3;
      *(v2 + 24) = 1;
    }

    else
    {
      type metadata accessor for ArchiveHeader.EntryXATBlob();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.withAAEncodedData<A>(_:)(uint64_t (*a1)(const uint8_t *, size_t))
{
  v3 = *(v1 + 16);
  EncodedSize = AAEntryXATBlobGetEncodedSize(v3);
  EncodedData = AAEntryXATBlobGetEncodedData(v3);
  return a1(EncodedData, EncodedSize);
}

uint64_t ArchiveHeader.EntryXATBlob.deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAEntryXATBlobDestroy(*(v0 + 16));
  }

  return v0;
}

uint64_t ArchiveHeader.EntryXATBlob.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAEntryXATBlobDestroy(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _AAEncodableProtocol.init(withAAEncodedData:) in conformance ArchiveHeader.EntryXATBlob@<X0>(const uint8_t *a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArchiveHeader.EntryXATBlob();
  result = swift_allocObject();
  if (a1)
  {
    v7 = result;
    result = AAEntryXATBlobCreateWithEncodedData(a1, a2);
    if (result)
    {
      *(v7 + 16) = result;
      *(v7 + 24) = 1;
    }

    else
    {
      result = swift_deallocPartialClassInstance();
      v7 = 0;
    }

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = String.utf8CString.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(a2))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (AAEntryXATBlobSetEntry(*(v2 + 16), a2, (v7 + 32), (v6 + 32), *(v6 + 16)))
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }
}

void (*ArchiveHeader.EntryXATBlob.subscript.modify(void *a1, unint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  ArchiveHeader.EntryXATBlob._attribute(at:)(a2, v5);
  return ArchiveHeader.EntryXATBlob.subscript.modify;
}

void ArchiveHeader.EntryXATBlob.subscript.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = String.utf8CString.getter();
  v10 = v9;
  v11 = *(v8 + 16);
  v12 = *(v4 + 16);
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v16 = v3[3];
      if (!HIDWORD(v16))
      {
        if (!AAEntryXATBlobSetEntry(v12, v16, (v9 + 32), (v8 + 32), *(v8 + 16)))
        {

          goto LABEL_10;
        }

LABEL_17:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v3[3];
  if (HIDWORD(v13))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (AAEntryXATBlobSetEntry(v12, v13, (v10 + 32), (v8 + 32), v11))
  {
    goto LABEL_17;
  }

  v14 = v3[1];
  v15 = v3[2];
LABEL_10:

  free(v3);
}

Swift::Void __swiftcall ArchiveHeader.EntryXATBlob.removeAll()()
{
  if (AAEntryXATBlobClear(*(v0 + 16)))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t ArchiveHeader.EntryXATBlob.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ArchiveHeader.EntryXATBlob._attribute(at:)(a1, &v8);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(a1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v8;
  v7 = v9;
  result = AAEntryXATBlobRemoveEntry(*(v2 + 16), a1);
  if (!result)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    return result;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.EntryXATBlob.append(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = String.utf8CString.getter();
  if (AAEntryXATBlobAppendEntry(*(v1 + 16), (v5 + 32), (v4 + 32), *(v4 + 16)))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArchiveHeader.EntryXATBlob(uint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = a1[1];
  v6 = a1[2];
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = v6;
  ArchiveHeader.EntryXATBlob._set(at:attribute:)(v3, v8);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader.EntryXATBlob(uint64_t *a1, unint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v6[3] = *a2;
  v6[4] = *v2;
  ArchiveHeader.EntryXATBlob._attribute(at:)(v7, v6);
  return protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader.EntryXATBlob;
}

void protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader.EntryXATBlob(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  v9[0] = **a1;
  v9[1] = v3;
  v9[2] = v6;
  if (a2)
  {

    ArchiveHeader.EntryXATBlob._set(at:attribute:)(v5, v9);

    v7 = v2[1];
    v8 = v2[2];
  }

  else
  {
    ArchiveHeader.EntryXATBlob._set(at:attribute:)(v5, v9);
  }

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArchiveHeader.EntryXATBlob(uint64_t a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, *(a1 + 8), *(a1 + 16));
}

void (*protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader.EntryXATBlob(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance ArchiveHeader;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance ArchiveHeader.EntryXATBlob@<X0>(uint64_t (*a1)(size_t *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ArchiveHeader.EntryXATBlob@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = AAEntryXATBlobGetEntryCount(*(*v2 + 16));
    if (v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ArchiveHeader.EntryXATBlob(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = AAEntryXATBlobGetEntryCount(*(*v1 + 16));
    if (v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ArchiveHeader.EntryXATBlob@<X0>(void *a1@<X8>)
{
  result = AAEntryXATBlobGetEntryCount(*(*v1 + 16));
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveHeader.EntryXATBlob(void *a1, unint64_t *a2))(uint64_t a1)
{
  v3 = *v2;
  ArchiveHeader.EntryXATBlob._attribute(at:)(*a2, a1);
  return protocol witness for Collection.subscript.read in conformance ArchiveHeader.EntryXATBlob;
}

uint64_t protocol witness for Collection.subscript.read in conformance ArchiveHeader.EntryXATBlob(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArchiveHeader.EntryXATBlob@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  result = AAEntryXATBlobGetEntryCount(*(v6 + 16));
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 > result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance ArchiveHeader.EntryXATBlob@<X0>(void *a1@<X8>)
{
  result = AAEntryXATBlobGetEntryCount(*(*v1 + 16));
  *a1 = 0;
  a1[1] = result;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ArchiveHeader.EntryXATBlob@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = AAEntryXATBlobGetEntryCount(*(*v3 + 16));
    if (v5 <= result)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveHeader.EntryXATBlob@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

unint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance ArchiveHeader.EntryXATBlob(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*v2 + 16);
  result = AAEntryXATBlobGetEntryCount(v5);
  if (v3 > result)
  {
    __break(1u);
  }

  else
  {
    result = AAEntryXATBlobGetEntryCount(v5);
    if (v4 <= result)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance ArchiveHeader.EntryXATBlob@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = AAEntryXATBlobGetEntryCount(*(*v2 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance ArchiveHeader.EntryXATBlob(unint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = AAEntryXATBlobGetEntryCount(*(v3 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArchiveHeader.EntryXATBlob(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C72918](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveHeader.EntryXATBlob()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  v22 = *a1;
  result = AAHeaderGetFieldCount(*(*a1 + 16));
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = a4 == a5;
  v13 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v21 = a3 - 1;
    v14 = a5 - 1;
    while (a4 < a5)
    {
      v15 = a5;
      ArchiveHeader._field(at:)(a4, &v23);
      v16 = v23;
      v17 = v24;
      v18 = v25;
      v19 = v26;
      outlined copy of ArchiveHeader.Field(v23, v24, v25, v26);
      outlined consume of ArchiveHeader.Field(v16, v17, v18, v19);
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v26 = v19;
      ArchiveHeader._set(at:field:)(a2, &v23);
      outlined consume of ArchiveHeader.Field(v16, v17, v18, v19);
      result = AAHeaderGetFieldCount(*(v22 + 16));
      if (a2 >= result)
      {
        goto LABEL_16;
      }

      result = AAHeaderGetFieldCount(*(a6 + 16));
      if (a4 >= result)
      {
        goto LABEL_17;
      }

      v12 = v14 == a4;
      v13 = v21 == a2;
      if (v21 != a2)
      {
        ++a2;
        v20 = v14 == a4++;
        a5 = v15;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = AAEntryXATBlobGetEntryCount(*(*a1 + 16));
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (result < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = 0x100000000;
    if (a2 > 0x100000000)
    {
      v15 = a2;
    }

    v21 = v15;
    v16 = a3 - 1;
    v17 = a5 - 1;
    while (a4 < a5)
    {
      ArchiveHeader.EntryXATBlob._attribute(at:)(a4, v22);
      v18 = v22[2];
      v19 = String.utf8CString.getter();
      if (v21 == a2)
      {
        goto LABEL_20;
      }

      if (AAEntryXATBlobSetEntry(*(v11 + 16), a2, (v19 + 32), (v18 + 32), *(v18 + 16)))
      {
        goto LABEL_27;
      }

      if (a2 >= AAEntryXATBlobGetEntryCount(*(v11 + 16)))
      {
        goto LABEL_21;
      }

      result = AAEntryXATBlobGetEntryCount(*(a6 + 16));
      if (a4 >= result)
      {
        goto LABEL_22;
      }

      v13 = v17 == a4;
      v14 = v16 == a2;
      if (v16 != a2)
      {
        ++a2;
        if (v17 != a4++)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  if (v14)
  {
    if (v13)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v28 = a2;
  v5 = *v2;
  FieldCount = AAHeaderGetFieldCount(*(*v2 + 16));
  if (FieldCount)
  {
    v7 = 0;
    v8 = FieldCount;
    while (1)
    {
LABEL_3:
      ArchiveHeader._field(at:)(v7, &v24);
      v9 = v24;
      v10 = v25;
      v11 = v26;
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v12 = v27;
      v23 = v27;
      outlined copy of ArchiveHeader.Field(v24, v25, v26, v27);
      outlined consume of ArchiveHeader.Field(v9, v10, v11, v12);
      v13 = a1(&v20);
      outlined consume of ArchiveHeader.Field(v20, v21, v22, v23);
      if (v3)
      {
        return v7;
      }

      if (v13)
      {
        break;
      }

      result = AAHeaderGetFieldCount(*(v5 + 16));
      if (v7 >= result)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      if (++v7 >= v8)
      {
        return v7;
      }
    }

    while (1)
    {
      --v8;
      result = AAHeaderGetFieldCount(*(v5 + 16));
      if (v8 >= result)
      {
        goto LABEL_18;
      }

      if (v7 >= v8)
      {
        return v7;
      }

      ArchiveHeader._field(at:)(v8, &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v18 = v27;
      v23 = v27;
      outlined copy of ArchiveHeader.Field(v24, v25, v26, v27);
      outlined consume of ArchiveHeader.Field(v15, v16, v17, v18);
      v19 = a1(&v20);
      outlined consume of ArchiveHeader.Field(v20, v21, v22, v23);
      if ((v19 & 1) == 0)
      {
        specialized MutableCollection.swapAt(_:_:)(v7, v8);
        result = AAHeaderGetFieldCount(*(v5 + 16));
        if (v7 >= result)
        {
          goto LABEL_19;
        }

        if (++v7 < v8)
        {
          goto LABEL_3;
        }

        return v7;
      }
    }
  }

  return 0;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(size_t *), uint64_t a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  EntryCount = AAEntryXATBlobGetEntryCount(*(*v2 + 16));
  if (!EntryCount)
  {
    v12 = 0;
    goto LABEL_50;
  }

  v38 = v2;
  v12 = 0;
  v13 = EntryCount;
  while (1)
  {
LABEL_3:
    ArchiveHeader.EntryXATBlob._attribute(at:)(v12, &v43);
    key_length = v43;
    v48 = v44;
    v14 = a1(&key_length);

    if (v3)
    {
      goto LABEL_50;
    }

    if (v14)
    {
      break;
    }

    if (v12 >= AAEntryXATBlobGetEntryCount(*(v10 + 16)))
    {
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
LABEL_60:
      __break(1u);
    }

    if (++v12 >= v13)
    {
      goto LABEL_50;
    }
  }

  v39 = v10;
  v40 = a1;
  while (1)
  {
    if (--v13 >= AAEntryXATBlobGetEntryCount(*(v10 + 16)))
    {
      goto LABEL_52;
    }

    if (v12 >= v13)
    {
      goto LABEL_50;
    }

    data_size = 0;
    key_length = 0;
    v15 = *(v10 + 16);
    if (AAEntryXATBlobGetEntry(v15, v13, 0, 0, &key_length, 0, 0, &data_size))
    {
      break;
    }

    v16 = key_length + 1;
    v17 = __OFADD__(key_length, 1);
    if (__OFADD__(key_length, 1))
    {
      goto LABEL_53;
    }

    v18 = v16 + data_size;
    if (__OFADD__(v16, data_size))
    {
      goto LABEL_54;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v18)
    {
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v19 + 16) = v18;
      v16 = key_length + 1;
      if (__OFADD__(key_length, 1))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v19 = MEMORY[0x29EDCA190];
      if (v17)
      {
        goto LABEL_56;
      }
    }

    v42 = v19 + 32;
    if (AAEntryXATBlobGetEntry(v15, v13, v16, (v19 + 32), 0, data_size, (v19 + 32 + v16), 0))
    {
      break;
    }

    *(v19 + 16) = v18;
    if ((key_length & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

    if (v18 >= key_length)
    {
      v21 = key_length;
    }

    else
    {
      v21 = v18;
    }

    v22 = 2 * v21;
    v43 = v19;
    *&v44 = v42;
    v23 = 1;
    if (key_length)
    {
      v23 = v22 + 1;
    }

    *(&v44 + 1) = 0;
    v45 = v23;

    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
    lazy protocol witness table accessor for type Slice<ArchiveHeader> and conformance Slice<A>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, &_ss10ArraySliceVys5UInt8VGMR);
    v24 = String.init<A>(bytes:encoding:)();
    v26 = v25;

    if (!v26)
    {
      goto LABEL_60;
    }

    if ((data_size & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    v27 = a2;
    v28 = *(v19 + 16);
    if (v28 >= data_size)
    {
      v29 = v28 - data_size;
    }

    else
    {
      v29 = 0;
    }

    if (v28 > data_size)
    {
      v31 = v28 - v29;
      v32 = MEMORY[0x29EDCA190];
      if (v28 != v29)
      {
        if (v31 < 1)
        {
          v32 = MEMORY[0x29EDCA190];
        }

        else
        {
          v37 = v28 - v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v32 = swift_allocObject();
          v33 = _swift_stdlib_malloc_size(v32);
          v31 = v37;
          v32[2] = v37;
          v32[3] = 2 * v33 - 64;
        }

        memcpy(v32 + 4, (v42 + v29), v31);
      }

      v19 = v32;
    }

    v43 = v24;
    *&v44 = v26;
    *(&v44 + 1) = v19;
    a2 = v27;
    a1 = v40;
    v30 = v40(&v43);

    v10 = v39;
    if ((v30 & 1) == 0)
    {
      specialized MutableCollection.swapAt(_:_:)(v12, v13);
      if (v12 >= AAEntryXATBlobGetEntryCount(*(v10 + 16)))
      {
        goto LABEL_59;
      }

      if (++v12 >= v13)
      {
LABEL_50:
        v34 = *MEMORY[0x29EDCA608];
        return v12;
      }

      goto LABEL_3;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized ContiguousArray<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x29C2A8B00](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

uint64_t partial apply for closure #1 in ArchiveHeader.EntryXATBlob.init(directory:path:flags:)()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  return FilePath.withCString<A>(_:)();
}

uint64_t type metadata accessor for ArchiveHeader.EntryXATBlob()
{
  result = type metadata singleton initialization cache for ArchiveHeader.EntryXATBlob;
  if (!type metadata singleton initialization cache for ArchiveHeader.EntryXATBlob)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in ArchiveHeader.EntryXATBlob.apply(directory:path:flags:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  return FilePath.withCString<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.EntryXATBlob.ExtendedAttribute and conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.EntryXATBlob.ExtendedAttribute and conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.EntryXATBlob.ExtendedAttribute and conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.EntryXATBlob.ExtendedAttribute and conformance ArchiveHeader.EntryXATBlob.ExtendedAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader.EntryXATBlob> and conformance <> Slice<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy12AppleArchive0C6HeaderC12EntryXATBlobCGMd, &_ss5SliceVy12AppleArchive0C6HeaderC12EntryXATBlobCGMR);
    lazy protocol witness table accessor for type ArchiveHeader.EntryXATBlob and conformance ArchiveHeader.EntryXATBlob(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ArchiveHeader.EntryXATBlob and conformance ArchiveHeader.EntryXATBlob(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArchiveHeader.EntryXATBlob();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t getEnumTagSinglePayload for ArchiveHeader.EntryXATBlob.ExtendedAttribute(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ArchiveHeader.EntryXATBlob.ExtendedAttribute(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t partial apply for closure #1 in closure #1 in ArchiveHeader.EntryXATBlob.apply(directory:path:flags:)@<X0>(char *path@<X0>, _DWORD *a2@<X8>)
{
  result = AAEntryXATBlobApplyToPath(*(*(v2 + 16) + 16), *(v2 + 24), path, *(v2 + 32));
  *a2 = result;
  return result;
}

AAEntryXATBlob partial apply for closure #1 in closure #1 in ArchiveHeader.EntryXATBlob.init(directory:path:flags:)@<X0>(char *path@<X0>, AAEntryXATBlob *a2@<X8>)
{
  result = AAEntryXATBlobCreateWithPath(*(v2 + 16), path, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t ArchiveByteStream.read(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  result = *(v3 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = a3();
  if (result < 0)
  {
    v7 = result;
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    return v7;
  }

  return result;
}

uint64_t ArchiveByteStream.read(into:atOffset:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  swift_beginAccess();
  result = *(v4 + 16);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a4();
  if (result < 0)
  {
    v7 = result;
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    return v7;
  }

  return result;
}

off_t ArchiveByteStream.seek(toOffset:relativeTo:)(off_t a1, int a2)
{
  swift_beginAccess();
  result = *(v2 + 16);
  if (result)
  {
    result = AAByteStreamSeek(result, a1, a2);
    if (result < 0)
    {
      v6 = result;
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArchiveByteStream.cancel()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    AAByteStreamCancel(v1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveByteStream.close()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = AAByteStreamClose(v1);
    *(v0 + 16) = 0;
    if (v2)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v3 = 0;
      swift_willThrow();
    }
  }
}

uint64_t ArchiveByteStream.__allocating_init(object:owned:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t ArchiveByteStream.init(object:owned:)(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ArchiveByteStream.deinit()
{
  if (*(v0 + 24) == 1)
  {
    swift_beginAccess();
    AAByteStreamClose(*(v0 + 16));
    *(v0 + 16) = 0;
  }

  return v0;
}

uint64_t ArchiveByteStream.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    swift_beginAccess();
    AAByteStreamClose(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for _AAOptionalObjectWrapper.__allocating_init(object:owned:) dispatching to ArchiveByteStream.__allocating_init(object:owned:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  type metadata accessor for ArchiveByteStream();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  return v4;
}

off_t protocol witness for ArchiveByteStreamProtocol.seek(toOffset:relativeTo:) in conformance ArchiveByteStream(off_t a1, int a2)
{
  v5 = *v2;
  swift_beginAccess();
  result = *(v5 + 16);
  if (result)
  {
    result = AAByteStreamSeek(result, a1, a2);
    if (result < 0)
    {
      v7 = result;
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for ArchiveByteStreamProtocol.cancel() in conformance ArchiveByteStream()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    AAByteStreamCancel(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ArchiveByteStream.fileStream(path:mode:options:permissions:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for ArchiveByteStream();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_beginAccess();
  result = v0;
  *(v0 + 16) = v2;
  *(v0 + 24) = 1;
  return result;
}

AAByteStream closure #1 in static ArchiveByteStream.fileStream(path:mode:options:permissions:)@<X0>(const char *a1@<X0>, int a2@<W1>, mode_t a3@<W2>, AAByteStream *a4@<X8>)
{
  result = AAFileStreamOpenWithPath(a1, a2, a3);
  *a4 = result;
  return result;
}

AAByteStream partial apply for closure #1 in static ArchiveByteStream.fileStream(path:mode:options:permissions:)@<X0>(const char *a1@<X0>, AAByteStream *a2@<X8>)
{
  result = AAFileStreamOpenWithPath(a1, *(v2 + 16), *(v2 + 20));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ArchiveByteStream()
{
  result = type metadata singleton initialization cache for ArchiveByteStream;
  if (!type metadata singleton initialization cache for ArchiveByteStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AAByteStream static ArchiveByteStream.fileStream(fd:automaticClose:)(int a1, char a2)
{
  result = AAFileStreamOpenWithFD(a1, a2 & 1);
  if (result)
  {
    v3 = result;
    type metadata accessor for ArchiveByteStream();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    swift_beginAccess();
    result = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
  }

  return result;
}

AAByteStream static ArchiveByteStream.temporaryFileStream()()
{
  result = AATempFileStreamOpen();
  if (result)
  {
    v1 = result;
    type metadata accessor for ArchiveByteStream();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    swift_beginAccess();
    result = v2;
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
  }

  return result;
}

AAByteStream_impl *static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)(AACompressionAlgorithm *a1, uint64_t a2, size_t a3, AAFlagSet *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  result = *(a2 + 16);
  if (!result)
  {
    goto LABEL_9;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = AACompressionOutputStreamOpen(result, v8, a3, v9, a5);
  if (result)
  {
    v11 = result;
    type metadata accessor for ArchiveByteStream();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    swift_beginAccess();
    result = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = 1;
  }

  return result;
}

uint64_t static ArchiveByteStream.compressionStream(appendingTo:flags:threadCount:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a2;
  swift_beginAccess();
  result = *(a1 + 16);
  if (!result)
  {
    goto LABEL_9;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = a4();
  if (result)
  {
    v9 = result;
    type metadata accessor for ArchiveByteStream();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    swift_beginAccess();
    result = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
  }

  return result;
}

AAByteStream_impl *static ArchiveByteStream.randomAccessDecompressionStream(readingFrom:allocationLimit:flags:threadCount:)(AAByteStream_impl *result, int64_t a2, AAFlagSet *a3, uint64_t a4)
{
  if (a2 < -1)
  {
    goto LABEL_10;
  }

  v6 = result;
  v7 = *a3;
  swift_beginAccess();
  result = *(v6 + 2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = AADecompressionRandomAccessInputStreamOpen(result, a2, v7, a4);
  if (result)
  {
    v8 = result;
    type metadata accessor for ArchiveByteStream();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    swift_beginAccess();
    result = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
  }

  return result;
}

uint64_t static ArchiveByteStream.sharedBufferPipe(capacity:)(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = swift_slowAlloc();
    if (AASharedBufferPipeOpen(v2, v2 + 1, v1))
    {
      return 0;
    }

    else
    {
      v3 = *v2;
      type metadata accessor for ArchiveByteStream();
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      swift_beginAccess();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      v5 = v2[1];
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      swift_beginAccess();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;
      MEMORY[0x29C2A93A0](v2, -1, -1);
      return v4;
    }
  }

  return result;
}

uint64_t static ArchiveByteStream.process(readingFrom:writingTo:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v6 = *(a2 + 16);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = AAByteStreamProcess(v5, v6);
  if (result < 0)
  {
    v7 = result;
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    return v7;
  }

  return result;
}

uint64_t ArchiveHeader.FieldType.description.getter()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 1752392040;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 1651469410;
      }

      return 4144959;
    }

    return 0x63657073656D6974;
  }

  else
  {
    if (!v1)
    {
      return 1734437990;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x676E69727473;
      }

      return 4144959;
    }

    return 1953393013;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.FieldType and conformance ArchiveHeader.FieldType()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.FieldType and conformance ArchiveHeader.FieldType;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.FieldType and conformance ArchiveHeader.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.FieldType and conformance ArchiveHeader.FieldType);
  }

  return result;
}

uint64_t _AAObjectWrapper.init(object:owned:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v2 + v5, a1, AssociatedTypeWitness);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

char *_AAObjectWrapper.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15 - v11;
  if (v1[*(v2 + 104)] == 1)
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 16))(v12, &v1[*(v3 + 96)], AssociatedTypeWitness);
    (*(v13 + 56))(v12, 0, 1, AssociatedTypeWitness);
    (*(v4 + 16))(v12, v5, v4);
    (*(v8 + 8))(v12, v7);
    v2 = *v1;
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[*(v2 + 96)], AssociatedTypeWitness);
  return v1;
}

uint64_t _AAOptionalObjectWrapper.init(object:owned:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v5, 1, 1, AssociatedTypeWitness);
  swift_beginAccess();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 40))(v2 + v5, a1, v9);
  swift_endAccess();
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

char *_AAOptionalObjectWrapper.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15[-v11];
  if (v1[*(v2 + 104)] == 1)
  {
    v13 = *(v3 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v12, &v1[v13], v7);
    (*(v4 + 16))(v12, v5, v4);
    (*(v8 + 8))(v12, v7);
    (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v8 + 40))(&v1[v13], v12, v7);
    swift_endAccess();
    v2 = *v1;
  }

  (*(v8 + 8))(&v1[*(v2 + 96)], v7);
  return v1;
}

uint64_t _AAObjectWrapper.__allocating_init(object:owned:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  a3(a1, a2);
  return v9;
}

uint64_t _AAOptionalObjectWrapperWithFilter.__allocating_init(object:owned:messageProc:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  _AAOptionalObjectWrapperWithFilter.init(object:owned:messageProc:)(a1, a2, a3);
  return v9;
}

uint64_t _AAOptionalObjectWrapperWithFilter.init(object:owned:messageProc:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v7, 1, 1, AssociatedTypeWitness);
  swift_beginAccess();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 40))(v3 + v7, a1, v11);
  swift_endAccess();
  *(v3 + *(*v3 + 104)) = a2;
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t *_AAOptionalObjectWrapperWithFilter.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v16[-v11];
  if (*(v1 + *(v2 + 104)) == 1)
  {
    v13 = *(v3 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v12, v1 + v13, v7);
    (*(v4 + 16))(v12, v5, v4);
    (*(v8 + 8))(v12, v7);
    (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v13, v12, v7);
    swift_endAccess();
    v2 = *v1;
  }

  (*(v8 + 8))(v1 + *(v2 + 96), v7);
  v14 = *(v1 + *(*v1 + 112));

  return v1;
}

uint64_t _AAObjectWrapper.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for _AAObjectWrapper(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for _AAOptionalObjectWrapper(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for _AAOptionalObjectWrapperWithFilter(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static ArchiveFlags.verbosity(level:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0xC000000000000000;
  if (result == 2)
  {
    v2 = 0x8000000000000000;
  }

  if (result == 1)
  {
    v2 = 0x4000000000000000;
  }

  if (result <= 0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchiveFlags and conformance ArchiveFlags()
{
  result = lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags;
  if (!lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags;
  if (!lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags;
  if (!lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags;
  if (!lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveFlags and conformance ArchiveFlags);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArchiveFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8B30](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchiveFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C2A8B30](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance ArchiveFlags(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance ArchiveFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance ArchiveFlags@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ArchiveFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveFlags(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ArchiveFlags(uint64_t result, int a2, int a3)
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

uint64_t static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t (*)(), uint64_t, uint64_t))
{
  v11 = *a4;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v12 = swift_allocObject();
  v13 = v12;
  v12[2] = a2;
  v12[3] = a3;
  if (a2)
  {
    v14 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v14 = 0;
  }

  v12[4] = v14;
  result = swift_beginAccess();
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a2);
  v18 = a6(v16, v17, v14, v11, a5);
  if (v18)
  {
    v19 = v18;
    type metadata accessor for ArchiveStream();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    swift_beginAccess();
    result = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = 1;
    *(v20 + 32) = v13;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v7 = swift_allocObject();
  v8 = v7;
  v7[2] = a2;
  v7[3] = a3;
  if (a2)
  {
    v9 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v9 = 0;
  }

  v7[4] = v9;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();
  if (v12)
  {
    type metadata accessor for ArchiveStream();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    swift_beginAccess();
    result = v10;
    *(v10 + 16) = v12;
    *(v10 + 24) = 1;
    *(v10 + 32) = v8;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t static ArchiveStream.convertStream(writingTo:insertKeySet:removeKeySet:selectUsing:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AAFlagSet *a6, uint64_t a7)
{
  v13 = *a6;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v14 = swift_allocObject();
  v15 = v14;
  v14[2] = a4;
  v14[3] = a5;
  if (a4)
  {
    v16 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v16 = 0;
  }

  v14[4] = v16;
  result = swift_beginAccess();
  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (a7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a7 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = *(a2 + 16);
  v21 = *(a3 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a4);
  v22 = AAConvertArchiveOutputStreamOpen(v18, v20, v21, v19, v16, v13, a7);
  if (v22)
  {
    v23 = v22;
    type metadata accessor for ArchiveStream();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    swift_beginAccess();
    result = v24;
    *(v24 + 16) = v23;
    *(v24 + 24) = 1;
    *(v24 + 32) = v15;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ArchiveStream.writeHeader(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    result = AAArchiveStreamWriteHeader(result, *(a1 + 16));
    if (result)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v4 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ArchiveStream.readHeader()()
{
  header[1] = *MEMORY[0x29EDCA608];
  header[0] = 0;
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!v1)
  {
    __break(1u);
  }

  v2 = AAArchiveStreamReadHeader(v1, header);
  if (v2 < 0)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v5 = 0;
    result = swift_willThrow();
    goto LABEL_9;
  }

  v3 = header[0];
  if (v2)
  {
    if (header[0])
    {
      type metadata accessor for ArchiveHeader();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = 1;
LABEL_9:
      v6 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else if (!header[0])
  {
    result = 0;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveStream.writeBlob(key:from:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  swift_beginAccess();
  result = *(v4 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = a4();
  if (result)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall ArchiveStream.cancel()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    AAArchiveStreamCancel(v1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveStream.close()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = AAArchiveStreamClose(v1);
    *(v0 + 16) = 0;
    if (v2)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v3 = 0;
      swift_willThrow();
    }
  }
}

uint64_t ArchiveStream.__allocating_init(object:owned:messageProc:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

uint64_t type metadata accessor for ArchiveStream()
{
  result = type metadata singleton initialization cache for ArchiveStream;
  if (!type metadata singleton initialization cache for ArchiveStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArchiveStream.init(object:owned:messageProc:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  swift_beginAccess();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ArchiveStream.deinit()
{
  if (*(v0 + 24) == 1)
  {
    swift_beginAccess();
    AAArchiveStreamClose(*(v0 + 16));
    *(v0 + 16) = 0;
  }

  v1 = *(v0 + 32);

  return v0;
}

uint64_t ArchiveStream.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    swift_beginAccess();
    AAArchiveStreamClose(*(v0 + 16));
    *(v0 + 16) = 0;
  }

  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for _AAOptionalObjectWrapperWithFilter.__allocating_init(object:owned:messageProc:) dispatching to ArchiveStream.__allocating_init(object:owned:messageProc:)(uint64_t *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  type metadata accessor for ArchiveStream();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_beginAccess();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return v6;
}

uint64_t protocol witness for ArchiveStreamProtocol.writeHeader(_:) in conformance ArchiveStream(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  result = *(v3 + 16);
  if (result)
  {
    result = AAArchiveStreamWriteHeader(result, *(a1 + 16));
    if (result)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v5 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for ArchiveStreamProtocol.cancel() in conformance ArchiveStream()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    AAArchiveStreamCancel(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = *a6;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  if (a4)
  {
    v11 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v11 = 0;
  }

  v10[4] = v11;
  v12 = type metadata accessor for FilePath();
  v13 = (*(*(v12 - 8) + 48))(a2, 1, v12);
  MEMORY[0x2A1C7C4A8](v13, v14);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  v15 = FilePath.withCString<A>(_:)();
  if (!v19 || (MEMORY[0x2A1C7C4A8](v15, v16), FilePath.withCString<A>(_:)(), AAPathListDestroy(v19), v19))
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }
}

const char *closure #1 in ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)@<X0>(AAFlagSet flags@<X2>, uint64_t n_threads@<X3>, const char *result@<X0>, uint64_t a4@<X1>, const char **a5@<X8>)
{
  if (n_threads < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (n_threads > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(a4 + 16))
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  result = AAPathListCreateWithDirectoryContents(result, 0, v7, *(a4 + 32), flags, n_threads);
  *a5 = result;
  return result;
}

uint64_t closure #2 in ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = v20 - v14;
  outlined init with copy of FilePath?(a2, v20 - v14);
  v16 = type metadata accessor for FilePath();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x2A1C7C4A8](result, v19);
    v20[-4] = a1;
    v20[-3] = a3;
    v20[-2] = a4;
    v20[-1] = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
    FilePath.withCString<A>(_:)();
    return (*(v17 + 8))(v15, v16);
  }

  return result;
}

const char *closure #1 in closure #2 in ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)@<X0>(const char *path@<X0>, char *dir@<X1>, AAFlagSet flags@<X3>, uint64_t n_threads@<X4>, void *a5@<X2>, const char **a6@<X8>)
{
  v6 = n_threads;
  if (n_threads < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (n_threads > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return path;
  }

  v9 = a5[4];
  if (!a5[2])
  {
    a5 = 0;
  }

  path = AAPathListCreateWithDirectoryContents(dir, path, a5, v9, flags, v6);
  *a6 = path;
  return path;
}

AAArchiveStream_impl *closure #3 in ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, AAPathList *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, AAFlagSet a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  swift_beginAccess();
  result = *(a2 + 16);
  if (!result)
  {
    goto LABEL_11;
  }

  if (!*a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a7 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a5 + 16))
  {
    v17 = a5;
  }

  else
  {
    v17 = 0;
  }

  result = AAArchiveStreamWritePathList(result, *a3, *(a4 + 16), a1, v17, *(a5 + 32), a6, a7);
  *a8 = result;
  return result;
}

uint64_t static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, AAFlagSet *a5, uint64_t a6)
{
  flags = *a5;
  type metadata accessor for ArchiveHeader._EntryFilterWrapper();
  v11 = swift_allocObject();
  v12 = v11;
  v11[2] = a3;
  v11[3] = a4;
  if (a3)
  {
    v13 = @objc closure #1 in ArchiveHeader._EntryFilterWrapper.init(_:);
  }

  else
  {
    v13 = 0;
  }

  v11[4] = v13;
  result = swift_beginAccess();
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_16;
  }

  result = swift_beginAccess();
  v16 = *(a2 + 16);
  if (!v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if (a6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ArchiveHeader.EntryMessage, @in_guaranteed FilePath, @in_guaranteed ArchiveHeader.EntryFilterData?) -> (@out ArchiveHeader.EntryMessageStatus))?(a3);
  v18 = AAArchiveStreamProcess(v15, v16, v17, v13, flags, a6);
  if (v18 < 0)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  return v18;
}

const char *closure #1 in static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)@<X0>(AAFlagSet flags@<X2>, uint64_t n_threads@<X3>, const char *result@<X0>, void *a4@<X1>, const char **a5@<X8>)
{
  v5 = n_threads;
  if (n_threads < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (n_threads > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = a4[4];
  if (!a4[2])
  {
    a4 = 0;
  }

  result = AAExtractArchiveOutputStreamOpen(result, a4, v8, flags, v5);
  *a5 = result;
  return result;
}

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ArchiveStream.customStream<A>(instance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArchiveStream.CustomArchiveStreamBridge();
  v10[0] = a1;
  swift_unknownObjectRetain();
  result = specialized ArchiveStream.CustomArchiveStreamBridge.__allocating_init(_:)(v10, v6, a2, a3);
  if (result)
  {
    v8 = *(result + 56);
    if (v8)
    {

      type metadata accessor for ArchiveStream();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      swift_beginAccess();
      result = v9;
      *(v9 + 16) = v8;
      *(v9 + 24) = 1;
      *(v9 + 32) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t result)
{
  if (result)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    v1 = result;
    swift_beginAccess();
    outlined assign with take of ArchiveStreamProtocol?(v2, v1 + 16);
    swift_endAccess();
    *(v1 + 56) = 0;

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc closure #2 in ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveStreamProtocol?(v1 + 16, v4);
    v2 = v5;
    if (v5)
    {
      v3 = v6;
      __swift_project_boxed_opaque_existential_1(v4, v5);
      (*(v3 + 40))(v2, v3);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveStreamProtocol?(v3 + 16, v6);
    if (v7)
    {
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      type metadata accessor for ArchiveHeader();
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = 0;
      (*(v4 + 8))();

      __swift_destroy_boxed_opaque_existential_1(v6);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  outlined init with copy of ArchiveStreamProtocol?(a1 + 16, v12);
  v8 = v13;
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (!HIBYTE(a2) && a2 >= 32 && a2 >> 8 >= 32 && (a2 << 8) >> 24 > 31)
  {
    v11 = a2;
    (*(v9 + 16))(&v11, a3, a3 + a4, v8, v9);

    __swift_destroy_boxed_opaque_existential_1(v12);
    return 0;
  }

LABEL_10:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #5 in ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t result, AAHeader *a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;

  swift_beginAccess();
  result = outlined init with copy of ArchiveStreamProtocol?(v3 + 16, v7);
  v4 = v8;
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v5 + 24))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v6)
  {
    if (*a2)
    {
      AAHeaderAssign(*a2, *(v6 + 16));
    }

    else
    {
      *a2 = AAHeaderClone(*(v6 + 16));
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t ArchiveStream.CustomArchiveStreamBridge.__deallocating_deinit()
{
  outlined destroy of ArchiveStreamProtocol?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized ArchiveStream.CustomArchiveStreamBridge.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v17 - v12;
  (*(v6 + 32))(&v17 - v12);
  type metadata accessor for ArchiveStream.CustomArchiveStreamBridge();
  v14 = swift_allocObject();
  (*(v6 + 16))(v10, v13, a3);
  v15 = specialized ArchiveStream.CustomArchiveStreamBridge.init(_:)(v10, v14, a3, a4);
  (*(v6 + 8))(v13, a3);
  return v15;
}

uint64_t outlined destroy of ArchiveStreamProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B14StreamProtocol_pSgMd, &_s12AppleArchive0B14StreamProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ArchiveStream.CustomArchiveStreamBridge.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v8 = AACustomArchiveStreamOpen();
  if (v8)
  {
    v9 = v8;

    AACustomArchiveStreamSetData(v9, a2);
    AACustomArchiveStreamSetCloseProc(v9, @objc closure #1 in ArchiveStream.CustomArchiveStreamBridge.init(_:));
    AACustomArchiveStreamSetCancelProc(v9, @objc closure #2 in ArchiveStream.CustomArchiveStreamBridge.init(_:));
    AACustomArchiveStreamSetWriteHeaderProc(v9, @objc closure #3 in ArchiveStream.CustomArchiveStreamBridge.init(_:));
    AACustomArchiveStreamSetWriteBlobProc(v9, @objc closure #4 in ArchiveStream.CustomArchiveStreamBridge.init(_:));
    AACustomArchiveStreamSetReadHeaderProc(v9, @objc closure #5 in ArchiveStream.CustomArchiveStreamBridge.init(_:));
    outlined init with take of ArchiveStreamProtocol(&v12, v11);
    swift_beginAccess();
    outlined assign with take of ArchiveStreamProtocol?(v11, a2 + 16);
    swift_endAccess();
    *(a2 + 56) = v9;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v12);

    return 0;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

uint64_t outlined init with take of ArchiveStreamProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of ArchiveStreamProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B14StreamProtocol_pSgMd, &_s12AppleArchive0B14StreamProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ArchiveStreamProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B14StreamProtocol_pSgMd, &_s12AppleArchive0B14StreamProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t closure #1 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of ArchiveByteStreamProtocol?(v1 + 16, &v5);
    v2 = *(&v6 + 1);
    outlined destroy of ArchiveByteStreamProtocol?(&v5);
    if (!v2)
    {
LABEL_5:
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      swift_beginAccess();
      outlined assign with take of ArchiveByteStreamProtocol?(&v5, v1 + 16);
      swift_endAccess();
      *(v1 + 56) = 0;

      return 0;
    }

    result = outlined init with copy of ArchiveByteStreamProtocol?(v1 + 16, &v5);
    v3 = *(&v6 + 1);
    if (*(&v6 + 1))
    {
      v4 = v7;
      __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
      (*(v4 + 56))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v5);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v5 + 16, v9);
    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v8 = (*(v7 + 8))(a2, a2 + a3, v6, v7);

      __swift_destroy_boxed_opaque_existential_1(v9);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v7 + 16, v11);
    v8 = v12;
    if (v12)
    {
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = (*(v9 + 16))(a2, a2 + a3, a4, v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v11);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v5 + 16, v9);
    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v8 = (*(v7 + 24))(a2, a2 + a3, v6, v7);

      __swift_destroy_boxed_opaque_existential_1(v9);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v7 + 16, v11);
    v8 = v12;
    if (v12)
    {
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = (*(v9 + 32))(a2, a2 + a3, a4, v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v11);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t @objc closure #6 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v1 + 16, v4);
    v2 = v5;
    if (v5)
    {
      v3 = v6;
      __swift_project_boxed_opaque_existential_1(v4, v5);
      (*(v3 + 48))(v2, v3);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #7 in ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;

    swift_beginAccess();
    result = outlined init with copy of ArchiveByteStreamProtocol?(v5 + 16, v9);
    v6 = v10;
    if (v10)
    {
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v8 = (*(v7 + 40))(a2, a3, v6, v7);

      __swift_destroy_boxed_opaque_existential_1(v9);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ArchiveByteStream.CustomByteStreamBridge.__deallocating_deinit()
{
  outlined destroy of ArchiveByteStreamProtocol?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static ArchiveByteStream.customStream<A>(instance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArchiveByteStream.CustomByteStreamBridge();
  v10[0] = a1;
  swift_unknownObjectRetain();
  result = specialized ArchiveByteStream.CustomByteStreamBridge.__allocating_init(_:)(v10, v6, a2, a3);
  if (result)
  {
    v8 = *(result + 56);
    if (v8)
    {

      type metadata accessor for ArchiveByteStream();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      swift_beginAccess();
      result = v9;
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized ArchiveByteStream.CustomByteStreamBridge.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v17 - v12;
  (*(v6 + 32))(&v17 - v12);
  type metadata accessor for ArchiveByteStream.CustomByteStreamBridge();
  v14 = swift_allocObject();
  (*(v6 + 16))(v10, v13, a3);
  v15 = specialized ArchiveByteStream.CustomByteStreamBridge.init(_:)(v10, v14, a3, a4);
  (*(v6 + 8))(v13, a3);
  return v15;
}

uint64_t outlined destroy of ArchiveByteStreamProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B18ByteStreamProtocol_pSgMd, &_s12AppleArchive0B18ByteStreamProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ArchiveByteStream.CustomByteStreamBridge.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v8 = AACustomByteStreamOpen();
  if (v8)
  {
    v9 = v8;

    AACustomByteStreamSetData(v9, a2);
    AACustomByteStreamSetCloseProc(v9, @objc closure #1 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetReadProc(v9, @objc closure #2 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetPReadProc(v9, @objc closure #3 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetWriteProc(v9, @objc closure #4 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetPWriteProc(v9, @objc closure #5 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetCancelProc(v9, @objc closure #6 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    AACustomByteStreamSetSeekProc(v9, @objc closure #7 in ArchiveByteStream.CustomByteStreamBridge.init(_:));
    outlined init with take of ArchiveStreamProtocol(&v12, v11);
    swift_beginAccess();
    outlined assign with take of ArchiveByteStreamProtocol?(v11, a2 + 16);
    swift_endAccess();
    *(a2 + 56) = v9;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v12);

    return 0;
  }

  return a2;
}

uint64_t outlined assign with take of ArchiveByteStreamProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B18ByteStreamProtocol_pSgMd, &_s12AppleArchive0B18ByteStreamProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ArchiveByteStreamProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AppleArchive0B18ByteStreamProtocol_pSgMd, &_s12AppleArchive0B18ByteStreamProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ArchiveByteStream._withStream<A>(stream:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    result = a2();
    if (!v4)
    {
      swift_beginAccess();
      result = *(a1 + 16);
      if (result)
      {
        result = AAByteStreamClose(result);
        *(a1 + 16) = 0;
        if (result)
        {
          lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
          swift_allocError();
          *v9 = 0;
          swift_willThrow();
          return (*(*(a3 - 8) + 8))(a4, a3);
        }
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static ArchiveByteStream.withFileStream<A>(path:mode:options:permissions:_:)@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  FilePath.withCString<A>(_:)();
  if (v8)
  {
    type metadata accessor for ArchiveByteStream();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    swift_beginAccess();
    *(v6 + 16) = v8;
    *(v6 + 24) = 1;
  }

  else
  {
    v6 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v6, a1, a2, a3);
}

uint64_t static ArchiveByteStream.withFileStream<A>(fd:automaticClose:_:)@<X0>(int a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = AAFileStreamOpenWithFD(a1, a2 & 1);
  if (v8)
  {
    v9 = v8;
    type metadata accessor for ArchiveByteStream();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    swift_beginAccess();
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
  }

  else
  {
    v10 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v10, a3, a4, a5);
}

uint64_t static ArchiveByteStream.withTemporaryFileStream<A>(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = AATempFileStreamOpen();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for ArchiveByteStream();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    swift_beginAccess();
    *(v8 + 16) = v7;
    *(v8 + 24) = 1;
  }

  else
  {
    v8 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v8, a1, a2, a3);
}

AAByteStream_impl *static ArchiveByteStream.withCompressionStream<A>(using:writingTo:blockSize:flags:threadCount:_:)@<X0>(AACompressionAlgorithm *a1@<X0>, uint64_t a2@<X1>, size_t a3@<X2>, AAFlagSet *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = *a1;
  v15 = *a4;
  swift_beginAccess();
  result = *(a2 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v17 = AACompressionOutputStreamOpen(result, v14, a3, v15, a5);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for ArchiveByteStream();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    swift_beginAccess();
    *(v19 + 16) = v18;
    *(v19 + 24) = 1;
  }

  else
  {
    v19 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v19, a6, a7, a8);
}

uint64_t static ArchiveByteStream.withCompressionStream<A>(appendingTo:flags:threadCount:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v13 = *a2;
  swift_beginAccess();
  result = *(a1 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = a6();
  if (v15)
  {
    v16 = v15;
    type metadata accessor for ArchiveByteStream();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    swift_beginAccess();
    *(v17 + 16) = v16;
    *(v17 + 24) = 1;
  }

  else
  {
    v17 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v17, a4, a5, a7);
}

AAByteStream_impl *static ArchiveByteStream.withRandomAccessDecompressionStream<A>(readingFrom:allocationLimit:flags:threadCount:_:)@<X0>(AAByteStream_impl *result@<X0>, int64_t a2@<X1>, AAFlagSet *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a2 < -1)
  {
    goto LABEL_11;
  }

  v11 = result;
  v13 = *a3;
  swift_beginAccess();
  result = *(v11 + 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = AADecompressionRandomAccessInputStreamOpen(result, a2, v13, a4);
  if (v14)
  {
    v15 = v14;
    type metadata accessor for ArchiveByteStream();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    swift_beginAccess();
    *(v16 + 16) = v15;
    *(v16 + 24) = 1;
  }

  else
  {
    v16 = 0;
  }

  static ArchiveByteStream._withStream<A>(stream:_:)(v16, a5, a6, a7);
}

uint64_t static ArchiveByteStream.withStream<A, B>(wrapping:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = static ArchiveByteStream.customStream<A>(instance:)(a1, a3, a5);
  static ArchiveByteStream._withStream<A>(stream:_:)(v9, a2, a4, a6);
}

uint64_t ArchiveHeader.FieldKey.init(_:)@<X0>(int *a1@<X8>)
{
  v2 = String.utf8CString.getter();
  if (*(v2 + 16) != 4)
  {
    goto LABEL_13;
  }

  v3 = v2;
  if (*(v2 + 35) || *(v2 + 32) < 32 || *(v2 + 33) < 32 || *(v2 + 34) <= 31)
  {
    goto LABEL_13;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 >= 3)
      {
        v5 = *(v3 + 32);
        v6 = *(v3 + 33);
        v7 = *(v3 + 34);

        *a1 = v5 | (v6 << 8) | (v7 << 16);
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.FieldKey.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_299A3C620;
  *(inited + 32) = v1;
  *(inited + 34) = BYTE2(v1);
  *(inited + 35) = 0;
  v4 = specialized String.init(cString:)(inited, v3);
  swift_setDeallocating();
  return v4;
}

Swift::Int ArchiveHeader.FieldKey.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchiveHeader.FieldKey()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_299A3C620;
  *(inited + 32) = v1;
  *(inited + 34) = BYTE2(v1);
  *(inited + 35) = 0;
  v4 = specialized String.init(cString:)(inited, v3);
  swift_setDeallocating();
  return v4;
}

uint64_t specialized String.init(cString:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2A1C724B0](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2A1C724B0](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2A1C724B0](a1, a2);
}

unint64_t lazy protocol witness table accessor for type ArchiveHeader.FieldKey and conformance ArchiveHeader.FieldKey()
{
  result = lazy protocol witness table cache variable for type ArchiveHeader.FieldKey and conformance ArchiveHeader.FieldKey;
  if (!lazy protocol witness table cache variable for type ArchiveHeader.FieldKey and conformance ArchiveHeader.FieldKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveHeader.FieldKey and conformance ArchiveHeader.FieldKey);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.ChecksumMode.description.getter()
{
  v1 = *v0;
  v2 = 0x363532616873;
  v3 = 4144959;
  if (*v0 == 1)
  {
    v3 = 0x616872756D72756DLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveEncryptionContext.ChecksumMode and conformance ArchiveEncryptionContext.ChecksumMode()
{
  result = lazy protocol witness table cache variable for type ArchiveEncryptionContext.ChecksumMode and conformance ArchiveEncryptionContext.ChecksumMode;
  if (!lazy protocol witness table cache variable for type ArchiveEncryptionContext.ChecksumMode and conformance ArchiveEncryptionContext.ChecksumMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveEncryptionContext.ChecksumMode and conformance ArchiveEncryptionContext.ChecksumMode);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchiveEncryptionContext.ChecksumMode()
{
  v1 = *v0;
  v2 = 1701736302;
  if (*v0)
  {
    v2 = 4144959;
  }

  if (v1 == 1)
  {
    v2 = 0x616872756D72756DLL;
  }

  if (v1 == 2)
  {
    return 0x363532616873;
  }

  else
  {
    return v2;
  }
}

uint64_t ArchiveEncryptionContext.SignatureMode.description.getter()
{
  v1 = 4144959;
  if (*v0 == 1)
  {
    v1 = 0x32705F6173646365;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveEncryptionContext.SignatureMode and conformance ArchiveEncryptionContext.SignatureMode()
{
  result = lazy protocol witness table cache variable for type ArchiveEncryptionContext.SignatureMode and conformance ArchiveEncryptionContext.SignatureMode;
  if (!lazy protocol witness table cache variable for type ArchiveEncryptionContext.SignatureMode and conformance ArchiveEncryptionContext.SignatureMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveEncryptionContext.SignatureMode and conformance ArchiveEncryptionContext.SignatureMode);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchiveEncryptionContext.SignatureMode()
{
  v1 = 1701736302;
  if (*v0)
  {
    v1 = 4144959;
  }

  if (*v0 == 1)
  {
    return 0x32705F6173646365;
  }

  else
  {
    return v1;
  }
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, MEMORY[0x29EDC85D0]);
}

{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, MEMORY[0x29EDC85B0]);
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  result = AAHeaderGetFieldCount(v7);
  if (result < a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = AAHeaderGetFieldCount(v7);
  if (result < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_10:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = AAHeaderGetFieldCount(v7);
  if (v10 <= result)
  {
    return v10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  v9 = *(v4 + 16);
  result = a4(v9);
  if (result < a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = a4(v9);
  if (result < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = a3 - a1;
  if (a2 >= 1)
  {
    if (v11 < 0 || v11 >= a2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v11 <= 0 && v11 > a2)
  {
    return 0;
  }

LABEL_10:
  v13 = __OFADD__(a1, a2);
  v12 = a1 + a2;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = a4(v9);
  if (v12 <= result)
  {
    return v12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void specialized SetAlgebra.subtract(_:)()
{
  v1 = *v0;
  type metadata accessor for ArchiveHeader.FieldKeySet();
  inited = swift_initStackObject();
  v3 = AAFieldKeySetClone(*(v1 + 16));
  if (!v3 || (*(inited + 16) = v3, *(inited + 24) = 1, v4 = , specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(v4), , v5 = *(inited + 16), AAFieldKeySetSelectKeySet(*(v1 + 16), v5) < 0))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_setDeallocating();
    if (*(inited + 24) == 1)
    {
      AAFieldKeySetDestroy(v5);
    }
  }
}

uint64_t ArchiveHeader.FieldKeySet.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = AAFieldKeySetCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.init()()
{
  v1 = AAFieldKeySetCreate();
  if (v1)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  v1 = String.utf8CString.getter();

  v2 = AAFieldKeySetCreateWithString((v1 + 32));

  if (v2)
  {
    *(v0 + 16) = v2;
    *(v0 + 24) = 1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t *ArchiveHeader.FieldKeySet.init(_:)()
{
  v1 = *v0;
  v2 = String.utf8CString.getter();

  v3 = AAFieldKeySetCreateWithString((v2 + 32));

  if (v3)
  {
    v0[2] = v3;
    *(v0 + 24) = 1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t ArchiveHeader.FieldKeySet.__allocating_init(copying:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = AAFieldKeySetClone(*(a1 + 16));
  if (v3)
  {
    v4 = v3;

    *(v2 + 16) = v4;
    *(v2 + 24) = 1;
    return v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.init(copying:)(uint64_t a1)
{
  v2 = AAFieldKeySetClone(*(a1 + 16));
  if (v2)
  {
    v3 = v2;

    *(v1 + 16) = v3;
    *(v1 + 24) = 1;
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static ArchiveHeader.FieldKeySet.defaultForArchive.getter(const char *a1)
{
  v2 = swift_allocObject();
  v3 = AAFieldKeySetCreateWithString(a1);
  if (v3)
  {
    *(v2 + 16) = v3;
    *(v2 + 24) = 1;
    return v2;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAFieldKeySetDestroy(*(v0 + 16));
  }

  return v0;
}

uint64_t ArchiveHeader.FieldKeySet.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    AAFieldKeySetDestroy(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t ArchiveHeader.FieldKeySet.insert(_:)(AAFieldKey *a1, AAFieldKey *a2)
{
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = *a2;
  v7 = AAFieldKeySetContainsKey(v5, v6);
  if (v7 < 0 || (v8 = v7, v7 != 1) && (v9 = v4, AAFieldKeySetInsertKey(v5, v9) < 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = v8 != 1;
    *a1 = v4;
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.contains(_:)(AAFieldKey *a1)
{
  v2 = *a1;
  v3 = AAFieldKeySetContainsKey(*(v1 + 16), v2);
  if ((v3 & 0x80000000) == 0)
  {
    return v3 == 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.FieldKeySet.remove(_:)@<X0>(AAFieldKey *a1@<X0>, AAFieldKey *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *a1;
  result = AAFieldKeySetContainsKey(v5, v6);
  if ((result & 0x80000000) == 0)
  {
    v8 = result;
    if (result != 1)
    {
      v4.ikey = 0;
LABEL_5:
      *a2 = v4;
      a2[1].skey[0] = v8 != 1;
      return result;
    }

    v9 = v4;
    result = AAFieldKeySetRemoveKey(v5, v9);
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.FieldKeySet.update(with:)@<X0>(AAFieldKey *a1@<X0>, AAFieldKey *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  result = AAFieldKeySetInsertKey(*(v2 + 16), v5);
  if ((result & 0x80000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v4;
    a2[1].skey[0] = 0;
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.formUnion(_:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  result = a2(*(v2 + 16), *(a1 + 16));
  if ((result & 0x80000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(uint64_t a1)
{
  specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(a1);
}

uint64_t ArchiveHeader.FieldKeySet.intersection(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v6 = *v4;
  v7 = swift_allocObject();
  v8 = AAFieldKeySetClone(v4[2]);
  if (v8)
  {
    *(v7 + 16) = v8;
    *(v7 + 24) = 1;
    v9 = *(a1 + 16);
    if ((a2() & 0x80000000) == 0)
    {
      return v7;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ArchiveHeader.FieldKeySet.symmetricDifference(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_allocObject();
  v6 = AAFieldKeySetClone(v2[2]);
  if (v6)
  {
    *(v5 + 16) = v6;
    *(v5 + 24) = 1;
    specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(a1);

    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

AAFieldKey ArchiveHeader.FieldKeySet.subscript.getter@<W0>(unint64_t i@<X0>, AAFieldKey *a2@<X8>)
{
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(i))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = AAFieldKeySetGetKey(*(v2 + 16), i);
  if ((result.ikey << 8) >> 24 >= 32 && HIBYTE(result.ikey) == 0 && result.skey[0] >= 32 && *result.skey >> 8 > 31)
  {
    *a2 = result;
    return result;
  }

LABEL_15:
  result.ikey = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static ArchiveHeader.FieldKeySet.== infix(_:_:)()
{
  v0 = ArchiveHeader.FieldKeySet.description.getter();
  v2 = v1;
  if (v0 == ArchiveHeader.FieldKeySet.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t ArchiveHeader.FieldKeySet.description.getter()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = *(v0 + 16);
  KeyCount = AAFieldKeySetGetKeyCount(v4);
  if (KeyCount >> 30)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = 4 * KeyCount;
  v0 = swift_slowAlloc();
  if ((AAFieldKeySetSerialize(v4, v6, v0) & 0x80000000) == 0)
  {
    static String.Encoding.utf8.getter();
    v7 = String.init(cString:encoding:)();
    if (v8)
    {
      v9 = v7;
      MEMORY[0x29C2A93A0](v0, -1, -1);
      return v9;
    }

    goto LABEL_6;
  }

LABEL_7:
  MEMORY[0x29C2A93A0](v0, -1, -1);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = AAFieldKeySetCreate();
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 24) = 1;
    *a1 = v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance ArchiveHeader.FieldKeySet(AAFieldKey *a1)
{
  v2 = *a1;
  v3 = AAFieldKeySetContainsKey(*(*v1 + 16), v2);
  if ((v3 & 0x80000000) == 0)
  {
    return v3 == 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = ArchiveHeader.FieldKeySet.union(_:)(*a1);

  *a2 = v5;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = ArchiveHeader.FieldKeySet.intersection(_:)(*a1);

  *a2 = v5;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = AAFieldKeySetClone(*(v5 + 16));
  if (v7)
  {
    *(v6 + 16) = v7;
    *(v6 + 24) = 1;
    specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(v4);

    *a2 = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance ArchiveHeader.FieldKeySet(AAFieldKey *a1, AAFieldKey *a2)
{
  v5 = *a2;
  v3 = *v2;
  return ArchiveHeader.FieldKeySet.insert(_:)(a1, &v5) & 1;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance ArchiveHeader.FieldKeySet@<X0>(AAFieldKey *a1@<X0>, AAFieldKey *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  result = AAFieldKeySetInsertKey(*(*v2 + 16), v5);
  if ((result & 0x80000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v4;
    a2[1].skey[0] = 0;
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance ArchiveHeader.FieldKeySet(uint64_t a1)
{
  if (AAFieldKeySetInsertKeySet(*(*v1 + 16), *(*a1 + 16)) < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance ArchiveHeader.FieldKeySet(uint64_t a1)
{
  result = AAFieldKeySetSelectKeySet(*(*v1 + 16), *(*a1 + 16));
  if ((result & 0x80000000) != 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance ArchiveHeader.FieldKeySet(uint64_t *a1)
{
  v2 = *v1;
  specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(*a1);
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  inited = swift_initStackObject();
  v7 = AAFieldKeySetClone(*(v5 + 16));
  if (v7)
  {
    *(inited + 16) = v7;
    *(inited + 24) = 1;

    specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(v8);

    v9 = ArchiveHeader.FieldKeySet.intersection(_:)(inited);
    swift_setDeallocating();
    if (*(inited + 24) == 1)
    {
      AAFieldKeySetDestroy(*(inited + 16));
    }

    *a2 = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance ArchiveHeader.FieldKeySet(uint64_t *a1)
{
  v2 = *v1;
  ArchiveHeader.FieldKeySet.intersection(_:)(*a1);
  v3 = ArchiveHeader.FieldKeySet.description.getter();
  v5 = v4;
  if (v3 == ArchiveHeader.FieldKeySet.description.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

BOOL protocol witness for SetAlgebra.isDisjoint(with:) in conformance ArchiveHeader.FieldKeySet(uint64_t *a1)
{
  v2 = *v1;
  v3 = ArchiveHeader.FieldKeySet.intersection(_:)(*a1);
  LODWORD(v2) = AAFieldKeySetGetKeyCount(*(v3 + 16));

  return v2 == 0;
}

uint64_t protocol witness for SetAlgebra.isSuperset(of:) in conformance ArchiveHeader.FieldKeySet(uint64_t *a1)
{
  v2 = *a1;
  ArchiveHeader.FieldKeySet.intersection(_:)(*v1);
  v3 = ArchiveHeader.FieldKeySet.description.getter();
  v5 = v4;
  if (v3 == ArchiveHeader.FieldKeySet.description.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ArchiveHeader.FieldKeySet@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = AAFieldKeySetGetKeyCount(*(*v2 + 16));
    if (v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ArchiveHeader.FieldKeySet(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = AAFieldKeySetGetKeyCount(*(*v1 + 16));
    if (v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveHeader.FieldKeySet@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, MEMORY[0x29EDC85B8]);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ArchiveHeader.FieldKeySet(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = ArchiveHeader.FieldKeySet.description.getter();
  v6 = v5;
  if (v4 == ArchiveHeader.FieldKeySet.description.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ArchiveHeader.FieldKeySet@<X0>(void *a1@<X8>)
{
  result = AAFieldKeySetGetKeyCount(*(*v1 + 16));
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveHeader.FieldKeySet(AAFieldKey *a1, unint64_t *a2))()
{
  v3 = *a2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  Key = AAFieldKeySetGetKey(*(*v2 + 16), v3);
  if ((Key.ikey << 8) >> 24 >= 32 && HIBYTE(Key.ikey) == 0 && Key.skey[0] >= 32 && *Key.skey >> 8 > 31)
  {
    *a1 = Key;
    return protocol witness for Collection.subscript.read in conformance ArchiveHeader._FieldTypes;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArchiveHeader.FieldKeySet@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  result = AAFieldKeySetGetKeyCount(*(v6 + 16));
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 > result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t protocol witness for Collection.indices.getter in conformance ArchiveHeader.FieldKeySet@<X0>(void *a1@<X8>)
{
  result = AAFieldKeySetGetKeyCount(*(*v1 + 16));
  *a1 = 0;
  a1[1] = result;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ArchiveHeader.FieldKeySet@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = AAFieldKeySetGetKeyCount(*(*v3 + 16));
    if (v5 <= result)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance ArchiveHeader.FieldKeySet(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(*v2 + 16);
  result = AAFieldKeySetGetKeyCount(v5);
  if (v3 > result)
  {
    __break(1u);
  }

  else
  {
    result = AAFieldKeySetGetKeyCount(v5);
    if (v4 <= result)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance ArchiveHeader.FieldKeySet@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = AAFieldKeySetGetKeyCount(*(*v2 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance ArchiveHeader.FieldKeySet(unint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = AAFieldKeySetGetKeyCount(*(v3 + 16));
  if (v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance ArchiveHeader.FieldKeySet()
{
  v1 = *(*v0 + 16);
  KeyCount = AAFieldKeySetGetKeyCount(v1);
  AAFieldKeySetGetKeyCount(v1);
  result = AAFieldKeySetGetKeyCount(v1);
  if (result >= KeyCount)
  {
    return KeyCount;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveHeader.FieldKeySet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC8FieldKeyVGMd, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC8FieldKeyVGMR, specialized Sequence._copySequenceContents(initializing:));
}

{
  v1 = *(a1 + 16);
  KeyCount = AAFieldKeySetGetKeyCount(v1);
  AAFieldKeySetGetKeyCount(v1);
  result = AAFieldKeySetGetKeyCount(v1);
  if (result >= KeyCount)
  {
    if (KeyCount)
    {
      v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC8FieldKeyV_Tt1g5Tm(KeyCount, 0, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC8FieldKeyVGMd, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC8FieldKeyVGMR);

      v5 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v4 + 4), KeyCount);

      if (v5 == KeyCount)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x29EDCA190];
  }

  __break(1u);
  return result;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC9FieldTypeVGMd, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC9FieldTypeVGMR, specialized Sequence._copySequenceContents(initializing:));
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, void *, void, uint64_t))
{
  v8 = *(a1 + 16);
  FieldCount = AAHeaderGetFieldCount(v8);
  AAHeaderGetFieldCount(v8);
  result = AAHeaderGetFieldCount(v8);
  if (result >= FieldCount)
  {
    if (FieldCount)
    {
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC8FieldKeyV_Tt1g5Tm(FieldCount, 0, a2, a3);

      v12 = a4(&v13, v11 + 4, FieldCount, a1);

      if (v12 == FieldCount)
      {
        return v11;
      }

      __break(1u);
    }

    return MEMORY[0x29EDCA190];
  }

  __break(1u);
  return result;
}