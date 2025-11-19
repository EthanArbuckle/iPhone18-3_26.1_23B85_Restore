id CredentialInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CredentialInternal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v37 - v6;
  v7 = sub_1C7C7D104();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263488, &qword_1C7C89EB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7BF93FC();
  sub_1C7C7DBA4();
  v48 = 0;
  sub_1C7BF9EE4(&qword_1EC264680, MEMORY[0x1E69695A8]);
  v17 = v41;
  sub_1C7C7DA44();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v38 = v10;
  v41 = v12;
  v19 = *(v2 + OBJC_IVAR____TtC9SEService18CredentialInternal_friendlyName);
  v20 = *(v2 + OBJC_IVAR____TtC9SEService18CredentialInternal_friendlyName + 8);
  v48 = 1;
  sub_1C7C7DA14();
  v21 = OBJC_IVAR____TtC9SEService18CredentialInternal_ownerApplications;
  swift_beginAccess();
  v22 = v2;
  v47 = *(v2 + v21);
  LOBYTE(v46) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2634A0, &qword_1C7C89EB8);
  sub_1C7BF9DA0(&qword_1EC2634A8, &qword_1EC2634B0);
  v37 = v11;
  sub_1C7C7DA44();
  v23 = OBJC_IVAR____TtC9SEService18CredentialInternal_userApplications;
  swift_beginAccess();
  v46 = *(v2 + v23);
  LOBYTE(v44) = 3;
  sub_1C7C7DA44();
  v24 = v2;
  v25 = v2 + OBJC_IVAR____TtC9SEService18CredentialInternal_state;
  swift_beginAccess();
  v26 = *(v25 + 8);
  v44 = *v25;
  v45 = v26;
  v43 = 4;
  sub_1C7BF622C(v44, v26);
  sub_1C7BF9450();
  sub_1C7C7DA44();
  sub_1C7BF62A8(v44, v45);
  v27 = OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID;
  swift_beginAccess();
  v28 = v40;
  v29 = v22 + v27;
  v30 = v38;
  (*(v40 + 16))(v38, v29, v7);
  v43 = 5;
  sub_1C7C7DA44();
  v31 = v41;
  (*(v28 + 8))(v30, v7);
  v32 = OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel;
  swift_beginAccess();
  v42 = *(v24 + v32);
  v49 = 6;
  sub_1C7BF94A4();
  sub_1C7C7DA44();
  v33 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  swift_beginAccess();
  v34 = v24 + v33;
  v35 = v39;
  sub_1C7BF69EC(v34, v39);
  v49 = 7;
  sub_1C7C7D084();
  sub_1C7BF9EE4(&qword_1EC2634C8, MEMORY[0x1E6969530]);
  v36 = v37;
  sub_1C7C7DA04();
  sub_1C7BF7188(v35);
  return (*(v31 + 8))(v15, v36);
}

unint64_t sub_1C7BF93FC()
{
  result = qword_1EC263490;
  if (!qword_1EC263490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263490);
  }

  return result;
}

unint64_t sub_1C7BF9450()
{
  result = qword_1EC2634B8;
  if (!qword_1EC2634B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2634B8);
  }

  return result;
}

unint64_t sub_1C7BF94A4()
{
  result = qword_1EC2634C0;
  if (!qword_1EC2634C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2634C0);
  }

  return result;
}

char *CredentialInternal.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v41 - v6;
  v8 = sub_1C7C7D104();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v41 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2634D0, &qword_1C7C89EC0);
  v45 = *(v47 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v16 = v41 - v15;
  v17 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  v18 = sub_1C7C7D084();
  v19 = *(*(v18 - 8) + 56);
  v50 = v2;
  v51 = v17;
  v19(v2 + v17, 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7BF93FC();
  v48 = v16;
  v21 = v49;
  sub_1C7C7DB94();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v24 = v50;
    sub_1C7BF7188(v50 + v51);
    v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x30);
    v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v7;
    v43 = v12;
    v41[3] = v18;
    v22 = v45;
    v49 = a1;
    LOBYTE(v54) = 0;
    v23 = sub_1C7BF9EE4(&qword_1EC262F00, MEMORY[0x1E69695A8]);
    sub_1C7C7D9B4();
    v28 = *(v44 + 32);
    v29 = v50;
    v30 = v46;
    v46 = v8;
    v28(v50 + OBJC_IVAR____TtC9SEService18CredentialInternal_identifier, v30, v8);
    LOBYTE(v54) = 1;
    v31 = sub_1C7C7D984();
    v41[1] = v23;
    v32 = &v29[OBJC_IVAR____TtC9SEService18CredentialInternal_friendlyName];
    *v32 = v31;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2634A0, &qword_1C7C89EB8);
    v56 = 2;
    sub_1C7BF9DA0(&qword_1EC2634E0, &qword_1EC2634E8);
    v41[2] = 0;
    sub_1C7C7D9B4();
    *&v29[OBJC_IVAR____TtC9SEService18CredentialInternal_ownerApplications] = v54;
    v56 = 3;
    sub_1C7C7D9B4();
    *&v29[OBJC_IVAR____TtC9SEService18CredentialInternal_userApplications] = v54;
    v56 = 4;
    sub_1C7BF9E3C();
    sub_1C7C7D9B4();
    v34 = v55;
    v35 = &v29[OBJC_IVAR____TtC9SEService18CredentialInternal_state];
    *v35 = v54;
    v35[8] = v34;
    LOBYTE(v54) = 5;
    v36 = v43;
    v37 = v46;
    sub_1C7C7D9B4();
    v28(&v29[OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID], v36, v37);
    v56 = 6;
    sub_1C7BF9E90();
    sub_1C7C7D9B4();
    *&v29[OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel] = v54;
    LOBYTE(v54) = 7;
    sub_1C7BF9EE4(&qword_1EC263500, MEMORY[0x1E6969530]);
    v38 = v42;
    sub_1C7C7D974();
    v39 = v49;
    v40 = v51;
    swift_beginAccess();
    sub_1C7BF6BFC(v38, &v29[v40]);
    swift_endAccess();
    v53.receiver = v29;
    v53.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v53, sel_init);
    (*(v22 + 8))(v48, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  return v12;
}

uint64_t sub_1C7BF9DA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2634A0, &qword_1C7C89EB8);
    sub_1C7BF9EE4(a2, type metadata accessor for ApplicationInfoInternal);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7BF9E3C()
{
  result = qword_1EC2634F0;
  if (!qword_1EC2634F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2634F0);
  }

  return result;
}

unint64_t sub_1C7BF9E90()
{
  result = qword_1EC2634F8;
  if (!qword_1EC2634F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2634F8);
  }

  return result;
}

uint64_t sub_1C7BF9EE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C7BF9F30()
{
  result = qword_1EC263508;
  if (!qword_1EC263508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263508);
  }

  return result;
}

char *sub_1C7BF9F84@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = CredentialInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7BF9FFC()
{
  result = qword_1EC263510;
  if (!qword_1EC263510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263510);
  }

  return result;
}

uint64_t sub_1C7BFA050()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BFA098()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t *sub_1C7BFA0DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t type metadata accessor for CredentialInternal()
{
  result = qword_1EDCF5700;
  if (!qword_1EDCF5700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C7BFA1FC()
{
  v0 = sub_1C7C7D104();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C7BFA368();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C7BFA368()
{
  if (!qword_1EDCF5B10)
  {
    sub_1C7C7D084();
    v0 = sub_1C7C7D634();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCF5B10);
    }
  }
}

uint64_t getEnumTagSinglePayload for CredentialInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialInternal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7BFA534()
{
  result = qword_1EC263518;
  if (!qword_1EC263518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263518);
  }

  return result;
}

unint64_t sub_1C7BFA58C()
{
  result = qword_1EC263520;
  if (!qword_1EC263520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263520);
  }

  return result;
}

unint64_t sub_1C7BFA5E4()
{
  result = qword_1EC263528;
  if (!qword_1EC263528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263528);
  }

  return result;
}

uint64_t sub_1C7BFA638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9D380 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9D3A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55556769666E6F63 && a2 == 0xEA00000000004449 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654C737365636361 && a2 == 0xEB000000006C6576 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C7BFA8F4()
{
  result = qword_1EC263530;
  if (!qword_1EC263530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263530);
  }

  return result;
}

unint64_t sub_1C7BFA96C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7BFAA50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C7BFAA50(unint64_t result)
{
  if ((result > 0x27 || ((1 << result) & 0x808080808ALL) == 0) && (result - 129 > 0xE || ((1 << (result + 127)) & 0x4043) == 0))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7BFAAAC()
{
  result = qword_1EC263540;
  if (!qword_1EC263540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263540);
  }

  return result;
}

unint64_t sub_1C7BFAB10()
{
  result = qword_1EC263548;
  if (!qword_1EC263548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263548);
  }

  return result;
}

uint64_t sub_1C7BFAB64()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_1C7BED6A8(0, &qword_1EC263550, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263558, &unk_1C7C90D70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7C8A350;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263560, &qword_1C7C8A360);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263568, &qword_1C7C8A368);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263570, &qword_1C7C8A370);
  *(v0 + 96) = v3;
  v4 = sub_1C7BED6A8(0, &qword_1EC263578, 0x1E695DEC8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263580, &qword_1C7C8A378);
  *(v0 + 128) = v4;
  v5 = sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263588, &qword_1C7C8A380);
  *(v0 + 160) = v5;
  v6 = sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263590, &qword_1C7C8A388);
  *(v0 + 192) = v6;
  v7 = sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263598, &qword_1C7C8A390);
  *(v0 + 224) = v7;
  MEMORY[0x1CCA6B5E0](v0);
  result = sub_1C7C7D4F4();
  __break(1u);
  return result;
}

uint64_t sub_1C7BFADFC()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288310);
  __swift_project_value_buffer(v0, qword_1EC288310);
  return sub_1C7C7D1A4();
}

unint64_t sub_1C7BFAE78(void *a1, unint64_t *a2)
{
  v4 = v2;
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v24 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *a1;
      result = sub_1C7C67D18(1, 26, 0, 3, isUniquelyReferenced_nonNull_native);
      *a1 = v57;
      return result;
    }

    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v35 = v7 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    swift_beginAccess();
    v12 = *v35;
    v11 = *(v35 + 8);
    v10 = *(v35 + 16);
    swift_beginAccess();
    v55 = *(*(v18 + 24) + 16);
    sub_1C7BDF708(v12, v11, v10);
    v36 = *a1;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *a1;
    v58 = *a1;
    v7 = sub_1C7C70278(v12, v11, v10);
    v39 = v37[2];
    v40 = (v38 & 1) == 0;
    v41 = v39 + v40;
    if (!__OFADD__(v39, v40))
    {
      v18 = v38;
      if (v37[3] >= v41)
      {
        if (v3)
        {
          goto LABEL_28;
        }

        goto LABEL_50;
      }

      sub_1C7C704D4(v41, v3);
      v37 = v58;
      v42 = sub_1C7C70278(v12, v11, v10);
      if ((v18 & 1) == (v43 & 1))
      {
        v7 = v42;
        goto LABEL_28;
      }

      goto LABEL_51;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v8)
  {
    v11 = *(v7 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
    v10 = *(v7 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);

    v27 = *a1;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a1;
    v56 = *a1;
    v12 = sub_1C7C70278(v11, v10, 2);
    v30 = v28[2];
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (!__OFADD__(v30, v31))
    {
      v7 = v29;
      if (v28[3] >= v32)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_45;
        }

        *a1 = v28;
        if ((v29 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_26;
      }

      sub_1C7C704D4(v32, v18);
      v28 = v56;
      v33 = sub_1C7C70278(v11, v10, 2);
      if ((v7 & 1) == (v34 & 1))
      {
        v12 = v33;
        *a1 = v56;
        if ((v7 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_26;
      }

      goto LABEL_51;
    }

    goto LABEL_37;
  }

  v55 = v2;
  v9 = v7 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  v14 = *(v7 + v13);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v48 = *(v7 + v13);
    }

    v4 = sub_1C7C7D6D4();
  }

  else
  {
    v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1C7BDF708(v10, v11, v12);
  v15 = *a1;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a1;
  v58 = *a1;
  v18 = sub_1C7C70278(v10, v11, v12);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v17;
  if (v16[3] < v21)
  {
    sub_1C7C704D4(v21, v7);
    v16 = v58;
    v22 = sub_1C7C70278(v10, v11, v12);
    if ((v3 & 1) == (v23 & 1))
    {
      v18 = v22;
      *a1 = v58;
      if (v3)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }

LABEL_51:
    result = sub_1C7C7DAF4();
    __break(1u);
    return result;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_40;
  }

  *a1 = v16;
  if (v17)
  {
    goto LABEL_23;
  }

LABEL_41:
  for (result = sub_1C7C4F658(v18, v10, v11, v12, 0, v16); ; result = sub_1C7BEA9D8(v10, v11, v12))
  {
    v49 = v16[7];
    v50 = *(v49 + 8 * v18);
    v46 = __OFADD__(v50, v4);
    v51 = v50 + v4;
    if (!v46)
    {
      *(v49 + 8 * v18) = v51;
      return result;
    }

    __break(1u);
LABEL_45:
    sub_1C7C71E84();
    v28 = v56;
    *a1 = v56;
    if (v7)
    {
LABEL_26:
    }

    else
    {
LABEL_46:
      result = sub_1C7C4F658(v12, v11, v10, 2, 0, v28);
    }

    v52 = v28[7];
    v53 = *(v52 + 8 * v12);
    v46 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (!v46)
    {
      break;
    }

    __break(1u);
LABEL_50:
    sub_1C7C71E84();
    v37 = v58;
LABEL_28:
    v3 = v55;
    *a1 = v37;
    if (v18)
    {
      result = sub_1C7BEA9D8(v12, v11, v10);
    }

    else
    {
      result = sub_1C7C4F658(v7, v12, v11, v10, 0, v37);
    }

    v44 = v37[7];
    v45 = *(v44 + 8 * v7);
    v46 = __OFADD__(v45, v55);
    v47 = v45 + v55;
    if (!v46)
    {
      *(v44 + 8 * v7) = v47;
      return result;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    sub_1C7C71E84();
    v16 = v58;
    *a1 = v58;
    if ((v3 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_23:
    ;
  }

  *(v52 + 8 * v12) = v54;
  return result;
}

uint64_t sub_1C7BFB318(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1C7BFC218(v10, v8, v6, a2, a3 & 1);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1C7BFC3C4(v13, v8, v6, a2, a3 & 1);
  result = MEMORY[0x1CCA6C990](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C7BFB498(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1C7BFC33C(v13, v7, v5, a3);
  result = MEMORY[0x1CCA6C990](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C7BFB608(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C7BFC454(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C7C7DA64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C7C7D444();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C7BFB73C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C7BFB73C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C7BFBE7C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C7BFBC88((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C7BFBE90(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C7BFBE90((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C7BFBC88((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C7BFBC88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1C7BFBE90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635A8, &qword_1C7C8A3C8);
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

unint64_t *sub_1C7BFBF94(unint64_t *result, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  while (2)
  {
    a4.i32[0] = dword_1F474F7C8;
    a4 = (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL);
    do
    {
      while (1)
      {
        if (!v9)
        {
          v13 = v6;
          while (1)
          {
            v6 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v6 >= ((v7 + 63) >> 6))
            {
              return sub_1C7C4F3F8(result, a2, v5, a3);
            }

            v14 = *(a3 + 64 + 8 * v6);
            ++v13;
            if (v14)
            {
              v9 = (v14 - 1) & v14;
              v12 = __clz(__rbit64(v14)) | (v6 << 6);
              goto LABEL_14;
            }
          }

          __break(1u);
          return result;
        }

        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v12 = v11 | (v6 << 6);
LABEL_14:
        v15 = *(a3 + 48) + 24 * v12;
        v16 = *v15;
        if (*(v15 + 16) != 3)
        {
          break;
        }

        v10 = (v16 >= 0xB) + *(v15 + 8) - 1;
        if (v16 - 11 <= 3)
        {
          goto LABEL_17;
        }
      }
    }

    while (*(v15 + 16) || (vmaxv_u16(vceq_s16(a4, (*&vdup_n_s16(v16) & 0xFF00FF00FF00FFLL))) & 1) == 0);
LABEL_17:
    *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    if (!__OFADD__(v5++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1C7C4F3F8(result, a2, v5, a3);
}

unint64_t *sub_1C7BFC0D8(unint64_t *result, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  while (2)
  {
    a4.i32[0] = dword_1F474F750;
    a4 = (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL);
    do
    {
      while (1)
      {
        if (!v9)
        {
          v12 = v6;
          while (1)
          {
            v6 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v6 >= ((v7 + 63) >> 6))
            {
              return sub_1C7C4F3F8(result, a2, v5, a3);
            }

            v13 = *(a3 + 64 + 8 * v6);
            ++v12;
            if (v13)
            {
              v9 = (v13 - 1) & v13;
              v11 = __clz(__rbit64(v13)) | (v6 << 6);
              goto LABEL_14;
            }
          }

          __break(1u);
          return result;
        }

        v10 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v11 = v10 | (v6 << 6);
LABEL_14:
        v14 = *(a3 + 48) + 24 * v11;
        v15 = *v14;
        if (*(v14 + 16) != 3)
        {
          break;
        }

        if (__PAIR128__((v15 >= 0xB) + *(v14 + 8) - 1, v15 - 11) >= 4)
        {
          goto LABEL_17;
        }
      }
    }

    while (!*(v14 + 16) && (vmaxv_u16(vceq_s16(a4, (*&vdup_n_s16(v15) & 0xFF00FF00FF00FFLL))) & 1) != 0);
LABEL_17:
    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (!__OFADD__(v5++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1C7C4F3F8(result, a2, v5, a3);
}

unint64_t *sub_1C7BFC218(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  do
  {
    do
    {
      if (v10)
      {
        v11 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v12 = v11 | (v7 << 6);
        if (a5)
        {
          break;
        }
      }

      else
      {
        v13 = v7;
        do
        {
          v7 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            return result;
          }

          if (v7 >= ((v8 + 63) >> 6))
          {
            return sub_1C7C4F3F8(result, a2, v6, a3);
          }

          v14 = *(a3 + 64 + 8 * v7);
          ++v13;
        }

        while (!v14);
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        if (a5)
        {
          break;
        }
      }

      v15 = (a4 & 0xFFFFFFFFFFFFFFFDLL) == 0;
      v16 = *(*(a3 + 48) + 24 * v12 + 16);
      v17 = v16 == 1 || a4 != 1;
      if (v16 != 1)
      {
        v15 = 0;
      }
    }

    while (!v17 || v15);
    *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
  return sub_1C7C4F3F8(result, a2, v6, a3);
}

void *sub_1C7BFC33C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_1C7BFC3C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = sub_1C7BFC218(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

uint64_t sub_1C7BFC468(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v57 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v10;
  v44 = v6;
  while (1)
  {
    v16 = v9;
    v17 = v11;
    if (!v9)
    {
      break;
    }

LABEL_13:
    v19 = __clz(__rbit64(v16)) | (v17 << 6);
    v20 = *(a1 + 48) + 24 * v19;
    v21 = *(*(a1 + 56) + 8 * v19);
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v49 = *v20;
    v50 = v22;
    v51 = v23;
    v52 = v21;
    sub_1C7BDF708(v49, v22, v23);
    a2(&v53, &v49);
    sub_1C7BEA9D8(v49, v50, v51);
    v24 = v55;
    if (v55 == 255)
    {
LABEL_23:
      sub_1C7C0040C();
    }

    v25 = a4;
    v26 = v53;
    v27 = v54;
    v48 = v56;
    v28 = *v57;
    v30 = sub_1C7C70278(v53, v54, v55);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        sub_1C7C71E84();
      }
    }

    else
    {
      v35 = v57;
      sub_1C7C704D4(v33, v25 & 1);
      v36 = *v35;
      v37 = sub_1C7C70278(v26, v27, v24);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_28;
      }

      v30 = v37;
    }

    v47 = (v16 - 1) & v16;
    v39 = *v57;
    if (v34)
    {
      v40 = *(v39[7] + 8 * v30);
      sub_1C7BEA9D8(v26, v27, v24);
      if (__OFADD__(v40, v48))
      {
        goto LABEL_26;
      }

      *(v39[7] + 8 * v30) = v40 + v48;
    }

    else
    {
      v39[(v30 >> 6) + 8] |= 1 << v30;
      v12 = v39[6] + 24 * v30;
      *v12 = v26;
      *(v12 + 8) = v27;
      *(v12 + 16) = v24;
      *(v39[7] + 8 * v30) = v48;
      v13 = v39[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v39[2] = v15;
    }

    a4 = 1;
    v11 = v17;
    v10 = v43;
    v6 = v44;
    v9 = v47;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v10)
    {
      goto LABEL_23;
    }

    v16 = *(v6 + 8 * v17);
    ++v18;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1C7C7DAF4();
  __break(1u);
  return result;
}

uint64_t sub_1C7BFC72C(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a1;
  if (a1[1] >> 62 != 1)
  {
    goto LABEL_12;
  }

  if (*a3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v6 = *(a2 + v4);
  v7 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  result = swift_beginAccess();
  v9 = 0;
  v10 = 0;
  v11 = *(v6 + v7);
  v12 = *(v11 + 16);
  v13 = v11 + 40;
  while (2)
  {
    v14 = (v13 + 16 * v9);
    do
    {
      if (v12 == v9)
      {
        v21 = *(*(v6 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
        if (v21 >= v10)
        {
          return 0;
        }

        v18 = __OFSUB__(v10, v21);
        v22 = v10 - v21;
        if (!v18)
        {
          if (v22 >= *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize))
          {
            return *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
          }

          else
          {
            return v22;
          }
        }

LABEL_22:
        __break(1u);
        return result;
      }

      if (v9 >= v12)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v16 = *v14;
      v14 += 2;
      ++v9;
    }

    while (v16 >> 62 != 1);
    v17 = *(*(v14 - 3) + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
    v9 = v15;
    v18 = __OFADD__(v10, v17);
    v10 += v17;
    if (!v18)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_12:
  sub_1C7C7D794();

  v19 = SEStorageCredential.description.getter();
  MEMORY[0x1CCA6B380](v19);

  MEMORY[0x1CCA6B380](0x7669672073617720, 0xEA00000000006E65);
  sub_1C7BEADA0();
  swift_allocError();
  *v20 = 0xD00000000000004DLL;
  *(v20 + 8) = 0x80000001C7C9D4C0;
  *(v20 + 16) = 2;
  return swift_willThrow();
}

void sub_1C7BFC930(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_1C7C7D1B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v55 = *a3;
  if (qword_1EC262170 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EC288310);
  (*(v7 + 16))(v10, v14, v6);
  sub_1C7BDF708(v11, v12, v13);
  v15 = sub_1C7C7D194();
  v16 = sub_1C7C7D574();
  sub_1C7BEA9D8(v11, v12, v13);
  v53 = v16;
  v17 = os_log_type_enabled(v15, v16);
  v54 = v12;
  if (v17)
  {
    v50 = v15;
    v52 = a2;
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v56.i64[0] = v49;
    *v18 = 136315650;
    *(v18 + 4) = sub_1C7BE42F8(0xD000000000000031, 0x80000001C7C9D510, v56.i64);
    *(v18 + 12) = 2080;
    v58 = v11;
    v59 = v12;
    v60 = v13;
    v51 = v11;
    sub_1C7BDF708(v11, v12, v13);
    sub_1C7C7D324();
    v19 = v55;
    v20 = sub_1C7C7D334();
    v22 = v21;

    v23 = sub_1C7BE42F8(v20, v22, v56.i64);

    v24 = 0xE500000000000000;
    v25 = 0x7061654870;
    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v26 = 0xE300000000000000;
    v27 = 6582115;
    if (v19 != 2)
    {
      v27 = 0x69646E4964657375;
      v26 = 0xEB00000000736563;
    }

    if (v19)
    {
      v25 = 7499619;
      v24 = 0xE300000000000000;
    }

    if (v19 <= 1)
    {
      v28 = v25;
    }

    else
    {
      v28 = v27;
    }

    if (v19 <= 1)
    {
      v29 = v24;
    }

    else
    {
      v29 = v26;
    }

    v30 = sub_1C7BE42F8(v28, v29, v56.i64);

    *(v18 + 24) = v30;
    v31 = v50;
    _os_log_impl(&dword_1C7B9A000, v50, v53, "%s %s %s ", v18, 0x20u);
    v32 = v49;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v32, -1, -1);
    MEMORY[0x1CCA6C990](v18, -1, -1);

    (*(v7 + 8))(v10, v6);
    v11 = v51;
    a2 = v52;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v33 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v34 = *(a2 + v33);
  v35 = v54;
  v56.i64[0] = v11;
  v56.i64[1] = v54;
  v57 = v13;
  v36 = v34;
  sub_1C7C6CB5C(&v56, &v61);

  v37 = v61;
  switch(v13)
  {
    case 0:
      if (!sub_1C7BDF6D8(v11, &unk_1F474F758))
      {
        break;
      }

      goto LABEL_26;
    case 2:
      if ((~(v61.i64[0] & v61.i64[1]) & 0xF000000000000007) == 0)
      {
        __break(1u);
        return;
      }

      v56 = v61;
      v61.i8[0] = v55;
      sub_1C7BFCFA8(v37.i64[0], v61.u64[1]);
      v38 = v62;
      sub_1C7BFC72C(v56.i64, a2, &v61);
      v39 = v38;
      sub_1C7BFCF38(v56.i64[0], v56.u64[1]);
LABEL_27:
      sub_1C7BFCF20(v37.i64[0], v37.u64[1]);
      v62 = v39;
      return;
    case 3:
      if (v11 == 26 && !v35)
      {
        if ((~(v61.i64[0] & v61.i64[1]) & 0xF000000000000007) == 0)
        {
          return;
        }

        if (v61.i64[1] >> 62 == 2)
        {
          if (v55 > 1)
          {
            if (v55 == 2)
            {
              v45 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
            }

            else
            {
              v45 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
            }
          }

          else if (v55)
          {
            v45 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
          }

          else
          {
            v45 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
          }

          v46 = (v61.i64[0] + *v45);
          swift_beginAccess();
          v47 = *v46;
        }

LABEL_30:
        sub_1C7BFCF20(v37.i64[0], v37.u64[1]);
        return;
      }

      if (__PAIR128__((v11 >= 0xB) + v35 - 1, v11 - 11) < 4)
      {
LABEL_26:
        v56.i64[0] = v11;
        v56.i64[1] = v35;
        v57 = v13;
        v61.i8[0] = v55;
        v40 = v62;
        sub_1C7BD5348(&v61, a2);
        v39 = v40;
        goto LABEL_27;
      }

      break;
  }

  v56.i64[0] = v11;
  v56.i64[1] = v35;
  v57 = v13;
  v61.i8[0] = v55;
  v41 = v62;
  v42 = sub_1C7BD4D04(v61.i8, a2);
  v62 = v41;
  if (v41)
  {
    goto LABEL_30;
  }

  v43 = v42;
  v56.i64[0] = v11;
  v56.i64[1] = v35;
  v57 = v13;
  v61.i8[0] = v55;
  v44 = sub_1C7BD5348(&v61, a2);
  sub_1C7BFCF20(v37.i64[0], v37.u64[1]);
  v62 = 0;
  if (__OFADD__(v43, v44))
  {
    __break(1u);
    goto LABEL_30;
  }
}

void sub_1C7BFCF20(void *a1, unint64_t a2)
{
  if ((~(a1 & a2) & 0xF000000000000007) != 0)
  {
    sub_1C7BFCF38(a1, a2);
  }
}

void sub_1C7BFCF38(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {

LABEL_5:

      return;
    }

LABEL_7:

    goto LABEL_5;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }
}

id sub_1C7BFCFA8(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {

      return a1;
    }

LABEL_7:

    return a1;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }

  v5 = a1;
}

uint64_t sub_1C7BFD018(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v141 = sub_1C7C7D1B4();
  v140 = *(v141 - 8);
  v8 = *(v140 + 64);
  v9 = MEMORY[0x1EEE9AC00](v141);
  v138 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v137 = &v133 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v133 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v144 = *a4;
  v18 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v19 = *(a2 + v18);
  v154.i64[0] = v15;
  v154.i64[1] = v16;
  v155 = v17;
  v20 = v19;
  sub_1C7C6CB5C(&v154, &v152);

  v21 = v152;
  if ((~(v152.i64[0] & v152.i64[1]) & 0xF000000000000007) == 0)
  {
    v142 = v152;
    v22 = type metadata accessor for SEPackageDetails();
    v23 = objc_allocWithZone(v22);
    v23[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
    *&v23[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
    *&v23[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
    v24 = &v23[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    *v24 = v15;
    *(v24 + 1) = v16;
    v24[16] = v17;
    sub_1C7BDF708(v15, v16, v17);
    v156.receiver = v23;
    v156.super_class = v22;
    v25 = objc_msgSendSuper2(&v156, sel_init);
    goto LABEL_10;
  }

  v26 = v152.i64[1] >> 62;
  if ((v152.i64[1] >> 62) > 1)
  {
    if (v26 != 3)
    {
      if (v144 > 1)
      {
        if (v144 == 2)
        {
          v54 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v54 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v144)
      {
        v54 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v54 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v62 = *v54;
      v63 = v152.i64[0];
      swift_beginAccess();
      v15 = *&v63[v62];
      sub_1C7BFCF20(v63, v21.u64[1]);
      return v15;
    }
  }

  else if (v26)
  {
    v154 = v152;
    v152.i8[0] = v144;
    sub_1C7BFCFA8(v21.i64[0], v152.u64[1]);
    v27 = v145;
    v28 = sub_1C7BFC72C(v154.i64, a2, &v152);
    if (!v27)
    {
      v15 = v28;
    }

    sub_1C7BFCF20(v21.i64[0], v21.u64[1]);
    sub_1C7BFCF38(v154.i64[0], v154.u64[1]);
    return v15;
  }

  v142 = v152;
  v25 = v152.i64[0];
LABEL_10:
  v29 = v25;
  v30 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  v31 = *&v29[v30];
  v143 = v29;
  if (!a3)
  {
    v37 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v38 = *&v29[v37];
    if (v38 >> 62)
    {
      goto LABEL_120;
    }

    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_121:
    v124 = v29;
    v125 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
    swift_beginAccess();
    if (v124[v125] == 1)
    {
      v149 = v15;
      v150 = v16;
      v151 = v17;
      v33 = v144;
      LOBYTE(v157) = v144;
      v126 = v145;
      v127 = sub_1C7BD4228(&v157, a2);
      v145 = v126;
      if (v126)
      {
        goto LABEL_126;
      }

      v128 = v127;
    }

    else
    {
      v128 = 0;
      v33 = v144;
    }

    v149 = v15;
    v150 = v16;
    v151 = v17;
    LOBYTE(v157) = v33;
    v129 = v145;
    v130 = sub_1C7BD47CC(&v157, a2);
    v145 = v129;
    if (v129)
    {
      goto LABEL_126;
    }

    v132 = v130 * v31;
    if ((v130 * v31) >> 64 == (v130 * v31) >> 63)
    {
      v102 = __OFADD__(v128, v132);
      v135 = (v128 + v132);
      v39 = v141;
      v40 = v140;
      if (!v102)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_137;
  }

  v139 = a3;
  if (v31 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  v152.i64[0] = v15;
  v152.i64[1] = v16;
  v153 = v17;
  v33 = v144;
  LOBYTE(v146) = v144;
  v34 = v145;
  v35 = sub_1C7BD4228(&v146, a2);
  if (v34)
  {
    goto LABEL_126;
  }

  v14 = v35;
  v152.i64[0] = v15;
  v152.i64[1] = v16;
  v153 = v17;
  LOBYTE(v146) = v33;
  v36 = sub_1C7BD47CC(&v146, a2);
  v31 = 0;
  v55 = v36 * v32;
  v56 = v143;
  if ((v36 * v32) >> 64 != (v36 * v32) >> 63)
  {
    __break(1u);
    goto LABEL_134;
  }

  v135 = &v14[v55];
  v33 = v139;
  if (__OFADD__(v14, v55))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v145 = 0;
  if (v139 <= 0)
  {
    if (qword_1EC262170 != -1)
    {
      swift_once();
    }

    v66 = v141;
    v67 = __swift_project_value_buffer(v141, qword_1EC288310);
    v68 = v140;
    v69 = v138;
    (*(v140 + 16))(v138, v67, v66);
    sub_1C7BDF708(v15, v16, v17);
    v70 = sub_1C7C7D194();
    v71 = sub_1C7C7D574();
    sub_1C7BEA9D8(v15, v16, v17);
    LODWORD(v137) = v71;
    v72 = v71;
    v73 = v70;
    if (!os_log_type_enabled(v70, v72))
    {

      sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
      (*(v68 + 8))(v69, v141);
      return v135;
    }

    v74 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v146 = v136;
    *v74 = 136316162;
    *(v74 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v146);
    *(v74 + 12) = 2080;
    v152.i64[0] = v15;
    v152.i64[1] = v16;
    v153 = v17;
    sub_1C7BDF708(v15, v16, v17);
    sub_1C7C7D324();
    v75 = sub_1C7C7D334();
    v77 = v76;

    v78 = sub_1C7BE42F8(v75, v77, &v146);

    *(v74 + 14) = v78;
    *(v74 + 22) = 2080;
    v152.i64[0] = v33;
    sub_1C7BFE364();
    v79 = sub_1C7C7D654();
    v81 = sub_1C7BE42F8(v79, v80, &v146);

    *(v74 + 24) = v81;
    *(v74 + 32) = 2080;
    if (v144 > 1)
    {
      v15 = v135;
      v82 = v138;
      if (v144 == 2)
      {
        v84 = 0xE300000000000000;
        v83 = 6582115;
      }

      else
      {
        v83 = 0x69646E4964657375;
        v84 = 0xEB00000000736563;
      }
    }

    else
    {
      v15 = v135;
      v82 = v138;
      if (v144)
      {
        v83 = 7499619;
        v84 = 0xE300000000000000;
      }

      else
      {
        v83 = 0x7061654870;
        v84 = 0xE500000000000000;
      }
    }

    v103 = sub_1C7BE42F8(v83, v84, &v146);

    *(v74 + 34) = v103;
    *(v74 + 42) = 2048;
    *(v74 + 44) = v15;
    _os_log_impl(&dword_1C7B9A000, v73, v137, "%s %s %s %s: result: %ld", v74, 0x34u);
    v104 = v136;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v104, -1, -1);
    MEMORY[0x1CCA6C990](v74, -1, -1);

    sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
    (*(v140 + 8))(v82, v141);
    return v15;
  }

  if (!v17)
  {
    if (sub_1C7BDF6D8(v15, &unk_1F474F780))
    {
      goto LABEL_36;
    }

LABEL_55:
    v85 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v14 = *&v56[v85];
    v146 = MEMORY[0x1E69E7CC0];
    if (!(v14 >> 62))
    {
      v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_57;
    }

LABEL_135:
    v29 = sub_1C7C7D6D4();
LABEL_57:

    if (v29)
    {
      v86 = 0;
      v138 = (v14 & 0xC000000000000001);
      v136 = v14 & 0xFFFFFFFFFFFFFF8;
      v134 = a2;
      v133 = v29;
      while (1)
      {
        if (v138)
        {
          v87 = MEMORY[0x1CCA6B7B0](v86, v14);
        }

        else
        {
          if (v86 >= *(v136 + 16))
          {
            goto LABEL_119;
          }

          v87 = *&v14[8 * v86 + 32];
        }

        v31 = v87;
        v88 = (v86 + 1);
        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          if (!sub_1C7C7D6D4())
          {
            goto LABEL_121;
          }

LABEL_19:
          v135 = 0;
          v39 = v141;
          v40 = v140;
LABEL_20:
          if (qword_1EC262170 == -1)
          {
LABEL_21:
            v41 = __swift_project_value_buffer(v39, qword_1EC288310);
            (*(v40 + 16))(v14, v41, v39);
            sub_1C7BDF708(v15, v16, v17);
            v42 = sub_1C7C7D194();
            v43 = sub_1C7C7D574();
            sub_1C7BEA9D8(v15, v16, v17);
            if (os_log_type_enabled(v42, v43))
            {
              LODWORD(v139) = v43;
              v44 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v157 = v138;
              *v44 = 136316162;
              *(v44 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v157);
              *(v44 + 12) = 2080;
              v149 = v15;
              v150 = v16;
              v151 = v17;
              sub_1C7BDF708(v15, v16, v17);
              sub_1C7C7D324();
              v45 = sub_1C7C7D334();
              v47 = v46;

              v48 = sub_1C7BE42F8(v45, v47, &v157);

              *(v44 + 14) = v48;
              *(v44 + 22) = 2080;
              v149 = 0;
              sub_1C7BFE364();
              v49 = sub_1C7C7D654();
              v51 = sub_1C7BE42F8(v49, v50, &v157);

              *(v44 + 24) = v51;
              *(v44 + 32) = 2080;
              if (v144 > 1)
              {
                v15 = v135;
                if (v144 == 2)
                {
                  v53 = 0xE300000000000000;
                  v52 = 6582115;
                }

                else
                {
                  v52 = 0x69646E4964657375;
                  v53 = 0xEB00000000736563;
                }
              }

              else
              {
                v15 = v135;
                if (v144)
                {
                  v52 = 7499619;
                  v53 = 0xE300000000000000;
                }

                else
                {
                  v52 = 0x7061654870;
                  v53 = 0xE500000000000000;
                }
              }

              v64 = v138;
              v65 = sub_1C7BE42F8(v52, v53, &v157);

              *(v44 + 34) = v65;
              *(v44 + 42) = 2048;
              *(v44 + 44) = v15;
              _os_log_impl(&dword_1C7B9A000, v42, v139, "%s %s %s %s: result: %ld", v44, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1CCA6C990](v64, -1, -1);
              MEMORY[0x1CCA6C990](v44, -1, -1);

              sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
              (*(v140 + 8))(v14, v141);
              return v15;
            }

            sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
            (*(v40 + 8))(v14, v39);
            return v135;
          }

LABEL_132:
          swift_once();
          goto LABEL_21;
        }

        v58 = *&v87[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState];
        if (v58 <= 30)
        {
          if (v58 <= 6)
          {
            v89 = v58 == 1 || v58 == 3;
            if (!v89)
            {
              goto LABEL_147;
            }

LABEL_85:
            sub_1C7C7D7E4();
            v90 = v17;
            v91 = v15;
            v92 = v16;
            v93 = v14;
            v94 = *(v146 + 16);
            sub_1C7C7D814();
            v14 = v93;
            v16 = v92;
            v15 = v91;
            v17 = v90;
            a2 = v134;
            sub_1C7C7D824();
            sub_1C7C7D7F4();
            v29 = v133;
            goto LABEL_61;
          }

          if (v58 == 7)
          {
            goto LABEL_85;
          }

          if (v58 != 15 && v58 != 23)
          {
            goto LABEL_147;
          }
        }

        else if (v58 > 129)
        {
          if (v58 != 130)
          {
            if (v58 == 135)
            {
              goto LABEL_85;
            }

            if (v58 != 143)
            {
              goto LABEL_147;
            }
          }
        }

        else if (v58 != 31 && v58 != 39 && v58 != 129)
        {
          goto LABEL_147;
        }

LABEL_61:
        ++v86;
        v89 = v88 == v29;
        v31 = v145;
        v33 = v139;
        if (v89)
        {
          v95 = v146;
          goto LABEL_90;
        }
      }
    }

    v95 = MEMORY[0x1E69E7CC0];
LABEL_90:

    if ((v95 & 0x8000000000000000) == 0 && (v95 & 0x4000000000000000) == 0)
    {
      v96 = *(v95 + 16);
      goto LABEL_93;
    }

LABEL_137:
    v96 = sub_1C7C7D6D4();
LABEL_93:

    v146 = v15;
    v147 = v16;
    v148 = v17;
    LOBYTE(v149) = v144;
    v97 = sub_1C7BD4D04(&v149, a2);
    if (!v31)
    {
      v98 = v97 * v96;
      if ((v97 * v96) >> 64 == (v97 * v96) >> 63)
      {
        v99 = &v135[v98];
        if (!__OFADD__(v135, v98))
        {
          v146 = v15;
          v147 = v16;
          v148 = v17;
          LOBYTE(v149) = v144;
          sub_1C7BFC930(&v146, a2, &v149);
          v101 = v33 - v96;
          if (!__OFSUB__(v33, v96))
          {
            v58 = v100 * v101;
            if ((v100 * v101) >> 64 == (v100 * v101) >> 63)
            {
              v102 = __OFADD__(v99, v58);
              v58 += v99;
              v135 = v58;
              if (!v102)
              {
                v60 = v142.i64[1];
                goto LABEL_107;
              }

              goto LABEL_144;
            }

LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_142:
          __break(1u);
          goto LABEL_143;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_140;
    }

LABEL_126:

    sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
    return v15;
  }

  if (v17 != 3 || __PAIR128__((v15 >= 0xB) + v16 - 1, v15 - 11) >= 4)
  {
    goto LABEL_55;
  }

LABEL_36:
  v152.i64[0] = v15;
  v152.i64[1] = v16;
  v153 = v17;
  LOBYTE(v146) = v144;
  v57 = sub_1C7BD4D04(&v146, a2);
  v58 = v135;
  v59 = &v135[v57];
  v60 = v142.i64[1];
  if (__OFADD__(v135, v57))
  {
    __break(1u);
    goto LABEL_142;
  }

  v152.i64[0] = v15;
  v152.i64[1] = v16;
  v153 = v17;
  LOBYTE(v146) = v144;
  sub_1C7BFC930(&v152, a2, &v146);
  v58 = v61 * v33;
  if ((v61 * v33) >> 64 == (v61 * v33) >> 63)
  {
    v102 = __OFADD__(v59, v58);
    v58 += v59;
    v135 = v58;
    if (!v102)
    {
LABEL_107:
      v142.i64[1] = v60;
      if (qword_1EC262170 == -1)
      {
LABEL_108:
        v105 = v141;
        v106 = __swift_project_value_buffer(v141, qword_1EC288310);
        v107 = v140;
        v108 = v137;
        (*(v140 + 16))(v137, v106, v105);
        sub_1C7BDF708(v15, v16, v17);
        v109 = sub_1C7C7D194();
        v110 = sub_1C7C7D574();
        sub_1C7BEA9D8(v15, v16, v17);
        if (os_log_type_enabled(v109, v110))
        {
          v145 = 0;
          v111 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v149 = v138;
          *v111 = 136316162;
          *(v111 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v149);
          *(v111 + 12) = 2080;
          v146 = v15;
          v147 = v16;
          v148 = v17;
          sub_1C7BDF708(v15, v16, v17);
          sub_1C7C7D324();
          v112 = sub_1C7C7D334();
          v114 = v113;

          v115 = sub_1C7BE42F8(v112, v114, &v149);

          *(v111 + 14) = v115;
          *(v111 + 22) = 2080;
          v146 = v139;
          sub_1C7BFE364();
          v116 = sub_1C7C7D654();
          v118 = sub_1C7BE42F8(v116, v117, &v149);

          *(v111 + 24) = v118;
          *(v111 + 32) = 2080;
          if (v144 > 1)
          {
            v15 = v135;
            v119 = v137;
            if (v144 == 2)
            {
              v121 = 0xE300000000000000;
              v120 = 6582115;
            }

            else
            {
              v120 = 0x69646E4964657375;
              v121 = 0xEB00000000736563;
            }
          }

          else
          {
            v15 = v135;
            v119 = v137;
            if (v144)
            {
              v120 = 7499619;
              v121 = 0xE300000000000000;
            }

            else
            {
              v120 = 0x7061654870;
              v121 = 0xE500000000000000;
            }
          }

          v122 = v138;
          v123 = sub_1C7BE42F8(v120, v121, &v149);

          *(v111 + 34) = v123;
          *(v111 + 42) = 2048;
          *(v111 + 44) = v15;
          _os_log_impl(&dword_1C7B9A000, v109, v110, "%s %s %s %s: result: %ld", v111, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1CCA6C990](v122, -1, -1);
          MEMORY[0x1CCA6C990](v111, -1, -1);

          sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
          (*(v140 + 8))(v119, v141);
          return v15;
        }

        sub_1C7BFCF20(v142.i64[0], v142.u64[1]);
        (*(v107 + 8))(v108, v105);
        return v135;
      }

LABEL_140:
      swift_once();
      goto LABEL_108;
    }

    goto LABEL_146;
  }

LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  v149 = v58;
  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t sub_1C7BFE364()
{
  result = qword_1EC2635A0;
  if (!qword_1EC2635A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635A0);
  }

  return result;
}

uint64_t sub_1C7BFE3B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  v6 = *a3;
  v7 = sub_1C7BFB498(a1, sub_1C7BFBF94, sub_1C7BFBF94);
  if (*(v7 + 16))
  {
    v67 = v6;
    v64 = a4;
    if (a4)
    {
      v8 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
      swift_beginAccess();
      v9 = *(a2 + v8);
      v10 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        v14 = v13;
        do
        {
          v15 = *v14;
          v14 += 2;
          v16 = v15 >> 62;
          if (v15 >> 62 == 3 || v16 == 0)
          {
            v18 = *(v13 - 1) + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
            swift_beginAccess();
            v20 = *v18;
            if (*(v18 + 16) == 3)
            {
              if (__PAIR128__((v20 >= 0xB) + *(v18 + 8) - 1, v20 - 11) < 4)
              {
                goto LABEL_15;
              }
            }

            else if (!*(v18 + 16))
            {
              v19.i32[0] = dword_1F474F7F0;
              if (vmaxv_u16(vceq_s16((vmovl_u8(v19).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v20) & 0xFF00FF00FF00FFLL))))
              {
LABEL_15:
                v21 = 0;
                goto LABEL_41;
              }
            }
          }

          v13 = v14;
          --v12;
        }

        while (v12);
      }
    }

    v22 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v23 = *(*(a2 + v22) + OBJC_IVAR____TtC9SEService7SEState_seType);
    if ((v23 - 3) >= 3)
    {
      if ((v23 - 1) >= 2)
      {
        v24 = *(*(a2 + v22) + OBJC_IVAR____TtC9SEService7SEState_seType);
        goto LABEL_40;
      }

      v23 = 63;
      if (v67 != 3)
      {
        v23 = 0;
      }

      if (!v67)
      {
        v23 = 65608;
      }

      if (v67 <= 1)
      {
        if (!v67)
        {
          v24 = 1108;
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      if (v67 == 2)
      {
        v24 = 2100;
        goto LABEL_40;
      }
    }

    else
    {
      v23 = 63;
      if (v67 != 3)
      {
        v23 = 0;
      }

      if (!v67)
      {
        v23 = 56980;
      }

      if (v67 <= 1)
      {
        if (!v67)
        {
          v24 = 1088;
          goto LABEL_40;
        }

LABEL_35:
        v24 = 74;
        goto LABEL_40;
      }

      if (v67 == 2)
      {
        v24 = 2080;
        goto LABEL_40;
      }
    }

    v24 = 52;
LABEL_40:
    v21 = v24 + v23;
LABEL_41:
    v60 = v7 + 64;
    v25 = 1 << *(v7 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v7 + 64);
    v61 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    result = swift_beginAccess();
    v29 = 0;
    v30 = (v25 + 63) >> 6;
    v31 = v4;
    v63 = v7;
    while (1)
    {
      if (!v27)
      {
        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            goto LABEL_66;
          }

          v27 = *(v60 + 8 * v32);
          ++v29;
          if (v27)
          {
            v29 = v32;
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

LABEL_49:
      v33 = __clz(__rbit64(v27)) | (v29 << 6);
      v34 = *(v7 + 56);
      v35 = *(v7 + 48) + 24 * v33;
      v37 = *v35;
      v36 = *(v35 + 8);
      v38 = *(v35 + 16);
      v65 = *(v34 + 8 * v33);
      if ((v64 & 1) == 0)
      {
        break;
      }

      v62 = v31;
      v39 = *(v35 + 16);
      v40 = *(a2 + v61);
      sub_1C7BDF708(v37, v36, v39);
      v41 = v40;
      v42 = SEState.instances.getter();

      if (!*(v42 + 16))
      {

        v31 = v62;
        v38 = v39;
        goto LABEL_58;
      }

      v43 = v39;
      v44 = v37;
      v45 = v37;
      v46 = v36;
      v47 = v36;
      v48 = v43;
      v49 = sub_1C7C70278(v45, v47, v43);
      if ((v50 & 1) == 0)
      {

        v31 = v62;
        v38 = v48;
        v36 = v46;
        v37 = v44;
        goto LABEL_58;
      }

      v51 = *(*(v42 + 56) + 8 * v49);

      v52 = v51 <= 0;
      v31 = v62;
      v38 = v48;
      v36 = v46;
      v37 = v44;
      if (v52)
      {
        goto LABEL_58;
      }

LABEL_61:
      v68 = v67;
      v53 = v37;
      v54 = v36;
      v55 = v38;
      v57 = sub_1C7BD5348(&v68, a2);
      if (v31)
      {
LABEL_67:

        sub_1C7BEA9D8(v53, v54, v55);
        return v21;
      }

      v58 = v57;
      result = sub_1C7BEA9D8(v53, v54, v55);
      v59 = v58 * v65;
      if ((v58 * v65) >> 64 != (v58 * v65) >> 63)
      {
        goto LABEL_70;
      }

      v27 &= v27 - 1;
      v56 = __OFADD__(v21, v59);
      v21 += v59;
      v7 = v63;
      if (v56)
      {
        __break(1u);
LABEL_66:

        return v21;
      }
    }

    sub_1C7BDF708(v37, v36, v38);
LABEL_58:
    v53 = v37;
    v54 = v36;
    v55 = v38;
    v68 = v67;
    result = sub_1C7BD4D04(&v68, a2);
    if (v31)
    {
      goto LABEL_67;
    }

    v56 = __OFADD__(v21, result);
    v21 += result;
    if (v56)
    {
      goto LABEL_71;
    }

    v36 = v54;
    v37 = v53;
    goto LABEL_61;
  }

  return 0;
}

uint64_t sub_1C7BFE8C4(unint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5, unint64_t a6, int a7)
{
  v8 = v7;
  LODWORD(v108) = a7;
  v103 = a5;
  v102 = a4;
  v13 = sub_1C7C7D1B4();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *a3;
  if (qword_1EC262170 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v18 = __swift_project_value_buffer(v13, qword_1EC288310);
    (*(v14 + 16))(v17, v18, v13);

    v19 = sub_1C7C7D194();
    v20 = sub_1C7C7D574();

    v21 = os_log_type_enabled(v19, v20);
    v107 = a2;
    if (v21)
    {
      LODWORD(v104) = v20;
      v105 = a6;
      v22 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112[0] = v101;
      *v22 = 136315906;
      *(v22 + 4) = sub_1C7BE42F8(0xD000000000000050, 0x80000001C7C9D640, v112);
      *(v22 + 12) = 2080;
      sub_1C7C003B8();
      v23 = sub_1C7C7D264();
      v25 = sub_1C7BE42F8(v23, v24, v112);

      v26 = 0xE500000000000000;
      v27 = 0x7061654870;
      *(v22 + 14) = v25;
      *(v22 + 22) = 2080;
      v28 = 0xE300000000000000;
      v29 = 6582115;
      if (v106 != 2)
      {
        v29 = 0x69646E4964657375;
        v28 = 0xEB00000000736563;
      }

      if (v106)
      {
        v27 = 7499619;
        v26 = 0xE300000000000000;
      }

      v30 = v106 <= 1 ? v27 : v29;
      v31 = v106 <= 1 ? v26 : v28;
      v32 = sub_1C7BE42F8(v30, v31, v112);

      *(v22 + 24) = v32;
      *(v22 + 32) = 2080;
      if (v103)
      {
        v33 = 0xE500000000000000;
        v34 = 0x3E6C696E3CLL;
      }

      else
      {
        v111 = v102;
        sub_1C7BFE364();
        v34 = sub_1C7C7D654();
        v33 = v36;
      }

      v37 = sub_1C7BE42F8(v34, v33, v112);

      *(v22 + 34) = v37;
      _os_log_impl(&dword_1C7B9A000, v19, v104, "%s %s %s %s", v22, 0x2Au);
      v38 = v101;
      swift_arrayDestroy();
      MEMORY[0x1CCA6C990](v38, -1, -1);
      MEMORY[0x1CCA6C990](v22, -1, -1);

      v39 = *(v14 + 8);
      v14 += 8;
      v39(v17, v13);
      a2 = v107;
      a6 = v105;
    }

    else
    {

      v35 = *(v14 + 8);
      v14 += 8;
      v35(v17, v13);
    }

    v40 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v41 = *(a2 + v40);
    v42 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v17 = *(v41 + v42);

    v43 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
    v113 = v43;
    v44 = *(v17 + 16);
    if (!v44)
    {
      break;
    }

    v45 = 0;
    a2 = v17 + 32;
    while (v45 < *(v17 + 16))
    {
      v109 = *(a2 + 16 * v45);
      sub_1C7BFCFA8(v109, *(&v109 + 1));
      sub_1C7BFAE78(&v113, &v109);
      if (v8)
      {

        sub_1C7BFCF38(v109, *(&v109 + 1));

        __break(1u);
LABEL_113:

        while (1)
        {

          __break(1u);
        }
      }

      ++v45;
      sub_1C7BFCF38(v109, *(&v109 + 1));
      if (v44 == v45)
      {
        v46 = v113;
        goto LABEL_25;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v46 = v43;
LABEL_25:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v109 = v46;
  sub_1C7BFC468(a1, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v109);
  if (v8)
  {
    goto LABEL_113;
  }

  v48 = sub_1C7BFB318(v109, a6, v108 & 1);

  v17 = sub_1C7BFB498(v49, sub_1C7BFC0D8, sub_1C7BFC0D8);
  v108 = 0;
  v104 = v48;

  v14 = 0;
  v13 = (v17 + 64);
  v50 = *(v17 + 64);
  v105 = v17;
  v51 = 1 << *(v17 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  a6 = v52 & v50;
  v53 = (v51 + 63) >> 6;
  v8 = MEMORY[0x1E69E7CC0];
  if ((v52 & v50) == 0)
  {
    while (1)
    {
LABEL_30:
      v54 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      if (v54 >= v53)
      {
        break;
      }

      a6 = v13[v54];
      ++v14;
      if (a6)
      {
        v17 = v8;
        v14 = v54;
        goto LABEL_34;
      }
    }

    v65 = 0;
    v14 = v104;
    a1 = v104 + 64;
    v66 = 1 << *(v104 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v104 + 64);
    v69 = v107;
    v13 = v108;
    while (v68)
    {
LABEL_49:
      v71 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v72 = *(v104 + 48) + 24 * (v71 | (v65 << 6));
      v73 = *v72;
      v17 = *(v72 + 8);
      v74 = *(v72 + 16);
      if (*(v72 + 16))
      {
        if (v74 == 3 && !((v73 | 2) ^ 0xE | v17))
        {
          goto LABEL_55;
        }
      }

      else if (*v72 == 12 || *v72 == 10)
      {
LABEL_55:
        v108 = v8;
        swift_retain_n();
        sub_1C7BDF708(v73, v17, v74);

        v75 = 1 << *(v14 + 32);
        v76 = -1;
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        v8 = v76 & *(v14 + 64);
        v77 = (v75 + 63) >> 6;

        v14 = 0;
        a6 = 24;
        while (v8)
        {
LABEL_64:
          v79 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v80 = *(v104 + 48) + 24 * (v79 | (v14 << 6));
          v17 = *v80;
          a2 = *(v80 + 8);
          v81 = *(v80 + 16);
          if (v81)
          {
            sub_1C7BDF708(*v80, *(v80 + 8), *(v80 + 16));
            sub_1C7BEA9D8(v17, a2, v81);
            sub_1C7BEA9D8(25, 0, 0);
          }

          else
          {
            sub_1C7BEA9D8(*v80, *(v80 + 8), 0);
            sub_1C7BEA9D8(25, 0, 0);
            if (v17 == 25)
            {
              v14 = v104;

              v69 = v107;
              v8 = v108;
LABEL_67:
              a6 = v106;
              goto LABEL_68;
            }
          }
        }

        while (1)
        {
          v78 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_106;
          }

          if (v78 >= v77)
          {
            v14 = v104;

            v109 = xmmword_1C7C84B80;
            v110 = 0;
            a6 = v106;
            LOBYTE(v113) = v106;
            a2 = v107;
            v91 = sub_1C7BFD018(&v109, v107, 1, &v113);
            if (v13)
            {
              goto LABEL_69;
            }

            v17 = v91;
            v8 = v108;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_111;
            }

            while (1)
            {
              v69 = a2;
              v99 = *(v8 + 16);
              v98 = *(v8 + 24);
              if (v99 >= v98 >> 1)
              {
                v100 = sub_1C7C2A6E0((v98 > 1), v99 + 1, 1, v8);
                v69 = a2;
                v8 = v100;
              }

              *(v8 + 16) = v99 + 1;
              *(v8 + 8 * v99 + 32) = v17;
LABEL_68:
              LOBYTE(v109) = a6;
              v82 = sub_1C7BFE3B8(v14, v69, &v109, 0);
              if (v13)
              {
LABEL_69:

LABEL_70:

                return v17;
              }

              v17 = v82;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_1C7C2A6E0(0, *(v8 + 16) + 1, 1, v8);
              }

              v84 = *(v8 + 16);
              v83 = *(v8 + 24);
              if (v84 >= v83 >> 1)
              {
                v8 = sub_1C7C2A6E0((v83 > 1), v84 + 1, 1, v8);
              }

              *(v8 + 16) = v84 + 1;
              *(v8 + 8 * v84 + 32) = v17;
              if (v103)
              {
                v17 = 0;
                v85 = v84 + 1;
                v86 = 32;
                while (1)
                {
                  v87 = *(v8 + v86);
                  v88 = __OFADD__(v17, v87);
                  v17 += v87;
                  if (v88)
                  {
                    goto LABEL_105;
                  }

                  v86 += 8;
                  if (!--v85)
                  {
                    goto LABEL_70;
                  }
                }
              }

              *&v109 = v8;

              sub_1C7BFB608(&v109);
              if ((v102 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v89 = *(v109 + 16);
                v90 = v89 - v102;
                if (v89 < v102)
                {
                  v90 = 0;
                }

                if (v90 == v89)
                {

                  swift_unknownObjectRelease();
                  return 0;
                }

                if (v90 < v89)
                {
                  v17 = 0;
                  if (v89 >= v102)
                  {
                    v92 = v102;
                  }

                  else
                  {
                    v92 = *(v109 + 16);
                  }

                  v93 = -v92;
                  v94 = v109 + 8 * v89 + 32;
                  do
                  {
                    v95 = *(v94 + 8 * v93);
                    v88 = __OFADD__(v17, v95);
                    v17 += v95;
                    if (v88)
                    {
                      goto LABEL_107;
                    }
                  }

                  while (!__CFADD__(v93++, 1));

                  swift_unknownObjectRelease();
                  return v17;
                }
              }

              __break(1u);
LABEL_111:
              v8 = sub_1C7C2A6E0(0, *(v8 + 16) + 1, 1, v8);
            }
          }

          v8 = *(a1 + 8 * v78);
          ++v14;
          if (v8)
          {
            v14 = v78;
            goto LABEL_64;
          }
        }
      }
    }

    while (1)
    {
      v70 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v70 >= ((v66 + 63) >> 6))
      {
        goto LABEL_67;
      }

      v68 = *(a1 + 8 * v70);
      ++v65;
      if (v68)
      {
        v65 = v70;
        goto LABEL_49;
      }
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    v17 = v8;
LABEL_34:
    v55 = __clz(__rbit64(a6)) | (v14 << 6);
    v56 = *(v105 + 48) + 24 * v55;
    v57 = *(v56 + 8);
    v59 = *(v56 + 16);
    v60 = *(*(v105 + 56) + 8 * v55);
    *&v109 = *v56;
    v58 = v109;
    *(&v109 + 1) = v57;
    v110 = v59;
    LOBYTE(v113) = v106;
    sub_1C7BDF708(v109, v57, v59);
    v61 = v108;
    v62 = sub_1C7BFD018(&v109, v107, v60, &v113);
    v108 = v61;
    if (v61)
    {
      break;
    }

    v63 = v62;
    sub_1C7BEA9D8(v58, v57, v59);
    v8 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C7C2A6E0(0, *(v17 + 16) + 1, 1, v17);
    }

    a1 = *(v8 + 16);
    v64 = *(v8 + 24);
    a2 = a1 + 1;
    if (a1 >= v64 >> 1)
    {
      v8 = sub_1C7C2A6E0((v64 > 1), a1 + 1, 1, v8);
    }

    a6 &= a6 - 1;
    *(v8 + 16) = a2;
    *(v8 + 8 * a1 + 32) = v63;
    if (!a6)
    {
      goto LABEL_30;
    }
  }

  sub_1C7BEA9D8(v58, v57, v59);
  return v17;
}

void sub_1C7BFF440(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v73 = a3;
  v75 = a2;
  v8 = sub_1C7C7D1B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  LODWORD(v15) = *(a1 + 16);
  v87 = *a4;
  if (qword_1EC262170 != -1)
  {
LABEL_60:
    swift_once();
  }

  v76 = v5;
  v16 = __swift_project_value_buffer(v8, qword_1EC288310);
  (*(v9 + 16))(v12, v16, v8);
  sub_1C7BDF708(v13, v14, v15);
  v17 = sub_1C7C7D194();
  v18 = sub_1C7C7D574();
  sub_1C7BEA9D8(v13, v14, v15);
  v19 = os_log_type_enabled(v17, v18);
  v78 = v13;
  v77 = v14;
  v74 = v15;
  if (v19)
  {
    v72 = v8;
    v20 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v82[0] = v71;
    *v20 = 136315906;
    *(v20 + 4) = sub_1C7BE42F8(0xD00000000000004DLL, 0x80000001C7C9D5F0, v82);
    *(v20 + 12) = 2080;
    v84 = v13;
    v85 = v14;
    v86 = v15;
    sub_1C7BDF708(v13, v14, v15);
    sub_1C7C7D324();
    v21 = sub_1C7C7D334();
    v23 = v22;

    v24 = sub_1C7BE42F8(v21, v23, v82);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v84 = v73;
    sub_1C7BFE364();
    v25 = sub_1C7C7D654();
    v27 = sub_1C7BE42F8(v25, v26, v82);

    v28 = 0xE500000000000000;
    v29 = 0x7061654870;
    *(v20 + 24) = v27;
    *(v20 + 32) = 2080;
    v30 = 0xE300000000000000;
    v31 = 6582115;
    if (v87 != 2)
    {
      v31 = 0x69646E4964657375;
      v30 = 0xEB00000000736563;
    }

    if (v87)
    {
      v29 = 7499619;
      v28 = 0xE300000000000000;
    }

    if (v87 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (v87 <= 1)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    v34 = sub_1C7BE42F8(v32, v33, v82);

    *(v20 + 34) = v34;
    _os_log_impl(&dword_1C7B9A000, v17, v18, "%s %s %s %s", v20, 0x2Au);
    v35 = v71;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v35, -1, -1);
    MEMORY[0x1CCA6C990](v20, -1, -1);

    (*(v9 + 8))(v12, v72);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v8 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  v12 = v75;
  swift_beginAccess();
  v36 = *&v12[v8];
  v37 = SEState.friendlyDetails.getter();

  v9 = v74;
  if (*(v37 + 16) && (v38 = sub_1C7C70278(v78, v77, v74), (v39 & 1) != 0))
  {
    v40 = *(*(v37 + 56) + 8 * v38);
  }

  else
  {
    v41 = type metadata accessor for SEPackageDetails();
    v42 = objc_allocWithZone(v41);
    v42[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
    *&v42[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
    *&v42[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
    v43 = &v42[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    v44 = v78;
    v45 = v77;
    *v43 = v78;
    *(v43 + 1) = v45;
    v43[16] = v9;
    sub_1C7BDF708(v44, v45, v9);
    v83.receiver = v42;
    v83.super_class = v41;
    v40 = objc_msgSendSuper2(&v83, sel_init);
  }

  v15 = v40;

  v46 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  v5 = *&v15[v46];
  v47 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  swift_beginAccess();
  if (v15[v47])
  {
    v5 = 0;
    v48 = v76;
    v8 = v78;
    v13 = v77;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  v49 = v9;
  if (v9 != 3 || __PAIR128__((v78 >= 0xB) + v77 - 1, v78 - 11) >= 4)
  {
    goto LABEL_52;
  }

  while (2)
  {
    v54 = *&v12[v8];
    v55 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v56 = *(v54 + v55);
    v57 = *(v56 + 16);
    if (!v57)
    {
      break;
    }

    v58 = (v56 + 40);
    v59 = v58;
    while (1)
    {
      v60 = *v59;
      v59 += 2;
      v61 = v60 >> 62;
      if (v60 >> 62 != 3 && v61 != 0)
      {
        goto LABEL_42;
      }

      v63 = *(v58 - 1) + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
      swift_beginAccess();
      v65 = *v63;
      if (*(v63 + 16) != 3)
      {
        break;
      }

      if (__PAIR128__((v65 >= 0xB) + *(v63 + 8) - 1, v65 - 11) < 4)
      {
        goto LABEL_51;
      }

LABEL_42:
      v58 = v59;
      if (!--v57)
      {
        goto LABEL_52;
      }
    }

    if (*(v63 + 16))
    {
      goto LABEL_42;
    }

    v64.i32[0] = dword_1F474F840;
    if ((vmaxv_u16(vceq_s16((vmovl_u8(v64).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v65) & 0xFF00FF00FF00FFLL))) & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v5 = 0;
    v48 = v76;
    v8 = v78;
    v13 = v77;
    v9 = v49;
LABEL_21:
    LOBYTE(v14) = v87;
LABEL_22:
    if (!v9)
    {
      if (!sub_1C7BDF6D8(v8, &unk_1F474F848))
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v9 == 3 && __PAIR128__((v8 >= 0xB) + v13 - 1, v8 - 11) < 4)
    {
LABEL_31:
      v79 = v8;
      v80 = v13;
      v81 = v9;
      v88 = v14;
      v50 = sub_1C7BD4D04(&v88, v12);
      if (v48)
      {
        goto LABEL_54;
      }

      v51 = __OFADD__(v5, v50);
      v5 += v50;
      if (!v51)
      {
        goto LABEL_33;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_33:
    v79 = v8;
    v80 = v13;
    v81 = v9;
    v88 = v14;
    sub_1C7BFC930(&v79, v12, &v88);
    v53 = v52;

    if (v48)
    {
      return;
    }

    if ((v53 * v73) >> 64 != (v53 * v73) >> 63)
    {
      __break(1u);
      goto LABEL_62;
    }

    if (!__OFADD__(v5, v53 * v73))
    {
      return;
    }

    __break(1u);
LABEL_38:
    v49 = v9;
    if (sub_1C7BDF6D8(v78, &unk_1F474F7F8))
    {
      continue;
    }

    break;
  }

LABEL_52:
  v8 = v78;
  v13 = v77;
  v79 = v78;
  v80 = v77;
  v9 = v49;
  v81 = v49;
  v14 = v87;
  v88 = v87;
  v48 = v76;
  v66 = sub_1C7BD4228(&v88, v12);
  if (!v48)
  {
    v67 = v66;
    v79 = v8;
    v80 = v13;
    v81 = v9;
    v88 = v14;
    v68 = sub_1C7BD47CC(&v88, v12);
    v69 = v68 * v5;
    if ((v68 * v5) >> 64 == (v68 * v5) >> 63)
    {
      v5 = v67 + v69;
      if (!__OFADD__(v67, v69))
      {
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_60;
    }

LABEL_63:
    __break(1u);
    return;
  }

LABEL_54:
}

void sub_1C7BFFC28(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  v71 = a2;
  v5 = sub_1C7C7D1B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *a3;
  if (qword_1EC262170 != -1)
  {
LABEL_64:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_1EC288310);
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_1C7C7D194();
  v12 = sub_1C7C7D574();

  v13 = os_log_type_enabled(v11, v12);
  v72 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v79[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1C7BE42F8(0xD000000000000046, 0x80000001C7C9D5A0, v79);
    *(v14 + 12) = 2080;
    sub_1C7C003B8();
    v16 = sub_1C7C7D264();
    v18 = sub_1C7BE42F8(v16, v17, v79);

    v19 = 0xE500000000000000;
    v20 = 0x7061654870;
    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    v21 = 0xE300000000000000;
    v22 = 6582115;
    if (v81 != 2)
    {
      v22 = 0x69646E4964657375;
      v21 = 0xEB00000000736563;
    }

    if (v81)
    {
      v20 = 7499619;
      v19 = 0xE300000000000000;
    }

    if (v81 <= 1)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    if (v81 <= 1)
    {
      v24 = v19;
    }

    else
    {
      v24 = v21;
    }

    a1 = sub_1C7BE42F8(v23, v24, v79);

    *(v14 + 24) = a1;
    _os_log_impl(&dword_1C7B9A000, v11, v12, "%s %s %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v15, -1, -1);
    MEMORY[0x1CCA6C990](v14, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v6 = v72 + 64;
  v25 = 1 << *(v72 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v72 + 64);
  v9 = ((v25 + 63) >> 6);

  v29 = 0;
  v30 = 0;
  do
  {
    if (!v27)
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v9)
        {
          goto LABEL_26;
        }

        v27 = *(v6 + 8 * v31);
        ++v29;
        if (v27)
        {
          v29 = v31;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_22:
    v32 = __clz(__rbit64(v27)) | (v29 << 6);
    v33 = *(v28 + 48) + 24 * v32;
    v34 = *(v33 + 8);
    a1 = *(v33 + 16);
    v35 = *(*(v28 + 56) + 8 * v32);
    v79[0] = *v33;
    v5 = v79[0];
    v79[1] = v34;
    v80 = a1;
    v78[0] = v81;
    sub_1C7BDF708(v79[0], v34, a1);
    v36 = v75;
    sub_1C7BFF440(v79, v71, v35, v78);
    v75 = v36;
    if (v36)
    {
LABEL_57:

      sub_1C7BEA9D8(v5, v34, a1);
      return;
    }

    v38 = v37;
    v27 &= v27 - 1;
    sub_1C7BEA9D8(v5, v34, a1);
    v39 = __OFADD__(v30, v38);
    v30 += v38;
    v28 = v72;
  }

  while (!v39);
  __break(1u);
LABEL_26:
  v69 = v30;

  v40 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  v41 = v71;
  swift_beginAccess();
  v42 = *&v41[v40];
  v9 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  a1 = *&v9[v42];
  v5 = *(a1 + 16);
  v70 = v42;

  if (v5)
  {
    v9 = 0;
    v43 = (a1 + 40);
    v73 = v5;
    v74 = a1;
    while (v9 < *(a1 + 16))
    {
      v44 = *v43;
      if (!(*v43 >> 62))
      {
        v45 = *(v43 - 1);
        v46 = &v45[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v48 = *v46;
        v47 = *(v46 + 1);
        v49 = v46[16];
        if ((v49 - 1) >= 2)
        {
          if (v46[16] && !(v48 ^ 5 | v47))
          {
            v67 = v45;
            sub_1C7BEA9D8(v48, v47, 3u);
            sub_1C7BEA9D8(5, 0, 3u);

            sub_1C7BFCF38(v45, v44);
            return;
          }
        }

        else
        {
          v50 = *(v46 + 1);
          swift_bridgeObjectRetain_n();
        }

        v51 = v45;
        sub_1C7BEA9D8(v48, v47, v49);
        sub_1C7BEA9D8(5, 0, 3u);
        sub_1C7BEA9D8(v48, v47, v49);
        v53 = *v46;
        v52 = *(v46 + 1);
        v54 = v46[16];
        if (v54)
        {
          sub_1C7BDF708(*v46, *(v46 + 1), v46[16]);
          sub_1C7BDF708(v53, v52, v54);
          sub_1C7BEA9D8(v53, v52, v54);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v45, v44);
          sub_1C7BEA9D8(v53, v52, v54);
          v5 = v73;
          a1 = v74;
        }

        else
        {
          sub_1C7BEA9D8(*v46, *(v46 + 1), 0);
          sub_1C7BEA9D8(25, 0, 0);
          v55 = v53;
          sub_1C7BFCF38(v45, v44);
          v5 = v73;
          a1 = v74;
          if (v55 == 25)
          {

            return;
          }
        }
      }

      ++v9;
      v43 += 2;
      if (v5 == v9)
      {
        goto LABEL_39;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_39:

  v56 = 0;
  v34 = v72;
  v57 = 1 << *(v72 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v72 + 64);
  v60 = (v57 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v59)
      {
        while (1)
        {
          v61 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_62;
          }

          if (v61 >= v60)
          {
            return;
          }

          v59 = *(v6 + 8 * v61);
          ++v56;
          if (v59)
          {
            v56 = v61;
            break;
          }
        }
      }

      v62 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v63 = *(v72 + 48) + 24 * (v62 | (v56 << 6));
      v64 = *v63;
      a1 = *(v63 + 8);
      v5 = *(v63 + 16);
      if (!*(v63 + 16))
      {
        break;
      }

      if (v5 == 3 && !((v64 | 2) ^ 0xE | a1))
      {
        goto LABEL_53;
      }
    }
  }

  while (*v63 != 12 && *v63 != 10);
LABEL_53:

  sub_1C7BDF708(v64, a1, v5);

  v76 = xmmword_1C7C84B80;
  v77 = 0;
  v82 = v81;
  v65 = v75;
  sub_1C7BFF440(&v76, v71, 1, &v82);
  if (!v65 && __OFADD__(v69, v66))
  {
    __break(1u);
    goto LABEL_57;
  }
}

unint64_t sub_1C7C003B8()
{
  result = qword_1EC2645C0;
  if (!qword_1EC2645C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2645C0);
  }

  return result;
}

uint64_t sub_1C7C0042C()
{
  if (*v0)
  {
    result = 0x676E696E676973;
  }

  else
  {
    result = 1919251317;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C00460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000)
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

uint64_t sub_1C7C0053C(uint64_t a1)
{
  v2 = sub_1C7C00954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C00578(uint64_t a1)
{
  v2 = sub_1C7C00954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C005B4(uint64_t a1)
{
  v2 = sub_1C7C009A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C005F0(uint64_t a1)
{
  v2 = sub_1C7C009A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0062C(uint64_t a1)
{
  v2 = sub_1C7C009FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C00668(uint64_t a1)
{
  v2 = sub_1C7C009FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635B0, &qword_1C7C8A3E0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635B8, &qword_1C7C8A3E8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635C0, &qword_1C7C8A3F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C00954();
  sub_1C7C7DBA4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1C7C009A8();
    v18 = v22;
    sub_1C7C7D9E4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1C7C009FC();
    sub_1C7C7D9E4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1C7C00954()
{
  result = qword_1EC2635C8;
  if (!qword_1EC2635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635C8);
  }

  return result;
}

unint64_t sub_1C7C009A8()
{
  result = qword_1EC2635D0;
  if (!qword_1EC2635D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635D0);
  }

  return result;
}

unint64_t sub_1C7C009FC()
{
  result = qword_1EC2635D8;
  if (!qword_1EC2635D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635D8);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t JPKIInternalTypes.CertificateType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635E0, &qword_1C7C8A3F8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635E8, &qword_1C7C8A400);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635F0, &unk_1C7C8A408);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C00954();
  v16 = v36;
  sub_1C7C7DB94();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1C7C7D9D4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1C7BEAACC();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1C7C7D7C4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v26 = &type metadata for JPKIInternalTypes.CertificateType;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1C7C009A8();
        sub_1C7C7D944();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1C7C009FC();
        sub_1C7C7D944();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

unint64_t sub_1C7C00FC4()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C00FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9DA00 == a2)
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

uint64_t sub_1C7C010E0(uint64_t a1)
{
  v2 = sub_1C7C012F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0111C(uint64_t a1)
{
  v2 = sub_1C7C012F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635F8, &qword_1C7C8A418);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C012F8();
  sub_1C7C7DBA4();
  v16 = v9;
  v15 = 0;
  sub_1C7C0134C();
  sub_1C7C7DA44();
  if (!v2)
  {
    v14 = 1;
    sub_1C7C7DA54();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C7C012F8()
{
  result = qword_1EC263600;
  if (!qword_1EC263600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263600);
  }

  return result;
}

unint64_t sub_1C7C0134C()
{
  result = qword_1EC263608;
  if (!qword_1EC263608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263608);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263610, &qword_1C7C8A420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C012F8();
  sub_1C7C7DB94();
  if (!v2)
  {
    v16 = 0;
    sub_1C7C0155C();
    sub_1C7C7D9B4();
    v11 = v17;
    v15 = 1;
    v13 = sub_1C7C7D9C4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1C7C0155C()
{
  result = qword_1EC263618;
  if (!qword_1EC263618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263618);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateData.certificate.getter()
{
  v1 = *(v0 + 16);
  sub_1C7BED654(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C7C01634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C016C0(uint64_t a1)
{
  v2 = sub_1C7C018E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C016FC(uint64_t a1)
{
  v2 = sub_1C7C018E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateData.__deallocating_deinit()
{
  sub_1C7BDF778(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t JPKIInternalTypes.CertificateData.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263620, &qword_1C7C8A428);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C018E8();
  sub_1C7C7DBA4();
  v10 = *(v2 + 24);
  v12 = *(v2 + 16);
  v13 = v10;
  sub_1C7BED654(v12, v10);
  sub_1C7BED7DC();
  sub_1C7C7DA44();
  sub_1C7BDF778(v12, v13);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C7C018E8()
{
  result = qword_1EC263628;
  if (!qword_1EC263628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263628);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateData.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  JPKIInternalTypes.CertificateData.init(from:)(a1);
  return v2;
}

uint64_t *JPKIInternalTypes.CertificateData.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263630, &qword_1C7C8A430);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C018E8();
  sub_1C7C7DB94();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C7BED744();
    sub_1C7C7D9B4();
    (*(v12 + 8))(v8, v5);
    *(v1 + 1) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C01B98()
{
  if (*v0)
  {
    result = 0x69426D6574737973;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C01BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69426D6574737973 && a2 == 0xEE00797274656D6FLL)
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

uint64_t sub_1C7C01CC4(uint64_t a1)
{
  v2 = sub_1C7C02124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01D00(uint64_t a1)
{
  v2 = sub_1C7C02124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C01D3C(uint64_t a1)
{
  v2 = sub_1C7C021CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01D78(uint64_t a1)
{
  v2 = sub_1C7C021CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C01DB4(uint64_t a1)
{
  v2 = sub_1C7C02178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01DF0(uint64_t a1)
{
  v2 = sub_1C7C02178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.UserAuthentication.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263638, &qword_1C7C8A438);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263640, &qword_1C7C8A440);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263648, &qword_1C7C8A448);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02124();
  sub_1C7C7DBA4();
  if (v15)
  {
    v27 = 0;
    sub_1C7C021CC();
    sub_1C7C7D9E4();
    v17 = v26;
    sub_1C7C7DA14();
    (*(v25 + 8))(v9, v17);
  }

  else
  {
    v28 = 1;
    sub_1C7C02178();
    v19 = v21;
    sub_1C7C7D9E4();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1C7C02124()
{
  result = qword_1EC263650;
  if (!qword_1EC263650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263650);
  }

  return result;
}

unint64_t sub_1C7C02178()
{
  result = qword_1EC263658;
  if (!qword_1EC263658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263658);
  }

  return result;
}

unint64_t sub_1C7C021CC()
{
  result = qword_1EC263660;
  if (!qword_1EC263660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263660);
  }

  return result;
}

uint64_t JPKIInternalTypes.UserAuthentication.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263668, &qword_1C7C8A450);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263670, &qword_1C7C8A458);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263678, &qword_1C7C8A460);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1C7C02124();
  v19 = v39;
  sub_1C7C7DB94();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  v39 = v13;
  v20 = sub_1C7C7D9D4();
  v21 = (2 * *(v20 + 16)) | 1;
  v41 = v20;
  v42 = v20 + 32;
  v43 = 0;
  v44 = v21;
  v22 = sub_1C7BEAACC();
  v23 = v12;
  if (v22 == 2 || v43 != v44 >> 1)
  {
    v26 = sub_1C7C7D7C4();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v28 = &type metadata for JPKIInternalTypes.UserAuthentication;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v39 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  if (v22)
  {
    v45 = 1;
    sub_1C7C02178();
    sub_1C7C7D944();
    v24 = 0;
    v25 = v39;
    (*(v36 + 8))(v7, v35);
    (*(v25 + 8))(v16, v12);
    swift_unknownObjectRelease();
    v32 = 0;
  }

  else
  {
    v45 = 0;
    sub_1C7C021CC();
    sub_1C7C7D944();
    v31 = v39;
    v24 = sub_1C7C7D984();
    v32 = v33;
    (*(v37 + 8))(v11, v8);
    (*(v31 + 8))(v16, v23);
    swift_unknownObjectRelease();
  }

  v34 = v38;
  *v38 = v24;
  v34[1] = v32;
  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t JPKIInternalTypes.DigitalSignature.signature.getter()
{
  v1 = *(v0 + 24);
  sub_1C7BED654(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_1C7C0279C()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 0x6369666974726563;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C027E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666974726563 && a2 == 0xEF61746144657461;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t sub_1C7C028D4(uint64_t a1)
{
  v2 = sub_1C7C02B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C02910(uint64_t a1)
{
  v2 = sub_1C7C02B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *JPKIInternalTypes.DigitalSignature.deinit()
{
  v1 = v0[2];

  sub_1C7BDF778(v0[3], v0[4]);
  return v0;
}

uint64_t JPKIInternalTypes.DigitalSignature.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1C7BDF778(v0[3], v0[4]);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t JPKIInternalTypes.DigitalSignature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263680, &qword_1C7C8A468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02B88();
  sub_1C7C7DBA4();
  v14 = v3[2];
  v16 = 0;
  type metadata accessor for JPKIInternalTypes.CertificateData();
  sub_1C7C0D3A0(&qword_1EC263690, type metadata accessor for JPKIInternalTypes.CertificateData);
  sub_1C7C7DA44();
  if (!v2)
  {
    v11 = v3[4];
    v14 = v3[3];
    v15 = v11;
    v16 = 1;
    sub_1C7BED654(v14, v11);
    sub_1C7BED7DC();
    sub_1C7C7DA44();
    sub_1C7BDF778(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C7C02B88()
{
  result = qword_1EC263688;
  if (!qword_1EC263688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263688);
  }

  return result;
}

uint64_t JPKIInternalTypes.DigitalSignature.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  JPKIInternalTypes.DigitalSignature.init(from:)(a1);
  return v2;
}

uint64_t *JPKIInternalTypes.DigitalSignature.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263698, &qword_1C7C8A470);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02B88();
  sub_1C7C7DB94();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for JPKIInternalTypes.CertificateData();
    v16 = 0;
    sub_1C7C0D3A0(&qword_1EC2636A0, type metadata accessor for JPKIInternalTypes.CertificateData);
    v11 = v14;
    sub_1C7C7D9B4();
    v1[2] = v15;
    v16 = 1;
    sub_1C7BED744();
    sub_1C7C7D9B4();
    (*(v10 + 8))(v8, v11);
    *(v1 + 3) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C02EE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t JPKIInternalTypes.InternalError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v6 = 0x6F72724520435058;
      goto LABEL_20;
    case 2:
      sub_1C7C7D794();

      v20 = 0xD00000000000001DLL;
      v15 = sub_1C7C7DA74();
      goto LABEL_22;
    case 3:
      sub_1C7C7D794();

      v12 = 0xD000000000000011;
      goto LABEL_25;
    case 4:
      sub_1C7C7D794();

      v12 = 0xD000000000000017;
      goto LABEL_25;
    case 5:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0x746163696C707041, 0xEC000000206E6F69);
      MEMORY[0x1CCA6B380](v1, v2);
      MEMORY[0x1CCA6B380](0xD000000000000020, 0x80000001C7C9D840);
      MEMORY[0x1CCA6B380](v4, v3);
      MEMORY[0x1CCA6B380](0x776F6C6C61202D20, 0xEF20657261206465);
      v15 = sub_1C7C7D514();
LABEL_22:
      MEMORY[0x1CCA6B380](v15);

      return v20;
    case 6:
      sub_1C7C7D794();

      v12 = 0xD000000000000012;
      goto LABEL_25;
    case 7:
      sub_1C7C7D794();

      v20 = 0xD00000000000002ALL;
      v16 = sub_1C7C7CFE4();
      MEMORY[0x1CCA6B380](v16);

      v13 = 8250;
      v14 = 0xE200000000000000;
      goto LABEL_18;
    case 8:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0xD000000000000029, 0x80000001C7C9D7C0);
      MEMORY[0x1CCA6B380](v4, v3);
      v10 = 0x7265206874697720;
      v11 = 0xED0000203A726F72;
      goto LABEL_28;
    case 9:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0xD000000000000027, 0x80000001C7C9D790);
      MEMORY[0x1CCA6B380](v1, v2);
      v13 = 0x6573756163656220;
      v14 = 0xE900000000000020;
LABEL_18:
      MEMORY[0x1CCA6B380](v13, v14);
      v17 = v4;
      v18 = v3;
      goto LABEL_30;
    case 0xA:
      sub_1C7C7D794();

      v20 = 0xD000000000000017;
      v19 = sub_1C7C7DA74();
      MEMORY[0x1CCA6B380](v19);

      v17 = 0x7466656C20;
      v18 = 0xE500000000000000;
      goto LABEL_30;
    case 0xB:
      v20 = 0;
      sub_1C7C7D794();
      v10 = 0xD00000000000003ELL;
      v11 = 0x80000001C7C9D700;
LABEL_28:
      MEMORY[0x1CCA6B380](v10, v11);
      goto LABEL_29;
    case 0xC:
      sub_1C7C7D794();

      v12 = 0xD000000000000022;
LABEL_25:
      v20 = v12;
      goto LABEL_29;
    case 0xD:
      sub_1C7C7D794();

      v20 = 0x20737365636F7250;
      MEMORY[0x1CCA6B380](v1, v2);
      v17 = 0x726F6620746F6E20;
      v18 = 0xEF646E756F726765;
      goto LABEL_30;
    case 0xE:
      v7 = 0xD000000000000020;
      if (v1 == 1 && (v4 | v2 | v3 | v5) == 0)
      {
        v7 = 0xD000000000000016;
      }

      if (v4 | v2 | v1 | v3 | v5)
      {
        return v7;
      }

      else
      {
        return 0xD000000000000018;
      }

    default:
      sub_1C7C7D794();

      v6 = 0x73694D2065707954;
LABEL_20:
      v20 = v6;
LABEL_29:
      v17 = v1;
      v18 = v2;
LABEL_30:
      MEMORY[0x1CCA6B380](v17, v18);
      return v20;
  }
}

unint64_t JPKIInternalTypes.InternalError.errorDescription.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  return JPKIInternalTypes.InternalError.localizedDescription.getter();
}

unint64_t sub_1C7C035E0(char a1)
{
  result = 0x6D73694D65707974;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
    case 10:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x797274656D6F6962;
      break;
    case 5:
      result = 0x6C616E7265746E69;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x61766E4973736170;
      break;
    case 9:
      result = 0x61467463656C6573;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0x46676E696E676973;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x456E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7C0383C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x43726F727245616CLL && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C038C8(uint64_t a1)
{
  v2 = sub_1C7C0611C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03904(uint64_t a1)
{
  v2 = sub_1C7C0611C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03940()
{
  if (*v0)
  {
    result = 0x6369666974726563;
  }

  else
  {
    result = 7956599;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C03980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7956599 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xED00006449657461)
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

uint64_t sub_1C7C03A64(uint64_t a1)
{
  v2 = sub_1C7C05F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03AA0(uint64_t a1)
{
  v2 = sub_1C7C05F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C10DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C03B18(uint64_t a1)
{
  v2 = sub_1C7C05C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03B54(uint64_t a1)
{
  v2 = sub_1C7C05C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03B90(uint64_t a1)
{
  v2 = sub_1C7C06170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03BCC(uint64_t a1)
{
  v2 = sub_1C7C06170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03C08(uint64_t a1)
{
  v2 = sub_1C7C061C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03C44(uint64_t a1)
{
  v2 = sub_1C7C061C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x526465776F6C6C61 && a2 == 0xEE00736569727465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C03D34(uint64_t a1)
{
  v2 = sub_1C7C05E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03D70(uint64_t a1)
{
  v2 = sub_1C7C05E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03DAC(uint64_t a1)
{
  v2 = sub_1C7C060C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03DE8(uint64_t a1)
{
  v2 = sub_1C7C060C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03E24()
{
  if (*v0)
  {
    result = 7956599;
  }

  else
  {
    result = 0x6F6974617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C03E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7956599 && a2 == 0xE300000000000000)
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

uint64_t sub_1C7C03F40(uint64_t a1)
{
  v2 = sub_1C7C05ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03F7C(uint64_t a1)
{
  v2 = sub_1C7C05ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03FC8(uint64_t a1)
{
  v2 = sub_1C7C05D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04004(uint64_t a1)
{
  v2 = sub_1C7C05D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7C04040()
{
  v1 = 0x444973736170;
  if (*v0 != 1)
  {
    v1 = 0x496465776F6C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C7C040A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C11360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C040C8(uint64_t a1)
{
  v2 = sub_1C7C06020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04104(uint64_t a1)
{
  v2 = sub_1C7C06020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04140(uint64_t a1)
{
  v2 = sub_1C7C05FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0417C(uint64_t a1)
{
  v2 = sub_1C7C05FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C041CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444973736170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C04250(uint64_t a1)
{
  v2 = sub_1C7C06074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0428C(uint64_t a1)
{
  v2 = sub_1C7C06074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C042E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001C7C9DB60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C7C04378(uint64_t a1)
{
  v2 = sub_1C7C05D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C043B4(uint64_t a1)
{
  v2 = sub_1C7C05D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C043F0()
{
  if (*v0)
  {
    return 7956599;
  }

  else
  {
    return 6580577;
  }
}

uint64_t sub_1C7C04414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7956599 && a2 == 0xE300000000000000)
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

uint64_t sub_1C7C044F0(uint64_t a1)
{
  v2 = sub_1C7C05F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0452C(uint64_t a1)
{
  v2 = sub_1C7C05F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7956599 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C045F0(uint64_t a1)
{
  v2 = sub_1C7C05DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0462C(uint64_t a1)
{
  v2 = sub_1C7C05DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04668(uint64_t a1)
{
  v2 = sub_1C7C0626C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C046A4(uint64_t a1)
{
  v2 = sub_1C7C0626C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C046E0(uint64_t a1)
{
  v2 = sub_1C7C05CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0471C(uint64_t a1)
{
  v2 = sub_1C7C05CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04758(uint64_t a1)
{
  v2 = sub_1C7C05E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04794(uint64_t a1)
{
  v2 = sub_1C7C05E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C047D0(uint64_t a1)
{
  v2 = sub_1C7C06218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0480C(uint64_t a1)
{
  v2 = sub_1C7C06218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.InternalError.encode(to:)(void *a1)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636A8, &qword_1C7C8A478);
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v77 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636B0, &qword_1C7C8A480);
  v98 = *(v126 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v77 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636B8, &qword_1C7C8A488);
  v97 = *(v124 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v77 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636C0, &qword_1C7C8A490);
  v96 = *(v122 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v77 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636C8, &qword_1C7C8A498);
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v77 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636D0, &qword_1C7C8A4A0);
  v94 = *(v119 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v77 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636D8, &qword_1C7C8A4A8);
  v95 = *(v120 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v77 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636E0, &qword_1C7C8A4B0);
  v93 = *(v116 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v77 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636E8, &qword_1C7C8A4B8);
  v92 = *(v114 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v77 - v20;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636F0, &qword_1C7C8A4C0);
  v90 = *(v110 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v77 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636F8, &qword_1C7C8A4C8);
  v91 = *(v113 - 8);
  v23 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v77 - v24;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263700, &qword_1C7C8A4D0);
  v89 = *(v108 - 8);
  v25 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v77 - v26;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263708, &qword_1C7C8A4D8);
  v105 = *(v106 - 8);
  v27 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v77 - v28;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263710, &qword_1C7C8A4E0);
  v102 = *(v103 - 8);
  v29 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v77 - v30;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263718, &qword_1C7C8A4E8);
  v84 = *(v85 - 8);
  v31 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v77 - v32;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263720, &qword_1C7C8A4F0);
  v87 = *(v88 - 8);
  v33 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v77 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263728, &qword_1C7C8A4F8);
  v100 = *(v35 - 8);
  v36 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263730, &qword_1C7C8A500);
  v99 = *(v39 - 8);
  v40 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v77 - v41;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263738, &qword_1C7C8A508);
  v131 = *(v134 - 8);
  v43 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v45 = &v77 - v44;
  v46 = v1[1];
  v132 = *v1;
  v47 = v1[2];
  v129 = v1[3];
  v130 = v46;
  v127 = v1[4];
  v128 = v47;
  v48 = *(v1 + 40);
  v49 = a1;
  v51 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(v49, v51);
  sub_1C7C05C84();
  v133 = v45;
  sub_1C7C7DBA4();
  switch(v48)
  {
    case 1:
      LOBYTE(v136) = 1;
      sub_1C7C06218();
      v63 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      sub_1C7C7DA14();
      (*(v100 + 8))(v38, v35);
      v64 = *(v131 + 8);
      v65 = v63;
      return v64(v65, v52);
    case 2:
      LOBYTE(v136) = 4;
      sub_1C7C0611C();
      v58 = v101;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v103;
      sub_1C7C7DA34();
      v60 = &v134;
      goto LABEL_28;
    case 3:
      LOBYTE(v136) = 5;
      sub_1C7C060C8();
      v58 = v104;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v106;
      sub_1C7C7DA14();
      v60 = &v137;
      goto LABEL_28;
    case 4:
      LOBYTE(v136) = 6;
      sub_1C7C06074();
      v58 = v107;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v108;
      sub_1C7C7DA14();
      v60 = &v121;
      goto LABEL_28;
    case 5:
      LOBYTE(v136) = 7;
      sub_1C7C06020();
      v66 = v111;
      v68 = v133;
      v67 = v134;
      sub_1C7C7D9E4();
      LOBYTE(v136) = 0;
      v69 = v113;
      v70 = v135;
      sub_1C7C7DA14();
      if (!v70)
      {
        LOBYTE(v136) = 1;
        sub_1C7C7DA14();
        v136 = v127;
        v138 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637A0, &qword_1C7C8A510);
        sub_1C7C080B4(&qword_1EC2637A8);
        sub_1C7C7DA44();
      }

      (*(v91 + 8))(v66, v69);
      return (*(v131 + 8))(v68, v67);
    case 6:
      LOBYTE(v136) = 8;
      sub_1C7C05FCC();
      v58 = v109;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v110;
      sub_1C7C7DA14();
      v60 = &v122;
      goto LABEL_28;
    case 7:
      LOBYTE(v136) = 9;
      sub_1C7C05F78();
      v58 = v112;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v136 = v132;
      v137 = v130;
      v138 = 0;
      sub_1C7BED7DC();
      v59 = v114;
      v62 = v135;
      sub_1C7C7DA44();
      if (!v62)
      {
        LOBYTE(v136) = 1;
        sub_1C7C7DA14();
      }

      v60 = &v124;
      goto LABEL_28;
    case 8:
      LOBYTE(v136) = 10;
      sub_1C7C05F24();
      v58 = v115;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      LOBYTE(v136) = 0;
      v59 = v116;
      v72 = v135;
      sub_1C7C7DA14();
      if (!v72)
      {
        LOBYTE(v136) = 1;
        sub_1C7C7DA14();
      }

      v60 = &v125;
      goto LABEL_28;
    case 9:
      LOBYTE(v136) = 11;
      sub_1C7C05ED0();
      v58 = v118;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      LOBYTE(v136) = 0;
      v59 = v120;
      v61 = v135;
      sub_1C7C7DA14();
      if (!v61)
      {
        LOBYTE(v136) = 1;
        sub_1C7C7DA14();
      }

      v60 = &v127;
      goto LABEL_28;
    case 10:
      LOBYTE(v136) = 12;
      sub_1C7C05E7C();
      v58 = v117;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v119;
      sub_1C7C7DA34();
      v60 = &v126;
      goto LABEL_28;
    case 11:
      LOBYTE(v136) = 14;
      sub_1C7C05DD4();
      v58 = v121;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v122;
      sub_1C7C7DA14();
      v60 = &v128;
      goto LABEL_28;
    case 12:
      LOBYTE(v136) = 15;
      sub_1C7C05D80();
      v58 = v123;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v124;
      sub_1C7C7DA14();
      v60 = &v129;
      goto LABEL_28;
    case 13:
      LOBYTE(v136) = 16;
      sub_1C7C05D2C();
      v58 = v125;
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      v59 = v126;
      sub_1C7C7DA14();
      v60 = &v130;
LABEL_28:
      (*(*(v60 - 32) + 8))(v58, v59);
      goto LABEL_29;
    case 14:
      if (!(v128 | v130 | v132 | v129 | v127))
      {
        LOBYTE(v136) = 2;
        sub_1C7C061C4();
        v73 = v86;
        v57 = v133;
        v56 = v134;
        sub_1C7C7D9E4();
        (*(v87 + 8))(v73, v88);
        return (*(v131 + 8))(v57, v56);
      }

      v54 = v128 | v130 | v129 | v127;
      if (v132 == 1 && !v54)
      {
        LOBYTE(v136) = 3;
        sub_1C7C06170();
        v55 = v83;
        v57 = v133;
        v56 = v134;
        sub_1C7C7D9E4();
        (*(v84 + 8))(v55, v85);
        return (*(v131 + 8))(v57, v56);
      }

      v52 = v134;
      v74 = v133;
      if (v132 != 2 || v54)
      {
        LOBYTE(v136) = 17;
        sub_1C7C05CD8();
        v76 = v80;
        sub_1C7C7D9E4();
        (*(v81 + 8))(v76, v82);
      }

      else
      {
        LOBYTE(v136) = 13;
        sub_1C7C05E28();
        v75 = v77;
        sub_1C7C7D9E4();
        (*(v78 + 8))(v75, v79);
      }

      v64 = *(v131 + 8);
      v65 = v74;
      return v64(v65, v52);
    default:
      LOBYTE(v136) = 0;
      sub_1C7C0626C();
      v53 = v133;
      v52 = v134;
      sub_1C7C7D9E4();
      sub_1C7C7DA14();
      (*(v99 + 8))(v42, v39);
LABEL_29:
      v64 = *(v131 + 8);
      v65 = v53;
      return v64(v65, v52);
  }
}

unint64_t sub_1C7C05C84()
{
  result = qword_1EC263740;
  if (!qword_1EC263740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263740);
  }

  return result;
}

unint64_t sub_1C7C05CD8()
{
  result = qword_1EC263748;
  if (!qword_1EC263748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263748);
  }

  return result;
}

unint64_t sub_1C7C05D2C()
{
  result = qword_1EC263750;
  if (!qword_1EC263750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263750);
  }

  return result;
}

unint64_t sub_1C7C05D80()
{
  result = qword_1EC263758;
  if (!qword_1EC263758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263758);
  }

  return result;
}

unint64_t sub_1C7C05DD4()
{
  result = qword_1EC263760;
  if (!qword_1EC263760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263760);
  }

  return result;
}

unint64_t sub_1C7C05E28()
{
  result = qword_1EC263768;
  if (!qword_1EC263768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263768);
  }

  return result;
}

unint64_t sub_1C7C05E7C()
{
  result = qword_1EC263770;
  if (!qword_1EC263770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263770);
  }

  return result;
}

unint64_t sub_1C7C05ED0()
{
  result = qword_1EC263778;
  if (!qword_1EC263778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263778);
  }

  return result;
}

unint64_t sub_1C7C05F24()
{
  result = qword_1EC263780;
  if (!qword_1EC263780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263780);
  }

  return result;
}

unint64_t sub_1C7C05F78()
{
  result = qword_1EC263788;
  if (!qword_1EC263788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263788);
  }

  return result;
}

unint64_t sub_1C7C05FCC()
{
  result = qword_1EC263790;
  if (!qword_1EC263790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263790);
  }

  return result;
}

unint64_t sub_1C7C06020()
{
  result = qword_1EC263798;
  if (!qword_1EC263798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263798);
  }

  return result;
}

unint64_t sub_1C7C06074()
{
  result = qword_1EC2637B0;
  if (!qword_1EC2637B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637B0);
  }

  return result;
}

unint64_t sub_1C7C060C8()
{
  result = qword_1EC2637B8;
  if (!qword_1EC2637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637B8);
  }

  return result;
}

unint64_t sub_1C7C0611C()
{
  result = qword_1EC2637C0;
  if (!qword_1EC2637C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637C0);
  }

  return result;
}

unint64_t sub_1C7C06170()
{
  result = qword_1EC2637C8;
  if (!qword_1EC2637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637C8);
  }

  return result;
}

unint64_t sub_1C7C061C4()
{
  result = qword_1EC2637D0;
  if (!qword_1EC2637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637D0);
  }

  return result;
}

unint64_t sub_1C7C06218()
{
  result = qword_1EC2637D8;
  if (!qword_1EC2637D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637D8);
  }

  return result;
}

unint64_t sub_1C7C0626C()
{
  result = qword_1EC2637E0;
  if (!qword_1EC2637E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637E0);
  }

  return result;
}

uint64_t JPKIInternalTypes.InternalError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637E8, &qword_1C7C8A518);
  v217 = *(v237 - 8);
  v3 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v181 - v4;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637F0, &qword_1C7C8A520);
  v218 = *(v219 - 8);
  v5 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v231 = &v181 - v6;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637F8, &qword_1C7C8A528);
  v215 = *(v216 - 8);
  v7 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v230 = &v181 - v8;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263800, &qword_1C7C8A530);
  v213 = *(v214 - 8);
  v9 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v229 = &v181 - v10;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263808, &qword_1C7C8A538);
  v210 = *(v211 - 8);
  v11 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v227 = &v181 - v12;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263810, &qword_1C7C8A540);
  v208 = *(v209 - 8);
  v13 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v226 = &v181 - v14;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263818, &qword_1C7C8A548);
  v206 = *(v212 - 8);
  v15 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v228 = &v181 - v16;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263820, &qword_1C7C8A550);
  v203 = *(v207 - 8);
  v17 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v225 = &v181 - v18;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263828, &qword_1C7C8A558);
  v202 = *(v205 - 8);
  v19 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v224 = &v181 - v20;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263830, &qword_1C7C8A560);
  v200 = *(v201 - 8);
  v21 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v235 = &v181 - v22;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263838, &qword_1C7C8A568);
  v204 = *(v199 - 8);
  v23 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v223 = &v181 - v24;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263840, &qword_1C7C8A570);
  v197 = *(v198 - 8);
  v25 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v234 = &v181 - v26;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263848, &qword_1C7C8A578);
  v195 = *(v196 - 8);
  v27 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v233 = &v181 - v28;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263850, &qword_1C7C8A580);
  v193 = *(v194 - 8);
  v29 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v222 = &v181 - v30;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263858, &qword_1C7C8A588);
  v191 = *(v192 - 8);
  v31 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v221 = &v181 - v32;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263860, &qword_1C7C8A590);
  v188 = *(v190 - 8);
  v33 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v220 = &v181 - v34;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263868, &qword_1C7C8A598);
  v187 = *(v189 - 8);
  v35 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v37 = &v181 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263870, &qword_1C7C8A5A0);
  v186 = *(v38 - 8);
  v39 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v181 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263878, &qword_1C7C8A5A8);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v181 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v238 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1C7C05C84();
  v49 = v239;
  sub_1C7C7DB94();
  v239 = v49;
  if (v49)
  {
LABEL_8:
    v70 = v238;
    return __swift_destroy_boxed_opaque_existential_0Tm(v70);
  }

  v182 = v41;
  v181 = v38;
  v183 = v37;
  v51 = v233;
  v50 = v234;
  v52 = v235;
  v53 = v236;
  v54 = v237;
  v184 = v43;
  v185 = v42;
  v55 = sub_1C7C7D9D4();
  v56 = (2 * *(v55 + 16)) | 1;
  v242 = v55;
  v243 = v55 + 32;
  v244 = 0;
  v245 = v56;
  v57 = sub_1C7BDF140();
  if (v244 != v245 >> 1)
  {
LABEL_6:
    v64 = sub_1C7C7D7C4();
    v65 = swift_allocError();
    v67 = v66;
    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v67 = &type metadata for JPKIInternalTypes.InternalError;
    v69 = v185;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v64);
    v239 = v65;
    swift_willThrow();
    (*(v184 + 8))(v46, v69);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v58 = v232;
  switch(v57)
  {
    case 0:
      LOBYTE(v240) = 0;
      sub_1C7C0626C();
      v59 = v182;
      v60 = v185;
      v61 = v239;
      sub_1C7C7D944();
      v239 = v61;
      if (v61)
      {
        goto LABEL_46;
      }

      v62 = v181;
      v63 = sub_1C7C7D984();
      v239 = 0;
      v158 = v63;
      v160 = v159;
      (*(v186 + 8))(v59, v62);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v161 = v158;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 0;
      goto LABEL_52;
    case 1:
      LOBYTE(v240) = 1;
      sub_1C7C06218();
      v113 = v183;
      v100 = v185;
      v114 = v239;
      sub_1C7C7D944();
      v239 = v114;
      if (v114)
      {
        goto LABEL_38;
      }

      v115 = v189;
      v116 = sub_1C7C7D984();
      v117 = v184;
      v239 = 0;
      v161 = v116;
      v160 = v166;
      (*(v187 + 8))(v113, v115);
      (*(v117 + 8))(v46, v185);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 1;
      goto LABEL_52;
    case 2:
      LOBYTE(v240) = 2;
      sub_1C7C061C4();
      v99 = v220;
      v100 = v185;
      v101 = v239;
      sub_1C7C7D944();
      v239 = v101;
      if (v101)
      {
        goto LABEL_38;
      }

      (*(v188 + 8))(v99, v190);
      (*(v184 + 8))(v46, v100);
      swift_unknownObjectRelease();
      v161 = 0;
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 14;
      goto LABEL_52;
    case 3:
      LOBYTE(v240) = 3;
      sub_1C7C06170();
      v107 = v221;
      v100 = v185;
      v108 = v239;
      sub_1C7C7D944();
      v239 = v108;
      if (v108)
      {
        goto LABEL_38;
      }

      (*(v191 + 8))(v107, v192);
      (*(v184 + 8))(v46, v100);
      swift_unknownObjectRelease();
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 14;
      v161 = 1;
      goto LABEL_52;
    case 4:
      LOBYTE(v240) = 4;
      sub_1C7C0611C();
      v87 = v222;
      v60 = v185;
      v88 = v239;
      sub_1C7C7D944();
      v239 = v88;
      if (v88)
      {
        goto LABEL_46;
      }

      v89 = v194;
      v90 = sub_1C7C7D9A4();
      v239 = 0;
      v161 = v90;
      (*(v193 + 8))(v87, v89);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 2;
      goto LABEL_52;
    case 5:
      LOBYTE(v240) = 5;
      sub_1C7C060C8();
      v119 = v51;
      v60 = v185;
      v120 = v239;
      sub_1C7C7D944();
      v239 = v120;
      if (v120)
      {
        goto LABEL_46;
      }

      v121 = v196;
      v122 = sub_1C7C7D984();
      v239 = 0;
      v161 = v122;
      v160 = v123;
      (*(v195 + 8))(v119, v121);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 3;
      goto LABEL_52;
    case 6:
      LOBYTE(v240) = 6;
      sub_1C7C06074();
      v126 = v50;
      v60 = v185;
      v127 = v239;
      sub_1C7C7D944();
      v239 = v127;
      if (v127)
      {
        goto LABEL_46;
      }

      v128 = v198;
      v129 = sub_1C7C7D984();
      v239 = 0;
      v161 = v129;
      v160 = v130;
      (*(v197 + 8))(v126, v128);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 4;
      goto LABEL_52;
    case 7:
      LOBYTE(v240) = 7;
      sub_1C7C06020();
      v109 = v223;
      v110 = v46;
      v111 = v185;
      v112 = v239;
      sub_1C7C7D944();
      v239 = v112;
      if (v112)
      {
        (*(v184 + 8))(v110, v111);
        goto LABEL_7;
      }

      LOBYTE(v240) = 0;
      v138 = v199;
      v139 = sub_1C7C7D984();
      v239 = 0;
      v160 = v151;
      v152 = v139;
      LOBYTE(v240) = 1;
      v153 = sub_1C7C7D984();
      v239 = 0;
      v154 = v204;
      v156 = v155;
      v237 = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637A0, &qword_1C7C8A510);
      v246 = 2;
      sub_1C7C080B4(&qword_1EC263880);
      v157 = v239;
      sub_1C7C7D9B4();
      v239 = v157;
      if (v157)
      {

        (*(v154 + 8))(v109, v138);
        (*(v184 + 8))(v110, v111);
        goto LABEL_7;
      }

      (*(v154 + 8))(v109, v138);
      (*(v184 + 8))(v110, v111);
      swift_unknownObjectRelease();
      v164 = v240;
      v165 = 5;
      v161 = v152;
      v162 = v237;
      v163 = v156;
      goto LABEL_55;
    case 8:
      LOBYTE(v240) = 8;
      sub_1C7C05FCC();
      v60 = v185;
      v135 = v239;
      sub_1C7C7D944();
      v239 = v135;
      if (v135)
      {
        goto LABEL_46;
      }

      v136 = v201;
      v137 = sub_1C7C7D984();
      v239 = 0;
      v161 = v137;
      v160 = v171;
      (*(v200 + 8))(v52, v136);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 6;
      goto LABEL_52;
    case 9:
      LOBYTE(v240) = 9;
      sub_1C7C05F78();
      v95 = v224;
      v83 = v185;
      v96 = v239;
      sub_1C7C7D944();
      v239 = v96;
      if (v96)
      {
        goto LABEL_43;
      }

      v246 = 0;
      sub_1C7BED744();
      v97 = v205;
      v98 = v239;
      sub_1C7C7D9B4();
      v239 = v98;
      if (v98)
      {
        (*(v202 + 8))(v95, v97);
LABEL_43:
        (*(v184 + 8))(v46, v83);
        goto LABEL_7;
      }

      v161 = v240;
      v148 = v241;
      v246 = 1;
      v149 = sub_1C7C7D984();
      v150 = (v184 + 8);
      v239 = 0;
      v172 = *(v202 + 8);
      v237 = v148;
      v173 = v149;
      v174 = v95;
      v176 = v175;
      v172(v174, v97);
      (*v150)(v46, v83);
      swift_unknownObjectRelease();
      v163 = v176;
      v162 = v173;
      v160 = v237;
      v164 = 0;
      v165 = 7;
LABEL_55:
      v70 = v238;
      v58 = v232;
      goto LABEL_53;
    case 10:
      LOBYTE(v240) = 10;
      sub_1C7C05F24();
      v131 = v225;
      v83 = v185;
      v132 = v239;
      sub_1C7C7D944();
      v239 = v132;
      if (v132)
      {
        goto LABEL_43;
      }

      LOBYTE(v240) = 0;
      v133 = v207;
      v134 = sub_1C7C7D984();
      v239 = 0;
      v168 = v167;
      v237 = v134;
      LOBYTE(v240) = 1;
      v169 = sub_1C7C7D984();
      v170 = (v184 + 8);
      v239 = 0;
      v177 = v169;
      v178 = v131;
      v180 = v179;
      (*(v203 + 8))(v178, v133);
      (*v170)(v46, v83);
      swift_unknownObjectRelease();
      v163 = v180;
      v162 = v177;
      v160 = v168;
      v164 = 0;
      v165 = 8;
      goto LABEL_54;
    case 11:
      LOBYTE(v240) = 11;
      sub_1C7C05ED0();
      v82 = v228;
      v83 = v185;
      v84 = v239;
      sub_1C7C7D944();
      v239 = v84;
      if (v84)
      {
        goto LABEL_43;
      }

      LOBYTE(v240) = 0;
      v85 = v212;
      v86 = sub_1C7C7D984();
      v239 = 0;
      v141 = v140;
      v237 = v86;
      LOBYTE(v240) = 1;
      v142 = sub_1C7C7D984();
      v143 = (v184 + 8);
      v239 = 0;
      v144 = v142;
      v145 = v82;
      v147 = v146;
      (*(v206 + 8))(v145, v85);
      (*v143)(v46, v83);
      swift_unknownObjectRelease();
      v163 = v147;
      v162 = v144;
      v160 = v141;
      v164 = 0;
      v165 = 9;
LABEL_54:
      v161 = v237;
      goto LABEL_55;
    case 12:
      LOBYTE(v240) = 12;
      sub_1C7C05E7C();
      v91 = v226;
      v60 = v185;
      v92 = v239;
      sub_1C7C7D944();
      v239 = v92;
      if (v92)
      {
        goto LABEL_46;
      }

      v93 = v209;
      v94 = sub_1C7C7D9A4();
      v239 = 0;
      v161 = v94;
      (*(v208 + 8))(v91, v93);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 10;
      goto LABEL_52;
    case 13:
      LOBYTE(v240) = 13;
      sub_1C7C05E28();
      v124 = v227;
      v100 = v185;
      v125 = v239;
      sub_1C7C7D944();
      v239 = v125;
      if (v125)
      {
        goto LABEL_38;
      }

      (*(v210 + 8))(v124, v211);
      (*(v184 + 8))(v46, v100);
      swift_unknownObjectRelease();
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 14;
      v161 = 2;
      goto LABEL_52;
    case 14:
      LOBYTE(v240) = 14;
      sub_1C7C05DD4();
      v77 = v229;
      v60 = v185;
      v78 = v239;
      sub_1C7C7D944();
      v239 = v78;
      if (v78)
      {
        goto LABEL_46;
      }

      v79 = v214;
      v80 = sub_1C7C7D984();
      v239 = 0;
      v161 = v80;
      v160 = v81;
      (*(v213 + 8))(v77, v79);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 11;
      goto LABEL_52;
    case 15:
      LOBYTE(v240) = 15;
      sub_1C7C05D80();
      v102 = v230;
      v60 = v185;
      v103 = v239;
      sub_1C7C7D944();
      v239 = v103;
      if (v103)
      {
        goto LABEL_46;
      }

      v104 = v216;
      v105 = sub_1C7C7D984();
      v239 = 0;
      v161 = v105;
      v160 = v106;
      (*(v215 + 8))(v102, v104);
      (*(v184 + 8))(v46, v60);
      swift_unknownObjectRelease();
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 12;
      goto LABEL_52;
    case 16:
      LOBYTE(v240) = 16;
      sub_1C7C05D2C();
      v72 = v231;
      v60 = v185;
      v73 = v239;
      sub_1C7C7D944();
      v239 = v73;
      if (!v73)
      {
        v74 = v219;
        v75 = sub_1C7C7D984();
        v239 = 0;
        v161 = v75;
        v160 = v76;
        (*(v218 + 8))(v72, v74);
        (*(v184 + 8))(v46, v60);
        swift_unknownObjectRelease();
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 13;
        goto LABEL_52;
      }

LABEL_46:
      (*(v184 + 8))(v46, v60);
      goto LABEL_7;
    case 17:
      LOBYTE(v240) = 17;
      sub_1C7C05CD8();
      v100 = v185;
      v118 = v239;
      sub_1C7C7D944();
      v239 = v118;
      if (v118)
      {
LABEL_38:
        (*(v184 + 8))(v46, v100);
        goto LABEL_7;
      }

      (*(v217 + 8))(v53, v54);
      (*(v184 + 8))(v46, v100);
      swift_unknownObjectRelease();
      v160 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 14;
      v161 = 3;
LABEL_52:
      v70 = v238;
LABEL_53:
      *v58 = v161;
      *(v58 + 8) = v160;
      *(v58 + 16) = v162;
      *(v58 + 24) = v163;
      *(v58 + 32) = v164;
      *(v58 + 40) = v165;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v70);
}

uint64_t sub_1C7C080B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2637A0, &qword_1C7C8A510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C08150()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  return JPKIInternalTypes.InternalError.localizedDescription.getter();
}

_BYTE *JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t JPKIInternalTypes.CertificateData.__allocating_init(certificateData:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void *JPKIInternalTypes.DigitalSignature.__allocating_init(certificate:signature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t JPKIXPCRequest.passIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void JPKIXPCRequest.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 56);
  *(a1 + 40) = v7;
  sub_1C7C08280(v2, v3, v4, v5, v6, v7);
}

void sub_1C7C08280(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6)
{
  if (a6 == 2)
  {

    v7 = a5 & 1;
    a2 = a3;
    v9 = a4;
LABEL_9:

    sub_1C7C08334(a2, v9, v7);
    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    v7 = a4 & 1;
    v9 = a3;
    goto LABEL_9;
  }
}

uint64_t sub_1C7C08334(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C7BED654(a1, a2);
  }

  else
  {
  }
}

uint64_t JPKIXPCRequest.JPKIOperation.description.getter()
{
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      return 1852270963;
    }

    else if (*(v0 + 24) | *(v0 + 32) | *v0 | *(v0 + 16) | *(v0 + 8))
    {
      return 0x4C4341746567;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 40))
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7472654364616572;
  }
}

uint64_t sub_1C7C08408(uint64_t a1)
{
  v2 = sub_1C7C09188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08444(uint64_t a1)
{
  v2 = sub_1C7C09188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7C08480()
{
  v1 = *v0;
  v2 = 0x7472654364616572;
  v3 = 1852270963;
  if (v1 != 3)
  {
    v3 = 0x4C4341746567;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001CLL;
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

uint64_t sub_1C7C08520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C11488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C08548(uint64_t a1)
{
  v2 = sub_1C7C09038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08584(uint64_t a1)
{
  v2 = sub_1C7C09038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C085C0(uint64_t a1)
{
  v2 = sub_1C7C0908C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C085FC(uint64_t a1)
{
  v2 = sub_1C7C0908C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C08638(uint64_t a1)
{
  v2 = sub_1C7C09284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08674(uint64_t a1)
{
  v2 = sub_1C7C09284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C086B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_1C7C0877C(uint64_t a1)
{
  v2 = sub_1C7C09230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C087B8(uint64_t a1)
{
  v2 = sub_1C7C09230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C087F4(uint64_t a1)
{
  v2 = sub_1C7C090E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08830(uint64_t a1)
{
  v2 = sub_1C7C090E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCRequest.JPKIOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263888, &qword_1C7C8A5B0);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263890, &qword_1C7C8A5B8);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263898, &qword_1C7C8A5C0);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638A0, &qword_1C7C8A5C8);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638A8, &qword_1C7C8A5D0);
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638B0, &qword_1C7C8A5D8);
  v21 = *(v20 - 8);
  v60 = v20;
  v61 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = *v1;
  v23 = v1[1];
  v25 = v1[3];
  v58 = v1[2];
  v59 = v23;
  v57 = v25;
  v56 = v1[4];
  v26 = *(v1 + 40);
  v28 = a1[3];
  v27 = a1[4];
  v29 = a1;
  v31 = &v43 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  sub_1C7C09038();
  sub_1C7C7DBA4();
  if (v26 <= 1)
  {
    if (!v26)
    {
      LOBYTE(v63) = 1;
      sub_1C7C09230();
      v32 = v60;
      sub_1C7C7D9E4();
      LOBYTE(v63) = v24 & 1;
      v66 = 0;
      sub_1C7C0134C();
      v33 = v49;
      v34 = v62;
      sub_1C7C7DA44();
      if (!v34)
      {
        v63 = v59;
        v64 = v58;
        v65 = v57 & 1;
        v66 = 1;
        sub_1C7C09134();
        sub_1C7C7DA44();
      }

      (*(v48 + 8))(v15, v33);
      return (*(v61 + 8))(v31, v32);
    }

    LOBYTE(v63) = 2;
    sub_1C7C09188();
    v35 = v50;
    v32 = v60;
    sub_1C7C7D9E4();
    LOBYTE(v63) = v24 & 1;
    v66 = 0;
    sub_1C7C0134C();
    v36 = v52;
    v39 = v62;
    sub_1C7C7DA44();
    if (!v39)
    {
      v63 = v59;
      v64 = v58;
      v66 = 1;
      sub_1C7C091DC();
      sub_1C7C7DA44();
      v63 = v57;
      v64 = v56;
      v66 = 2;
      sub_1C7C7DA44();
    }

    v38 = v51;
LABEL_15:
    (*(v38 + 8))(v35, v36);
    return (*(v61 + 8))(v31, v32);
  }

  if (v26 == 2)
  {
    LOBYTE(v63) = 3;
    sub_1C7C090E0();
    v35 = v53;
    v32 = v60;
    sub_1C7C7D9E4();
    v63 = v24;
    v66 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
    sub_1C7C09E3C(&qword_1EC2638D8, sub_1C7BED7DC);
    v36 = v55;
    v37 = v62;
    sub_1C7C7DA44();
    if (!v37)
    {
      LOBYTE(v63) = v59 & 1;
      v66 = 1;
      sub_1C7C0134C();
      sub_1C7C7DA44();
      v63 = v58;
      v64 = v57;
      v65 = v56 & 1;
      v66 = 2;
      sub_1C7C09134();
      sub_1C7C7DA44();
    }

    v38 = v54;
    goto LABEL_15;
  }

  if (v58 | v59 | v24 | v57 | v56)
  {
    LOBYTE(v63) = 4;
    sub_1C7C0908C();
    v41 = v45;
    v42 = v60;
    sub_1C7C7D9E4();
    (*(v46 + 8))(v41, v47);
  }

  else
  {
    LOBYTE(v63) = 0;
    sub_1C7C09284();
    v42 = v60;
    sub_1C7C7D9E4();
    (*(v44 + 8))(v19, v16);
  }

  return (*(v61 + 8))(v31, v42);
}

unint64_t sub_1C7C09038()
{
  result = qword_1EC2638B8;
  if (!qword_1EC2638B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638B8);
  }

  return result;
}

unint64_t sub_1C7C0908C()
{
  result = qword_1EC2638C0;
  if (!qword_1EC2638C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638C0);
  }

  return result;
}

unint64_t sub_1C7C090E0()
{
  result = qword_1EC2638C8;
  if (!qword_1EC2638C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638C8);
  }

  return result;
}

unint64_t sub_1C7C09134()
{
  result = qword_1EC2638E0;
  if (!qword_1EC2638E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638E0);
  }

  return result;
}

unint64_t sub_1C7C09188()
{
  result = qword_1EC2638E8;
  if (!qword_1EC2638E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638E8);
  }

  return result;
}

unint64_t sub_1C7C091DC()
{
  result = qword_1EC2638F0;
  if (!qword_1EC2638F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638F0);
  }

  return result;
}

unint64_t sub_1C7C09230()
{
  result = qword_1EC2638F8;
  if (!qword_1EC2638F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638F8);
  }

  return result;
}

unint64_t sub_1C7C09284()
{
  result = qword_1EC263900;
  if (!qword_1EC263900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263900);
  }

  return result;
}

uint64_t JPKIXPCRequest.JPKIOperation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263908, &qword_1C7C8A5E8);
  v62 = *(v66 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v73 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263910, &qword_1C7C8A5F0);
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v60 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263918, &qword_1C7C8A5F8);
  v69 = *(v65 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v60 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263920, &qword_1C7C8A600);
  v64 = *(v63 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263928, &qword_1C7C8A608);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263930, &qword_1C7C8A610);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1C7C09038();
  v25 = v75;
  sub_1C7C7DB94();
  if (v25)
  {
    goto LABEL_23;
  }

  v75 = 0;
  v26 = v17;
  v60 = v14;
  v28 = v72;
  v27 = v73;
  v29 = v71;
  v30 = sub_1C7C7D9D4();
  v31 = (2 * *(v30 + 16)) | 1;
  v81 = v30;
  v82 = v30 + 32;
  v83 = 0;
  v84 = v31;
  v32 = sub_1C7BEAAD0();
  if (v32 == 5 || v83 != v84 >> 1)
  {
    v35 = v22;
    v36 = sub_1C7C7D7C4();
    swift_allocError();
    v37 = v18;
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v39 = &type metadata for JPKIXPCRequest.JPKIOperation;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v19 + 8))(v35, v37);
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v57 = v74;
    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  if (v32 <= 1u)
  {
    if (v32)
    {
      LOBYTE(v78) = 1;
      sub_1C7C09230();
      v46 = v75;
      sub_1C7C7D944();
      if (v46)
      {
        goto LABEL_21;
      }

      LOBYTE(v78) = 0;
      sub_1C7C0155C();
      v47 = v63;
      sub_1C7C7D9B4();
      v58 = v76;
      v86 = 1;
      sub_1C7C09EB4();
      sub_1C7C7D9B4();
      (*(v64 + 8))(v13, v47);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v56 = 0;
      v55 = 0;
      v52 = v78;
      v54 = v79;
      v53 = v80;
    }

    else
    {
      LOBYTE(v78) = 0;
      sub_1C7C09284();
      v41 = v75;
      sub_1C7C7D944();
      if (v41)
      {
        goto LABEL_21;
      }

      (*(v61 + 8))(v26, v60);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v58 = 0;
      v52 = 0;
      v54 = 0;
      v53 = 0;
      v56 = 0;
      v55 = 3;
    }

LABEL_13:
    v57 = v74;
    v59 = v70;
    goto LABEL_18;
  }

  if (v32 == 2)
  {
    LOBYTE(v78) = 2;
    sub_1C7C09188();
    v42 = v29;
    v43 = v75;
    sub_1C7C7D944();
    if (v43)
    {
      goto LABEL_21;
    }

    LOBYTE(v78) = 0;
    sub_1C7C0155C();
    v44 = v65;
    sub_1C7C7D9B4();
    v73 = v18;
    v58 = v86;
    LOBYTE(v76) = 1;
    sub_1C7C09F08();
    sub_1C7C7D9B4();
    v75 = v22;
    v52 = v78;
    v54 = v79;
    v85 = 2;
    sub_1C7C7D9B4();
    (*(v69 + 8))(v42, v44);
    (*(v19 + 8))(v75, v73);
    swift_unknownObjectRelease();
    v53 = v76;
    v56 = v77;
    v55 = 1;
    goto LABEL_13;
  }

  if (v32 != 3)
  {
    v59 = v70;
    LOBYTE(v78) = 4;
    sub_1C7C0908C();
    v45 = v75;
    sub_1C7C7D944();
    if (!v45)
    {
      (*(v62 + 8))(v27, v66);
      (*(v19 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v52 = 0;
      v54 = 0;
      v53 = 0;
      v56 = 0;
      v55 = 3;
      v58 = 1;
      v57 = v74;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  LOBYTE(v78) = 3;
  sub_1C7C090E0();
  v33 = v75;
  sub_1C7C7D944();
  if (v33)
  {
LABEL_21:
    (*(v19 + 8))(v22, v18);
    goto LABEL_22;
  }

  v75 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
  LOBYTE(v78) = 0;
  sub_1C7C09E3C(&qword_1EC263938, sub_1C7BED744);
  v34 = v67;
  sub_1C7C7D9B4();
  v48 = v76;
  LOBYTE(v78) = 1;
  sub_1C7C0155C();
  sub_1C7C7D9B4();
  v49 = v75;
  v73 = v48;
  v51 = v28;
  v52 = v86;
  v85 = 2;
  sub_1C7C09EB4();
  sub_1C7C7D9B4();
  (*(v68 + 8))(v51, v34);
  (*(v19 + 8))(v49, v18);
  swift_unknownObjectRelease();
  v54 = v78;
  v53 = v79;
  v55 = 2;
  v56 = v80;
  v58 = v73;
  v57 = v74;
  v59 = v70;
LABEL_18:
  *v59 = v58;
  *(v59 + 8) = v52;
  *(v59 + 16) = v54;
  *(v59 + 24) = v53;
  *(v59 + 32) = v56;
  *(v59 + 40) = v55;
  return __swift_destroy_boxed_opaque_existential_0Tm(v57);
}

uint64_t sub_1C7C09E3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C09EB4()
{
  result = qword_1EC263940;
  if (!qword_1EC263940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263940);
  }

  return result;
}

unint64_t sub_1C7C09F08()
{
  result = qword_1EC263948;
  if (!qword_1EC263948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263948);
  }

  return result;
}

uint64_t sub_1C7C09F8C()
{
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      return 1852270963;
    }

    else if (*(v0 + 24) | *(v0 + 32) | *v0 | *(v0 + 16) | *(v0 + 8))
    {
      return 0x4C4341746567;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 40))
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7472654364616572;
  }
}

unint64_t JPKIXPCRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](v1, v2);
  MEMORY[0x1CCA6B380](0x6974617265706F20, 0xEB00000000206E6FLL);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = 0xE400000000000000;
      v9 = 1852270963;
    }

    else
    {
      v11 = v5 | v4 | v3 | v6 | v7;
      if (v11)
      {
        v9 = 0x4C4341746567;
      }

      else
      {
        v9 = 0xD00000000000001CLL;
      }

      if (v11)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x80000001C7C9D930;
      }
    }
  }

  else
  {
    if (v8)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x7472654364616572;
    }

    if (v8)
    {
      v10 = 0x80000001C7C9D910;
    }

    else
    {
      v10 = 0xEF65746163696669;
    }
  }

  MEMORY[0x1CCA6B380](v9, v10);

  return 0xD000000000000010;
}

uint64_t sub_1C7C0A1D0()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x6E65644973736170;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C0A21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644973736170 && a2 == 0xEE00726569666974;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
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

uint64_t sub_1C7C0A308(uint64_t a1)
{
  v2 = sub_1C7C0A558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0A344(uint64_t a1)
{
  v2 = sub_1C7C0A558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263950, &qword_1C7C8A618);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v11 = v1[4];
  v16 = v1[5];
  v17 = v11;
  v15 = v1[6];
  v27 = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0A558();
  sub_1C7C7DBA4();
  LOBYTE(v21) = 0;
  v13 = v20;
  sub_1C7C7DA14();
  if (!v13)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v27;
    v28 = 1;
    sub_1C7C08280(v19, v18, v17, v16, v15, v27);
    sub_1C7C0A5AC();
    sub_1C7C7DA44();
    sub_1C7C0A600(v21, v22, v23, v24, v25, v26);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1C7C0A558()
{
  result = qword_1EC263958;
  if (!qword_1EC263958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263958);
  }

  return result;
}

unint64_t sub_1C7C0A5AC()
{
  result = qword_1EC263960;
  if (!qword_1EC263960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263960);
  }

  return result;
}

void sub_1C7C0A600(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6)
{
  if (a6 == 2)
  {

    v8 = a5 & 1;
    a2 = a3;
    v10 = a4;
LABEL_9:

    sub_1C7C0A6B4(a2, v10, v8);
    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    v8 = a4 & 1;
    v10 = a3;
    goto LABEL_9;
  }
}

uint64_t sub_1C7C0A6B4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C7BDF778(a1, a2);
  }

  else
  {
  }
}

uint64_t JPKIXPCRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263968, &qword_1C7C8A620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0A558();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v24[0]) = 0;
  v11 = sub_1C7C7D984();
  v13 = v12;
  v14 = v11;
  v34 = 1;
  sub_1C7C0A938();
  sub_1C7C7D9B4();
  (*(v6 + 8))(v9, v5);
  v15 = v29;
  v16 = v30;
  v21 = v31;
  v33 = v32;
  *&v22[0] = v14;
  *(&v22[0] + 1) = v13;
  v22[1] = v29;
  *v23 = v30;
  *&v23[16] = v31;
  v23[24] = v32;
  v17 = v22[0];
  v18 = v29;
  v19 = v30;
  *(a2 + 41) = *&v23[9];
  a2[1] = v18;
  a2[2] = v19;
  *a2 = v17;
  sub_1C7C0A98C(v22, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v24[0] = v14;
  v24[1] = v13;
  v25 = v15;
  v26 = v16;
  v27 = v21;
  v28 = v33;
  return sub_1C7C0A9C4(v24);
}

unint64_t sub_1C7C0A938()
{
  result = qword_1EC263970;
  if (!qword_1EC263970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263970);
  }

  return result;
}

uint64_t sub_1C7C0AA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68747541747865 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C0AAC8(uint64_t a1)
{
  v2 = sub_1C7C0B09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AB04(uint64_t a1)
{
  v2 = sub_1C7C0B09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0AB40()
{
  if (*v0)
  {
    return 0x797274656D6F6962;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1C7C0AB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xE800000000000000)
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

uint64_t sub_1C7C0AC50(uint64_t a1)
{
  v2 = sub_1C7C0B048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AC8C(uint64_t a1)
{
  v2 = sub_1C7C0B048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0ACC8(uint64_t a1)
{
  v2 = sub_1C7C0B0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AD04(uint64_t a1)
{
  v2 = sub_1C7C0B0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.UserAuthenticationInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263978, &qword_1C7C8A628);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263980, &qword_1C7C8A630);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263988, &qword_1C7C8A638);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v29 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0B048();
  sub_1C7C7DBA4();
  if (v16)
  {
    LOBYTE(v30) = 1;
    sub_1C7C0B09C();
    v18 = v25;
    sub_1C7C7D9E4();
    v30 = v28;
    v31 = v29;
    sub_1C7BED7DC();
    v19 = v27;
    sub_1C7C7DA44();
    (*(v26 + 8))(v18, v19);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1C7C0B0F0();
    sub_1C7C7D9E4();
    v20 = v24;
    sub_1C7C7DA14();
    (*(v23 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1C7C0B048()
{
  result = qword_1EC263990;
  if (!qword_1EC263990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263990);
  }

  return result;
}

unint64_t sub_1C7C0B09C()
{
  result = qword_1EC263998;
  if (!qword_1EC263998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263998);
  }

  return result;
}

unint64_t sub_1C7C0B0F0()
{
  result = qword_1EC2639A0;
  if (!qword_1EC2639A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2639A0);
  }

  return result;
}

uint64_t JPKIInternalTypes.UserAuthenticationInternal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639A8, &qword_1C7C8A640);
  v42 = *(v40 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v37[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639B0, &qword_1C7C8A648);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639B8, &qword_1C7C8A650);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1C7C0B048();
  v17 = v44;
  sub_1C7C7DB94();
  if (!v17)
  {
    v39 = v6;
    v44 = v11;
    v18 = v43;
    v19 = v14;
    v20 = sub_1C7C7D9D4();
    v21 = (2 * *(v20 + 16)) | 1;
    v47 = v20;
    v48 = v20 + 32;
    v49 = 0;
    v50 = v21;
    v22 = sub_1C7BEAACC();
    v23 = v10;
    if (v22 == 2 || v49 != v50 >> 1)
    {
      v28 = sub_1C7C7D7C4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v30 = &type metadata for JPKIInternalTypes.UserAuthenticationInternal;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v44 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v22;
      v24 = v44;
      if (v22)
      {
        LOBYTE(v45) = 1;
        sub_1C7C0B09C();
        sub_1C7C7D944();
        sub_1C7BED744();
        v25 = v40;
        sub_1C7C7D9B4();
        (*(v42 + 8))(v5, v25);
        (*(v24 + 8))(v14, v23);
        swift_unknownObjectRelease();
        v26 = v45;
        v27 = v46;
      }

      else
      {
        LOBYTE(v45) = 0;
        sub_1C7C0B0F0();
        v33 = v9;
        sub_1C7C7D944();
        v34 = v23;
        v35 = v39;
        v26 = sub_1C7C7D984();
        v27 = v36;
        (*(v41 + 8))(v33, v35);
        (*(v44 + 8))(v19, v34);
        swift_unknownObjectRelease();
      }

      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v38 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

uint64_t JPKIXPCResponse.description.getter()
{
  v1 = *(v0 + 40) >> 5;
  if (v1 > 2)
  {
    v3 = 0x4C4341746567;
    if (v1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (v1 == 3)
    {
      return 1852270963;
    }

    else
    {
      return v3;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0x7472654364616572;
    }
  }

  else
  {
    v5 = *v0;
    v6 = v0[1];
    v7 = *(v0 + 4);
    v4 = JPKIInternalTypes.InternalError.localizedDescription.getter();
    MEMORY[0x1CCA6B380](v4);

    return 0x2021726F727245;
  }
}

uint64_t sub_1C7C0B7C0(uint64_t a1)
{
  v2 = sub_1C7C0C638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B7FC(uint64_t a1)
{
  v2 = sub_1C7C0C638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7C0B838()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 1852270963;
  if (v1 != 4)
  {
    v3 = 0x4C4341746567;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 != 1)
  {
    v4 = 0x7472654364616572;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1C7C0B8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C11748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C0B928(uint64_t a1)
{
  v2 = sub_1C7C0C47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B964(uint64_t a1)
{
  v2 = sub_1C7C0C47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0B9A0(uint64_t a1)
{
  v2 = sub_1C7C0C788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B9DC(uint64_t a1)
{
  v2 = sub_1C7C0C788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BA18(uint64_t a1)
{
  v2 = sub_1C7C0C4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BA54(uint64_t a1)
{
  v2 = sub_1C7C0C4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BA90(uint64_t a1)
{
  v2 = sub_1C7C0C6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BACC(uint64_t a1)
{
  v2 = sub_1C7C0C6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BB08(uint64_t a1)
{
  v2 = sub_1C7C0C68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BB44(uint64_t a1)
{
  v2 = sub_1C7C0C68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BB80(uint64_t a1)
{
  v2 = sub_1C7C0C524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BBBC(uint64_t a1)
{
  v2 = sub_1C7C0C524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639C0, &qword_1C7C8A658);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639C8, &qword_1C7C8A660);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639D0, &qword_1C7C8A668);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639D8, &qword_1C7C8A670);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v41 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639E0, &qword_1C7C8A678);
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639E8, &qword_1C7C8A680);
  v44 = *(v18 - 8);
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639F0, &qword_1C7C8A688);
  v60 = *(v22 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = *v1;
  v43 = v1[1];
  v59 = v24;
  v42 = *(v1 + 4);
  v25 = *(v1 + 40);
  v27 = a1[3];
  v26 = a1[4];
  v28 = a1;
  v30 = &v41 - v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_1C7C0C47C();
  sub_1C7C7DBA4();
  v31 = v25 >> 5;
  if (v25 >> 5 > 2)
  {
    if (v31 == 3)
    {
      LOBYTE(v61) = 4;
      sub_1C7C0C524();
      v38 = v53;
      sub_1C7C7D9E4();
      *&v61 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A10, &qword_1C7C8A690);
      sub_1C7C0C578(&qword_1EC263A18, &qword_1EC263A20);
      v39 = v55;
      sub_1C7C7DA44();
      (*(v54 + 8))(v38, v39);
      return (*(v60 + 8))(v30, v22);
    }

    v32 = v22;
    if (v31 != 4)
    {
      LOBYTE(v61) = 3;
      sub_1C7C0C638();
      v40 = v46;
      sub_1C7C7D9E4();
      (*(v49 + 8))(v40, v50);
      return (*(v60 + 8))(v30, v22);
    }

    LOBYTE(v61) = 5;
    sub_1C7C0C4D0();
    v34 = v56;
    sub_1C7C7D9E4();
    v61 = v59;
    sub_1C7BED7DC();
    v35 = v58;
    sub_1C7C7DA44();
    v36 = v57;
    goto LABEL_11;
  }

  if (!v31)
  {
    LOBYTE(v61) = 0;
    sub_1C7C0C788();
    sub_1C7C7D9E4();
    v61 = v59;
    v62 = v43;
    v63 = v42;
    v64 = v25;
    sub_1C7C0C7DC();
    sub_1C7C7DA44();
    (*(v44 + 8))(v21, v18);
    return (*(v60 + 8))(v30, v22);
  }

  v32 = v22;
  if (v31 != 1)
  {
    LOBYTE(v61) = 2;
    sub_1C7C0C68C();
    v34 = v48;
    sub_1C7C7D9E4();
    *&v61 = v59;
    type metadata accessor for JPKIInternalTypes.CertificateData();
    sub_1C7C0D3A0(&qword_1EC263690, type metadata accessor for JPKIInternalTypes.CertificateData);
    v35 = v52;
    sub_1C7C7DA44();
    v36 = v51;
LABEL_11:
    (*(v36 + 8))(v34, v35);
    return (*(v60 + 8))(v30, v32);
  }

  LOBYTE(v61) = 1;
  sub_1C7C0C6E0();
  sub_1C7C7D9E4();
  *&v61 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A40, &qword_1C7C8A698);
  sub_1C7C0D3E4(&qword_1EC263A48, sub_1C7C0C734);
  v33 = v47;
  sub_1C7C7DA44();
  (*(v45 + 8))(v17, v33);
  return (*(v60 + 8))(v30, v32);
}