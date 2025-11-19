uint64_t sub_26F37B878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
  swift_beginAccess();
  return sub_26F37CC58(v3 + v4, a2);
}

uint64_t sub_26F37B8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3970B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26F37B99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F3970B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26F37BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F3970B8();
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

uint64_t sub_26F37BB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F3970B8();
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

uint64_t sub_26F37BBE0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_26F37BC38()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

id sub_26F37BD30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ttsPlaybackRateDouble];
  *a2 = v4;
  return result;
}

uint64_t sub_26F37BD78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PersistedTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  return sub_26F38CEEC(v3 + v4, a2);
}

id sub_26F37BEDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sourceInput];
  *a2 = result;
  return result;
}

id sub_26F37BF84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetResult];
  *a2 = result;
  return result;
}

uint64_t sub_26F37BFD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = PersistedTranslation.selectedAlternativeIndex.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26F37C060()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26F37C0CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t AnnotatedResult.displayString.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 16) + 8))();
  if (!v5)
  {
    return (*(*(a2 + 8) + 8))(a1);
  }

  return result;
}

uint64_t FavoritesItem.translation.getter(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
    v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = 0;
  }

  if (a1 >> 62)
  {
    v2 = v1;
  }

  else
  {
    v2 = a1;
  }

  v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t FavoritesItem.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_26F397168();
    v3 = [a2 identifier];
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    sub_26F397168();
    v3 = [a2 & 0x3FFFFFFFFFFFFFFFLL identifier];
LABEL_5:
    v4 = v3;
    sub_26F397148();

    sub_26F397168();
  }

  return sub_26F397168();
}

uint64_t FavoritesItem.hashValue.getter(unint64_t a1)
{
  sub_26F3974F8();
  FavoritesItem.hash(into:)(v3, a1);
  return sub_26F397518();
}

uint64_t sub_26F37C328()
{
  v1 = *v0;
  sub_26F3974F8();
  FavoritesItem.hash(into:)(v3, v1);
  return sub_26F397518();
}

uint64_t sub_26F37C378()
{
  v1 = *v0;
  sub_26F3974F8();
  FavoritesItem.hash(into:)(v3, v1);
  return sub_26F397518();
}

uint64_t _s22TranslationPersistence13FavoritesItemO2eeoiySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62))
    {
      v3 = a2;
      v14 = [a1 identifier];
      v15 = sub_26F397148();
      v17 = v16;

      v18 = [v3 identifier];
      v19 = sub_26F397148();
      v21 = v20;

      if (v15 == v19 && v17 == v21)
      {
        goto LABEL_6;
      }

LABEL_12:
      v12 = sub_26F397488();
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if (a1 >> 62 != 1)
  {
    v12 = a2 == 0x8000000000000000;
    return v12 & 1;
  }

  if (a2 >> 62 != 1)
  {
    goto LABEL_14;
  }

  v3 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = [a1 & 0x3FFFFFFFFFFFFFFFLL identifier];
  v5 = sub_26F397148();
  v7 = v6;

  v8 = [v3 identifier];
  v9 = sub_26F397148();
  v11 = v10;

  if (v5 != v9 || v7 != v11)
  {
    goto LABEL_12;
  }

LABEL_6:
  v12 = 1;
LABEL_13:

  return v12 & 1;
}

unint64_t sub_26F37C550()
{
  result = qword_2806DB6E0;
  if (!qword_2806DB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB6E0);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_22TranslationPersistence13FavoritesItemO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_26F37C5CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_26F37C628(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_26F37C688(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t TranslationPersistenceFeatures.isEnabled.getter()
{
  v2[3] = &type metadata for TranslationPersistenceFeatures;
  v2[4] = sub_26F37C73C();
  v0 = sub_26F3970C8();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_26F37C73C()
{
  result = qword_281592CA0;
  if (!qword_281592CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281592CA0);
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

uint64_t TranslationPersistenceFeatures.hashValue.getter()
{
  sub_26F3974F8();
  MEMORY[0x27438DEB0](0);
  return sub_26F397518();
}

uint64_t sub_26F37C858()
{
  sub_26F3974F8();
  MEMORY[0x27438DEB0](0);
  return sub_26F397518();
}

uint64_t sub_26F37C8C4()
{
  sub_26F3974F8();
  MEMORY[0x27438DEB0](0);
  return sub_26F397518();
}

unint64_t sub_26F37C908()
{
  result = qword_2806DB6E8;
  if (!qword_2806DB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationPersistenceFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TranslationPersistenceFeatures(_WORD *result, int a2, int a3)
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

uint64_t sub_26F37CA74()
{
  v0 = sub_26F3970F8();
  __swift_allocate_value_buffer(v0, qword_281592EA0);
  __swift_project_value_buffer(v0, qword_281592EA0);
  return sub_26F3970E8();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26F37CB94(uint64_t a1, uint64_t *a2)
{
  sub_26F37CC58(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_26F37C0CC(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_26F37CC00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
  swift_beginAccess();
  return sub_26F37CC58(v1 + v3, a1);
}

uint64_t sub_26F37CC58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F37CCBC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_26F37C0CC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26F37CD88()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  return sub_26F397128();
}

void *AnySpeechResult.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F397528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for AnySpeechResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    v10 = type metadata accessor for StoredSpeechResult();
    v11 = sub_26F37DEB0(&qword_2806DB6F8, 255, type metadata accessor for StoredSpeechResult);
    __swift_allocate_boxed_opaque_existential_1(&v9);
    sub_26F37DEB0(&qword_2806DB700, 255, type metadata accessor for StoredSpeechResult);
    sub_26F397498();
    sub_26F37C0CC(&v9, v3 + OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value);
    v8.receiver = v3;
    v8.super_class = type metadata accessor for AnySpeechResult();
    v6 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
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

uint64_t sub_26F37D068(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F397548();
  v4 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
  swift_beginAccess();
  sub_26F37CC58(v2 + v4, v6);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_26F37D18C();
  sub_26F3974A8();
  sub_26F37D1E0(v6);
  return __swift_destroy_boxed_opaque_existential_1(v7);
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

unint64_t sub_26F37D18C()
{
  result = qword_2806DB708;
  if (!qword_2806DB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB708);
  }

  return result;
}

id AnySpeechResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_26F37D2E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AnySpeechResult());
  result = AnySpeechResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26F37D47C()
{
  result = sub_26F397138();
  qword_281592EC0 = result;
  return result;
}

uint64_t sub_26F37D4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F37DD3C(a1, v12);
  if (v12[3])
  {
    type metadata accessor for AnySpeechResult();
    result = swift_dynamicCast();
    if (result)
    {
      v4 = sub_26F396EF8();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      sub_26F396EE8();
      v12[0] = v11;
      sub_26F37DEB0(&qword_2806DB728, v7, type metadata accessor for AnySpeechResult);
      v8 = sub_26F396ED8();
      v10 = v9;
      *(a2 + 24) = MEMORY[0x277CC9318];

      *a2 = v8;
      *(a2 + 8) = v10;
      return result;
    }
  }

  else
  {
    result = sub_26F37DE50(v12, &qword_2806DB710, &unk_26F397FC0);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_26F37D648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F37DD3C(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v3 = sub_26F396EC8();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      sub_26F396EB8();
      *(a2 + 24) = type metadata accessor for AnySpeechResult();
      sub_26F37DEB0(&qword_2806DB718, v6, type metadata accessor for AnySpeechResult);
      sub_26F396EA8();

      sub_26F37DDFC(v11, v12);
      return;
    }
  }

  else
  {
    sub_26F37DE50(v13, &qword_2806DB710, &unk_26F397FC0);
  }

  if (qword_281592BD0 != -1)
  {
    swift_once();
  }

  v7 = sub_26F3970F8();
  __swift_project_value_buffer(v7, qword_281592EA0);
  v8 = sub_26F3970D8();
  v9 = sub_26F397218();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26F37A000, v8, v9, "No reversed data", v10, 2u);
    MEMORY[0x27438E430](v10, -1, -1);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

id sub_26F37D9B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_26F3972D8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_26F37DE50(v16, &qword_2806DB710, &unk_26F397FC0);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_26F397478();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_26F37DB9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_26F37DC10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26F37DC58(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26F37DD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB710, &unk_26F397FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x27438E430);
  }

  return result;
}

uint64_t sub_26F37DDFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26F37DE50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26F37DEB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26F37DEF8()
{
  result = qword_2806DB730;
  if (!qword_2806DB730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DB730);
  }

  return result;
}

TranslationPersistence::SpeechResultOrigin_optional __swiftcall SpeechResultOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26F397388();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SpeechResultOrigin.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6563696F76;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_26F37DFD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6563696F76;
  }

  else
  {
    v4 = 1954047348;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6563696F76;
  }

  else
  {
    v6 = 1954047348;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F397488();
  }

  return v9 & 1;
}

unint64_t sub_26F37E078()
{
  result = qword_2806DB738;
  if (!qword_2806DB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB738);
  }

  return result;
}

uint64_t sub_26F37E0CC()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37E144()
{
  *v0;
  sub_26F397168();
}

uint64_t sub_26F37E1A8()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37E21C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F397388();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26F37E27C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x6563696F76;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for SpeechResultOrigin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpeechResultOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F37E5A4()
{
  result = qword_2806DB740;
  if (!qword_2806DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB740);
  }

  return result;
}

uint64_t sub_26F37E5F8()
{
  sub_26F397168();
}

uint64_t sub_26F37E74C()
{
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37E864()
{
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37E9E0()
{
  v1 = *v0;
  sub_26F3974F8();
  MEMORY[0x27438DEB0](v1);
  return sub_26F397518();
}

uint64_t sub_26F37EA54()
{
  v1 = *v0;
  sub_26F3974F8();
  MEMORY[0x27438DEB0](v1);
  return sub_26F397518();
}

uint64_t sub_26F37EA98()
{
  v1 = 0x6563617053736168;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F43776F4C7369;
  }
}

uint64_t sub_26F37EB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F38144C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F37EB44(uint64_t a1)
{
  v2 = sub_26F382258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F37EB80(uint64_t a1)
{
  v2 = sub_26F382258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F37EBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB878, &qword_26F398848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F382258();
  sub_26F397558();
  v17 = 0;
  sub_26F397438();
  if (v4)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v16 = 1;
  sub_26F397438();
  v15 = 2;
  sub_26F397428();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_26F37ED88()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_26F37EDB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26F381574(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_26F37EDF4(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_26F37EBBC(a1, v2 | *v1, *(v1 + 1), *(v1 + 2));
}

uint64_t sub_26F37EE28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB838, &qword_26F398648);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F381EF8();
  sub_26F397558();
  v16 = 0;
  sub_26F397448();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB820, &qword_26F398640);
    sub_26F381F4C(&qword_2806DB840, sub_26F382018);
    sub_26F397458();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_26F37EFF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x65746C4174736562;
  }

  if (v3)
  {
    v5 = 0xEF65766974616E72;
  }

  else
  {
    v5 = 0x800000026F399690;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x65746C4174736562;
  }

  if (*a2)
  {
    v7 = 0x800000026F399690;
  }

  else
  {
    v7 = 0xEF65766974616E72;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F397488();
  }

  return v9 & 1;
}

uint64_t sub_26F37F0A8()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37F13C()
{
  *v0;
  sub_26F397168();
}

uint64_t sub_26F37F1BC()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F37F24C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F397388();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26F37F2AC(unint64_t *a1@<X8>)
{
  v2 = 0x800000026F399690;
  v3 = 0x65746C4174736562;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEF65766974616E72;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_26F37F2FC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x65746C4174736562;
  }

  *v0;
  return result;
}

uint64_t sub_26F37F348@<X0>(char *a1@<X8>)
{
  v2 = sub_26F397388();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26F37F3B8(uint64_t a1)
{
  v2 = sub_26F381EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F37F3F4(uint64_t a1)
{
  v2 = sub_26F381EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F37F440@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26F381758(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26F37F488(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB7E0, &qword_26F398440);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F381B5C();
  sub_26F397558();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB7C8, &qword_26F398438);
  sub_26F381C4C(&qword_2806DB7E8, sub_26F381CC4);
  sub_26F397458();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_26F37F614()
{
  sub_26F3974F8();
  sub_26F397168();
  return sub_26F397518();
}

uint64_t sub_26F37F688()
{
  sub_26F3974F8();
  sub_26F397168();
  return sub_26F397518();
}

uint64_t sub_26F37F6DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F397388();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26F37F76C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26F397388();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26F37F7D0(uint64_t a1)
{
  v2 = sub_26F381B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F37F80C(uint64_t a1)
{
  v2 = sub_26F381B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26F37F850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26F38195C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StoredSpeechResult.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredSpeechResult() + 24);
  v4 = sub_26F3970B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StoredSpeechResult()
{
  result = qword_281592C90;
  if (!qword_281592C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoredSpeechResult.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredSpeechResult() + 24);
  v4 = sub_26F3970B8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StoredSpeechResult.isLowConfidence.setter(char a1)
{
  result = type metadata accessor for StoredSpeechResult();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t StoredSpeechResult.sanitizedFormattedString.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredSpeechResult() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StoredSpeechResult.sanitizedFormattedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredSpeechResult() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredSpeechResult.formattedString.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredSpeechResult() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StoredSpeechResult.formattedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredSpeechResult() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredSpeechResult.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoredSpeechResult();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t StoredSpeechResult.origin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoredSpeechResult();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t StoredSpeechResult.alternatives.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StoredSpeechResult() + 44));
  if (v3)
  {
    v4 = &type metadata for StoredSpeechSausage;
    v5 = sub_26F37FDE0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

unint64_t sub_26F37FDE0()
{
  result = qword_2806DB748;
  if (!qword_2806DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB748);
  }

  return result;
}

uint64_t StoredSpeechResult.init(text:sanitizedText:locale:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = type metadata accessor for StoredSpeechResult();
  v15 = v14[8];
  *(a7 + v14[11]) = 0;
  v16 = (a7 + v15);
  *a7 = 1;
  *(a7 + 8) = 1000;
  v17 = v14[6];
  v18 = sub_26F3970B8();
  result = (*(*(v18 - 8) + 32))(a7 + v17, a5, v18);
  *(a7 + v14[7]) = 0;
  v20 = (a7 + v14[9]);
  *v20 = a1;
  v20[1] = a2;
  *v16 = a3;
  v16[1] = a4;
  *(a7 + v14[10]) = v13;
  return result;
}

Swift::Bool __swiftcall StoredSpeechResult.isEmpty()()
{
  v1 = type metadata accessor for StoredSpeechResult();
  v2 = (v0 + *(v1 + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v0 + *(v1 + 36));
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

uint64_t sub_26F37FFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F381B10();
  *a2 = result;
  return result;
}

void sub_26F37FFF0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E69467369;
  v5 = 0xEC00000073657669;
  v6 = 0x74616E7265746C61;
  if (v2 != 6)
  {
    v6 = 0x6E696769726FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0x800000026F3996F0;
  v8 = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0x657474616D726F66;
    v7 = 0xEF676E6972745364;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C61636F6CLL;
  if (v2 != 2)
  {
    v10 = 0x6E6F43776F4C7369;
    v9 = 0xEF65636E65646966;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000026F3996C0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_26F380114()
{
  v1 = *v0;
  v2 = 0x6C616E69467369;
  v3 = 0x74616E7265746C61;
  if (v1 != 6)
  {
    v3 = 0x6E696769726FLL;
  }

  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x657474616D726F66;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x6E6F43776F4C7369;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F380234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F381B10();
  *a1 = result;
  return result;
}

uint64_t sub_26F380268(uint64_t a1)
{
  v2 = sub_26F380D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F3802A4(uint64_t a1)
{
  v2 = sub_26F380D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoredSpeechResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_26F3970B8();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB750, &qword_26F398150);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for StoredSpeechResult();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v19);
  sub_26F380D5C();
  v42 = v13;
  sub_26F397538();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v21 = v8;
    v22 = v39;
    v23 = v40;
    v37 = v18;
    v24 = v41;
    LOBYTE(v45) = 0;
    v25 = sub_26F3973D8();
    v26 = v37;
    *v37 = v25 & 1;
    LOBYTE(v45) = 1;
    *(v26 + 1) = sub_26F3973E8();
    LOBYTE(v45) = 2;
    sub_26F381018(&qword_2806DB760, MEMORY[0x277CC9788]);
    sub_26F3973F8();
    (*(v24 + 32))(&v26[v14[6]], v21, v4);
    LOBYTE(v45) = 3;
    v26[v14[7]] = sub_26F3973D8() & 1;
    LOBYTE(v45) = 4;
    v27 = sub_26F397398();
    v28 = &v26[v14[8]];
    *v28 = v27;
    v28[1] = v29;
    v36[1] = v29;
    LOBYTE(v45) = 5;
    v30 = sub_26F3973C8();
    v31 = &v26[v14[9]];
    *v31 = v30;
    v31[1] = v32;
    v44 = 6;
    sub_26F380DB0();
    sub_26F3973B8();
    *&v26[v14[11]] = v45;
    v44 = 7;
    sub_26F380E04();
    sub_26F3973B8();
    (*(v22 + 8))(v42, v23);
    v34 = v37;
    v33 = v38;
    v37[v14[10]] = v45 & 1;
    sub_26F380E58(v34, v33);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_26F380EBC(v34);
  }
}

uint64_t StoredSpeechResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB778, &qword_26F398158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F380D5C();
  sub_26F397558();
  v12 = *v3;
  LOBYTE(v25) = 0;
  sub_26F397438();
  if (!v2)
  {
    v14 = *(v3 + 1);
    LOBYTE(v25) = 1;
    sub_26F397448();
    v15 = type metadata accessor for StoredSpeechResult();
    v16 = v15[6];
    LOBYTE(v25) = 2;
    sub_26F3970B8();
    sub_26F381018(&qword_2806DB780, MEMORY[0x277CC9788]);
    sub_26F397458();
    v17 = v3[v15[7]];
    LOBYTE(v25) = 3;
    sub_26F397438();
    v18 = &v3[v15[8]];
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v25) = 4;
    sub_26F397408();
    v21 = &v3[v15[9]];
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v25) = 5;
    sub_26F397428();
    v25 = *&v3[v15[11]];
    HIBYTE(v24) = 6;
    sub_26F380F18();
    sub_26F397418();
    LOBYTE(v25) = v3[v15[10]];
    HIBYTE(v24) = 7;
    sub_26F380F6C();
    sub_26F397458();
  }

  return (*(v6 + 8))(v10, v5);
}

BOOL sub_26F380B48(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v1 + *(a1 + 36));
    v3 = *v5;
    v4 = v5[1];
  }

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

uint64_t sub_26F380BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 44));
  if (v4)
  {
    v5 = &type metadata for StoredSpeechSausage;
    v6 = sub_26F37FDE0();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = v6;
}

uint64_t sub_26F380C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26F3970B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26F380CEC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_26F380D24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_26F380D5C()
{
  result = qword_2806DB758;
  if (!qword_2806DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB758);
  }

  return result;
}

unint64_t sub_26F380DB0()
{
  result = qword_2806DB768;
  if (!qword_2806DB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB768);
  }

  return result;
}

unint64_t sub_26F380E04()
{
  result = qword_2806DB770;
  if (!qword_2806DB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB770);
  }

  return result;
}

uint64_t sub_26F380E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredSpeechResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F380EBC(uint64_t a1)
{
  v2 = type metadata accessor for StoredSpeechResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F380F18()
{
  result = qword_2806DB788;
  if (!qword_2806DB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB788);
  }

  return result;
}

unint64_t sub_26F380F6C()
{
  result = qword_2806DB790;
  if (!qword_2806DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB790);
  }

  return result;
}

uint64_t sub_26F380FC0(uint64_t a1)
{
  result = sub_26F381018(&qword_2806DB798, type metadata accessor for StoredSpeechResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F381018(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26F381088()
{
  sub_26F3970B8();
  if (v0 <= 0x3F)
  {
    sub_26F381170(319, &qword_281592BC0);
    if (v1 <= 0x3F)
    {
      sub_26F381170(319, qword_281592BF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F381170(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26F3972B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StoredSpeechResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoredSpeechResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F381320()
{
  result = qword_2806DB7A0;
  if (!qword_2806DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7A0);
  }

  return result;
}

unint64_t sub_26F381378()
{
  result = qword_2806DB7A8;
  if (!qword_2806DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7A8);
  }

  return result;
}

unint64_t sub_26F3813D0()
{
  result = qword_2806DB7B0;
  if (!qword_2806DB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7B0);
  }

  return result;
}

unint64_t sub_26F381424(uint64_t a1)
{
  result = sub_26F380F18();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F38144C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F43776F4C7369 && a2 == 0xEF65636E65646966;
  if (v4 || (sub_26F397488() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563617053736168 && a2 == 0xED00007265746641 || (sub_26F397488() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26F397488();

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

uint64_t sub_26F381574(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB868, &qword_26F398840);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F382258();
  sub_26F397538();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v10 = sub_26F3973D8();
  v16 = 1;
  v11 = sub_26F3973D8();
  v15 = 2;
  sub_26F3973C8();
  (*(v4 + 8))(v8, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v10 & 1;
}

uint64_t sub_26F381758(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB810, &qword_26F398638);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_26F381EF8();
  sub_26F397538();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_26F3973E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB820, &qword_26F398640);
    v11[15] = 1;
    sub_26F381F4C(&qword_2806DB828, sub_26F381FC4);
    sub_26F3973F8();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_26F38195C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB7B8, &qword_26F398430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F381B5C();
  sub_26F397538();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB7C8, &qword_26F398438);
    sub_26F381C4C(&qword_2806DB7D0, sub_26F381BF8);
    sub_26F3973F8();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_26F381B10()
{
  v0 = sub_26F397388();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F381B5C()
{
  result = qword_2806DB7C0;
  if (!qword_2806DB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7C0);
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

unint64_t sub_26F381BF8()
{
  result = qword_2806DB7D8;
  if (!qword_2806DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7D8);
  }

  return result;
}

uint64_t sub_26F381C4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DB7C8, &qword_26F398438);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F381CC4()
{
  result = qword_2806DB7F0;
  if (!qword_2806DB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26F381D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26F381D7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F381DCC()
{
  result = qword_2806DB7F8;
  if (!qword_2806DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB7F8);
  }

  return result;
}

unint64_t sub_26F381E24()
{
  result = qword_2806DB800;
  if (!qword_2806DB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB800);
  }

  return result;
}

unint64_t sub_26F381E7C()
{
  result = qword_2806DB808;
  if (!qword_2806DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB808);
  }

  return result;
}

unint64_t sub_26F381ED0(uint64_t a1)
{
  result = sub_26F381CC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26F381EF8()
{
  result = qword_2806DB818;
  if (!qword_2806DB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB818);
  }

  return result;
}

uint64_t sub_26F381F4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DB820, &qword_26F398640);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F381FC4()
{
  result = qword_2806DB830;
  if (!qword_2806DB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB830);
  }

  return result;
}

unint64_t sub_26F382018()
{
  result = qword_2806DB848;
  if (!qword_2806DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB848);
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

uint64_t sub_26F382090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F3820D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26F38212C()
{
  result = qword_2806DB850;
  if (!qword_2806DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB850);
  }

  return result;
}

unint64_t sub_26F382184()
{
  result = qword_2806DB858;
  if (!qword_2806DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB858);
  }

  return result;
}

unint64_t sub_26F3821DC()
{
  result = qword_2806DB860;
  if (!qword_2806DB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB860);
  }

  return result;
}

unint64_t sub_26F382230(uint64_t a1)
{
  result = sub_26F382018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26F382258()
{
  result = qword_2806DB870;
  if (!qword_2806DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoredSpeechTokenAlternatives.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoredSpeechTokenAlternatives.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F382400()
{
  result = qword_2806DB880;
  if (!qword_2806DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB880);
  }

  return result;
}

unint64_t sub_26F382458()
{
  result = qword_2806DB888;
  if (!qword_2806DB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB888);
  }

  return result;
}

unint64_t sub_26F3824B0()
{
  result = qword_2806DB890;
  if (!qword_2806DB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB890);
  }

  return result;
}

uint64_t sub_26F38250C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000073657669;
  v5 = 0x6E696769726FLL;
  if (a1 == 6)
  {
    v5 = 0x74616E7265746C61;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0x800000026F3996F0;
  v7 = 0xD000000000000018;
  if (a1 != 4)
  {
    v7 = 0x657474616D726F66;
    v6 = 0xEF676E6972745364;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x656C61636F6CLL;
  if (a1 == 2)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x6E6F43776F4C7369;
    v9 = 0xEF65636E65646966;
  }

  v10 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000026F3996C0;
  }

  else
  {
    v10 = 0x6C616E69467369;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEC00000073657669;
        if (v11 != 0x74616E7265746C61)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x6E696769726FLL)
        {
LABEL_48:
          v14 = sub_26F397488();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000026F3996F0;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEF676E6972745364;
      if (v11 != 0x657474616D726F66)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C61636F6CLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEF65636E65646966;
      if (v11 != 0x6E6F43776F4C7369)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x800000026F3996C0;
    if (v11 != 0xD000000000000012)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6C616E69467369)
    {
      goto LABEL_48;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_26F3827B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C61636F6CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E696C66664F7369;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0x800000026F3997A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74616E7265746C61;
    }

    else
    {
      v4 = 0x656C61636F6CLL;
    }

    if (v3)
    {
      v5 = 0xEC00000073657669;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x6E696C66664F7369;
  v8 = 0x800000026F3997A0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (a2)
  {
    v2 = 0x74616E7265746C61;
    v6 = 0xEC00000073657669;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26F397488();
  }

  return v11 & 1;
}

uint64_t sub_26F38290C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x614D746567726174;
  v5 = 0xEB00000000686374;
  v6 = 0xE600000000000000;
  v7 = 0x736C6562616CLL;
  if (a1 != 4)
  {
    v7 = 0xD000000000000011;
    v6 = 0x800000026F399760;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6974696E69666564;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x614D656372756F73;
    v9 = 0xEB00000000686374;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x444965736E6573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x444965736E6573)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x6974696E69666564)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x656372756F73;
LABEL_29:
    v12 = 0xEB00000000686374;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x614D000000000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x746567726174;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x736C6562616CLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0x800000026F399760;
    if (v10 != 0xD000000000000011)
    {
LABEL_34:
      v14 = sub_26F397488();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_26F382AF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657474616D726F66;
    }

    else
    {
      v3 = 0x6E6F43776F4C7369;
    }

    if (v2)
    {
      v4 = 0xEF676E6972745364;
    }

    else
    {
      v4 = 0xEF65636E65646966;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000018;
    v4 = 0x800000026F3996F0;
  }

  else if (a1 == 3)
  {
    v3 = 0x654D7365736E6573;
    v4 = 0xEA00000000006174;
  }

  else
  {
    v3 = 0x617A696E616D6F72;
    v4 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657474616D726F66;
    }

    else
    {
      v9 = 0x6E6F43776F4C7369;
    }

    if (a2)
    {
      v8 = 0xEF676E6972745364;
    }

    else
    {
      v8 = 0xEF65636E65646966;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x654D7365736E6573;
    v6 = 0xEA00000000006174;
    if (a2 != 3)
    {
      v5 = 0x617A696E616D6F72;
      v6 = 0xEC0000006E6F6974;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000026F3996F0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_26F397488();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26F382CC4()
{
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F382DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26F387604(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[1];
      v8 = *(v4 + 1);
      v7 = *(v4 + 2);
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_26F387604((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for StoredSpeechTokenAlternatives;
      v15 = sub_26F3883A4();
      LOBYTE(v12) = v5;
      BYTE1(v12) = v6;
      *(&v12 + 1) = v8;
      v13 = v7;
      *(v2 + 16) = v9 + 1;
      sub_26F37C0CC(&v12, v2 + 40 * v9 + 32);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26F382EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26F387644(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_26F387644((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for StoredSpeechTokenBin;
      v12 = sub_26F387684();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      *(v2 + 16) = v7 + 1;
      sub_26F37C0CC(&v10, v2 + 40 * v7 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26F382FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26F3876D8(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v18 = v4[2];
      v19[0] = v5;
      *(v19 + 9) = *(v4 + 57);
      v6 = v4[1];
      v16 = *v4;
      v17 = v6;
      sub_26F387FDC(&v16, &v13);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26F3876D8((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      v14 = &type metadata for StoredTranslationSense;
      v15 = sub_26F3880F8();
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v19[0];
      v9[3] = v18;
      v9[4] = v10;
      *(v9 + 73) = *(v19 + 9);
      v11 = v17;
      v9[1] = v16;
      v9[2] = v11;
      *(v2 + 16) = v8 + 1;
      sub_26F37C0CC(&v13, v2 + 40 * v8 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26F383130(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26F387718(0, v1, 0);
    v2 = v21;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v18 = v4[2];
      v19 = v5;
      v20 = v4[4];
      v6 = v4[1];
      v16 = *v4;
      v17 = v6;
      sub_26F384140(&v16, &v13);
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26F387718((v7 > 1), v8 + 1, 1);
        v2 = v21;
      }

      v14 = &type metadata for StoredTranslationAlternative;
      v15 = sub_26F3880A4();
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v19;
      v9[3] = v18;
      v9[4] = v10;
      v9[5] = v20;
      v11 = v17;
      v9[1] = v16;
      v9[2] = v11;
      *(v2 + 16) = v8 + 1;
      sub_26F37C0CC(&v13, v2 + 40 * v8 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26F383274(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBA10, &unk_26F399190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F387F0C();
  sub_26F397558();
  v12 = *v3;
  v13 = v3[1];
  v27 = 0;
  sub_26F397428();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v26 = 1;
    sub_26F397428();
    v16 = v3[4];
    v17 = v3[5];
    v25 = 2;
    sub_26F397428();
    v18 = v3[6];
    v19 = v3[7];
    v24 = 3;
    sub_26F397428();
    v23 = v3[8];
    v22[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBA00, &qword_26F399188);
    sub_26F388044(&qword_2806DBA18, &qword_2806DBA00, &qword_26F399188);
    sub_26F397458();
    v20 = *(v3 + 72);
    v22[14] = 5;
    sub_26F397438();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_26F383508()
{
  *v0;
  *v0;
  *v0;
  sub_26F397168();
}

uint64_t sub_26F383614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F387E74();
  *a2 = result;
  return result;
}

void sub_26F383644(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x444965736E6573;
  v5 = 0x614D746567726174;
  v6 = 0xEB00000000686374;
  v7 = 0xE600000000000000;
  v8 = 0x736C6562616CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000026F399760;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x6974696E69666564;
  if (v2 != 1)
  {
    v10 = 0x614D656372756F73;
    v9 = 0xEB00000000686374;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_26F383718()
{
  v1 = *v0;
  v2 = 0x444965736E6573;
  v3 = 0x614D746567726174;
  v4 = 0x736C6562616CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6974696E69666564;
  if (v1 != 1)
  {
    v5 = 0x614D656372756F73;
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

uint64_t sub_26F3837E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F387E74();
  *a1 = result;
  return result;
}

uint64_t sub_26F38381C(uint64_t a1)
{
  v2 = sub_26F387F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F383858(uint64_t a1)
{
  v2 = sub_26F387F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F383894()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26F3838C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_26F3838F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_26F383924()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

__n128 sub_26F383964@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F3879D0(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t StoredTranslationAlternative.formattedString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StoredTranslationAlternative.formattedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StoredTranslationAlternative.sanitizedFormattedString.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StoredTranslationAlternative.sanitizedFormattedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t StoredTranslationAlternative.romanization.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t StoredTranslationAlternative.romanization.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t StoredTranslationAlternative.stableString.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t StoredTranslationAlternative.stableString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void __swiftcall StoredTranslationAlternative.init(text:romanization:lowConfidence:)(TranslationPersistence::StoredTranslationAlternative *__return_ptr retstr, Swift::String text, Swift::String_optional romanization, Swift::Bool lowConfidence)
{
  retstr->sanitizedFormattedString.value._countAndFlagsBits = 0;
  retstr->sanitizedFormattedString.value._object = 0;
  retstr->stableString.value._countAndFlagsBits = 0;
  retstr->stableString.value._object = 0;
  retstr->isLowConfidence = lowConfidence;
  retstr->formattedString = text;
  retstr->romanization = romanization;
  retstr->_sensesMeta._rawValue = MEMORY[0x277D84F90];
}

void __swiftcall StoredTranslationAlternative.init(text:romanization:lowConfidence:stableString:)(TranslationPersistence::StoredTranslationAlternative *__return_ptr retstr, Swift::String text, Swift::String_optional romanization, Swift::Bool lowConfidence, Swift::String_optional stableString)
{
  object = stableString.value._object;
  countAndFlagsBits = stableString.value._countAndFlagsBits;
  v8 = romanization.value._object;
  v9 = romanization.value._countAndFlagsBits;
  v10 = text._object;
  v11 = text._countAndFlagsBits;

  retstr->isLowConfidence = lowConfidence;
  retstr->formattedString._countAndFlagsBits = v11;
  retstr->formattedString._object = v10;
  retstr->sanitizedFormattedString.value._countAndFlagsBits = 0;
  retstr->sanitizedFormattedString.value._object = 0;
  retstr->romanization.value._countAndFlagsBits = v9;
  retstr->romanization.value._object = v8;
  v13 = MEMORY[0x277D84F90];
  retstr->stableString.value._object = object;
  retstr->_sensesMeta._rawValue = v13;
  retstr->stableString.value._countAndFlagsBits = countAndFlagsBits;
}

uint64_t StoredTranslationAlternative.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB898, &qword_26F398970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F384098();
  sub_26F397538();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v38[0] = 0;
    v12 = sub_26F3973D8();
    v38[0] = 1;
    v13 = sub_26F3973C8();
    v15 = v14;
    v31 = v13;
    v38[0] = 4;
    *(&v30 + 1) = sub_26F397398();
    v32 = v16;
    v38[0] = 2;
    v29 = sub_26F397398();
    *&v30 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB8A8, &qword_26F398978);
    v48 = 3;
    sub_26F3844C8(&qword_2806DB8B0, sub_26F3840EC);
    sub_26F3973F8();
    v28 = v12 & 1;
    (*(v6 + 8))(v10, v5);
    v27 = v49;
    LOBYTE(v33) = v12 & 1;
    v18 = v31;
    *(&v33 + 1) = v31;
    *&v34 = v15;
    v19 = v29;
    v20 = v30;
    *(&v34 + 1) = v29;
    v35 = v30;
    v21 = *(&v30 + 1);
    v22 = v32;
    v36 = v32;
    *&v37 = 0;
    *(&v37 + 1) = v49;
    v23 = v32;
    a2[2] = v30;
    a2[3] = v23;
    v24 = v34;
    *a2 = v33;
    a2[1] = v24;
    a2[4] = v37;
    sub_26F384140(&v33, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38[0] = v28;
    v39 = v18;
    v40 = v15;
    v41 = v19;
    v42 = v20;
    v43 = v21;
    v44 = v22;
    v45 = 0;
    v46 = 0;
    v47 = v27;
    return sub_26F384178(v38);
  }
}

unint64_t sub_26F384098()
{
  result = qword_2806DB8A0;
  if (!qword_2806DB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB8A0);
  }

  return result;
}

unint64_t sub_26F3840EC()
{
  result = qword_2806DB8B8;
  if (!qword_2806DB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB8B8);
  }

  return result;
}

uint64_t StoredTranslationAlternative.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB8C0, &qword_26F398980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v24 = v1[2];
  v25 = v10;
  v11 = v1[4];
  v20 = v1[3];
  v21 = v11;
  v12 = v1[5];
  v22 = v1[6];
  v23 = v12;
  v13 = v1[9];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F384098();
  sub_26F397558();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_26F397438();
  if (!v15)
  {
    v18 = v22;
    v17 = v23;
    LOBYTE(v27) = 1;
    sub_26F397428();
    v27 = v17;
    v28 = v18;
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB8C8, &qword_26F398988);
    sub_26F388044(&qword_2806DB8D0, &qword_2806DB8C8, &qword_26F398988);
    sub_26F397458();
    v27 = v20;
    v28 = v21;
    v29 = 2;
    sub_26F397458();
    v27 = v13;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB8A8, &qword_26F398978);
    sub_26F3844C8(&qword_2806DB8D8, sub_26F384540);
    sub_26F397458();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_26F3844C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DB8A8, &qword_26F398978);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F384540()
{
  result = qword_2806DB8E0;
  if (!qword_2806DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB8E0);
  }

  return result;
}

uint64_t sub_26F3845A0()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F3846AC()
{
  *v0;
  *v0;
  *v0;
  sub_26F397168();
}

uint64_t sub_26F3847A4()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F3848AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F387EC0();
  *a2 = result;
  return result;
}

void sub_26F3848DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65636E65646966;
  v4 = 0x6E6F43776F4C7369;
  v5 = 0x800000026F3996F0;
  v6 = 0xD000000000000018;
  v7 = 0xEA00000000006174;
  v8 = 0x654D7365736E6573;
  if (v2 != 3)
  {
    v8 = 0x617A696E616D6F72;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657474616D726F66;
    v3 = 0xEF676E6972745364;
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

unint64_t sub_26F3849A4()
{
  v1 = *v0;
  v2 = 0x6E6F43776F4C7369;
  v3 = 0xD000000000000018;
  v4 = 0x654D7365736E6573;
  if (v1 != 3)
  {
    v4 = 0x617A696E616D6F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657474616D726F66;
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

uint64_t sub_26F384A68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F387EC0();
  *a1 = result;
  return result;
}

uint64_t sub_26F384A9C(uint64_t a1)
{
  v2 = sub_26F384098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F384AD8(uint64_t a1)
{
  v2 = sub_26F384098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F384B1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_26F384B4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_26F384BAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StoredDisambiguableResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB8E8, &unk_26F398990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F384F64();
  sub_26F397538();
  if (!v2)
  {
    sub_26F384FB8();
    sub_26F3973F8();
    v13 = v29;
    v12 = v30;
    sub_26F38500C(0, &qword_2806DB900, 0x277CCAAC8);
    sub_26F38500C(0, &qword_2806DB908, 0x277CE1AE0);
    v14 = sub_26F397268();
    if (v14)
    {
      v15 = v14;
      (*(v6 + 8))(v10, v5);
      sub_26F37DDFC(v13, v12);
      *a2 = v15;
    }

    else
    {
      if (qword_281592BD0 != -1)
      {
        swift_once();
      }

      v17 = sub_26F3970F8();
      __swift_project_value_buffer(v17, qword_281592EA0);
      v18 = sub_26F3970D8();
      v19 = sub_26F397228();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = v20;
        v31 = swift_slowAlloc();
        *v20 = 138412290;
        sub_26F385054();
        v21 = swift_allocError();
        v22 = sub_26F396F38();
        HIDWORD(v27) = v19;
        v23 = v22;

        v24 = v28;
        *(v28 + 1) = v23;
        v25 = v31;
        *v31 = v23;
        v26 = v24;
        _os_log_impl(&dword_26F37A000, v18, BYTE4(v27), "Failed to decode container into _LTDisambiguableResult: %@", v24, 0xCu);
        sub_26F386770(v25);
        MEMORY[0x27438E430](v25, -1, -1);
        MEMORY[0x27438E430](v26, -1, -1);
      }

      sub_26F385054();
      swift_allocError();
      swift_willThrow();
      sub_26F37DDFC(v13, v12);
      (*(v6 + 8))(v10, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26F384F64()
{
  result = qword_2806DB8F0;
  if (!qword_2806DB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB8F0);
  }

  return result;
}

unint64_t sub_26F384FB8()
{
  result = qword_2806DB8F8;
  if (!qword_2806DB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB8F8);
  }

  return result;
}

uint64_t sub_26F38500C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_26F385054()
{
  result = qword_2806DB910;
  if (!qword_2806DB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB910);
  }

  return result;
}

uint64_t StoredDisambiguableResult.encode(to:)(void *a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB918, &qword_26F3989A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21[-1] - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F384F64();
  sub_26F397558();
  v11 = objc_opt_self();
  v21[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v21];
  v13 = v21[0];
  if (v12)
  {
    v14 = sub_26F396F98();
    v16 = v15;

    v21[0] = v14;
    v21[1] = v16;
    sub_26F3867D8();
    sub_26F397458();
    (*(v4 + 8))(v8, v3);
    result = sub_26F37DDFC(v14, v16);
  }

  else
  {
    v18 = v13;
    sub_26F396F48();

    swift_willThrow();
    result = (*(v4 + 8))(v8, v3);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26F3852B8()
{
  sub_26F3974F8();
  sub_26F397168();
  return sub_26F397518();
}

uint64_t sub_26F38531C()
{
  sub_26F3974F8();
  sub_26F397168();
  return sub_26F397518();
}

uint64_t sub_26F385368@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F397388();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26F3853E8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26F397388();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26F385440(uint64_t a1)
{
  v2 = sub_26F384F64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F38547C(uint64_t a1)
{
  v2 = sub_26F384F64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoredTranslationResult.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F3970B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoredTranslationResult.locale.setter(uint64_t a1)
{
  v3 = sub_26F3970B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t StoredTranslationResult.alternatives.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredTranslationResult() + 20));

  return sub_26F383130(v1);
}

uint64_t StoredTranslationResult.isOffline.setter(char a1)
{
  result = type metadata accessor for StoredTranslationResult();
  *(v1 + *(result + 24)) = a1;
  return result;
}

void *StoredTranslationResult.disambiguableResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredTranslationResult() + 28));
  v2 = v1;
  return v1;
}

uint64_t StoredTranslationResult.init(text:locale:isOffline:romanization:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for StoredTranslationResult();
  *(a7 + v13[7]) = 0;
  v14 = sub_26F3970B8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a3, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26F398960;
  *(v16 + 32) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 72) = a5;
  *(v16 + 80) = a6;
  *(v16 + 104) = MEMORY[0x277D84F90];
  result = (*(v15 + 8))(a3, v14);
  *(a7 + v13[5]) = v16;
  *(a7 + v13[6]) = a4;
  return result;
}

uint64_t StoredTranslationResult.init(text:locale:isOffline:romanization:stableString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for StoredTranslationResult();
  *(a9 + v15[7]) = 0;
  v16 = sub_26F3970B8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a9, a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26F398960;
  *(v18 + 32) = 0;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = a5;
  *(v18 + 80) = a6;
  v19 = MEMORY[0x277D84F90];
  *(v18 + 88) = a7;
  *(v18 + 96) = a8;
  *(v18 + 104) = v19;

  result = (*(v17 + 8))(a3, v16);
  *(a9 + v15[5]) = v18;
  *(a9 + v15[6]) = a4;
  return result;
}

void StoredTranslationResult.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_26F3970B8();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB930, &qword_26F3989B0);
  v24 = *(v28 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v28, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for StoredTranslationResult();
  v13 = *(*(v12 - 8) + 64);
  v29 = *(MEMORY[0x28223BE20](v12, v14) + 28);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[v29] = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F386878();
  v27 = v11;
  sub_26F397538();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    LOBYTE(v31) = 0;
    sub_26F386CDC(&qword_2806DB760, MEMORY[0x277CC9788]);
    sub_26F3973F8();
    (*(v19 + 32))(v16, v26, v4);
    LOBYTE(v31) = 2;
    v16[*(v12 + 24)] = sub_26F3973A8() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB940, &qword_26F3989B8);
    v30 = 1;
    sub_26F3868CC(&qword_2806DB948, sub_26F386944);
    sub_26F3973B8();
    v20 = v31;
    if (!v31)
    {
      v20 = MEMORY[0x277D84F90];
    }

    *&v16[*(v12 + 20)] = v20;
    v30 = 3;
    sub_26F386998();
    sub_26F3973B8();
    (*(v18 + 8))(v27, v28);
    v21 = v31;
    v22 = v29;

    *&v16[v22] = v21;
    sub_26F3869EC(v16, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26F386A50(v16);
  }
}

uint64_t StoredTranslationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB960, &qword_26F3989C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F386878();
  sub_26F397558();
  LOBYTE(v25) = 0;
  sub_26F3970B8();
  sub_26F386CDC(&qword_2806DB780, MEMORY[0x277CC9788]);
  sub_26F397458();
  if (!v2)
  {
    v12 = type metadata accessor for StoredTranslationResult();
    v13 = *(v3 + v12[6]);
    LOBYTE(v25) = 2;
    sub_26F397438();
    v14 = *(v3 + v12[5]);
    v25 = v14;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB940, &qword_26F3989B8);
    sub_26F3868CC(&qword_2806DB968, sub_26F386AAC);
    sub_26F397458();
    v15 = v12[7];
    v25 = *(v3 + v15);
    v16 = v25;
    v24 = 3;
    sub_26F386B00();
    v17 = v16;
    sub_26F397418();

    if (!*(v3 + v15) && !v14[2])
    {
      if (qword_281592BD0 != -1)
      {
        swift_once();
      }

      v18 = sub_26F3970F8();
      __swift_project_value_buffer(v18, qword_281592EA0);
      v19 = sub_26F3970D8();
      v20 = sub_26F397238();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_26F37A000, v19, v20, "No translated result of any kind to encode", v21, 2u);
        MEMORY[0x27438E430](v21, -1, -1);
      }
    }
  }

  return (*(v6 + 8))(v10, v5);
}

TranslationPersistence::StoredTranslationResult::CodingKeys_optional __swiftcall StoredTranslationResult.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_26F397388();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StoredTranslationResult.CodingKeys.stringValue.getter()
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x6E696C66664F7369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x74616E7265746C61;
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

uint64_t sub_26F386250()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

uint64_t sub_26F386320()
{
  *v0;
  *v0;
  *v0;
  sub_26F397168();
}

uint64_t sub_26F3863DC()
{
  v1 = *v0;
  sub_26F3974F8();
  sub_26F397168();

  return sub_26F397518();
}

void sub_26F3864B4(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C61636F6CLL;
  v4 = 0xE900000000000065;
  v5 = 0x6E696C66664F7369;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000019;
    v4 = 0x800000026F3997A0;
  }

  if (*v1)
  {
    v3 = 0x74616E7265746C61;
    v2 = 0xEC00000073657669;
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

unint64_t sub_26F386540()
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x6E696C66664F7369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x74616E7265746C61;
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

uint64_t sub_26F38660C(uint64_t a1)
{
  v2 = sub_26F386878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F386648(uint64_t a1)
{
  v2 = sub_26F386878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F386684@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F3970B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_26F386704(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

uint64_t sub_26F386770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB720, &unk_26F3995D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F3867D8()
{
  result = qword_2806DB920;
  if (!qword_2806DB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB920);
  }

  return result;
}

uint64_t type metadata accessor for StoredTranslationResult()
{
  result = qword_281592E08;
  if (!qword_281592E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F386878()
{
  result = qword_2806DB938;
  if (!qword_2806DB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB938);
  }

  return result;
}

uint64_t sub_26F3868CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DB940, &qword_26F3989B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F386944()
{
  result = qword_2806DB950;
  if (!qword_2806DB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB950);
  }

  return result;
}

unint64_t sub_26F386998()
{
  result = qword_2806DB958;
  if (!qword_2806DB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB958);
  }

  return result;
}

uint64_t sub_26F3869EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredTranslationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F386A50(uint64_t a1)
{
  v2 = type metadata accessor for StoredTranslationResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F386AAC()
{
  result = qword_2806DB970;
  if (!qword_2806DB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB970);
  }

  return result;
}

unint64_t sub_26F386B00()
{
  result = qword_2806DB978;
  if (!qword_2806DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB978);
  }

  return result;
}

unint64_t sub_26F386B54(uint64_t a1)
{
  result = sub_26F386AAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26F386B80()
{
  result = qword_2806DB980;
  if (!qword_2806DB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB980);
  }

  return result;
}

unint64_t sub_26F386BD8()
{
  result = qword_2806DB988;
  if (!qword_2806DB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB988);
  }

  return result;
}

unint64_t sub_26F386C30()
{
  result = qword_2806DB990;
  if (!qword_2806DB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB990);
  }

  return result;
}

uint64_t sub_26F386C84(uint64_t a1)
{
  result = sub_26F386CDC(&qword_2806DB998, type metadata accessor for StoredTranslationResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26F386CDC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26F386D40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F386D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F386DEC(uint64_t *a1, int a2)
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

uint64_t sub_26F386E34(uint64_t result, int a2, int a3)
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

void sub_26F386EA8()
{
  sub_26F3970B8();
  if (v0 <= 0x3F)
  {
    sub_26F386F94(319, &qword_281592BB8, &type metadata for StoredTranslationAlternative, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26F386F94(319, &qword_281592BE8, &type metadata for StoredDisambiguableResult, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F386F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StoredTranslationResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoredTranslationResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26F387178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_26F3871C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoredTranslationAlternative.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoredTranslationAlternative.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26F387378()
{
  result = qword_2806DB9A0;
  if (!qword_2806DB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9A0);
  }

  return result;
}

unint64_t sub_26F3873CC(uint64_t a1)
{
  result = sub_26F384540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26F3873F8()
{
  result = qword_2806DB9A8;
  if (!qword_2806DB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9A8);
  }

  return result;
}

unint64_t sub_26F387450()
{
  result = qword_2806DB9B0;
  if (!qword_2806DB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9B0);
  }

  return result;
}

unint64_t sub_26F3874A8()
{
  result = qword_2806DB9B8;
  if (!qword_2806DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9B8);
  }

  return result;
}

unint64_t sub_26F387500()
{
  result = qword_2806DB9C0;
  if (!qword_2806DB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9C0);
  }

  return result;
}

unint64_t sub_26F387558()
{
  result = qword_2806DB9C8;
  if (!qword_2806DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9C8);
  }

  return result;
}

unint64_t sub_26F3875B0()
{
  result = qword_2806DB9D0;
  if (!qword_2806DB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9D0);
  }

  return result;
}

void *sub_26F387604(void *a1, int64_t a2, char a3)
{
  result = sub_26F38777C(a1, a2, a3, *v3, &qword_2806DBA78, &qword_26F399300, &qword_2806DBA80, &qword_26F399308);
  *v3 = result;
  return result;
}

void *sub_26F387644(void *a1, int64_t a2, char a3)
{
  result = sub_26F38777C(a1, a2, a3, *v3, &qword_2806DB9E0, &qword_26F399170, &qword_2806DB9E8, &qword_26F399178);
  *v3 = result;
  return result;
}

unint64_t sub_26F387684()
{
  result = qword_2806DB9D8;
  if (!qword_2806DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9D8);
  }

  return result;
}

void *sub_26F3876D8(void *a1, int64_t a2, char a3)
{
  result = sub_26F38777C(a1, a2, a3, *v3, &qword_2806DBA48, &qword_26F3991B0, &qword_2806DBA50, &qword_26F3991B8);
  *v3 = result;
  return result;
}

void *sub_26F387718(void *a1, int64_t a2, char a3)
{
  result = sub_26F38777C(a1, a2, a3, *v3, &qword_2806DBA30, &qword_26F3991A0, &qword_2806DBA38, &qword_26F3991A8);
  *v3 = result;
  return result;
}

char *sub_26F387758(char *a1, int64_t a2, char a3)
{
  result = sub_26F3878C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26F38777C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_26F3878C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBA20, &qword_26F3994A0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_26F3879D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB9F0, &qword_26F399180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F387F0C();
  sub_26F397538();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41[0]) = 0;
  v13 = sub_26F3973C8();
  v43 = v14;
  LOBYTE(v41[0]) = 1;
  v15 = sub_26F3973C8();
  v36 = v16;
  v33 = v15;
  LOBYTE(v41[0]) = 2;
  v32 = sub_26F3973C8();
  v35 = v17;
  LOBYTE(v41[0]) = 3;
  v31 = sub_26F3973C8();
  v34 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBA00, &qword_26F399188);
  LOBYTE(v37) = 4;
  sub_26F387F60();
  sub_26F3973B8();
  v19 = v41[0];
  if (!v41[0])
  {
    v19 = MEMORY[0x277D84F90];
  }

  v30 = v19;
  LOBYTE(v41[0]) = 5;
  v20 = sub_26F3973A8();
  (*(v6 + 8))(v10, v5);
  v29 = v20 & 1;
  v21 = v43;
  *&v37 = v13;
  *(&v37 + 1) = v43;
  v22 = v33;
  v23 = v36;
  *&v38 = v33;
  *(&v38 + 1) = v36;
  v24 = v35;
  *&v39 = v32;
  *(&v39 + 1) = v35;
  v25 = v34;
  *v40 = v31;
  *&v40[8] = v34;
  *&v40[16] = v30;
  v40[24] = v29;
  sub_26F387FDC(&v37, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v13;
  v41[1] = v21;
  v41[2] = v22;
  v41[3] = v23;
  v41[4] = v32;
  v41[5] = v24;
  v41[6] = v31;
  v41[7] = v25;
  v41[8] = v30;
  v42 = v29;
  result = sub_26F388014(v41);
  v26 = *v40;
  a2[2] = v39;
  a2[3] = v26;
  *(a2 + 57) = *&v40[9];
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_26F387E74()
{
  v0 = sub_26F397388();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F387EC0()
{
  v0 = sub_26F397388();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F387F0C()
{
  result = qword_2806DB9F8;
  if (!qword_2806DB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DB9F8);
  }

  return result;
}

unint64_t sub_26F387F60()
{
  result = qword_2806DBA08;
  if (!qword_2806DBA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DBA00, &qword_26F399188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA08);
  }

  return result;
}

uint64_t sub_26F388044(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26F3880A4()
{
  result = qword_2806DBA28;
  if (!qword_2806DBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA28);
  }

  return result;
}

unint64_t sub_26F3880F8()
{
  result = qword_2806DBA40;
  if (!qword_2806DBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoredTranslationSense.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoredTranslationSense.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F3882A0()
{
  result = qword_2806DBA58;
  if (!qword_2806DBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA58);
  }

  return result;
}

unint64_t sub_26F3882F8()
{
  result = qword_2806DBA60;
  if (!qword_2806DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA60);
  }

  return result;
}

unint64_t sub_26F388350()
{
  result = qword_2806DBA68;
  if (!qword_2806DBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA68);
  }

  return result;
}

unint64_t sub_26F3883A4()
{
  result = qword_2806DBA70;
  if (!qword_2806DBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBA70);
  }

  return result;
}

void *AnyTranslationResult.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F397528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for AnyTranslationResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
    v10 = type metadata accessor for StoredTranslationResult();
    v11 = sub_26F389220(&qword_2806DBA88, 255, type metadata accessor for StoredTranslationResult);
    __swift_allocate_boxed_opaque_existential_1(&v9);
    sub_26F389220(&qword_2806DBA90, 255, type metadata accessor for StoredTranslationResult);
    sub_26F397498();
    sub_26F37C0CC(&v9, v3 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value);
    v8.receiver = v3;
    v8.super_class = type metadata accessor for AnyTranslationResult();
    v6 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_26F388628(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_26F397548();
  sub_26F37CC58(v1 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_26F3886E8();
  sub_26F3974A8();
  sub_26F38873C(v4);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_26F3886E8()
{
  result = qword_2806DBAA0;
  if (!qword_2806DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBAA0);
  }

  return result;
}

id AnyTranslationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_26F38883C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AnyTranslationResult());
  result = AnyTranslationResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26F38893C()
{
  result = sub_26F397138();
  qword_281592EB8 = result;
  return result;
}

double sub_26F3889A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F37DD3C(a1, v12);
  if (v12[3])
  {
    type metadata accessor for AnyTranslationResult();
    if (swift_dynamicCast())
    {
      v3 = sub_26F396EF8();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      sub_26F396EE8();
      v12[0] = v11;
      sub_26F389220(&qword_2806DBAB0, v6, type metadata accessor for AnyTranslationResult);
      v7 = sub_26F396ED8();
      v9 = v8;
      *(a2 + 24) = MEMORY[0x277CC9318];

      *a2 = v7;
      *(a2 + 8) = v9;
      return result;
    }
  }

  else
  {
    sub_26F37DE50(v12, &qword_2806DB710, &unk_26F397FC0);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_26F388D0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26F37DD3C(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v3 = sub_26F396EC8();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      sub_26F396EB8();
      *(a2 + 24) = type metadata accessor for AnyTranslationResult();
      sub_26F389220(&qword_2806DBAA8, v6, type metadata accessor for AnyTranslationResult);
      sub_26F396EA8();

      sub_26F37DDFC(v8, v9);
      return result;
    }
  }

  else
  {
    sub_26F37DE50(v10, &qword_2806DB710, &unk_26F397FC0);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_26F388FC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_26F3972D8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_26F37DE50(v16, &qword_2806DB710, &unk_26F397FC0);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_26F397478();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_26F3891B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26F389220(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26F389280(SEL *a1)
{
  v2 = [v1 *a1];
  sub_26F397148();

  return sub_26F397018();
}

BOOL sub_26F3892EC()
{
  v1 = v0;
  v2 = sub_26F396FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v15 - v11;
  v13 = [v1 favoriteDate];
  if (v13)
  {
    sub_26F396FB8();

    (*(v3 + 32))(v12, v7, v2);
    (*(v3 + 56))(v12, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v12, 1, 1, v2);
  }

  sub_26F37DE50(v12, &qword_2806DBAB8, &unk_26F399440);
  return v13 != 0;
}

uint64_t sub_26F389488()
{
  sub_26F389F14(v11);
  v0 = v12;
  v1 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v2 = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v2)
  {
    sub_26F3899F4(v11);
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    (*(*(*(v3 + 16) + 16) + 8))(v4);
    if (!v5)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      v9 = [v2 sourceText];
      v8 = sub_26F397148();

      return v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  sub_26F3899F4(v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v8 = AnnotatedResult.displayString.getter(v6, *(v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

void *sub_26F3895DC()
{
  result = [v0 targetResult];
  if (result)
  {

    sub_26F389F14(v13);
    v2 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v4 = *((*(v3 + 24))(v2, v3) + 16);

    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v4 >= 2)
    {
      sub_26F389F14(v13);
      v5 = v14;
      v6 = v15;
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      result = (*(v6 + 24))(v5, v6);
      if (!result[2])
      {
        __break(1u);
        return result;
      }

      sub_26F37CC58((result + 4), v10);

      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      v9 = *((*(v8 + 40))(v7, v8) + 16);

      __swift_destroy_boxed_opaque_existential_1(v10);
      __swift_destroy_boxed_opaque_existential_1(v13);
      if (v9)
      {
        return PersistedTranslation.selectedAlternativeIndex.getter();
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_26F38973C()
{
  v1 = v0;
  v2 = sub_26F38A6E0();
  v3 = [v2 isPassthrough];

  if (v3)
  {
    return sub_26F389488();
  }

  sub_26F389F14(v26);
  v5 = v27;
  v6 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  v7 = (*(v6 + 56))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v7)
  {
    sub_26F3899F4(v26);
    v9 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    (*(*(*(v8 + 16) + 16) + 8))(v9);
    if (!v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      v21 = [v7 targetText];
      v22 = sub_26F397148();

      return v22;
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  result = [v1 targetResult];
  if (result)
  {

    v11 = sub_26F3895DC();
    sub_26F389F14(v26);
    v12 = v27;
    v13 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    v14 = *((*(v13 + 24))(v12, v13) + 16);

    __swift_destroy_boxed_opaque_existential_1(v26);
    if (v11 >= v14)
    {
      return 0;
    }

    else
    {
      sub_26F389F14(v26);
      v15 = v27;
      v16 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v17 = (*(v16 + 24))(v15, v16);
      result = sub_26F3895DC();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v17 + 16))
      {
        sub_26F37CC58(v17 + 40 * result + 32, v23);

        v18 = v24;
        v19 = v25;
        __swift_project_boxed_opaque_existential_1Tm(v23, v24);
        v20 = TranslationAlternative.displayString.getter(v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v26);
        return v20;
      }

      __break(1u);
    }
  }

  return result;
}

void sub_26F3899F4(uint64_t *a1@<X8>)
{
  v3 = [v1 sourceInput];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value;
    v5 = v3;
    swift_beginAccess();
    sub_26F37CC58(v5 + v4, a1);
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v6 = sub_26F3970F8();
    __swift_project_value_buffer(v6, qword_281592EA0);
    v7 = v1;
    v8 = sub_26F3970D8();
    v9 = sub_26F397238();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      v12 = [v7 isFault];
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 7562585;
      }

      else
      {
        v14 = 28494;
      }

      if (v13)
      {
        v15 = 0xE200000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_26F38B99C(v14, v15, &v23);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_26F37A000, v8, v9, "Attempted to get speech result but it doesn't exist, returning a blank StoredSpeechResult. Is the Translation a fault? %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x27438E430](v11, -1, -1);
      MEMORY[0x27438E430](v10, -1, -1);
    }

    v17 = type metadata accessor for StoredSpeechResult();
    a1[3] = v17;
    a1[4] = sub_26F38CEA4(&qword_2806DB6F8, type metadata accessor for StoredSpeechResult);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v19 = boxed_opaque_existential_1 + v17[6];
    sub_26F397018();
    v20 = v17[8];
    *(boxed_opaque_existential_1 + v17[11]) = 0;
    v21 = (boxed_opaque_existential_1 + v20);
    *boxed_opaque_existential_1 = 1;
    boxed_opaque_existential_1[1] = 1000;
    *(boxed_opaque_existential_1 + v17[7]) = 0;
    v22 = (boxed_opaque_existential_1 + v17[9]);
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    *v21 = 0;
    v21[1] = 0;
    *(boxed_opaque_existential_1 + v17[10]) = 0;
  }
}

void (*sub_26F389C80(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  sub_26F3899F4(v3);
  return sub_26F389CF8;
}

uint64_t sub_26F389D10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  sub_26F37CC58(a1, v17);
  v7 = *a2;
  v8 = v18;
  v9 = v19;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10, v10);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  a5(v13, v7, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26F389E28(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  a2(v10, v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26F389F14(uint64_t *a1@<X8>)
{
  v3 = sub_26F3970B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 targetResult];
  if (v9)
  {
    v25 = v9;
    sub_26F37CC58(v9 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value, a1);
    v10 = v25;
  }

  else
  {
    if (qword_281592BD0 != -1)
    {
      swift_once();
    }

    v11 = sub_26F3970F8();
    __swift_project_value_buffer(v11, qword_281592EA0);
    v12 = v1;
    v13 = sub_26F3970D8();
    v14 = sub_26F397238();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      v17 = [v12 isFault];
      v18 = v17 == 0;
      if (v17)
      {
        v19 = 7562585;
      }

      else
      {
        v19 = 28494;
      }

      if (v18)
      {
        v20 = 0xE200000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }

      v21 = sub_26F38B99C(v19, v20, &v26);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_26F37A000, v13, v14, "Attempted to get translation result but it doesn't exist, returning a blank StoredTranslationResult. Is the Translation a fault? %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x27438E430](v16, -1, -1);
      MEMORY[0x27438E430](v15, -1, -1);
    }

    sub_26F397018();
    v22 = type metadata accessor for StoredTranslationResult();
    a1[3] = v22;
    a1[4] = sub_26F38CEA4(&qword_2806DBA88, type metadata accessor for StoredTranslationResult);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *(boxed_opaque_existential_1 + v22[7]) = 0;
    (*(v4 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB928, &qword_26F3989A8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26F398960;
    *(v24 + 32) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0xE000000000000000;
    *(v24 + 72) = 0;
    *(v24 + 80) = 0;
    *(v24 + 104) = MEMORY[0x277D84F90];
    (*(v4 + 8))(v8, v3);
    *(boxed_opaque_existential_1 + v22[5]) = v24;
    *(boxed_opaque_existential_1 + v22[6]) = 1;
  }
}

void (*sub_26F38A294(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  sub_26F389F14(v3);
  return sub_26F38A30C;
}

void sub_26F38A324(uint64_t *a1, char a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_26F37CC58(*a1, (v4 + 5));
    v6 = v4[8];
    v7 = v4[9];
    v8 = __swift_mutable_project_boxed_opaque_existential_1((v4 + 5), v6);
    v9 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v8, v8);
    v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    a3(v11, v5, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v4 + 5);
  }

  else
  {
    v13 = v4[3];
    v14 = v4[4];
    v15 = __swift_mutable_project_boxed_opaque_existential_1(*a1, v13);
    v16 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    a3(v18, v5, v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  free(v4);
}

uint64_t sub_26F38A510()
{
  sub_26F389F14(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v2 = (*(v1 + 24))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

void *sub_26F38A584()
{
  result = [v0 targetResult];
  if (result)
  {

    sub_26F389F14(v13);
    v2 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v4 = *((*(v3 + 24))(v2, v3) + 16);

    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v4 < 2)
    {
      return 0;
    }

    else
    {
      sub_26F389F14(v13);
      v5 = v14;
      v6 = v15;
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      result = (*(v6 + 24))(v5, v6);
      if (result[2])
      {
        sub_26F37CC58((result + 4), v10);

        v7 = v11;
        v8 = v12;
        __swift_project_boxed_opaque_existential_1Tm(v10, v11);
        v9 = *((*(v8 + 40))(v7, v8) + 16);

        __swift_destroy_boxed_opaque_existential_1(v10);
        __swift_destroy_boxed_opaque_existential_1(v13);
        return (v9 != 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_26F38A6E0()
{
  v1 = sub_26F3970B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = [v0 sourceIdentifier];
  sub_26F397148();

  sub_26F397018();
  v12 = [v0 targetIdentifier];
  sub_26F397148();

  sub_26F397018();
  v13 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v14 = sub_26F397068();
  v15 = sub_26F397068();
  v16 = [v13 initWithSourceLocale:v14 targetLocale:v15];

  v17 = *(v2 + 8);
  v17(v7, v1);
  v17(v10, v1);
  return v16;
}

void sub_26F38A8A4()
{
  v1 = sub_26F397098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v114 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAD0, &qword_26F399498);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v123 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v114 - v16;
  v129 = sub_26F3970B8();
  v18 = *(v129 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v129, v20);
  v115 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v114 = &v114 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v118 = &v114 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v117 = &v114 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v121 = &v114 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v128 = &v114 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v114 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v114 - v43;
  sub_26F397078();
  v130 = v0;
  v45 = [v0 sourceIdentifier];
  sub_26F397148();

  sub_26F397018();
  sub_26F3970A8();
  sub_26F397088();
  v46 = v17;
  v47 = *(v2 + 8);
  v124 = v2 + 8;
  v125 = v1;
  *&v120 = v47;
  v47(v9, v1);
  v48 = sub_26F397048();
  v49 = *(v48 - 8);
  v119 = *(v49 + 48);
  v50 = v119(v46, 1, v48);
  v116 = v49;
  if (v50 == 1)
  {
    v51 = *(v18 + 8);
    v52 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v41, v129);
    sub_26F37DE50(v46, &qword_2806DBAD0, &qword_26F399498);
  }

  else
  {
    v127 = sub_26F397038();
    v51 = *(v18 + 8);
    v52 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v41, v129);
    (*(v49 + 8))(v46, v48);
  }

  v53 = v48;
  v54 = sub_26F397058();
  v56 = v55;

  v57 = v129;
  v51(v44, v129);
  if (v56)
  {
    v58 = v54;
  }

  else
  {
    v58 = 0;
  }

  v59 = 0xE000000000000000;
  if (v56)
  {
    v59 = v56;
  }

  v126 = v58;
  v127 = v59;
  sub_26F397078();
  v60 = [v130 targetIdentifier];
  sub_26F397148();

  v61 = v121;
  sub_26F397018();
  v62 = v122;
  sub_26F3970A8();
  v63 = v123;
  sub_26F397088();
  (v120)(v62, v125);
  v64 = v51;
  if (v119(v63, 1, v53) == 1)
  {
    v51(v61, v57);
    sub_26F37DE50(v63, &qword_2806DBAD0, &qword_26F399498);
  }

  else
  {
    sub_26F397038();
    v51(v61, v57);
    (*(v116 + 8))(v63, v53);
  }

  v65 = v128;
  v66 = sub_26F397058();
  v68 = v67;

  v51(v65, v57);
  if (v68)
  {
    v69 = v66;
  }

  else
  {
    v69 = 0;
  }

  if (v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0xE000000000000000;
  }

  v71 = v130;
  v72 = sub_26F38A6E0();
  v73 = [v72 isPassthrough];

  if (v73)
  {

    v74 = sub_26F397138();

    [v71 setDisplayLocalePairText_];
LABEL_28:

    return;
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBA20, &qword_26F3994A0);
  v75 = swift_allocObject();
  v76 = v57;
  v128 = v52;
  v77 = v75;
  v120 = xmmword_26F399430;
  *(v75 + 16) = xmmword_26F399430;
  v78 = v75;
  v79 = v127;
  *(v78 + 32) = v126;
  v119 = (v78 + 32);
  v77[5] = v79;
  v77[6] = v69;
  v122 = v69;
  v77[7] = v70;

  v125 = v70;

  v80 = v117;
  sub_26F397078();
  v135 = sub_26F397028();
  v136 = v81;
  v133 = 45;
  v134 = 0xE100000000000000;
  v131 = 95;
  v132 = 0xE100000000000000;
  sub_26F38D4FC();
  v124 = sub_26F3972C8();
  v83 = v82;
  v64(v80, v76);

  v84 = [v71 sourceIdentifier];
  sub_26F397148();

  v85 = v118;
  sub_26F397018();
  v135 = sub_26F397028();
  v136 = v86;
  v133 = 45;
  v134 = 0xE100000000000000;
  v131 = 95;
  v132 = 0xE100000000000000;
  v87 = sub_26F3972C8();
  v89 = v88;
  v123 = v64;
  v64(v85, v76);

  if (v124 == v87 && v83 == v89)
  {

LABEL_24:

    goto LABEL_25;
  }

  v90 = sub_26F397488();

  if (v90)
  {
    goto LABEL_24;
  }

  v94 = v114;
  sub_26F397078();
  v135 = sub_26F397028();
  v136 = v95;
  v133 = 45;
  v134 = 0xE100000000000000;
  v131 = 95;
  v132 = 0xE100000000000000;
  v124 = sub_26F3972C8();
  v118 = v96;
  v97 = v94;
  v98 = v129;
  v99 = v123;
  v123(v97, v129);

  v100 = [v130 targetIdentifier];
  sub_26F397148();

  v101 = v115;
  sub_26F397018();
  v135 = sub_26F397028();
  v136 = v102;
  v133 = 45;
  v134 = 0xE100000000000000;
  v131 = 95;
  v132 = 0xE100000000000000;
  v103 = v118;
  v104 = sub_26F3972C8();
  v106 = v105;
  v99(v101, v98);

  if (v124 == v104 && v103 == v106)
  {

    v107 = v127;
    v108 = v122;
LABEL_33:
    v110 = swift_allocObject();
    *(v110 + 16) = v120;
    v112 = v125;
    v111 = v126;
    *(v110 + 32) = v108;
    *(v110 + 40) = v112;
    *(v110 + 48) = v111;
    *(v110 + 56) = v107;

    v77 = v110;
    goto LABEL_25;
  }

  v109 = sub_26F397488();

  v107 = v127;
  v108 = v122;
  if (v109)
  {
    goto LABEL_33;
  }

  v113 = v77[2];
  v135 = v119;
  v136 = v113;
  sub_26F38BF44(&v135);
LABEL_25:
  if (v77[2])
  {
    v91 = v77[5];
    v135 = v77[4];
    v136 = v91;
    swift_bridgeObjectRetain_n();
    MEMORY[0x27438DB20](2108704, 0xE300000000000000);

    if (v77[2] >= 2uLL)
    {
      v92 = v77[6];
      v93 = v77[7];

      MEMORY[0x27438DB20](v92, v93);

      v74 = sub_26F397138();

      [v130 setDisplayLocalePairText_];

      goto LABEL_28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26F38B4C8()
{
  sub_26F389F14(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v2 = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

BOOL sub_26F38B53C()
{
  sub_26F3899F4(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  (*(*(*(v1 + 16) + 16) + 8))(v0);
  v3 = v2;
  if (v2)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3 == 0;
}

uint64_t sub_26F38B5C0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAC8, &qword_26F399450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_26F38CEEC(a1, &v12 - v7);
  v9 = *a2;
  v10 = OBJC_IVAR___PersistedTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  sub_26F38CF5C(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_26F38B680@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PersistedTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  return sub_26F38CEEC(v1 + v3, a1);
}

uint64_t sub_26F38B6D8(uint64_t a1)
{
  v3 = OBJC_IVAR___PersistedTranslation_selfLoggingInvocationId;
  swift_beginAccess();
  sub_26F38CF5C(a1, v1 + v3);
  return swift_endAccess();
}

id PersistedTranslation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PersistedTranslation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersistedTranslation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PersistedTranslation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistedTranslation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F38B99C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26F38BA68(v11, 0, 0, 1, a1, a2);
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
    sub_26F38D550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26F38BA68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F38BB74(a5, a6);
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
    result = sub_26F397308();
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

uint64_t sub_26F38BB74(uint64_t a1, unint64_t a2)
{
  v4 = sub_26F38BBC0(a1, a2);
  sub_26F38BCF0(&unk_287F78360);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26F38BBC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F38BDDC(v5, 0);
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

  result = sub_26F397308();
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
        v10 = sub_26F397188();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F38BDDC(v10, 0);
        result = sub_26F3972E8();
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

uint64_t sub_26F38BCF0(uint64_t result)
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

  result = sub_26F38BE50(result, v12, 1, v3);
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

void *sub_26F38BDDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAE8, &qword_26F3994B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26F38BE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAE8, &qword_26F3994B0);
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

uint64_t sub_26F38BF44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26F397468();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26F3971D8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26F38C10C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26F38C03C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26F38C03C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_26F397488(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F38C10C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26F38C99C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26F38C6E8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26F397488();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26F397488();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26F38C9B0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26F38C9B0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26F38C6E8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26F38C99C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26F38C910(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_26F397488(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_26F38C6E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_26F397488() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_26F397488() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26F38C910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26F38C99C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26F38C9B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAE0, &qword_26F3994A8);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_26F38CAB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F3970B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  (*(*(a4 + 16) + 24))(a3);
  sub_26F397028();
  (*(v9 + 8))(v13, v8);
  v15 = sub_26F397138();

  [a2 setSourceIdentifier_];

  sub_26F37CC58(v22, v21);
  v16 = type metadata accessor for AnySpeechResult();
  v17 = objc_allocWithZone(v16);
  sub_26F37CC58(v21, v17 + OBJC_IVAR____TtC22TranslationPersistence15AnySpeechResult_value);
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v21);
  [a2 setSourceInput_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26F38CCAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F3970B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  (*(a4 + 16))(a3, a4);
  sub_26F397028();
  (*(v9 + 8))(v13, v8);
  v15 = sub_26F397138();

  [a2 setTargetIdentifier_];

  sub_26F37CC58(v22, v21);
  v16 = type metadata accessor for AnyTranslationResult();
  v17 = objc_allocWithZone(v16);
  sub_26F37CC58(v21, v17 + OBJC_IVAR____TtC22TranslationPersistence20AnyTranslationResult_value);
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v21);
  [a2 setTargetResult_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26F38CEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F38CEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAC8, &qword_26F399450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F38CF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAC8, &qword_26F399450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PersistedTranslation()
{
  result = qword_281592D70;
  if (!qword_281592D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F38D02C()
{
  sub_26F38D4A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26F38D4A4()
{
  if (!qword_281592E18)
  {
    sub_26F397008();
    v0 = sub_26F3972B8();
    if (!v1)
    {
      atomic_store(v0, &qword_281592E18);
    }
  }
}

unint64_t sub_26F38D4FC()
{
  result = qword_2806DBAD8;
  if (!qword_2806DBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DBAD8);
  }

  return result;
}

uint64_t sub_26F38D550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PersistedTranslation.selectedAlternativeIndex.getter()
{
  v1 = sub_26F397138();
  [v0 willAccessValueForKey_];

  v2 = sub_26F397138();
  v3 = [v0 primitiveValueForKey_];

  if (v3)
  {
    sub_26F3972D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_26F38D6E8(v10);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = v7;
LABEL_9:
  v5 = sub_26F397138();
  [v0 didAccessValueForKey_];

  return v4;
}

uint64_t sub_26F38D6E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DB710, &unk_26F397FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static PersistedTranslation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_26F397138();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_26F38D7C0@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_26F396FB8();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_26F396FD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_26F38D860(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  sub_26F38DF04(a1, &v17 - v11);
  v13 = *a2;
  v14 = sub_26F396FD8();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    v16 = sub_26F396FA8();
    (*(v15 + 8))(v12, v14);
  }

  [v13 *a5];
}

void PersistedTranslation.selectedAlternativeIndex.setter(uint64_t a1)
{
  v3 = sub_26F397138();
  [v1 willChangeValueForKey_];

  v4 = sub_26F3971E8();
  v5 = sub_26F397138();
  [v1 setPrimitiveValue:v4 forKey:v5];

  v6 = sub_26F397138();
  [v1 didChangeValueForKey_];

  v7 = [v1 interactedIndices];
  if (v7)
  {
    v8 = v7;
    v9 = sub_26F3971C8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26F38DD18(0, *(v9 + 16) + 1, 1, v9);
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_26F38DD18((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + 8 * v11 + 32) = a1;
    v12 = sub_26F3971B8();

    [v1 setInteractedIndices_];
  }

  else
  {

    [v1 setInteractedIndices_];
  }
}

void (*PersistedTranslation.selectedAlternativeIndex.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PersistedTranslation.selectedAlternativeIndex.getter();
  return sub_26F38DBC8;
}

void sub_26F38DBEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 interactedIndices];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26F3971C8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_26F38DC54(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_26F3971B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setInteractedIndices_];
}

void sub_26F38DCC4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_26F397148();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

char *sub_26F38DD18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF0, &qword_26F3994B8);
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
    v10 = MEMORY[0x277D84F90];
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

void keypath_set_4Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_26F397138();
  [v8 *a5];
}

uint64_t sub_26F38DF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAB8, &unk_26F399440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static PersistedTranslation.favoritedFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_26F397138();
  v2 = [v0 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v3 = sub_26F3971F8();
  [v2 setPredicate_];

  return v2;
}

id static PersistedTranslation.favoritedSortedByLocalePairAndCreationDateFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_26F397138();
  v2 = [v0 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v3 = sub_26F3971F8();
  [v2 setPredicate_];

  v4 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v5 = sub_26F397138();
  v6 = [v4 initWithKey:v5 ascending:1];

  v7 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v8 = sub_26F397138();
  v9 = [v7 initWithKey:v8 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26F3994C0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  sub_26F38500C(0, &qword_281592BA8, 0x277CCAC98);
  v11 = v6;
  v12 = v9;
  v13 = sub_26F3971B8();

  [v2 setSortDescriptors_];

  return v2;
}

id static PersistedTranslation.nilSourceOrTargetFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_26F397138();
  v2 = [v0 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v3 = sub_26F3971F8();
  [v2 setPredicate_];

  return v2;
}

id static PersistedTranslation.favoritedSortedByCreationDateFetchRequest(localePair:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_26F397138();
  v6 = [v4 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26F398960;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_26F38E534();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_26F3971F8();
  [v6 setPredicate_];

  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_26F397138();
  v11 = [v9 initWithKey:v10 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26F3994D0;
  *(v12 + 32) = v11;
  sub_26F38500C(0, &qword_281592BA8, 0x277CCAC98);
  v13 = v11;
  v14 = sub_26F3971B8();

  [v6 setSortDescriptors_];

  return v6;
}

unint64_t sub_26F38E534()
{
  result = qword_281592BC8;
  if (!qword_281592BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281592BC8);
  }

  return result;
}

id static PersistedTranslation.sortedByCreationDateFetchRequest(sessionIDs:)(uint64_t a1)
{
  v1 = _s22TranslationPersistence09PersistedA0C12fetchRequest10sessionIDsSo07NSFetchE0CyACGSaySSG_tFZ_0(a1);
  v2 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v3 = sub_26F397138();
  v4 = [v2 initWithKey:v3 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBAF8, &unk_26F3995E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26F3994D0;
  *(v5 + 32) = v4;
  sub_26F38500C(0, &qword_281592BA8, 0x277CCAC98);
  v6 = v4;
  v7 = sub_26F3971B8();

  [v1 setSortDescriptors_];

  return v1;
}

id _s22TranslationPersistence09PersistedA0C12fetchRequest10sessionIDsSo07NSFetchE0CyACGSaySSG_tFZ_0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_26F397138();
  v4 = [v2 initWithEntityName_];

  v5 = *(a1 + 16);
  if (v5)
  {
    v15 = v4;
    v16 = MEMORY[0x277D84F90];
    sub_26F397338();
    sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
    v6 = (a1 + 40);
    v7 = MEMORY[0x277D837D0];
    do
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_26F398960;
      *(v10 + 56) = v7;
      *(v10 + 64) = sub_26F38E534();
      *(v10 + 32) = v9;
      *(v10 + 40) = v8;
      swift_bridgeObjectRetain_n();
      sub_26F3971F8();

      sub_26F397318();
      v11 = *(v16 + 16);
      sub_26F397348();
      sub_26F397358();
      sub_26F397328();
      v6 += 2;
      --v5;
    }

    while (v5);
    v4 = v15;
  }

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  v12 = sub_26F3971B8();

  v13 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v4 setPredicate_];
  return v4;
}

id _s22TranslationPersistence09PersistedA0C12fetchRequest10identifierSo07NSFetchE0CyACGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_26F397138();
  v6 = [v4 initWithEntityName_];

  sub_26F38500C(0, &qword_281592BB0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DBB00, &unk_26F3994E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26F398960;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_26F38E534();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_26F3971F8();
  [v6 setPredicate_];

  return v6;
}

uint64_t TranslationAlternative.displayString.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 8))();
  if (!v5)
  {
    return (*(*(a2 + 16) + 8))(a1);
  }

  return result;
}

uint64_t TranslationResult.isLowConfidence.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  if (*(v2 + 16))
  {
    sub_26F37CC58(v2 + 32, v7);

    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v5 = (*(v4 + 32))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}