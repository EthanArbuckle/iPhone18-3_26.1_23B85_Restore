uint64_t NamedGroup.metadataDescription.getter()
{
  v1 = *v0;
  if (v1 > 0x1C)
  {
    if (v1 != 29)
    {
      if (v1 == 4588)
      {
        return 0x4C4D393135353258;
      }

      goto LABEL_8;
    }

    return 0x393135353258;
  }

  else
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 0x3438332D50;
      }

LABEL_8:
      sub_26C14908C();

      v3 = sub_26C14911C();
      MEMORY[0x26D69BC90](v3);

      MEMORY[0x26D69BC90](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x3635322D50;
  }
}

uint64_t NamedGroup.description.getter()
{
  v1 = *v0;
  if (v1 > 0x1C)
  {
    if (v1 != 29)
    {
      if (v1 == 4588)
      {
        return 0x4D3931353532782ELL;
      }

      goto LABEL_8;
    }

    return 0x3931353532782ELL;
  }

  else
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 0x343833706365732ELL;
      }

LABEL_8:
      sub_26C14908C();

      v3 = sub_26C14911C();
      MEMORY[0x26D69BC90](v3);

      MEMORY[0x26D69BC90](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x363532706365732ELL;
  }
}

unint64_t sub_26C0D5CBC()
{
  result = qword_28047AA50;
  if (!qword_28047AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA50);
  }

  return result;
}

SwiftTLS::knownTLSAlert_optional __swiftcall knownTLSAlert.init(rawValue:)(SwiftTLS::knownTLSAlert_optional rawValue)
{
  value = SwiftTLS_knownTLSAlert_certificateUnknown;
  switch(rawValue.value)
  {
    case 0:
      goto LABEL_23;
    case 0xA:
      rawValue.value = SwiftTLS_knownTLSAlert_unexpectedMessage;
      goto LABEL_23;
    case 0x14:
      rawValue.value = SwiftTLS_knownTLSAlert_badRecordMac;
      goto LABEL_23;
    case 0x16:
      rawValue.value = SwiftTLS_knownTLSAlert_recordOverflow;
      goto LABEL_23;
    case 0x28:
      rawValue.value = SwiftTLS_knownTLSAlert_handshakeFailure;
      goto LABEL_23;
    case 0x2A:
      rawValue.value = SwiftTLS_knownTLSAlert_badCertificate;
      goto LABEL_23;
    case 0x2B:
      rawValue.value = SwiftTLS_knownTLSAlert_unsupportedCertificate;
      goto LABEL_23;
    case 0x2C:
      rawValue.value = SwiftTLS_knownTLSAlert_certificateRevoked;
      goto LABEL_23;
    case 0x2D:
      rawValue.value = SwiftTLS_knownTLSAlert_certificateExpired;
LABEL_23:
      value = rawValue.value;
      goto LABEL_24;
    case 0x2E:
LABEL_24:
      *v1 = value;
      break;
    case 0x2F:
      *v1 = SwiftTLS_knownTLSAlert_illegalParameter;
      break;
    case 0x30:
      *v1 = SwiftTLS_knownTLSAlert_unknownCA;
      break;
    case 0x31:
      *v1 = SwiftTLS_knownTLSAlert_accessDenied;
      break;
    case 0x32:
      *v1 = SwiftTLS_knownTLSAlert_decodeError;
      break;
    case 0x33:
      *v1 = SwiftTLS_knownTLSAlert_decryptError;
      break;
    case 0x46:
      *v1 = SwiftTLS_knownTLSAlert_protocolVersion;
      break;
    case 0x47:
      *v1 = SwiftTLS_knownTLSAlert_insufficientSecurity;
      break;
    case 0x50:
      *v1 = SwiftTLS_knownTLSAlert_internalError;
      break;
    case 0x56:
      *v1 = SwiftTLS_knownTLSAlert_inappropriateFallback;
      break;
    case 0x5A:
      *v1 = SwiftTLS_knownTLSAlert_userCanceled;
      break;
    case 0x6D:
      *v1 = SwiftTLS_knownTLSAlert_missingExtension;
      break;
    case 0x6E:
      *v1 = SwiftTLS_knownTLSAlert_unsupportedExtension;
      break;
    case 0x70:
      *v1 = SwiftTLS_knownTLSAlert_unrecognizedName;
      break;
    case 0x71:
      *v1 = SwiftTLS_knownTLSAlert_badCertificateStatusResponse;
      break;
    case 0x73:
      *v1 = SwiftTLS_knownTLSAlert_unknownPskIdentity;
      break;
    case 0x74:
      *v1 = SwiftTLS_knownTLSAlert_certificateRequired;
      break;
    case 0x78:
      *v1 = SwiftTLS_knownTLSAlert_noApplicationProtocol;
      break;
    default:
      *v1 = SwiftTLS_knownTLSAlert_unknownDefault;
      break;
  }

  return rawValue;
}

uint64_t sub_26C0D5EB0()
{
  v1 = *v0;
  sub_26C1491AC();
  v2 = byte_26C14B068[v1];
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D5F38()
{
  v1 = *v0;
  sub_26C1491AC();
  v2 = byte_26C14B068[v1];
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t Alert.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t Alert.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t Alert.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  if (word_280480310 == v1 && HIBYTE(word_280480310) == v2)
  {
    return 0x6F6E2065736F6C63;
  }

  if (qword_28047A658 != -1)
  {
    swift_once();
  }

  if (word_280480312 == v1 && HIBYTE(word_280480312) == v2)
  {
    return 0xD000000000000012;
  }

  if (qword_28047A660 != -1)
  {
    swift_once();
  }

  if (word_280480314 == v1 && HIBYTE(word_280480314) == v2)
  {
    return 0x6F63657220646162;
  }

  if (qword_28047A668 != -1)
  {
    swift_once();
  }

  if (word_280480316 == v1 && HIBYTE(word_280480316) == v2)
  {
    return 0x6F2064726F636572;
  }

  if (qword_28047A670 != -1)
  {
    swift_once();
  }

  if (word_280480318 == v1 && HIBYTE(word_280480318) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A678 != -1)
  {
    swift_once();
  }

  if (word_28048031A == v1 && HIBYTE(word_28048031A) == v2)
  {
    return 0x7472656320646162;
  }

  if (qword_28047A680 != -1)
  {
    swift_once();
  }

  if (word_28048031C == v1 && HIBYTE(word_28048031C) == v2)
  {
    return 0xD000000000000017;
  }

  if (qword_28047A688 != -1)
  {
    swift_once();
  }

  if (word_28048031E == v1 && HIBYTE(word_28048031E) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A690 != -1)
  {
    swift_once();
  }

  if (word_280480320 == v1 && HIBYTE(word_280480320) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A698 != -1)
  {
    swift_once();
  }

  if (word_280480322 == v1 && HIBYTE(word_280480322) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A6A0 != -1)
  {
    swift_once();
  }

  if (word_280480324 == v1 && HIBYTE(word_280480324) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A6A8 != -1)
  {
    swift_once();
  }

  if (word_280480326 == v1 && HIBYTE(word_280480326) == v2)
  {
    return 0x206E776F6E6B6E75;
  }

  if (qword_28047A6B0 != -1)
  {
    swift_once();
  }

  if (word_280480328 == v1 && HIBYTE(word_280480328) == v2)
  {
    return 0x6420737365636361;
  }

  if (qword_28047A6B8 != -1)
  {
    swift_once();
  }

  if (word_28048032A == v1 && HIBYTE(word_28048032A) == v2)
  {
    return 0x652065646F636564;
  }

  if (qword_28047A6C0 != -1)
  {
    swift_once();
  }

  if (word_28048032C == v1 && HIBYTE(word_28048032C) == v2)
  {
    return 0x2074707972636564;
  }

  if (qword_28047A6C8 != -1)
  {
    swift_once();
  }

  if (word_28048032E == v1 && HIBYTE(word_28048032E) == v2)
  {
    return 0xD000000000000010;
  }

  if (qword_28047A6D0 != -1)
  {
    swift_once();
  }

  if (word_280480330 == v1 && HIBYTE(word_280480330) == v2)
  {
    return 0xD000000000000015;
  }

  if (qword_28047A6D8 != -1)
  {
    swift_once();
  }

  if (word_280480332 == v1 && HIBYTE(word_280480332) == v2)
  {
    return 0x6C616E7265746E69;
  }

  if (qword_28047A6E0 != -1)
  {
    swift_once();
  }

  if (word_280480334 == v1 && HIBYTE(word_280480334) == v2)
  {
    return 0xD000000000000016;
  }

  if (qword_28047A6E8 != -1)
  {
    swift_once();
  }

  if (word_280480336 == v1 && HIBYTE(word_280480336) == v2)
  {
    return 0x6E61632072657375;
  }

  if (qword_28047A6F0 != -1)
  {
    swift_once();
  }

  if (word_280480338 == v1 && HIBYTE(word_280480338) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A6F8 != -1)
  {
    swift_once();
  }

  if (word_28048033A == v1 && HIBYTE(word_28048033A) == v2)
  {
    return 0xD000000000000015;
  }

  if (qword_28047A700 != -1)
  {
    swift_once();
  }

  if (word_28048033C == v1 && HIBYTE(word_28048033C) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A708 != -1)
  {
    swift_once();
  }

  if (word_28048033E == v1 && HIBYTE(word_28048033E) == v2)
  {
    return 0xD00000000000001FLL;
  }

  if (qword_28047A710 != -1)
  {
    swift_once();
  }

  if (word_280480340 == v1 && HIBYTE(word_280480340) == v2)
  {
    return 0xD000000000000014;
  }

  if (qword_28047A718 != -1)
  {
    swift_once();
  }

  if (word_280480342 == v1 && HIBYTE(word_280480342) == v2)
  {
    return 0xD000000000000014;
  }

  if (qword_28047A720 != -1)
  {
    swift_once();
  }

  if (word_280480344 == v1 && HIBYTE(word_280480344) == v2)
  {
    return 0xD000000000000017;
  }

  sub_26C14908C();

  v6 = sub_26C14911C();
  MEMORY[0x26D69BC90](v6);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_26C0D6EF4()
{
  result = qword_28047AA58;
  if (!qword_28047AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA58);
  }

  return result;
}

unint64_t sub_26C0D6F4C()
{
  result = qword_28047AA60;
  if (!qword_28047AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for knownTLSAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for knownTLSAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C0D7104(uint64_t a1, unint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (sub_26C148F6C() > 255)
    {
LABEL_4:
      result = 0;
      goto LABEL_16;
    }

    v5 = sub_26C148F6C();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0xFFFFFFFFFF00) != 0)
    {
      goto LABEL_4;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_9;
    }

    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 <= 0xFF)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  v5 = HIBYTE(a2) & 0xF;
LABEL_10:
  v11 = v5;
  v12[3] = MEMORY[0x277D838B0];
  v12[4] = MEMORY[0x277CC9C18];
  v12[0] = &v11;
  v12[1] = v12;
  v6 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277D838B0]);
  v7 = *v6;
  v8 = v6[1];

  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_26C0D1D1C(a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v9 = sub_26C148F6C();
  }

  else
  {

    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }
  }

  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_20:
    __break(1u);
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D7260()
{
  v0 = sub_26C1368E8();
  if ((v0 & 0x100) != 0)
  {
    return 0;
  }

  result = sub_26C0DE248(v0, &v18);
  v2 = v19;
  if (v19 >> 60 == 15)
  {
    return 0;
  }

  v3 = v18;
  v4 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v18 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v18 >> 32;
  }

  else
  {
    v5 = BYTE6(v19);
  }

  if (v5 < v20)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_26C14889C();
    v8 = v7;
    v9 = sub_26C0D753C(v6, v7);
    if (v10)
    {
      v11 = v9;
      v12 = v3;
    }

    else
    {
      v16 = v6;
      v17 = v8;
      sub_26C0BBAA4(v6, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA68, &qword_26C14B088);
      if (swift_dynamicCast())
      {
        sub_26C0D3CB0(v14, &v18);
        __swift_project_boxed_opaque_existential_1(&v18, v21);
        if (sub_26C1490FC())
        {
          sub_26C0BB9B0(v6, v8);
          __swift_project_boxed_opaque_existential_1(&v18, v21);
          sub_26C1490EC();
          sub_26C0BB344(v3, v2);
          v13 = *&v14[0];
          __swift_destroy_boxed_opaque_existential_1(&v18);
          return v13;
        }

        __swift_destroy_boxed_opaque_existential_1(&v18);
      }

      else
      {
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        sub_26C0D76E8(v14);
      }

      v11 = sub_26C0D7494(v6, v8);
      v12 = v3;
    }

    sub_26C0BB344(v12, v2);
    sub_26C0BB9B0(v6, v8);
    return v11;
  }

  return result;
}

uint64_t sub_26C0D7494(uint64_t a1, unint64_t a2)
{
  sub_26C0BBAA4(a1, a2);
  v4 = *(sub_26C148778(a1, a2) + 16);
  v5 = sub_26C148F3C();

  return v5;
}

uint64_t sub_26C0D7500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C148F3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C0D753C(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_26C1487BC();
  if (a1)
  {
    a1 = sub_26C1487EC();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_26C1487BC() || !__OFSUB__(v5, sub_26C1487EC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_26C1487DC();
LABEL_16:
  result = sub_26C148F3C();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D76E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA70, &qword_26C14B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0D7760(__int16 a1)
{
  if (a1 == 4865)
  {
    return 0xD000000000000016;
  }

  if (a1 == 4866)
  {
    return 0xD000000000000016;
  }

  sub_26C0D787C();
  v2 = sub_26C148FBC();
  MEMORY[0x26D69BC90](v2);

  return 30768;
}

unint64_t sub_26C0D7828()
{
  result = qword_28047AA78;
  if (!qword_28047AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA78);
  }

  return result;
}

unint64_t sub_26C0D787C()
{
  result = qword_28047AA80;
  if (!qword_28047AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA80);
  }

  return result;
}

uint64_t sub_26C0D78D0(uint64_t a1, int a2)
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

uint64_t sub_26C0D78F0(uint64_t result, int a2, int a3)
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

void sub_26C0D792C()
{
  if (qword_287CC9978 == 32)
  {
    xmmword_280480350 = xmmword_287CC9988;
    *&qword_280480360 = unk_287CC9998;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26C0D795C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C1491AC();
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

uint64_t sub_26C0D79DC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x26D69BF30](*v0);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  return MEMORY[0x26D69BF30](v3);
}

uint64_t sub_26C0D7A34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C1491AC();
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

unint64_t sub_26C0D7AF0()
{
  result = qword_28047AA88;
  if (!qword_28047AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA88);
  }

  return result;
}

uint64_t sub_26C0D7B44@<X0>(uint64_t a1@<X8>)
{
  result = v1[2];
  v3 = result + 32;
  if (__OFADD__(result, 32))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v3)
      {
        goto LABEL_7;
      }
    }

    else if (v3 <= 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_22:
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return result;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v3 >= result)
  {
    v9 = sub_26C14889C();
    v10 = v9;
    v12 = v11;
    v1[2] = v3;
    v13 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v13 != 2)
      {
LABEL_21:
        v20 = sub_26C14889C();
        v22 = v21;
        v14 = sub_26C0D7CAC(v20, v21);
        v15 = v23;
        v16 = v24;
        v17 = v25;
        sub_26C0BB9B0(v20, v22);
        result = sub_26C0BB9B0(v10, v12);
        v18 = 0;
        goto LABEL_22;
      }

      v9 = *(v9 + 16);
      v19 = *(v10 + 24);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v9 = v9;
      v19 = v10 >> 32;
    }

    if (v19 < v9)
    {
      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26C0D7CAC(uint64_t result, unint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 == 32)
  {
    memset(v8, 0, sizeof(v8));
    sub_26C0D4564(result, a2, v8, v9);
    result = *&v8[0];
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_26C0D7D74(__int16 a1)
{
  result = 0xD000000000000017;
  if (a1 == 2052)
  {
    return 0xD000000000000014;
  }

  if (a1 != 1283 && a1 != 1027)
  {
    sub_26C14908C();

    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return result;
}

unint64_t sub_26C0D7E8C()
{
  result = qword_28047AA90;
  if (!qword_28047AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA90);
  }

  return result;
}

uint64_t sub_26C0D7EE0()
{
  type metadata accessor for PAKELimiter();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F98];
  qword_280480370 = result;
  return result;
}

uint64_t sub_26C0D7F1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_26C1491AC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D7FB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t sub_26C0D8028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_26C1491AC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D80C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_26C0E6464(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_26C0E6464(v2, v3, v7, v8) & 1) == 0)
  {
    return 0;
  }

  if (sub_26C0E6464(v4, v5, v9, v10))
  {
    return v6 ^ v11 ^ 1u;
  }

  return 0;
}

uint64_t sub_26C0D8170(uint64_t a1, int a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  if (!*(*(v2 + 24) + 16))
  {
    goto LABEL_5;
  }

  sub_26C0D84BC(a1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v2 + 24);
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_26C0D8CCC(a2, a1, isUniquelyReferenced_nonNull_native);
    v10 = *(v3 + 24);
    *(v3 + 24) = v12;

    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  os_unfair_lock_unlock((v3 + 16));
  return v7;
}

BOOL sub_26C0D8220(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  v7 = *(v4 + 16) && (v5 = sub_26C0D84BC(a1), (v6 & 1) != 0) && *(*(v4 + 56) + 4 * v5) != 0;
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t sub_26C0D8290()
{
  sub_26C0DA508(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26C0D8308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0D835C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26C0D83C4()
{
  result = qword_28047AAA0;
  if (!qword_28047AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAA0);
  }

  return result;
}

unint64_t sub_26C0D8418(void *a1)
{
  v3 = *(v1 + 40);
  sub_26C1491AC();
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *a1;
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  v9 = sub_26C14920C();

  return sub_26C0D8E20(a1, v9);
}

unint64_t sub_26C0D84BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26C1491AC();
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_26C1488BC();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_26C1488BC();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_26C1488BC();
  v10 = *(a1 + 48);
  sub_26C1491CC();
  v11 = sub_26C14920C();

  return sub_26C0D95C0(a1, v11);
}

uint64_t sub_26C0D8550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
  v48 = a2;
  v7 = sub_26C1490CC();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v46 = (v5 + 64);
    v47 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v45 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v18 = (v12 - 1) & v12;
LABEL_17:
      v22 = v17 | (v9 << 6);
      v60 = v18;
      v23 = *(v5 + 48) + 40 * v22;
      v24 = *v23;
      v26 = *(v23 + 8);
      v25 = *(v23 + 16);
      v28 = *(v23 + 24);
      v27 = *(v23 + 32);
      v29 = *(v5 + 56) + (v22 << 7);
      if (v48)
      {
        v50 = *v29;
        v49 = *(v29 + 8);
        v53 = *(v29 + 56);
        v51 = *(v29 + 24);
        v52 = *(v29 + 40);
        v59 = *(v29 + 88);
        v57 = *(v29 + 72);
        v55 = *(v29 + 112);
        v56 = *(v29 + 104);
        v54 = *(v29 + 120);
        v58 = *(v29 + 121);
      }

      else
      {
        v31 = *(v29 + 32);
        v30 = *(v29 + 48);
        v32 = *v29;
        *&v62[16] = *(v29 + 16);
        *&v62[32] = v31;
        *v62 = v32;
        v34 = *(v29 + 80);
        v33 = *(v29 + 96);
        v35 = *(v29 + 64);
        *&v62[106] = *(v29 + 106);
        *&v62[80] = v34;
        *&v62[96] = v33;
        *&v62[48] = v30;
        *&v62[64] = v35;
        v58 = v62[121];
        v59 = *&v62[88];
        v57 = *&v62[72];
        v55 = *&v62[112];
        v56 = *(&v33 + 1);
        v54 = v62[120];
        v52 = *&v62[40];
        v53 = *&v62[56];
        v51 = *&v62[24];
        v49 = *&v62[8];
        v50 = *v62;
        sub_26C0BBAA4(v26, v25);
        sub_26C0BBAA4(v28, v27);
        sub_26C0DA570(v62, v61);
      }

      v36 = *(v8 + 40);
      sub_26C1491AC();
      sub_26C1491DC();
      sub_26C1488BC();
      sub_26C1488BC();
      result = sub_26C14920C();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v13 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v13 + 8 * v39);
          if (v43 != -1)
          {
            v14 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v38) & ~*(v13 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v8 + 48) + 40 * v14;
      *v15 = v24;
      *(v15 + 8) = v26;
      *(v15 + 16) = v25;
      *(v15 + 24) = v28;
      *(v15 + 32) = v27;
      v16 = *(v8 + 56) + (v14 << 7);
      *v16 = v50;
      *(v16 + 24) = v51;
      *(v16 + 8) = v49;
      *(v16 + 56) = v53;
      *(v16 + 40) = v52;
      *(v16 + 88) = v59;
      *(v16 + 72) = v57;
      *(v16 + 104) = v56;
      *(v16 + 112) = v55;
      *(v16 + 120) = v54;
      *(v16 + 121) = v58;
      ++*(v8 + 16);
      v5 = v47;
      v12 = v60;
    }

    v19 = v9;
    result = v46;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v45)
      {
        break;
      }

      v21 = v46[v9];
      ++v19;
      if (v21)
      {
        v17 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26C0D8978(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAA8, &qword_26C14B528);
  v41 = a2;
  v45 = sub_26C1490CC();
  if (*(v5 + 16))
  {
    v38 = v2;
    v7 = 0;
    v39 = (v5 + 64);
    v40 = v5;
    v8 = 1 << *(v5 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = v45 + 64;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_17:
      v21 = v17 | (v7 << 6);
      v22 = *(v5 + 48) + 56 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v44 = *(v22 + 48);
      v42 = *(*(v5 + 56) + 4 * v21);
      if ((v41 & 1) == 0)
      {
        sub_26C0BBAA4(v23, v24);
        sub_26C0BBAA4(v26, v25);
        sub_26C0BBAA4(v27, v28);
      }

      v29 = *(v45 + 40);
      sub_26C1491AC();
      sub_26C1488BC();
      sub_26C1488BC();
      sub_26C1488BC();
      sub_26C1491CC();
      result = sub_26C14920C();
      v30 = -1 << *(v45 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v15 = v25;
        v14 = v26;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v15 = v25;
      v14 = v26;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v45 + 48) + 56 * v13;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *(v16 + 32) = v27;
      *(v16 + 40) = v28;
      *(v16 + 48) = v44;
      *(*(v45 + 56) + 4 * v13) = v42;
      ++*(v45 + 16);
      v5 = v40;
      v10 = v43;
    }

    v18 = v7;
    result = v39;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v11)
      {
        break;
      }

      v20 = v39[v7];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v39, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v39 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v45;
  return result;
}

unint64_t sub_26C0D8CCC(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26C0D84BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26C0D8978(v14, a3 & 1);
      v18 = *v4;
      result = sub_26C0D84BC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_15:
        result = sub_26C14914C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_26C0DA31C();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 4 * result) = a1;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  v21 = v20[6] + 56 * result;
  v22 = *a2;
  v23 = *(a2 + 16);
  v24 = *(a2 + 32);
  *(v21 + 48) = *(a2 + 48);
  *(v21 + 16) = v23;
  *(v21 + 32) = v24;
  *v21 = v22;
  *(v20[7] + 4 * result) = a1;
  v25 = v20[2];
  v13 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20[2] = v26;
  return sub_26C0DA4D0(a2, v27);
}

unint64_t sub_26C0D8E20(void *a1, uint64_t a2)
{
  v89[3] = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    goto LABEL_127;
  }

  v6 = v2;
  v87 = 0;
  v7 = ~v4;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 == 0xC000000000000000;
  }

  v14 = !v13;
  v84 = v14;
  v15 = v10 >> 62;
  v81 = a1[3];
  v82 = a1[1];
  v16 = HIDWORD(v9) - v9;
  v17 = __OFSUB__(HIDWORD(v9), v9);
  v77 = v17;
  v75 = a1[4];
  v76 = v16;
  v72 = a1[2];
  v73 = v7;
  v83 = BYTE6(v10);
  if (v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12 == 0xC000000000000000;
  }

  v19 = !v18;
  v80 = v19;
  v85 = v10 >> 62;
  v86 = v12 >> 62;
  v20 = __OFSUB__(HIDWORD(v11), v11);
  v71 = v20;
  v70 = HIDWORD(v11) - v11;
  v79 = BYTE6(v12);
  v74 = v3;
  v78 = *a1;
  while (1)
  {
    v21 = (*(v6 + 48) + 40 * v5);
    if (*v21 != v8)
    {
      goto LABEL_24;
    }

    v23 = v21[1];
    v22 = v21[2];
    v25 = v21[3];
    v24 = v21[4];
    v26 = v22 >> 62;
    if (v22 >> 62 == 3)
    {
      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v22 == 0xC000000000000000;
      }

      v29 = !v27 || v15 < 3;
      if (((v29 | v84) & 1) == 0)
      {
        v30 = 0;
        v31 = 0xC000000000000000;
        goto LABEL_58;
      }

LABEL_48:
      v32 = 0;
      if (v15 <= 1)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_48;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_134;
      }

      if (v15 <= 1)
      {
        goto LABEL_45;
      }
    }

    else if (v26)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_135;
      }

      v32 = v32;
      if (v15 <= 1)
      {
LABEL_45:
        v36 = v83;
        if (v15)
        {
          v36 = v76;
          if (v77)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      v32 = BYTE6(v22);
      if (v15 <= 1)
      {
        goto LABEL_45;
      }
    }

LABEL_49:
    if (v15 != 2)
    {
      if (v32)
      {
        goto LABEL_24;
      }

LABEL_57:
      v30 = v23;
      v31 = v22;
LABEL_58:
      sub_26C0BBAA4(v30, v31);
      sub_26C0BBAA4(v25, v24);
      v39 = v86;
      goto LABEL_59;
    }

    v38 = *(v82 + 16);
    v37 = *(v82 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_131;
    }

LABEL_51:
    if (v32 != v36)
    {
      goto LABEL_24;
    }

    if (v32 < 1)
    {
      goto LABEL_57;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v89, 0, 14);
        sub_26C0BBAA4(v23, v22);
        sub_26C0BBAA4(v25, v24);
        goto LABEL_124;
      }

      v55 = *(v23 + 16);
      v54 = *(v23 + 24);
      sub_26C0BBAA4(v23, v22);
      sub_26C0BBAA4(v25, v24);
      v56 = sub_26C1487BC();
      if (v56)
      {
        v57 = sub_26C1487EC();
        if (__OFSUB__(v55, v57))
        {
          goto LABEL_144;
        }

        v56 += v55 - v57;
      }

      if (__OFSUB__(v54, v55))
      {
        goto LABEL_141;
      }

      sub_26C1487DC();
      v58 = v56;
      v59 = v82;
      v60 = v72;
      v61 = v87;
LABEL_122:
      sub_26C0BE04C(v58, v59, v60, v89);
      v87 = v61;
      v65 = v89[0];
      v7 = v73;
      v3 = v74;
      v8 = v78;
      goto LABEL_125;
    }

    if (v26)
    {
      if (v23 >> 32 < v23)
      {
        goto LABEL_140;
      }

      sub_26C0BBAA4(v23, v22);
      sub_26C0BBAA4(v25, v24);
      v63 = sub_26C1487BC();
      if (v63)
      {
        v64 = sub_26C1487EC();
        if (__OFSUB__(v23, v64))
        {
          goto LABEL_145;
        }

        v63 += v23 - v64;
      }

      v61 = v87;
      sub_26C1487DC();
      v58 = v63;
      v59 = v82;
      v60 = v72;
      goto LABEL_122;
    }

    v89[0] = v23;
    LOWORD(v89[1]) = v22;
    BYTE2(v89[1]) = BYTE2(v22);
    BYTE3(v89[1]) = BYTE3(v22);
    BYTE4(v89[1]) = BYTE4(v22);
    BYTE5(v89[1]) = BYTE5(v22);
    sub_26C0BBAA4(v23, v22);
    sub_26C0BBAA4(v25, v24);
    v8 = v78;
LABEL_124:
    sub_26C0BE04C(v89, v82, v72, &v88);
    v65 = v88;
LABEL_125:
    v39 = v86;
    if ((v65 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_59:
    v40 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v41 = 0;
      }

      else
      {
        v41 = v24 == 0xC000000000000000;
      }

      v43 = !v41 || v39 < 3;
      if (((v43 | v80) & 1) == 0)
      {
        sub_26C0BB9B0(v23, v22);
        v68 = 0;
        v69 = 0xC000000000000000;
        goto LABEL_129;
      }

LABEL_81:
      v44 = 0;
      if (v39 <= 1)
      {
        goto LABEL_78;
      }

      goto LABEL_82;
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_81;
      }

      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      v35 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (v35)
      {
        goto LABEL_136;
      }

      if (v39 <= 1)
      {
        goto LABEL_78;
      }
    }

    else if (v40)
    {
      LODWORD(v44) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_137;
      }

      v44 = v44;
      if (v39 <= 1)
      {
LABEL_78:
        v47 = v79;
        if (v39)
        {
          v47 = v70;
          if (v71)
          {
            goto LABEL_133;
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
      v44 = BYTE6(v24);
      if (v39 <= 1)
      {
        goto LABEL_78;
      }
    }

LABEL_82:
    if (v39 != 2)
    {
      if (!v44)
      {
        break;
      }

LABEL_22:
      sub_26C0BB9B0(v23, v22);
      sub_26C0BB9B0(v25, v24);
      goto LABEL_23;
    }

    v49 = *(v81 + 16);
    v48 = *(v81 + 24);
    v35 = __OFSUB__(v48, v49);
    v47 = v48 - v49;
    if (v35)
    {
      goto LABEL_132;
    }

LABEL_84:
    if (v44 != v47)
    {
      goto LABEL_22;
    }

    if (v44 < 1)
    {
      break;
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        memset(v89, 0, 14);
LABEL_115:
        sub_26C0BE04C(v89, v81, v75, &v88);
        sub_26C0BB9B0(v23, v22);
        sub_26C0BB9B0(v25, v24);
        if (v88)
        {
          goto LABEL_127;
        }

        goto LABEL_23;
      }

      v50 = *(v25 + 16);
      v51 = *(v25 + 24);
      v52 = sub_26C1487BC();
      if (v52)
      {
        v53 = sub_26C1487EC();
        if (__OFSUB__(v50, v53))
        {
          goto LABEL_142;
        }

        v52 += v50 - v53;
      }

      if (__OFSUB__(v51, v50))
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (!v40)
      {
        v89[0] = v25;
        LOWORD(v89[1]) = v24;
        BYTE2(v89[1]) = BYTE2(v24);
        BYTE3(v89[1]) = BYTE3(v24);
        BYTE4(v89[1]) = BYTE4(v24);
        BYTE5(v89[1]) = BYTE5(v24);
        goto LABEL_115;
      }

      if (v25 >> 32 < v25)
      {
        goto LABEL_138;
      }

      v52 = sub_26C1487BC();
      if (v52)
      {
        v62 = sub_26C1487EC();
        if (__OFSUB__(v25, v62))
        {
          goto LABEL_143;
        }

        v52 += v25 - v62;
      }
    }

    sub_26C1487DC();
    sub_26C0BE04C(v52, v81, v75, v89);
    sub_26C0BB9B0(v23, v22);
    sub_26C0BB9B0(v25, v24);
    if (v89[0])
    {
      goto LABEL_127;
    }

    v7 = v73;
    v3 = v74;
    v8 = v78;
LABEL_23:
    v15 = v85;
LABEL_24:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_127;
    }
  }

  sub_26C0BB9B0(v23, v22);
  v68 = v25;
  v69 = v24;
LABEL_129:
  sub_26C0BB9B0(v68, v69);
LABEL_127:
  v66 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_26C0D95C0(uint64_t *a1, uint64_t a2)
{
  v103[3] = *MEMORY[0x277D85DE8];
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v100 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v99 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    if (*a1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xC000000000000000;
    }

    v9 = !v8;
    v96 = v9;
    v10 = v7 >> 62;
    v94 = *a1;
    v11 = HIDWORD(v6) - v6;
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v93 = v12;
    v91 = a1[1];
    v92 = v11;
    v95 = BYTE6(v7);
    v97 = v7 >> 62;
    while (1)
    {
      v13 = *(v2 + 48) + 56 * v4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v13 + 48);
      v21 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_179;
        }

        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v27) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_180;
        }

        v27 = v27;
        if (v10 <= 1)
        {
LABEL_34:
          v31 = v95;
          if (v10)
          {
            v31 = v92;
            if (v93)
            {
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
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
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v15);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v10 != 2)
      {
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_46:
        v98 = v20;
        v25 = v14;
        v26 = v15;
LABEL_47:
        sub_26C0BBAA4(v25, v26);
        sub_26C0BBAA4(v16, v17);
        v101 = v18;
        sub_26C0BBAA4(v18, v19);
        goto LABEL_48;
      }

      v33 = *(v94 + 16);
      v32 = *(v94 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_178;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_46;
      }

      v98 = v20;
      v101 = v18;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v46 = *(v14 + 16);
          v47 = *(v14 + 24);
          sub_26C0BBAA4(v14, v15);
          sub_26C0BBAA4(v16, v17);
          sub_26C0BBAA4(v18, v19);
          v48 = sub_26C1487BC();
          if (v48)
          {
            v49 = sub_26C1487EC();
            if (__OFSUB__(v46, v49))
            {
              goto LABEL_191;
            }

            v48 += v46 - v49;
          }

          if (__OFSUB__(v47, v46))
          {
            goto LABEL_188;
          }

LABEL_103:
          sub_26C1487DC();
          sub_26C0BE04C(v48, v94, v91, v103);
          v5 = a1;
          v2 = v90;
          if ((v103[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_48;
        }

        memset(v103, 0, 14);
        sub_26C0BBAA4(v14, v15);
        sub_26C0BBAA4(v16, v17);
        sub_26C0BBAA4(v18, v19);
      }

      else
      {
        if (v21)
        {
          if (v14 >> 32 < v14)
          {
            goto LABEL_187;
          }

          sub_26C0BBAA4(v14, v15);
          sub_26C0BBAA4(v16, v17);
          sub_26C0BBAA4(v18, v19);
          v48 = sub_26C1487BC();
          if (v48)
          {
            v55 = sub_26C1487EC();
            if (__OFSUB__(v14, v55))
            {
              goto LABEL_192;
            }

            v48 += v14 - v55;
          }

          goto LABEL_103;
        }

        v103[0] = v14;
        LOWORD(v103[1]) = v15;
        BYTE2(v103[1]) = BYTE2(v15);
        BYTE3(v103[1]) = BYTE3(v15);
        BYTE4(v103[1]) = BYTE4(v15);
        BYTE5(v103[1]) = BYTE5(v15);
        sub_26C0BBAA4(v14, v15);
        sub_26C0BBAA4(v16, v17);
        sub_26C0BBAA4(v18, v19);
      }

      sub_26C0BE04C(v103, v94, v91, &v102);
      if (!v102)
      {
        goto LABEL_13;
      }

LABEL_48:
      v35 = v5[2];
      v34 = v5[3];
      v36 = v17 >> 62;
      v37 = v34 >> 62;
      if (v17 >> 62 == 3)
      {
        if (v16)
        {
          v38 = 0;
        }

        else
        {
          v38 = v17 == 0xC000000000000000;
        }

        v39 = 0;
        v40 = v38 && v34 >> 62 == 3;
        if (v40 && !v35 && v34 == 0xC000000000000000)
        {
          goto LABEL_121;
        }

LABEL_69:
        if (v37 > 1)
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v45 = *(v16 + 16);
          v44 = *(v16 + 24);
          v30 = __OFSUB__(v44, v45);
          v39 = v44 - v45;
          if (v30)
          {
            goto LABEL_183;
          }

          goto LABEL_69;
        }

        v39 = 0;
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

      else if (v36)
      {
        LODWORD(v39) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_184;
        }

        v39 = v39;
        if (v37 > 1)
        {
LABEL_63:
          if (v37 != 2)
          {
            if (v39)
            {
              goto LABEL_13;
            }

            goto LABEL_121;
          }

          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          v30 = __OFSUB__(v41, v42);
          v43 = v41 - v42;
          if (v30)
          {
            goto LABEL_182;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v39 = BYTE6(v17);
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

LABEL_70:
      if (!v37)
      {
        v43 = BYTE6(v34);
LABEL_72:
        if (v39 != v43)
        {
          goto LABEL_13;
        }

        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_181;
      }

      if (v39 != HIDWORD(v35) - v35)
      {
        goto LABEL_13;
      }

LABEL_79:
      if (v39 < 1)
      {
        goto LABEL_121;
      }

      if (v36 > 1)
      {
        if (v36 != 2)
        {
          memset(v103, 0, 14);
LABEL_113:
          sub_26C0BE04C(v103, v35, v34, &v102);
          if (!v102)
          {
            goto LABEL_13;
          }

          goto LABEL_121;
        }

        v83 = *(v16 + 24);
        v87 = *(v16 + 16);
        v50 = sub_26C1487BC();
        v82 = v19;
        if (v50)
        {
          v51 = v50;
          v52 = sub_26C1487EC();
          v53 = v87;
          if (__OFSUB__(v87, v52))
          {
            goto LABEL_195;
          }

          v54 = v87 - v52 + v51;
        }

        else
        {
          v54 = 0;
          v53 = v87;
        }

        if (__OFSUB__(v83, v53))
        {
          goto LABEL_194;
        }

        sub_26C1487DC();
        sub_26C0BE04C(v54, v35, v34, v103);
        v5 = a1;
        v2 = v90;
        v19 = v82;
        if ((v103[0] & 1) == 0)
        {
LABEL_13:
          sub_26C0BB9B0(v14, v15);
          sub_26C0BB9B0(v16, v17);
          sub_26C0BB9B0(v101, v19);
          v10 = v97;
          goto LABEL_14;
        }
      }

      else
      {
        if (!v36)
        {
          v103[0] = v16;
          LOWORD(v103[1]) = v17;
          BYTE2(v103[1]) = BYTE2(v17);
          BYTE3(v103[1]) = BYTE3(v17);
          BYTE4(v103[1]) = BYTE4(v17);
          BYTE5(v103[1]) = BYTE5(v17);
          goto LABEL_113;
        }

        if (v16 >> 32 < v16)
        {
          goto LABEL_193;
        }

        v56 = sub_26C1487BC();
        if (v56)
        {
          v84 = v56;
          v57 = sub_26C1487EC();
          if (__OFSUB__(v16, v57))
          {
            goto LABEL_196;
          }

          v58 = v16 - v57 + v84;
        }

        else
        {
          v58 = 0;
        }

        sub_26C1487DC();
        sub_26C0BE04C(v58, v35, v34, v103);
        v5 = a1;
        v2 = v90;
        if ((v103[0] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_121:
      v59 = v5[4];
      v60 = v5[5];
      v61 = v19 >> 62;
      v62 = v60 >> 62;
      if (v19 >> 62 == 3)
      {
        v63 = 0;
        if (!v101 && v19 == 0xC000000000000000 && v60 >> 62 == 3)
        {
          v63 = 0;
          if (!v59 && v60 == 0xC000000000000000)
          {
            sub_26C0BB9B0(v14, v15);
            sub_26C0BB9B0(v16, v17);
            v64 = 0;
            v65 = 0xC000000000000000;
            goto LABEL_151;
          }
        }

LABEL_137:
        if (v62 > 1)
        {
          goto LABEL_131;
        }

        goto LABEL_138;
      }

      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v70 = *(v101 + 16);
          v69 = *(v101 + 24);
          v30 = __OFSUB__(v69, v70);
          v63 = v69 - v70;
          if (v30)
          {
            goto LABEL_190;
          }

          goto LABEL_137;
        }

        v63 = 0;
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

      else if (v61)
      {
        LODWORD(v63) = HIDWORD(v101) - v101;
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          goto LABEL_189;
        }

        v63 = v63;
        if (v62 > 1)
        {
LABEL_131:
          if (v62 != 2)
          {
            if (v63)
            {
              goto LABEL_13;
            }

LABEL_150:
            sub_26C0BB9B0(v14, v15);
            sub_26C0BB9B0(v16, v17);
            v64 = v101;
            v65 = v19;
LABEL_151:
            sub_26C0BB9B0(v64, v65);
            v10 = v97;
            goto LABEL_152;
          }

          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          v30 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v30)
          {
            goto LABEL_186;
          }

          goto LABEL_140;
        }
      }

      else
      {
        v63 = BYTE6(v19);
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

LABEL_138:
      if (!v62)
      {
        v68 = BYTE6(v60);
LABEL_140:
        if (v63 != v68)
        {
          goto LABEL_13;
        }

        goto LABEL_146;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_185;
      }

      if (v63 != HIDWORD(v59) - v59)
      {
        goto LABEL_13;
      }

LABEL_146:
      if (v63 < 1)
      {
        goto LABEL_150;
      }

      if (v61 > 1)
      {
        if (v61 != 2)
        {
          memset(v103, 0, 14);
LABEL_168:
          sub_26C0BE04C(v103, v59, v60, &v102);
          sub_26C0BB9B0(v14, v15);
          sub_26C0BB9B0(v16, v17);
          sub_26C0BB9B0(v101, v19);
          v10 = v97;
          if (!v102)
          {
            goto LABEL_14;
          }

          goto LABEL_152;
        }

        v85 = *(v101 + 24);
        v88 = *(v101 + 16);
        v71 = sub_26C1487BC();
        if (v71)
        {
          v72 = v71;
          v73 = sub_26C1487EC();
          v74 = v88;
          if (__OFSUB__(v88, v73))
          {
            goto LABEL_199;
          }

          v81 = v88 - v73 + v72;
        }

        else
        {
          v81 = 0;
          v74 = v88;
        }

        if (__OFSUB__(v85, v74))
        {
          goto LABEL_198;
        }

        sub_26C1487DC();
        v78 = v81;
      }

      else
      {
        if (!v61)
        {
          v103[0] = v101;
          LOWORD(v103[1]) = v19;
          BYTE2(v103[1]) = BYTE2(v19);
          BYTE3(v103[1]) = BYTE3(v19);
          BYTE4(v103[1]) = BYTE4(v19);
          BYTE5(v103[1]) = BYTE5(v19);
          goto LABEL_168;
        }

        if (v101 >> 32 < v101)
        {
          goto LABEL_197;
        }

        v75 = sub_26C1487BC();
        if (v75)
        {
          v86 = v75;
          v76 = sub_26C1487EC();
          if (__OFSUB__(v101, v76))
          {
            goto LABEL_200;
          }

          v77 = v101 - v76 + v86;
        }

        else
        {
          v77 = 0;
        }

        sub_26C1487DC();
        v78 = v77;
      }

      sub_26C0BE04C(v78, v59, v60, v103);
      sub_26C0BB9B0(v14, v15);
      sub_26C0BB9B0(v16, v17);
      sub_26C0BB9B0(v101, v19);
      v5 = a1;
      v2 = v90;
      v10 = v97;
      if ((v103[0] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_152:
      if (v98 == (v5[6] & 1))
      {
        goto LABEL_177;
      }

LABEL_14:
      v4 = (v4 + 1) & v99;
      if (((*(v100 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_177;
      }
    }

    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15 == 0xC000000000000000;
    }

    v24 = !v22 || v10 < 3;
    if (((v24 | v96) & 1) == 0)
    {
      v98 = v20;
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_47;
    }

LABEL_37:
    v27 = 0;
    if (v10 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_177:
  v79 = *MEMORY[0x277D85DE8];
  return v4;
}

void *sub_26C0DA120()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
  v2 = *v0;
  v3 = sub_26C1490BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_26C0DA570(&v40, &v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 40 * v16;
      v18 = *(v2 + 56);
      v19 = *(v2 + 48) + 40 * v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v16 <<= 7;
      v26 = *(v18 + v16 + 80);
      v25 = *(v18 + v16 + 96);
      v27 = *(v18 + v16 + 64);
      *(v46 + 10) = *(v18 + v16 + 106);
      v45 = v26;
      v46[0] = v25;
      v44 = v27;
      v29 = *(v18 + v16);
      v28 = *(v18 + v16 + 16);
      v30 = *(v18 + v16 + 48);
      v42 = *(v18 + v16 + 32);
      v43 = v30;
      v40 = v29;
      v41 = v28;
      v31 = *(v4 + 48) + v17;
      *v31 = v20;
      *(v31 + 8) = v21;
      *(v31 + 16) = v22;
      *(v31 + 24) = v23;
      *(v31 + 32) = v24;
      v32 = (*(v4 + 56) + v16);
      v33 = v40;
      v34 = v41;
      v35 = v43;
      v32[2] = v42;
      v32[3] = v35;
      *v32 = v33;
      v32[1] = v34;
      v36 = v44;
      v37 = v45;
      v38 = v46[0];
      *(v32 + 106) = *(v46 + 10);
      v32[5] = v37;
      v32[6] = v38;
      v32[4] = v36;
      sub_26C0BBAA4(v21, v22);
      sub_26C0BBAA4(v23, v24);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C0DA31C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAA8, &qword_26C14B528);
  v26 = v0;
  v1 = *v0;
  v2 = sub_26C1490BC();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(v1 + 48) + 56 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        LOBYTE(v17) = *(v17 + 48);
        v24 = *(*(v1 + 56) + 4 * v16);
        v25 = *(v3 + 48) + 56 * v16;
        *v25 = v18;
        *(v25 + 8) = v19;
        *(v25 + 16) = v20;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v17;
        *(*(v3 + 56) + 4 * v16) = v24;
        sub_26C0BBAA4(v18, v19);
        sub_26C0BBAA4(v20, v21);
        result = sub_26C0BBAA4(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }

  return result;
}

uint64_t sub_26C0DA508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB0, &qword_26C14B530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0DA5DC(char a1)
{
  if (!a1)
  {
    return 0x393035782ELL;
  }

  if (a1 == 2)
  {
    return 0x6C6275507761722ELL;
  }

  sub_26C14908C();

  v2 = sub_26C14911C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t sub_26C0DA6D8()
{
  result = qword_28047AAC0;
  if (!qword_28047AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAC0);
  }

  return result;
}

uint64_t sub_26C0DA72C(unsigned __int8 a1)
{
  if (a1 <= 0x14u)
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 == 20)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x15u:
        return 0x7472656C612ELL;
      case 0x16u:
        return 0x616873646E61682ELL;
      case 0x17u:
        return 0xD000000000000010;
    }
  }

  sub_26C14908C();

  v2 = sub_26C14911C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_26C0DA898()
{
  result = qword_28047AAC8;
  if (!qword_28047AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAC8);
  }

  return result;
}

BOOL _s8SwiftTLS8TLSErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v12 = *a1;
      sub_26C0CF030(*a1, v2, 0);
      sub_26C0CF030(v5, v6, 0);
      return v12 == v5 && WORD1(v3) == WORD1(v5);
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    v14 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v5 != 1 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v13 = 1;
        sub_26C0CF030(1, 0, 2);
        return v13;
      case 2:
        if (v7 != 2 || v5 != 2 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 2;
        goto LABEL_345;
      case 3:
        if (v7 != 2 || v5 != 3 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 3;
        goto LABEL_345;
      case 4:
        if (v7 != 2 || v5 != 4 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 4;
        goto LABEL_345;
      case 5:
        if (v7 != 2 || v5 != 5 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 5;
        goto LABEL_345;
      case 6:
        if (v7 != 2 || v5 != 6 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 6;
        goto LABEL_345;
      case 7:
        if (v7 != 2 || v5 != 7 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 7;
        goto LABEL_345;
      case 8:
        if (v7 != 2 || v5 != 8 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 8;
        goto LABEL_345;
      case 9:
        if (v7 != 2 || v5 != 9 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 9;
        goto LABEL_345;
      case 10:
        if (v7 != 2 || v5 != 10 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 10;
        goto LABEL_345;
      case 11:
        if (v7 != 2 || v5 != 11 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 11;
        goto LABEL_345;
      case 12:
        if (v7 != 2 || v5 != 12 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 12;
        goto LABEL_345;
      case 13:
        if (v7 != 2 || v5 != 13 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 13;
        goto LABEL_345;
      case 14:
        if (v7 != 2 || v5 != 14 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 14;
        goto LABEL_345;
      case 15:
        if (v7 != 2 || v5 != 15 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 15;
        goto LABEL_345;
      case 16:
        if (v7 != 2 || v5 != 16 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 16;
        goto LABEL_345;
      case 17:
        if (v7 != 2 || v5 != 17 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 17;
        goto LABEL_345;
      case 18:
        if (v7 != 2 || v5 != 18 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 18;
        goto LABEL_345;
      case 19:
        if (v7 != 2 || v5 != 19 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 19;
        goto LABEL_345;
      case 20:
        if (v7 != 2 || v5 != 20 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 20;
        goto LABEL_345;
      case 21:
        if (v7 != 2 || v5 != 21 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 21;
        goto LABEL_345;
      case 22:
        if (v7 != 2 || v5 != 22 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 22;
        goto LABEL_345;
      case 23:
        if (v7 != 2 || v5 != 23 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 23;
        goto LABEL_345;
      case 24:
        if (v7 != 2 || v5 != 24 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 24;
        goto LABEL_345;
      case 25:
        if (v7 != 2 || v5 != 25 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 25;
        goto LABEL_345;
      case 26:
        if (v7 != 2 || v5 != 26 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 26;
        goto LABEL_345;
      case 27:
        if (v7 != 2 || v5 != 27 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 27;
        goto LABEL_345;
      case 28:
        if (v7 != 2 || v5 != 28 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 28;
        goto LABEL_345;
      case 29:
        if (v7 != 2 || v5 != 29 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 29;
        goto LABEL_345;
      case 30:
        if (v7 != 2 || v5 != 30 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 30;
        goto LABEL_345;
      case 31:
        if (v7 != 2 || v5 != 31 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 31;
        goto LABEL_345;
      case 32:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 32 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 32;
        goto LABEL_345;
      case 33:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 33 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 33;
        goto LABEL_345;
      case 34:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 34 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 34;
        goto LABEL_345;
      case 35:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 35 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 35;
        goto LABEL_345;
      case 36:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 36 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 36;
        goto LABEL_345;
      case 37:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 37 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 37;
        goto LABEL_345;
      default:
        if (v7 != 2 || (v6 | v5) != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v16 = 0;
LABEL_345:
        sub_26C0CF030(v16, 0, 2);
        v13 = 1;
        break;
    }

    return v13;
  }

  if (v7 != 1)
  {
    v17 = *(a1 + 8);

LABEL_21:
    sub_26C0CF018(v5, v6, v7);
    sub_26C0CF030(v3, v2, v4);
    sub_26C0CF030(v5, v6, v7);
    return 0;
  }

  if (v3 != v5 || v2 != v6)
  {
    v9 = *a1;
    v10 = sub_26C14912C();
    sub_26C0CF018(v5, v6, 1);
    sub_26C0CF018(v3, v2, 1);
    sub_26C0CF030(v3, v2, 1);
    sub_26C0CF030(v5, v6, 1);
    return v10 & 1;
  }

  v13 = 1;
  sub_26C0CF018(*a1, v2, 1);
  sub_26C0CF018(v3, v2, 1);
  sub_26C0CF030(v3, v2, 1);
  sub_26C0CF030(v3, v2, 1);
  return v13;
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS8TLSErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C0DB118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C0DB160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C0DB1A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26C0DB264()
{
  result = type metadata accessor for Curve25519EphemeralKey(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for P384EphemeralKey(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for X25519MLKEM768EphemeralKey(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26C0DB374()
{
  result = sub_26C148B0C();
  if (v1 <= 0x3F)
  {
    result = sub_26C148EDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_26C0DB578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C0DB5E8()
{
  v0 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C148E4C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for P384EphemeralKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C148ACC();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Curve25519EphemeralKey(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v35, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = type metadata accessor for Curve25519EphemeralKey;
    sub_26C0DD9E4(v23, v19, type metadata accessor for Curve25519EphemeralKey);
    sub_26C148AEC();
    v26 = sub_26C148AAC();
    (*(v33 + 8))(v15, v12);
    v27 = v19;
LABEL_6:
    v28 = v29;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v29 = type metadata accessor for X25519MLKEM768EphemeralKey;
    sub_26C0DD9E4(v23, v3, type metadata accessor for X25519MLKEM768EphemeralKey);
    v30 = &v3[*(v0 + 24)];
    v26 = *v30;
    sub_26C0BBAA4(*v30, *(v30 + 1));
    v27 = v3;
    goto LABEL_6;
  }

  sub_26C0DD9E4(v23, v11, type metadata accessor for P384EphemeralKey);
  v25 = sub_26C148E5C();
  v26 = MEMORY[0x26D69BB70](v25);
  (*(v34 + 8))(v7, v4);
  v27 = v11;
  v28 = type metadata accessor for P384EphemeralKey;
LABEL_7:
  sub_26C0DDA4C(v27, v28);
  return v26;
}

uint64_t sub_26C0DB980@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_26C0DE118(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_26C0DE1CC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_26C14889C();
    v15 = v14;
    result = sub_26C0BB9B0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26C0DBAC8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = sub_26C0D4E78(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0DBB54(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v43 = a4;
  v5 = v4;
  v47 = a3;
  v42 = a1;
  v7 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P384EphemeralKey(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C148BDC();
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Curve25519EphemeralKey(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v5, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26C0DD9E4(v29, v25, type metadata accessor for Curve25519EphemeralKey);
    v31 = v47;
    v33 = v44;
    sub_26C0DCF58(a2, v47, &v45, MEMORY[0x277CC5208], MEMORY[0x277CC51F8], MEMORY[0x277CC5210], v21);
    sub_26C0DDA4C(v25, type metadata accessor for Curve25519EphemeralKey);
    if (!v33)
    {
      (*(v40 + 32))(v42, v21, v41);
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26C0DD9E4(v29, v10, type metadata accessor for X25519MLKEM768EphemeralKey);
    v34 = v44;
    v35 = sub_26C0DBF94(v42, a2, v47, &v45);
    if (!v34)
    {
      a2 = v35;
      sub_26C0DDA4C(v10, type metadata accessor for X25519MLKEM768EphemeralKey);
      return a2;
    }

    sub_26C0DDA4C(v10, type metadata accessor for X25519MLKEM768EphemeralKey);
    goto LABEL_10;
  }

  sub_26C0DD9E4(v29, v14, type metadata accessor for P384EphemeralKey);
  v31 = v47;
  v32 = v44;
  sub_26C0DCF58(a2, v47, &v45, MEMORY[0x277CC54F8], MEMORY[0x277CC54F0], MEMORY[0x277CC5500], v19);
  sub_26C0DDA4C(v14, type metadata accessor for P384EphemeralKey);
  if (v32)
  {
LABEL_10:
    v36 = v46;
    v37 = v43;
    *v43 = v45;
    *(v37 + 16) = v36;
    return a2;
  }

  (*(v40 + 32))(v42, v19, v41);
LABEL_7:
  sub_26C0BBAA4(a2, v31);
  return a2;
}

uint64_t sub_26C0DBF94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v74 = a1;
  v76 = sub_26C148BDC();
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_26C148CCC();
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v80 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C148F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  *&v83 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_26C1489AC();
  v81 = *(v82 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v86 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C148B7C();
  v84 = *(v19 - 8);
  v85 = v19;
  v20 = *(v84 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  *&v88 = &v64 - v24;
  v25 = sub_26C148ACC();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v27);
  v33 = &v64 - v32;
  v34 = a3 >> 62;
  v79 = v14;
  if ((a3 >> 62) > 1)
  {
    v35 = 0;
    if (v34 != 2)
    {
      goto LABEL_10;
    }

    v37 = *(a2 + 16);
    v36 = *(a2 + 24);
    v35 = v36 - v37;
    if (!__OFSUB__(v36, v37))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v35 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = HIDWORD(a2) - a2;
LABEL_10:
  v78 = v13;
  v98 = v31;
  v87 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v38 = *(v6 + *(result + 28));
  v39 = *(v6 + *(result + 32));
  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v35 < v41)
  {
    *a4 = xmmword_26C14B8C0;
    *(a4 + 16) = 2;
    v90 = xmmword_26C14B8C0;
    v91 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return a3;
  }

  v71 = v29;
  sub_26C0BBAA4(a2, a3);
  sub_26C0DB980(v39, a2, a3, &v90);
  v42 = v90;
  sub_26C0BBAA4(a2, a3);
  sub_26C0DDE1C(v39, a2, a3, &v90);
  a3 = *(&v90 + 1);
  v43 = v90;
  sub_26C0BBAA4(v90, *(&v90 + 1));
  v44 = v33;
  v45 = v89;
  sub_26C148ABC();
  if (v45)
  {

    v89 = xmmword_26C14A900;
    v90 = xmmword_26C14A900;
    v91 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v43, a3);
    sub_26C0BB9B0(v42, *(&v42 + 1));
    *a4 = v89;
    *(a4 + 16) = 2;
    return a3;
  }

  v69 = a3;
  *&v89 = v42 >> 64;
  v70 = v42;
  v46 = v88;
  sub_26C148ADC();
  (*(v84 + 16))(v23, v46, v85);
  sub_26C0DDAAC();
  sub_26C14899C();
  *&v90 = v70;
  *(&v90 + 1) = v89;
  sub_26C0BBAA4(v70, v89);
  sub_26C0BE710();
  sub_26C148F0C();
  sub_26C148EEC();
  v68 = v44;
  v47 = sub_26C148CBC();
  v96 = xmmword_26C14A1B0;
  v97 = 0;
  MEMORY[0x28223BE20](v47);
  *(&v64 - 2) = &v96;
  v48 = sub_26C148B8C();
  MEMORY[0x28223BE20](v48);
  *(&v64 - 2) = &v96;
  sub_26C14898C();
  v67 = 0;
  result = v97;
  v49 = *(&v96 + 1) >> 62;
  if ((*(&v96 + 1) >> 62) > 1)
  {
    v52 = 0;
    v50 = v71;
    v51 = MEMORY[0x277CC9318];
    if (v49 == 2)
    {
      v52 = *(v96 + 24);
    }
  }

  else
  {
    v50 = v71;
    v51 = MEMORY[0x277CC9318];
    if (v49)
    {
      v52 = v96 >> 32;
    }

    else
    {
      v52 = BYTE14(v96);
    }
  }

  if (v52 >= v97)
  {
    v66 = sub_26C14889C();
    v65 = v53;
    v54 = sub_26C148CAC();
    v56 = v55;
    sub_26C148AEC();
    v57 = sub_26C148AAC();
    v59 = v58;
    v60 = *(v98 + 8);
    v98 += 8;
    v71 = v60;
    v60(v50, v87);
    v94 = v54;
    v95 = v56;
    v92 = v51;
    v93 = MEMORY[0x277CC9300];
    *&v90 = v57;
    *(&v90 + 1) = v59;
    v61 = __swift_project_boxed_opaque_existential_1(&v90, v51);
    v63 = *v61;
    v62 = v61[1];
    sub_26C0BBAA4(v54, v56);
    sub_26C0BBAA4(v57, v59);
    sub_26C135114(v63, v62);
    sub_26C0BB9B0(v57, v59);
    sub_26C0BB9B0(v54, v56);
    __swift_destroy_boxed_opaque_existential_1(&v90);
    a3 = v94;
    *&v90 = v66;
    *(&v90 + 1) = v65;
    sub_26C148BAC();
    sub_26C0BB9B0(v70, v89);
    sub_26C0BB9B0(v43, v69);
    (*(v75 + 8))(v77, v76);
    (*(v72 + 8))(v80, v73);
    (*(v81 + 8))(v86, v82);
    (*(v84 + 8))(v88, v85);
    sub_26C0BB9B0(v96, *(&v96 + 1));
    (*(v79 + 8))(v83, v78);
    v71(v68, v87);
    return a3;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C0DCAFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v5 = v4;
  v9 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P384EphemeralKey(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Curve25519EphemeralKey(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v5, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_26C0DD9E4(v24, v12, type metadata accessor for X25519MLKEM768EphemeralKey);
      v32 = v39;
      sub_26C0DD254(a1, a2, &v37, a4);
      if (!v32)
      {
        return sub_26C0DDA4C(v12, type metadata accessor for X25519MLKEM768EphemeralKey);
      }

      result = sub_26C0DDA4C(v12, type metadata accessor for X25519MLKEM768EphemeralKey);
LABEL_9:
      v33 = v38;
      v34 = v36;
      *v36 = v37;
      *(v34 + 16) = v33;
      return result;
    }

    v26 = type metadata accessor for P384EphemeralKey;
    sub_26C0DD9E4(v24, v16, type metadata accessor for P384EphemeralKey);
    v27 = v39;
    sub_26C0DCF58(a1, a2, &v37, MEMORY[0x277CC54F8], MEMORY[0x277CC54F0], MEMORY[0x277CC5500], a4);
    v28 = v27;
    v29 = v16;
  }

  else
  {
    v26 = type metadata accessor for Curve25519EphemeralKey;
    sub_26C0DD9E4(v24, v20, type metadata accessor for Curve25519EphemeralKey);
    v30 = v39;
    sub_26C0DCF58(a1, a2, &v37, MEMORY[0x277CC5208], MEMORY[0x277CC51F8], MEMORY[0x277CC5210], a4);
    v28 = v30;
    v29 = v20;
  }

  result = sub_26C0DDA4C(v29, v26);
  if (v28)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_26C0DCE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0DCF58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v29 = a6;
  *&v30 = a5;
  v26[1] = a7;
  v12 = sub_26C148B7C();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  v19 = a4(0);
  v27 = *(v19 - 8);
  v20 = *(v27 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v26 - v21;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  sub_26C0BBAA4(a1, a2);
  (v30)(&v31, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);
  if (v7)
  {

    v30 = xmmword_26C14A900;
    v31 = xmmword_26C14A900;
    v32 = 2;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a3 = v30;
    *(a3 + 16) = 2;
  }

  else
  {
    v24 = v28;
    *&v30 = v19;
    (v29)(v22);
    v25 = (v27 + 8);
    (*(v24 + 16))(v16, v18, v12);
    sub_26C0DDAAC();
    sub_26C148BAC();
    (*(v24 + 8))(v18, v12);
    return (*v25)(v22, v30);
  }

  return result;
}

uint64_t sub_26C0DD254@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v62 = a4;
  v8 = sub_26C148BDC();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  *&v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C1489AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C148B7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v67 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  *&v74 = &v59 - v20;
  v21 = sub_26C148ACC();
  v22 = *(*(v21 - 8) + 64);
  result = MEMORY[0x28223BE20](v21);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2 >> 62;
  v70 = v15;
  v68 = v16;
  if ((a2 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_10;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = HIDWORD(a1) - a1;
LABEL_10:
  v65 = v11;
  v66 = v12;
  v72 = v24;
  v73 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v31 = *(v4 + *(result + 28));
  v32 = *(v4 + *(result + 36));
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v28 < v34)
  {
    v35 = v79;
    *v79 = xmmword_26C14B8C0;
    *(v35 + 16) = 2;
    v77 = xmmword_26C14B8C0;
    LOBYTE(v78) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v36 = result;
  sub_26C0BBAA4(a1, a2);
  sub_26C0DB980(v32, a1, a2, &v77);
  v37 = v77;
  sub_26C0BBAA4(a1, a2);
  sub_26C0DDE1C(v32, a1, a2, &v77);
  v38 = v77;
  sub_26C0BBAA4(v77, *(&v77 + 1));
  v39 = v26;
  sub_26C148ABC();
  if (v5)
  {

    v74 = xmmword_26C14A900;
    v77 = xmmword_26C14A900;
    LOBYTE(v78) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v38, *(&v38 + 1));
    result = sub_26C0BB9B0(v37, *(&v37 + 1));
    v40 = v79;
    *v79 = v74;
    *(v40 + 16) = 2;
    return result;
  }

  v60 = v37 >> 64;
  v61 = v37;
  v41 = v74;
  sub_26C148ADC();
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = v70;
  v59 = 0;
  v43(v67, v41, v70);
  sub_26C0DDAAC();
  sub_26C14899C();
  v45 = *(v36 + 20);
  v46 = v61;
  v47 = v60;
  *&v77 = v61;
  *(&v77 + 1) = v60;
  sub_26C0BE710();
  v48 = v59;
  v49 = sub_26C148EBC();
  if (v48)
  {

    v69 = xmmword_26C14A900;
    v77 = xmmword_26C14A900;
    LOBYTE(v78) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v46, v47);
    sub_26C0BB9B0(v38, *(&v38 + 1));
    (*(v66 + 8))(v71, v65);
    (*(v42 + 8))(v74, v44);
    v50 = v79;
    *v79 = v69;
    *(v50 + 16) = 2;
    return (*(v72 + 8))(v39, v73);
  }

  v77 = xmmword_26C14A1B0;
  v78 = 0;
  MEMORY[0x28223BE20](v49);
  *(&v59 - 2) = &v77;
  v51 = sub_26C148B8C();
  MEMORY[0x28223BE20](v51);
  *(&v59 - 2) = &v77;
  sub_26C14898C();
  result = v78;
  v52 = *(&v77 + 1) >> 62;
  v53 = v66;
  if ((*(&v77 + 1) >> 62) > 1)
  {
    v55 = 0;
    v54 = v61;
    if (v52 == 2)
    {
      v55 = *(v77 + 24);
    }
  }

  else
  {
    v54 = v61;
    if (v52)
    {
      v55 = v77 >> 32;
    }

    else
    {
      v55 = BYTE14(v77);
    }
  }

  if (v55 >= v78)
  {
    v56 = sub_26C14889C();
    v58 = v57;
    v75 = v56;
    v76 = v57;
    sub_26C0BBAA4(v56, v57);
    sub_26C148BAC();
    sub_26C0BB9B0(v54, v60);
    sub_26C0BB9B0(v56, v58);
    sub_26C0BB9B0(v38, *(&v38 + 1));
    (*(v63 + 8))(v69, v64);
    (*(v53 + 8))(v71, v65);
    (*(v42 + 8))(v74, v70);
    sub_26C0BB9B0(v77, *(&v77 + 1));
    return (*(v72 + 8))(v39, v73);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C0DD9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0DDA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26C0DDAAC()
{
  result = qword_28047AAD0;
  if (!qword_28047AAD0)
  {
    sub_26C148B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAD0);
  }

  return result;
}

double sub_26C0DDB04@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26C148ACC();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26C148F1C();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148EDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  *(a1 + v15[7]) = 32;
  *(a1 + v15[8]) = 1184;
  *(a1 + v15[9]) = 1088;
  sub_26C148AFC();
  sub_26C148ECC();
  (*(v11 + 32))(a1 + v15[5], v14, v10);
  sub_26C148EAC();
  v16 = sub_26C148EFC();
  v18 = v17;
  (*(v6 + 8))(v9, v26);
  sub_26C148AEC();
  v19 = sub_26C148AAC();
  v21 = v20;
  (*(v27 + 8))(v5, v28);
  *&v30[0] = v16;
  *&v30[1] = v18;
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = v19;
  v29[1] = v21;
  v22 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
  v23 = *v22;
  v24 = v22[1];
  sub_26C0BBAA4(v16, v18);
  sub_26C0BBAA4(v19, v21);
  sub_26C135114(v23, v24);
  sub_26C0BB9B0(v19, v21);
  sub_26C0BB9B0(v16, v18);
  __swift_destroy_boxed_opaque_existential_1(v29);
  result = v30[0];
  *(a1 + v15[6]) = *v30;
  return result;
}

uint64_t sub_26C0DDE1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_26C0DE118(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_26C0DE1CC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_26C14889C();
    v17 = v16;
    result = sub_26C0BB9B0(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_26C0DDF88(uint64_t a1, uint64_t a2)
{
  v6[3] = MEMORY[0x277D838B0];
  v6[4] = MEMORY[0x277CC9C18];
  v6[0] = a1;
  v6[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v6, MEMORY[0x277D838B0]);
  v4 = *v2;
  v3 = v2[1];
  sub_26C14888C();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_26C0DDFF0@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  switch(v3)
  {
    case 4588:
      sub_26C0DDB04(a2);
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 29:
      sub_26C148AFC();
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 24:
      sub_26C148E6C();
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v5 = *(*(v4 - 8) + 56);
      v6 = a2;
      v7 = 0;
      v8 = v4;
      goto LABEL_9;
  }

  v9 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v5 = *(*(v9 - 8) + 56);
  v8 = v9;
  v6 = a2;
  v7 = 1;
LABEL_9:

  return v5(v6, v7, 1, v8);
}

uint64_t sub_26C0DE118(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0DE1CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26C0DE248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = v2[2];
  v5 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *v2;
  v8 = v2[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (*(v7 + 24) >= v5)
      {
        goto LABEL_7;
      }
    }

    else if (v5 <= 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = 0;
    v13 = 0;
    v11 = 0xF000000000000000;
LABEL_17:
    *a2 = result;
    a2[1] = v11;
    a2[2] = v13;
    return result;
  }

  if (v9)
  {
    v10 = v7 >> 32;
  }

  else
  {
    v10 = BYTE6(v8);
  }

  if (v10 < v5)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v5 >= result)
  {
    result = sub_26C14889C();
    v2[2] = v5;
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(result + 16);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0DE32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  a3(&v22, a1, v20);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v20[0];
    v13 = v20[1];
    v14 = v21;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    v22 = v12;
    v23 = v13;
    LOBYTE(v24) = v14;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  else
  {
    v16 = v23;
    if (v23 >> 60 == 15)
    {
      v17 = v24;
      v18 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v18, v16);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      *a4 = v18;
      a4[1] = v16;
      a4[2] = v17;
    }

    else
    {
      result = sub_26C0BB9B0(v10, v9);
      v19 = v24;
      *a4 = v22;
      a4[1] = v16;
      a4[2] = v19;
    }
  }

  return result;
}

uint64_t sub_26C0DE490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  a3(&v22, a1, v20);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v20[0];
    v13 = v20[1];
    v14 = v21;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    v22 = v12;
    v23 = v13;
    LOBYTE(v24) = v14;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  else
  {
    v16 = v23;
    if (v23 >> 60 == 15)
    {
      v17 = v24;
      v18 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v18, v16);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      *a4 = v18;
      a4[1] = v16;
      a4[2] = v17;
    }

    else
    {
      result = sub_26C0BB9B0(v10, v9);
      v19 = v24;
      *a4 = v22;
      a4[1] = v16;
      a4[2] = v19;
    }
  }

  return result;
}

uint64_t sub_26C0DE5F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  sub_26C0BBAA4(*a1, v7);
  sub_26C0DFED4(v20, &v22);
  if (v3)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v10 = v20[0];
    v11 = v20[1];
    v12 = v21;
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    *&v22 = v10;
    *(&v22 + 1) = v11;
    LOBYTE(v23) = v12;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  else
  {
    v26 = 0;
    v14 = v25;
    if (v25)
    {
      result = sub_26C0BB9B0(v8, v7);
      v15 = v23;
      *a3 = v22;
      *(a3 + 16) = v15;
      *(a3 + 32) = v24;
      *(a3 + 48) = v14;
    }

    else
    {
      v18 = *(&v24 + 1);
      v19 = v24;
      v16 = v23;
      v17 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0E091C(v17, *(&v17 + 1), v16, *(&v16 + 1), v19, v18, 0);
      *a1 = v8;
      a1[1] = v7;
      a1[2] = v9;
      *a3 = v17;
      *(a3 + 16) = v16;
      *(a3 + 32) = v19;
      *(a3 + 40) = v18;
      *(a3 + 48) = 0;
    }
  }

  return result;
}

uint64_t ByteBuffer.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v4 = result;
    if (!v3)
    {
      v4 = 0;
    }

    goto LABEL_4;
  }

  v4 = 0;
  if (v3 != 2)
  {
LABEL_4:
    a3[2] = v4;
    return result;
  }

  a3[2] = *(result + 16);
  return result;
}

uint64_t ByteBuffer.readableBytesView.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 >= result)
  {
    return sub_26C14889C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0DE7D4(uint64_t result)
{
  v1 = result;
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = 0;
      v7 = BYTE6(v2);
      goto LABEL_9;
    }

    v6 = v3;
    v7 = v3 >> 32;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
LABEL_7:
    result = sub_26C0BBAA4(*result, v2);
    goto LABEL_9;
  }

  v7 = 0;
  v6 = 0;
LABEL_9:
  if (v7 < v4 || v7 < v6)
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = sub_26C14889C();
  v11 = v10;
  sub_26C1488CC();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_26C0BB9B0(v9, v11);
      sub_26C0BB9B0(v3, v2);
      result = 0;
      goto LABEL_23;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_26C0BB9B0(v9, v12);
    sub_26C0BB9B0(v3, v2);
    result = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    sub_26C0BB9B0(v9, v12);
    result = sub_26C0BB9B0(v3, v2);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      result = HIDWORD(v9) - v9;
      goto LABEL_23;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  sub_26C0BB9B0(v9, v11);
  sub_26C0BB9B0(v3, v2);
  result = BYTE6(v11);
LABEL_23:
  v16 = *v1;
  v17 = v1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  v1[2] = v20;
  return result;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_26C14888C();
  return *(a1._rawValue + 2);
}

uint64_t sub_26C0DE9B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  sub_26C0E0CCC(a1, a2, &v34, &v36);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v34;
    v13 = v35;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *a3 = v12;
    *(a3 + 16) = v13;
    v25 = v12;
    LOBYTE(v26) = v13;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v25 = v36;
    v26 = v37;
    if (sub_26C0CF284(&v25) == 1)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v23[6] = v42;
      v23[7] = v43;
      v24 = v44;
      v23[2] = v38;
      v23[3] = v39;
      v23[4] = v40;
      v23[5] = v41;
      v23[0] = v36;
      v23[1] = v37;
      result = sub_26C0E08B4(v23);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      v15 = v43;
      *(a4 + 96) = v42;
      *(a4 + 112) = v15;
      *(a4 + 128) = v44;
      v16 = v39;
      *(a4 + 32) = v38;
      *(a4 + 48) = v16;
      v17 = v41;
      *(a4 + 64) = v40;
      *(a4 + 80) = v17;
      v18 = v37;
      *a4 = v36;
      *(a4 + 16) = v18;
    }

    else
    {
      sub_26C0BB9B0(v10, v9);
      v19 = v43;
      *(a4 + 96) = v42;
      *(a4 + 112) = v19;
      *(a4 + 128) = v44;
      v20 = v39;
      *(a4 + 32) = v38;
      *(a4 + 48) = v20;
      v21 = v41;
      *(a4 + 64) = v40;
      *(a4 + 80) = v21;
      v22 = v37;
      *a4 = v36;
      *(a4 + 16) = v22;
      return nullsub_1(a4);
    }
  }

  return result;
}

uint64_t *sub_26C0DEB70(uint64_t *result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v4 + 24);
    }
  }

  else
  {
    v7 = BYTE6(v5);
    if (v6)
    {
      v7 = v4 >> 32;
    }
  }

  if (v7 < a2)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6 > 1)
  {
    v8 = 0;
    if (v6 == 2)
    {
      v8 = *(v4 + 16);
    }
  }

  else if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > a2)
  {
    goto LABEL_60;
  }

  v9 = *result;
  v10 = result[1];
  result = result[2];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = v9 >> 32;
    }

    else
    {
      v12 = BYTE6(v10);
    }

    if (v11)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < result || v12 < v13)
  {
    goto LABEL_61;
  }

  result = sub_26C14889C();
  v15 = result;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v14);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v20 = result[2];
  v19 = result[3];
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_34:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_37:
  v22 = *v2;
  v23 = v2[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v25 = BYTE6(v23);
    v26 = v22 >> 32;
    if (!v24)
    {
      v26 = v25;
    }

    goto LABEL_43;
  }

  if (v24 == 2)
  {
    v26 = *(v22 + 24);
LABEL_43:
    v27 = v26 - a2;
    if (v27 < v18)
    {
      v18 = v27;
    }

    goto LABEL_48;
  }

  if (v18 >= -a2)
  {
    v18 = -a2;
  }

LABEL_48:
  if (v18 + a2 < a2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_26C0E04A4(result, v14);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_26C0BB9B0(v15, v16);
      return BYTE6(v16);
    }

LABEL_56:
    result = sub_26C0BB9B0(v15, v16);
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      return (HIDWORD(v15) - v15);
    }

    goto LABEL_64;
  }

  if (v17 != 2)
  {
    sub_26C0BB9B0(v15, v16);
    return 0;
  }

  v29 = *(v15 + 16);
  v28 = *(v15 + 24);
  sub_26C0BB9B0(v15, v16);
  result = (v28 - v29);
  if (__OFSUB__(v28, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

uint64_t sub_26C0DEDBC(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          v9 = sub_26C14889C();
          result = sub_26C148778(v9, v10);
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C0DEE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    goto LABEL_17;
  }

  v8 = result;
  result = a1[2];
  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      if (*(v10 + 24) >= v9)
      {
        goto LABEL_8;
      }
    }

    else if (v9 < 1)
    {
      goto LABEL_8;
    }

LABEL_17:
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
    return result;
  }

  if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  if (v13 < v9)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v9 < result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = sub_26C14889C();
  a1[2] = v9;
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 == 2)
    {
      v17 = *(v14 + 16);
    }
  }

  else
  {
    v17 = v14;
    if (!v16)
    {
      v17 = 0;
    }
  }

  v31 = v14;
  v32 = v15;
  v33 = v17;
  sub_26C13FB64(&v31, &v27, &v29);
  if (v3)
  {
    v18 = v28;
    *a2 = v27;
    *(a2 + 16) = v18;
    v19 = v31;
    v20 = v32;
    return sub_26C0BB9B0(v19, v20);
  }

  result = v31;
  v21 = v32;
  v22 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v31 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v31 >> 32;
  }

  else
  {
    v23 = BYTE6(v32);
  }

  if (!__OFSUB__(v23, v33))
  {
    if (v23 == v33)
    {
      result = sub_26C0BB9B0(v31, v32);
      v24 = v30;
      *a3 = v29;
      *(a3 + 16) = v24;
      return result;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v27 = xmmword_26C149860;
    v28 = 2;
    v25 = result;
    v26 = v21;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v29, *(&v29 + 1));
    v20 = v26;
    v19 = v25;
    return sub_26C0BB9B0(v19, v20);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26C0DF050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    goto LABEL_16;
  }

  v7 = result;
  result = a1[2];
  v8 = result + v7;
  if (__OFADD__(result, v7))
  {
    __break(1u);
    goto LABEL_40;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      if (*(v9 + 24) >= v8)
      {
        goto LABEL_8;
      }
    }

    else if (v8 < 1)
    {
      goto LABEL_8;
    }

LABEL_16:
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
    return result;
  }

  if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v10);
  }

  if (v12 < v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v8 < result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = sub_26C14889C();
  a1[2] = v8;
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v13 + 16);
      v27 = v13;
      v28 = v14;
      v29 = v16;
LABEL_25:
      v17 = *(v13 + 24);
      goto LABEL_26;
    }
  }

  else if (v15)
  {
    v16 = v13;
    v27 = v13;
    v28 = v14;
    v29 = v13;
LABEL_22:
    v17 = v13 >> 32;
    goto LABEL_26;
  }

  v16 = 0;
  v27 = v13;
  v28 = v14;
  v29 = 0;
  if (v15 <= 1)
  {
    if (!v15)
    {
      v16 = 0;
      v17 = BYTE6(v14);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = 0;
  if (v15 != 3)
  {
    v16 = 0;
    goto LABEL_25;
  }

LABEL_26:
  result = v17 - v16;
  if (__OFSUB__(v17, v16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = sub_26C0DE248(result, &v25);
  v18 = *(&v25 + 1);
  if (*(&v25 + 1) >> 60 == 15)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v19 = v27;
  v20 = v28;
  v21 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v27 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v27 >> 32;
  }

  else
  {
    v22 = BYTE6(v28);
  }

  if (__OFSUB__(v22, v29))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v25;
  v24 = v26;
  if (v22 == v29)
  {
    result = sub_26C0BB9B0(v27, v28);
    *a3 = v23;
    *(a3 + 8) = v18;
    *(a3 + 16) = v24;
  }

  else
  {
    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v25 = xmmword_26C149860;
    LOBYTE(v26) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v23, v18);
    return sub_26C0BB9B0(v19, v20);
  }

  return result;
}

uint64_t sub_26C0DF344@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_26C1368E8();
  if ((result & 0x100) != 0 || (result = sub_26C0DE248(result, &v13), *(&v13 + 1) >> 60 == 15))
  {
    *a2 = xmmword_26C14A540;
    *(a2 + 16) = 0;
    return result;
  }

  v15 = v13;
  v16 = v14;
  v5 = *(&v13 + 1) >> 62;
  if ((*(&v13 + 1) >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v13 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE14(v13);
    if (v5)
    {
      v6 = v13 >> 32;
    }
  }

  result = v6 - v14;
  if (__OFSUB__(v6, v14))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = sub_26C0DE248(result, &v13);
  v7 = *(&v13 + 1);
  if (*(&v13 + 1) >> 60 == 15)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v8 = v15;
  v9 = *(&v15 + 1) >> 62;
  if ((*(&v15 + 1) >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(v15 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = v15 >> 32;
  }

  else
  {
    v10 = BYTE14(v15);
  }

  if (__OFSUB__(v10, v16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v13;
  v12 = v14;
  if (v10 == v16)
  {
    result = sub_26C0BB9B0(v15, *(&v15 + 1));
    *a2 = v11;
    *(a2 + 8) = v7;
    *(a2 + 16) = v12;
  }

  else
  {
    *a1 = xmmword_26C149860;
    *(a1 + 16) = 2;
    v13 = xmmword_26C149860;
    LOBYTE(v14) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v11, v7);
    return sub_26C0BB9B0(v8, *(&v8 + 1));
  }

  return result;
}

uint64_t sub_26C0DF4FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_26C1368E8();
  if ((result & 0x100) != 0 || (result = sub_26C0DE248(result, &v9), *(&v9 + 1) >> 60 == 15))
  {
    *a2 = xmmword_26C14A540;
    *(a2 + 16) = 0;
  }

  else
  {
    v11 = v9;
    v12 = v10;
    result = sub_26C12396C(&v11, &v9);
    v5 = v11;
    v6 = *(&v11 + 1) >> 62;
    if ((*(&v11 + 1) >> 62) > 1)
    {
      if (v6 == 2)
      {
        v7 = *(v11 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v6)
    {
      v7 = v11 >> 32;
    }

    else
    {
      v7 = BYTE14(v11);
    }

    if (__OFSUB__(v7, v12))
    {
      __break(1u);
    }

    else if (v7 == v12)
    {
      result = sub_26C0BB9B0(v11, *(&v11 + 1));
      v8 = v10;
      *a2 = v9;
      *(a2 + 16) = v8;
    }

    else
    {
      *a1 = xmmword_26C149860;
      *(a1 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v9, *(&v9 + 1));
      return sub_26C0BB9B0(v5, *(&v5 + 1));
    }
  }

  return result;
}

uint64_t sub_26C0DF650(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C1368E8();
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v3, &v9);
  if (*(&v9 + 1) >> 60 == 15)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  result = sub_26C1212AC(&v11);
  v5 = v11;
  v6 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v11 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v11 >> 32;
  }

  else
  {
    v7 = BYTE14(v11);
  }

  if (__OFSUB__(v7, v12))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (v7 == v12)
    {
      sub_26C0BB9B0(v11, *(&v11 + 1));
      return v8;
    }

    else
    {
      *a2 = xmmword_26C149860;
      *(a2 + 16) = 2;
      v9 = xmmword_26C149860;
      LOBYTE(v10) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      return sub_26C0BB9B0(v5, *(&v5 + 1));
    }
  }

  return result;
}

char *sub_26C0DF788(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_26C1365D4();
  if ((v3 & 0x10000) != 0 || (sub_26C0DE248(v3, &v21), v4 = *(&v21 + 1), *(&v21 + 1) >> 60 == 15))
  {
    v5 = 0;
    goto LABEL_4;
  }

  v8 = *(&v21 + 1) >> 62;
  v9 = v21;
  v10 = v22;
  if ((*(&v21 + 1) >> 62) > 1)
  {
    if (v8 == 2)
    {
      v11 = *(v21 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v8)
  {
    v11 = v21 >> 32;
  }

  else
  {
    v11 = BYTE14(v21);
  }

  v12 = __OFSUB__(v11, v22);
  v13 = v11 - v22;
  if (v12)
  {
    goto LABEL_41;
  }

  v20 = v21 >> 32;
  v14 = sub_26C0CDEFC(0, (v13 / 2) & ~((v13 + (v13 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v15 = v10 + 2;
  if (__OFADD__(v10, 2))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v14;
  while (v8 > 1)
  {
    if (v8 == 2)
    {
      if (*(v9 + 24) < v15)
      {
        goto LABEL_30;
      }
    }

    else if (v15 >= 1)
    {
      v19 = 0;
      goto LABEL_34;
    }

LABEL_24:
    *&v21 = v9;
    *(&v21 + 1) = v4;
    if (v15 < v10)
    {
      goto LABEL_40;
    }

    sub_26C0BBAA4(v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v21, *(&v21 + 1));
    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_26C0CDEFC((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 2) = v18 + 1;
    *&v5[2 * v18 + 32] = bswap32(0) >> 16;
    v10 = v15;
    v12 = __OFADD__(v15, 2);
    v15 += 2;
    if (v12)
    {
      goto LABEL_39;
    }
  }

  v16 = BYTE6(v4);
  if (v8)
  {
    v16 = v20;
  }

  if (v16 >= v15)
  {
    goto LABEL_24;
  }

LABEL_30:
  v19 = BYTE6(v4);
  if (v8)
  {
    v19 = v20;
    if (v8 == 2)
    {
      v19 = *(v9 + 24);
    }
  }

LABEL_34:
  if (__OFSUB__(v19, v10))
  {
LABEL_42:
    __break(1u);
  }

  if (v19 != v10)
  {
    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v21 = xmmword_26C149860;
    LOBYTE(v22) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  sub_26C0BB9B0(v9, v4);
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26C0DFAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *))
{
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v6, &v18);
  if (*(&v18 + 1) >> 60 == 15)
  {
    return 0;
  }

  v20 = v18;
  v21 = v19;
  v8 = a3(&v20, &v18);
  if (v3)
  {
    v9 = v19;
    *a2 = v18;
    *(a2 + 16) = v9;
    v11 = *(&v20 + 1);
    v10 = v20;
    return sub_26C0BB9B0(v10, v11);
  }

  v12 = v8;
  v13 = *(&v20 + 1);
  result = v20;
  v14 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v20 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE14(v20);
  }

  if (!__OFSUB__(v15, v21))
  {
    if (v15 == v21)
    {
      sub_26C0BB9B0(v20, *(&v20 + 1));
      return v12;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v18 = xmmword_26C149860;
    LOBYTE(v19) = 2;
    v16 = result;
    v17 = v13;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v11 = v17;
    v10 = v16;
    return sub_26C0BB9B0(v10, v11);
  }

  __break(1u);
  return result;
}

char *sub_26C0DFC24(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = sub_26C1368E8();
  if ((v3 & 0x100) != 0 || (sub_26C0DE248(v3, &v20), v4 = *(&v20 + 1), *(&v20 + 1) >> 60 == 15))
  {
    v5 = 0;
    goto LABEL_4;
  }

  v17 = a2;
  v8 = v20;
  v9 = v21;
  v10 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(&v20 + 1) >> 62;
  v18 = v20 >> 32;
  v5 = MEMORY[0x277D84F90];
  v19 = BYTE14(v20);
  while (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v8 + 24);
      goto LABEL_12;
    }

    if (v10 >= 1)
    {
      v16 = 0;
      goto LABEL_27;
    }

LABEL_15:
    *&v20 = v8;
    *(&v20 + 1) = v4;
    if (v10 < v9)
    {
      goto LABEL_33;
    }

    sub_26C0BBAA4(v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v20, *(&v20 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26C0CE5B8(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_26C0CE5B8((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v5[v14 + 32] = 0;
    v9 = v10;
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_32;
    }
  }

  v12 = v19;
  if (v11)
  {
    v12 = v18;
  }

LABEL_12:
  if (v12 >= v10)
  {
    goto LABEL_15;
  }

  v16 = v19;
  if (v11)
  {
    v16 = v18;
    if (v11 == 2)
    {
      v16 = *(v8 + 24);
    }
  }

LABEL_27:
  if (__OFSUB__(v16, v9))
  {
LABEL_34:
    __break(1u);
  }

  if (v16 != v9)
  {
    *v17 = xmmword_26C149860;
    *(v17 + 16) = 2;
    v20 = xmmword_26C149860;
    LOBYTE(v21) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  sub_26C0BB9B0(v8, v4);
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26C0DFED4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0 || (result = sub_26C0DE248(result, &v20), *(&v20 + 1) >> 60 == 15))
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v24 = v20;
  v25 = v21;
  sub_26C13099C(&v24, &v18, &v20);
  if (v2)
  {
    v6 = v19;
    *a1 = v18;
    *(a1 + 16) = v6;
    v8 = *(&v24 + 1);
    v7 = v24;
    return sub_26C0BB9B0(v7, v8);
  }

  v9 = *(&v24 + 1);
  result = v24;
  v10 = *(&v24 + 1) >> 62;
  if ((*(&v24 + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v24 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v24 >> 32;
  }

  else
  {
    v11 = BYTE14(v24);
  }

  if (!__OFSUB__(v11, v25))
  {
    if (v11 == v25)
    {
      result = sub_26C0BB9B0(v24, *(&v24 + 1));
      v12 = v23;
      v13 = v21;
      *a2 = v20;
      *(a2 + 16) = v13;
      *(a2 + 32) = v22;
      *(a2 + 48) = v12;
      return result;
    }

    *a1 = xmmword_26C149860;
    *(a1 + 16) = 2;
    v18 = xmmword_26C149860;
    v19 = 2;
    v14 = result;
    v15 = v9;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v16 = *(&v21 + 1);
    v17 = v22;
    sub_26C0BB9B0(v20, *(&v20 + 1));
    sub_26C0BB9B0(v16, v17);

    v8 = v15;
    v7 = v14;
    return sub_26C0BB9B0(v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0E0078(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C1368E8();
  if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v6 | (v5 << 16), &v18);
  if (*(&v18 + 1) >> 60 == 15)
  {
    return 0;
  }

  v20 = v18;
  v21 = v19;
  v8 = sub_26C0C046C(&v20, &v18);
  if (v2)
  {
    v9 = v19;
    *a2 = v18;
    *(a2 + 16) = v9;
    v11 = *(&v20 + 1);
    v10 = v20;
    return sub_26C0BB9B0(v10, v11);
  }

  v12 = v8;
  v13 = *(&v20 + 1);
  result = v20;
  v14 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v20 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE14(v20);
  }

  if (!__OFSUB__(v15, v21))
  {
    if (v15 == v21)
    {
      sub_26C0BB9B0(v20, *(&v20 + 1));
      return v12;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v18 = xmmword_26C149860;
    LOBYTE(v19) = 2;
    v16 = result;
    v17 = v13;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v11 = v17;
    v10 = v16;
    return sub_26C0BB9B0(v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_26C14889C();
    v8 = v7;
    sub_26C1488BC();

    return sub_26C0BB9B0(v6, v8);
  }

  return result;
}

uint64_t ByteBuffer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0E0344()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_26C14889C();
    v8 = v7;
    sub_26C1488BC();

    return sub_26C0BB9B0(v6, v8);
  }

  return result;
}

uint64_t sub_26C0E03E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0E04A4(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_26C1487BC();
    if (a1)
    {
      a1 = sub_26C1487EC();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_26C1487DC();
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_26C1487BC() || !__OFSUB__(v5, sub_26C1487EC()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  result = sub_26C14887C();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    result = sub_26C14889C();
    v10 = result;
    v12 = v11;
    v13 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v7 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v7 >> 32;
    }

    else
    {
      v14 = BYTE6(v8);
    }

    if (v14 >= v9)
    {
      v15 = sub_26C14889C();
      v17 = v16;
      v18 = sub_26C0E6464(v10, v12, v15, v16);
      sub_26C0BB9B0(v10, v12);
      sub_26C0BB9B0(v15, v17);
      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C0E0798()
{
  result = qword_28047AAD8;
  if (!qword_28047AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAD8);
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

uint64_t sub_26C0E0800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0E0854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0E08B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A940, &qword_26C14A7E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0E091C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_26C0BB9B0(result, a2);
    sub_26C0BB9B0(a4, a5);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C0E09D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0E0A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26C0E0AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 129))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 128);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C0E0AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t *sub_26C0E0B74(uint64_t *result)
{
  if (v1[1] >> 60 == 15)
  {
    v2 = *result;
    v3 = result[1];
    v4 = result[2];
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v5)
      {
        v7 = v6;
      }
    }

    v8 = __OFSUB__(v7, v4);
    v9 = v7 - v4;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v1;
      sub_26C0DE248(v9, &v14);
      v13 = v14;
      v11 = v15;
      v12 = v10[2];
      result = sub_26C0BB344(*v10, v10[1]);
      *v10 = v13;
      v10[2] = v11;
    }
  }

  else
  {

    return sub_26C0DE7D4(result);
  }

  return result;
}

uint64_t sub_26C0E0C4C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AAE0);
  __swift_project_value_buffer(v0, qword_28047AAE0);
  return sub_26C148A8C();
}

void sub_26C0E0CCC(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v6 = a1;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v116 = v9;
  v117 = v8;
  v101 = v10;
  v118 = v10;
  sub_26C0BBAA4(v9, v8);
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v12) = v11;
  v13 = sub_26C1368E8();
  if ((v13 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = sub_26C1365D4();
  if ((v15 & 0x10000) != 0)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    if (v12 == 1)
    {
      *(a2 + 24) = 1;
    }

    v16 = v122;
    *v122 = xmmword_26C14A8F0;
    *(v16 + 16) = 2;
    *v115 = xmmword_26C14A8F0;
    v115[16] = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v17 = v9;
    v18 = v8;
    goto LABEL_8;
  }

  sub_26C0DE248(v15, &v109);
  if (v110 >> 60 == 15)
  {
LABEL_10:
    sub_26C0BB9B0(v9, v8);
    sub_26C0CF2F4(v115);
    v19 = *&v115[112];
    *(a4 + 96) = *&v115[96];
    *(a4 + 112) = v19;
    *(a4 + 128) = v115[128];
    v20 = *&v115[48];
    *(a4 + 32) = *&v115[32];
    *(a4 + 48) = v20;
    v21 = *&v115[80];
    *(a4 + 64) = *&v115[64];
    *(a4 + 80) = v21;
    v22 = *&v115[16];
    *a4 = *v115;
    *(a4 + 16) = v22;
    return;
  }

  v23 = v111;
  v112 = v109;
  v113 = v110;
  v114 = v111;
  if (v12 <= 0xAu)
  {
    if (v12 <= 3u)
    {
      if (v12 == 1)
      {
        *(a2 + 24) = 1;
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v50 = sub_26C148A9C();
        __swift_project_value_buffer(v50, qword_28047AAE0);
        v51 = sub_26C148A7C();
        v52 = sub_26C148FFC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_26C0B5000, v51, v52, "clientHello", v53, 2u);
          MEMORY[0x26D69C3A0](v53, -1, -1);
        }

        sub_26C120724(&v112, v115, v119);
        if (!v4)
        {
          v107 = v119[4];
          *v108 = v119[5];
          *&v108[16] = v120;
          *v104 = v119[0];
          *&v104[16] = v119[1];
          v105 = v119[2];
          v106 = v119[3];
          v108[24] = 0;
          goto LABEL_90;
        }

LABEL_53:
        sub_26C0BB9B0(v9, v8);
        sub_26C0BB9B0(v112, v113);
        v54 = v115[16];
        v55 = *v115;
LABEL_72:
        v68 = v122;
        *v122 = v55;
        *(v68 + 16) = v54;
        return;
      }

      if (v12 == 2)
      {
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v24 = sub_26C148A9C();
        __swift_project_value_buffer(v24, qword_28047AAE0);
        v25 = sub_26C148A7C();
        v26 = sub_26C148FFC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_26C0B5000, v25, v26, "serverHello", v27, 2u);
          MEMORY[0x26D69C3A0](v27, -1, -1);
        }

        sub_26C1219BC(&v112, v115, v121);
        if (!v4)
        {
          v105 = v121[2];
          v106 = v121[3];
          v107 = v121[4];
          *v108 = v121[5];
          *v104 = v121[0];
          *&v104[16] = v121[1];
          v28 = 1;
LABEL_84:
          v108[24] = v28;
          goto LABEL_90;
        }

        goto LABEL_53;
      }

LABEL_73:
      v6 = v109;
      v23 = v110;
      if (qword_28047A738 == -1)
      {
LABEL_74:
        v69 = sub_26C148A9C();
        __swift_project_value_buffer(v69, qword_28047AAE0);
        v70 = sub_26C148A7C();
        v71 = sub_26C148FFC();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v115 = v73;
          *v72 = 136315138;
          LOBYTE(v102) = v12;
          v74 = HandshakeType.description.getter();
          v76 = sub_26C0E5DE8(v74, v75, v115);

          *(v72 + 4) = v76;
          _os_log_impl(&dword_26C0B5000, v70, v71, "Unsupported handshake message: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x26D69C3A0](v73, -1, -1);
          MEMORY[0x26D69C3A0](v72, -1, -1);

          v9 = v116;
          v8 = v117;
          v77 = v112;
          v23 = v113;
        }

        else
        {

          v77 = v6;
        }

        v78 = v122;
        *v122 = xmmword_26C14A8F0;
        *(v78 + 16) = 2;
        *v115 = xmmword_26C14A8F0;
        v115[16] = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v9, v8);
        v17 = v77;
        v18 = v23;
        goto LABEL_8;
      }

LABEL_118:
      swift_once();
      goto LABEL_74;
    }

    if (v12 != 4)
    {
      if (v12 == 8)
      {
        v100 = v109;
        v33 = v110;
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v34 = sub_26C148A9C();
        __swift_project_value_buffer(v34, qword_28047AAE0);
        v35 = sub_26C148A7C();
        v36 = sub_26C148FFC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_26C0B5000, v35, v36, "encryptedExtensions", v37, 2u);
          MEMORY[0x26D69C3A0](v37, -1, -1);
        }

        v38 = v33;
        sub_26C0BBAA4(v100, v33);
        v39 = sub_26C0DF318(&v112, v115);
        if (v4)
        {
          sub_26C0BB9B0(v112, v113);
          v40 = v33;
          v42 = *&v115[8];
          v41 = *v115;
          v43 = v115[16];
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BB9B0(v9, v8);
          sub_26C0BB9B0(v100, v40);
        }

        else
        {
          if (v39)
          {
            v79 = v39;
            sub_26C0BB9B0(v100, v38);
            *v104 = v79;
            v28 = 2;
            goto LABEL_84;
          }

          sub_26C0BB9B0(v112, v113);
          *v115 = 0uLL;
          v43 = 2;
          v115[16] = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BB9B0(v9, v8);
          sub_26C0BB9B0(v100, v38);
          v41 = 0;
          v42 = 0;
        }

        v44 = v122;
        *v122 = v41;
        *(v44 + 1) = v42;
        *(v44 + 16) = v43;
        return;
      }

      goto LABEL_73;
    }

    if (qword_28047A738 != -1)
    {
      swift_once();
    }

    v60 = sub_26C148A9C();
    __swift_project_value_buffer(v60, qword_28047AAE0);
    v61 = sub_26C148A7C();
    v62 = sub_26C148FFC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26C0B5000, v61, v62, "newSessionTicket", v63, 2u);
      MEMORY[0x26D69C3A0](v63, -1, -1);
    }

    sub_26C0BBF8C(&v112, &v102, v115);
    if (!v4)
    {
      *v104 = *v115;
      *&v104[16] = *&v115[16];
      v105 = *&v115[32];
      v106 = *&v115[48];
      v28 = 7;
      goto LABEL_84;
    }

LABEL_71:
    sub_26C0BB9B0(v9, v8);
    sub_26C0BB9B0(v112, v113);
    v54 = v103;
    v55 = v102;
    goto LABEL_72;
  }

  if (v12 <= 0xEu)
  {
    if (v12 == 11)
    {
      if (qword_28047A738 != -1)
      {
        swift_once();
      }

      v56 = sub_26C148A9C();
      __swift_project_value_buffer(v56, qword_28047AAE0);
      v57 = sub_26C148A7C();
      v58 = sub_26C148FFC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26C0B5000, v57, v58, "certificate", v59, 2u);
        MEMORY[0x26D69C3A0](v59, -1, -1);
      }

      sub_26C0C02D0(&v112, &v102, v115);
      if (!v4)
      {
        *v104 = *v115;
        *&v104[16] = *&v115[16];
        v28 = 4;
        goto LABEL_84;
      }
    }

    else
    {
      if (v12 != 13)
      {
        goto LABEL_73;
      }

      if (qword_28047A738 != -1)
      {
        swift_once();
      }

      v29 = sub_26C148A9C();
      __swift_project_value_buffer(v29, qword_28047AAE0);
      v30 = sub_26C148A7C();
      v31 = sub_26C148FFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26C0B5000, v30, v31, "certificateRequest", v32, 2u);
        MEMORY[0x26D69C3A0](v32, -1, -1);
      }

      sub_26C123774(&v112, &v102, v115);
      if (!v4)
      {
        *v104 = *v115;
        *&v104[16] = *&v115[16];
        v28 = 3;
        goto LABEL_84;
      }
    }

    goto LABEL_71;
  }

  if (v12 == 15)
  {
    if (qword_28047A738 != -1)
    {
      swift_once();
    }

    v64 = sub_26C148A9C();
    __swift_project_value_buffer(v64, qword_28047AAE0);
    v65 = sub_26C148A7C();
    v66 = sub_26C148FFC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26C0B5000, v65, v66, "certificateVerify", v67, 2u);
      MEMORY[0x26D69C3A0](v67, -1, -1);
    }

    sub_26C0BB8DC(&v112, &v102, v115);
    if (!v4)
    {
      *v104 = *v115;
      *&v104[8] = *&v115[8];
      *&v104[24] = *&v115[24];
      v28 = 5;
      goto LABEL_84;
    }

    goto LABEL_71;
  }

  if (v12 != 20)
  {
    goto LABEL_73;
  }

  v45 = v109;
  v12 = v110;
  if (qword_28047A738 != -1)
  {
    swift_once();
  }

  v46 = sub_26C148A9C();
  __swift_project_value_buffer(v46, qword_28047AAE0);
  v47 = sub_26C148A7C();
  v8 = sub_26C148FFC();
  if (os_log_type_enabled(v47, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C0B5000, v47, v8, "finished", v9, 2u);
    MEMORY[0x26D69C3A0](v9, -1, -1);
  }

  v48 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v48 == 2)
    {
      v49 = *(v45 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v48)
  {
    v49 = v45 >> 32;
  }

  else
  {
    v49 = BYTE6(v12);
  }

  if (__OFSUB__(v49, v23))
  {
    __break(1u);
    goto LABEL_118;
  }

  sub_26C0DE248(v49 - v23, v115);
  if (*&v115[8] >> 60 != 15)
  {
    *v104 = *v115;
    *&v104[16] = *&v115[16];
    v108[24] = 6;
LABEL_90:
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v83 = v113 >> 62;
    if ((v113 >> 62) > 1)
    {
      if (v83 == 2)
      {
        v84 = *(v112 + 24);
      }

      else
      {
        v84 = 0;
      }
    }

    else if (v83)
    {
      v84 = v112 >> 32;
    }

    else
    {
      v84 = BYTE6(v113);
    }

    if (__OFSUB__(v84, v114))
    {
      __break(1u);
    }

    else
    {
      if (v84 != v114)
      {
        if (qword_28047A738 == -1)
        {
          goto LABEL_103;
        }

        goto LABEL_116;
      }

      v85 = *(v6 + 16);
      if (!__OFSUB__(v85, v101))
      {
        sub_26C0DE248(v85 - v101, &v102);
        v86 = *(&v102 + 1);
        if (*(&v102 + 1) >> 60 != 15)
        {
          v87 = v103;
          v88 = v102;
          sub_26C0BB9B0(v116, v117);
          sub_26C0BB9B0(v80, v81);
          *&v115[72] = v106;
          *&v115[88] = v107;
          *&v115[104] = *v108;
          *&v115[113] = *&v108[9];
          *&v115[24] = *v104;
          *&v115[40] = *&v104[16];
          *&v115[56] = v105;
          *v115 = v88;
          *&v115[8] = v86;
          *&v115[16] = v87;
          nullsub_1(v115);
          v89 = *&v115[112];
          *(a4 + 96) = *&v115[96];
          *(a4 + 112) = v89;
          *(a4 + 128) = v115[128];
          v90 = *&v115[48];
          *(a4 + 32) = *&v115[32];
          *(a4 + 48) = v90;
          v91 = *&v115[80];
          *(a4 + 64) = *&v115[64];
          *(a4 + 80) = v91;
          v92 = *&v115[16];
          *a4 = *v115;
          *(a4 + 16) = v92;
          return;
        }

        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_103:
    v93 = sub_26C148A9C();
    __swift_project_value_buffer(v93, qword_28047AAE0);
    v94 = sub_26C148A7C();
    v95 = sub_26C148FFC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      swift_beginAccess();
      v97 = v113 >> 62;
      if ((v113 >> 62) > 1)
      {
        v98 = 0;
        if (v97 == 2)
        {
          v98 = *(v112 + 24);
        }
      }

      else if (v97)
      {
        v98 = v112 >> 32;
      }

      else
      {
        v98 = BYTE6(v113);
      }

      if (__OFSUB__(v98, v82))
      {
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      *(v96 + 4) = v98 - v82;
      _os_log_impl(&dword_26C0B5000, v94, v95, "ExcessBytes: %ld", v96, 0xCu);
      MEMORY[0x26D69C3A0](v96, -1, -1);
    }

    v99 = v122;
    *v122 = xmmword_26C149860;
    *(v99 + 16) = 2;
    v102 = xmmword_26C149860;
    LOBYTE(v103) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(v104);
    sub_26C0BB9B0(v116, v117);
    v17 = v112;
    v18 = v113;
LABEL_8:
    sub_26C0BB9B0(v17, v18);
    return;
  }

LABEL_121:
  __break(1u);
}

uint64_t SwiftTLSFeatureFlags.hashValue.getter()
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

uint64_t sub_26C0E1C10()
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

uint64_t sub_26C0E1C7C()
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

unint64_t sub_26C0E1CC0()
{
  result = qword_28047AAF8;
  if (!qword_28047AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftTLSFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SwiftTLSFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t sub_26C0E1E48(uint64_t a1, unint64_t a2)
{
  v11[3] = MEMORY[0x277CC9318];
  v11[4] = MEMORY[0x277CC9300];
  v11[0] = a1;
  v11[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v11, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  sub_26C0BBAA4(a1, a2);
  sub_26C135114(v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      return BYTE6(a2);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v8 == 2)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    result = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a1) - a1;
      }
    }
  }

  return result;
}

uint64_t sub_26C0E1F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = v5[2];
  v9(v17 - v7, a1, v4);
  v19 = v4;
  v20 = sub_26C0E66CC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  v9(boxed_opaque_existential_1, v8, v4);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_26C14880C();
  v11 = v5[1];
  v11(a1, v4);
  v11(v8, v4);
  v12 = v17[1];
  v13 = v17[2];
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v16 = 0;
    if (v15 == 2)
    {
      v16 = *(v12 + 16);
    }
  }

  else
  {
    v16 = v12;
    if (!v15)
    {
      v16 = 0;
    }
  }

  *a2 = v12;
  a2[1] = v13;
  a2[2] = v16;
  return result;
}

uint64_t sub_26C0E20DC()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AB00);
  __swift_project_value_buffer(v0, qword_28047AB00);
  return sub_26C148A8C();
}

uint64_t _s8SwiftTLS21ExportedAuthenticatorV13authenticator21handshakeStateMachineAcA10ByteBufferVz_AA09HandshakegH0VtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_26C14A540;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  sub_26C0E0B74(a1);
  v5 = type metadata accessor for ExportedAuthenticator();
  return sub_26C0E61A0(a2, a3 + *(v5 + 24), type metadata accessor for HandshakeStateMachine);
}

uint64_t type metadata accessor for ExportedAuthenticator()
{
  result = qword_28047AB20;
  if (!qword_28047AB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *_s8SwiftTLS21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v259 = a2;
  v260 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v254 = &v239 - v9;
  v10 = sub_26C148DBC();
  v257 = *(v10 - 8);
  v258 = v10;
  v11 = *(v257 + 64);
  MEMORY[0x28223BE20](v10);
  v261 = &v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9F0, &qword_26C14A9C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v264 = &v239 - v15;
  v265 = sub_26C148E2C();
  v263 = *(v265 - 8);
  v16 = *(v263 + 64);
  MEMORY[0x28223BE20](v265);
  v262 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v18 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  *&v270 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HandshakeState(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v255 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v256 = &v239 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v266 = &v239 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v366 = &v239 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v239 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v267 = &v239 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v239 - v36;
  v272 = sub_26C148BDC();
  v38 = *(v272 - 8);
  v39 = v38[8];
  v40 = MEMORY[0x28223BE20](v272);
  v268 = &v239 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v271 = &v239 - v42;
  if (v3[1] >> 60 == 15)
  {
    v253 = v38;
    sub_26C0CF2F4(&v357);
  }

  else
  {
    sub_26C0DE9B4(v3, v3, &v348, &v357);
    if (v4)
    {
      v43 = v349;
      v44 = v348;
LABEL_5:
      *a3 = v44;
      *(a3 + 16) = v43;
      return v3;
    }

    v6 = 0;
    v253 = v38;
  }

  v344 = v362;
  v345 = v363;
  v346 = v364;
  v341 = v359;
  v342 = v360;
  v343 = v361;
  v339 = v357;
  v340 = v358;
  v353 = v362;
  v354 = v363;
  v355 = v364;
  v349 = v358;
  v350 = v359;
  v351 = v360;
  v352 = v361;
  v347 = v365;
  v356 = v365;
  v348 = v357;
  if (sub_26C0CF284(&v348) == 1)
  {
    v45 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v46 = sub_26C148A9C();
    __swift_project_value_buffer(v46, qword_28047AB00);
    v3 = sub_26C148A7C();
    v47 = sub_26C14900C();
    if (os_log_type_enabled(v3, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26C0B5000, v3, v47, "incomplete message, invalid", v48, 2u);
      MEMORY[0x26D69C3A0](v48, -1, -1);
    }

    *v45 = xmmword_26C14C0F0;
    *(v45 + 16) = 2;
    v330 = xmmword_26C14C0F0;
    LOBYTE(v331) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v3;
  }

  if (v356 != 4)
  {
    v50 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v51 = sub_26C148A9C();
    __swift_project_value_buffer(v51, qword_28047AB00);
    v336 = v345;
    v337 = v346;
    v338 = v347;
    v332 = v341;
    v333 = v342;
    v334 = v343;
    v335 = v344;
    v330 = v339;
    v331 = v340;
    sub_26C0E5D8C(&v330, &v321);
    v3 = sub_26C148A7C();
    v52 = sub_26C14900C();
    sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v3, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v321 = v54;
      *v53 = 136315138;
      if (v356 > 3u)
      {
        if (v356 > 5u)
        {
          if (v356 == 6)
          {
            v55 = 0xE800000000000000;
            v56 = 0x64656873696E6966;
          }

          else
          {
            v56 = 0xD000000000000010;
            v55 = 0x800000026C15A4C0;
          }
        }

        else if (v356 == 4)
        {
          v56 = 0x6369666974726563;
          v55 = 0xEB00000000657461;
        }

        else
        {
          v55 = 0x800000026C15A4E0;
          v56 = 0xD000000000000011;
        }
      }

      else if (v356 > 1u)
      {
        if (v356 == 2)
        {
          v55 = 0x800000026C15A520;
          v56 = 0xD000000000000013;
        }

        else
        {
          v55 = 0x800000026C15A500;
          v56 = 0xD000000000000012;
        }
      }

      else
      {
        v55 = 0xEB000000006F6C6CLL;
        if (v356)
        {
          v56 = 0x6548726576726573;
        }

        else
        {
          v56 = 0x6548746E65696C63;
        }
      }

      v71 = sub_26C0E5DE8(v56, v55, &v321);

      *(v53 + 4) = v71;
      _os_log_impl(&dword_26C0B5000, v3, v52, "unexpected message %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x26D69C3A0](v54, -1, -1);
      MEMORY[0x26D69C3A0](v53, -1, -1);
    }

    *v50 = xmmword_26C14C0F0;
    *(v50 + 16) = 2;
    v321 = xmmword_26C14C0F0;
    LOBYTE(v322) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    goto LABEL_58;
  }

  v252 = v20;
  v49 = v351;
  if (v3[1] >> 60 == 15)
  {
    v251 = v351;
    sub_26C0CF2F4(&v321);
    v336 = v327;
    v337 = v328;
    v338 = v329;
    v332 = v323;
    v333 = v324;
    v334 = v325;
    v335 = v326;
    v330 = v321;
    v331 = v322;
    sub_26C0BBAA4(*(&v349 + 1), v350);

    goto LABEL_29;
  }

  sub_26C0BBAA4(*(&v349 + 1), v350);

  sub_26C0DE9B4(v3, v3, &v321, &v330);
  if (v6)
  {
    sub_26C0BF5D0(&v349 + 8);
    sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
    v43 = v322;
    v44 = v321;
    goto LABEL_5;
  }

  v6 = 0;
  v251 = v49;
LABEL_29:
  v318 = v336;
  v319 = v337;
  v314 = v332;
  v315 = v333;
  v316 = v334;
  v317 = v335;
  v312 = v330;
  v313 = v331;
  v327 = v336;
  v328 = v337;
  v323 = v332;
  v324 = v333;
  v325 = v334;
  v326 = v335;
  v320 = v338;
  v329 = v338;
  v321 = v330;
  v322 = v331;
  if (sub_26C0CF284(&v321) == 1)
  {
    v57 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v58 = sub_26C148A9C();
    __swift_project_value_buffer(v58, qword_28047AB00);
    v3 = sub_26C148A7C();
    v59 = sub_26C14900C();
    if (os_log_type_enabled(v3, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26C0B5000, v3, v59, "incomplete message, invalid", v60, 2u);
      MEMORY[0x26D69C3A0](v60, -1, -1);
    }

    *v57 = xmmword_26C14C0F0;
    *(v57 + 16) = 2;
    v303 = xmmword_26C14C0F0;
    LOBYTE(v304) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v349 + 8);
    goto LABEL_58;
  }

  if (v329 != 5)
  {
    v62 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v63 = sub_26C148A9C();
    __swift_project_value_buffer(v63, qword_28047AB00);
    v309 = v318;
    v310 = v319;
    v311 = v320;
    v305 = v314;
    v306 = v315;
    v307 = v316;
    v308 = v317;
    v303 = v312;
    v304 = v313;
    sub_26C0E5D8C(&v303, &v294);
    v64 = sub_26C148A7C();
    v65 = sub_26C14900C();
    sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v294 = v67;
      *v66 = 136315138;
      if (v329 > 3u)
      {
        if (v329 > 5u)
        {
          if (v329 == 6)
          {
            v68 = 0xE800000000000000;
            v69 = 0x64656873696E6966;
          }

          else
          {
            v69 = 0xD000000000000010;
            v68 = 0x800000026C15A4C0;
          }
        }

        else if (v329 == 4)
        {
          v69 = 0x6369666974726563;
          v68 = 0xEB00000000657461;
        }

        else
        {
          v68 = 0x800000026C15A4E0;
          v69 = 0xD000000000000011;
        }
      }

      else if (v329 > 1u)
      {
        if (v329 == 2)
        {
          v68 = 0x800000026C15A520;
          v69 = 0xD000000000000013;
        }

        else
        {
          v68 = 0x800000026C15A500;
          v69 = 0xD000000000000012;
        }
      }

      else
      {
        v68 = 0xEB000000006F6C6CLL;
        if (v329)
        {
          v69 = 0x6548726576726573;
        }

        else
        {
          v69 = 0x6548746E65696C63;
        }
      }

      v103 = sub_26C0E5DE8(v69, v68, &v294);

      *(v66 + 4) = v103;
      _os_log_impl(&dword_26C0B5000, v64, v65, "unexpected message %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x26D69C3A0](v67, -1, -1);
      MEMORY[0x26D69C3A0](v66, -1, -1);
    }

    else
    {
    }

    *v62 = xmmword_26C14C0F0;
    *(v62 + 16) = 2;
    v294 = xmmword_26C14C0F0;
    LOBYTE(v295) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v3 = &qword_28047A940;
    sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v349 + 8);
    goto LABEL_58;
  }

  v61 = v323;
  v249 = v324;
  v250 = *(&v323 + 1);
  if (v3[1] >> 60 == 15)
  {
    v248 = v323;
    sub_26C0CF2F4(&v294);
    v309 = v300;
    v310 = v301;
    v311 = v302;
    v305 = v296;
    v306 = v297;
    v307 = v298;
    v308 = v299;
    v303 = v294;
    v304 = v295;
    sub_26C0BBAA4(v323, *(&v323 + 1));
  }

  else
  {
    sub_26C0BBAA4(v323, *(&v323 + 1));
    sub_26C0DE9B4(v3, v3, &v294, &v303);
    if (v6)
    {
      sub_26C0BF5D0(&v322 + 8);
      sub_26C0BF5D0(&v349 + 8);
      v3 = &qword_28047A940;
      sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
      sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
      v70 = v295;
      *a3 = v294;
      *(a3 + 16) = v70;
      return v3;
    }

    v6 = 0;
    v248 = v61;
  }

  v291 = v309;
  v292 = v310;
  v287 = v305;
  v288 = v306;
  v289 = v307;
  v290 = v308;
  v285 = v303;
  v286 = v304;
  v300 = v309;
  v301 = v310;
  v296 = v305;
  v297 = v306;
  v298 = v307;
  v299 = v308;
  v293 = v311;
  v302 = v311;
  v294 = v303;
  v295 = v304;
  v73 = sub_26C0CF284(&v294);
  v74 = v366;
  if (v73 == 1)
  {
    v75 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v76 = sub_26C148A9C();
    __swift_project_value_buffer(v76, qword_28047AB00);
    v77 = sub_26C148A7C();
    v78 = sub_26C14900C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26C0B5000, v77, v78, "incomplete message, invalid", v79, 2u);
      MEMORY[0x26D69C3A0](v79, -1, -1);
    }

    *v75 = xmmword_26C14C0F0;
    *(v75 + 16) = 2;
    v276 = xmmword_26C14C0F0;
    LOBYTE(v277) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v322 + 8);
    sub_26C0BF5D0(&v349 + 8);
    v3 = &qword_28047A940;
LABEL_133:
    sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
LABEL_58:
    sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
    return v3;
  }

  if (v302 != 6)
  {
    v87 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v88 = sub_26C148A9C();
    __swift_project_value_buffer(v88, qword_28047AB00);
    v282 = v291;
    v283 = v292;
    v284 = v293;
    v278 = v287;
    v279 = v288;
    v280 = v289;
    v281 = v290;
    v276 = v285;
    v277 = v286;
    sub_26C0E5D8C(&v276, v275);
    v89 = sub_26C148A7C();
    v90 = sub_26C14900C();
    sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v275 = v92;
      *v91 = 136315138;
      if (v302 > 3u)
      {
        if (v302 > 5u)
        {
          if (v302 == 6)
          {
            v93 = 0xE800000000000000;
            v94 = 0x64656873696E6966;
          }

          else
          {
            v94 = 0xD000000000000010;
            v93 = 0x800000026C15A4C0;
          }
        }

        else if (v302 == 4)
        {
          v94 = 0x6369666974726563;
          v93 = 0xEB00000000657461;
        }

        else
        {
          v93 = 0x800000026C15A4E0;
          v94 = 0xD000000000000011;
        }
      }

      else if (v302 > 1u)
      {
        if (v302 == 2)
        {
          v93 = 0x800000026C15A520;
          v94 = 0xD000000000000013;
        }

        else
        {
          v93 = 0x800000026C15A500;
          v94 = 0xD000000000000012;
        }
      }

      else
      {
        v93 = 0xEB000000006F6C6CLL;
        if (v302)
        {
          v94 = 0x6548726576726573;
        }

        else
        {
          v94 = 0x6548746E65696C63;
        }
      }

      v140 = sub_26C0E5DE8(v94, v93, v275);

      *(v91 + 4) = v140;
      _os_log_impl(&dword_26C0B5000, v89, v90, "unexpected message %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x26D69C3A0](v92, -1, -1);
      MEMORY[0x26D69C3A0](v91, -1, -1);
    }

    else
    {
    }

    *v87 = xmmword_26C14C0F0;
    *(v87 + 16) = 2;
    *v275 = xmmword_26C14C0F0;
    v275[16] = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v322 + 8);
    v3 = &qword_28047A940;
    sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v349 + 8);
    goto LABEL_133;
  }

  v244 = v296;
  v242 = *(&v295 + 1);
  v243 = *(&v296 + 1);
  v80 = v3 + *(type metadata accessor for ExportedAuthenticator() + 24);
  v245 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v246 = v80;
  sub_26C0E5EB4(&v80[v245], v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v247 = a3;
  if (EnumCaseMultiPayload == 6)
  {
    v82 = v31;
    v83 = v270;
    sub_26C0E61A0(v82, v270, type metadata accessor for HandshakeState.ReadyState);
    v84 = *(ready + 44);
    sub_26C0BBAA4(*(&v295 + 1), v296);
    sub_26C0E5438(0xD00000000000002FLL, 0x800000026C15AAE0, v37);
    sub_26C0E6208(v83, type metadata accessor for HandshakeState.ReadyState);
    v85 = v253;
    v86 = v272;
  }

  else
  {
    v85 = v253;
    v86 = v272;
    (v253[7])(v37, 1, 1, v272);
    sub_26C0BBAA4(*(&v295 + 1), v296);
    sub_26C0E6208(v31, type metadata accessor for HandshakeState);
  }

  v95 = v85[6];
  if (v95(v37, 1, v86) != 1)
  {
    v240 = v85[4];
    *&v241 = v85 + 4;
    v240(v271, v37, v86);
    sub_26C0E5EB4(&v246[v245], v74);
    v97 = swift_getEnumCaseMultiPayload();
    v98 = v86;
    v253 = v85;
    if (v97 == 6)
    {
      v99 = v270;
      sub_26C0E61A0(v74, v270, type metadata accessor for HandshakeState.ReadyState);
      v100 = v99 + *(ready + 44);
      v74 = v267;
      sub_26C0E5438(0xD00000000000002ALL, 0x800000026C15AB10, v267);
      v96 = v74;
      v101 = type metadata accessor for HandshakeState.ReadyState;
      v102 = v99;
    }

    else
    {
      v104 = v85[7];
      v96 = v267;
      v104(v267, 1, 1, v86);
      v101 = type metadata accessor for HandshakeState;
      v102 = v74;
    }

    sub_26C0E6208(v102, v101);
    v105 = &v321;
    if (v95(v96, 1, v98) == 1)
    {
      (v253[1])(v271, v98);
      goto LABEL_102;
    }

    v111 = (v240)(v268, v96, v98);
    v276 = xmmword_26C14A1B0;
    *&v277 = 0;
    MEMORY[0x28223BE20](v111);
    *(&v239 - 2) = &v276;
    v112 = v6;
    sub_26C148B8C();
    v113 = v6;
    v114 = *(&v348 + 1) >> 62;
    if ((*(&v348 + 1) >> 62) > 1)
    {
      v115 = 0;
      if (v114 == 2)
      {
        v115 = *(v348 + 24);
      }
    }

    else if (v114)
    {
      v115 = v348 >> 32;
    }

    else
    {
      v115 = BYTE14(v348);
    }

    if (v115 < v349)
    {
      __break(1u);
    }

    else
    {
      v116 = sub_26C14889C();
      v118 = v117;
      sub_26C0E1E48(v116, v117);
      sub_26C0BB9B0(v116, v118);
      v119 = v276;
      v120 = v277;
      v121 = v266;
      sub_26C0E5EB4(&v246[v245], v266);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v122 = v270;
        sub_26C0E61A0(v121, v270, type metadata accessor for HandshakeState.ReadyState);
        v123 = v122 + *(ready + 44);
        sub_26C0E59EC(v119, *(&v119 + 1), v120, v275);
        sub_26C0E6208(v122, type metadata accessor for HandshakeState.ReadyState);
        v124 = *v275;
        v273 = *v275;
        v241 = *&v275[8];
        v274 = *&v275[8];
        sub_26C0E4F18(&v273, v275);
        v267 = *v275;
        v366 = *&v275[8];
        v125 = *&v275[16];
        v126 = v251[2];
        v266 = v124;
        if (!v126)
        {
          sub_26C0BBAA4(*(&v349 + 1), v350);

          v141 = 1;
          v142 = v263;
          goto LABEL_147;
        }

        v105 = v251[4];
        v127 = v251[5];
        v128 = v251[6];
        v129 = v127 >> 62;
        if ((v127 >> 62) > 1)
        {
          if (v129 != 2)
          {
            v130 = 0;
            goto LABEL_140;
          }

          v130 = *(v105 + 24);
        }

        else
        {
          if (!v129)
          {
            v130 = BYTE6(v127);
LABEL_140:
            if (v130 < v128)
            {
              __break(1u);
              goto LABEL_247;
            }

            sub_26C0BBAA4(*(&v349 + 1), v350);

            v143 = sub_26C14889C();
            v145 = v144;
            v146 = v260();
            v148 = v147;
            sub_26C0BB9B0(v143, v145);
            if (v148 >> 60 == 15)
            {
              sub_26C0BB9B0(v105, v127);
              v141 = 1;
            }

            else
            {
              *v275 = v146;
              *&v275[8] = v148;
              sub_26C0BBAA4(v146, v148);
              sub_26C148E1C();
              if (v113)
              {

                v270 = xmmword_26C14A900;
                *v275 = xmmword_26C14A900;
                v275[16] = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                sub_26C0BB9B0(v266, v241);
                sub_26C0BB9B0(v267, v366);
                sub_26C0BB9B0(v105, v127);
                sub_26C0BB344(v146, v148);
                sub_26C0BF5D0(&v322 + 8);
                sub_26C0BF5D0(&v349 + 8);
                sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                v3 = v253[1];
                v149 = v272;
                (v3)(v268, v272);
                (v3)(v271, v149);
                sub_26C0BF5D0(&v349 + 8);
LABEL_163:
                sub_26C0BF5D0(&v295 + 8);
                v164 = v247;
                *v247 = v270;
                *(v164 + 16) = 2;
LABEL_243:
                sub_26C0BB9B0(v276, *(&v276 + 1));
                return v3;
              }

              sub_26C0BB9B0(v105, v127);
              sub_26C0BB344(v146, v148);
              v141 = 0;
            }

            v105 = &v321;
            v142 = v263;
LABEL_147:
            v151 = v264;
            v150 = v265;
            (*(v142 + 56))(v264, v141, 1, v265);
            v74 = &v348;
            v152 = v151;
            sub_26C0BF5D0(&v349 + 8);
            v153 = (*(v142 + 48))(v151, 1, v150);
            v127 = v272;
            if (v153 == 1)
            {
              sub_26C0CF5C4(v152, &qword_28047A9F0, &qword_26C14A9C0);
              if (qword_28047A740 == -1)
              {
LABEL_149:
                v154 = sub_26C148A9C();
                __swift_project_value_buffer(v154, qword_28047AB00);
                v155 = sub_26C148A7C();
                v156 = sub_26C14900C();
                v157 = os_log_type_enabled(v155, v156);
                v158 = v266;
                if (v157)
                {
                  v159 = swift_slowAlloc();
                  *v159 = 0;
                  _os_log_impl(&dword_26C0B5000, v155, v156, "failed to extract key from certificate", v159, 2u);
                  MEMORY[0x26D69C3A0](v159, -1, -1);
                }

                v160 = v247;
                *v247 = xmmword_26C14C0F0;
                *(v160 + 16) = 2;
                *v275 = xmmword_26C14C0F0;
                v275[16] = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                sub_26C0BB9B0(v158, v241);
                sub_26C0BB9B0(v267, v366);
                sub_26C0BF5D0(v105 + 24);
                sub_26C0BF5D0(v74 + 24);
                sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                v3 = v253[1];
                (v3)(v268, v127);
                v138 = v271;
                v139 = v127;
                goto LABEL_196;
              }

LABEL_247:
              swift_once();
              goto LABEL_149;
            }

            (*(v142 + 32))(v262, v152, v150);
            v161 = v250 >> 62;
            if ((v250 >> 62) > 1)
            {
              if (v161 != 2)
              {
                v162 = 0;
LABEL_160:
                if (v162 < v249)
                {
                  __break(1u);
LABEL_249:
                  __break(1u);
LABEL_250:
                  __break(1u);
                  goto LABEL_251;
                }

                *v275 = sub_26C14889C();
                *&v275[8] = v163;
                sub_26C0BE710();
                sub_26C148DAC();
                if (v113)
                {

                  sub_26C0BF5D0(&v322 + 8);
                  v270 = xmmword_26C14A900;
                  *v275 = xmmword_26C14A900;
                  v275[16] = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v266, v241);
                  sub_26C0BB9B0(v267, v366);
                  sub_26C0BF5D0(&v322 + 8);
                  sub_26C0BF5D0(&v349 + 8);
                  sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                  sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                  sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                  (*(v142 + 8))(v262, v265);
                  v3 = v253[1];
                  (v3)(v268, v127);
                  (v3)(v271, v127);
                  goto LABEL_163;
                }

                sub_26C0BF5D0(&v322 + 8);
                v165 = v366 >> 62;
                if ((v366 >> 62) > 1)
                {
                  if (v165 == 2)
                  {
                    v166 = *(v267 + 24);
                  }

                  else
                  {
                    v166 = 0;
                  }
                }

                else if (v165)
                {
                  v166 = v267 >> 32;
                }

                else
                {
                  v166 = BYTE6(v366);
                }

                if (v166 < v125)
                {
                  goto LABEL_250;
                }

                *v275 = sub_26C14889C();
                *&v275[8] = v167;
                v168 = sub_26C148DCC();
                sub_26C0BB9B0(*v275, *&v275[8]);
                if ((v168 & 1) == 0)
                {
                  if (qword_28047A740 == -1)
                  {
LABEL_177:
                    v171 = sub_26C148A9C();
                    __swift_project_value_buffer(v171, qword_28047AB00);
                    v172 = sub_26C148A7C();
                    v173 = sub_26C14900C();
                    if (os_log_type_enabled(v172, v173))
                    {
                      v174 = swift_slowAlloc();
                      *v174 = 0;
                      _os_log_impl(&dword_26C0B5000, v172, v173, "signature validation failed", v174, 2u);
                      MEMORY[0x26D69C3A0](v174, -1, -1);
                    }

                    v175 = xmmword_26C14C0F0;
LABEL_194:
                    v192 = v247;
                    *v247 = v175;
                    *(v192 + 16) = 2;
                    *v275 = v175;
                    v275[16] = 2;
                    sub_26C0BBAF8();
                    swift_willThrowTypedImpl();
                    v193 = v241;
                    v194 = v266;
LABEL_195:
                    sub_26C0BB9B0(v194, v193);
                    sub_26C0BB9B0(v267, v366);
                    sub_26C0BF5D0(&v322 + 8);
                    sub_26C0BF5D0(&v349 + 8);
                    sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                    sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                    sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                    (*(v257 + 8))(v261, v258);
                    (*(v263 + 8))(v262, v265);
                    v3 = v253[1];
                    v195 = v272;
                    (v3)(v268, v272);
                    v138 = v271;
                    v139 = v195;
LABEL_196:
                    (v3)(v138, v139);
                    sub_26C0BF5D0(&v295 + 8);
                    goto LABEL_243;
                  }

LABEL_251:
                  swift_once();
                  goto LABEL_177;
                }

                v169 = *(&v321 + 1) >> 62;
                if ((*(&v321 + 1) >> 62) > 1)
                {
                  if (v169 == 2)
                  {
                    v170 = *(v321 + 24);
                  }

                  else
                  {
                    v170 = 0;
                  }
                }

                else if (v169)
                {
                  v170 = v321 >> 32;
                }

                else
                {
                  v170 = BYTE14(v321);
                }

                if (v170 < v322)
                {
                  __break(1u);
                }

                else
                {
                  v176 = sub_26C14889C();
                  v178 = v177;
                  sub_26C0E1E48(v176, v177);
                  sub_26C0BB9B0(v176, v178);
                  v179 = v276;
                  v180 = v277;
                  sub_26C0E5EB4(&v246[v245], v256);
                  if (swift_getEnumCaseMultiPayload() == 6)
                  {
                    v181 = v270;
                    sub_26C0E61A0(v256, v270, type metadata accessor for HandshakeState.ReadyState);
                    v182 = v181 + *(ready + 44);
                    sub_26C0E59EC(v179, *(&v179 + 1), v180, v275);
                    sub_26C0E6208(v181, type metadata accessor for HandshakeState.ReadyState);
                    ready = *v275;
                    *&v270 = *&v275[8];
                    v183 = *&v275[16];
                    v184 = v255;
                    sub_26C0E5EB4(&v246[v245], v255);
                    v185 = swift_getEnumCaseMultiPayload();
                    sub_26C0E6208(v184, type metadata accessor for HandshakeState);
                    if (v185 != 6)
                    {
                      if (qword_28047A740 != -1)
                      {
                        swift_once();
                      }

                      v196 = sub_26C148A9C();
                      __swift_project_value_buffer(v196, qword_28047AB00);
                      v197 = sub_26C148A7C();
                      v198 = sub_26C14900C();
                      if (os_log_type_enabled(v197, v198))
                      {
                        v199 = swift_slowAlloc();
                        *v199 = 0;
                        _os_log_impl(&dword_26C0B5000, v197, v198, "failed to create finished authenticator HMAC", v199, 2u);
                        MEMORY[0x26D69C3A0](v199, -1, -1);
                      }

                      v200 = v247;
                      *v247 = xmmword_26C14C100;
                      *(v200 + 16) = 2;
                      *v275 = xmmword_26C14C100;
                      v275[16] = 2;
                      sub_26C0BBAF8();
                      swift_willThrowTypedImpl();
                      sub_26C0BB9B0(v266, v241);
                      v194 = ready;
                      v193 = v270;
                      goto LABEL_195;
                    }

                    v186 = v270 >> 62;
                    if ((v270 >> 62) > 1)
                    {
                      if (v186 == 2)
                      {
                        v187 = *(ready + 24);
                      }

                      else
                      {
                        v187 = 0;
                      }
                    }

                    else if (v186)
                    {
                      v187 = ready >> 32;
                    }

                    else
                    {
                      v187 = BYTE6(v270);
                    }

                    if (v187 < v183)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v201 = sub_26C14889C();
                      v203 = v202;
                      MEMORY[0x28223BE20](v201);
                      *(&v239 - 2) = v268;
                      v204 = v254;
                      sub_26C0E6284(sub_26C0E6268, (&v239 - 4), v201, v203);
                      v259 = 0;
                      sub_26C0BB9B0(v201, v203);
                      sub_26C0E1F1C(v204, v275);
                      v264 = *v275;
                      v260 = *&v275[8];
                      v205 = *&v275[8] >> 62;
                      if ((*&v275[8] >> 62) > 1)
                      {
                        if (v205 == 2)
                        {
                          v206 = *(v264 + 24);
                        }

                        else
                        {
                          v206 = 0;
                        }
                      }

                      else if (v205)
                      {
                        v206 = v264 >> 32;
                      }

                      else
                      {
                        v206 = BYTE6(v260);
                      }

                      if (v206 >= *&v275[16])
                      {
                        v207 = sub_26C14889C();
                        v209 = v208;
                        v210 = v244 >> 62;
                        if ((v244 >> 62) > 1)
                        {
                          if (v210 == 2)
                          {
                            v211 = *(v242 + 24);
                          }

                          else
                          {
                            v211 = 0;
                          }
                        }

                        else if (v210)
                        {
                          v211 = v242 >> 32;
                        }

                        else
                        {
                          v211 = BYTE6(v244);
                        }

                        if (v211 >= v243)
                        {
                          v212 = sub_26C14889C();
                          v214 = v213;
                          v215 = sub_26C0E6464(v207, v209, v212, v213);
                          sub_26C0BB9B0(v212, v214);
                          sub_26C0BB9B0(v207, v209);
                          if (v215)
                          {
                            v216 = v251[2];
                            if (!v216)
                            {
                              sub_26C0BB9B0(v266, v241);
                              sub_26C0BB9B0(ready, v270);
                              sub_26C0BB9B0(v264, v260);
                              sub_26C0BB9B0(v267, v366);
                              sub_26C0BF5D0(&v322 + 8);
                              sub_26C0BF5D0(&v349 + 8);
                              sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                              sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                              sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                              (*(v257 + 8))(v261, v258);
                              (*(v263 + 8))(v262, v265);
                              v237 = v253[1];
                              v238 = v272;
                              v237(v268, v272);
                              v237(v271, v238);
                              sub_26C0BF5D0(&v295 + 8);
                              v3 = MEMORY[0x277D84F90];
                              goto LABEL_243;
                            }

                            *v275 = MEMORY[0x277D84F90];
                            v217 = v251;

                            sub_26C0CEB7C(0, v216, 0);
                            v3 = *v275;
                            v218 = v217 + 7;
                            while (1)
                            {
                              v220 = *(v218 - 3);
                              v219 = *(v218 - 2);
                              v221 = v219 >> 62;
                              if ((v219 >> 62) > 1)
                              {
                                v222 = v221 == 2 ? *(v220 + 24) : 0;
                              }

                              else
                              {
                                v222 = v221 ? v220 >> 32 : BYTE6(v219);
                              }

                              if (v222 < *(v218 - 1))
                              {
                                goto LABEL_249;
                              }

                              v223 = *v218;
                              sub_26C0BBAA4(*(v218 - 3), *(v218 - 2));

                              v224 = sub_26C14889C();
                              v226 = v225;
                              sub_26C0BB9B0(v220, v219);

                              *v275 = v3;
                              v228 = v3[2];
                              v227 = v3[3];
                              if (v228 >= v227 >> 1)
                              {
                                sub_26C0CEB7C((v227 > 1), v228 + 1, 1);
                                v3 = *v275;
                              }

                              v3[2] = v228 + 1;
                              v229 = &v3[2 * v228];
                              v229[4] = v224;
                              v229[5] = v226;
                              v218 += 4;
                              if (!--v216)
                              {
                                sub_26C0BB9B0(v266, v241);
                                sub_26C0BB9B0(ready, v270);
                                sub_26C0BB9B0(v264, v260);
                                sub_26C0BB9B0(v267, v366);

                                sub_26C0BF5D0(&v322 + 8);
                                sub_26C0BF5D0(&v349 + 8);
                                sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
                                sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
                                sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
                                (*(v257 + 8))(v261, v258);
                                (*(v263 + 8))(v262, v265);
                                v235 = v253[1];
                                v236 = v272;
                                v235(v268, v272);
                                v235(v271, v236);
                                sub_26C0BF5D0(&v295 + 8);
                                goto LABEL_243;
                              }
                            }
                          }

                          if (qword_28047A740 == -1)
                          {
LABEL_239:
                            v230 = sub_26C148A9C();
                            __swift_project_value_buffer(v230, qword_28047AB00);
                            v231 = sub_26C148A7C();
                            v232 = sub_26C14900C();
                            if (os_log_type_enabled(v231, v232))
                            {
                              v233 = swift_slowAlloc();
                              *v233 = 0;
                              _os_log_impl(&dword_26C0B5000, v231, v232, "invalid finished payload", v233, 2u);
                              MEMORY[0x26D69C3A0](v233, -1, -1);
                            }

                            v234 = v247;
                            *v247 = xmmword_26C14C0F0;
                            *(v234 + 16) = 2;
                            *v275 = xmmword_26C14C0F0;
                            v275[16] = 2;
                            sub_26C0BBAF8();
                            swift_willThrowTypedImpl();
                            sub_26C0BB9B0(v266, v241);
                            sub_26C0BB9B0(ready, v270);
                            v194 = v264;
                            v193 = v260;
                            goto LABEL_195;
                          }

LABEL_257:
                          swift_once();
                          goto LABEL_239;
                        }

LABEL_256:
                        __break(1u);
                        goto LABEL_257;
                      }
                    }

                    __break(1u);
                    goto LABEL_256;
                  }

                  sub_26C0E6208(v256, type metadata accessor for HandshakeState);
                  if (qword_28047A740 == -1)
                  {
LABEL_191:
                    v188 = sub_26C148A9C();
                    __swift_project_value_buffer(v188, qword_28047AB00);
                    v189 = sub_26C148A7C();
                    v190 = sub_26C14900C();
                    if (os_log_type_enabled(v189, v190))
                    {
                      v191 = swift_slowAlloc();
                      *v191 = 0;
                      _os_log_impl(&dword_26C0B5000, v189, v190, "failed to create finished authenticator hash", v191, 2u);
                      MEMORY[0x26D69C3A0](v191, -1, -1);
                    }

                    v175 = xmmword_26C14C100;
                    goto LABEL_194;
                  }
                }

                swift_once();
                goto LABEL_191;
              }

              v162 = *(v248 + 24);
            }

            else
            {
              if (!v161)
              {
                v162 = BYTE6(v250);
                goto LABEL_160;
              }

              v162 = v248 >> 32;
            }

            sub_26C0BBAA4(v323, *(&v323 + 1));
            goto LABEL_160;
          }

          v130 = v105 >> 32;
        }

        sub_26C0BBAA4(v251[4], v251[5]);
        goto LABEL_140;
      }

      sub_26C0E6208(v121, type metadata accessor for HandshakeState);
      v98 = &v348;
      if (qword_28047A740 == -1)
      {
LABEL_126:
        v131 = sub_26C148A9C();
        __swift_project_value_buffer(v131, qword_28047AB00);
        v132 = sub_26C148A7C();
        v133 = sub_26C14900C();
        v134 = os_log_type_enabled(v132, v133);
        v135 = v272;
        if (v134)
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&dword_26C0B5000, v132, v133, "failed to create authenticator hash", v136, 2u);
          MEMORY[0x26D69C3A0](v136, -1, -1);
        }

        v137 = v247;
        *v247 = xmmword_26C14C100;
        *(v137 + 16) = 2;
        *v275 = xmmword_26C14C100;
        v275[16] = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BF5D0(&v322 + 8);
        sub_26C0BF5D0(v98 + 24);
        sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
        v3 = v253[1];
        (v3)(v268, v135);
        v138 = v271;
        v139 = v135;
        goto LABEL_196;
      }
    }

    swift_once();
    goto LABEL_126;
  }

  v96 = v37;
LABEL_102:
  sub_26C0CF5C4(v96, &qword_28047A930, qword_26C14C120);
  if (qword_28047A740 != -1)
  {
    swift_once();
  }

  v106 = sub_26C148A9C();
  __swift_project_value_buffer(v106, qword_28047AB00);
  v107 = sub_26C148A7C();
  v108 = sub_26C14900C();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_26C0B5000, v107, v108, "failed to export keys", v109, 2u);
    MEMORY[0x26D69C3A0](v109, -1, -1);
  }

  v110 = v247;
  *v247 = xmmword_26C14C100;
  *(v110 + 16) = 2;
  v276 = xmmword_26C14C100;
  LOBYTE(v277) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BF5D0(&v322 + 8);
  sub_26C0BF5D0(&v349 + 8);
  v3 = &qword_28047A940;
  sub_26C0CF5C4(&v285, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0CF5C4(&v312, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0CF5C4(&v339, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0BF5D0(&v295 + 8);
  return v3;
}