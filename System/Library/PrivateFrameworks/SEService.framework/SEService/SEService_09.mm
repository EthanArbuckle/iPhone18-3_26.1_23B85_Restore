id sub_1C7C74448(void *a1)
{
  v3 = sub_1C7C7D2E4();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = v4;
  v5 = sub_1C7C7D2E4();
  v6 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = v6;
  v7 = sub_1C7C7D2E4();
  v8 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = v8;
  v9 = sub_1C7C7D2E4();
  v10 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = v10;
  v11 = sub_1C7C7D2E4();
  v12 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = v12;
  v13 = sub_1C7C7D2E4();
  v14 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = v14;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1C7C74638()
{
  result = qword_1EC265740;
  if (!qword_1EC265740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265740);
  }

  return result;
}

unint64_t sub_1C7C74810()
{
  result = qword_1EC265750;
  if (!qword_1EC265750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265750);
  }

  return result;
}

unint64_t sub_1C7C74868()
{
  result = qword_1EC265758;
  if (!qword_1EC265758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265758);
  }

  return result;
}

unint64_t sub_1C7C748C0()
{
  result = qword_1EC265760;
  if (!qword_1EC265760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265760);
  }

  return result;
}

unint64_t sub_1C7C74918()
{
  result = qword_1EC265768;
  if (!qword_1EC265768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265768);
  }

  return result;
}

unint64_t sub_1C7C74970()
{
  result = qword_1EC265770;
  if (!qword_1EC265770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265770);
  }

  return result;
}

unint64_t sub_1C7C749C8()
{
  result = qword_1EC265778;
  if (!qword_1EC265778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265778);
  }

  return result;
}

uint64_t sub_1C7C74A1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9FF20 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E496C61746F74 && a2 == 0xEC00000073656369 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001C7C9FF40 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001C7C9FF70 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9FF90 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9FFB0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C7C74C20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C74C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657B0, &qword_1C7C93F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C7C74CD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static SESFeature.isEnabled(_:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for SESFeature.RuntimeFlag;
  v4[4] = sub_1C7C643D8();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1C7C7D114();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *SESFeature.RuntimeFlag.feature.getter()
{
  v1 = *v0;
  v2 = "secureElementCredential";
  v3 = "storageManagementVision";
  if (v1 != 5)
  {
    v3 = "storageManagementPairedWatch";
  }

  v4 = "storageManagementPhone";
  if (v1 != 3)
  {
    v4 = "storageManagementMac";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "secDynamicSE";
  if (v1 != 1)
  {
    v5 = "secGDPR";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SESFeature.RuntimeFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C74EE8()
{
  result = qword_1EC2657F0;
  if (!qword_1EC2657F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2657F0);
  }

  return result;
}

const char *sub_1C7C74F50()
{
  v1 = *v0;
  v2 = "secureElementCredential";
  v3 = "storageManagementVision";
  if (v1 != 5)
  {
    v3 = "storageManagementPairedWatch";
  }

  v4 = "storageManagementPhone";
  if (v1 != 3)
  {
    v4 = "storageManagementMac";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "secDynamicSE";
  if (v1 != 1)
  {
    v5 = "secGDPR";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SEType.plistString.getter()
{
  v1 = *v0;
  result = qword_1C7C96AF8[v1];
  v3 = qword_1C7C96B28[v1];
  return result;
}

SEService::SEType_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SEType.init(plistString:)(Swift::String plistString)
{
  object = plistString._object;
  countAndFlagsBits = plistString._countAndFlagsBits;
  v4 = v1;
  v5 = 3356496;
  v6 = byte_1F474FA08;
  if (byte_1F474FA08 > 2u)
  {
    v9 = 0xE400000000000000;
    v10 = 1869509962;
    if (byte_1F474FA08 != 4)
    {
      v10 = 0x313242534F45;
      v9 = 0xE600000000000000;
    }

    if (byte_1F474FA08 == 3)
    {
      v11 = 5459781;
    }

    else
    {
      v11 = v10;
    }

    if (byte_1F474FA08 == 3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v9;
    }

    if (v11 != countAndFlagsBits)
    {
      goto LABEL_21;
    }

LABEL_20:
    if (v8 == plistString._object)
    {
      goto LABEL_92;
    }

    goto LABEL_21;
  }

  if (!byte_1F474FA08)
  {
    goto LABEL_22;
  }

  if (byte_1F474FA08 == 1)
  {
    v7 = 3356496;
  }

  else
  {
    v7 = 0x303143333750;
  }

  if (byte_1F474FA08 == 1)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v7 == countAndFlagsBits)
  {
    goto LABEL_20;
  }

LABEL_21:
  v12 = sub_1C7C7DAA4();

  if (v12)
  {
    goto LABEL_94;
  }

LABEL_22:
  v6 = byte_1F474FA09;
  if (byte_1F474FA09 > 2u)
  {
    if (byte_1F474FA09 == 3)
    {
      v14 = 0xE300000000000000;
      if (countAndFlagsBits != 5459781)
      {
        goto LABEL_40;
      }
    }

    else if (byte_1F474FA09 == 4)
    {
      v14 = 0xE400000000000000;
      if (countAndFlagsBits != 1869509962)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (countAndFlagsBits != 0x313242534F45)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_39;
  }

  if (!byte_1F474FA09)
  {
    goto LABEL_41;
  }

  if (byte_1F474FA09 == 1)
  {
    v13 = 3356496;
  }

  else
  {
    v13 = 0x303143333750;
  }

  if (byte_1F474FA09 == 1)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  if (v13 == countAndFlagsBits)
  {
LABEL_39:
    if (v14 != object)
    {
      goto LABEL_40;
    }

LABEL_92:

    goto LABEL_94;
  }

LABEL_40:
  v15 = sub_1C7C7DAA4();

  if (v15)
  {
    goto LABEL_94;
  }

LABEL_41:
  v6 = byte_1F474FA0A;
  if (byte_1F474FA0A > 2u)
  {
    if (byte_1F474FA0A == 3)
    {
      v16 = 0xE300000000000000;
      v17 = 5459781;
    }

    else if (byte_1F474FA0A == 4)
    {
      v16 = 0xE400000000000000;
      v17 = 1869509962;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x313242534F45;
    }
  }

  else
  {
    if (!byte_1F474FA0A)
    {
      goto LABEL_54;
    }

    if (byte_1F474FA0A == 1)
    {
      v16 = 0xE300000000000000;
      v17 = 3356496;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x303143333750;
    }
  }

  if (v17 == countAndFlagsBits && v16 == object)
  {
    goto LABEL_92;
  }

  v18 = sub_1C7C7DAA4();

  if (v18)
  {
    goto LABEL_94;
  }

LABEL_54:
  v6 = byte_1F474FA0B;
  if (byte_1F474FA0B > 2u)
  {
    if (byte_1F474FA0B == 3)
    {
      v19 = 0xE300000000000000;
      v20 = 5459781;
    }

    else if (byte_1F474FA0B == 4)
    {
      v19 = 0xE400000000000000;
      v20 = 1869509962;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x313242534F45;
    }

LABEL_64:
    if (v20 == countAndFlagsBits && v19 == object)
    {
      goto LABEL_92;
    }

    v21 = sub_1C7C7DAA4();

    if (v21)
    {
      goto LABEL_94;
    }

    goto LABEL_67;
  }

  if (byte_1F474FA0B)
  {
    if (byte_1F474FA0B == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 3356496;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x303143333750;
    }

    goto LABEL_64;
  }

LABEL_67:
  v6 = byte_1F474FA0C;
  if (byte_1F474FA0C > 2u)
  {
    if (byte_1F474FA0C == 3)
    {
      v22 = 0xE300000000000000;
      v23 = 5459781;
    }

    else if (byte_1F474FA0C == 4)
    {
      v22 = 0xE400000000000000;
      v23 = 1869509962;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x313242534F45;
    }
  }

  else
  {
    if (!byte_1F474FA0C)
    {
      goto LABEL_80;
    }

    if (byte_1F474FA0C == 1)
    {
      v22 = 0xE300000000000000;
      v23 = 3356496;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x303143333750;
    }
  }

  if (v23 == countAndFlagsBits && v22 == object)
  {
    goto LABEL_92;
  }

  v24 = sub_1C7C7DAA4();

  if ((v24 & 1) == 0)
  {
LABEL_80:
    v6 = byte_1F474FA0D;
    if (byte_1F474FA0D > 2u)
    {
      if (byte_1F474FA0D == 3)
      {
        v25 = 0xE300000000000000;
        v5 = 5459781;
      }

      else if (byte_1F474FA0D == 4)
      {
        v25 = 0xE400000000000000;
        v5 = 1869509962;
      }

      else
      {
        v25 = 0xE600000000000000;
        v5 = 0x313242534F45;
      }
    }

    else
    {
      if (!byte_1F474FA0D)
      {
        goto LABEL_96;
      }

      if (byte_1F474FA0D == 1)
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
        v5 = 0x303143333750;
      }
    }

    if (v5 == countAndFlagsBits && v25 == object)
    {
      goto LABEL_92;
    }

    v26 = sub_1C7C7DAA4();

    if (v26)
    {
      goto LABEL_94;
    }

LABEL_96:

    v6 = 6;
    goto LABEL_95;
  }

LABEL_94:

LABEL_95:
  *v4 = v6;
  return result;
}

SEService::SEType_optional __swiftcall SEType.init(hwType:)(Swift::Int hwType)
{
  if ((hwType - 3) >= 8)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0x403020202010500uLL >> (8 * (hwType - 3));
  }

  *v1 = v2;
  return hwType;
}

SEService::SEType_optional __swiftcall SEType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302010006uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C7C7558C()
{
  result = qword_1EC2657F8;
  if (!qword_1EC2657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2657F8);
  }

  return result;
}

uint64_t sub_1C7C755E0()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1 + 1);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7C75658()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1 + 1);
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C75768()
{
  result = qword_1EC265800;
  if (!qword_1EC265800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC265808, &qword_1C7C96A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265800);
  }

  return result;
}

unint64_t sub_1C7C757EC()
{
  result = qword_1EC265810;
  if (!qword_1EC265810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265810);
  }

  return result;
}

uint64_t sub_1C7C75840()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288368);
  __swift_project_value_buffer(v0, qword_1EC288368);
  return sub_1C7C7D1A4();
}

id SEStorageCredential.packageDetails.getter()
{
  v1 = *(v0 + 8) >> 62;
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  v4 = *v0;
  v3 = *v0;
  return v4;
}

unint64_t SEStorageCredential.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v3)
    {
      sub_1C7C7D794();

      v17 = 0xD00000000000001ALL;
      v4 = ESIMProfileInfo.description.getter();
    }

    else
    {
      sub_1C7C7D794();

      v17 = 0xD000000000000024;
      v4 = SEPackageDetails.description.getter();
    }

    MEMORY[0x1CCA6B380](v4);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    sub_1C7C7D794();

    v17 = 0xD00000000000001FLL;
    v5 = [v2 description];
    v6 = sub_1C7C7D304();
    v8 = v7;

    MEMORY[0x1CCA6B380](v6, v8);
LABEL_8:

    return v17;
  }

  v10 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1C7C7D794();

  v11 = SEPackageDetails.description.getter();
  MEMORY[0x1CCA6B380](v11);

  MEMORY[0x1CCA6B380](8254, 0xE200000000000000);
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7CA0290);
  v18 = *(v10 + 16);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](0x203A736469202CLL, 0xE700000000000000);
  swift_beginAccess();
  v12 = *(v10 + 24);

  v14 = MEMORY[0x1CCA6B440](v13, MEMORY[0x1E69E6158]);
  v16 = v15;

  MEMORY[0x1CCA6B380](v14, v16);

  MEMORY[0x1CCA6B380](125, 0xE100000000000000);
  MEMORY[0x1CCA6B380](0, 0xE000000000000000);

  return 0xD00000000000001ALL;
}

uint64_t sub_1C7C75C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_1C7C75C60()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1C7C75C98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)(_BYTE *a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SEStorageCredential.Endpoints.init(type:endpointIds:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C7C75D8C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (*(result + 16))
  {
    if (v5 == 3 && __PAIR128__((v3 >= 0xB) + v4 - 1, v3 - 11) < 4)
    {
      v6 = 0x30102u >> (8 * (v3 - 11));
      goto LABEL_12;
    }
  }

  else if ((v3 - 9) < 4u)
  {
    v6 = 0x30102u >> (8 * ((v3 - 9) & 0x1F));
    goto LABEL_12;
  }

  if (qword_1EC262230 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265818);
  sub_1C7BDF708(v3, v4, v5);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D584();
  sub_1C7BEA9D8(v3, v4, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v10 = 136315138;
    sub_1C7BDF708(v3, v4, v5);
    sub_1C7C7D324();
    v11 = sub_1C7C7D334();
    v13 = v12;

    v14 = sub_1C7BE42F8(v11, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Cannot initalize EndpointType using %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1CCA6C990](v15, -1, -1);
    MEMORY[0x1CCA6C990](v10, -1, -1);
  }

  result = sub_1C7BEA9D8(v3, v4, v5);
  LOBYTE(v6) = 4;
LABEL_12:
  *a2 = v6;
  return result;
}

uint64_t sub_1C7C75FBC()
{
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7CA0290);
  v7 = *(v0 + 16);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](0x203A736469202CLL, 0xE700000000000000);
  swift_beginAccess();
  v1 = *(v0 + 24);

  v3 = MEMORY[0x1CCA6B440](v2, MEMORY[0x1E69E6158]);
  v5 = v4;

  MEMORY[0x1CCA6B380](v3, v5);

  MEMORY[0x1CCA6B380](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7C760D8()
{
  if (*v0)
  {
    result = 0x746E696F70646E65;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C76114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEB00000000736449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C761F4(uint64_t a1)
{
  v2 = sub_1C7C78DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76230(uint64_t a1)
{
  v2 = sub_1C7C78DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageCredential.Endpoints.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SEStorageCredential.Endpoints.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C7C762C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265830, &unk_1C7C96B60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78DF4();
  sub_1C7C7DBA4();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_1C7C78E48();
  sub_1C7C7DA44();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    sub_1C7C2500C(&unk_1EC2643F0);
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageCredential.Endpoints.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SEStorageCredential.Endpoints.init(from:)(a1);
  return v2;
}

uint64_t SEStorageCredential.Endpoints.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265848, &qword_1C7C96B70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78DF4();
  sub_1C7C7DB94();
  if (v2)
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    sub_1C7C78EC0();
    sub_1C7C7D9B4();
    *(v1 + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    v12 = 1;
    sub_1C7C2500C(&qword_1EC264408);
    sub_1C7C7D9B4();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C76720@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SEStorageCredential.Endpoints();
  v5 = swift_allocObject();
  result = SEStorageCredential.Endpoints.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void static SEStorageCredential.find(in:withType:)(int64x2_t *a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v4 = a1[1].i64[0];
  v5 = vdupq_n_s64(0xF000000000000007);
  if (!v4)
  {
    goto LABEL_26;
  }

  v29 = v5;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = a1 + 2;
  v12 = *a2 != 26 || v7 != 0 || v8 != 3;
  while (1)
  {
    v18 = *v9;
    v19 = v9->u64[1];
    v20 = v19 >> 62;
    v30 = *v9;
    if ((v19 >> 62) <= 1)
    {
      break;
    }

    if (v20 != 2)
    {
LABEL_11:
      v13 = v9->i64[0];
      sub_1C7BFCFA8(v18.i64[0], v19);
      sub_1C7BFCFA8(v13, v19);
      sub_1C7BDF708(v6, v7, v8);
      v14 = v13;
      sub_1C7BEA9D8(v6, v7, v8);
      sub_1C7BFCF38(v13, v19);
      v34[0] = v6;
      v34[1] = v7;
      v35 = v8;
      v15 = &v14[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
      swift_beginAccess();
      v16 = *(v15 + 1);
      v17 = v15[16];
      v31 = *v15;
      v32 = v16;
      v33 = v17;
      sub_1C7BDF708(v31, v16, v17);
      LOBYTE(v15) = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(v34, &v31);

      sub_1C7BEA9D8(v31, v32, v33);
      v5 = v30;
      if (v15)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    if (!v12)
    {
      v24 = v9->i64[0];
      sub_1C7BFCFA8(v18.i64[0], v19);
      v25 = v24;
      v26 = 26;
      v27 = 0;
      v28 = 3;
      goto LABEL_29;
    }

LABEL_24:
    sub_1C7BFCFA8(v18.i64[0], v19);
    sub_1C7BDF708(v6, v7, v8);
    sub_1C7BEA9D8(v6, v7, v8);
    v5.i64[0] = v30.i64[0];
LABEL_12:
    sub_1C7BFCF38(v5.i64[0], v19);
    ++v9;
    if (!--v4)
    {
      v5 = v29;
      goto LABEL_26;
    }
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    goto LABEL_24;
  }

  v21 = v9->i64[0];
  if (v6 != *(v18.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid) || v7 != *(v18.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8))
  {
    v23 = sub_1C7C7DAA4();
    sub_1C7BFCFA8(v21, v19);
    sub_1C7BFCFA8(v21, v19);
    sub_1C7BDF708(v6, v7, 2u);
    sub_1C7BEA9D8(v6, v7, 2u);
    sub_1C7BFCF38(v21, v19);
    v5 = v30;
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  sub_1C7BFCFA8(v18.i64[0], v19);
  sub_1C7BFCFA8(v21, v19);
  sub_1C7BDF708(v6, v7, 2u);
  v26 = v6;
  v27 = v7;
  v28 = 2;
LABEL_29:
  sub_1C7BEA9D8(v26, v27, v28);
  sub_1C7BFCF38(v30.i64[0], v19);
  v5 = v30;
LABEL_26:
  *a3 = v5;
}

uint64_t sub_1C7C76A5C(uint64_t a1)
{
  v2 = sub_1C7C79064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76A98(uint64_t a1)
{
  v2 = sub_1C7C79064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76AD4()
{
  v1 = 0x5063697373616C63;
  v2 = 0x6C6569667269756DLL;
  if (*v0 != 2)
  {
    v2 = 6386800;
  }

  if (*v0)
  {
    v1 = 1296651109;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7C76B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C79FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C76B78(uint64_t a1)
{
  v2 = sub_1C7C78F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76BB4(uint64_t a1)
{
  v2 = sub_1C7C78F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76BF0(uint64_t a1)
{
  v2 = sub_1C7C79010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76C2C(uint64_t a1)
{
  v2 = sub_1C7C79010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76C68(uint64_t a1)
{
  v2 = sub_1C7C78FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76CA4(uint64_t a1)
{
  v2 = sub_1C7C78FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76CE0(uint64_t a1)
{
  v2 = sub_1C7C78F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76D1C(uint64_t a1)
{
  v2 = sub_1C7C78F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageCredential.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265858, &qword_1C7C96B78);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265860, &qword_1C7C96B80);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265868, &qword_1C7C96B88);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265870, &qword_1C7C96B90);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265878, &qword_1C7C96B98);
  v19 = *(v18 - 8);
  v46 = v18;
  v47 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  v23 = v2[1];
  v44 = *v2;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78F14();
  sub_1C7C7DBA4();
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v49) = 2;
      sub_1C7C78FBC();
      v27 = v38;
      v26 = v46;
      sub_1C7C7D9E4();
      v49 = v44;
      type metadata accessor for MemoryUsage();
      sub_1C7C790B8(&qword_1EC265240, 255, type metadata accessor for MemoryUsage);
      v28 = v40;
      sub_1C7C7DA44();
      v29 = v39;
    }

    else
    {
      LOBYTE(v49) = 3;
      sub_1C7C78F68();
      v27 = v41;
      v26 = v46;
      sub_1C7C7D9E4();
      v49 = v44;
      v48 = 0;
      type metadata accessor for SEPackageDetails();
      sub_1C7C790B8(&qword_1EC265890, 255, type metadata accessor for SEPackageDetails);
      v28 = v43;
      v33 = v45;
      sub_1C7C7DA44();
      if (!v33)
      {
        v49 = v23 & 0x3FFFFFFFFFFFFFFFLL;
        v48 = 1;
        type metadata accessor for SEStorageCredential.Endpoints();
        sub_1C7C790B8(&qword_1EC265898, v34, type metadata accessor for SEStorageCredential.Endpoints);
        sub_1C7C7DA44();
      }

      v29 = v42;
    }

    (*(v29 + 8))(v27, v28);
  }

  else
  {
    if (v25)
    {
      LOBYTE(v49) = 1;
      sub_1C7C79010();
      v30 = v46;
      sub_1C7C7D9E4();
      v49 = v44;
      type metadata accessor for ESIMProfileInfo();
      sub_1C7C790B8(&qword_1EC2658B0, 255, type metadata accessor for ESIMProfileInfo);
      v31 = v37;
      sub_1C7C7DA44();
      (*(v36 + 8))(v13, v31);
      return (*(v47 + 8))(v22, v30);
    }

    LOBYTE(v49) = 0;
    sub_1C7C79064();
    v26 = v46;
    sub_1C7C7D9E4();
    v49 = v44;
    type metadata accessor for SEPackageDetails();
    sub_1C7C790B8(&qword_1EC265890, 255, type metadata accessor for SEPackageDetails);
    sub_1C7C7DA44();
    (*(v35 + 8))(v17, v14);
  }

  return (*(v47 + 8))(v22, v26);
}

uint64_t SEStorageCredential.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658C0, &qword_1C7C96BA0);
  v58 = *(v56 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v50 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658C8, &qword_1C7C96BA8);
  v57 = *(v54 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v50 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658D0, &qword_1C7C96BB0);
  v55 = *(v52 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658D8, &qword_1C7C96BB8);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658E0, &unk_1C7C96BC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1C7C78F14();
  v21 = v62;
  sub_1C7C7DB94();
  if (!v21)
  {
    v22 = v13;
    v51 = v10;
    v23 = v9;
    v24 = v59;
    v25 = v60;
    v62 = v15;
    v26 = v61;
    v27 = sub_1C7C7D9D4();
    v28 = (2 * *(v27 + 16)) | 1;
    v66 = v27;
    v67 = v27 + 32;
    v68 = 0;
    v69 = v28;
    v29 = sub_1C7BEAAD8();
    if (v29 == 4 || v68 != v69 >> 1)
    {
      v35 = sub_1C7C7D7C4();
      swift_allocError();
      v37 = v36;
      v38 = v18;
      v39 = v14;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v37 = &type metadata for SEStorageCredential;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v62 + 8))(v38, v39);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v70) = 2;
          sub_1C7C78FBC();
          sub_1C7C7D944();
          type metadata accessor for MemoryUsage();
          sub_1C7C790B8(&qword_1EC264410, 255, type metadata accessor for MemoryUsage);
          v42 = v54;
          sub_1C7C7D9B4();
          (*(v57 + 8))(v24, v42);
          (*(v62 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v34 = v70;
          v33 = 0x8000000000000000;
        }

        else
        {
          LOBYTE(v70) = 3;
          sub_1C7C78F68();
          sub_1C7C7D944();
          type metadata accessor for SEPackageDetails();
          LOBYTE(v65) = 0;
          sub_1C7C790B8(&qword_1EC2658E8, 255, type metadata accessor for SEPackageDetails);
          v46 = v56;
          sub_1C7C7D9B4();
          v47 = v62;
          v48 = v70;
          type metadata accessor for SEStorageCredential.Endpoints();
          v64 = 1;
          sub_1C7C790B8(&qword_1EC2658F0, v49, type metadata accessor for SEStorageCredential.Endpoints);
          sub_1C7C7D9B4();
          (*(v58 + 8))(v25, v46);
          v34 = v48;
          (*(v47 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = v65 | 0xC000000000000000;
        }
      }

      else if (v29)
      {
        LOBYTE(v70) = 1;
        sub_1C7C79010();
        sub_1C7C7D944();
        v43 = v62;
        v44 = v26;
        type metadata accessor for ESIMProfileInfo();
        sub_1C7C790B8(&qword_1EC2658F8, 255, type metadata accessor for ESIMProfileInfo);
        v45 = v52;
        sub_1C7C7D9B4();
        (*(v55 + 8))(v23, v45);
        (*(v43 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v34 = v70;
        v33 = 0x4000000000000000;
        v26 = v44;
      }

      else
      {
        LOBYTE(v70) = 0;
        sub_1C7C79064();
        v30 = v22;
        sub_1C7C7D944();
        v31 = v62;
        type metadata accessor for SEPackageDetails();
        sub_1C7C790B8(&qword_1EC2658E8, 255, type metadata accessor for SEPackageDetails);
        v32 = v51;
        sub_1C7C7D9B4();
        (*(v53 + 8))(v30, v32);
        (*(v31 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = v70;
      }

      *v26 = v34;
      v26[1] = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

uint64_t sub_1C7C77DD0(uint64_t a1)
{
  v2 = sub_1C7C79250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77E0C(uint64_t a1)
{
  v2 = sub_1C7C79250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77E48(uint64_t a1)
{
  v2 = sub_1C7C791FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77E84(uint64_t a1)
{
  v2 = sub_1C7C791FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77EC0()
{
  v1 = 0x6F72696C41;
  v2 = 1701670728;
  if (*v0 != 2)
  {
    v2 = 0x6172647948;
  }

  if (*v0)
  {
    v1 = 0x616873696C41;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7C77F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C7A16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C77F50(uint64_t a1)
{
  v2 = sub_1C7C79100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77F8C(uint64_t a1)
{
  v2 = sub_1C7C79100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77FC8(uint64_t a1)
{
  v2 = sub_1C7C791A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C78004(uint64_t a1)
{
  v2 = sub_1C7C791A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C78040(uint64_t a1)
{
  v2 = sub_1C7C79154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C7807C(uint64_t a1)
{
  v2 = sub_1C7C79154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EndpointType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265900, &qword_1C7C96BD0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265908, &qword_1C7C96BD8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265910, &qword_1C7C96BE0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265918, &qword_1C7C96BE8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265920, &qword_1C7C96BF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C79100();
  sub_1C7C7DBA4();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1C7C791A8();
      v24 = v33;
      sub_1C7C7D9E4();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1C7C79154();
      v24 = v36;
      sub_1C7C7D9E4();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1C7C791FC();
    v24 = v30;
    sub_1C7C7D9E4();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1C7C79250();
  sub_1C7C7D9E4();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t EndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t EndpointType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265950, &qword_1C7C96BF8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265958, &qword_1C7C96C00);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265960, &qword_1C7C96C08);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265968, &qword_1C7C96C10);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265970, &qword_1C7C96C18);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C7C79100();
  v21 = v53;
  sub_1C7C7DB94();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1C7C7D9D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1C7BEAAD8();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1C7C7D7C4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v34 = &type metadata for EndpointType;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1C7C791FC();
        v39 = v42;
        sub_1C7C7D944();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1C7C79250();
        v31 = v42;
        sub_1C7C7D944();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1C7C791A8();
      v38 = v42;
      sub_1C7C7D944();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1C7C79154();
      v40 = v42;
      sub_1C7C7D944();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_1C7C78BF0()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC265818);
  __swift_project_value_buffer(v0, qword_1EC265818);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C78C70(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  v18 = v5;
  sub_1C7BDF708(v3, v4, v5);
  sub_1C7C75D8C(&v16, &v14);
  v6 = v14;
  if (v14 == 4)
  {

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C7C7D794();

    v14 = 0xD000000000000024;
    v15 = 0x80000001C7CA0150;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    sub_1C7BDF708(v3, v4, v5);
    sub_1C7C7D324();
    v7 = sub_1C7C7D334();
    v9 = v8;

    sub_1C7BEA9D8(v3, v4, v5);
    MEMORY[0x1CCA6B380](v7, v9);

    v10 = v14;
    v11 = v15;
    sub_1C7BEADA0();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    sub_1C7BEA9D8(v3, v4, v5);
    type metadata accessor for SEStorageCredential.Endpoints();
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = a2;
  }

  return result;
}

unint64_t sub_1C7C78DF4()
{
  result = qword_1EC265838;
  if (!qword_1EC265838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265838);
  }

  return result;
}

unint64_t sub_1C7C78E48()
{
  result = qword_1EC265840;
  if (!qword_1EC265840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265840);
  }

  return result;
}

unint64_t sub_1C7C78EC0()
{
  result = qword_1EC265850;
  if (!qword_1EC265850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265850);
  }

  return result;
}

unint64_t sub_1C7C78F14()
{
  result = qword_1EC265880;
  if (!qword_1EC265880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265880);
  }

  return result;
}

unint64_t sub_1C7C78F68()
{
  result = qword_1EC265888;
  if (!qword_1EC265888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265888);
  }

  return result;
}

unint64_t sub_1C7C78FBC()
{
  result = qword_1EC2658A0;
  if (!qword_1EC2658A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658A0);
  }

  return result;
}

unint64_t sub_1C7C79010()
{
  result = qword_1EC2658A8;
  if (!qword_1EC2658A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658A8);
  }

  return result;
}

unint64_t sub_1C7C79064()
{
  result = qword_1EC2658B8;
  if (!qword_1EC2658B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658B8);
  }

  return result;
}

uint64_t sub_1C7C790B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C79100()
{
  result = qword_1EC265928;
  if (!qword_1EC265928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265928);
  }

  return result;
}

unint64_t sub_1C7C79154()
{
  result = qword_1EC265930;
  if (!qword_1EC265930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265930);
  }

  return result;
}

unint64_t sub_1C7C791A8()
{
  result = qword_1EC265938;
  if (!qword_1EC265938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265938);
  }

  return result;
}

unint64_t sub_1C7C791FC()
{
  result = qword_1EC265940;
  if (!qword_1EC265940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265940);
  }

  return result;
}

unint64_t sub_1C7C79250()
{
  result = qword_1EC265948;
  if (!qword_1EC265948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265948);
  }

  return result;
}

unint64_t sub_1C7C792A8()
{
  result = qword_1EC265978;
  if (!qword_1EC265978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265978);
  }

  return result;
}

uint64_t sub_1C7C79308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C79380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C7C793FC(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

unint64_t sub_1C7C79604()
{
  result = qword_1EC265980;
  if (!qword_1EC265980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265980);
  }

  return result;
}

unint64_t sub_1C7C7965C()
{
  result = qword_1EC265988;
  if (!qword_1EC265988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265988);
  }

  return result;
}

unint64_t sub_1C7C796B4()
{
  result = qword_1EC265990;
  if (!qword_1EC265990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265990);
  }

  return result;
}

unint64_t sub_1C7C7970C()
{
  result = qword_1EC265998;
  if (!qword_1EC265998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265998);
  }

  return result;
}

unint64_t sub_1C7C79764()
{
  result = qword_1EC2659A0;
  if (!qword_1EC2659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659A0);
  }

  return result;
}

unint64_t sub_1C7C797BC()
{
  result = qword_1EC2659A8;
  if (!qword_1EC2659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659A8);
  }

  return result;
}

unint64_t sub_1C7C79814()
{
  result = qword_1EC2659B0;
  if (!qword_1EC2659B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659B0);
  }

  return result;
}

unint64_t sub_1C7C7986C()
{
  result = qword_1EC2659B8;
  if (!qword_1EC2659B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659B8);
  }

  return result;
}

unint64_t sub_1C7C798C4()
{
  result = qword_1EC2659C0;
  if (!qword_1EC2659C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659C0);
  }

  return result;
}

unint64_t sub_1C7C7991C()
{
  result = qword_1EC2659C8;
  if (!qword_1EC2659C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659C8);
  }

  return result;
}

unint64_t sub_1C7C79974()
{
  result = qword_1EC2659D0;
  if (!qword_1EC2659D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659D0);
  }

  return result;
}

unint64_t sub_1C7C799CC()
{
  result = qword_1EC2659D8;
  if (!qword_1EC2659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659D8);
  }

  return result;
}

unint64_t sub_1C7C79A24()
{
  result = qword_1EC2659E0;
  if (!qword_1EC2659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659E0);
  }

  return result;
}

unint64_t sub_1C7C79A7C()
{
  result = qword_1EC2659E8;
  if (!qword_1EC2659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659E8);
  }

  return result;
}

unint64_t sub_1C7C79AD4()
{
  result = qword_1EC2659F0;
  if (!qword_1EC2659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659F0);
  }

  return result;
}

unint64_t sub_1C7C79B2C()
{
  result = qword_1EC2659F8;
  if (!qword_1EC2659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659F8);
  }

  return result;
}

unint64_t sub_1C7C79B84()
{
  result = qword_1EC265A00;
  if (!qword_1EC265A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A00);
  }

  return result;
}

unint64_t sub_1C7C79BDC()
{
  result = qword_1EC265A08;
  if (!qword_1EC265A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A08);
  }

  return result;
}

unint64_t sub_1C7C79C34()
{
  result = qword_1EC265A10;
  if (!qword_1EC265A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A10);
  }

  return result;
}

unint64_t sub_1C7C79C8C()
{
  result = qword_1EC265A18;
  if (!qword_1EC265A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A18);
  }

  return result;
}

unint64_t sub_1C7C79CE4()
{
  result = qword_1EC265A20;
  if (!qword_1EC265A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A20);
  }

  return result;
}

unint64_t sub_1C7C79D3C()
{
  result = qword_1EC265A28;
  if (!qword_1EC265A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A28);
  }

  return result;
}

unint64_t sub_1C7C79D94()
{
  result = qword_1EC265A30;
  if (!qword_1EC265A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A30);
  }

  return result;
}

unint64_t sub_1C7C79DEC()
{
  result = qword_1EC265A38;
  if (!qword_1EC265A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A38);
  }

  return result;
}

unint64_t sub_1C7C79E44()
{
  result = qword_1EC265A40;
  if (!qword_1EC265A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A40);
  }

  return result;
}

unint64_t sub_1C7C79E9C()
{
  result = qword_1EC265A48;
  if (!qword_1EC265A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A48);
  }

  return result;
}

unint64_t sub_1C7C79EF4()
{
  result = qword_1EC265A50;
  if (!qword_1EC265A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A50);
  }

  return result;
}

unint64_t sub_1C7C79F4C()
{
  result = qword_1EC265A58;
  if (!qword_1EC265A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A58);
  }

  return result;
}

unint64_t sub_1C7C79FA4()
{
  result = qword_1EC265A60;
  if (!qword_1EC265A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A60);
  }

  return result;
}

uint64_t sub_1C7C79FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5063697373616C63 && a2 == 0xEE006567616B6361;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1296651109 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6569667269756DLL && a2 == 0xE900000000000064 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6386800 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C7C7A16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72696C41 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616873696C41 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701670728 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172647948 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  LODWORD(v34) = a6;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v14 = sub_1C7C7D634();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  a9[1] = a2;
  v24 = v33;
  a9[2] = v32;
  a9[3] = v24;
  v25 = type metadata accessor for UserDefaultBacked();
  *(a9 + *(v25 + 36)) = v34;
  v26 = a7;
  (*(v15 + 16))(v19, a7, v14);
  if ((*(v20 + 48))(v19, 1, a8) == 1)
  {
    v27 = *(v15 + 8);
    v27(a7, v14);
    v27(v19, v14);
    return (*(v20 + 32))(a9 + *(v25 + 32), v35, a8);
  }

  else
  {
    v34 = v25;
    v29 = *(v20 + 32);
    v29(v23, v19, a8);
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    (*(v15 + 8))(v26, v14);
    v31 = *(v20 + 8);
    if (has_internal_diagnostics)
    {
      v31(v35, a8);
      return (v29)(a9 + *(v34 + 32), v23, a8);
    }

    else
    {
      v31(v23, a8);
      return (v29)(a9 + *(v34 + 32), v35, a8);
    }
  }
}

void UserDefaultBacked.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = (*(*(sub_1C7C7D634() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v23 - v7;
  if (v2[*(a1 + 36)] == 1 && !os_variant_has_internal_diagnostics())
  {
    v21 = *(*(v5 - 8) + 16);
    v22 = &v2[*(a1 + 32)];

    v21(a2, v22, v5);
  }

  else
  {
    v9 = *v2;
    v10 = *(v2 + 1);
    v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v12 = sub_1C7C7D2E4();
    v13 = [v11 initWithSuiteName_];

    if (v13)
    {
      v14 = *(v2 + 2);
      v15 = *(v2 + 3);
      v16 = sub_1C7C7D2E4();
      v17 = [v13 valueForKey_];

      if (v17)
      {
        sub_1C7C7D664();
        swift_unknownObjectRelease();
        sub_1C7C74CD8(v23, v24);
      }

      else
      {
        memset(v24, 0, sizeof(v24));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
      v18 = swift_dynamicCast();
      v19 = *(v5 - 8);
      v20 = *(v19 + 56);
      if (v18)
      {
        v20(v8, 0, 1, v5);
        (*(v19 + 32))(a2, v8, v5);
      }

      else
      {
        v20(v8, 1, 1, v5);
        (*(v19 + 16))(a2, &v2[*(a1 + 32)], v5);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void (*UserDefaultBacked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBacked.wrappedValue.getter(a2, v11);
  return sub_1C7C7A944;
}

uint64_t UserDefaultBackedOptional.init(suiteName:key:internalOnly:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void UserDefaultBackedOptional.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  if (*(v2 + 32) == 1 && !os_variant_has_internal_diagnostics())
  {
    v16 = *(*(*(a1 + 16) - 8) + 56);

    v16(a2, 1, 1);
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1C7C7D2E4();
    v11 = [v9 initWithSuiteName_];

    if (v11)
    {
      v12 = sub_1C7C7D2E4();
      v13 = [v11 valueForKey_];

      if (v13)
      {
        sub_1C7C7D664();
        swift_unknownObjectRelease();
        sub_1C7C74CD8(&v17, v18);
      }

      else
      {
        memset(v18, 0, sizeof(v18));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
      v14 = *(a1 + 16);
      v15 = swift_dynamicCast();
      (*(*(v14 - 8) + 56))(a2, v15 ^ 1u, 1, v14);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C7C7AB48(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v6 = type metadata accessor for UserDefaultBackedOptional();
  UserDefaultBackedOptional.wrappedValue.getter(v6, a4);
}

void sub_1C7C7ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1C7C7D634();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  v11 = type metadata accessor for UserDefaultBackedOptional();
  UserDefaultBackedOptional.wrappedValue.setter(v9, v11);
}

void UserDefaultBackedOptional.wrappedValue.setter(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1C7C7D634();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 32) == 1 && !os_variant_has_internal_diagnostics())
  {
    v27 = *(v29 + 8);

    v27(a1, v5);
  }

  else
  {
    v14 = *v2;
    v15 = v2[1];
    v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v17 = sub_1C7C7D2E4();
    v18 = [v16 initWithSuiteName_];

    if (v18)
    {
      (*(v29 + 16))(v9, a1, v5);
      if ((*(v10 + 48))(v9, 1, v4) == 1)
      {
        v19 = *(v29 + 8);
        v29 += 8;
        v19(v9, v5);
        v20 = v2[2];
        v21 = v2[3];
        v22 = sub_1C7C7D2E4();
        [v18 removeObjectForKey_];

        v19(a1, v5);
      }

      else
      {
        (*(v10 + 32))(v13, v9, v4);
        v23 = sub_1C7C7DA94();
        v24 = v2[2];
        v25 = v2[3];
        v26 = sub_1C7C7D2E4();
        [v18 setValue:v23 forKey:v26];

        swift_unknownObjectRelease();
        (*(v29 + 8))(a1, v5);
        (*(v10 + 8))(v13, v4);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void (*UserDefaultBackedOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = sub_1C7C7D634();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v14 = *v2;
  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  v17 = *(v2 + 32);
  UserDefaultBackedOptional.wrappedValue.getter(a2, v12);
  return sub_1C7C7B0E0;
}

void sub_1C7C7B0E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefaultBackedOptional.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefaultBackedOptional.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefaultBackedCodable.init(suiteName:key:initial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for UserDefaultBackedCodable();
  v11 = *(*(a6 - 8) + 32);
  v12 = a7 + *(v10 + 48);

  return v11(v12, a5, a6);
}

void UserDefaultBackedCodable.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = (*(*(sub_1C7C7D634() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v25 - v7;
  v9 = *v2;
  v10 = *(v2 + 1);
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_1C7C7D2E4();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = *(v2 + 2);
    v15 = *(v2 + 3);
    v16 = sub_1C7C7D2E4();
    v17 = [v13 objectForKey_];

    if (v17)
    {
      sub_1C7C7D664();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      if (swift_dynamicCast())
      {
        v25[0] = v2;
        v18 = v25[2];
        v19 = v25[3];
        v20 = sub_1C7C7CF84();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        swift_allocObject();
        sub_1C7C7CF74();
        v23 = *(a1 + 24);
        sub_1C7C7CF64();
        sub_1C7BDF778(v18, v19);

        v24 = *(v5 - 8);
        (*(v24 + 56))(v8, 0, 1, v5);
        (*(v24 + 32))(a2, v8, v5);
        return;
      }
    }

    else
    {
      sub_1C7C7BE48(v28);
    }

    (*(*(v5 - 8) + 16))(a2, &v2[*(a1 + 48)], v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C7C7B568(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

void (*UserDefaultBackedCodable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBackedCodable.wrappedValue.getter(a2, v11);
  return sub_1C7C7B6E4;
}

void sub_1C7C7B6FC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v10);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    a3((*a1)[5], v10);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t UserDefaultBackedCodableOptional.init(suiteName:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void UserDefaultBackedCodableOptional.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1C7C7D2E4();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_1C7C7D2E4();
    v13 = [v11 objectForKey_];

    if (v13)
    {
      sub_1C7C7D664();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        v14 = sub_1C7C7CF84();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        sub_1C7C7CF74();
        v18 = *(a1 + 16);
        v17 = *(a1 + 24);
        sub_1C7C7CF64();
        sub_1C7BDF778(v19, v20);

        (*(*(v18 - 8) + 56))(a2, 0, 1);
        return;
      }
    }

    else
    {
      sub_1C7C7BE48(v23);
    }

    (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C7C7BA34(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v9 = type metadata accessor for UserDefaultBackedCodableOptional();
  UserDefaultBackedCodableOptional.wrappedValue.getter(v9, a4);
}

uint64_t UserDefaultBackedCodableOptional.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1C7C7C014(a1, a2);
  v4 = *(a2 + 16);
  v5 = sub_1C7C7D634();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*UserDefaultBackedCodableOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = sub_1C7C7D634();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v14 = *v2;
  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  UserDefaultBackedCodableOptional.wrappedValue.getter(a2, v12);
  return sub_1C7C7BC34;
}

void sub_1C7C7BC34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1C7C7C014(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1C7C7C014((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1C7C7BD20(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 36)) != 1 || os_variant_has_internal_diagnostics())
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1C7C7D2E4();
    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      v9 = *(a2 + 16);
      v10 = sub_1C7C7DA94();
      v11 = v2[2];
      v12 = v2[3];
      v13 = sub_1C7C7D2E4();
      [v8 setValue:v10 forKey:v13];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C7C7BE48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C7C7BEB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = v2[1];
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = sub_1C7C7D2E4();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_1C7C7CFB4();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1C7C7CFA4();
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
    v15 = sub_1C7C7CF94();
    v17 = v16;

    v18 = sub_1C7C7D024();
    v19 = v3[2];
    v20 = v3[3];
    v21 = sub_1C7C7D2E4();
    [v9 setValue:v18 forKey:?];
    sub_1C7BDF778(v15, v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C7C7C014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[1];
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1C7C7D2E4();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    if ((*(*(*(a2 + 16) - 8) + 48))(a1, 1, *(a2 + 16)) == 1)
    {
      v11 = v3[2];
      v12 = v3[3];
      v23 = sub_1C7C7D2E4();
      [v10 removeObjectForKey_];
    }

    else
    {
      v13 = sub_1C7C7CFB4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_1C7C7CFA4();
      sub_1C7C7D634();
      v24 = *(a2 + 32);
      swift_getWitnessTable();
      v16 = sub_1C7C7CF94();
      v18 = v17;

      v19 = sub_1C7C7D024();
      v20 = v3[2];
      v21 = v3[3];
      v22 = sub_1C7C7D2E4();
      [v10 setValue:v19 forKey:v22];
      sub_1C7BDF778(v16, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C7C7C23C(uint64_t a1)
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

uint64_t sub_1C7C7C2C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C7C7C454(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1C7C7C6B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C7C7C70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C7C7C754(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7C7C7B8(uint64_t a1)
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

uint64_t sub_1C7C7C838(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C7C7C9C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1C7C7CC1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getSBUserNotificationDismissOnLock_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(SESSessionManagerInterface *)v0];
}

void SESClientSetMachServiceName_cold_1(void *a1)
{
  v1 = a1;
  v2 = +[SESClient sharedClient];
  [(SESClient *)v2 setServiceName:v1];
}

uint64_t DERParseSequenceSpec()
{
  return MEMORY[0x1EEE62B90]();
}

{
  return MEMORY[0x1EEE62B98]();
}