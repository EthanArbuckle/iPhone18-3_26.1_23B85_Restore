uint64_t IdentityConfigurationInternal.readerIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier + 8);

  return v1;
}

id IdentityConfigurationInternal.__allocating_init(readerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id IdentityConfigurationInternal.init(readerIdentifier:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id IdentityConfigurationInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityConfigurationInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static IdentityConfigurationInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87090 = a1;
  return result;
}

Swift::Void __swiftcall IdentityConfigurationInternal.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier + 8);
  v5 = sub_26121CC50();
  v6 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id IdentityConfigurationInternal.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t IdentityConfigurationInternal.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_261199284();
  v2 = sub_26121D060();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_26121CC70();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_261199284()
{
  result = qword_27FE870A0;
  if (!qword_27FE870A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE870A0);
  }

  return result;
}

void sub_2611996B8()
{
  v0 = MCGestaltGetDeviceUUID();
  if (v0)
  {
    v1 = v0;
    v2 = sub_26121CC80();
    v4 = v3;

    qword_27FE88588 = v2;
    unk_27FE88590 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Constants.uniqueDeviceID.getter()
{
  if (qword_27FE88580 != -1)
  {
    swift_once();
  }

  v0 = qword_27FE88588;

  return v0;
}

ProximityReaderCore::UnknownErrorCode_optional __swiftcall UnknownErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26119ADF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6968546172746C75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1852401780;
    }

    else
    {
      v5 = 0x6968546172746C75;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x72616C75676572;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6B63696874;
    }

    else
    {
      v5 = 0x6968546172746C75;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000006B63;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x72616C75676572;
  v9 = 0xE500000000000000;
  v10 = 0x6B63696874;
  if (a2 != 3)
  {
    v10 = 0x6968546172746C75;
    v9 = 0xEA00000000006B63;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1852401780;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26121D4D0();
  }

  return v13 & 1;
}

uint64_t sub_26119AF4C()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1 + 1);
  return sub_26121D5D0();
}

uint64_t sub_26119AFC4()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1 + 1);
  return sub_26121D5D0();
}

ProximityReaderCore::XPCUserInfoKey_optional __swiftcall XPCUserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26121D4F0();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t XPCUserInfoKey.rawValue.getter()
{
  result = 0x746361736E617274;
  switch(*v0)
  {
    case 1:
      result = 0x746E61686372656DLL;
      break;
    case 2:
      result = 0x49737365636F7270;
      break;
    case 3:
      result = 0x79636E6572727563;
      break;
    case 4:
      result = 0x6E656B6F546E6970;
      break;
    case 5:
      result = 0x69666E6F436E6970;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x4C79636176697270;
      break;
    case 8:
      result = 0x65646F4D6975;
      break;
    case 9:
      result = 0x6F69737365536975;
      break;
    case 0xA:
      result = 7234157;
      break;
    case 0xB:
      result = 0x746E756F6D61;
      break;
    case 0xC:
      result = 0x6C50737961776C61;
      break;
    case 0xD:
      result = 0x6172747369676572;
      break;
    case 0xE:
      result = 0x74736575716572;
      break;
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 0x10:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26119B2C0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = XPCUserInfoKey.rawValue.getter();
  v4 = v3;
  if (v2 == XPCUserInfoKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26121D4D0();
  }

  return v7 & 1;
}

uint64_t sub_26119B35C()
{
  v1 = *v0;
  sub_26121D5B0();
  XPCUserInfoKey.rawValue.getter();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_26119B3C4()
{
  v2 = *v0;
  XPCUserInfoKey.rawValue.getter();
  sub_26121CD50();
}

uint64_t sub_26119B428()
{
  v1 = *v0;
  sub_26121D5B0();
  XPCUserInfoKey.rawValue.getter();
  sub_26121CD50();

  return sub_26121D5D0();
}

unint64_t sub_26119B498@<X0>(unint64_t *a1@<X8>)
{
  result = XPCUserInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ProximityReaderCore::UIMode_optional __swiftcall UIMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_26119B4D8()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t sub_26119B54C()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t *sub_26119B590@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

ProximityReaderCore::MaterialType_optional __swiftcall MaterialType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26121D340();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MaterialType.rawValue.getter()
{
  v1 = 0x6968546172746C75;
  v2 = *v0;
  v3 = 0x72616C75676572;
  v4 = 0x6B63696874;
  if (v2 != 3)
  {
    v4 = 0x6968546172746C75;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 1852401780;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26119B6D8()
{
  result = qword_27FE87170;
  if (!qword_27FE87170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87170);
  }

  return result;
}

unint64_t sub_26119B730()
{
  result = qword_27FE87178;
  if (!qword_27FE87178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87178);
  }

  return result;
}

unint64_t sub_26119B788()
{
  result = qword_27FE87180;
  if (!qword_27FE87180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87180);
  }

  return result;
}

unint64_t sub_26119B7EC()
{
  result = qword_27FE87188;
  if (!qword_27FE87188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87188);
  }

  return result;
}

uint64_t sub_26119B840()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_26119B910()
{
  *v0;
  *v0;
  *v0;
  sub_26121CD50();
}

uint64_t sub_26119B9CC()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

void sub_26119BAA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6968546172746C75;
  v5 = 0xE700000000000000;
  v6 = 0x72616C75676572;
  v7 = 0xE500000000000000;
  v8 = 0x6B63696874;
  if (v2 != 3)
  {
    v8 = 0x6968546172746C75;
    v7 = 0xEA00000000006B63;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852401780;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26119BB44()
{
  result = qword_27FE87190;
  if (!qword_27FE87190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87198, &qword_26121EDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87190);
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

uint64_t getEnumTagSinglePayload for XPCUserInfoKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCUserInfoKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UIMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for XPCServices(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCServices(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for IdentityInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26119C3A8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x7461446567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_26119C3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026122B790 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_26119C4F0(uint64_t a1)
{
  v2 = sub_26119CB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26119C52C(uint64_t a1)
{
  v2 = sub_26119CB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26119C57C(uint64_t a1)
{
  v2 = sub_26119CC0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26119C5B8(uint64_t a1)
{
  v2 = sub_26119CC0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26119C5F8()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

uint64_t sub_26119C668()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

uint64_t sub_26119C6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26121D4D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26119C738(uint64_t a1)
{
  v2 = sub_26119CBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26119C774(uint64_t a1)
{
  v2 = sub_26119CBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityMerchantDetails.MerchantImage.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871A0, &qword_26121F140);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871A8, &qword_26121F148);
  v22 = *(v8 - 8);
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871B0, &qword_26121F150);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26119CB64();
  v18 = v25;
  sub_26121D600();
  if ((v18 & 0x2000000000000000) != 0)
  {
    LOBYTE(v27) = 1;
    sub_26119CBB8();
    sub_26121D410();
    v20 = v24;
    sub_26121D490();
    (*(v23 + 8))(v7, v20);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_26119CC0C();
    sub_26121D410();
    v27 = v26;
    v28 = v18;
    sub_26119CC60();
    sub_26121D4A0();
    (*(v22 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26119CB64()
{
  result = qword_27FE88C68;
  if (!qword_27FE88C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88C68);
  }

  return result;
}

unint64_t sub_26119CBB8()
{
  result = qword_27FE88C70;
  if (!qword_27FE88C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88C70);
  }

  return result;
}

unint64_t sub_26119CC0C()
{
  result = qword_27FE88C78;
  if (!qword_27FE88C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88C78);
  }

  return result;
}

unint64_t sub_26119CC60()
{
  result = qword_27FE871B8;
  if (!qword_27FE871B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE871B8);
  }

  return result;
}

uint64_t sub_26119CCCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26119D444(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t IdentityMerchantDetails.image.getter()
{
  v1 = *v0;
  sub_26119D8F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t IdentityMerchantDetails.mbn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdentityMerchantDetails.identifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IdentityMerchantDetails.init(image:mbn:identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_26119CDB8()
{
  qword_27FE88C38 = *sub_261199798();
  result = 1.49166815e-154;
  unk_27FE88C40 = xmmword_26121F130;
  qword_27FE88C50 = 0xE000000000000000;
  unk_27FE88C58 = 0;
  qword_27FE88C60 = 0xE000000000000000;
  return result;
}

uint64_t static IdentityMerchantDetails.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FE88C30 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_27FE88C38;
  v3 = qword_27FE88C50;
  v2 = unk_27FE88C58;
  v4 = qword_27FE88C60;
  *a1 = qword_27FE88C38;
  v5 = xmmword_27FE88C40;
  *(a1 + 8) = xmmword_27FE88C40;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  sub_26119D8F8(v1, v5);
}

uint64_t sub_26119CE98()
{
  v1 = 7234157;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_26119CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26119E274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26119CF20(uint64_t a1)
{
  v2 = sub_26119D958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26119CF5C(uint64_t a1)
{
  v2 = sub_26119D958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityMerchantDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871C0, &qword_26121F158);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26119D8F8(v8, v9);
  sub_26119D958();
  sub_26121D600();
  v16 = v8;
  v17 = v9;
  v18 = 0;
  sub_26119D9AC();
  v13 = v15[5];
  sub_26121D4A0();
  sub_26119DA00(v16, v17);
  if (!v13)
  {
    LOBYTE(v16) = 1;
    sub_26121D460();
    LOBYTE(v16) = 2;
    sub_26121D460();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdentityMerchantDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871D0, &qword_26121F160);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26119D958();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  sub_26119DAAC();
  sub_26121D3F0();
  v11 = v26;
  v25 = v27;
  LOBYTE(v26) = 1;
  v23 = sub_26121D3B0();
  v24 = v12;
  LOBYTE(v26) = 2;
  v13 = sub_26121D3B0();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v9, v5);
  v17 = v11;
  *a2 = v11;
  v18 = v24;
  v19 = v25;
  v20 = v23;
  a2[1] = v25;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;
  a2[5] = v15;
  sub_26119D8F8(v17, v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26119DA00(v17, v19);
}

uint64_t sub_26119D444(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871E0, &qword_26121F870);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871E8, &qword_26121F878);
  v32 = *(v6 - 8);
  v7 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE871F0, &unk_26121F880);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v30 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v37 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_26119CB64();
  v18 = v35;
  sub_26121D5F0();
  if (!v18)
  {
    v31 = v6;
    v19 = v34;
    v35 = v11;
    v20 = sub_26121D400();
    v21 = v10;
    if (*(v20 + 16) == 1)
    {
      v22 = v35;
      if (*(v20 + 32))
      {
        LOBYTE(v36) = 1;
        sub_26119CBB8();
        sub_26121D350();
        v17 = sub_26121D3E0();
        (*(v33 + 8))(v5, v19);
        (*(v22 + 8))(v14, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v36) = 0;
        sub_26119CC0C();
        sub_26121D350();
        sub_26119E390();
        v29 = v31;
        sub_26121D3F0();
        (*(v32 + 8))(v9, v29);
        (*(v22 + 8))(v14, v21);
        swift_unknownObjectRelease();
        v17 = v36;
      }
    }

    else
    {
      v23 = v10;
      v24 = sub_26121D220();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
      *v26 = &type metadata for IdentityMerchantDetails.MerchantImage;
      v17 = v14;
      sub_26121D360();
      sub_26121D210();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v17;
}

uint64_t sub_26119D8F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_26119D904(a1, a2);
  }

  return a1;
}

uint64_t sub_26119D904(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26119D958()
{
  result = qword_27FE88C80[0];
  if (!qword_27FE88C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE88C80);
  }

  return result;
}

unint64_t sub_26119D9AC()
{
  result = qword_27FE871C8;
  if (!qword_27FE871C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE871C8);
  }

  return result;
}

uint64_t sub_26119DA00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_26119DA0C(a1, a2);
  }

  return a1;
}

uint64_t sub_26119DA0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_26119DAAC()
{
  result = qword_27FE871D8;
  if (!qword_27FE871D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE871D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26119DB3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26119DB84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26119DBEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26119DC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityMerchantDetails.MerchantImage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityMerchantDetails.MerchantImage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26119DE58()
{
  result = qword_27FE88F90[0];
  if (!qword_27FE88F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE88F90);
  }

  return result;
}

unint64_t sub_26119DEB0()
{
  result = qword_27FE891A0[0];
  if (!qword_27FE891A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE891A0);
  }

  return result;
}

unint64_t sub_26119DF08()
{
  result = qword_27FE893B0[0];
  if (!qword_27FE893B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE893B0);
  }

  return result;
}

unint64_t sub_26119DF60()
{
  result = qword_27FE895C0[0];
  if (!qword_27FE895C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE895C0);
  }

  return result;
}

unint64_t sub_26119DFB8()
{
  result = qword_27FE896D0;
  if (!qword_27FE896D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE896D0);
  }

  return result;
}

unint64_t sub_26119E010()
{
  result = qword_27FE896D8[0];
  if (!qword_27FE896D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE896D8);
  }

  return result;
}

unint64_t sub_26119E068()
{
  result = qword_27FE89760;
  if (!qword_27FE89760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE89760);
  }

  return result;
}

unint64_t sub_26119E0C0()
{
  result = qword_27FE89768[0];
  if (!qword_27FE89768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE89768);
  }

  return result;
}

unint64_t sub_26119E118()
{
  result = qword_27FE897F0;
  if (!qword_27FE897F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE897F0);
  }

  return result;
}

unint64_t sub_26119E170()
{
  result = qword_27FE897F8[0];
  if (!qword_27FE897F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE897F8);
  }

  return result;
}

unint64_t sub_26119E1C8()
{
  result = qword_27FE89880;
  if (!qword_27FE89880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE89880);
  }

  return result;
}

unint64_t sub_26119E220()
{
  result = qword_27FE89888[0];
  if (!qword_27FE89888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE89888);
  }

  return result;
}

uint64_t sub_26119E274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7234157 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

unint64_t sub_26119E390()
{
  result = qword_27FE871F8;
  if (!qword_27FE871F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE871F8);
  }

  return result;
}

void __swiftcall IdentityEntitlementVerifier.init(_:)(ProximityReaderCore::IdentityEntitlementVerifier *__return_ptr retstr, NSXPCConnection a2)
{
  v4 = sub_26121CC50();
  v5 = [(objc_class *)a2.super.isa valueForEntitlement:v4];

  if (v5)
  {
    sub_26121D150();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    sub_26119E5EC(&v14);
  }

  v6 = 0;
LABEL_9:
  v7 = sub_26121CC50();
  v8 = [(objc_class *)a2.super.isa valueForEntitlement:v7];

  if (v8)
  {
    sub_26121D150();

    swift_unknownObjectRelease();
  }

  else
  {

    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87200, &qword_26121F898);
    v9 = swift_dynamicCast();
    v10 = v11;
    if (!v9)
    {
      v10 = 0;
    }
  }

  else
  {
    sub_26119E5EC(&v14);
    v10 = 0;
  }

  retstr->hasIdentityDisplayEntitlement = v6;
  *(&retstr->identityReadEntitlement.value._rawValue + 7) = v10;
}

uint64_t sub_26119E5EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall IdentityEntitlementVerifier.init()(ProximityReaderCore::IdentityEntitlementVerifier *__return_ptr retstr)
{
  v2 = SecTaskCreateFromSelf(0);
  if (!v2)
  {
    v6 = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = sub_26121CC50();
  v5 = SecTaskCopyValueForEntitlement(v3, v4, 0);

  if (v5)
  {
    v12 = v5;
    v6 = swift_dynamicCast() & v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_26121CC50();
  v8 = SecTaskCopyValueForEntitlement(v3, v7, 0);

  if (!v8)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87200, &qword_26121F898);
  v9 = swift_dynamicCast();
  v10 = v12;
  if (!v9)
  {
    v10 = 0;
  }

LABEL_11:
  retstr->hasIdentityDisplayEntitlement = v6;
  *(&retstr->identityReadEntitlement.value._rawValue + 7) = v10;
}

uint64_t sub_26119E7A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26119E804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t MobileDriversLicenseTransferType.hashValue.getter()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t MobileDriversLicenseTransferType.description.getter()
{
  v1 = 0x61746144776172;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4F79616C70736964;
  }
}

unint64_t sub_26119E960()
{
  result = qword_27FE87208;
  if (!qword_27FE87208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87208);
  }

  return result;
}

uint64_t sub_26119E9B4()
{
  v1 = 0x61746144776172;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4F79616C70736964;
  }
}

uint64_t IdentityInformation.portraitData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData);
  sub_26119EA60(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData + 8));
  return v1;
}

uint64_t sub_26119EA60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26119D904(a1, a2);
  }

  return a1;
}

uint64_t IdentityInformation.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name + 8);

  return v1;
}

uint64_t IdentityInformation.age.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age + 8);
  return result;
}

uint64_t IdentityInformation.issuer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer + 8);

  return v1;
}

id IdentityInformation.__allocating_init(portraitData:name:age:ageAtLeastElements:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age];
  *v21 = a5;
  v21[8] = a6 & 1;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements] = a7;
  v22 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer];
  *v22 = a8;
  *(v22 + 1) = a9;
  v24.receiver = v18;
  v24.super_class = v9;
  return objc_msgSendSuper2(&v24, sel_init);
}

id IdentityInformation.init(portraitData:name:age:ageAtLeastElements:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v19 = &v9[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v9[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v9[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age];
  *v21 = a5;
  v21[8] = a6 & 1;
  *&v9[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements] = a7;
  v22 = &v9[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer];
  *v22 = a8;
  *(v22 + 1) = a9;
  v24.receiver = v9;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

id IdentityInformation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26119ED58()
{
  v1 = *v0;
  v2 = 0x7469617274726F70;
  v3 = 6645601;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x726575737369;
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

uint64_t sub_26119EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26119FE5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26119EE20(uint64_t a1)
{
  v2 = sub_26119F1FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26119EE5C(uint64_t a1)
{
  v2 = sub_26119F1FC();

  return MEMORY[0x2821FE720](a1, v2);
}

id IdentityInformation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26119EF48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26119DA0C(a1, a2);
  }

  return a1;
}

uint64_t IdentityInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87240, &qword_26121F9C0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26119F1FC();
  sub_26121D600();
  v11 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData + 8);
  v21 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData);
  v22 = v11;
  v20 = 0;
  sub_26119EA60(v21, v11);
  sub_26119CC60();
  sub_26121D450();
  if (v2)
  {
    sub_26119EF48(v21, v22);
  }

  else
  {
    sub_26119EF48(v21, v22);
    v12 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name);
    v13 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name + 8);
    LOBYTE(v21) = 1;
    sub_26121D420();
    v14 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age);
    v15 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age + 8);
    LOBYTE(v21) = 2;
    sub_26121D440();
    v21 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87250, &qword_26121F9C8);
    sub_26119F64C(&qword_27FE87258);
    sub_26121D4A0();
    v16 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer);
    v17 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer + 8);
    LOBYTE(v21) = 4;
    sub_26121D460();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26119F1FC()
{
  result = qword_27FE89A90[0];
  if (!qword_27FE89A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE89A90);
  }

  return result;
}

id IdentityInformation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87260, &qword_26121F9D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26119F1FC();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = 0;
    sub_26119E390();
    sub_26121D3A0();
    *&v1[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData] = v24;
    LOBYTE(v24) = 1;
    v12 = sub_26121D370();
    v13 = &v1[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name];
    *v13 = v12;
    v13[1] = v14;
    LOBYTE(v24) = 2;
    v15 = sub_26121D390();
    v16 = &v1[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age];
    *v16 = v15;
    v16[8] = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87250, &qword_26121F9C8);
    v25 = 3;
    sub_26119F64C(&qword_27FE87270);
    sub_26121D3F0();
    *&v1[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements] = v24;
    LOBYTE(v24) = 4;
    v18 = sub_26121D3B0();
    v19 = &v1[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer];
    *v19 = v18;
    v19[1] = v20;
    v23.receiver = v1;
    v23.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_26119F64C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87250, &qword_26121F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_26119F6BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = IdentityInformation.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static IdentityInformation.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87210 = a1;
  return result;
}

Swift::Void __swiftcall IdentityInformation.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2611A00D4(&qword_27FE87278);
  sub_26121CFE0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  v4 = sub_26121C690();
  v6 = v5;

  v7 = sub_26121C660();
  sub_26119DA0C(v4, v6);
  v8 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id IdentityInformation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id IdentityInformation.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_26119FDE8();
  v3 = sub_26121D060();
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121C690();
    v7 = v6;

    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v5, v7);
    v9 = sub_2611A0014();
    sub_26119DA0C(v5, v7);
    if (v9)
    {
      sub_2611A00D4(&qword_27FE87288);
      sub_26121CFF0();
      v11 = v29;
      if (v29)
      {
        v25 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData + 8];
        v26 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData];
        v12 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name + 8];
        v23 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age];
        v24 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name];
        v13 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements];
        v21 = v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age + 8];
        v22 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer];
        v27 = *&v29[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer + 8];
        v14 = objc_allocWithZone(ObjectType);
        v15 = &v14[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_portraitData];
        *v15 = v26;
        v15[1] = v25;
        v16 = &v14[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_name];
        *v16 = v24;
        *(v16 + 1) = v12;
        v17 = &v14[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_age];
        *v17 = v23;
        v17[8] = v21;
        *&v14[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_ageAtLeastElements] = v13;
        v18 = &v14[OBJC_IVAR____TtC19ProximityReaderCore19IdentityInformation_issuer];
        *v18 = v22;
        *(v18 + 1) = v27;
        sub_26119EA60(v26, v25);
        sub_26119EA60(v26, v25);
        v28.receiver = v14;
        v28.super_class = ObjectType;

        v19 = objc_msgSendSuper2(&v28, sel_init);

        sub_26119EF48(v26, v25);
        swift_getObjectType();
        swift_deallocPartialClassInstance();
        v20 = v19;
        [v9 finishDecoding];

        sub_26119DA0C(v5, v7);
        return v20;
      }

      [v9 finishDecoding];
    }

    sub_26119DA0C(v5, v7);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_26119FDE8()
{
  result = qword_27FE87280;
  if (!qword_27FE87280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE87280);
  }

  return result;
}

uint64_t sub_26119FE5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469617274726F70 && a2 == 0xEC00000061746144;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026122B8E0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26121D4D0();

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

id sub_2611A0014()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26121C660();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26121C500();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2611A00D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityInformation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2611A0188()
{
  result = qword_27FE89CA0[0];
  if (!qword_27FE89CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE89CA0);
  }

  return result;
}

unint64_t sub_2611A01E0()
{
  result = qword_27FE89DB0;
  if (!qword_27FE89DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE89DB0);
  }

  return result;
}

unint64_t sub_2611A0238()
{
  result = qword_27FE89DB8[0];
  if (!qword_27FE89DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE89DB8);
  }

  return result;
}

uint64_t VASMode.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x20646E6120736156;
  v2 = 0x796C6E6F20736156;
  if (a1 != 2)
  {
    v2 = 0x20746E656D796150;
  }

  if (a1)
  {
    v1 = 0x7020726F20736156;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2611A0338(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF746E656D796170;
  v3 = 0x20646E6120736156;
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x796C6E6F20736156;
  if (v4 != 2)
  {
    v6 = 0x20746E656D796150;
    v5 = 0xEC000000796C6E6FLL;
  }

  v7 = 0x7020726F20736156;
  v8 = 0xEE00746E656D7961;
  if (!*a1)
  {
    v7 = 0x20646E6120736156;
    v8 = 0xEF746E656D796170;
  }

  if (*a1 <= 1u)
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

  v11 = 0xE800000000000000;
  v12 = 0x796C6E6F20736156;
  if (*a2 != 2)
  {
    v12 = 0x20746E656D796150;
    v11 = 0xEC000000796C6E6FLL;
  }

  if (*a2)
  {
    v3 = 0x7020726F20736156;
    v2 = 0xEE00746E656D7961;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_26121D4D0();
  }

  return v15 & 1;
}

uint64_t sub_2611A04AC()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611A0590()
{
  *v0;
  *v0;
  *v0;
  sub_26121CD50();
}

uint64_t sub_2611A0660()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611A0740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s19ProximityReaderCore7VASModeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2611A0770(uint64_t *a1@<X8>)
{
  v2 = 0xEF746E656D796170;
  v3 = 0x20646E6120736156;
  v4 = 0xE800000000000000;
  v5 = 0x796C6E6F20736156;
  if (*v1 != 2)
  {
    v5 = 0x20746E656D796150;
    v4 = 0xEC000000796C6E6FLL;
  }

  if (*v1)
  {
    v3 = 0x7020726F20736156;
    v2 = 0xEE00746E656D7961;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t _s19ProximityReaderCore7VASModeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_26121D340();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2611A0870()
{
  result = qword_27FE87290;
  if (!qword_27FE87290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87290);
  }

  return result;
}

unint64_t sub_2611A08C8()
{
  result = qword_27FE87298;
  if (!qword_27FE87298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE872A0, &qword_26121FC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87298);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VASMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VASMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t PINSessionEvent.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2611A0AD8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t PINSessionEvent.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 0xD000000000000017;
    case 1:
      return 0x566E6F6973736573;
    case 0:
      return 0xD000000000000011;
  }

  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t TransactionUIEvent.init(readError:)(uint64_t a1)
{
  if ((a1 - 10) > 0x20)
  {
    return 12;
  }

  else
  {
    return qword_2612200A8[a1 - 10];
  }
}

unint64_t sub_2611A0BF0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611A12B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t TransactionUIEvent.description.getter(uint64_t a1)
{
  result = 0x6F4C726564616572;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 15:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
    case 9:
      result = 0x6143726564616572;
      break;
    case 10:
      result = 0x6553726564616572;
      break;
    case 11:
      result = 0x6954726564616572;
      break;
    case 12:
      result = 0x6146726564616572;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6156726564616572;
      break;
    case 17:
    case 19:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    default:
      sub_26121D510();
      __break(1u);
      JUMPOUT(0x2611A0EE4);
  }

  return result;
}

unint64_t sub_2611A0F60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611A12C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AccessibilityType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = sub_26119A810();
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v1 = sub_26119A83C();
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = sub_26119A7D0();
LABEL_10:
      v3 = *v1;
      v2 = v1[1];

      return v3;
    }

    if (a1 == 1)
    {
      v1 = sub_26119A7EC();
      goto LABEL_10;
    }
  }

  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t sub_2611A10E0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = sub_26119A810();
      goto LABEL_10;
    }

    if (v1 == 3)
    {
      v2 = sub_26119A83C();
      goto LABEL_10;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = sub_26119A7D0();
LABEL_10:
      v4 = *v2;
      v3 = v2[1];

      return v4;
    }

    if (v1 == 1)
    {
      v2 = sub_26119A7EC();
      goto LABEL_10;
    }
  }

  v6 = *v0;
  result = sub_26121D510();
  __break(1u);
  return result;
}

uint64_t sub_2611A117C()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t sub_2611A11C4()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

unint64_t sub_2611A12B8(unint64_t result)
{
  if (result > 0x14)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611A12C8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611A12DC()
{
  result = qword_27FE872A8;
  if (!qword_27FE872A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872A8);
  }

  return result;
}

unint64_t sub_2611A1334()
{
  result = qword_27FE872B0;
  if (!qword_27FE872B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872B0);
  }

  return result;
}

unint64_t sub_2611A138C()
{
  result = qword_27FE872B8;
  if (!qword_27FE872B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872B8);
  }

  return result;
}

unint64_t sub_2611A13E4()
{
  result = qword_27FE872C0;
  if (!qword_27FE872C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872C0);
  }

  return result;
}

unint64_t sub_2611A1478()
{
  result = qword_27FE872C8;
  if (!qword_27FE872C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872C8);
  }

  return result;
}

unint64_t sub_2611A14CC()
{
  result = qword_27FE872D0;
  if (!qword_27FE872D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872D0);
  }

  return result;
}

unint64_t sub_2611A1608@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611A19A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t IdentityUIEvent.description.getter(uint64_t a1)
{
  result = 0x6F4C726564616572;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 12:
      result = 0xD000000000000011;
      break;
    case 2:
    case 8:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6954726564616572;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
    case 10:
    case 14:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x464E726564616572;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x636E614364616572;
      break;
    case 17:
      result = 0x4449556563726F66;
      break;
    case 18:
      result = 0x6F4352516E616373;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    default:
      sub_26121D510();
      __break(1u);
      JUMPOUT(0x2611A18ECLL);
  }

  return result;
}

unint64_t sub_2611A196C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611A19B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2611A19A0(unint64_t result)
{
  if (result > 0x15)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611A19B0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611A19C4()
{
  result = qword_27FE872D8;
  if (!qword_27FE872D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872D8);
  }

  return result;
}

unint64_t sub_2611A1A1C()
{
  result = qword_27FE872E0;
  if (!qword_27FE872E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE872E0);
  }

  return result;
}

void sub_2611A1A90()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 callServicesClientCapabilities];
  [v1 setWantsToScreenCalls_];

  v2 = [v0 callServicesClientCapabilities];
  [v2 save];

  qword_27FE8AD48 = v0;
}

uint64_t static Utilities.hasCurrentCalls.getter()
{
  sub_2611AC98C(0, &qword_27FE872E8, 0x277D85C78);
  v0 = sub_26121D020();
  sub_26121D030();

  return v2;
}

id sub_2611A1BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v24 - v3;
  if (qword_27FE8AD40 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v5 = qword_27FE8AD48;
    result = [qword_27FE8AD48 hasCurrentCalls];
    if (!result)
    {
      break;
    }

    v7 = [v5 currentAudioAndVideoCalls];
    sub_2611AC98C(0, &qword_27FE87358, 0x277D6EDE0);
    v8 = sub_26121CEC0();

    v25 = a1;
    a1 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v10 = sub_26121D2E0();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v31 = v8 & 0xC000000000000001;
    *&v9 = 67109376;
    v26 = v9;
    v27 = v4;
    v28 = v10;
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
    v30 = v8;
    while (1)
    {
      v32 = v10 != v11;
      if (v10 == v11)
      {
LABEL_19:

        a1 = v25;
        v23 = v32;
        goto LABEL_20;
      }

      if (v31)
      {
        v13 = MEMORY[0x2666FC380](v11, v8);
      }

      else
      {
        if (v11 >= *(a1 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v34 = [v13 status];
      v33 = [v14 isScreening];
      v15 = sub_2611F04C0();
      sub_2611ABE1C(v15, v4, &qword_27FE87700, &unk_2612203D0);
      v16 = sub_26121CA60();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v4, 1, v16) == 1)
      {
        sub_2611AC114(v4, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v18 = sub_26121CA40();
        v19 = sub_26121CFD0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = v34 == 1;
          v21 = swift_slowAlloc();
          *v21 = v26;
          *(v21 + 4) = v20;
          *(v21 + 8) = 1024;
          *(v21 + 10) = v33;
          _os_log_impl(&dword_261197000, v18, v19, "Call: isActive [ %{BOOL}d ] isScreening [ %{BOOL}d ]", v21, 0xEu);
          v22 = v21;
          v4 = v27;
          MEMORY[0x2666FCF20](v22, -1, -1);
        }

        (*(v17 + 8))(v4, v16);
        a1 = v29;
        v8 = v30;
        v10 = v28;
      }

      v12 = v34 == 1;

      ++v11;
      if ((v12 & v33 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v23 = 0;
LABEL_20:
  *a1 = v23;
  return result;
}

id static Utilities.isPasscodeEnabled.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v1 = [v0 canEvaluatePolicy:2 error:0];

  return v1;
}

BOOL static Utilities.isPINPrivacyLockEnabled(_:)(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  HIBYTE(v24) = 0;
  v7 = sub_2611995C0();
  v9 = *v7;
  v8 = v7[1];
  v25 = v9;
  v26 = v8;

  MEMORY[0x2666FBF20](45, 0xE100000000000000);
  MEMORY[0x2666FBF20](a1, a2);
  v10 = sub_26121CC50();

  v11 = sub_261199598();
  v12 = *v11;
  v13 = v11[1];

  v14 = sub_26121CC50();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v10, v14, &v24 + 7);

  v16 = sub_2611F04C0();
  sub_2611ABE1C(v16, v6, &qword_27FE87700, &unk_2612203D0);
  v17 = sub_26121CA60();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) != 1)
  {
    v20 = sub_26121CA40();
    v21 = sub_26121CFD0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      *(v22 + 4) = AppBooleanValue != 0;
      *(v22 + 8) = 1024;
      swift_beginAccess();
      *(v22 + 10) = HIBYTE(v24) != 0;
      _os_log_impl(&dword_261197000, v20, v21, "pref - isPINPrivacyEnabled = %{BOOL}d, exists = %{BOOL}d", v22, 0xEu);
      MEMORY[0x2666FCF20](v22, -1, -1);
    }

    (*(v18 + 8))(v6, v17);
    if (!AppBooleanValue)
    {
      goto LABEL_3;
    }

LABEL_7:
    swift_beginAccess();
    result = HIBYTE(v24) != 0;
    goto LABEL_8;
  }

  sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
  if (AppBooleanValue)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = 0;
LABEL_8:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL static Utilities.settingsAlwaysPlaySound(_:)(uint64_t a1, unint64_t a2)
{
  v55[3] = *MEMORY[0x277D85DE8];
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  keyExistsAndHasValidFormat = 0;
  v12 = sub_2611F04C0();
  sub_2611ABE1C(v12, v11, &qword_27FE87700, &unk_2612203D0);
  v13 = sub_26121CA60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_2611AC114(v11, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v50 = v14;
    v51 = v13;

    v16 = sub_26121CA40();
    v17 = sub_26121CFD0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v52 = v15;
      v19 = v18;
      v48 = swift_slowAlloc();
      v55[0] = v48;
      *v19 = 136315394;
      v20 = sub_2611995E8();
      v49 = a1;
      v21 = v12;
      v22 = *v20;
      v23 = v20[1];

      v24 = sub_2611AA228(v22, v23, v55);
      v12 = v21;

      *(v19 + 4) = v24;
      a1 = v49;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2611AA228(a1, a2, v55);
      _os_log_impl(&dword_261197000, v16, v17, "pref - %s-%s", v19, 0x16u);
      v25 = v48;
      swift_arrayDestroy();
      MEMORY[0x2666FCF20](v25, -1, -1);
      v26 = v19;
      v15 = v52;
      MEMORY[0x2666FCF20](v26, -1, -1);
    }

    v14 = v50;
    v13 = v51;
    (*(v50 + 8))(v11, v51);
  }

  v27 = sub_2611995E8();
  v29 = *v27;
  v28 = v27[1];
  v55[0] = v29;
  v55[1] = v28;

  MEMORY[0x2666FBF20](45, 0xE100000000000000);
  MEMORY[0x2666FBF20](a1, a2);
  v30 = sub_26121CC50();

  v31 = sub_261199598();
  v32 = *v31;
  v33 = v31[1];

  v34 = sub_26121CC50();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v30, v34, &keyExistsAndHasValidFormat);

  v36 = AppBooleanValue != 0;
  sub_2611ABE1C(v12, v9, &qword_27FE87700, &unk_2612203D0);
  if (v15(v9, 1, v13) == 1)
  {
    sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v52 = v15;
    v37 = v12;
    v38 = sub_26121CA40();
    v39 = sub_26121CFD0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = AppBooleanValue != 0;
      v41 = swift_slowAlloc();
      *v41 = 67109376;
      *(v41 + 4) = v40;
      *(v41 + 8) = 1024;
      swift_beginAccess();
      *(v41 + 10) = keyExistsAndHasValidFormat != 0;
      _os_log_impl(&dword_261197000, v38, v39, "pref - alwaysPlaySound = %{BOOL}d, exists = %{BOOL}d", v41, 0xEu);
      MEMORY[0x2666FCF20](v41, -1, -1);
    }

    (*(v14 + 8))(v9, v13);
    v12 = v37;
    v15 = v52;
  }

  swift_beginAccess();
  if (!keyExistsAndHasValidFormat)
  {
    v42 = v53;
    sub_2611ABE1C(v12, v53, &qword_27FE87700, &unk_2612203D0);
    if (v15(v42, 1, v13) == 1)
    {
      sub_2611AC114(v53, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v43 = sub_26121CA40();
      v44 = sub_26121CFD0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261197000, v43, v44, "pref - missing, default to true", v45, 2u);
        MEMORY[0x2666FCF20](v45, -1, -1);
      }

      (*(v14 + 8))(v53, v13);
    }

    v36 = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v36;
}

BOOL static Utilities.settingsEnableDiagnostics(_:)(uint64_t a1, unint64_t a2)
{
  v56[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  keyExistsAndHasValidFormat = 0;
  v13 = sub_2611F04C0();
  sub_2611ABE1C(v13, v12, &qword_27FE87700, &unk_2612203D0);
  v14 = sub_26121CA60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_2611AC114(v12, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v51 = v15;
    v52 = v14;

    v17 = sub_26121CA40();
    v18 = sub_26121CFD0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v53 = v16;
      v20 = v19;
      v49 = swift_slowAlloc();
      v56[0] = v49;
      *v20 = 136315394;
      v21 = sub_261199610();
      v50 = a1;
      v22 = v13;
      v23 = *v21;
      v24 = v21[1];

      v25 = sub_2611AA228(v23, v24, v56);
      v13 = v22;

      *(v20 + 4) = v25;
      a1 = v50;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2611AA228(a1, a2, v56);
      _os_log_impl(&dword_261197000, v17, v18, "pref - %s-%s", v20, 0x16u);
      v26 = v49;
      swift_arrayDestroy();
      MEMORY[0x2666FCF20](v26, -1, -1);
      v27 = v20;
      v16 = v53;
      MEMORY[0x2666FCF20](v27, -1, -1);
    }

    v15 = v51;
    v14 = v52;
    (*(v51 + 8))(v12, v52);
  }

  v28 = sub_261199610();
  v30 = *v28;
  v29 = v28[1];
  v56[0] = v30;
  v56[1] = v29;

  MEMORY[0x2666FBF20](45, 0xE100000000000000);
  MEMORY[0x2666FBF20](a1, a2);
  v31 = sub_26121CC50();

  v32 = sub_261199598();
  v33 = *v32;
  v34 = v32[1];

  v35 = sub_26121CC50();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v31, v35, &keyExistsAndHasValidFormat);

  v37 = AppBooleanValue != 0;
  sub_2611ABE1C(v13, v10, &qword_27FE87700, &unk_2612203D0);
  if (v16(v10, 1, v14) == 1)
  {
    sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v53 = v16;
    v38 = v13;
    v39 = sub_26121CA40();
    v40 = sub_26121CFD0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = AppBooleanValue != 0;
      v42 = swift_slowAlloc();
      *v42 = 67109376;
      *(v42 + 4) = v41;
      *(v42 + 8) = 1024;
      swift_beginAccess();
      *(v42 + 10) = keyExistsAndHasValidFormat != 0;
      _os_log_impl(&dword_261197000, v39, v40, "pref - enableDiagnostics = %{BOOL}d, exists = %{BOOL}d", v42, 0xEu);
      MEMORY[0x2666FCF20](v42, -1, -1);
    }

    (*(v15 + 8))(v10, v14);
    v13 = v38;
    v16 = v53;
  }

  swift_beginAccess();
  if (!keyExistsAndHasValidFormat)
  {
    v43 = v54;
    sub_2611ABE1C(v13, v54, &qword_27FE87700, &unk_2612203D0);
    if (v16(v43, 1, v14) == 1)
    {
      sub_2611AC114(v54, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v44 = sub_26121CA40();
      v45 = sub_26121CFD0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_261197000, v44, v45, "pref - missing, default to false", v46, 2u);
        MEMORY[0x2666FCF20](v46, -1, -1);
      }

      (*(v15 + 8))(v54, v14);
    }

    v37 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t static Utilities.libraryDirectoryPath()()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_26121CC80();

    MEMORY[0x2666FBF20](0x7972617262694C2FLL, 0xE90000000000002FLL);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Utilities.homeDirectoryPath()()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_26121CC80();

    MEMORY[0x2666FBF20](0x7972617262694C2FLL, 0xE90000000000002FLL);
    sub_26121D1E0();

    MEMORY[0x2666FBF20](0xD000000000000012, 0x800000026122CC20);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2611A2F68(uint64_t a1, uint64_t a2)
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v5 = result;
    v6 = sub_26121CC80();

    MEMORY[0x2666FBF20](0x7972617262694C2FLL, 0xE90000000000002FLL);
    sub_26121D1E0();

    MEMORY[0x2666FBF20](0xD000000000000012, 0x800000026122CC20);
    MEMORY[0x2666FBF20](a1, a2);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2611A3094(uint64_t a1, uint64_t a2)
{
  v5 = _s19ProximityReaderCore9UtilitiesC18cacheDirectoryPathSSyFZ_0();
  MEMORY[0x2666FBF20](a1, a2);
  return v5;
}

uint64_t static Utilities.deviceModel()()
{
  v3 = *MEMORY[0x277D85DE8];
  bzero(&v2, 0x500uLL);
  uname(&v2);
  result = sub_26121CDB0();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL static Utilities.isDeviceSupported()()
{
  v46 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v44[-v2];
  bzero(&v45, 0x500uLL);
  uname(&v45);
  v4 = sub_26121CDB0();
  v6 = v5;
  v7 = sub_2611F04C0();
  sub_2611ABE1C(v7, v3, &qword_27FE87700, &unk_2612203D0);
  v8 = sub_26121CA60();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_2611AC114(v3, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v10 = sub_26121CA40();
    v11 = sub_26121CFD0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v45.sysname = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2611AA228(v4, v6, v45.sysname);
      _os_log_impl(&dword_261197000, v10, v11, "model: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2666FCF20](v13, -1, -1);
      MEMORY[0x2666FCF20](v12, -1, -1);
    }

    (*(v9 + 8))(v3, v8);
  }

  if ((sub_2611A35C0() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (sub_26121CD60() <= 6)
  {
    goto LABEL_13;
  }

  v14 = sub_2611ABCB0(6uLL, v4, v6);
  v16 = v15;
  v18 = v17;

  *v45.sysname = 44;
  *&v45.sysname[8] = 0xE100000000000000;
  MEMORY[0x28223BE20](v19);
  *&v44[-16] = &v45;
  v20 = sub_2611A9D14(0x7FFFFFFFFFFFFFFFLL, 1, sub_2611ABD60, &v44[-32], v14, v16, v18, v44);
  if (*(v20 + 2) != 2)
  {
    goto LABEL_13;
  }

  v21 = *(v20 + 4);
  v22 = *(v20 + 5);
  if (!((v22 ^ v21) >> 14))
  {
    goto LABEL_13;
  }

  v24 = *(v20 + 6);
  v23 = *(v20 + 7);
  v25 = v20;
  v26 = sub_2611AB7FC(*(v20 + 4), v22, v24, v23, 10);
  if ((v27 & 0x100) == 0)
  {
    if ((v27 & 1) == 0)
    {
      v28 = v26;
      goto LABEL_18;
    }

LABEL_13:

    goto LABEL_14;
  }

  v28 = sub_2611AA7D0(v21, v22, v24, v23, 10);
  v32 = v31;

  if (v32)
  {
    goto LABEL_13;
  }

LABEL_18:
  if (*(v25 + 2) < 2uLL)
  {
    __break(1u);
  }

  v33 = *(v25 + 8);
  v34 = *(v25 + 9);
  v36 = *(v25 + 10);
  v35 = *(v25 + 11);

  if (!((v34 ^ v33) >> 14))
  {
    goto LABEL_13;
  }

  v37 = sub_2611AB7FC(v33, v34, v36, v35, 10);
  if ((v38 & 0x100) != 0)
  {
    v39 = sub_2611AA7D0(v33, v34, v36, v35, 10);
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v39 = v37;
  v40 = v38;

  if (v40)
  {
    goto LABEL_14;
  }

LABEL_24:
  result = v28 > 11 || v28 == 11 && v39 > 1;
LABEL_15:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2611A35C0()
{

  v0 = sub_26121CDC0();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_26121CDC0();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_26121D4D0();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_26121CDC0();
      v3 = v5;
    }

    while (v5);
  }

  sub_26121CDC0();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_2611A371C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121C590();
    if (a2)
    {
      v6 = sub_26121CB80();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v4 openSensitiveURL:v5 withOptions:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Utilities.showBluetoothDisabledDialog(handler:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_26121C5F0();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v59 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v48 - v27;
  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v28, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v49 = v19;
    v32 = sub_26119DE2C();
    v33 = sub_2611AE074();
    sub_2611F0778(v32 & 1, v2, 0xD000000000000025, 0x800000026122CC90, v33, v34);

    (*(v31 + 8))(v28, v30);
    v19 = v49;
  }

  v35 = swift_allocObject();
  v36 = v54;
  v35[2] = a1;
  v35[3] = v36;
  v35[4] = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  v38 = v53;
  v39 = *(v53 + 56);
  v40 = v57;
  v39(v57, 1, 1, v4);
  v39(v58, 1, 1, v4);
  v39(v59, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();
  swift_retain_n();
  swift_retain_n();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, 0xD00000000000001ELL, 0x800000026122CC40, 0x53474E4954544553, 0xE800000000000000, sub_2611ABDF0, v35);
  sub_2611ABE1C(v40, v19, &qword_27FE872F0, &unk_261222100);
  v41 = *(v38 + 48);
  if (v41(v19, 1, v4) == 1)
  {
    sub_2611AC114(v19, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v50;
    (*(v38 + 32))(v50, v19, v4);
    AlertDialogBuilder.icon(_:)(v42);

    (*(v38 + 8))(v42, v4);
  }

  v43 = v55;
  sub_2611ABE1C(v58, v55, &qword_27FE872F0, &unk_261222100);
  if (v41(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v51;
    (*(v38 + 32))(v51, v43, v4);
    AlertDialogBuilder.sound(_:)(v44);

    (*(v38 + 8))(v44, v4);
  }

  v45 = v56;
  sub_2611ABE1C(v59, v56, &qword_27FE872F0, &unk_261222100);
  if (v41(v45, 1, v4) == 1)
  {
    sub_2611AC114(v45, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v46 = v52;
    (*(v38 + 32))(v52, v45, v4);
    AlertDialogBuilder.localization(_:)(v46);

    (*(v38 + 8))(v46, v4);
  }

  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x4C45434E4143, 0xE600000000000000, sub_2611ABDF8, v37);

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v59, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v58, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v57, &qword_27FE872F0, &unk_261222100);
}

id sub_2611A3F50(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for BT settings", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Utilities.showNFCDisabledDialog(handler:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_26121C5F0();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v59 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v48 - v27;
  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v28, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v49 = v19;
    v32 = sub_26119DE2C();
    v33 = sub_2611AE074();
    sub_2611F0778(v32 & 1, v2, 0xD00000000000001FLL, 0x800000026122CD00, v33, v34);

    (*(v31 + 8))(v28, v30);
    v19 = v49;
  }

  v35 = swift_allocObject();
  v36 = v54;
  v35[2] = a1;
  v35[3] = v36;
  v35[4] = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  v38 = v53;
  v39 = *(v53 + 56);
  v40 = v57;
  v39(v57, 1, 1, v4);
  v39(v58, 1, 1, v4);
  v39(v59, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();
  swift_retain_n();
  swift_retain_n();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, 0xD000000000000018, 0x800000026122CCC0, 0x53474E4954544553, 0xE800000000000000, sub_2611ABE84, v35);
  sub_2611ABE1C(v40, v19, &qword_27FE872F0, &unk_261222100);
  v41 = *(v38 + 48);
  if (v41(v19, 1, v4) == 1)
  {
    sub_2611AC114(v19, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v50;
    (*(v38 + 32))(v50, v19, v4);
    AlertDialogBuilder.icon(_:)(v42);

    (*(v38 + 8))(v42, v4);
  }

  v43 = v55;
  sub_2611ABE1C(v58, v55, &qword_27FE872F0, &unk_261222100);
  if (v41(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v51;
    (*(v38 + 32))(v51, v43, v4);
    AlertDialogBuilder.sound(_:)(v44);

    (*(v38 + 8))(v44, v4);
  }

  v45 = v56;
  sub_2611ABE1C(v59, v56, &qword_27FE872F0, &unk_261222100);
  if (v41(v45, 1, v4) == 1)
  {
    sub_2611AC114(v45, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v46 = v52;
    (*(v38 + 32))(v52, v45, v4);
    AlertDialogBuilder.localization(_:)(v46);

    (*(v38 + 8))(v46, v4);
  }

  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x4C45434E4143, 0xE600000000000000, sub_2611ABE8C, v37);

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v59, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v58, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v57, &qword_27FE872F0, &unk_261222100);
}

id sub_2611A4A20(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for NFC settings", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2611A4D8C(uint64_t (*a1)(void), uint64_t a2, const char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_2611F04C0();
  sub_2611ABE1C(v9, v8, &qword_27FE87700, &unk_2612203D0);
  v10 = sub_26121CA60();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v12 = sub_26121CA40();
    v13 = sub_26121CFB0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261197000, v12, v13, a3, v14, 2u);
      MEMORY[0x2666FCF20](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  return a1(0);
}

uint64_t static Utilities.showTwoFactorAuthDisabledDialog(handler:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_26121C5F0();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v59 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v48 - v27;
  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v28, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v49 = v19;
    v32 = sub_26119DE2C();
    v33 = sub_2611AE074();
    sub_2611F0778(v32 & 1, v2, 0xD000000000000029, 0x800000026122CD60, v33, v34);

    (*(v31 + 8))(v28, v30);
    v19 = v49;
  }

  v35 = swift_allocObject();
  v36 = v54;
  v35[2] = a1;
  v35[3] = v36;
  v35[4] = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  v38 = v53;
  v39 = *(v53 + 56);
  v40 = v57;
  v39(v57, 1, 1, v4);
  v39(v58, 1, 1, v4);
  v39(v59, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();
  swift_retain_n();
  swift_retain_n();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, 0xD00000000000001BLL, 0x800000026122CD20, 0x53474E4954544553, 0xE800000000000000, sub_2611ABEB0, v35);
  sub_2611ABE1C(v40, v19, &qword_27FE872F0, &unk_261222100);
  v41 = *(v38 + 48);
  if (v41(v19, 1, v4) == 1)
  {
    sub_2611AC114(v19, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v50;
    (*(v38 + 32))(v50, v19, v4);
    AlertDialogBuilder.icon(_:)(v42);

    (*(v38 + 8))(v42, v4);
  }

  v43 = v55;
  sub_2611ABE1C(v58, v55, &qword_27FE872F0, &unk_261222100);
  if (v41(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v51;
    (*(v38 + 32))(v51, v43, v4);
    AlertDialogBuilder.sound(_:)(v44);

    (*(v38 + 8))(v44, v4);
  }

  v45 = v56;
  sub_2611ABE1C(v59, v56, &qword_27FE872F0, &unk_261222100);
  if (v41(v45, 1, v4) == 1)
  {
    sub_2611AC114(v45, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v46 = v52;
    (*(v38 + 32))(v52, v45, v4);
    AlertDialogBuilder.localization(_:)(v46);

    (*(v38 + 8))(v46, v4);
  }

  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x4C45434E4143, 0xE600000000000000, sub_2611ABEF0, v37);

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v59, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v58, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v57, &qword_27FE872F0, &unk_261222100);
}

id sub_2611A56AC(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for iCloud two factor settings", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Utilities.showPasscodeDisabledDialog(handler:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_26121C5F0();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v59 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v48 - v27;
  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v28, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v49 = v19;
    v32 = sub_26119DE2C();
    v33 = sub_2611AE074();
    sub_2611F0778(v32 & 1, v2, 0xD000000000000024, 0x800000026122CDD0, v33, v34);

    (*(v31 + 8))(v28, v30);
    v19 = v49;
  }

  v35 = swift_allocObject();
  v36 = v54;
  v35[2] = a1;
  v35[3] = v36;
  v35[4] = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  v38 = v53;
  v39 = *(v53 + 56);
  v40 = v57;
  v39(v57, 1, 1, v4);
  v39(v58, 1, 1, v4);
  v39(v59, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();
  swift_retain_n();
  swift_retain_n();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, 0xD000000000000014, 0x800000026122CD90, 0x53474E4954544553, 0xE800000000000000, sub_2611ABF14, v35);
  sub_2611ABE1C(v40, v19, &qword_27FE872F0, &unk_261222100);
  v41 = *(v38 + 48);
  if (v41(v19, 1, v4) == 1)
  {
    sub_2611AC114(v19, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v50;
    (*(v38 + 32))(v50, v19, v4);
    AlertDialogBuilder.icon(_:)(v42);

    (*(v38 + 8))(v42, v4);
  }

  v43 = v55;
  sub_2611ABE1C(v58, v55, &qword_27FE872F0, &unk_261222100);
  if (v41(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v51;
    (*(v38 + 32))(v51, v43, v4);
    AlertDialogBuilder.sound(_:)(v44);

    (*(v38 + 8))(v44, v4);
  }

  v45 = v56;
  sub_2611ABE1C(v59, v56, &qword_27FE872F0, &unk_261222100);
  if (v41(v45, 1, v4) == 1)
  {
    sub_2611AC114(v45, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v46 = v52;
    (*(v38 + 32))(v52, v45, v4);
    AlertDialogBuilder.localization(_:)(v46);

    (*(v38 + 8))(v46, v4);
  }

  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x4C45434E4143, 0xE600000000000000, sub_2611ABF1C, v37);

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v59, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v58, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v57, &qword_27FE872F0, &unk_261222100);
}

id sub_2611A617C(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for passcode settings", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Utilities.showICloudSignedOutDialog(handler:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = sub_26121C5F0();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v59 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v48 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v48 - v27;
  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v28, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v49 = v19;
    v32 = sub_26119DE2C();
    v33 = sub_2611AE074();
    sub_2611F0778(v32 & 1, v2, 0xD000000000000023, 0x800000026122CE60, v33, v34);

    (*(v31 + 8))(v28, v30);
    v19 = v49;
  }

  v35 = swift_allocObject();
  v36 = v54;
  v35[2] = a1;
  v35[3] = v36;
  v35[4] = v2;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  v38 = v53;
  v39 = *(v53 + 56);
  v40 = v57;
  v39(v57, 1, 1, v4);
  v39(v58, 1, 1, v4);
  v39(v59, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();
  swift_retain_n();
  swift_retain_n();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, 0xD000000000000021, 0x800000026122CE00, 0x53474E4954544553, 0xE800000000000000, sub_2611ABF40, v35);
  sub_2611ABE1C(v40, v19, &qword_27FE872F0, &unk_261222100);
  v41 = *(v38 + 48);
  if (v41(v19, 1, v4) == 1)
  {
    sub_2611AC114(v19, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v50;
    (*(v38 + 32))(v50, v19, v4);
    AlertDialogBuilder.icon(_:)(v42);

    (*(v38 + 8))(v42, v4);
  }

  v43 = v55;
  sub_2611ABE1C(v58, v55, &qword_27FE872F0, &unk_261222100);
  if (v41(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v51;
    (*(v38 + 32))(v51, v43, v4);
    AlertDialogBuilder.sound(_:)(v44);

    (*(v38 + 8))(v44, v4);
  }

  v45 = v56;
  sub_2611ABE1C(v59, v56, &qword_27FE872F0, &unk_261222100);
  if (v41(v45, 1, v4) == 1)
  {
    sub_2611AC114(v45, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v46 = v52;
    (*(v38 + 32))(v52, v45, v4);
    AlertDialogBuilder.localization(_:)(v46);

    (*(v38 + 8))(v46, v4);
  }

  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x4C45434E4143, 0xE600000000000000, sub_2611ABF48, v37);

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v59, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v58, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v57, &qword_27FE872F0, &unk_261222100);
}

id sub_2611A6C48(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for iCloud sign in settings", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Utilities.showOSVersionNotSupportedDialog(handler:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_2611F04C0();
  sub_2611ABE1C(v5, v4, &qword_27FE87700, &unk_2612203D0);
  v6 = sub_26121CA60();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_2611AC114(v4, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v8 = sub_26119DE2C();
    v9 = sub_2611AE074();
    sub_2611F0778(v8 & 1, v0, 0xD000000000000029, 0x800000026122CEC0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  v11 = type metadata accessor for BaselineErrorDialog();
  v12 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v11);
  v14 = v13;
  v15._countAndFlagsBits = sub_2611AE074();
  v17 = v16;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  v15._object = v17;
  v19 = String.localized(table:comment:)(v18, v15);

  v20 = BaselineErrorDialog.__allocating_init(localizedMessage:)(v19._countAndFlagsBits, v19._object);
  (*(*v20 + 128))(v20);
}

uint64_t static Utilities.showContinuityDisplayNotAllowedDialog(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26121C5F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = &v46 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v51 = &v46 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v55 = &v46 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v54 = &v46 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v46 - v29;
  v31 = sub_2611F04C0();
  sub_2611ABE1C(v31, v30, &qword_27FE87700, &unk_2612203D0);
  v32 = sub_26121CA60();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_2611AC114(v30, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v47 = v25;
    v34 = sub_26119DE2C();
    v35 = sub_2611AE074();
    v46 = a1;
    v25 = v47;
    sub_2611F0778(v34 & 1, v48, 0xD000000000000029, 0x800000026122CEF0, v35, v36);
    a1 = v46;

    (*(v33 + 8))(v30, v32);
  }

  v37 = *(v5 + 56);
  v38 = v54;
  v37(v54, 1, 1, v4);
  v37(v25, 1, 1, v4);
  v37(v55, 1, 1, v4);
  type metadata accessor for AlertDialogBuilder();

  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(0, 0.0, a1, a2, 19279, 0xE200000000000000, 0, 0);
  v39 = v51;
  sub_2611ABE1C(v38, v51, &qword_27FE872F0, &unk_261222100);
  v40 = *(v5 + 48);
  if (v40(v39, 1, v4) == 1)
  {
    sub_2611AC114(v39, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    (*(v5 + 32))(v12, v39, v4);
    AlertDialogBuilder.icon(_:)(v12);

    (*(v5 + 8))(v12, v4);
  }

  v41 = v52;
  sub_2611ABE1C(v25, v52, &qword_27FE872F0, &unk_261222100);
  if (v40(v41, 1, v4) == 1)
  {
    sub_2611AC114(v41, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v42 = v49;
    (*(v5 + 32))(v49, v41, v4);
    AlertDialogBuilder.sound(_:)(v42);

    (*(v5 + 8))(v42, v4);
  }

  v43 = v53;
  sub_2611ABE1C(v55, v53, &qword_27FE872F0, &unk_261222100);
  if (v40(v43, 1, v4) == 1)
  {
    sub_2611AC114(v43, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
    v44 = v50;
    (*(v5 + 32))(v50, v43, v4);
    AlertDialogBuilder.localization(_:)(v44);

    (*(v5 + 8))(v44, v4);
  }

  AlertDialogBuilder.build()();
  AlertDialog.show()();

  sub_2611AC114(v55, &qword_27FE872F0, &unk_261222100);
  sub_2611AC114(v25, &qword_27FE872F0, &unk_261222100);
  return sub_2611AC114(v38, &qword_27FE872F0, &unk_261222100);
}

uint64_t static Utilities.showDeprecationWarning(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v43 = a1;
  v42 = sub_26121C6C0();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26121C6E0();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_2611F04C0();
  sub_2611ABE1C(v16, v15, &qword_27FE87700, &unk_2612203D0);
  v17 = sub_26121CA60();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_2611AC114(v15, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v41 = a3;
    v19 = sub_26119DE2C();
    v20 = sub_2611AE074();
    a3 = v41;
    sub_2611F0778(v19 & 1, v3, 0xD000000000000022, 0x800000026122CF80, v20, v21);

    (*(v18 + 8))(v15, v17);
  }

  v22 = swift_allocObject();
  v23 = v47;
  v22[2] = v47;
  v22[3] = a3;
  v22[4] = v3;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a3;
  swift_retain_n();
  sub_26121C6D0();
  v25 = v46;
  sub_26121C6B0();
  v26 = sub_26121C740();
  v28 = v27;
  (*(v5 + 8))(v25, v42);
  (*(v44 + 8))(v11, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2612203B0;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v30 = sub_2611ABF98();
  *(v29 + 64) = v30;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  v31 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v30);
  v33 = v32;
  v34 = sub_2611AE074();
  String.localized(table:comment:_:)(v31, v33, v34, v35, v29, 0xD000000000000022);

  type metadata accessor for AlertDialogBuilder();

  v36 = sub_2611EABB4();
  v37 = sub_2611EABBC();
  AlertDialogBuilder.__allocating_init(timeout:flags:title:defaultButtonLabel:defaultAction:)(v37, v36, 0xD000000000000024, 0x800000026122CF50, 0x5F4C4C4154534E49, 0xEE004E4F54545542, sub_2611ABF6C, v22);
  AlertDialogBuilder.addMessage(_:)();

  AlertDialogBuilder.addAlternateButton(label:action:)(0x5F574F4E5F544F4ELL, 0xEE004E4F54545542, sub_2611ABF74, v24);

  AlertDialogBuilder.dismissOnLock()();

  AlertDialogBuilder.onCancel(_:)(sub_2611ABF74, v24);

  v38 = AlertDialogBuilder.build()();

  AlertDialog.show()();

  return v38;
}

id sub_2611A7D84(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(1);
  sub_26121C5D0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
    v15 = sub_2611F04C0();
    sub_2611ABE1C(v15, v5, &qword_27FE87700, &unk_2612203D0);
    v16 = sub_26121CA60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v21 = sub_26121CA40();
      v22 = sub_26121CFC0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261197000, v21, v22, "Could not generate URL for the iOS deprecation warning", v23, 2u);
        MEMORY[0x2666FCF20](v23, -1, -1);
      }

      return (*(v17 + 8))(v5, v16);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v19 = result;
      v20 = sub_26121C590();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static Utilities.showOSRestoreDialog()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v38 - v3;
  v5 = sub_2611F04C0();
  sub_2611ABE1C(v5, v4, &qword_27FE87700, &unk_2612203D0);
  v6 = sub_26121CA60();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_2611AC114(v4, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v9 = sub_26119DE2C();
    v10 = sub_2611AE074();
    sub_2611F0778(v9 & 1, v0, 0xD000000000000015, 0x800000026122CFF0, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v8);
  v14 = v13;
  v15._countAndFlagsBits = sub_2611AE074();
  v17 = v16;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  v15._object = v17;
  String.localized(table:comment:)(v18, v15);

  v19 = sub_26121CC50();

  v21 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v20);
  v23 = v22;
  v24._countAndFlagsBits = sub_2611AE074();
  v26 = v25;
  v27._countAndFlagsBits = v21;
  v27._object = v23;
  v24._object = v26;
  String.localized(table:comment:)(v27, v24);

  v28 = sub_26121CC50();

  v30 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v29);
  v32 = v31;
  v33._countAndFlagsBits = sub_2611AE074();
  v35 = v34;
  v36._countAndFlagsBits = v30;
  v36._object = v32;
  v33._object = v35;
  String.localized(table:comment:)(v36, v33);

  v37 = sub_26121CC50();

  CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, v19, v28, v37);
}

uint64_t static Utilities.primaryEmailOrUsername()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v49 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v49 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v49[0] = v49 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v49 - v13;
  v50 = sub_2611F04C0();
  sub_2611ABE1C(v50, v14, &qword_27FE87700, &unk_2612203D0);
  v15 = sub_26121CA60();
  v16 = *(v15 - 8);
  v51 = *(v16 + 48);
  if (v51(v14, 1, v15) == 1)
  {
    sub_2611AC114(v14, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v17 = sub_26119DE2C();
    v18 = sub_2611AE074();
    sub_2611F0778(v17 & 1, v49[1], 0xD000000000000018, 0x800000026122D010, v18, v19);

    (*(v16 + 8))(v14, v15);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v21 = [v20 aa_primaryAppleAccount];
  if (!v21)
  {
    sub_2611ABE1C(v50, v4, &qword_27FE87700, &unk_2612203D0);
    if (v51(v4, 1, v15) != 1)
    {
      v34 = sub_26121CA40();
      v35 = sub_26121CFD0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261197000, v34, v35, "No account", v36, 2u);
        MEMORY[0x2666FCF20](v36, -1, -1);
      }

      (*(v16 + 8))(v4, v15);
      return 0;
    }

    v33 = v4;
    goto LABEL_27;
  }

  v22 = v21;
  v23 = [v21 aa_primaryEmail];
  if (!v23)
  {
LABEL_18:
    v37 = [v22 username];
    if (v37)
    {
      v38 = v37;
      v25 = sub_26121CC80();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        sub_2611ABE1C(v50, v10, &qword_27FE87700, &unk_2612203D0);
        if (v51(v10, 1, v15) != 1)
        {
          v29 = sub_26121CA40();
          v45 = sub_26121CFD0();
          if (os_log_type_enabled(v29, v45))
          {
            v46 = v16;
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_261197000, v29, v45, "User name is good", v47, 2u);
            v32 = v47;
            v16 = v46;
            goto LABEL_34;
          }

LABEL_35:

          (*(v16 + 8))(v10, v15);
          return v25;
        }

        goto LABEL_23;
      }
    }

    sub_2611ABE1C(v50, v7, &qword_27FE87700, &unk_2612203D0);
    if (v51(v7, 1, v15) != 1)
    {
      v42 = sub_26121CA40();
      v43 = sub_26121CFD0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_261197000, v42, v43, "both primary email and username are empty", v44, 2u);
        MEMORY[0x2666FCF20](v44, -1, -1);
      }

      (*(v16 + 8))(v7, v15);
      return 0;
    }

    v33 = v7;
LABEL_27:
    sub_2611AC114(v33, &qword_27FE87700, &unk_2612203D0);
    return 0;
  }

  v24 = v23;
  v25 = sub_26121CC80();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    goto LABEL_18;
  }

  v10 = v49[0];
  sub_2611ABE1C(v50, v49[0], &qword_27FE87700, &unk_2612203D0);
  if (v51(v10, 1, v15) != 1)
  {
    v29 = sub_26121CA40();
    v30 = sub_26121CFD0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261197000, v29, v30, "Primary email is good", v31, 2u);
      v32 = v31;
LABEL_34:
      MEMORY[0x2666FCF20](v32, -1, -1);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

LABEL_23:

  sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
  return v25;
}

uint64_t static Utilities.dispatchToMainIfNeeded(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_26121CAC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26121CAE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_2611AC98C(0, &qword_27FE872E8, 0x277D85C78);
  v15 = sub_26121D020();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = sub_2611ABFEC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2611A8D70;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_26121CAD0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2611AC090(&qword_27FE87308, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87310, &qword_261221C80);
  sub_2611AC02C();
  sub_26121D160();
  MEMORY[0x2666FC1C0](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2611A8D70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t static Utilities.toSHA256(payload:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_26121CB70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = sub_26121CB20();
  v9 = *(v26[0] - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26[0]);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_2611A902C(a1, a2);
  v15 = v14;
  sub_2611AC090(&qword_27FE87320, MEMORY[0x277CC5540]);
  sub_26121CB10();
  sub_26119D904(v13, v15);
  sub_2611AB8C8(v13, v15);
  sub_26119DA0C(v13, v15);
  sub_26121CB00();
  sub_26119DA0C(v13, v15);
  (*(v5 + 8))(v8, v4);
  v16 = sub_2611AC090(&qword_27FE87328, MEMORY[0x277CC5290]);
  v17 = v26[0];
  v24 = sub_2611BFCEC(v26[0], v16, v18, v19, v20, v21, v22, v23);
  (*(v9 + 8))(v12, v17);
  return v24;
}

uint64_t sub_2611A902C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87330, &qword_261220420);
  if (swift_dynamicCast())
  {
    sub_2611AC7A0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_26121C440();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2611AC114(__src, &qword_27FE87338, &qword_261220428);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26121D230();
  }

  sub_2611AB1DC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2611AC698(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2611AB2A4(sub_2611AC738);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26121C640();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2611AB160(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26121CDD0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26121CE10();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26121D230();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2611AB160(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26121CDE0();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_26121C650();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_26121C650();
    sub_26119EF48(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_26119EF48(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26119D904(*&__src[0], *(&__src[0] + 1));

  sub_26119DA0C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t static Utilities.osVersionBuildString()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 operatingSystemVersionString];

  v2 = sub_26121CC80();
  return v2;
}

uint64_t static Utilities.osVersion(ignorePatchVersion:)(char a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v17 = 46;
    v18 = 0xE100000000000000;
    v3 = [objc_opt_self() processInfo];
    [v3 operatingSystemVersion];
    v4 = v16;

    v14 = v4;
    v5 = sub_26121D4C0();
    MEMORY[0x2666FBF20](v5);

    v1 = v17;
    v2 = v18;
  }

  v6 = objc_opt_self();
  v7 = [v6 processInfo];
  [v7 operatingSystemVersion];
  v8 = v14;

  v14 = v8;
  v17 = sub_26121D4C0();
  v18 = v9;
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  v10 = [v6 processInfo];
  [v10 operatingSystemVersion];
  v11 = v15;

  v14 = v11;
  v12 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v12);

  MEMORY[0x2666FBF20](v1, v2);

  return v17;
}

uint64_t static Utilities.terminalID(bundleId:deviceId:installId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26121CB70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26121CB20();
  v18 = *(v17 - 1);
  v38 = v17;
  v39 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;

  MEMORY[0x2666FBF20](a3, a4);

  MEMORY[0x2666FBF20](a5, a6);

  v22 = v40;
  v23 = v41;

  v24 = sub_2611A902C(v22, v23);
  v26 = v25;
  sub_2611AC090(&qword_27FE87320, MEMORY[0x277CC5540]);
  sub_26121CB10();
  sub_26119D904(v24, v26);
  sub_2611AB8C8(v24, v26);
  sub_26119DA0C(v24, v26);
  sub_26121CB00();
  sub_26119DA0C(v24, v26);
  (*(v13 + 8))(v16, v12);
  v27 = sub_2611AC090(&qword_27FE87328, MEMORY[0x277CC5290]);
  v28 = v38;
  v35 = sub_2611BFCEC(v38, v27, v29, v30, v31, v32, v33, v34);

  (*(v39 + 8))(v21, v28);
  return v35;
}

uint64_t static Utilities.safSessionHash(bundleId:deviceId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26121CB70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26121CB20();
  v14 = *(v13 - 1);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;

  MEMORY[0x2666FBF20](a3, a4);
  v18 = v36;
  v19 = v37;

  v20 = sub_2611A902C(v18, v19);
  v22 = v21;
  sub_2611AC090(&qword_27FE87320, MEMORY[0x277CC5540]);
  sub_26121CB10();
  sub_26119D904(v20, v22);
  sub_2611AB8C8(v20, v22);
  sub_26119DA0C(v20, v22);
  sub_26121CB00();
  sub_26119DA0C(v20, v22);
  (*(v9 + 8))(v12, v8);
  v23 = sub_2611AC090(&qword_27FE87328, MEMORY[0x277CC5290]);
  v24 = v34;
  v31 = sub_2611BFCEC(v34, v23, v25, v26, v27, v28, v29, v30);

  (*(v35 + 8))(v17, v24);
  return v31;
}

char *sub_2611A9D14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_26121D0F0();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_26121D0D0() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_26121D0D0();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_26121D100();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2611AA11C(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_2611AA11C((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_26121D0D0();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_26121D100();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_2611AA11C((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_2611AA11C(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_26121D100();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_2611AA11C(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

char *sub_2611AA11C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87350, &qword_261220438);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2611AA228(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2611AA2F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2611AC930(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2611AA2F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2611AA400(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26121D230();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2611AA400(uint64_t a1, unint64_t a2)
{
  v4 = sub_2611AA44C(a1, a2);
  sub_2611AA57C(&unk_2873A7C88);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2611AA44C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2611AA668(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26121D230();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26121CDD0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2611AA668(v10, 0);
        result = sub_26121D1D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2611AA57C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2611AA6DC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2611AA668(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87348, &qword_261220430);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2611AA6DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87348, &qword_261220430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unsigned __int8 *sub_2611AA7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2611AC8D8();

  result = sub_26121CE50();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_2611AAD68();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26121D230();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2611AAD68()
{
  v0 = sub_26121CE60();
  v4 = sub_2611AADE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2611AADE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26121CD40();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26121D0E0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2611AA668(v9, 0);
  v12 = sub_2611AAF40(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26121CD40();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26121D230();
LABEL_4:

  return sub_26121CD40();
}

unint64_t sub_2611AAF40(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2611AB160(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26121CE10();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26121D230();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2611AB160(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26121CDE0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2611AB160(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26121CE20();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2666FBF70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2611AB1DC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2611AC5E0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26121C400();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26121C3B0();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26121C630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2611AB2A4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26119DA0C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26119DA0C(v6, v5);
    *v3 = xmmword_2612203C0;
    sub_26119DA0C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26121C3C0() && __OFSUB__(v6, sub_26121C3F0()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26121C400();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26121C3A0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2611AB748(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26119DA0C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2612203C0;
    sub_26119DA0C(0, 0xC000000000000000);
    sub_26121C600();
    result = sub_2611AB748(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2611AB648@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2611AC5E0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2611AC7B8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2611AC834(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2611AB6DC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2611AB748(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26121C3C0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26121C3F0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26121C3E0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2611AB7FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_26121D230();
  }

  result = sub_2611AC174(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2611AB8C8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26121CB70();
      sub_2611AC090(&qword_27FE87320, MEMORY[0x277CC5540]);
      result = sub_26121CAF0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2611ABAA8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2611ABAA8(uint64_t a1, uint64_t a2)
{
  result = sub_26121C3C0();
  if (!result || (result = sub_26121C3F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26121C3E0();
      sub_26121CB70();
      sub_2611AC090(&qword_27FE87320, MEMORY[0x277CC5540]);
      return sub_26121CAF0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2611ABB88@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_26121D1F0();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t _s19ProximityReaderCore9UtilitiesC18cacheDirectoryPathSSyFZ_0()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_26121CC80();

    MEMORY[0x2666FBF20](0x7972617262694C2FLL, 0xE90000000000002FLL);
    sub_26121D1E0();

    MEMORY[0x2666FBF20](0xD000000000000012, 0x800000026122CC20);
    MEMORY[0x2666FBF20](0x2F6568636163, 0xE600000000000000);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2611ABCB0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26121CD80();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26121CE60();
}

uint64_t sub_2611ABD60(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26121D4D0() & 1;
  }
}

uint64_t sub_2611ABDB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2611ABE1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2611ABEB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2611ABF98()
{
  result = qword_27FE87300;
  if (!qword_27FE87300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87300);
  }

  return result;
}

uint64_t sub_2611ABFEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2611AC02C()
{
  result = qword_27FE87318;
  if (!qword_27FE87318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87310, &qword_261221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87318);
  }

  return result;
}

uint64_t sub_2611AC090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2611AC114(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2611AC174(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2611AB160(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_26121CE00();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2611AB160(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2611AB160(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_26121CE00();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_2611AC5E0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2611AC698(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_26121C400();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26121C3D0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26121C630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2611AC738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2611AB6DC(sub_2611AC8B8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2611AC7A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2611AC7B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26121C400();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26121C3B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26121C630();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2611AC834(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26121C400();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26121C3B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2611AC8D8()
{
  result = qword_27FE87340;
  if (!qword_27FE87340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87340);
  }

  return result;
}

uint64_t sub_2611AC930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2611AC98C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2611ACA00()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x7961506F54706174;
  }
}

uint64_t sub_2611ACA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7961506F54706174 && a2 == 0xE800000000000000;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2611ACB10(uint64_t a1)
{
  v2 = sub_2611AD104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611ACB4C(uint64_t a1)
{
  v2 = sub_2611AD104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611ACBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000024 && 0x800000026122D160 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26121D4D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2611ACC38(uint64_t a1)
{
  v2 = sub_2611AD158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611ACC74(uint64_t a1)
{
  v2 = sub_2611AD158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611ACCB0()
{
  v1 = 0x6B6E696C6572;
  if (*v0 != 1)
  {
    v1 = 0x52556769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5472656E74726170;
  }
}

uint64_t sub_2611ACD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611ADC88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611ACD3C(uint64_t a1)
{
  v2 = sub_2611AD1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611ACD78(uint64_t a1)
{
  v2 = sub_2611AD1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RegistrationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87360, &qword_261220440);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87368, &qword_261220448);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87370, &qword_261220450);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v15 = *v1;
  v29 = v1[1];
  v30 = v15;
  v17 = v1[2];
  v16 = v1[3];
  v23[0] = v1[4];
  v23[1] = v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AD104();
  sub_26121D600();
  if (v17 < 0)
  {
    v36 = 1;
    sub_2611AD158();
    v9 = v24;
    sub_26121D410();
    v19 = v26;
    sub_26121D460();
    v21 = v25;
LABEL_6:
    (*(v21 + 8))(v9, v19);
    return (*(v11 + 8))(v14, v10);
  }

  v35 = 0;
  sub_2611AD1AC();
  sub_26121D410();
  v34 = 0;
  v19 = v28;
  v20 = v31;
  sub_26121D460();
  if (!v20)
  {
    v33 = 1;
    sub_26121D470();
    v32 = 2;
    sub_26121D460();
    v21 = v27;
    goto LABEL_6;
  }

  (*(v27 + 8))(v9, v19);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_2611AD104()
{
  result = qword_27FE8AD50;
  if (!qword_27FE8AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8AD50);
  }

  return result;
}

unint64_t sub_2611AD158()
{
  result = qword_27FE8AD58;
  if (!qword_27FE8AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8AD58);
  }

  return result;
}

unint64_t sub_2611AD1AC()
{
  result = qword_27FE8AD60[0];
  if (!qword_27FE8AD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8AD60);
  }

  return result;
}

uint64_t RegistrationType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87378, &qword_261220458);
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87380, &qword_261220460);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87388, &qword_261220468);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2611AD104();
  v17 = v53;
  sub_26121D5F0();
  if (!v17)
  {
    v53 = v11;
    v18 = v51;
    v19 = v52;
    v20 = sub_26121D400();
    if (*(v20 + 16) == 1)
    {
      v21 = v14;
      v48 = v20;
      if (*(v20 + 32))
      {
        v59 = 1;
        sub_2611AD158();
        v22 = v5;
        sub_26121D350();
        v23 = v18;
        v34 = sub_26121D3B0();
        v36 = v35;
        (*(v49 + 8))(v22, v23);
        (*(v53 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0x8000000000000000;
      }

      else
      {
        v58 = 0;
        sub_2611AD1AC();
        v28 = v9;
        v29 = v21;
        sub_26121D350();
        v57 = 0;
        v31 = v28;
        v32 = sub_26121D3B0();
        v33 = v53;
        v41 = v40;
        v51 = v32;
        v56 = 1;
        v46 = sub_26121D3C0();
        v47 = v41;
        v42 = v50;
        v49 = v10;
        v55 = 2;
        v43 = (v33 + 8);
        v37 = sub_26121D3B0();
        v38 = v44;
        (*(v42 + 8))(v31, v6);
        (*v43)(v29, v49);
        swift_unknownObjectRelease();
        v36 = v47;
        v39 = v46 & 1;
        v34 = v51;
      }

      *v19 = v34;
      v19[1] = v36;
      v19[2] = v39;
      v19[3] = v37;
      v19[4] = v38;
    }

    else
    {
      v24 = sub_26121D220();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
      *v26 = &type metadata for RegistrationType;
      sub_26121D360();
      sub_26121D210();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v53 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2611AD868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_2611AD8B8(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

unint64_t sub_2611AD974()
{
  result = qword_27FE8AF70[0];
  if (!qword_27FE8AF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8AF70);
  }

  return result;
}

unint64_t sub_2611AD9CC()
{
  result = qword_27FE8B180[0];
  if (!qword_27FE8B180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B180);
  }

  return result;
}