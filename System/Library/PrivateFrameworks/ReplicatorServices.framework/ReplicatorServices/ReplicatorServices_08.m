uint64_t sub_1BAB9D7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BAB9D8A0(uint64_t a1)
{
  v2 = sub_1BAB9DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB9D8DC(uint64_t a1)
{
  v2 = sub_1BAB9DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB9D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB9D9A4(uint64_t a1)
{
  v2 = sub_1BAB9DE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB9D9E0(uint64_t a1)
{
  v2 = sub_1BAB9DE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorRecordDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E00);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E08);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB9DD6C();
  sub_1BABE800C();
  if (v12)
  {
    v23 = 0;
    sub_1BAB9DE14();
    sub_1BABE7DFC();
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
    sub_1BAB9E680(&qword_1EBC12EF0, &qword_1EBC12220);
    v13 = v21;
    sub_1BABE7E7C();
    (*(v20 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_1BAB9DDC0();
    v15 = v17;
    sub_1BABE7DFC();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1BAB9DD6C()
{
  result = qword_1ED787280;
  if (!qword_1ED787280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787280);
  }

  return result;
}

unint64_t sub_1BAB9DDC0()
{
  result = qword_1ED787268;
  if (!qword_1ED787268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787268);
  }

  return result;
}

unint64_t sub_1BAB9DE14()
{
  result = qword_1EBC13E18;
  if (!qword_1EBC13E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E18);
  }

  return result;
}

uint64_t ReplicatorRecordDestination.hash(into:)()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1BFAFDC20](1);
  }

  MEMORY[0x1BFAFDC20](0);
  result = MEMORY[0x1BFAFDC20](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v4, v11, v1);
      sub_1BAAD771C(&unk_1ED787C50);
      sub_1BABE74BC();
      result = (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t ReplicatorRecordDestination.hashValue.getter()
{
  sub_1BABE7F9C();
  ReplicatorRecordDestination.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t ReplicatorRecordDestination.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E20);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E28);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BAB9DD6C();
  v13 = v35;
  sub_1BABE7FFC();
  if (!v13)
  {
    v30 = v5;
    v35 = v9;
    v15 = v33;
    v14 = v34;
    v16 = sub_1BABE7DEC();
    v17 = (2 * *(v16 + 16)) | 1;
    v37 = v16;
    v38 = v16 + 32;
    v39 = 0;
    v40 = v17;
    v18 = sub_1BAB702D4();
    v19 = v8;
    if (v18 == 2 || v39 != v40 >> 1)
    {
      v21 = v11;
      v22 = sub_1BABE7B4C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13918);
      *v24 = &type metadata for ReplicatorRecordDestination;
      sub_1BABE7D3C();
      sub_1BABE7B3C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v35 + 8))(v21, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v35;
      if (v18)
      {
        LOBYTE(v41) = 1;
        sub_1BAB9DDC0();
        sub_1BABE7D2C();
        (*(v15 + 8))(v4, v31);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        *v14 = 0;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_1BAB9DE14();
        v26 = v7;
        sub_1BABE7D2C();
        v27 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
        sub_1BAB9E680(&qword_1EBC12F00, &qword_1EBC125B0);
        v28 = v30;
        sub_1BABE7DCC();
        (*(v32 + 8))(v26, v28);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        *v27 = v41;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1BAB9E564(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1BAB9D488(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BAB9E5E8()
{
  sub_1BABE7F9C();
  ReplicatorRecordDestination.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB9E638()
{
  sub_1BABE7F9C();
  ReplicatorRecordDestination.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t sub_1BAB9E680(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13AB0);
    sub_1BAAD771C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAB9E70C()
{
  result = qword_1EBC13E38;
  if (!qword_1EBC13E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E38);
  }

  return result;
}

uint64_t sub_1BAB9E760(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAB9E7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1BAB9E804(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BAB9E81C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1BAB9E880()
{
  result = qword_1EBC13E40;
  if (!qword_1EBC13E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E40);
  }

  return result;
}

unint64_t sub_1BAB9E8D8()
{
  result = qword_1EBC13E48;
  if (!qword_1EBC13E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E48);
  }

  return result;
}

unint64_t sub_1BAB9E930()
{
  result = qword_1ED787248;
  if (!qword_1ED787248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787248);
  }

  return result;
}

unint64_t sub_1BAB9E988()
{
  result = qword_1ED787250;
  if (!qword_1ED787250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787250);
  }

  return result;
}

unint64_t sub_1BAB9E9E0()
{
  result = qword_1ED787258;
  if (!qword_1ED787258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787258);
  }

  return result;
}

unint64_t sub_1BAB9EA38()
{
  result = qword_1ED787260;
  if (!qword_1ED787260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787260);
  }

  return result;
}

unint64_t sub_1BAB9EA90()
{
  result = qword_1ED787270;
  if (!qword_1ED787270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787270);
  }

  return result;
}

unint64_t sub_1BAB9EAE8()
{
  result = qword_1ED787278;
  if (!qword_1ED787278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787278);
  }

  return result;
}

uint64_t static OrphanedFileRemover.removeOrphanedFiles(recordDataStore:url:protectedFilenames:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_1BABA0638(v7, a2, a3, v5, v6);
}

uint64_t sub_1BAB9EB94()
{
  v1 = v0;
  v2 = sub_1BABE6C8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1BABE7AEC();
  MEMORY[0x1BFAFD240](0x6E6F697461727544, 0xEA0000000000203ALL);
  sub_1BABE6C6C();
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_started, v2);
  sub_1BABE6C1C();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  sub_1BABE781C();
  result = MEMORY[0x1BFAFD240](0x61756C617665203BLL, 0xED0000203A646574);
  v11 = OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_skipped;
  v12 = *(v1 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_skipped);
  v13 = OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_failed;
  v14 = *(v1 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_failed);
  v15 = __OFADD__(v12, v14);
  v16 = v12 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_protected;
  v18 = *(v1 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_protected);
  v15 = __OFADD__(v16, v18);
  v19 = v16 + v18;
  if (v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_deleted;
  v21 = *(v1 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_deleted);
  v15 = __OFADD__(v19, v21);
  v22 = v19 + v21;
  if (!v15)
  {
    v29 = v22;
    v23 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v23);

    MEMORY[0x1BFAFD240](0x6365746F7270203BLL, 0xED0000203A646574);
    v29 = *(v1 + v17);
    v24 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v24);

    MEMORY[0x1BFAFD240](0x64656C696166203BLL, 0xEA0000000000203ALL);
    v29 = *(v1 + v13);
    v25 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v25);

    MEMORY[0x1BFAFD240](0x6574656C6564203BLL, 0xEB00000000203A64);
    v29 = *(v1 + v20);
    v26 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v26);

    MEMORY[0x1BFAFD240](0x657070696B73203BLL, 0xEB00000000203A64);
    v29 = *(v1 + v11);
    v27 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v27);

    return v30;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BAB9EF18()
{
  v1 = OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_started;
  v2 = sub_1BABE6C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1BAB9EFD8(void *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v5 = sub_1BABE737C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BABE73BC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrphanedFileRemover.Session();
  v9 = swift_allocObject();
  sub_1BABE6C6C();
  *(v9 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_skipped) = 0;
  *(v9 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_deleted) = 0;
  *(v9 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_protected) = 0;
  *(v9 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_failed) = 0;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 88))(v10, v11);
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BABE72BC();
  __swift_project_value_buffer(v13, qword_1ED78BBA0);

  v14 = sub_1BABE729C();
  v15 = sub_1BABE790C();
  if (os_log_type_enabled(v14, v15))
  {
    v32 = v8;
    v16 = a3;
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    if (v12 >> 62)
    {
      v18 = sub_1BABE7A5C();
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_1BAACF000, v14, v15, "Looking for orphaned files in %{public}ld zones", v17, 0xCu);
    MEMORY[0x1BFAFE460](v17, -1, -1);

    a3 = v16;
    v8 = v32;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v19 = [objc_opt_self() defaultManager];
  v20 = sub_1BABE78BC();

  if (v20)
  {

    v22 = sub_1BABB6CC4(v21);

    sub_1BAAE779C(a1, v41);
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v9;
    v23[4] = v22;
    sub_1BAAE7A7C(v41, (v23 + 5));
    v23[10] = a3;
    aBlock[4] = sub_1BABA0D68;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAAD173C;
    aBlock[3] = &block_descriptor_28;
    v24 = _Block_copy(aBlock);
    v25 = v20;

    a3;
    sub_1BABE739C();
    v39 = MEMORY[0x1E69E7CC0];
    sub_1BABA0DD8(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
    sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
    v26 = v34;
    v27 = v37;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v8, v26, v24);
    _Block_release(v24);

    (*(v36 + 8))(v26, v27);
    (*(v33 + 8))(v8, v35);
  }

  else
  {
    v29 = sub_1BABE729C();
    v30 = sub_1BABE78EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BAACF000, v29, v30, "Could not enumerate files", v31, 2u);
      MEMORY[0x1BFAFE460](v31, -1, -1);
    }
  }
}

void sub_1BAB9F5AC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v109 = a5;
  v115 = a4;
  v116 = a3;
  v125 = *MEMORY[0x1E69E9840];
  v7 = sub_1BABE737C();
  v114 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1BABE73BC();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v102 - v11;
  v13 = sub_1BABE6BAC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v102 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v102 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v102 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v102 - v27;
  v108 = a1;
  if ([a1 nextObject])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = 0u;
    v124 = 0u;
  }

  aBlock = v123;
  v120 = v124;
  if (*(&v124 + 1))
  {
    v28 = swift_dynamicCast();
    (*(v14 + 56))(v12, v28 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v117, v12, v13);
      v29 = sub_1BABE6B1C();
      v31 = v30;
      if (sub_1BABBAB0C(v29, v30, v116))
      {

        if (qword_1ED7876D0 != -1)
        {
          swift_once();
        }

        v32 = sub_1BABE72BC();
        __swift_project_value_buffer(v32, qword_1ED78BBA0);
        (*(v14 + 16))(v26, v117, v13);
        v20 = sub_1BABE729C();
        v33 = sub_1BABE78DC();
        if (os_log_type_enabled(v20, v33))
        {
          v17 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *&aBlock = v106;
          *v17 = 136446210;
          sub_1BABA0DD8(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
          v34 = sub_1BABE7EAC();
          v35 = a2;
          v36 = v7;
          v38 = v37;
          v107 = *(v14 + 8);
          v107(v26, v13);
          v39 = sub_1BAAFA460(v34, v38, &aBlock);
          v7 = v36;
          a2 = v35;

          *(v17 + 4) = v39;
          _os_log_impl(&dword_1BAACF000, v20, v33, "Orphaned file remover protected file at %{public}s", v17, 0xCu);
          v40 = v106;
          __swift_destroy_boxed_opaque_existential_1(v106);
          MEMORY[0x1BFAFE460](v40, -1, -1);
          MEMORY[0x1BFAFE460](v17, -1, -1);
        }

        else
        {

          v107 = *(v14 + 8);
          v107(v26, v13);
        }

        v60 = (a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_protected);
        v61 = *(a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_protected);
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (!v62)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        v106 = v7;
        v49 = v115[3];
        v50 = v115[4];
        __swift_project_boxed_opaque_existential_1(v115, v49);
        v51 = (*(v50 + 96))(v29, v31, v49, v50);

        if (v51)
        {
          v7 = v106;
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v52 = sub_1BABE72BC();
          v53 = __swift_project_value_buffer(v52, qword_1ED78BBA0);
          (*(v14 + 16))(v23, v117, v13);
          v54 = sub_1BABE729C();
          v17 = sub_1BABE78DC();
          if (os_log_type_enabled(v54, v17))
          {
            v55 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *&aBlock = v105;
            *v55 = 136446210;
            sub_1BABA0DD8(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
            v56 = sub_1BABE7EAC();
            v58 = v57;
            v107 = *(v14 + 8);
            v107(v23, v13);
            v59 = sub_1BAAFA460(v56, v58, &aBlock);

            *(v55 + 4) = v59;
            _os_log_impl(&dword_1BAACF000, v54, v17, "Orphaned file remover skipped file at %{public}s", v55, 0xCu);
            v53 = v105;
            __swift_destroy_boxed_opaque_existential_1(v105);
            MEMORY[0x1BFAFE460](v53, -1, -1);
            MEMORY[0x1BFAFE460](v55, -1, -1);
          }

          else
          {

            v107 = *(v14 + 8);
            v107(v23, v13);
          }

          v60 = (a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_skipped);
          v77 = *(a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_skipped);
          v62 = __OFADD__(v77, 1);
          v63 = v77 + 1;
          if (!v62)
          {
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      v64 = [objc_opt_self() defaultManager];
      v65 = sub_1BABE6B2C();
      *&aBlock = 0;
      v66 = [v64 removeItemAtURL:v65 error:&aBlock];

      v53 = aBlock;
      if (v66)
      {
        v67 = qword_1ED7876D0;
        v68 = aBlock;
        v7 = v106;
        if (v67 != -1)
        {
          swift_once();
        }

        v69 = sub_1BABE72BC();
        v70 = __swift_project_value_buffer(v69, qword_1ED78BBA0);
        (*(v14 + 16))(v20, v117, v13);
        v71 = sub_1BABE729C();
        v72 = sub_1BABE78DC();
        if (os_log_type_enabled(v71, v72))
        {
          v17 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *&aBlock = v105;
          *v17 = 136446210;
          sub_1BABA0DD8(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
          v73 = sub_1BABE7EAC();
          v75 = v74;
          v107 = *(v14 + 8);
          v107(v20, v13);
          v76 = sub_1BAAFA460(v73, v75, &aBlock);

          *(v17 + 4) = v76;
          _os_log_impl(&dword_1BAACF000, v71, v72, "Orphaned file remover removed file at %{public}s", v17, 0xCu);
          v70 = v105;
          __swift_destroy_boxed_opaque_existential_1(v105);
          MEMORY[0x1BFAFE460](v70, -1, -1);
          MEMORY[0x1BFAFE460](v17, -1, -1);
        }

        else
        {

          v107 = *(v14 + 8);
          v107(v20, v13);
        }

        v60 = (a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_deleted);
        v93 = *(a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_deleted);
        v62 = __OFADD__(v93, 1);
        v63 = v93 + 1;
        if (!v62)
        {
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_43;
      }

LABEL_35:
      v78 = v53;
      v71 = sub_1BABE6ADC();

      swift_willThrow();
      v7 = v106;
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v79 = sub_1BABE72BC();
      __swift_project_value_buffer(v79, qword_1ED78BBA0);
      (*(v14 + 16))(v17, v117, v13);
      v80 = v71;
      v70 = sub_1BABE729C();
      v81 = sub_1BABE78EC();

      if (os_log_type_enabled(v70, v81))
      {
        v82 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&aBlock = v105;
        *v82 = 136446466;
        sub_1BABA0DD8(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
        v103 = v70;
        v83 = sub_1BABE7EAC();
        v85 = v84;
        v107 = *(v14 + 8);
        v107(v17, v13);
        v86 = sub_1BAAFA460(v83, v85, &aBlock);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2114;
        v87 = v71;
        v88 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 14) = v88;
        v89 = v104;
        *v104 = v88;
        v90 = v81;
        v91 = v103;
        _os_log_impl(&dword_1BAACF000, v103, v90, "Orphaned file remover could not remove file at %{public}s: %{public}@", v82, 0x16u);
        sub_1BAAD2E14(v89, &qword_1EBC12A00);
        MEMORY[0x1BFAFE460](v89, -1, -1);
        v92 = v105;
        __swift_destroy_boxed_opaque_existential_1(v105);
        MEMORY[0x1BFAFE460](v92, -1, -1);
        MEMORY[0x1BFAFE460](v82, -1, -1);

        goto LABEL_44;
      }

LABEL_43:

      v107 = *(v14 + 8);
      v107(v17, v13);
LABEL_44:
      v60 = (a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_failed);
      v94 = *(a2 + OBJC_IVAR____TtCV18ReplicatorServices19OrphanedFileRemoverP33_0397422BB43B6772C2C490066BD199AD7Session_failed);
      v62 = __OFADD__(v94, 1);
      v63 = v94 + 1;
      if (v62)
      {
        __break(1u);
      }

LABEL_45:
      *v60 = v63;
      sub_1BAAE779C(v115, &v123);
      v95 = swift_allocObject();
      v96 = v108;
      v95[2] = v108;
      v95[3] = a2;
      v95[4] = v116;
      sub_1BAAE7A7C(&v123, (v95 + 5));
      v97 = v109;
      v95[10] = v109;
      v121 = sub_1BABA0E28;
      v122 = v95;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_1BAAD173C;
      *(&v120 + 1) = &block_descriptor_35;
      v98 = _Block_copy(&aBlock);

      v99 = v96;

      v97;
      v100 = v110;
      sub_1BABE739C();
      v118 = MEMORY[0x1E69E7CC0];
      sub_1BABA0DD8(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
      sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
      v101 = v112;
      sub_1BABE79FC();
      MEMORY[0x1BFAFD5D0](0, v100, v101, v98);
      _Block_release(v98);
      (*(v114 + 8))(v101, v7);
      (*(v111 + 8))(v100, v113);
      v107(v117, v13);

      return;
    }
  }

  else
  {
    sub_1BAAD2E14(&aBlock, &qword_1EBC12990);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_1BAAD2E14(v12, &unk_1EBC13D70);
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v41 = sub_1BABE72BC();
  __swift_project_value_buffer(v41, qword_1ED78BBA0);

  v42 = sub_1BABE729C();
  v43 = sub_1BABE790C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&aBlock = v45;
    *v44 = 136446210;
    v46 = sub_1BAB9EB94();
    v48 = sub_1BAAFA460(v46, v47, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1BAACF000, v42, v43, "Orphaned file remover completed: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1BFAFE460](v45, -1, -1);
    MEMORY[0x1BFAFE460](v44, -1, -1);
  }
}

uint64_t sub_1BABA0638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v36 = a2;
  v8 = sub_1BABE737C();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BABE6BAC();
  v11 = *(v35 - 8);
  v34 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1BABE793C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BABE73BC();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a4;
  v46[4] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v46);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_2, a1, a4);
  v32[1] = sub_1BAAD14BC();
  sub_1BABE738C();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v14);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BABA0DD8(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  v21 = sub_1BABE796C();
  sub_1BAAE779C(v46, v45);
  v22 = v33;
  v23 = v35;
  (*(v11 + 16))(v33, v36, v35);
  v24 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1BAAE7A7C(v45, v26 + 16);
  (*(v11 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v21;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  aBlock[4] = sub_1BAB92D9C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_5;
  v27 = _Block_copy(aBlock);
  v28 = v21;

  sub_1BABE739C();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1BABA0DD8(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  v30 = v40;
  v29 = v41;
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v19, v30, v27);
  _Block_release(v27);

  (*(v42 + 8))(v30, v29);
  (*(v38 + 8))(v19, v39);

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t type metadata accessor for OrphanedFileRemover.Session()
{
  result = qword_1EBC12360;
  if (!qword_1EBC12360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABA0CC4()
{
  result = sub_1BABE6C8C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BABA0DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SQLValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAAE779C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
  sub_1BAB22BDC(0, &qword_1EBC12240);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v4 = 0;
    v5 = 0;
    v6 = 4;
LABEL_11:
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v5 = 0;
    v6 = 0;
    v4 = v8;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v5 = 0;
    v4 = v8;
    v6 = 1;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = v8;
    v5 = v9;
    v6 = 2;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = v8;
    v5 = v9;
    v6 = 3;
    goto LABEL_11;
  }

  result = sub_1BABE7C9C();
  __break(1u);
  return result;
}

{
  sub_1BAAFBEE8(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
  if (!swift_dynamicCast())
  {
    sub_1BAB22BDC(0, &qword_1ED787060);
    if (swift_dynamicCast())
    {
      v5 = v17[0];
      v6 = sub_1BABA12F0();

      if (v6)
      {
        [v5 doubleValue];
        v23 = MEMORY[0x1E69E63B0];
        v24 = &protocol witness table for Double;
        *&v22 = v7;
        goto LABEL_11;
      }

      if (sub_1BABA1450())
      {
        v8 = [v5 longLongValue];
        v23 = MEMORY[0x1E69E7360];
        v24 = &protocol witness table for Int64;
        *&v22 = v8;
        goto LABEL_11;
      }
    }

    sub_1BAB22BDC(0, &unk_1EBC12230);
    if (!swift_dynamicCast())
    {
      sub_1BAB22BDC(0, &qword_1ED787068);
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = -1;
        return result;
      }

      v12 = v17[0];
      v13 = sub_1BABE6BEC();
      v15 = v14;

      v23 = MEMORY[0x1E6969080];
      v24 = &protocol witness table for Data;
      *&v22 = v13;
      *(&v22 + 1) = v15;
      SQLValue.init(_:)(&v22, &v20);

      goto LABEL_12;
    }

    v5 = v17[0];
    v9 = sub_1BABE751C();
    v23 = MEMORY[0x1E69E6158];
    v24 = &protocol witness table for String;
    *&v22 = v9;
    *(&v22 + 1) = v10;
LABEL_11:
    SQLValue.init(_:)(&v22, &v20);

LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = v20;
    v4 = v21;
    goto LABEL_13;
  }

  sub_1BAAE7A7C(&v22, &v20);
  sub_1BAAE779C(&v20, v17);
  SQLValue.init(_:)(v17, &v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v16 = v18;
  v4 = v19;
LABEL_13:
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  *a2 = v16;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1BABA12F0()
{
  [v0 objCType];
  v1 = sub_1BABE75DC();
  v3 = sub_1BABA17A4(v1, v2);

  v17 = MEMORY[0x1E69E7CC0];
  sub_1BAAFAC54(0, 2, 0);
  v4 = v17;
  v6 = *(v17 + 16);
  v5 = *(v17 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1BAAFAC54((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v5 = *(v17 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 102;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    sub_1BAAFAC54((v5 > 1), v9, 1);
    v4 = v17;
  }

  *(v4 + 16) = v9;
  v10 = (v4 + 32);
  *(v4 + 32 + v8) = 100;
  if (*(v3 + 16) == 1)
  {
    v11 = *(v3 + 32);

    v12 = *(v4 + 16);
    do
    {
      v13 = v12-- != 0;
      v14 = v13;
      if (!v13)
      {
        break;
      }

      v15 = *v10++;
    }

    while (v15 != v11);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

BOOL sub_1BABA1450()
{
  [v0 objCType];
  v1 = sub_1BABE75DC();
  v3 = sub_1BABA17A4(v1, v2);

  if (*(v3 + 16) != 1)
  {

    return 1;
  }

  v4 = *(v3 + 32);

  if (v4 != 81)
  {
    return 1;
  }

  v5 = [v0 longLongValue];
  v6 = [v0 unsignedLongLongValue];
  return v5 >= 0 && v5 == v6;
}

uint64_t sub_1BABA1500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BABE799C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  v9 = *v2;
  v10 = *(v2 + 16);
  if (v10 <= 1)
  {
    if (*(v2 + 16))
    {
      v12 = MEMORY[0x1E69E63B0];
      v13 = &protocol witness table for Double;
    }

    else
    {
      v12 = MEMORY[0x1E69E7360];
      v13 = &protocol witness table for Int64;
    }

    v22 = v12;
    v23 = v13;
    *&v21 = v9;
  }

  else
  {
    v11 = *(v2 + 8);
    if (v10 == 2)
    {
      v22 = MEMORY[0x1E69E6158];
      v23 = &protocol witness table for String;
      *&v21 = v9;
      *(&v21 + 1) = v11;
    }

    else if (v10 == 3)
    {
      v22 = MEMORY[0x1E6969080];
      v23 = &protocol witness table for Data;
      *&v21 = v9;
      *(&v21 + 1) = v11;
      sub_1BAAE7824(v9, v11);
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v22 = sub_1BAB22BDC(0, &qword_1EBC12240);
      v23 = &protocol witness table for NSNull;
      *&v21 = v14;
    }
  }

  sub_1BAAE7A7C(&v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
  v15 = swift_dynamicCast();
  v16 = *(*(a1 - 8) + 56);
  if (v15)
  {
    v17 = *(a1 - 8);
    v16(v8, 0, 1, a1);
    (*(v17 + 32))(a2, v8, a1);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v16(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
  }

  return v16(a2, v18, 1, a1);
}

uint64_t sub_1BABA17A4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BABA18D4(v5, 0);
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

  result = sub_1BABE7B5C();
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
        v10 = sub_1BABE75EC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BABA18D4(v10, 0);
        result = sub_1BABE7ADC();
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

void *sub_1BABA18D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _s18ReplicatorServices8SQLValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        sub_1BAAE7878(*a1, v3, 1);
        sub_1BAAE7878(v5, v6, 1);
        return *&v2 == *&v5;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_1BAAE7878(*a1, v3, 0);
      sub_1BAAE7878(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_26;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {

      goto LABEL_26;
    }

    v13 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v8 = sub_1BABE7EDC();
      sub_1BAAE7800(v5, v6, 2);
      sub_1BAAE7800(v2, v3, 2);
      sub_1BAAE7878(v2, v3, 2);
      v9 = v5;
      v10 = v6;
      v11 = 2;
      goto LABEL_15;
    }

    sub_1BAAE7800(v13, v3, 2);
    sub_1BAAE7800(v2, v3, 2);
    sub_1BAAE7878(v2, v3, 2);
    v16 = v2;
    v17 = v3;
    v18 = 2;
  }

  else
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_1BAAE7800(*a2, *(a2 + 8), 3);
        sub_1BAAE7800(v2, v3, 3);
        v8 = sub_1BABC0668(v2, v3, v5, v6);
        sub_1BAAE7878(v2, v3, 3);
        v9 = v5;
        v10 = v6;
        v11 = 3;
LABEL_15:
        sub_1BAAE7878(v9, v10, v11);
        return v8 & 1;
      }

      sub_1BAAE7824(*a1, v3);
      goto LABEL_26;
    }

    if (v7 != 4 || (v6 | v5) != 0)
    {
LABEL_26:
      sub_1BAAE7800(v5, v6, v7);
      sub_1BAAE7878(v2, v3, v4);
      sub_1BAAE7878(v5, v6, v7);
      return 0;
    }

    sub_1BAAE7878(*a1, v3, 4);
    v16 = 0;
    v17 = 0;
    v18 = 4;
  }

  sub_1BAAE7878(v16, v17, v18);
  return 1;
}

uint64_t get_enum_tag_for_layout_string_18ReplicatorServices8SQLValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BABA1BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BABA1C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1BABA1C64(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t SQLDatabase.perform(_:)(uint64_t *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 32);
  v4 = sub_1BABE74EC();
  v5 = [v3 prepareStatement_];

  if (!v5)
  {
    sub_1BABA2400();
    swift_allocError();
    *v41 = 3;
    swift_willThrow();
    return v5;
  }

  v60 = v5;
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E58);
  v6 = sub_1BABE7CBC();
  v7 = v6;
  v8 = 0;
  v9 = v2 + 64;
  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;
  v61 = v6;
  v62 = v6 + 64;
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v8 >= v13)
    {
      break;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      while (2)
      {
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + 24 * v17;
        v22 = *v21;
        v23 = *(v21 + 16);
        if (v23 <= 1)
        {
          if (*(v21 + 16))
          {
            v67 = &protocol witness table for Double;
            v29 = MEMORY[0x1E69E63B0];
          }

          else
          {
            v67 = &protocol witness table for Int64;
            v29 = MEMORY[0x1E69E7360];
          }

          v66 = v29;
          *&aBlock = v22;
        }

        else
        {
          v24 = v2;
          v25 = *(v21 + 8);
          if (v23 == 2)
          {
            v66 = MEMORY[0x1E69E6158];
            v67 = &protocol witness table for String;
            *&aBlock = v22;
            *(&aBlock + 1) = v25;

            v26 = v22;
            v27 = v25;
            v28 = 2;
LABEL_18:
            sub_1BAAE7800(v26, v27, v28);
          }

          else
          {
            if (v23 == 3)
            {
              v66 = MEMORY[0x1E6969080];
              v67 = &protocol witness table for Data;
              *&aBlock = v22;
              *(&aBlock + 1) = v25;

              v26 = v22;
              v27 = v25;
              v28 = 3;
              goto LABEL_18;
            }

            v30 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

            v31 = [v30 init];
            v66 = sub_1BAB22BDC(0, &qword_1EBC12240);
            v67 = &protocol witness table for NSNull;
            *&aBlock = v31;
          }

          v2 = v24;
          v7 = v61;
        }

        *(v62 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v32 = (v7[6] + 16 * v17);
        *v32 = v19;
        v32[1] = v20;
        sub_1BAAE7A7C(&aBlock, v7[7] + 40 * v17);
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (!v34)
        {
          v7[2] = v35;
          if (!v12)
          {
            goto LABEL_6;
          }

LABEL_5:
          v14 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          continue;
        }

        break;
      }

LABEL_37:
      __break(1u);
    }
  }

  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BABA24BC(v7);
  v37 = sub_1BABE743C();

  v67 = sub_1BABA4974;
  v68 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v65 = sub_1BAB9C620;
  v66 = &block_descriptor_6;
  v38 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v5 = v60;
  v39 = [v60 executeWithBindings:v37 resultRowHandler:v38 error:&aBlock];
  _Block_release(v38);

  if (v39)
  {
    v40 = aBlock;

    swift_beginAccess();
    v5 = *(v36 + 16);

    return v5;
  }

  v42 = aBlock;
  v43 = sub_1BABE6ADC();

  swift_willThrow();
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C48);
  sub_1BAB22BDC(0, &qword_1EBC13E60);
  if (!swift_dynamicCast())
  {
LABEL_34:

    return v5;
  }

  if ([v63 code] != 11)
  {

    goto LABEL_34;
  }

  if (*(v59 + 40) != 1)
  {

    swift_willThrow();

    return v5;
  }

  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v46 = sub_1BABE72BC();
  __swift_project_value_buffer(v46, qword_1EBC25018);
  v47 = v63;
  v48 = sub_1BABE729C();
  v49 = sub_1BABE78FC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&dword_1BAACF000, v48, v49, "Corrupt database detected. Calling corruption handler and exiting: %{public}@", v50, 0xCu);
    sub_1BAAD2E14(v51, &qword_1EBC12A00);
    MEMORY[0x1BFAFE460](v51, -1, -1);
    MEMORY[0x1BFAFE460](v50, -1, -1);
  }

  v53 = *(v59 + 48);
  v54 = v47;
  v53();

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1BABE7AEC();

  *&aBlock = 0xD00000000000002CLL;
  *(&aBlock + 1) = 0x80000001BABF7D60;
  v55 = [v54 description];
  v56 = sub_1BABE751C();
  v58 = v57;

  MEMORY[0x1BFAFD240](v56, v58);

  result = sub_1BABE7C9C();
  __break(1u);
  return result;
}

unint64_t sub_1BABA2400()
{
  result = qword_1EBC13E50;
  if (!qword_1EBC13E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E50);
  }

  return result;
}

Swift::Bool __swiftcall SQLDatabase.isInTransaction()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF0E90(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

unint64_t sub_1BABA24BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D0);
    v2 = sub_1BABE7CEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1BAAE779C(*(a1 + 56) + 40 * v13, v30);
        *&v29 = v15;
        *(&v29 + 1) = v16;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v17 = v29;
        sub_1BAAE7A7C(v27, v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
        swift_dynamicCast();
        sub_1BAAE8B14(&v23, v25);
        sub_1BAAE8B14(v25, v26);
        sub_1BAAE8B14(v26, &v24);
        result = sub_1BABD5AB4(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1BAAE8B14(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1BAAE8B14(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BABA275C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E70);
    v2 = sub_1BABE7CEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_1BAAE7824(v23, *(&v23 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E78);
        swift_dynamicCast();
        sub_1BAB22994(v24, v26);
        sub_1BAB22994(v26, v27);
        sub_1BAB22994(v27, &v25);
        result = sub_1BABD5AB4(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 48 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1BAB22994(&v25, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1BAB22994(&v25, (v2[7] + 48 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void SQLDatabase.inTransaction(reason:_:)(os_unfair_lock_s *a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v4;
  v7 = v3;
  v11 = v7[3];
  os_unfair_lock_lock(v11 + 4);
  v12 = v7[9];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7[9] = v14;
  os_unfair_lock_assert_owner(v11 + 4);
  v15 = v7[8];
  v16 = v7[9];
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v47 = a3;
  os_unfair_lock_unlock(v11 + 4);
  sub_1BABE7AEC();

  strcpy(v51, "transaction_");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  MEMORY[0x1BFAFD240](a1, a2);
  MEMORY[0x1BFAFD240](95, 0xE100000000000000);
  v53 = v17;
  v18 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v18);

  v48 = a2;
  v5 = v51[0];
  v6 = v51[1];
  v49 = sub_1BABA497C();
  v52 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](10);
  MEMORY[0x1BFAFD240](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFAFD240](v51[0], v51[1]);
  v51[0] = v52;
  v51[1] = 0;
  v52 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v51);
  v50 = v4;
  if (v4)
  {

    MEMORY[0x1EEE9AC00](v19);
    os_unfair_lock_lock(v11 + 4);
    sub_1BAB78084(v20);
    os_unfair_lock_unlock(v11 + 4);
    swift_willThrow();
LABEL_15:
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

  v46 = a1;
  a1 = v11;

  if (qword_1EBC12270 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v21 = sub_1BABE72BC();
  v22 = __swift_project_value_buffer(v21, qword_1EBC25018);

  v23 = v6;

  v45 = v22;
  v24 = sub_1BABE729C();
  v25 = sub_1BABE78DC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51[0] = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_1BAAFA460(v46, v48, v51);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1BAAFA460(v5, v23, v51);
    _os_log_impl(&dword_1BAACF000, v24, v25, "Beginning db savepoint [%{public}s]: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v28 = v27;
    v29 = v50;
    MEMORY[0x1BFAFE460](v28, -1, -1);
    MEMORY[0x1BFAFE460](v26, -1, -1);
  }

  else
  {

    v29 = v50;
  }

  os_unfair_lock_lock(a1 + 4);
  v31 = v7[9];
  v13 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_27;
  }

  v33 = v7[8];
  v7[9] = v32;
  os_unfair_lock_assert_owner(a1 + 4);
  v34 = v7[8];
  v13 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v13)
  {
LABEL_27:
    __break(1u);
    os_unfair_lock_unlock(v30);
    __break(1u);

    os_unfair_lock_unlock(a1 + 4);
    __break(1u);
    return;
  }

  v7[8] = v35;
  os_unfair_lock_assert_owner(a1 + 4);
  os_unfair_lock_unlock(a1 + 4);
  v37 = v47(v36);
  if (v29)
  {
    sub_1BABA4D2C(v46, v48, v5, v23);

    v38 = swift_willThrow();
    MEMORY[0x1EEE9AC00](v38);
    os_unfair_lock_lock(a1 + 4);
    sub_1BAB7841C(v39);
    os_unfair_lock_unlock(a1 + 4);
    goto LABEL_15;
  }

  if (v37)
  {
    sub_1BABA4ADC(v46, v48, v5, v23, v7);
  }

  else
  {
    sub_1BABA4D2C(v46, v48, v5, v23);
  }

  if (v33)
  {

    v40 = sub_1BABE729C();
    v41 = sub_1BABE78DC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134349056;
      MEMORY[0x1EEE9AC00](v42);
      os_unfair_lock_lock(a1 + 4);
      sub_1BAB8F380(v51);
      os_unfair_lock_unlock(a1 + 4);
      *(v42 + 4) = v51[0];

      _os_log_impl(&dword_1BAACF000, v40, v41, "Outstanding transactions remaining: %{public}ld", v42, 0xCu);
      MEMORY[0x1BFAFE460](v42, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BABA5014(v7, v46, v48);
  }

  MEMORY[0x1EEE9AC00](v43);
  os_unfair_lock_lock(a1 + 4);
  sub_1BAB7841C(v44);
  os_unfair_lock_unlock(a1 + 4);
  [v49 invalidate];
  swift_unknownObjectRelease();
}

uint64_t SQLiteError.hashValue.getter()
{
  v1 = *v0;
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](v1);
  return sub_1BABE7FDC();
}

void sub_1BABA3224(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(v1 + 24) + 16));
  if (a1 == 1)
  {
    if (*(v1 + 80))
    {
      return;
    }

    v6 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFAFD200](18);
    MEMORY[0x1BFAFD240](0xD000000000000012, 0x80000001BABF7DD0);
    v3 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v3);

    v4 = v6;
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (!a1 && *(v1 + 80) == 1)
  {
    v4 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v5 = 0xD000000000000016;
    v6 = 0x80000001BABF80B0;
LABEL_7:
    SQLDatabase.perform(_:)(&v4);
  }
}

uint64_t SQLDatabase.__allocating_init(database:loggableDatabaseURL:schema:corruptionHandler:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SQLDatabase.init(database:loggableDatabaseURL:schema:corruptionHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t SQLDatabase.init(database:loggableDatabaseURL:schema:corruptionHandler:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = *a3;
  v12 = a3[1];
  *(v7 + 16) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v7 + 40) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 56) = a5;
  *(v7 + 64) = 0;
  *(v7 + 24) = v13;
  *(v7 + 32) = a1;
  *(v7 + 48) = a4;
  v14 = a1;

  v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v45 = 0xD00000000000001BLL;
  v46 = 0x80000001BABF7D90;
  SQLDatabase.perform(_:)(&v44);
  if (v6)
  {

    [*(v7 + 32) close];
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v18 = sub_1BABE72BC();
    __swift_project_value_buffer(v18, qword_1EBC25018);
    v19 = v6;
    v20 = sub_1BABE729C();
    v21 = sub_1BABE78EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = sub_1BABE6ACC();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1BAACF000, v20, v21, "Failed to open database: %{public}@", v22, 0xCu);
      sub_1BAAD2E14(v23, &qword_1EBC12A00);
      MEMORY[0x1BFAFE460](v23, -1, -1);
      MEMORY[0x1BFAFE460](v22, -1, -1);
    }

    swift_willThrow();

    sub_1BAAD2E14(a2, &unk_1EBC13D70);
  }

  else
  {

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD000000000000016;
    v46 = 0x80000001BABF7DB0;
    SQLDatabase.perform(_:)(&v44);

    v44 = 0;
    v45 = 0xE000000000000000;
    v46 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFAFD200](18);
    MEMORY[0x1BFAFD240](0xD000000000000012, 0x80000001BABF7DD0);
    v47 = 10;
    v15 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v15);

    v16 = v44;
    v17 = v45;
    v44 = v46;
    v45 = v16;
    v46 = v17;
    SQLDatabase.perform(_:)(&v44);

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD000000000000017;
    v46 = 0x80000001BABF7DF0;
    SQLDatabase.perform(_:)(&v44);

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD000000000000019;
    v46 = 0x80000001BABF7E10;
    SQLDatabase.perform(_:)(&v44);

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD00000000000001ELL;
    v46 = 0x80000001BABF7E30;
    SQLDatabase.perform(_:)(&v44);

    if (v12)
    {
      LOWORD(v44) = v11;
      v45 = v12;
      v26 = a2;
      sub_1BABA3C6C(&v44, a2);
    }

    else
    {
      v26 = a2;
    }

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD000000000000015;
    v46 = 0x80000001BABF7E50;
    v48.bindings._rawValue = &v44;
    v27 = SQLDatabase.performSimple(_:)(v48);
    v29 = v28;
    if (v28)
    {

      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    v45 = 0xD000000000000011;
    v46 = 0x80000001BABF7E70;
    v49.bindings._rawValue = &v44;
    v31 = SQLDatabase.performSimple(_:)(v49);
    if (v32)
    {

      v42 = 0;
    }

    else
    {
      v42 = v31;
    }

    if (v29 || v32)
    {
      goto LABEL_25;
    }

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v33 = fmax(v42 * 0.05, 256.0);
    v34 = sub_1BABE72BC();
    __swift_project_value_buffer(v34, qword_1EBC25018);
    v35 = sub_1BABE729C();
    v36 = sub_1BABE790C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = v30;
      *(v37 + 12) = 2050;
      *(v37 + 14) = v42;
      _os_log_impl(&dword_1BAACF000, v35, v36, "Database has %{public}lld/%{public}lld free pages.", v37, 0x16u);
      MEMORY[0x1BFAFE460](v37, -1, -1);
    }

    if (v33 > v30)
    {
LABEL_25:
      sub_1BAAD2E14(v26, &unk_1EBC13D70);
    }

    else
    {
      v38 = sub_1BABE729C();
      v39 = sub_1BABE790C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1BAACF000, v38, v39, "Vacuuming", v40, 2u);
        MEMORY[0x1BFAFE460](v40, -1, -1);
      }

      v44 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
      v45 = 0xD000000000000019;
      v46 = 0x80000001BABF7E90;
      SQLDatabase.perform(_:)(&v44);

      sub_1BAAD2E14(a2, &unk_1EBC13D70);
    }

    *(v7 + 40) = 1;
  }

  return v7;
}

uint64_t sub_1BABA3C6C(unsigned __int16 *a1, uint64_t a2)
{
  v81 = a2;
  v90[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BABE6C8C();
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - v11;
  v84 = *a1;
  v13 = *(a1 + 1);
  v87 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v88 = 0xD000000000000013;
  v89 = 0x80000001BABF7FF0;
  v91.bindings._rawValue = &v87;
  v83 = v2;
  v14 = SQLDatabase.performSimple(_:)(v91);
  v16 = v15;

  if (v15)
  {
    return result;
  }

  v72 = v10;
  v74 = v4;
  v75 = v12;
  v78 = v6;
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(v13 + 2);
  if (v16 >> 16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v13;
  v76 = 0;
  v12 = v14;
  v79 = v16;
  v80 = v14;
  if (qword_1EBC12270 != -1)
  {
LABEL_30:
    swift_once();
  }

  v18 = sub_1BABE72BC();
  v19 = __swift_project_value_buffer(v18, qword_1EBC25018);
  v20 = sub_1BABE729C();
  v21 = sub_1BABE790C();
  v22 = os_log_type_enabled(v20, v21);
  v77 = v16;
  if (v22)
  {
    v70 = v12;
    v23 = swift_slowAlloc();
    v71 = v19;
    v24 = v23;
    v16 = swift_slowAlloc();
    v90[0] = v16;
    *v24 = 136446466;
    v87 = 118;
    v88 = 0xE100000000000000;
    v85 = WORD1(v12);
    v25 = sub_1BABE7EAC();
    v73 = v10;
    MEMORY[0x1BFAFD240](v25);

    MEMORY[0x1BFAFD240](46, 0xE100000000000000);
    v85 = v80;
    v26 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v26);

    v27 = sub_1BAAFA460(v87, v88, v90);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v87 = 118;
    v88 = 0xE100000000000000;
    v85 = v84;
    v28 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v28);

    MEMORY[0x1BFAFD240](46, 0xE100000000000000);
    v85 = v79;
    v29 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v29);

    v30 = sub_1BAAFA460(v87, v88, v90);
    LODWORD(v12) = v70;

    *(v24 + 14) = v30;
    v10 = v73;
    _os_log_impl(&dword_1BAACF000, v20, v21, "Migrating database from %{public}s to %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v31 = v16;
    LODWORD(v16) = v77;
    MEMORY[0x1BFAFE460](v31, -1, -1);
    MEMORY[0x1BFAFE460](v24, -1, -1);
  }

  v32 = v78;
  result = v81;
  v33 = v82;
  if (v84 == v12 >> 16)
  {
    if (v80 == v79)
    {
      return result;
    }

    v86 = v12;
    if (v79 >= v80)
    {
LABEL_24:
      v66 = v84;
      v67 = v84 | (v16 << 16);

      v68 = v83;

      sub_1BABA6068(0x6F6974617267694DLL, 0xE90000000000006ELL, v68, v66, v10, &v86, v68, v67);
    }

    v40 = v75;
    sub_1BABA6FC0(v81, v75);
    v41 = sub_1BABE729C();
    v42 = sub_1BABE78EC();
    if (os_log_type_enabled(v41, v42))
    {
      LODWORD(v81) = v42;
      v73 = v10;
      v43 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90[0] = v71;
      *v43 = 136446722;
      v44 = v84;
      v87 = 118;
      v88 = 0xE100000000000000;
      v85 = v84;
      v45 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v45);

      MEMORY[0x1BFAFD240](46, 0xE100000000000000);
      v85 = v80;
      v46 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v46);

      v47 = sub_1BAAFA460(v87, v88, v90);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v87 = 118;
      v88 = 0xE100000000000000;
      v85 = v44;
      v48 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v48);

      MEMORY[0x1BFAFD240](46, 0xE100000000000000);
      v85 = v79;
      v49 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v49);

      v50 = sub_1BAAFA460(v87, v88, v90);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2080;
      v51 = v72;
      sub_1BABA6FC0(v75, v72);
      v52 = sub_1BABE6BAC();
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v51, 1, v52) == 1)
      {
        sub_1BAAD2E14(v51, &unk_1EBC13D70);
        v54 = 0xEB000000003E7972;
        v55 = 0x6F6D656D2D6E693CLL;
      }

      else
      {
        v55 = sub_1BABE6B0C();
        v54 = v56;
        (*(v53 + 8))(v51, v52);
      }

      v33 = v82;
      v32 = v78;
      sub_1BAAD2E14(v75, &unk_1EBC13D70);
      v57 = sub_1BAAFA460(v55, v54, v90);

      *(v43 + 24) = v57;
      _os_log_impl(&dword_1BAACF000, v41, v81, "Detected database schema downgrade from %{public}s to %{public}s. Will attempt to truncate %s", v43, 0x20u);
      v58 = v71;
      swift_arrayDestroy();
      MEMORY[0x1BFAFE460](v58, -1, -1);
      MEMORY[0x1BFAFE460](v43, -1, -1);

      v10 = v73;
    }

    else
    {

      sub_1BAAD2E14(v40, &unk_1EBC13D70);
    }

    v59 = v83[4];
    v87 = 0;
    v60 = [v59 truncateDatabaseAndReturnError_];
    v36 = v87;
    v61 = v74;
    if (v60)
    {
      v86 = 0;
      v62 = objc_opt_self();
      v63 = v36;
      v64 = [v62 standardUserDefaults];
      sub_1BABE6C6C();
      v65 = sub_1BABE6C2C();
      (*(v33 + 8))(v32, v61);
      v16 = sub_1BABE74EC();
      [v64 setObject:v65 forKey:v16];

LABEL_23:
      LODWORD(v16) = v77;
      goto LABEL_24;
    }
  }

  else
  {
    v34 = v83[4];
    v87 = 0;
    v35 = [v34 truncateDatabaseAndReturnError_];
    v36 = v87;
    if (v35)
    {
      v86 = 0;
      v37 = v87;
      v16 = sub_1BABE729C();
      v38 = sub_1BABE790C();
      if (os_log_type_enabled(v16, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1BAACF000, v16, v38, "Truncated database for major schema version migration.", v39, 2u);
        MEMORY[0x1BFAFE460](v39, -1, -1);
      }

      goto LABEL_23;
    }
  }

  v69 = v36;
  sub_1BABE6ADC();

  return swift_willThrow();
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.performSimple(_:)(ReplicatorServices::SQLStatement a1)
{
  v3 = *(a1.bindings._rawValue + 2);
  v10 = *a1.bindings._rawValue;
  v11 = v3;
  v4 = SQLDatabase.perform(_:)(&v10);
  if (!v2)
  {
    if (*(v4 + 16) && (v5 = *(v4 + 32), , , *(v5 + 16) == 1))
    {
      v1 = *(v5 + 48);
      v6 = *(v5 + 56);
      v7 = *(v5 + 64);

      sub_1BAAE7800(v1, v6, v7);

      if (!v7)
      {
        return v1;
      }

      sub_1BAAE7878(v1, v6, v7);
    }

    else
    {
    }

    sub_1BABA2400();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
  }

  return v1;
}

id sub_1BABA4764()
{
  v3[0] = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v3[1] = 0xD00000000000001BLL;
  v3[2] = 0x80000001BABF7EB0;
  SQLDatabase.perform(_:)(v3);

  v1 = *(v0 + 32);

  return [v1 close];
}

uint64_t SQLDatabase.deinit()
{

  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1BABA4898(void *a1, uint64_t a2)
{
  sub_1BABA7504(a1, &v9);
  v3 = v9;
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BAAFA11C(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1BAAFA11C((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = v3;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

id sub_1BABA497C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
  v4 = objc_allocWithZone(MEMORY[0x1E698E778]);

  v5 = sub_1BABE74EC();
  v6 = sub_1BABE74EC();
  aBlock[4] = sub_1BABA709C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAB9C620;
  aBlock[3] = &block_descriptor_57;
  v7 = _Block_copy(aBlock);
  v8 = [v4 initWithIdentifier:v5 forReason:v6 invalidationBlock:v7];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1BABA4ADC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v12 = sub_1BABE72BC();
  __swift_project_value_buffer(v12, qword_1EBC25018);

  v13 = sub_1BABE729C();
  v14 = sub_1BABE78DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a5;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_1BAAFA460(a1, a2, &v21);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1BAAFA460(a3, a4, &v21);
    _os_log_impl(&dword_1BAACF000, v13, v14, "Committing transaction savepoint [%{public}s]: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    v6 = v5;
    MEMORY[0x1BFAFE460](v17, -1, -1);
    MEMORY[0x1BFAFE460](v15, -1, -1);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  v23 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](18);
  MEMORY[0x1BFAFD240](0xD000000000000012, 0x80000001BABF8050);
  MEMORY[0x1BFAFD240](a3, a4);
  v18 = v21;
  v19 = v22;
  v21 = v23;
  v22 = v18;
  v23 = v19;
  SQLDatabase.perform(_:)(&v21);

  if (!v6)
  {
  }

  return result;
}

uint64_t sub_1BABA4D2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v10 = sub_1BABE72BC();
  __swift_project_value_buffer(v10, qword_1EBC25018);

  v11 = sub_1BABE729C();
  v12 = sub_1BABE78DC();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_1BAAFA460(a1, a2, &v20);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1BAAFA460(a3, a4, &v20);
    _os_log_impl(&dword_1BAACF000, v11, v12, "Rollback to transaction savepoint [%{public}s]: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v14, -1, -1);
    v5 = v23;
    MEMORY[0x1BFAFE460](v13, -1, -1);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](22);
  MEMORY[0x1BFAFD240](0xD000000000000016, 0x80000001BABF8070);
  MEMORY[0x1BFAFD240](a3, a4);
  v15 = v20;
  v16 = v21;
  v20 = v22;
  v21 = v15;
  v22 = v16;
  SQLDatabase.perform(_:)(&v20);

  if (!v5)
  {

    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFAFD200](18);
    MEMORY[0x1BFAFD240](0xD000000000000012, 0x80000001BABF8050);
    MEMORY[0x1BFAFD240](a3, a4);
    v18 = v20;
    v19 = v21;
    v20 = v22;
    v21 = v18;
    v22 = v19;
    SQLDatabase.perform(_:)(&v20);
  }

  return result;
}

void sub_1BABA5014(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v16[0] = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v16[1] = 0xD00000000000001BLL;
  v16[2] = 0x80000001BABF7EB0;
  SQLDatabase.perform(_:)(v16);
  if (v3)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1EBC25018);

    v7 = sub_1BABE729C();
    v8 = sub_1BABE78DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1BAAFA460(a2, a3, v16);
      _os_log_impl(&dword_1BAACF000, v7, v8, "Unable to execute wal_checkpoint(FULL, privacy: .public) for: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFAFE460](v10, -1, -1);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }
  }

  else
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v11 = sub_1BABE72BC();
    __swift_project_value_buffer(v11, qword_1EBC25018);

    v12 = sub_1BABE729C();
    v13 = sub_1BABE78DC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1BAAFA460(a2, a3, v16);
      _os_log_impl(&dword_1BAACF000, v12, v13, "Successfully executed wal_checkpoint(FULL, privacy: .public) for: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAFE460](v15, -1, -1);
      MEMORY[0x1BFAFE460](v14, -1, -1);
    }
  }
}

void sub_1BABA5310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABA5370(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unsigned int a5)
{
  v6 = *a3;
  if (v6 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = *(a2 + 16);
  v9 = sub_1BABA586C(0, 0, v6, v8, 0, a2);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  if (v8 < v13)
  {
    goto LABEL_34;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v13 != v8)
  {

    v31 = v8;
    while (v13 < v8)
    {
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_32;
      }

      v33 = v13 + 1;
      v34 = *(a2 + 16 * v13 + 32);
      v19 = swift_allocObject();
      *(v19 + 16) = v34;
      v20 = qword_1EBC12270;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_1BABE72BC();
      __swift_project_value_buffer(v21, qword_1EBC25018);
      v22 = sub_1BABE729C();
      v23 = sub_1BABE790C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = a4;
        v25 = swift_slowAlloc();
        *v25 = 134349312;
        *(v25 + 4) = v12;
        *(v25 + 12) = 2050;
        *(v25 + 14) = v12 + 1;
        _os_log_impl(&dword_1BAACF000, v22, v23, "Migrating from minor revision %{public}ld to %{public}ld", v25, 0x16u);
        v26 = v25;
        a4 = v24;
        MEMORY[0x1BFAFE460](v26, -1, -1);
      }

      sub_1BABE7AEC();

      strcpy(v36, "MigratingFrom_");
      HIBYTE(v36[1]) = -18;
      v5 = MEMORY[0x1E69E6530];
      v27 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v27);

      MEMORY[0x1BFAFD240](1601139807, 0xE400000000000000);
      v38 = v12 + 1;
      v28 = sub_1BABE7EAC();
      MEMORY[0x1BFAFD240](v28);

      sub_1BABA58E4(v36[0], v36[1], a4, sub_1BABA7030, v19, a4);

      if (v35)
      {

        return 1;
      }

      ++v12;
      ++v13;
      v8 = v31;
      if (v33 == v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_12:

  v37 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](22);
  MEMORY[0x1BFAFD240](0xD000000000000016, 0x80000001BABF8030);
  v5 = __PAIR64__(a5, a5) >> 16;
  LODWORD(v38) = v5;
  v14 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v14);

  v36[0] = v37;
  v36[1] = 0;
  v37 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v36);

  if (!v35)
  {

    if (qword_1EBC12270 == -1)
    {
LABEL_14:
      v15 = sub_1BABE72BC();
      __swift_project_value_buffer(v15, qword_1EBC25018);
      v16 = sub_1BABE729C();
      v17 = sub_1BABE790C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67240192;
        *(v18 + 4) = v5;
        _os_log_impl(&dword_1BAACF000, v16, v17, "Set revision to %{public}d", v18, 8u);
        MEMORY[0x1BFAFE460](v18, -1, -1);
      }

      return 1;
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1BABA586C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 1)
  {
    if (v6 < 0 || v6 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a3)
  {
    return 0;
  }

LABEL_9:
  v7 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1BABA58E4(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v13 = a3[3];
  os_unfair_lock_lock(v13 + 4);
  v14 = a3[9];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  a3[9] = v16;
  os_unfair_lock_assert_owner(v13 + 4);
  v17 = a3[8];
  v18 = a3[9];
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_6;
  }

  v47 = a6;
  v48 = a4;
  os_unfair_lock_unlock(v13 + 4);
  v50 = v13;
  sub_1BABE7AEC();

  strcpy(v51, "transaction_");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  MEMORY[0x1BFAFD240](a1, a2);
  MEMORY[0x1BFAFD240](95, 0xE100000000000000);
  v53 = v19;
  v20 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v20);

  a5 = v51[0];
  v13 = v51[1];
  v49 = sub_1BABA497C();
  v52 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](10);
  MEMORY[0x1BFAFD240](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFAFD240](v51[0], v51[1]);
  v51[0] = v52;
  v51[1] = 0;
  v52 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v51);
  if (v6)
  {

    MEMORY[0x1EEE9AC00](v21);
    os_unfair_lock_lock(v50 + 4);
    sub_1BAB7841C(v22);
    os_unfair_lock_unlock(v50 + 4);
    swift_willThrow();
LABEL_13:
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

  v44 = 0;
  v45 = a1;
  v46 = a2;

  if (qword_1EBC12270 != -1)
  {
    goto LABEL_23;
  }

LABEL_6:
  v23 = sub_1BABE72BC();
  v24 = __swift_project_value_buffer(v23, qword_1EBC25018);

  v43 = v24;
  v25 = sub_1BABE729C();
  v26 = sub_1BABE78DC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v51[0] = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_1BAAFA460(v45, v46, v51);
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1BAAFA460(a5, v13, v51);
    _os_log_impl(&dword_1BAACF000, v25, v26, "Beginning db savepoint [%{public}s]: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v28, -1, -1);
    MEMORY[0x1BFAFE460](v27, -1, -1);
  }

  v29 = v50;
  os_unfair_lock_lock(v50 + 4);
  v32 = a3[8];
  v31 = a3[9];
  v15 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  a3[9] = v33;
  os_unfair_lock_assert_owner(v50 + 4);
  v34 = a3[8];
  v15 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v15)
  {
LABEL_25:
    __break(1u);
    os_unfair_lock_unlock(v30);
    __break(1u);
    os_unfair_lock_unlock(v50 + 4);
    __break(1u);

    os_unfair_lock_unlock(v44 + 4);
    __break(1u);
    return;
  }

  a3[8] = v35;
  os_unfair_lock_assert_owner(v50 + 4);
  os_unfair_lock_unlock(v50 + 4);
  v48(v47);
  if (v44)
  {
    sub_1BABA4D2C(v45, v46, a5, v13);

    v36 = swift_willThrow();
    MEMORY[0x1EEE9AC00](v36);
    os_unfair_lock_lock(v50 + 4);
    sub_1BAB7841C(v37);
    os_unfair_lock_unlock(v50 + 4);
    goto LABEL_13;
  }

  sub_1BABA4ADC(v45, v46, a5, v13, a3);

  if (v32)
  {

    v38 = sub_1BABE729C();
    v39 = sub_1BABE78DC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      MEMORY[0x1EEE9AC00](v40);
      os_unfair_lock_lock(v50 + 4);
      sub_1BAB92EC8(v51);
      os_unfair_lock_unlock(v50 + 4);
      *(v40 + 4) = v51[0];

      _os_log_impl(&dword_1BAACF000, v38, v39, "Outstanding transactions remaining: %{public}ld", v40, 0xCu);
      MEMORY[0x1BFAFE460](v40, -1, -1);
    }

    else
    {
    }

    v29 = v50;
  }

  else
  {
    sub_1BABA5014(a3, v45, v46);
  }

  MEMORY[0x1EEE9AC00](v41);
  os_unfair_lock_lock(v29 + 4);
  sub_1BAB7841C(v42);
  os_unfair_lock_unlock(v29 + 4);
  [v49 invalidate];
  swift_unknownObjectRelease();
}

void sub_1BABA6068(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, void *a7, unsigned int a8)
{
  v9 = v8;
  v14 = a3;
  v17 = *(a3 + 24);
  os_unfair_lock_lock(v17 + 4);
  v18 = *(v14 + 72);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_24;
  }

  v56 = a5;
  *(v14 + 72) = v20;
  os_unfair_lock_assert_owner(v17 + 4);
  v21 = *(v14 + 64);
  v22 = *(v14 + 72);
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v53 = a6;
  v54 = a7;
  v55 = a8;
  os_unfair_lock_unlock(v17 + 4);
  sub_1BABE7AEC();

  strcpy(v60, "transaction_");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  MEMORY[0x1BFAFD240](a1, a2);
  MEMORY[0x1BFAFD240](95, 0xE100000000000000);
  v62 = v23;
  v24 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v24);

  v25 = v14;
  v9 = v60[0];
  v14 = v60[1];
  v58 = sub_1BABA497C();
  v61 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](10);
  MEMORY[0x1BFAFD240](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFAFD240](v60[0], v60[1]);
  v60[0] = v61;
  v60[1] = 0;
  v61 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v60);
  v59 = v8;
  if (v8)
  {

    MEMORY[0x1EEE9AC00](v26);
    os_unfair_lock_lock(v17 + 4);
    sub_1BAB7841C(v27);
    os_unfair_lock_unlock(v17 + 4);
    swift_willThrow();
LABEL_14:
    [v58 invalidate];
    swift_unknownObjectRelease();
    return;
  }

  v49 = v25;
  v50 = a1;
  v51 = v17;
  v52 = a2;

  if (qword_1EBC12270 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v28 = sub_1BABE72BC();
  __swift_project_value_buffer(v28, qword_1EBC25018);
  v29 = v52;

  v30 = sub_1BABE729C();
  v31 = sub_1BABE78DC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v60[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_1BAAFA460(v50, v52, v60);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_1BAAFA460(v9, v14, v60);
    _os_log_impl(&dword_1BAACF000, v30, v31, "Beginning db savepoint [%{public}s]: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFE460](v33, -1, -1);
    v34 = v32;
    v29 = v52;
    MEMORY[0x1BFAFE460](v34, -1, -1);
  }

  os_unfair_lock_lock(v51 + 4);
  v35 = *(v49 + 72);
  v19 = __OFSUB__(v35, 1);
  v36 = v35 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v49 + 64);
    *(v49 + 72) = v36;
    os_unfair_lock_assert_owner(v51 + 4);
    v38 = *(v49 + 64);
    v19 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (!v19)
    {
      *(v49 + 64) = v39;
      os_unfair_lock_assert_owner(v51 + 4);
      os_unfair_lock_unlock(v51 + 4);
      v40 = sub_1BABA5370(a4, v56, v53, v54, v55);
      if (v59)
      {
        sub_1BABA4D2C(v50, v29, v9, v14);

        v41 = swift_willThrow();
        MEMORY[0x1EEE9AC00](v41);
        os_unfair_lock_lock(v51 + 4);
        sub_1BAB7841C(v42);
        os_unfair_lock_unlock(v51 + 4);
        goto LABEL_14;
      }

      if (v40)
      {
        sub_1BABA4ADC(v50, v29, v9, v14, v49);
      }

      else
      {
        sub_1BABA4D2C(v50, v29, v9, v14);
      }

      if (v37)
      {

        v43 = sub_1BABE729C();
        v44 = sub_1BABE78DC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134349056;
          MEMORY[0x1EEE9AC00](v45);
          v46 = v51;
          os_unfair_lock_lock(v51 + 4);
          sub_1BAB92EC8(v60);
          os_unfair_lock_unlock(v51 + 4);
          *(v45 + 4) = v60[0];

          _os_log_impl(&dword_1BAACF000, v43, v44, "Outstanding transactions remaining: %{public}ld", v45, 0xCu);
          MEMORY[0x1BFAFE460](v45, -1, -1);

LABEL_22:
          MEMORY[0x1EEE9AC00](v47);
          os_unfair_lock_lock(v46 + 4);
          sub_1BAB7841C(v48);
          os_unfair_lock_unlock(v46 + 4);
          [v58 invalidate];
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_1BABA5014(v49, v50, v29);
      }

      v46 = v51;
      goto LABEL_22;
    }
  }

  __break(1u);
  os_unfair_lock_unlock(v51 + 4);
  __break(1u);

  os_unfair_lock_unlock((v14 + 16));
  __break(1u);
}

uint64_t sub_1BABA6844(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v57 = sub_1BABE6BAC();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for SQLDatabase.Storage();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v19 = *a2;
  v20 = a2[1];
  v49 = v19;
  v52 = a1;
  sub_1BAB97A98(a1, &v47 - v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CA0);
  v22 = *(*(v21 - 8) + 48);
  LODWORD(a1) = v22(v18, 1, v21);
  result = sub_1BAB97AFC(v18);
  if (a1 != 1 || v20 == 0)
  {
    v50 = v20;
    v51 = a4;
    v25 = *(v55 + 56);
    v25(v12, 1, 1, v57);
    v26 = v52;
    sub_1BAB97A98(v52, v16);
    v27 = v12;
    if (v22(v16, 1, v21) == 1)
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E698E788]) initWithInMemoryDatabase];
    }

    else
    {
      v29 = *(v21 + 48);
      v47 = v12;
      v30 = *&v16[v29];
      v55 = *(v55 + 32);
      v31 = v48;
      v32 = v16;
      v16 = v57;
      (v55)(v48, v32, v57);
      v33 = objc_allocWithZone(MEMORY[0x1E698E788]);
      v34 = v26;
      v35 = sub_1BABE6B2C();
      v36 = v30;
      v27 = v47;
      v28 = [v33 initWithFileURL:v35 dataProtectionClass:v36];

      v26 = v34;
      sub_1BAAD2E14(v27, &unk_1EBC13D70);
      (v55)(v27, v31, v16);
      v25(v27, 0, 1, v16);
    }

    v37 = v53;
    v38 = v28;
    v39 = v50;
    v40 = v51;
    if (v38)
    {
      v41 = v38;
      sub_1BABA6FC0(v27, v54);
      v56[0] = v49;
      v56[1] = v39;
      if (v37)
      {
        v42 = v27;
        v43 = swift_allocObject();
        *(v43 + 16) = v37;
        *(v43 + 24) = v40;
        v44 = sub_1BABA71A0;
      }

      else
      {
        v44 = nullsub_1;
        v42 = v27;
        v43 = 0;
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *(v46 + 24) = v43;
      type metadata accessor for SQLDatabase();
      v16 = swift_allocObject();
      sub_1BAADAF5C(v37);
      SQLDatabase.init(database:loggableDatabaseURL:schema:corruptionHandler:)(v41, v54, v56, sub_1BABA7168, v46);

      sub_1BAADAFD4(v37);
      sub_1BAB97AFC(v26);
      sub_1BAAD2E14(v42, &unk_1EBC13D70);
    }

    else
    {

      sub_1BABA2400();
      swift_allocError();
      *v45 = 2;
      swift_willThrow();
      sub_1BAADAFD4(v37);
      sub_1BAB97AFC(v26);
      sub_1BAAD2E14(v27, &unk_1EBC13D70);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BABA6D8C()
{
  result = qword_1EBC13E68;
  if (!qword_1EBC13E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E68);
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabase.Storage()
{
  result = qword_1EBC12398;
  if (!qword_1EBC12398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABA6EF4()
{
  sub_1BABA6F4C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BABA6F4C()
{
  if (!qword_1EBC123E0)
  {
    sub_1BABE6BAC();
    type metadata accessor for BSSqliteDatabaseConnectionDataProtectionClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC123E0);
    }
  }
}

uint64_t sub_1BABA6FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BABA7030(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1BABA7060()
{
  v1 = *(v0 + 80);
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v1 + 1;
    sub_1BABA3224(v1);
  }
}

void sub_1BABA70A4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    *(v0 + 80) = v1 - 1;
    sub_1BABA3224(v1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BABA70E0()
{
  v1 = *(v0 + 72);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 72) = v3;
    os_unfair_lock_assert_owner((*(v0 + 24) + 16));
  }
}

void sub_1BABA7124()
{
  v1 = *(v0 + 64);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v3;
    os_unfair_lock_assert_owner((*(v0 + 24) + 16));
  }
}

uint64_t sub_1BABA7168(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t SQLSchemaBuilder.init(majorVersion:schemaRevisions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BABE7B0C();
  SQLResult.subscript.getter(v2, v3, a1);
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1BABE7B0C();
  SQLResult.subscript.getter(v4, v5, &v10);

  if (v11 == 255)
  {
    v7 = *(*(a1 - 8) + 56);

    return v7(a2, 1, 1, a1);
  }

  else
  {
    v8 = v10;
    v9 = v11;
    sub_1BABA1500(a1, a2);

    return sub_1BAAE7878(v8, *(&v8 + 1), v9);
  }
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *v4;
  SQLResult.subscript.getter(a1, a2, &v11);
  if (v12 == 255)
  {
    v8 = *(*(a3 - 8) + 56);

    return v8(a4, 1, 1, a3);
  }

  else
  {
    v9 = v11;
    v10 = v12;
    sub_1BABA1500(a3, a4);

    return sub_1BAAE7878(v9, *(&v9 + 1), v10);
  }
}

unint64_t SQLResult.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v4 = *v2 + 40 * result;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);

    sub_1BAAE7800(v5, v6, v7);

    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1BABA7504(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 count];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](0xD000000000000035, 0x80000001BABF8100);
    *&v22 = v2;
    v18 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v18);

    goto LABEL_17;
  }

  v6 = v5;
  if (v5)
  {
    v2 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = [a1 keyAtIndex_];
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = v8;
      v10 = sub_1BABE751C();
      v12 = v11;

      if (![a1 objectAtIndex_])
      {
        break;
      }

      sub_1BABE79CC();
      swift_unknownObjectRelease();
      sub_1BAAE8B14(&v24, v26);
      *&v24 = v10;
      *(&v24 + 1) = v12;
      sub_1BAAFBEE8(v26, &v25);
      sub_1BAAD2DAC(&v24, &v22, &unk_1EBC132C0);
      v20 = v22;
      sub_1BAAE8B14(&v23, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BAAF9FD4(0, v7[2] + 1, 1, v7);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1BAAF9FD4((v13 > 1), v14 + 1, 1, v7);
      }

      ++v2;
      sub_1BAAD2E14(&v24, &unk_1EBC132C0);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v7[2] = v14 + 1;
      v15 = &v7[6 * v14];
      v16 = v21[1];
      v15[3] = v21[0];
      v15[4] = v16;
      v15[2] = v20;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }

    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](0xD000000000000031, 0x80000001BABF8140);
    MEMORY[0x1BFAFD240](v10, v12);
    while (1)
    {
LABEL_17:
      sub_1BABE7C9C();
      __break(1u);
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      sub_1BABE7AEC();

      *&v24 = 0xD000000000000027;
      *(&v24 + 1) = 0x80000001BABF8180;
      swift_getErrorValue();
      v19 = sub_1BABE7F2C();
      MEMORY[0x1BFAFD240](v19);
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v17 = sub_1BABA80BC(v7);

  *a2 = v17;
}

uint64_t SQLResult.allColumns.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAAC0(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_1BAAE7800(v7, v8, v9);
      sub_1BAAE7878(v7, v8, v9);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BAAFAAC0((v10 > 1), v11 + 1, 1);
      }

      v4 += 40;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t SQLResult.allValues.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAC94(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;

      sub_1BAAE7800(v5, v6, v7);

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1BAAFAC94((v8 > 1), v9 + 1, 1);
      }

      v4 += 40;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

Swift::Int __swiftcall SQLResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = (*v3 + 64);
  v9 = v7 + 1;
  while (--v9)
  {
    v10 = *(v8 - 2);
    v11 = *(v8 - 1);
    v12 = *v8;
    if (*(v8 - 4) != v5 || *(v8 - 3) != a2)
    {
      v8 += 40;
      result = sub_1BABE7EDC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    sub_1BAAE7800(v10, v11, v12);

    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    return result;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

void (*sub_1BABA7B90(uint64_t *a1, unint64_t *a2))(void *a1)
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
  *(v4 + 32) = sub_1BABA7C50(v4, *a2);
  return sub_1BABA7C08;
}

void sub_1BABA7C08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1BABA7C50(uint64_t (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  if (*(*v2 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v2 + 40 * a2;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);

    sub_1BAAE7800(v5, v6, v7);

    *v3 = v5;
    *(v3 + 1) = v6;
    *(v3 + 16) = v7;
    return sub_1BABA7CEC;
  }

  return result;
}

uint64_t *sub_1BABA7CFC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1BABA7D28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
}

uint64_t *sub_1BABA7D50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BABA7D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1BABA8308(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1BABA7DB8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1BABA7DF8(uint64_t *result, uint64_t *a2)
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

void *sub_1BABA7E14(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BABA7E30(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1BABA7E4C@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *sub_1BABA7E64(void *result)
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

void *sub_1BABA7E90()
{
  v1 = sub_1BABA8034(*v0);

  return v1;
}

unint64_t sub_1BABA7EF8()
{
  result = qword_1EBC13E80;
  if (!qword_1EBC13E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13E80);
  }

  return result;
}

void *sub_1BABA8034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BAB1DFBC(*(a1 + 16), 0);

  v4 = sub_1BAB20570(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BABA80BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAC74(0, v1, 0);
    v2 = v20;
    for (i = a1 + 32; ; i += 48)
    {
      sub_1BAAD2DAC(i, v19, &qword_1EBC128E8);
      sub_1BAAD2DAC(v19, &v15, &qword_1EBC128E8);

      SQLValue.init(_:)(v16, &v17);
      v5 = v18;
      if (v18 == 255)
      {
        break;
      }

      v14 = v17;
      v15 = v19[0];
      v16[0] = v19[1];
      v16[1] = v19[2];
      v6 = v19[0];
      __swift_destroy_boxed_opaque_existential_1(v16);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BAAFAC74((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 40 * v8;
      *(v9 + 32) = v6;
      *(v9 + 48) = v14;
      *(v9 + 64) = v5;
      if (!--v1)
      {
        return v2;
      }
    }

    sub_1BAAD2DAC(v19, &v15, &qword_1EBC128E8);

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    sub_1BABE7AEC();

    *&v17 = 0xD00000000000002ELL;
    *(&v17 + 1) = 0x80000001BABF81B0;
    v10 = sub_1BABE803C();
    MEMORY[0x1BFAFD240](v10);

    v11 = v17;
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1BABA83D8();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    sub_1BAAD2E14(v19, &qword_1EBC128E8);
  }

  return v2;
}

uint64_t sub_1BABA8308(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1BABA83D8()
{
  result = qword_1EBC13EB8;
  if (!qword_1EBC13EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13EB8);
  }

  return result;
}

unint64_t sub_1BABA8450()
{
  result = qword_1EBC13EC0;
  if (!qword_1EBC13EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13EC0);
  }

  return result;
}

ReplicatorServices::SQLStatement::StringInterpolation __swiftcall SQLStatement.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[2] = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v4 = MEMORY[0x1BFAFD200](literalCapacity);
  result.bindings._rawValue = v6;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(_:)()
{
  v0 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v0);
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(bind:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BABA876C(v4, v1, v2, v3);
}

ReplicatorServices::SQLStatement __swiftcall SQLStatement.init(stringInterpolation:)(ReplicatorServices::SQLStatement stringInterpolation)
{
  v2 = *stringInterpolation.bindings._rawValue;
  v3 = *(stringInterpolation.bindings._rawValue + 1);
  *v1 = *(stringInterpolation.bindings._rawValue + 2);
  v1[1] = v2;
  v1[2] = v3;
  return stringInterpolation;
}

ReplicatorServices::SQLStatement __swiftcall SQLStatement.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  *v4 = v5;
  v4[1] = countAndFlagsBits;
  v4[2] = object;
  result.parameterizedStatement._object = v7;
  result.parameterizedStatement._countAndFlagsBits = v6;
  result.bindings._rawValue = v5;
  return result;
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(_:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_1BABA8608(&v3);
}

uint64_t sub_1BABA8608(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x676E69646E696240, 0xE800000000000000);
  sub_1BAAE7800(v2, v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 16);
  sub_1BAAE5904(v2, v3, v4, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v8;
  return result;
}

uint64_t sub_1BABA8708@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  return MEMORY[0x1BFAFD200](a1);
}

uint64_t *sub_1BABA8758@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t sub_1BABA876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_2, a1, a3);
  sub_1BAAE779C(v12, &v8);
  SQLValue.init(_:)(&v8, &v10);
  v8 = v10;
  v9 = v11;
  sub_1BABA8608(&v8);
  sub_1BAAE7878(v8, *(&v8 + 1), v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_1BABA8834()
{
  result = qword_1EBC13EC8;
  if (!qword_1EBC13EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13EC8);
  }

  return result;
}

unint64_t sub_1BABA888C()
{
  result = qword_1EBC13ED0;
  if (!qword_1EBC13ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13ED0);
  }

  return result;
}

unint64_t sub_1BABA88E4()
{
  result = qword_1EBC13ED8;
  if (!qword_1EBC13ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13ED8);
  }

  return result;
}

unint64_t sub_1BABA893C()
{
  result = qword_1EBC13EE0;
  if (!qword_1EBC13EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13EE0);
  }

  return result;
}

uint64_t sub_1BABA89B8(uint64_t a1, int a2)
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

uint64_t sub_1BABA8A00(uint64_t result, int a2, int a3)
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

uint64_t ReplicatorMessageType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReplicatorMessageType.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReplicatorMessageType.clientIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReplicatorMessageType.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 ReplicatorMessageType.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 ReplicatorMessageType.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 ReplicatorMessageType.init(identifier:clientIdentifier:protocolVersion:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

uint64_t sub_1BABA8BB8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BABA8C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BABA9724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BABA8C50(uint64_t a1)
{
  v2 = sub_1BABA94A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABA8C8C(uint64_t a1)
{
  v2 = sub_1BABA94A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorMessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13EE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABA94A8();
  sub_1BABE800C();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1BABE7E5C();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    LOBYTE(v19) = 1;
    sub_1BABE7E5C();
    v19 = v11;
    v20 = v12;
    v21 = 2;
    sub_1BAB2E164();
    sub_1BABE7E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicatorMessageType.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  return MEMORY[0x1BFAFDC40](v2);
}

uint64_t ReplicatorMessageType.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorMessageType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13EF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABA94A8();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  v19 = v9;
  LOBYTE(v20) = 1;
  v17 = sub_1BABE7DAC();
  v18 = v12;
  v21 = 2;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BABA926C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t sub_1BABA9300()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  return MEMORY[0x1BFAFDC40](v2);
}

uint64_t sub_1BABA9364()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

BOOL _s18ReplicatorServices0A11MessageTypeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BABE7EDC() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1BABE7EDC() & 1) == 0)
  {
    return 0;
  }

  return v4 == v8 && v5 == v9;
}

unint64_t sub_1BABA94A8()
{
  result = qword_1EBC13EF0;
  if (!qword_1EBC13EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13EF0);
  }

  return result;
}

unint64_t sub_1BABA9500()
{
  result = qword_1EBC13F00;
  if (!qword_1EBC13F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F00);
  }

  return result;
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

uint64_t sub_1BABA9568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BABA95B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BABA9620()
{
  result = qword_1EBC13F08;
  if (!qword_1EBC13F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F08);
  }

  return result;
}

unint64_t sub_1BABA9678()
{
  result = qword_1EBC13F10;
  if (!qword_1EBC13F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F10);
  }

  return result;
}

unint64_t sub_1BABA96D0()
{
  result = qword_1EBC13F18;
  if (!qword_1EBC13F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F18);
  }

  return result;
}

uint64_t sub_1BABA9724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BABF81E0 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

void *ClientDescriptorPersistentStore.__allocating_init(database:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BABAA09C(a1);

  return v2;
}

void *ClientDescriptorPersistentStore.init(database:)(uint64_t a1)
{
  v1 = sub_1BABAA09C(a1);

  return v1;
}

uint64_t ClientDescriptorPersistentStore.deinit()
{

  return v0;
}

uint64_t ClientDescriptorPersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void ClientDescriptorPersistentStore.clientDescriptors()()
{
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB8F380(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ClientDescriptorPersistentStore.update(clientDescriptor:)(ReplicatorServices::ClientDescriptor *clientDescriptor)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAB78084(v4);
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1BABA9A84(uint64_t a1, uint64_t a2)
{
  Database.update(reason:_:)();
  if (v2)
  {
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  swift_beginAccess();

  sub_1BAB21C84(a2, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1BAAE6D4C(a2, v5, v6, isUniquelyReferenced_nonNull_native);

  *(a1 + 32) = v9[0];
  return swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ClientDescriptorPersistentStore.remove(clientID:)(Swift::String clientID)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAB7841C(v4);
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1BABA9C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Database.update(reason:_:)();
  if (v3)
  {
  }

  swift_beginAccess();

  sub_1BAB3C670(a2, a3, v7);

  v8[2] = v7[2];
  v8[3] = v7[3];
  v8[4] = v7[4];
  v8[0] = v7[0];
  v8[1] = v7[1];
  sub_1BAAD2E14(v8, &qword_1EBC12A88);
  return swift_endAccess();
}

void sub_1BABA9D1C()
{
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB92EC8(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

void sub_1BABA9DA4()
{
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

void sub_1BABA9E48()
{
  v2 = *(*v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

void sub_1BABA9ED4(uint64_t a1)
{

  v3 = sub_1BAB235A0();
  if (v1)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v4 = sub_1BABE72BC();
    __swift_project_value_buffer(v4, qword_1EBC25018);
    v5 = v1;
    v6 = sub_1BABE729C();
    v7 = sub_1BABE78EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BAACF000, v6, v7, "Could not load client descriptors from database: %{public}@", v8, 0xCu);
      sub_1BAAD2E14(v9, &qword_1EBC12A00);
      MEMORY[0x1BFAFE460](v9, -1, -1);
      MEMORY[0x1BFAFE460](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;

    swift_beginAccess();
    *(a1 + 32) = v12;
  }
}

void *sub_1BABAA09C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  v2[3] = v4;
  v2[4] = v6;
  v2[2] = a1;

  os_unfair_lock_lock(v5);
  sub_1BAB7841C(v7);
  os_unfair_lock_unlock(v5);
  return v2;
}

uint64_t sub_1BABAA1E8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

__n128 sub_1BABAA264()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v5[2] = v1[2];
  v5[3] = v2;
  v5[4] = v1[4];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  sub_1BAB24E90(v5);
  return result;
}

uint64_t RunOncePersistentStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunOncePersistentStore.isComplete(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v4 = sub_1BABBAC04(countAndFlagsBits, object);
  if (v1)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v5 = sub_1BABE72BC();
    __swift_project_value_buffer(v5, qword_1EBC25018);
    v6 = v1;
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Could not read database: %{public}@", v9, 0xCu);
      sub_1BAB2F654(v10);
      MEMORY[0x1BFAFE460](v10, -1, -1);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }

  return v4 & 1;
}

uint64_t RunOncePersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *ZoneVersionPersistentStore.__allocating_init(database:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BABAB6D0(a1);

  return v2;
}

void *ZoneVersionPersistentStore.init(database:)(uint64_t a1)
{
  v1 = sub_1BABAB6D0(a1);

  return v1;
}

uint64_t ZoneVersionPersistentStore.deinit()
{

  return v0;
}

uint64_t ZoneVersionPersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BABAA894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (*(v8 + 16))
  {

    v9 = sub_1BAAD37E8(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (*(v11 + 16))
      {
        v12 = sub_1BABD5C34(a3);
        if (v13)
        {
          v14 = v12;
          v15 = *(v11 + 56);
          v16 = sub_1BABE6CFC();
          v17 = *(v16 - 8);
          (*(v17 + 16))(a4, v15 + *(v17 + 72) * v14, v16);

          return (*(v17 + 56))(a4, 0, 1, v16);
        }
      }
    }
  }

  v19 = sub_1BABE6CFC();
  return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
}

uint64_t sub_1BABAAA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  v23 = a3;
  v26 = a4;
  Database.update(reason:_:)();
  if (v4)
  {
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1BAAD37E8(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = sub_1BAAE7E64(MEMORY[0x1E69E7CC0]);
  }

  (*(v10 + 16))(v12, a4, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v17;
  sub_1BAAE60EC(v12, v23, isUniquelyReferenced_nonNull_native);
  v19 = v27;
  swift_beginAccess();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1BAAE5F20(v19, a2, v20);
  *(a1 + 32) = v28;
  return swift_endAccess();
}

uint64_t sub_1BABAAC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  Database.update(reason:_:)();
  if (v2)
  {
  }

  (*(v5 + 16))(v7, a2, v4);
  swift_beginAccess();
  sub_1BAB2FB98(0, v7);
  return swift_endAccess();
}

uint64_t sub_1BABAADD0(uint64_t a1)
{
  Database.update(reason:_:)();
  if (v1)
  {
  }

  v3 = sub_1BAAFCF40();

  swift_beginAccess();
  *(a1 + 32) = v3;
}

uint64_t sub_1BABAAEBC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BABE7A5C())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      break;
    }

LABEL_12:
    v1 = sub_1BABB6D5C(v3);

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1BABE7A4C();
      sub_1BABE71AC();
      sub_1BABAB7E4();
      sub_1BABE784C();
      v1 = v27;
      v8 = v28;
      v9 = v29;
      v10 = v30;
      v11 = v31;
    }

    else
    {
      v10 = 0;
      v12 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v1 + 56);
    }

    v15 = (v9 + 64) >> 6;
    if (v1 < 0)
    {
      while (sub_1BABE7A7C())
      {
        sub_1BABE71AC();
        v21 = swift_dynamicCast();
        v18 = v10;
        v19 = v11;
        if (!v26)
        {
          break;
        }

LABEL_27:
        v22 = *(v25 + 24);
        v23 = MEMORY[0x1EEE9AC00](v21);
        MEMORY[0x1EEE9AC00](v23);
        os_unfair_lock_lock(v22 + 4);
        sub_1BAB7841C(v24);
        os_unfair_lock_unlock(v22 + 4);

        v10 = v18;
        v11 = v19;
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

      return sub_1BAAF10B4();
    }

LABEL_19:
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (v11)
    {
LABEL_23:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      if (v20)
      {
        goto LABEL_27;
      }

      return sub_1BAAF10B4();
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        return sub_1BAAF10B4();
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1BABE7B9C();
  if ((i & 0x8000000000000000) == 0)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        MEMORY[0x1BFAFD7A0](v5);
        sub_1BABE720C();
        swift_unknownObjectRelease();
        sub_1BABE7B6C();
        sub_1BABE7BAC();
        sub_1BABE7BBC();
        sub_1BABE7B7C();
        v5 = v6;
      }

      while (i != v6);
    }

    else
    {
      v7 = v1 + 32;
      do
      {
        v7 += 8;

        sub_1BABE720C();

        sub_1BABE7B6C();
        sub_1BABE7BAC();
        sub_1BABE7BBC();
        sub_1BABE7B7C();
        --i;
      }

      while (i);
    }

    v3 = v27;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BABAB20C(uint64_t a1)
{
  Database.update(reason:_:)();
  if (v1)
  {
  }

  swift_beginAccess();
  *(a1 + 32) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1BABAB2D0()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB8F398(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1BABAB33C()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BABAB93C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BABAB3B4()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB7841C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BABAB424()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB7841C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BABAB4B4()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB78084(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BABAB518(uint64_t a1)
{

  v3 = sub_1BAAFCF40();
  if (v1)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v4 = sub_1BABE72BC();
    __swift_project_value_buffer(v4, qword_1EBC25018);
    v5 = v1;
    v6 = sub_1BABE729C();
    v7 = sub_1BABE78EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BAACF000, v6, v7, "Could not load zone versions from database: %{public}@", v8, 0xCu);
      sub_1BAB2F654(v9);
      MEMORY[0x1BFAFE460](v9, -1, -1);
      MEMORY[0x1BFAFE460](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;

    swift_beginAccess();
    *(a1 + 32) = v12;
  }
}

void *sub_1BABAB6D0(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  v2[3] = v4;
  v2[4] = v6;
  v2[2] = a1;

  os_unfair_lock_lock(v5);
  sub_1BAB7841C(v7);
  os_unfair_lock_unlock(v5);
  return v2;
}

unint64_t sub_1BABAB7E4()
{
  result = qword_1EBC12200;
  if (!qword_1EBC12200)
  {
    sub_1BABE71AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12200);
  }

  return result;
}

uint64_t MetadataPersistentStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MetadataPersistentStore.metadata(for:)()
{

  v0 = sub_1BAAF1B04();

  return v0;
}

{

  v0 = sub_1BAAF2618();

  return v0;
}

uint64_t MetadataPersistentStore.recordMetadataWithClientDefinedIDs(clientID:)(uint64_t a1, uint64_t a2)
{

  v4 = sub_1BAAF1618(a1, a2);

  return v4;
}

uint64_t MetadataPersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t MetadataPersistentStore.clientDefinedID(for:)()
{

  v0 = sub_1BAAF2C5C();

  return v0;
}

uint64_t MetadataPersistentStore.localDeviceID.getter()
{
  v0 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_1BAB28028(v2);

  v3 = *v2;

  sub_1BABB7220(v2, type metadata accessor for Database.LocalDeviceMetadata);
  return v3;
}

uint64_t MetadataPersistentStore.isEnabled.getter()
{
  v0 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BAB28028(v2);

  v3 = v2[17];
  sub_1BABB7220(v2, type metadata accessor for Database.LocalDeviceMetadata);
  return v3;
}

uint64_t MetadataPersistentStore.recordMetadata.getter()
{

  v0 = sub_1BAAF1284();

  return v0;
}

uint64_t MetadataPersistentStore.pairingRelationships.getter()
{
  v79 = sub_1BABE715C();
  v0 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v2 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BABE6CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F20);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - v12;

  v14 = sub_1BAAE8C9C();

  v71 = v2;
  v72 = v7;
  v25 = v79;
  v80 = v13;
  v83 = v6;
  v26 = v14 + 64;
  v27 = 1 << *(v14 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v14 + 64);
  v73 = (v27 + 63) >> 6;
  v69 = v0 + 8;
  v70 = v0 + 16;
  v76 = v0 + 32;
  v77 = v4 + 16;
  v67 = (v4 + 8);
  v62 = (v0 + 40);

  v30 = 0;
  v81 = MEMORY[0x1E69E7CC8];
  v31 = v78;
  v32 = v14;
  v63 = v14 + 64;
  v65 = v4;
  v66 = v0;
  v68 = v3;
  v64 = v14;
  while (v29)
  {
LABEL_15:
    v35 = __clz(__rbit64(v29)) | (v30 << 6);
    v36 = *(v32 + 48);
    v74 = *(v4 + 72);
    v37 = v80;
    v75 = *(v4 + 16);
    v75(v80, v36 + v74 * v35, v3);
    v38 = *(v32 + 56);
    v79 = *(v0 + 72);
    v39 = v72;
    (*(v0 + 16))(v37 + *(v72 + 48), v38 + v79 * v35, v25);
    sub_1BAAD2DAC(v37, v31, &qword_1EBC13F20);
    v40 = *(v39 + 48);
    sub_1BABE711C();
    (*(v0 + 8))(v31 + v40, v25);
    sub_1BAAD2DAC(v37, v82, &qword_1EBC13F20);
    v41 = *(v0 + 32);
    v42 = v71;
    v43 = v25;
    v41();
    v44 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v44;
    v47 = sub_1BAAD37E8(v83);
    v48 = v44[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_26;
    }

    v51 = v46;
    if (v44[3] >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BABDBFB8();
      }
    }

    else
    {
      sub_1BABD69A0(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_1BAAD37E8(v83);
      if ((v51 & 1) != (v53 & 1))
      {
        result = sub_1BABE7EFC();
        __break(1u);
        return result;
      }

      v47 = v52;
    }

    v25 = v84;
    v81 = v84;
    if (v51)
    {
      v25 = v43;
      (*v62)(v84[7] + v47 * v79, v42, v43);
      v3 = v68;
      v33 = *v67;
      (*v67)(v83, v68);
      sub_1BAAD2E14(v80, &qword_1EBC13F20);
    }

    else
    {
      v84[(v47 >> 6) + 8] |= 1 << v47;
      v54 = v83;
      v55 = v68;
      v75((v25[6] + v47 * v74), v83, v68);
      v56 = v42;
      v3 = v55;
      (v41)(v25[7] + v47 * v79, v56, v43);
      v33 = *v67;
      (*v67)(v54, v3);
      sub_1BAAD2E14(v80, &qword_1EBC13F20);
      v57 = v25[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_27;
      }

      v60 = v25;
      v25 = v43;
      v60[2] = v59;
    }

    v29 &= v29 - 1;
    v33(v82, v3);
    v31 = v78;
    v33(v78, v3);
    v4 = v65;
    v0 = v66;
    v32 = v64;
    v26 = v63;
  }

  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v34 >= v73)
    {

      return v81;
    }

    v29 = *(v26 + 8 * v34);
    ++v30;
    if (v29)
    {
      v30 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  swift_once();
  v15 = sub_1BABE72BC();
  __swift_project_value_buffer(v15, qword_1EBC25018);
  v16 = v25;
  v17 = sub_1BABE729C();
  v18 = sub_1BABE78EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    v21 = v25;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1BAACF000, v17, v18, "Could not read pairing relationships from database: %{public}@", v19, 0xCu);
    sub_1BAAD2E14(v20, &qword_1EBC12A00);
    MEMORY[0x1BFAFE460](v20, -1, -1);
    MEMORY[0x1BFAFE460](v19, -1, -1);
  }

  v23 = sub_1BAAE8898(MEMORY[0x1E69E7CC0]);
  return v23;
}

uint64_t MetadataPersistentStore.allowListEnabled.getter()
{
  v0 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BAB28028(v2);

  v3 = v2[18];
  sub_1BABB7220(v2, type metadata accessor for Database.LocalDeviceMetadata);
  return v3;
}

uint64_t MetadataPersistentStore.allowList.getter()
{
  v0 = sub_1BABE6CFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BAB28028(v6);

  v7 = *(v6 + 3);

  sub_1BABB7220(v6, type metadata accessor for Database.LocalDeviceMetadata);
  v8 = *(v7 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BAAFABF0(0, v8, 0);
    v9 = v22;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v12 = *(v10 + 64);
    v19[1] = v7;
    v20 = (v12 + 32) & ~v12;
    v21 = v11;
    v13 = v7 + v20;
    v14 = *(v10 + 56);
    do
    {
      v21(v3, v13, v0);
      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BAAFABF0(v15 > 1, v16 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v16 + 1;
      (*(v10 + 16))(v9 + v20 + v16 * v14, v3, v0);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1BABB6ECC(v9);

  return v17;
}

uint64_t MetadataPersistentStore.localDeviceID.setter(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    Database.update(reason:_:)();
  }

  return result;
}

void sub_1BABADB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v4 + 4);
  sub_1BAAF1130(&v13);
  if (v3)
  {
LABEL_9:
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v4 + 4);
  v11 = v13;

  if (v11 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v9);

  *v9 = a2;
  v9[1] = a3;
  sub_1BAB28948(v9);
  sub_1BABB7220(v9, type metadata accessor for Database.LocalDeviceMetadata);
}

uint64_t (*MetadataPersistentStore.localDeviceID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MetadataPersistentStore.localDeviceID.getter();
  a1[1] = v3;
  return sub_1BABADD68;
}

uint64_t sub_1BABADD68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MetadataPersistentStore.localDeviceID.setter(*a1, v2);
  }

  MetadataPersistentStore.localDeviceID.setter(v3, v2);
}

void sub_1BABADF88(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v11);
  if (v2)
  {
LABEL_9:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v9 = v11;

  if (v9 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v7);
  v7[17] = a2 & 1;
  sub_1BAB28948(v7);
  sub_1BABB7220(v7, type metadata accessor for Database.LocalDeviceMetadata);
}

uint64_t (*MetadataPersistentStore.isEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = MetadataPersistentStore.isEnabled.getter() & 1;
  return sub_1BABAE19C;
}

uint64_t MetadataPersistentStore.lastAuthKitReconciliationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1BAB28028(v4);

  sub_1BAAD2DAC(&v4[*(v2 + 36)], a1, &qword_1EBC132A0);
  return sub_1BABB7220(v4, type metadata accessor for Database.LocalDeviceMetadata);
}

uint64_t sub_1BABAE428(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BAAD2DAC(a1, &v6 - v3, &qword_1EBC132A0);
  return MetadataPersistentStore.lastAuthKitReconciliationDate.setter(v4);
}

void sub_1BABAE69C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF0E90(&v11);
  if (v2)
  {
LABEL_9:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v9 = v11;

  if (v9 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v7);
  sub_1BAB22AD8(a2, v7 + *(v5 + 36));
  sub_1BAB28948(v7);
  sub_1BABB7220(v7, type metadata accessor for Database.LocalDeviceMetadata);
}

void (*MetadataPersistentStore.lastAuthKitReconciliationDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MetadataPersistentStore.lastAuthKitReconciliationDate.getter(v4);
  return sub_1BABAE93C;
}

void sub_1BABAE93C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1BAAD2DAC(*(a1 + 16), v2, &qword_1EBC132A0);
    MetadataPersistentStore.lastAuthKitReconciliationDate.setter(v2);
    sub_1BAAD2E14(v3, &qword_1EBC132A0);
  }

  else
  {
    MetadataPersistentStore.lastAuthKitReconciliationDate.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t (*MetadataPersistentStore.allowListEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = MetadataPersistentStore.allowListEnabled.getter() & 1;
  return sub_1BABAEBD0;
}

uint64_t sub_1BABAEDB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_5:
    sub_1BAB2A0D8(v4);
  }

  v4 = sub_1BAB1DF94(*(a2 + 16), 0);
  v5 = *(sub_1BABE6CFC() - 8);
  v6 = sub_1BAB20A7C(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a2);

  result = sub_1BAAF10B4();
  if (v6 == v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*MetadataPersistentStore.allowList.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = MetadataPersistentStore.allowList.getter();
  return sub_1BABAEF18;
}

uint64_t sub_1BABAEF18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MetadataPersistentStore.allowList.setter();
  }

  MetadataPersistentStore.allowList.setter();
}

void sub_1BABAF158()
{
  sub_1BAAEE6E8();
  if (!v0)
  {
    sub_1BAAF82E0();
  }
}

uint64_t sub_1BABAF4E4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAFD7A0](v6, a2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        a3(v7);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1BABE7A5C();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t (*sub_1BABAF618(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  *a1 = MetadataPersistentStore.localDeviceID.getter();
  a1[1] = v3;
  return sub_1BABADD68;
}

uint64_t (*sub_1BABAF688(uint64_t a1))()
{
  *a1 = *v1;
  *(a1 + 8) = MetadataPersistentStore.isEnabled.getter() & 1;
  return sub_1BABAE19C;
}

void (*sub_1BABAF720(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  MetadataPersistentStore.lastAuthKitReconciliationDate.getter(v4);
  return sub_1BABAF7DC;
}

void sub_1BABAF7DC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_1BAAD2DAC(*(a1 + 8), v3, &qword_1EBC132A0);
    MetadataPersistentStore.lastAuthKitReconciliationDate.setter(v3);
    sub_1BAAD2E14(v2, &qword_1EBC132A0);
  }

  else
  {
    MetadataPersistentStore.lastAuthKitReconciliationDate.setter(*(a1 + 8));
  }

  free(v2);

  free(v3);
}

uint64_t (*sub_1BABAF89C(uint64_t a1))()
{
  *a1 = *v1;
  *(a1 + 8) = MetadataPersistentStore.allowListEnabled.getter() & 1;
  return sub_1BABAEBD0;
}

uint64_t (*sub_1BABAF910(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = *v1;
  *a1 = MetadataPersistentStore.allowList.getter();
  return sub_1BABAEF18;
}

uint64_t sub_1BABAFA70(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[5];
  v6 = *v2;
  sub_1BABE7F9C();
  v7 = *a2;
  v8 = a2[1];
  v34 = a2;
  v10 = a2[2];
  v9 = a2[3];
  sub_1BABE759C();
  v38 = v9;
  v39 = v10;
  sub_1BABE759C();
  v37 = v4;
  MEMORY[0x1BFAFDC40](v4);
  v36 = v5;
  MEMORY[0x1BFAFDC40](v5);
  v11 = sub_1BABE7FDC();
  v12 = v6 + 56;
  v13 = -1 << *(v6 + 32);
  v14 = v11 & ~v13;
  if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v32 = v6;
    v16 = *(v6 + 48);
    while (1)
    {
      v18 = (v16 + 48 * v14);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[4];
      v22 = v18[5];
      v23 = *v18 == v7 && v18[1] == v8;
      if (v23 || (sub_1BABE7EDC() & 1) != 0)
      {
        v24 = v19 == v39 && v20 == v38;
        if (v24 || (sub_1BABE7EDC()) && v21 == v37 && v22 == v36)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1BABB7398(v34);
    v28 = *(v32 + 48) + 48 * v14;
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    *a1 = *v28;
    *(a1 + 8) = v29;
    *(a1 + 16) = v30;
    *(a1 + 24) = v31;
    *(a1 + 32) = *(v28 + 32);

    return 0;
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;
    sub_1BABB733C(v34, v41);
    sub_1BABB326C(v34, v14, isUniquelyReferenced_nonNull_native, &qword_1EBC12CE8, &unk_1BABF2BA0, &type metadata for ReplicatorMessageType, sub_1BAB1E200);
    *v33 = v40;
    v26 = v34[1];
    *a1 = *v34;
    *(a1 + 16) = v26;
    *(a1 + 32) = v34[2];
    return 1;
  }
}

uint64_t sub_1BABAFCBC(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[5];
  v6 = *v2;
  sub_1BABE7F9C();
  v7 = *a2;
  v8 = a2[1];
  v34 = a2;
  v10 = a2[2];
  v9 = a2[3];
  sub_1BABE759C();
  v38 = v9;
  v39 = v10;
  sub_1BABE759C();
  v37 = v4;
  MEMORY[0x1BFAFDC40](v4);
  v36 = v5;
  MEMORY[0x1BFAFDC40](v5);
  v11 = sub_1BABE7FDC();
  v12 = v6 + 56;
  v13 = -1 << *(v6 + 32);
  v14 = v11 & ~v13;
  if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v32 = v6;
    v16 = *(v6 + 48);
    while (1)
    {
      v18 = (v16 + 48 * v14);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[4];
      v22 = v18[5];
      v23 = *v18 == v7 && v18[1] == v8;
      if (v23 || (sub_1BABE7EDC() & 1) != 0)
      {
        v24 = v19 == v39 && v20 == v38;
        if (v24 || (sub_1BABE7EDC()) && v21 == v37 && v22 == v36)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1BABB749C(v34);
    v28 = *(v32 + 48) + 48 * v14;
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    *a1 = *v28;
    *(a1 + 8) = v29;
    *(a1 + 16) = v30;
    *(a1 + 24) = v31;
    *(a1 + 32) = *(v28 + 32);

    return 0;
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v33;
    sub_1BABB7440(v34, v41);
    sub_1BABB326C(v34, v14, isUniquelyReferenced_nonNull_native, &unk_1EBC12CF0, &unk_1BABEA180, &type metadata for ReplicatorZone, sub_1BAB1E214);
    *v33 = v40;
    v26 = v34[1];
    *a1 = *v34;
    *(a1 + 16) = v26;
    *(a1 + 32) = v34[2];
    return 1;
  }
}

uint64_t sub_1BABAFF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a1;
  v5 = *(type metadata accessor for ReplicatorDevice(0) - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1BABE7F9C();
  ReplicatorDevice.hash(into:)(v19);
  v9 = sub_1BABE7FDC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1BABB71B8(*(v8 + 48) + v13 * v11, v7, type metadata accessor for ReplicatorDevice);
      v14 = _s18ReplicatorServices0A6DeviceV2eeoiySbAC_ACtFZ_0(v7, a2);
      sub_1BABB7220(v7, type metadata accessor for ReplicatorDevice);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1BABB7220(a2, type metadata accessor for ReplicatorDevice);
    sub_1BABB71B8(*(v8 + 48) + v13 * v11, v18, type metadata accessor for ReplicatorDevice);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BABB71B8(a2, v7, type metadata accessor for ReplicatorDevice);
    v19[0] = *v3;
    sub_1BABB349C(v7, v11, isUniquelyReferenced_nonNull_native);
    v16 = v18;
    *v3 = v19[0];
    sub_1BABB7280(a2, v16, type metadata accessor for ReplicatorDevice);
    return 1;
  }
}

uint64_t sub_1BABB0148(_OWORD *a1, unint64_t *a2)
{
  v4 = *v2;
  sub_1BABE7F9C();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v38 = a2[8];
  v35 = a2;
  v13 = a2[9];
  sub_1BABE759C();
  sub_1BABE759C();
  v40 = v9;
  sub_1BABE759C();
  v39 = v11;
  sub_1BABE759C();
  sub_1BABE6060(&v43, v38);
  v37 = v13;
  sub_1BABE5ED0(&v43, v13);
  v14 = sub_1BABE7FDC();
  v15 = -1 << *(v4 + 32);
  v16 = v14 & ~v15;
  if ((*(v4 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    do
    {
      v18 = (*(v4 + 48) + 80 * v16);
      v43 = *v18;
      v19 = v18[3];
      v20 = v18[4];
      v21 = v18[2];
      v44 = v18[1];
      v45 = v21;
      v46 = v19;
      v47 = v20;
      if (v43 == __PAIR128__(v6, v5) || (sub_1BABE7EDC()) && (v44 == __PAIR128__(v8, v7) || (sub_1BABE7EDC()) && (v45 == __PAIR128__(v40, v10) || (sub_1BABE7EDC()) && (v46 == __PAIR128__(v12, v39) || (sub_1BABE7EDC()))
      {
        v22 = v47;
        sub_1BAB21C84(&v43, v42);
        if (sub_1BAB1DB8C(v22, v38))
        {
          v23 = sub_1BAB1DDB4(*(&v47 + 1), v37);
          sub_1BAB21D34(&v43);
          if (v23)
          {
            sub_1BAB21D34(v35);
            v24 = (*(v4 + 48) + 80 * v16);
            v26 = v24[1];
            v25 = v24[2];
            v27 = v24[4];
            v42[3] = v24[3];
            v42[4] = v27;
            v42[0] = *v24;
            v42[1] = v26;
            v42[2] = v25;
            v28 = v24[3];
            a1[2] = v24[2];
            a1[3] = v28;
            a1[4] = v24[4];
            v29 = v24[1];
            *a1 = *v24;
            a1[1] = v29;
            sub_1BAB21C84(v42, v41);
            return 0;
          }
        }

        else
        {
          sub_1BAB21D34(&v43);
        }
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v4 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42[0] = *v34;
  sub_1BAB21C84(v35, &v43);
  sub_1BABB3D24(v35, v16, isUniquelyReferenced_nonNull_native);
  *v34 = *&v42[0];
  v32 = *(v35 + 3);
  a1[2] = *(v35 + 2);
  a1[3] = v32;
  a1[4] = *(v35 + 4);
  v33 = *(v35 + 1);
  result = 1;
  *a1 = *v35;
  a1[1] = v33;
  return result;
}

uint64_t sub_1BABB0450(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BABE7F9C();
  sub_1BABE759C();
  v8 = sub_1BABE7FDC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BABE7EDC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1BABB400C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BABB05A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BABE7A6C();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1BABE7A5C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BABB1078(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1BABB2650();
    }

    v18 = v8;
    sub_1BABB3108(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = sub_1BABE797C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1BABB418C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BABE798C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1BABB07B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1BABE7A6C();

    if (v8)
    {

      sub_1BABE71AC();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1BABE7A5C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1BABB1258(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1BABB2878();
    }

    sub_1BABB318C(v17, v16, MEMORY[0x1E69C7318], &qword_1EBC12200, MEMORY[0x1E69C7318]);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1BABE71AC();
  sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);
  v10 = sub_1BABE74AC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1BABB42EC(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1BAAD6F34(&qword_1EBC121F8, 255, MEMORY[0x1E69C7318]);
  while ((sub_1BABE74DC() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1BABB0AA4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1BABE74AC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1BAAD6F34(&unk_1ED7872A0, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1BABE74DC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1BABB44DC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1BABB0D8C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1BABE7A6C();

    if (v8)
    {

      sub_1BABE72FC();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1BABE7A5C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1BABB1490(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1BABB2E70();
    }

    sub_1BABB318C(v17, v16, MEMORY[0x1E695BF10], &qword_1ED787358, MEMORY[0x1E695BF10]);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1BABE72FC();
  sub_1BAAD6F34(&qword_1ED787358, 255, MEMORY[0x1E695BF10]);
  v10 = sub_1BABE74AC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1BABB4788(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1BAAD6F34(&qword_1ED787350, 255, MEMORY[0x1E695BF10]);
  while ((sub_1BABE74DC() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1BABB1078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CE0);
    v2 = sub_1BABE7ABC();
    v14 = v2;
    sub_1BABE7A4C();
    if (sub_1BABE7A7C())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1BABB2650();
        }

        v2 = v14;
        result = sub_1BABE797C();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1BABE7A7C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BABB1258(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BD8);
    v2 = sub_1BABE7ABC();
    v14 = v2;
    sub_1BABE7A4C();
    if (sub_1BABE7A7C())
    {
      sub_1BABE71AC();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1BABB2878();
        }

        v2 = v14;
        sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);
        result = sub_1BABE74AC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1BABE7A7C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BABB1490(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB8);
    v2 = sub_1BABE7ABC();
    v14 = v2;
    sub_1BABE7A4C();
    if (sub_1BABE7A7C())
    {
      sub_1BABE72FC();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1BABB2E70();
        }

        v2 = v14;
        sub_1BAAD6F34(&qword_1ED787358, 255, MEMORY[0x1E695BF10]);
        result = sub_1BABE74AC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1BABE7A7C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BABB16C8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v5 = sub_1BABE7AAC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v34 = v2;
    v7 = 0;
    v35 = (v4 + 56);
    v36 = v4;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v19 = (*(v4 + 48) + 48 * (v15 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      MEMORY[0x1BFAFDC40](v25);
      MEMORY[0x1BFAFDC40](v24);
      result = sub_1BABE7FDC();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      *v14 = v20;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      v14[4] = v25;
      v14[5] = v24;
      ++*(v6 + 16);
      v4 = v36;
      v10 = v37;
    }

    v16 = v7;
    result = v35;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v35[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v4 + 32);
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    v3 = v34;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1BABB1974()
{
  v1 = v0;
  v24 = *(type metadata accessor for ReplicatorDevice(0) - 8);
  MEMORY[0x1EEE9AC00]();
  v23 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A68);
  result = sub_1BABE7AAC();
  v5 = result;
  if (*(v3 + 16))
  {
    v21 = v0;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v22 = result + 56;
    for (i = v23; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(v24 + 72);
      sub_1BABB7280(*(v3 + 48) + v16 * (v13 | (v6 << 6)), i, type metadata accessor for ReplicatorDevice);
      sub_1BABE7F9C();
      ReplicatorDevice.hash(into:)(v25);
      sub_1BABE7FDC();
      v17 = v22;
      v18 = sub_1BABE7A3C();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1BABB7280(i, *(v5 + 48) + v18 * v16, type metadata accessor for ReplicatorDevice);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v19 = 1 << *(v3 + 32);
    if (v19 >= 64)
    {
      bzero((v3 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v19;
    }

    v1 = v21;
    *(v3 + 16) = 0;
  }

  *v1 = v5;
  return result;
}

uint64_t sub_1BABB1C10()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A38);
  result = sub_1BABE7AAC();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v2;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v3 + 48);
    v45 = result;
    v41 = (v3 + 32);
    v42 = v11;
    v39 = v1;
    v40 = (v3 + 8);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
LABEL_15:
      v25 = *(v11 + 48);
      v48 = *(v47 + 72);
      sub_1BABB7280(v25 + v48 * (v22 | (v14 << 6)), v10, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      v26 = v8;
      sub_1BABB71B8(&v10[*(v8 + 28)], v7, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v27 = v46;
      if ((*v44)(v7, 1, v46) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v28 = v43;
        (*v41)(v43, v7, v27);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v29 = v28;
        v11 = v42;
        (*v40)(v29, v27);
      }

      v8 = v26;
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v13 = v45;
      v30 = -1 << *(v45 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1BABB7280(v10, *(v13 + 48) + v21 * v48, type metadata accessor for ReplicatorRecord.ID);
      ++*(v13 + 16);
      v18 = v49;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v11 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v1 = v39;
    *(v11 + 16) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t sub_1BABB2140()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB0);
  v21 = sub_1BABE7AAC();
  v3 = v2;
  if (*(v2 + 16))
  {
    v4 = 0;
    v19 = v0;
    v20 = (v2 + 56);
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v30 = (v7 - 1) & v7;
LABEL_12:
        v13 = (*(v3 + 48) + 80 * (v9 | (v4 << 6)));
        v28 = v13[1];
        v29 = *v13;
        v26 = v13[3];
        v27 = v13[2];
        v14 = v13[4];
        v15 = v13[6];
        v22 = v13[7];
        v23 = v13[8];
        v24 = v13[9];
        v25 = v13[5];
        sub_1BABE7F9C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE6060(v31, v23);
        sub_1BABE5ED0(v31, v24);
        sub_1BABE7FDC();
        v16 = sub_1BABE7A3C();
        *(v21 + 56 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v17 = (*(v21 + 48) + 80 * v16);
        *v17 = v29;
        v17[1] = v28;
        v17[2] = v27;
        v17[3] = v26;
        v17[4] = v14;
        v17[5] = v25;
        v17[6] = v15;
        v17[7] = v22;
        v3 = v2;
        v17[8] = v23;
        v17[9] = v24;
        ++*(v21 + 16);
        v7 = v30;
      }

      while (v30);
    }

    v10 = v4;
    result = v2 + 56;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v4 >= v8)
      {
        break;
      }

      v12 = v20[v4];
      ++v10;
      if (v12)
      {
        v9 = __clz(__rbit64(v12));
        v30 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      bzero(v20, ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v18;
    }

    v1 = v19;
    *(v3 + 16) = 0;
  }

  *v1 = v21;
  return result;
}

uint64_t sub_1BABB23F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CC8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BABB2650()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CE0);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1BABE797C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BABB2878()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BD8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BABE71AC();
      sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);
      result = sub_1BABE74AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BABB2B10()
{
  v1 = v0;
  v35 = sub_1BABE6CFC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CD8);
  result = sub_1BABE7AAC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
      result = sub_1BABE74AC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BABB2E70()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BABE72FC();
      sub_1BAAD6F34(&qword_1ED787358, 255, MEMORY[0x1E695BF10]);
      result = sub_1BABE74AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1BABB3108(uint64_t a1, uint64_t a2)
{
  sub_1BABE797C();
  result = sub_1BABE7A3C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1BABB318C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1BAAD6F34(a4, 255, a5);
  sub_1BABE74AC();
  result = sub_1BABE7A3C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BABB326C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  v38 = result;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_1BABB16C8(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = a7();
      goto LABEL_26;
    }

    sub_1BABB4978(v10 + 1, a4);
  }

  v12 = v9[4];
  v13 = v9[5];
  v14 = *v7;
  sub_1BABE7F9C();
  v15 = *v9;
  v16 = v9[1];
  v18 = v9[2];
  v17 = v9[3];
  sub_1BABE759C();
  v41 = v17;
  v42 = v18;
  sub_1BABE759C();
  v40 = v12;
  MEMORY[0x1BFAFDC40](v12);
  v39 = v13;
  MEMORY[0x1BFAFDC40](v13);
  result = sub_1BABE7FDC();
  v19 = v14 + 56;
  v20 = -1 << *(v14 + 32);
  a2 = result & ~v20;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v14 + 48);
    do
    {
      v24 = (v22 + 48 * a2);
      result = *v24;
      v25 = v24[2];
      v26 = v24[3];
      v27 = v24[4];
      v28 = v24[5];
      v29 = *v24 == v15 && v24[1] == v16;
      if (v29 || (result = sub_1BABE7EDC(), (result & 1) != 0))
      {
        v30 = v25 == v42 && v26 == v41;
        if (v30 || (result = sub_1BABE7EDC(), (result & 1) != 0))
        {
          if (v27 == v40 && v28 == v39)
          {
            goto LABEL_29;
          }
        }
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v31 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = (*(v31 + 48) + 48 * a2);
  v33 = v38[1];
  *v32 = *v38;
  v32[1] = v33;
  v32[2] = v38[2];
  v34 = *(v31 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(v31 + 16) = v36;
    return result;
  }

  __break(1u);
LABEL_29:
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

uint64_t sub_1BABB349C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ReplicatorDevice(0) - 8);
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_1BABB1974();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BAB1E390();
      goto LABEL_12;
    }

    v25 = v9;
    sub_1BABB4C24();
  }

  v14 = *v4;
  sub_1BABE7F9C();
  ReplicatorDevice.hash(into:)(v26);
  v15 = sub_1BABE7FDC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_1BABB71B8(*(v14 + 48) + v18 * a2, v11, type metadata accessor for ReplicatorDevice);
      v19 = _s18ReplicatorServices0A6DeviceV2eeoiySbAC_ACtFZ_0(v11, a1);
      sub_1BABB7220(v11, type metadata accessor for ReplicatorDevice);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BABB7280(a1, *(v20 + 48) + *(v8 + 72) * a2, type metadata accessor for ReplicatorDevice);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

uint64_t sub_1BABB36E0(uint64_t *a1, unint64_t a2, char a3)
{
  v66 = sub_1BABE6CFC();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v65);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ReplicatorRecord.ID(0);
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v56 = v3;
  if (v18 <= v17 || (a3 & 1) == 0)
  {
    v64 = v13;
    if (a3)
    {
      sub_1BABB1C10();
    }

    else
    {
      if (v18 > v17)
      {
        sub_1BAB1E59C();
        goto LABEL_37;
      }

      sub_1BABB4E8C();
    }

    v19 = *v3;
    sub_1BABE7F9C();
    ReplicatorRecord.ID.hash(into:)();
    v20 = sub_1BABE7FDC();
    v21 = v19 + 56;
    v22 = -1 << *(v19 + 32);
    a2 = v20 & ~v22;
    if ((*(v19 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = v11;
      v23 = ~v22;
      v24 = *a1;
      v67 = a1[1];
      v60 = (v7 + 48);
      v51 = (v7 + 32);
      v54 = (v7 + 8);
      v25 = v58;
      v26 = *(v57 + 72);
      v62 = ~v22;
      v63 = v19 + 56;
      v61 = v24;
      v59 = v26;
      v27 = v64;
      do
      {
        sub_1BABB71B8(*(v19 + 48) + v26 * a2, v16, type metadata accessor for ReplicatorRecord.ID);
        v28 = *v16 == v24 && v16[1] == v67;
        if (!v28 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_11;
        }

        v29 = v16[2] == a1[2] && v16[3] == a1[3];
        if (!v29 && (sub_1BABE7EDC() & 1) == 0 || (v16[4] != a1[4] || v16[5] != a1[5]) && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_11;
        }

        v30 = v19;
        v31 = *(v25 + 28);
        v32 = *(v65 + 48);
        sub_1BABB71B8(v16 + v31, v27, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v33 = a1 + v31;
        v34 = v66;
        sub_1BABB71B8(v33, v27 + v32, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v35 = *v60;
        if ((*v60)(v27, 1, v34) == 1)
        {
          v36 = v35(v27 + v32, 1, v66);
          v26 = v59;
          if (v36 != 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v37 = v55;
          sub_1BABB71B8(v27, v55, type metadata accessor for ReplicatorRecord.ID.Ownership);
          if (v35(v27 + v32, 1, v66) == 1)
          {
            (*v54)(v37, v66);
            v25 = v58;
            v26 = v59;
LABEL_30:
            sub_1BAAD2E14(v27, &unk_1EBC12A28);
LABEL_31:
            v23 = v62;
            v21 = v63;
            v24 = v61;
            goto LABEL_11;
          }

          v38 = v53;
          v39 = v66;
          (*v51)(v53, v27 + v32, v66);
          v52 = sub_1BABE6CCC();
          v40 = *v54;
          (*v54)(v38, v39);
          v40(v37, v39);
          v25 = v58;
          v26 = v59;
          v19 = v30;
          if ((v52 & 1) == 0)
          {
            sub_1BABB7220(v27, type metadata accessor for ReplicatorRecord.ID.Ownership);
            goto LABEL_31;
          }
        }

        sub_1BABB7220(v27, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v41 = *(v25 + 32);
        v42 = *(v16 + v41);
        v43 = *(v16 + v41 + 8);
        v44 = (a1 + v41);
        v23 = v62;
        v21 = v63;
        v24 = v61;
        if (v42 == *v44 && v43 == v44[1] || (sub_1BABE7EDC() & 1) != 0)
        {
          goto LABEL_40;
        }

LABEL_11:
        sub_1BABB7220(v16, type metadata accessor for ReplicatorRecord.ID);
        a2 = (a2 + 1) & v23;
      }

      while (((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_37:
  v45 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BABB7280(a1, *(v45 + 48) + *(v57 + 72) * a2, type metadata accessor for ReplicatorRecord.ID);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_40:
    sub_1BABB7220(v16, type metadata accessor for ReplicatorRecord.ID);
    result = sub_1BABE7EEC();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

uint64_t sub_1BABB3D24(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_1BABB2140();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BAB1E7A8();
      goto LABEL_23;
    }

    sub_1BABB5388();
  }

  v8 = *v3;
  sub_1BABE7F9C();
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v15 = v5[6];
  v16 = v5[7];
  v34 = v5[8];
  v32 = v5[9];
  sub_1BABE759C();
  sub_1BABE759C();
  *&v36 = v14;
  *(&v36 + 1) = v13;
  sub_1BABE759C();
  v35 = v15;
  sub_1BABE759C();
  sub_1BABE6060(&v38, v34);
  sub_1BABE5ED0(&v38, v32);
  result = sub_1BABE7FDC();
  v17 = -1 << *(v8 + 32);
  a2 = result & ~v17;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    do
    {
      v19 = (*(v8 + 48) + 80 * a2);
      v38 = *v19;
      v20 = v19[3];
      v21 = v19[4];
      v22 = v19[2];
      v39 = v19[1];
      v40 = v22;
      v41 = v20;
      v42 = v21;
      if (v38 == __PAIR128__(v10, v9) || (result = sub_1BABE7EDC(), (result & 1) != 0))
      {
        if (v39 == __PAIR128__(v12, v11) || (result = sub_1BABE7EDC(), (result & 1) != 0))
        {
          if (__PAIR128__(v40, *(&v40 + 1)) == v36 || (result = sub_1BABE7EDC(), (result & 1) != 0))
          {
            if (v41 == __PAIR128__(v16, v35) || (result = sub_1BABE7EDC(), (result & 1) != 0))
            {
              v23 = v42;
              sub_1BAB21C84(&v38, v37);
              if (sub_1BAB1DB8C(v23, v34))
              {
                v24 = sub_1BAB1DDB4(*(&v42 + 1), v32);
                result = sub_1BAB21D34(&v38);
                if (v24)
                {
                  result = sub_1BABE7EEC();
                  __break(1u);
                  break;
                }
              }

              else
              {
                result = sub_1BAB21D34(&v38);
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 80 * a2);
  v27 = *(v5 + 4);
  v26[3] = *(v5 + 3);
  v26[4] = v27;
  v28 = *(v5 + 2);
  v26[1] = *(v5 + 1);
  v26[2] = v28;
  *v26 = *v5;
  v29 = *(v25 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v31;
  }

  return result;
}

uint64_t sub_1BABB400C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BABB23F0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BAB1E930();
      goto LABEL_16;
    }

    sub_1BABB560C();
  }

  v10 = *v4;
  sub_1BABE7F9C();
  sub_1BABE759C();
  result = sub_1BABE7FDC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BABE7EDC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

void sub_1BABB418C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BABB2650();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BAB1EA8C();
      goto LABEL_12;
    }

    sub_1BABB5844();
  }

  v8 = *v3;
  v9 = sub_1BABE797C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for Client();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BABE798C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BABE7EEC();
  __break(1u);
}