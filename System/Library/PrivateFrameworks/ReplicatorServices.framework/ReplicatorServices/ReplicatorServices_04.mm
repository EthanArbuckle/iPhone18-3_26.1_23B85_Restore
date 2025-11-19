uint64_t Database.DataMigrationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAB2C4BC(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF0E90(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](39);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

uint64_t sub_1BAB2C83C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v20 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {

      v5 = sub_1BABE7B0C();
      SQLResult.subscript.getter(v5, v6, &v17);

      v7 = v19;
      if (v19 == 255 || (v8 = v17, v9 = v18, v10 = sub_1BAAF9770(v17, v18, v19), v12 = v11, sub_1BAAE8B8C(v8, v9, v7), !v12))
      {
        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v13 = sub_1BABE72BC();
        __swift_project_value_buffer(v13, qword_1EBC25018);
        v14 = sub_1BABE729C();
        v15 = sub_1BABE78EC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1BAACF000, v14, v15, "Encountered malformed completed stage", v16, 2u);
          MEMORY[0x1BFAFE460](v16, -1, -1);
        }
      }

      else
      {
        sub_1BABB0450(&v17, v10, v12);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
    return v20;
  }

  return result;
}

ReplicatorServices::ClientSettings __swiftcall ClientSettings.init(clientID:enabled:registered:)(ReplicatorServices::ClientSettings clientID, Swift::Bool enabled, Swift::Bool registered)
{
  *v3 = clientID.clientID;
  *(v3 + 16) = enabled;
  *(v3 + 17) = registered;
  clientID.enabled = enabled;
  return clientID;
}

uint64_t ClientSettings.clientID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientSettings.clientID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ClientSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_1BAB2CC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAB2CD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1BAB2CD74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAB2CDC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0x80000001BABF51B0;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001BABF51D0;
    v3 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C6F636F746F7270;
    v4 = 0xEF6E6F6973726556;
  }

  else
  {
    v3 = 0x73736572706D6F63;
    v4 = 0xED000073656C6946;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0x80000001BABF51B0;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001BABF51D0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF6E6F6973726556;
    if (v3 != 0x6C6F636F746F7270)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED000073656C6946;
    if (v3 != 0x73736572706D6F63)
    {
LABEL_31:
      v7 = sub_1BABE7EDC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

__n128 ZoneDescriptor.init(id:publicationMethod:replicationPriority:protocolVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 17) = v7;
  result = *a5;
  *(a6 + 24) = *a5;
  *(a6 + 40) = 0;
  return result;
}

uint64_t ZoneDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ZoneDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ZoneDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

__n128 ZoneDescriptor.init(id:publicationMethod:replicationPriority:protocolVersion:compressFiles:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 17) = v8;
  result = *a5;
  *(a7 + 24) = *a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ZoneDescriptor.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  return sub_1BABE7FBC();
}

uint64_t ZoneDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  sub_1BABE7FBC();
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB2D24C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1BAB2D260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  return sub_1BABE7FBC();
}

uint64_t sub_1BAB2D2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  MEMORY[0x1BFAFDC40](v3);
  MEMORY[0x1BFAFDC40](v4);
  sub_1BABE7FBC();
  return sub_1BABE7FDC();
}

ReplicatorServices::ZoneDescriptor::CodingKeys_optional __swiftcall ZoneDescriptor.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BABE7D1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorServices::ZoneDescriptor::CodingKeys_optional __swiftcall ZoneDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ZoneDescriptor.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1BAB2D438()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000013;
  v4 = 0x6C6F636F746F7270;
  if (v1 != 3)
  {
    v4 = 0x73736572706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1BAB2D4F8()
{
  sub_1BABE7F9C();
  sub_1BABE759C();

  return sub_1BABE7FDC();
}

uint64_t sub_1BAB2D5F4()
{
  sub_1BABE759C();
}

uint64_t sub_1BAB2D6DC()
{
  sub_1BABE7F9C();
  sub_1BABE759C();

  return sub_1BABE7FDC();
}

void sub_1BAB2D7E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001BABF51D0;
  v6 = 0xD000000000000013;
  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 3)
  {
    v8 = 0x73736572706D6F63;
    v7 = 0xED000073656C6946;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001BABF51B0;
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

ReplicatorServices::ZoneDescriptor::CodingKeys_optional sub_1BAB2D898@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ZoneDescriptor.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1BAB2D8DC(uint64_t a1)
{
  v2 = sub_1BAB2DF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB2D918(uint64_t a1)
{
  v2 = sub_1BAB2DF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2DF6C();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  v19 = v9;
  v23 = 1;
  sub_1BAB2DFC0();
  sub_1BABE7DCC();
  v12 = v20;
  v23 = 2;
  sub_1BAB2E014();
  sub_1BABE7DCC();
  v22 = v12;
  LOBYTE(v12) = v20;
  v23 = 3;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  v17 = v21;
  v18 = v20;
  LOBYTE(v20) = 4;
  v14 = sub_1BABE7D5C();
  (*(v6 + 8))(v8, v5);
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 17) = v12;
  v15 = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ZoneDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v20 = *(v1 + 16);
  v16 = *(v1 + 17);
  v7 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v7;
  v13[3] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2DF6C();
  sub_1BABE800C();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1BABE7E5C();
  if (!v8)
  {
    v9 = v16;
    v11 = v14;
    v10 = v15;
    LOBYTE(v18) = v20;
    v21 = 1;
    sub_1BAB2E0BC();
    sub_1BABE7E7C();
    LOBYTE(v18) = v9;
    v21 = 2;
    sub_1BAB2E110();
    sub_1BABE7E7C();
    v18 = v10;
    v19 = v11;
    v21 = 3;
    sub_1BAB2E164();
    sub_1BABE7E7C();
    LOBYTE(v18) = 4;
    sub_1BABE7E6C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t _s18ReplicatorServices14ZoneDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v7)
    {
      return result;
    }
  }

  else
  {
    v13 = sub_1BABE7EDC();
    result = 0;
    if ((v13 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if (v3 == v8 && v5 == v10 && v4 == v9)
  {
    return v6 ^ v11 ^ 1u;
  }

  return result;
}

unint64_t sub_1BAB2DF6C()
{
  result = qword_1ED787898[0];
  if (!qword_1ED787898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED787898);
  }

  return result;
}

unint64_t sub_1BAB2DFC0()
{
  result = qword_1ED7873D8;
  if (!qword_1ED7873D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873D8);
  }

  return result;
}

unint64_t sub_1BAB2E014()
{
  result = qword_1ED7873D0;
  if (!qword_1ED7873D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873D0);
  }

  return result;
}

unint64_t sub_1BAB2E068()
{
  result = qword_1ED787540;
  if (!qword_1ED787540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787540);
  }

  return result;
}

unint64_t sub_1BAB2E0BC()
{
  result = qword_1ED787840;
  if (!qword_1ED787840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787840);
  }

  return result;
}

unint64_t sub_1BAB2E110()
{
  result = qword_1ED787830;
  if (!qword_1ED787830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787830);
  }

  return result;
}

unint64_t sub_1BAB2E164()
{
  result = qword_1ED787B50;
  if (!qword_1ED787B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787B50);
  }

  return result;
}

unint64_t sub_1BAB2E1C8()
{
  result = qword_1EBC12D98;
  if (!qword_1EBC12D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12D98);
  }

  return result;
}

unint64_t sub_1BAB2E220()
{
  result = qword_1EBC12DA0;
  if (!qword_1EBC12DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12DA0);
  }

  return result;
}

unint64_t sub_1BAB2E278()
{
  result = qword_1ED787888;
  if (!qword_1ED787888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787888);
  }

  return result;
}

unint64_t sub_1BAB2E2D0()
{
  result = qword_1ED787890;
  if (!qword_1ED787890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787890);
  }

  return result;
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

uint64_t sub_1BAB2E338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BAB2E380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAB2E5A8()
{
  v1 = type metadata accessor for ReplicatorDevice(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(v0 + OBJC_IVAR____TtC18ReplicatorServices33ReplicatorControlClientObjcBridge_controlClient) + OBJC_IVAR____TtC18ReplicatorServices23ReplicatorControlClient_singleton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  v5 = v21;
  v6 = *(v21 + 16);
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BABE7B9C();
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    v16 = v5;
    v17 = v8;
    do
    {
      v19 = v6;
      sub_1BAB2F578(v7, v4);
      v18 = qword_1BABEAA40[v4[*(v1 + 32)]];
      v9 = objc_allocWithZone(RPLReplicatorDevice);
      v10 = sub_1BABE6CBC();
      v11 = sub_1BABE6CBC();
      v12 = sub_1BABE74EC();
      v13 = sub_1BABE6C2C();
      [v9 initWithDeviceID:v10 relationshipID:v11 name:v12 deviceType:v18 initialDiscoveryDate:{v13, v16}];

      v14 = v19;
      sub_1BAB2F5DC(v4);
      sub_1BABE7B6C();
      sub_1BABE7BAC();
      sub_1BABE7BBC();
      sub_1BABE7B7C();
      v7 += v17;
      v6 = v14 - 1;
    }

    while (v6);

    return v21;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1BAB2E8B0(Swift::Bool a1)
{
  ReplicatorControlClient.setEnabled(_:)(a1);
  if (v1)
  {
    if (qword_1EBC12478 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1EBC25030);
    v3 = v1;
    oslog = sub_1BABE729C();
    v4 = sub_1BABE78EC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1BAACF000, oslog, v4, "Could not set replicator enabled state: %{public}@", v5, 0xCu);
      sub_1BAB2F654(v6);
      MEMORY[0x1BFAFE460](v6, -1, -1);
      MEMORY[0x1BFAFE460](v5, -1, -1);

      v9 = oslog;
    }

    else
    {

      v9 = v1;
    }
  }
}

uint64_t sub_1BAB2EB50(void *a1)
{
  v1 = a1;
  sub_1BABE794C();

  return v3;
}

uint64_t sub_1BAB2EBD4()
{
  sub_1BABE794C();
  result = 0;
  if (v1 == 1)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
    sub_1BABE794C();
    return v1;
  }

  return result;
}

void sub_1BAB2ED50(Swift::OpaquePointer a1)
{
  if (a1._rawValue)
  {
    sub_1BABE794C();
    ReplicatorControlClient.setAllowList(idsIDs:)(a1);
    if (v2)
    {
      if (qword_1EBC12478 != -1)
      {
        swift_once();
      }

      v3 = sub_1BABE72BC();
      __swift_project_value_buffer(v3, qword_1EBC25030);
      v4 = v2;
      v5 = sub_1BABE729C();
      v6 = sub_1BABE78EC();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138543362;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_1BAACF000, v5, v6, "Could not set replicator allow list: %{public}@", v7, 0xCu);
        sub_1BAB2F654(v8);
        MEMORY[0x1BFAFE460](v8, -1, -1);
        MEMORY[0x1BFAFE460](v7, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1BABE794C();
  }
}

uint64_t sub_1BAB2EFDC()
{
  v0 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v0);
  sub_1BABE794C();
  return v2;
}

id ReplicatorControlClientObjcBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReplicatorControlClientObjcBridge.init()()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices33ReplicatorControlClientObjcBridge_controlClient;
  type metadata accessor for ReplicatorControlClient();
  swift_allocObject();
  *&v0[v1] = ReplicatorControlClient.init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ReplicatorControlClientObjcBridge();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ReplicatorControlClientObjcBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplicatorControlClientObjcBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAB2F578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB2F5DC(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatorDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAB2F654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAB2F8D8()
{
  result = qword_1EBC12DB0;
  if (!qword_1EBC12DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC12DB0);
  }

  return result;
}

uint64_t sub_1BAB2F96C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1BABE715C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12800);
    sub_1BAB3BF48(a2, v7);
    v12 = sub_1BABE6CFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1BAAD2E14(v7, &qword_1EBC12800);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BAAE5A74(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1BABE6CFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1BAB2FB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1BAAE5F20(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1BABE6CFC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1BAAD37E8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1BABDC600();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1BABE6CFC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1BAB3CAB0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1BABE6CFC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1BAB2FD58(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12A20);
    sub_1BAB3C350(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &qword_1EBC12A20);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for ReplicatorRecord.ID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6580(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB2FF40(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12B60);
    sub_1BAB3C1B4(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &qword_1EBC12B60);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE63A4(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB30134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1BAAE625C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1BABD5AB4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1BABDCAF0();
        v14 = v16;
      }

      result = sub_1BAB3CDD0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1BAB3022C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &unk_1EBC12B20);
    sub_1BAB3C4D8(a2, v7);
    sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    return sub_1BAAD2E14(v7, &unk_1EBC12B20);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for ReplicatorRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6740(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1BAB30414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReplicatorRecord.Value(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12B30);
    v13 = sub_1BABD5D84(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDD980();
        v17 = v21;
      }

      sub_1BAB41B4C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ReplicatorRecord.Value);
      sub_1BAB3DE3C(v15, v17, type metadata accessor for ReplicatorRecord.Value);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BAAD2E14(v8, &qword_1EBC12B30);
  }

  else
  {
    sub_1BAB41B4C(a1, v12, type metadata accessor for ReplicatorRecord.Value);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BAAE6A90(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BAB3067C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1BABE6BAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BAAD2E14(a1, &unk_1EBC13D70);
    v13 = sub_1BABD5D84(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDDD5C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1BAB3DE3C(v15, v17, MEMORY[0x1E6968FB0]);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BAAD2E14(v8, &unk_1EBC13D70);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BAAE6BE4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BAB30938(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BAAE6ED4(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1BABD5D18(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1BABDE4C4();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for ReplicatorRecord.ID(0);
      sub_1BAB41BB4(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for ReplicatorRecord.ID);

      sub_1BAB3E4C4(v10, v12);
      result = sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
      *v3 = v12;
    }

    else
    {
      return sub_1BAB41BB4(a2, type metadata accessor for ReplicatorRecord.ID);
    }
  }

  return result;
}

uint64_t sub_1BAB30AB4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1BAAD2E14(a1, &qword_1EBC12DC8);
    sub_1BAB3C730(a2, v7);
    v12 = sub_1BABE6CFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1BAAD2E14(v7, &qword_1EBC12DC8);
  }

  else
  {
    sub_1BAB41B4C(a1, v10, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BAAE7420(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1BABE6CFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1BAB30CD4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BABD5E5C(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BABDE998();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1BABE6BAC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1BAB3E974(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1BABE6BAC();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1BAAE7284(a1, a3, v17);
    v18 = sub_1BABE6BAC();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1BAB30E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1BAAE70B8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1BABE6BAC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1BABD5E5C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1BABDE718();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1BABE6BAC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1BAB3E974(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1BABE6BAC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1BAB31074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v12 = sub_1BABE6CFC();
    result = (*(*(v12 - 8) + 8))(a3, v12);
    *v5 = v26;
  }

  else
  {
    v15 = sub_1BAAD37E8(a3);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_1BABE6CFC();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_1BAB3E1A4(v17, v19);
      result = (v23)(a3, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_1BABE6CFC();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_1BAB31250(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BABE786C();
  if (!v19)
  {
    return sub_1BABE76FC();
  }

  v41 = v19;
  v45 = sub_1BABE7BDC();
  v32 = sub_1BABE7BEC();
  sub_1BABE7B8C();
  result = sub_1BABE785C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BABE788C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BABE7BCC();
      result = sub_1BABE787C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB31670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for ReplicatorStore.Entry();
  return sub_1BAB41B4C(a2, a4 + *(v6 + 36), type metadata accessor for ReplicatorRecord);
}

uint64_t sub_1BAB31708()
{
  v1 = *(v0 + 240);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB31994, v0, v1);
  return v3;
}

uint64_t sub_1BAB317F8()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE741C();
  type metadata accessor for ReplicatorStore.Entry();
  sub_1BABE747C();
  sub_1BABE747C();
  swift_getWitnessTable();
  sub_1BABE763C();
}

uint64_t sub_1BAB319B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = sub_1BABE799C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(a4 + 24);
  v29 = &v26 - v9;
  v30 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for ReplicatorStore.Entry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = *(v12 + 16);
  v18(&v26 - v16, a2, TupleTypeMetadata2);
  v28 = *(TupleTypeMetadata2 + 48);
  v18(v15, a2, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(a3 - 8);
  v21 = v29;
  (*(v20 + 16))(v29, &v15[v19], a3);
  v22 = *(*(v27 - 8) + 8);
  v23 = &v15[v19];
  v24 = v27;
  v22(v23);
  (*(v20 + 56))(v21, 0, 1, a3);
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BABE749C();
  (*(*(AssociatedTypeWitness - 8) + 8))(v15, AssociatedTypeWitness);
  return (v22)(&v17[v28], v24);
}

void sub_1BAB31CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v4));
  sub_1BAB41DC0();
  os_unfair_lock_unlock((a3 + v4));
}

void *ReplicatorStore.__allocating_init(replicator:zoneDescriptor:coder:recordIDProvider:recordVersionProvider:recordValueProvider:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = sub_1BAB3FA34(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v17;
}

void *ReplicatorStore.init(replicator:zoneDescriptor:coder:recordIDProvider:recordVersionProvider:recordValueProvider:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1BAB3FA34(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v9;
}

uint64_t sub_1BAB31E84(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1BABE778C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *(v4 + 80);
  v10[5] = *(v4 + 88);
  v10[6] = v9;
  sub_1BAB388AC(0, 0, v7, a2, v10);
}

void sub_1BAB31FD0()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorStore.Entry();
  v118 = sub_1BABE799C();
  v124 = *(v118 - 8);
  v3 = MEMORY[0x1EEE9AC00](v118);
  v125 = &v108 - v4;
  v130 = v2;
  v114 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v108 - v5;
  v6 = type metadata accessor for ReplicatorRecord(0);
  v122 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v132 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v108 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B18);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v121 = &v108 - v15;
  v120 = type metadata accessor for ReplicatorRecord.ID(0);
  v126 = *(v120 - 8);
  v16 = MEMORY[0x1EEE9AC00](v120);
  v131 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v127 = &v108 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v108 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v108 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v108 - v29;
  v31 = v1[5];
  v32 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v31);
  v33 = (*(v32 + 64))(v31, v32);
  v116 = v28;
  v110 = v24;
  v111 = v22;
  v112 = v27;
  v133 = v1;
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = v126;
  v115 = (v126 + 48);
  v119 = v33;

  v40 = 0;
  v113 = MEMORY[0x1E69E7CC0];
  v41 = v39;
  v42 = v124;
LABEL_4:
  v43 = v40;
  if (!v37)
  {
    goto LABEL_6;
  }

  do
  {
    v40 = v43;
LABEL_9:
    v44 = __clz(__rbit64(v37)) | (v40 << 6);
    v45 = v119;
    v46 = v41;
    v47 = *(v41 + 72);
    sub_1BAB41C14(*(v119 + 48) + v47 * v44, v30, type metadata accessor for ReplicatorRecord.ID);
    v48 = *(v45 + 56);
    v49 = sub_1BABE6CFC();
    (*(*(v49 - 8) + 16))(&v30[*(v116 + 48)], v48 + *(*(v49 - 8) + 72) * v44, v49);
    v50 = v121;
    sub_1BAB3B65C(v30, v133, v121);
    v37 &= v37 - 1;
    sub_1BAAD2E14(v30, &qword_1EBC12A10);
    if ((*v115)(v50, 1, v120) != 1)
    {
      v51 = v50;
      v52 = v110;
      sub_1BAB41B4C(v51, v110, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB41B4C(v52, v111, type metadata accessor for ReplicatorRecord.ID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v124;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v113 = sub_1BAAF9A54(0, v113[2] + 1, 1, v113);
      }

      v55 = v113[2];
      v54 = v113[3];
      v56 = v55 + 1;
      v57 = v111;
      if (v55 >= v54 >> 1)
      {
        v109 = v55 + 1;
        v59 = sub_1BAAF9A54(v54 > 1, v55 + 1, 1, v113);
        v56 = v109;
        v113 = v59;
        v57 = v111;
      }

      v58 = v113;
      v113[2] = v56;
      sub_1BAB41B4C(v57, v58 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v55 * v47, type metadata accessor for ReplicatorRecord.ID);
      v41 = v46;
      goto LABEL_4;
    }

    sub_1BAAD2E14(v50, &qword_1EBC12A20);
    v43 = v40;
    v41 = v46;
    v42 = v124;
  }

  while (v37);
LABEL_6:
  while (1)
  {
    v40 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v40 >= v38)
    {

      v60 = v133;
      v61 = v133[5];
      v62 = v133[10];
      __swift_project_boxed_opaque_existential_1(v133 + 2, v61);
      v63 = sub_1BABE6BAC();
      v64 = v112;
      (*(*(v63 - 8) + 56))(v112, 1, 1, v63);
      v65 = (*(v62 + 48))(v113, v64, v60[15], 0, v61, v62);
      sub_1BAAD2E14(v64, &unk_1EBC13D70);

      v66 = 0;
      v67 = v65 + 64;
      v68 = 1 << *(v65 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v65 + 64);
      v71 = (v68 + 63) >> 6;
      v124 = (v114 + 48);
      v119 = v114 + 32;
      v120 = v65;
      v115 = v42 + 1;
      v116 = v114 + 8;
      v72 = v128;
      v73 = v129;
      v74 = v123;
      v121 = v67;
      while (v70)
      {
        v76 = v66;
LABEL_32:
        v79 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v80 = v79 | (v76 << 6);
        v81 = v120;
        v82 = v127;
        sub_1BAB41C14(*(v120 + 48) + *(v126 + 72) * v80, v127, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB41C14(*(v81 + 56) + *(v122 + 72) * v80, v72, type metadata accessor for ReplicatorRecord);
        v83 = v72;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
        v85 = *(v84 + 48);
        v86 = v82;
        v73 = v129;
        sub_1BAB41B4C(v86, v129, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB41B4C(v83, v73 + v85, type metadata accessor for ReplicatorRecord);
        (*(*(v84 - 8) + 56))(v73, 0, 1, v84);
        v74 = v123;
LABEL_33:
        sub_1BAB23414(v73, v74, &qword_1EBC12B18);
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
        if ((*(*(v87 - 8) + 48))(v74, 1, v87) == 1)
        {

          return;
        }

        v88 = *(v87 + 48);
        sub_1BAB41B4C(v74, v131, type metadata accessor for ReplicatorRecord.ID);
        v89 = v132;
        sub_1BAB41B4C(v74 + v88, v132, type metadata accessor for ReplicatorRecord);
        v90 = v125;
        sub_1BAB3AC00(v89, v125);
        v91 = v130;
        if ((*v124)(v90, 1, v130) == 1)
        {
          sub_1BAB41BB4(v132, type metadata accessor for ReplicatorRecord);
          (*v115)(v90, v118);
          v72 = v128;
          v75 = v131;
        }

        else
        {
          v92 = v117;
          v93 = (*v119)(v117, v90, v91);
          v94 = v133[30];
          v95 = MEMORY[0x1EEE9AC00](v93);
          *(&v108 - 4) = v96;
          *(&v108 - 3) = v92;
          v75 = v131;
          *(&v108 - 2) = v131;
          MEMORY[0x1EEE9AC00](v95);
          *(&v108 - 2) = sub_1BAB41750;
          *(&v108 - 1) = v97;
          os_unfair_lock_lock(v94 + 4);
          sub_1BAB41E5C();
          os_unfair_lock_unlock(v94 + 4);
          sub_1BAB41BB4(v132, type metadata accessor for ReplicatorRecord);
          v98 = v92;
          v73 = v129;
          (*v116)(v98, v130);
          v72 = v128;
        }

        sub_1BAB41BB4(v75, type metadata accessor for ReplicatorRecord.ID);
        v67 = v121;
      }

      if (v71 <= v66 + 1)
      {
        v77 = v66 + 1;
      }

      else
      {
        v77 = v71;
      }

      v78 = v77 - 1;
      while (1)
      {
        v76 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v76 >= v71)
        {
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
          (*(*(v99 - 8) + 56))(v73, 1, 1, v99);
          v70 = 0;
          v66 = v78;
          goto LABEL_33;
        }

        v70 = *(v67 + 8 * v76);
        ++v66;
        if (v70)
        {
          v66 = v76;
          v72 = v128;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

    v37 = *(v34 + 8 * v40);
    ++v43;
    if (v37)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  swift_once();
  v100 = sub_1BABE72BC();
  __swift_project_value_buffer(v100, qword_1ED78BBA0);
  v101 = 0;
  v102 = sub_1BABE729C();
  v103 = sub_1BABE78EC();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v104 = 138543362;
    v106 = 0;
    v107 = _swift_stdlib_bridgeErrorToNSError();
    *(v104 + 4) = v107;
    *v105 = v107;
    _os_log_impl(&dword_1BAACF000, v102, v103, "Could not fetch initial record set: %{public}@", v104, 0xCu);
    sub_1BAAD2E14(v105, &qword_1EBC12A00);
    MEMORY[0x1BFAFE460](v105, -1, -1);
    MEMORY[0x1BFAFE460](v104, -1, -1);
  }

  else
  {
  }
}

void sub_1BAB32E50()
{
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[30];
    v6 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1BAB41E5C();
    os_unfair_lock_unlock(v5 + 4);
    if (v1)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB3305C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v22 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReplicatorStore.Entry();
  v4 = sub_1BABE799C();
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v20 + 8))(v7, v21);
    v11 = sub_1BABE6CFC();
    return (*(*(v11 - 8) + 56))(v25, 1, 1, v11);
  }

  else
  {
    (*(v8 + 32))(v10, v7, v3);
    v13 = v23;
    sub_1BAB41C14(&v10[*(v3 + 36)], v23, type metadata accessor for ReplicatorRecord);
    (*(v8 + 8))(v10, v3);
    v14 = *(v22 + 20);
    v15 = sub_1BABE6CFC();
    v16 = *(v15 - 8);
    v17 = v13 + v14;
    v18 = v25;
    (*(v16 + 16))(v25, v17, v15);
    sub_1BAB41BB4(v13, type metadata accessor for ReplicatorRecord);
    return (*(v16 + 56))(v18, 0, 1, v15);
  }
}

void sub_1BAB33448()
{
  v1 = v0[5];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (v3)
  {
    v11[1] = v11;
    v4 = v0[30];
    v5 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock(v4 + 4);
    sub_1BAB3FFA4();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1ED78BBA0);
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Client is not registered", v9, 2u);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB33674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v46 = a3;
  v47 = a2;
  v7 = type metadata accessor for ReplicatorStore.Entry();
  v8 = sub_1BABE799C();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - v13;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v41 + 8))(v11, v42);
    v14 = sub_1BABE6BAC();
    return (*(*(v14 - 8) + 56))(v45, 1, 1, v14);
  }

  else
  {
    v47 = v12;
    v16 = v40;
    (*(v12 + 32))();
    if (v43)
    {
      v46 = a1[15];
    }

    v17 = a1[5];
    v18 = a1[10];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
    v19 = *(type metadata accessor for ReplicatorRecord.ID(0) - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BABE9F00;
    v22 = *(v7 + 36);
    sub_1BAB41C14(&v16[v22], v21 + v20, type metadata accessor for ReplicatorRecord.ID);
    v23 = v46;
    v24 = v48;
    v25 = (*(v18 + 56))(v21, v44, v46, 0, v17, v18);
    if (v24)
    {
      (*(v47 + 8))(v16, v7);
    }

    else
    {
      v26 = v25;

      if (*(v26 + 16) && (v27 = sub_1BABD5D18(&v16[v22]), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        v30 = v45;
        if (*(v29 + 16) && (v31 = sub_1BABD5D84(v23), (v32 & 1) != 0))
        {
          v33 = v31;
          v34 = *(v29 + 56);
          v35 = sub_1BABE6BAC();
          v36 = *(v35 - 8);
          (*(v36 + 16))(v30, v34 + *(v36 + 72) * v33, v35);
          (*(v47 + 8))(v16, v7);

          return (*(v36 + 56))(v30, 0, 1, v35);
        }

        else
        {

          (*(v47 + 8))(v16, v7);
          v38 = sub_1BABE6BAC();
          return (*(*(v38 - 8) + 56))(v30, 1, 1, v38);
        }
      }

      else
      {

        (*(v47 + 8))(v16, v7);
        v37 = sub_1BABE6BAC();
        return (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
      }
    }
  }
}

void sub_1BAB33C48()
{
  v2 = v0[5];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v0[30];
    v6 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1BAB41E5C();
    os_unfair_lock_unlock(v5 + 4);
    if (v1)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB33E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v2 = type metadata accessor for ReplicatorStore.Entry();
  v3 = sub_1BABE799C();
  v15 = *(v3 - 8);
  v16 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v15 + 8))(v6, v16);
    v10 = 1;
    v11 = v18;
  }

  else
  {
    (*(v7 + 32))(v9, v6, v2);
    v11 = v18;
    sub_1BAB41C14(&v9[*(v2 + 36)], v18, type metadata accessor for ReplicatorRecord);
    (*(v7 + 8))(v9, v2);
    v10 = 0;
  }

  v12 = type metadata accessor for ReplicatorRecord(0);
  return (*(*(v12 - 8) + 56))(v11, v10, 1, v12);
}

uint64_t sub_1BAB34144(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *a3;
  v14 = *a2;
  v13 = v9;
  v10 = sub_1BABE6C8C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1BAB34260(a1, &v14, &v13);
  return sub_1BAAD2E14(v8, &qword_1EBC132A0);
}

uint64_t sub_1BAB34260(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *a3;
  v15 = *a2;
  v14 = v9;
  v10 = sub_1BABE6C8C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v13 = 0;
  sub_1BAB34388(a1, &v15, &v14, v8, &v13);
  return sub_1BAAD2E14(v8, &qword_1EBC132A0);
}

uint64_t sub_1BAB34388(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a5;
  v11 = *(*v5 + 80);
  sub_1BAB3BED4(v11, v11);
  v12 = *(v11 - 8);
  swift_allocObject();
  v13 = sub_1BABE76CC();
  (*(v12 + 16))(v14, a1, v11);
  sub_1BABE775C();
  v18 = v8;
  v17 = v9;
  v16 = v10;
  sub_1BAB344CC(v13, &v18, &v17, a4, &v16);
}

uint64_t sub_1BAB344CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = v6;
  *&v181 = a3;
  v155 = a1;
  v11 = *v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v140 - v13;
  v152 = type metadata accessor for ReplicatorRecord(0);
  v151 = *(v152 - 8);
  v15 = MEMORY[0x1EEE9AC00](v152);
  v158 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v140 - v17;
  v18 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v161 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DB8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v163 = &v140 - v23;
  v177 = type metadata accessor for ReplicatorDevice(0);
  v173 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v168 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1BABE6CFC();
  v179 = *(v189 - 8);
  v25 = MEMORY[0x1EEE9AC00](v189);
  v153 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v140 - v27;
  v28 = type metadata accessor for ReplicatorRecord.Value(0);
  v169 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v165 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v162 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v166 = &v140 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v167 = &v140 - v36;
  v37 = v11;
  v38 = v5;
  v39 = *(v37 + 80);
  v156 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v35);
  v42 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v159 = &v140 - v43;
  v180 = *a2;
  v144 = *v181;
  v150 = *a5;
  v44 = v5[5];
  v45 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v44);
  if (((*(v45 + 8))(v44, v45) & 1) == 0)
  {
    if (qword_1ED7876D0 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_5;
  }

  sub_1BAAD2DAC((v5 + 18), &v183, &qword_1EBC12DC0);
  if (*&v184[8])
  {
    sub_1BAB22994(&v183, &v187);
    v46 = v155;
  }

  else
  {
    v53 = v5[5];
    v181 = *(v38 + 4);
    v54 = __swift_project_boxed_opaque_existential_1(v38 + 2, v53);
    *v188 = v53;
    *&v188[8] = v181;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v187);
    (*(*(v53 - 8) + 16))(boxed_opaque_existential_2, v54, v53);
    v46 = v155;
    if (*&v184[8])
    {
      sub_1BAAD2E14(&v183, &qword_1EBC12DC0);
    }
  }

  if (!sub_1BABE774C())
  {
    v160 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v138 = v38[5];
    v139 = v38[10];
    __swift_project_boxed_opaque_existential_1(v38 + 2, v138);
    *&v183 = v180;
    LOBYTE(v182[0]) = v144;
    (*(v139 + 24))(v160, &v183, v182, v138, v139);
LABEL_73:

    return __swift_destroy_boxed_opaque_existential_1(&v187);
  }

  v56 = 0;
  v148 = (v156 + 16);
  v147 = (v156 + 32);
  v175 = (v179 + 16);
  v174 = (v179 + 8);
  v171 = (v173 + 48);
  v142 = (v179 + 56);
  v160 = MEMORY[0x1E69E7CC0];
  v145 = (v156 + 8);
  v178 = v38;
  v141 = a4;
  v140 = v14;
  v57 = v163;
  v146 = v39;
  v170 = v42;
  while (1)
  {
    v58 = sub_1BABE771C();
    sub_1BABE76DC();
    v59 = v56;
    v60 = v180;
    if (v58)
    {
      (*(v156 + 16))(v159, v46 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v59, v39);
    }

    else
    {
      v137 = sub_1BABE7B1C();
      if (v143 != 8)
      {
        goto LABEL_87;
      }

      *&v183 = v137;
      (*v148)(v159, &v183, v39);
      swift_unknownObjectRelease();
    }

    v149 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_84;
    }

    (*v147)(v42, v159, v39);
    if (!v60)
    {
      break;
    }

    *&v181 = v7;
    v173 = *(v60 + 16);
    if (v173)
    {
      v61 = 0;
      v172 = v60 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
      v62 = MEMORY[0x1E69E7CC8];
      while (v61 < *(v60 + 16))
      {
        v63 = v179;
        v64 = v176;
        v65 = v189;
        (*(v179 + 16))(v176, v172 + *(v179 + 72) * v61, v189);
        v66 = v178;
        v67 = v178[5];
        v68 = v178[11];
        __swift_project_boxed_opaque_existential_1(v178 + 2, v67);
        ReplicatorRemoteDeviceProviding.device(relationshipID:)(v67, v68, v57);
        (*(v63 + 8))(v64, v65);
        v69 = v177;
        if ((*v171)(v57, 1, v177) == 1)
        {
          sub_1BAAD2E14(v57, &qword_1EBC12DB8);
        }

        else
        {
          v70 = v168;
          sub_1BAB41B4C(v57, v168, type metadata accessor for ReplicatorDevice);
          v71 = (v70 + *(v69 + 28));
          v72 = *v71;
          v73 = v71[1];
          v74 = v66[15];
          v75 = v72 >= v66[16] && v74 >= v73;
          if (v75)
          {
            if (v72 >= v74)
            {
              v76 = v66[15];
            }

            else
            {
              v76 = v72;
            }

            v77 = v66[28];
            v78 = *&v188[16];
            v164 = *v188;
            v79 = *v188;
            v80 = __swift_project_boxed_opaque_existential_1(&v187, *v188);
            *&v184[8] = v164;
            *&v184[24] = *(v78 + 16);
            v81 = __swift_allocate_boxed_opaque_existential_2(&v183);
            (*(*(v79 - 8) + 16))(v81, v80, v79);
            v82 = v162;
            v83 = v181;
            v77(v170, &v183, v76);
            *&v181 = v83;
            if (v83)
            {
              sub_1BAB41BB4(v168, type metadata accessor for ReplicatorDevice);
              (*v145)(v170, v146);

              __swift_destroy_boxed_opaque_existential_1(&v183);
              return __swift_destroy_boxed_opaque_existential_1(&v187);
            }

            __swift_destroy_boxed_opaque_existential_1(&v183);
            sub_1BAB41B4C(v82, v165, type metadata accessor for ReplicatorRecord.Value);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v183 = v62;
            v85 = sub_1BABD5D84(v76);
            v87 = v62[2];
            v88 = (v86 & 1) == 0;
            v89 = __OFADD__(v87, v88);
            v90 = v87 + v88;
            if (v89)
            {
              goto LABEL_82;
            }

            v91 = v86;
            if (v62[3] >= v90)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v96 = v85;
                sub_1BABDD980();
                v85 = v96;
              }
            }

            else
            {
              sub_1BABD997C(v90, isUniquelyReferenced_nonNull_native);
              v85 = sub_1BABD5D84(v76);
              if ((v91 & 1) != (v92 & 1))
              {
                goto LABEL_88;
              }
            }

            v93 = v168;
            v62 = v183;
            if (v91)
            {
              sub_1BAB400BC(v165, *(v183 + 56) + *(v169 + 72) * v85);
              sub_1BAB41BB4(v93, type metadata accessor for ReplicatorDevice);
            }

            else
            {
              *(v183 + 8 * (v85 >> 6) + 64) |= 1 << v85;
              *(v62[6] + 8 * v85) = v76;
              sub_1BAB41B4C(v165, v62[7] + *(v169 + 72) * v85, type metadata accessor for ReplicatorRecord.Value);
              sub_1BAB41BB4(v93, type metadata accessor for ReplicatorDevice);
              v94 = v62[2];
              v89 = __OFADD__(v94, 1);
              v95 = v94 + 1;
              if (v89)
              {
                goto LABEL_83;
              }

              v62[2] = v95;
            }

            v57 = v163;
          }

          else
          {
            sub_1BAB41BB4(v70, type metadata accessor for ReplicatorDevice);
          }
        }

        v60 = v180;
        if (v173 == ++v61)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      swift_once();
LABEL_5:
      v47 = sub_1BABE72BC();
      __swift_project_value_buffer(v47, qword_1ED78BBA0);
      v48 = sub_1BABE729C();
      v49 = sub_1BABE78EC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1BAACF000, v48, v49, "Client is not registered", v50, 2u);
        MEMORY[0x1BFAFE460](v50, -1, -1);
      }

      sub_1BAB15A08();
      swift_allocError();
      *v51 = 2;
      *(v51 + 8) = 0;

      return swift_willThrow();
    }

    v62 = MEMORY[0x1E69E7CC8];
LABEL_61:
    v117 = v178;
    v173 = v178[24];
    v118 = v178[12];
    v119 = v178[13];
    v120 = v178[5];
    v121 = v178[6];
    __swift_project_boxed_opaque_existential_1(v178 + 2, v120);
    (*(v121 + 8))(v182, v120, v121);
    v183 = v182[0];
    *v184 = v182[1];
    *&v184[16] = v182[2];
    v185 = v182[3];
    v186 = v182[4];
    v122 = v182[0];

    sub_1BAB21D34(&v183);
    v123 = v154;
    (*v142)(v154, 1, 1, v189);
    v124 = v170;
    v125 = v181;
    (v173)(v170, v118, v119, v122, *(&v122 + 1), v123);
    if (v125)
    {

      sub_1BAB41BB4(v123, type metadata accessor for ReplicatorRecord.ID.Ownership);
      (*v145)(v124, v146);

      goto LABEL_73;
    }

    sub_1BAB41BB4(v123, type metadata accessor for ReplicatorRecord.ID.Ownership);

    v126 = v153;
    (v117[26])(v124);
    v42 = v124;
    v127 = v157;
    sub_1BAB41C14(v161, v157, type metadata accessor for ReplicatorRecord.ID);
    v128 = v152;
    (*v175)(v127 + *(v152 + 20), v126, v189);
    v129 = v140;
    sub_1BAAD2DAC(v141, v140, &qword_1EBC132A0);
    v130 = v128[7];
    v131 = sub_1BABE6C8C();
    (*(*(v131 - 8) + 56))(v127 + v130, 1, 1, v131);
    *(v127 + v128[6]) = v62;
    sub_1BAB4004C(v129, v127 + v130);
    *(v127 + v128[8]) = v150;
    sub_1BAB41C14(v127, v158, type metadata accessor for ReplicatorRecord);
    v132 = v160;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_1BAAF9DD0(0, v132[2] + 1, 1, v132);
    }

    v46 = v155;
    v57 = v163;
    v134 = v132[2];
    v133 = v132[3];
    v7 = 0;
    if (v134 >= v133 >> 1)
    {
      v160 = sub_1BAAF9DD0(v133 > 1, v134 + 1, 1, v132);
    }

    else
    {
      v160 = v132;
    }

    v38 = v178;
    v39 = v146;
    (*v174)(v126, v189);
    sub_1BAB41BB4(v161, type metadata accessor for ReplicatorRecord.ID);
    (*v145)(v42, v39);
    v135 = v160;
    *(v160 + 16) = v134 + 1;
    sub_1BAB41B4C(v158, v135 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v134, type metadata accessor for ReplicatorRecord);
    sub_1BAB41BB4(v157, type metadata accessor for ReplicatorRecord);
    v136 = sub_1BABE774C();
    v56 = v149;
    if (v149 == v136)
    {
      goto LABEL_72;
    }
  }

  v98 = v38[15];
  v97 = v38[16];
  if (v98 < v97)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    result = sub_1BABE7EFC();
    __break(1u);
    return result;
  }

  v99 = v38[29];
  v173 = v38[28];
  v172 = v99;
  v62 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v100 = *&v188[16];
    v181 = *v188;
    v101 = *v188;
    v102 = __swift_project_boxed_opaque_existential_1(&v187, *v188);
    *&v184[8] = v181;
    *&v184[24] = *(v100 + 16);
    v103 = __swift_allocate_boxed_opaque_existential_2(&v183);
    (*(*(v101 - 8) + 16))(v103, v102, v101);
    v104 = v167;
    (v173)(v42, &v183, v97);
    if (v7)
    {
      break;
    }

    *&v181 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v105 = v166;
    sub_1BAB41B4C(v104, v166, type metadata accessor for ReplicatorRecord.Value);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v62;
    v108 = sub_1BABD5D84(v97);
    v109 = v62[2];
    v110 = (v107 & 1) == 0;
    v111 = v109 + v110;
    if (__OFADD__(v109, v110))
    {
      goto LABEL_79;
    }

    v112 = v107;
    if (v62[3] >= v111)
    {
      if (v106)
      {
        v62 = v183;
        if ((v107 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1BABDD980();
        v62 = v183;
        if ((v112 & 1) == 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      sub_1BABD997C(v111, v106);
      v113 = sub_1BABD5D84(v97);
      if ((v112 & 1) != (v114 & 1))
      {
        goto LABEL_88;
      }

      v108 = v113;
      v62 = v183;
      if ((v112 & 1) == 0)
      {
LABEL_54:
        v62[(v108 >> 6) + 8] |= 1 << v108;
        *(v62[6] + 8 * v108) = v97;
        sub_1BAB41B4C(v105, v62[7] + *(v169 + 72) * v108, type metadata accessor for ReplicatorRecord.Value);
        v115 = v62[2];
        v89 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v89)
        {
          goto LABEL_81;
        }

        v62[2] = v116;
        goto LABEL_56;
      }
    }

    sub_1BAB400BC(v105, v62[7] + *(v169 + 72) * v108);
LABEL_56:
    v7 = v181;
    v42 = v170;
    if (v98 == v97)
    {
      goto LABEL_61;
    }

    v75 = __CFADD__(v97++, 1);
    if (v75)
    {
      goto LABEL_80;
    }
  }

  (*v145)(v42, v146);

  __swift_destroy_boxed_opaque_existential_1(&v183);
  return __swift_destroy_boxed_opaque_existential_1(&v187);
}

void sub_1BAB35A54(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v39 = *a2;
  v15 = v3[5];
  v16 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v36 = v8;
    v18 = v3[30];
    v19 = MEMORY[0x1EEE9AC00](v17);
    *(&v35 - 2) = v3;
    *(&v35 - 1) = a1;
    MEMORY[0x1EEE9AC00](v19);
    *(&v35 - 2) = sub_1BAB40120;
    *(&v35 - 1) = v20;
    os_unfair_lock_lock(v18 + 4);
    v21 = v37;
    sub_1BAB41E5C();
    if (v21)
    {
      os_unfair_lock_unlock(v18 + 4);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v18 + 4);
      sub_1BAAD2DAC(v14, v12, &qword_1EBC12A20);
      v22 = v38;
      if ((*(v38 + 48))(v12, 1, v6) == 1)
      {
        sub_1BAAD2E14(v14, &qword_1EBC12A20);
        v23 = v12;
      }

      else
      {
        v29 = v12;
        v30 = v36;
        sub_1BAB41B4C(v29, v36, type metadata accessor for ReplicatorRecord.ID);
        v31 = v3[5];
        v32 = v3[10];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
        v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1BABE9F00;
        sub_1BAB41C14(v30, v34 + v33, type metadata accessor for ReplicatorRecord.ID);
        v40 = v39;
        (*(v32 + 40))(v34, &v40, v31, v32);

        sub_1BAB41BB4(v30, type metadata accessor for ReplicatorRecord.ID);
        v23 = v14;
      }

      sub_1BAAD2E14(v23, &qword_1EBC12A20);
    }
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BABE72BC();
    __swift_project_value_buffer(v24, qword_1ED78BBA0);
    v25 = sub_1BABE729C();
    v26 = sub_1BABE78EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BAACF000, v25, v26, "Client is not registered", v27, 2u);
      MEMORY[0x1BFAFE460](v27, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB35EE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14[1] = a1;
  v17 = a2;
  v2 = type metadata accessor for ReplicatorStore.Entry();
  v15 = sub_1BABE799C();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - v4;
  v16 = type metadata accessor for ReplicatorRecord.ID(0);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v14[0] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1BABE748C();

  if ((*(*(v2 - 8) + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v5, v15);
    v8 = 1;
    v9 = v17;
  }

  else
  {
    v10 = v14[0];
    sub_1BAB41C14(&v5[*(v2 + 36)], v14[0], type metadata accessor for ReplicatorRecord.ID);
    (*(v3 + 8))(v5, v15);
    v11 = v10;
    v12 = v17;
    sub_1BAB41B4C(v11, v17, type metadata accessor for ReplicatorRecord.ID);
    v8 = 0;
    v9 = v12;
  }

  return (*(v6 + 56))(v9, v8, 1, v16);
}

uint64_t sub_1BAB361E0()
{
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  v0 = sub_1BABE77BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_checkMetadataState();
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_1BABE77BC();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  return sub_1BABE780C();
}

uint64_t sub_1BAB36324(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  v6 = sub_1BABE77DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v27 = sub_1BABE6CFC();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v24 = &v23 - v13;
  v14 = *(v7 + 16);
  v26 = v6;
  v14(v9, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  (*(v7 + 32))(v16 + v15, v9, v6);
  v17 = v24;
  sub_1BAB3673C(sub_1BAB41528, v16, v24);

  v18 = v25;
  v19 = v27;
  (*(v10 + 16))(v25, v17, v27);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v4;
  *(v21 + 3) = v5;
  *(v21 + 4) = a2;
  (*(v10 + 32))(&v21[v20], v18, v19);

  sub_1BABE77AC();
  return (*(v10 + 8))(v17, v19);
}

uint64_t sub_1BAB36624(uint64_t a1)
{
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  v2 = sub_1BABE779C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1BABE77DC();

  sub_1BABE77CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB3673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a2;
  v27 = a1;
  v8 = *v3;
  v29 = sub_1BABE737C();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BABE73BC();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v13 = v4[30];
  v34 = v4;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v14 = *(v8 + 88);
  v15 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry();
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB4164C, v33, v13);
  type metadata accessor for ReplicatorStore.Change();
  swift_getWitnessTable();
  v16 = sub_1BABE761C();

  v17 = v4[34];
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v14;
  v19 = v26;
  v18[4] = v27;
  v18[5] = v19;
  v18[6] = v16;
  aBlock[4] = sub_1BAB41688;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  sub_1BABE739C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  v23 = v28;
  v22 = v29;
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v12, v23, v20);
  _Block_release(v20);

  (*(v32 + 8))(v23, v22);
  (*(v30 + 8))(v12, v31);
}

void sub_1BAB36B84()
{
  v1 = *(v0 + 240);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB3FFA4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t ReplicatorStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1BAAD2E14(v0 + 144, &qword_1EBC12DC0);

  return v0;
}

uint64_t ReplicatorStore.__deallocating_deinit()
{
  ReplicatorStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 280, 7);
}

uint64_t sub_1BAB36CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = swift_allocObject();
  v14[2] = *(v10 + 80);
  v14[3] = *(v10 + 88);
  v14[4] = a3;
  v14[5] = a4;
  v16[1] = sub_1BAB416B8;
  v16[2] = v14;
  swift_beginAccess();
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE747C();

  sub_1BABE749C();
  swift_endAccess();
  swift_beginAccess();
  *a5 = a1[31];
}

uint64_t sub_1BAB36ED4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = *a2;
  v72 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BABE6CFC();
  v82 = *(v84 - 8);
  v7 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v61 - v10;
  v11 = type metadata accessor for ReplicatorRecord(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v63 = a2;
  v16 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = v9;
  v71 = v16;
  v18 = type metadata accessor for ReplicatorStore.Entry();
  v78 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - v23;
  v62 = type metadata accessor for ReplicatorRecord.Value(0);
  v61 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v61 - v27;
  v76 = *(v20 + 16);
  v77 = a1;
  v89 = v20 + 16;
  v76(v24, a1, TupleTypeMetadata2);
  v29 = &v24[*(TupleTypeMetadata2 + 48)];
  sub_1BAB41C14(&v29[*(v18 + 36)], v15, type metadata accessor for ReplicatorRecord);
  v30 = *(v18 - 8);
  v31 = *(v30 + 8);
  v67 = v18;
  v65 = v31;
  v75 = v30 + 8;
  v31(v29, v18);
  v69 = v11;
  v32 = *&v15[*(v11 + 24)];

  sub_1BAB41BB4(v15, type metadata accessor for ReplicatorRecord);
  v33 = *(v32 + 16);
  v64 = v28;
  if (v33 && (v34 = sub_1BABD5D84(*(v63 + 15)), (v35 & 1) != 0))
  {
    sub_1BAB41C14(*(v32 + 56) + *(v61 + 72) * v34, v26, type metadata accessor for ReplicatorRecord.Value);

    sub_1BAAD2DAC(&v26[*(v62 + 5)], v28, &unk_1EBC13D70);
    sub_1BAB41BB4(v26, type metadata accessor for ReplicatorRecord.Value);
    v63 = *(v78 - 8);
    v36 = v78;
    (*(v63 + 1))(v24);
  }

  else
  {

    v63 = *(v78 - 8);
    v36 = v78;
    (*(v63 + 1))(v24);
    v37 = sub_1BABE6BAC();
    (*(*(v37 - 8) + 56))(v28, 1, 1, v37);
  }

  v38 = v68;
  v39 = v76;
  v40 = v77;
  v76(v68, v77, TupleTypeMetadata2);
  v41 = *(TupleTypeMetadata2 + 48);
  (*(v79 + 16))(v80, &v38[v41], v81);
  v42 = &v38[v41];
  v43 = v67;
  v44 = v65;
  v65(v42, v67);
  v63 = *(v63 + 1);
  v63(v38, v36);
  v39(v38, v40, TupleTypeMetadata2);
  v45 = &v38[*(TupleTypeMetadata2 + 48)];
  v46 = *(v43 + 36);
  v62 = type metadata accessor for ReplicatorRecord;
  v47 = v70;
  sub_1BAB41C14(&v45[v46], v70, type metadata accessor for ReplicatorRecord);
  v44(v45, v43);
  (*(v82 + 16))(v83, v47 + *(v69 + 20), v84);
  sub_1BAB41BB4(v47, type metadata accessor for ReplicatorRecord);
  v48 = v36;
  v49 = v63;
  v63(v38, v48);
  v76(v38, v77, TupleTypeMetadata2);
  v50 = &v38[*(TupleTypeMetadata2 + 48)];
  sub_1BAB41C14(&v50[*(v43 + 36)], v47, v62);
  v44(v50, v43);
  v51 = v73;
  sub_1BAB41C14(v47, v73, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB41BB4(v47, type metadata accessor for ReplicatorRecord);
  v49(v38, v78);
  v52 = v81;
  v85 = v81;
  v86 = v72;
  v53 = v84;
  v87 = v66;
  v88 = v84;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v55 = TupleTypeMetadata[12];
  v56 = TupleTypeMetadata[16];
  v57 = TupleTypeMetadata[20];
  v58 = v74;
  (*(v79 + 32))(v74, v80, v52);
  sub_1BAB41B4C(v51, v58 + v55, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB23414(v64, v58 + v56, &unk_1EBC13D70);
  (*(v82 + 32))(v58 + v57, v83, v53);
  v59 = type metadata accessor for ReplicatorStore.Change();
  swift_storeEnumTagMultiPayload();
  return (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
}

uint64_t sub_1BAB37844(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7[4] = 0;
  v7[5] = 0;
  swift_beginAccess();
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE747C();
  sub_1BABE749C();
  return swift_endAccess();
}

uint64_t sub_1BAB379F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1BABE737C();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[30];
  sub_1BABE6CFC();
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE747C();
  sub_1BAB31CA8(sub_1BAB41AB8, v2, v11);
  v14 = aBlock[0];
  v15 = v2[34];
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v14;
  v16[5] = a1;
  aBlock[4] = sub_1BAB41B08;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_40;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  sub_1BABE739C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1BAB37DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v7;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00);
  v11 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v45 - v16;
  v17 = *(a1 + 64);
  v45 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v49 = v9 + 16;
  v60 = (v9 + 32);
  v63 = (v6 + 48);
  v64 = (v6 + 56);
  v57 = (v15 + 32);
  v51 = v9;
  v52 = a1;
  v55 = (v9 + 8);

  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_12:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v24 << 6);
      v31 = v51;
      v30 = v52;
      v32 = v50;
      (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * v29, v8);
      v33 = *(v5 + 48);
      v34 = *(v31 + 32);
      v65 = *(*(v30 + 56) + 16 * v29);
      v27 = v62;
      v34(v62, v32, v8);
      *&v27[v33] = v65;
      v35 = *v64;
      (*v64)(v27, 0, 1, v5);

      v26 = v24;
LABEL_13:
      v36 = *v63;
      v37 = 1;
      if ((*v63)(v27, 1, v5) != 1)
      {
        v53 = *(v5 + 48);
        v54 = v35;
        *&v65 = v26;
        v38 = *v60;
        v39 = v62;
        (*v60)(v46, v62, v8);
        v40 = swift_allocObject();
        v41 = v48;
        *(v40 + 16) = v47;
        *(v40 + 24) = v41;
        *(v40 + 32) = *&v39[v53];
        v42 = &v61[*(v5 + 48)];
        v38();
        v35 = v54;
        v26 = v65;
        v37 = 0;
        *v42 = sub_1BAB41B14;
        v42[1] = v40;
      }

      v43 = v61;
      v35(v61, v37, 1, v5);
      v44 = v58;
      (*v57)(v58, v43, v59);
      if (v36(v44, 1, v5) == 1)
      {
      }

      (*&v44[*(v5 + 48)])(v56);

      result = (*v55)(v44, v8);
      v23 = v26;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v21 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    v27 = v62;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v35 = *v64;
        (*v64)(v62, 1, 1, v5);
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v45 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAB38300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E00);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAB38434, 0, 0);
}

uint64_t sub_1BAB38434()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = Strong[5];
    v6 = Strong[7];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v5);
    (*(v6 + 16))(v5, v6);
    sub_1BABE77EC();
    (*(v3 + 8))(v2, v4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1BAB385D8;
    v8 = v0[9];

    return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1BAB385D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BAB386D4, 0, 0);
}

uint64_t sub_1BAB386D4()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      sub_1BAB387FC();
    }

    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1BAB385D8;
    v5 = *(v0 + 72);

    return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v5);
  }
}

uint64_t sub_1BAB387FC()
{
  v1 = *(v0 + 240);
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  sub_1BAB31CA8(sub_1BAB41D84, v0, v1);
  sub_1BAB379F8(v3);
}

uint64_t sub_1BAB388AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BAAD2DAC(a3, v25 - v10, &qword_1EBC12DD8);
  v12 = sub_1BABE778C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BAAD2E14(v11, &qword_1EBC12DD8);
  }

  else
  {
    sub_1BABE777C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BABE776C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BABE756C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BAAD2E14(a3, &qword_1EBC12DD8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAAD2E14(a3, &qword_1EBC12DD8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BAB38BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE0);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE8);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAB38CE4, 0, 0);
}

uint64_t sub_1BAB38CE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v2 = v0[12];
    v14 = v0[10];
    v4 = Strong[5];
    v5 = Strong[10];
    v6 = Strong;
    __swift_project_boxed_opaque_existential_1(Strong + 2, v4);
    v7 = v6[12];
    v8 = v6[13];
    v9 = *(v5 + 16);

    v9(v7, v8, v4, v5);

    sub_1BABE77EC();
    (*(v3 + 8))(v2, v14);
    v0[17] = 0;
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1BAB38EBC;
    v11 = v0[13];

    return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BAB38EBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BAB38FB8, 0, 0);
}

uint64_t sub_1BAB38FB8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = *(v2 + 240);
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    type metadata accessor for ReplicatorStore.Change();
    sub_1BABE775C();

    sub_1BAB31CA8(sub_1BAB41A9C, v5, v4);

    sub_1BAB379F8(v0[6]);

    v0[17] = v3;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1BAB38EBC;
    v7 = v0[13];

    return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v7);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1BAB3919C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v156 = a3;
  v5 = *a2;
  v142 = type metadata accessor for ReplicatorRecord.Value(0);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v9 = type metadata accessor for ReplicatorStore.Entry();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v144 = v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v152 = v135 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  v14 = MEMORY[0x1EEE9AC00](v146);
  v150 = v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v180 = v135 - v16;
  v151 = type metadata accessor for ReplicatorRecord(0);
  v155 = *(v151 - 8);
  v17 = MEMORY[0x1EEE9AC00](v151);
  v154 = v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = v135 - v19;
  v143 = type metadata accessor for ReplicatorRecordVersion();
  v20 = MEMORY[0x1EEE9AC00](v143);
  v176 = v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v188 = (v135 - v22);
  v23 = type metadata accessor for ReplicatorStore.Change();
  MEMORY[0x1EEE9AC00](v23);
  v172 = v135 - v24;
  v175 = v9;
  v149 = sub_1BABE799C();
  v191 = *(v149 - 8);
  v25 = MEMORY[0x1EEE9AC00](v149);
  v148 = v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v135 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v171 = v135 - v30;
  v174 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v167 = sub_1BABE799C();
  v32 = *(v167 - 8);
  v33 = MEMORY[0x1EEE9AC00](v167);
  v170 = v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v183 = v135 - v36;
  v186 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v147 = v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v169 = v135 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v166 = v135 - v42;
  v187 = type metadata accessor for ReplicatorRecord.ID(0);
  v179 = *(v187 - 8);
  v43 = MEMORY[0x1EEE9AC00](v187);
  v168 = v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v185 = v135 - v45;
  v190 = type metadata accessor for ReplicatorRecordChange();
  v46 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v184 = v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v23;
  result = sub_1BABE742C();
  v199 = result;
  v49 = *(a1 + 16);
  if (v49)
  {
    v193 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v145 = (v10 + 48);
    v189 = *(v46 + 72);
    v139 = (v10 + 32);
    v164 = (v37 + 8);
    v137 = (v10 + 8);
    v138 = (v191 + 8);
    v163 = (v37 + 56);
    v136 = (v10 + 16);
    v162 = (v10 + 56);
    v135[1] = v7 - 8;
    v178 = (v37 + 48);
    v161 = (v37 + 32);
    v160 = (v37 + 16);
    v159 = (v32 + 8);
    *(&v50 + 1) = 2;
    v177 = xmmword_1BABE9F00;
    *&v50 = 136446210;
    v158 = v50;
    v51 = v188;
    v153 = v29;
    v53 = v185;
    v52 = v186;
    v54 = v183;
    v55 = v184;
    v56 = v49;
    v181 = v3;
    v165 = v7;
    while (1)
    {
      sub_1BAB41C14(v193, v55, type metadata accessor for ReplicatorRecordChange);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BAB41B4C(v55, v53, type metadata accessor for ReplicatorRecord.ID);
        v62 = *(v53 + 16) == v3[12] && *(v53 + 24) == v3[13];
        if (v62 || (sub_1BABE7EDC() & 1) != 0)
        {
          swift_beginAccess();
          sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);

          sub_1BABE748C();

          if ((*v178)(v54, 1, v52) == 1)
          {
            sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecord.ID);
            (*v159)(v54, v167);
          }

          else
          {
            v57 = v166;
            (*v161)(v166, v54, v52);
            v182 = *v160;
            (v182)(v169, v57, v52);
            v58 = *v162;
            v191 = v56;
            v58(v171, 1, 1, v175);
            swift_beginAccess();
            swift_getAssociatedConformanceWitness();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            sub_1BAB41C14(v53, v168, type metadata accessor for ReplicatorRecord.ID);
            (*v163)(v170, 1, 1, v52);
            swift_beginAccess();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            v59 = *(swift_getTupleTypeMetadata2() + 48);
            v60 = v172;
            (v182)(v172, v57, v186);
            v54 = v183;
            v56 = v191;
            sub_1BAB41C14(v185, &v60[v59], type metadata accessor for ReplicatorRecord.ID);
            swift_storeEnumTagMultiPayload();
            sub_1BABE775C();
            v53 = v185;
            v52 = v186;
            sub_1BABE773C();
            v61 = v57;
            v55 = v184;
            (*v164)(v61, v52);
            sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecord.ID);
          }

          v51 = v188;
        }

        else
        {
          sub_1BAB41BB4(v53, type metadata accessor for ReplicatorRecord.ID);
        }

        goto LABEL_5;
      }

      sub_1BAB41B4C(v55, v51, type metadata accessor for ReplicatorRecordVersion);
      v63 = v51[2] == v3[12] && v51[3] == v3[13];
      if (v63 || (sub_1BABE7EDC() & 1) != 0)
      {
        v191 = v56;
        v64 = v3;
        v65 = v3[5];
        v66 = v64[10];
        __swift_project_boxed_opaque_existential_1(v64 + 2, v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
        v67 = v51;
        v68 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v69 = swift_allocObject();
        v70 = v67;
        v71 = v69;
        *(v69 + 16) = v177;
        sub_1BAB41C14(v70, v69 + v68, type metadata accessor for ReplicatorRecord.ID);
        v72 = sub_1BABE6BAC();
        v73 = *(v72 - 8);
        v74 = *(v73 + 56);
        v75 = (v73 + 56);
        v76 = v180;
        v74(v180, 1, 1, v72);
        v77 = v64[15];
        v78 = v192;
        v79 = (*(v66 + 48))(v71, v76, v77, 0, v65, v66);
        v192 = v78;
        if (v78)
        {
          sub_1BAAD2E14(v76, &unk_1EBC13D70);

          v182 = v192;
          v192 = 0;
          v51 = v188;
LABEL_21:
          v55 = v184;
          v53 = v185;
          v80 = v176;
          v52 = v186;
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v81 = sub_1BABE72BC();
          __swift_project_value_buffer(v81, qword_1ED78BBA0);
          v82 = v51;
          sub_1BAB41C14(v51, v80, type metadata accessor for ReplicatorRecordVersion);
          v83 = sub_1BABE729C();
          v84 = sub_1BABE78EC();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = v52;
            v87 = swift_slowAlloc();
            v198 = v87;
            *v85 = v158;
            v194 = 0;
            v195 = 0xE000000000000000;
            sub_1BABE7AEC();
            MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
            MEMORY[0x1BFAFD240](*(v80 + *(v187 + 32)), *(v80 + *(v187 + 32) + 8));
            MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
            MEMORY[0x1BFAFD240](v80[2], v80[3]);
            MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
            MEMORY[0x1BFAFD240](v80[4], v80[5]);
            MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
            type metadata accessor for ReplicatorRecord.ID.Ownership(0);
            sub_1BABE7BFC();
            v88 = v80;
            v89 = v194;
            v90 = v195;
            sub_1BAB41BB4(v88, type metadata accessor for ReplicatorRecordVersion);
            v91 = sub_1BAAFA460(v89, v90, &v198);

            *(v85 + 4) = v91;
            _os_log_impl(&dword_1BAACF000, v83, v84, "Failed to fetch record for update with record ID: %{public}s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            v92 = v87;
            v52 = v86;
            v93 = v188;
            MEMORY[0x1BFAFE460](v92, -1, -1);
            v55 = v184;
            MEMORY[0x1BFAFE460](v85, -1, -1);

            v3 = v181;
          }

          else
          {

            sub_1BAB41BB4(v80, type metadata accessor for ReplicatorRecordVersion);
            v3 = v181;
            v93 = v82;
          }

          v54 = v183;
          sub_1BAB41BB4(v93, type metadata accessor for ReplicatorRecordVersion);
          v56 = v191;
          v51 = v93;
          goto LABEL_5;
        }

        v94 = v79;
        v182 = v75;
        v95 = v74;
        sub_1BAAD2E14(v76, &unk_1EBC13D70);

        v51 = v188;
        if (*(v94 + 16) && (v96 = sub_1BABD5D18(v188), (v97 & 1) != 0))
        {
          v98 = v154;
          sub_1BAB41C14(*(v94 + 56) + *(v155 + 72) * v96, v154, type metadata accessor for ReplicatorRecord);

          v99 = v98;
          v100 = v157;
          sub_1BAB41B4C(v99, v157, type metadata accessor for ReplicatorRecord);
          v101 = v153;
          v3 = v181;
          v102 = v192;
          sub_1BAB3AC00(v100, v153);
          v192 = v102;
          if (v102)
          {
            sub_1BAB41BB4(v100, type metadata accessor for ReplicatorRecord);
            v182 = v192;
            v192 = 0;
            goto LABEL_21;
          }

          v103 = *v145;
          v104 = v175;
          if ((*v145)(v101, 1, v175) == 1)
          {
            sub_1BAB41BB4(v100, type metadata accessor for ReplicatorRecord);
            v51 = v188;
            sub_1BAB41BB4(v188, type metadata accessor for ReplicatorRecordVersion);
            (*v138)(v101, v149);
            v52 = v186;
            goto LABEL_45;
          }

          v135[0] = *v139;
          (v135[0])(v152, v101, v104);
          v105 = *(v100 + *(v151 + 24));
          if (*(v105 + 16) && (v106 = sub_1BABD5D84(v77), (v107 & 1) != 0))
          {
            v108 = v140;
            sub_1BAB41C14(*(v105 + 56) + *(v141 + 72) * v106, v140, type metadata accessor for ReplicatorRecord.Value);
            sub_1BAAD2DAC(v108 + *(v142 + 20), v150, &unk_1EBC13D70);
            sub_1BAB41BB4(v108, type metadata accessor for ReplicatorRecord.Value);
          }

          else
          {
            v95(v150, 1, 1, v72);
          }

          v109 = v148;
          v110 = v186;
          v111 = v147;
          sub_1BABE7AFC();
          swift_beginAccess();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

          v113 = v175;
          sub_1BABE748C();

          (*v164)(v111, v110);
          if (v103(v109, 1, v113) == 1)
          {
            (*v138)(v109, v149);
            v114 = v188;
LABEL_44:
            v182 = type metadata accessor for ReplicatorRecord.ID;
            v135[0] = AssociatedConformanceWitness;
            sub_1BAB41C14(v114, v168, type metadata accessor for ReplicatorRecord.ID);
            v118 = v170;
            v119 = v152;
            v120 = v165;
            sub_1BABE7AFC();
            (*v163)(v118, 0, 1, v186);
            swift_beginAccess();
            sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            sub_1BABE7AFC();
            v121 = v171;
            (*v136)(v171, v119, v113);
            (*v162)(v121, 0, 1, v113);
            swift_beginAccess();
            sub_1BABE747C();
            sub_1BABE749C();
            swift_endAccess();
            v194 = v120;
            v195 = v187;
            v196 = v146;
            v197 = sub_1BABE6CFC();
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v123 = TupleTypeMetadata[12];
            v124 = TupleTypeMetadata[16];
            v125 = TupleTypeMetadata[20];
            v126 = v172;
            (*(*(v120 - 8) + 16))(v172, v119, v120);
            sub_1BAB41C14(&v119[*(v113 + 36)], &v126[v123], v182);
            v127 = &v126[v124];
            v128 = v150;
            sub_1BAAD2DAC(v150, v127, &unk_1EBC13D70);
            v129 = *(v151 + 20);
            v130 = sub_1BABE6CFC();
            v131 = &v126[v125];
            v132 = v157;
            (*(*(v130 - 8) + 16))(v131, v157 + v129, v130);
            swift_storeEnumTagMultiPayload();
            sub_1BABE775C();
            v133 = v186;
            sub_1BABE773C();
            v3 = v181;
            sub_1BAAD2E14(v128, &unk_1EBC13D70);
            v134 = v119;
            v52 = v133;
            v51 = v188;
            (*v137)(v134, v113);
            sub_1BAB41BB4(v132, type metadata accessor for ReplicatorRecord);
            sub_1BAB41BB4(v51, type metadata accessor for ReplicatorRecordVersion);
LABEL_45:
            v54 = v183;
            v55 = v184;
            v53 = v185;
            v56 = v191;
            goto LABEL_5;
          }

          v115 = v144;
          (v135[0])(v144, v109, v113);
          sub_1BABE6CFC();
          sub_1BAAD3904(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
          v114 = v188;
          v116 = sub_1BABE74DC();
          v117 = *v137;
          (*v137)(v115, v113);
          if ((v116 & 1) == 0)
          {
            goto LABEL_44;
          }

          sub_1BAAD2E14(v150, &unk_1EBC13D70);
          v117(v152, v113);
          sub_1BAB41BB4(v157, type metadata accessor for ReplicatorRecord);
          sub_1BAB41BB4(v114, type metadata accessor for ReplicatorRecordVersion);
          v3 = v181;
          v54 = v183;
          v55 = v184;
          v53 = v185;
          v56 = v191;
          v51 = v114;
          v52 = v186;
        }

        else
        {

          sub_1BAB41BB4(v51, type metadata accessor for ReplicatorRecordVersion);
          v3 = v181;
          v53 = v185;
          v52 = v186;
          v56 = v191;
          v54 = v183;
          v55 = v184;
        }
      }

      else
      {
        sub_1BAB41BB4(v51, type metadata accessor for ReplicatorRecordVersion);
      }

LABEL_5:
      v193 += v189;
      if (!--v56)
      {
        result = v199;
        break;
      }
    }
  }

  *v156 = result;
  return result;
}

uint64_t sub_1BAB3AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = *v2;
  v6 = type metadata accessor for ReplicatorRecord(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v55 + 80);
  v50 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v47 - v13;
  v14 = type metadata accessor for ReplicatorRecord.Value(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v47 - v19);
  v21 = *(v7 + 32);
  v53 = a1;
  v22 = *(a1 + v21);
  if (*(v22 + 16) && (v23 = v3[15], v24 = sub_1BABD5D84(v23), (v25 & 1) != 0))
  {
    sub_1BAB41C14(*(v22 + 56) + *(v15 + 72) * v24, v18, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAB41B4C(v18, v20, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAAD2DAC((v3 + 18), &v56, &qword_1EBC12DC0);
    v48 = a2;
    v49 = v23;
    if (v57)
    {
      sub_1BAB22994(&v56, &v58);
    }

    else
    {
      v28 = v3[5];
      v47 = *(v3 + 4);
      v29 = __swift_project_boxed_opaque_existential_1(v3 + 2, v28);
      v59 = v28;
      v60 = v47;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v58);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_2, v29, v28);
      if (v57)
      {
        sub_1BAAD2E14(&v56, &qword_1EBC12DC0);
      }
    }

    v31 = v59;
    v32 = *(&v60 + 1);
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v34 = *v20;
    v33 = v20[1];
    v35 = *(v32 + 8);
    v36 = *(v35 + 8);
    sub_1BAAE7824(*v20, v33);
    v37 = *(v55 + 88);
    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    v55 = v37;
    v46 = v35;
    v40 = v54;
    v41 = v61;
    v36(v10, v34, v33, v49, v10, v38, v39, v31, v46);
    sub_1BAB41BB4(v20, type metadata accessor for ReplicatorRecord.Value);
    sub_1BAAD73E4(v34, v33);
    if (!v41)
    {
      v42 = v51;
      (*(v50 + 32))(v51, v40, v10);
      v43 = v52;
      sub_1BAB41C14(v53, v52, type metadata accessor for ReplicatorRecord);
      v44 = v48;
      sub_1BAB31670(v42, v43, v10, v48);
      v45 = type metadata accessor for ReplicatorStore.Entry();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    v26 = type metadata accessor for ReplicatorStore.Entry();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }
}

uint64_t sub_1BAB3B0E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v3 = *a1;
  swift_beginAccess();
  v10[4] = a1[31];
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1BABE747C();
  v5 = type metadata accessor for ReplicatorStore.Change();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_1BAB31250(sub_1BAB41DA0, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  swift_beginAccess();
  type metadata accessor for ReplicatorRecord.ID(255);
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);
  sub_1BABE747C();
  sub_1BABE746C();
  swift_endAccess();
  swift_beginAccess();
  sub_1BABE746C();
  result = swift_endAccess();
  *v11 = v8;
  return result;
}

uint64_t sub_1BAB3B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for ReplicatorStore.Entry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  type metadata accessor for ReplicatorRecord.ID(255);
  v25 = *(swift_getTupleTypeMetadata2() + 48);
  v17 = *(v11 + 16);
  v17(v16, a1, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  v26 = AssociatedTypeWitness;
  v27 = v18;
  v19 = AssociatedTypeWitness;
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 32))(a4, v16, v19);
  v17(v14, a1, TupleTypeMetadata2);
  v21 = &v14[*(TupleTypeMetadata2 + 48)];
  v22 = v28;
  sub_1BAB41C14(&v21[*(v9 + 36)], v28, type metadata accessor for ReplicatorRecord);
  v23 = *(*(v9 - 8) + 8);
  v23(v21, v9);
  sub_1BAB41C14(v22, a4 + v25, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB41BB4(v22, type metadata accessor for ReplicatorRecord);
  type metadata accessor for ReplicatorStore.Change();
  swift_storeEnumTagMultiPayload();
  (*(v20 + 8))(v14, v26);
  return (v23)(&v16[v27], v9);
}

uint64_t sub_1BAB3B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  sub_1BAAD2DAC(a1, &v22 - v10, &qword_1EBC12A10);
  v12 = *(v6 + 48);
  v14 = *(v11 + 2);
  v13 = *(v11 + 3);

  sub_1BAB41BB4(v11, type metadata accessor for ReplicatorRecord.ID);
  if (v14 == *(a2 + 96) && v13 == *(a2 + 104))
  {

    v17 = sub_1BABE6CFC();
    (*(*(v17 - 8) + 8))(&v11[v12], v17);
LABEL_8:
    sub_1BAAD2DAC(a1, v9, &qword_1EBC12A10);
    v18 = *(v6 + 48);
    sub_1BAB41B4C(v9, a3, type metadata accessor for ReplicatorRecord.ID);
    v19 = type metadata accessor for ReplicatorRecord.ID(0);
    (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    sub_1BABE6CFC();
    return (*(*(v17 - 8) + 8))(&v9[v18], v17);
  }

  v16 = sub_1BABE7EDC();

  v17 = sub_1BABE6CFC();
  (*(*(v17 - 8) + 8))(&v11[v12], v17);
  if (v16)
  {
    goto LABEL_8;
  }

  v21 = type metadata accessor for ReplicatorRecord.ID(0);
  return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
}

uint64_t sub_1BAB3B91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v19 = a1 + 248;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1BABE799C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = &v17 - v6;
  v21 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v21);
  v18 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorStore.Entry();
  v9 = sub_1BABE799C();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v17 = a2;
  sub_1BABE7AFC();
  v14 = *(v8 - 8);
  (*(v14 + 16))(v12, a2, v8);
  (*(v14 + 56))(v12, 0, 1, v8);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1BABE747C();
  sub_1BABE749C();
  swift_endAccess();
  sub_1BAB41C14(v22, v18, type metadata accessor for ReplicatorRecord.ID);
  v15 = v20;
  sub_1BABE7AFC();
  (*(v13 + 56))(v15, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);
  sub_1BABE747C();
  sub_1BABE749C();
  return swift_endAccess();
}

uint64_t sub_1BAB3BCE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BAB3BDDC;

  return v6(a1);
}

uint64_t sub_1BAB3BDDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAB3BED4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1BAB3BF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAAD37E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDBFB8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BABE6CFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1BABE715C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1BAB3EC94(v7, v9, MEMORY[0x1E69C7308]);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1BABE715C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1BABD5AB4(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDC470();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    LOBYTE(v11) = *(v11 + 17);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 17) = v11;
    result = sub_1BAB3C8E0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1BAB3C1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDCC60();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    sub_1BAB41BB4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ReplicatorRecord.ID);
    v12 = *(v9 + 56);
    v13 = sub_1BABE6CFC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1BAB3CF80(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1BABE6CFC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDCF90();
      v9 = v20;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    v19 = *(v11 - 8);
    v12 = *(v19 + 72) * v7;
    sub_1BAB41BB4(v10 + v12, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB41B4C(*(v9 + 56) + v12, a2, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB3D468(v7, v9);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for ReplicatorRecord.ID(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1BAB3C4D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BABD5D18(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDD454();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ReplicatorRecord.ID(0);
    sub_1BAB41BB4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ReplicatorRecord.ID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ReplicatorRecord(0);
    v20 = *(v13 - 8);
    sub_1BAB41B4C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ReplicatorRecord);
    sub_1BAB3D93C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ReplicatorRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1BAB3C670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BABD5AB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDE2E8();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + 80 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    a3[4] = v11[4];
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    sub_1BAB3DFF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1BAB3C730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BAAD37E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BABDEC08();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1BABE6CFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
    v20 = *(v13 - 8);
    sub_1BAB41B4C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    sub_1BAB3EC94(v7, v9, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1BAB3C8E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v10 = sub_1BABE7FDC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3CAB0(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6CFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1BAB3CDD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v9 = sub_1BABE7FDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3CF80(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 + 64;
  v16 = -1 << *(a2 + 32);
  v17 = (a1 + 1) & ~v16;
  if ((*(a2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v41 = v5;
    v18 = ~v16;
    v44 = (sub_1BABE7A1C() + 1) & ~v16;
    v19 = *(v11 + 72);
    v42 = (v41 + 48);
    v43 = v19;
    v37 = (v41 + 8);
    v38 = (v41 + 32);
    v20 = v18;
    v21 = v19;
    v39 = v20;
    while (1)
    {
      v22 = *(a2 + 48);
      v45 = v21 * v17;
      sub_1BAB41C14(v22 + v21 * v17, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      if ((*v42)(v9, 1, v4) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v23 = a1;
        v24 = a2;
        v25 = v10;
        v26 = v15;
        v27 = v40;
        (*v38)(v40, v9, v4);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v28 = v27;
        v15 = v26;
        v10 = v25;
        a2 = v24;
        a1 = v23;
        v20 = v39;
        (*v37)(v28, v4);
      }

      sub_1BABE759C();
      v29 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v30 = v29 & v20;
      if (a1 >= v44)
      {
        break;
      }

      v21 = v43;
      if (v30 < v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v21 * a1 < v45 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v45 + v21))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v21 * a1 != v45)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v31 = *(a2 + 56);
      v32 = *(v41 + 72);
      v33 = v32 * a1;
      result = v31 + v32 * a1;
      if (v32 * a1 < (v32 * v17) || result >= v31 + v32 * v17 + v32)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v17;
        if (v33 == v32 * v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v17;
LABEL_5:
      v17 = (v17 + 1) & v20;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v21 = v43;
    if (v30 < v44)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v30)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3D468(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v45 = v4;
    v17 = ~v15;
    v18 = sub_1BABE7A1C();
    v46 = v17;
    v44 = (v18 + 1) & v17;
    v19 = *(v11 + 72);
    v42 = (v5 + 48);
    v43 = v19;
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v20 = a2 + 64;
    v21 = v19;
    while (1)
    {
      v22 = v21 * v16;
      sub_1BAB41C14(*(a2 + 48) + v21 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v45;
      if ((*v42)(v9, 1, v45) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v39;
        v41 = a1;
        v25 = v10;
        v26 = a2;
        v27 = v20;
        v28 = v9;
        v29 = v40;
        v24(v40, v28, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v30 = v29;
        v9 = v28;
        v20 = v27;
        a2 = v26;
        v10 = v25;
        a1 = v41;
        (*v38)(v30, v23);
      }

      sub_1BABE759C();
      v31 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v32 = v31 & v46;
      v21 = v43;
      if (a1 >= v44)
      {
        break;
      }

      if (v32 < v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      v33 = v43 * a1;
      if (v43 * a1 < v22 || *(a2 + 48) + v43 * a1 >= (*(a2 + 48) + v22 + v43))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v33 != v22)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v34 = *(a2 + 56);
      result = v34 + v33;
      if (v33 < v22 || result >= v34 + v22 + v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v16;
        if (v33 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v16;
LABEL_5:
      v16 = (v16 + 1) & v46;
      if (((*(v20 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v32 < v44)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v32)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v20 = a2 + 64;
LABEL_24:
  *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3D93C(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v46 = v4;
    v17 = ~v15;
    v18 = v12;
    v44 = (sub_1BABE7A1C() + 1) & ~v15;
    v45 = v17;
    v19 = *(v18 + 72);
    v43 = (v5 + 48);
    v39 = (v5 + 8);
    v40 = (v5 + 32);
    v20 = v19;
    v21 = a2 + 64;
    v47 = v19;
    while (1)
    {
      v22 = v20 * v16;
      sub_1BAB41C14(*(a2 + 48) + v20 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v46;
      if ((*v43)(v9, 1, v46) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v40;
        v42 = a1;
        v25 = a2;
        v26 = v10;
        v27 = v21;
        v28 = v41;
        v24(v41, v9, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v29 = v28;
        v21 = v27;
        v10 = v26;
        a2 = v25;
        a1 = v42;
        (*v39)(v29, v23);
      }

      sub_1BABE759C();
      v30 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v31 = v45;
      v32 = v30 & v45;
      if (a1 >= v44)
      {
        v20 = v47;
        if (v32 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v20 = v47;
        if (v32 >= v44)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v20 * a1 < v22 || *(a2 + 48) + v20 * a1 >= (*(a2 + 48) + v22 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for ReplicatorRecord(0) - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        if (v34 * a1 < (v34 * v16) || result >= v33 + v34 * v16 + v34)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v20 = v47;
        }

        else
        {
          a1 = v16;
          v20 = v47;
          if (v35 != v34 * v16)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v31;
      if (((*(v21 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v21 = a2 + 64;
LABEL_23:
  *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3DE3C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BABE7A1C() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1BABE7F8C();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1BAB3DFF0(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BABE7A1C() + 1) & ~v5;
    do
    {
      sub_1BABE7F9C();

      sub_1BABE759C();
      v9 = sub_1BABE7FDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 80 * v3);
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E1A4(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6CFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E4C4(int64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v48 = v4;
    v17 = ~v15;
    v18 = v12;
    v46 = (sub_1BABE7A1C() + 1) & ~v15;
    v47 = v17;
    v19 = *(v18 + 72);
    v44 = (v5 + 48);
    v45 = v19;
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    v20 = v19;
    v21 = a2 + 64;
    while (1)
    {
      v22 = v20 * v16;
      sub_1BAB41C14(*(a2 + 48) + v20 * v16, v14, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BAB41C14(&v14[*(v10 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v23 = v48;
      if ((*v44)(v9, 1, v48) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v24 = *v41;
        v43 = a1;
        v25 = a2;
        v26 = v10;
        v27 = v21;
        v28 = v42;
        v24(v42, v9, v23);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v29 = v28;
        v21 = v27;
        v10 = v26;
        a2 = v25;
        a1 = v43;
        (*v40)(v29, v23);
      }

      sub_1BABE759C();
      v30 = sub_1BABE7FDC();
      result = sub_1BAB41BB4(v14, type metadata accessor for ReplicatorRecord.ID);
      v31 = v47;
      v32 = v30 & v47;
      if (a1 >= v46)
      {
        v20 = v45;
        if (v32 < v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v20 = v45;
        if (v32 >= v46)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        v33 = *(a2 + 48);
        result = v33 + v20 * a1;
        if (v20 * a1 < v22 || result >= v33 + v22 + v20)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v22)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v16);
        if (a1 != v16 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v31;
      if (((*(v21 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  v21 = a2 + 64;
LABEL_22:
  *(v21 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3E974(int64_t a1, uint64_t a2)
{
  v40 = sub_1BABE6BAC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1BABE7A1C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1BAAD3904(&qword_1EBC12228, MEMORY[0x1E6968FB0]);
      v23 = sub_1BABE74AC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1BAB3EC94(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_1BABE7A1C();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      v23 = sub_1BABE74AC();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAB3EFE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F038(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1BABE715C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1BAB3F12C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BAB3F170(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  *(v8 + 17) = HIBYTE(a6) & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F1D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F288(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BABE6CFC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BAB3F334(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1BAB3F37C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[7];
  v11 = sub_1BABE6CFC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BAB3F46C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for ReplicatorRecord.ID(0) - 8) + 72) * a1;
  sub_1BAB41B4C(a2, v7 + v8, type metadata accessor for ReplicatorRecord.ID);
  result = sub_1BAB41B4C(a3, a4[7] + v8, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BAB3F534(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  v10 = a4[7];
  v11 = type metadata accessor for ReplicatorRecord(0);
  result = sub_1BAB41B4C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BAB3F620(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  result = sub_1BAB41B4C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.ID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F6D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReplicatorRecord.Value(0);
  result = sub_1BAB41B4C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ReplicatorRecord.Value);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BAB3F77C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BABE6BAC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BAB3F828(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1BAB3F88C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6BAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BAB3F944(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BABE6CFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  result = sub_1BAB41B4C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1BAB3FA34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v38 = a3;
  v39 = a4;
  v37 = a1;
  v40 = a9;
  v12 = sub_1BABE793C();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = *a2;
  v32 = a2[1];
  v33 = v16;
  LODWORD(v16) = *(a2 + 16);
  v30 = *(a2 + 17);
  v31 = v16;
  v17 = a2[3];
  v28 = a2[4];
  v29 = v17;
  HIDWORD(v27) = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v9 + 240) = v18;
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorStore.Entry();
  swift_getAssociatedConformanceWitness();
  *(v9 + 248) = sub_1BABE741C();
  type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAAD3904(&qword_1ED787418, type metadata accessor for ReplicatorRecord.ID);
  *(v9 + 256) = sub_1BABE741C();
  sub_1BABE6CFC();
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  swift_getFunctionTypeMetadata1();
  sub_1BAAD3904(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  *(v9 + 264) = sub_1BABE741C();
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1BAAD3904(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v35 + 104))(v34, *MEMORY[0x1E69E8090], v36);
  *(v9 + 272) = sub_1BABE796C();
  v19 = v37;
  sub_1BAB416E4(v37, v9 + 16);
  v20 = v32;
  *(v9 + 96) = v33;
  *(v9 + 104) = v20;
  LOBYTE(v20) = v30;
  *(v9 + 112) = v31;
  *(v9 + 113) = v20;
  v21 = v28;
  *(v9 + 120) = v29;
  *(v9 + 128) = v21;
  *(v9 + 136) = BYTE4(v27);
  v22 = v38;
  sub_1BAAD2DAC(v38, v9 + 144, &qword_1EBC12DC0);
  v23 = v40;
  v24 = v41;
  *(v9 + 192) = v39;
  *(v9 + 200) = v24;
  v25 = v43;
  v10[26] = v42;
  v10[27] = v25;
  v10[28] = v44;
  v10[29] = v23;

  sub_1BAB31E84(&unk_1F38BD420, &unk_1BABEAC10);
  sub_1BAB31E84(&unk_1F38BD330, &unk_1BABEABC8);
  sub_1BAB31FD0();
  sub_1BAAD2E14(v22, &qword_1EBC12DC0);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BAB4004C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB400BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ReplicatorStore.add(_:destination:schedule:expiration:options:)()
{
  return (*(*v0 + 344))();
}

{
  return (*(*v0 + 352))();
}

uint64_t sub_1BAB404DC()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ReplicatorRecord.ID(255);
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC13D70);
    sub_1BABE6CFC();
    result = swift_getTupleTypeMetadata();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAB405D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(sub_1BABE6CFC() - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 | 7) + v6) & ~(v8 | 7);
  v10 = *(v7 + 84);
  v11 = *(v7 + 64);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(sub_1BABE6BAC() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 84);
  v16 = *(v13 + 64);
  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  v18 = v15 == 0;
  v19 = ((v17 + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v16 + v8;
  if (v18)
  {
    ++v20;
  }

  v21 = ((v20 + ((((v12 + (v8 | 7)) & ~(v8 | 7)) + v14 + v19) & ~v14)) & ~v8) + v11;
  if (v21 <= v19 + v9)
  {
    v22 = v19 + v9;
  }

  else
  {
    v22 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_31;
  }

  v23 = v22 + 1;
  v24 = 8 * (v22 + 1);
  if ((v22 + 1) <= 3)
  {
    v27 = ((a2 + ~(-1 << v24) - 254) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v27 < 2)
    {
LABEL_31:
      v29 = *(a1 + v22);
      if (v29 >= 2)
      {
        return (v29 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_31;
  }

LABEL_20:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return (v23 | v28) + 255;
}

void sub_1BAB40854(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(sub_1BABE6CFC() - 8);
  v10 = *(v9 + 80);
  v11 = ((v10 | 7) + v8) & ~(v10 | 7);
  v12 = *(v9 + 84);
  v13 = *(v9 + 64);
  v14 = *(*(v7 - 8) + 64);
  v15 = *(sub_1BABE6BAC() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 84);
  v18 = *(v15 + 64);
  if (v12)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13 + 1;
  }

  v20 = v17 == 0;
  v21 = ((v19 + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v18 + v10;
  if (v20)
  {
    ++v22;
  }

  v23 = ((v22 + ((((v14 + (v10 | 7)) & ~(v10 | 7)) + v16 + v21) & ~v16)) & ~v10) + v13;
  if (v23 <= v21 + v11)
  {
    v23 = v21 + v11;
  }

  v24 = v23 + 1;
  if (a3 < 0xFF)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 + ~(-1 << (8 * v24)) - 254) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (a2 > 0xFE)
  {
    v26 = a2 - 255;
    if (v24 >= 4)
    {
      bzero(a1, v23 + 1);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v27 = (v26 >> (8 * v24)) + 1;
    if (v23 != -1)
    {
      v30 = v26 & ~(-1 << (8 * v24));
      bzero(a1, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *a1 = v30;
          if (v25 > 1)
          {
LABEL_44:
            if (v25 == 2)
            {
              *&a1[v24] = v27;
            }

            else
            {
              *&a1[v24] = v27;
            }

            return;
          }
        }

        else
        {
          *a1 = v26;
          if (v25 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v25)
        {
          a1[v24] = v27;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v25 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v23] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v25 == 2)
  {
    *&a1[v24] = 0;
    goto LABEL_29;
  }

  *&a1[v24] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1BAB40B4C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorRecord(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAB40BD4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(a3 + 16);
  v4 = *(v46 - 8);
  v5 = *(v4 + 84);
  v45 = sub_1BABE6CFC();
  v6 = *(v45 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(sub_1BABE6C8C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v14 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v11 + 80);
  v18 = *(v6 + 64);
  v19 = v18 + 7;
  if (v7)
  {
    v20 = v18 + 7;
  }

  else
  {
    v20 = v18 + 8;
  }

  v21 = *(v11 + 64);
  if (v13)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v16 | v17 | 7;
  v24 = v23 + *(v4 + 64);
  v25 = ((v20 + ((v16 + 48) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = v17 + 8;
  v27 = a1;
  if (v15 >= a2)
  {
LABEL_46:
    if (v5 >= v14)
    {
      v40 = v46;
      v41 = *(v4 + 48);
      v42 = v5;
    }

    else
    {
      v37 = ~v16;
      v38 = (a1 + v24) & ~v23;
      if (v9 == v14)
      {
        if ((v8 & 0x80000000) == 0)
        {
          v39 = *(v38 + 8);
LABEL_59:
          if (v39 >= 0xFFFFFFFF)
          {
            LODWORD(v39) = -1;
          }

          return (v39 + 1);
        }

        v44 = (*(v6 + 48))((v16 + ((((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & v37, v7, v45);
        goto LABEL_66;
      }

      v27 = ((v38 + v16 + v25) & v37);
      if (v7 != v14)
      {
        v43 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          v39 = *v43;
          goto LABEL_59;
        }

        v44 = (*(v12 + 48))((v43 + v26) & ~v17);
LABEL_66:
        if (v44 >= 2)
        {
          return v44 - 1;
        }

        else
        {
          return 0;
        }
      }

      v41 = *(v6 + 48);
      v42 = v7;
      v40 = v45;
    }

    return v41(v27, v42, v40);
  }

  v28 = (v24 & ~v23) + ((v22 + v21 + ((v26 + ((v19 + ((v25 + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v28 & 0xFFFFFFF8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v30 = 2;
  }

  else
  {
    v30 = a2 - v15 + 1;
  }

  if (v30 >= 0x10000)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2;
  }

  if (v30 < 0x100)
  {
    v31 = 1;
  }

  if (v30 >= 2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v33 = *(a1 + v28);
      if (!v33)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v33 = *(a1 + v28);
      if (!v33)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = *(a1 + v28);
    if (!v33)
    {
      goto LABEL_46;
    }
  }

  v35 = v33 - 1;
  if (v29)
  {
    v35 = 0;
    v36 = *a1;
  }

  else
  {
    v36 = 0;
  }

  return v15 + (v36 | v35) + 1;
}

void sub_1BAB40FA8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v61 = *(a4 + 16);
  v5 = *(v61 - 8);
  v60 = v5;
  v6 = *(v5 + 84);
  v58 = sub_1BABE6CFC();
  v7 = *(v58 - 8);
  v64 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v59 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = 0;
  v13 = *(sub_1BABE6C8C() - 8);
  v14 = *(v13 + 84);
  v15 = *(v7 + 64);
  v16 = *(v5 + 64);
  if (v14)
  {
    v17 = v14 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = *(v7 + 80);
  v22 = *(v13 + 80);
  v23 = v21 | v22 | 7;
  v24 = v23 + v16;
  v25 = (v23 + v16) & ~v23;
  v26 = ((((v21 + 48) & ~v21) + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = v15 + 7;
  v28 = v15 + 7 + ((v26 + v21) & ~v21);
  v29 = v22 + 8;
  v30 = *(v13 + 64);
  if (!v14)
  {
    ++v30;
  }

  v31 = v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 < a3)
  {
    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) == -8)
    {
      v32 = a3 - v19 + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v12 = v33;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v19)
  {
    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) == -8)
    {
      v34 = a2 - v19;
    }

    else
    {
      v34 = 1;
    }

    if (v25 + ((v30 + ((v22 + 8 + (v28 & 0xFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFF8) != -8)
    {
      v35 = ~v19 + a2;
      bzero(a1, v31);
      *a1 = v35;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v31) = v34;
      }

      else
      {
        *(a1 + v31) = v34;
      }
    }

    else if (v12)
    {
      *(a1 + v31) = v34;
    }

    return;
  }

  v36 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    *(a1 + v31) = 0;
  }

  else if (v12)
  {
    *(a1 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (!a2)
  {
    return;
  }

LABEL_54:
  if (v6 >= v18)
  {
    v41 = *(v60 + 56);
    v42 = a2;
    v43 = v6;
    v44 = v61;
LABEL_59:

    v41(v36, v42, v43, v44);
    return;
  }

  v37 = ~v22;
  v38 = ((a1 + v24) & ~v23);
  if (v18 < a2)
  {
    v39 = (((v29 + (v28 & 0xFFFFFFF8)) & v37) + v30 + 7) & 0xFFFFFFF8;
    if (v39 != -8)
    {
      v40 = ~v18 + a2;
      bzero(((a1 + v24) & ~v23), (v39 + 8));
      *v38 = v40;
    }

    return;
  }

  v45 = ~v21;
  if (v10 == v18)
  {
    if ((v59 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v38 = a2 & 0x7FFFFFFF;
        *(((a1 + v24) & ~v23) + 8) = 0;
      }

      else
      {
        *(((a1 + v24) & ~v23) + 8) = a2 - 1;
      }

      return;
    }

    v48 = v21 + ((((v38 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v49 = (v48 & v45);
    if (v59 < a2)
    {
      if (v20 <= 3)
      {
        v50 = ~(-1 << (8 * v20));
      }

      else
      {
        v50 = -1;
      }

      if (v20)
      {
        v51 = v50 & (~v59 + a2);
        if (v20 <= 3)
        {
          v52 = v20;
        }

        else
        {
          v52 = 4;
        }

        bzero(v49, v20);
        if (v52 > 2)
        {
          if (v52 == 3)
          {
            *v49 = v51;
            v49[2] = BYTE2(v51);
          }

          else
          {
            *v49 = v51;
          }
        }

        else if (v52 == 1)
        {
          *v49 = v51;
        }

        else
        {
          *v49 = v51;
        }
      }

      return;
    }

    v41 = *(v64 + 56);
    v42 = a2 + 1;
    v36 = (v48 & v45);
    goto LABEL_98;
  }

  v36 = ((v38 + v21 + v26) & v45);
  if (v8 == v18)
  {
    v41 = *(v64 + 56);
    v42 = a2;
LABEL_98:
    v43 = v8;
    v44 = v58;
    goto LABEL_59;
  }

  v46 = ((v36 + v27) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v53 = ((v46 + v29) & v37);
    if (v17 >= a2)
    {
      v57 = *(v13 + 56);

      v57((v46 + v29) & v37, a2 + 1);
    }

    else
    {
      if (v30 <= 3)
      {
        v54 = ~(-1 << (8 * v30));
      }

      else
      {
        v54 = -1;
      }

      if (v30)
      {
        v55 = v54 & (~v17 + a2);
        if (v30 <= 3)
        {
          v56 = v30;
        }

        else
        {
          v56 = 4;
        }

        bzero(v53, v30);
        if (v56 > 2)
        {
          if (v56 == 3)
          {
            *v53 = v55;
            v53[2] = BYTE2(v55);
          }

          else
          {
            *v53 = v55;
          }
        }

        else if (v56 == 1)
        {
          *v53 = v55;
        }

        else
        {
          *v53 = v55;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v47 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v47 = a2 - 1;
    }

    *v46 = v47;
  }
}

uint64_t sub_1BAB41528(uint64_t a1)
{
  type metadata accessor for ReplicatorStore.Change();
  sub_1BABE775C();
  sub_1BABE77DC();

  return sub_1BAB36624(a1);
}

uint64_t sub_1BAB416E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAB41770(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BAB41838;

  return sub_1BAB38BAC(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1BAB41838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAB4192C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAB41E38;

  return sub_1BAB3BCE4(a1, v4);
}

uint64_t sub_1BAB419E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAB41838;

  return sub_1BAB3BCE4(a1, v4);
}

uint64_t sub_1BAB41AB8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 264);
}

uint64_t sub_1BAB41B14(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BAB41B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB41BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAB41C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAB41CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BAB41E38;

  return sub_1BAB38300(a1, v4, v5, v6);
}

__n128 ReplicatorClient.replicatorProtocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t ReplicatorClient.__allocating_init(descriptor:recordVersions:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReplicatorClient.init(descriptor:recordVersions:)(a1, a2);
  return v4;
}

void *ReplicatorClient.init(descriptor:recordVersions:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1BABE793C();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6F8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = a1[3];
  v30[2] = a1[2];
  v30[3] = v16;
  v30[4] = a1[4];
  v17 = a1[1];
  v30[0] = *a1;
  v30[1] = v17;
  sub_1BABE6D0C();
  v18 = sub_1BABE6F6C();
  v19 = *(v10 + 8);
  v19(v15, v9);
  sub_1BABE6D0C();
  v20 = sub_1BABE6F7C();
  v19(v13, v9);
  v3[2] = v18;
  v3[3] = v20;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v26 + 104))(v25, *MEMORY[0x1E69E8090], v27);
  v3[18] = sub_1BABE796C();
  v21 = type metadata accessor for ReplicatorClientWithoutPersistence();
  swift_allocObject();
  v22 = sub_1BABC472C(v30, v28);
  v3[7] = v21;
  v3[8] = &off_1F38C2B50;
  v3[9] = &off_1F38C2B38;
  v3[10] = &off_1F38C2B10;
  v3[11] = &off_1F38C2AF8;
  v3[12] = &off_1F38C2AD8;
  v3[13] = &off_1F38C2AC0;
  v3[14] = &off_1F38C2AA0;
  v3[15] = &off_1F38C2A88;
  v3[16] = &off_1F38C2A40;
  v3[17] = &off_1F38C2A30;
  v3[4] = v22;
  return v3;
}

uint64_t ReplicatorClient.__allocating_init(id:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReplicatorClient.init(id:)(a1, a2);
  return v4;
}

void *ReplicatorClient.init(id:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v23[0] = *v2;
  v4 = sub_1BABE793C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6F8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  sub_1BABE6D0C();
  v16 = sub_1BABE6F6C();
  v17 = *(v10 + 8);
  v17(v15, v9);
  sub_1BABE6D0C();
  v18 = sub_1BABE6F7C();
  v17(v13, v9);
  v3[2] = v16;
  v3[3] = v18;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  *&v29 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8090], v26);
  v3[18] = sub_1BABE796C();
  v19 = type metadata accessor for ReplicatorClientWithoutPersistence();
  swift_allocObject();
  v20 = v41;
  v21 = sub_1BABC4D30(v27, v28);
  if (v20)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = &off_1F38C2B50;
    v32 = &off_1F38C2B38;
    v33 = &off_1F38C2B10;
    v34 = &off_1F38C2AF8;
    v35 = &off_1F38C2AD8;
    v36 = &off_1F38C2AC0;
    v37 = &off_1F38C2AA0;
    v38 = &off_1F38C2A88;
    v39 = &off_1F38C2A40;
    v40 = &off_1F38C2A30;
    v30 = v19;
    *&v29 = v21;
    sub_1BAB4A588(&v29, v3 + 2);
  }

  return v3;
}

uint64_t ReplicatorClient.__allocating_init(id:cacheURL:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReplicatorClient.init(id:cacheURL:corruptionHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ReplicatorClient.init(id:cacheURL:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v40 = a4;
  v41 = a3;
  v43 = a1;
  v44 = a2;
  v32[1] = *v5;
  v38 = sub_1BABE6BAC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BABE793C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1BABE6F8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v32 - v15;
  sub_1BABE6D0C();
  v17 = sub_1BABE6F6C();
  v18 = *(v11 + 8);
  v18(v16, v10);
  sub_1BABE6D0C();
  v19 = sub_1BABE6F7C();
  v18(v14, v10);
  v20 = v33;
  *(v33 + 16) = v17;
  *(v20 + 24) = v19;
  v32[2] = sub_1BAAD14BC();
  sub_1BABE73AC();
  *&v45 = MEMORY[0x1E69E7CC0];
  sub_1BAB4CC80(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  v21 = v36;
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  v22 = v38;
  v23 = v40;
  sub_1BABE79FC();
  (*(v35 + 104))(v34, *MEMORY[0x1E69E8090], v37);
  v24 = v41;
  v25 = v42;
  *(v20 + 144) = sub_1BABE796C();
  v26 = v39;
  (*(v21 + 16))(v39, v24, v22);
  v27 = type metadata accessor for ReplicatorClientWithPersistence();
  swift_allocObject();
  sub_1BAADAF5C(v23);
  v28 = v57;
  sub_1BAB7878C(v43, v44, v26, v23, v25);
  if (v28)
  {
    sub_1BAADAFD4(v23);
    (*(v21 + 8))(v24, v22);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v29;
    v46 = v27;
    v47 = &off_1F38C1360;
    v48 = &off_1F38C1348;
    v49 = &off_1F38C1320;
    v50 = &off_1F38C1308;
    v51 = &off_1F38C12E8;
    v52 = &off_1F38C12D0;
    v53 = &off_1F38C12B0;
    v54 = &off_1F38C1298;
    v55 = &off_1F38C1250;
    v56 = &off_1F38C1240;
    sub_1BAADAFD4(v23);
    *&v45 = v30;
    (*(v21 + 8))(v24, v22);
    sub_1BAB4A588(&v45, (v20 + 32));
  }

  return v20;
}

uint64_t ReplicatorClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t ReplicatorClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t ReplicatorClient.descriptor.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1BAB42E90()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.messageUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.send(message:)(uint64_t a1)
{
  v3 = v1;
  v68 = type metadata accessor for ReplicatorMessage();
  v5 = MEMORY[0x1EEE9AC00](v68);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BABE72BC();
  v14 = __swift_project_value_buffer(v13, qword_1ED78BBA0);
  sub_1BAB4CC18(a1, v12, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v10, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v7, type metadata accessor for ReplicatorMessage);

  v67 = v14;
  v15 = sub_1BABE729C();
  v16 = sub_1BABE790C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v65 = a1;
    v18 = v17;
    v64 = swift_slowAlloc();
    v71 = v64;
    *v18 = 136446978;
    v63 = v16;
    v19 = v3[7];
    v20 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v19);
    v21 = *(v20 + 8);
    v62 = v15;
    v21(&v69, v19, v20);
    v22 = v69;
    v23 = v70;

    sub_1BAB21D34(&v69);
    v24 = sub_1BAAFA460(v22, v23, &v71);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v61 = sub_1BABE6CFC();
    sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
    v25 = sub_1BABE7EAC();
    v27 = v26;
    v66 = v2;
    sub_1BAB4A600(v12, type metadata accessor for ReplicatorMessage);
    v28 = sub_1BAAFA460(v25, v27, &v71);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2082;
    v29 = &v10[*(v68 + 28)];
    v30 = *v29;
    v31 = v29[1];

    sub_1BAB4A600(v10, type metadata accessor for ReplicatorMessage);
    v32 = sub_1BAAFA460(v30, v31, &v71);

    *(v18 + 24) = v32;
    *(v18 + 32) = 2082;
    v33 = sub_1BABE7EAC();
    v35 = v34;
    sub_1BAB4A600(v7, type metadata accessor for ReplicatorMessage);
    v36 = sub_1BAAFA460(v33, v35, &v71);

    *(v18 + 34) = v36;
    v37 = v62;
    _os_log_impl(&dword_1BAACF000, v62, v63, "Client %{public}s sending fire-and-forget message %{public}s of type %{public}s to %{public}s", v18, 0x2Au);
    v38 = v64;
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v38, -1, -1);
    v39 = v18;
    a1 = v65;
    MEMORY[0x1BFAFE460](v39, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v7, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v10, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v12, type metadata accessor for ReplicatorMessage);
  }

  v40 = v3[7];
  v41 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v40);
  if (((*(v41 + 8))(v40, v41) & 1) == 0)
  {
    v50 = sub_1BABE729C();
    v51 = sub_1BABE78EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BAACF000, v50, v51, "Client is not registered", v52, 2u);
      MEMORY[0x1BFAFE460](v52, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v53 = 2;
    goto LABEL_13;
  }

  v42 = a1;
  v43 = (a1 + *(v68 + 20));
  v44 = *v43;
  v45 = v43[1];
  v46 = v3[7];
  v47 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v46);
  (*(v47 + 8))(&v69, v46, v47);
  v49 = v69;
  v48 = v70;

  sub_1BAB21D34(&v69);
  if (v44 != v49 || v45 != v48)
  {
    v55 = sub_1BABE7EDC();

    if (v55)
    {
      goto LABEL_15;
    }

    v58 = sub_1BABE729C();
    v59 = sub_1BABE78EC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1BAACF000, v58, v59, "Wrong client ID", v60, 2u);
      MEMORY[0x1BFAFE460](v60, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v53 = 0;
LABEL_13:
    *(v53 + 8) = 0;

    return swift_willThrow();
  }

LABEL_15:
  v56 = v3[7];
  v57 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v56);
  return (*(v57 + 16))(v42, v56, v57);
}

uint64_t ReplicatorClient.isRegistered.getter()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t ReplicatorClient.sendExpectingResponse(message:timeout:retries:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v85 = a3;
  v6 = v5;
  v78 = a2;
  v10 = sub_1BABE737C();
  v83 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BABE73BC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ReplicatorMessage();
  v13 = MEMORY[0x1EEE9AC00](v84);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v21 = sub_1BABE72BC();
  __swift_project_value_buffer(v21, qword_1ED78BBA0);
  sub_1BAB4CC18(a1, v20, type metadata accessor for ReplicatorMessage);
  sub_1BAB4CC18(a1, v18, type metadata accessor for ReplicatorMessage);
  v86 = a1;
  sub_1BAB4CC18(a1, v15, type metadata accessor for ReplicatorMessage);

  v22 = sub_1BABE729C();
  v23 = sub_1BABE790C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v76 = a4;
    v25 = v24;
    v75 = swift_slowAlloc();
    v88[0] = v75;
    *v25 = 136446978;
    v74 = v22;
    v77 = v10;
    v26 = v6[7];
    v27 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v26);
    v28 = *(v27 + 8);
    v73 = v23;
    v28(&aBlock, v26, v27);
    v29 = aBlock;
    v30 = v90;

    sub_1BAB21D34(&aBlock);
    v31 = sub_1BAAFA460(v29, v30, v88);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v72 = sub_1BABE6CFC();
    sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
    v32 = sub_1BABE7EAC();
    v34 = v33;
    sub_1BAB4A600(v20, type metadata accessor for ReplicatorMessage);
    v35 = sub_1BAAFA460(v32, v34, v88);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2082;
    v36 = &v18[*(v84 + 28)];
    v37 = *v36;
    v38 = v36[1];

    sub_1BAB4A600(v18, type metadata accessor for ReplicatorMessage);
    v39 = sub_1BAAFA460(v37, v38, v88);

    *(v25 + 24) = v39;
    *(v25 + 32) = 2082;
    v40 = sub_1BABE7EAC();
    v42 = v41;
    v10 = v77;
    sub_1BAB4A600(v15, type metadata accessor for ReplicatorMessage);
    v43 = sub_1BAAFA460(v40, v42, v88);

    *(v25 + 34) = v43;
    v44 = v74;
    _os_log_impl(&dword_1BAACF000, v74, v73, "Client %{public}s sending message %{public}s of type %{public}s to %{public}s", v25, 0x2Au);
    v45 = v75;
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v45, -1, -1);
    v46 = v25;
    a4 = v76;
    MEMORY[0x1BFAFE460](v46, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v15, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v18, type metadata accessor for ReplicatorMessage);
    sub_1BAB4A600(v20, type metadata accessor for ReplicatorMessage);
  }

  v47 = v6[7];
  v48 = v6[10];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v47);
  if (((*(v48 + 8))(v47, v48) & 1) == 0)
  {
    v56 = v6[18];
    v57 = swift_allocObject();
    *(v57 + 16) = v85;
    *(v57 + 24) = a4;
    v93 = sub_1BAB4A5B0;
    v94 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1BAAD173C;
    v92 = &block_descriptor_1;
    v58 = _Block_copy(&aBlock);

    v59 = v56;
    v60 = v79;
    sub_1BABE739C();
    v88[0] = MEMORY[0x1E69E7CC0];
    sub_1BAB4CC80(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
    v61 = v80;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v60, v61, v58);
    _Block_release(v58);

    (*(v83 + 8))(v61, v10);
    (*(v81 + 8))(v60, v82);
  }

  v49 = (v86 + *(v84 + 20));
  v50 = *v49;
  v51 = v49[1];
  v52 = v6[7];
  v53 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v52);
  (*(v53 + 8))(&aBlock, v52, v53);
  v55 = aBlock;
  v54 = v90;

  sub_1BAB21D34(&aBlock);
  if (v50 != v55 || v51 != v54)
  {
    v63 = sub_1BABE7EDC();

    if (v63)
    {
      goto LABEL_13;
    }

    v66 = v6[18];
    v67 = swift_allocObject();
    *(v67 + 16) = v85;
    *(v67 + 24) = a4;
    v88[4] = sub_1BAB4A5D8;
    v88[5] = v67;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 1107296256;
    v88[2] = sub_1BAAD173C;
    v88[3] = &block_descriptor_6;
    v68 = _Block_copy(v88);
    v69 = v66;

    v70 = v79;
    sub_1BABE739C();
    v87 = MEMORY[0x1E69E7CC0];
    sub_1BAB4CC80(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
    v71 = v80;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v70, v71, v68);
    _Block_release(v68);

    (*(v83 + 8))(v71, v10);
    (*(v81 + 8))(v70, v82);
  }

LABEL_13:
  v64 = v6[7];
  v65 = v6[14];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v64);
  return (*(v65 + 24))(v86, v78, v85, a4, v64, v65, a5);
}

uint64_t sub_1BAB44074(void (*a1)(uint64_t *), uint64_t a2, const char *a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BABE72BC();
  __swift_project_value_buffer(v10, qword_1ED78BBA0);
  v11 = sub_1BABE729C();
  v12 = sub_1BABE78EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BAACF000, v11, v12, a3, v13, 2u);
    MEMORY[0x1BFAFE460](v13, -1, -1);
  }

  sub_1BAB15A08();
  v14 = swift_allocError();
  *v15 = a4;
  *(v15 + 8) = 0;

  *v9 = v14;
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_1BAAD2E14(v9, &qword_1EBC12AC8);
}

uint64_t sub_1BAB44234()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 112);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.id.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 8))(&v5, v1, v2);
  v3 = v5;

  sub_1BAB21D34(&v5);
  return v3;
}

uint64_t ReplicatorClient.localDeviceID.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 8) + 8))(v1);
}

uint64_t ReplicatorClient.deviceUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 24) + 8))(v1);
}

uint64_t ReplicatorClient.pairedDeviceUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 24) + 16))(v1);
}

uint64_t ReplicatorClient.devices.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(*(v2 + 16) + 8))(v1);
}

uint64_t ReplicatorClient.pairedDevices.getter()
{
  v1 = v0[7];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return ReplicatorRemoteDeviceProviding.pairedDevices()(v1, *(v2 + 16));
}

uint64_t sub_1BAB4451C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

__n128 sub_1BAB44580@<Q0>(__n128 *a1@<X8>)
{
  result = (*v1)[1];
  *a1 = result;
  return result;
}

uint64_t sub_1BAB44590()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1BAB445E4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1BAB44648()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 32), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.setEnabled(_:)(Swift::Bool a1)
{
  v3 = v1[7];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  if ((*(v4 + 8))(v3, v4))
  {
    v5 = v1[7];
    v6 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v5);
    (*(v6 + 16))(a1, v5, v6);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BABE72BC();
    __swift_project_value_buffer(v7, qword_1ED78BBA0);
    v8 = sub_1BABE729C();
    v9 = sub_1BABE78EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v8, v9, "Client is not registered", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t ReplicatorClient.isEnabled.getter()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    return (*(v4 + 8))(v3, v4) & 1;
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1ED78BBA0);
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Client is not registered", v9, 2u);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    return 0;
  }
}

uint64_t ReplicatorClient.recordUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ReplicatorClient.zoneUpdates(zone:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t ReplicatorClient.InvalidRecordResolution.hashValue.getter()
{
  v1 = *v0;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](v1);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorClient.add(records:destination:schedule:)(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v7 = *a2;
  v6 = v3;
  v5 = 1;
  return ReplicatorClient.add(records:destination:schedule:invalidRecordResolution:)(a1, &v7, &v6, &v5);
}

uint64_t ReplicatorClient.add(records:destination:schedule:invalidRecordResolution:)(void *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v380 = a4;
  v392 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v365 = v326 - v10;
  v11 = sub_1BABE6BAC();
  v343 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v355 = v326 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v326 - v14;
  v364 = type metadata accessor for ReplicatorRecord.Value(0);
  v361 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v360 = v326 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E08);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v373 = (v326 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v370 = v326 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v347 = v326 - v22;
  v349 = sub_1BABE6C8C();
  v342 = *(v349 - 8);
  v23 = MEMORY[0x1EEE9AC00](v349);
  v339 = v326 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v344 = v326 - v25;
  v351 = type metadata accessor for ReplicatorRecord(0);
  *&v341 = *(v351 - 8);
  v26 = MEMORY[0x1EEE9AC00](v351);
  v352 = (v326 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v356 = (v326 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v350 = v326 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v346 = (v326 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v335 = v326 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v334 = v326 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v345 = v326 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v354 = (v326 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v338 = (v326 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v337 = (v326 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v336 = (v326 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v49 = v326 - v48;
  v371 = sub_1BABE6CFC();
  v379 = *(v371 - 8);
  v50 = MEMORY[0x1EEE9AC00](v371);
  v348 = v326 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v375 = v326 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v378 = v326 - v54;
  v55 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v372 = v326 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ReplicatorDevice(0);
  v381 = *(v57 - 1);
  v382 = v57;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v374 = (v326 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x1EEE9AC00](v58);
  v377 = v326 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v376 = v326 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v326 - v64;
  v357 = *a2;
  v340 = *a3;
  v363 = *v380;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v66 = sub_1BABE72BC();
  v67 = __swift_project_value_buffer(v66, qword_1ED78BBA0);

  v368 = v67;
  v68 = sub_1BABE729C();
  v69 = a1;
  v70 = sub_1BABE790C();
  v71 = os_log_type_enabled(v68, v70);
  v369 = v11;
  v366 = v5;
  v353 = v69;
  if (v71)
  {
    v72 = swift_slowAlloc();
    *v72 = 134349056;
    *(v72 + 4) = v69[2];

    _os_log_impl(&dword_1BAACF000, v68, v70, "Adding %{public}ld records", v72, 0xCu);
    v73 = v72;
    v5 = v366;
    MEMORY[0x1BFAFE460](v73, -1, -1);
  }

  else
  {
  }

  v74 = v5;
  v75 = v5[7];
  v76 = v74[10];
  __swift_project_boxed_opaque_existential_1(v74 + 4, v75);
  if (((*(v76 + 8))(v75, v76) & 1) == 0)
  {
    v96 = sub_1BABE729C();
    v97 = sub_1BABE78EC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_1BAACF000, v96, v97, "Client is not registered", v98, 2u);
      MEMORY[0x1BFAFE460](v98, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v99 = 2;
    goto LABEL_26;
  }

  v358 = v15;
  v359 = v49;
  v77 = v74[7];
  v78 = v74[12];
  __swift_project_boxed_opaque_existential_1(v74 + 4, v77);
  v80 = (*(*(v78 + 16) + 8))(v77);
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = 0;
    v362 = (v379 + 8);
    v380 = MEMORY[0x1E69E7CC0];
    v83 = v382;
    v84 = v372;
    *&v367 = v81;
    while (1)
    {
      if (v82 >= *(v80 + 16))
      {
        goto LABEL_160;
      }

      v88 = (v381[80] + 32) & ~v381[80];
      v89 = *(v381 + 9);
      sub_1BAB4CC18(v80 + v88 + v89 * v82, v65, type metadata accessor for ReplicatorDevice);
      sub_1BAB4CC18(&v65[v83[12]], v84, type metadata accessor for ReplicatorDevice.RelationshipState);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
      v91 = (*(*(v90 - 8) + 48))(v84, 4, v90);
      if ((v91 - 2) >= 2)
      {
        if (v91)
        {
          sub_1BAB4A600(v65, type metadata accessor for ReplicatorDevice);
          v85 = type metadata accessor for ReplicatorDevice.RelationshipState;
          v86 = v84;
          goto LABEL_10;
        }

        (*v362)(v84, v371);
      }

      if (v65[v83[14]] != 1)
      {
        sub_1BAB4CBB0(v65, v376, type metadata accessor for ReplicatorDevice);
        v92 = v380;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v391[0] = v92;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BAAFAAE0(0, *(v92 + 2) + 1, 1);
          v92 = *&v391[0];
        }

        v95 = *(v92 + 2);
        v94 = *(v92 + 3);
        if (v95 >= v94 >> 1)
        {
          sub_1BAAFAAE0(v94 > 1, v95 + 1, 1);
          v92 = *&v391[0];
        }

        *(v92 + 2) = v95 + 1;
        v380 = v92;
        sub_1BAB4CBB0(v376, &v92[v88 + v95 * v89], type metadata accessor for ReplicatorDevice);
        v83 = v382;
        v84 = v372;
        v81 = v367;
        goto LABEL_11;
      }

      v85 = type metadata accessor for ReplicatorDevice;
      v86 = v65;
LABEL_10:
      sub_1BAB4A600(v86, v85);
LABEL_11:
      ++v82;
      v87 = v378;
      if (v81 == v82)
      {
        goto LABEL_28;
      }
    }
  }

  v380 = MEMORY[0x1E69E7CC0];
  v83 = v382;
  v87 = v378;
LABEL_28:

  v101 = v380;
  v102 = *(v380 + 2);
  v103 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    *&v391[0] = MEMORY[0x1E69E7CC0];
    sub_1BAAFABF0(0, v102, 0);
    v103 = *&v391[0];
    v104 = &v101[(v381[80] + 32) & ~v381[80]];
    v378 = *(v381 + 9);
    v105 = (v379 + 16);
    v376 = v379 + 32;
    v106 = v371;
    do
    {
      v107 = v377;
      sub_1BAB4CC18(v104, v377, type metadata accessor for ReplicatorDevice);
      (*v105)(v87, &v107[v83[5]], v106);
      sub_1BAB4A600(v107, type metadata accessor for ReplicatorDevice);
      *&v391[0] = v103;
      v108 = v87;
      v110 = *(v103 + 16);
      v109 = *(v103 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_1BAAFABF0(v109 > 1, v110 + 1, 1);
        v106 = v371;
        v103 = *&v391[0];
      }

      *(v103 + 16) = v110 + 1;
      (*(v379 + 32))(v103 + ((*(v379 + 80) + 32) & ~*(v379 + 80)) + *(v379 + 72) * v110, v108, v106);
      v104 += v378;
      --v102;
      v83 = v382;
      v87 = v108;
    }

    while (v102);
  }

  v111 = sub_1BABE729C();
  v112 = sub_1BABE790C();

  v113 = os_log_type_enabled(v111, v112);
  v82 = v359;
  if (v113)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v391[0] = v115;
    *v114 = 136380675;
    v116 = MEMORY[0x1BFAFD330](v103, v371);
    v118 = v117;

    v119 = sub_1BAAFA460(v116, v118, v391);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1BAACF000, v111, v112, "Retrieved paired relationships: %{private}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1BFAFE460](v115, -1, -1);
    MEMORY[0x1BFAFE460](v114, -1, -1);
  }

  else
  {
  }

  v120 = v353;
  v121 = v380;
  v122 = v357;
  if (!v357)
  {

    goto LABEL_47;
  }

  v123 = *(v357 + 16);
  if (!v123)
  {

    v309 = sub_1BABE729C();
    v310 = sub_1BABE78EC();
    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      *v311 = 0;
      _os_log_impl(&dword_1BAACF000, v309, v310, "No destination relationship IDs specified", v311, 2u);
      MEMORY[0x1BFAFE460](v311, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v99 = 0;
LABEL_26:
    *(v99 + 8) = 0;

    return swift_willThrow();
  }

  v124 = 0;
  v125 = *(v380 + 2);
  v126 = (v357 + ((*(v379 + 80) + 32) & ~*(v379 + 80)));
  v377 = v126;
  v378 = v379 + 8;
  v127 = v371;
  do
  {
    if (v124 >= *(v122 + 16))
    {
      __break(1u);
    }

    v128 = v124 + 1;
    v82 = *(v379 + 16);
    (v82)(v375, &v126[*(v379 + 72) * v124], v127);
    v129 = 0;
    do
    {
      if (v125 == v129)
      {

        v297 = v348;
        v298 = v371;
        (v82)(v348, v375, v371);
        v299 = sub_1BABE729C();
        v300 = sub_1BABE78EC();
        if (os_log_type_enabled(v299, v300))
        {
          v301 = swift_slowAlloc();
          v382 = swift_slowAlloc();
          *&v391[0] = v382;
          *v301 = 136446210;
          sub_1BAB4CC80(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
          v302 = sub_1BABE7EAC();
          v303 = v297;
          v305 = v304;
          v306 = *v378;
          (*v378)(v303, v298);
          v307 = sub_1BAAFA460(v302, v305, v391);

          *(v301 + 4) = v307;
          _os_log_impl(&dword_1BAACF000, v299, v300, "Unpaired or unknown destination relationship ID: %{public}s", v301, 0xCu);
          v308 = v382;
          __swift_destroy_boxed_opaque_existential_1(v382);
          MEMORY[0x1BFAFE460](v308, -1, -1);
          MEMORY[0x1BFAFE460](v301, -1, -1);
        }

        else
        {

          v306 = *v378;
          (*v378)(v297, v298);
        }

        sub_1BAB15A08();
        swift_allocError();
        *v312 = 0;
        *(v312 + 8) = 0;

        swift_willThrow();
        return (v306)(v375, v298);
      }

      if (v129 >= *(v121 + 2))
      {
        goto LABEL_161;
      }

      v130 = &v121[((v381[80] + 32) & ~v381[80]) + *(v381 + 9) * v129];
      v131 = v374;
      sub_1BAB4CC18(v130, v374, type metadata accessor for ReplicatorDevice);
      ++v129;
      v132 = sub_1BABE6CCC();
      v133 = v131;
      v121 = v380;
      sub_1BAB4A600(v133, type metadata accessor for ReplicatorDevice);
    }

    while ((v132 & 1) == 0);
    v127 = v371;
    (*v378)(v375, v371);
    v124 = v128;
    v82 = v359;
    v122 = v357;
    v126 = v377;
  }

  while (v128 != v123);

  v120 = v353;
LABEL_47:
  v375 = v120[2];
  if (!v375)
  {
    v313 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v314 = v366[7];
    v315 = v366[16];
    __swift_project_boxed_opaque_existential_1(v366 + 4, v314);
    *&v391[0] = v357;
    LOBYTE(v383) = v340;
    (*(v315 + 24))(v313, v391, &v383, v314, v315);
  }

  v135 = 0;
  v327 = (*(v341 + 80) + 32) & ~*(v341 + 80);
  v136 = v120 + v327;
  v376 = *(v341 + 72);
  v330 = (v342 + 32);
  v332 = (v342 + 8);
  v333 = (v342 + 48);
  v328 = 0x80000001BABF69A0;
  v380 = (v343 + 6);
  v374 = v343 + 4;
  v362 = (v343 + 2);
  v377 = (v343 + 1);
  v342 = *MEMORY[0x1E696A3A0];
  v329 = *MEMORY[0x1E696A378];
  v326[1] = *MEMORY[0x1E696A380];
  v343 = MEMORY[0x1E69E7CC0];
  *&v134 = 136446210;
  v367 = v134;
  *&v134 = 136446722;
  v331 = v134;
  *&v134 = 136446466;
  v341 = v134;
  v371 = v120 + v327;
  while (1)
  {
    v381 = v135;
    sub_1BAB4CC18(&v136[v376 * v135], v82, type metadata accessor for ReplicatorRecord);
    v139 = *(v82 + 32);
    v138 = *(v82 + 40);
    v140 = v366[7];
    v141 = v366[8];
    __swift_project_boxed_opaque_existential_1(v366 + 4, v140);
    (*(v141 + 8))(&v383, v140, v141);
    v391[0] = v383;
    v391[1] = v384;
    v391[2] = v385;
    v391[3] = v386;
    v391[4] = v387;
    v142 = v383;

    sub_1BAB21D34(v391);
    if (__PAIR128__(v138, v139) == v142)
    {
    }

    else
    {
      v143 = sub_1BABE7EDC();

      if ((v143 & 1) == 0)
      {
        v171 = v136;
        v172 = v352;
        sub_1BAB4CC18(v82, v352, type metadata accessor for ReplicatorRecord);
        v173 = sub_1BABE729C();
        v174 = sub_1BABE78EC();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          *&v389[0] = v176;
          *v175 = v367;
          *&v383 = 0;
          *(&v383 + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v177 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v172 + *(v177 + 32)), *(v172 + *(v177 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v172[2], v172[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v172[4], v172[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v179 = *(&v383 + 1);
          v178 = v383;
          sub_1BAB4A600(v172, type metadata accessor for ReplicatorRecord);
          v180 = sub_1BAAFA460(v178, v179, v389);
          v137 = v381;
          v82 = v359;
          v136 = v371;

          *(v175 + 4) = v180;
          _os_log_impl(&dword_1BAACF000, v173, v174, "Client ID mismatch: %{public}s", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v176);
          MEMORY[0x1BFAFE460](v176, -1, -1);
          MEMORY[0x1BFAFE460](v175, -1, -1);

          if (v363)
          {
            goto LABEL_153;
          }
        }

        else
        {

          sub_1BAB4A600(v172, type metadata accessor for ReplicatorRecord);
          v136 = v171;
          v137 = v381;
          if (v363)
          {
LABEL_153:

            sub_1BAB15A08();
            swift_allocError();
            *v316 = 0;
            *(v316 + 8) = 0;

            swift_willThrow();
LABEL_154:
            v317 = v82;
            return sub_1BAB4A600(v317, type metadata accessor for ReplicatorRecord);
          }
        }

        goto LABEL_52;
      }
    }

    v144 = v366[7];
    v145 = v366[8];
    __swift_project_boxed_opaque_existential_1(v366 + 4, v144);
    (*(v145 + 8))(v389, v144, v145);
    v386 = v389[3];
    v387 = v390;
    v384 = v389[1];
    v385 = v389[2];
    v383 = v389[0];
    v146 = v390;

    sub_1BAB21D34(&v383);
    if (!*(v146 + 16))
    {

LABEL_62:
      v163 = v136;
      v164 = v356;
      sub_1BAB4CC18(v82, v356, type metadata accessor for ReplicatorRecord);
      v152 = sub_1BABE729C();
      v165 = sub_1BABE78EC();
      if (os_log_type_enabled(v152, v165))
      {
        v154 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v388 = v166;
        *v154 = v367;
        *&v389[0] = 0;
        *(&v389[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v167 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v164 + *(v167 + 32)), *(v164 + *(v167 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v164[2], v164[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v164[4], v164[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v169 = *(&v389[0] + 1);
        v168 = *&v389[0];
        sub_1BAB4A600(v164, type metadata accessor for ReplicatorRecord);
        v170 = sub_1BAAFA460(v168, v169, &v388);
        v137 = v381;
        v82 = v359;
        v136 = v371;

        *(v154 + 4) = v170;
        _os_log_impl(&dword_1BAACF000, v152, v165, "Zone does not exist: %{public}s", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v166);
        v162 = v166;
        goto LABEL_64;
      }

      sub_1BAB4A600(v164, type metadata accessor for ReplicatorRecord);
      v136 = v163;
LABEL_50:
      v137 = v381;
      goto LABEL_51;
    }

    sub_1BABD5AB4(*(v82 + 16), *(v82 + 24));
    v148 = v147;

    v149 = v370;
    if ((v148 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (ReplicatorRecord.size.getter() > 102400)
    {
      v150 = v346;
      sub_1BAB4CC18(v82, v346, type metadata accessor for ReplicatorRecord);
      v151 = v350;
      sub_1BAB4CC18(v82, v350, type metadata accessor for ReplicatorRecord);
      v152 = sub_1BABE729C();
      v153 = sub_1BABE78EC();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        v388 = v382;
        *v154 = v331;
        *&v389[0] = 0;
        *(&v389[0] + 1) = 0xE000000000000000;
        LODWORD(v379) = v153;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v155 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v150 + *(v155 + 32)), *(v150 + *(v155 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v150[2], v150[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v150[4], v150[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v157 = *(&v389[0] + 1);
        v156 = *&v389[0];
        sub_1BAB4A600(v150, type metadata accessor for ReplicatorRecord);
        v158 = sub_1BAAFA460(v156, v157, &v388);
        v137 = v381;

        *(v154 + 4) = v158;
        *(v154 + 12) = 2048;
        *(v154 + 14) = 102400;
        *(v154 + 22) = 2048;
        v159 = v350;
        v160 = ReplicatorRecord.size.getter();
        sub_1BAB4A600(v159, type metadata accessor for ReplicatorRecord);
        *(v154 + 24) = v160;
        _os_log_impl(&dword_1BAACF000, v152, v379, "Record exceeds maximum size: %{public}s (max %llu; requested %ld)", v154, 0x20u);
        v161 = v382;
        __swift_destroy_boxed_opaque_existential_1(v382);
        v162 = v161;
LABEL_64:
        MEMORY[0x1BFAFE460](v162, -1, -1);
        MEMORY[0x1BFAFE460](v154, -1, -1);

        goto LABEL_51;
      }

      sub_1BAB4A600(v151, type metadata accessor for ReplicatorRecord);

      sub_1BAB4A600(v150, type metadata accessor for ReplicatorRecord);
      goto LABEL_50;
    }

    v181 = v347;
    sub_1BAAD2DAC(v82 + *(v351 + 28), v347, &qword_1EBC132A0);
    v182 = v349;
    if ((*v333)(v181, 1, v349) == 1)
    {
      sub_1BAAD2E14(v181, &qword_1EBC132A0);
    }

    else
    {
      v183 = v344;
      (*v330)(v344, v181, v182);
      v184 = v339;
      sub_1BABE6C6C();
      v185 = sub_1BABE6C3C();
      v186 = v184;
      v187 = *v332;
      (*v332)(v186, v182);
      if (v185)
      {
        v382 = v187;
        v82 = v359;
        v188 = v336;
        sub_1BAB4CC18(v359, v336, type metadata accessor for ReplicatorRecord);
        v189 = sub_1BABE729C();
        v190 = sub_1BABE78EC();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v388 = v192;
          *v191 = v367;
          *&v389[0] = 0;
          *(&v389[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v193 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v188 + *(v193 + 32)), *(v188 + *(v193 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v188[2], v188[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v188[4], v188[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v194 = v389[0];
          sub_1BAB4A600(v188, type metadata accessor for ReplicatorRecord);
          v195 = sub_1BAAFA460(v194, *(&v194 + 1), &v388);

          *(v191 + 4) = v195;
          _os_log_impl(&dword_1BAACF000, v189, v190, "Record has already expired: %{public}s", v191, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v192);
          MEMORY[0x1BFAFE460](v192, -1, -1);
          MEMORY[0x1BFAFE460](v191, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v188, type metadata accessor for ReplicatorRecord);
        }

        v137 = v381;
        v136 = v371;
        if (v363)
        {
          v322 = v344;
          v323 = v349;

          sub_1BAB15A08();
          swift_allocError();
          *v324 = 0;
          *(v324 + 8) = 0;

          swift_willThrow();
          (v382)(v322, v323);
          goto LABEL_154;
        }

        (v382)(v344, v349);
        goto LABEL_52;
      }

      (v187)(v183, v182);
    }

    v82 = v359;
    v196 = &unk_1EBC12B50;
    if (sub_1BABE75AC() < 1025 || v139 == 0xD000000000000011 && v328 == v138)
    {
      break;
    }

    if (sub_1BABE7EDC())
    {
      break;
    }

    v284 = v334;
    sub_1BAB4CC18(v82, v334, type metadata accessor for ReplicatorRecord);
    v285 = v335;
    sub_1BAB4CC18(v82, v335, type metadata accessor for ReplicatorRecord);
    v286 = sub_1BABE729C();
    v287 = sub_1BABE78EC();
    if (!os_log_type_enabled(v286, v287))
    {
      sub_1BAB4A600(v285, type metadata accessor for ReplicatorRecord);

      sub_1BAB4A600(v284, type metadata accessor for ReplicatorRecord);
      v136 = v371;
      goto LABEL_50;
    }

    v288 = v284;
    v289 = swift_slowAlloc();
    v382 = swift_slowAlloc();
    v388 = v382;
    *v289 = v331;
    *&v389[0] = 0;
    *(&v389[0] + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    v290 = type metadata accessor for ReplicatorRecord.ID(0);
    MEMORY[0x1BFAFD240](*(v288 + *(v290 + 32)), *(v288 + *(v290 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v288[2], v288[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v288[4], v288[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v292 = *(&v389[0] + 1);
    v291 = *&v389[0];
    sub_1BAB4A600(v288, type metadata accessor for ReplicatorRecord);
    v293 = sub_1BAAFA460(v291, v292, &v388);
    v137 = v381;

    *(v289 + 4) = v293;
    *(v289 + 12) = 2048;
    *(v289 + 14) = 1024;
    *(v289 + 22) = 2048;
    v294 = v335;
    v295 = sub_1BABE75AC();
    sub_1BAB4A600(v294, type metadata accessor for ReplicatorRecord);
    *(v289 + 24) = v295;
    _os_log_impl(&dword_1BAACF000, v286, v287, "Record ID is too long: %{public}s (max %llu; requested %ld)", v289, 0x20u);
    v296 = v382;
    __swift_destroy_boxed_opaque_existential_1(v382);
    MEMORY[0x1BFAFE460](v296, -1, -1);
    MEMORY[0x1BFAFE460](v289, -1, -1);

    v136 = v371;
LABEL_51:
    if (v363)
    {
      goto LABEL_153;
    }

LABEL_52:
    v135 = v137 + 1;
    sub_1BAB4A600(v82, type metadata accessor for ReplicatorRecord);
    if (v135 == v375)
    {
      v313 = v343;
      goto LABEL_152;
    }
  }

  v197 = *(v82 + *(v351 + 24));
  v198 = v197 + 64;
  v199 = 1 << *(v197 + 32);
  if (v199 < 64)
  {
    v200 = ~(-1 << v199);
  }

  else
  {
    v200 = -1;
  }

  v201 = v200 & *(v197 + 64);
  v372 = ((v199 + 63) >> 6);
  v378 = v197;

  v202 = 0;
  v379 = v198;
  while (v201)
  {
    v203 = v202;
LABEL_96:
    v206 = __clz(__rbit64(v201));
    v207 = ((v201 - 1) & v201);
    v208 = v206 | (v203 << 6);
    v209 = *(*(v378 + 48) + 8 * v208);
    v210 = v360;
    sub_1BAB4CC18(*(v378 + 56) + *(v361 + 72) * v208, v360, type metadata accessor for ReplicatorRecord.Value);
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(v196);
    v212 = *(v211 + 48);
    v213 = v373;
    *v373 = v209;
    v214 = v213;
    sub_1BAB4CBB0(v210, v213 + v212, type metadata accessor for ReplicatorRecord.Value);
    (*(*(v211 - 8) + 56))(v214, 0, 1, v211);
    v149 = v370;
LABEL_97:
    sub_1BAB23414(v373, v149, &qword_1EBC12E08);
    v215 = v196;
    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(v196);
    if ((*(*(v216 - 8) + 48))(v149, 1, v216) == 1)
    {

      v82 = v359;
      sub_1BAB4CC18(v359, v345, type metadata accessor for ReplicatorRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v343 = sub_1BAAF9DD0(0, v343[2] + 1, 1, v343);
      }

      v137 = v381;
      v136 = v371;
      v282 = v343[2];
      v281 = v343[3];
      if (v282 >= v281 >> 1)
      {
        v343 = sub_1BAAF9DD0(v281 > 1, v282 + 1, 1, v343);
      }

      v283 = v343;
      v343[2] = v282 + 1;
      sub_1BAB4CBB0(v345, v283 + v327 + v282 * v376, type metadata accessor for ReplicatorRecord);
      goto LABEL_52;
    }

    v382 = v207;
    v217 = v149 + *(v216 + 48);
    v218 = v365;
    v82 = &unk_1EBC13D70;
    sub_1BAAD2DAC(v217 + *(v364 + 20), v365, &unk_1EBC13D70);
    v219 = v217;
    v220 = v369;
    sub_1BAB4A600(v219, type metadata accessor for ReplicatorRecord.Value);
    if ((*v380)(v218, 1, v220) == 1)
    {
      sub_1BAAD2E14(v218, &unk_1EBC13D70);
      v198 = v379;
      v201 = v382;
      v196 = v215;
      continue;
    }

    v82 = v358;
    (*v374)(v358, v218, v220);
    v221 = objc_opt_self();
    v222 = [v221 defaultManager];
    sub_1BABE6B5C();
    v223 = sub_1BABE74EC();

    v224 = [v222 fileExistsAtPath_];

    if (v224)
    {
      v225 = [v221 defaultManager];
      sub_1BABE6B5C();
      v226 = sub_1BABE74EC();

      *&v389[0] = 0;
      v227 = [v225 attributesOfItemAtPath:v226 error:v389];

      v228 = *&v389[0];
      v201 = v382;
      if (!v227)
      {
        v319 = *&v389[0];

        sub_1BABE6ADC();

        swift_willThrow();

        (*v377)(v358, v369);
        goto LABEL_157;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_1BAB4CC80(&qword_1EBC12428, type metadata accessor for FileAttributeKey);
      v229 = sub_1BABE744C();
      v230 = v228;

      if (!*(v229 + 16) || (v231 = sub_1BABD5DC8(v342), (v232 & 1) == 0))
      {

        (*v377)(v358, v369);
LABEL_111:
        v149 = v370;
        v196 = &unk_1EBC12B50;
        v198 = v379;
        continue;
      }

      sub_1BAAFBEE8(*(v229 + 56) + 32 * v231, v389);

      type metadata accessor for FileProtectionType(0);
      v233 = swift_dynamicCast();
      v149 = v370;
      v196 = &unk_1EBC12B50;
      if ((v233 & 1) == 0)
      {
        (*v377)(v358, v369);
        v198 = v379;
        continue;
      }

      v234 = v388;
      v235 = sub_1BABE751C();
      v237 = v236;
      v238 = sub_1BABE751C();
      v353 = v234;
      if (v235 == v238 && v237 == v239)
      {

        goto LABEL_117;
      }

      v258 = sub_1BABE7EDC();

      if (v258)
      {
LABEL_117:
        v259 = v337;
        sub_1BAB4CC18(v359, v337, type metadata accessor for ReplicatorRecord);
        v260 = sub_1BABE729C();
        v261 = sub_1BABE78EC();
        if (os_log_type_enabled(v260, v261))
        {
          v262 = swift_slowAlloc();
          v348 = swift_slowAlloc();
          v388 = v348;
          *v262 = v367;
          *&v389[0] = 0;
          *(&v389[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v263 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v259 + *(v263 + 32)), *(v259 + *(v263 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v259[2], v259[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v259[4], v259[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v264 = v389[0];
          sub_1BAB4A600(v259, type metadata accessor for ReplicatorRecord);
          v265 = sub_1BAAFA460(v264, *(&v264 + 1), &v388);

          *(v262 + 4) = v265;
          _os_log_impl(&dword_1BAACF000, v260, v261, "Files with class A protection should not be replicated: %{public}s", v262, 0xCu);
          v266 = v348;
          __swift_destroy_boxed_opaque_existential_1(v348);
          MEMORY[0x1BFAFE460](v266, -1, -1);
          MEMORY[0x1BFAFE460](v262, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v259, type metadata accessor for ReplicatorRecord);
        }

        v79 = v369;
        v149 = v370;
        v196 = &unk_1EBC12B50;
        v198 = v379;
        v82 = v353;
        if (v363)
        {
          goto LABEL_162;
        }

        (*v377)(v358, v369);
      }

      else
      {
        v267 = sub_1BABE751C();
        v269 = v268;
        if (v267 == sub_1BABE751C() && v269 == v270)
        {

          v271 = v338;
        }

        else
        {
          v272 = sub_1BABE7EDC();

          v271 = v338;
          if ((v272 & 1) == 0)
          {
            (*v377)(v358, v369);

            goto LABEL_111;
          }
        }

        sub_1BAB4CC18(v359, v271, type metadata accessor for ReplicatorRecord);
        v273 = sub_1BABE729C();
        v274 = sub_1BABE78EC();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          v348 = swift_slowAlloc();
          v388 = v348;
          *v275 = v367;
          *&v389[0] = 0;
          *(&v389[0] + 1) = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          v276 = type metadata accessor for ReplicatorRecord.ID(0);
          MEMORY[0x1BFAFD240](*(v338 + *(v276 + 32)), *(v338 + *(v276 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v338[2], v338[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v338[4], v338[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          v277 = v338;
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v278 = v389[0];
          sub_1BAB4A600(v277, type metadata accessor for ReplicatorRecord);
          v279 = sub_1BAAFA460(v278, *(&v278 + 1), &v388);

          *(v275 + 4) = v279;
          _os_log_impl(&dword_1BAACF000, v273, v274, "Files with class B protection should not be replicated: %{public}s", v275, 0xCu);
          v280 = v348;
          __swift_destroy_boxed_opaque_existential_1(v348);
          MEMORY[0x1BFAFE460](v280, -1, -1);
          MEMORY[0x1BFAFE460](v275, -1, -1);
        }

        else
        {

          sub_1BAB4A600(v271, type metadata accessor for ReplicatorRecord);
        }

        v82 = v369;
        v149 = v370;
        v196 = &unk_1EBC12B50;
        v198 = v379;
        if (v363)
        {

          sub_1BAB15A08();
          swift_allocError();
          *v325 = 0;
          *(v325 + 8) = 0;

          swift_willThrow();

          (*v377)(v358, v82);
          goto LABEL_157;
        }

        (*v377)(v358, v369);
      }
    }

    else
    {
      v240 = v355;
      (*v362)(v355, v82, v220);
      v241 = v354;
      sub_1BAB4CC18(v359, v354, type metadata accessor for ReplicatorRecord);
      v242 = sub_1BABE729C();
      v243 = sub_1BABE78EC();
      v244 = os_log_type_enabled(v242, v243);
      v201 = v382;
      if (v244)
      {
        v245 = swift_slowAlloc();
        v353 = swift_slowAlloc();
        v388 = v353;
        *v245 = v341;
        sub_1BAB4CC80(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
        LODWORD(v348) = v243;
        v246 = sub_1BABE7EAC();
        v248 = v247;
        v249 = v240;
        v250 = *v377;
        (*v377)(v249, v369);
        v251 = sub_1BAAFA460(v246, v248, &v388);

        *(v245 + 4) = v251;
        *(v245 + 12) = 2082;
        *&v389[0] = 0;
        *(&v389[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v252 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v241 + *(v252 + 32)), *(v241 + *(v252 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v241[2], v241[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v241[4], v241[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v253 = v389[0];
        sub_1BAB4A600(v241, type metadata accessor for ReplicatorRecord);
        v254 = sub_1BAAFA460(v253, *(&v253 + 1), &v388);

        *(v245 + 14) = v254;
        _os_log_impl(&dword_1BAACF000, v242, v348, "File at path %{public}s does not exist: %{public}s", v245, 0x16u);
        v255 = v353;
        swift_arrayDestroy();
        MEMORY[0x1BFAFE460](v255, -1, -1);
        v82 = v369;
        MEMORY[0x1BFAFE460](v245, -1, -1);
      }

      else
      {

        sub_1BAB4A600(v241, type metadata accessor for ReplicatorRecord);
        v257 = v240;
        v250 = *v377;
        v82 = v220;
        (*v377)(v257, v220);
      }

      v196 = &unk_1EBC12B50;
      v198 = v379;
      v149 = v370;
      if (v363)
      {

        sub_1BAB15A08();
        swift_allocError();
        *v318 = 0;
        *(v318 + 8) = 0;

        swift_willThrow();

        v250(v358, v82);
        goto LABEL_157;
      }

      v250(v358, v82);
    }
  }

  if (v372 <= v202 + 1)
  {
    v204 = (v202 + 1);
  }

  else
  {
    v204 = v372;
  }

  v205 = v204 - 1;
  while (1)
  {
    v203 = v202 + 1;
    if (__OFADD__(v202, 1))
    {
      break;
    }

    if (v203 >= v372)
    {
      v256 = __swift_instantiateConcreteTypeFromMangledNameV2(v196);
      (*(*(v256 - 8) + 56))(v373, 1, 1, v256);
      v207 = 0;
      v202 = v205;
      goto LABEL_97;
    }

    v201 = *(v198 + 8 * v203);
    ++v202;
    if (v201)
    {
      v202 = v203;
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v320 = v79;

  sub_1BAB15A08();
  swift_allocError();
  *v321 = 0;
  *(v321 + 8) = 0;

  swift_willThrow();

  (*v377)(v358, v320);
LABEL_157:
  v317 = v359;
  return sub_1BAB4A600(v317, type metadata accessor for ReplicatorRecord);
}