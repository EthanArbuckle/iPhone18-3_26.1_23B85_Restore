uint64_t sub_21BA6C1A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s9EventDataO16DidRenderElementV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9EventDataO16DidRenderElementV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BA6C360()
{
  result = qword_27CDAFBA0[0];
  if (!qword_27CDAFBA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAFBA0);
  }

  return result;
}

unint64_t sub_21BA6C3B8()
{
  result = qword_27CDAFCB0;
  if (!qword_27CDAFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDAFCB0);
  }

  return result;
}

unint64_t sub_21BA6C410()
{
  result = qword_27CDAFCB8[0];
  if (!qword_27CDAFCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAFCB8);
  }

  return result;
}

uint64_t sub_21BA6C464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (sub_21BA8899C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_21BA8899C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (sub_21BA8899C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E74736F486C7275 && a2 == 0xEB00000000656D61 || (sub_21BA8899C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687461506C7275 && a2 == 0xE700000000000000 || (sub_21BA8899C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v6 = sub_21BA8899C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_21BA6C68C()
{
  result = qword_27CDAFD40[0];
  if (!qword_27CDAFD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAFD40);
  }

  return result;
}

uint64_t sub_21BA6C700(void (*a1)(void))
{
  a1();
  sub_21BA86EAC();
  return v2;
}

uint64_t type metadata accessor for SwiftUIContentView.ContentLoader()
{
  result = qword_27CDB03F0;
  if (!qword_27CDB03F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BA6C824()
{
  result = qword_27CD9E498;
  if (!qword_27CD9E498)
  {
    type metadata accessor for SwiftUIContentView.ContentLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E498);
  }

  return result;
}

uint64_t sub_21BA6C87C@<X0>(uint64_t a1@<X8>)
{
  *&v29 = a1;
  v1 = sub_21BA86F2C();
  MEMORY[0x28223BE20](v1 - 8);
  v25[1] = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9C0);
  MEMORY[0x28223BE20](v26);
  *&v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9C8);
  MEMORY[0x28223BE20](v4);
  v6 = (v25 - v5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D0);
  MEMORY[0x28223BE20](v27);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E120);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA6C824();
  v13 = sub_21BA86A8C();
  v14 = (*(*v13 + 88))(v13);

  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      if ([objc_opt_self() isInternalBuild])
      {
        sub_21BA86F1C();
        sub_21BA86F0C();
        *&v33 = v14 & 0x3FFFFFFFFFFFFFFFLL;
        v15 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
        sub_21BA87D4C();
        sub_21BA86EFC();

        sub_21BA86F0C();
        sub_21BA86F4C();
        *&v30 = sub_21BA8765C();
        *(&v30 + 1) = v16;
        *&v31 = v17 & 1;
        *(&v31 + 1) = v18;
        v32 = 0;
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
        v32 = 1;
      }

      sub_21BA8715C();
      v20 = v34;
      v21 = v35;
      v22 = v28;
      v28 = v33;
      v29 = v34;
      *v22 = v33;
      *(v22 + 16) = v20;
      *(v22 + 32) = v21;
      swift_storeEnumTagMultiPayload();
      v23 = v28;
      v24 = v29;
      sub_21BA6CED0(v28, *(&v28 + 1), v29, *(&v29 + 1), v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D8);
      sub_21BA6CF14();
      sub_21BA6CFCC();
      sub_21BA8715C();
      sub_21BA6D050(v14);
      return sub_21BA6D070(v23, *(&v23 + 1), v24, *(&v24 + 1), v21);
    }

    else
    {
      sub_21BA86AAC();
      (*(v10 + 16))(v6, v12, v9);
      swift_storeEnumTagMultiPayload();
      sub_21B9B35B8(&qword_27CD9CEC8, &qword_27CD9E120);
      sub_21BA8715C();
      sub_21BA6D0B4(v8, v28);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D8);
      sub_21BA6CF14();
      sub_21BA6CFCC();
      sub_21BA8715C();
      sub_21BA6D124(v8);
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    *v6 = v14;
    swift_storeEnumTagMultiPayload();
    sub_21B9B35B8(&qword_27CD9CEC8, &qword_27CD9E120);

    sub_21BA8715C();
    sub_21BA6D0B4(v8, v28);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D8);
    sub_21BA6CF14();
    sub_21BA6CFCC();
    sub_21BA8715C();
    sub_21BA6D050(v14);
    return sub_21BA6D124(v8);
  }
}

uint64_t sub_21BA6CED0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_21B9C320C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21BA6CF14()
{
  result = qword_27CD9F9E0;
  if (!qword_27CD9F9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F9D0);
    sub_21B9B35B8(&qword_27CD9CEC8, &qword_27CD9E120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F9E0);
  }

  return result;
}

unint64_t sub_21BA6CFCC()
{
  result = qword_27CD9F9E8;
  if (!qword_27CD9F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F9E8);
  }

  return result;
}

void sub_21BA6D050(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_21BA6D070(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_21B9C318C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21BA6D0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA6D124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA6D1A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BA8699C();

  return v1;
}

uint64_t sub_21BA6D214@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_21BA6D260(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);
  sub_21BA6E64C(*a1);
  return v3(v2);
}

uint64_t sub_21BA6D2BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BA869AC();
}

void (*sub_21BA6D32C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BA8698C();
  return sub_21BA492CC;
}

uint64_t sub_21BA6D3D0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F0);
  sub_21BA8696C();
  return swift_endAccess();
}

uint64_t sub_21BA6D444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F0);
  sub_21BA8697C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BA6D57C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV8RemoteUI18SwiftUIContentView13ContentLoader__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F0);
  sub_21BA8696C();
  swift_endAccess();
  return sub_21BA49670;
}

uint64_t sub_21BA6D6EC()
{
  sub_21BA6D7EC();
  sub_21BA868EC();
  sub_21BA6D840();
  v1 = sub_21BA87A2C();
  return (*(*v0 + 96))(v1);
}

unint64_t sub_21BA6D7EC()
{
  result = qword_27CD9FA00;
  if (!qword_27CD9FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA00);
  }

  return result;
}

unint64_t sub_21BA6D840()
{
  result = qword_27CD9FA08;
  if (!qword_27CD9FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA08);
  }

  return result;
}

uint64_t sub_21BA6D894()
{
  v1 = OBJC_IVAR____TtCV8RemoteUI18SwiftUIContentView13ContentLoader__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F9F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21BA6D93C()
{
  v0 = swift_allocObject();
  sub_21BA8695C();
  return v0;
}

uint64_t sub_21BA6D99C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SwiftUIContentView.ContentLoader();
  result = sub_21BA8690C();
  *a1 = result;
  return result;
}

uint64_t sub_21BA6D9E4()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA6DA40()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA6DA88@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA6DB00@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA6DB58(uint64_t a1)
{
  v2 = sub_21BA6E5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA6DB94(uint64_t a1)
{
  v2 = sub_21BA6E5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA6DBD0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
  sub_21B9B35B8(&qword_27CD9DB80, &qword_27CD9DA58);
  sub_21B9FD108();
  sub_21B9E35D0();
  return sub_21BA87ADC();
}

char *sub_21BA6DCA8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_21BA6DDF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_21BA6DCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21BA6DDF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FA58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_21BA6E5F8();
  sub_21BA88C0C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_21BA8877C();
    v29 = v4;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v9 = sub_21BA888CC();
    v7 = MEMORY[0x277D84F90];
    if ((v9 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
        sub_21B9B339C();
        sub_21BA888BC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21BA6DCD4(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_21BA6DCD4((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v12 = &v7[120 * v11];
        v13 = *&v19[8];
        v14 = v20;
        v15 = v22;
        *(v12 + 4) = v21;
        *(v12 + 5) = v15;
        *(v12 + 2) = v13;
        *(v12 + 3) = v14;
        v16 = v23;
        v17 = v24;
        v18 = v25;
        v12[144] = v26;
        *(v12 + 7) = v17;
        *(v12 + 8) = v18;
        *(v12 + 6) = v16;
        __swift_project_boxed_opaque_existential_1(v27, v28);
      }

      while ((sub_21BA888CC() & 1) == 0);
    }

    (*(v29 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_21BA6E104()
{
  result = qword_27CD9FA10;
  if (!qword_27CD9FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA10);
  }

  return result;
}

unint64_t sub_21BA6E15C()
{
  result = qword_27CD9FA18;
  if (!qword_27CD9FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA18);
  }

  return result;
}

unint64_t sub_21BA6E1B4()
{
  result = qword_27CD9FA20;
  if (!qword_27CD9FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA20);
  }

  return result;
}

uint64_t sub_21BA6E230(uint64_t a1, unsigned int a2)
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

uint64_t sub_21BA6E278(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21BA6E2D4()
{
  sub_21BA6E364();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BA6E364()
{
  if (!qword_27CD9FA28)
  {
    v0 = sub_21BA869BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9FA28);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8RemoteUI18SwiftUIContentViewV13ContentLoaderC5StateO(uint64_t *a1)
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

uint64_t sub_21BA6E3D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_21BA6E42C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_21BA6E48C(void *result, uint64_t a2)
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

unint64_t sub_21BA6E4E8()
{
  result = qword_27CD9FA30;
  if (!qword_27CD9FA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FA38);
    sub_21BA6CF14();
    sub_21BA6CFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA30);
  }

  return result;
}

unint64_t sub_21BA6E574()
{
  result = qword_27CD9FA40;
  if (!qword_27CD9FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FA48);
    sub_21B9FD108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA40);
  }

  return result;
}

unint64_t sub_21BA6E5F8()
{
  result = qword_27CD9FA50;
  if (!qword_27CD9FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA50);
  }

  return result;
}

unint64_t sub_21BA6E64C(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_21BA6E66C()
{
  v0 = sub_21BA863EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_21BA864AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 56))(v6, 1, 1, v7, v9);
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_21BA8649C();
  type metadata accessor for RUIPluginLoader();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___pluginBundles) = 0;
  *(v12 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass) = xmmword_21BA9ECA0;
  result = (*(v8 + 32))(v12 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader_pluginsDirectoryURL, v11, v7);
  qword_27CDB21F8 = v12;
  return result;
}

uint64_t *sub_21BA6E8B4()
{
  if (qword_27CDB0400 != -1)
  {
    swift_once();
  }

  return &qword_27CDB21F8;
}

void *sub_21BA6E904()
{
  v46[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21BA8673C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BA864AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_21BA8641C();
  v46[0] = 0;
  v12 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:v46];

  v13 = v46[0];
  if (v12)
  {
    v14 = sub_21BA87F0C();
    v15 = v13;

    v41 = v14;
    v44 = *(v14 + 16);
    if (v44)
    {
      v16 = v4;
      v17 = 0;
      v39 = (v5 + 8);
      v42 = (v5 + 32);
      v43 = v5 + 16;
      v18 = MEMORY[0x277D84F90];
      v40 = v4;
      v19 = v41;
      do
      {
        if (v17 >= *(v19 + 16))
        {
          __break(1u);
        }

        v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v21 = *(v5 + 72);
        (*(v5 + 16))(v9, v19 + v20 + v21 * v17, v16);
        sub_21BA8640C();
        v22 = sub_21BA87E1C();

        if (v22)
        {
          v23 = *v42;
          (*v42)(v45, v9, v16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46[0] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21BA6F4C0(0, v18[2] + 1, 1);
            v18 = v46[0];
          }

          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            sub_21BA6F4C0(v25 > 1, v26 + 1, 1);
            v18 = v46[0];
          }

          v18[2] = v26 + 1;
          v27 = v18 + v20 + v26 * v21;
          v16 = v40;
          v23(v27, v45, v40);
          v19 = v41;
        }

        else
        {
          (*v39)(v9, v16);
        }

        ++v17;
      }

      while (v44 != v17);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v28 = v46[0];
    v29 = sub_21BA8638C();

    swift_willThrow();
    v30 = sub_21B9E04E4();
    (*(v1 + 16))(v3, v30, v0);
    v31 = v29;
    v32 = sub_21BA8671C();
    v33 = sub_21BA881FC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_21B93D000, v32, v33, "Failed to read Hook directory. Error: %@", v34, 0xCu);
      sub_21B9ABAAC(v35, &qword_27CD9E278);
      MEMORY[0x21CEFF180](v35, -1, -1);
      MEMORY[0x21CEFF180](v34, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_21BA6EE20(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___pluginBundles) = 0;
  *(v2 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass) = xmmword_21BA9ECA0;
  v3 = OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader_pluginsDirectoryURL;
  v4 = sub_21BA864AC();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t sub_21BA6EEC4()
{
  v1 = OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___pluginBundles;
  if (*(v0 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___pluginBundles))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___pluginBundles);
  }

  else
  {
    v2 = sub_21BA6EF2C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21BA6EF2C()
{
  v0 = sub_21BA864AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BA6E904();
  v19 = MEMORY[0x277D84F90];
  v5 = v4[2];
  if (v5)
  {
    v8 = *(v1 + 16);
    v6 = v1 + 16;
    v7 = v8;
    v9 = *(v6 + 64);
    v17[1] = v4;
    v10 = v4 + ((v9 + 32) & ~v9);
    v11 = *(v6 + 56);
    v18 = MEMORY[0x277D84F90];
    v8(v3, v10, v0);
    while (1)
    {
      v12 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v13 = sub_21BA8641C();
      v14 = [v12 initWithURL_];

      v15 = (*(v6 - 8))(v3, v0);
      if (v14)
      {
        MEMORY[0x21CEFD240](v15);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21BA87F3C();
        }

        sub_21BA87F6C();
        v18 = v19;
      }

      v10 += v11;
      if (!--v5)
      {
        break;
      }

      v7(v3, v10, v0);
    }

    return v18;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21BA6F118()
{
  v1 = (v0 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass);
  v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass);
  if (v2 == 1)
  {
    v3 = sub_21BA6EEC4();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
    {
      v6 = 4;
      while (1)
      {
        v7 = v6 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x21CEFD920](v6 - 4, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v4 + 8 * v6);
        }

        v9 = v8;
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v2 = sub_21BA6F6B8(v8);

        if (v2)
        {
          v11 = swift_conformsToProtocol2();
          if (v11)
          {
            v12 = v11;

            v13 = v12;
            goto LABEL_19;
          }
        }

        ++v6;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v2 = 0;
    v13 = 0;
LABEL_19:
    *v1 = v2;
    v1[1] = v13;
  }

  return v2;
}

uint64_t sub_21BA6F268(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass);
  *v3 = result;
  v3[1] = a2;
  return result;
}

__n128 (*sub_21BA6F27C(uint64_t *a1))(__n128 *a1)
{
  a1[2] = v1;
  *a1 = sub_21BA6F118();
  a1[1] = v3;
  return sub_21BA6F2C4;
}

__n128 sub_21BA6F2C4(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader____lazy_storage___navigationProxyClass) = *a1;
  return result;
}

uint64_t sub_21BA6F31C()
{
  v1 = OBJC_IVAR____TtC8RemoteUI15RUIPluginLoader_pluginsDirectoryURL;
  v2 = sub_21BA864AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for RUIPluginLoader()
{
  result = qword_27CDB0420;
  if (!qword_27CDB0420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA6F41C()
{
  result = sub_21BA864AC();
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

size_t sub_21BA6F4C0(size_t a1, int64_t a2, char a3)
{
  result = sub_21BA6F4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21BA6F4E0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FA68);
  v10 = *(sub_21BA864AC() - 8);
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
  v15 = *(sub_21BA864AC() - 8);
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

uint64_t sub_21BA6F6B8(void *a1)
{
  v2 = sub_21BA8673C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = sub_21BA87C8C();

  v10 = [a1 objectForInfoDictionaryKey_];

  if (v10)
  {
    sub_21BA8846C();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55[0] = v53;
  v55[1] = v54;
  if (!*(&v54 + 1))
  {
    sub_21B9ABAAC(v55, &qword_27CD9E7C0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v51 = v52;
  v11 = sub_21B9E04E4();
  v12 = *(v3 + 16);
  v48 = v11;
  v49 = (v3 + 16);
  v47 = v12;
  (v12)(v8);
  v13 = a1;
  v14 = sub_21BA8671C();
  v15 = sub_21BA881EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v50 = v2;
    v17 = v16;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v55[0] = v46;
    *v17 = 136315394;
    v18 = v5;
    v19 = v3;
    v20 = sub_21B9B2A60(0xD00000000000001CLL, 0x800000021BAA6480, v55);

    *(v17 + 4) = v20;
    v3 = v19;
    v5 = v18;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    v21 = v45;
    *v45 = v13;
    v22 = v13;
    _os_log_impl(&dword_21B93D000, v14, v15, "Attempting to load class for key: %s from: %@", v17, 0x16u);
    sub_21B9ABAAC(v21, &qword_27CD9E278);
    MEMORY[0x21CEFF180](v21, -1, -1);
    v23 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x21CEFF180](v23, -1, -1);
    v24 = v17;
    v2 = v50;
    MEMORY[0x21CEFF180](v24, -1, -1);
  }

  v25 = *(v3 + 8);
  v25(v8, v2);
  v26 = sub_21BA87C8C();

  v27 = [v13 classNamed_];

  if (!v27)
  {
    return 0;
  }

  v51 = v3;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v47(v5, v48, v2);
  v29 = v13;
  v30 = sub_21BA8671C();
  v31 = sub_21BA881EC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    v48 = v5;
    v50 = v2;
    v35 = v34;
    v36 = swift_slowAlloc();
    *&v55[0] = v36;
    *v33 = 136315650;
    v37 = ObjCClassMetadata;
    v38 = sub_21BA88CAC();
    v40 = sub_21B9B2A60(v38, v39, v55);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    v41 = sub_21B9B2A60(0xD00000000000001CLL, 0x800000021BAA6480, v55);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2112;
    *(v33 + 24) = v29;
    *v35 = v29;
    v42 = v29;
    _os_log_impl(&dword_21B93D000, v30, v31, "Did load %s for key: %s from: %@", v33, 0x20u);
    sub_21B9ABAAC(v35, &qword_27CD9E278);
    MEMORY[0x21CEFF180](v35, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEFF180](v36, -1, -1);
    MEMORY[0x21CEFF180](v33, -1, -1);

    v49(v48, v50);
    return v37;
  }

  else
  {

    v25(v5, v2);
    return ObjCClassMetadata;
  }
}

uint64_t sub_21BA6FC14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6562616CLL;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6562616CLL;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA6FCAC()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA6FD20()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA6FD80()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA6FDF0@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

void sub_21BA6FE50(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6C6562616CLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BA6FE80()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BA6FEAC@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

uint64_t sub_21BA6FF10(uint64_t a1)
{
  v2 = sub_21BA7070C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA6FF4C(uint64_t a1)
{
  v2 = sub_21BA7070C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA6FF88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[8];
  v37 = a1[7];
  v38 = v3;
  v39[0] = a1[9];
  *(v39 + 9) = *(a1 + 153);
  v4 = a1[4];
  v33 = a1[3];
  v34 = v4;
  v5 = a1[6];
  v35 = a1[5];
  v36 = v5;
  v6 = a1[2];
  v31 = a1[1];
  v32 = v6;
  sub_21B9BAB9C();

  v7 = sub_21BA8767C();
  v9 = v8;
  v28 = v37;
  v29 = v38;
  *v30 = v39[0];
  *&v30[9] = *(v39 + 9);
  v24 = v33;
  v10 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v22 = v31;
  v23 = v32;
  v40[6] = v37;
  v40[7] = v38;
  v41[0] = v39[0];
  *(v41 + 9) = *(v39 + 9);
  v40[2] = v33;
  v40[3] = v34;
  v40[4] = v35;
  v40[5] = v36;
  v40[0] = v31;
  v40[1] = v32;
  v48 = v37;
  v49 = v38;
  v50[0] = v39[0];
  *(v50 + 9) = *(v39 + 9);
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v42 = v31;
  v43 = v32;
  v12 = v11 & 1;
  v13 = v38;
  v14 = v50[0];
  *(a2 + 96) = v37;
  *(a2 + 112) = v13;
  v15 = v50[1];
  *(a2 + 128) = v14;
  *(a2 + 144) = v15;
  v16 = v45;
  v17 = v46;
  *(a2 + 32) = v10;
  *(a2 + 48) = v16;
  v18 = v47;
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
  v19 = v43;
  *a2 = v42;
  *(a2 + 16) = v19;
  *(a2 + 160) = v7;
  *(a2 + 168) = v8;
  *(a2 + 176) = v11 & 1;
  *(a2 + 184) = v20;
  sub_21B9AFF80(&v31, v51, &unk_27CD9DD50);
  sub_21B9AFF80(v40, v51, &unk_27CD9DD50);
  sub_21B9C320C(v7, v9, v12);

  sub_21B9C318C(v7, v9, v12);

  v51[6] = v28;
  v51[7] = v29;
  v52[0] = *v30;
  *(v52 + 9) = *&v30[9];
  v51[2] = v24;
  v51[3] = v25;
  v51[4] = v26;
  v51[5] = v27;
  v51[0] = v22;
  v51[1] = v23;
  return sub_21B9ABAAC(v51, &unk_27CD9DD50);
}

uint64_t sub_21BA701C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FA78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA7070C();
  sub_21BA88C0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v7;
  v39 = v4;
  v8 = v96;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = Decoder.decodeRUIID()();
  if (v10)
  {
    (*(v5 + 8))(v38, v39);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  countAndFlagsBits = v9._countAndFlagsBits;
  sub_21B9B3220(a1, &v69);
  v12 = sub_21B9AC534(&v69);
  v37 = v13;
  v34 = v12;
  LOBYTE(v69) = 1;
  v14 = sub_21BA887FC();
  v35 = v15;
  v33 = v14;
  sub_21B9B3220(a1, v84);
  RUIImage.init(from:)(v84, v85);
  v42 = v85[2];
  v43 = v85[3];
  v44 = v85[4];
  v45 = v85[5];
  v40 = v85[0];
  v41 = v85[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.ruiDecodingContext.getter();
  v16 = v69;

  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v45;
  v69 = v40;
  v70 = v41;
  v17 = sub_21B9AB470();
  (*(*v16 + 168))(&v69, v17, v18);
  swift_unknownObjectRelease();
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v45;
  v69 = v40;
  v70 = v41;
  sub_21B9E52FC(&v40, &v57);
  v19 = sub_21B9AC2EC();
  v20 = sub_21B9ACBA4();
  sub_21BA10E34(&v69, 1, v19 & 1, 0x403E000000000000, 0x403E000000000000, 0, v20 & 1, v46);

  sub_21B9EA8A0(&v40);
  (*(v5 + 8))(v38, v39);
  v54 = v46[6];
  v55 = v46[7];
  v56[0] = v47[0];
  *(v56 + 9) = *(v47 + 9);
  v50 = v46[2];
  v51 = v46[3];
  v52 = v46[4];
  v53 = v46[5];
  v48 = v46[0];
  v49 = v46[1];
  nullsub_1(&v48);
  v21 = v54;
  v93 = v54;
  v94 = v55;
  v95[0] = v56[0];
  *(v95 + 9) = *(v56 + 9);
  v22 = v50;
  v89 = v50;
  v90 = v51;
  v91 = v52;
  v92 = v53;
  v87 = v48;
  v88 = v49;
  v64 = v54;
  v65 = v55;
  v66[0] = v56[0];
  *(v66 + 9) = *(v56 + 9);
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v24 = countAndFlagsBits;
  v23 = v37;
  *&v57 = countAndFlagsBits;
  *(&v57 + 1) = v9._object;
  v58 = v48;
  v59 = v49;
  *(&v66[1] + 9) = *v86;
  HIDWORD(v66[1]) = *&v86[3];
  v26 = v33;
  v25 = v34;
  *&v67 = v33;
  *(&v67 + 1) = v35;
  *&v68 = v34;
  *(&v68 + 1) = v37;
  v27 = v52;
  v8[6] = v53;
  v8[7] = v21;
  v28 = v66[0];
  v8[8] = v65;
  v8[9] = v28;
  v29 = v58;
  v30 = v61;
  v8[2] = v59;
  v8[3] = v22;
  v8[4] = v30;
  v8[5] = v27;
  *v8 = v57;
  v8[1] = v29;
  v31 = v68;
  v8[11] = v67;
  v8[12] = v31;
  v8[10] = v66[1];
  sub_21B9C339C(&v57, &v69);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v69 = v24;
  *(&v69 + 1) = v9._object;
  v76 = v93;
  v77 = v94;
  *v78 = v95[0];
  *&v78[9] = *(v95 + 9);
  v72 = v89;
  v73 = v90;
  v74 = v91;
  v75 = v92;
  v70 = v87;
  v71 = v88;
  *v79 = *v86;
  *&v79[3] = *&v86[3];
  v80 = v26;
  v81 = v35;
  v82 = v25;
  v83 = v23;
  return sub_21BA70760(&v69);
}

unint64_t sub_21BA7070C()
{
  result = qword_27CD9FA80;
  if (!qword_27CD9FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA80);
  }

  return result;
}

unint64_t sub_21BA70794()
{
  result = qword_27CD9FA88;
  if (!qword_27CD9FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA88);
  }

  return result;
}

unint64_t sub_21BA707EC()
{
  result = qword_27CD9FA90;
  if (!qword_27CD9FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA90);
  }

  return result;
}

unint64_t sub_21BA70844()
{
  result = qword_27CD9FA98;
  if (!qword_27CD9FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FA98);
  }

  return result;
}

unint64_t sub_21BA70898(void *a1)
{
  a1[1] = sub_21B9C2C10();
  a1[2] = sub_21B9C32D8();
  result = sub_21B9C3284();
  a1[3] = result;
  return result;
}

uint64_t sub_21BA708D0()
{
  v1 = *(v0 + 192);

  return v1;
}

double sub_21BA7091C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BA86ECC();
  v27 = 1;
  sub_21BA6FF88(v2, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_21B9AFF80(&v28, &v13, &qword_27CD9FA70);
  sub_21B9ABAAC(v40, &qword_27CD9FA70);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  v5 = *&v26[128];
  *(a1 + 161) = *&v26[144];
  v6 = *&v26[176];
  *(a1 + 177) = *&v26[160];
  *(a1 + 193) = v6;
  v7 = *&v26[64];
  *(a1 + 97) = *&v26[80];
  v8 = *&v26[112];
  *(a1 + 113) = *&v26[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = *v26;
  *(a1 + 33) = *&v26[16];
  result = *&v26[32];
  v11 = *&v26[48];
  *(a1 + 49) = *&v26[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v27;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 208) = *&v26[191];
  *(a1 + 17) = v9;
  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_21BA70B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_21BA70B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA70BE0()
{
  result = qword_27CD9FAA0;
  if (!qword_27CD9FAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FAA0);
  }

  return result;
}

uint64_t StyleName.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_21BA70CF4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_21BA70DB0()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA70E04()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA70E4C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BA8899C();
  }
}

uint64_t sub_21BA70E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA71100();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.ruiStyleName.getter()
{
  sub_21BA70F44();

  return sub_21BA86EAC();
}

unint64_t sub_21BA70F44()
{
  result = qword_27CDB0930[0];
  if (!qword_27CDB0930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB0930);
  }

  return result;
}

void (*EnvironmentValues.ruiStyleName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_21BA70F44();
  sub_21BA86EAC();
  return sub_21BA71068;
}

void sub_21BA71068(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_21BA86EBC();
  }

  else
  {
    sub_21BA86EBC();
  }

  free(v2);
}

unint64_t sub_21BA71100()
{
  result = qword_27CD9FAB0;
  if (!qword_27CD9FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FAB0);
  }

  return result;
}

unint64_t sub_21BA71174()
{
  result = qword_27CD9FAB8;
  if (!qword_27CD9FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FAB8);
  }

  return result;
}

id sub_21BA711C8()
{
  v1 = [v0 image];
  v2 = [v0 tintColor];
  return v1;
}

void sub_21BA71220(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a1)
  {
    v8 = fmax(a4, a5) > 0.0;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 40) = v8;
    v10 = a2;
    v11 = a1;
    sub_21BA87B2C();
    sub_21BA86AEC();
    v12 = v18;
    v13 = v20;

    v14 = v22;
    v15 = v19;
    v16 = v21;
    v17 = sub_21BA71378;
  }

  else
  {
    v17 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0uLL;
  }

  *a3 = v17;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v15;
  *(a3 + 32) = v13;
  *(a3 + 40) = v16;
  *(a3 + 48) = v14;
}

id sub_21BA71378@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = [objc_opt_self() configurationWithScale_];
  v6 = [v3 imageWithSymbolConfiguration_];

  sub_21BA86AFC();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v4;

  return v10;
}

id sub_21BA7143C(void *a1)
{
  [a1 setTintColor_];
  v3 = *v1;
  if ([*v1 isSymbolImage])
  {
    if ((*(v1 + 32) & 1) != 0 && (v4 = [v3 symbolConfiguration]) != 0)
    {
      v5 = v4;
      v6 = *(v1 + 8);
      if (*(v1 + 16) < v6)
      {
        v6 = *(v1 + 16);
      }

      v7 = [objc_opt_self() configurationWithPointSize_];
      v8 = [v5 configurationByApplyingConfiguration_];

      v9 = [v3 imageWithConfiguration_];
      [a1 setImage_];
    }

    else
    {
      [a1 setImage_];
    }

    v10 = 4;
  }

  else
  {
    [a1 setImage_];
    v10 = 1;
  }

  return [a1 setContentMode_];
}

unint64_t sub_21BA715C0()
{
  result = qword_27CD9FAC0;
  if (!qword_27CD9FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FAC0);
  }

  return result;
}

id sub_21BA71614()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setClipsToBounds_];
  sub_21BA7143C(v0);
  return v0;
}

uint64_t sub_21BA71678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA718C0();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t sub_21BA716DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA718C0();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void sub_21BA71740()
{
  sub_21BA718C0();
  sub_21BA8711C();
  __break(1u);
}

uint64_t sub_21BA71768(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21BA717C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21BA71824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21BA7186C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_21BA718C0()
{
  result = qword_27CD9FAC8;
  if (!qword_27CD9FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FAC8);
  }

  return result;
}

void *RemoteUIModernTableViewCell.textLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell__textLabel);
  v2 = v1;
  return v1;
}

void *RemoteUIModernTableViewCell.imageView.getter()
{
  v1 = *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell__imageView);
  v2 = v1;
  return v1;
}

void *RemoteUIModernTableViewCell.detailTextLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel);
  v2 = v1;
  return v1;
}

uint64_t RemoteUIModernTableViewCell.imageSize.setter()
{
  v2.super_class = RemoteUIModernTableViewCell;
  objc_msgSendSuper2(&v2, sel_setImageSize_);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v1[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_21BA762C8();
  sub_21BA8721C();
  return MEMORY[0x21CEFD580](v1);
}

void *RemoteUIModernTableViewCell.webContainerView.getter()
{
  v1 = *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView);
  v2 = v1;
  return v1;
}

void RemoteUIModernTableViewCell.webContainerView.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView);
  *(v1 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView) = a1;
  v3 = a1;

  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v4[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v4);
}

void __swiftcall RemoteUIModernTableViewCell.init(style:reuseIdentifier:)(RemoteUIModernTableViewCell *__return_ptr retstr, UITableViewCellStyle style, Swift::String_optional reuseIdentifier)
{
  if (reuseIdentifier.value._object)
  {
    v4 = sub_21BA87C8C();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:style reuseIdentifier:v4];
}

char *RemoteUIModernTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___RemoteUIModernTableViewCell__textLabel;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR___RemoteUIModernTableViewCell__imageView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v3[OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BA884DC())
  {
    sub_21BA75FF4(MEMORY[0x277D84F90]);
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  *&v3[OBJC_IVAR___RemoteUIModernTableViewCell_observers] = v9;
  v10 = &v3[OBJC_IVAR___RemoteUIModernTableViewCell_detailLinkHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 0;
  *&v3[OBJC_IVAR___RemoteUIModernTableViewCell_cellStyle] = a1;
  if (a3)
  {
    v12 = sub_21BA87C8C();
  }

  else
  {
    v12 = 0;
  }

  v38.receiver = v3;
  v38.super_class = RemoteUIModernTableViewCell;
  v13 = objc_msgSendSuper2(&v38, sel_initWithStyle_reuseIdentifier_, a1, v12);

  if (a1 == 3)
  {
    v14 = *&v13[OBJC_IVAR___RemoteUIModernTableViewCell__textLabel];
    v15 = v13;
    [v14 setNumberOfLines_];
    v16 = OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel;
    [*&v15[OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel] setNumberOfLines_];
    v17 = *&v15[v16];
    v18 = objc_opt_self();
    v19 = *MEMORY[0x277D76968];
    v20 = v17;
    v21 = [v18 preferredFontForTextStyle_];
    [v20 setFont_];
  }

  else
  {
    v22 = v13;
  }

  v23 = OBJC_IVAR___RemoteUIModernTableViewCell__textLabel;
  [*&v13[OBJC_IVAR___RemoteUIModernTableViewCell__textLabel] setTextAlignment_];
  v24 = OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel;
  [*&v13[OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel] setTextAlignment_];
  v25 = *&v13[v23];
  sub_21BA72444();

  v26 = *&v13[v24];
  sub_21BA72444();

  v27 = *&v13[OBJC_IVAR___RemoteUIModernTableViewCell__imageView];
  swift_getKeyPath();
  v28 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_21BA76460;
  *(v29 + 24) = v28;
  v30 = v27;
  v31 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  v37[0] = v30;
  swift_getKeyPath();
  v32 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_21BA76460;
  *(v33 + 24) = v32;
  v34 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  MEMORY[0x28223BE20](v35);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v37[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v37);

  return v13;
}

void sub_21BA72444()
{
  swift_getKeyPath();
  v0 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_21BA76460;
  *(v1 + 24) = v0;
  v2 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  swift_getKeyPath();
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21BA76460;
  *(v4 + 24) = v3;
  v5 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  swift_getKeyPath();
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21BA76460;
  *(v7 + 24) = v6;
  v8 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  swift_getKeyPath();
  v9 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21BA76460;
  *(v10 + 24) = v9;
  v11 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();

  swift_getKeyPath();
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21BA76460;
  *(v13 + 24) = v12;
  v14 = sub_21BA863BC();

  swift_beginAccess();
  sub_21BA4A3D0();
  swift_endAccess();
}

uint64_t RemoteUIModernTableViewCell.setDetailLinkText(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel];
  if (a2)
  {
    v8 = sub_21BA87C8C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  if (a3)
  {
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = v4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21BA76574;
    *(v10 + 24) = v9;
    v11 = v4;
    v12 = sub_21BA765BC;
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = &v4[OBJC_IVAR___RemoteUIModernTableViewCell_detailLinkHandler];
  v14 = *&v4[OBJC_IVAR___RemoteUIModernTableViewCell_detailLinkHandler];
  *v13 = v12;
  v13[1] = v10;
  sub_21B946DA8(a3);
  v15 = sub_21B946D98(v14);
  MEMORY[0x28223BE20](v15);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v17[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_21BA762C8();
  sub_21BA8721C();
  return MEMORY[0x21CEFD580](v17);
}

void sub_21BA72B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21B9CE7B4;
    v7[3] = &block_descriptor_9;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  (*(a4 + 16))(a4, a1, v6);
  _Block_release(v6);
}

uint64_t RemoteUIModernTableViewCell.forceFullSizeDetailLabel.setter(char a1)
{
  objc_msgSendSuper2(&v3, sel_setForceFullSizeDetailLabel_, a1 & 1);
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v2[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_21BA762C8();
  sub_21BA8721C();
  return MEMORY[0x21CEFD580](v2);
}

Swift::Void __swiftcall RemoteUIModernTableViewCell.tintColorDidChange()()
{
  v5.super_class = RemoteUIModernTableViewCell;
  objc_msgSendSuper2(&v5, sel_tintColorDidChange);
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 imageView];
    v4 = [v3 tintColor];

    if (!v4)
    {
      v4 = [v0 tintColor];
    }

    [v2 setTintColor_];
  }
}

uint64_t RemoteUIModernTableViewCell.setHTMLData(_:sourceURL:delegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-1] - v11;
  sub_21B9BDFC0(0, &qword_27CD9DBA8);
  sub_21B9AFF80(a3, v12, &qword_27CD9DBA0);
  sub_21B9B9144(a1, a2);
  v13 = sub_21B9E8EF8(a1, a2, v12);
  v14 = v5;
  v15 = OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView;
  v16 = *(v14 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView);
  *(v14 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView) = v13;

  v17 = *(v14 + v15);
  if (v17)
  {
    v17 = [v17 setDelegate_];
  }

  MEMORY[0x28223BE20](v17);
  *(&v19 - 2) = v14;
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v20[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_21BA762C8();
  sub_21BA8721C();
  return MEMORY[0x21CEFD580](v20);
}

Swift::Void __swiftcall RemoteUIModernTableViewCell.setImage(_:padding:tintColor:)(UIImage_optional _, UIEdgeInsets padding, UIColor_optional tintColor)
{
  v4 = *&_.is_nil;
  isa = _.value.super.isa;
  v6 = [v3 imageView];
  [v6 setImage_];

  v7 = [v3 imageView];
  [v7 setTintColor_];
}

Swift::Void __swiftcall RemoteUIModernTableViewCell.setBadgeImage(_:tintColor:isCircular:)(UIImage_optional _, UIColor_optional tintColor, Swift::Bool isCircular)
{
  isa = _.value.super.isa;
  if (_.value.super.isa)
  {
    v5 = *&_.is_nil;
    v6 = tintColor.value.super.isa & 1;
    v7 = *&_.is_nil;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v8 = v3 + OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo;
  v9 = *(v3 + OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo);
  v10 = *(v3 + OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo + 8);
  *v8 = isa;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  v11 = isa;
  sub_21BA765E4(isa, v5);
  sub_21BA76624(v9, v10);
  MEMORY[0x28223BE20](v12);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v13[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v13);
  sub_21BA76624(isa, v5);
}

void sub_21BA73760(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BA87CBC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21BA737C8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_21BA87C8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

id sub_21BA73838@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textColor];
  *a2 = result;
  return result;
}

id sub_21BA73888@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfLines];
  *a2 = result;
  return result;
}

id sub_21BA738D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlignment];
  *a2 = result;
  return result;
}

id sub_21BA73918@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

id sub_21BA73968@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tintColor];
  *a2 = result;
  return result;
}

id sub_21BA739B8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B9FC25C(v28);
  v26 = v28[1];
  v27 = v28[0];
  v4 = v30;
  v25 = v29;
  sub_21B9FC25C(v31);
  v23 = v31[1];
  v24 = v31[0];
  v5 = v32;
  v6 = v33;
  v7 = sub_21BA711C8();
  v9 = v8;
  [a1 imageSize];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView];
  v15 = *&a1[OBJC_IVAR___RemoteUIModernTableViewCell_cellStyle];
  v16 = v14;
  v17 = [a1 forceFullSizeDetailLabel];
  v18 = [a1 leftAlignDetailLabel];
  v19 = *&a1[OBJC_IVAR___RemoteUIModernTableViewCell_detailLinkHandler];
  v20 = &a1[OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo];
  v22 = *&a1[OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo];
  *a2 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v25;
  *(a2 + 40) = v4;
  *(a2 + 48) = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v14;
  *(a2 + 136) = v15;
  *(a2 + 144) = v17;
  *(a2 + 145) = v18;
  *(a2 + 152) = v19;
  *(a2 + 168) = v22;
  *(a2 + 184) = v20[16];
  sub_21B946DA8(v19);

  return sub_21BA765E4(v22, *(&v22 + 1));
}

uint64_t sub_21BA73B54()
{
  if (*(v0 + 136) > 1uLL && (v1 = sub_21B9FC340()) != 0)
  {
    if (v1 == 1)
    {
      sub_21BA86FDC();
    }

    else
    {
      sub_21BA86FFC();
    }
  }

  else
  {
    sub_21BA86FEC();
  }

  sub_21BA86FDC();
  if (sub_21BA86FCC())
  {

    return sub_21BA87B2C();
  }

  else
  {
    sub_21BA86FFC();
    if (sub_21BA86FCC())
    {

      return MEMORY[0x282133D48]();
    }

    else
    {

      return sub_21BA87B3C();
    }
  }
}

void sub_21BA73C34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB20);
  MEMORY[0x28223BE20](v1);
  v3 = v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB28);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = *(v0 + 128);
  if (v7)
  {
    v8 = v7;
    v9 = nullsub_1(v8);
    sub_21BA87B3C();
    sub_21BA86CEC();
    v10 = v14[2];
    *(v3 + 56) = v14[3];
    v11 = v14[5];
    *(v3 + 72) = v14[4];
    *(v3 + 88) = v11;
    *(v3 + 104) = v14[6];
    v12 = v14[1];
    *(v3 + 8) = v14[0];
    *(v3 + 24) = v12;
    *v3 = v9;
    *(v3 + 40) = v10;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB38);
    sub_21BA7699C(&qword_27CD9FB40, &qword_27CD9FB38, &unk_21BA9F590, sub_21B9D4654);
    sub_21B9B35B8(&qword_27CD9FB48, &qword_27CD9FB28);
    sub_21BA8715C();
  }

  else
  {
    *v6 = sub_21BA86ECC();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB30);
    sub_21BA73F74(v0, &v6[*(v13 + 44)]);
    sub_21B9AFF80(v6, v3, &qword_27CD9FB28);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB38);
    sub_21BA7699C(&qword_27CD9FB40, &qword_27CD9FB38, &unk_21BA9F590, sub_21B9D4654);
    sub_21B9B35B8(&qword_27CD9FB48, &qword_27CD9FB28);
    sub_21BA8715C();
    sub_21B9ABAAC(v6, &qword_27CD9FB28);
  }
}

uint64_t sub_21BA73F74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB58);
  MEMORY[0x28223BE20](v39);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB60);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v39 - v19);
  sub_21BA71220(*(a1 + 96), *(a1 + 104), &v41, *(a1 + 112), *(a1 + 120));
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v21 = sub_21BA87B1C();
  v23 = v22;
  v24 = v20 + *(v15 + 44);
  sub_21BA743B0(a1, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB68) + 36));
  *v25 = v21;
  v25[1] = v23;
  v26 = v54;
  v20[2] = v53;
  v20[3] = v26;
  v27 = v52;
  *v20 = v51;
  v20[1] = v27;
  if (*(a1 + 136) > 1uLL && (v28 = *(a1 + 16), v48 = *a1, v49 = v28, v50 = *(a1 + 32), (v29 = sub_21B9FC340()) != 0))
  {
    if (v29 == 1)
    {
      v30 = sub_21BA86FDC();
    }

    else
    {
      v30 = sub_21BA86FFC();
    }
  }

  else
  {
    v30 = sub_21BA86FEC();
  }

  *v5 = v30;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB70);
  sub_21BA74D20(a1, &v5[*(v31 + 44)]);
  sub_21BA87B2C();
  sub_21BA86CEC();
  sub_21B9AB6D4(v5, v10, &qword_27CD9FB50);
  v32 = &v10[*(v39 + 36)];
  v33 = v46;
  *(v32 + 4) = v45;
  *(v32 + 5) = v33;
  *(v32 + 6) = v47;
  v34 = v42;
  *v32 = v41;
  *(v32 + 1) = v34;
  v35 = v44;
  *(v32 + 2) = v43;
  *(v32 + 3) = v35;
  sub_21B9AB6D4(v10, v13, &qword_27CD9FB58);
  sub_21B9AFF80(v20, v17, &qword_27CD9FB60);
  sub_21B9AFF80(v13, v7, &qword_27CD9FB58);
  v36 = v40;
  sub_21B9AFF80(v17, v40, &qword_27CD9FB60);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB78);
  sub_21B9AFF80(v7, v36 + *(v37 + 48), &qword_27CD9FB58);
  sub_21B9ABAAC(v13, &qword_27CD9FB58);
  sub_21B9ABAAC(v20, &qword_27CD9FB60);
  sub_21B9ABAAC(v7, &qword_27CD9FB58);
  return sub_21B9ABAAC(v17, &qword_27CD9FB60);
}

uint64_t sub_21BA743B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v73 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EAF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC80);
  MEMORY[0x28223BE20](v74);
  v14 = &v62 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC88);
  MEMORY[0x28223BE20](v75);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC90);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20);
  v25 = *(a1 + 168);
  if (v25)
  {
    v66 = &v62 - v23;
    v67 = v9;
    v70 = v22;
    v71 = v21;
    v72 = a2;
    v26 = *(a1 + 176);
    v76 = *(a1 + 184);
    sub_21BA765E4(v25, v26);
    v77 = v26;
    v27 = v25;
    sub_21B9E0628();
    v28 = [v27 isSymbolImage];

    v68 = v16;
    v69 = v5;
    if (v28)
    {
      if (!v26)
      {
        v32 = v4;
        v29 = MEMORY[0x277CE1018];
        goto LABEL_10;
      }

      v29 = MEMORY[0x277CE1028];
    }

    else
    {
      v29 = MEMORY[0x277CE1018];
    }

    v32 = v4;

LABEL_10:
    v33 = *v29;
    v34 = sub_21BA8791C();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v12, v33, v34);
    sub_21BA8791C();
    (*(v35 + 56))(v12, 0, 1, v34);
    v65 = sub_21BA878FC();

    sub_21B9ABAAC(v12, &qword_27CD9FC78);
    if (v26)
    {
      v36 = v77;
      v37 = sub_21BA8786C();
    }

    else
    {
      v37 = sub_21BA878AC();
    }

    v64 = v37;
    v38 = v32;
    KeyPath = swift_getKeyPath();
    v39 = v69;
    if (v76)
    {
      sub_21BA12BF4();
      v40 = sub_21BA87AEC();
      v41 = sub_21BA87B2C();
      v43 = v42;
      v44 = v73;
      sub_21BA872DC();
      *(v44 + *(v38 + 56)) = 256;
      v45 = v67;
      sub_21B9AB6D4(v44, v67, &qword_27CD9EAF0);
      v46 = 0;
    }

    else
    {
      sub_21BA12BA0();
      v40 = sub_21BA87AEC();
      v46 = 1;
      v41 = sub_21BA87B2C();
      v43 = v47;
      v45 = v67;
    }

    (*(v39 + 56))(v45, v46, 1, v38);
    v48 = &v14[*(v74 + 36)];
    sub_21B9AB6D4(v45, v48, &qword_27CD9EAF8);
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB20) + 36));
    *v49 = v41;
    v49[1] = v43;
    v51 = KeyPath;
    v50 = v64;
    *v14 = v65;
    *(v14 + 1) = v51;
    *(v14 + 2) = v50;
    *(v14 + 3) = v40;
    *(v14 + 16) = 256;
    v52 = sub_21BA87B2C();
    v54 = v53;
    v55 = v68;
    v56 = &v68[*(v75 + 36)];
    sub_21BA74A60(v76 & 1, v56);

    v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB28) + 36));
    *v57 = v52;
    v57[1] = v54;
    sub_21B9AB6D4(v14, v55, &qword_27CD9FC80);
    sub_21B9AB6D4(v55, v19, &qword_27CD9FC88);
    v58 = v71;
    *&v19[*(v71 + 36)] = xmmword_21BA990B0;
    v59 = v66;
    sub_21B9AB6D4(v19, v66, &qword_27CD9FC90);
    v60 = v59;
    v61 = v72;
    sub_21B9AB6D4(v60, v72, &qword_27CD9FC90);
    return (*(v70 + 56))(v61, 0, 1, v58);
  }

  v30 = *(v22 + 56);

  return v30(a2, 1, 1, v24);
}

uint64_t sub_21BA74A60@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21BA872EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB38);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  if (a1)
  {
    v25[0] = v9;
    sub_21BA872DC();
    sub_21BA86A9C();
    v13 = v25[1];
    v14 = v25[3];
    v15 = v25[4];
    v16 = v25[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB40);
    v18 = v25[2];
    (*(v5 + 16))(&v12[*(v17 + 52)], v7, v4);
    *v12 = v13;
    *(v12 + 1) = v18;
    *(v12 + 2) = v14;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    *&v12[*(v17 + 56)] = 256;
    v19 = sub_21BA87B2C();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB48) + 36)];
    *v22 = v19;
    v22[1] = v21;
    sub_21B9AB6D4(v12, a2, &qword_27CD9EB38);
    return (*(v25[0] + 56))(a2, 0, 1, v8);
  }

  else
  {
    v24 = *(v9 + 56);

    return v24(a2, 1, 1, v8, v10);
  }
}

uint64_t sub_21BA74D20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  *v8 = sub_21BA86ECC();
  *(v8 + 1) = 0;
  v9 = 1;
  v8[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB88);
  sub_21BA750DC(a1, &v8[*(v10 + 44)]);
  if (*(a1 + 136) == 3)
  {
    v11 = *(a1 + 64);
    v81 = *(a1 + 48);
    v82 = v11;
    v83 = *(a1 + 80);
    sub_21B9FC35C(0, v54);
    v12 = v55;
    if (v55)
    {
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v9 = sub_21B9FD000(v12);
      sub_21BA73B54();
      sub_21BA86CEC();
      v35 = v69;
      v36 = v68;
      v34 = v70;
      v13 = v71;
      v38 = v72;
      v39 = v67;
      v37 = v74;
      v44 = v75;
      v45 = v73;
      v42 = v77;
      v43 = v76;
      v41 = v78;
      v14 = v79;
      v12 = v80;
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {
      sub_21B9ABAAC(v54, &qword_27CD9EB60);
      v9 = 0;
      v38 = 0;
      v39 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v13 = 0;
      v44 = 0;
      v45 = 0;
      v37 = 0;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v14 = 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v13 = 0;
    v44 = 0;
    v45 = 0;
    v37 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v14 = 0;
    v12 = 0;
  }

  v32 = v5;
  sub_21B9AFF80(v8, v5, &qword_27CD9FB80);
  v15 = v40;
  sub_21B9AFF80(v5, v40, &qword_27CD9FB80);
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FB90) + 48);
  v18 = v38;
  v17 = v39;
  *&v46 = v9;
  *(&v46 + 1) = v39;
  v19 = v35;
  v20 = v36;
  *&v47 = v36;
  *(&v47 + 1) = v35;
  v21 = v34;
  *&v48 = v34;
  *(&v48 + 1) = v13;
  v40 = v8;
  *&v49 = v38;
  *(&v49 + 1) = v45;
  v22 = v37;
  *&v50 = v37;
  *(&v50 + 1) = v44;
  *&v51 = v43;
  *(&v51 + 1) = v42;
  *&v52 = v41;
  *(&v52 + 1) = v14;
  v33 = v14;
  v53 = v12;
  *(v16 + 112) = v12;
  v23 = v51;
  *(v16 + 64) = v50;
  *(v16 + 80) = v23;
  *(v16 + 96) = v52;
  v24 = v46;
  v25 = v47;
  v26 = v49;
  *(v16 + 32) = v48;
  *(v16 + 48) = v26;
  *v16 = v24;
  *(v16 + 16) = v25;
  v27 = v9;
  v28 = v17;
  v29 = v19;
  v30 = v21;
  sub_21B9AFF80(&v46, v54, &qword_27CD9FB98);
  sub_21B9ABAAC(v40, &qword_27CD9FB80);
  v54[0] = v27;
  v54[1] = v28;
  v54[2] = v20;
  v55 = v29;
  v56 = v30;
  v57 = v13;
  v58 = v18;
  v59 = v45;
  v60 = v22;
  v61 = v44;
  v62 = v43;
  v63 = v42;
  v64 = v41;
  v65 = v33;
  v66 = v12;
  sub_21B9ABAAC(v54, &qword_27CD9FB98);
  return sub_21B9ABAAC(v32, &qword_27CD9FB80);
}

uint64_t sub_21BA750DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v113 = (&v92 - v5);
  v110 = sub_21BA86CCC();
  v104 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBA8);
  v101 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v100 = &v92 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBB0);
  v105 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v103 = &v92 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBB8);
  MEMORY[0x28223BE20](v106);
  v107 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v111 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBC8);
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x28223BE20](v14);
  v97 = &v92 - v15;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBD0);
  MEMORY[0x28223BE20](v114);
  v117 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBD8);
  MEMORY[0x28223BE20](v17 - 8);
  v119 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v92 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBE0);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v92 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v92 - v28;
  v30 = *(a1 + 16);
  v139 = *a1;
  v140 = v30;
  v141 = *(a1 + 32);
  sub_21B9FC35C(0, v127);
  sub_21B9AFF80(v127, &v124, &qword_27CD9EB60);
  v31 = *&v125[8];
  v121 = v4;
  v115 = a1;
  v116 = v21;
  if (*&v125[8])
  {
    __swift_project_boxed_opaque_existential_1(&v124, *&v125[8]);
    v32 = sub_21B9FD000(v31);
    if (*(a1 + 144))
    {
      v33 = 0.0;
    }

    else
    {
      v33 = 1.0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v124);
    *&v124 = v32;
    *(&v124 + 1) = v33;
    v34 = *(a1 + 145);
    v35 = sub_21BA73B54();
    v37 = v36;
    v38 = v29;
    v39 = v3;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC68);
    v41 = sub_21BA76B08();
    v42 = (v34 & 1) == 0;
    v4 = v121;
    v43 = v35;
    v44 = v37;
    a1 = v115;
    v21 = v116;
    v45 = v40;
    v3 = v39;
    v29 = v38;
    sub_21B9D41D0(v42, v43, v44, v45, v41, v26);

    v46 = 0;
  }

  else
  {
    sub_21B9ABAAC(&v124, &qword_27CD9EB60);
    v46 = 1;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBE8);
  (*(*(v47 - 8) + 56))(v26, v46, 1, v47);
  sub_21B9AB6D4(v26, v29, &qword_27CD9FBE0);
  if (*(a1 + 136) <= 1uLL)
  {
    if (v128 && (*(a1 + 145) & 1) == 0)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0x100000000;
    }

    v48 = *(a1 + 152);
    v95 = *(a1 + 160);
    if (v48)
    {

      v49 = sub_21BA8787C();
    }

    else
    {
      v49 = 0;
    }

    v50 = *(a1 + 64);
    v136 = *(a1 + 48);
    v137 = v50;
    v138 = *(a1 + 80);
    sub_21B9FC35C(v49, &v124);

    v51 = *&v125[8];
    v93 = v29;
    v94 = v3;
    v96 = v48;
    if (*&v125[8])
    {
      __swift_project_boxed_opaque_existential_1(&v124, *&v125[8]);
      v52 = sub_21B9FD000(v51);
      KeyPath = swift_getKeyPath();
      __swift_destroy_boxed_opaque_existential_1(&v124);
      sub_21BA87B2C();
      v54 = 1;
      sub_21BA86CEC();
      *&v126[103] = v135;
      *&v126[87] = v134;
      *&v126[71] = v133;
      *&v126[55] = v132;
      *&v126[23] = v130;
      *&v126[7] = v129;
      *&v126[39] = v131;
      *&v125[65] = *&v126[64];
      *&v125[81] = *&v126[80];
      *&v125[97] = *&v126[96];
      *&v125[1] = *v126;
      *&v125[17] = *&v126[16];
      *&v125[33] = *&v126[32];
      *&v124 = v52;
      *(&v124 + 1) = KeyPath;
      v125[0] = 1;
      *&v125[112] = *(&v135 + 1);
      *&v125[49] = *&v126[48];
      if ((*(a1 + 145) & 1) == 0)
      {
        v54 = *(a1 + 144);
      }

      v55 = sub_21BA87B3C();
      v57 = v56;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC20);
      v59 = sub_21BA7699C(&qword_27CD9FC28, &qword_27CD9FC20, &unk_21BA9F650, sub_21BA76A20);
      v60 = v97;
      sub_21B9D41D0(v54, v55, v57, v58, v59, v97);
      v122[6] = *&v125[80];
      v122[7] = *&v125[96];
      v123 = *&v125[112];
      v122[2] = *&v125[16];
      v122[3] = *&v125[32];
      v122[4] = *&v125[48];
      v122[5] = *&v125[64];
      v122[0] = v124;
      v122[1] = *v125;
      sub_21B9ABAAC(v122, &qword_27CD9FC20);
      if (*(v115 + 144))
      {
        v61 = 1.0;
      }

      else
      {
        v61 = 0.0;
      }

      v62 = v117;
      (*(v98 + 32))(v117, v60, v99);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBF8);
      *(v62 + *(v63 + 36)) = v61;
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      v21 = v116;
      v48 = v96;
      if (v96)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_21B9ABAAC(&v124, &qword_27CD9EB60);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBF8);
      v62 = v117;
      (*(*(v76 - 8) + 56))(v117, 1, 1, v76);
      if (v48)
      {
LABEL_23:
        v64 = swift_allocObject();
        v65 = v95;
        *(v64 + 16) = v48;
        *(v64 + 24) = v65;
        MEMORY[0x28223BE20](v64);
        v115 = sub_21BA767F0();

        v66 = v100;
        sub_21BA879BC();
        v67 = v102;
        sub_21BA86CBC();
        v68 = sub_21B9B35B8(&qword_27CD9FC00, &qword_27CD9FBA8);
        v69 = sub_21BA76798();
        v70 = v103;
        v71 = v108;
        v72 = v110;
        sub_21BA876DC();
        (*(v104 + 8))(v67, v72);
        (*(v101 + 8))(v66, v71);
        v73 = v105;
        v74 = v112;
        (*(v105 + 16))(v107, v70, v112);
        swift_storeEnumTagMultiPayload();
        *&v124 = v71;
        *(&v124 + 1) = v72;
        *v125 = v68;
        *&v125[8] = v69;
        swift_getOpaqueTypeConformance2();
        v75 = v109;
        sub_21BA8715C();
        sub_21B946D98(v96);
        (*(v73 + 8))(v70, v74);
LABEL_26:
        v79 = v128 != 0;
        v80 = v128 == 0;
        v81 = v111;
        sub_21B9AFF80(v75, v111, &qword_27CD9FBC0);
        v82 = v113;
        *v113 = 0;
        v83 = BYTE4(v92);
        *(v82 + 8) = v92;
        *(v82 + 9) = v83;
        v84 = v75;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FC60);
        sub_21B9AFF80(v81, v82 + *(v85 + 48), &qword_27CD9FBC0);
        v86 = v82 + *(v85 + 64);
        *v86 = 0;
        *(v86 + 8) = v80;
        *(v86 + 9) = v79;
        sub_21B9ABAAC(v84, &qword_27CD9FBC0);
        sub_21B9ABAAC(v81, &qword_27CD9FBC0);
        sub_21B9AB6D4(v82, v21, &qword_27CD9FBA0);
        (*(v121 + 56))(v21, 0, 1, v94);
        sub_21B9ABAAC(v117, &qword_27CD9FBD0);
        v29 = v93;
        goto LABEL_27;
      }
    }

    sub_21B9AFF80(v62, v107, &qword_27CD9FBD0);
    swift_storeEnumTagMultiPayload();
    v77 = sub_21B9B35B8(&qword_27CD9FC00, &qword_27CD9FBA8);
    v78 = sub_21BA76798();
    *&v124 = v108;
    *(&v124 + 1) = v110;
    *v125 = v77;
    *&v125[8] = v78;
    swift_getOpaqueTypeConformance2();
    sub_21BA767F0();
    v75 = v109;
    sub_21BA8715C();
    goto LABEL_26;
  }

  (*(v4 + 56))(v21, 1, 1, v3);
LABEL_27:
  v87 = v118;
  sub_21B9AFF80(v29, v118, &qword_27CD9FBE0);
  v88 = v119;
  sub_21B9AFF80(v21, v119, &qword_27CD9FBD8);
  v89 = v120;
  sub_21B9AFF80(v87, v120, &qword_27CD9FBE0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FBF0);
  sub_21B9AFF80(v88, v89 + *(v90 + 48), &qword_27CD9FBD8);
  sub_21B9ABAAC(v21, &qword_27CD9FBD8);
  sub_21B9ABAAC(v29, &qword_27CD9FBE0);
  sub_21B9ABAAC(v127, &qword_27CD9EB60);
  sub_21B9ABAAC(v88, &qword_27CD9FBD8);
  return sub_21B9ABAAC(v87, &qword_27CD9FBE0);
}

uint64_t sub_21BA75F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA86DAC();
  *a1 = result & 1;
  return result;
}

void sub_21BA75FF4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21BA884DC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A0);
      v3 = sub_21BA8857C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21BA884DC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x21CEFD920](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21BA882EC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21BA8636C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21BA882FC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_21BA882EC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21BA8636C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21BA882FC();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_21BA762C8()
{
  result = qword_27CDB0DC0[0];
  if (!qword_27CDB0DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB0DC0);
  }

  return result;
}

void _sSo27RemoteUIModernTableViewCellC0A2UIE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR___RemoteUIModernTableViewCell__textLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR___RemoteUIModernTableViewCell__detailLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR___RemoteUIModernTableViewCell__imageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BA884DC())
  {
    sub_21BA75FF4(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR___RemoteUIModernTableViewCell_observers) = v4;
  v5 = (v0 + OBJC_IVAR___RemoteUIModernTableViewCell_detailLinkHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = v0 + OBJC_IVAR___RemoteUIModernTableViewCell_badgeInfo;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  sub_21BA886DC();
  __break(1u);
}

void sub_21BA764B0()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v1[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v1);
}

id sub_21BA765E4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void sub_21BA76624(void *a1, void *a2)
{
  if (a1)
  {
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21BA766B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_21BA766FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA76798()
{
  result = qword_27CD9FC08;
  if (!qword_27CD9FC08)
  {
    sub_21BA86CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FC08);
  }

  return result;
}

unint64_t sub_21BA767F0()
{
  result = qword_27CD9FC10;
  if (!qword_27CD9FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FBD0);
    sub_21BA76874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FC10);
  }

  return result;
}

unint64_t sub_21BA76874()
{
  result = qword_27CD9FC18;
  if (!qword_27CD9FC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FC20);
    sub_21BA7699C(&qword_27CD9FC28, &qword_27CD9FC20, &unk_21BA9F650, sub_21BA76A20);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9FC50, &qword_27CD9FC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FC18);
  }

  return result;
}

uint64_t sub_21BA7699C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BA76A20()
{
  result = qword_27CD9FC30;
  if (!qword_27CD9FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FC38);
    sub_21B9B35B8(&qword_27CD9FC40, &qword_27CD9FC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FC30);
  }

  return result;
}

unint64_t sub_21BA76B08()
{
  result = qword_27CD9FC70;
  if (!qword_27CD9FC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FC68);
    sub_21B9B35B8(&qword_27CD9FC50, &qword_27CD9FC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FC70);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21BA76C34()
{
  result = qword_27CD9FCA0;
  if (!qword_27CD9FCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FCA8);
    sub_21BA7699C(&qword_27CD9FB40, &qword_27CD9FB38, &unk_21BA9F590, sub_21B9D4654);
    sub_21B9B35B8(&qword_27CD9FB48, &qword_27CD9FB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FCA0);
  }

  return result;
}

uint64_t RUI.XMLUIDecoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RUI.XMLUIDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21BA7DEE0(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t RUI.XMLUIDecoder.decode<A>(_:from:)(uint64_t a1, void *a2)
{
  _s7BuddyMLO8_DecoderCMa();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = sub_21BA7DEE0(v5);
  v4[4] = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  swift_beginAccess();
  v4[3] = v6;
  v7 = a2;

  sub_21BA7E0F0();
  return sub_21BA880CC();
}

uint64_t RUI.XMLUIDecoder.__allocating_init(with:)(__int128 *a1)
{
  v2 = sub_21BA886AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21BA7DEE0(MEMORY[0x277D84F90]);
  v8 = sub_21B9C1334();
  v9 = *(v3 + 16);
  v11 = *a1;
  v9(v5, v8, v2);
  v12 = v11;
  v13 = v6;
  v14 = &type metadata for DecodingContext;
  swift_beginAccess();
  sub_21BA011F8(&v12, v5);
  swift_endAccess();
  return v7;
}

uint64_t RUI.XMLUIDecoder.__allocating_init(with:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BA886AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  type metadata accessor for ResourceLoader();
  sub_21B9AFF80(a3, v12, &qword_27CD9DBA0);
  swift_unknownObjectRetain();
  v13 = sub_21B9AAE44(v12, a1, a2);
  type metadata accessor for RUIDecodingUserInfo();
  RUIDecodingUserInfo.init()(v14);
  v16 = v15;
  type metadata accessor for XMLUIData();
  v17 = sub_21B9ACF44(0);
  sub_21B9C10B4(v13, v16, v17, &v27);
  v18 = v28;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21BA7DEE0(MEMORY[0x277D84F90]);
  v20 = sub_21B9C1334();
  v21 = *(v7 + 16);
  v23 = v27;
  v21(v9, v20, v6);
  v24 = v23;
  v25 = v18;
  v26 = &type metadata for DecodingContext;
  swift_beginAccess();
  sub_21BA011F8(&v24, v9);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_21B9ABAAC(a3, &qword_27CD9DBA0);
  return v19;
}

uint64_t RUI.XMLUIDecoder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21BA773C4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 16) = a1;
}

uint64_t sub_21BA77464(uint64_t a1)
{
  if (qword_27CDB0F40 != -1)
  {
    swift_once();
  }

  v2 = sub_21BA886AC();
  v3 = __swift_project_value_buffer(v2, qword_27CDB0F48);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21B9C14A8(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21B9AFDF0(*(a1 + 56) + 32 * v4, v8);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t sub_21BA77524()
{
  if (qword_27CDB0F40 != -1)
  {
    swift_once();
  }

  v0 = sub_21BA886AC();

  return __swift_project_value_buffer(v0, qword_27CDB0F48);
}

uint64_t sub_21BA77588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21BA886AC();
  __swift_allocate_value_buffer(v3, qword_27CDB0F28);
  v4 = __swift_project_value_buffer(v3, qword_27CDB0F28);
  sub_21BA8869C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA776B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21BA886AC();
  __swift_allocate_value_buffer(v3, qword_27CDB0F48);
  v4 = __swift_project_value_buffer(v3, qword_27CDB0F48);
  sub_21BA8869C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.ruiEnableLiftUITweaks.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDB0F40 != -1)
  {
    swift_once();
  }

  v2 = sub_21BA886AC();
  v3 = __swift_project_value_buffer(v2, qword_27CDB0F48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21BA7789C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7630441;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C62756F64;
    }

    else
    {
      v4 = 0x676E69727473;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1819242338;
    }

    else
    {
      v4 = 7630441;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x656C62756F64;
  if (a2 != 2)
  {
    v7 = 0x676E69727473;
  }

  if (a2)
  {
    v2 = 1819242338;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BA8899C();
  }

  return v10 & 1;
}

uint64_t sub_21BA779B8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA77A64()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA77AFC()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA77BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA7E368();
  *a1 = result;
  return result;
}

void sub_21BA77BD4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7630441;
  v4 = 0x656C62756F64;
  if (*v1 != 2)
  {
    v4 = 0x676E69727473;
  }

  if (*v1)
  {
    v3 = 1819242338;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21BA77C3C()
{
  if (qword_27CDB0F20 != -1)
  {
    swift_once();
  }

  v1 = sub_21BA886AC();
  v2 = __swift_project_value_buffer(v1, qword_27CDB0F28);
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (*(v3 + 16))
  {

    v4 = sub_21B9C14A8(v2);
    if (v5)
    {
      sub_21B9AFDF0(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21BA77D30()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  _s7BuddyMLO14KeyedContainerVMa();

  v2 = v1;
  swift_getWitnessTable();
  return sub_21BA8884C();
}

void sub_21BA77E00(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_21BA886AC();
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7BuddyMLO8_DecoderCMa();
  v19 = v10;
  v11 = sub_21BA7E0F0();
  v20 = v11;
  v18[0] = v4;

  v21 = a2;
  sub_21BA880CC();
  if (v3)
  {
    v16[1] = a1;
    swift_beginAccess();

    v13 = sub_21BA77464(v12);

    if (v13)
    {
      v14 = sub_21BA77C3C() ^ 1;
      if (qword_27CDB0F20 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v7, qword_27CDB0F28);
      (*(v17 + 16))(v9, v15, v7);
      v19 = MEMORY[0x277D839B0];
      LOBYTE(v18[0]) = v14 & 1;
      swift_beginAccess();
      sub_21BA011F8(v18, v9);
      swift_endAccess();
      v19 = v10;
      v20 = v11;
      v18[0] = v4;

      sub_21BA880CC();
    }

    else
    {
      swift_willThrow();
    }
  }
}

id sub_21BA780DC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  swift_beginAccess();
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  a1[3] = &_s7BuddyMLO16UnkeyedContainerVN;
  a1[4] = sub_21BA7E2AC();
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  v7[5] = 0;

  return v6;
}

id sub_21BA78184@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  swift_beginAccess();
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  a1[3] = &_s7BuddyMLO20SingleValueContainerVN;
  a1[4] = sub_21BA7E258();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;

  return v6;
}

uint64_t sub_21BA78214(uint64_t a1, uint64_t a2)
{
  if (swift_conformsToProtocol2() && a2)
  {
    return 1;
  }

  if (qword_27CDB0F40 != -1)
  {
    swift_once();
  }

  v5 = sub_21BA886AC();
  v6 = __swift_project_value_buffer(v5, qword_27CDB0F48);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v7 = sub_21B9C14A8(v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_21B9AFDF0(*(a1 + 56) + 32 * v7, v13);
  if (!swift_dynamicCast() || (v12 & 1) == 0)
  {
    return 0;
  }

  if (qword_27CDB0F20 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27CDB0F28);
  if (*(a1 + 16) && (v10 = sub_21B9C14A8(v9), (v11 & 1) != 0) && (sub_21B9AFDF0(*(a1 + 56) + 32 * v10, v13), swift_dynamicCast()))
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21BA78398(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (!swift_conformsToProtocol2() || !a3)
  {
LABEL_6:
    if (swift_conformsToProtocol2() && a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_21BA92F40;
      v12 = [a2 name];
      v13 = sub_21BA87CBC();
      v15 = v14;

      *(v10 + 32) = v13;
      *(v10 + 40) = v15;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      v42 = MEMORY[0x277D84F90];
      if ((sub_21BA78214(a1, a3) & 1) == 0)
      {
        goto LABEL_12;
      }

      v17 = [a2 name];
      v18 = sub_21BA87CBC();
      v20 = v19;

      v21 = sub_21BA48164(0, 1, 1, MEMORY[0x277D84F90]);
      a4 = *(v21 + 2);
      v22 = *(v21 + 3);
      v23 = a4 + 1;
      if (a4 >= v22 >> 1)
      {
        goto LABEL_28;
      }

      while (1)
      {
        *(v21 + 2) = v23;
        v24 = &v21[16 * a4];
        *(v24 + 4) = v18;
        *(v24 + 5) = v20;
        v42 = v21;
LABEL_12:
        v25 = [a2 children];
        type metadata accessor for RUIXMLElement(0);
        v20 = sub_21BA87F0C();

        if (v20 >> 62)
        {
          v23 = sub_21BA884DC();
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        v40 = a2;
        v41 = a3;
        v43 = v16;
        v18 = &v43;
        sub_21B9BCCB8(0, v23 & ~(v23 >> 63), 0);
        if ((v23 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_28:
        v21 = sub_21BA48164((v22 > 1), v23, 1, v21);
      }

      v26 = 0;
      v16 = v43;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x21CEFD920](v26, v20);
        }

        else
        {
          v27 = *(v20 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = [v28 name];
        v30 = sub_21BA87CBC();
        v32 = v31;

        v43 = v16;
        v34 = *(v16 + 16);
        v33 = *(v16 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21B9BCCB8((v33 > 1), v34 + 1, 1);
          v16 = v43;
        }

        ++v26;
        *(v16 + 16) = v34 + 1;
        v35 = v16 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
      }

      while (v23 != v26);
LABEL_25:

      v36 = [a2 attributtes];
      v37 = sub_21BA87BCC();

      v43 = v16;
      sub_21BA7D7F8(v37);
      v11 = sub_21BA48070(v43);
      v10 = v42;
    }

    goto LABEL_26;
  }

  v8 = [a2 attributtes];
  v9 = sub_21BA87BCC();

  a1 = *(v9 + 16);
  if (!a1)
  {

    v10 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v10 = sub_21BA7DD04(*(v9 + 16), 0);
  a2 = sub_21BA7DD88(&v42, (v10 + 32), a1, v9);
  v11 = sub_21B9AFF68();
  if (a2 != a1)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_26:
  v42 = v10;
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258);
  sub_21BA81548();
  v38 = sub_21BA87E6C();

  return v38;
}

uint64_t sub_21BA78814(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  sub_21BA78398(a2, a3, a4, a5);
  sub_21BA87F8C();
  swift_getWitnessTable();
  v5 = sub_21BA87E8C();

  return v5 & 1;
}

uint64_t sub_21BA788F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_21BA7895C(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v8 = sub_21BA87C8C();

    v6 = [v8 BOOLValue];
  }

  return v6 & 1;
}

void *sub_21BA7895C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_21BA88C5C();
  v13 = v12;
  v14 = [a4 attributtes];
  v15 = sub_21BA87BCC();

  if (*(v15 + 16))
  {
    v16 = sub_21B940DCC(v11, v13);
    v18 = v17;

    if (v18)
    {
      a4 = *(*(v15 + 56) + 16 * v16);

LABEL_9:

      return a4;
    }
  }

  else
  {
  }

  v19 = sub_21BA78B60(a1, a2, a3, a4, a5, a6);
  if (!v29)
  {
    v20 = v19;
    v21 = [v19 attributtes];
    v22 = sub_21BA87BCC();

    if (*(v22 + 16))
    {
      v23 = sub_21B940DCC(0x65756C6176, 0xE500000000000000);
      if (v24)
      {
        a4 = *(*(v22 + 56) + 16 * v23);

        goto LABEL_9;
      }
    }

    v25 = [v20 stringValue];
    if (v25)
    {
      v26 = v25;
      a4 = sub_21BA87CBC();
    }

    else
    {

      return 0;
    }
  }

  return a4;
}

void *sub_21BA78B60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v58 = a2;
  v59 = a3;
  v9 = a4;
  v10 = sub_21BA88C5C();
  v12 = v11;
  v13 = [v9 attributtes];
  v14 = sub_21BA87BCC();

  if (*(v14 + 16))
  {
    sub_21B940DCC(v10, v12);
    v16 = v15;

    if (v16)
    {

      sub_21BA88C5C();
      v17 = objc_allocWithZone(RUIXMLElement);
      v18 = sub_21BA87C8C();

      v19 = [v17 initWithName_];

      v20 = sub_21BA87C8C();

      [v19 setStringValue_];

      v21 = [v9 attributtes];
      v22 = sub_21BA87BCC();

      if (*(v22 + 16) && (v23 = sub_21B940DCC(1701869940, 0xE400000000000000), (v24 & 1) != 0))
      {
        v25 = (*(v22 + 56) + 16 * v23);
        v26 = *v25;
        v27 = v25[1];
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v30 = [v19 attributtes];
      v31 = sub_21BA87BCC();

      v60 = v31;
      sub_21BA63620(v26, v27, 1701869940, 0xE400000000000000);
      v32 = sub_21BA87BBC();

      [v19 setAttributtes_];

      return v19;
    }
  }

  else
  {
  }

  v60 = a5;
  swift_getMetatypeMetadata();
  sub_21BA87D4C();
  v28 = sub_21BA796AC();

  if (v28)
  {
    if (sub_21BA88C5C() == 0x746E65746E6F63 && v29 == 0xE700000000000000)
    {

      goto LABEL_14;
    }

    v33 = sub_21BA8899C();

    if (v33)
    {
LABEL_14:
      v34 = v9;
      if (v9)
      {
        v19 = v34;

        return v19;
      }
    }
  }

  v35 = [v9 children];
  type metadata accessor for RUIXMLElement(0);
  v36 = sub_21BA87F0C();

  MEMORY[0x28223BE20](v37);
  v57[2] = a5;
  v57[3] = a6;
  v57[4] = a1;
  v38 = v62;
  v19 = sub_21BA79808(sub_21BA80F5C, v57, v36);

  if (!v19)
  {
    v39 = &selRef_datePickerMode;
    if (sub_21BA78214(v59, a5))
    {
      v62 = v38;
      v40 = sub_21BA88C5C();
      v42 = v41;
      v43 = [v9 name];
      v44 = sub_21BA87CBC();
      v46 = v45;

      if (v40 == v44 && v42 == v46)
      {

        return v9;
      }

      v47 = sub_21BA8899C();

      v39 = 0x1FB189000;
      if (v47)
      {
        return v9;
      }
    }

    v48 = v39;
    v49 = sub_21BA885FC();
    v62 = swift_allocError();
    v19 = v50;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD10) + 48);
    v19[3] = a5;
    v19[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    v60 = 0;
    v61 = 0xE000000000000000;

    sub_21BA8859C();

    v60 = 0xD00000000000001ALL;
    v61 = 0x800000021BAA6B70;
    v52 = [v9 (v48 + 3064)];
    v53 = sub_21BA87CBC();
    v55 = v54;

    MEMORY[0x21CEFD130](v53, v55);

    sub_21BA885EC();
    (*(*(v49 - 8) + 104))(v19, *MEMORY[0x277D84158], v49);
    swift_willThrow();
    return v19;
  }

  return v19;
}

void sub_21BA791C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_21BA7895C(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v7 = sub_21BA87C8C();

    [v7 doubleValue];
  }
}

void sub_21BA7922C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_21BA7895C(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v7 = sub_21BA87C8C();

    [v7 floatValue];
  }
}

id sub_21BA79298(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = sub_21BA7895C(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = sub_21BA87C8C();

    v9 = [v8 integerValue];

    return v9;
  }

  return result;
}

uint64_t sub_21BA792FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  result = sub_21BA88A1C();
  if (!v4)
  {
    v10 = sub_21BA88A0C();
    sub_21BA7B7DC(a1, v10, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21BA793BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  _s7BuddyMLO14KeyedContainerVMa();
  WitnessTable = swift_getWitnessTable();
  v14 = a7(WitnessTable, v12, v13);
  result = sub_21BA792FC(a8, a8, v14, &v16);
  if (!v8)
  {
    return v16;
  }

  return result;
}

uint64_t sub_21BA79478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  _s7BuddyMLO14KeyedContainerVMa();
  WitnessTable = swift_getWitnessTable();
  v14 = a7(WitnessTable, v12, v13);
  result = sub_21BA792FC(a8, a8, v14, &v16);
  if (!v8)
  {
    return v16;
  }

  return result;
}

uint64_t sub_21BA79534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  _s7BuddyMLO14KeyedContainerVMa();
  WitnessTable = swift_getWitnessTable();
  v14 = a7(WitnessTable, v12, v13);
  result = sub_21BA792FC(a8, a8, v14, &v16);
  if (!v8)
  {
    return v16;
  }

  return result;
}

uint64_t sub_21BA795F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  _s7BuddyMLO14KeyedContainerVMa();
  WitnessTable = swift_getWitnessTable();
  v14 = a7(WitnessTable, v12, v13);
  result = sub_21BA792FC(a8, a8, v14, &v16);
  if (!v8)
  {
    return v16;
  }

  return result;
}

uint64_t sub_21BA796AC()
{

  v0 = sub_21BA87DFC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_21BA87DFC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_21BA8899C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_21BA87DFC();
      v3 = v5;
    }

    while (v5);
  }

  sub_21BA87DFC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_21BA79808(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEFD920](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void *sub_21BA7991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a8;
  v55 = a10;
  if (swift_conformsToProtocol2() && a1)
  {

    if ((sub_21BA77464(v19) & 1) == 0)
    {
      v50 = a3;
      v52 = a9;
      v27 = objc_allocWithZone(RUIXMLElement);
      v28 = a6;
      v29 = sub_21BA87C8C();
      v53 = [v27 initWithName_];

      v30 = [a5 children];
      type metadata accessor for RUIXMLElement(0);
      v31 = sub_21BA87F0C();

      MEMORY[0x28223BE20](v32);
      v49 = v28;
      v47[2] = v28;
      v47[3] = a7;
      v47[4] = v57;
      v47[5] = v55;
      v47[6] = a2;
      v33 = sub_21BA79E74(sub_21BA81020, v47, v31);
      v47[9] = v10;
      v34 = sub_21BA87EFC();
      [v53 appendChildren_];

      v54 = a7;
      v51 = a4;
      v48 = a2;
      if (v33 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
      {
        v36 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x21CEFD920](v36, v33);
          }

          else
          {
            if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v37 = *(v33 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          [v37 setParent_];

          ++v36;
          if (v39 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:

      _s7BuddyMLO8_DecoderCMa();
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D84F90];
      v40[2] = MEMORY[0x277D84F90];
      v42 = v53;
      v40[3] = sub_21BA7DEE0(v41);
      v40[4] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BA92F40;
      v44 = v49;
      v45 = v57;
      *(inited + 56) = v49;
      *(inited + 64) = v45;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v48, v44);
      v56 = v50;

      sub_21BA7DAB4(inited);
      v40[2] = v56;

      swift_beginAccess();
      v40[3] = v51;

      sub_21BA77E00(v55, v52);
    }
  }

  v20 = v57;
  result = sub_21BA78B60(a2, a3, a4, a5, a6, v57);
  if (v10)
  {
    return result;
  }

  v22 = result;
  v53 = 0;
  _s7BuddyMLO8_DecoderCMa();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D84F90];
  v23[2] = MEMORY[0x277D84F90];
  v54 = a7;
  v23[3] = sub_21BA7DEE0(v24);
  v23[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_21BA92F40;
  *(v25 + 56) = a6;
  *(v25 + 64) = v20;
  v26 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  (*(*(a6 - 8) + 16))(v26, a2, a6);
  v56 = a3;

  sub_21BA7DAB4(v25);
  v23[2] = a3;

  swift_beginAccess();
  v23[3] = a4;

  sub_21BA77E00(v55, a9);
}

uint64_t sub_21BA79E74(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x21CEFD920](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_21BA8861C();
        sub_21BA8864C();
        v4 = v15;
        sub_21BA8865C();
        sub_21BA8862C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_21BA7A020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BA92F40;
  *(inited + 56) = a5;
  *(inited + 64) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);

  sub_21BA7DAB4(inited);

  sub_21BA78B60(a1, a2, a3, a4, a5, a7);
  if (v7)
  {
  }

  else
  {
    _s7BuddyMLO14KeyedContainerVMa();
    swift_getWitnessTable();
    return sub_21BA8884C();
  }
}

void *sub_21BA7A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{

  v15 = sub_21BA78B60(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
  }

  else
  {
    v17 = v15;
    a7[3] = &_s7BuddyMLO16UnkeyedContainerVN;
    a7[4] = sub_21BA7E2AC();
    result = swift_allocObject();
    *a7 = result;
    result[2] = a2;
    result[3] = a3;
    result[4] = v17;
    result[5] = 0;
  }

  return result;
}

uint64_t sub_21BA7A280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_21BA883CC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_21BA88C6C();
  v15 = *(a4 - 8);
  result = (*(v15 + 48))(v14, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21BA7A3D8(v14, a1, a2, a3, a4, a5, a6);
    return (*(v15 + 8))(v14, a4);
  }

  return result;
}

unint64_t sub_21BA7A3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_21BA78B60(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v15 = result;
    v20 = _s7BuddyMLO8_DecoderCMa();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D84F90];
    v16[2] = MEMORY[0x277D84F90];
    v16[3] = sub_21BA7DEE0(v17);
    v16[4] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BA92F40;
    *(inited + 56) = a5;
    *(inited + 64) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);

    sub_21BA7DAB4(inited);
    v16[2] = a2;

    swift_beginAccess();
    v16[3] = a3;

    a7[3] = v20;
    result = sub_21BA7E0F0();
    a7[4] = result;
    *a7 = v16;
  }

  return result;
}

uint64_t sub_21BA7A9AC()
{
  result = sub_21BA88A4C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7A9FC()
{
  result = sub_21BA88A5C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7AAA4()
{
  result = sub_21BA88A8C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7AAF4()
{
  result = sub_21BA88A6C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7AC34()
{
  result = sub_21BA88A9C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

id sub_21BA7ADC0()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  return v1;
}

void *sub_21BA7ADFC()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (v1 != v1)
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCF0);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

void *sub_21BA7AF64()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (v1 != v1)
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCE8);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

void *sub_21BA7B0CC()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (v1 != v1)
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCE0);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

void *sub_21BA7B234()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (v1 > 0xFF)
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCD0);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_21BA7B39C()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (v1 >> 16)
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCC8);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_21BA7B504()
{
  v0 = sub_21BA87C8C();
  v1 = [v0 integerValue];

  if (HIDWORD(v1))
  {
    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;

    sub_21BA8859C();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000021BAA68D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCC0);
    v5 = sub_21BA87D2C();
    v1 = v7;
    MEMORY[0x21CEFD130](v5);

    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_21BA7B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_21BA87C8C();
  v7 = [v6 integerValue];

  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = sub_21BA885FC();
    swift_allocError();
    v10 = v9;

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v11);

    sub_21BA885EC();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_21BA7B7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v40 = a1;
  v41 = a2;
  v38 = *(*(*(a4 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36[1] = v36 - v7;
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  v17 = sub_21BA87C8C();
  v42 = [v17 integerValue];

  sub_21BA886CC();
  LOBYTE(v17) = sub_21BA8844C();
  v18 = sub_21BA8843C();
  v39 = a5;
  if (v17)
  {
    if (v18 > 64)
    {
      v36[0] = v10;
      v19 = v42;
      v44 = v42;
      sub_21BA8113C();
      sub_21BA8841C();
      v20 = sub_21BA87C5C();
      v21 = *(v43 + 8);
      v21(v13, a3);
      v22 = v16;
      v23 = v19;
      v10 = v36[0];
      v21(v22, a3);
      if (v20)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_6:
    v24 = sub_21BA8842C();
    v21 = *(v43 + 8);
    v21(v16, a3);
    v23 = v42;
    if (v42 < v24)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (v18 <= 63)
  {
    goto LABEL_6;
  }

  v25 = v42;
  if (v42 < 0)
  {
    (*(v43 + 8))(v16, a3);
    goto LABEL_24;
  }

  v44 = v42;
  sub_21BA8113C();
  sub_21BA8841C();
  LODWORD(v36[0]) = sub_21BA87C5C();
  v21 = *(v43 + 8);
  v21(v13, a3);
  v21(v16, a3);
  v23 = v25;
  if (v36[0])
  {
LABEL_24:
    v31 = sub_21BA885FC();
    swift_allocError();
    v33 = v32;
    v44 = 0;
    v45 = 0xE000000000000000;

    sub_21BA8859C();

    v44 = 0xD000000000000018;
    v45 = 0x800000021BAA68D0;
    v46 = v40;
    swift_getMetatypeMetadata();
    v34 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v34);

    sub_21BA885EC();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84168], v31);
    return swift_willThrow();
  }

LABEL_10:
  sub_21BA886BC();
  if (sub_21BA8844C())
  {
    if (sub_21BA8843C() >= 64)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v26 = sub_21BA8844C();
  v27 = sub_21BA8843C();
  if (v26)
  {
    if (v27 > 64)
    {
      goto LABEL_23;
    }

    swift_getAssociatedConformanceWitness();
    sub_21BA88ADC();
    sub_21BA8897C();
    v28 = sub_21BA87C5C();
    v21(v13, a3);
    if (v28)
    {
      v21(v10, a3);
      goto LABEL_24;
    }

    v29 = sub_21BA8842C();
    v21(v10, a3);
    v23 = v42;
    goto LABEL_19;
  }

  if (v27 < 64)
  {
LABEL_18:
    v29 = sub_21BA8842C();
    v21(v10, a3);
LABEL_19:
    if (v29 >= v23)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v23 < 1)
  {
    v21(v10, a3);
    goto LABEL_27;
  }

LABEL_23:
  v44 = v23;
  sub_21BA8113C();
  sub_21BA8841C();
  v30 = sub_21BA87C5C();
  v21(v13, a3);
  v21(v10, a3);
  if (v30)
  {
    goto LABEL_24;
  }

LABEL_27:
  v44 = v23;
  sub_21BA8113C();
  return sub_21BA8845C();
}

uint64_t sub_21BA7BE9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (swift_dynamicCastMetatype())
  {
    result = sub_21BA7EA08(a1, a3);
    if (!v5)
    {
      return swift_dynamicCast();
    }
  }

  else
  {
    _s7BuddyMLO8_DecoderCMa();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F90];
    v12[2] = MEMORY[0x277D84F90];
    v14 = a3;
    v12[3] = sub_21BA7DEE0(v13);
    v12[4] = v14;
    v12[2] = a1;

    swift_beginAccess();
    v12[3] = a2;

    sub_21BA77E00(a4, a5);
  }

  return result;
}

void sub_21BA7C058()
{
  sub_21BA7EA08(*v0, *(v0 + 16));
  if (!v1)
  {
    v2 = sub_21BA87C8C();

    [v2 floatValue];
  }
}

uint64_t sub_21BA7C264(uint64_t a1)
{
  v2 = sub_21BA80B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA7C2A0(uint64_t a1)
{
  v2 = sub_21BA80B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA7C2DC()
{
  sub_21BA80948(*v0, *(v0 + 16), *(v0 + 24));
  if (!v1)
  {
    v4 = v2;
    v5 = [v2 attributtes];
    v6 = sub_21BA87BCC();

    if (*(v6 + 16) && (sub_21B940DCC(0x65756C6176, 0xE500000000000000), (v7 & 1) != 0))
    {
    }

    else
    {

      v8 = [v4 children];
      type metadata accessor for RUIXMLElement(0);
      v9 = sub_21BA87F0C();

      if (v9 >> 62)
      {
        v10 = sub_21BA884DC();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v10)
      {
        v11 = [v4 stringValue];
        if (!v11)
        {

          v3 = 1;
          return v3 & 1;
        }
      }
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_21BA7C494(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (v2)
  {
    return swift_willThrow();
  }

  v4 = *(v1 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v6;
  }

  return result;
}

void *sub_21BA7C4E8@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[3];
  sub_21BA80948(*v1, v1[2], v6);
  if (v2)
  {
    return swift_willThrow();
  }

  v9 = v7;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BA92F40;

  v12 = sub_21BA8889C();
  v14 = v13;
  *(inited + 56) = &_s7BuddyMLO16UnkeyedContainerV3KeyVN;
  *(inited + 64) = sub_21BA80B1C();
  v15 = swift_allocObject();
  *(inited + 32) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v15 + 32) = v6;
  *(v15 + 40) = 0;
  v19 = v5;
  sub_21BA7DAB4(inited);
  v17 = &_s7BuddyMLO16UnkeyedContainerVN;
  v18 = sub_21BA7E2AC();
  result = swift_allocObject();
  *&v16 = result;
  result[2] = v5;
  result[3] = v4;
  result[4] = v9;
  result[5] = 0;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v10[3] = v6 + 1;
    sub_21B9B5E1C(&v16, a1);
  }

  return result;
}

void sub_21BA7C65C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[3];
  sub_21BA80948(*a1, a1[2], v6);
  if (!v2)
  {
    v8 = v7;
    v17 = _s7BuddyMLO8_DecoderCMa();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F90];
    v9[2] = MEMORY[0x277D84F90];
    v16 = v8;
    v9[3] = sub_21BA7DEE0(v10);
    v9[4] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BA92F40;

    v12 = sub_21BA8889C();
    v14 = v13;
    *(inited + 56) = &_s7BuddyMLO16UnkeyedContainerV3KeyVN;
    *(inited + 64) = sub_21BA80B1C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v6;
    *(v15 + 40) = 0;
    sub_21BA7DAB4(inited);
    v9[2] = v5;

    swift_beginAccess();
    v9[3] = v4;

    a2[3] = v17;
    a2[4] = sub_21BA7E0F0();

    *a2 = v9;
  }
}

void sub_21BA7C808()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[3];
  sub_21BA80948(*v0, v0[2], v4);
  if (!v1)
  {
    v6 = v5;
    _s7BuddyMLO8_DecoderCMa();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    v7[2] = MEMORY[0x277D84F90];
    v16 = v3;
    v9 = v6;
    v7[3] = sub_21BA7DEE0(v8);
    v7[4] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BA92F40;

    v11 = sub_21BA8889C();
    v13 = v12;
    *(inited + 56) = &_s7BuddyMLO16UnkeyedContainerV3KeyVN;
    *(inited + 64) = sub_21BA80B1C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v4;
    *(v14 + 40) = 0;
    sub_21BA7DAB4(inited);
    v7[2] = v2;

    swift_beginAccess();
    v7[3] = v16;

    MEMORY[0x28223BE20](v15);
    sub_21BA7C494(sub_21BA80CE0);
  }
}

uint64_t sub_21BA7CA10()
{
  v1 = [*(v0 + 16) children];
  type metadata accessor for RUIXMLElement(0);
  v2 = sub_21BA87F0C();

  if (v2 >> 62)
  {
    v3 = sub_21BA884DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

BOOL sub_21BA7CA9C()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) children];
  type metadata accessor for RUIXMLElement(0);
  v3 = sub_21BA87F0C();

  if (v3 >> 62)
  {
    v4 = sub_21BA884DC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 >= v4;
}

void sub_21BA7CB54()
{
  v2 = *(v0 + 24);
  sub_21BA80D08(*v0, *(v0 + 16), v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v3 = sub_21BA87C8C();

    [v3 BOOLValue];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 24) = v2 + 1;
    }
  }
}

uint64_t *sub_21BA7CBDC()
{
  v2 = *(v0 + 24);
  result = sub_21BA80D08(*v0, *(v0 + 16), v2);
  if (v1)
  {
    v4 = result;
    swift_willThrow();
    return v4;
  }

  else if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v2 + 1;
  }

  return result;
}

void sub_21BA7CC34()
{
  v2 = *(v0 + 24);
  sub_21BA80D08(*v0, *(v0 + 16), v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v3 = sub_21BA87C8C();

    [v3 doubleValue];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 24) = v2 + 1;
    }
  }
}

void sub_21BA7CCC4()
{
  v2 = *(v0 + 24);
  sub_21BA80D08(*v0, *(v0 + 16), v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v3 = sub_21BA87C8C();

    [v3 floatValue];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 24) = v2 + 1;
    }
  }
}

uint64_t sub_21BA7CE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(v3 + 24);
  v7 = sub_21BA80D08(*v3, *(v3 + 16), v6);
  if (v4)
  {
    swift_willThrow();
    return a3;
  }

  a3 = a3(v7);

  if (!__OFADD__(v6, 1))
  {
    *(v3 + 24) = v6 + 1;
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA7CF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(v3 + 24);
  v7 = sub_21BA80D08(*v3, *(v3 + 16), v6);
  if (v4)
  {
    swift_willThrow();
    return a3;
  }

  a3 = a3(v7);

  if (!__OFADD__(v6, 1))
  {
    *(v3 + 24) = v6 + 1;
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA7CFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(v3 + 24);
  v7 = sub_21BA80D08(*v3, *(v3 + 16), v6);
  if (v4)
  {
    swift_willThrow();
    return a3;
  }

  a3 = a3(v7);

  if (!__OFADD__(v6, 1))
  {
    *(v3 + 24) = v6 + 1;
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA7D098(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(v3 + 24);
  v7 = sub_21BA80D08(*v3, *(v3 + 16), v6);
  if (v4)
  {
    swift_willThrow();
    return a3;
  }

  a3 = a3(v7);

  if (!__OFADD__(v6, 1))
  {
    *(v3 + 24) = v6 + 1;
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA7D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v10 = *v5;
  v11 = *(v5 + 24);
  v12 = sub_21BA80D08(*v5, *(v5 + 16), v11);
  if (v6)
  {
    swift_willThrow();
    return a5;
  }

  a5 = sub_21BA7B66C(v12, v13, v10, a3, a4);

  if (!__OFADD__(v11, 1))
  {
    *(v5 + 24) = v11 + 1;
    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA7D280()
{
  result = sub_21BA888FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7D2D0()
{
  result = sub_21BA8890C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7D378()
{
  result = sub_21BA8893C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7D3C8()
{
  result = sub_21BA8891C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7D508()
{
  result = sub_21BA8894C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_21BA7D558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

void sub_21BA7D5E8(void *a1@<X8>)
{
  sub_21BA7C65C(v1, a1);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v1[3];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v1[3] = v5;
    }
  }
}

uint64_t SingleValueDecodingContainer.ruiXMLElement.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  if (swift_dynamicCast())
  {
    v1 = v9[3];
  }

  else
  {
    v5 = sub_21BA885FC();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v7 = type metadata accessor for RUIXMLElement(0);
    sub_21BA889AC();
    sub_21BA885EC();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_21BA7D7F8(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21BA48164(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_21BA7DD88(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_21BA48164((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_21B9AFF68();
  *v1 = v4;
  return result;
}

void *sub_21BA7DAB4(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21BA7DBBC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21BA7DBBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BA7DD04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21BA7DD88(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_21BA7DEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C8);
    v7 = sub_21BA8872C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B9AFF80(v9, v5, &qword_27CD9FCF8);
      result = sub_21B9C14A8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21BA886AC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_21B9AFF70(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21BA7E0F0()
{
  result = qword_27CDB0F60[0];
  if (!qword_27CDB0F60[0])
  {
    _s7BuddyMLO8_DecoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB0F60);
  }

  return result;
}

unint64_t sub_21BA7E148()
{
  result = qword_27CD9E7B8;
  if (!qword_27CD9E7B8)
  {
    type metadata accessor for RUI.XMLUIDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E7B8);
  }

  return result;
}

uint64_t sub_21BA7E1C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BA7E258()
{
  result = qword_27CDB11F0;
  if (!qword_27CDB11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB11F0);
  }

  return result;
}

unint64_t sub_21BA7E2AC()
{
  result = qword_27CDB11F8[0];
  if (!qword_27CDB11F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB11F8);
  }

  return result;
}

uint64_t sub_21BA7E300(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return a2(v2, a1, 7);
}

uint64_t sub_21BA7E368()
{
  v0 = sub_21BA8875C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA7E3B4(void *a1)
{
  v2 = [a1 attributtes];
  v3 = sub_21BA87BCC();

  if (*(v3 + 16))
  {
    sub_21B940DCC(0x65756C6176, 0xE500000000000000);
    v5 = v4;

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v6 = [a1 children];
  type metadata accessor for RUIXMLElement(0);
  v7 = sub_21BA87F0C();

  if (v7 >> 62)
  {
    v8 = sub_21BA884DC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    return 0;
  }

  v9 = [a1 stringValue];
  if (v9)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_21BA7E4E4(int a1, id a2)
{
  v3 = [a2 attributtes];
  v4 = sub_21BA87BCC();

  if (*(v4 + 16) && (sub_21B940DCC(1701869940, 0xE400000000000000), (v5 & 1) != 0))
  {

    v6 = sub_21BA7E368();
  }

  else
  {

    v6 = 4;
  }

  v7 = [a2 attributtes];
  v8 = MEMORY[0x277D837D0];
  v9 = sub_21BA87BCC();

  if (*(v9 + 16) && (sub_21B940DCC(0x65756C6176, 0xE500000000000000), (v10 & 1) != 0))
  {
  }

  else
  {

    v11 = [a2 stringValue];
    if (v11)
    {
      v12 = v11;
      sub_21BA87CBC();
    }

    else
    {
      v6 = sub_21BA885FC();
      swift_allocError();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
      *v14 = v8;

      sub_21BA8859C();

      v15 = [a2 description];
      v16 = sub_21BA87CBC();
      v18 = v17;

      MEMORY[0x21CEFD130](v16, v18);

      sub_21BA885EC();
      (*(*(v6 - 8) + 104))(v14, *MEMORY[0x277D84170], v6);
      swift_willThrow();
    }
  }

  return v6;
}

uint64_t sub_21BA7E7A8(int a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (v4)
      {

        goto LABEL_10;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_10;
    }

    v5 = sub_21BA8899C();

    if ((v5 & 1) == 0)
    {

      v6 = sub_21BA885FC();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
      *v8 = MEMORY[0x277D839B0];

      sub_21BA8859C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
      v9 = sub_21BA87D2C();
      MEMORY[0x21CEFD130](v9);

      sub_21BA885EC();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
      swift_willThrow();
      return v3 & 1;
    }

LABEL_10:
    v10 = sub_21BA87C8C();

    v3 = [v10 BOOLValue];
  }

  return v3 & 1;
}

uint64_t sub_21BA7EA08(int a1, void *a2)
{
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    v3 = v5;
    if (v4 <= 2u)
    {
      v7 = sub_21BA8899C();

      if ((v7 & 1) == 0)
      {

        v3 = sub_21BA885FC();
        swift_allocError();
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
        *v9 = MEMORY[0x277D837D0];

        sub_21BA8859C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
        v10 = sub_21BA87D2C();
        MEMORY[0x21CEFD130](v10);

        sub_21BA885EC();
        (*(*(v3 - 8) + 104))(v9, *MEMORY[0x277D84160], v3);
        swift_willThrow();
      }
    }

    else if (v4 == 3)
    {
    }
  }

  return v3;
}

void sub_21BA7EC34(int a1, void *a2)
{
  v3 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v3 <= 1u)
    {
      goto LABEL_5;
    }

    if (v3 == 2)
    {
    }

    else if (v3 == 3)
    {
LABEL_5:
      v4 = sub_21BA8899C();

      if ((v4 & 1) == 0)
      {

        v5 = sub_21BA885FC();
        swift_allocError();
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
        *v7 = MEMORY[0x277D839F8];

        sub_21BA8859C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
        v8 = sub_21BA87D2C();
        MEMORY[0x21CEFD130](v8);

        sub_21BA885EC();
        (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
        swift_willThrow();
        return;
      }
    }

    v9 = sub_21BA87C8C();

    [v9 doubleValue];
  }
}

id sub_21BA7EE98(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4 == 2 || v4 == 3)
    {
LABEL_8:
      v5 = sub_21BA8899C();

      if ((v5 & 1) == 0)
      {

        v7 = sub_21BA885FC();
        swift_allocError();
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
        *v9 = MEMORY[0x277D83B88];

        sub_21BA8859C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
        v10 = sub_21BA87D2C();
        MEMORY[0x21CEFD130](v10);

        sub_21BA885EC();
        (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
        swift_willThrow();
        return v3;
      }
    }

    v6 = sub_21BA87C8C();
    v3 = [v6 integerValue];
  }

  return v3;
}

void *sub_21BA7F104(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7ADFC();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D84900];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

void *sub_21BA7F378(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7AF64();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D84958];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

void *sub_21BA7F5EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7B0CC();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D849A8];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

id sub_21BA7F860(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (v4)
      {
        goto LABEL_8;
      }
    }

    else if (v4 == 2 || v4 == 3)
    {
LABEL_8:
      v5 = sub_21BA8899C();

      if ((v5 & 1) == 0)
      {

        v7 = sub_21BA885FC();
        swift_allocError();
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
        *v9 = MEMORY[0x277D84A28];

        sub_21BA8859C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
        v10 = sub_21BA87D2C();
        MEMORY[0x21CEFD130](v10);

        sub_21BA885EC();
        (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
        swift_willThrow();
        return v3;
      }
    }

    v6 = sub_21BA87C8C();
    v3 = [v6 integerValue];
  }

  return v3;
}

unint64_t sub_21BA7FACC(unint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (v2)
  {
    return v3;
  }

  v7 = v6;
  if (v4 <= 1u)
  {
    if (v4)
    {
      v8 = v5;
      goto LABEL_10;
    }

    v9 = v5;

    v5 = v9;
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    v8 = v5;
    goto LABEL_10;
  }

  if (v4 != 3)
  {
LABEL_14:
    v3 = sub_21BA7B66C(v5, v7, v3, MEMORY[0x277D83E88], &qword_27CD9FCD8);

    return v3;
  }

  v8 = v5;
LABEL_10:
  v10 = sub_21BA8899C();

  v5 = v8;
  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_21BA885FC();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
  *v13 = MEMORY[0x277D83E88];

  sub_21BA8859C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
  v14 = sub_21BA87D2C();
  MEMORY[0x21CEFD130](v14);

  sub_21BA885EC();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
  swift_willThrow();
  return v3;
}

void *sub_21BA7FD58(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7B234();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D84B78];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21BA7FFCC(unint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7B39C();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D84C58];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21BA80240(unint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (!v2)
  {
    if (v4 <= 1u)
    {
      if (!v4)
      {

LABEL_12:
        v3 = sub_21BA7B504();

        return v3;
      }
    }

    else if (v4 != 2 && v4 != 3)
    {
      goto LABEL_12;
    }

    v5 = sub_21BA8899C();

    if (v5)
    {
      goto LABEL_12;
    }

    v6 = sub_21BA885FC();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v8 = MEMORY[0x277D84CC0];

    sub_21BA8859C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
    v9 = sub_21BA87D2C();
    MEMORY[0x21CEFD130](v9);

    sub_21BA885EC();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21BA804B4(unint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_21BA7E4E4(a1, a2);
  if (v2)
  {
    return v3;
  }

  v7 = v6;
  if (v4 <= 1u)
  {
    if (v4)
    {
      v8 = v5;
      goto LABEL_10;
    }

    v9 = v5;

    v5 = v9;
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    v8 = v5;
    goto LABEL_10;
  }

  if (v4 != 3)
  {
LABEL_14:
    v3 = sub_21BA7B66C(v5, v7, v3, MEMORY[0x277D84D38], &qword_27CD9FCB8);

    return v3;
  }

  v8 = v5;
LABEL_10:
  v10 = sub_21BA8899C();

  v5 = v8;
  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_21BA885FC();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
  *v13 = MEMORY[0x277D84D38];

  sub_21BA8859C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FCB0);
  v14 = sub_21BA87D2C();
  MEMORY[0x21CEFD130](v14);

  sub_21BA885EC();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
  swift_willThrow();
  return v3;
}

uint64_t sub_21BA80758()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BA8079C(uint64_t a1, int a2)
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

uint64_t sub_21BA807E4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BA80850(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BA80898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BA808EC()
{
  result = qword_27CDB1300[0];
  if (!qword_27CDB1300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB1300);
  }

  return result;
}

void sub_21BA80948(int a1, id a2, uint64_t a3)
{
  v5 = [a2 children];
  type metadata accessor for RUIXMLElement(0);
  v6 = sub_21BA87F0C();

  if (v6 >> 62)
  {
    v7 = sub_21BA884DC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= a3)
  {
    v11 = sub_21BA885FC();
    swift_allocError();
    v13 = v12;

    sub_21BA885EC();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84168], v11);
    swift_willThrow();
  }

  else
  {
    v8 = [a2 children];
    v9 = sub_21BA87F0C();

    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CEFD920](a3, v9);
      goto LABEL_8;
    }

    if (a3 < 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v10 = *(v9 + 8 * a3 + 32);
LABEL_8:

      return;
    }

    __break(1u);
  }
}

unint64_t sub_21BA80B1C()
{
  result = qword_27CDB1510[0];
  if (!qword_27CDB1510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB1510);
  }

  return result;
}

void sub_21BA80B70(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_21BA80948(*a1, *(a1 + 16), v2);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BA92F40;

    v4 = sub_21BA8889C();
    v6 = v5;
    *(inited + 56) = &_s7BuddyMLO16UnkeyedContainerV3KeyVN;
    *(inited + 64) = sub_21BA80B1C();
    v7 = swift_allocObject();
    *(inited + 32) = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;
    *(v7 + 32) = v2;
    *(v7 + 40) = 0;
    sub_21BA7DAB4(inited);
    _s7BuddyMLO14KeyedContainerVMa();

    swift_getWitnessTable();
    sub_21BA8884C();
  }
}

uint64_t *sub_21BA80D08(int a1, void *a2, uint64_t a3)
{
  sub_21BA80948(a1, a2, a3);
  if (!v4)
  {
    v7 = v6;
    v8 = [v6 attributtes];
    v9 = MEMORY[0x277D837D0];
    v10 = sub_21BA87BCC();

    if (*(v10 + 16) && (v11 = sub_21B940DCC(0x65756C6176, 0xE500000000000000), (v12 & 1) != 0))
    {
      v3 = *(*(v10 + 56) + 16 * v11);
    }

    else
    {

      v13 = [v7 stringValue];
      if (v13)
      {
        v14 = v13;
        v3 = sub_21BA87CBC();
      }

      else
      {
        v16 = sub_21BA885FC();
        swift_allocError();
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
        *v18 = v9;

        sub_21BA8859C();

        v19 = [a2 description];
        v20 = sub_21BA87CBC();
        v22 = v21;

        v3 = &v23;
        MEMORY[0x21CEFD130](v20, v22);

        sub_21BA885EC();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
        swift_willThrow();
      }
    }
  }

  return v3;
}

uint64_t sub_21BA80F5C(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_21BA87CBC();
  v4 = v3;

  if (v2 == sub_21BA88C5C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BA8899C();
  }

  return v7 & 1;
}

uint64_t sub_21BA81020(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_21BA87CBC();
  v4 = v3;

  if (v2 == sub_21BA88C5C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BA8899C();
  }

  return v7 & 1;
}

unint64_t sub_21BA810E8()
{
  result = qword_27CD9FD18;
  if (!qword_27CD9FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD18);
  }

  return result;
}

unint64_t sub_21BA8113C()
{
  result = qword_27CD9FD20;
  if (!qword_27CD9FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD20);
  }

  return result;
}

unint64_t sub_21BA81190()
{
  result = qword_27CD9FD28;
  if (!qword_27CD9FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD28);
  }

  return result;
}

unint64_t sub_21BA811E4()
{
  result = qword_27CD9FD30;
  if (!qword_27CD9FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD30);
  }

  return result;
}

unint64_t sub_21BA81238()
{
  result = qword_27CD9FD38;
  if (!qword_27CD9FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD38);
  }

  return result;
}

unint64_t sub_21BA8128C()
{
  result = qword_27CD9FD40;
  if (!qword_27CD9FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD40);
  }

  return result;
}

unint64_t sub_21BA812E0()
{
  result = qword_27CD9FD48;
  if (!qword_27CD9FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD48);
  }

  return result;
}

unint64_t sub_21BA81334()
{
  result = qword_27CD9FD50;
  if (!qword_27CD9FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD50);
  }

  return result;
}

unint64_t sub_21BA81388()
{
  result = qword_27CD9FD58;
  if (!qword_27CD9FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD58);
  }

  return result;
}

unint64_t sub_21BA813DC()
{
  result = qword_27CD9FD60;
  if (!qword_27CD9FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD60);
  }

  return result;
}

uint64_t sub_21BA81430()
{
  v0 = sub_21BA88C5C();
  v2 = v1;
  if (v0 == sub_21BA88C5C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21BA8899C();
  }

  return v5 & 1;
}

unint64_t sub_21BA81548()
{
  result = qword_27CD9FD68;
  if (!qword_27CD9FD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD68);
  }

  return result;
}

unint64_t sub_21BA815C0()
{
  result = qword_27CDB1620;
  if (!qword_27CDB1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB1620);
  }

  return result;
}

unint64_t sub_21BA81618()
{
  result = qword_27CDB1628[0];
  if (!qword_27CDB1628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB1628);
  }

  return result;
}

uint64_t sub_21BA81678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  *a2 = sub_21BA86FDC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
}

unint64_t sub_21BA816FC()
{
  result = qword_27CD9FD98;
  if (!qword_27CD9FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FD98);
  }

  return result;
}

uint64_t sub_21BA81750()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA817B4()
{
  sub_21BA88BAC();
  sub_21BA87D8C();
  return sub_21BA88BCC();
}

uint64_t sub_21BA81800@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA81880@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BA8875C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BA818D8(uint64_t a1)
{
  v2 = sub_21BA8252C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA81914(uint64_t a1)
{
  v2 = sub_21BA8252C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BA81950@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  *a1 = sub_21BA86ECC();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD80);
  sub_21B9B35B8(&qword_27CD9FD88, &qword_27CD9FD78);
  sub_21B9B35B8(&qword_27CD9FD90, &qword_27CD9FD80);
  sub_21BA816FC();
  sub_21BA87ADC();
  LOBYTE(v3) = sub_21BA8742C();
  sub_21BA869EC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FDA0) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  LOBYTE(v3) = sub_21BA8748C();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FDA8) + 36);
  *v13 = v3;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  return result;
}

uint64_t sub_21BA81B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21BA81C78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_21BA81B70()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
  sub_21B9B35B8(&qword_27CD9DB80, &qword_27CD9DA58);
  sub_21B9FD108();
  sub_21B9E35D0();
  return sub_21BA87ADC();
}

uint64_t sub_21BA81C48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21BA81EA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_21BA81C78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FE08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  countAndFlagsBits = Decoder.decodeRUIID()()._countAndFlagsBits;
  if (v7)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = countAndFlagsBits;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA8252C();
  sub_21BA88C0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FD78);
  sub_21BA82580(&qword_27CD9FE10, &qword_27CD9FD78, &unk_21BAA0168, sub_21BA825FC);
  sub_21BA8880C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_21BA81EA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  countAndFlagsBits = Decoder.decodeRUIID()()._countAndFlagsBits;
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v5 = countAndFlagsBits;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
  sub_21BA82580(&qword_27CD9DB70, &qword_27CD9DA58, &unk_21BA957B0, sub_21B9B339C);
  sub_21BA889CC();

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v5;
}

unint64_t sub_21BA82038()
{
  result = qword_27CD9FDB0;
  if (!qword_27CD9FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDB0);
  }

  return result;
}

unint64_t sub_21BA82090()
{
  result = qword_27CD9FDB8;
  if (!qword_27CD9FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDB8);
  }

  return result;
}

unint64_t sub_21BA820E8()
{
  result = qword_27CD9FDC0;
  if (!qword_27CD9FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDC0);
  }

  return result;
}

unint64_t sub_21BA8213C(void *a1)
{
  a1[1] = sub_21BA82174();
  a1[2] = sub_21BA821C8();
  result = sub_21BA8221C();
  a1[3] = result;
  return result;
}

unint64_t sub_21BA82174()
{
  result = qword_27CD9FDC8;
  if (!qword_27CD9FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDC8);
  }

  return result;
}

unint64_t sub_21BA821C8()
{
  result = qword_27CD9FDD0;
  if (!qword_27CD9FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDD0);
  }

  return result;
}

unint64_t sub_21BA8221C()
{
  result = qword_27CD9FDD8;
  if (!qword_27CD9FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDD8);
  }

  return result;
}

uint64_t sub_21BA822A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BA822F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BA82350(uint64_t a1, int a2)
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

uint64_t sub_21BA82398(uint64_t result, int a2, int a3)
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

unint64_t sub_21BA823E8()
{
  result = qword_27CD9FDE0;
  if (!qword_27CD9FDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FDA8);
    sub_21BA82474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDE0);
  }

  return result;
}

unint64_t sub_21BA82474()
{
  result = qword_27CD9FDE8;
  if (!qword_27CD9FDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FDA0);
    sub_21B9B35B8(&qword_27CD9FDF0, &qword_27CD9FDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FDE8);
  }

  return result;
}

unint64_t sub_21BA8252C()
{
  result = qword_27CD9FE00;
  if (!qword_27CD9FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE00);
  }

  return result;
}

uint64_t sub_21BA82580(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BA825FC()
{
  result = qword_27CD9FE18;
  if (!qword_27CD9FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE18);
  }

  return result;
}

uint64_t sub_21BA82650()
{
  v0 = sub_21BA3658C(&unk_282D68BA0);
  result = swift_arrayDestroy();
  qword_27CDB2200 = v0;
  return result;
}

uint64_t SymbolImage.Keys.symbolName.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA883CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SymbolImage.Keys.symbolColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SymbolImage.Keys.enclosureColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SymbolImage.Keys.init(symbolName:symbolColor:enclosureColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21BA883CC();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = type metadata accessor for SymbolImage.Keys();
  v12(a4 + *(v9 + 36), a2, v8);
  v10 = a4 + *(v9 + 40);

  return (v12)(v10, a3, v8);
}

uint64_t sub_21BA82910(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F436C6F626D7973;
  v4 = 0xEB00000000726F6CLL;
  if (v2 != 1)
  {
    v3 = 0x7275736F6C636E65;
    v4 = 0xEE00726F6C6F4365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x614E6C6F626D7973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  v7 = 0x6F436C6F626D7973;
  v8 = 0xEB00000000726F6CLL;
  if (*a2 != 1)
  {
    v7 = 0x7275736F6C636E65;
    v8 = 0xEE00726F6C6F4365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x614E6C6F626D7973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21BA82A3C()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA82AF8()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA82BA0()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA82C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA83D84();
  *a1 = result;
  return result;
}

void sub_21BA82C88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0xEB00000000726F6CLL;
  v5 = 0x6F436C6F626D7973;
  if (v2 != 1)
  {
    v5 = 0x7275736F6C636E65;
    v4 = 0xEE00726F6C6F4365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614E6C6F626D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BA82D00()
{
  v1 = 0x6F436C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x7275736F6C636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_21BA82D74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA83D84();
  *a1 = result;
  return result;
}

uint64_t sub_21BA82D9C(uint64_t a1)
{
  v2 = sub_21BA83E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA82DD8(uint64_t a1)
{
  v2 = sub_21BA83E34();

  return MEMORY[0x2821FE720](a1, v2);
}

double SymbolImage.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B9B3220(a1, v7);
  sub_21BA82E90(v7, 197379, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 8) = v6;
    result = *&v9;
    *(a2 + 16) = v9;
  }

  return result;
}

void sub_21BA82E90(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FE20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FE28);
  sub_21BA83DD0();
  sub_21BA88C0C();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v39 = a1;
    v40 = v6;
    v9 = v46;
    LOBYTE(v42) = v46;
    v47 = 0;
    v10 = sub_21BA83E34();
    v42 = sub_21BA1C1EC(&v42, &v47, &type metadata for SymbolImage.DefaultCodingKeys, &type metadata for SymbolImage.DefaultCodingKeys, v10, v10);
    v43 = v11;
    v44 = v12;
    v45 = v13 & 1;
    v14 = v8;
    v37 = sub_21BA887FC();
    v38 = v15;

    LOBYTE(v42) = BYTE1(v9);
    v47 = 1;
    v42 = sub_21BA1C1EC(&v42, &v47, &type metadata for SymbolImage.DefaultCodingKeys, &type metadata for SymbolImage.DefaultCodingKeys, v10, v10);
    v43 = v16;
    v44 = v17;
    v45 = v18 & 1;
    sub_21BA887BC();
    v19 = BYTE2(v9);
    v20 = v39;
    v22 = v21;

    if (v22)
    {
      v23 = sub_21BA87C8C();

      v36 = [objc_opt_self() _remoteUI_colorWithString_];
    }

    else
    {
      v36 = 0;
    }

    LOBYTE(v42) = v19;
    v47 = 2;
    v42 = sub_21BA1C1EC(&v42, &v47, &type metadata for SymbolImage.DefaultCodingKeys, &type metadata for SymbolImage.DefaultCodingKeys, v10, v10);
    v43 = v24;
    v44 = v25;
    v45 = v26 & 1;
    sub_21BA887BC();
    v28 = v27;

    v29 = v40;
    if (v28)
    {
      v30 = sub_21BA87C8C();

      v28 = [objc_opt_self() _remoteUI_colorWithString_];
    }

    (*(v29 + 8))(v14, v5);
    v31 = v41;
    v32 = v38;
    *v41 = v37;
    v31[1] = v32;
    v33 = v36;
    v31[2] = v36;
    v31[3] = v28;
    v34 = v28;

    v35 = v33;
    __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

void sub_21BA832C4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v81 = a4;
  v75 = a2;
  v76 = a3;
  v71 = a5;
  v7 = sub_21BA883CC();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FE20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FE28);
  sub_21BA83DD0();
  sub_21BA88C0C();
  if (v5)
  {
    v13 = type metadata accessor for SymbolImage.Keys();
    (*(*(v13 - 8) + 8))(v75, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v69 = v10;
    v70 = a1;
    v14 = v72;
    v16 = v73 + 16;
    v15 = *(v73 + 16);
    v17 = v75;
    v15(v72, v75, v74);
    LOBYTE(v77) = 0;
    v18 = sub_21BA83E34();
    v19 = v76;
    v68 = v18;
    v77 = sub_21BA1C1EC(v14, &v77, &type metadata for SymbolImage.DefaultCodingKeys, v76, v18, v81);
    v78 = v20;
    v79 = v21;
    v80 = v22 & 1;
    v23 = v9;
    v65 = sub_21BA887FC();
    v67 = v24;

    v25 = v16;
    v26 = v81;
    v27 = type metadata accessor for SymbolImage.Keys();
    v28 = v17 + *(v27 + 36);
    v29 = v15;
    v30 = v72;
    v73 = v25;
    v66 = v29;
    v29(v72, v28, v74);
    LOBYTE(v77) = 1;
    v77 = sub_21BA1C1EC(v30, &v77, &type metadata for SymbolImage.DefaultCodingKeys, v19, v68, v26);
    v78 = v31;
    v79 = v32;
    v80 = v33 & 1;
    v34 = v23;
    sub_21BA887BC();
    v36 = v35;
    v60 = 0;
    v37 = v68;
    v38 = v66;
    v62 = v34;
    v63 = v27;
    v39 = v76;
    v64 = v12;

    if (v36)
    {
      v40 = sub_21BA87C8C();

      v61 = [objc_opt_self() _remoteUI_colorWithString_];
    }

    else
    {
      v61 = 0;
    }

    v41 = v72;
    v42 = v63;
    v38(v72, v17 + *(v63 + 40), v74);
    LOBYTE(v77) = 2;
    v77 = sub_21BA1C1EC(v41, &v77, &type metadata for SymbolImage.DefaultCodingKeys, v39, v37, v81);
    v78 = v43;
    v79 = v44;
    v80 = v45 & 1;
    v46 = v62;
    v47 = v64;
    v48 = v60;
    sub_21BA887BC();
    v50 = v70;
    if (v48)
    {
      (*(*(v42 - 8) + 8))(v17, v42);

      (*(v69 + 8))(v47, v46);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      v51 = v49;

      v52 = v69;
      if (v51)
      {
        v53 = sub_21BA87C8C();

        v54 = [objc_opt_self() _remoteUI_colorWithString_];

        (*(*(v63 - 8) + 8))(v17);
        (*(v52 + 8))(v64, v62);
      }

      else
      {
        (*(*(v63 - 8) + 8))(v17);
        (*(v52 + 8))(v64, v62);
        v54 = 0;
      }

      v55 = v71;
      v56 = v67;
      *v71 = v65;
      v55[1] = v56;
      v57 = v61;
      v55[2] = v61;
      v55[3] = v54;
      v58 = v54;

      v59 = v57;
      __swift_destroy_boxed_opaque_existential_1(v50);
    }
  }
}

uint64_t sub_21BA83990()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27CDB1D30 != -1)
  {
    v5 = *v0;
    v6 = v0[1];
    swift_once();
    v2 = v6;
    v1 = v5;
  }

  v3 = qword_27CDB2200;

  return sub_21BA2C764(v1, v2, v3);
}

id sub_21BA83A0C()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27CDB1D30 != -1)
  {
    swift_once();
  }

  if ((sub_21BA2C764(v1, v2, qword_27CDB2200) & 1) == 0)
  {
    return 0;
  }

  sub_21B9BDFC0(0, &qword_27CD9EB90);
  v3 = sub_21BA882DC();
  v4 = sub_21BA87C8C();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  return v5;
}

id sub_21BA83AF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x277D1B198]);
  v4 = v1;
  v5 = [v3 init];
  v6 = &unk_21BA92000;
  v7 = 0x1FAB8C000;
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D248);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21BA92F40;
    v9 = [v4 CGColor];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B148]) initWithCGColor_];

    *(v8 + 56) = sub_21B9BDFC0(0, &qword_27CD9FE40);
    *(v8 + 32) = v10;
    v11 = sub_21BA87EFC();

    [v5 setSymbolColors_];

    v7 = 0x1FAB8C000uLL;
    v6 = &unk_21BA92000;
  }

  if (v2)
  {
    v12 = v6;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D248);
    v14 = swift_allocObject();
    *(v14 + 16) = v12[244];
    v15 = v2;
    v16 = [v15 (v13 + 3448)];
    v17 = [objc_allocWithZone(MEMORY[0x277D1B148]) initWithCGColor_];

    *(v14 + 56) = sub_21B9BDFC0(0, &qword_27CD9FE40);
    *(v14 + 32) = v17;
    v18 = sub_21BA87EFC();

    [v5 setEnclosureColors_];
  }

  v19 = objc_allocWithZone(MEMORY[0x277D1B1B0]);
  v20 = v5;
  v21 = sub_21BA87C8C();
  v22 = [v19 initWithSymbolName:v21 configuration:v20];

  return v22;
}

uint64_t sub_21BA83D84()
{
  v0 = sub_21BA8875C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA83DD0()
{
  result = qword_27CD9FE30;
  if (!qword_27CD9FE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9FE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE30);
  }

  return result;
}

unint64_t sub_21BA83E34()
{
  result = qword_27CD9FE38;
  if (!qword_27CD9FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE38);
  }

  return result;
}

unint64_t sub_21BA83E8C()
{
  result = qword_27CD9FE48;
  if (!qword_27CD9FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE48);
  }

  return result;
}

unint64_t sub_21BA83EE4()
{
  result = qword_27CD9FE50;
  if (!qword_27CD9FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE50);
  }

  return result;
}

unint64_t sub_21BA83F3C()
{
  result = qword_27CD9FE58;
  if (!qword_27CD9FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9FE58);
  }

  return result;
}

uint64_t sub_21BA83FA0()
{
  result = sub_21BA883CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BA84018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80) + ((v7 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21BA841A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27CDB2158 == -1)
  {
    if (qword_27CDB2160)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CDB2160)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CDB2150 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CDB2144 > a3)
      {
        return 1;
      }

      if (dword_27CDB2144 >= a3)
      {
        return dword_27CDB2148 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CDB2160;
  if (qword_27CDB2160)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CDB2160 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CEFE730](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27CDB2144, &dword_27CDB2148);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __getBFFStyleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBFFStyleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIStyle.m" lineNumber:52 description:{@"Unable to find class %s", "BFFStyle"}];

  __break(1u);
}

void __getBFFStyleClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIStyle.m" lineNumber:51 description:{@"%s", *a1}];

  __break(1u);
}

void RUIJSSection_removeRow_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_21B93D000, log, OS_LOG_TYPE_ERROR, "section.removeRow: Attempt to remove row %i of section %i, out of bounds.", v3, 0xEu);
}

void __getMCProfileConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUILocalPasscodeValidator.m" lineNumber:14 description:{@"Unable to find class %s", "MCProfileConnection"}];

  __break(1u);
}

void __getMCProfileConnectionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUILocalPasscodeValidator.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void getAKAppleIDAuthenticationErrorDomain_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAKAppleIDAuthenticationErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:63 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAKAuthenticationPasswordKey_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAKAuthenticationPasswordKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAKAppleIDAuthenticationInAppContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:67 description:{@"Unable to find class %s", "AKAppleIDAuthenticationInAppContext"}];

  __break(1u);
}

void __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AuthKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIObjectModel.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void __getACAccountStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getACAccountStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:72 description:{@"Unable to find class %s", "ACAccountStore"}];

  __break(1u);
}

void __getACAccountStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleAccountLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIObjectModel.m" lineNumber:71 description:{@"%s", *a1}];

  __break(1u);
}

void __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAKAppleIDAuthenticationControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:54 description:{@"Unable to find class %s", "AKAppleIDAuthenticationController"}];

  __break(1u);
}

void AuthKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIObjectModel.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getPSPasscodeFieldClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPSPasscodeFieldClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PreferencesPasscodeFieldWrapper.m" lineNumber:14 description:{@"Unable to find class %s", "PSPasscodeField"}];

  __break(1u);
}

void __getPSPasscodeFieldClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PreferencesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PreferencesPasscodeFieldWrapper.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void HSAAuthenticationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HSAAuthenticationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RemoteUIController.m" lineNumber:45 description:{@"%s", *a1}];

  __break(1u);
}

void __getPSListControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPSListControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIPasscodeView.m" lineNumber:62 description:{@"Unable to find class %s", "PSListController"}];

  __break(1u);
}

void PreferencesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PreferencesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIPasscodeView.m" lineNumber:58 description:{@"%s", *a1}];

  __break(1u);
}

void __getMCProfileConnectionClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIPasscodeView.m" lineNumber:68 description:{@"Unable to find class %s", "MCProfileConnection"}];

  __break(1u);
}

void __getMCProfileConnectionClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIPasscodeView.m" lineNumber:67 description:{@"%s", *a1}];

  __break(1u);
}

void __getPSPasscodeFieldClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPSPasscodeFieldClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIPasscodeView.m" lineNumber:59 description:{@"Unable to find class %s", "PSPasscodeField"}];

  __break(1u);
}

void __getOBPrivacyLinkControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getOBPrivacyLinkControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RUIPrivacyLinkContainerView.m" lineNumber:18 description:{@"Unable to find class %s", "OBPrivacyLinkController"}];

  __break(1u);
}

void __getOBPrivacyLinkControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUIPrivacyLinkContainerView.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCTSettingCopyMyPhoneNumberSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RUITableViewRow.m" lineNumber:50 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}