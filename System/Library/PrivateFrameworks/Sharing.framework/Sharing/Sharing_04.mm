uint64_t storeEnumTagSinglePayload for SFString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A97B15E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A97B163C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A97B165C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1A97B1694()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A97B16D4()
{
  result = qword_1EB3B0FD0;
  if (!qword_1EB3B0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FD0);
  }

  return result;
}

unint64_t sub_1A97B172C()
{
  result = qword_1EB3B0FD8;
  if (!qword_1EB3B0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FD8);
  }

  return result;
}

unint64_t sub_1A97B1784()
{
  result = qword_1EB3B0FE0;
  if (!qword_1EB3B0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FE0);
  }

  return result;
}

unint64_t sub_1A97B17DC()
{
  result = qword_1EB3B0FE8;
  if (!qword_1EB3B0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FE8);
  }

  return result;
}

unint64_t sub_1A97B1834()
{
  result = qword_1EB3B0FF0;
  if (!qword_1EB3B0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FF0);
  }

  return result;
}

unint64_t sub_1A97B188C()
{
  result = qword_1EB3B0FF8;
  if (!qword_1EB3B0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0FF8);
  }

  return result;
}

unint64_t sub_1A97B18E4()
{
  result = qword_1EB3B1000;
  if (!qword_1EB3B1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1000);
  }

  return result;
}

unint64_t sub_1A97B193C()
{
  result = qword_1EB3B1008;
  if (!qword_1EB3B1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1008);
  }

  return result;
}

unint64_t sub_1A97B1994()
{
  result = qword_1EB3B1010;
  if (!qword_1EB3B1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1010);
  }

  return result;
}

unint64_t sub_1A97B1B54()
{
  result = qword_1EB3B1040;
  if (!qword_1EB3B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1040);
  }

  return result;
}

unint64_t sub_1A97B1BAC()
{
  result = qword_1EB3B1048;
  if (!qword_1EB3B1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1048);
  }

  return result;
}

unint64_t sub_1A97B1C04()
{
  result = qword_1EB3B1050;
  if (!qword_1EB3B1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1050);
  }

  return result;
}

unint64_t sub_1A97B1C5C()
{
  result = qword_1EB3B1058;
  if (!qword_1EB3B1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1058);
  }

  return result;
}

unint64_t sub_1A97B1CB4()
{
  result = qword_1EB3B1060;
  if (!qword_1EB3B1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1060);
  }

  return result;
}

unint64_t sub_1A97B1D0C()
{
  result = qword_1EB3B1068;
  if (!qword_1EB3B1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1068);
  }

  return result;
}

unint64_t sub_1A97B1D64()
{
  result = qword_1EB3B1070;
  if (!qword_1EB3B1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1070);
  }

  return result;
}

unint64_t sub_1A97B1DBC()
{
  result = qword_1EB3B1078;
  if (!qword_1EB3B1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1078);
  }

  return result;
}

unint64_t sub_1A97B1E14()
{
  result = qword_1EB3B1080;
  if (!qword_1EB3B1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1080);
  }

  return result;
}

unint64_t sub_1A97B1E6C()
{
  result = qword_1EB3B1088;
  if (!qword_1EB3B1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1088);
  }

  return result;
}

unint64_t sub_1A97B1EC4()
{
  result = qword_1EB3B1090;
  if (!qword_1EB3B1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1090);
  }

  return result;
}

unint64_t sub_1A97B1F1C()
{
  result = qword_1EB3B1098;
  if (!qword_1EB3B1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1098);
  }

  return result;
}

unint64_t sub_1A97B1F74()
{
  result = qword_1EB3B10A0;
  if (!qword_1EB3B10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10A0);
  }

  return result;
}

unint64_t sub_1A97B1FCC()
{
  result = qword_1EB3B10A8;
  if (!qword_1EB3B10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10A8);
  }

  return result;
}

unint64_t sub_1A97B2024()
{
  result = qword_1EB3B10B0;
  if (!qword_1EB3B10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10B0);
  }

  return result;
}

unint64_t sub_1A97B207C()
{
  result = qword_1EB3B10B8;
  if (!qword_1EB3B10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10B8);
  }

  return result;
}

unint64_t sub_1A97B20D4()
{
  result = qword_1EB3B10C0;
  if (!qword_1EB3B10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10C0);
  }

  return result;
}

unint64_t sub_1A97B212C()
{
  result = qword_1EB3B10C8;
  if (!qword_1EB3B10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10C8);
  }

  return result;
}

unint64_t sub_1A97B2184()
{
  result = qword_1EB3B10D0;
  if (!qword_1EB3B10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10D0);
  }

  return result;
}

unint64_t sub_1A97B21DC()
{
  result = qword_1EB3B10D8;
  if (!qword_1EB3B10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B10D8);
  }

  return result;
}

uint64_t sub_1A97B22EC()
{
  v0 = SFUserDefault.hasValueOnDisk.getter();
  if (v0)
  {
    SFUserDefault.clearValueOnDisk()();
  }

  return v0 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_BYTE *sub_1A97B2380@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1A97B2420(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1A9976C60() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A97B2988;

  return sub_1A97A6AE8(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1A97B251C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A97A793C(a1, v1[4], v1[5]);
}

uint64_t sub_1A97B2528(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1A9976C60() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1A97B2638;

  return sub_1A97A7268(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_1A97B2638()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1A97B2818(uint64_t a1, unint64_t *a2)
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

uint64_t SFAirDrop.ContactInfo.Handle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1A97B2A2C();
  return v1;
}

uint64_t sub_1A97B2A38()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t sub_1A97B2A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97B2B38(uint64_t a1)
{
  v2 = sub_1A97B4000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2B74(uint64_t a1)
{
  v2 = sub_1A97B4000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97B2BB0(uint64_t a1)
{
  v2 = sub_1A97B4054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2BEC(uint64_t a1)
{
  v2 = sub_1A97B4054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97B2C28(uint64_t a1)
{
  v2 = sub_1A97B40A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B2C64(uint64_t a1)
{
  v2 = sub_1A97B40A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactInfo.Handle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13B0, &qword_1A9991C38);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13B8, &qword_1A9991C40);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13C0, &qword_1A9991C48);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B4000();
  sub_1A9977AA0();
  if (v16)
  {
    v30 = 1;
    sub_1A97B4054();
    v18 = v24;
    sub_1A9977640();
    v19 = v26;
    sub_1A9977690();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1A97B40A8();
    sub_1A9977640();
    v20 = v23;
    sub_1A9977690();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t SFAirDrop.ContactInfo.Handle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13E0, &qword_1A9991C50);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13E8, &qword_1A9991C58);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13F0, &qword_1A9991C60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A97B4000();
  v17 = v39;
  sub_1A9977A70();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_1A9977620();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_1A97B2970();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_1A9977300();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v30 = &type metadata for SFAirDrop.ContactInfo.Handle;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_1A97B4054();
        sub_1A9977530();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_1A99775A0();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_1A97B40A8();
        v33 = v9;
        sub_1A9977530();
        v23 = v38;
        v22 = v39;
        v25 = sub_1A99775A0();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t sub_1A97B34B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1A97B2A2C();
  return v1;
}

uint64_t SFAirDrop.ContactInfo.givenName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFAirDrop.ContactInfo.fullName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SFAirDrop.ContactInfo.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1A97B2A2C();
}

uint64_t SFAirDrop.ContactInfo.vcard.getter()
{
  v1 = *(v0 + 56);
  sub_1A97B40FC(v1, *(v0 + 64));
  return v1;
}

__n128 SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a5[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  result = *a5;
  a8[2] = *a5;
  a8[3].n128_u8[0] = v8;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u64[0] = a7;
  return result;
}

uint64_t SFAirDrop.ContactInfo.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  if (v0[1])
  {
    v3 = *v0;
    v4 = v0[1];
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v3, v4);

  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return 0x49746361746E6F43;
}

uint64_t sub_1A97B36AC()
{
  v1 = 0x6D614E6E65766967;
  v2 = 0x656C646E6168;
  if (*v0 != 2)
  {
    v2 = 0x6472616376;
  }

  if (*v0)
  {
    v1 = 0x656D614E6C6C7566;
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

uint64_t sub_1A97B3724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97B4D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97B374C(uint64_t a1)
{
  v2 = sub_1A97B42C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97B3788(uint64_t a1)
{
  v2 = sub_1A97B42C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B13F8, &qword_1A9991C68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v24 = v1[3];
  v25 = v10;
  v11 = v1[4];
  v22 = v1[5];
  v23 = v11;
  v30 = *(v1 + 48);
  v12 = v1[7];
  v20 = v1[8];
  v21 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B42C0();
  sub_1A9977AA0();
  LOBYTE(v27) = 0;
  v14 = v26;
  sub_1A9977650();
  if (!v14)
  {
    v15 = v30;
    v17 = v22;
    v16 = v23;
    v18 = v21;
    LOBYTE(v27) = 1;
    sub_1A9977690();
    v27 = v16;
    v28 = v17;
    v29 = v15;
    v31 = 2;
    sub_1A97B2A2C();
    sub_1A97B4314();
    sub_1A99776E0();
    sub_1A97B4368();
    v27 = v18;
    v28 = v20;
    v31 = 3;
    sub_1A97B40FC(v18, v20);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v27, v28);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDrop.ContactInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1410, &qword_1A9991C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97B42C0();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v36) = 0;
  v11 = sub_1A9977550();
  v13 = v12;
  v29 = v11;
  LOBYTE(v36) = 1;
  v14 = sub_1A99775A0();
  v30 = v15;
  v28 = v14;
  LOBYTE(v31) = 2;
  sub_1A97B4418();
  sub_1A99775F0();
  v27 = v36;
  v26 = v37;
  v47 = v38;
  v48 = 3;
  sub_1A97B446C();
  sub_1A99775F0();
  (*(v6 + 8))(v9, v5);
  v16 = v46;
  v25 = v45;
  v17 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v13;
  v18 = v28;
  v19 = v30;
  *&v32 = v28;
  *(&v32 + 1) = v30;
  v20 = v26;
  *&v33 = v27;
  *(&v33 + 1) = v26;
  HIDWORD(v24) = v47;
  LOBYTE(v34) = v47;
  *(&v34 + 1) = v45;
  v35 = v46;
  *(a2 + 64) = v46;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  sub_1A97B44C0(&v31, &v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v36 = v17;
  v37 = v13;
  v38 = v18;
  v39 = v19;
  v40 = v27;
  v41 = v20;
  v42 = BYTE4(v24);
  v43 = v25;
  v44 = v16;
  return sub_1A97B44F8(&v36);
}

uint64_t SFAirDrop.ContactInfo.accountHandle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1A97B2A2C();
  return v1;
}

uint64_t _s7Sharing9SFAirDropO11ContactInfoV6HandleO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_1A97B2A2C();
    sub_1A97B2A2C();
    sub_1A97B4368();
    sub_1A97B4368();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_1A99777E0();
    sub_1A97B2A2C();
    sub_1A97B2A2C();
    sub_1A97B4368();
    sub_1A97B4368();
    return v14 & 1;
  }

LABEL_15:
  sub_1A97B2A2C();
  sub_1A97B2A2C();
  sub_1A97B4368();
  sub_1A97B4368();
  return 1;
}

unint64_t sub_1A97B4000()
{
  result = qword_1EB3B13C8;
  if (!qword_1EB3B13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13C8);
  }

  return result;
}

unint64_t sub_1A97B4054()
{
  result = qword_1EB3B13D0;
  if (!qword_1EB3B13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13D0);
  }

  return result;
}

unint64_t sub_1A97B40A8()
{
  result = qword_1EB3B13D8;
  if (!qword_1EB3B13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B13D8);
  }

  return result;
}

uint64_t sub_1A97B40FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t _s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 56);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v4 != v10 || v5 != v11) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v23[0] = v6;
  v23[1] = v7;
  v24 = v8;
  v21[0] = v12;
  v21[1] = v13;
  v22 = v14;
  sub_1A97B2A2C();
  sub_1A97B2A2C();
  v15 = _s7Sharing9SFAirDropO11ContactInfoV6HandleO2eeoiySbAG_AGtFZ_0(v23, v21);
  sub_1A97B4368();
  sub_1A97B4368();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return sub_1A993184C(v20, v19, v18, v17);
}

unint64_t sub_1A97B42C0()
{
  result = qword_1EB3B1400;
  if (!qword_1EB3B1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1400);
  }

  return result;
}

unint64_t sub_1A97B4314()
{
  result = qword_1EB3B1408;
  if (!qword_1EB3B1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1408);
  }

  return result;
}

unint64_t sub_1A97B4370()
{
  result = qword_1EB3AC8B8;
  if (!qword_1EB3AC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8B8);
  }

  return result;
}

uint64_t sub_1A97B43C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1A97B4418()
{
  result = qword_1EB3B1418;
  if (!qword_1EB3B1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1418);
  }

  return result;
}

unint64_t sub_1A97B446C()
{
  result = qword_1EB3AC8B0;
  if (!qword_1EB3AC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8B0);
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

uint64_t sub_1A97B4550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A97B4598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A97B460C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A97B4654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s11ContactInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11ContactInfoV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s11ContactInfoV6HandleO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11ContactInfoV6HandleO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A97B4978()
{
  result = qword_1EB3B1420;
  if (!qword_1EB3B1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1420);
  }

  return result;
}

unint64_t sub_1A97B49D0()
{
  result = qword_1EB3B1428;
  if (!qword_1EB3B1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1428);
  }

  return result;
}

unint64_t sub_1A97B4A28()
{
  result = qword_1EB3B1430;
  if (!qword_1EB3B1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1430);
  }

  return result;
}

unint64_t sub_1A97B4A80()
{
  result = qword_1EB3B1438;
  if (!qword_1EB3B1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1438);
  }

  return result;
}

unint64_t sub_1A97B4AD8()
{
  result = qword_1EB3B1440;
  if (!qword_1EB3B1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1440);
  }

  return result;
}

unint64_t sub_1A97B4B30()
{
  result = qword_1EB3B1448;
  if (!qword_1EB3B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1448);
  }

  return result;
}

unint64_t sub_1A97B4B88()
{
  result = qword_1EB3B1450;
  if (!qword_1EB3B1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1450);
  }

  return result;
}

unint64_t sub_1A97B4BE0()
{
  result = qword_1EB3B1458;
  if (!qword_1EB3B1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1458);
  }

  return result;
}

unint64_t sub_1A97B4C38()
{
  result = qword_1EB3B1460;
  if (!qword_1EB3B1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1460);
  }

  return result;
}

unint64_t sub_1A97B4C90()
{
  result = qword_1EB3B1468;
  if (!qword_1EB3B1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1468);
  }

  return result;
}

unint64_t sub_1A97B4CE8()
{
  result = qword_1EB3B1470;
  if (!qword_1EB3B1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1470);
  }

  return result;
}

unint64_t sub_1A97B4D40()
{
  result = qword_1EB3B1478;
  if (!qword_1EB3B1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1478);
  }

  return result;
}

uint64_t sub_1A97B4D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6472616376 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A97B4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1A97C13A4(a3, v27 - v11, &qword_1EB3B29C0, &qword_1A9991A00);
  v13 = sub_1A9976C00();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1A9976B80();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1A9976890() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1A97B526C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A97B52C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFXPCBlock.dynamicallyCall(withArguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(a3 + 16);
  v4[11] = v5;
  v6 = sub_1A99770A0();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(v5 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97B549C, 0, 0);
}

uint64_t sub_1A97B549C()
{
  if (v0[11] == &type metadata for VoidParameters)
  {
    v4 = v0[17];
    v0[5] = &type metadata for VoidParameters;
    tryCast<A>(_:as:description:file:line:)((v0 + 2), &type metadata for VoidParameters, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 31, &type metadata for VoidParameters, v4);
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[15];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    (*(v11 + 32))(v10, v9, &type metadata for VoidParameters);
  }

  else
  {
    v1 = v0[16];
    v2 = v0[14];
    v3 = v0[12];
    v0[6] = v0[8];
    sub_1A9976B60();
    swift_getWitnessTable();
    sub_1A9976ED0();
    Optional.tryUnwrap(_:file:line:)(0xD000000000000021, 0x80000001A99E2EE0, 0xD00000000000004CLL, 0x80000001A99E2F10, 33, v3, v1);
    v5 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[11];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v7 + 32))(v5, v6, v8);
  }

  v12 = (v0[10] + *(v0[9] + 68));
  v13 = v12[1];
  v19 = (*v12 + **v12);
  v14 = (*v12)[1];
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_1A97B57A8;
  v16 = v0[18];
  v17 = v0[7];

  return v19(v17, v16);
}

uint64_t sub_1A97B57A8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A97B5964;
  }

  else
  {
    v3 = sub_1A97B58BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97B58BC()
{
  v1 = v0[17];
  v2 = v0[16];
  v3 = v0[14];
  (*(v0[15] + 8))(v0[18], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A97B5964()
{
  (*(v0[15] + 8))(v0[18], v0[11]);
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A97B5A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCBlockContainer();
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000014;
  v12[3] = 0x80000001A9992510;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1768, &qword_1A9992958);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000012;
  v12[3] = 0x80000001A99E31B0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCContainerRegistry();
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000017;
  v12[3] = 0x80000001A99E3190;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD00000000000001CLL;
  v12[3] = 0x80000001A99E30D0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

uint64_t sub_1A97B5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A97AF7EC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_1A9977400();
  sub_1A97BCDE0();
  swift_allocError();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0xD000000000000017;
  v12[3] = 0x80000001A99E2AD0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = a6;
  v12[10] = 0xA000000000000000;
  swift_willThrow();
}

void SFXPCBlock.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v30 = a2[3];
  v31 = v3;
  *&v35 = v3;
  *(&v35 + 1) = v30;
  *&v36 = v4;
  v29[4] = v5;
  v29[5] = v4;
  *(&v36 + 1) = v5;
  v37 = v6;
  v29[2] = v7;
  v29[3] = v6;
  v38 = v7;
  type metadata accessor for SFXPCBlock.CodingKeys();
  v29[1] = swift_getWitnessTable();
  v8 = sub_1A9977710();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1A9977A90();
  sub_1A9977450();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v21 + 16) && (v22 = sub_1A97BCD7C(v19), (v23 & 1) != 0))
    {
      sub_1A97AF7EC(*(v21 + 56) + 32 * v22, &v35);
      (*(v16 + 8))(v19, v15);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
      v35 = 0u;
      v36 = 0u;
    }

    v24 = v39;
    v25 = sub_1A97B6540(&v35, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 39, type metadata accessor for _SFXPCBlockContainer, &unk_1EB3B1770, &qword_1A9992970, sub_1A97B5A0C);
    sub_1A97B06FC(&v35, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!v24)
    {
      sub_1A97B6A34();
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v27 = v32;
      sub_1A9977AA0();
      sub_1A99762C0();
      sub_1A97C10E0(&unk_1EB3ACFC0);
      v28 = v34;
      sub_1A99776E0();
      (*(v33 + 8))(v27, v28);
    }
  }
}

uint64_t sub_1A97B6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t *a8, uint64_t *a9, uint64_t (*a10)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v15 = sub_1A9977A00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a7(0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v33[0] = v20;
  sub_1A99779C0();
  *&v31 = 0x2874736143797274;
  *(&v31 + 1) = 0xE800000000000000;
  v21 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v21);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v22 = v31;
  sub_1A97C13A4(a1, &v31, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v32)
  {

    sub_1A967C4DC(&v31, v33);
    v23 = v35;
    v24 = a10(v33, a2, a3, v28, v29, v30);
    if (!v23)
    {
      a1 = v24;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      (*(v16 + 8))(v19, v15);
      return a1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  else
  {
    a1 = 0x80000001A99E3080;
    sub_1A97B06FC(&v31, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v25 = v22;
    *(v25 + 16) = 0xD000000000000046;
    *(v25 + 24) = 0x80000001A99E3080;
    *(v25 + 32) = 132;
    *(v25 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  (*(v16 + 8))(v19, v15);
  return a1;
}

uint64_t sub_1A97B67BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v9 = sub_1A9977A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B8, &qword_1A9992888);
  v27[0] = v14;
  sub_1A99779C0();
  *&v25 = 0x2874736143797274;
  *(&v25 + 1) = 0xE800000000000000;
  v15 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v15);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v16 = v25;
  sub_1A97C13A4(a1, &v25, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v26)
  {

    sub_1A967C4DC(&v25, v27);
    v17 = v29;
    v18 = sub_1A97B5EF8(v27, a2, a3, v22, v23, v24);
    if (!v17)
    {
      a1 = v18;
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      (*(v10 + 8))(v13, v9);
      return a1;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    a1 = 0x80000001A99E3080;
    sub_1A97B06FC(&v25, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v19 = v16;
    *(v19 + 16) = 0xD000000000000046;
    *(v19 + 24) = 0x80000001A99E3080;
    *(v19 + 32) = 132;
    *(v19 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  (*(v10 + 8))(v13, v9);
  return a1;
}

void sub_1A97B6A34()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1A97C1874(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t SFXPCBlock.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v120 = a7;
  v101 = a8;
  v106 = sub_1A99762C0();
  v103 = *(v106 - 8);
  v15 = *(v103 + 64);
  v16 = MEMORY[0x1EEE9AC00](v106);
  v95 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v105 = &v91 - v18;
  *&v126 = a2;
  *(&v126 + 1) = a3;
  *&v127 = a4;
  *(&v127 + 1) = a5;
  v128 = a6;
  v129 = a7;
  v19 = type metadata accessor for SFXPCBlock.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v108 = v19;
  v107 = WitnessTable;
  v110 = sub_1A9977630();
  v104 = *(v110 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v118 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - v27;
  v29 = sub_1A9977460();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v112 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v91 - v33;
  v96 = a2;
  *&v126 = a2;
  *(&v126 + 1) = a3;
  v97 = a3;
  v98 = a4;
  *&v127 = a4;
  *(&v127 + 1) = a5;
  v99 = a5;
  v36 = v35;
  v100 = a6;
  v128 = a6;
  v129 = v120;
  v37 = type metadata accessor for SFXPCBlock();
  v93 = *(v37 - 8);
  v38 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v102 = &v91 - v39;
  v41 = a1[3];
  v40 = a1[4];
  v119 = a1;
  v113 = __swift_project_boxed_opaque_existential_1(a1, v41);
  v115 = v40;
  v42 = sub_1A9977A60();
  sub_1A9977450();
  v114 = v36[6];
  result = v114(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v111 = v36[4];
  v111(v34, v28, v29);
  v44 = *(v42 + 16);
  v117 = v36;
  if (v44)
  {
    v45 = v29;
    v46 = sub_1A97BCD7C(v34);
    if (v47)
    {
      sub_1A97AF7EC(*(v42 + 56) + 32 * v46, &v126);
      v48 = *(v117 + 8);
      v48(v34, v45);
      v49 = v48;

      goto LABEL_8;
    }

    v49 = *(v117 + 8);
    v49(v34, v29);
  }

  else
  {

    v49 = v36[1];
    v45 = v29;
    v49(v34, v29);
  }

  v126 = 0u;
  v127 = 0u;
LABEL_8:
  v50 = v118;
  sub_1A97C13A4(&v126, &v123, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (!*(&v124 + 1))
  {
    sub_1A97B06FC(&v123, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v54 = 0xD000000000000011;
    v54[1] = 0x80000001A99E2F80;
    v54[2] = 0xD00000000000004CLL;
    v54[3] = 0x80000001A99E2F10;
    v54[4] = 48;
    v54[10] = 0x2000000000000000;
    swift_willThrow();
    sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
    v53 = v119;
    return __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  v92 = v37;
  sub_1A97B06FC(&v126, &qword_1EB3B0BA0, &unk_1A99923D0);
  sub_1A967C4DC(&v123, &v125);
  v51 = v116;
  v52 = sub_1A97B5B44(&v125, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 49);
  if (v51)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v125);
    v53 = v119;
    return __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  v116 = v49;
  v118 = v52;
  v55 = sub_1A9977A60();
  sub_1A9977450();
  result = v114(v50, 1, v45);
  if (result == 1)
  {
    goto LABEL_32;
  }

  v56 = v112;
  v111(v112, v50, v45);
  if (*(v55 + 16))
  {
    v57 = sub_1A97BCD7C(v56);
    v58 = v119;
    if (v59)
    {
      sub_1A97AF7EC(*(v55 + 56) + 32 * v57, &v123);
      v116(v56, v45);
    }

    else
    {

      v116(v56, v45);
      v123 = 0u;
      v124 = 0u;
    }
  }

  else
  {

    v116(v56, v45);
    v123 = 0u;
    v124 = 0u;
    v58 = v119;
  }

  sub_1A97C13A4(&v123, &v121, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v122)
  {
    sub_1A967C4DC(&v121, &v126);
    v117 = sub_1A97B5C88(&v126, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 54);
    __swift_destroy_boxed_opaque_existential_0Tm(&v126);
  }

  else
  {
    sub_1A97B06FC(&v121, &qword_1EB3B0BA0, &unk_1A99923D0);
    v117 = 0;
  }

  v60 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v61 = v109;
  sub_1A9977A70();
  v62 = v110;
  sub_1A97C10E0(&qword_1EB3AD060);
  v63 = v105;
  v64 = v106;
  sub_1A99775F0();
  v116 = 0;
  (*(v103 + 16))(v102, v63, v64);
  *&v121 = 0x6B636F6C42637078;
  *(&v121 + 1) = 0xEA0000000000203ALL;
  v65 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v66 = sub_1A9977A40();
  v67 = *(v66 + 16);
  if (v67)
  {
    v130 = MEMORY[0x1E69E7CC0];
    sub_1A97BD628(0, v67, 0);
    v68 = v130;
    v69 = v66 + 32;
    do
    {
      sub_1A97BD648(v69, &v126);
      __swift_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
      v70 = sub_1A9977AB0();
      v72 = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(&v126);
      v130 = v68;
      v74 = *(v68 + 16);
      v73 = *(v68 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1A97BD628((v73 > 1), v74 + 1, 1);
        v68 = v130;
      }

      *(v68 + 16) = v74 + 1;
      v75 = v68 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v72;
      v69 += 40;
      --v67;
    }

    while (v67);

    v58 = v119;
    v62 = v110;
    v61 = v109;
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  *&v126 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v76 = sub_1A9976760();
  v78 = v77;

  MEMORY[0x1AC5895B0](v76, v78);

  v79 = v121;
  (*(v104 + 8))(v61, v62);
  sub_1A97B06FC(&v123, &qword_1EB3B0BA0, &unk_1A99923D0);
  __swift_destroy_boxed_opaque_existential_0Tm(&v125);
  v81 = v103 + 32;
  v80 = *(v103 + 32);
  v82 = v95;
  v83 = v106;
  v80(v95, v105, v106);
  v84 = (*(v81 + 48) + 96) & ~*(v81 + 48);
  v85 = swift_allocObject();
  v86 = v97;
  *(v85 + 2) = v96;
  *(v85 + 3) = v86;
  v87 = v99;
  *(v85 + 4) = v98;
  *(v85 + 5) = v87;
  v88 = v120;
  *(v85 + 6) = v100;
  *(v85 + 7) = v88;
  *(v85 + 8) = v118;
  *(v85 + 9) = v79;
  v89 = v117;
  *(v85 + 10) = *(&v79 + 1);
  *(v85 + 11) = v89;
  v80(&v85[v84], v82, v83);
  v90 = &v102[*(v92 + 68)];
  *v90 = &unk_1A99923F0;
  *(v90 + 1) = v85;
  (*(v93 + 32))(v101);
  return __swift_destroy_boxed_opaque_existential_0Tm(v58);
}

uint64_t sub_1A97B77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v17;
  *(v8 + 80) = v15;
  *(v8 + 96) = v16;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10 = sub_1A99762C0();
  *(v8 + 120) = v10;
  v11 = *(v10 - 8);
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 + 64);
  *(v8 + 144) = swift_task_alloc();
  v12 = *(a8 - 8);
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 + 64);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97B7908, 0, 0);
}

uint64_t sub_1A97B7908()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v26 = v3;
  v27 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 120);
  v25 = v5;
  v6 = *(v0 + 64);
  v30 = *(v0 + 56);
  v7 = *(v0 + 48);
  v28 = *(v0 + 136);
  v29 = *(v0 + 40);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1758, &qword_1A9992948);
  v22 = *(v0 + 72);
  v10 = *(v0 + 72);
  v11 = *(v0 + 104);
  v23 = v11;
  v24 = *(v0 + 88);
  (*(v2 + 16))(v1, v9, v10);
  (*(v4 + 16))(v3, v6, v5);
  v12 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v13 = (v27 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v4 + 80) + v13 + 8) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v0 + 176) = v15;
  *(v15 + 16) = v22;
  *(v15 + 32) = v24;
  *(v15 + 48) = v23;
  *(v15 + 64) = v29;
  *(v15 + 72) = v7;
  (*(v2 + 32))(v15 + v12, v1, v10);
  *(v15 + v13) = v30;
  (*(v4 + 32))(v15 + v14, v26, v25);

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_1A97B7B48;
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 32);
  v20 = *(v0 + 16);
  v33 = *(v0 + 80);

  return sub_1A984F364(v20, v17, v18, v31, sub_1A97C1638, v15, ObjectType, v31);
}

uint64_t sub_1A97B7B48()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97B7C9C, 0, 0);
  }

  else
  {
    v5 = v3[21];
    v4 = v3[22];
    v6 = v3[18];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1A97B7C9C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

void sub_1A97B7D14(id *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a7;
  v57 = a3;
  v51 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v54 = a9;
  v18 = sub_1A9976BB0();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v50 = &v43 - v21;
  v22 = *(*(a8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a1;
  (*(v25 + 16))(v24, a5, a8);

  v26 = v59;
  v27 = sub_1A984EAD4(v57, a4, v24, a6, a8, a10, a11);
  if (!v26)
  {
    v44 = a12;
    v45 = a13;
    v59 = 0;
    v49 = v27;
    v57 = v28;
    v46 = v29;
    v47 = v30;
    v56 = sub_1A9976270();
    v48 = sub_1A9976060();
    v31 = v52;
    v32 = v50;
    v33 = v53;
    (*(v52 + 16))(v50, v51, v53);
    v34 = (*(v31 + 80) + 64) & ~*(v31 + 80);
    v35 = swift_allocObject();
    v36 = v54;
    *(v35 + 2) = a8;
    *(v35 + 3) = v36;
    *(v35 + 4) = a10;
    *(v35 + 5) = a11;
    v37 = v45;
    *(v35 + 6) = v44;
    *(v35 + 7) = v37;
    (*(v31 + 32))(&v35[v34], v32, v33);
    aBlock[4] = sub_1A97C1758;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_84;
    v38 = _Block_copy(aBlock);
    v39 = v46;
    v40 = v47;

    v41 = v56;
    v42 = v48;
    [v55 invoke:v56 parametersData:v48 parametersAsyncSequenceContainer:v39 parametersBlocksContainer:v40 sync:0 completion:v38];
    _Block_release(v38);

    sub_1A97B43C4(v49, v57);
  }
}

uint64_t sub_1A97B808C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v16[1] = a6;
  v16[0] = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v9 = *(v16[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v16[0]);
  v12 = v16 - v11;
  sub_1A97C1554(a1, a2);
  v13 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, a5, v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = sub_1A9976BB0();
  sub_1A97DCA10(v12, v14);
  return (*(v9 + 8))(v12, v16[0]);
}

uint64_t sub_1A97B820C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A99777E0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A97B82C8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A97B830C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A97B8360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _s7Sharing10SFXPCBlockV4bodyyq_xYaKcvg_0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1A97B8420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void *))
{
  sub_1A99762B0();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  result = a10(0, v21);
  v20 = (a9 + *(result + 68));
  *v20 = a1;
  v20[1] = a2;
  return result;
}

uint64_t SFXPCSyncBlock.dynamicallyCall(withArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v29[5] = a3;
  v5 = *(a2 + 16);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  Description = v5[-1].Description;
  v12 = Description[8];
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  if (v5 == &type metadata for VoidParameters)
  {
    v29[3] = &type metadata for VoidParameters;
    tryCast<A>(_:as:description:file:line:)(v29, &type metadata for VoidParameters, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 92, &type metadata for VoidParameters, v18);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v29);
    if (v3)
    {
      return result;
    }

    v22 = Description;
    (Description[4])(v20, v18, &type metadata for VoidParameters);
  }

  else
  {
    v29[0] = a1;
    sub_1A9976B60();
    swift_getWitnessTable();
    sub_1A9976ED0();
    Optional.tryUnwrap(_:file:line:)(0xD000000000000025, 0x80000001A99E2FC0, 0xD00000000000004CLL, 0x80000001A99E2F10, 94, v6, v15);
    if (v3)
    {
      return (*(v7 + 8))(v11, v6);
    }

    (*(v7 + 8))(v11, v6);
    v22 = Description;
    (Description[4])(v20, v15, v5);
  }

  v23 = v28 + *(v27 + 68);
  v24 = *(v23 + 8);
  (*v23)(v20);
  return (v22[1])(v20, v5);
}

uint64_t SFXPCSyncBlock.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v37 = a2[3];
  v38 = v3;
  *&v46 = v3;
  *(&v46 + 1) = v37;
  v36 = v4;
  v47 = v4;
  v48 = v5;
  v35 = v5;
  v34 = v6;
  v49 = v6;
  v50 = v7;
  v33 = v7;
  type metadata accessor for SFXPCSyncBlock.CodingKeys();
  v32[1] = swift_getWitnessTable();
  v8 = sub_1A9977710();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v32 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1A9977A90();
  sub_1A9977450();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v21 + 16) && (v23 = sub_1A97BCD7C(v19), (v24 & 1) != 0))
    {
      sub_1A97AF7EC(*(v21 + 56) + 32 * v23, v45);
      (*(v16 + 8))(v19, v15);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
      memset(v45, 0, sizeof(v45));
    }

    sub_1A97C13A4(v45, &v43, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (v44)
    {
      sub_1A97B06FC(v45, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A967C4DC(&v43, &v46);
      v25 = v51;
      v26 = sub_1A97B5A0C(&v46, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 101);
      if (!v25)
      {
        v27 = v26;
        sub_1A97B8CD4(v42, v38, v37, v36, v35, v34, v33);
        v28 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v29 = v39;
        sub_1A9977AA0();
        sub_1A99762C0();
        sub_1A97C10E0(&unk_1EB3ACFC0);
        v30 = v41;
        sub_1A99776E0();

        (*(v40 + 8))(v29, v30);
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(&v46);
    }

    else
    {
      sub_1A97B06FC(&v43, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A97BCDE0();
      swift_allocError();
      *v31 = 0xD000000000000011;
      v31[1] = 0x80000001A99E2F80;
      v31[2] = 0xD00000000000004CLL;
      v31[3] = 0x80000001A99E2F10;
      v31[4] = 100;
      v31[10] = 0x2000000000000000;
      swift_willThrow();
      return sub_1A97B06FC(v45, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return result;
}

uint64_t sub_1A97B8CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a6;
  v27 = a7;
  v28 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v14 = type metadata accessor for SFXPCSyncBlock();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  (*(v15 + 16))(&v26 - v17, a1, v14);
  v19 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v21 = v27;
  *(v20 + 6) = v26;
  *(v20 + 7) = v21;
  (*(v15 + 32))(&v20[v19], v18, v14);
  v22 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
  swift_beginAccess();
  v23 = *(v8 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v8 + v22);
  *(v8 + v22) = 0x8000000000000000;
  sub_1A97E2D7C(sub_1A97C1568, v20, v28, isUniquelyReferenced_nonNull_native);
  *(v8 + v22) = v29;
  return swift_endAccess();
}

uint64_t SFXPCSyncBlock.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v117 = a7;
  v89 = a8;
  v93 = sub_1A99762C0();
  v84 = *(v93 - 8);
  v15 = *(v84 + 64);
  v16 = MEMORY[0x1EEE9AC00](v93);
  v82 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v78 - v18;
  *&v112 = a2;
  *(&v112 + 1) = a3;
  v113 = a4;
  v114 = a5;
  v115 = a6;
  v116 = a7;
  v19 = type metadata accessor for SFXPCSyncBlock.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v95 = v19;
  v94 = WitnessTable;
  v96 = sub_1A9977630();
  v91 = *(v96 - 8);
  v21 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v78 - v27;
  v29 = sub_1A9977460();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v98 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v78 - v33;
  v83 = a2;
  *&v112 = a2;
  *(&v112 + 1) = a3;
  v36 = v35;
  v85 = a3;
  v86 = a4;
  v113 = a4;
  v114 = a5;
  v87 = a5;
  v88 = a6;
  v115 = a6;
  v116 = v117;
  v80 = type metadata accessor for SFXPCSyncBlock();
  v79 = *(v80 - 8);
  v37 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v90 = &v78 - v38;
  v40 = a1[3];
  v39 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v101 = v39;
  v41 = sub_1A9977A60();
  sub_1A9977450();
  v100 = v36[6];
  result = v100(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v97 = v36[4];
  v97(v34, v28, v29);
  v43 = *(v41 + 16);
  v104 = v36;
  if (v43)
  {
    v44 = v29;
    v45 = sub_1A97BCD7C(v34);
    if (v46)
    {
      sub_1A97AF7EC(*(v41 + 56) + 32 * v45, &v110);
      v47 = v104[1];
      v47(v34, v29);

      goto LABEL_8;
    }

    v47 = v104[1];
    v47(v34, v29);
  }

  else
  {

    v47 = v36[1];
    v44 = v29;
    v47(v34, v29);
  }

  v110 = 0u;
  v111 = 0u;
LABEL_8:
  sub_1A97C13A4(&v110, &v108, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (!v109)
  {
    sub_1A97B06FC(&v108, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x80000001A99E2F80;
    v51[2] = 0xD00000000000004CLL;
    v51[3] = 0x80000001A99E2F10;
    v51[4] = 110;
    v51[10] = 0x2000000000000000;
    swift_willThrow();
    sub_1A97B06FC(&v110, &qword_1EB3B0BA0, &unk_1A99923D0);
    v50 = v105;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  sub_1A97B06FC(&v110, &qword_1EB3B0BA0, &unk_1A99923D0);
  sub_1A967C4DC(&v108, &v112);
  v48 = v103;
  v49 = sub_1A97B5B44(&v112, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 111);
  if (v48)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v112);
    v50 = v105;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v52 = v49;
  v103 = 0;
  v53 = sub_1A9977A60();
  v54 = v102;
  sub_1A9977450();
  result = v100(v54, 1, v44);
  if (result != 1)
  {
    v55 = v98;
    v97(v98, v54, v44);
    v56 = v99;
    if (*(v53 + 16) && (v57 = sub_1A97BCD7C(v55), (v58 & 1) != 0))
    {
      v59 = v52;
      sub_1A97AF7EC(*(v53 + 56) + 32 * v57, &v110);
      v47(v55, v44);
    }

    else
    {
      v59 = v52;

      v47(v55, v44);
      v110 = 0u;
      v111 = 0u;
    }

    sub_1A97C13A4(&v110, &v106, &qword_1EB3B0BA0, &unk_1A99923D0);
    v50 = v105;
    v60 = v103;
    if (v107)
    {
      sub_1A967C4DC(&v106, &v108);
      v61 = sub_1A97B5C88(&v108, 0, 0, 0xD00000000000004CLL, 0x80000001A99E2F10, 116);
      if (v60)
      {
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v108);
        goto LABEL_25;
      }

      v62 = v61;
      v103 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v108);
    }

    else
    {
      sub_1A97B06FC(&v106, &qword_1EB3B0BA0, &unk_1A99923D0);
      v62 = 0;
    }

    v63 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v64 = v103;
    sub_1A9977A70();
    v65 = v96;
    if (!v64)
    {
      sub_1A97C10E0(&qword_1EB3AD060);
      v66 = v92;
      v67 = v93;
      sub_1A99775F0();
      v68 = v84;
      (*(v84 + 16))(v90, v66, v67);
      (*(v91 + 8))(v56, v65);
      sub_1A97B06FC(&v110, &qword_1EB3B0BA0, &unk_1A99923D0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v112);
      v69 = *(v68 + 32);
      v70 = v82;
      v69(v82, v66, v67);
      v71 = (*(v68 + 80) + 96) & ~*(v68 + 80);
      v72 = swift_allocObject();
      v103 = 0;
      v73 = v72;
      v74 = v85;
      *(v72 + 16) = v83;
      *(v72 + 24) = v74;
      v75 = v87;
      *(v72 + 32) = v86;
      *(v72 + 40) = v75;
      v76 = v117;
      *(v72 + 48) = v88;
      *(v72 + 56) = v76;
      *(v72 + 64) = v59;
      strcpy((v72 + 72), "SFXPCSyncBlock");
      *(v72 + 87) = -18;
      *(v72 + 88) = v62;
      v69((v72 + v71), v70, v67);
      v77 = &v90[*(v80 + 68)];
      *v77 = sub_1A97BD960;
      v77[1] = v73;
      (*(v79 + 32))(v89);
      return __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    swift_unknownObjectRelease();

LABEL_25:
    sub_1A97B06FC(&v110, &qword_1EB3B0BA0, &unk_1A99923D0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v112);
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 sub_1A97B9988@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1758, &qword_1A9992948);
  v22 = a6;
  v23 = a7;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v30 = a4;
  v31 = a5;
  sub_1A984F72C(a2, a3, sub_1A97C14C4, v21, v17, a7, a8);
  return result;
}

void sub_1A97B9A7C(id *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v73 = a2;
  v64 = a6;
  v71 = a1;
  v72 = a4;
  v68 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v17 = sub_1A9977A20();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v69 = a8;
  v65 = a12;
  v66 = a13;
  v67 = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v70 = *(v67 - 8);
  v21 = *(v70 + 64);
  v22 = MEMORY[0x1EEE9AC00](v67);
  v24 = &v58 - v23;
  v25 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *v71;
  (*(v28 + 16))(v27, v72, a7);

  v29 = v74;
  v30 = sub_1A984EAD4(v73, a3, v27, a5, a7, a10, a11);
  if (!v29)
  {
    v34 = v31;
    v35 = v32;
    v59 = v24;
    v60 = v20;
    v73 = v33;
    v74 = 0;
    v36 = v30;
    v37 = v67;
    sub_1A99770A0();
    v38 = swift_allocBox();
    v61 = v39;
    (*(v70 + 56))(v39, 1, 1, v37);
    v64 = sub_1A9976270();
    v72 = v36;
    v40 = sub_1A9976060();
    v41 = swift_allocObject();
    v42 = v69;
    v41[2] = a7;
    v41[3] = v42;
    v41[4] = a10;
    v41[5] = a11;
    v43 = v66;
    v41[6] = v65;
    v41[7] = v43;
    v41[8] = v38;
    aBlock[4] = sub_1A97C1504;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor;
    v44 = _Block_copy(aBlock);
    v66 = v34;
    v45 = v44;
    v46 = v35;
    v47 = v73;
    v73 = v38;

    v48 = v64;
    [v71 invoke:v64 parametersData:v40 parametersAsyncSequenceContainer:v46 parametersBlocksContainer:v47 sync:1 completion:v45];
    _Block_release(v45);

    v49 = v61;
    swift_beginAccess();
    if ((*(v70 + 48))(v49, 1, v37))
    {
      sub_1A97B43C4(v72, v66);

      v50 = 1;
      v51 = v68;
LABEL_4:
      (*(*(v69 - 8) + 56))(v51, v50, 1);

      return;
    }

    v52 = v72;
    v53 = v66;
    v54 = v59;
    (*(v70 + 16))(v59, v49, v37);
    v55 = v63;
    (*(v62 + 32))(v60, v54, v63);
    v56 = v68;
    v57 = v74;
    sub_1A984F65C(v55, &v76, v68);
    if (!v57)
    {
      v74 = 0;
      sub_1A97B43C4(v52, v53);

      v50 = 0;
      v51 = v56;
      goto LABEL_4;
    }

    sub_1A97B43C4(v52, v53);
  }
}

uint64_t sub_1A97B9FA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[0] = a11;
  v22[1] = a8;
  v14 = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v23 = sub_1A99770A0();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v18 = v22 - v17;
  v19 = swift_projectBox();
  sub_1A97C1554(a1, a2);
  v20 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, a5, v18);
  (*(*(v14 - 8) + 56))(v18, 0, 1, v14);
  swift_beginAccess();
  return (*(v15 + 40))(v19, v18, v23);
}

id _SFXPCBlockContainer.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *&v0[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  if (v13)
  {
    v21 = ObjectType;
    v14 = *(v7 + 16);
    v14(&v20 - v11, &v0[OBJC_IVAR____SFXPCBlockContainer_uuid], v6);
    v15 = sub_1A9976C00();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v14(v10, v12, v6);
    v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v13;
    v18 = v17 + v16;
    ObjectType = v21;
    (*(v7 + 32))(v18, v10, v6);
    swift_retain_n();
    sub_1A97B4F40(0, 0, v5, &unk_1A9992400, v17);

    (*(v7 + 8))(v12, v6);
  }

  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_dealloc);
}

uint64_t sub_1A97BA530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a2;
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v13 = type metadata accessor for SFXPCBlock();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  (*(v14 + 16))(&v27 - v16, a2, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = v28;
  v21 = v29;
  *(v19 + 4) = a5;
  *(v19 + 5) = v20;
  v22 = v30;
  *(v19 + 6) = v21;
  *(v19 + 7) = v22;
  (*(v14 + 32))(&v19[v18], v17, v13);
  v23 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
  swift_beginAccess();
  v24 = *(a1 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v23);
  *(a1 + v23) = 0x8000000000000000;
  sub_1A97E2DA8(&unk_1A9992968, v19, v31, isUniquelyReferenced_nonNull_native);
  *(a1 + v23) = v38;
  return swift_endAccess();
}

uint64_t sub_1A97BA700(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v29;
  *(v8 + 248) = v30;
  *(v8 + 224) = v28;
  *(v8 + 208) = a8;
  *(v8 + 216) = v27;
  *(v8 + 192) = a1;
  *(v8 + 200) = a7;
  v15 = *(v27 - 8);
  *(v8 + 256) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v17 = *(a8 - 8);
  *(v8 + 272) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v20 = sub_1A9977460();
  *(v8 + 320) = v20;
  v21 = *(v20 - 8);
  *(v8 + 328) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = *a2;
  v23 = *a4;
  *(v8 + 384) = *a3;
  *(v8 + 392) = v23;
  v24 = *a6;
  *(v8 + 400) = *a5;
  *(v8 + 408) = v24;

  return MEMORY[0x1EEE6DFA0](sub_1A97BA944, 0, 0);
}

uint64_t sub_1A97BA944()
{
  v44 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = sub_1A9975E40();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v0 + 416) = sub_1A9975E30();
  sub_1A9977450();
  v7 = *(v1 + 48);
  *(v0 + 424) = v7;
  *(v0 + 432) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  result = v7(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 384);
  v10 = *(v0 + 360);
  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 312);
  v14 = *(v12 + 32);
  *(v0 + 440) = v14;
  *(v0 + 448) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v10, v13, v11);
  v37 = v7;
  if (v9)
  {
    v9 = *(v0 + 384);
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v41 = 0;
    v42 = 0;
  }

  v16 = *(v0 + 360);
  v17 = *(v0 + 320);
  v18 = *(v0 + 304);
  v40 = v9;
  v43 = ObjectType;
  swift_unknownObjectRetain();
  v19 = sub_1A9975E20();
  sub_1A97DCC4C(&v40, v16);
  v19(v0 + 64, 0);
  sub_1A9977450();
  result = v37(v18, 1, v17);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v20 = *(v0 + 392);
  v14(*(v0 + 352), *(v0 + 304), *(v0 + 320));
  if (v20)
  {
    v20 = *(v0 + 392);
    v21 = swift_getObjectType();
  }

  else
  {
    v21 = 0;
    v41 = 0;
    v42 = 0;
  }

  v22 = *(v0 + 368);
  v38 = *(v0 + 376);
  v40 = v20;
  v23 = *(v0 + 352);
  v24 = *(v0 + 280);
  v25 = *(v0 + 224);
  v26 = *(v0 + 208);
  v43 = v21;
  swift_unknownObjectRetain();
  v27 = sub_1A9975E20();
  sub_1A97DCC4C(&v40, v23);
  v27(v0 + 96, 0);
  sub_1A9975E10();
  v28 = *(v0 + 200);
  v29 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  v30 = *(v0 + 240);
  *(v0 + 32) = v29;
  *(v0 + 48) = v30;
  v31 = (v28 + *(type metadata accessor for SFXPCBlock() + 68));
  v32 = v31[1];
  v39 = (*v31 + **v31);
  v33 = (*v31)[1];
  v34 = swift_task_alloc();
  *(v0 + 456) = v34;
  *v34 = v0;
  v34[1] = sub_1A97BAD64;
  v35 = *(v0 + 280);
  v36 = *(v0 + 264);

  return v39(v36, v35);
}

uint64_t sub_1A97BAD64()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1A97BB23C;
  }

  else
  {
    v3 = sub_1A97BAE78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97BAE78()
{
  v66 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = sub_1A9975E80();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A9975E70();
  sub_1A9977450();
  result = v2(v4, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(v0 + 448);
  v10 = *(v0 + 424);
  v61 = *(v0 + 432);
  v11 = *(v0 + 400);
  v12 = *(v0 + 344);
  v13 = *(v0 + 320);
  v14 = *(v0 + 288);
  (*(v0 + 440))(v12, *(v0 + 296), v13);
  v65 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v64[0] = v11;
  v15 = v11;
  v16 = sub_1A9975E60();
  sub_1A97DCC4C(v64, v12);
  v16(v0 + 128, 0);
  sub_1A9977450();
  result = v10(v14, 1, v13);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v17 = *(v0 + 464);
  v18 = *(v0 + 448);
  v19 = *(v0 + 408);
  v20 = *(v0 + 336);
  v21 = *(v0 + 264);
  v22 = *(v0 + 248);
  v23 = *(v0 + 216);
  (*(v0 + 440))(v20, *(v0 + 288), *(v0 + 320));
  v65 = type metadata accessor for _SFXPCBlockContainer();
  v64[0] = v19;
  v24 = v19;
  v25 = sub_1A9975E60();
  sub_1A97DCC4C(v64, v20);
  v25(v0 + 160, 0);
  v26 = sub_1A9975E50();
  v28 = *(v0 + 416);
  if (v17)
  {
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);

    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v29, v34);
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v38 = *(v0 + 336);
    v37 = *(v0 + 344);
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v42 = *(v0 + 288);
    v41 = *(v0 + 296);
    v43 = *(v0 + 280);
    v62 = *(v0 + 264);
  }

  else
  {
    v45 = v26;
    v46 = v27;
    v54 = *(v0 + 360);
    v55 = *(v0 + 352);
    v56 = *(v0 + 344);
    v57 = *(v0 + 336);
    v58 = *(v0 + 312);
    v59 = *(v0 + 304);
    v60 = *(v0 + 296);
    v63 = *(v0 + 288);
    v47 = *(v0 + 272);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v50 = *(v0 + 216);
    v52 = *(v0 + 208);
    v53 = *(v0 + 280);
    v51 = *(v0 + 192);

    (*(v48 + 8))(v49, v50);
    (*(v47 + 8))(v53, v52);
    *v51 = v45;
    v51[1] = v46;
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1A97BB23C()
{
  v1 = v0[52];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[26];

  (*(v3 + 8))(v2, v4);
  v17 = v0[58];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v14 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A97BB34C@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, id *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a6;
  v116 = a5;
  v108 = a4;
  v85 = a8;
  v98 = a7;
  v87 = *(a7 - 8);
  v15 = *(v87 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v97 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v18;
  v95 = *(v18 - 1);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v92 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v94 = &v84 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v84 - v30;
  v32 = sub_1A9977460();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = MEMORY[0x1EEE9AC00](v32);
  v89 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v91 = &v84 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v99 = &v84 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v84 - v41;
  v43 = *a1;
  v100 = a1[1];
  v101 = v43;
  v44 = *a2;
  v45 = *a3;
  v90 = *v108;
  v88 = *v116;
  v46 = sub_1A9975E40();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_1A9975E30();
  v93 = "rProtocol>24@_SFXPCError32";
  sub_1A9977450();
  v108 = v33[6];
  result = v108(v31, 1, v32);
  if (result == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v51 = v33[4];
  v102 = v32;
  v104 = v51;
  v105 = v33 + 4;
  v51(v42, v31, v32);
  if (v44)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v110 = 0;
    v111 = 0;
  }

  v53 = v33 + 6;
  v109 = v44;
  v112 = ObjectType;
  swift_unknownObjectRetain();
  v116 = v49;
  v54 = sub_1A9975E20();
  sub_1A97DCC4C(&v109, v42);
  v54(v115, 0);
  sub_1A9977450();
  v55 = v102;
  result = v108(v29, 1, v102);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v56 = v99;
  v104(v99, v29, v55);
  v86 = "amework/XPC/SFXPCBlock.swift";
  if (v45)
  {
    v57 = swift_getObjectType();
  }

  else
  {
    v57 = 0;
    v110 = 0;
    v111 = 0;
  }

  v109 = v45;
  v112 = v57;
  swift_unknownObjectRetain();
  v58 = sub_1A9975E20();
  sub_1A97DCC4C(&v109, v56);
  v58(v115, 0);
  v60 = v106;
  v59 = v107;
  v61 = v103;
  sub_1A9975E10();
  if (v61)
  {
  }

  v109 = v59;
  v110 = v98;
  v111 = a9;
  v112 = a10;
  v113 = a11;
  v114 = a12;
  v62 = v96 + *(type metadata accessor for SFXPCSyncBlock() + 68);
  v63 = *(v62 + 8);
  (*v62)(v60);
  v101 = a12;
  v64 = sub_1A9975E80();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v67 = v94;
  sub_1A9977450();
  v68 = v108;
  result = v108(v67, 1, v55);
  v103 = v53;
  if (result == 1)
  {
    goto LABEL_16;
  }

  v69 = v91;
  v70 = v104;
  v104(v91, v67, v55);
  v112 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v109 = v90;
  v71 = v90;
  v72 = sub_1A9975E60();
  sub_1A97DCC4C(&v109, v69);
  v72(v115, 0);
  v73 = v92;
  sub_1A9977450();
  result = v68(v73, 1, v55);
  if (result != 1)
  {
    v74 = v55;
    v75 = v89;
    v70(v89, v73, v74);
    v112 = type metadata accessor for _SFXPCBlockContainer();
    v109 = v88;
    v76 = v88;
    v77 = sub_1A9975E60();
    sub_1A97DCC4C(&v109, v75);
    v77(v115, 0);
    v78 = v97;
    v79 = v98;
    v80 = sub_1A9975E50();
    v82 = v81;

    (*(v87 + 8))(v78, v79);
    result = (*(v95 + 8))(v106, v107);
    v83 = v85;
    *v85 = v80;
    v83[1] = v82;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void _SFXPCBlockContainer.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, unint64_t, id, void *, id), uint64_t a8)
{
  v92 = a7;
  v93 = a8;
  v90 = a6;
  v85 = a5;
  v86 = a4;
  v84 = a3;
  v83 = a2;
  v96 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = &v79 - v11;
  v12 = sub_1A99762C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v20 = *&v8[OBJC_IVAR____SFXPCBlockContainer_name];
  v19 = *&v8[OBJC_IVAR____SFXPCBlockContainer_name + 8];
  v97 = v8;
  v21 = *&v8[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  v88 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v88);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1A99762B0();
  v87 = v13;
  v23 = v13 + 16;
  v24 = *(v13 + 16);
  v98 = v12;
  v24(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v18, v12);
  v25 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v89 = v20;
  *v25 = v20;
  *(v25 + 1) = v19;
  v95 = v19;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v21;
  v91 = v16;
  v82 = v14;
  v81 = v23;
  v80 = v24;
  if (v21)
  {
    v26 = sub_1A9976C00();
    (*(*(v26 - 8) + 56))(v99, 1, 1, v26);
    v27 = v87;
    v28 = v98;
    v24(v16, v18, v98);
    v29 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v21;
    (*(v27 + 32))(&v31[v29], v16, v28);
    v32 = &v31[v30];
    v33 = v89;
    v34 = v95;
    *v32 = v89;
    v32[1] = v34;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v99, &unk_1A9999B40, v31);

    v35 = v27;
    (*(v27 + 8))(v18, v28);
    v36 = v33;
  }

  else
  {
    v35 = v87;
    (*(v87 + 8))(v18, v98);
    v34 = v95;

    v36 = v89;
  }

  v107.receiver = v22;
  v107.super_class = v88;
  v95 = objc_msgSendSuper2(&v107, sel_init);

  v37 = objc_allocWithZone(ObjectType);
  v38 = sub_1A97BE9E8(v36, v34, v21);

  if (v90)
  {
    v39 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
    v40 = v97;
    swift_beginAccess();
    v41 = *&v40[v39];
    if (*(v41 + 16) && (v42 = sub_1A97BCE34(v96), (v43 & 1) != 0))
    {
      v44 = *(v41 + 56) + 16 * v42;
      v45 = *v44;
      v46 = *(v44 + 8);
    }

    else
    {
      v45 = 0;
    }

    v65 = v38;
    swift_endAccess();
    strcpy(v106, "no body for ");
    BYTE5(v106[1]) = 0;
    HIWORD(v106[1]) = -5120;
    sub_1A97C10E0(&qword_1EB3AC890);
    v66 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v66);

    v67 = v106[1];
    if (v45)
    {

      v106[0] = v83;
      v106[1] = v84;
      v104 = v85;
      v105 = v86;
      v102 = v38;
      v103 = v95;
      v45(&v100, v106, &v105, &v104, &v103, &v102);
      sub_1A967C46C(v45);
      v74 = v100;
      v75 = v101;
      sub_1A97B40FC(v100, v101);
      v76 = v95;
      v77 = v95;
      v78 = v38;
      v92(v74, v75, v76, v65, 0);

      sub_1A97B43C4(v74, v75);
      sub_1A97B43C4(v74, v75);
    }

    else
    {
      v68 = v106[0];
      sub_1A97BCDE0();
      v69 = swift_allocError();
      *v70 = v68;
      v70[1] = v67;
      v70[2] = 0xD00000000000004CLL;
      v70[3] = 0x80000001A99E2F10;
      v70[4] = 206;
      v70[10] = 0x2000000000000000;
      swift_willThrow();

      v71 = objc_allocWithZone(type metadata accessor for _SFXPCError());
      v72 = v69;
      v73 = sub_1A99195C8(v69);

      v92(0, 0xF000000000000000, 0, 0, v73);
    }
  }

  else
  {
    v47 = sub_1A9976C00();
    (*(*(v47 - 8) + 56))(v99, 1, 1, v47);
    v48 = v98;
    v80(v91, v96, v98);
    v49 = v35;
    v50 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v51 = (v82 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
    ObjectType = ((v96 + 15) & 0xFFFFFFFFFFFFFFF8);
    v52 = (ObjectType + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 2) = 0;
    *(v54 + 3) = 0;
    v55 = v38;
    v56 = v95;
    *(v54 + 4) = v97;
    (*(v49 + 32))(&v54[v50], v91, v48);
    v57 = &v54[v51];
    v58 = v83;
    v59 = v84;
    *v57 = v83;
    v57[1] = v59;
    *&v54[v96] = v86;
    *(ObjectType + v54) = v85;
    *&v54[v52] = v56;
    *&v54[v53] = v55;
    v60 = &v54[(v53 + 15) & 0xFFFFFFFFFFFFFFF8];
    v61 = v93;
    *v60 = v92;
    *(v60 + 1) = v61;
    v62 = v56;
    v63 = v55;
    v64 = v97;
    sub_1A97B40FC(v58, v59);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v99, &unk_1A9992420, v54);
  }
}

uint64_t sub_1A97BC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 136) = v11;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A97BC47C, 0, 0);
}

uint64_t sub_1A97BC47C()
{
  v16 = v0;
  v1 = OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock;
  v2 = swift_task_alloc();
  v3 = *(*(v0 + 80) + v1);
  *(v2 + 16) = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1A97C1124;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_1A97C1140(&v15);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v13 = *(v0 + 128);
  os_unfair_lock_unlock(v3 + 4);
  v9 = v15;
  *(v0 + 160) = *(&v15 + 1);

  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  *(v0 + 64) = v13;
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_1A97BC708;

  return v14(v0 + 32, v0 + 16, v0 + 48, v0 + 56, v0 + 64, v0 + 72);
}

uint64_t sub_1A97BC708()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(v2 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1A97BC8F8;
  }

  else
  {
    *(v2 + 184) = *(v2 + 32);
    v6 = sub_1A97BC844;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A97BC844()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  sub_1A97B40FC(v2, v1);
  v4(v2, v1, v6, v5, 0);
  sub_1A97B43C4(v2, v1);
  sub_1A97B43C4(v2, v1);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A97BC8F8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v5 = v1;
  v6 = sub_1A99195C8(v1);

  v3(0, 0xF000000000000000, 0, 0, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A97BC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_1A97BCE34(a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  swift_endAccess();
  strcpy(v17, "no body for ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_1A99762C0();
  sub_1A97C10E0(&qword_1EB3AC890);
  v13 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v13);

  v14 = v17[1];
  if (v12)
  {

    *a3 = v12;
    a3[1] = v11;
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v16 = v17[0];
    v16[1] = v14;
    v16[2] = 0xD00000000000004CLL;
    v16[3] = 0x80000001A99E2F10;
    v16[4] = 213;
    v16[10] = 0x2000000000000000;
    return swift_willThrow();
  }

  return result;
}

id _SFXPCBlockContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1A97BCD7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1A9977460();
  v5 = sub_1A9976730();

  return sub_1A97BCF74(a1, v5);
}

unint64_t sub_1A97BCDE0()
{
  result = qword_1EB3B3040[0];
  if (!qword_1EB3B3040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3040);
  }

  return result;
}

unint64_t sub_1A97BCE34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1A99762C0();
  sub_1A97C10E0(&unk_1EB3ACFB0);
  v5 = sub_1A9976730();

  return sub_1A97BD10C(a1, v5);
}

unint64_t sub_1A97BCEB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A9977980();
  sub_1A99768D0();
  v6 = sub_1A99779B0();

  return sub_1A97BD2B8(a1, a2, v6);
}

unint64_t sub_1A97BCF30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A9977230();

  return sub_1A97BD370(a1, v5);
}

unint64_t sub_1A97BCF74(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1A9977460();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1A99767A0();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1A97BD10C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1A97C10E0(&qword_1EB3ACCD0);
      v16 = sub_1A99767A0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1A97BD2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A99777E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A97BD370(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A97C1030(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC589EE0](v9, a1);
      sub_1A97C108C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A97BD438(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97BD530;

  return v7(a1);
}

uint64_t sub_1A97BD530()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1A97BD628(char *a1, int64_t a2, char a3)
{
  result = sub_1A97BDCC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A97BD648(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1A97BD6AC()
{
  result = qword_1EB3AB6D0;
  if (!qword_1EB3AB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB6D0);
  }

  return result;
}

uint64_t sub_1A97BD710(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v19 = *(v2 + 16);
  v16 = *(v2 + 40);
  v17 = *(v2 + 24);
  v7 = *(v2 + 56);
  v8 = *(sub_1A99762C0() - 8);
  v9 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1A97B2638;

  return sub_1A97B77B4(a1, a2, v10, v11, v12, v13, v2 + v9, v19);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 8);
  swift_unknownObjectRelease();
  v6 = *(v0 + 10);

  v7 = *(v0 + 11);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

double sub_1A97BD960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v12 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(sub_1A99762C0() - 8);
  v10 = *(v2 + 64);
  *&result = sub_1A97B9988(a1, *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + ((*(v9 + 80) + 96) & ~*(v9 + 80)), v5, v6, a2, v12, v7, v8).n128_u64[0];
  return result;
}

uint64_t sub_1A97BDA20(uint64_t a1)
{
  v4 = *(sub_1A99762C0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A98142B4(a1, v6, v7, v8, v1 + v5);
}

char *sub_1A97BDB18(char *a1, int64_t a2, char a3)
{
  result = sub_1A97BDDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A97BDB38(size_t a1, int64_t a2, char a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1710, &qword_1A99919F0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

size_t sub_1A97BDB7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1708, &unk_1A99928D8, type metadata accessor for SFSandboxTokenURLPair);
  *v3 = result;
  return result;
}

size_t sub_1A97BDBC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1718, &qword_1A99928E8, type metadata accessor for SFSecurityScopedURL);
  *v3 = result;
  return result;
}

char *sub_1A97BDC04(char *a1, int64_t a2, char a3)
{
  result = sub_1A97BDED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A97BDC24(void *a1, int64_t a2, char a3)
{
  result = sub_1A97BDFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A97BDC44(size_t a1, int64_t a2, char a3)
{
  result = sub_1A97BE12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A97BDC64(size_t a1, int64_t a2, char a3)
{
  result = sub_1A97BE31C(a1, a2, a3, *v3, &qword_1EB3B1688, &qword_1A999BA50, MEMORY[0x1E6966C00]);
  *v3 = result;
  return result;
}

char *sub_1A97BDCA8(char *a1, int64_t a2, char a3)
{
  result = sub_1A97BE4F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A97BDCC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
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

char *sub_1A97BDDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1700, &qword_1A99928D0);
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

char *sub_1A97BDED8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16F0, &qword_1A99928C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A97BDFF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1648, &qword_1A99927F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A97BE12C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1658, &qword_1A9992808);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1A97BE31C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A97BE4F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1178, &qword_1A99919C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A97BE618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1748, &qword_1A9992920);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
    v8 = sub_1A99774B0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v10, v6, &qword_1EB3B1748, &qword_1A9992920);
      result = sub_1A97BCE34(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A99762C0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BE800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1730, &qword_1A9992908);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v12 = sub_1A99774B0();
    v13 = *(v6 + 48);
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);

    while (1)
    {
      sub_1A97C13A4(v14, v10, &qword_1EB3B1730, &qword_1A9992908);
      result = sub_1A97BCE34(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_1A99762C0();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 16 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1A97BE9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v29 - v8;
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____SFXPCBlockContainer_asyncBlocksLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v3[v15] = v16;
  sub_1A99762B0();
  v17 = *(v10 + 16);
  v33 = v9;
  v17(&v3[OBJC_IVAR____SFXPCBlockContainer_uuid], v14, v9);
  v18 = &v3[OBJC_IVAR____SFXPCBlockContainer_name];
  v31 = a1;
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = v32;
  v34 = a2;

  v20 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks] = sub_1A97BE800(MEMORY[0x1E69E7CC0], &qword_1EB3B1740, &qword_1A99984B0);
  *&v3[OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks] = sub_1A97BE800(v20, &qword_1EB3B1738, &unk_1A9992910);
  *&v3[OBJC_IVAR____SFXPCBlockContainer_containerRegistry] = v19;
  if (v19)
  {
    v21 = sub_1A9976C00();
    (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
    v22 = v30;
    v23 = v33;
    v17(v30, v14, v33);
    v24 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v19;
    (*(v10 + 32))(&v25[v24], v22, v23);
    v26 = &v25[(v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
    v27 = v34;
    *v26 = v31;
    *(v26 + 1) = v27;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v36, &unk_1A9992900, v25);

    (*(v10 + 8))(v14, v23);
  }

  else
  {
    (*(v10 + 8))(v14, v33);
  }

  v37.receiver = v3;
  v37.super_class = ObjectType;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_1A97BED7C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1A99762C0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[3];
  v25 = v1[2];
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + v7);
  v23 = v1[4];
  v12 = *(v1 + v8);
  v13 = (v1 + v6);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *v13;
  v17 = v13[1];
  v18 = *(v1 + v11);
  v19 = *(v1 + v11 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_1A97B2988;

  return sub_1A97BC43C(a1, v25, v24, v23, v1 + v5, v16, v17, v22);
}

unint64_t sub_1A97BEF14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16F8, &qword_1A99928C8);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16E0, &unk_1A99928B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
    v8 = sub_1A99774B0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v10, v6, &unk_1EB3B16E0, &unk_1A99928B0);
      result = sub_1A97BCE34(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A99762C0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C0, &unk_1A9992890);
    v3 = sub_1A99774B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A97C13A4(v4, &v13, &qword_1EB3B16C8, &unk_1A999CE90);
      v5 = v13;
      v6 = v14;
      result = sub_1A97BCEB8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A967C4DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16A0, &qword_1A9992858);
    v8 = sub_1A99774B0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v10, v6, &qword_1EB3B1660, &qword_1A9992810);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A97BCEB8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1A99763B0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF670(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A97BCEB8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF76C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1678, &qword_1A9992828);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
    v8 = sub_1A99774B0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v10, v6, &qword_1EB3B1678, &qword_1A9992828);
      result = sub_1A97BCE34(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A99762C0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1A99763B0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1668, &qword_1A9992818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1670, &qword_1A9992820);
    v8 = sub_1A99774B0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A97C13A4(v10, v6, &qword_1EB3B1668, &qword_1A9992818);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A97BCEB8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1A99762C0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A97BCEB8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFC7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16D0, &unk_1A99928A0);
    v3 = sub_1A99774B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A97BCEB8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A97BFD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
    v3 = sub_1A99774B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A97C13A4(v4, v13, &qword_1EB3B1620, &qword_1A99927D0);
      result = sub_1A97BCF30(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A967C4DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A97BFEBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A98140D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1A97C0020()
{
  result = qword_1EB3AB5F0;
  if (!qword_1EB3AB5F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB3AB5F0);
  }

  return result;
}

unint64_t sub_1A97C0070()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    result = sub_1A97C0020();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for _SFXPCBlockContainer()
{
  result = qword_1ED717DC8;
  if (!qword_1ED717DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A97C02E4()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A97C0468(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, void (**a8)(const void *, void *, id, id, void))
{
  LODWORD(v91) = a6;
  v88 = a5;
  v95 = a4;
  v87 = a3;
  v86 = a2;
  v92 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = &v81 - v12;
  v13 = sub_1A99762C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v94 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v93 = swift_allocObject();
  *(v93 + 16) = a8;
  v19 = *&a7[OBJC_IVAR____SFXPCBlockContainer_name];
  v20 = *&a7[OBJC_IVAR____SFXPCBlockContainer_name + 8];
  v97 = a7;
  v21 = *&a7[OBJC_IVAR____SFXPCBlockContainer_containerRegistry];
  v90 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v90);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v85 = a8;
  _Block_copy(a8);
  sub_1A99762B0();
  v96 = v14;
  v23 = *(v14 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v18, v13);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v99 = v19;
  *v24 = v19;
  *(v24 + 1) = v20;
  v89 = v20;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v21;
  v84 = v15;
  v83 = v14 + 16;
  v82 = v23;
  if (v21)
  {
    v25 = sub_1A9976C00();
    v26 = v98;
    (*(*(v25 - 8) + 56))(v98, 1, 1, v25);
    v27 = v94;
    v23(v94, v18, v13);
    v28 = v96;
    v29 = (*(v96 + 80) + 40) & ~*(v96 + 80);
    v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v13;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v21;
    (*(v28 + 32))(&v32[v29], v27, v31);
    v33 = &v32[v30];
    v34 = v89;
    *v33 = v99;
    *(v33 + 1) = v34;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v26, &unk_1A9992868, v32);

    v13 = v31;

    (*(v28 + 8))(v18, v31);
  }

  else
  {
    (*(v96 + 8))(v18, v13);
    v34 = v89;
  }

  v106.receiver = v22;
  v106.super_class = v90;
  v35 = objc_msgSendSuper2(&v106, sel_init);

  v36 = objc_allocWithZone(type metadata accessor for _SFXPCBlockContainer());
  v99 = sub_1A97BE9E8(v99, v34, v21);

  if (v91)
  {
    v37 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
    v38 = v97;
    swift_beginAccess();
    v39 = *&v38[v37];
    if (*(v39 + 16) && (v40 = sub_1A97BCE34(v92), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 16 * v40;
      v43 = *v42;
      v44 = *(v42 + 8);
    }

    else
    {
      v43 = 0;
    }

    swift_endAccess();
    strcpy(v105, "no body for ");
    BYTE5(v105[1]) = 0;
    HIWORD(v105[1]) = -5120;
    sub_1A97C10E0(&qword_1EB3AC890);
    v67 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v67);

    v68 = v105[1];
    if (v43)
    {

      v105[0] = v86;
      v105[1] = v87;
      v103 = v88;
      v104 = v95;
      v101 = v99;
      v102 = v35;
      v43(v100, v105, &v104, &v103, &v102, &v101);
      sub_1A967C46C(v43);
      v75 = v100[0];
      v76 = v100[1];
      v77 = v35;
      v78 = v99;
      sub_1A97B40FC(v75, v76);
      v79 = sub_1A9976060();
      v85[2](v85, v79, v77, v78, 0);

      sub_1A97B43C4(v75, v76);
      sub_1A97B43C4(v75, v76);
    }

    else
    {
      v69 = v105[0];
      sub_1A97BCDE0();
      v70 = swift_allocError();
      *v71 = v69;
      v71[1] = v68;
      v71[2] = 0xD00000000000004CLL;
      v71[3] = 0x80000001A99E2F10;
      v71[4] = 206;
      v71[10] = 0x2000000000000000;
      swift_willThrow();

      v72 = objc_allocWithZone(type metadata accessor for _SFXPCError());
      v73 = v70;
      v74 = sub_1A99195C8(v70);

      (v85)[2](v85, 0, 0, 0, v74);
    }
  }

  else
  {
    v45 = sub_1A9976C00();
    (*(*(v45 - 8) + 56))(v98, 1, 1, v45);
    v46 = v94;
    v82(v94, v92, v13);
    v47 = v96;
    v48 = (*(v96 + 80) + 40) & ~*(v96 + 80);
    v49 = (v84 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v91 = v13;
    v92 = v35;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v47;
    v56 = v54;
    *(v54 + 2) = 0;
    *(v54 + 3) = 0;
    v57 = v99;
    *(v54 + 4) = v97;
    (*(v55 + 32))(&v54[v48], v46, v91);
    v58 = (v56 + v49);
    v59 = v86;
    v60 = v87;
    *v58 = v86;
    v58[1] = v60;
    *(v56 + v50) = v95;
    *(v56 + v51) = v88;
    v61 = v92;
    v62 = v93;
    *(v56 + v52) = v92;
    *(v56 + v53) = v57;
    v63 = (v56 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v63 = sub_1A97C0D38;
    v63[1] = v62;
    v64 = v61;
    v65 = v57;
    v66 = v97;
    sub_1A97B40FC(v59, v60);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v98, &unk_1A9992860, v56);
  }
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  sub_1A97B43C4(*(v0 + v4), *(v0 + v4 + 8));
  v10 = *(v0 + v5);
  swift_unknownObjectRelease();
  v11 = *(v0 + v6);
  swift_unknownObjectRelease();

  v12 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1A97C0E98(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1A99762C0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[3];
  v25 = v1[2];
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + v7);
  v23 = v1[4];
  v12 = *(v1 + v8);
  v13 = (v1 + v6);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *v13;
  v17 = v13[1];
  v18 = *(v1 + v11);
  v19 = *(v1 + v11 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_1A97B2638;

  return sub_1A97BC43C(a1, v25, v24, v23, v1 + v5, v16, v17, v22);
}

uint64_t sub_1A97C10E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A99762C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A97C1140@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1A97C1268(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A9813FE4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A97C13A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A97C140C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A97C1554(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A97B40FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1A97C1568@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X3>, id *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v13 = v6[7];
  v20 = v6[2];
  v14 = *(type metadata accessor for SFXPCSyncBlock() - 8);
  return sub_1A97BB34C(a1, a2, a3, a4, a5, v6 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v9, a6, v10, v11, v12, v13);
}

__n128 sub_1A97C1638(id *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  v12 = v6;
  v13 = *(v2 + 24);
  v7 = *(v2 + 56);
  v8 = (*(*(v5 - 8) + 80) + 80) & ~*(*(v5 - 8) + 80);
  v9 = (*(*(v5 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1A99762C0() - 8);
  sub_1A97B7D14(a1, a2, *(v2 + 64), *(v2 + 72), v2 + v8, *(v2 + v9), v2 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)), v5, v13, *(&v13 + 1), v12, *(&v12 + 1), v7);
  return result;
}

uint64_t sub_1A97C1758(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v17 = *(v5 + 32);
  v13 = *(v5 + 48);
  v14 = *(v5 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v15 = *(sub_1A9976BB0() - 8);
  return sub_1A97B808C(a1, a2, a3, a4, a5, v5 + ((*(v15 + 80) + 64) & ~*(v15 + 80)));
}

uint64_t objectdestroy_72Tm(uint64_t (*a1)(void, _OWORD *))
{
  v2 = v1[2];
  v9[0] = v1[1];
  v9[1] = v2;
  v9[2] = v1[3];
  v3 = (a1(0, v9) - 8);
  v4 = *(*v3 + 64);
  v5 = v1 + ((*(*v3 + 80) + 64) & ~*(*v3 + 80));
  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *&v5[v3[19] + 8];

  return swift_deallocObject();
}

uint64_t sub_1A97C1994(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v8 = v7;
  v10 = v6[2];
  v11 = v6[3];
  v13 = v6[4];
  v12 = v6[5];
  v14 = v6[6];
  v15 = v6[7];
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v13;
  v8[5] = v12;
  v8[6] = v14;
  v8[7] = v15;
  v16 = *(type metadata accessor for SFXPCBlock() - 8);
  v17 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v18 = swift_task_alloc();
  v8[8] = v18;
  *v18 = v8;
  v18[1] = sub_1A97C1AD8;

  return sub_1A97BA700(a1, a2, a3, a4, a5, a6, v6 + v17, v10);
}

uint64_t sub_1A97C1AD8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t SFAirDropReceive.Transfer.State.sfTransferState.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v1, v9, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v28 = *(v9 + 1);
      v29 = *(v9 + 3);
      v30 = *(v9 + 4);
      v31 = *(v9 + 5);
      v32 = v9[48];
      v33 = *(v9 + 7);
      v34 = *(v9 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v33, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v36 = &unk_1EB3B1798;
      v37 = &unk_1A99929A8;
      v38 = &v9[*(v35 + 48)];
      goto LABEL_8;
    case 2:
      sub_1A97B06FC(v9, &qword_1EB3B17A8, &unk_1A9999470);
      return 5;
    case 3:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v52 = &v9[v39[12]];
      v53 = v52[3];
      v54 = v52[4];
      sub_1A97C2280(*v52, v52[1], v52[2]);
      v55 = *&v9[v39[16] + 8];
      goto LABEL_19;
    case 4:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v40 = *&v9[v39[12]];
LABEL_19:

      sub_1A97C2220(&v9[v39[20]], type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_20;
    case 5:
    case 6:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v13 = *&v9[*(v12 + 48)];

      sub_1A97B06FC(&v9[*(v12 + 64)], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 5;
    case 7:
      v51 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0) + 48)];

LABEL_20:
      sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 2;
    case 8:
    case 9:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v15 = *&v9[v14[12]];

      v16 = *&v9[v14[16]];

      sub_1A97B06FC(&v9[v14[20]], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 7;
    case 10:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v49 = *&v9[*(v48 + 48)];

      v50 = *&v9[*(v48 + 64)];

      v17 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_13;
    case 11:
      v18 = *(v9 + 1);
      v19 = *(v9 + 3);
      v20 = *(v9 + 4);
      v21 = *(v9 + 5);
      v22 = v9[48];
      v23 = *(v9 + 7);
      v24 = *(v9 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v23, v24);
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      v26 = &qword_1EB3B17A8;
      v27 = &unk_1A9999470;
      goto LABEL_11;
    case 12:
    case 14:
      v17 = type metadata accessor for SFAirDropReceive.Transfer.State;
LABEL_13:
      sub_1A97C2220(v9, v17);
      return 4;
    case 13:
      v41 = *(v9 + 1);
      v42 = *(v9 + 3);
      v43 = *(v9 + 4);
      v44 = *(v9 + 5);
      v45 = v9[48];
      v46 = *(v9 + 7);
      v47 = *(v9 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v46, v47);
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0) + 48);
      v26 = &unk_1EB3B1798;
      v27 = &unk_1A99929A8;
LABEL_11:
      sub_1A97B06FC(&v9[v25], v26, v27);
      return 4;
    case 15:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v57 = v56[12];
      v58 = *&v9[v56[16] + 8];

      v59 = *&v9[v56[20]];

      v60 = *&v9[v56[24]];

      v61 = *&v9[v56[28]];

      sub_1A97C2220(&v9[v57], type metadata accessor for SFAirDropReceive.ItemDestination);
      goto LABEL_25;
    case 16:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      sub_1A97C36C8(&v9[*(v62 + 48)], v5, type metadata accessor for SFAirDropReceive.Failure);
      v63 = swift_getEnumCaseMultiPayload();
      if (v63 == 5)
      {
LABEL_25:
        sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 8;
      }

      else if (v63 == 4)
      {
        sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 3;
      }

      else
      {
        sub_1A97C2220(v5, type metadata accessor for SFAirDropReceive.Failure);
        sub_1A97C2220(v9, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        result = 9;
      }

      break;
    case 17:
      result = *v9;
      break;
    case 18:
    case 19:
    case 20:
      return result;
    case 21:
      result = 4;
      break;
    default:
      v36 = &qword_1EB3B17A8;
      v37 = &unk_1A9999470;
      v38 = v9;
LABEL_8:
      sub_1A97B06FC(v38, v36, v37);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1A97C2220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A97C2280(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return result;
}

uint64_t SFAirDropReceive.Transfer.State.permissionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  sub_1A97D82C0(v2, v7, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v35 = *(v7 + 1);
      v36 = *(v7 + 3);
      v37 = *(v7 + 4);
      v38 = *(v7 + 5);
      v39 = v7[48];
      v40 = *(v7 + 7);
      v41 = *(v7 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v40, v41);
      v42 = &qword_1EB3B17E0;
      v43 = &unk_1A99929F0;
      goto LABEL_24;
    case 3:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v44 = &v7[v29[12]];
      v45 = v44[3];
      v46 = v44[4];
      sub_1A97C2280(*v44, v44[1], v44[2]);
      v47 = *&v7[v29[16] + 8];
      goto LABEL_16;
    case 4:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v30 = *&v7[v29[12]];
LABEL_16:

      sub_1A97C2220(&v7[v29[20]], type metadata accessor for SFAirDrop.DeclineAction);
      v22 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 5:
    case 6:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v21 = *&v7[*(v20 + 48)];

      v19 = *(v20 + 64);
      goto LABEL_5;
    case 7:
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0) + 48);
      goto LABEL_13;
    case 8:
    case 9:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v17 = *&v7[v16[12]];

      v18 = *&v7[v16[16]];

      v19 = v16[20];
LABEL_5:
      sub_1A97D8380(&v7[v19], v12, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.ItemDestination);
      goto LABEL_9;
    case 10:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v33 = *&v7[*(v32 + 48)];

      v31 = *(v32 + 64);
LABEL_13:
      v34 = *&v7[v31];

      v22 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 11:
      v23 = *(v7 + 1);
      v24 = *(v7 + 3);
      v25 = *(v7 + 4);
      v26 = *(v7 + 5);
      v27 = v7[48];
      v28 = *(v7 + 8);
      v67 = *(v7 + 7);

      sub_1A97B4368();
      sub_1A97B43C4(v67, v28);
      v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48)];
      goto LABEL_8;
    case 12:
    case 14:
      v22 = type metadata accessor for SFAirDropReceive.Transfer.State;
      goto LABEL_20;
    case 13:
      v58 = *(v7 + 1);
      v59 = *(v7 + 3);
      v60 = *(v7 + 4);
      v61 = *(v7 + 5);
      v62 = v7[48];
      v63 = *(v7 + 7);
      v64 = *(v7 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v63, v64);
      v42 = &qword_1EB3B1790;
      v43 = &qword_1A99929A0;
LABEL_24:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      sub_1A97B06FC(&v7[*(v65 + 48)], &qword_1EB3B1798, &qword_1A99929A8);
      goto LABEL_21;
    case 15:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v49 = v48[12];
      v50 = *&v7[v48[16] + 8];

      v51 = *&v7[v48[20]];

      v52 = *&v7[v48[24]];

      v53 = *&v7[v48[28]];

      v54 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v55 = &v7[v49];
      goto LABEL_19;
    case 16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      v54 = type metadata accessor for SFAirDropReceive.Failure;
      v55 = &v7[*(v56 + 48)];
LABEL_19:
      sub_1A97C2220(v55, v54);
      v22 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_20:
      sub_1A97C2220(v7, v22);
LABEL_21:
      v14 = 1;
      break;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
      return (*(v9 + 56))(a1, v14, 1, v8);
    default:
      v15 = v7;
LABEL_8:
      sub_1A97D8380(v15, v12, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_9:
      sub_1A97D8380(v12, a1, &qword_1EB3B17A8, &unk_1A9999470);
      v14 = 0;
      break;
  }

  return (*(v9 + 56))(a1, v14, 1, v8);
}

uint64_t SFAirDropReceive.Transfer.State.contactResponsePermissionRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  sub_1A97D82C0(v2, v7, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13)
  {
    v34 = a1;
    v23 = *(v7 + 1);
    v24 = *(v7 + 3);
    v25 = *(v7 + 4);
    v26 = *(v7 + 5);
    v27 = v7[48];
    v28 = *(v7 + 7);
    v29 = *(v7 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v28, v29);
    v21 = &qword_1EB3B1790;
    v22 = &qword_1A99929A0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = a1;
    v14 = *(v7 + 1);
    v15 = *(v7 + 3);
    v16 = *(v7 + 4);
    v17 = *(v7 + 5);
    v18 = v7[48];
    v19 = *(v7 + 7);
    v20 = *(v7 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v19, v20);
    v21 = &qword_1EB3B17E0;
    v22 = &unk_1A99929F0;
LABEL_5:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    sub_1A97D8380(&v7[*(v30 + 48)], v12, &qword_1EB3B1798, &qword_1A99929A8);
    v31 = v34;
    sub_1A97D8380(v12, v34, &qword_1EB3B1798, &qword_1A99929A8);
    return (*(v9 + 56))(v31, 0, 1, v8);
  }

  (*(v9 + 56))(a1, 1, 1, v8);
  return sub_1A97C2220(v7, type metadata accessor for SFAirDropReceive.Transfer.State);
}

uint64_t SFAirDropReceive.Transfer.State.cancelAction.getter@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  v1 = *(*(v102 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v102);
  v100 = (&v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v98 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v6 = *(*(v101 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v101);
  v98 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v98 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v11 = *(*(v104 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v104);
  v99 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v98 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v98 - v17);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v19 = *(*(v103 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v103);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v98 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v98 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  v30 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SFAirDrop.DeclineAction();
  v35 = *(v34 - 8);
  v106 = v34;
  v107 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v108, v33, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
        v64 = *&v33[*(v63 + 48)];

        v65 = *(v63 + 64);
LABEL_22:
        v69 = v105;
        sub_1A97D8380(&v33[v65], v105, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A97C3508(v109);
        sub_1A97B06FC(v69, &qword_1EB3B17A8, &unk_1A9999470);
        v70 = type metadata accessor for SFAirDropReceive.ItemDestination;
        return sub_1A97C2220(v33, v70);
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_36;
      }

LABEL_21:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v67 = *&v33[v66[12]];

      v68 = *&v33[v66[16]];

      v65 = v66[20];
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 9)
    {
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 11)
    {
      if (EnumCaseMultiPayload == 13)
      {
        v42 = *(v33 + 1);
        v43 = *(v33 + 3);
        v44 = *(v33 + 4);
        v45 = *(v33 + 5);
        v46 = v33[48];
        v47 = *(v33 + 7);
        v48 = *(v33 + 8);

        sub_1A97B4368();
        sub_1A97B43C4(v47, v48);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
        v50 = v98;
        sub_1A97D8380(&v33[*(v49 + 48)], v98, &qword_1EB3B1798, &qword_1A99929A8);
        v51 = v100;
        sub_1A97C13A4(v50 + *(v101 + 60), v100, &qword_1EB3B17E8, &unk_1A99A4890);
        sub_1A97B06FC(v50, &qword_1EB3B1798, &qword_1A99929A8);
LABEL_18:
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v107 + 56))(v109, 1, 1, v106);
          v61 = &qword_1EB3B17E8;
          v62 = &unk_1A99A4890;
          return sub_1A97B06FC(v51, v61, v62);
        }

        v72 = v51[1];

        v73 = v51[3];

        v74 = v51[4];

        v75 = &unk_1EB3B17F8;
        v76 = &unk_1A9992A08;
LABEL_35:
        v93 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v75, v76) + 80);
LABEL_38:
        v97 = v109;
        sub_1A97C36C8(v93, v109, type metadata accessor for SFAirDrop.DeclineAction);
        return (*(v107 + 56))(v97, 0, 1, v106);
      }

      goto LABEL_36;
    }

    v82 = *(v33 + 1);
    v83 = *(v33 + 3);
    v84 = *(v33 + 4);
    v85 = *(v33 + 5);
    v86 = v33[48];
    v87 = *(v33 + 7);
    v88 = *(v33 + 8);

    sub_1A97B4368();
    sub_1A97B43C4(v87, v88);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
    sub_1A97D8380(&v33[*(v89 + 48)], v22, &qword_1EB3B17A8, &unk_1A9999470);
    v51 = v99;
    sub_1A97C13A4(&v22[*(v103 + 60)], v99, &qword_1EB3B17F0, &qword_1A9992A00);
    sub_1A97B06FC(v22, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_31:
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v107 + 56))(v109, 1, 1, v106);
      v61 = &qword_1EB3B17F0;
      v62 = &qword_1A9992A00;
      return sub_1A97B06FC(v51, v61, v62);
    }

    v90 = v51[1];

    v91 = v51[3];

    v92 = v51[4];

    v75 = &qword_1EB3B1800;
    v76 = &qword_1A9992A10;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1A97D8380(v33, v29, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C13A4(&v29[*(v103 + 60)], v18, &qword_1EB3B17F0, &qword_1A9992A00);
      sub_1A97B06FC(v29, &qword_1EB3B17A8, &unk_1A9999470);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v107 + 56))(v109, 1, 1, v106);
        return sub_1A97B06FC(v18, &qword_1EB3B17F0, &qword_1A9992A00);
      }

      v94 = v18[1];

      v95 = v18[3];

      v96 = v18[4];

      v93 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v52 = v5;
      v53 = *(v33 + 1);
      v54 = *(v33 + 3);
      v55 = *(v33 + 4);
      v56 = *(v33 + 5);
      v57 = v33[48];
      v58 = *(v33 + 7);
      v59 = *(v33 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v58, v59);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97D8380(&v33[*(v60 + 48)], v10, &qword_1EB3B1798, &qword_1A99929A8);
      v51 = v52;
      sub_1A97C13A4(&v10[*(v101 + 60)], v52, &qword_1EB3B17E8, &unk_1A99A4890);
      sub_1A97B06FC(v10, &qword_1EB3B1798, &qword_1A99929A8);
      goto LABEL_18;
    }

LABEL_36:
    (*(v107 + 56))(v109, 1, 1, v106);
    v70 = type metadata accessor for SFAirDropReceive.Transfer.State;
    return sub_1A97C2220(v33, v70);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1A97D8380(v33, v27, &qword_1EB3B17A8, &unk_1A9999470);
    v51 = v16;
    sub_1A97C13A4(&v27[*(v103 + 60)], v16, &qword_1EB3B17F0, &qword_1A9992A00);
    sub_1A97B06FC(v27, &qword_1EB3B17A8, &unk_1A9999470);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
    v77 = &v33[v40[12]];
    v78 = v77[3];
    v79 = v77[4];
    sub_1A97C2280(*v77, v77[1], v77[2]);
    v41 = &v33[v40[16] + 8];
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
    v41 = &v33[v40[12]];
  }

  v80 = *v41;

  sub_1A97C36C8(&v33[v40[20]], v38, type metadata accessor for SFAirDrop.DeclineAction);
  sub_1A97C2220(v33, type metadata accessor for SFAirDropReceive.ItemDestination);
  v81 = v109;
  sub_1A97C36C8(v38, v109, type metadata accessor for SFAirDrop.DeclineAction);
  return (*(v107 + 56))(v81, 0, 1, v106);
}

uint64_t sub_1A97C3508@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v15 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97C13A4(v1 + *(v7 + 60), v6, &qword_1EB3B17F0, &qword_1A9992A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    return sub_1A97B06FC(v6, &qword_1EB3B17F0, &qword_1A9992A00);
  }

  else
  {
    v10 = v6[1];

    v11 = v6[3];

    v12 = v6[4];

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10);
    sub_1A97C36C8(v6 + *(v13 + 80), a1, type metadata accessor for SFAirDrop.DeclineAction);
    v14 = type metadata accessor for SFAirDrop.DeclineAction();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t sub_1A97C36C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t SFAirDropReceive.Transfer.State.description.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A99762E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v113 = *(v10 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v113 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v113 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v113 - v20;
  v22 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v0, v25, type metadata accessor for SFAirDropReceive.Transfer.State);
  v26 = 0x646574616572632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v82 = *(v25 + 1);
      v83 = *(v25 + 3);
      v84 = *(v25 + 4);
      v85 = *(v25 + 5);
      v86 = v25[48];
      v87 = *(v25 + 7);
      v88 = *(v25 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v87, v88);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97D8380(&v25[*(v89 + 48)], v17, &qword_1EB3B1798, &qword_1A99929A8);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v47 = 0x80000001A99E3480;
      v48 = 0xD00000000000002ALL;
      goto LABEL_10;
    case 2u:
      sub_1A97D8380(v25, v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v27 = 0x80000001A99E3450;
      v28 = 0xD000000000000028;
      goto LABEL_13;
    case 3u:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v57 = &v25[v56[12]];
      v58 = *v57;
      v59 = v57[1];
      v60 = v57[2];
      v61 = v57[3];
      v62 = v57[4];
      v63 = *&v25[v56[16] + 8];

      v64 = v56[20];
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v121 = 0xD000000000000018;
      v122 = 0x80000001A99E3430;
      v115 = v58;
      v116 = v59;
      v117 = v60;
      v118 = v61;
      v119 = v62;
      v65 = SFAirDrop.Progress.description.getter();
      v67 = v66;
      sub_1A97C2280(v58, v59, v60);
      MEMORY[0x1AC5895B0](v65, v67);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v121;
      v68 = &v25[v64];
      goto LABEL_19;
    case 4u:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v98 = *&v25[v97[12]];

      v99 = *&v25[v97[16]];
      v100 = v97[20];
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v115 = 0xD000000000000020;
      v116 = 0x80000001A99E3400;
      v120 = v99;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18);
      sub_1A99766D0();
      (*(v113 + 8))(v13, v10);
      MEMORY[0x1AC5895B0](v121, v122);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      v68 = &v25[v100];
LABEL_19:
      sub_1A97C2220(v68, type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_28;
    case 5u:
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v102 = *&v25[*(v101 + 48)];

      sub_1A97D8380(&v25[*(v101 + 64)], v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v80 = 0x80000001A99E33D0;
      v81 = 0xD000000000000024;
      goto LABEL_25;
    case 6u:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v93 = *&v25[*(v92 + 48)];

      sub_1A97D8380(&v25[*(v92 + 64)], v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v80 = 0x80000001A99E3330;
      v81 = 0xD000000000000028;
      goto LABEL_25;
    case 7u:
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v110 = *&v25[*(v109 + 48)];

      v111 = *&v25[*(v109 + 64)];
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v115 = 0xD000000000000015;
      v116 = 0x80000001A99E33B0;
      v120 = v111;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18);
      sub_1A99766D0();
      (*(v113 + 8))(v13, v10);
      MEMORY[0x1AC5895B0](v121, v122);
      goto LABEL_27;
    case 8u:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v78 = *&v25[v77[12]];

      v79 = *&v25[v77[16]];

      sub_1A97D8380(&v25[v77[20]], v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v80 = 0x80000001A99E3390;
      v81 = 0xD000000000000018;
      goto LABEL_25;
    case 9u:
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v106 = *&v25[v105[12]];

      v107 = *&v25[v105[16]];

      sub_1A97D8380(&v25[v105[20]], v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v80 = 0x80000001A99E3360;
      v81 = 0xD000000000000023;
LABEL_25:
      v115 = v81;
      v116 = v80;
      v108 = sub_1A97D4358();
      MEMORY[0x1AC5895B0](v108);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      sub_1A97B06FC(v21, &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_28;
    case 0xAu:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v50 = *&v25[*(v49 + 48)];

      v51 = *&v25[*(v49 + 64)];
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v115 = 0xD000000000000017;
      v116 = 0x80000001A99E3310;
      v52 = sub_1A9976020();
      v53 = MEMORY[0x1AC589770](v51, v52);
      v55 = v54;

      MEMORY[0x1AC5895B0](v53, v55);
LABEL_27:

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
LABEL_28:
      v37 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v38 = v25;
      goto LABEL_29;
    case 0xBu:
      v69 = *(v25 + 1);
      v70 = *(v25 + 3);
      v71 = *(v25 + 4);
      v72 = *(v25 + 5);
      v73 = v25[48];
      v74 = *(v25 + 7);
      v75 = *(v25 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v74, v75);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      sub_1A97D8380(&v25[*(v76 + 48)], v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000030, 0x80000001A99E32A0);
      goto LABEL_14;
    case 0xCu:
      sub_1A97C2220(v25, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000019;
    case 0xDu:
      v39 = *(v25 + 1);
      v40 = *(v25 + 3);
      v41 = *(v25 + 4);
      v42 = *(v25 + 5);
      v43 = v25[48];
      v44 = *(v25 + 7);
      v45 = *(v25 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v44, v45);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      sub_1A97D8380(&v25[*(v46 + 48)], v17, &qword_1EB3B1798, &qword_1A99929A8);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v47 = 0x80000001A99E3250;
      v48 = 0xD00000000000002DLL;
LABEL_10:
      v115 = v48;
      v116 = v47;
      v90 = sub_1A97D4074();
      MEMORY[0x1AC5895B0](v90);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      sub_1A97B06FC(v17, &qword_1EB3B1798, &qword_1A99929A8);
      return v26;
    case 0xEu:
      sub_1A97C2220(v25, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000013;
    case 0xFu:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v30 = v29[12];
      v31 = *&v25[v29[16] + 8];

      v32 = *&v25[v29[20]];

      v33 = *&v25[v29[24]];

      v34 = *&v25[v29[28]];

      v35 = v114;
      sub_1A97C36C8(v25, v114, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v115 = 0xD000000000000017;
      v116 = 0x80000001A99E3210;
      v36 = SFAirDropReceive.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v36);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      sub_1A97C2220(v35, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v37 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v38 = &v25[v30];
      goto LABEL_29;
    case 0x10u:
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990) + 48);
      v95 = v114;
      sub_1A97C36C8(v25, v114, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      sub_1A97C36C8(&v25[v94], v4, type metadata accessor for SFAirDropReceive.Failure);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](0x63697274656D202CLL, 0xEB00000000203A73);
      v96 = SFAirDropReceive.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v96);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      sub_1A97C2220(v4, type metadata accessor for SFAirDropReceive.Failure);
      v37 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
      v38 = v95;
LABEL_29:
      sub_1A97C2220(v38, v37);
      break;
    case 0x11u:
      v103 = *v25;
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v115 = 0xD000000000000015;
      v116 = 0x80000001A99E31D0;
      v121 = v103;
      v104 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v104);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      break;
    case 0x12u:
      return v26;
    case 0x13u:
      v26 = 0x6363416F7475612ELL;
      break;
    case 0x14u:
      v26 = 0xD000000000000011;
      break;
    case 0x15u:
      v26 = 0xD000000000000021;
      break;
    default:
      sub_1A97D8380(v25, v21, &qword_1EB3B17A8, &unk_1A9999470);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1A99772B0();

      v27 = 0x80000001A99E34B0;
      v28 = 0xD000000000000017;
LABEL_13:
      v115 = v28;
      v116 = v27;
LABEL_14:
      v91 = sub_1A97D4358();
      MEMORY[0x1AC5895B0](v91);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v26 = v115;
      sub_1A97B06FC(v21, &qword_1EB3B17A8, &unk_1A9999470);
      break;
  }

  return v26;
}

uint64_t SFAirDropReceive.Transfer.State.shortDescription.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A99762E0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1808, &qword_1A9992A18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v86 - v10;
  v12 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v0, v15, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574616572632ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v60 = *(v15 + 1);
      v61 = *(v15 + 3);
      v62 = *(v15 + 4);
      v63 = *(v15 + 5);
      v64 = v15[48];
      v65 = *(v15 + 7);
      v66 = *(v15 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v65, v66);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      sub_1A97B06FC(&v15[*(v67 + 48)], &qword_1EB3B1798, &qword_1A99929A8);
      return 0xD000000000000029;
    case 2:
      sub_1A97B06FC(v15, &qword_1EB3B17A8, &unk_1A9999470);
      return 0xD000000000000027;
    case 3:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v36 = &v15[v35[12]];
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      v40 = v36[3];
      v41 = v36[4];
      v42 = *&v15[v35[16] + 8];

      v43 = v35[20];
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1A99772B0();

      v92 = 0xD000000000000018;
      v93 = 0x80000001A99E3430;
      v86 = v37;
      v87 = v38;
      v88 = v39;
      v89 = v40;
      v90 = v41;
      v44 = SFAirDrop.Progress.description.getter();
      v46 = v45;
      sub_1A97C2280(v37, v38, v39);
      MEMORY[0x1AC5895B0](v44, v46);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v47 = v92;
      v48 = &v15[v43];
      goto LABEL_18;
    case 4:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v73 = *&v15[v72[12]];

      v74 = *&v15[v72[16]];
      v75 = v72[20];
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1A99772B0();

      v86 = 0xD000000000000020;
      v87 = 0x80000001A99E3400;
      v91 = v74;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18);
      sub_1A99766D0();
      (*(v8 + 8))(v11, v7);
      MEMORY[0x1AC5895B0](v92, v93);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v47 = v86;
      v48 = &v15[v75];
LABEL_18:
      sub_1A97C2220(v48, type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_26;
    case 5:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v77 = *&v15[*(v76 + 48)];

      sub_1A97B06FC(&v15[*(v76 + 64)], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000023;
    case 6:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v69 = *&v15[*(v68 + 48)];

      sub_1A97B06FC(&v15[*(v68 + 64)], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000027;
    case 7:
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v84 = *&v15[*(v83 + 48)];

      v85 = *&v15[*(v83 + 64)];
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1A99772B0();

      v86 = 0xD000000000000015;
      v87 = 0x80000001A99E33B0;
      v91 = v85;
      sub_1A99762D0();
      sub_1A97D4C04();
      sub_1A9975F30();
      sub_1A97AF974(&qword_1EB3B1818, &qword_1EB3B1808, &qword_1A9992A18);
      sub_1A99766D0();
      (*(v8 + 8))(v11, v7);
      MEMORY[0x1AC5895B0](v92, v93);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v47 = v86;
LABEL_26:
      v71 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_27;
    case 8:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v58 = *&v15[v57[12]];

      v59 = *&v15[v57[16]];

      sub_1A97B06FC(&v15[v57[20]], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000017;
    case 9:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v81 = *&v15[v80[12]];

      v82 = *&v15[v80[16]];

      sub_1A97B06FC(&v15[v80[20]], &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0xD000000000000022;
    case 10:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v33 = *&v15[*(v32 + 48)];

      v34 = *&v15[*(v32 + 64)];

      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 0x676E696E65706F2ELL;
    case 11:
      v49 = *(v15 + 1);
      v50 = *(v15 + 3);
      v51 = *(v15 + 4);
      v52 = *(v15 + 5);
      v53 = v15[48];
      v54 = *(v15 + 7);
      v55 = *(v15 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v54, v55);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      sub_1A97B06FC(&v15[*(v56 + 48)], &qword_1EB3B17A8, &unk_1A9999470);
      return 0xD000000000000026;
    case 12:
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000019;
    case 13:
      v24 = *(v15 + 1);
      v25 = *(v15 + 3);
      v26 = *(v15 + 4);
      v27 = *(v15 + 5);
      v28 = v15[48];
      v29 = *(v15 + 7);
      v30 = *(v15 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v29, v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      sub_1A97B06FC(&v15[*(v31 + 48)], &qword_1EB3B1798, &qword_1A99929A8);
      return 0xD000000000000023;
    case 14:
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.Transfer.State);
      return 0xD000000000000013;
    case 15:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v19 = v18[12];
      v20 = *&v15[v18[16] + 8];

      v21 = *&v15[v18[20]];

      v22 = *&v15[v18[24]];

      v23 = *&v15[v18[28]];

      sub_1A97C2220(&v15[v19], type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_1A97C2220(v15, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      goto LABEL_4;
    case 16:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      sub_1A97C36C8(&v15[*(v70 + 48)], v4, type metadata accessor for SFAirDropReceive.Failure);
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v47 = v86;
      sub_1A97C2220(v4, type metadata accessor for SFAirDropReceive.Failure);
      v71 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_27:
      sub_1A97C2220(v15, v71);
      result = v47;
      break;
    case 17:
      v78 = *v15;
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1A99772B0();

      v86 = 0xD000000000000015;
      v87 = 0x80000001A99E31D0;
      v92 = v78;
      v79 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v79);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      result = v86;
      break;
    case 18:
      return result;
    case 19:
      result = 0x6363416F7475612ELL;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000021;
      break;
    default:
      sub_1A97B06FC(v15, &qword_1EB3B17A8, &unk_1A9999470);
LABEL_4:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t SFAirDropReceive.Transfer.State.currentProgressCount.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A97D82C0(v0, v4, type metadata accessor for SFAirDropReceive.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v31 = *(v4 + 1);
      v32 = *(v4 + 3);
      v33 = *(v4 + 4);
      v34 = *(v4 + 5);
      v35 = v4[48];
      v36 = *(v4 + 7);
      v37 = *(v4 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v36, v37);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v7 = &qword_1EB3B1798;
      v8 = &qword_1A99929A8;
      v9 = &v4[*(v38 + 48)];
      goto LABEL_12;
    case 3:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v53 = &v4[v52[12]];
      v55 = *v53;
      v54 = v53[1];
      v57 = v53[2];
      v56 = v53[3];
      v58 = v53[4];
      v59 = *&v4[v52[16] + 8];

      if (v57 >> 62)
      {
        if (v57 >> 62 == 1)
        {
          sub_1A97C2280(v55, v54, v57);
          v60 = 900;
        }

        else
        {
          v70 = v57 != 0x8000000000000000 || (v54 | v55 | v56 | v58) != 0;
          v60 = v70 << 63 >> 63;
        }

        goto LABEL_41;
      }

      v60 = 450;
      if ((v57 & 1) != 0 || v54 < 1)
      {
LABEL_41:
        v71 = v52[20];
        v42 = v60;
        sub_1A97C2220(&v4[v71], type metadata accessor for SFAirDrop.DeclineAction);
        goto LABEL_42;
      }

      v68 = v56 * 1000.0 / v54 * 0.9;
      if (COERCE__INT64(fabs(v68)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_46;
      }

      if (v68 > -9.22337204e18)
      {
        if (v68 >= 9.22337204e18)
        {
          goto LABEL_48;
        }

        v60 = v68;
        goto LABEL_41;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    case 4:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v30 = *&v4[*(v29 + 48)];

      sub_1A97C2220(&v4[*(v29 + 80)], type metadata accessor for SFAirDrop.DeclineAction);
      goto LABEL_10;
    case 5:
    case 6:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v11 = *&v4[*(v10 + 48)];

      sub_1A97B06FC(&v4[*(v10 + 64)], &qword_1EB3B17A8, &unk_1A9999470);
LABEL_10:
      sub_1A97C2220(v4, type metadata accessor for SFAirDropReceive.ItemDestination);
      return 900;
    case 7:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v40 = *&v4[*(v39 + 48)];

      v41 = *&v4[*(v39 + 64)] * 1000.0 * 0.1 + 900.0;
      if (COERCE__INT64(fabs(v41)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v41 <= -9.22337204e18)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v41 >= 9.22337204e18)
      {
        goto LABEL_45;
      }

      v42 = v41;
LABEL_42:
      sub_1A97C2220(v4, type metadata accessor for SFAirDropReceive.ItemDestination);
      return v42;
    case 8:
    case 9:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v13 = *&v4[v12[12]];

      v14 = *&v4[v12[16]];

      sub_1A97B06FC(&v4[v12[20]], &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_8;
    case 10:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v27 = *&v4[*(v26 + 48)];

      v28 = *&v4[*(v26 + 64)];

LABEL_8:
      v15 = type metadata accessor for SFAirDropReceive.ItemDestination;
      goto LABEL_20;
    case 11:
      v16 = *(v4 + 1);
      v17 = *(v4 + 3);
      v18 = *(v4 + 4);
      v19 = *(v4 + 5);
      v20 = v4[48];
      v21 = *(v4 + 7);
      v22 = *(v4 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v21, v22);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0) + 48);
      v24 = &qword_1EB3B17A8;
      v25 = &unk_1A9999470;
      goto LABEL_25;
    case 12:
    case 14:
      v15 = type metadata accessor for SFAirDropReceive.Transfer.State;
      goto LABEL_20;
    case 13:
      v61 = *(v4 + 1);
      v62 = *(v4 + 3);
      v63 = *(v4 + 4);
      v64 = *(v4 + 5);
      v65 = v4[48];
      v66 = *(v4 + 7);
      v67 = *(v4 + 8);

      sub_1A97B4368();
      sub_1A97B43C4(v66, v67);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0) + 48);
      v24 = &qword_1EB3B1798;
      v25 = &qword_1A99929A8;
LABEL_25:
      sub_1A97B06FC(&v4[v23], v24, v25);
      return 1000;
    case 15:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v44 = v43[12];
      v45 = *&v4[v43[16] + 8];

      v46 = *&v4[v43[20]];

      v47 = *&v4[v43[24]];

      v48 = *&v4[v43[28]];

      v49 = type metadata accessor for SFAirDropReceive.ItemDestination;
      v50 = &v4[v44];
      goto LABEL_19;
    case 16:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990);
      v49 = type metadata accessor for SFAirDropReceive.Failure;
      v50 = &v4[*(v51 + 48)];
LABEL_19:
      sub_1A97C2220(v50, v49);
      v15 = type metadata accessor for SFAirDropReceive.Transfer.Metrics;
LABEL_20:
      sub_1A97C2220(v4, v15);
      return 1000;
    case 17:
    case 21:
      return 1000;
    case 18:
    case 19:
    case 20:
      return result;
    default:
      v7 = &qword_1EB3B17A8;
      v8 = &unk_1A9999470;
      v9 = v4;
LABEL_12:
      sub_1A97B06FC(v9, v7, v8);
      return 0;
  }
}

unint64_t sub_1A97C5B0C(char a1)
{
  result = 0x64657461657263;
  switch(a1)
  {
    case 1:
      result = 0x656363416F747561;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
    case 9:
      result = 0xD000000000000026;
      break;
    case 6:
    case 20:
      result = 0x726566736E617274;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
    case 17:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0x6E6974726F706D69;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0x676E696E65706FLL;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000025;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A97C5D94(uint64_t a1)
{
  v2 = sub_1A97D802C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5DD0(uint64_t a1)
{
  v2 = sub_1A97D802C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5E0C()
{
  v1 = 0x74616E6974736564;
  v2 = 0x73736572676F7270;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x726566736E617274;
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

uint64_t sub_1A97C5EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DB410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C5ECC(uint64_t a1)
{
  v2 = sub_1A97D7E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5F08(uint64_t a1)
{
  v2 = sub_1A97D7E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5F44(uint64_t a1)
{
  v2 = sub_1A97D8080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C5F80(uint64_t a1)
{
  v2 = sub_1A97D8080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C5FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DB584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C5FF8(uint64_t a1)
{
  v2 = sub_1A97D7804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6034(uint64_t a1)
{
  v2 = sub_1A97D7804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6070()
{
  v1 = *v0;
  v2 = 0x7363697274656DLL;
  v3 = 0x726566736E617274;
  v4 = 0x646574726F706D69;
  if (v1 != 4)
  {
    v4 = 0x525564656E65706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74616E6974736564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_1A97C6150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DBC50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C6184(uint64_t a1)
{
  v2 = sub_1A97D7948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C61C0(uint64_t a1)
{
  v2 = sub_1A97D7948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C61FC(uint64_t a1)
{
  v2 = sub_1A97D80D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6238(uint64_t a1)
{
  v2 = sub_1A97D80D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6274()
{
  v1 = 0x726566736E617274;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A97C62E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DBE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C630C(uint64_t a1)
{
  v2 = sub_1A97D7D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6348(uint64_t a1)
{
  v2 = sub_1A97D7D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C63A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97C6438(uint64_t a1)
{
  v2 = sub_1A97D7B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6474(uint64_t a1)
{
  v2 = sub_1A97D7B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C64B0(uint64_t a1)
{
  v2 = sub_1A97D7858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C64EC(uint64_t a1)
{
  v2 = sub_1A97D7858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6528()
{
  v1 = 0x726566736E617274;
  if (*v0 != 1)
  {
    v1 = 0x646574726F706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A97C65A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DBF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C65C8(uint64_t a1)
{
  v2 = sub_1A97D7C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6604(uint64_t a1)
{
  v2 = sub_1A97D7C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6640()
{
  if (*v0)
  {
    result = 0x7265766965636572;
  }

  else
  {
    result = 0x6F437265646E6573;
  }

  *v0;
  return result;
}

uint64_t sub_1A97C6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6780(uint64_t a1)
{
  v2 = sub_1A97D799C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C67BC(uint64_t a1)
{
  v2 = sub_1A97D799C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C67F8()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1A97C682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6908(uint64_t a1)
{
  v2 = sub_1A97D78AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6944(uint64_t a1)
{
  v2 = sub_1A97D78AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A97C6980()
{
  v1 = 0x74616E6974736564;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x73736572676F7270;
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

uint64_t sub_1A97C6A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97DC0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97C6A38(uint64_t a1)
{
  v2 = sub_1A97D7E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6A74(uint64_t a1)
{
  v2 = sub_1A97D7E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6AC8(uint64_t a1)
{
  v2 = sub_1A97D7FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6B04(uint64_t a1)
{
  v2 = sub_1A97D7FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6B40(uint64_t a1)
{
  v2 = sub_1A97D7BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6B7C(uint64_t a1)
{
  v2 = sub_1A97D7BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A97C6BB8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x7265766965636572;
  }

  *v0;
  return result;
}

uint64_t sub_1A97C6C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E3BB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C6CF0(uint64_t a1)
{
  v2 = sub_1A97D7A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6D2C(uint64_t a1)
{
  v2 = sub_1A97D7A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6D68(uint64_t a1)
{
  v2 = sub_1A97D7C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6DA4(uint64_t a1)
{
  v2 = sub_1A97D7C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6DE0(uint64_t a1)
{
  v2 = sub_1A97D7CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6E1C(uint64_t a1)
{
  v2 = sub_1A97D7CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6E58(uint64_t a1)
{
  v2 = sub_1A97D7D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6E94(uint64_t a1)
{
  v2 = sub_1A97D7D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6ED0(uint64_t a1)
{
  v2 = sub_1A97D7DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C6F0C(uint64_t a1)
{
  v2 = sub_1A97D7DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C6F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97C6FD0(uint64_t a1)
{
  v2 = sub_1A97D7F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C700C(uint64_t a1)
{
  v2 = sub_1A97D7F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97C7048()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 0x7265766965636572;
  }

  *v0;
  return result;
}

uint64_t sub_1A97C7090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265766965636572 && a2 == 0xEF746361746E6F43;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C7174(uint64_t a1)
{
  v2 = sub_1A97D7F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C71B0(uint64_t a1)
{
  v2 = sub_1A97D7F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A97C71EC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6F437265646E6573;
  }

  *v0;
  return result;
}

uint64_t sub_1A97C7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E3BB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97C7324(uint64_t a1)
{
  v2 = sub_1A97D7B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97C7360(uint64_t a1)
{
  v2 = sub_1A97D7B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.State.encode(to:)(void *a1)
{
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1820, &qword_1A9992A20);
  v343 = *(v327 - 8);
  v2 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v326 = &v263 - v3;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1828, &qword_1A9992A28);
  v331 = *(v332 - 8);
  v4 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v332);
  v329 = &v263 - v5;
  v264 = type metadata accessor for SFAirDropReceive.Failure();
  v6 = *(*(v264 - 8) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v330 = &v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1830, &qword_1A9992A30);
  v334 = *(v335 - 8);
  v8 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v333 = &v263 - v9;
  *&v352 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v10 = *(*(v352 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v352);
  v328 = &v263 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v351 = &v263 - v13;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1838, &qword_1A9992A38);
  v324 = *(v325 - 8);
  v14 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v323 = &v263 - v15;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1840, &qword_1A9992A40);
  v321 = *(v322 - 8);
  v16 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v322);
  v320 = &v263 - v17;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1848, &qword_1A9992A48);
  v341 = *(v310 - 8);
  v18 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v310);
  v307 = &v263 - v19;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1850, &qword_1A9992A50);
  v316 = *(v319 - 8);
  v20 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v315 = &v263 - v21;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1858, &qword_1A9992A58);
  v299 = *(v301 - 8);
  v22 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v301);
  v294 = &v263 - v23;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1860, &qword_1A9992A60);
  v342 = *(v313 - 8);
  v24 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v313);
  v309 = &v263 - v25;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1868, &qword_1A9992A68);
  v317 = *(v318 - 8);
  v26 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v314 = &v263 - v27;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1870, &qword_1A9992A70);
  v311 = *(v312 - 8);
  v28 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v308 = &v263 - v29;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1878, &qword_1A9992A78);
  v340 = *(v305 - 8);
  v30 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v303 = &v263 - v31;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1880, &qword_1A9992A80);
  v339 = *(v304 - 8);
  v32 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v302 = &v263 - v33;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1888, &qword_1A9992A88);
  v338 = *(v300 - 8);
  v34 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v293 = &v263 - v35;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1890, &qword_1A9992A90);
  v297 = *(v298 - 8);
  v36 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v292 = &v263 - v37;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1898, &qword_1A9992A98);
  v295 = *(v296 - 8);
  v38 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v296);
  v291 = &v263 - v39;
  v263 = type metadata accessor for SFAirDrop.DeclineAction();
  v40 = *(*(v263 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v263);
  v290 = &v263 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v350 = &v263 - v43;
  v353 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v44 = *(*(v353 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v353);
  v306 = &v263 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v346 = &v263 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v349 = &v263 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v348 = &v263 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v286 = &v263 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v288 = &v263 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v287 = &v263 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v289 = &v263 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v347 = &v263 - v61;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18A0, &qword_1A9992AA0);
  v337 = *(v280 - 8);
  v62 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v277 = &v263 - v63;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18A8, &qword_1A9992AA8);
  v284 = *(v285 - 8);
  v64 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v263 - v65;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v66 = *(*(v265 - 8) + 64);
  v67 = MEMORY[0x1EEE9AC00](v265);
  v282 = &v263 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v281 = &v263 - v69;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18B0, &qword_1A9992AB0);
  v336 = *(v275 - 8);
  v70 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v274 = &v263 - v71;
  *(&v352 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v72 = *(*(*(&v352 + 1) - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](*(&v352 + 1));
  v276 = &v263 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v345 = &v263 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v344 = &v263 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v279 = &v263 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v278 = &v263 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v273 = &v263 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v272 = &v263 - v85;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18B8, &qword_1A9992AB8);
  v270 = *(v271 - 8);
  v86 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v263 - v87;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18C0, &qword_1A9992AC0);
  v267 = *(v268 - 8);
  v88 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v90 = &v263 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18C8, &qword_1A9992AC8);
  v266 = *(v91 - 8);
  v92 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v263 - v93;
  v95 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v263 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B18D0, &unk_1A9992AD0);
  v356 = *(v358 - 8);
  v99 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v358);
  v101 = &v263 - v100;
  v102 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97D7804();
  v357 = v101;
  sub_1A9977AA0();
  sub_1A97D82C0(v355, v98, type metadata accessor for SFAirDropReceive.Transfer.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v197 = *(v98 + 3);
      v373 = *(v98 + 2);
      v374 = v197;
      v375 = *(v98 + 8);
      v198 = *(v98 + 1);
      v371 = *v98;
      v372 = v198;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E0, &unk_1A99929F0);
      v130 = v281;
      sub_1A97D8380(&v98[*(v199 + 48)], v281, &qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v366) = 4;
      sub_1A97D7F84();
      v200 = v283;
      v113 = v358;
      v114 = v357;
      sub_1A9977640();
      v369 = v374;
      v370 = v375;
      v367 = v372;
      v368 = v373;
      v366 = v371;
      LOBYTE(v360) = 0;
      sub_1A97D7AEC();
      v201 = v285;
      v202 = v354;
      sub_1A99776E0();
      if (v202)
      {
        v203 = &v316;
        goto LABEL_35;
      }

      LOBYTE(v366) = 1;
      sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8);
      sub_1A99776E0();
      sub_1A97B44F8(&v371);
      v246 = &v316;
      goto LABEL_66;
    case 2u:
      v103 = v273;
      sub_1A97D8380(v98, v273, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 5;
      sub_1A97D7F30();
      v104 = v277;
      v105 = v358;
      v106 = v357;
      sub_1A9977640();
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
      v107 = v280;
      sub_1A99776E0();
      v108 = &v364;
      goto LABEL_17;
    case 3u:
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D8, &qword_1A99929E8);
      v177 = &v98[v176[12]];
      v178 = v177[1];
      v349 = *v177;
      v351 = v178;
      v179 = v177[3];
      *&v352 = v177[2];
      *(&v352 + 1) = v179;
      v355 = v177[4];
      v180 = &v98[v176[16]];
      v181 = v180[1];
      v348 = *v180;
      v182 = v176[20];
      v183 = v347;
      sub_1A97C36C8(v98, v347, type metadata accessor for SFAirDropReceive.ItemDestination);
      v184 = v350;
      sub_1A97C36C8(&v98[v182], v350, type metadata accessor for SFAirDrop.DeclineAction);
      LOBYTE(v371) = 6;
      sub_1A97D7E88();
      v185 = v291;
      v186 = v358;
      v187 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v188 = v296;
      v189 = v354;
      sub_1A99776E0();
      if (v189)
      {
        sub_1A97C2280(v349, v351, v352);

        (*(v295 + 8))(v185, v188);
        sub_1A97C2220(v184, type metadata accessor for SFAirDrop.DeclineAction);
        sub_1A97C2220(v183, type metadata accessor for SFAirDropReceive.ItemDestination);
        return (*(v356 + 8))(v187, v186);
      }

      v354 = v181;
      v243 = v349;
      v244 = v351;
      *&v371 = v349;
      *(&v371 + 1) = v351;
      v245 = v352;
      v372 = v352;
      *&v373 = v355;
      LOBYTE(v366) = 1;
      sub_1A97D7EDC();
      sub_1A99776E0();
      sub_1A97C2280(v243, v244, v245);
      LOBYTE(v371) = 2;
      sub_1A9977690();
      v249 = v357;

      LOBYTE(v371) = 3;
      sub_1A97D7900(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
      v253 = v185;
      v254 = v350;
      sub_1A99776E0();
      v255 = v347;
      (*(v295 + 8))(v253, v188);
      sub_1A97C2220(v254, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A97C2220(v255, type metadata accessor for SFAirDropReceive.ItemDestination);
      v256 = *(v356 + 8);
      v257 = v249;
      v258 = v358;
      return v256(v257, v258);
    case 4u:
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17D0, &qword_1A99929E0);
      v137 = *&v98[v136[12]];
      v138 = *&v98[v136[16]];
      v139 = v136[20];
      v140 = v289;
      sub_1A97C36C8(v98, v289, type metadata accessor for SFAirDropReceive.ItemDestination);
      v141 = v290;
      sub_1A97C36C8(&v98[v139], v290, type metadata accessor for SFAirDrop.DeclineAction);
      LOBYTE(v371) = 7;
      sub_1A97D7E34();
      v142 = v292;
      v143 = v358;
      v144 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v145 = v298;
      v146 = v354;
      sub_1A99776E0();
      if (v146)
      {
      }

      else
      {
        *&v371 = v137;
        LOBYTE(v366) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        LOBYTE(v371) = 2;
        sub_1A99776B0();
        LOBYTE(v371) = 3;
        sub_1A97D7900(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
        sub_1A99776E0();
      }

      (*(v297 + 8))(v142, v145);
      sub_1A97C2220(v141, type metadata accessor for SFAirDrop.DeclineAction);
      v147 = v140;
      goto LABEL_43;
    case 5u:
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v211 = *&v98[*(v210 + 48)];
      v212 = *(v210 + 64);
      v193 = v287;
      sub_1A97C36C8(v98, v287, type metadata accessor for SFAirDropReceive.ItemDestination);
      v213 = v278;
      sub_1A97D8380(&v98[v212], v278, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 8;
      sub_1A97D7DE0();
      v214 = v293;
      v143 = v358;
      v144 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v215 = v300;
      v216 = v354;
      sub_1A99776E0();
      if (v216)
      {
      }

      else
      {
        *&v371 = v211;
        LOBYTE(v366) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        LOBYTE(v371) = 2;
        sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A99776E0();
      }

      v217 = &v365;
      goto LABEL_41;
    case 6u:
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C8, &qword_1A99929D8);
      v224 = *&v98[*(v223 + 48)];
      v225 = *(v223 + 64);
      v193 = v288;
      sub_1A97C36C8(v98, v288, type metadata accessor for SFAirDropReceive.ItemDestination);
      v213 = v279;
      sub_1A97D8380(&v98[v225], v279, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 9;
      sub_1A97D7D8C();
      v214 = v302;
      v143 = v358;
      v144 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v215 = v304;
      v226 = v354;
      sub_1A99776E0();
      if (v226)
      {
      }

      else
      {
        *&v371 = v224;
        LOBYTE(v366) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        LOBYTE(v371) = 2;
        sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
        sub_1A99776E0();
      }

      v217 = &v366;
LABEL_41:
      (*(*(v217 - 32) + 8))(v214, v215);
      sub_1A97B06FC(v213, &qword_1EB3B17A8, &unk_1A9999470);
      goto LABEL_42;
    case 7u:
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17C0, &qword_1A99929D0);
      v191 = *&v98[*(v190 + 48)];
      v192 = *&v98[*(v190 + 64)];
      v193 = v286;
      sub_1A97C36C8(v98, v286, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v371) = 10;
      sub_1A97D7D38();
      v194 = v303;
      v143 = v358;
      v144 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v195 = v305;
      v196 = v354;
      sub_1A99776E0();
      if (v196)
      {
      }

      else
      {
        *&v371 = v191;
        LOBYTE(v366) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        LOBYTE(v371) = 2;
        sub_1A99776B0();
      }

      (*(v340 + 8))(v194, v195);
LABEL_42:
      v147 = v193;
LABEL_43:
      sub_1A97C2220(v147, type metadata accessor for SFAirDropReceive.ItemDestination);
      return (*(v356 + 8))(v144, v143);
    case 8u:
      v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v355 = *&v98[v235[12]];
      v236 = *&v98[v235[16]];
      v237 = v235[20];
      v155 = v348;
      sub_1A97C36C8(v98, v348, type metadata accessor for SFAirDropReceive.ItemDestination);
      v156 = v344;
      sub_1A97D8380(&v98[v237], v344, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 11;
      sub_1A97D7CE4();
      v157 = v308;
      v158 = v358;
      v159 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v160 = v312;
      v238 = v354;
      sub_1A99776E0();
      if (v238)
      {

        v162 = &v343;
        goto LABEL_50;
      }

      *&v371 = v355;
      LOBYTE(v366) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v242 = v157;
      sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
      sub_1A99776E0();

      *&v371 = v236;
      LOBYTE(v366) = 2;
      sub_1A99776E0();

      LOBYTE(v371) = 3;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
      v250 = v344;
      sub_1A99776E0();
      v251 = v348;
      v252 = &v343;
      goto LABEL_73;
    case 9u:
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B8, &qword_1A99929C8);
      v355 = *&v98[v152[12]];
      v153 = *&v98[v152[16]];
      v154 = v152[20];
      v155 = v349;
      sub_1A97C36C8(v98, v349, type metadata accessor for SFAirDropReceive.ItemDestination);
      v156 = v345;
      sub_1A97D8380(&v98[v154], v345, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 12;
      sub_1A97D7C90();
      v157 = v314;
      v158 = v358;
      v159 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v160 = v318;
      v161 = v354;
      sub_1A99776E0();
      if (v161)
      {

        v162 = &v349;
LABEL_50:
        (*(*(v162 - 32) + 8))(v157, v160);
        sub_1A97B06FC(v156, &qword_1EB3B17A8, &unk_1A9999470);
        goto LABEL_51;
      }

      *&v371 = v355;
      LOBYTE(v366) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      v242 = v157;
      sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
      sub_1A99776E0();

      *&v371 = v153;
      LOBYTE(v366) = 2;
      sub_1A99776E0();

      LOBYTE(v371) = 3;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
      v250 = v345;
      sub_1A99776E0();
      v251 = v349;
      v252 = &v349;
LABEL_73:
      (*(*(v252 - 32) + 8))(v242, v160);
      sub_1A97B06FC(v250, &qword_1EB3B17A8, &unk_1A9999470);
      v239 = v251;
      goto LABEL_52;
    case 0xAu:
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17B0, &qword_1A99929C0);
      v230 = *&v98[*(v229 + 48)];
      v231 = *&v98[*(v229 + 64)];
      v155 = v346;
      sub_1A97C36C8(v98, v346, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v371) = 13;
      sub_1A97D7C3C();
      v232 = v309;
      v158 = v358;
      v159 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
      v233 = v313;
      v234 = v354;
      sub_1A99776E0();
      if (v234)
      {

        (*(v342 + 8))(v232, v233);
LABEL_51:
        v239 = v155;
LABEL_52:
        sub_1A97C2220(v239, type metadata accessor for SFAirDropReceive.ItemDestination);
        return (*(v356 + 8))(v159, v158);
      }

      else
      {
        *&v371 = v230;
        LOBYTE(v366) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        *&v371 = v231;
        LOBYTE(v366) = 2;
        sub_1A99776E0();
        (*(v342 + 8))(v232, v233);
        sub_1A97C2220(v346, type metadata accessor for SFAirDropReceive.ItemDestination);
        (*(v356 + 8))(v159, v158);
      }

    case 0xBu:
      v127 = *(v98 + 3);
      v373 = *(v98 + 2);
      v374 = v127;
      v375 = *(v98 + 8);
      v128 = *(v98 + 1);
      v371 = *v98;
      v372 = v128;
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A0, &unk_1A99929B0);
      v130 = v276;
      sub_1A97D8380(&v98[*(v129 + 48)], v276, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v366) = 15;
      sub_1A97D7B94();
      v131 = v315;
      v113 = v358;
      v114 = v357;
      sub_1A9977640();
      v369 = v374;
      v370 = v375;
      v367 = v372;
      v368 = v373;
      v366 = v371;
      LOBYTE(v360) = 0;
      sub_1A97D7AEC();
      v132 = v319;
      v133 = v354;
      sub_1A99776E0();
      if (v133)
      {
        (*(v316 + 8))(v131, v132);
        v134 = &qword_1EB3B17A8;
        v135 = &unk_1A9999470;
        goto LABEL_36;
      }

      LOBYTE(v366) = 1;
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
      sub_1A99776E0();
      sub_1A97B44F8(&v371);
      (*(v316 + 8))(v131, v132);
      v240 = &qword_1EB3B17A8;
      v241 = &unk_1A9999470;
      goto LABEL_67;
    case 0xCu:
      v148 = *(v98 + 3);
      v373 = *(v98 + 2);
      v374 = v148;
      v375 = *(v98 + 8);
      v149 = *(v98 + 1);
      v371 = *v98;
      v372 = v149;
      LOBYTE(v366) = 16;
      sub_1A97D7B40();
      v150 = v307;
      v113 = v358;
      v114 = v357;
      sub_1A9977640();
      v369 = v374;
      v370 = v375;
      v367 = v372;
      v368 = v373;
      v366 = v371;
      sub_1A97D7AEC();
      v151 = v310;
      sub_1A99776E0();
      (*(v341 + 8))(v150, v151);
      goto LABEL_37;
    case 0xDu:
      v219 = *(v98 + 3);
      v373 = *(v98 + 2);
      v374 = v219;
      v375 = *(v98 + 8);
      v220 = *(v98 + 1);
      v371 = *v98;
      v372 = v220;
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1790, &qword_1A99929A0);
      v130 = v282;
      sub_1A97D8380(&v98[*(v221 + 48)], v282, &qword_1EB3B1798, &qword_1A99929A8);
      LOBYTE(v366) = 17;
      sub_1A97D7A98();
      v200 = v320;
      v113 = v358;
      v114 = v357;
      sub_1A9977640();
      v369 = v374;
      v370 = v375;
      v367 = v372;
      v368 = v373;
      v366 = v371;
      LOBYTE(v360) = 0;
      sub_1A97D7AEC();
      v201 = v322;
      v222 = v354;
      sub_1A99776E0();
      if (v222)
      {
        v203 = &v352 + 8;
LABEL_35:
        (*(*(v203 - 32) + 8))(v200, v201);
        v134 = &qword_1EB3B1798;
        v135 = &qword_1A99929A8;
LABEL_36:
        sub_1A97B06FC(v130, v134, v135);
LABEL_37:
        (*(v356 + 8))(v114, v113);
        return sub_1A97B44F8(&v371);
      }

      else
      {
        LOBYTE(v366) = 1;
        sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8);
        sub_1A99776E0();
        sub_1A97B44F8(&v371);
        v246 = &v352 + 8;
LABEL_66:
        (*(*(v246 - 32) + 8))(v200, v201);
        v240 = &qword_1EB3B1798;
        v241 = &qword_1A99929A8;
LABEL_67:
        sub_1A97B06FC(v130, v240, v241);
LABEL_68:
        v256 = *(v356 + 8);
        v257 = v114;
        v258 = v113;
        return v256(v257, v258);
      }

    case 0xEu:
      v117 = *(v98 + 2);
      v369 = *(v98 + 3);
      v370 = *(v98 + 8);
      v118 = *v98;
      v367 = *(v98 + 1);
      v368 = v117;
      v366 = v118;
      v119 = *(v98 + 88);
      v120 = *(v98 + 120);
      v373 = *(v98 + 104);
      v374 = v120;
      v375 = *(v98 + 17);
      v371 = *(v98 + 72);
      v372 = v119;
      LOBYTE(v360) = 18;
      sub_1A97D799C();
      v121 = v323;
      v122 = v358;
      v123 = v357;
      sub_1A9977640();
      v362 = v368;
      v363 = v369;
      v364 = v370;
      v361 = v367;
      v360 = v366;
      v359 = 0;
      sub_1A97D79F0();
      v124 = v325;
      v125 = v354;
      sub_1A99776E0();
      if (v125)
      {
        sub_1A97D7A44(&v371);
        (*(v324 + 8))(v121, v124);
        (*(v356 + 8))(v123, v122);
        return sub_1A97D7A44(&v366);
      }

      else
      {
        v362 = v373;
        v363 = v374;
        v364 = v375;
        v361 = v372;
        v360 = v371;
        v359 = 1;
        sub_1A99776E0();
        sub_1A97D7A44(&v366);
        (*(v324 + 8))(v121, v124);
        (*(v356 + 8))(v123, v122);
        return sub_1A97D7A44(&v371);
      }

    case 0xFu:
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1788, &qword_1A9992998);
      v164 = v163[12];
      v165 = &v98[v163[16]];
      v167 = *v165;
      v166 = v165[1];
      v349 = v167;
      v350 = v166;
      v355 = *&v98[v163[20]];
      *(&v352 + 1) = *&v98[v163[24]];
      v168 = *&v98[v163[28]];
      v169 = v351;
      sub_1A97C36C8(v98, v351, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v170 = v306;
      sub_1A97C36C8(&v98[v164], v306, type metadata accessor for SFAirDropReceive.ItemDestination);
      LOBYTE(v371) = 19;
      sub_1A97D7948();
      v171 = v333;
      v172 = v358;
      v173 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3B18F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v174 = v335;
      v175 = v354;
      sub_1A99776E0();
      if (v175)
      {

        (*(v334 + 8))(v171, v174);
        sub_1A97C2220(v170, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v169, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        return (*(v356 + 8))(v173, v172);
      }

      else
      {
        LOBYTE(v371) = 1;
        sub_1A97D7900(&qword_1EB3AC5A0, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A99776E0();
        LOBYTE(v371) = 2;
        sub_1A9977650();
        v247 = *(&v352 + 1);
        v248 = v355;

        *&v371 = v248;
        LOBYTE(v366) = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        sub_1A97D8128(&qword_1EB3B1910, &qword_1EB3B1918);
        sub_1A99776E0();

        *&v371 = v247;
        LOBYTE(v366) = 4;
        sub_1A99776E0();

        *&v371 = v168;
        LOBYTE(v366) = 5;
        sub_1A99776E0();
        v259 = v174;
        v260 = v351;
        v261 = v358;
        v262 = v357;
        (*(v334 + 8))(v171, v259);
        sub_1A97C2220(v170, type metadata accessor for SFAirDropReceive.ItemDestination);
        sub_1A97C2220(v260, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
        (*(v356 + 8))(v262, v261);
      }

    case 0x10u:
      v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1780, &qword_1A9992990) + 48);
      v110 = v328;
      sub_1A97C36C8(v98, v328, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v111 = v330;
      sub_1A97C36C8(&v98[v109], v330, type metadata accessor for SFAirDropReceive.Failure);
      LOBYTE(v371) = 20;
      sub_1A97D78AC();
      v112 = v329;
      v113 = v358;
      v114 = v357;
      sub_1A9977640();
      LOBYTE(v371) = 0;
      sub_1A97D7900(&qword_1EB3B18F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      v115 = v332;
      v116 = v354;
      sub_1A99776E0();
      if (!v116)
      {
        LOBYTE(v371) = 1;
        sub_1A97D7900(&qword_1EB3B18F8, type metadata accessor for SFAirDropReceive.Failure);
        sub_1A99776E0();
      }

      (*(v331 + 8))(v112, v115);
      sub_1A97C2220(v111, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A97C2220(v110, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
      goto LABEL_68;
    case 0x11u:
      v204 = *v98;
      LOBYTE(v371) = 21;
      sub_1A97D7858();
      v205 = v326;
      v143 = v358;
      v144 = v357;
      sub_1A9977640();
      v206 = v327;
      sub_1A99776D0();
      (*(v343 + 8))(v205, v206);
      return (*(v356 + 8))(v144, v143);
    case 0x12u:
      LOBYTE(v371) = 0;
      sub_1A97D80D4();
      v227 = v358;
      v228 = v357;
      sub_1A9977640();
      (*(v266 + 8))(v94, v91);
      return (*(v356 + 8))(v228, v227);
    case 0x13u:
      LOBYTE(v371) = 1;
      sub_1A97D8080();
      v208 = v358;
      v209 = v357;
      sub_1A9977640();
      (*(v267 + 8))(v90, v268);
      return (*(v356 + 8))(v209, v208);
    case 0x14u:
      LOBYTE(v371) = 2;
      sub_1A97D802C();
      v207 = v269;
      v208 = v358;
      v209 = v357;
      sub_1A9977640();
      (*(v270 + 8))(v207, v271);
      return (*(v356 + 8))(v209, v208);
    case 0x15u:
      LOBYTE(v371) = 14;
      sub_1A97D7BE8();
      v218 = v294;
      v208 = v358;
      v209 = v357;
      sub_1A9977640();
      (*(v299 + 8))(v218, v301);
      return (*(v356 + 8))(v209, v208);
    default:
      v103 = v272;
      sub_1A97D8380(v98, v272, &qword_1EB3B17A8, &unk_1A9999470);
      LOBYTE(v371) = 3;
      sub_1A97D7FD8();
      v104 = v274;
      v105 = v358;
      v106 = v357;
      sub_1A9977640();
      sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
      v107 = v275;
      sub_1A99776E0();
      v108 = &v363 + 8;
LABEL_17:
      (*(*(v108 - 32) + 8))(v104, v107);
      sub_1A97B06FC(v103, &qword_1EB3B17A8, &unk_1A9999470);
      return (*(v356 + 8))(v106, v105);
  }
}