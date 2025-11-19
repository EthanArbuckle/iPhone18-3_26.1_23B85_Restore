uint64_t sub_1B89A8A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B89A8AD8(__int128 *a1)
{
  v1 = a1[3];
  v40 = a1[2];
  v41 = v1;
  v42 = *(a1 + 64);
  v2 = a1[1];
  v38 = *a1;
  v39 = v2;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8A23BC4();
  __swift_project_value_buffer(v3, qword_1ED8303C0);
  sub_1B89A8FB4(&v38, &v36);
  v4 = sub_1B8A23BA4();
  v5 = sub_1B8A24214();
  sub_1B89A9028(&v38);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(&v38 + 1);
    *(v6 + 4) = *(&v38 + 1);
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_1B89A7000, v4, v5, " - predicate: %@", v6, 0xCu);
    sub_1B89A8A78(v7, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v7, -1, -1);
    MEMORY[0x1B8CC5170](v6, -1, -1);
  }

  sub_1B89A8FB4(&v38, &v36);
  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24214();
  sub_1B89A9028(&v38);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315138;
    v14 = v39;
    sub_1B89A9148(v39);
    v15 = sub_1B89A9158(v14);
    v17 = sub_1B89A907C(v15, v16, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B89A7000, v10, v11, " - representations: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CC5170](v13, -1, -1);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }

  sub_1B89A8FB4(&v38, &v36);
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24214();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v40;
    sub_1B89A9028(&v38);
    _os_log_impl(&dword_1B89A7000, v18, v19, " - offset: %ld", v20, 0xCu);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  else
  {
    sub_1B89A9028(&v38);
  }

  sub_1B89A8FB4(&v38, &v36);
  v21 = sub_1B8A23BA4();
  v22 = sub_1B8A24214();
  sub_1B89A9028(&v38);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v35 = v24;
    v36 = *(&v40 + 1);
    v37 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B58, &qword_1B8A26838);
    v25 = sub_1B8A23F44();
    v27 = sub_1B89A907C(v25, v26, &v35);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1B89A7000, v21, v22, " - limit: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CC5170](v24, -1, -1);
    MEMORY[0x1B8CC5170](v23, -1, -1);
  }

  sub_1B89A8FB4(&v38, &v36);
  v28 = sub_1B8A23BA4();
  v29 = sub_1B8A24214();
  sub_1B89A9028(&v38);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136315138;
    v35 = v31;
    v36 = *(&v41 + 1);
    v37 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B58, &qword_1B8A26838);
    v32 = sub_1B8A23F44();
    v34 = sub_1B89A907C(v32, v33, &v35);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1B89A7000, v28, v29, " - batchSize: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CC5170](v31, -1, -1);
    MEMORY[0x1B8CC5170](v30, -1, -1);
  }
}

uint64_t get_enum_tag_for_layout_string_8Stickers7StickerC12FetchRequestV23RepresentationSpecifierO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B89A907C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B89A9254(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B89A9360(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

id sub_1B89A9148(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B89A9158(void *a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x67616D69206C6C61;
  }

  if (a1 == 2)
  {
    return 0x6567616D69206F6ELL;
  }

  v3 = [a1 description];
  v4 = sub_1B8A23F24();
  v6 = v5;

  MEMORY[0x1B8CC3E20](v4, v6);

  sub_1B89AADD4(a1);
  return 0x206572656877;
}

unint64_t sub_1B89A9254(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B89A947C(a5, a6);
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
    result = sub_1B8A246A4();
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

uint64_t sub_1B89A9360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1B89A9408(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92060, &qword_1B8A26528);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B89A947C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B89A94C8(a1, a2);
  sub_1B89A95FC(&unk_1F373EDB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B89A94C8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1B89A9408(v5, 0);
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

  result = sub_1B8A246A4();
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
        v10 = sub_1B8A23FB4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B89A9408(v10, 0);
        result = sub_1B8A24624();
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

uint64_t sub_1B89A95FC(uint64_t result)
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

  result = sub_1B89C089C(result, v12, 1, v3);
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

uint64_t sub_1B89A96E8()
{
  v0 = sub_1B8A23BC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = type metadata accessor for StickerSignposter();
  __swift_allocate_value_buffer(v8, qword_1ED8303D8);
  __swift_project_value_buffer(v8, qword_1ED8303D8);
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1ED8303C0);
  v10 = *(v1 + 16);
  v10(v7, v9, v0);
  v10(v5, v7, v0);
  sub_1B8A23B24();
  return (*(v1 + 8))(v7, v0);
}

uint64_t type metadata accessor for StickerSignposter()
{
  result = qword_1ED82E170;
  if (!qword_1ED82E170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B89A98CC()
{
  result = sub_1B8A23B44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1B89A99D4(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v7 = sub_1B8A23B14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A23B34();
  sub_1B8A23AF4();
  v12 = sub_1B8A23B34();
  v13 = sub_1B8A24354();
  result = sub_1B8A24434();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a4 & 1) == 0)
  {
    if (a2)
    {
LABEL_9:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1B8A23B04();
      _os_signpost_emit_with_name_impl(&dword_1B89A7000, v12, v13, v16, a2, "", v15, 2u);
      MEMORY[0x1B8CC5170](v15, -1, -1);
LABEL_10:

      (*(v8 + 16))(v11, a1, v7);
      v17 = sub_1B8A23B84();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      return sub_1B8A23B74();
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      a2 = &v21;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B89A9BA0(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8A23BC4();
  __swift_project_value_buffer(v15, qword_1ED8303C0);
  v16 = sub_1B8A23BA4();
  v17 = sub_1B8A24214();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B89A7000, v16, v17, a3, v18, 2u);
    MEMORY[0x1B8CC5170](v18, -1, -1);
  }

  v19 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v19;
  v30 = *(a2 + 64);
  v20 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v20;
  sub_1B89A8AD8(v29);
  v21 = [objc_opt_self() currentEnvironment];
  v22 = [v21 timeProvider];

  [v22 timestamp];
  swift_unknownObjectRelease();
  v23 = *(v8 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v24, qword_1ED8303D8);
  *&v14[v23] = sub_1B89A99D4(v14, a4, v25, 2);
  sub_1B89A9E58(v14, v12);
  v26 = *&v12[*(v8 + 48)];
  v27 = sub_1B8A23B14();
  (*(*(v27 - 8) + 32))(a1, v12, v27);
  return v26;
}

uint64_t sub_1B89A9E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89A9EC8(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28[-v9];
  v11 = &v28[*(v8 + 48) - v9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v13 = *(v12 + 48);
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v36 = *(a1 + 64);
  v15 = a1[1];
  v32 = *a1;
  v33 = v15;
  v16 = sub_1B89AD160(v11, &v32);
  *v10 = v17;
  *&v11[v13] = v16;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, v29);
  v18 = v30;
  v19 = v31;
  __swift_project_boxed_opaque_existential_0(v29, v30);
  v20 = a1[3];
  v34 = a1[2];
  v35 = v20;
  v36 = *(a1 + 64);
  v21 = a1[1];
  v32 = *a1;
  v33 = v21;
  v22 = (*(v19 + 8))(&v32, v18, v19);
  __swift_destroy_boxed_opaque_existential_0(v29);
  v23 = a1[3];
  v34 = a1[2];
  v35 = v23;
  v36 = *(a1 + 64);
  v24 = a1[1];
  v32 = *a1;
  v33 = v24;
  sub_1B89AF268(v10, v7, &qword_1EBA91BD0, qword_1B8A26FF0);
  v25 = v7 + *(v3 + 48);
  sub_1B89AF7AC(&v32, v25, *(v25 + *(v12 + 48)), *v7);

  sub_1B89A8A78(v10, &qword_1EBA91BD0, qword_1B8A26FF0);
  v26 = sub_1B8A23B14();
  (*(*(v26 - 8) + 8))(v25, v26);
  return v22;
}

uint64_t sub_1B89AA114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1B89AA1E0(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v4;
  v23 = *(a1 + 64);
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;
  v6 = sub_1B8A23654();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1B8A23644();
  sub_1B89AA420();
  v10 = sub_1B8A23634();
  if (v2)
  {

    sub_1B89F7804();
    swift_allocError();
    *v12 = xmmword_1B8A28240;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v13 = v10;
    v14 = v11;

    v15 = v3[5];
    v16 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v15);
    v24 = v22;
    MEMORY[0x1EEE9AC00]();
    v21[2] = v13;
    v21[3] = v14;
    v17 = *(v16 + 8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F00, &unk_1B8A28280);
    v17(v22, sub_1B89ABD00, v21, v18, v15, v16);
    v9 = *&v22[0];
    if (BYTE8(v22[0]))
    {
      v20 = *&v22[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
      swift_willThrowTypedImpl();
      sub_1B89AFC38(v13, v14);
      sub_1B89AA414(v9, 1);
    }

    else
    {
      sub_1B89AFC38(v13, v14);
    }
  }

  return v9;
}

void sub_1B89AA414(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1B89AA420()
{
  result = qword_1ED82DC58;
  if (!qword_1ED82DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC58);
  }

  return result;
}

unint64_t sub_1B89AA488()
{
  result = qword_1ED82DF90;
  if (!qword_1ED82DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DF90);
  }

  return result;
}

unint64_t sub_1B89AA4E0()
{
  result = qword_1ED82DF98;
  if (!qword_1ED82DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DF98);
  }

  return result;
}

unint64_t sub_1B89AA534()
{
  result = qword_1ED82DFA0;
  if (!qword_1ED82DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DFA0);
  }

  return result;
}

unint64_t sub_1B89AA598()
{
  result = qword_1ED82DC88;
  if (!qword_1ED82DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91B50, &qword_1B8A26830);
    sub_1B89AA61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC88);
  }

  return result;
}

unint64_t sub_1B89AA61C()
{
  result = qword_1ED82DFB0;
  if (!qword_1ED82DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DFB0);
  }

  return result;
}

uint64_t _s12FetchRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s12FetchRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for Sticker.StickerType(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B89AA89C()
{
  result = qword_1ED82DFA8;
  if (!qword_1ED82DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DFA8);
  }

  return result;
}

uint64_t sub_1B89AA900()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x74696D696CLL;
  if (v1 != 5)
  {
    v3 = 0x7A69536863746162;
  }

  v4 = 0x6373654474726F73;
  if (v1 != 3)
  {
    v4 = 0x74657366666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7461636964657270;
  if (v1 != 1)
  {
    v5 = 0x6E65736572706572;
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

unint64_t sub_1B89AA9F4()
{
  result = qword_1ED82DC60;
  if (!qword_1ED82DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC60);
  }

  return result;
}

uint64_t Sticker.FetchRequest.RepresentationSpecifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B70, &qword_1B8A26848);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89AAD38();
  sub_1B8A24A64();
  if (!v9)
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v15 = 0;
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v18 = 0;
LABEL_7:
    sub_1B8A248E4();
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 0;
  sub_1B8A248E4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = [v9 predicateFormat];
  sub_1B8A23F24();

  v16 = 1;
  sub_1B8A248B4();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B89AAC8C()
{
  result = qword_1ED82DF78;
  if (!qword_1ED82DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DF78);
  }

  return result;
}

unint64_t sub_1B89AACE4()
{
  result = qword_1ED82DF80;
  if (!qword_1ED82DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DF80);
  }

  return result;
}

unint64_t sub_1B89AAD38()
{
  result = qword_1ED82DF88;
  if (!qword_1ED82DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DF88);
  }

  return result;
}

uint64_t sub_1B89AAD8C()
{
  if (*v0)
  {
    result = 0x6572506572656877;
  }

  else
  {
    result = 0x65756C6156776172;
  }

  *v0;
  return result;
}

void sub_1B89AADD4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t Sticker.FetchRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B48, &qword_1B8A26828);
  v28 = *(v4 - 8);
  v5 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v21 - v6;
  v31 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v8;
  v24 = *(v1 + 5);
  v25 = v10;
  v23 = v1[48];
  v22 = *(v1 + 7);
  HIDWORD(v21) = v1[64];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89AA534();
  v12 = v9;
  sub_1B8A24A64();
  if (v9)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    v14 = v12;
    v15 = sub_1B8A23EF4();
    [v13 encodeObject:v14 forKey:v15];

    [v13 finishEncoding];
    v16 = [v13 encodedData];
    v17 = sub_1B8A237C4();
    v19 = v18;

    v29 = v17;
    v30 = v19;
    v32 = 1;
    sub_1B89CDFE4();
    sub_1B8A248F4();
    if (v2)
    {

      sub_1B89AFC38(v29, v30);
      return (*(v28 + 8))(v7, v4);
    }

    sub_1B89AFC38(v29, v30);
  }

  LOBYTE(v29) = v31;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B50, &qword_1B8A26830);
  sub_1B89AA598();
  sub_1B8A248F4();
  if (!v2)
  {
    v29 = v27;
    v32 = 2;
    sub_1B89A9148(v27);
    sub_1B89AA9F4();
    sub_1B8A248F4();
    sub_1B89AADD4(v29);
    v29 = v26;
    v32 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B40, &qword_1B8A26820);
    sub_1B89AB2AC(&qword_1ED82DBD8, &qword_1ED82DE90);
    sub_1B8A248F4();
    LOBYTE(v29) = 4;
    sub_1B8A248E4();
    v29 = v24;
    LOBYTE(v30) = v23;
    v32 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B58, &qword_1B8A26838);
    sub_1B89CDF68();
    sub_1B8A248F4();
    v29 = v22;
    LOBYTE(v30) = BYTE4(v21);
    v32 = 6;
    sub_1B8A248F4();
  }

  return (*(v28 + 8))(v7, v4);
}

uint64_t sub_1B89AB274(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B89AB2AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91B40, &qword_1B8A26820);
    sub_1B89AB334(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B89AB334(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91AA8, qword_1B8A281D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _s8Stickers06RemoteA3APIV12xpcInterfaceSo14NSXPCInterfaceCvgZ_0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F18, &qword_1B8A28448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8A26570;
  *(inited + 32) = sub_1B89AB538(0, &unk_1ED82DF60, 0x1E695DEC8);
  *(inited + 40) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  sub_1B89AB6B0(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1B8A240E4();

  v4 = [v2 initWithArray_];

  sub_1B8A241C4();
  v5 = sub_1B8A241B4();

  [v0 setClasses:v5 forSelector:sel_removeStickersWithIdentifiers_withReply_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_1B89AB538(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *sub_1B89AB580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92058, &qword_1B8A28A80);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B89AB690(char *a1, int64_t a2, char a3)
{
  result = sub_1B89AB580(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B89AB6B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B89AB690(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EF0, &qword_1B8A28228);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B89AB690((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B89AB7C0(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

_OWORD *sub_1B89AB7C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B89AB7D0(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a1;
  v34 = a3;
  v3 = sub_1B8A24444();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v11 = sub_1B8A23EF4();
  v12 = [v10 initWithMachServiceName:v11 options:0];

  v13 = _s8Stickers06RemoteA3APIV12xpcInterfaceSo14NSXPCInterfaceCvgZ_0();
  [v12 setRemoteObjectInterface_];

  [v12 resume];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  aBlock[4] = sub_1B89F7C48;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89F7784;
  aBlock[3] = &block_descriptor_43;
  v16 = _Block_copy(aBlock);

  v17 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1B8A244A4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F20, &unk_1B8A28480);
  if (!swift_dynamicCast())
  {
    sub_1B89F7804();
    swift_allocError();
    *v22 = xmmword_1B8A28260;
    *(v22 + 16) = 2;
    swift_willThrow();
LABEL_5:

    goto LABEL_6;
  }

  v18 = aBlock[7];
  swift_beginAccess();
  v19 = *v15;
  if (!*v15)
  {
    v36(v18);
    v23 = *v15;
    if (*v15)
    {
      v24 = *v15;
      swift_willThrow();
      v25 = v23;
      swift_unknownObjectRelease();
      (*(v37 + 8))(v9, v38);

      goto LABEL_6;
    }

    v26 = v37;
    (*(v37 + 16))(v7, v9, v38);
    v27 = v35;
    v28 = *(v35 - 8);
    v29 = (*(v28 + 48))(v7, 1, v35);
    v30 = *(v26 + 8);
    if (v29 == 1)
    {
      v31 = v38;
      v30(v7, v38);
      sub_1B89F7804();
      swift_allocError();
      *v32 = xmmword_1B8A28270;
      *(v32 + 16) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      v30(v9, v31);
    }

    else
    {
      v30(v9, v38);
      swift_unknownObjectRelease();
      (*(v28 + 32))(v34, v7, v27);
    }

    goto LABEL_5;
  }

  v20 = *v15;
  swift_willThrow();
  v21 = v19;

  swift_unknownObjectRelease();
LABEL_6:
  [v12 invalidate];
}

uint64_t sub_1B89ABC78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B89ABD00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B89ABD08(a1, a2);
}

uint64_t sub_1B89ABD08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = -1;
  v5 = sub_1B8A237A4();
  v10[4] = sub_1B89AFB6C;
  v10[5] = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B89AFAF4;
  v10[3] = &block_descriptor_37;
  v6 = _Block_copy(v10);

  [a1 countFor:v5 withReply:v6];
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v4 + 16);
  *a2 = v7;
  v8 = *(v4 + 24);
  *(a2 + 8) = v8;
  sub_1B89ABE70(v7, v8);
}

id sub_1B89ABE70(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B89ABE88(result, a2 & 1);
  }

  return result;
}

id sub_1B89ABE88(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B89ABEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B89ABF10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t *, _OWORD *, uint64_t))
{
  v4 = *v2;
  v5 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v5;
  v12 = *(a1 + 64);
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  v7 = v4;

  sub_1B89A8FB4(v11, v10);
  v8 = a2(1, v2, v2, v11, v7);
  sub_1B89A9028(v11);

  return v8;
}

uint64_t sub_1B89ABFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B89A8FB4(a4, v39);
  sub_1B89ACF34(a3, a4, a5, &v40);
  if (!v5)
  {

    sub_1B89A9028(a4);
    return v40;
  }

  v38 = v5;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v37;
  if (!sub_1B89EE954())
  {

LABEL_12:
    swift_willThrow();
LABEL_14:

    return sub_1B89A9028(a4);
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v23 = 6;
    swift_willThrow();

    goto LABEL_14;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8A23BC4();
  __swift_project_value_buffer(v13, qword_1EBA95F20);
  v14 = v37;
  v15 = sub_1B8A23BA4();
  v16 = sub_1B8A24234();

  log = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1B89A7000, log, v16, "Database is corrupted, attempting recovery after %@", v17, 0xCu);
    sub_1B89A8A78(v18, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v18, -1, -1);
    MEMORY[0x1B8CC5170](v17, -1, -1);
  }

  v20 = a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  v21 = sub_1B89BBFAC();
  if (v21)
  {
    loga = v14;
    v24 = type metadata accessor for StickerContainer(0);
    v32 = *(v20 + v24[5]);
    [v32 lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v20, *(v20 + v24[6]), &v35);
    v25 = v36;
    v26 = v24[7];
    v14 = loga;
    v27 = v20 + v26;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    *v27 = v35;
    *(v27 + 16) = v25;
    sub_1B89AF128(v28, v29, v30);
    [v32 unlock];
  }

  swift_endAccess();

  sub_1B89A8FB4(a4, v39);
  v31 = sub_1B89EFE74(a1 - 1, a2, a3, a4, a5, sub_1B89ABFDC);

  sub_1B89A9028(a4);
  return v31;
}

uint64_t sub_1B89AC3B4(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v67 - v5;
  v6 = sub_1B8A23D44();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v67 - v10;
  v75 = sub_1B8A23CF4();
  v11 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = *(v13 - 8);
  v76 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v69 = v17 + 16;
  *(v17 + 24) = 1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v70 = v18 + 16;
  v71 = dispatch_group_create();
  sub_1B89ABEA8(v2, v16, type metadata accessor for StickerContainer);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1B89ACED0(v16, v23 + v19);
  *(v23 + v20) = v17;
  v24 = (v23 + v21);
  v25 = v73;
  *v24 = v81;
  v24[1] = v25;
  *(v23 + v22) = v18;
  v26 = v71;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
  aBlock[4] = sub_1B89AEDC4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor_122;
  _Block_copy(aBlock);
  v82 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  v81 = v17;

  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  v28 = v77;
  sub_1B8A244C4();
  v29 = sub_1B8A23D74();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v27);
  v32 = *(v72 + *(v76 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1B8A23CD4();
  v34 = __swift_project_value_buffer(v33, qword_1EBA913B0);
  v35 = v78;
  MEMORY[0x1B8CC3C00](v28, v34);
  v36 = v80;
  v37 = *(v79 + 8);
  v37(v28, v80);
  v38 = sub_1B8A24264();
  v37(v35, v36);
  if (sub_1B8A23CE4())
  {
    sub_1B8A23D64();
    sub_1B89C353C();
    swift_allocError();
    v40 = 15;
LABEL_30:
    *v39 = v40;
    goto LABEL_31;
  }

  v38 = v70;
  swift_beginAccess();
  v41 = *v38;
  if (!*v38)
  {
LABEL_28:
    swift_beginAccess();
    if ((*(v81 + 24) & 1) == 0)
    {
      v38 = *(v81 + 16);

      return v38;
    }

    sub_1B89C353C();
    swift_allocError();
    v40 = 16;
    goto LABEL_30;
  }

  v82 = *v38;
  v42 = v41;
  v43 = v41;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  if (swift_dynamicCast())
  {
    if (v84 == 11)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v44 = sub_1B8A23BC4();
      __swift_project_value_buffer(v44, qword_1EBA91268);
      v45 = sub_1B8A23BA4();
      v46 = sub_1B8A24234();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1B89A7000, v45, v46, "Cannot perform a managed object model operation on an un-initialized persistence container.", v47, 2u);
        MEMORY[0x1B8CC5170](v47, -1, -1);
      }

      v48 = sub_1B8A24184();
      v38 = v68;
      (*(*(v48 - 8) + 56))(v68, 1, 1, v48);
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v50 = &unk_1B8A264E0;
LABEL_20:
      sub_1B8A201C0(0, 0, v38, v50, v49);

      sub_1B89A8A78(v38, &qword_1EBA92200, &qword_1B8A28000);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v82 = v41;
  v51 = v41;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = sub_1B8A23664();
    v38 = sub_1B89EE954();

    if (v38)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v58 = sub_1B8A23BC4();
      __swift_project_value_buffer(v58, qword_1EBA91268);
      v59 = sub_1B8A23BA4();
      v60 = sub_1B8A24234();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1B89A7000, v59, v60, "Stickers database is corrupt. Will attempt remediation.", v61, 2u);
        MEMORY[0x1B8CC5170](v61, -1, -1);
      }

      v62 = [objc_opt_self() standardUserDefaults];
      v63 = sub_1B8A23EF4();
      [v62 setBool:1 forKey:v63];

      sub_1B89C353C();
      v64 = swift_allocError();
      *v65 = 17;
      sub_1B89C0990(v64);
    }

    goto LABEL_28;
  }

  if ((v84 & 0xFE) == 2)
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v52 = sub_1B8A23BC4();
    __swift_project_value_buffer(v52, qword_1EBA91268);
    v53 = sub_1B8A23BA4();
    v54 = sub_1B8A24244();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1B89A7000, v53, v54, "Potential corruption detected. Will perform in depth corruption check.", v55, 2u);
      MEMORY[0x1B8CC5170](v55, -1, -1);
    }

    v56 = sub_1B8A24184();
    v38 = v68;
    (*(*(v56 - 8) + 56))(v68, 1, 1, v56);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v50 = &unk_1B8A264D8;
    goto LABEL_20;
  }

LABEL_31:
  swift_willThrow();

  return v38;
}

uint64_t sub_1B89ACE40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89ACE78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89ACED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89ACF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for StickerContainer(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v13, v12, type metadata accessor for StickerContainer);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  v16 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v16;
  *(v14 + 88) = a3;
  sub_1B89A8FB4(a2, v20);
  v17 = sub_1B89AC3B4(sub_1B89AECDC, v14);
  if (v4)
  {
    sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }

  else
  {
    v19 = v17;

    *a4 = v19;
    return sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }
}

uint64_t sub_1B89AD0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Sticker.FetchRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B38, &qword_1B8A26818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8A26260;
  KeyPath = swift_getKeyPath();
  v58 = v12;
  MEMORY[0x1B8CC3470](KeyPath, 1);
  v56 = 1;
  v54 = 0;
  v14 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v16 = a1;
  v17 = v8;
  __swift_project_boxed_opaque_existential_0(v16, v14);
  sub_1B89AA534();
  sub_1B8A24A54();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
    LOBYTE(v44) = 2;
    *(&v44 + 1) = v57[0];
    HIDWORD(v44) = *(v57 + 3);
    v45 = 0;
    v46 = 0;
    v47 = v58;
    v48 = 0;
    v49 = 0;
    v50 = v56;
    *v51 = *v55;
    *&v51[3] = *&v55[3];
    v52 = 8;
    v53 = v54;
  }

  else
  {
    v35 = v5;
    v18 = v36;
    LOBYTE(v38) = 1;
    sub_1B89ADF2C();
    sub_1B8A247F4();
    v19 = v45;
    if (v45 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v21 = v44;
      v22 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      sub_1B89C3C44(v21, v19);
      v23 = sub_1B89CDE5C();
      sub_1B89B4A04(v21, v19);
      sub_1B89CDF1C();
      v20 = sub_1B8A243B4();
      [v23 finishDecoding];

      sub_1B89B4A04(v21, v19);
    }

    LOBYTE(v38) = 0;
    sub_1B89ADD08();
    sub_1B8A247F4();
    v34 = v44;
    LOBYTE(v38) = 2;
    sub_1B89ADF80();
    sub_1B8A24854();
    v24 = v44;
    sub_1B89AADD4(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B40, &qword_1B8A26820);
    LOBYTE(v38) = 3;
    sub_1B89AB2AC(&unk_1EBA911B0, &unk_1EBA91470);
    sub_1B8A24854();

    v58 = v44;
    LOBYTE(v44) = 4;
    v26 = sub_1B8A24844();
    LOBYTE(v44) = 5;
    v27 = sub_1B8A247E4();
    v56 = v28 & 1;
    v43 = 6;
    v29 = sub_1B8A24844();
    (*(v35 + 8))(v17, v4);
    v54 = 0;
    LOBYTE(v38) = v34;
    *(&v38 + 1) = v57[0];
    DWORD1(v38) = *(v57 + 3);
    *(&v38 + 1) = v20;
    *&v39 = v24;
    v30 = v58;
    *(&v39 + 1) = v58;
    *&v40 = v26;
    *(&v40 + 1) = v27;
    LODWORD(v35) = v56;
    LOBYTE(v41) = v56;
    *(&v41 + 1) = *v55;
    DWORD1(v41) = *&v55[3];
    *(&v41 + 1) = v29;
    v42 = 0;
    *(v18 + 64) = 0;
    v31 = v41;
    *(v18 + 32) = v40;
    *(v18 + 48) = v31;
    v32 = v39;
    *v18 = v38;
    *(v18 + 16) = v32;
    sub_1B89A8FB4(&v38, &v44);
    __swift_destroy_boxed_opaque_existential_0(v37);
    LOBYTE(v44) = v34;
    *(&v44 + 1) = v57[0];
    HIDWORD(v44) = *(v57 + 3);
    v45 = v20;
    v46 = v24;
    v47 = v30;
    v48 = v26;
    v49 = v27;
    v50 = v35;
    *v51 = *v55;
    *&v51[3] = *&v55[3];
    v52 = v29;
    v53 = 0;
  }

  return sub_1B89A9028(&v44);
}

uint64_t Sticker.FetchRequest.RepresentationSpecifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B60, &qword_1B8A26840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89AAD38();
  sub_1B8A24A54();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_1B8A24844();
  if (v11 < 2)
  {
    v14 = v11;
LABEL_11:
    (*(v6 + 8))(v9, v5);
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v11 == 3)
  {
    v14 = 2;
    goto LABEL_11;
  }

  if (v11 == 2)
  {
    v18 = 1;
    sub_1B8A24814();
    v12 = sub_1B8A23EF4();

    v13 = sub_1B8A240E4();
    v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

    goto LABEL_11;
  }

  sub_1B89CE038();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();
  (*(v6 + 8))(v9, v5);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1B89ADBD0()
{
  result = qword_1EBA911A8;
  if (!qword_1EBA911A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA921F0, &qword_1B8A26460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911A8);
  }

  return result;
}

uint64_t sub_1B89ADC34(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B89ADCC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

unint64_t sub_1B89ADD08()
{
  result = qword_1ED82DC90;
  if (!qword_1ED82DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC90);
  }

  return result;
}

uint64_t XPCCoder.decode<A>(_:)()
{
  v0 = sub_1B8A23624();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B8A23614();
  sub_1B8A23604();
}

uint64_t storeEnumTagSinglePayload for Sticker.StickerType(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B89ADEB8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1B89ADED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B89ADF2C()
{
  result = qword_1ED82DE88;
  if (!qword_1ED82DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DE88);
  }

  return result;
}

unint64_t sub_1B89ADF80()
{
  result = qword_1EBA91208;
  if (!qword_1EBA91208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91208);
  }

  return result;
}

void sub_1B89ADFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    sub_1B8A24374();

    swift_beginAccess();
    *(a2 + 16) = v24;
    *(a2 + 24) = 0;
  }

  dispatch_group_leave(a6);
}

uint64_t sub_1B89AE2AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v6 = sub_1B8A23BC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EBA95F20);
  (*(v7 + 16))(v10, v11, v6);
  v12 = _s14descr1F373DB19C5CountCMa();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v15[2] = a1;
  (*(v7 + 32))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v10, v6);
  v16 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v17 = a1;
  sub_1B89A8FB4(a2, v28);
  v18 = sub_1B8A23EF4();
  v19 = [v16 initWithEntityName_];

  sub_1B89AECD4(a2, v19);
  sub_1B89A9028(a2);
  v20 = sub_1B89AE580();
  if (v3)
  {

    swift_setDeallocating();
    (*(v7 + 8))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v6);
    v21 = *(*v15 + 48);
    v22 = *(*v15 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v24 = v20;

    swift_setDeallocating();
    (*(v7 + 8))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v6);
    v25 = *(*v15 + 48);
    v26 = *(*v15 + 52);
    result = swift_deallocClassInstance();
    *v29 = v24;
  }

  return result;
}

uint64_t sub_1B89AE580()
{
  v2 = *(v0 + 16);
  sub_1B89AEE20();
  result = sub_1B8A24384();
  if (v1)
  {
    v4 = result;
    v5 = v1;
    v6 = sub_1B8A23BA4();
    v7 = sub_1B8A24234();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1B89A7000, v6, v7, "Could not count stickers: %@", v8, 0xCu);
      sub_1B89CCCE0(v9);
      MEMORY[0x1B8CC5170](v9, -1, -1);
      MEMORY[0x1B8CC5170](v8, -1, -1);
    }

    swift_willThrow();
    return v4;
  }

  return result;
}

void sub_1B89AE6C8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v12;
  v31 = *(a1 + 64);
  v13 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v13;
  v14 = sub_1B89AE990(v30);
  [a2 setPredicate_];

  [a2 setFetchOffset_];
  if ((*(a1 + 48) & 1) == 0)
  {
    [a2 setFetchLimit_];
  }

  v15 = *(a1 + 24);
  v16 = *(v15 + 16);
  if (v16)
  {
    v26 = a2;
    *&v30[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A246D4();
    v17 = sub_1B89AB538(0, &qword_1EBA91170, 0x1E696AEB0);
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v28 = v19;
    v29 = v17;
    v20 = (v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v27 = *(v18 + 56);
    do
    {
      v21 = v28;
      v28(v11, v20, v4);
      v21(v9, v11, v4);
      type metadata accessor for Sticker(0);
      sub_1B8A24254();
      (*(v18 - 8))(v11, v4);
      sub_1B8A246B4();
      v22 = v11;
      v23 = v4;
      v24 = *(*&v30[0] + 16);
      sub_1B8A246E4();
      v4 = v23;
      v11 = v22;
      sub_1B8A246F4();
      sub_1B8A246C4();
      v20 += v27;
      --v16;
    }

    while (v16);
    a2 = v26;
  }

  sub_1B89AB538(0, &qword_1EBA91170, 0x1E696AEB0);
  v25 = sub_1B8A240E4();

  [a2 setSortDescriptors_];
}

id sub_1B89AE990(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8A26570;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1B89AEE6C();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0x6E6F6973726576;
  *(v3 + 40) = 0xE700000000000000;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerVersionOverride;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v8 = 1;
  }

  else
  {
    v8 = *v6;
  }

  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(v3 + 96) = MEMORY[0x1E69E6530];
  *(v3 + 104) = v10;
  *(v3 + 72) = v8;
  sub_1B8A24204();
  MEMORY[0x1B8CC3F50]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B8A24114();
  }

  sub_1B8A24134();
  if (v1 != 2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B8A26570;
    *(v11 + 56) = v4;
    *(v11 + 64) = v5;
    *(v11 + 32) = 1701869940;
    *(v11 + 40) = 0xE400000000000000;
    *(v11 + 96) = v9;
    *(v11 + 104) = v10;
    *(v11 + 72) = v1 & 1;
    v12 = sub_1B8A24204();
    MEMORY[0x1B8CC3F50]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B8A24114();
    }

    sub_1B8A24134();
  }

  if (v2)
  {
    v13 = v2;
    MEMORY[0x1B8CC3F50]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B8A24114();
    }

    sub_1B8A24134();
  }

  v14 = sub_1B8A240E4();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v15;
}

uint64_t sub_1B89AECFC(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for StickerContainer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v4);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v7, v8, v9, v10, v11);
}

uint64_t sub_1B89AEDDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_1B89AEE20()
{
  result = qword_1EBA91480;
  if (!qword_1EBA91480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91480);
  }

  return result;
}

unint64_t sub_1B89AEE6C()
{
  result = qword_1EBA911C8;
  if (!qword_1EBA911C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911C8);
  }

  return result;
}

uint64_t _s14descr1F373DB19C5CountCMa()
{
  result = qword_1EBA915D8;
  if (!qword_1EBA915D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for StickerContainer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1B8A23784();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 2, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1B89AF128(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16));
  v12 = *(v0 + v8);

  v13 = *(v0 + v9 + 8);

  v14 = *(v0 + v10);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v2 | 7);
}

void *sub_1B89AF128(void *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);
  if (v1 >= 3)
  {
  }

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void, void))
{
  v2 = *(v1 + 24);
  if (v2 != 255)
  {
    a1(*(v1 + 16), v2 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v1, 25, 7);
}

uint64_t sub_1B89AF208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B89AF268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B89AF2D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v52 = a5;
  v53 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v51 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v25 = sub_1B8A23B14();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, v53, v25);
  *&v24[*(v15 + 48)] = a4;
  *v14 = a1;
  sub_1B89A9E58(v24, v14 + *(v8 + 56));
  v53 = v14;
  v27 = v14;
  v28 = v22;
  sub_1B89AF268(v27, v12, &qword_1EBA91BD0, qword_1B8A26FF0);
  v29 = *v12;
  v30 = *(v12 + *(v8 + 56) + *(v15 + 48));
  v31 = *(v26 + 32);
  v31(v19);
  v32 = *(v15 + 48);
  (v31)(v22, v19, v25);
  *&v22[v32] = v30;
  v33 = qword_1ED82E690;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v34, qword_1ED8303D8);
  sub_1B89AF268(v22, v19, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8("count stickers", v35, 2, v19, *&v19[*(v15 + 48)]);

  (*(v26 + 8))(v19, v25);
  v36 = [objc_opt_self() currentEnvironment];
  v37 = [v36 timeProvider];

  [v37 timestamp];
  v39 = v38;
  swift_unknownObjectRelease();
  v40 = [objc_opt_self() stringForTimeInterval_];
  v41 = sub_1B8A23F24();
  v43 = v42;

  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v44 = sub_1B8A23BC4();
  __swift_project_value_buffer(v44, qword_1ED8303C0);

  v45 = sub_1B8A23BA4();
  v46 = sub_1B8A24214();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136315138;
    v49 = sub_1B89A907C(v41, v43, &v54);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_1B89A7000, v45, v46, v52, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B8CC5170](v48, -1, -1);
    MEMORY[0x1B8CC5170](v47, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v28, &qword_1EBA91A58, &qword_1B8A29640);
  return sub_1B89A8A78(v53, &qword_1EBA91BD0, qword_1B8A26FF0);
}

uint64_t sub_1B89AF7B8(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a1;
  v7 = sub_1B8A23B54();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8A23B14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  (*(v12 + 16))(&v28 - v19, a4, v11);
  *&v20[*(v17 + 56)] = a5;

  v21 = sub_1B8A23B34();
  sub_1B8A23B64();
  v22 = sub_1B8A24344();
  result = sub_1B8A24434();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v15, v11);
    return sub_1B89A8A78(v20, &qword_1EBA91A58, &qword_1B8A29640);
  }

  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_1B8A23B94();

      v24 = v28;
      if ((*(v28 + 88))(v10, v7) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v10, v7);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1B8A23B04();
      _os_signpost_emit_with_name_impl(&dword_1B89A7000, v21, v22, v27, v30, v25, v26, 2u);
      MEMORY[0x1B8CC5170](v26, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1B89AFAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1B89AFB74(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = a2;
    v6 = *(a3 + 24);
    *(a3 + 24) = 1;
    v7 = a2;
    v8 = v5;
    v9 = v6;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = a1;
    v9 = *(a3 + 24);
    *(a3 + 24) = 0;
  }

  sub_1B89AFC1C(v8, v9);
}

void sub_1B89AFC1C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B89AA414(a1, a2 & 1);
  }
}

uint64_t sub_1B89AFC38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B89AFC8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B89AFCCC(a1, sub_1B89B492C, &block_descriptor_31, &selRef_fetch_withReply_, a2);
}

uint64_t sub_1B89AFCCC@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, SEL *a4@<X5>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 32) = -1;
  v11 = sub_1B8A237A4();
  v17[4] = a2;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B89B4864;
  v17[3] = a3;
  v12 = _Block_copy(v17);

  [a1 *a4];
  _Block_release(v12);

  swift_beginAccess();
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  *a5 = v13;
  *(a5 + 8) = v14;
  v15 = *(v10 + 32);
  *(a5 + 16) = v15;
  sub_1B89B4A84(v13, v14, v15);
}

uint64_t sub_1B89AFE1C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1B89B4AA8(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B89AFE74@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v51 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v47 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v64 = *(a1 + 64);
  v17 = a1[3];
  v62 = a1[2];
  v63 = v17;
  v18 = a1[1];
  v60 = *a1;
  v61 = v18;
  v19 = *(v14 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StickerSignposter();
  v50 = __swift_project_value_buffer(v20, qword_1ED8303D8);
  v21 = sub_1B89A99D4(v16, "fetch stickers", 14, 2);
  v52 = v16;
  *&v16[v19] = v21;
  v48 = v4;
  v22 = v9 + *(v4 + 48);
  v23 = v10;
  v24 = *(v10 + 48);
  v57 = v62;
  v58 = v63;
  v59 = v64;
  v55 = v60;
  v56 = v61;
  result = sub_1B89B02E8(v22, &v55);
  *v9 = v26;
  *(v22 + v24) = result;
  v27 = v62;
  v28 = *(&v63 + 1);
  v29 = v64;
  if (v63)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
    v31 = v49;
    swift_beginAccess();
    sub_1B89AA114(v31 + 16, a2);
    *(a2 + 136) = &type metadata for RangeGenerator;
    *(a2 + 144) = sub_1B89B0308();
    v32 = swift_allocObject();
    *(a2 + 112) = v32;
    *(v32 + 16) = v27;
    *(v32 + 24) = v30;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
    v34 = v60;
    v33 = v61;
    *(a2 + 56) = v61;
    v35 = v62;
    v36 = v63;
    *(a2 + 72) = v62;
    *(a2 + 88) = v36;
    v37 = v64;
    *(a2 + 104) = v64;
    *(a2 + 40) = v34;
    v57 = v35;
    v58 = v36;
    v59 = v37;
    v55 = v34;
    v56 = v33;
    v38 = v51;
    sub_1B89AF268(v9, v51, &qword_1EBA91BD0, qword_1B8A26FF0);
    v39 = *v38;
    v40 = v38 + *(v48 + 48);
    v41 = v23;
    v42 = *(v40 + *(v23 + 48));
    sub_1B89A8FB4(&v60, &v54);
    sub_1B89B02FC(&v55, v40, v42, v39);

    sub_1B89A8A78(v9, &qword_1EBA91BD0, qword_1B8A26FF0);
    v43 = sub_1B8A23B14();
    v44 = *(*(v43 - 8) + 8);
    v44(v40, v43);
    v45 = v52;
    v46 = v53;
    sub_1B89AF268(v52, v53, &qword_1EBA91A58, &qword_1B8A29640);
    sub_1B89AF7B8("fetch stickers", 14, 2, v46, *(v46 + *(v41 + 48)));

    sub_1B89A8A78(v45, &qword_1EBA91A58, &qword_1B8A29640);
    return (v44)(v46, v43);
  }

  v30 = *(&v62 + 1) + v62;
  if (!__OFADD__(*(&v62 + 1), v62))
  {
    if (v30 >= v62)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B89B0308()
{
  result = qword_1ED82E2A0;
  if (!qword_1ED82E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82E2A0);
  }

  return result;
}

void sub_1B89B035C(uint64_t a1)
{
  sub_1B89B090C(a1, v47);
  v1 = v54;
  v2 = __swift_project_boxed_opaque_existential_0(v53, v54);
  v3 = sub_1B89AA114(v47, v46);
  v57[2] = v50;
  v57[3] = v51;
  v58 = v52;
  v57[0] = v48;
  v57[1] = v49;
  v44[2] = v50;
  v44[3] = v51;
  v45 = v52;
  v44[0] = v48;
  v44[1] = v49;
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, v1);
  sub_1B89A8FB4(v57, v55);
  sub_1B89B09B0(v46, v44, v6, v1, v55);
  sub_1B89B0BC8(v47);
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    v11 = v56;
    v12 = v56 >> 62;
    if (v56 >> 62)
    {
      break;
    }

    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_4:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8CC44E0](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v13 = *(v11 + 32);
    }

    v14 = v13;
    if (v12)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_89;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_90;
      }

      v15 = sub_1B8A24554();
    }

    else
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_89;
      }
    }

    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_84;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_21:
        sub_1B8A24554();
      }

      else
      {
        v17 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v18 = *(v17 + 16);
      }

      v11 = sub_1B8A24674();
      v17 = v11 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v12)
    {
      goto LABEL_21;
    }

    v17 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_23:

    if (v11 >> 62)
    {
      v39 = sub_1B8A24554();
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_96;
      }

      memmove((v17 + 32), (v17 + 40), 8 * (v39 - 1));
      v40 = sub_1B8A24554();
      v20 = v40 - 1;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v19 = *(v17 + 16);
      memmove((v17 + 32), (v17 + 40), 8 * v19 - 8);
      v20 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_85;
      }
    }

    *(v17 + 16) = v20;
    v56 = v11;
LABEL_52:
    if (!v8)
    {
      v28 = v9[3];
      if (((v28 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_86;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v31 = swift_allocObject();
      v32 = _swift_stdlib_malloc_size(v31);
      v33 = v32 - 32;
      if (v32 < 32)
      {
        v33 = v32 - 25;
      }

      v34 = v33 >> 3;
      v31[2] = v30;
      v31[3] = (2 * (v33 >> 3)) | 1;
      v35 = (v31 + 4);
      v36 = v9[3] >> 1;
      if (v9[2])
      {
        v37 = v9 + 4;
        if (v31 != v9 || v35 >= v37 + 8 * v36)
        {
          memmove(v31 + 4, v37, 8 * v36);
        }

        v9[2] = 0;
      }

      i = (v35 + 8 * v36);
      v8 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v36;

      v9 = v31;
    }

    v38 = __OFSUB__(v8--, 1);
    if (v38)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    *i = v14;
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_94;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_95;
    }

    goto LABEL_4;
  }

LABEL_30:
  sub_1B89B0C1C();
  v21 = v56;
  v22 = v56 >> 62;
  if (!(v56 >> 62))
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

LABEL_32:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1B8CC44E0](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v23 = *(v21 + 32);
    }

    v14 = v23;
    if (v22)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_91;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_92;
      }

      v24 = sub_1B8A24554();
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_91;
      }
    }

    v25 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_88;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v22)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 > *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_48:
          v27 = *(v26 + 16);
          goto LABEL_50;
        }

        goto LABEL_51;
      }
    }

    else if (!v22)
    {
      v26 = v21 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_48;
    }

    sub_1B8A24554();
LABEL_50:
    v21 = sub_1B8A24674();
    v56 = v21;
LABEL_51:
    sub_1B89DD6CC(0, 1, 0);
    v56 = v21;
    sub_1B89B44F4(v14);
    if (!v14)
    {
      goto LABEL_78;
    }

    goto LABEL_52;
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_97;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_98;
    }

    goto LABEL_32;
  }

LABEL_77:
  sub_1B89B44F4(0);
LABEL_78:
  sub_1B89B4780(v55);
  v41 = v9[3];
  if (v41 < 2)
  {
    return;
  }

  v42 = v41 >> 1;
  v38 = __OFSUB__(v42, v8);
  v43 = v42 - v8;
  if (!v38)
  {
    v9[2] = v43;
    return;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_1B89B0968()
{
  sub_1B89B035C(v0);
  v2 = v1;
  sub_1B89B0BC8(v0);
  return v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B89B09B0@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 152) = MEMORY[0x1E69E7CC0];
  *(a5 + 160) = 0;
  sub_1B89AA114(v12, a5);
  v15 = *a2;
  *(a5 + 56) = a2[1];
  v16 = a2[3];
  *(a5 + 72) = a2[2];
  *(a5 + 88) = v16;
  *(a5 + 104) = *(a2 + 64);
  *(a5 + 40) = v15;
  (*(v10 + 16))(v14, a3, a4);
  *(a5 + 136) = swift_getAssociatedTypeWitness();
  *(a5 + 144) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((a5 + 112));
  sub_1B8A24054();
  (*(v10 + 8))(a3, a4);
  return __swift_destroy_boxed_opaque_existential_0(a1);
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

__n128 sub_1B89B0BAC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_1B89B0C1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v65 - v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v65 - v11);
  v13 = &v65 + *(v10 + 48) - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v15 = *(v14 + 48);
  v16 = sub_1B89B1448(v13);
  *v12 = v17;
  *&v13[v15] = v16;
  if (*(v1 + 160) != 1)
  {
    v23 = *(v1 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 112, v23);
    sub_1B8A24464();
    if (v95)
    {
      if (qword_1ED82DFB8 != -1)
      {
        swift_once();
      }

      v24 = sub_1B8A23BC4();
      __swift_project_value_buffer(v24, qword_1ED830390);
      v19 = sub_1B8A23BA4();
      v25 = sub_1B8A24224();
      if (!os_log_type_enabled(v19, v25))
      {
        goto LABEL_12;
      }

      v26 = v14;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B89A7000, v19, v25, "Can’t refill — range exhaustion", v27, 2u);
      v22 = v27;
      v14 = v26;
      goto LABEL_11;
    }

    v69 = v12;
    v29 = v93;
    v28 = v94;
    v30 = *(v1 + 56);
    v31 = *(v1 + 88);
    v88[2] = *(v1 + 72);
    v88[3] = v31;
    v89 = *(v1 + 104);
    v88[0] = *(v1 + 40);
    v88[1] = v30;
    v86 = v88[0];
    v87 = v30;
    v84 = *(v1 + 89);
    v12 = (v94 - v93);
    if (__OFSUB__(v94, v93))
    {
      __break(1u);
      swift_once();
      v40 = sub_1B8A23BC4();
      __swift_project_value_buffer(v40, qword_1ED830390);
      v41 = v23;
      v42 = sub_1B8A23BA4();
      v43 = sub_1B8A24234();

      v44 = os_log_type_enabled(v42, v43);
      v2 = v68;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v23;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_1B89A7000, v42, v43, "Error refilling buffer: %@", v45, 0xCu);
        sub_1B89A8A78(v46, &qword_1EBA919E0, &qword_1B8A262D0);
        MEMORY[0x1B8CC5170](v46, -1, -1);
        MEMORY[0x1B8CC5170](v45, -1, -1);
      }

      else
      {
      }

      v71 = v86;
      v72 = v87;
      v73 = v66;
      v74 = v65;
      goto LABEL_29;
    }

    v67 = v9;
    v68 = v2;
    v85 = 0;
    v32 = v6 + *(v2 + 48);
    v70 = v14;
    v33 = *(v14 + 48);
    sub_1B89A8FB4(v88, v90);
    v34 = sub_1B89B1754(v32, v29, v28);
    *v6 = v35;
    *(v32 + v33) = v34;
    v36 = v29;
    v38 = *(v1 + 24);
    v37 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_0(v1, v38);
    v90[0] = v86;
    v90[1] = v87;
    v65 = v12;
    v66 = v36;
    *&v91 = v36;
    *(&v91 + 1) = v12;
    v92[0] = v85;
    *&v92[1] = v84;
    v81 = v91;
    v82 = *v92;
    v83 = HIBYTE(v84);
    v79 = v86;
    v80 = v87;
    v39 = *(v37 + 16);
    sub_1B89A8FB4(v90, v77);
    v49 = v39(&v79, v38, v37);
    v77[2] = v81;
    v77[3] = v82;
    v78 = v83;
    v77[0] = v79;
    v77[1] = v80;
    sub_1B89A9028(v77);
    v9 = v67;
    v12 = v69;
    if (v49 >> 62)
    {
      v50 = sub_1B8A24554();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v68;
    v51 = v70;
    sub_1B89AF268(v6, v9, &qword_1EBA91BD0, qword_1B8A26FF0);
    v52 = v9 + *(v2 + 48);
    sub_1B89B3564(v50, v52, *(v52 + *(v51 + 48)), *v9);

    v53 = sub_1B8A23B14();
    (*(*(v53 - 8) + 8))(v52, v53);
    sub_1B89B3CDC(v49);
    v54 = v65;
    v55 = v50 < v65;
    *(v1 + 160) = v50 < v65;
    if (v55)
    {
      v56 = v66;
      if (qword_1ED82DFB8 != -1)
      {
        swift_once();
      }

      v57 = sub_1B8A23BC4();
      __swift_project_value_buffer(v57, qword_1ED830390);
      v58 = sub_1B8A23BA4();
      v59 = sub_1B8A24214();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = v54;
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1B89A7000, v58, v59, "This is the last batch", v61, 2u);
        MEMORY[0x1B8CC5170](v61, -1, -1);

        sub_1B89A8A78(v6, &qword_1EBA91BD0, qword_1B8A26FF0);
        v71 = v86;
        v72 = v87;
        v73 = v56;
        v74 = v60;
        v12 = v69;
LABEL_29:
        v75 = v85;
        v76 = v84;
        sub_1B89A9028(&v71);
        v14 = v70;
        goto LABEL_30;
      }

      sub_1B89A8A78(v6, &qword_1EBA91BD0, qword_1B8A26FF0);
      v71 = v86;
      v72 = v87;
      v73 = v56;
    }

    else
    {
      sub_1B89A8A78(v6, &qword_1EBA91BD0, qword_1B8A26FF0);
      v71 = v86;
      v72 = v87;
      v73 = v66;
    }

    v74 = v54;
    goto LABEL_29;
  }

  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8A23BC4();
  __swift_project_value_buffer(v18, qword_1ED830390);
  v19 = sub_1B8A23BA4();
  v20 = sub_1B8A24224();
  if (!os_log_type_enabled(v19, v20))
  {
    goto LABEL_12;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  _os_log_impl(&dword_1B89A7000, v19, v20, "Last refill was partial — the last sticker has probably already been fetched", v21, 2u);
  v22 = v21;
LABEL_11:
  MEMORY[0x1B8CC5170](v22, -1, -1);
LABEL_12:

LABEL_30:
  sub_1B89AF268(v12, v9, &qword_1EBA91BD0, qword_1B8A26FF0);
  v62 = v9 + *(v2 + 48);
  sub_1B89B4010(v62, *(v62 + *(v14 + 48)), *v9);

  sub_1B89A8A78(v12, &qword_1EBA91BD0, qword_1B8A26FF0);
  v63 = sub_1B8A23B14();
  return (*(*(v63 - 8) + 8))(v62, v63);
}

uint64_t sub_1B89B1448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8A23BC4();
  __swift_project_value_buffer(v9, qword_1ED830390);
  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24214();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B89A7000, v10, v11, "BEGIN refillBuffer()", v12, 2u);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }

  v13 = [objc_opt_self() currentEnvironment];
  v14 = [v13 timeProvider];

  [v14 timestamp];
  swift_unknownObjectRelease();
  v15 = *(v2 + 48);
  if (qword_1ED82DFC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v16, qword_1ED8303A8);
  *&v8[v15] = sub_1B89A99D4(v8, "refill buffer", 13, 2);
  sub_1B89A9E58(v8, v6);
  v17 = *&v6[*(v2 + 48)];
  v18 = sub_1B8A23B14();
  (*(*(v18 - 8) + 32))(a1, v6, v18);
  return v17;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B89B1724@<X0>(uint64_t a1@<X8>)
{
  result = RangeGenerator.next()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1B89B1754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8A23BC4();
  __swift_project_value_buffer(v13, qword_1ED830390);
  v14 = sub_1B8A23BA4();
  v15 = sub_1B8A24214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    _os_log_impl(&dword_1B89A7000, v14, v15, "will fetch range %ld..<%ld", v16, 0x16u);
    MEMORY[0x1B8CC5170](v16, -1, -1);
  }

  v17 = [objc_opt_self() currentEnvironment];
  v18 = [v17 timeProvider];

  [v18 timestamp];
  swift_unknownObjectRelease();
  v19 = *(v6 + 48);
  if (qword_1ED82DFC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v20, qword_1ED8303A8);
  *&v12[v19] = sub_1B89A99D4(v12, "fetch range", 11, 2);
  sub_1B89A9E58(v12, v10);
  v21 = *&v10[*(v6 + 48)];
  v22 = sub_1B8A23B14();
  (*(*(v22 - 8) + 32))(a1, v10, v22);
  return v21;
}

uint64_t RangeGenerator.next()()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if ((v2 & 1) == 0 && !v1)
  {
    return 0;
  }

  result = *v0;
  v4 = v0[1];
  v5 = v4 - *v0;
  if (__OFSUB__(v4, *v0))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4 != *v0;
  if (v5 < 1)
  {
    return 0;
  }

  if (v1 >= v5)
  {
    v2 = 1;
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v7 = __OFADD__(result, v1);
  v8 = result + v1;
  if (v7)
  {
    goto LABEL_15;
  }

  if (v8 >= result)
  {
    v9 = v4 < v8;
    v4 = v8;
    if (!v9)
    {
LABEL_11:
      *v0 = v4;
      return result;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B89B1AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B89A8FB4(a4, v39);
  sub_1B89B1EA8(a3, a4, a5, &v40);
  if (!v5)
  {

    sub_1B89A9028(a4);
    return v40;
  }

  v38 = v5;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = v37;
  if (!sub_1B89EE954())
  {

LABEL_12:
    swift_willThrow();
LABEL_14:

    return sub_1B89A9028(a4);
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v23 = 6;
    swift_willThrow();

    goto LABEL_14;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8A23BC4();
  __swift_project_value_buffer(v13, qword_1EBA95F20);
  v14 = v37;
  v15 = sub_1B8A23BA4();
  v16 = sub_1B8A24234();

  log = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1B89A7000, log, v16, "Database is corrupted, attempting recovery after %@", v17, 0xCu);
    sub_1B89A8A78(v18, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v18, -1, -1);
    MEMORY[0x1B8CC5170](v17, -1, -1);
  }

  v20 = a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  v21 = sub_1B89BBFAC();
  if (v21)
  {
    loga = v14;
    v24 = type metadata accessor for StickerContainer(0);
    v32 = *(v20 + v24[5]);
    [v32 lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v20, *(v20 + v24[6]), &v35);
    v25 = v36;
    v26 = v24[7];
    v14 = loga;
    v27 = v20 + v26;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    *v27 = v35;
    *(v27 + 16) = v25;
    sub_1B89AF128(v28, v29, v30);
    [v32 unlock];
  }

  swift_endAccess();

  sub_1B89A8FB4(a4, v39);
  v31 = sub_1B89EFE74(a1 - 1, a2, a3, a4, a5, sub_1B89B1AD0);

  sub_1B89A9028(a4);
  return v31;
}

uint64_t sub_1B89B1EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for StickerContainer(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v13, v12, type metadata accessor for StickerContainer);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  v16 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v16;
  *(v14 + 88) = a3;
  sub_1B89A8FB4(a2, v20);
  v17 = sub_1B89B2038(sub_1B89F6708, v14);
  if (v4)
  {
    sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }

  else
  {
    v19 = v17;

    *a4 = v19;
    return sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }
}

uint64_t sub_1B89B2038(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v71 - v5;
  v6 = sub_1B8A23D44();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v10;
  v80 = sub_1B8A23CF4();
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = *(v13 - 8);
  v81 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v73 = (v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v74 = (v18 + 16);
  v75 = dispatch_group_create();
  sub_1B89ABEA8(v2, v16, type metadata accessor for StickerContainer);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1B89ACED0(v16, v24 + v19);
  *(v24 + v20) = v17;
  v25 = (v24 + v21);
  v26 = v83;
  *v25 = v77;
  v25[1] = v26;
  *(v24 + v22) = v18;
  v27 = v75;
  *(v24 + v23) = v75;
  aBlock[4] = sub_1B89C3640;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor;
  _Block_copy(aBlock);
  v86 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);

  v83 = v18;
  v28 = v79;

  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  sub_1B8A244C4();
  v30 = sub_1B8A23D74();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v29);
  v33 = *(v76 + *(v81 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8A23CD4();
  v35 = __swift_project_value_buffer(v34, qword_1EBA913B0);
  v36 = v82;
  MEMORY[0x1B8CC3C00](v28, v35);
  v37 = v85;
  v38 = *(v84 + 8);
  v38(v28, v85);
  v39 = sub_1B8A24264();
  v38(v36, v37);
  if ((sub_1B8A23CE4() & 1) == 0)
  {
    v43 = v74;
    swift_beginAccess();
    v44 = *v43;
    if (*v43)
    {
      v86 = *v43;
      v45 = v44;
      v46 = v44;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
      if (swift_dynamicCast())
      {
        if (v88 != 11)
        {
          goto LABEL_6;
        }

        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v47 = sub_1B8A23BC4();
        __swift_project_value_buffer(v47, qword_1EBA91268);
        v48 = sub_1B8A23BA4();
        v49 = sub_1B8A24234();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1B89A7000, v48, v49, "Cannot perform a managed object model operation on an un-initialized persistence container.", v50, 2u);
          MEMORY[0x1B8CC5170](v50, -1, -1);
        }

        v51 = sub_1B8A24184();
        v39 = v72;
        (*(*(v51 - 8) + 56))(v72, 1, 1, v51);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        v53 = &unk_1B8A26488;
LABEL_23:
        sub_1B8A201C0(0, 0, v39, v53, v52);

        sub_1B89A8A78(v39, &qword_1EBA92200, &qword_1B8A28000);
        goto LABEL_6;
      }

      v86 = v44;
      v54 = v44;
      if (swift_dynamicCast())
      {
        if ((v88 & 0xFE) != 2)
        {
          goto LABEL_6;
        }

        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v55 = sub_1B8A23BC4();
        __swift_project_value_buffer(v55, qword_1EBA91268);
        v56 = sub_1B8A23BA4();
        v57 = sub_1B8A24244();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_1B89A7000, v56, v57, "Potential corruption detected. Will perform in depth corruption check.", v58, 2u);
          MEMORY[0x1B8CC5170](v58, -1, -1);
        }

        v59 = sub_1B8A24184();
        v39 = v72;
        (*(*(v59 - 8) + 56))(v72, 1, 1, v59);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        v53 = &unk_1B8A26478;
        goto LABEL_23;
      }

      v60 = sub_1B8A23664();
      v61 = sub_1B89EE954();

      if (v61)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v62 = sub_1B8A23BC4();
        __swift_project_value_buffer(v62, qword_1EBA91268);
        v63 = sub_1B8A23BA4();
        v64 = sub_1B8A24234();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1B89A7000, v63, v64, "Stickers database is corrupt. Will attempt remediation.", v65, 2u);
          MEMORY[0x1B8CC5170](v65, -1, -1);
        }

        v66 = [objc_opt_self() standardUserDefaults];
        v67 = sub_1B8A23EF4();
        [v66 setBool:1 forKey:v67];

        sub_1B89C353C();
        v68 = swift_allocError();
        *v69 = 17;
        sub_1B89C0990(v68);
      }
    }

    v70 = v73;
    swift_beginAccess();
    v39 = *v70;
    if (v39)
    {

      return v39;
    }

    sub_1B89C353C();
    swift_allocError();
    v41 = 16;
    goto LABEL_5;
  }

  sub_1B8A23D64();
  sub_1B89C353C();
  swift_allocError();
  v41 = 15;
LABEL_5:
  *v40 = v41;
LABEL_6:
  swift_willThrow();

  return v39;
}

uint64_t sub_1B89B2AC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

NSObject *sub_1B89B2B04(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v1 = [a1 execute_];
  v2 = v16[0];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for ManagedSticker();
    v4 = sub_1B8A240F4();
    v5 = v2;
  }

  else
  {
    v6 = v16[0];
    v7 = sub_1B8A23674();

    swift_willThrow();
    v8 = v7;
    v4 = sub_1B8A23BA4();
    v9 = sub_1B8A24234();

    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v7;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1B89A7000, v4, v9, "Could not fetch stickers: %@", v10, 0xCu);
      sub_1B89CCCE0(v11);
      MEMORY[0x1B8CC5170](v11, -1, -1);
      MEMORY[0x1B8CC5170](v10, -1, -1);
    }

    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1B89B2CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v6 = sub_1B8A23BC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EBA95F20);
  (*(v7 + 16))(v10, v11, v6);
  CMa = _s14descr1F373DB19C5FetchCMa();
  v13 = *(CMa + 48);
  v14 = *(CMa + 52);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v10, v6);
  v16 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v17 = a1;
  sub_1B89A8FB4(a2, v29);
  v18 = sub_1B8A23EF4();
  v19 = [v16 initWithEntityName_];

  sub_1B89AECD4(a2, v19);
  sub_1B89A9028(a2);
  v20 = sub_1B89B2B04(v19);
  if (v3)
  {

    swift_setDeallocating();
    (*(v7 + 8))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v6);
    v23 = *(*v15 + 48);
    v24 = *(*v15 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v21 = *(a2 + 48);
    v29[2] = *(a2 + 32);
    v29[3] = v21;
    v30 = *(a2 + 64);
    v22 = *(a2 + 16);
    v29[0] = *a2;
    v29[1] = v22;
    v26 = sub_1B89B2FF4(v20, v29);

    swift_setDeallocating();
    (*(v7 + 8))(v15 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v6);
    v27 = *(*v15 + 48);
    v28 = *(*v15 + 52);
    result = swift_deallocClassInstance();
    *v31 = v26;
  }

  return result;
}

uint64_t sub_1B89B2FF4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 48);
  v28 = *(a2 + 32);
  v29 = v4;
  v30 = *(a2 + 64);
  v5 = *(a2 + 16);
  v26 = *a2;
  v27 = v5;
  if (a1 >> 62)
  {
LABEL_20:
    v6 = sub_1B8A24554();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1B8A246D4();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      v31 = v3 & 0xC000000000000001;
      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if (v31)
        {
          v10 = MEMORY[0x1B8CC44E0](v8, v3);
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            goto LABEL_19;
          }

          v10 = *(v3 + 8 * v8 + 32);
        }

        v11 = v10;
        v23[2] = v28;
        v23[3] = v29;
        v24 = v30;
        v23[0] = v26;
        v23[1] = v27;
        sub_1B89A8FB4(&v26, v22);
        sub_1B89F5480(v11, v23);
        if (v2)
        {
          break;
        }

        sub_1B8A246B4();
        v12 = v3;
        v13 = *(v25 + 16);
        sub_1B8A246E4();
        v3 = v12;
        sub_1B8A246F4();
        sub_1B8A246C4();
        ++v8;
        if (v9 == v6)
        {
          return v25;
        }
      }

      v14 = v2;
      v15 = sub_1B8A23BA4();
      v16 = sub_1B8A24234();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v2;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1B89A7000, v15, v16, "Could not convert fetched stickers: %@", v17, 0xCu);
        sub_1B89CCCE0(v18);
        MEMORY[0x1B8CC5170](v18, -1, -1);
        MEMORY[0x1B8CC5170](v17, -1, -1);
      }

      return swift_willThrow();
    }
  }

  return result;
}

void sub_1B89B328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A28, &unk_1B8A267B0);
    sub_1B8A24374();

    swift_beginAccess();
    v24 = *(a2 + 16);
    *(a2 + 16) = v25;
  }

  dispatch_group_leave(a6);
}

uint64_t sub_1B89B3564(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v68 = a1;
  v69 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v67 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v67 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v67 - v22;
  v24 = sub_1B8A23B14();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, a2, v24);
  *&v23[*(v14 + 48)] = v69;
  *v13 = a4;
  sub_1B89A9E58(v23, v13 + *(v7 + 56));
  v70 = v13;
  sub_1B89AF268(v13, v11, &qword_1EBA91BD0, qword_1B8A26FF0);
  v26 = *v11;
  v27 = *(v7 + 56);
  v28 = v14;
  v29 = *(v11 + v27 + *(v14 + 48));
  v30 = *(v25 + 32);
  v30(v18);
  v31 = *(v28 + 48);
  (v30)(v21, v18, v24);
  *&v21[v31] = v29;
  v32 = v21;
  v33 = qword_1ED82DFC0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v34, qword_1ED8303A8);
  sub_1B89AF268(v21, v18, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8("fetch range", 11, 2, v18, *&v18[*(v28 + 48)]);

  (*(v25 + 8))(v18, v24);
  v35 = [objc_opt_self() currentEnvironment];
  v36 = [v35 timeProvider];

  [v36 timestamp];
  v38 = v37;
  swift_unknownObjectRelease();
  v39 = v38 - v26;
  v40 = [objc_opt_self() stringForTimeInterval_];
  v41 = sub_1B8A23F24();
  v43 = v42;

  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v44 = sub_1B8A23BC4();
  v45 = __swift_project_value_buffer(v44, qword_1ED830390);

  v46 = sub_1B8A23BA4();
  v47 = sub_1B8A24214();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v67[1] = v45;
    v49 = v48;
    v50 = swift_slowAlloc();
    v69 = v32;
    v51 = v50;
    v71 = v50;
    *v49 = 134218498;
    v52 = v68;
    *(v49 + 4) = v68;
    *(v49 + 12) = 2080;
    if (v52 == 1)
    {
      v53 = 0x72656B63697473;
    }

    else
    {
      v53 = 0x7372656B63697473;
    }

    if (v52 == 1)
    {
      v54 = 0xE700000000000000;
    }

    else
    {
      v54 = 0xE800000000000000;
    }

    v55 = sub_1B89A907C(v53, v54, &v71);

    *(v49 + 14) = v55;
    *(v49 + 22) = 2080;
    *(v49 + 24) = sub_1B89A907C(v41, v43, &v71);
    _os_log_impl(&dword_1B89A7000, v46, v47, "did fetch %ld %s in %s", v49, 0x20u);
    swift_arrayDestroy();
    v56 = v51;
    v32 = v69;
    MEMORY[0x1B8CC5170](v56, -1, -1);
    MEMORY[0x1B8CC5170](v49, -1, -1);
  }

  if ([objc_opt_self() isMainThread] && v39 > 0.0001)
  {

    v57 = sub_1B8A23BA4();
    v58 = sub_1B8A24244();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v71 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1B89A907C(v41, v43, &v71);
      _os_log_impl(&dword_1B89A7000, v57, v58, "An instance of StickerSequence is being iterated on the main thread, which may negatively impact the responsiveness of the UI: %s was spent performing I/O on the main thread.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1B8CC5170](v60, -1, -1);
      MEMORY[0x1B8CC5170](v59, -1, -1);
    }

    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v44, qword_1ED8303C0);

    v61 = sub_1B8A23BA4();
    v62 = sub_1B8A24244();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v71 = v64;
      *v63 = 136315138;
      v65 = sub_1B89A907C(v41, v43, &v71);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1B89A7000, v61, v62, "An instance of StickerSequence is being iterated on the main thread, which may negatively impact the responsiveness of the UI: %s was spent performing I/O on the main thread.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x1B8CC5170](v64, -1, -1);
      MEMORY[0x1B8CC5170](v63, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  sub_1B89A8A78(v32, &qword_1EBA91A58, &qword_1B8A29640);
  return sub_1B89A8A78(v70, &qword_1EBA91BD0, qword_1B8A26FF0);
}

uint64_t sub_1B89B3CDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B8A24554();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1B8A24554();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1B89B3DCC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B89B3E6C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B89B3DCC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B8A24554();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B8A24674();
  *v1 = result;
  return result;
}

uint64_t sub_1B89B3E6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8A24554();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8A24554();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B89CCD90(&qword_1EBA91B00, &qword_1EBA91A28, &unk_1B8A267B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A28, &unk_1B8A267B0);
            v9 = sub_1B8A03D9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Sticker(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89B4010(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v48 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1B8A23B14();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v22, v48, v23);
  *&v22[*(v13 + 48)] = a2;
  *v12 = a3;
  sub_1B89A9E58(v22, v12 + *(v6 + 56));
  v48 = v12;
  v25 = v12;
  v26 = v20;
  sub_1B89AF268(v25, v10, &qword_1EBA91BD0, qword_1B8A26FF0);
  v27 = *v10;
  v28 = *(v10 + *(v6 + 56) + *(v13 + 48));
  v29 = *(v24 + 32);
  v29(v17);
  v30 = *(v13 + 48);
  (v29)(v26, v17, v23);
  *(v26 + v30) = v28;
  v31 = qword_1ED82DFC0;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v32, qword_1ED8303A8);
  sub_1B89AF268(v26, v17, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8("refill buffer", 13, 2, v17, *&v17[*(v13 + 48)]);

  (*(v24 + 8))(v17, v23);
  v33 = [objc_opt_self() currentEnvironment];
  v34 = [v33 timeProvider];

  [v34 timestamp];
  v36 = v35;
  swift_unknownObjectRelease();
  v37 = [objc_opt_self() stringForTimeInterval_];
  v38 = sub_1B8A23F24();
  v40 = v39;

  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v41 = sub_1B8A23BC4();
  __swift_project_value_buffer(v41, qword_1ED830390);

  v42 = sub_1B8A23BA4();
  v43 = sub_1B8A24214();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v44 = 136315138;
    v46 = sub_1B89A907C(v38, v40, &v49);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_1B89A7000, v42, v43, "END refillBuffer() (%s)", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1B8CC5170](v45, -1, -1);
    MEMORY[0x1B8CC5170](v44, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v26, &qword_1EBA91A58, &qword_1B8A29640);
  return sub_1B89A8A78(v48, &qword_1EBA91BD0, qword_1B8A26FF0);
}

void sub_1B89B44F4(void *a1)
{
  if (!a1)
  {
    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8A23BC4();
    __swift_project_value_buffer(v10, qword_1ED8303C0);
    v15 = sub_1B8A23BA4();
    v11 = sub_1B8A24214();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B89A7000, v15, v11, "Returned last sticker (end of sequence)", v12, 2u);
      MEMORY[0x1B8CC5170](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v1 = qword_1ED82E688;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8A23BC4();
  __swift_project_value_buffer(v3, qword_1ED8303C0);
  v15 = v2;
  oslog = sub_1B8A23BA4();
  v4 = sub_1B8A24214();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_1B8A23904();
    sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
    v7 = sub_1B8A24934();
    v9 = sub_1B89A907C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B89A7000, oslog, v4, "Returning sticker %s to caller", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CC5170](v6, -1, -1);
    MEMORY[0x1B8CC5170](v5, -1, -1);

LABEL_10:
    v13 = v15;
    goto LABEL_12;
  }

  v13 = oslog;
LABEL_12:
}

uint64_t XPCCoder.encode<A>(_:)()
{
  v0 = sub_1B8A23654();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B8A23644();
  v3 = sub_1B8A23634();

  return v3;
}

uint64_t sub_1B89B4864(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1B8A237C4();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1B89B4A04(v4, v9);
}

void sub_1B89B4930(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    v7 = *(a4 + 24);
    *(a4 + 16) = a3;
    *(a4 + 24) = 0;
    v8 = *(a4 + 32);
    *(a4 + 32) = 1;
    v9 = a3;
    v10 = v6;
    v11 = v7;
    v12 = v8;
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      return;
    }

    swift_beginAccess();
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    v17 = *(a4 + 32);
    *(a4 + 32) = 0;
    sub_1B89B4A18(a1, a2);
    v10 = v15;
    v11 = v16;
    v12 = v17;
  }

  sub_1B89B4A6C(v10, v11, v12);
}

uint64_t sub_1B89B4A04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B89AFC38(a1, a2);
  }

  return a1;
}

uint64_t sub_1B89B4A18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1B89B4A6C(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1B89B4AA8(a1, a2, a3 & 1);
  }
}

id sub_1B89B4A84(id result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B89B4A9C(result, a2, a3 & 1);
  }

  return result;
}

id sub_1B89B4A9C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B89B4A18(a1, a2);
  }
}

void sub_1B89B4AA8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B89AFC38(a1, a2);
  }
}

uint64_t sub_1B89B4AB4(__int128 *a1)
{
  v3 = v1;
  v4 = a1[3];
  v30 = a1[2];
  v31 = v4;
  v32 = *(a1 + 64);
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = sub_1B8A23654();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1B8A23644();
  sub_1B89AA420();
  v10 = sub_1B8A23634();
  if (v2)
  {

    sub_1B89F7804();
    swift_allocError();
    *v12 = xmmword_1B8A28240;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v13 = v10;
    v14 = v11;

    v15 = v3[5];
    v16 = v3[6];
    v9 = __swift_project_boxed_opaque_existential_0(v3 + 2, v15);
    v33 = &v28;
    MEMORY[0x1EEE9AC00](v9);
    v27[2] = v13;
    v27[3] = v14;
    v17 = *(v16 + 8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F08, &unk_1B8A28290);
    v17(&v28, sub_1B89AFC8C, v27, v18, v15, v16);
    v19 = v28;
    v20 = v29;
    if (v29)
    {
      v21 = v28;
      *&v28 = v19;
      v25 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
      swift_willThrowTypedImpl();
      sub_1B89AFC38(v13, v14);
      sub_1B89B4AA8(v19, *(&v19 + 1), v20);
      sub_1B89F7858(v19, 1);
    }

    else
    {
      v22 = sub_1B8A23624();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_1B8A23614();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A28, &unk_1B8A267B0);
      sub_1B89B4D8C();
      sub_1B8A23604();

      v9 = v28;
      sub_1B89AFC38(v13, v14);
      sub_1B89B4AA8(v19, *(&v19 + 1), 0);
    }
  }

  return v9;
}

unint64_t sub_1B89B4D8C()
{
  result = qword_1EBA914A8;
  if (!qword_1EBA914A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91A28, &unk_1B8A267B0);
    sub_1B89B4E2C(&qword_1EBA914E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA914A8);
  }

  return result;
}

uint64_t sub_1B89B4E2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Sticker(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1B89B4E94(uint64_t a1)
{
  v2 = [*(v1 + 16) lastUsedVariantEmojiForEmoji_];

  return v2;
}

id sub_1B89B4ED0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPreferred];
  *a2 = result;
  return result;
}

id sub_1B89B4F18@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_1B89B4F60@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 byteCount];
  *a2 = result;
  return result;
}

id sub_1B89B4FF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 size_h];
  *a2 = v4;
  return result;
}

id sub_1B89B5040@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 size_w];
  *a2 = v4;
  return result;
}

id sub_1B89B50C8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_1B89B5110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sticker];
  *a2 = result;
  return result;
}

uint64_t sub_1B89B5160()
{
  v1 = sub_1B8A23784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B89B51F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerContainer(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1B8A23BC4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B89B5314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StickerContainer(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1B8A23BC4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B89B5438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B89B54F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B89B55CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89B5604()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15 && (v1 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1B89AFC38(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B89B5698()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5714()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1B89B5750@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B89B57AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKSticker_libraryIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B89B5868()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 72);
  if (v1 >= 3)
  {
  }

  v2 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B89B58C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23784();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B89B5934(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B8A23784();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B89B59B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B89B5A40@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B89B5A88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B89B5AC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5B08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89B5B40()
{
  v1 = sub_1B8A23C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B89B5C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23784();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B89B5C7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B8A23784();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B89B5D1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5D54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5D8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B5E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B89B5E90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B89F9794(v4);
}

uint64_t sub_1B89B5EE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_byteCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B89B5F4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B89B6058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_effect;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1B89B60F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B89B6194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  return sub_1B89AF268(v3 + v4, a2, &unk_1EBA92220, &unk_1B8A281A0);
}

id sub_1B89B6204@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributionAdamID];
  *a2 = result;
  return result;
}

id sub_1B89B6314@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 byteCount];
  *a2 = result;
  return result;
}

id sub_1B89B635C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 creationDate];
  *a2 = v4;
  return result;
}

id sub_1B89B63A4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 effect];
  *a2 = result;
  return result;
}

id sub_1B89B6420@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUsedDate];
  *a2 = v4;
  return result;
}

id sub_1B89B6468@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 libraryIndex];
  *a2 = v4;
  return result;
}

id sub_1B89B64E4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_1B89B652C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 representations];
  *a2 = result;
  return result;
}

id sub_1B89B657C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

uint64_t sub_1B89B66C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B89B6704()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89B673C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBA920E0;
  return result;
}

uint64_t sub_1B89B6788(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBA920E0 = v1;
  return result;
}

uint64_t sub_1B89B67D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B680C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89B6854()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B89B6894()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B68D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B6918()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B89B6980(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1B89B4A18(*a1, v3);
  return sub_1B8A13FF4(v2, v3);
}

uint64_t sub_1B89B69C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B89B6A1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B89B6A70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B89B6ACC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B89B6B24(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B89B6B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23B44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B89B6BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23B44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B89B6C54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B89B6CB0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B89B6CE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B8A242B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1B89B6D94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8A242B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B89B6E38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B89B6E78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B89B6F4C()
{
  result = [objc_allocWithZone(type metadata accessor for Versioning()) init];
  qword_1EBA91598 = result;
  return result;
}

id static Versioning.shared.getter()
{
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBA91598;

  return v1;
}

uint64_t sub_1B89B7068(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerVersionOverride;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B89B7138@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1B89B719C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t sub_1B89B7204(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1B89B724C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id Versioning.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Versioning();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B89B7520(uint64_t a1, int a2)
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

uint64_t sub_1B89B7540(uint64_t result, int a2, int a3)
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

uint64_t sub_1B89B7584(uint64_t a1, id *a2)
{
  result = sub_1B8A23F04();
  *a2 = 0;
  return result;
}

uint64_t sub_1B89B75FC(uint64_t a1, id *a2)
{
  v3 = sub_1B8A23F14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B89B767C@<X0>(uint64_t *a1@<X8>)
{
  sub_1B8A23F24();
  v2 = sub_1B8A23EF4();

  *a1 = v2;
  return result;
}

uint64_t sub_1B89B76C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8A23EF4();

  *a2 = v5;
  return result;
}

uint64_t sub_1B89B7708@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B8A23F24();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B89B7734(uint64_t a1)
{
  v2 = sub_1B89B7834(&qword_1EBA918A8);
  v3 = sub_1B89B7834(&unk_1EBA918B0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B89B7834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B89B7878()
{
  v1 = *v0;
  v2 = sub_1B8A23F24();
  v3 = MEMORY[0x1B8CC3E90](v2);

  return v3;
}

uint64_t sub_1B89B78B4()
{
  v1 = *v0;
  sub_1B8A23F24();
  sub_1B8A23F94();
}

uint64_t sub_1B89B7908()
{
  v1 = *v0;
  sub_1B8A23F24();
  sub_1B8A24A14();
  sub_1B8A23F94();
  v2 = sub_1B8A24A34();

  return v2;
}

uint64_t sub_1B89B797C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B8A23F24();
  v6 = v5;
  if (v4 == sub_1B8A23F24() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8A24954();
  }

  return v9 & 1;
}

uint64_t sub_1B89B7A44(uint64_t a1, int a2)
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

uint64_t sub_1B89B7A64(uint64_t result, int a2, int a3)
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

void sub_1B89B7AA0(uint64_t a1, unint64_t *a2)
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

id static ManagedRepresentation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B8A23EF4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1B89B7B68(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B8A237C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B89B7BD0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1B8A237A4();
  }

  v5 = v3;
  [v2 setData_];
}

uint64_t sub_1B89B7C48@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_1B8A238D4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B8A23904();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B89B7CEC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B89B7FFC(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B8A23904();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B8A238B4();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_1B89B7E18(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B8A23F24();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B89B7E7C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_1B8A23EF4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_1B89B7EEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedRepresentation();
  result = sub_1B8A24644();
  *a1 = result;
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

uint64_t sub_1B89B7FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89B806C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91268);
  __swift_project_value_buffer(v0, qword_1EBA91268);
  return sub_1B8A23BB4();
}

uint64_t sub_1B89B80E4()
{
  v0 = sub_1B8A23CD4();
  __swift_allocate_value_buffer(v0, qword_1EBA913B0);
  *__swift_project_value_buffer(v0, qword_1EBA913B0) = 5;
  v1 = *MEMORY[0x1E69E7F48];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1B89B8174@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  HIDWORD(v29) = a2;
  v30 = a1;
  v4 = sub_1B8A242C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8A23D24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1B8A24284();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = v13[5];
  *(a3 + v14) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  v15 = a3 + v13[7];
  *v15 = xmmword_1B8A26240;
  *(v15 + 16) = 1;
  v16 = v13[8];
  sub_1B89AB538(0, &qword_1EBA91140, 0x1E69E9610);
  sub_1B8A24274();
  sub_1B8A23D14();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v4);
  v17 = BYTE4(v29);
  v18 = v30;
  *(a3 + v16) = sub_1B8A242E4();
  sub_1B89ABEA8(v18, a3, type metadata accessor for CoreDataDataMapper.StoreType);
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = sub_1B8A23EF4();
  v21 = [v19 initWithSuiteName_];

  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = sub_1B8A23EF4();
  v23 = [v21 BOOLForKey_];

  if (v23)
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v24 = sub_1B8A23BC4();
    __swift_project_value_buffer(v24, qword_1EBA91268);
    v25 = sub_1B8A23BA4();
    v26 = sub_1B8A24244();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B89A7000, v25, v26, "Will use marketing container for Stickers API service", v27, 2u);
      MEMORY[0x1B8CC5170](v27, -1, -1);
    }

    result = sub_1B89C3B20(v18, type metadata accessor for CoreDataDataMapper.StoreType);
    *(a3 + v13[6]) = 0;
  }

  else
  {
LABEL_9:
    result = sub_1B89C3B20(v18, type metadata accessor for CoreDataDataMapper.StoreType);
    *(a3 + v13[6]) = v17 & 1;
  }

  return result;
}

uint64_t sub_1B89B8558@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_1B8A23694();
  v20 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8A23784();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = "/stickers\\.stickerdb/";
  v15 = *(v6 + 104);
  v15(v9, *MEMORY[0x1E6968F58], v5);
  v16 = *(v11 + 56);
  v16(v4, 1, 1, v10);
  sub_1B8A23774();
  v19 = "/private/var/mobile/Library";
  v15(v9, *MEMORY[0x1E6968F68], v20);
  (*(v11 + 16))(v4, v14, v10);
  v16(v4, 0, 1, v10);
  sub_1B8A23774();
  return (*(v11 + 8))(v14, v10);
}

void sub_1B89B8804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a2;
  v86 = a1;
  v73 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v72 - v6;
  v7 = sub_1B8A23D44();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v72 - v11;
  v80 = sub_1B8A23CF4();
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StickerContainer(0);
  v15 = *(v14 - 8);
  v81 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B8A26250;
  v74 = v18 + 16;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v75 = (v19 + 16);
  v76 = dispatch_group_create();
  sub_1B89ABEA8(v3, v17, type metadata accessor for StickerContainer);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1B89ACED0(v17, v24 + v20);
  *(v24 + v21) = v18;
  v25 = (v24 + v22);
  v26 = v78;
  *v25 = v86;
  v25[1] = v26;
  *(v24 + v23) = v19;
  v27 = v76;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  aBlock[4] = sub_1B89C3C2C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor_150;
  _Block_copy(aBlock);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  v86 = v18;

  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  v29 = v82;
  sub_1B8A244C4();
  v30 = sub_1B8A23D74();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v28);
  v33 = *(v77 + *(v81 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8A23CD4();
  v35 = __swift_project_value_buffer(v34, qword_1EBA913B0);
  v36 = v83;
  MEMORY[0x1B8CC3C00](v29, v35);
  v37 = v85;
  v38 = *(v84 + 8);
  v38(v29, v85);
  sub_1B8A24264();
  v38(v36, v37);
  if (sub_1B8A23CE4())
  {
    sub_1B8A23D64();
    sub_1B89C353C();
    swift_allocError();
    v40 = 15;
LABEL_30:
    *v39 = v40;
    goto LABEL_31;
  }

  v41 = v75;
  swift_beginAccess();
  v42 = *v41;
  if (*v41)
  {
    v87 = *v41;
    v43 = v42;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (swift_dynamicCast())
    {
      if (v89 == 11)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v45 = sub_1B8A23BC4();
        __swift_project_value_buffer(v45, qword_1EBA91268);
        v46 = sub_1B8A23BA4();
        v47 = sub_1B8A24234();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1B89A7000, v46, v47, "Cannot perform a managed object model operation on an un-initialized persistence container.", v48, 2u);
          MEMORY[0x1B8CC5170](v48, -1, -1);
        }

        v49 = sub_1B8A24184();
        v50 = v72;
        (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        v52 = &unk_1B8A26518;
LABEL_20:
        sub_1B8A201C0(0, 0, v50, v52, v51);

        sub_1B89A8A78(v50, &qword_1EBA92200, &qword_1B8A28000);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v87 = v42;
    v53 = v42;
    if (swift_dynamicCast())
    {
      if ((v89 & 0xFE) == 2)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v54 = sub_1B8A23BC4();
        __swift_project_value_buffer(v54, qword_1EBA91268);
        v55 = sub_1B8A23BA4();
        v56 = sub_1B8A24244();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1B89A7000, v55, v56, "Potential corruption detected. Will perform in depth corruption check.", v57, 2u);
          MEMORY[0x1B8CC5170](v57, -1, -1);
        }

        v58 = sub_1B8A24184();
        v50 = v72;
        (*(*(v58 - 8) + 56))(v72, 1, 1, v58);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        v52 = &unk_1B8A26510;
        goto LABEL_20;
      }

LABEL_31:
      swift_willThrow();

      return;
    }

    v59 = sub_1B8A23664();
    v60 = sub_1B89EE954();

    if (v60)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v61 = sub_1B8A23BC4();
      __swift_project_value_buffer(v61, qword_1EBA91268);
      v62 = sub_1B8A23BA4();
      v63 = sub_1B8A24234();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1B89A7000, v62, v63, "Stickers database is corrupt. Will attempt remediation.", v64, 2u);
        MEMORY[0x1B8CC5170](v64, -1, -1);
      }

      v65 = [objc_opt_self() standardUserDefaults];
      v66 = sub_1B8A23EF4();
      [v65 setBool:1 forKey:v66];

      sub_1B89C353C();
      v67 = swift_allocError();
      *v68 = 17;
      sub_1B89C0990(v67);
    }
  }

  swift_beginAccess();
  v69 = *(v86 + 24);
  if (v69 >> 60 == 11)
  {
    sub_1B89C353C();
    swift_allocError();
    v40 = 16;
    goto LABEL_30;
  }

  v70 = *(v86 + 16);
  sub_1B89C3C44(v70, *(v86 + 24));

  v71 = v73;
  *v73 = v70;
  v71[1] = v69;
}

uint64_t sub_1B89B92B8(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v71 - v5;
  v6 = sub_1B8A23D44();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v10;
  v80 = sub_1B8A23CF4();
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = *(v13 - 8);
  v81 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 256;
  v73 = v17 + 16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v74 = (v18 + 16);
  v75 = dispatch_group_create();
  sub_1B89ABEA8(v2, v16, type metadata accessor for StickerContainer);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1B89ACED0(v16, v24 + v19);
  *(v24 + v20) = v17;
  v25 = (v24 + v21);
  v26 = v78;
  *v25 = v85;
  v25[1] = v26;
  *(v24 + v22) = v18;
  v28 = v75;
  v27 = v76;
  *(v24 + v23) = v75;
  aBlock[4] = sub_1B89C3A54;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor_62;
  _Block_copy(aBlock);
  v86 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  v85 = v17;

  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  sub_1B8A244C4();
  v30 = sub_1B8A23D74();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v29);
  v33 = *(v77 + *(v81 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8A23CD4();
  v35 = __swift_project_value_buffer(v34, qword_1EBA913B0);
  v36 = v82;
  MEMORY[0x1B8CC3C00](v27, v35);
  v37 = v84;
  v38 = *(v83 + 8);
  v38(v27, v84);
  sub_1B8A24264();
  v38(v36, v37);
  if (sub_1B8A23CE4())
  {
    sub_1B8A23D64();
    sub_1B89C353C();
    swift_allocError();
    v40 = 15;
LABEL_30:
    *v39 = v40;
    goto LABEL_31;
  }

  v41 = v74;
  swift_beginAccess();
  v42 = *v41;
  if (*v41)
  {
    v86 = *v41;
    v43 = v42;
    v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (swift_dynamicCast())
    {
      if (v88 == 11)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v45 = sub_1B8A23BC4();
        __swift_project_value_buffer(v45, qword_1EBA91268);
        v46 = sub_1B8A23BA4();
        v47 = sub_1B8A24234();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1B89A7000, v46, v47, "Cannot perform a managed object model operation on an un-initialized persistence container.", v48, 2u);
          MEMORY[0x1B8CC5170](v48, -1, -1);
        }

        v49 = sub_1B8A24184();
        v50 = v72;
        (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        v52 = &unk_1B8A264A8;
LABEL_20:
        sub_1B8A201C0(0, 0, v50, v52, v51);

        sub_1B89A8A78(v50, &qword_1EBA92200, &qword_1B8A28000);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v86 = v42;
    v53 = v42;
    if (swift_dynamicCast())
    {
      if ((v88 & 0xFE) == 2)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v54 = sub_1B8A23BC4();
        __swift_project_value_buffer(v54, qword_1EBA91268);
        v55 = sub_1B8A23BA4();
        v56 = sub_1B8A24244();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1B89A7000, v55, v56, "Potential corruption detected. Will perform in depth corruption check.", v57, 2u);
          MEMORY[0x1B8CC5170](v57, -1, -1);
        }

        v58 = sub_1B8A24184();
        v50 = v72;
        (*(*(v58 - 8) + 56))(v72, 1, 1, v58);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        v52 = &unk_1B8A264A0;
        goto LABEL_20;
      }

LABEL_31:
      swift_willThrow();
    }

    v59 = sub_1B8A23664();
    v60 = sub_1B89EE954();

    if (v60)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v61 = sub_1B8A23BC4();
      __swift_project_value_buffer(v61, qword_1EBA91268);
      v62 = sub_1B8A23BA4();
      v63 = sub_1B8A24234();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1B89A7000, v62, v63, "Stickers database is corrupt. Will attempt remediation.", v64, 2u);
        MEMORY[0x1B8CC5170](v64, -1, -1);
      }

      v65 = [objc_opt_self() standardUserDefaults];
      v66 = sub_1B8A23EF4();
      [v65 setBool:1 forKey:v66];

      sub_1B89C353C();
      v67 = swift_allocError();
      *v68 = 17;
      sub_1B89C0990(v67);
    }
  }

  swift_beginAccess();
  if (*(v85 + 17))
  {
    sub_1B89C353C();
    swift_allocError();
    v40 = 16;
    goto LABEL_30;
  }

  v70 = *(v85 + 16);

  return v70 & 1;
}

uint64_t sub_1B89B9D38(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v72 - v5;
  v6 = sub_1B8A23D44();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v72 - v10;
  v81 = sub_1B8A23CF4();
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = *(v13 - 8);
  v82 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v74 = (v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v75 = (v18 + 16);
  v76 = dispatch_group_create();
  sub_1B89ABEA8(v2, v16, type metadata accessor for StickerContainer);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1B89ACED0(v16, v24 + v19);
  *(v24 + v20) = v17;
  v25 = (v24 + v21);
  v26 = v79;
  *v25 = v84;
  v25[1] = v26;
  *(v24 + v22) = v18;
  v28 = v76;
  v27 = v77;
  *(v24 + v23) = v76;
  aBlock[4] = sub_1B89C3B00;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor_102;
  _Block_copy(aBlock);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  v84 = v17;

  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  sub_1B8A244C4();
  v30 = sub_1B8A23D74();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v29);
  v33 = *(v78 + *(v82 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B8A23CD4();
  v35 = __swift_project_value_buffer(v34, qword_1EBA913B0);
  v36 = v83;
  MEMORY[0x1B8CC3C00](v27, v35);
  v37 = v86;
  v38 = *(v85 + 8);
  v38(v27, v86);
  sub_1B8A24264();
  v38(v36, v37);
  if (sub_1B8A23CE4())
  {
    sub_1B8A23D64();
    sub_1B89C353C();
    swift_allocError();
    v40 = 15;
LABEL_5:
    *v39 = v40;
LABEL_6:
    swift_willThrow();
  }

  v42 = v75;
  swift_beginAccess();
  v43 = *v42;
  if (*v42)
  {
    v87 = *v42;
    v44 = v43;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (swift_dynamicCast())
    {
      if (v89 != 11)
      {
        goto LABEL_6;
      }

      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v46 = sub_1B8A23BC4();
      __swift_project_value_buffer(v46, qword_1EBA91268);
      v47 = sub_1B8A23BA4();
      v48 = sub_1B8A24234();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1B89A7000, v47, v48, "Cannot perform a managed object model operation on an un-initialized persistence container.", v49, 2u);
        MEMORY[0x1B8CC5170](v49, -1, -1);
      }

      v50 = sub_1B8A24184();
      v51 = v73;
      (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      v53 = &unk_1B8A264D0;
LABEL_22:
      sub_1B8A201C0(0, 0, v51, v53, v52);

      sub_1B89A8A78(v51, &qword_1EBA92200, &qword_1B8A28000);
      goto LABEL_6;
    }

    v87 = v43;
    v54 = v43;
    if (swift_dynamicCast())
    {
      if ((v89 & 0xFE) != 2)
      {
        goto LABEL_6;
      }

      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v55 = sub_1B8A23BC4();
      __swift_project_value_buffer(v55, qword_1EBA91268);
      v56 = sub_1B8A23BA4();
      v57 = sub_1B8A24244();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1B89A7000, v56, v57, "Potential corruption detected. Will perform in depth corruption check.", v58, 2u);
        MEMORY[0x1B8CC5170](v58, -1, -1);
      }

      v59 = sub_1B8A24184();
      v51 = v73;
      (*(*(v59 - 8) + 56))(v73, 1, 1, v59);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      v53 = &unk_1B8A264C8;
      goto LABEL_22;
    }

    v60 = sub_1B8A23664();
    v61 = sub_1B89EE954();

    if (v61)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v62 = sub_1B8A23BC4();
      __swift_project_value_buffer(v62, qword_1EBA91268);
      v63 = sub_1B8A23BA4();
      v64 = sub_1B8A24234();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1B89A7000, v63, v64, "Stickers database is corrupt. Will attempt remediation.", v65, 2u);
        MEMORY[0x1B8CC5170](v65, -1, -1);
      }

      v66 = [objc_opt_self() standardUserDefaults];
      v67 = sub_1B8A23EF4();
      [v66 setBool:1 forKey:v67];

      sub_1B89C353C();
      v68 = swift_allocError();
      *v69 = 17;
      sub_1B89C0990(v68);
    }
  }

  v70 = v74;
  swift_beginAccess();
  if (!*v70)
  {
    sub_1B89C353C();
    swift_allocError();
    v40 = 16;
    goto LABEL_5;
  }

  v71 = *v70;

  return v71;
}

void sub_1B89BA7B8(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v72 - v5;
  v6 = sub_1B8A23D44();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v72 - v10;
  v81 = sub_1B8A23CF4();
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerContainer(0);
  v14 = *(v13 - 8);
  v82 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  v74 = (v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v75 = (v18 + 16);
  v76 = dispatch_group_create();
  sub_1B89ABEA8(v2, v16, type metadata accessor for StickerContainer);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v24 + v19;
  v26 = v18;
  v27 = v77;
  sub_1B89ACED0(v16, v25);
  *(v24 + v20) = v17;
  v28 = (v24 + v21);
  v29 = v79;
  *v28 = v84;
  v28[1] = v29;
  *(v24 + v22) = v26;
  v30 = v76;
  *(v24 + v23) = v76;
  aBlock[4] = sub_1B89C3AB8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89AEDDC;
  aBlock[3] = &block_descriptor_82;
  _Block_copy(aBlock);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B89ADC34(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  v84 = v17;

  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B89ADBD0();
  sub_1B8A244C4();
  v32 = sub_1B8A23D74();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1B8A23D54();

  dispatch_group_enter(v31);
  v35 = *(v78 + *(v82 + 40));
  sub_1B8A242D4();
  sub_1B8A23D34();
  if (qword_1EBA913A8 != -1)
  {
    swift_once();
  }

  v36 = sub_1B8A23CD4();
  v37 = __swift_project_value_buffer(v36, qword_1EBA913B0);
  v38 = v83;
  MEMORY[0x1B8CC3C00](v27, v37);
  v39 = v86;
  v40 = *(v85 + 8);
  v40(v27, v86);
  sub_1B8A24264();
  v40(v38, v39);
  if (sub_1B8A23CE4())
  {
    sub_1B8A23D64();
    sub_1B89C353C();
    swift_allocError();
    v42 = 15;
LABEL_30:
    *v41 = v42;
    goto LABEL_31;
  }

  v43 = v75;
  swift_beginAccess();
  v44 = *v43;
  if (*v43)
  {
    v87 = *v43;
    v45 = v44;
    v46 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (swift_dynamicCast())
    {
      if (v89 == 11)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v47 = sub_1B8A23BC4();
        __swift_project_value_buffer(v47, qword_1EBA91268);
        v48 = sub_1B8A23BA4();
        v49 = sub_1B8A24234();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1B89A7000, v48, v49, "Cannot perform a managed object model operation on an un-initialized persistence container.", v50, 2u);
          MEMORY[0x1B8CC5170](v50, -1, -1);
        }

        v51 = sub_1B8A24184();
        v52 = v73;
        (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        v54 = &unk_1B8A264C0;
LABEL_20:
        sub_1B8A201C0(0, 0, v52, v54, v53);

        sub_1B89A8A78(v52, &qword_1EBA92200, &qword_1B8A28000);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v87 = v44;
    v55 = v44;
    if (swift_dynamicCast())
    {
      if ((v89 & 0xFE) == 2)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v56 = sub_1B8A23BC4();
        __swift_project_value_buffer(v56, qword_1EBA91268);
        v57 = sub_1B8A23BA4();
        v58 = sub_1B8A24244();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1B89A7000, v57, v58, "Potential corruption detected. Will perform in depth corruption check.", v59, 2u);
          MEMORY[0x1B8CC5170](v59, -1, -1);
        }

        v60 = sub_1B8A24184();
        v52 = v73;
        (*(*(v60 - 8) + 56))(v73, 1, 1, v60);
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        v54 = &unk_1B8A264B8;
        goto LABEL_20;
      }

LABEL_31:
      swift_willThrow();

      return;
    }

    v61 = sub_1B8A23664();
    v62 = sub_1B89EE954();

    if (v62)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v63 = sub_1B8A23BC4();
      __swift_project_value_buffer(v63, qword_1EBA91268);
      v64 = sub_1B8A23BA4();
      v65 = sub_1B8A24234();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1B89A7000, v64, v65, "Stickers database is corrupt. Will attempt remediation.", v66, 2u);
        MEMORY[0x1B8CC5170](v66, -1, -1);
      }

      v67 = [objc_opt_self() standardUserDefaults];
      v68 = sub_1B8A23EF4();
      [v67 setBool:1 forKey:v68];

      sub_1B89C353C();
      v69 = swift_allocError();
      *v70 = 17;
      sub_1B89C0990(v69);
    }
  }

  v71 = v74;
  swift_beginAccess();
  if (*v71)
  {
    sub_1B89C353C();
    swift_allocError();
    v42 = 16;
    goto LABEL_30;
  }
}

void sub_1B89BB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A40, &qword_1B8A26520);
    sub_1B8A24374();

    swift_beginAccess();
    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    *(a2 + 16) = v26;
    sub_1B89C3C58(v24, v25);
  }

  dispatch_group_leave(a6);
}

void sub_1B89BB50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A30, &qword_1B8A264B0);
    sub_1B8A24374();

    swift_beginAccess();
    *(a2 + 16) = v24;
    *(a2 + 17) = 0;
  }

  dispatch_group_leave(a6);
}

void sub_1B89BB7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    type metadata accessor for Sticker(0);
    sub_1B8A24374();

    swift_beginAccess();
    v24 = *(a2 + 16);
    *(a2 + 16) = v25;
  }

  dispatch_group_leave(a6);
}

void sub_1B89BBAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = a1 + *(type metadata accessor for StickerContainer(0) + 28);
  v10 = *v9;
  if (*(v9 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8A23BC4();
    __swift_project_value_buffer(v11, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1B89C353C();
      swift_allocError();
      *v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not perform CoreData operation because the container wasn’t properly set up: %@", v14, 0xCu);
      sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }

    sub_1B89C353C();
    v18 = swift_allocError();
    *v19 = v10;
    swift_beginAccess();
    v20 = *(a5 + 16);
    *(a5 + 16) = v18;
  }

  else
  {
    v21 = *(v9 + 8);
    v22 = v10;

    v23 = [v22 newBackgroundContext];
    MEMORY[0x1EEE9AC00](v23);
    sub_1B8A24374();

    swift_beginAccess();
    *(a2 + 16) = 0;
  }

  dispatch_group_leave(a6);
}

uint64_t sub_1B89BBD78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B89BBE18;

  return sub_1B89C37F8();
}

uint64_t sub_1B89BBE18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B89BBF0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B89C3E20;

  return sub_1B89C37F8();
}

uint64_t sub_1B89BBFAC()
{
  v1 = *(sub_1B89BC2D0(3, 300) + 16);

  if (v1 > 2)
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8A23BC4();
    __swift_project_value_buffer(v12, qword_1EBA91268);
    v13 = sub_1B8A23BA4();
    v14 = sub_1B8A24234();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_1B89BC2D0(3, 300);
      v18 = sub_1B8A23884();
      v19 = MEMORY[0x1B8CC3F80](v17, v18);
      v21 = v20;

      v22 = sub_1B89A907C(v19, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B89A7000, v13, v14, "Have failed to recover the database multiple times. Will not attempt again right now. %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CC5170](v16, -1, -1);
      MEMORY[0x1B8CC5170](v15, -1, -1);
    }

    v11 = 0;
  }

  else
  {
    sub_1B89BC5E0(3, 300);
    sub_1B89BC76C();
    if (v0)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v2 = sub_1B8A23BC4();
      __swift_project_value_buffer(v2, qword_1EBA91268);
      v3 = v0;
      v4 = sub_1B8A23BA4();
      v5 = sub_1B8A24234();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = v0;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        _os_log_impl(&dword_1B89A7000, v4, v5, "Failed to remove shared datastore: %@", v6, 0xCu);
        sub_1B89A8A78(v7, &qword_1EBA919E0, &qword_1B8A262D0);
        MEMORY[0x1B8CC5170](v7, -1, -1);
        MEMORY[0x1B8CC5170](v6, -1, -1);
      }

      sub_1B89C353C();
      swift_allocError();
      *v10 = 12;
      swift_willThrow();
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

uint64_t sub_1B89BC2D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8A23884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_1B8A23EF4();
  v12 = [v10 arrayForKey_];

  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1B8A240F4();

  v14 = sub_1B89BF0D4(v13);

  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v14 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v18;
  }

  v17 = 0;
  v27 = (v4 + 8);
  v31 = (v4 + 32);
  v32 = v4 + 16;
  v18 = MEMORY[0x1E69E7CC0];
  v29 = v4;
  v30 = v3;
  v28 = v16;
  while (v17 < *(v14 + 16))
  {
    v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20 = *(v4 + 72);
    (*(v4 + 16))(v9, v14 + v19 + v20 * v17, v3);
    sub_1B8A23844();
    if (-v21 >= a2)
    {
      result = (*v27)(v9, v3);
    }

    else
    {
      v22 = *v31;
      (*v31)(v33, v9, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B8A03908(0, *(v18 + 16) + 1, 1);
        v18 = v34;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B8A03908(v24 > 1, v25 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + v19 + v25 * v20;
      v3 = v30;
      result = (v22)(v26, v33, v30);
      v16 = v28;
      v4 = v29;
    }

    if (v16 == ++v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1B89BC5E0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1B89BC2D0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92050, ".p");
  v5 = *(sub_1B8A23884() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  sub_1B8A23874();
  sub_1B89C0770(v8);
  v9 = sub_1B8A240E4();

  v10 = sub_1B8A23EF4();
  [v4 setObject:v9 forKey:v10];
}

uint64_t sub_1B89BC76C()
{
  v67[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A00, "Z}");
  v62 = *(v1 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A08, "\\}");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_1B8A23784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  result = sub_1B89B8558(v14);
  if (!v0)
  {
    v66 = v8;
    v61 = v4;
    v59 = v1;
    sub_1B8A23704();
    v20 = *(v10 + 8);
    v18 = v10 + 8;
    v19 = v20;
    v20(v14, v9);
    v21 = [objc_opt_self() defaultManager];
    sub_1B8A23744();
    v22 = sub_1B8A23EF4();

    v67[0] = 0;
    v23 = [v21 contentsOfDirectoryAtPath:v22 error:v67];

    v24 = v67[0];
    v25 = v9;
    if (v23)
    {
      v57 = v21;
      v58 = v16;
      v65 = v19;
      v56 = v18;
      v26 = sub_1B8A240F4();
      v27 = v24;

      v28 = v26;
      v29 = *(v26 + 16);
      if (v29)
      {
        v30 = 0;
        v62 += 8;
        v63 = "StickerContainer13ReindexMethod";
        v31 = v26 + 40;
        v53 = v29 - 1;
        v60 = MEMORY[0x1E69E7CC0];
        v32 = v59;
        v54 = v26 + 40;
        v55 = v25;
        v64 = v26;
        do
        {
          v33 = (v31 + 16 * v30);
          v34 = v30;
          v35 = v61;
          while (1)
          {
            if (v34 >= *(v28 + 16))
            {
              __break(1u);
            }

            v38 = *(v33 - 1);
            v37 = *v33;

            sub_1B8A23A94();
            v39 = v66;
            sub_1B8A23AA4();
            (*v62)(v35, v32);
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A10, &qword_1B8A26438);
            if ((*(*(v40 - 8) + 48))(v39, 1, v40) != 1)
            {
              break;
            }

            v35 = v61;
            ++v34;
            sub_1B89A8A78(v66, &qword_1EBA91A08, "\\}");
            v33 += 2;
            v28 = v64;
            v36 = v65;
            if (v29 == v34)
            {
              v25 = v55;
              goto LABEL_19;
            }
          }

          sub_1B89A8A78(v66, &qword_1EBA91A08, "\\}");
          v41 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67[0] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B8A038E8(0, v41[2] + 1, 1);
            v32 = v59;
            v41 = v67[0];
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            sub_1B8A038E8((v43 > 1), v44 + 1, 1);
            v32 = v59;
            v41 = v67[0];
          }

          v30 = v34 + 1;
          v41[2] = v44 + 1;
          v60 = v41;
          v45 = &v41[2 * v44];
          v45[4] = v38;
          v45[5] = v37;
          v31 = v54;
          v25 = v55;
          v28 = v64;
          v36 = v65;
        }

        while (v53 != v34);
      }

      else
      {
        v60 = MEMORY[0x1E69E7CC0];
        v36 = v65;
      }

LABEL_19:
      v48 = v25;

      MEMORY[0x1EEE9AC00](v49);
      v51 = v57;
      v50 = v58;
      *(&v53 - 2) = v57;
      *(&v53 - 1) = v50;
      sub_1B89BD144(sub_1B89C3624, (&v53 - 4), v60);

      result = v36(v50, v48);
    }

    else
    {
      v46 = v16;
      v47 = v67[0];
      sub_1B8A23674();

      swift_willThrow();
      result = v19(v46, v9);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B89BCD9C(uint64_t *a1, void *a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B8A23784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = a1[1];
  v35 = *a1;
  sub_1B8A236F4();
  v14 = sub_1B8A236E4();
  v36 = *(v7 + 8);
  v36(v12, v6);
  v38[0] = 0;
  v15 = [a2 removeItemAtURL:v14 error:v38];

  if (v15)
  {
    v16 = qword_1EBA91260;
    v17 = v38[0];
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8A23BC4();
    __swift_project_value_buffer(v18, qword_1EBA91268);
    v19 = v37;
    (*(v7 + 16))(v37, a3, v6);

    v20 = sub_1B8A23BA4();
    v21 = sub_1B8A24244();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v19;
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v23 = 136315138;
      sub_1B8A236F4();
      sub_1B89ADC34(&qword_1EBA91468, MEMORY[0x1E6968FB0]);
      v24 = sub_1B8A24934();
      v26 = v25;
      v27 = v12;
      v28 = v36;
      v36(v27, v6);
      v28(v22, v6);
      v29 = sub_1B89A907C(v24, v26, v38);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1B89A7000, v20, v21, "Removed %s", v23, 0xCu);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1B8CC5170](v30, -1, -1);
      MEMORY[0x1B8CC5170](v23, -1, -1);
    }

    else
    {

      v36(v19, v6);
    }
  }

  else
  {
    v31 = v38[0];
    sub_1B8A23674();

    swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B89BD144(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B89BD1D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = v41 - v9;
  v10 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B8A23784();
  v42 = *(*(v14 - 8) + 56);
  v42(v13, 1, 2, v14);
  v15 = sub_1B89F437C(a1, v13);
  sub_1B89C3B20(v13, type metadata accessor for CoreDataDataMapper.StoreType);
  if ((v15 & 1) == 0 || (a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v44 = a2;
  sub_1B89BD9E8(3, 300);
  sub_1B89C0E14();
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_1B8A23EF4();
  v18 = [v16 BOOLForKey_];

  if (!v18)
  {
    LOBYTE(a2) = v44;
LABEL_10:
    v23 = sub_1B89C1478();
    goto LABEL_11;
  }

  v41[3] = v3;
  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v19 = sub_1B8A23BC4();
  __swift_project_value_buffer(v19, qword_1EBA91268);
  v20 = sub_1B8A23BA4();
  v21 = sub_1B8A24244();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B89A7000, v20, v21, "Stickers have been marked as corrupt. Will attempt to reset.", v22, 2u);
    MEMORY[0x1B8CC5170](v22, -1, -1);
  }

  sub_1B89BC76C();
  LOBYTE(a2) = v44;
  sub_1B89C12D8();
  sub_1B89BDAE8(3, 300);
  v27 = sub_1B8A23BA4();
  v28 = sub_1B8A24244();
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1B89A7000, v27, v28, "Stickers were successfully reset.", v30, 2u);
    MEMORY[0x1B8CC5170](v30, -1, -1);
  }

  v23 = sub_1B89C1478();
LABEL_11:
  v24 = v23;
  v25 = a2;
  v26 = sub_1B89C1824(a1, v23, a2 & 1);
  sub_1B89BDE68(v26, 1);
  if (v25)
  {
    sub_1B89C2334(v26);
  }

  v45 = MEMORY[0x1E69E7CC0];
  v42(v13, 1, 2, v14);
  v31 = sub_1B89F437C(a1, v13);
  sub_1B89C3B20(v13, type metadata accessor for CoreDataDataMapper.StoreType);
  if (v31 & 1) != 0 && (v25)
  {
    v32 = [v26 persistentStoreCoordinator];
    v33 = [v26 persistentStoreDescriptions];
    sub_1B89AB538(0, &unk_1EBA91118, 0x1E695D6C8);
    v34 = sub_1B8A240F4();

    v35 = v32;
    sub_1B89C2620(v34, v35, &v45);
  }

  v36 = v43;
  sub_1B8A24164();
  v37 = sub_1B8A24184();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  sub_1B8A201C0(0, 0, v36, &unk_1B8A264F0, v38);

  result = sub_1B89A8A78(v36, &qword_1EBA92200, &qword_1B8A28000);
  v40 = v45;
  *a3 = v26;
  *(a3 + 8) = v40;
  *(a3 + 16) = 0;
  return result;
}

void sub_1B89BD9E8(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1B89BC2D0(a1, a2) + 16);

  if (v4)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    sub_1B89BC2D0(a1, a2);
    sub_1B8A23884();
    v6 = sub_1B8A240E4();

    v7 = sub_1B8A23EF4();
    [v5 setObject:v6 forKey:v7];
  }
}

void sub_1B89BDAE8(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1B89BC2D0(a1, a2) + 16);

  v5 = [objc_opt_self() standardUserDefaults];
  if (v4 < 2)
  {
    v10 = sub_1B8A23EF4();
    [v5 removeObjectForKey_];
  }

  else
  {
    v6 = sub_1B89BC2D0(a1, a2);
    v7 = *(sub_1B89BC2D0(a1, a2) + 16);

    sub_1B89E0398(v7 - 1, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A38, &qword_1B8A264F8);
    v8 = sub_1B8A24984();
    v9 = sub_1B8A23EF4();
    [v5 setObject:v8 forKey:v9];

    swift_unknownObjectRelease();
  }
}

void sub_1B89BDC58(void *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(type metadata accessor for StickerSpotlightDelegate()) initForStoreWithDescription:*a1 coordinator:a2];
  [v5 startSpotlightIndexing];
  v6 = v5;
  MEMORY[0x1B8CC3F50]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B8A24114();
  }

  sub_1B8A24134();
  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8A23BC4();
  __swift_project_value_buffer(v7, qword_1EBA91268);
  v8 = v6;
  v9 = v4;
  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24244();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    v14 = v8;
    v15 = v9;
    _os_log_impl(&dword_1B89A7000, v10, v11, "Made indexer %@ for store %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA919E0, &qword_1B8A262D0);
    swift_arrayDestroy();
    MEMORY[0x1B8CC5170](v13, -1, -1);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }
}

uint64_t sub_1B89BDE68(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  aBlock[4] = sub_1B89C3B18;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89BE454;
  aBlock[3] = &block_descriptor_136;
  v7 = _Block_copy(aBlock);

  [a1 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v7);
  swift_beginAccess();
  v8 = *v6;
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B8A23664();
    v11 = sub_1B89EE954();

    if (v11)
    {
      v41 = a2 - 1;
      if (a2 >= 1)
      {
        v12 = *(sub_1B89BC2D0(3, 300) + 16);

        if (v12 <= 2)
        {
          if (qword_1EBA91260 != -1)
          {
            swift_once();
          }

          v13 = sub_1B8A23BC4();
          __swift_project_value_buffer(v13, qword_1EBA91268);
          v14 = v8;
          v15 = sub_1B8A23BA4();
          v16 = sub_1B8A24234();

          if (os_log_type_enabled(v15, v16))
          {
            v39 = v16;
            v17 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v43 = v40;
            *v17 = 138412802;
            v18 = v8;
            v19 = _swift_stdlib_bridgeErrorToNSError();
            *(v17 + 4) = v19;
            *v38 = v19;
            *(v17 + 12) = 2048;
            *(v17 + 14) = a2;
            if (a2 == 1)
            {
              v20 = 1701669236;
            }

            else
            {
              v20 = 0x73656D6974;
            }

            *(v17 + 22) = 2080;
            if (a2 == 1)
            {
              v21 = 0xE400000000000000;
            }

            else
            {
              v21 = 0xE500000000000000;
            }

            v22 = sub_1B89A907C(v20, v21, &v43);

            *(v17 + 24) = v22;
            _os_log_impl(&dword_1B89A7000, v15, v39, "Could not load the container (%@). Will retry %ld more %s", v17, 0x20u);
            sub_1B89A8A78(v38, &qword_1EBA919E0, &qword_1B8A262D0);
            MEMORY[0x1B8CC5170](v38, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v40);
            MEMORY[0x1B8CC5170](v40, -1, -1);
            MEMORY[0x1B8CC5170](v17, -1, -1);
          }

          else
          {
          }

          sub_1B89BBFAC();
          if (!v2)
          {
            sub_1B89BDE68(a1, v41);
          }

          goto LABEL_25;
        }
      }

      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v32 = sub_1B8A23BC4();
      __swift_project_value_buffer(v32, qword_1EBA91268);
      v33 = v8;
      v25 = sub_1B8A23BA4();
      v26 = sub_1B8A24234();

      if (!os_log_type_enabled(v25, v26))
      {
LABEL_24:

        sub_1B89C353C();
        swift_allocError();
        *v36 = 11;
        swift_willThrow();
LABEL_25:
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v34 = v8;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v35;
      *v28 = v35;
      v31 = "Could not load container and out of retries: %@";
    }

    else
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v23 = sub_1B8A23BC4();
      __swift_project_value_buffer(v23, qword_1EBA91268);
      v24 = v8;
      v25 = sub_1B8A23BA4();
      v26 = sub_1B8A24234();

      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_24;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v8;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      v31 = "Could not load container: %@";
    }

    _os_log_impl(&dword_1B89A7000, v25, v26, v31, v27, 0xCu);
    sub_1B89A8A78(v28, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v28, -1, -1);
    MEMORY[0x1B8CC5170](v27, -1, -1);
    goto LABEL_24;
  }
}

void sub_1B89BE3F4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

void sub_1B89BE454(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_1B89BE4F0()
{
  result = [objc_allocWithZone(MEMORY[0x1E6996630]) init];
  qword_1EBA95EF0 = result;
  return result;
}

uint64_t sub_1B89BE524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B89BE544, 0, 0);
}

uint64_t sub_1B89BE544()
{
  if ([*(v0 + 144) isIndexingEnabled])
  {
    v1 = *(v0 + 144);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1B89BE884;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A50, &qword_1B8A26550);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1B89BF028;
    *(v0 + 104) = &block_descriptor_171;
    *(v0 + 112) = v2;
    [v1 deleteSpotlightIndexWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8A23BC4();
    __swift_project_value_buffer(v3, qword_1EBA91268);
    v4 = sub_1B8A23BA4();
    v5 = sub_1B8A24214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 152);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_1B89A7000, v4, v5, "Will initiate reindexing #%llu", v7, 0xCu);
      MEMORY[0x1B8CC5170](v7, -1, -1);
    }

    v8 = *(v0 + 144);

    [v8 stopSpotlightIndexing];
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24214();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 152);
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v11;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Will delete current index #%llu", v12, 0xCu);
      MEMORY[0x1B8CC5170](v12, -1, -1);
    }

    v13 = *(v0 + 144);

    [v13 startSpotlightIndexing];
    v14 = sub_1B8A23BA4();
    v15 = sub_1B8A24214();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 152);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&dword_1B89A7000, v14, v15, "Resumed indexing #%llu", v17, 0xCu);
      MEMORY[0x1B8CC5170](v17, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B89BE884()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B89BEC9C;
  }

  else
  {
    v3 = sub_1B89BE994;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B89BE994()
{
  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91268);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[19];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Did delete current index #%llu", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_1EBA91268);
  v6 = sub_1B8A23BA4();
  v7 = sub_1B8A24214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[19];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_1B89A7000, v6, v7, "Will initiate reindexing #%llu", v9, 0xCu);
    MEMORY[0x1B8CC5170](v9, -1, -1);
  }

  v10 = v0[18];

  [v10 stopSpotlightIndexing];
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[19];
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v13;
    _os_log_impl(&dword_1B89A7000, v11, v12, "Will delete current index #%llu", v14, 0xCu);
    MEMORY[0x1B8CC5170](v14, -1, -1);
  }

  v15 = v0[18];

  [v15 startSpotlightIndexing];
  v16 = sub_1B8A23BA4();
  v17 = sub_1B8A24214();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[19];
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v18;
    _os_log_impl(&dword_1B89A7000, v16, v17, "Resumed indexing #%llu", v19, 0xCu);
    MEMORY[0x1B8CC5170](v19, -1, -1);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B89BEC9C()
{
  v1 = v0[20];
  swift_willThrow();
  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_1B8A23BC4();
  __swift_project_value_buffer(v3, qword_1EBA91268);
  v4 = v2;
  v5 = sub_1B8A23BA4();
  v6 = sub_1B8A24234();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B89A7000, v5, v6, "Error while deleting spotlight item index: %@", v9, 0xCu);
    sub_1B89A8A78(v10, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v10, -1, -1);
    MEMORY[0x1B8CC5170](v9, -1, -1);
  }

  else
  {
  }

  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1EBA91268);
  v13 = sub_1B8A23BA4();
  v14 = sub_1B8A24214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[19];
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v15;
    _os_log_impl(&dword_1B89A7000, v13, v14, "Will initiate reindexing #%llu", v16, 0xCu);
    MEMORY[0x1B8CC5170](v16, -1, -1);
  }

  v17 = v0[18];

  [v17 stopSpotlightIndexing];
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24214();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[19];
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v20;
    _os_log_impl(&dword_1B89A7000, v18, v19, "Will delete current index #%llu", v21, 0xCu);
    MEMORY[0x1B8CC5170](v21, -1, -1);
  }

  v22 = v0[18];

  [v22 startSpotlightIndexing];
  v23 = sub_1B8A23BA4();
  v24 = sub_1B8A24214();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[19];
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v25;
    _os_log_impl(&dword_1B89A7000, v23, v24, "Resumed indexing #%llu", v26, 0xCu);
    MEMORY[0x1B8CC5170](v26, -1, -1);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B89BF028(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1B89BF0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A18, &unk_1B8A26450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1B8A23884();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v23 - v12;
  v13 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1B8A03908(0, v13, 0);
  v14 = v27;
  if (v13)
  {
    v15 = a1 + 32;
    v23 = v5;
    v24 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_1B89A9360(v15, v26);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v24)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v25;
      (*v16)(v25, v5, v6);
      v17(v11, v18, v6);
      v27 = v14;
      v19 = v11;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B8A03908(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v21 + 1;
      v17((v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21), v19, v6);
      v15 += 32;
      --v13;
      v11 = v19;
      v5 = v23;
      if (!v13)
      {
        return v14;
      }
    }

    (*v24)(v5, 1, 1, v6);
    sub_1B89A8A78(v5, &qword_1EBA91A18, &unk_1B8A26450);
    return 0;
  }

  return v14;
}

uint64_t sub_1B89BF398()
{
  v0 = type metadata accessor for StickerReindexer(0);
  __swift_allocate_value_buffer(v0, qword_1EBA91390);
  v1 = __swift_project_value_buffer(v0, qword_1EBA91390);
  return sub_1B89BF3E4(v1);
}

uint64_t sub_1B89BF3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B8A242C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8A23D24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1B8A24284();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1B8A23784();
  (*(*(v11 - 8) + 56))(a1, 1, 2, v11);
  v12 = type metadata accessor for StickerContainer(0);
  v13 = v12[5];
  *(a1 + v13) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  v14 = a1 + v12[7];
  *v14 = xmmword_1B8A26240;
  *(v14 + 16) = 1;
  v15 = v12[8];
  sub_1B89AB538(0, &qword_1EBA91140, 0x1E69E9610);
  sub_1B8A24274();
  sub_1B8A23D14();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
  *(a1 + v15) = sub_1B8A242E4();
  *(a1 + v12[6]) = 0;
  v16 = type metadata accessor for StickerReindexer(0);
  *(a1 + v16[5]) = 0;
  v17 = v16[6];
  *(a1 + v17) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  v18 = a1 + v16[7];
  return sub_1B8A23BB4();
}

uint64_t static StickerReindexer.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StickerReindexer(0);
  v3 = __swift_project_value_buffer(v2, qword_1EBA91390);
  swift_beginAccess();
  return sub_1B89ABEA8(v3, a1, type metadata accessor for StickerReindexer);
}

uint64_t static StickerReindexer.shared.setter(uint64_t a1)
{
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StickerReindexer(0);
  v3 = __swift_project_value_buffer(v2, qword_1EBA91390);
  swift_beginAccess();
  sub_1B89BF824(a1, v3);
  swift_endAccess();
  return sub_1B89C3B20(a1, type metadata accessor for StickerReindexer);
}

uint64_t sub_1B89BF824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerReindexer(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static StickerReindexer.shared.modify())()
{
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StickerReindexer(0);
  __swift_project_value_buffer(v0, qword_1EBA91390);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B89BF91C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StickerReindexer(0);
  v3 = __swift_project_value_buffer(v2, qword_1EBA91390);
  swift_beginAccess();
  return sub_1B89ABEA8(v3, a1, type metadata accessor for StickerReindexer);
}

uint64_t sub_1B89BF9BC(uint64_t a1)
{
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StickerReindexer(0);
  v3 = __swift_project_value_buffer(v2, qword_1EBA91390);
  swift_beginAccess();
  sub_1B89BF824(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1B89BFA50()
{
  v1 = *(v0 + *(type metadata accessor for StickerReindexer(0) + 24));
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B89C3DF4;
  *(v3 + 24) = v2;
  v7[4] = sub_1B89C3DFC;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B8A0B6DC;
  v7[3] = &block_descriptor_180;
  v4 = _Block_copy(v7);
  v5 = v1;

  CNRunWithLock();
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

int *sub_1B89BFBB0(uint64_t a1)
{
  result = type metadata accessor for StickerReindexer(0);
  v3 = result[5];
  if ((*(a1 + v3) & 1) == 0)
  {
    v4 = type metadata accessor for StickerContainer(0);
    v5 = v4[5];
    [*(a1 + v5) lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(a1, *(a1 + v4[6]), &v11);
    v6 = v12;
    v7 = a1 + v4[7];
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    *v7 = v11;
    *(v7 + 16) = v6;
    sub_1B89AF128(v8, v9, v10);
    result = [*(a1 + v5) unlock];
    *(a1 + v3) = 1;
  }

  return result;
}

Swift::Void __swiftcall StickerReindexer.reindexStickers(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = sub_1B8A23BC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StickerReindexer(0);
  (*(v5 + 16))(v8, v2 + *(v9 + 28), v4);

  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24244();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1B8A23904();
    v15 = MEMORY[0x1B8CC3F80](with._rawValue, v14);
    v17 = sub_1B89A907C(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B89A7000, v10, v11, "Will reindex: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CC5170](v13, -1, -1);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_1B89BFA50();
  sub_1B89C2E24();
}

uint64_t StickerReindexer.dataForManagedRepresentation(uri:)(uint64_t a1)
{
  v2 = sub_1B8A23BC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1B8A23784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89BFA50();
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_1B89B8804(sub_1B89C30F4, v9, &v12);

  return v12;
}

void sub_1B89C0184(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = [a1 persistentStoreCoordinator];
  if (!v6 || (v7 = v6, v8 = sub_1B8A236E4(), v9 = [v7 managedObjectIDForURIRepresentation_], v7, v8, !v9))
  {
    type metadata accessor for StickerReindexerError(0);
    sub_1B89ADC34(&qword_1EBA919E8, type metadata accessor for StickerReindexerError);
    swift_allocError();
    v21 = v20;
    v22 = sub_1B8A23784();
    (*(*(v22 - 8) + 16))(v21, a2, v22);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_9;
  }

  v26[0] = 0;
  v10 = [a1 existingObjectWithID:v9 error:v26];
  v11 = v26[0];
  if (!v10)
  {
    v24 = v26[0];
    sub_1B8A23674();

    swift_willThrow();
    goto LABEL_9;
  }

  v12 = v10;
  type metadata accessor for ManagedRepresentation();
  v13 = swift_dynamicCastClass();
  v14 = v11;
  if (!v13)
  {

    type metadata accessor for StickerReindexerError(0);
    sub_1B89ADC34(&qword_1EBA919E8, type metadata accessor for StickerReindexerError);
    swift_allocError();
    *v25 = v9;
    goto LABEL_8;
  }

  v15 = [v13 data];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1B8A237C4();
    v19 = v18;

    *a3 = v17;
    a3[1] = v19;
  }

  else
  {
    type metadata accessor for StickerReindexerError(0);
    sub_1B89ADC34(&qword_1EBA919E8, type metadata accessor for StickerReindexerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

LABEL_9:
  v23 = *MEMORY[0x1E69E9840];
}

unint64_t StickerReindexerError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1B8A23784();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StickerReindexerError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B89ABEA8(v1, v10, type metadata accessor for StickerReindexerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1B8A24634();

      strcpy(v20, "no object for ");
      HIBYTE(v20[1]) = -18;
      v13 = [v12 description];
      v14 = sub_1B8A23F24();
      v16 = v15;

      MEMORY[0x1B8CC3E20](v14, v16);

      return v20[0];
    }

    else
    {
      return 0xD000000000000069;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1B8A24634();

    v20[0] = 0xD000000000000011;
    v20[1] = 0x80000001B8A29E60;
    sub_1B89ADC34(&qword_1EBA91468, MEMORY[0x1E6968FB0]);
    v18 = sub_1B8A24934();
    MEMORY[0x1B8CC3E20](v18);

    v19 = v20[0];
    (*(v3 + 8))(v6, v2);
    return v19;
  }
}