uint64_t sub_25EDB34E8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40320;
  return result;
}

uint64_t sub_25EDB3534(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40320 = v1;
  return result;
}

uint64_t sub_25EDB3588@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40470;
  return result;
}

uint64_t sub_25EDB35D4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40470 = v1;
  return result;
}

uint64_t sub_25EDB361C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40471;
  return result;
}

uint64_t sub_25EDB3668(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40471 = v1;
  return result;
}

uint64_t sub_25EDB36B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40472;
  return result;
}

uint64_t sub_25EDB36FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40472 = v1;
  return result;
}

uint64_t sub_25EDB3744@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40473;
  return result;
}

uint64_t sub_25EDB3790(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40473 = v1;
  return result;
}

uint64_t sub_25EDB37D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40474;
  return result;
}

uint64_t sub_25EDB3824(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40474 = v1;
  return result;
}

uint64_t sub_25EDB386C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40475;
  return result;
}

uint64_t sub_25EDB38B8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40475 = v1;
  return result;
}

uint64_t sub_25EDB3900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40476;
  return result;
}

uint64_t sub_25EDB394C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40476 = v1;
  return result;
}

uint64_t sub_25EDB3994@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40480;
  return result;
}

uint64_t sub_25EDB39E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40480 = v1;
  return result;
}

uint64_t sub_25EDB3A28@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FD40481;
  return result;
}

uint64_t sub_25EDB3A74(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FD40481 = v1;
  return result;
}

uint64_t static PosterPathUtilities.storeConfiguredProperties(_:forPath:)(uint64_t a1, void *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    v7 = sub_25EDB44FC(v6, a2);

    if (v2)
    {
      return v8 & 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    a1 = v5;
  }

  v9 = *(a1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);
  if (v9)
  {
    v10 = v9;
    v11 = sub_25EDB4934(v10, a2);

    if (v2)
    {
      return v8 & 1;
    }

    if ((v11 & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

id static PosterPathUtilities.loadConfiguredProperties(forPath:)(void *a1)
{
  v3 = sub_25EDB4E2C(a1);
  if (v1)
  {
    v4 = 0;
    if (qword_27FD40220 != -1)
    {
      swift_once();
    }

    v5 = sub_25EDBC358();
    __swift_project_value_buffer(v5, qword_27FD405A8);
    v6 = v1;
    v7 = sub_25EDBC338();
    v8 = sub_25EDBC3D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_25EDBC468();
      v13 = sub_25EDB3F44(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25EDB2000, v7, v8, "error loading configured properties: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x25F8CFDB0](v10, -1, -1);
      MEMORY[0x25F8CFDB0](v9, -1, -1);
    }

    else
    {
    }

    v17 = 0;
  }

  else
  {
    v4 = v3;
    v17 = sub_25EDB532C(a1);
  }

  v14 = type metadata accessor for PosterConfiguredProperties();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = v4;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = v17;
  v19.receiver = v15;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id PosterPathUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosterPathUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPathUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PosterPathUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterPathUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25EDB3E74(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25EDB3EE8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25EDB3F44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25EDB3F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25EDB4010(v11, 0, 0, 1, a1, a2);
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
    sub_25EDB5A20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25EDB4010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25EDB411C(a5, a6);
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
    result = sub_25EDBC458();
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

uint64_t sub_25EDB411C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25EDB4168(a1, a2);
  sub_25EDB4298(&unk_2870EF2E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25EDB4168(uint64_t a1, unint64_t a2)
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

  v6 = sub_25EDB4384(v5, 0);
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

  result = sub_25EDBC458();
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
        v10 = sub_25EDBC3A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25EDB4384(v10, 0);
        result = sub_25EDBC448();
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

uint64_t sub_25EDB4298(uint64_t result)
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

  result = sub_25EDB43F8(result, v12, 1, v3);
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

void *sub_25EDB4384(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD402B0, &qword_25EDBCED8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25EDB43F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD402B0, &qword_25EDBCED8);
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

_BYTE **sub_25EDB44EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25EDB44FC(void *a1, void *a2)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v5 = sub_25EDBC278();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25EDBC2B8();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v47 = &v41 - v18;
  if ([a2 isServerPosterPath] && (v45 = a1, objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
  {
    v20 = v19;
    v42 = v2;
    v21 = a2;
    v22 = [v20 instanceURL];
    sub_25EDBC298();

    v48[0] = 0xD000000000000043;
    v48[1] = 0x800000025EDBD5E0;
    (*(v6 + 104))(v9, *MEMORY[0x277CC91D0], v5);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v6 + 8))(v9, v5);
    v23 = v46;
    v43 = *(v10 + 8);
    v44 = v10 + 8;
    v43(v14, v46);
    v24 = v47;
    (*(v10 + 32))(v47, v17, v23);
    v48[0] = 0;
    v25 = v45;
    v26 = [v21 ensureContentsURLIsReachableAndReturnError_];
    v27 = v48[0];
    if (v26)
    {
      v28 = objc_opt_self();
      v48[0] = 0;
      v29 = v27;
      v30 = [v28 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v48];
      v31 = v48[0];
      if (v30)
      {
        v32 = sub_25EDBC2F8();
        v34 = v33;

        v24 = v47;
        v35 = v42;
        sub_25EDBC308();
        if (!v35)
        {
          sub_25EDB5978(v32, v34);
          v43(v24, v23);

          v36 = 1;
          goto LABEL_11;
        }

        sub_25EDB5978(v32, v34);
      }

      else
      {
        v38 = v31;
        sub_25EDBC268();

        swift_willThrow();
        v24 = v47;
      }
    }

    else
    {
      v37 = v48[0];
      sub_25EDBC268();

      swift_willThrow();
    }

    v43(v24, v23);
  }

  else
  {
    v36 = 0;
  }

LABEL_11:
  v39 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

uint64_t sub_25EDB4934(void *a1, void *a2)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v5 = sub_25EDBC278();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_25EDBC2B8();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v47 = &v41 - v18;
  if ([a2 isServerPosterPath] && (v45 = a1, objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
  {
    v20 = v19;
    v42 = v2;
    v21 = a2;
    v22 = [v20 instanceURL];
    sub_25EDBC298();

    v48[0] = 0xD000000000000042;
    v48[1] = 0x800000025EDBD590;
    (*(v6 + 104))(v9, *MEMORY[0x277CC91D0], v5);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v6 + 8))(v9, v5);
    v23 = v46;
    v43 = *(v10 + 8);
    v44 = v10 + 8;
    v43(v14, v46);
    v24 = v47;
    (*(v10 + 32))(v47, v17, v23);
    v48[0] = 0;
    v25 = v45;
    v26 = [v21 ensureContentsURLIsReachableAndReturnError_];
    v27 = v48[0];
    if (v26)
    {
      v28 = objc_opt_self();
      v48[0] = 0;
      v29 = v27;
      v30 = [v28 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v48];
      v31 = v48[0];
      if (v30)
      {
        v32 = sub_25EDBC2F8();
        v34 = v33;

        v24 = v47;
        v35 = v42;
        sub_25EDBC308();
        if (!v35)
        {
          sub_25EDB5978(v32, v34);
          v43(v24, v23);

          v36 = 1;
          goto LABEL_11;
        }

        sub_25EDB5978(v32, v34);
      }

      else
      {
        v38 = v31;
        sub_25EDBC268();

        swift_willThrow();
        v24 = v47;
      }
    }

    else
    {
      v37 = v48[0];
      sub_25EDBC268();

      swift_willThrow();
    }

    v43(v24, v23);
  }

  else
  {
    v36 = 0;
  }

LABEL_11:
  v39 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

id sub_25EDB4D6C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25EDBC2D8();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25EDB4E2C(void *a1)
{
  v3 = sub_25EDBC278();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25EDBC2B8();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  if (![a1 isServerPosterPath])
  {
    return 0;
  }

  v35 = v1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v19 = result;
    v34 = 0x800000025EDBD5E0;
    v20 = a1;
    v21 = [v19 instanceURL];
    sub_25EDBC298();

    v37 = 0xD000000000000043;
    v38 = v34;
    (*(v4 + 104))(v7, *MEMORY[0x277CC91D0], v3);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v4 + 8))(v7, v3);
    v22 = *(v8 + 8);
    v23 = v36;
    v22(v12, v36);
    (*(v8 + 32))(v17, v15, v23);
    type metadata accessor for PosterTitleStyleConfiguration();
    v24 = v35;
    sub_25EDBC288();
    if (v24)
    {
      return (v22)(v17, v23);
    }

    v25 = sub_25EDBC2C8();
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25EDB5924(v25, v27);
    v29 = sub_25EDB4D6C();
    v35 = 0;
    v30 = v29;
    sub_25EDB5978(v25, v27);
    [v30 setRequiresSecureCoding_];
    _s11PosterModel0A23TitleStyleConfigurationC23performClassReplacement3for06targetaB0ySo17NSKeyedUnarchiverC_SbtFZ_0(v30, 1);
    v31 = *MEMORY[0x277CCA308];
    sub_25EDBC388();
    v32 = sub_25EDBC3E8();

    if (v32)
    {
      ObjectType = swift_getObjectType();
      v37 = v32;

      sub_25EDB5978(v25, v27);
      v22(v17, v36);
      if (swift_dynamicCast())
      {
        return v40;
      }
    }

    else
    {
      v22(v17, v36);
      sub_25EDB5978(v25, v27);
    }

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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25EDB532C(void *a1)
{
  v3 = sub_25EDBC278();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25EDBC2B8();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v35);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v16;
  if ([a1 isServerPosterPath])
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v18 = result;
    ObjCClassFromMetadata = v1;
    v19 = a1;
    v20 = [v18 instanceURL];
    sub_25EDBC298();

    v37 = 0xD000000000000042;
    v38 = 0x800000025EDBD590;
    (*(v4 + 104))(v7, *MEMORY[0x277CC91D0], v3);
    sub_25EDB58D0();
    sub_25EDBC2A8();

    (*(v4 + 8))(v7, v3);
    v21 = *(v8 + 8);
    v22 = v35;
    v21(v12, v35);
    v23 = v36;
    (*(v8 + 32))(v36, v15, v22);
    type metadata accessor for PosterRenderingConfiguration();
    v24 = ObjCClassFromMetadata;
    sub_25EDBC288();
    if (v24)
    {
      return (v21)(v23, v22);
    }

    v25 = sub_25EDBC2C8();
    v27 = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25EDB5924(v25, v27);
    v29 = sub_25EDB4D6C();
    sub_25EDB5978(v25, v27);
    [v29 setRequiresSecureCoding_];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v30 = sub_25EDBC378();
    [v29 setClass:ObjCClassFromMetadata forClassName:v30];

    sub_25EDB59CC(&unk_2870EF2D8);
    v31 = *MEMORY[0x277CCA308];
    sub_25EDBC388();
    v32 = sub_25EDBC3E8();

    if (v32)
    {
      ObjectType = swift_getObjectType();
      v37 = v32;

      sub_25EDB5978(v25, v27);
      v21(v36, v35);
      if (swift_dynamicCast())
      {
        return v40;
      }
    }

    else
    {
      v21(v36, v35);
      sub_25EDB5978(v25, v27);
    }
  }

  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25EDB5814(uint64_t a1, int a2)
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

uint64_t sub_25EDB5834(uint64_t result, int a2, int a3)
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

void sub_25EDB5884(uint64_t a1, unint64_t *a2)
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

unint64_t sub_25EDB58D0()
{
  result = qword_27FD402A8;
  if (!qword_27FD402A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD402A8);
  }

  return result;
}

uint64_t sub_25EDB5924(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25EDB5978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25EDB5A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

id PosterConfiguration.__allocating_init(path:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25EDB6920(a1);

  return v4;
}

id PosterConfiguration.init(path:)(void *a1)
{
  v2 = sub_25EDB6920(a1);

  return v2;
}

id PosterConfiguration.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC11PosterModel19PosterConfiguration_pathValidityExtension];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PosterConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_25EDB5C40()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v9[0] = 0;
  v2 = [v1 loadUserInfoWithError_];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_25EDBC368();
    v6 = v3;
  }

  else
  {
    v5 = v9[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25EDB5D28()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) contentsURL];
  sub_25EDBC298();
}

uint64_t sub_25EDB5D90@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 posterUUID];

    sub_25EDBC318();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25EDBC328();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_25EDB5E64()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 provider];

  v4 = sub_25EDBC388();
  return v4;
}

id sub_25EDB5FE0()
{
  result = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) serverIdentity];
  if (result)
  {
    v2 = result;
    v3 = [result descriptorIdentifier];

    if (v3)
    {
      v4 = sub_25EDBC388();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_25EDB60B8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path) role];

  return v1;
}

uint64_t static PosterConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40320 = a1;
  return result;
}

void sub_25EDB626C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v4 = sub_25EDBC378();
  [a1 encodeObject:v3 forKey:v4];
}

id PosterConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_25EDB6A10();
  v4 = sub_25EDBC3E8();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v7 = sub_25EDB6920(v5);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

id PosterConfiguration.init(coder:)(void *a1)
{
  sub_25EDB6A10();
  v2 = sub_25EDBC3E8();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v5 = sub_25EDB6920(v3);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void static PosterConfiguration.archiveConfiguration(_:fileManager:format:)(uint64_t a1, void *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
  }

  v7 = objc_allocWithZone(MEMORY[0x277D3EB70]);
  v8 = a2;
  v9 = [v7 initWithFileManager_];
  v10 = *(a1 + OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path);
  v17[0] = 0;
  v11 = [v9 archivePath:v10 format:a3 error:v17];
  v12 = v17[0];
  if (v11)
  {
    v13 = v11;
    sub_25EDBC298();
    v14 = v12;
  }

  else
  {
    v15 = v17[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

id static PosterConfiguration.unarchiveConfiguration(from:fileManager:format:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
  }

  v7 = objc_allocWithZone(MEMORY[0x277D3EB70]);
  v8 = a3;
  v9 = [v7 initWithFileManager_];
  v10 = sub_25EDBC2D8();
  v17[0] = 0;
  v11 = [v9 unarchivePathFromData:v10 format:a4 error:v17];

  v12 = v17[0];
  if (v11)
  {
    objc_allocWithZone(type metadata accessor for PosterConfiguration());
    v13 = v12;
    v12 = sub_25EDB6920(v11);
  }

  else
  {
    v14 = v17[0];
    sub_25EDBC268();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

id PosterConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25EDB6920(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11PosterModel19PosterConfiguration___path] = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = a1;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_25EDBC388();
    v5 = sub_25EDBC378();
  }

  v6 = [v4 extendValidityForReason_];

  *&v1[OBJC_IVAR____TtC11PosterModel19PosterConfiguration_pathValidityExtension] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PosterConfiguration();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_25EDB6A10()
{
  result = qword_27FD40338;
  if (!qword_27FD40338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD40338);
  }

  return result;
}

id PosterConfiguredProperties.__allocating_init(titleStyleConfiguration:renderingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = a1;
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25EDB6CF4()
{
  v0 = sub_25EDBC358();
  __swift_allocate_value_buffer(v0, qword_27FD405A8);
  __swift_project_value_buffer(v0, qword_27FD405A8);
  return sub_25EDBC348();
}

uint64_t PosterSystemTimeFontConfiguration.timeFontIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier + 8);

  return v1;
}

id PosterSystemTimeFontConfiguration.__allocating_init(timeFontIdentifier:weight:isSystemItem:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = a4;
  v9[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = a3;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PosterSystemTimeFontConfiguration.init(timeFontIdentifier:weight:isSystemItem:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v5 = a1;
  v5[1] = a2;
  *&v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = a4;
  v4[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = a3;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for PosterSystemTimeFontConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static PosterSystemTimeFontConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40470 = a1;
  return result;
}

id sub_25EDB7024(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier);
  v5 = *(v1 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier + 8);
  v6 = sub_25EDBC378();
  [a1 encodeObject:v6 forKey:@"timeFontIdentifier"];

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v7 = *(v2 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight);
  v8 = sub_25EDBC408();
  [a1 encodeObject:v8 forKey:@"weight"];

  v9 = *(v2 + OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem);

  return [a1 encodeBool:v9 forKey:@"isSystemItem"];
}

id PosterSystemTimeFontConfiguration.init(coder:)(void *a1)
{
  sub_25EDBC388();
  v2 = sub_25EDB7344();
  v4 = v3;

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v5 = sub_25EDBC3E8();

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x800000025EDBD760;
  }

  if (v4)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  v10 = [a1 decodeBoolForKey_];
  v11 = type metadata accessor for PosterSystemTimeFontConfiguration();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_timeFontIdentifier];
  *v13 = v9;
  v13[1] = v8;
  *&v12[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_weight] = v7;
  v12[OBJC_IVAR____TtC11PosterModel33PosterSystemTimeFontConfiguration_isSystemItem] = v10;
  v16.receiver = v12;
  v16.super_class = v11;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_25EDB7344()
{
  sub_25EDBC0B0(0, &qword_27FD40598, 0x277CCACA8);
  if (sub_25EDBC3E8())
  {
    return sub_25EDBC398();
  }

  v2 = sub_25EDBC378();
  v3 = [v0 decodeObjectForKey_];

  if (v3)
  {
    sub_25EDBC438();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  sub_25EDBC0F8(v8, &v6);
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v5;
LABEL_13:
      sub_25EDBC168(v8);
      return v4;
    }
  }

  else
  {
    sub_25EDBC168(&v6);
  }

  sub_25EDBC0F8(v8, &v6);
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = sub_25EDBC398();
      goto LABEL_13;
    }
  }

  else
  {
    sub_25EDBC168(&v6);
  }

  sub_25EDBC168(v8);
  return 0;
}

void *PosterColor.color.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel11PosterColor_color);
  v2 = v1;
  return v1;
}

uint64_t PosterColor.localizedName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName + 8);

  return v1;
}

id PosterColor.__allocating_init(color:preferredStyle:localizedName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = a1;
  *&v9[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = a2;
  v10 = &v9[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id PosterColor.init(color:preferredStyle:localizedName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = a1;
  *&v4[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = a2;
  v5 = &v4[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for PosterColor();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static PosterColor.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40471 = a1;
  return result;
}

uint64_t sub_25EDB784C(void *a1)
{
  v2 = v1;
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v4 = *(v1 + OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle);
  v5 = sub_25EDBC418();
  [a1 encodeObject:v5 forKey:@"preferredStyle"];

  if (*(v2 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName + 8))
  {
    v6 = *(v2 + OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName);
    v7 = sub_25EDBC378();
  }

  else
  {
    v7 = 0;
  }

  [a1 encodeObject:v7 forKey:@"localizedName"];

  return swift_unknownObjectRelease();
}

id PosterColor.init(coder:)(void *a1)
{
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  sub_25EDBC388();
  v4 = sub_25EDB7344();
  v6 = v5;

  v7 = type metadata accessor for PosterColor();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC11PosterModel11PosterColor_color] = 0;
  *&v8[OBJC_IVAR____TtC11PosterModel11PosterColor_preferredStyle] = v3;
  v9 = &v8[OBJC_IVAR____TtC11PosterModel11PosterColor_localizedName];
  *v9 = v4;
  v9[1] = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id PosterContentDiscreteColorsStyle.__allocating_init(colors:isVibrant:allowsVariation:variation:)(uint64_t a1, char a2, char a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = a1;
  v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = a2;
  v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = a3;
  *&v9[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PosterContentDiscreteColorsStyle.init(colors:isVibrant:allowsVariation:variation:)(uint64_t a1, char a2, char a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = a1;
  v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = a2;
  v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = a3;
  *&v4[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for PosterContentDiscreteColorsStyle();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static PosterContentDiscreteColorsStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40472 = a1;
  return result;
}

id sub_25EDB7E90(void *a1)
{
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant) forKey:@"vibrant"];
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation) forKey:@"supportsVariation"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation);

  return [a1 encodeDouble:@"variation" forKey:v3];
}

id PosterContentDiscreteColorsStyle.init(coder:)(void *a1)
{
  v2 = [a1 decodeBoolForKey_];
  v3 = [a1 decodeBoolForKey_];
  [a1 decodeDoubleForKey_];
  v5 = v4;
  v6 = type metadata accessor for PosterContentDiscreteColorsStyle();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle__colors] = MEMORY[0x277D84F90];
  v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_isVibrant] = v2;
  v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_allowsVariation] = v3;
  *&v7[OBJC_IVAR____TtC11PosterModel32PosterContentDiscreteColorsStyle_variation] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

double PosterContentGradientStyle.startPoint.getter()
{
  result = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint + 8);
  return result;
}

double PosterContentGradientStyle.endPoint.getter()
{
  result = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint + 8);
  return result;
}

id PosterContentGradientStyle.__allocating_init(colors:startPoint:endPoint:locations:gradientType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = a1;
  v16 = &v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v16 = a4;
  v16[1] = a5;
  v17 = &v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v17 = a6;
  v17[1] = a7;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = a2;
  *&v15[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = a3;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id PosterContentGradientStyle.init(colors:startPoint:endPoint:locations:gradientType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = a1;
  v8 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v8 = a4;
  v8[1] = a5;
  v9 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v9 = a6;
  v9[1] = a7;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = a2;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for PosterContentGradientStyle();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t static PosterContentGradientStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40473 = a1;
  return result;
}

id sub_25EDB857C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint);
  v4 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint + 8);
  v5 = BSNSStringFromCGPoint();
  [a1 encodeObject:v5 forKey:@"startPoint"];

  v6 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint);
  v7 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint + 8);
  v8 = BSNSStringFromCGPoint();
  [a1 encodeObject:v8 forKey:@"endPoint"];

  v9 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations);
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v10 = sub_25EDBC3B8();
  [a1 encodeObject:v10 forKey:@"locations"];

  v11 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType);

  return [a1 encodeInteger:v11 forKey:@"gradientType"];
}

id PosterContentGradientStyle.init(coder:)(void *a1)
{
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3F8();

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [a1 decodeIntegerForKey_];
  v6 = type metadata accessor for PosterContentGradientStyle();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle__colors] = v3;
  v8 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_startPoint];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_endPoint];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_locations] = v4;
  *&v7[OBJC_IVAR____TtC11PosterModel26PosterContentGradientStyle_gradientType] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t static PosterContentVibrantMaterialStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40474 = a1;
  return result;
}

id PosterContentVibrantMaterialStyle.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];

  return v3;
}

id PosterContentVibrantMaterialStyle.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

uint64_t static PosterContentVibrantMonochromeStyle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40475 = a1;
  return result;
}

id sub_25EDB8E8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_25EDB8EDC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *PosterTitleStyleConfiguration.timeFontConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration);
  v2 = v1;
  return v1;
}

uint64_t PosterTitleStyleConfiguration.titleContentStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle + 8);
  return swift_unknownObjectRetain();
}

void *PosterTitleStyleConfiguration.titleColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor);
  v2 = v1;
  return v1;
}

uint64_t PosterTitleStyleConfiguration.timeNumberingSystem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem + 8);

  return v1;
}

uint64_t PosterTitleStyleConfiguration.groupName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName);
  v2 = *(v0 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName + 8);

  return v1;
}

id PosterTitleStyleConfiguration.__allocating_init(timeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:contentsLuminance:groupName:isUserConfigured:isAlternateDateEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = a1;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = a2;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = a3;
  v23 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v23 = a4;
  v23[1] = a5;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = a6;
  v24 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v24 = a7;
  v24[1] = a8;
  *&v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = a9;
  v25 = &v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v25 = a10;
  v25[1] = a11;
  v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = a12;
  v22[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = a13;
  v28.receiver = v22;
  v28.super_class = v13;
  return objc_msgSendSuper2(&v28, sel_init);
}

id PosterTitleStyleConfiguration.init(timeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:contentsLuminance:groupName:isUserConfigured:isAlternateDateEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = a1;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = a2;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = a3;
  v14 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v14 = a4;
  v14[1] = a5;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = a6;
  v15 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v15 = a7;
  v15[1] = a8;
  *&v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = a9;
  v16 = &v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v16 = a10;
  v16[1] = a11;
  v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = a12;
  v13[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = a13;
  v18.receiver = v13;
  v18.super_class = type metadata accessor for PosterTitleStyleConfiguration();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t static PosterTitleStyleConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40476 = a1;
  return result;
}

void sub_25EDB942C(void *a1)
{
  v2 = v1;
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration) forKey:@"timeFontConfiguration"];
  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  v4 = *(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment);
  v5 = sub_25EDBC418();
  [a1 encodeObject:v5 forKey:@"preferredTitleAlignment"];

  v6 = *(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout);
  v7 = sub_25EDBC418();
  [a1 encodeObject:v7 forKey:@"preferredTitleLayout"];

  v8 = *(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle + 8);
  v15 = sub_25EDBB14C(*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle));
  [a1 encodeObject_forKey_];
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor) forKey:@"titleColor"];
  if (*(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem);
    v10 = sub_25EDBC378();
  }

  else
  {
    v10 = 0;
  }

  [a1 encodeObject:v10 forKey:@"timeNumberingSystem"];
  swift_unknownObjectRelease();
  v11 = *(v1 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance);
  v12 = sub_25EDBC408();
  [a1 encodeObject:v12 forKey:@"contentsLuminence"];

  if (*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName + 8))
  {
    v13 = *(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName);
    v14 = sub_25EDBC378();
  }

  else
  {
    v14 = 0;
  }

  [a1 encodeObject:v14 forKey:@"groupName"];
  swift_unknownObjectRelease();
  [a1 encodeBool:*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured) forKey:@"userConfigured"];
  [a1 encodeBool:*(v2 + OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled) forKey:@"alternateDateEnabled"];
}

id PosterTitleStyleConfiguration.init(coder:)(void *a1)
{
  type metadata accessor for PosterSystemTimeFontConfiguration();
  sub_25EDBC388();
  v32 = sub_25EDBC3E8();

  sub_25EDBC0B0(0, &qword_27FD404B0, 0x277CCABB0);
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  if (v2)
  {
    v31 = [v2 integerValue];
  }

  else
  {
    v31 = 0;
  }

  sub_25EDBC388();
  v3 = sub_25EDBC3E8();

  if (v3)
  {
    v29 = [v3 integerValue];
  }

  else
  {
    v29 = 0;
  }

  sub_25EDBC0B0(0, &qword_27FD40568, 0x277CBEA90);
  sub_25EDBC388();
  v4 = sub_25EDBC3E8();

  v30 = v4;
  v5 = sub_25EDBB474(v4);
  v28 = v6;
  type metadata accessor for PosterColor();
  sub_25EDBC388();
  v7 = sub_25EDBC3E8();

  sub_25EDBC388();
  v27 = sub_25EDB7344();
  v9 = v8;

  sub_25EDBC388();
  v10 = sub_25EDBC3E8();

  if (v10)
  {
    [v10 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0.5;
  }

  sub_25EDBC388();
  v13 = sub_25EDB7344();
  v15 = v14;

  v16 = [a1 decodeBoolForKey_];
  v17 = [a1 decodeBoolForKey_];
  v18 = type metadata accessor for PosterTitleStyleConfiguration();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeFontConfiguration] = v32;
  *&v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleAlignment] = v31;
  *&v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_preferredTitleLayout] = v29;
  v20 = &v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleContentStyle];
  *v20 = v5;
  v20[1] = v28;
  *&v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_titleColor] = v7;
  v21 = &v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_timeNumberingSystem];
  *v21 = v27;
  v21[1] = v9;
  *&v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_contentsLuminance] = v12;
  v22 = &v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_groupName];
  *v22 = v13;
  v22[1] = v15;
  v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isUserConfigured] = v16;
  v19[OBJC_IVAR____TtC11PosterModel29PosterTitleStyleConfiguration_isAlternateDateEnabled] = v17;
  v33.receiver = v19;
  v33.super_class = v18;
  v23 = v32;
  swift_unknownObjectRetain();
  v24 = v7;
  v25 = objc_msgSendSuper2(&v33, sel_init);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_25EDB9B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD40590, &qword_25EDBD320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25EDBCF30;
  *(v0 + 32) = type metadata accessor for PosterContentDiscreteColorsStyle();
  *(v0 + 40) = &protocol witness table for PosterContentDiscreteColorsStyle;
  *(v0 + 48) = type metadata accessor for PosterContentGradientStyle();
  *(v0 + 56) = &protocol witness table for PosterContentGradientStyle;
  *(v0 + 64) = type metadata accessor for PosterContentVibrantMaterialStyle();
  *(v0 + 72) = &protocol witness table for PosterContentVibrantMaterialStyle;
  result = type metadata accessor for PosterContentVibrantMonochromeStyle();
  *(v0 + 80) = result;
  *(v0 + 88) = &protocol witness table for PosterContentVibrantMonochromeStyle;
  off_27FD40478 = v0;
  return result;
}

id PosterRenderingConfiguration.__allocating_init(isDepthEffectDisabled:areMotionEffectsDisabled:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = a1;
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PosterRenderingConfiguration.init(isDepthEffectDisabled:areMotionEffectsDisabled:)(char a1, char a2)
{
  v2[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = a1;
  v2[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterRenderingConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t static PosterRenderingConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40480 = a1;
  return result;
}

id sub_25EDB9F34(void *a1)
{
  [a1 encodeBool:*(v1 + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled) forKey:@"depthEffectDisabled"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled);

  return [a1 encodeBool:v3 forKey:@"motionEffectsDisabled"];
}

id PosterRenderingConfiguration.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [a1 decodeBoolForKey_];
  v6 = [a1 decodeBoolForKey_];
  v7 = type metadata accessor for PosterRenderingConfiguration();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = v5;
  v8[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id PosterRenderingConfiguration.init(coder:)(void *a1)
{
  v2 = [a1 decodeBoolForKey_];
  v3 = [a1 decodeBoolForKey_];
  v4 = type metadata accessor for PosterRenderingConfiguration();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = v2;
  v5[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void *PosterConfiguredProperties.titleStyleConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration);
  v2 = v1;
  return v1;
}

void *PosterConfiguredProperties.renderingConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);
  v2 = v1;
  return v1;
}

id PosterConfiguredProperties.init(titleStyleConfiguration:renderingConfiguration:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = a1;
  *&v2[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PosterConfiguredProperties();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t static PosterConfiguredProperties.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FD40481 = a1;
  return result;
}

id sub_25EDBA5BC(void *a1)
{
  [a1 encodeObject:*(v1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration) forKey:@"titleStyleConfiguration"];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration);

  return [a1 encodeObject:v3 forKey:@"titleStyleConfiguration"];
}

id PosterConfiguredProperties.init(coder:)(void *a1)
{
  type metadata accessor for PosterTitleStyleConfiguration();
  sub_25EDBC388();
  v2 = sub_25EDBC3E8();

  type metadata accessor for PosterRenderingConfiguration();
  sub_25EDBC388();
  v3 = sub_25EDBC3E8();

  v4 = type metadata accessor for PosterConfiguredProperties();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_titleStyleConfiguration] = v2;
  *&v5[OBJC_IVAR____TtC11PosterModel26PosterConfiguredProperties_renderingConfiguration] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = v2;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id PosterConfiguredProperties.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25EDBA928(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s11PosterModel0A23TitleStyleConfigurationC23performClassReplacement3for06targetaB0ySo17NSKeyedUnarchiverC_SbtFZ_0(void *a1, char a2)
{
  type metadata accessor for PosterTitleStyleConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v5 = sub_25EDBC378();
    [a1 setClass:ObjCClassFromMetadata forClassName:v5];
LABEL_9:

    goto LABEL_10;
  }

  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    sub_25EDBC388();
    v6 = sub_25EDBC378();
  }

  v7 = [a1 classForClassName_];

  if (!v7)
  {
    v8 = sub_25EDBC378();
    v9 = NSClassFromString(v8);

    v5 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v5)
    {
      sub_25EDBC388();
      v5 = sub_25EDBC378();
    }

    [a1 setClass:v9 forClassName:v5];
    goto LABEL_9;
  }

LABEL_10:

  sub_25EDB59CC(&qword_2870EF238);
  type metadata accessor for PosterSystemTimeFontConfiguration();
  v10 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v11 = sub_25EDBC378();
    [a1 setClass:v10 forClassName:v11];
LABEL_18:

    goto LABEL_19;
  }

  v12 = NSStringFromClass(v10);
  if (!v12)
  {
    sub_25EDBC388();
    v12 = sub_25EDBC378();
  }

  v13 = [a1 classForClassName_];

  if (!v13)
  {
    v14 = sub_25EDBC378();
    v15 = NSClassFromString(v14);

    v11 = NSStringFromClass(v10);
    if (!v11)
    {
      sub_25EDBC388();
      v11 = sub_25EDBC378();
    }

    [a1 setClass:v15 forClassName:v11];
    goto LABEL_18;
  }

LABEL_19:

  v16 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v17 = sub_25EDBC378();
    [a1 setClass:v16 forClassName:v17];
LABEL_27:

    goto LABEL_28;
  }

  v18 = NSStringFromClass(v16);
  if (!v18)
  {
    sub_25EDBC388();
    v18 = sub_25EDBC378();
  }

  v19 = [a1 classForClassName_];

  if (!v19)
  {
    v20 = sub_25EDBC378();
    v21 = NSClassFromString(v20);

    v17 = NSStringFromClass(v16);
    if (!v17)
    {
      sub_25EDBC388();
      v17 = sub_25EDBC378();
    }

    [a1 setClass:v21 forClassName:v17];
    goto LABEL_27;
  }

LABEL_28:

  swift_arrayDestroy();
  sub_25EDBAEF4(a1, a2 & 1, qword_2870EF178, &qword_2870EF178[1], type metadata accessor for PosterContentDiscreteColorsStyle);
  sub_25EDBAEF4(a1, a2 & 1, qword_2870EF1A8, &qword_2870EF1A8[1], type metadata accessor for PosterContentGradientStyle);
  sub_25EDBAEF4(a1, a2 & 1, qword_2870EF1D8, &qword_2870EF1D8[1], type metadata accessor for PosterContentVibrantMaterialStyle);
  sub_25EDBAEF4(a1, a2 & 1, qword_2870EF208, &qword_2870EF208[1], type metadata accessor for PosterContentVibrantMonochromeStyle);
  type metadata accessor for PosterColor();
  v22 = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v23 = sub_25EDBC378();
    [a1 setClass:v22 forClassName:v23];
LABEL_36:

    goto LABEL_37;
  }

  v24 = NSStringFromClass(v22);
  if (!v24)
  {
    sub_25EDBC388();
    v24 = sub_25EDBC378();
  }

  v25 = [a1 classForClassName_];

  if (!v25)
  {
    v26 = sub_25EDBC378();
    v27 = NSClassFromString(v26);

    v23 = NSStringFromClass(v22);
    if (!v23)
    {
      sub_25EDBC388();
      v23 = sub_25EDBC378();
    }

    [a1 setClass:v27 forClassName:v23];
    goto LABEL_36;
  }

LABEL_37:

  return sub_25EDB59CC(aPrpostercolor);
}

uint64_t sub_25EDBAEF4(void *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a3;
  v9 = *a4;
  a5();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (a2)
  {
    v11 = sub_25EDBC378();
    [a1 setClass:ObjCClassFromMetadata forClassName:v11];
LABEL_9:

    goto LABEL_10;
  }

  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_25EDBC388();
    v12 = sub_25EDBC378();
  }

  v13 = [a1 classForClassName_];

  if (!v13)
  {
    v14 = sub_25EDBC378();
    v15 = NSClassFromString(v14);

    v11 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v11)
    {
      sub_25EDBC388();
      v11 = sub_25EDBC378();
    }

    [a1 setClass:v15 forClassName:v11];
    goto LABEL_9;
  }

LABEL_10:

  return sub_25EDB59CC(a3);
}

uint64_t sub_25EDBB14C(uint64_t result)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v25[0] = 0;
    swift_unknownObjectRetain();
    v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v25];
    v4 = v25[0];
    if (v3)
    {
      v5 = sub_25EDBC2F8();
      v7 = v6;

      if (qword_27FD40220 != -1)
      {
        swift_once();
      }

      v8 = sub_25EDBC358();
      __swift_project_value_buffer(v8, qword_27FD405A8);
      v9 = sub_25EDBC338();
      v10 = sub_25EDBC3C8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_25EDB2000, v9, v10, "successfully archived contentStyle to data", v11, 2u);
        MEMORY[0x25F8CFDB0](v11, -1, -1);
      }

      v12 = sub_25EDBC2D8();
      swift_unknownObjectRelease();
      sub_25EDB5978(v5, v7);
      result = v12;
    }

    else
    {
      v13 = v4;
      v14 = sub_25EDBC268();

      swift_willThrow();
      if (qword_27FD40220 != -1)
      {
        swift_once();
      }

      v15 = sub_25EDBC358();
      __swift_project_value_buffer(v15, qword_27FD405A8);
      v16 = v14;
      v17 = sub_25EDBC338();
      v18 = sub_25EDBC3D8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_25EDBC468();
        v23 = sub_25EDB3F44(v21, v22, v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_25EDB2000, v17, v18, "error getting archivedData from contentStyle: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x25F8CFDB0](v20, -1, -1);
        MEMORY[0x25F8CFDB0](v19, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      result = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25EDBB474(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = xmmword_25EDBCF40;
    sub_25EDBC2E8();
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25EDBC09C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25EDB5978(a1, a2);
  }

  return a1;
}

uint64_t sub_25EDBC0B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25EDBC0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD405A0, &qword_25EDBD328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EDBC168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD405A0, &qword_25EDBD328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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