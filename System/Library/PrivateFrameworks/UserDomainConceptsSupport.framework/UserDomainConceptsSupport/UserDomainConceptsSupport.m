uint64_t sub_2708423D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88))
  {
    v6 = *(v0 + 96);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_270842440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_270842490()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2708424C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270842500()
{
  if (v0[3])
  {
    v1 = v0[4];
  }

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_270842550()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270842588()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708425C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270842600()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270842638()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270842678()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708426B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2708426EC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270842724()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27084276C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2708427AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *UserDomainConceptChangeProvider.init(conceptStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject;
  v13 = 0;
  LOBYTE(v14) = 3;
  sub_27084290C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_27084C81C();
  *&v1[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcStore] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for UserDomainConceptChangeProvider();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcStore];
  v10 = v8;
  [v9 setDelegate_];

  return v10;
}

void sub_27084290C()
{
  if (!qword_280CF7DC8)
  {
    v0 = sub_27084C80C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7DC8);
    }
  }
}

char *UserDomainConceptChangeProvider.__allocating_init(with:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCDB48]) initWithHealthStore_];
  v3 = objc_allocWithZone(type metadata accessor for UserDomainConceptChangeProvider());
  v4 = UserDomainConceptChangeProvider.init(conceptStore:)(v2);

  return v4;
}

uint64_t sub_270842A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject);

  return sub_27084C7FC();
}

uint64_t sub_270842A6C(char *a1)
{
  sub_270842E08();
  sub_27084C9DC();
  v2 = *&a1[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject];
  v3 = a1;

  sub_27084C7FC();
}

id UserDomainConceptChangeProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserDomainConceptChangeProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDomainConceptChangeProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_25UserDomainConceptsSupport0aB13ConceptChangeO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_270842BEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_270842C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_270842C7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void type metadata accessor for HKListUserDomainType()
{
  if (!qword_280CF79F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280CF79F0);
    }
  }
}

unint64_t sub_270842E08()
{
  result = qword_280CF7A68;
  if (!qword_280CF7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CF7A68);
  }

  return result;
}

id ListConceptManagerState.listUDC.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ListConceptManagerState.listName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ListConceptManagerState.init(concepts:list:)@<X0>(id a1@<X1>, unint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 listType];
  v7 = [a1 listName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_27084C94C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a1;
  v13 = sub_270843048(a2);

  v14 = sub_270843368(a2);

  result = sub_270847FD8(v15);
  *a3 = a1;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = 0;
  return result;
}

uint64_t ListConceptManagerState.init(concepts:listType:listName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];

  result = sub_270847FD8(v11);
  *a5 = 0;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v13;
  *(a5 + 40) = v10;
  *(a5 + 48) = a1;
  *(a5 + 56) = 0;
  return result;
}

uint64_t sub_270843048(unint64_t a1)
{
  v2 = [v1 linkCollection];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v6 = sub_27084C9DC();

    v16 = v3;
    if (v6 >> 62)
    {
LABEL_19:
      v7 = sub_27084CB5C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743AB6A0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = sub_2708470B8(v9, a1);

      ++v8;
      if (v12)
      {
        MEMORY[0x2743AB540]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_27084C9FC();
        }

        sub_27084CA2C();
        v3 = v16;
        v8 = v11;
      }
    }
  }

  return v3;
}

uint64_t HKListUserDomainConcept.linkElements<A>(from:)()
{
  v1 = [v0 linkCollection];
  if (!v1)
  {
    return sub_27084CA0C();
  }

  v2 = v1;
  v3 = [v1 links];

  sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
  sub_27084C9DC();

  MEMORY[0x28223BE20](v4);
  sub_270849FE4(0, &qword_280CF7A08, &unk_280CF79E0, 0x277CCDB00, MEMORY[0x277D83940]);
  sub_2708480E4();
  v5 = sub_27084C98C();

  return v5;
}

uint64_t sub_270843368(unint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_27084C74C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = [v2 linkCollection];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    v14 = [v11 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v15 = sub_27084C9DC();

    if (v15 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_27084CB5C())
    {
      v17 = 0;
      v41 = v15 & 0xFFFFFFFFFFFFFF8;
      v42 = v15 & 0xC000000000000001;
      v39 = (v4 + 32);
      v18 = MEMORY[0x277D84F90];
      v40 = i;
      while (1)
      {
        if (v42)
        {
          v19 = MEMORY[0x2743AB6A0](v17, v15);
        }

        else
        {
          if (v17 >= *(v41 + 16))
          {
            goto LABEL_18;
          }

          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v22 = [v19 targetUUID];
        sub_27084C73C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_27084782C(0, v18[2] + 1, 1, v18);
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v18 = sub_27084782C(v23 > 1, v24 + 1, 1, v18);
        }

        v18[2] = v24 + 1;
        (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v10, v3);
        ++v17;
        if (v21 == v40)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v18 = MEMORY[0x277D84F90];
LABEL_21:

    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v44 = v12;
  if (!(v37 >> 62))
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_24;
    }

LABEL_40:
    v38 = MEMORY[0x277D84F90];
LABEL_41:

    return v38;
  }

  result = sub_27084CB5C();
  if (!result)
  {
    goto LABEL_40;
  }

LABEL_24:
  if (result >= 1)
  {
    v26 = 0;
    v36 = v37 + 32;
    v39 = (v4 + 8);
    v40 = v37 & 0xC000000000000001;
    v38 = MEMORY[0x277D84F90];
    v41 = result;
    do
    {
      if (v40)
      {
        v27 = MEMORY[0x2743AB6A0](v26, v37);
      }

      else
      {
        v27 = *(v36 + 8 * v26);
      }

      v28 = v27;
      v42 = v26 + 1;
      v29 = [v27 UUID];
      sub_27084C73C();

      v31 = 0;
      v32 = v18[2];
      while (v32 != v31)
      {
        v33 = v31 + 1;
        v34 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31;
        sub_27084A6D8(&qword_280CF7A48, MEMORY[0x277CC95F0]);
        v30 = sub_27084C92C();
        v31 = v33;
        if (v30)
        {
          goto LABEL_26;
        }
      }

      v43 = v28;
      MEMORY[0x28223BE20](v30);
      *(&v36 - 2) = &v43;
      if (sub_270848208(sub_27084A868, (&v36 - 4), v38))
      {
LABEL_26:
        (*v39)(v8, v3);

        goto LABEL_27;
      }

      v35 = v28;
      MEMORY[0x2743AB540]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27084C9FC();
      }

      sub_27084CA2C();

      (*v39)(v8, v3);
      v38 = v44;
LABEL_27:
      v26 = v42;
    }

    while (v42 != v41);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

id HKListUserDomainConcept.nonlinkElements<A>(from:)(uint64_t a1)
{
  v2 = v1;
  v37 = sub_27084C74C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v37);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = [v2 linkCollection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 links];

    sub_27084A62C(0, &unk_280CF79E0, 0x277CCDB00);
    v14 = sub_27084C9DC();

    if (v14 >> 62)
    {
      goto LABEL_19;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v8; v15; i = v8)
    {
      v16 = 0;
      v35 = v14 & 0xFFFFFFFFFFFFFF8;
      v36 = (v14 & 0xC000000000000001);
      v33 = v4 + 32;
      v17 = MEMORY[0x277D84F90];
      v34 = v15;
      while (1)
      {
        if (v36)
        {
          v18 = MEMORY[0x2743AB6A0](v16, v14);
        }

        else
        {
          if (v16 >= *(v35 + 16))
          {
            goto LABEL_18;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v8 = v14;
        v21 = [v18 targetUUID];
        sub_27084C73C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_27084782C(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_27084782C(v22 > 1, v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v10, v37);
        ++v16;
        v14 = v8;
        if (v20 == v34)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v15 = sub_27084CB5C();
    }

    v17 = MEMORY[0x277D84F90];
LABEL_21:

    v8 = i;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v40 = sub_27084C91C();
  if (sub_27084CA4C())
  {
    v36 = (v4 + 8);
    v24 = 4;
    v25 = 0x279E0C000uLL;
    while (1)
    {
      v26 = sub_27084CA1C();
      sub_27084C9EC();
      result = (v26 & 1) != 0 ? *(a1 + 8 * v24) : sub_27084CB0C();
      v28 = result;
      v29 = v24 - 3;
      if (__OFADD__(v24 - 4, 1))
      {
        break;
      }

      v30 = [result *(v25 + 2344)];
      sub_27084C73C();

      if (sub_270846C14(v8, v17))
      {
        (*v36)(v8, v37);
      }

      else
      {
        v38 = v28;
        v39 = v40;
        sub_27084CA5C();
        swift_getWitnessTable();
        swift_getWitnessTable();
        if (sub_27084C9AC())
        {
          (*v36)(v8, v37);
        }

        else
        {
          v39 = v28;
          sub_27084CA3C();
          (*v36)(v8, v37);
        }

        v25 = 0x279E0C000;
      }

      ++v24;
      if (v29 == sub_27084CA4C())
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:

    return v40;
  }

  return result;
}

double sub_270843D58()
{
  v0 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  sub_270847FD8(MEMORY[0x277D84F90]);
  result = 0.0;
  xmmword_28083BCE0 = 0u;
  *algn_28083BCF0 = 0u;
  *&xmmword_28083BD00 = v2;
  *(&xmmword_28083BD00 + 1) = v0;
  qword_28083BD10 = v0;
  byte_28083BD18 = 0;
  return result;
}

uint64_t static ListConceptManagerState.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_28083BBF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28083BCF0;
  v7[0] = xmmword_28083BCE0;
  v7[1] = *algn_28083BCF0;
  v2 = xmmword_28083BD00;
  v8[0] = xmmword_28083BD00;
  v3 = *(&xmmword_28083BD00 + 9);
  *(v8 + 9) = *(&xmmword_28083BD00 + 9);
  *a1 = xmmword_28083BCE0;
  a1[1] = v1;
  a1[2] = v2;
  *(a1 + 41) = v3;
  return sub_27084865C(v7, &v6);
}

double sub_270843E48()
{
  v0 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  sub_270847FD8(MEMORY[0x277D84F90]);
  result = 0.0;
  xmmword_280CF7B60 = 0u;
  *algn_280CF7B70 = 0u;
  *&xmmword_280CF7B80 = v2;
  *(&xmmword_280CF7B80 + 1) = v0;
  qword_280CF7B90 = v0;
  byte_280CF7B98 = 1;
  return result;
}

uint64_t sub_270843EA8()
{
  sub_270848694();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 40);
  sub_27084A554(0, &qword_280CF7AE8);
  sub_270848728(&qword_280CF7A28, &qword_280CF7AE8);

  sub_27084C89C();

  sub_27084A6D8(&qword_280CF7A38, sub_270848694);
  v7 = sub_27084C87C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_270844050@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  sub_27084C7EC();
  v12[0] = v9;
  v12[1] = v10;
  v13[0] = *v11;
  *(v13 + 9) = *&v11[9];
  v4 = v9;
  sub_270848778(v12);
  if (v9)
  {
    v5 = [v4 UUID];

    sub_27084C73C();
    v6 = sub_27084C74C();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_27084C74C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_270844160()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  v7[0] = v4;
  v7[1] = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  v2 = v4;
  sub_270848778(v7);
  return v4;
}

BOOL sub_2708441BC()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  v6[0] = v3;
  v6[1] = v4;
  *v7 = *v5;
  *&v7[9] = *&v5[9];
  sub_270848778(v6);
  return (v7[24] & 1) == 0;
}

uint64_t sub_27084423C()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_270844290()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2708442E4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v3);

  MEMORY[0x2743AB4F0](8285, 0xE200000000000000);
  v4 = v0[12];
  v5 = v0[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  (*(v5 + 8))(v4, v5);
  v6 = HKStringFromListUserDomainType();
  v7 = sub_27084C94C();
  v9 = v8;

  MEMORY[0x2743AB4F0](v7, v9);

  MEMORY[0x2743AB4F0](8736, 0xE200000000000000);
  v10 = v1[12];
  v11 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v10);
  v12 = (*(v11 + 16))(v10, v11);
  MEMORY[0x2743AB4F0](v12);

  MEMORY[0x2743AB4F0](34, 0xE100000000000000);
  return 91;
}

void *ListConceptManager.__allocating_init(healthStore:provider:udcChangeProvider:test_skipInitialLoad:)(void *a1, uint64_t *a2, char *a3, int a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = sub_27084988C(a1, v11, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

void *ListConceptManager.init(healthStore:provider:udcChangeProvider:test_skipInitialLoad:)(void *a1, uint64_t *a2, char *a3, int a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_270849054(a1, v14, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v16;
}

uint64_t sub_2708445D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_270844E04();
  }

  return result;
}

uint64_t sub_270844630()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_270844E04();
  }

  return result;
}

uint64_t sub_270844688(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2708446CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_27084472C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_270844764(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_270844800()
{
  v1 = sub_27084C8CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27084C8EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_270844B88();
  aBlock[4] = sub_27084A844;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270844688;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  sub_27084C8DC();
  v14[1] = MEMORY[0x277D84F90];
  sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198]);
  sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_270849A1C();
  sub_27084CACC();
  MEMORY[0x2743AB620](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t ListConceptManager.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + 32);

    v2(v5);
    sub_270849AA4(v2);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 32);
  sub_270849AA4(*(v1 + 24));
  v8 = *(v1 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 72));
  v9 = *(v1 + 112);

  v10 = *(v1 + 120);

  v11 = *(v1 + 128);

  return v1;
}

uint64_t ListConceptManager.__deallocating_deinit()
{
  ListConceptManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

id sub_270844B88()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_27084C93C();
    v4 = HKCreateSerialDispatchQueue();

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_270844C18@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_27084C8FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = sub_270844B88();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = sub_27084C90C();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (a2)
    {
      v15 = a2;

      return ListConceptManagerState.init(concepts:list:)(v15, v16, a3);
    }

    else
    {
      v17 = v4[12];
      v18 = v4[13];
      __swift_project_boxed_opaque_existential_1(v4 + 9, v17);
      v19 = (*(v18 + 8))(v17, v18);
      v20 = v4[12];
      v21 = v4[13];
      __swift_project_boxed_opaque_existential_1(v4 + 9, v20);
      v22 = (*(v21 + 16))(v20, v21);
      v24 = v23;
      v25 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      result = sub_270847FD8(a1);
      v26 = v28;
      *a3 = 0;
      *(a3 + 8) = v19;
      *(a3 + 16) = v22;
      *(a3 + 24) = v24;
      *(a3 + 32) = v26;
      *(a3 + 40) = v25;
      *(a3 + 48) = a1;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270844E04()
{
  v1 = v0;
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  sub_27084A144();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27084C8FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = sub_270844B88();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = sub_27084C90C();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = *v1;
    v37 = v7;
    v20 = v1[12];
    v21 = v1[13];
    v35 = v19;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v20);
    v22 = (*(v21 + 24))(v1[7], v20, v21);
    v38 = v1[6];
    v23 = v38;
    v39 = v22;
    v24 = sub_27084CA8C();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_27084A210();
    sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
    v36 = v8;
    sub_27084A6D8(&qword_280CF7B20, sub_27084A210);
    sub_27084A354();
    v25 = v23;
    sub_27084C8AC();
    sub_27084A3BC(v5);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v28 = v35;
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_27084A450;
    *(v30 + 24) = v29;
    sub_27084A6D8(&qword_280CF7B40, sub_27084A144);
    v31 = v37;
    v32 = sub_27084C88C();

    (*(v36 + 8))(v11, v31);
    v33 = v1[16];
    v1[16] = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2708452AC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      v3 = result;
      sub_27084CA6C();
      v4 = HKLogHealthOntology();
      sub_270849E90(0, &qword_280CF79C8, &qword_280CF79C0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_27084D3D0;
      sub_270849DF8();
      v6 = sub_27084C95C();
      v8 = v7;
      v9 = MEMORY[0x277D837D0];
      *(v5 + 56) = MEMORY[0x277D837D0];
      v10 = sub_270849E3C();
      *(v5 + 64) = v10;
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      *&v17[0] = v1;
      v11 = v1;
      sub_270849EF8(0, &qword_280CF7A50);
      v12 = sub_27084C95C();
      *(v5 + 96) = v9;
      *(v5 + 104) = v10;
      *(v5 + 72) = v12;
      *(v5 + 80) = v13;
      sub_27084C77C();

      v14 = *(v3 + 40);
      sub_270844C18(MEMORY[0x277D84F90], 0, v15);
      sub_27084C7DC();
      v17[0] = v15[0];
      v17[1] = v15[1];
      v18[0] = v16[0];
      *(v18 + 9) = *(v16 + 9);
      sub_270848778(v17);
    }
  }

  return result;
}

uint64_t sub_270845484(unint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_270845574(a2);
    if (v6)
    {
      v7 = v6;
      v8 = *(v5 + 40);
      sub_270844C18(a1, v6, v10);
      sub_27084C7DC();
    }

    else
    {
      v9 = *(v5 + 40);
      sub_270844C18(a1, 0, v10);
      sub_27084C7DC();
    }

    v12[0] = v10[0];
    v12[1] = v10[1];
    v13[0] = v11[0];
    *(v13 + 9) = *(v11 + 9);
    sub_270848778(v12);
  }

  return result;
}

void *sub_270845574(unint64_t a1)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = sub_27084CB5C();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2743AB6A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v6 = *(v2 + 32);
  }

  v1 = v6;
  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (!v3)
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v2 < 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_27084CB5C() < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = sub_27084CB5C();
LABEL_15:
  if (v7 < v4)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v5 || v4 == 1)
  {

    if (!v3)
    {
      goto LABEL_21;
    }

LABEL_24:

    v2 = sub_27084CB6C();
    v8 = v12;
    v4 = v13;
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_2708484D8(v2, v11, v8, v4);
    v4 = v14;
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);

  v9 = 1;
  do
  {
    v10 = v9 + 1;
    sub_27084CAFC();
    v9 = v10;
  }

  while (v4 != v10);
  if (v3)
  {
    goto LABEL_24;
  }

LABEL_21:
  v2 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = v2 + 32;
  v8 = 1;
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  v5 = v11;
  sub_27084CB9C();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v4 >> 1, v8))
  {
    goto LABEL_48;
  }

  if (v16 != (v4 >> 1) - v8)
  {
LABEL_49:
    swift_unknownObjectRelease();
    v11 = v5;
    goto LABEL_25;
  }

  v4 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

LABEL_33:
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_45:
    if (!sub_27084CB5C())
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(v4 + 16))
  {
LABEL_36:
    v17 = sub_2708457F4(v1, v4);

    v1 = v17;
  }

LABEL_37:

  return v1;
}

uint64_t sub_2708457F4(void *a1, unint64_t a2)
{
  v5 = sub_27084CA7C();
  v6 = HKLogHealthOntology();
  v7 = a2 >> 62;
  if (os_log_type_enabled(v6, v5))
  {
    swift_bridgeObjectRetain_n();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v8 = 136446722;
    v10 = sub_2708442E4();
    v12 = sub_270847A28(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    if (v7)
    {
      v13 = sub_27084CB5C();
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v13;

    *(v8 + 22) = 2114;
    *(v8 + 24) = a1;
    *v9 = a1;
    v14 = a1;
    _os_log_impl(&dword_270841000, v6, v5, "%{public}s merge %{public}ld duplicate lists into %{public}@", v8, 0x20u);
    sub_270849F5C(v9);
    MEMORY[0x2743ABBC0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x2743ABBC0](v38, -1, -1);
    MEMORY[0x2743ABBC0](v8, -1, -1);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  if (v7)
  {
LABEL_21:
    v15 = sub_27084CB5C();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v2;
  v16 = a1;
  a1 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    v19 = a2;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x2743AB6A0](v17, v19);
      }

      else
      {
        if (v17 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v20 = *(v19 + 8 * v17 + 32);
      }

      v21 = v20;
      v2 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v22 = [a1 copyUserDomainConceptByMergingInConcept_];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        break;
      }

      v24 = v23;

      *(v36 + 16) = v24;
      ++v17;
      a1 = v24;
      if (v2 == v15)
      {
        goto LABEL_18;
      }
    }

    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_27084CAEC();

    aBlock = 0x7420656C62616E55;
    v40 = 0xEF2074736163206FLL;
    v31 = a1;
    v32 = [v31 description];
    v33 = sub_27084C94C();
    v35 = v34;

    MEMORY[0x2743AB4F0](v33, v35);

    MEMORY[0x2743AB4F0](0xD00000000000001BLL, 0x800000027084D7E0);
    result = sub_27084CB4C();
    __break(1u);
  }

  else
  {
    v24 = v16;
LABEL_18:
    v25 = *(v37 + 64);
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    *(v26 + 24) = v36;
    v43 = sub_270849F54;
    v44 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_270845F94;
    v42 = &block_descriptor_42;
    v27 = _Block_copy(&aBlock);

    v28 = v24;

    [v25 saveOrUpdateUserDomainConcept:v28 completion:v27];
    _Block_release(v27);

    swift_beginAccess();
    v29 = *(v36 + 16);

    return v29;
  }

  return result;
}

uint64_t sub_270845C70(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27084C74C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v13 = sub_27084CA6C();
    v14 = HKLogHealthOntology();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v15 = 136446722;
      v32 = v13;
      v16 = sub_2708442E4();
      v18 = sub_270847A28(v16, v17, v35);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      swift_beginAccess();
      v19 = [*(a4 + 16) UUID];
      sub_27084C73C();

      sub_27084A6D8(&qword_28083BD38, MEMORY[0x277CC95F0]);
      v20 = sub_27084CB7C();
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      v23 = sub_270847A28(v20, v22, v35);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2082;
      v34 = a2;
      v24 = a2;
      sub_270849E90(0, &qword_28083BD20, &qword_280CF7A50, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
      v25 = sub_27084C95C();
      v27 = sub_270847A28(v25, v26, v35);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_270841000, v14, v32, "%{public}s error persisting merged list %{public}s: %{public}s", v15, 0x20u);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x2743ABBC0](v28, -1, -1);
      MEMORY[0x2743ABBC0](v15, -1, -1);
    }
  }

  swift_beginAccess();
  v29 = *(a3 + 16);
  LOBYTE(v34) = 1;

  sub_27084C7DC();
}

void sub_270845F94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_27084600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = v4[8];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v9;
  v12[6] = v11;
  v15[4] = sub_270849DE8;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_270845F94;
  v15[3] = &block_descriptor_30;
  v13 = _Block_copy(v15);

  sub_270849AC4(a2);

  [v10 saveOrUpdateUserDomainConcept:a1 completion:v13];
  _Block_release(v13);
}

uint64_t sub_270846198(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v12 = sub_27084C8CC();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27084C8EC();
  v39 = *(v41 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v36 = sub_27084CA6C();
    v35 = HKLogHealthOntology();
    sub_270849E90(0, &qword_280CF79C8, &qword_280CF79C0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    v37 = a5;
    v18 = v17;
    *(v17 + 16) = xmmword_27084D3D0;
    aBlock[0] = a3;
    sub_270849DF8();
    v19 = sub_27084C95C();
    v21 = v20;
    v18[7] = MEMORY[0x277D837D0];
    v22 = sub_270849E3C();
    v18[8] = v22;
    v18[4] = v19;
    v18[5] = v21;
    aBlock[0] = a2;
    v23 = a2;
    sub_270849E90(0, &qword_28083BD20, &qword_280CF7A50, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v24 = sub_27084C95C();
    v18[12] = MEMORY[0x277D837D0];
    v18[13] = v22;
    v18[9] = v24;
    v18[10] = v25;
    v26 = v35;
    sub_27084C77C();
  }

  if (a4)
  {
    a4(a1 & 1);
  }

  swift_beginAccess();
  v27 = *(a6 + 16);
  swift_beginAccess();
  *(a6 + 16) = 0;

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = sub_270844B88();
    aBlock[4] = sub_27084A844;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_270844688;
    aBlock[3] = &block_descriptor_33;
    v31 = _Block_copy(aBlock);

    v32 = v38;
    sub_27084C8DC();
    v43 = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v33 = v40;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v32, v33, v31);
    _Block_release(v31);

    (*(v42 + 8))(v33, v12);
    (*(v39 + 8))(v32, v41);
  }

  return result;
}

uint64_t sub_270846654(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_27084C8CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_27084C8EC();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v26[0] = *a1;
  v26[1] = v16;
  v27[0] = a1[2];
  *(v27 + 9) = *(a1 + 41);
  v17 = sub_270844B88();
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 24) = *a1;
  *(v18 + 16) = v3;
  *(v18 + 40) = v19;
  *(v18 + 56) = a1[2];
  *(v18 + 65) = *(a1 + 41);
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  aBlock[4] = sub_270849AB4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270844688;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);

  sub_27084865C(v26, v24);
  sub_270849AC4(a2);
  sub_27084C8DC();
  v24[0] = MEMORY[0x277D84F90];
  sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198]);
  sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_270849A1C();
  sub_27084CACC();
  MEMORY[0x2743AB620](0, v15, v11, v20);
  _Block_release(v20);

  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v23);
}

void sub_270846984(uint64_t a1, void **a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(a1 + 40);
  sub_27084C7EC();
  v23[0] = v20;
  v23[1] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  v8 = v20;
  sub_270848778(v23);
  v9 = *a2;
  if (v20)
  {
    if (!v9)
    {
LABEL_13:
      if (a3)
      {
        a3(1);
      }

      return;
    }

    v10 = v9;
    v11 = [v10 linkCollection];
    v12 = [v8 linkCollection];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_27084A62C(0, &qword_28083BD40, 0x277CCDB08);
        v14 = sub_27084CAAC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      v13 = v11;
    }

    else if (!v12)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_21:
    v19 = [v8 copyUserDomainConceptByMergingInConcept_];
    sub_27084600C(v19, a3, a4);

    return;
  }

  if (v9)
  {
    v15 = v9;
    v16 = [v15 linkCollection];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 count];

      if (v18 >= 1)
      {
        sub_27084600C(v15, a3, a4);

        return;
      }
    }
  }

  if (a3)
  {
    a3(1);
  }
}

uint64_t ListConceptManager.contains(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_27084C7EC();
  v11[1] = v9;
  v12[0] = v10[0];
  *(v12 + 9) = *(v10 + 9);
  v11[0] = v8;
  v4 = *(&v12[0] + 1);

  sub_270848778(v11);
  v7 = a1;
  v6[2] = &v7;
  LOBYTE(a1) = sub_270848208(sub_270849AD4, v6, v4);

  return a1 & 1;
}

BOOL sub_270846C14(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_27084C74C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_27084A6D8(&qword_280CF7A48, MEMORY[0x277CC95F0]);
  }

  while ((sub_27084C92C() & 1) == 0);
  return v4 != v5;
}

BOOL ListConceptManager.isListItemsEmpty.getter()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  v8[0] = v5;
  v2 = *(&v9[0] + 1);

  sub_270848778(v8);
  if (v2 >> 62)
  {
    v3 = sub_27084CB5C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 0;
}

BOOL ListConceptManager.isNonlistItemsEmpty.getter()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  *&v9[9] = *&v7[9];
  v8[0] = v5;
  v8[1] = v6;
  *v9 = *v7;
  v2 = *&v7[9] >> 56;

  sub_270848778(v8);
  if (v2 >> 62)
  {
    v3 = sub_27084CB5C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 0;
}

BOOL ListConceptManager.hasNoItems.getter()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  v13[1] = v11;
  v14[0] = *v12;
  *(v14 + 9) = *&v12[9];
  v13[0] = v10;
  v2 = *(&v14[0] + 1);

  sub_270848778(v13);
  if (v2 >> 62)
  {
    v3 = sub_27084CB5C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    return 0;
  }

  sub_27084C7EC();
  *&v12[9] = *&v9[9];
  v10 = v7;
  v11 = v8;
  *v12 = *v9;
  v5 = *&v9[9] >> 56;

  sub_270848778(&v10);
  if (v5 >> 62)
  {
    v6 = sub_27084CB5C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

uint64_t ListConceptManager.listElements.getter()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  v7[1] = v5;
  v8[0] = *v6;
  *(v8 + 9) = *&v6[9];
  v7[0] = v4;
  v2 = *(&v8[0] + 1);

  sub_270848778(v7);
  return v2;
}

uint64_t ListConceptManager.nonListElements.getter()
{
  v1 = *(v0 + 40);
  sub_27084C7EC();
  *&v7[9] = *&v5[9];
  v6[0] = v3;
  v6[1] = v4;
  *v7 = *v5;

  sub_270848778(v6);
  return *&v5[9] >> 56;
}

void *static ListConceptManager.pinnedLabs(for:udcChangeProvider:)(void *a1, void *a2)
{
  v4 = HKStringFromListUserDomainType();
  v5 = sub_27084C94C();
  v7 = v6;

  type metadata accessor for ListConceptManager();
  v8 = swift_allocObject();
  v9 = a1;
  v10 = a2;

  return sub_27084883C(v9, 1, v5, v7, v10, 0, v8);
}

void *sub_2708470B8(void *a1, unint64_t a2)
{
  v4 = v2;
  v31 = a1;
  v30 = sub_27084C74C();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v23 - v10;
  if (a2 >> 62)
  {
LABEL_15:
    v11 = sub_27084CB5C();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v23 = v4;
      v24 = a2;
      v12 = 0;
      v26 = a2 & 0xFFFFFFFFFFFFFF8;
      v27 = a2 & 0xC000000000000001;
      v25 = v6 + 8;
      v6 += 8;
      while (1)
      {
        if (v27)
        {
          v13 = MEMORY[0x2743AB6A0](v12, a2);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_12:
            __break(1u);
            return v3;
          }
        }

        else
        {
          if (v12 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v13 = *(a2 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_12;
          }
        }

        v3 = v13;
        v15 = [v13 UUID];
        v16 = v28;
        sub_27084C73C();

        v17 = [v31 targetUUID];
        v18 = v29;
        sub_27084C73C();

        v4 = sub_27084C72C();
        v19 = *v6;
        v20 = v18;
        v21 = v30;
        (*v6)(v20, v30);
        v19(v16, v21);
        if (v4)
        {
          return v3;
        }

        ++v12;
        a2 = v24;
        if (v14 == v11)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_270847310(uint64_t *a1)
{
  v2 = *a1;
  sub_27084CA5C();
  swift_getWitnessTable();
  return sub_27084C99C();
}

uint64_t sub_2708473AC(id *a1, void *a2)
{
  v4 = sub_27084C74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = [*a1 UUID];
  sub_27084C73C();

  v13 = [a2 targetUUID];
  sub_27084C73C();

  LOBYTE(v13) = sub_27084C72C();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  return v13 & 1;
}

uint64_t ListConceptManagerState.state(byMoving:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3[1];
  *v12 = *v3;
  v13 = v5;
  v14[0] = v3[2];
  *(v14 + 9) = *(v3 + 41);
  if (a1 != a2 && v12[0] && (v6 = [v12[0] listByMovingUserDomainConceptFromIndex:a1 toIndex:a2]) != 0)
  {
    v7 = v6;

    return ListConceptManagerState.init(concepts:list:)(v7, v8, a3);
  }

  else
  {
    v10 = v3[1];
    *a3 = *v3;
    a3[1] = v10;
    a3[2] = v3[2];
    *(a3 + 41) = *(v3 + 41);
    return sub_27084865C(v12, &v11);
  }
}

uint64_t ListConceptManagerState.state(byRemoving:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return sub_270847608(a1, &selRef_listByRemovingUserDomainConcept_, a2);
}

{
  return sub_270847608(a1, &selRef_listByRemovingUserDomainConceptAtIndex_, a2);
}

uint64_t sub_270847608@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3[1];
  *v12 = *v3;
  v13 = v5;
  v14[0] = v3[2];
  *(v14 + 9) = *(v3 + 41);
  if (v12[0] && (v6 = [v12[0] *a2]) != 0)
  {
    v7 = v6;

    return ListConceptManagerState.init(concepts:list:)(v7, v8, a3);
  }

  else
  {
    v10 = v3[1];
    *a3 = *v3;
    a3[1] = v10;
    a3[2] = v3[2];
    *(a3 + 41) = *(v3 + 41);
    return sub_27084865C(v12, &v11);
  }
}

uint64_t ListConceptManagerState.state(byAdding:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (!*v2 || (v9 = [*v2 listByAddingUserDomainConcept_]) == 0)
  {
    if (v7)
    {
      v10 = sub_27084C93C();
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_allocWithZone(MEMORY[0x277CCD580]) initWithListType:v5 listName:v10];

    v9 = [v11 listByAddingUserDomainConcept_];
  }

  v12 = a1;
  MEMORY[0x2743AB540]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_27084C9FC();
  }

  sub_27084CA2C();

  return ListConceptManagerState.init(concepts:list:)(v9, v8, a2);
}

size_t sub_27084782C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2708499B8(0, &qword_280CF79D0, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v10 = *(sub_27084C74C() - 8);
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
  v15 = *(sub_27084C74C() - 8);
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

uint64_t sub_270847A28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270847AF4(v11, 0, 0, 1, a1, a2);
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
    sub_27084A098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_270847AF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_270847C00(a5, a6);
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
    result = sub_27084CB3C();
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

uint64_t sub_270847C00(uint64_t a1, unint64_t a2)
{
  v4 = sub_270847C4C(a1, a2);
  sub_270847D7C(&unk_2880890D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_270847C4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_270847E68(v5, 0);
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

  result = sub_27084CB3C();
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
        v10 = sub_27084C97C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270847E68(v10, 0);
        result = sub_27084CADC();
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

uint64_t sub_270847D7C(uint64_t result)
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

  result = sub_270847EE0(result, v12, 1, v3);
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

void *sub_270847E68(uint64_t a1, uint64_t a2)
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

  sub_27084A0F8(0, &qword_28083BD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270847EE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_27084A0F8(0, &qword_28083BD30);
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

uint64_t sub_270847FD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_27084CB5C();
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

  v15 = sub_27084CB5C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_270848168(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_270848330(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_2708480C8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  return sub_270847310(a1);
}

unint64_t sub_2708480E4()
{
  result = qword_280CF7A00;
  if (!qword_280CF7A00)
  {
    sub_270849FE4(255, &qword_280CF7A08, &unk_280CF79E0, 0x277CCDB00, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A00);
  }

  return result;
}

uint64_t sub_270848168(uint64_t a1)
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
    sub_27084CB5C();
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
  result = sub_27084CB2C();
  *v1 = result;
  return result;
}

uint64_t sub_270848208(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2743AB6A0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_27084CB5C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_270848330(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_27084CB5C();
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
      result = sub_27084CB5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270849FE4(0, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
          sub_27084A740();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2708485D4(v13, i, a3);
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
        sub_27084A62C(0, &qword_280CF7A68, 0x277CCDAF0);
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

void sub_2708484D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_27084A0F8(0, &qword_280CF7A58);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void (*sub_2708485D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743AB6A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_270848654;
  }

  __break(1u);
  return result;
}

void sub_270848694()
{
  if (!qword_280CF7A30)
  {
    sub_27084A554(255, &qword_280CF7AE8);
    sub_270848728(&qword_280CF7A28, &qword_280CF7AE8);
    v0 = sub_27084C7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7A30);
    }
  }
}

uint64_t sub_270848728(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_27084A554(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_27084883C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, void *a7)
{
  v59 = a6;
  v56 = sub_27084C8CC();
  v55 = *(v56 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_27084C8EC();
  v52 = *(v54 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v51 - v19;
  sub_27084A488();
  v57 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = &type metadata for LabsListDataProvider;
  v65[4] = &off_2880896D8;
  v65[0] = a2;
  v65[1] = a3;
  v65[2] = a4;
  LOBYTE(v66[0]) = 0;
  sub_27084A554(0, &qword_280CF7AE0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_27084C81C();
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = v29;
  if (qword_280CF7B58 != -1)
  {
    swift_once();
  }

  v66[0] = xmmword_280CF7B60;
  v66[1] = *algn_280CF7B70;
  *v67 = xmmword_280CF7B80;
  *&v67[9] = *(&xmmword_280CF7B80 + 9);
  aBlock = xmmword_280CF7B60;
  v63 = *algn_280CF7B70;
  v64[0] = xmmword_280CF7B80;
  *(v64 + 9) = *(&xmmword_280CF7B80 + 9);
  sub_27084A554(0, &qword_280CF7AE8);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_27084865C(v66, v61);
  a7[5] = sub_27084C81C();
  a7[6] = 0;
  a7[15] = 0;
  a7[16] = 0;
  a7[14] = 0;
  a7[7] = a1;
  v33 = objc_allocWithZone(MEMORY[0x277CCDB48]);
  v58 = a1;
  a7[8] = [v33 initWithHealthStore_];
  sub_27084A5B4(v65, (a7 + 9));
  v60 = a5;
  *&aBlock = *&a5[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject];

  v34 = sub_270844B88();
  v61[0] = v34;
  v35 = sub_27084CA8C();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  sub_27084A554(0, &qword_280CF7DC8);
  sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
  sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8);
  sub_27084A354();
  sub_27084C8AC();
  sub_27084A3BC(v20);

  swift_allocObject();
  swift_weakInit();
  sub_27084A6D8(&qword_280CF7B30, sub_27084A488);

  v36 = v57;
  v37 = sub_27084C8BC();

  (*(v22 + 8))(v25, v36);
  v38 = a7[15];
  a7[15] = v37;

  v39 = *MEMORY[0x277CCC8F0];
  sub_27084C76C();
  v40 = a7[6];
  swift_allocObject();
  swift_weakInit();
  v41 = v40;

  v42 = sub_27084C75C();
  v43 = a7[14];
  a7[14] = v42;

  if (v59 == 2 || (v59 & 1) == 0)
  {
    v44 = a7[6];
    *&v64[0] = sub_27084A628;
    *(&v64[0] + 1) = a7;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v63 = sub_270844688;
    *(&v63 + 1) = &block_descriptor_55;
    v45 = _Block_copy(&aBlock);

    v46 = v44;
    v47 = v51;
    sub_27084C8DC();
    v61[0] = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v48 = v53;
    v49 = v56;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v47, v48, v45);
    _Block_release(v45);

    (*(v55 + 8))(v48, v49);
    (*(v52 + 8))(v47, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  return a7;
}

void *sub_270849054(void *a1, uint64_t a2, char *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v60 = a4;
  v57 = sub_27084C8CC();
  v56 = *(v57 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_27084C8EC();
  v53 = *(v55 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  sub_27084A488();
  v58 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[3] = a6;
  v66[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  LOBYTE(v67[0]) = 0;
  sub_27084A554(0, &qword_280CF7AE0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_27084C81C();
  a5[3] = 0;
  a5[4] = 0;
  a5[2] = v30;
  if (qword_280CF7B58 != -1)
  {
    swift_once();
  }

  v67[0] = xmmword_280CF7B60;
  v67[1] = *algn_280CF7B70;
  *v68 = xmmword_280CF7B80;
  *&v68[9] = *(&xmmword_280CF7B80 + 9);
  aBlock = xmmword_280CF7B60;
  v64 = *algn_280CF7B70;
  v65[0] = xmmword_280CF7B80;
  *(v65 + 9) = *(&xmmword_280CF7B80 + 9);
  sub_27084A554(0, &qword_280CF7AE8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_27084865C(v67, v62);
  a5[5] = sub_27084C81C();
  a5[6] = 0;
  a5[15] = 0;
  a5[16] = 0;
  a5[14] = 0;
  a5[7] = a1;
  v34 = objc_allocWithZone(MEMORY[0x277CCDB48]);
  v59 = a1;
  a5[8] = [v34 initWithHealthStore_];
  sub_27084A5B4(v66, (a5 + 9));
  v61 = a3;
  *&aBlock = *&a3[OBJC_IVAR____TtC25UserDomainConceptsSupport31UserDomainConceptChangeProvider_udcChangesSubject];

  v35 = sub_270844B88();
  v62[0] = v35;
  v36 = sub_27084CA8C();
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  sub_27084A554(0, &qword_280CF7DC8);
  sub_27084A62C(0, &qword_280CF7A70, 0x277D85C78);
  sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8);
  sub_27084A354();
  sub_27084C8AC();
  sub_27084A3BC(v20);

  swift_allocObject();
  swift_weakInit();
  sub_27084A6D8(&qword_280CF7B30, sub_27084A488);

  v37 = v58;
  v38 = sub_27084C8BC();

  (*(v22 + 8))(v25, v37);
  v39 = a5[15];
  a5[15] = v38;

  v40 = *MEMORY[0x277CCC8F0];
  sub_27084C76C();
  v41 = a5[6];
  swift_allocObject();
  swift_weakInit();
  v42 = v41;

  v43 = sub_27084C75C();
  v44 = a5[14];
  a5[14] = v43;

  if (v60 == 2 || (v60 & 1) == 0)
  {
    v45 = a5[6];
    *&v65[0] = sub_27084A844;
    *(&v65[0] + 1) = a5;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v64 = sub_270844688;
    *(&v64 + 1) = &block_descriptor_63;
    v46 = _Block_copy(&aBlock);

    v47 = v45;
    v48 = v52;
    sub_27084C8DC();
    v62[0] = MEMORY[0x277D84F90];
    sub_27084A6D8(&qword_280CF7AB8, MEMORY[0x277D85198]);
    sub_2708499B8(0, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_270849A1C();
    v49 = v54;
    v50 = v57;
    sub_27084CACC();
    MEMORY[0x2743AB620](0, v48, v49, v46);
    _Block_release(v46);

    (*(v56 + 8))(v49, v50);
    (*(v53 + 8))(v48, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  return a5;
}

void *sub_27084988C(void *a1, uint64_t a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListConceptManager();
  v17 = swift_allocObject();
  (*(v13 + 16))(v16, a2, a6);
  return sub_270849054(a1, v16, a3, a4, v17, a6, a7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2708499B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_270849A1C()
{
  result = qword_280CF7AA8;
  if (!qword_280CF7AA8)
  {
    sub_2708499B8(255, &qword_280CF7AB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7AA8);
  }

  return result;
}

uint64_t sub_270849AA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_270849AC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_270849B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270849B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_270849DF8()
{
  result = qword_280CF7A40;
  if (!qword_280CF7A40)
  {
    type metadata accessor for ListConceptManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280CF7A40);
  }

  return result;
}

unint64_t sub_270849E3C()
{
  result = qword_280CF7A10;
  if (!qword_280CF7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A10);
  }

  return result;
}

void sub_270849E90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_270849EF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_270849EF8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_270849F5C(uint64_t a1)
{
  sub_270849FE4(0, &qword_28083BD28, &qword_280CF79D8, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_270849FE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_27084A62C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_27084A098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_27084A0F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27084CB8C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_27084A144()
{
  if (!qword_280CF7B38)
  {
    sub_27084A210();
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    sub_27084A6D8(&qword_280CF7B20, sub_27084A210);
    sub_27084A354();
    v0 = sub_27084C7BC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7B38);
    }
  }
}

void sub_27084A210()
{
  if (!qword_280CF7B18)
  {
    sub_27084A290();
    sub_270849EF8(255, &qword_280CF7A50);
    v0 = sub_27084C7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7B18);
    }
  }
}

void sub_27084A290()
{
  if (!qword_280CF7A98)
  {
    v0 = MEMORY[0x277D83940];
    sub_270849FE4(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    sub_270849FE4(255, &qword_280CF7A90, &qword_280CF7A60, 0x277CCD580, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280CF7A98);
    }
  }
}

unint64_t sub_27084A354()
{
  result = qword_280CF7A78;
  if (!qword_280CF7A78)
  {
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF7A78);
  }

  return result;
}

uint64_t sub_27084A3BC(uint64_t a1)
{
  sub_2708499B8(0, &qword_280CF7A80, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27084A448(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2708452AC(a1);
}

uint64_t sub_27084A458(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_27084A488()
{
  if (!qword_280CF7B28)
  {
    sub_27084A554(255, &qword_280CF7DC8);
    sub_27084A62C(255, &qword_280CF7A70, 0x277D85C78);
    sub_270848728(&qword_280CF7AF0, &qword_280CF7DC8);
    sub_27084A354();
    v0 = sub_27084C7BC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7B28);
    }
  }
}

void sub_27084A554(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27084C80C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_27084A5B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_27084A62C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27084A6D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27084A740()
{
  result = qword_28083BD48;
  if (!qword_28083BD48)
  {
    sub_270849FE4(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083BD48);
  }

  return result;
}

uint64_t sub_27084A7C4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_27084A62C(0, &qword_280CF7A68, 0x277CCDAF0);
  return sub_27084CAAC() & 1;
}

uint64_t static HKHealthStore.makeConceptPublisher<A>(with:entity:predicate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_27084CA5C();
  sub_27084A984();
  sub_27084C82C();
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a3;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  sub_27084C83C();
  swift_getWitnessTable();
  v10 = sub_27084C87C();

  return v10;
}

unint64_t sub_27084A984()
{
  result = qword_280CF7A50;
  if (!qword_280CF7A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280CF7A50);
  }

  return result;
}

void sub_27084A9E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  sub_27084BD08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_27084D4E0;
  v11 = *MEMORY[0x277CCCE70];
  sub_27084C94C();
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v13 = sub_27084C93C();

  v14 = [v12 initWithKey:v13 ascending:0];

  *(v10 + 32) = v14;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = sub_27084C728;
  v15[4] = v8;
  v15[5] = v9;
  v16 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v17 = a4;

  v18 = sub_27084C9CC();

  v28 = sub_27084BD5C;
  v29 = v15;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_27084BDCC;
  v27 = &block_descriptor_0;
  v19 = _Block_copy(&v24);
  v20 = [v16 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  v24 = 0;
  v25 = 0xE000000000000000;
  v21 = v20;
  sub_27084CAEC();

  v24 = 0xD000000000000011;
  v25 = 0x800000027084D8A0;
  sub_27084A62C(0, &qword_280CF7A60, 0x277CCD580);
  v22 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v22);

  v23 = sub_27084C93C();

  [v21 setDebugIdentifier_];

  [v17 executeQuery_];
}

void sub_27084ACF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  sub_27084BD08();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_27084D4E0;
  v11 = *MEMORY[0x277CCCE70];
  sub_27084C94C();
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v13 = sub_27084C93C();

  v14 = [v12 initWithKey:v13 ascending:0];

  *(v10 + 32) = v14;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = sub_27084C654;
  v15[4] = v8;
  v15[5] = v9;
  v16 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v17 = a4;

  v18 = sub_27084C9CC();

  v28 = sub_27084C6E0;
  v29 = v15;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_27084BDCC;
  v27 = &block_descriptor_46;
  v19 = _Block_copy(&v24);
  v20 = [v16 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  v24 = 0;
  v25 = 0xE000000000000000;
  v21 = v20;
  sub_27084CAEC();

  v24 = 0xD000000000000011;
  v25 = 0x800000027084D8A0;
  sub_27084A62C(0, &qword_280CF7A68, 0x277CCDAF0);
  v22 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v22);

  v23 = sub_27084C93C();

  [v21 setDebugIdentifier_];

  [v17 executeQuery_];
}

void sub_27084B008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();

  *(v11 + 16) = sub_27084C91C();
  sub_27084BD08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27084D4E0;
  v13 = *MEMORY[0x277CCCE70];
  sub_27084C94C();
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_27084C93C();

  v16 = [v14 initWithKey:v15 ascending:0];

  *(v12 + 32) = v16;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a4;
  v17[4] = sub_27084BEB0;
  v17[5] = v10;
  v17[6] = v11;
  v18 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  sub_27084A62C(0, &qword_280CF7A88, 0x277CCAC98);
  v19 = a4;

  v20 = sub_27084C9CC();

  v30 = sub_27084BEF0;
  v31 = v17;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_27084BDCC;
  v29 = &block_descriptor_27;
  v21 = _Block_copy(&v26);
  v22 = [v18 initWithPredicate:a3 anchor:0 limit:0 sortDescriptors:v20 resultsHandler:v21];

  _Block_release(v21);

  v26 = 0;
  v27 = 0xE000000000000000;
  v23 = v22;
  sub_27084CAEC();

  v26 = 0xD000000000000011;
  v27 = 0x800000027084D8A0;
  v24 = sub_27084CBAC();
  MEMORY[0x2743AB4F0](v24);

  v25 = sub_27084C93C();

  [v23 setDebugIdentifier_];

  [v19 executeQuery_];
}

uint64_t sub_27084B31C(uint64_t a1, void *a2, int a3, char a4, uint64_t a5, id a6, uint64_t (*a7)(uint64_t, uint64_t), int a8, uint64_t a9, uint64_t *a10)
{
  if (a5)
  {
    [a6 stopQuery_];
    return a7(a5, 1);
  }

  else
  {
    v17 = *a10;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      swift_beginAccess();
      MEMORY[0x2743AB540](a2);
      if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_27084C9FC();
      }

      sub_27084CA2C();
      result = swift_endAccess();
    }

    if (a4)
    {
      [a6 stopQuery_];
      swift_beginAccess();
      v18 = *(a9 + 16);

      a7(v19, 0);
    }
  }

  return result;
}

id sub_27084B484(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a2;
  v16 = sub_27084CABC();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = *(*(a10 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v29 = &v40 - v28;
  if (a5)
  {
    [a6 stopQuery_];
    return a7(a5, 1);
  }

  else
  {
    v41 = v27;
    v42 = v25;
    v44 = a1;
    v45 = a6;
    v43 = a8;
    v31 = v46;
    v47 = v46;
    v32 = v26;
    sub_27084BF20(0, &qword_280CF79F8, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83D88]);
    v33 = v31;
    v34 = swift_dynamicCast();
    v35 = *(v32 + 56);
    if (v34)
    {
      v35(v20, 0, 1, a10);
      (*(v32 + 32))(v29, v20, a10);
      (*(v32 + 16))(v24, v29, a10);
      swift_beginAccess();
      sub_27084CA5C();
      v36 = a9;
      sub_27084CA3C();
      swift_endAccess();
      (*(v32 + 8))(v29, a10);
    }

    else
    {
      v36 = a9;
      v35(v20, 1, 1, a10);
      (*(v41 + 8))(v20, v42);
    }

    v37 = a7;
    result = v45;
    if (a4)
    {
      [v45 stopQuery_];
      swift_beginAccess();
      v38 = *(v36 + 16);

      v37(v39, 0);
    }
  }

  return result;
}

uint64_t HKHealthStore.makeUDCListsPublisher(for:)(uint64_t a1)
{
  sub_27084B98C();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v1;
  v10 = MEMORY[0x277CBCD88];
  sub_27084BC20(0, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
  sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v10);
  v11 = v1;
  sub_27084C85C();
  sub_27084BB94(&qword_280CF7A20, sub_27084B98C);
  v12 = sub_27084C87C();
  (*(v5 + 8))(v8, v4);
  return v12;
}

void sub_27084B98C()
{
  if (!qword_280CF7A18)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_27084BC20(255, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
    sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v0);
    v1 = sub_27084C86C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF7A18);
    }
  }
}

void sub_27084BA40(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [objc_opt_self() predicateForListUserDomainConceptWithListType_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_27084BC20(0, &qword_280CF7AC0, MEMORY[0x277CBCEA8]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v5;
  v12 = a2;
  sub_27084C84C();
  sub_27084BCC4(&qword_280CF7AC8, &qword_280CF7AC0, v7);
  v13 = sub_27084C87C();

  *a3 = v13;
}

uint64_t sub_27084BB94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27084BC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_27084BF20(255, &qword_280CF7A90, &qword_280CF7A60, 0x277CCD580, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_27084A984();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27084BCC4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_27084BC20(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27084BD08()
{
  if (!qword_280CF7A58)
  {
    v0 = sub_27084CB8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF7A58);
    }
  }
}

uint64_t sub_27084BD98()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_27084BDCC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v16 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v12(v16, a3, a4, a5, a6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27084BEB0(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void sub_27084BF20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_27084A62C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27084BF9C(uint64_t a1, int a2)
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

uint64_t sub_27084BFE4(uint64_t result, int a2, int a3)
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

uint64_t sub_27084C034(void *a1)
{
  sub_27084C444();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 predicateForMedicalUserDomainConceptWithCategoryType_];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = MEMORY[0x277CBCEA8];
  sub_27084C564(0, &qword_280CF7AD0, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v7;
  v14 = a1;
  v36 = sub_27084C84C();
  sub_27084C610(&qword_280CF7AD8, &qword_280CF7AD0, v9);
  v15 = sub_27084C87C();

  v16 = [v6 predicateForListUserDomainConceptWithListType_];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v18 = MEMORY[0x277CBCEA8];
  sub_27084BC20(0, &qword_280CF7AC0, MEMORY[0x277CBCEA8]);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v14;
  v23 = v16;
  v36 = sub_27084C84C();
  sub_27084BCC4(&qword_280CF7AC8, &qword_280CF7AC0, v18);
  v24 = sub_27084C87C();

  v35 = v24;
  v36 = v15;
  v25 = MEMORY[0x277CBCD88];
  sub_27084C564(0, &qword_280CF7B08, MEMORY[0x277CBCD88]);
  v26 = MEMORY[0x277CBCD88];
  sub_27084BC20(0, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
  sub_27084C610(&qword_280CF7B10, &qword_280CF7B08, v25);
  sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v26);

  v27 = v32;
  sub_27084C79C();
  sub_27084BB94(&qword_280CF7B50, sub_27084C444);
  v28 = v33;
  v29 = sub_27084C87C();

  (*(v34 + 8))(v27, v28);
  return v29;
}

void sub_27084C444()
{
  if (!qword_280CF7B48)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_27084C564(255, &qword_280CF7B08, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CBCD88];
    sub_27084BC20(255, &qword_280CF7AF8, MEMORY[0x277CBCD88]);
    sub_27084C610(&qword_280CF7B10, &qword_280CF7B08, v0);
    sub_27084BCC4(&qword_280CF7B00, &qword_280CF7AF8, v1);
    v2 = sub_27084C78C();
    if (!v3)
    {
      atomic_store(v2, &qword_280CF7B48);
    }
  }
}

void sub_27084C564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_27084BF20(255, &qword_280CF7AA0, &qword_280CF7A68, 0x277CCDAF0, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_27084A984();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27084C610(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_27084C564(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27084C658(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}