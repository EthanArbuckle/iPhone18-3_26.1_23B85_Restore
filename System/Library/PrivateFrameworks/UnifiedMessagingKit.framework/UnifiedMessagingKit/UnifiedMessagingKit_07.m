unint64_t sub_270443BA0()
{
  result = qword_2807D2790;
  if (!qword_2807D2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2790);
  }

  return result;
}

unint64_t sub_270443BF8()
{
  result = qword_2807D2798;
  if (!qword_2807D2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2798);
  }

  return result;
}

unint64_t sub_270443C50()
{
  result = qword_2807D27A0;
  if (!qword_2807D27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27A0);
  }

  return result;
}

unint64_t sub_270443CA8()
{
  result = qword_2807D27A8;
  if (!qword_2807D27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27A8);
  }

  return result;
}

unint64_t sub_270443D00()
{
  result = qword_2807D27B0;
  if (!qword_2807D27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27B0);
  }

  return result;
}

unint64_t sub_270443D58()
{
  result = qword_2807D27B8;
  if (!qword_2807D27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27B8);
  }

  return result;
}

unint64_t sub_270443DB0()
{
  result = qword_2807D27C0;
  if (!qword_2807D27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27C0);
  }

  return result;
}

unint64_t sub_270443E08()
{
  result = qword_2807D27C8;
  if (!qword_2807D27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27C8);
  }

  return result;
}

unint64_t sub_270443E60()
{
  result = qword_2807D27D0;
  if (!qword_2807D27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27D0);
  }

  return result;
}

unint64_t sub_270443F18()
{
  result = qword_2807D27D8;
  if (!qword_2807D27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D27D8);
  }

  return result;
}

uint64_t sub_27044404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HorizontalStackComponentModel(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_87(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_270444100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HorizontalStackComponentModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2704441A8()
{
  type metadata accessor for HorizontalStackComponentModel(319);
  if (v0 <= 0x3F)
  {
    sub_27044422C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27044422C()
{
  if (!qword_2807D27F0)
  {
    type metadata accessor for HorizontalStackState(255);
    v0 = sub_2705D5E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D27F0);
    }
  }
}

unint64_t sub_2704442E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_270444368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

uint64_t sub_2704443C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalStackComponentModelView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27044442C(double a1)
{
  v2 = type metadata accessor for HorizontalStackComponentModelView(0);
  OUTLINED_FUNCTION_23_0(v2);

  return sub_270443718(a1);
}

uint64_t sub_2704444A0()
{

  return swift_deallocObject();
}

unint64_t sub_2704444D8()
{
  result = qword_2807D2828;
  if (!qword_2807D2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2808);
    sub_270414D3C();
    sub_2704148A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2828);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for HorizontalStackComponentModelView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  if (*(v2 + 240))
  {
  }

  if (*(v2 + 328))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 304);
  }

  v3 = *(type metadata accessor for HorizontalStackComponentModel(0) + 52);
  v4 = sub_2705D6A54();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_270444740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HorizontalStackComponentModelView(0);
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_270442B68(a1, v7, a2);
}

uint64_t sub_2704447C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_2704447FC()
{
  result = qword_2807D2888;
  if (!qword_2807D2888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2880);
    sub_270444888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2888);
  }

  return result;
}

unint64_t sub_270444888()
{
  result = qword_2807D2890;
  if (!qword_2807D2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2890);
  }

  return result;
}

unint64_t sub_270444910()
{
  result = qword_2807D28A8;
  if (!qword_2807D28A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2810);
    sub_2704444D8();
    sub_2704148A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return sub_2705D7F44();
}

unint64_t OUTLINED_FUNCTION_14_18(uint64_t a1)
{

  return sub_2703E2A50(a1);
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_2705D7FA4();
}

__n128 OUTLINED_FUNCTION_24_10@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(v1 + 16) = *(v1 + 96);
  *(v1 + 32) = v2;
  result = *(v1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return sub_2705D7ED4();
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return sub_2705D7FA4();
}

uint64_t sub_270444B78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D28C0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270444EBC();
  sub_2705D84C4();
  sub_2705D8034();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_270444CAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D28B0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270444EBC();
  sub_2705D8484();
  if (!v1)
  {
    v9 = sub_2705D7F54();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_270444DFC(uint64_t a1)
{
  v2 = sub_270444EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270444E38(uint64_t a1)
{
  v2 = sub_270444EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270444E74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270444CAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_270444EBC()
{
  result = qword_2807D28B8;
  if (!qword_2807D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IconImageModel.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x270444FACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270444FE8()
{
  result = qword_2807D28C8;
  if (!qword_2807D28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28C8);
  }

  return result;
}

unint64_t sub_270445040()
{
  result = qword_2807D28D0;
  if (!qword_2807D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D28D0);
  }

  return result;
}

unint64_t sub_270445098()
{
  result = qword_2807D28D8[0];
  if (!qword_2807D28D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807D28D8);
  }

  return result;
}

uint64_t sub_2704450EC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27044516C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2704452FC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x270445548);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_270445590()
{
  sub_2705D83B4();
  sub_270445588();
  return sub_2705D8414();
}

uint64_t sub_2704455D8()
{
  sub_2705D83B4();
  sub_270445588();
  return sub_2705D8414();
}

uint64_t sub_270445614(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2705D8134() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IdentifiableWrapper();
  return sub_2705D7514() & 1;
}

uint64_t sub_270445700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 24);
    }

    else
    {
      v10 = sub_2705D6734();
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2704457E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = sub_2705D6734();
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_2704458D8()
{
  sub_2704459D4();
  if (v0 <= 0x3F)
  {
    sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328);
    if (v1 <= 0x3F)
    {
      sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190);
      if (v2 <= 0x3F)
      {
        sub_2705D6734();
        if (v3 <= 0x3F)
        {
          sub_270445A50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2704459D4()
{
  if (!qword_2807D2970)
  {
    v0 = sub_2705D6924();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2970);
    }
  }
}

void sub_270445A50()
{
  if (!qword_2807D2978)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2978);
    }
  }
}

uint64_t sub_270445AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
  swift_getKeyPath();
  sub_2703E2A50(&unk_2807D13D8);
  sub_2705D45F4();

  swift_beginAccess();
  return *(v0 + 40);
}

__n128 sub_270445B8C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1348);
  swift_getKeyPath();
  sub_2703E2A50(&unk_2807D1350);
  sub_2705D45F4();

  swift_beginAccess();
  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double sub_270445C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_270449D74(a1, a2, type metadata accessor for ImageComponentModel);
  v3 = a2 + *(type metadata accessor for ImageComponentView(0) + 20);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  result = *&v5;
  *v3 = v5;
  *(v3 + 16) = v6;
  return result;
}

uint64_t sub_270445D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1440);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_5();
  v62 = v4 - v5;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v6);
  v61 = &v61 - v7;
  v8 = type metadata accessor for ImageComponentView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B58);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_5();
  v63 = v13 - v14;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v15);
  v65 = &v61 - v16;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v17);
  v66 = &v61 - v18;
  sub_270449D74(v2, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageComponentView);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_27044A418(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_270449D74(v2, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageComponentView);
  v21 = swift_allocObject();
  sub_27044A418(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v19);
  v22 = sub_2705D60A4();
  v24 = v23;
  v25 = sub_2705D5CD4();
  v26 = sub_2705D60A4();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_27044A71C;
  *(v29 + 24) = v21;
  v83[0] = sub_27044A47C;
  v83[1] = v20;
  v83[2] = v25;
  v83[3] = sub_270412C5C;
  v83[4] = v29;
  v83[5] = v26;
  v83[6] = v28;
  v83[7] = v22;
  v83[8] = v24;
  v84[0] = sub_27044A47C;
  v84[1] = v20;
  v84[2] = v25;
  v84[3] = sub_270412C5C;
  v84[4] = v29;
  v84[5] = v26;
  v84[6] = v28;
  v84[7] = v22;
  v84[8] = v24;
  sub_2703FC5C0(v83, v80, &qword_2807D1538);
  sub_2703C2EFC(v84, &qword_2807D1538);
  v30 = v2 + *(v9 + 28);
  v31 = *(v30 + 16);
  v80[0] = *v30;
  *&v80[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  sub_2705D5E54();
  v32 = v79[1] != 0.0 && v79[0] != 0.0;
  v69 = v2;
  sub_2705330B4(v32, sub_27044A7CC, v78);
  sub_2703C2EFC(v83, &qword_2807D1538);
  memcpy(v82, v78, 0xB9uLL);
  v33 = type metadata accessor for ImageComponentModel();
  v34 = (v2 + *(v33 + 52));
  *(v81 + 9) = *(v34 + 41);
  v35 = v34[1];
  v80[24] = *v34;
  v80[25] = v35;
  v81[0] = v34[2];
  sub_270475A90();
  sub_2703C2EFC(v82, &qword_2807D1518);
  memcpy(v80, v79, 0x17BuLL);
  v36 = (v2 + *(v33 + 56));
  v37 = v36[1];
  v73 = *v36;
  v74 = v37;
  v38 = v36[3];
  v75 = v36[2];
  v76 = v38;
  v77[0] = v73;
  v77[1] = v37;
  v77[3] = v38;
  v77[2] = v75;
  if (v73)
  {
    sub_2703E2A94(v77, v72);
    v71[0] = v73;
    v71[1] = v74;
    v71[2] = v75;
    v71[3] = v76;
    sub_270444564(v71, &v70);
    v39 = v62;
    sub_2704066BC();
    v40 = sub_270413B14();
    v41 = v61;
    v42 = v64;
    sub_2705029A0(v39, v64, v40);
    OUTLINED_FUNCTION_16_10();
    sub_2703C2EFC(v43, v44);
    sub_2705029A0(v41, v42, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1450);
    sub_2704133A0();
    v45 = v63;
    sub_2705413F8();
    sub_2703C2EFC(&v73, &qword_2807CFE38);
    OUTLINED_FUNCTION_16_10();
    sub_2703C2EFC(v46, v47);
    OUTLINED_FUNCTION_16_10();
  }

  else
  {
    memcpy(v71, v79, 0x17BuLL);
    sub_2703FC5C0(v80, v72, &qword_2807D1450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1450);
    sub_270413B14();
    sub_2704133A0();
    v45 = v63;
    sub_2705414A8();
    memcpy(v72, v71, 0x17BuLL);
    v48 = v72;
    v49 = &qword_2807D1450;
  }

  sub_2703C2EFC(v48, v49);
  v50 = sub_27044A7D4();
  v51 = v65;
  v52 = v67;
  sub_2705029A0(v45, v67, v50);
  OUTLINED_FUNCTION_16_10();
  sub_2703C2EFC(v53, v54);
  sub_2703C2EFC(v80, &qword_2807D1450);
  v55 = v66;
  sub_2705029A0(v51, v52, v50);
  OUTLINED_FUNCTION_16_10();
  sub_2703C2EFC(v56, v57);
  sub_2705029A0(v55, v52, v50);
  OUTLINED_FUNCTION_16_10();
  return sub_2703C2EFC(v58, v59);
}

void *sub_270446364@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __src - v5;
  *v6 = sub_2705D53C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C8);
  type metadata accessor for ImageComponentModel();
  v7 = a1 + *(type metadata accessor for ImageComponentView(0) + 20);
  v8 = *(v7 + 16);
  __src[0] = *v7;
  *&__src[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  sub_2705D5E54();
  sub_2705D6714();
  sub_2705D60A4();
  sub_2705D5094();
  sub_2703FC3D4(v6, a2, &qword_2807D23C0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23D0);
  return memcpy((a2 + *(v9 + 36)), __src, 0x70uLL);
}

uint64_t sub_270446518(double a1, double a2)
{
  type metadata accessor for ImageComponentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  result = sub_2705D5E54();
  v5 = vabdd_f64(v8, a2);
  if (vabdd_f64(v7, a1) > 1.0 || v5 > 1.0)
  {
    type metadata accessor for ImageComponentModel();
    sub_2705D6704();
    sub_27054CE74();
    return sub_2705D5E64();
  }

  return result;
}

uint64_t sub_270446624@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = (a2 + *(type metadata accessor for ImageComponentView(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B60);
  sub_2705D5E54();
  __srca[0] = v6;
  __srca[1] = v7;
  __srca[2] = v8;
  sub_2705D5E54();
  sub_2705D60A4();
  sub_2705D5094();
  memcpy(a3, __dst, 0x48uLL);
  memcpy((a3 + 72), __srca, 0x70uLL);
  return sub_2703FC5C0(__dst, &v10, &qword_2807D1538);
}

uint64_t sub_2704467BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165487465656873 && a2 == 0xEB00000000726564;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613E30 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6B72616D64726F77 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_270446928(char a1)
{
  result = 0x6165487465656873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6C676E6174636572;
      break;
    case 3:
      result = 0x6B72616D64726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704469CC(void *a1, uint64_t a2)
{
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A20);
  OUTLINED_FUNCTION_0();
  v38 = v5;
  v39 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A28);
  OUTLINED_FUNCTION_0();
  v35 = v9;
  v36 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_0();
  v34 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A30);
  OUTLINED_FUNCTION_0();
  v32 = v13;
  v33 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A38);
  OUTLINED_FUNCTION_0();
  v31 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2A40);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704485A0();
  sub_2705D84C4();
  switch(v40)
  {
    case 1:
      v42 = 1;
      sub_27044934C();
      OUTLINED_FUNCTION_14_19();
      (*(v32 + 8))(v2, v33);
      break;
    case 2:
      v43 = 2;
      sub_2704492F8();
      v26 = v34;
      OUTLINED_FUNCTION_14_19();
      v28 = v35;
      v27 = v36;
      goto LABEL_5;
    case 3:
      v44 = 3;
      sub_2704492A4();
      v26 = v37;
      OUTLINED_FUNCTION_14_19();
      v28 = v38;
      v27 = v39;
LABEL_5:
      (*(v28 + 8))(v26, v27);
      break;
    default:
      v41 = 0;
      sub_2704493A0();
      OUTLINED_FUNCTION_14_19();
      (*(v31 + 8))(v19, v15);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

uint64_t sub_270446D9C(void *a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29D0);
  OUTLINED_FUNCTION_0();
  v60 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v62 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29D8);
  OUTLINED_FUNCTION_0();
  v57 = v7;
  v58 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v59 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29E0);
  OUTLINED_FUNCTION_0();
  v55 = v11;
  v56 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29E8);
  OUTLINED_FUNCTION_0();
  v54 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29F0);
  OUTLINED_FUNCTION_0();
  v61 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704485A0();
  v23 = v64;
  sub_2705D8484();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v13;
  v52 = v17;
  v53 = v1;
  v24 = v62;
  v25 = v63;
  v64 = a1;
  v26 = v22;
  v27 = sub_2705D7FB4();
  sub_27042C9F0(v27, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
    JUMPOUT(0x270447380);
  }

  v31 = *(v28 + v29);
  sub_27042C9E4(v29 + 1);
  v33 = v32;
  v35 = v34;
  swift_unknownObjectRelease();
  if (v33 != v35 >> 1)
  {
LABEL_8:
    v41 = sub_2705D7D84();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v43 = &type metadata for AssetViewComponentModel.Style;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v26, v18);
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v31;
  v37 = v31;
  v39 = v60;
  v38 = v61;
  switch(v37)
  {
    case 1:
      v66 = 1;
      sub_27044934C();
      v45 = v53;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      v47 = v55;
      v46 = v56;
      goto LABEL_18;
    case 2:
      v67 = 2;
      sub_2704492F8();
      v45 = v59;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      v47 = v57;
      v46 = v58;
LABEL_18:
      (*(v47 + 8))(v45, v46);
      goto LABEL_19;
    case 3:
      v68 = 3;
      sub_2704492A4();
      v48 = v50;
      sub_2705D7ED4();
      if (v48)
      {
        (*(v38 + 8))(v26, v18);
        swift_unknownObjectRelease();
        a1 = v64;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v39 + 8))(v24, v25);
LABEL_19:
      (*(v38 + 8))(v26, v18);
      __swift_destroy_boxed_opaque_existential_1(v64);
      result = v36;
      break;
    default:
      v65 = 0;
      sub_2704493A0();
      v40 = v52;
      OUTLINED_FUNCTION_25_3();
      swift_unknownObjectRelease();
      (*(v54 + 8))(v40, v51);
      goto LABEL_19;
  }

  return result;
}

double sub_270447390()
{
  v1 = sub_2703FC5C0(v0, &v12, &qword_2807D2990);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13).n128_u64[0];
  return result;
}

double sub_2704473D8()
{
  v1 = sub_2703FC5C0(v0 + 40, &v12, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_270447428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704467BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270447450(uint64_t a1)
{
  v2 = sub_2704485A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044748C(uint64_t a1)
{
  v2 = sub_2704485A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704474C8(uint64_t a1)
{
  v2 = sub_2704492F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270447504(uint64_t a1)
{
  v2 = sub_2704492F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270447540(uint64_t a1)
{
  v2 = sub_27044934C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044757C(uint64_t a1)
{
  v2 = sub_27044934C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704475B8(uint64_t a1)
{
  v2 = sub_2704493A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704475F4(uint64_t a1)
{
  v2 = sub_2704493A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270447630(uint64_t a1)
{
  v2 = sub_2704492A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044766C(uint64_t a1)
{
  v2 = sub_2704492A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704476A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270446D9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704476F4()
{
  result = qword_2807D2980;
  if (!qword_2807D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2980);
  }

  return result;
}

uint64_t sub_270447748@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for AssetViewComponentModel(0);
  sub_2703FC5C0(v1 + *(v6 + 24), v5, &qword_2807CF130);
  return sub_2703FC3D4(v5, a1, &qword_2807CF190);
}

uint64_t sub_270447808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2704479A4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x656C797473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270447A40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D29B8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270448404();
  sub_2705D84C4();
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2990);
  sub_2703E2A50(&unk_2807D29C0);
  sub_2705D8084();
  if (!v2)
  {
    v14[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_25_2();
    v11 = type metadata accessor for AssetViewComponentModel(0);
    v14[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_25_2();
    v14[12] = 3;
    sub_2705D6734();
    OUTLINED_FUNCTION_0_28();
    sub_270448458(v12);
    OUTLINED_FUNCTION_25_2();
    v14[11] = *(v3 + *(v11 + 32));
    v14[10] = 4;
    sub_27044854C();
    sub_2705D8024();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_270447D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v26 = v5;
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2998);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for AssetViewComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  *(v14 - v13 + 40) = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  v29 = v14 - v13 + 40;
  sub_2703F92B0(&v31, v29, &unk_2807CF480);
  v30 = v11;
  v16 = *(v11 + 24);
  v17 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270448404();
  sub_2705D8484();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703C2EFC(v29, &qword_2807CF2D8);
    return sub_2703C2EFC(v15 + v16, &qword_2807CF130);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18);
    v34 = 0;
    sub_2703E2A50(&unk_2807D29A8);
    sub_2705D7FA4();
    v19 = v32;
    *v15 = v31;
    *(v15 + 16) = v19;
    *(v15 + 32) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    v34 = 1;
    sub_2703E0F80(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F92B0(&v31, v29, &qword_2807CF2D8);
    LOBYTE(v31) = 2;
    sub_2703E0C88();
    sub_2705D7FA4();
    sub_2703F92B0(v2, v15 + v16, &qword_2807CF130);
    LOBYTE(v31) = 3;
    OUTLINED_FUNCTION_0_28();
    sub_270448458(v20);
    sub_2705D7FA4();
    (*(v26 + 32))(v15 + *(v30 + 28), v8, v27);
    v34 = 4;
    sub_27044849C();
    sub_2705D7F44();
    v21 = *(v30 + 32);
    v22 = OUTLINED_FUNCTION_3_29();
    v23(v22);
    *(v15 + v21) = v31;
    sub_270449D74(v15, a2, type metadata accessor for AssetViewComponentModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2704484F0(v15);
  }
}

uint64_t sub_2704482E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270447808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270448308(uint64_t a1)
{
  v2 = sub_270448404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270448344(uint64_t a1)
{
  v2 = sub_270448404();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270448404()
{
  result = qword_2807D29A0;
  if (!qword_2807D29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29A0);
  }

  return result;
}

unint64_t sub_270448458(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27044849C()
{
  result = qword_2807D29B0;
  if (!qword_2807D29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29B0);
  }

  return result;
}

uint64_t sub_2704484F0(uint64_t a1)
{
  v2 = type metadata accessor for AssetViewComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27044854C()
{
  result = qword_2807D29C8;
  if (!qword_2807D29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29C8);
  }

  return result;
}

unint64_t sub_2704485A0()
{
  result = qword_2807D29F8;
  if (!qword_2807D29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D29F8);
  }

  return result;
}

uint64_t sub_2704485F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v108 = a4;
  v92 = sub_2705D66C4();
  OUTLINED_FUNCTION_0();
  v90 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_5();
  v89 = v8 - v9;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v10);
  v88 = &v86 - v11;
  v98 = sub_2705D66D4();
  OUTLINED_FUNCTION_0();
  v93 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v91 = v15 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AC8);
  OUTLINED_FUNCTION_0();
  v95 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_0();
  v94 = v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v97 = v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v99 = v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AE0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v106 = v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AE8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_0();
  v102 = v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AF0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v103 = v28;
  v29 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27_5();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v87 = &v86 - v37;
  OUTLINED_FUNCTION_24_6();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v86 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v86 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v86 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v86 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v86 - v51;
  v53 = type metadata accessor for AssetViewComponentModel(0);
  switch(*(a1 + *(v53 + 32)))
  {
    case 1:
      v77 = *(v31 + 16);
      v77(v44, a1 + *(v53 + 28), v29);
      if (!a2)
      {
        goto LABEL_9;
      }

      sub_270408F58();
      sub_270445AB0();

      sub_270408F58();

      sub_270445AB0();

      sub_2705D6714();
      v78 = *(v31 + 8);
      v78(v44, v29);
      v77(v102, v47, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      sub_270448458(v79);
      OUTLINED_FUNCTION_15_15();
      OUTLINED_FUNCTION_21_9();
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      OUTLINED_FUNCTION_22_7();
      sub_2703C2EFC(v44, &qword_2807D2AF0);
      result = (v78)(v47, v29);
      break;
    case 2:
      sub_2705D6714();
      v80 = v31;
      (*(v31 + 16))(v97, v41, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      v82 = sub_270448458(v81);
      OUTLINED_FUNCTION_5_28();
      v84 = sub_270448458(v83);
      v109 = v29;
      v110 = v98;
      v111 = v82;
      v112 = v84;
      OUTLINED_FUNCTION_6_24();
      v85 = v99;
      sub_2705D5434();
      sub_270449FD8(v85, v106);
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      sub_2705D5434();
      sub_27044A03C(v85);
      return (*(v80 + 8))(v41, v29);
    case 3:
      v58 = v31;
      v59 = *(v31 + 16);
      v60 = v29;
      v59(v35, a1 + *(v53 + 28), v29);
      if (!a2)
      {
        goto LABEL_9;
      }

      sub_270408F58();

      sub_270445AB0();

      v61 = v87;
      sub_2705D6714();
      v62 = *(v58 + 8);
      v63 = v62(v35, v60);
      v64 = v89;
      MEMORY[0x2743A2AD0](v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B10);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_2705EEC90;
      type metadata accessor for ActionResultHandler();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v65 + 32) = [objc_opt_self() bundleForClass_];
      v109 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B18);
      sub_2703E2A50(&unk_2807D2B20);
      sub_2705D66A4();

      (*(v90 + 8))(v64, v92);
      v67 = v91;
      sub_2705D66E4();
      OUTLINED_FUNCTION_0_28();
      v69 = sub_270448458(v68);
      OUTLINED_FUNCTION_5_28();
      v71 = sub_270448458(v70);
      v72 = v94;
      v73 = v98;
      sub_2705D59F4();
      (*(v93 + 8))(v67, v73);
      v62(v61, v60);
      v74 = v95;
      v75 = v100;
      (*(v95 + 16))(v97, v72, v100);
      swift_storeEnumTagMultiPayload();
      v109 = v60;
      v110 = v73;
      v111 = v69;
      v112 = v71;
      OUTLINED_FUNCTION_6_24();
      v76 = v99;
      sub_2705D5434();
      sub_270449FD8(v76, v106);
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      sub_2705D5434();
      sub_27044A03C(v76);
      result = (*(v74 + 8))(v72, v75);
      break;
    default:
      v54 = *(v31 + 16);
      v54(v50, a1 + *(v53 + 28), v29);
      if (!a2)
      {
LABEL_9:
        type metadata accessor for DynamicSheetElementDimensionCache(0);
        sub_270448458(&qword_2807CFD50);
        sub_2705D50A4();
        __break(1u);
        JUMPOUT(0x270449280);
      }

      sub_270408F58();
      sub_270445AB0();

      sub_270408F58();

      sub_270445AB0();

      sub_2705D6714();
      v55 = *(v31 + 8);
      v55(v50, v29);
      v54(v102, v52, v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_28();
      sub_270448458(v56);
      OUTLINED_FUNCTION_15_15();
      OUTLINED_FUNCTION_21_9();
      swift_storeEnumTagMultiPayload();
      sub_270449DF0();
      sub_270449EA4();
      OUTLINED_FUNCTION_22_7();
      sub_2703C2EFC(v31 + 16, &qword_2807D2AF0);
      result = (v55)(v52, v29);
      break;
  }

  return result;
}

unint64_t sub_2704492A4()
{
  result = qword_2807D2A00;
  if (!qword_2807D2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A00);
  }

  return result;
}

unint64_t sub_2704492F8()
{
  result = qword_2807D2A08;
  if (!qword_2807D2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A08);
  }

  return result;
}

unint64_t sub_27044934C()
{
  result = qword_2807D2A10;
  if (!qword_2807D2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A10);
  }

  return result;
}

unint64_t sub_2704493A0()
{
  result = qword_2807D2A18;
  if (!qword_2807D2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A18);
  }

  return result;
}

_BYTE *sub_2704493F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2704494C4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetViewComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270449608);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270449644()
{
  result = qword_2807D2A48;
  if (!qword_2807D2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A48);
  }

  return result;
}

unint64_t sub_27044969C()
{
  result = qword_2807D2A50;
  if (!qword_2807D2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A50);
  }

  return result;
}

unint64_t sub_2704496F4()
{
  result = qword_2807D2A58;
  if (!qword_2807D2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A58);
  }

  return result;
}

unint64_t sub_27044974C()
{
  result = qword_2807D2A60;
  if (!qword_2807D2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A60);
  }

  return result;
}

unint64_t sub_2704497A4()
{
  result = qword_2807D2A68;
  if (!qword_2807D2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A68);
  }

  return result;
}

unint64_t sub_2704497FC()
{
  result = qword_2807D2A70;
  if (!qword_2807D2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A70);
  }

  return result;
}

unint64_t sub_270449854()
{
  result = qword_2807D2A78;
  if (!qword_2807D2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A78);
  }

  return result;
}

unint64_t sub_2704498AC()
{
  result = qword_2807D2A80;
  if (!qword_2807D2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A80);
  }

  return result;
}

unint64_t sub_270449904()
{
  result = qword_2807D2A88;
  if (!qword_2807D2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A88);
  }

  return result;
}

unint64_t sub_27044995C()
{
  result = qword_2807D2A90;
  if (!qword_2807D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A90);
  }

  return result;
}

unint64_t sub_2704499B4()
{
  result = qword_2807D2A98;
  if (!qword_2807D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2A98);
  }

  return result;
}

unint64_t sub_270449A0C()
{
  result = qword_2807D2AA0;
  if (!qword_2807D2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AA0);
  }

  return result;
}

unint64_t sub_270449A64()
{
  result = qword_2807D2AA8;
  if (!qword_2807D2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AA8);
  }

  return result;
}

unint64_t sub_270449ABC()
{
  result = qword_2807D2AB0;
  if (!qword_2807D2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AB0);
  }

  return result;
}

unint64_t sub_270449BB8()
{
  result = qword_2807D2AB8;
  if (!qword_2807D2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AB8);
  }

  return result;
}

unint64_t sub_270449C74()
{
  result = qword_2807D2AC0;
  if (!qword_2807D2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AC0);
  }

  return result;
}

uint64_t sub_270449D74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_10_10();
  v5(v4);
  return a2;
}

unint64_t sub_270449DF0()
{
  result = qword_2807D2AF8;
  if (!qword_2807D2AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2AF0);
    sub_270448458(&qword_2807D0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2AF8);
  }

  return result;
}

unint64_t sub_270449EA4()
{
  result = qword_2807D2B00;
  if (!qword_2807D2B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2AD8);
    sub_270448458(&qword_2807D0B00);
    sub_2705D6734();
    sub_2705D66D4();
    sub_270448458(&unk_2807D2B08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B00);
  }

  return result;
}

uint64_t sub_270449FD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_10_10();
  v4(v3);
  return a2;
}

uint64_t sub_27044A03C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2AD8);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27044A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageComponentModel();
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 16);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_27044A19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ImageComponentModel();
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }
}

void sub_27044A244()
{
  type metadata accessor for ImageComponentModel();
  if (v0 <= 0x3F)
  {
    sub_27044A2C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27044A2C8()
{
  if (!qword_2807D2B38)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_2705D5E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2B38);
    }
  }
}

unint64_t sub_27044A36C()
{
  result = qword_2807D2B48;
  if (!qword_2807D2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2B50);
    sub_270449DF0();
    sub_270449EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B48);
  }

  return result;
}

uint64_t sub_27044A418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_27044A47C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageComponentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_270446364(v4, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for ImageComponentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = type metadata accessor for ImageComponentModel();
  v4 = v3[5];
  v5 = sub_2705D6734();
  OUTLINED_FUNCTION_14();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v7(v2 + v3[6], v5);
  v8 = v3[7];
  if (!__swift_getEnumTagSinglePayload(v2 + v8, 1, v5))
  {
    v7(v2 + v8, v5);
  }

  v9 = v3[8];
  if (!__swift_getEnumTagSinglePayload(v2 + v9, 1, v5))
  {
    v7(v2 + v9, v5);
  }

  v10 = v3[9];
  v11 = sub_2705D6A54();
  if (!__swift_getEnumTagSinglePayload(v2 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  v12 = v2 + v3[10];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  if (*(v2 + v3[14]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27044A71C(double a1, double a2)
{
  type metadata accessor for ImageComponentView(0);

  return sub_270446518(a1, a2);
}

uint64_t sub_27044A794()
{

  return swift_deallocObject();
}

unint64_t sub_27044A7D4()
{
  result = qword_2807D2B68;
  if (!qword_2807D2B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2B58);
    sub_270413B14();
    sub_2704133A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  v4 = *(v2 - 160);

  return sub_2703FC5C0(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_2705D5434();
}

uint64_t sub_27044A9AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C48);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C50);
  OUTLINED_FUNCTION_23_0(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C58);
  OUTLINED_FUNCTION_23_0(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_2();
  v15 = sub_2705D5E14();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D8454();
  if (v2)
  {

    sub_2703C2EFC(v3, &qword_2807D2C50);
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    if (sub_2705D8194())
    {
      sub_2703C2EFC(v3, &qword_2807D2C50);
      OUTLINED_FUNCTION_3_14();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
    }

    else
    {
      sub_2703B4E54(a1, v29);
      sub_27044B540(v29, v8);
      (*(*(v15 - 8) + 32))(v12, v8, v15);
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
      sub_2703E0DCC(v12, v3, &qword_2807D2C50);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  sub_2703CF590(v3, v31, &qword_2807D2C58);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2703C2EFC(v3, &qword_2807D2C58);
}

uint64_t sub_27044AC6C()
{
  OUTLINED_FUNCTION_7_18();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20();
  if (v1)
  {

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_7(v9);
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      sub_2703B4E54(v0, v7);
      sub_27044BB54(v7, &v8);
      v4 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *v2 = v4;
  *(v2 + 8) = v5 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AD68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  OUTLINED_FUNCTION_7_18();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_29_6();
  if (v3)
  {

    v7 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    if (sub_2705D8194())
    {
      v7 = 0;
    }

    else
    {
      sub_2703B4E54(v2, v9);
      a2(&v11, v9);
      v7 = v11;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  *v4 = v7;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AE94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  OUTLINED_FUNCTION_7_18();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  OUTLINED_FUNCTION_29_6();
  if (v3)
  {

    v7 = 0;
    v8 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v8 = sub_2705D8194();
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      sub_2703B4E54(v2, v10);
      a2(&v12, v10);
      v7 = v12;
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  *v4 = v7;
  *(v4 + 8) = v8 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044AF88()
{
  OUTLINED_FUNCTION_7_18();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20();
  if (v1)
  {

    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_23_7(v10);
    if (v6)
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      sub_2703B4E54(v0, v8);
      sub_27044CBD0(v8, v9);
      v4 = v9[0];
      v5 = v9[1];
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6 & 1;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044B060()
{
  OUTLINED_FUNCTION_7_18();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_14_20();
  if (v1)
  {

    v4 = 3;
  }

  else
  {
    if (OUTLINED_FUNCTION_23_7(v8))
    {
      v4 = 3;
    }

    else
    {
      sub_2703B4E54(v0, v6);
      sub_27044CFEC(v6, &v7);
      v4 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *v2 = v4;
  return OUTLINED_FUNCTION_25_8();
}

uint64_t sub_27044B120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE0F78], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BC0);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE0F78];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      if (v22[0])
      {
        __swift_destroy_boxed_opaque_existential_1(&v23);
        *a2 = v18;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BC0);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_11:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044B540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_2705D5E14();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v14 = sub_2703D50F8(v8, qword_28081C468);
  if (!v14)
  {
    v18 = sub_2705D7D84();
    swift_allocError();
    v20 = v19;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_2705D7D04();

    v38 = 0xD000000000000011;
    v39 = 0x8000000270613660;
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C68);
    v21 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v21);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84168], v18);
LABEL_10:
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v15;
  sub_2703B4E54(a1, v37);
  v40 = v16;
  v41 = v17;
  __swift_allocate_boxed_opaque_existential_1Tm(&v38);
  sub_2705D79E4();
  if (!v2)
  {
    v32 = a2;
    v33 = 0;
    v36 = a1;
    v22 = v40;
    v34 = v41;
    __swift_project_boxed_opaque_existential_1(&v38, v40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v35 = &v31;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v17 + 32))(v22, v34);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      v24 = *(v42 + 32);
      v24(v10, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v24(v13, v10, v8);
      sub_2703CF3E8(v13, v32, &qword_2807D2C48);
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2703C2EFC(v7, &qword_2807D2C50);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v26 = sub_2705D7D84();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v28 = v8;
    v29 = v36;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_2705D8434();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_2705D7D04();

    v38 = 0xD000000000000020;
    v39 = 0x80000002706136A0;
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C68);
    v30 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v30);
    a1 = v29;

    sub_2705D7D44();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    goto LABEL_10;
  }

  __swift_deallocate_boxed_opaque_existential_2(&v38);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044BB54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE09E0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v24 = 0xD000000000000011;
    v25 = 0x8000000270613660;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C30);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v23);
  v26 = v7;
  v27 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v24);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22[1] = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE09E0];
    if (swift_dynamicCast())
    {
      v18 = v23[0];
      __swift_destroy_boxed_opaque_existential_1(&v24);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v24);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2705D7D04();

    v24 = 0xD000000000000020;
    v25 = 0x80000002706136A0;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C30);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v24);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044BF78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE0AE0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C20);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE0AE0];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      if (v22[0])
      {
        __swift_destroy_boxed_opaque_existential_1(&v23);
        *a2 = v18;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C20);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_11:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044C398@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE00B0], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C40);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE00B0];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C40);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044C7B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE02E8], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B90);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE02E8];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B90);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044CBD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CE1378], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v24 = 0xD000000000000011;
    v25 = 0x8000000270613660;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C78);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v23);
  v26 = v7;
  v27 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v24);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v28 = v23;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CE1378];
    if (swift_dynamicCast())
    {
      v19 = v23[0];
      v18 = v23[1];
      __swift_destroy_boxed_opaque_existential_1(&v24);
      *a2 = v19;
      a2[1] = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v24);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_2705D7D04();

    v24 = 0xD000000000000020;
    v25 = 0x80000002706136A0;
    v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C78);
    v21 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v21);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v24);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044CFEC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_2807CE770 != -1)
  {
    swift_once();
  }

  v5 = sub_2703D50F8(MEMORY[0x277CDF720], qword_28081C468);
  if (!v5)
  {
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23 = 0xD000000000000011;
    v24 = 0x8000000270613660;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C10);
    v12 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v12);

    MEMORY[0x2743A3A90](0xD000000000000013, 0x8000000270613680);
    sub_2705D7D44();
    v13 = MEMORY[0x277D84168];
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  sub_2703B4E54(a1, v22);
  v25 = v7;
  v26 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(&v23);
  sub_2705D79E4();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v27 = v22;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    (*(v8 + 32))(v14, v15);
    v17 = MEMORY[0x277CDF720];
    if (swift_dynamicCast())
    {
      v18 = v22[0];
      __swift_destroy_boxed_opaque_existential_1(&v23);
      *a2 = v18;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v9 = sub_2705D7D84();
    swift_allocError();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v11 = v17;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2705D7D04();

    v23 = 0xD000000000000020;
    v24 = 0x80000002706136A0;
    v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C10);
    v20 = sub_2705D75D4();
    MEMORY[0x2743A3A90](v20);

    sub_2705D7D44();
    v13 = MEMORY[0x277D84160];
LABEL_10:
    (*(*(v9 - 8) + 104))(v11, *v13, v9);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_deallocate_boxed_opaque_existential_2(&v23);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27044D408@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for ImageComponentModel();
  sub_2703CF590(v1 + *(v6 + 36), v2, &qword_2807CF130);
  return sub_2703CF3E8(v2, a1, &qword_2807CF190);
}

double sub_27044D4BC()
{
  v1 = type metadata accessor for ImageComponentModel();
  v2 = sub_2703CF590(v0 + *(v1 + 40), &v13, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_27044D510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x777472416B726164 && a2 == 0xEB000000006B726FLL;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747241746867696CLL && a2 == 0xEC0000006B726F77;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000270613E50 == a2;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x8000000270613E70 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000002706137E0 == a2;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
                    if (v14 || (sub_2705D8134() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x79616C7265646E75 && a2 == 0xE800000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_2705D8134();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_27044D878(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x777472416B726164;
      break;
    case 2:
      result = 0x747241746867696CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6575676573;
      break;
    case 7:
      result = 0x6E656D6E67696C61;
      break;
    case 8:
      result = 0x69617274736E6F63;
      break;
    case 9:
      result = 0x676E6964646170;
      break;
    case 10:
      result = 0x79616C7265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27044D9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27044D510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27044DA20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27044D870();
  *a1 = result;
  return result;
}

uint64_t sub_27044DA48(uint64_t a1)
{
  v2 = sub_27044FA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27044DA84(uint64_t a1)
{
  v2 = sub_27044FA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27044DAC8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848);
  v5 = OUTLINED_FUNCTION_23_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_11();
  v169 = v6;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50();
  v173 = v8;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  v168 = v10;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50();
  v171 = v12;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v167 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  v16 = OUTLINED_FUNCTION_23_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_11();
  v172 = v17;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_50();
  v178 = v19;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  v184 = v21;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  v187 = v23;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50();
  v170 = v25;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_50();
  v177 = v27;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50();
  v183 = v29;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50();
  v186 = v31;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50();
  v182 = v33;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v185 = v35;
  OUTLINED_FUNCTION_77();
  v36 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v190 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_11();
  v176 = v39;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50();
  v181 = v41;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_50();
  v175 = v43;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_50();
  v180 = v45;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_50();
  v174 = v47;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_58();
  v179 = v49;
  OUTLINED_FUNCTION_77();
  v50 = sub_2705D6E94();
  v51 = OUTLINED_FUNCTION_23_0(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4_0();
  v194 = (v53 - v52);
  OUTLINED_FUNCTION_77();
  v54 = sub_2705D7134();
  v55 = OUTLINED_FUNCTION_23_0(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4_0();
  v193 = v57 - v56;
  OUTLINED_FUNCTION_77();
  v192 = sub_2705D45C4();
  OUTLINED_FUNCTION_0();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4_0();
  v63 = v62 - v61;
  v64 = sub_2705D6594();
  OUTLINED_FUNCTION_0();
  v66 = v65;
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v166 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v166 - v71;
  memcpy(v200, a1, sizeof(v200));
  v73 = type metadata accessor for ImageComponentModel();
  v189 = v73[7];
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v36);
  v188 = v73[8];
  OUTLINED_FUNCTION_3_14();
  v195 = v36;
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v36);
  sub_2705D6A54();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = a2 + v73[10];
  memset(v201, 0, 40);
  *v84 = 0u;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 0;
  sub_2703E0DCC(v201, v84, &unk_2807CF480);
  v85 = a2 + v73[11];
  *v85 = 0;
  *(v85 + 8) = 1;
  v86 = a2 + v73[12];
  *v86 = xmmword_2705EF770;
  *(v86 + 16) = xmmword_2705EF780;
  *(v86 + 32) = 0;
  v87 = (a2 + v73[13]);
  *v87 = xmmword_2705EB940;
  v87[1] = 0u;
  v87[2] = 0u;
  *(v87 + 41) = 0u;
  v191 = v73;
  v88 = (a2 + v73[14]);
  v88[2] = 0u;
  v88[3] = 0u;
  *v88 = 0u;
  v88[1] = 0u;
  sub_2705D45B4();
  sub_2705D45A4();
  (*(v59 + 8))(v63, v192);
  v89 = v194;
  OUTLINED_FUNCTION_34_5();
  sub_2705D6E84();
  sub_2705D7124();
  sub_2705D6584();
  (*(v66 + 16))(v70, v72, v64);
  sub_270450360(&qword_2807CF180);
  sub_2705D7CF4();
  (*(v66 + 8))(v72, v64);
  memcpy(v201, v200, 0x160uLL);
  v90 = sub_2703BB658(v201);
  v91 = v195;
  switch(v90)
  {
    case 1:
      v135 = *sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v136 = v187;
      v194 = v135;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_6_25(v136);
      if (v105)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      v137 = v191;
      v138 = *(v190 + 32);
      v139 = OUTLINED_FUNCTION_9_21(v191[6]);
      v138(v139);

      v140 = v184;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v140);
      if (v105)
      {
        goto LABEL_27;
      }

      sub_2705D66F4();
      v141 = OUTLINED_FUNCTION_9_21(v137[5]);
      v138(v141);

      v142 = v178;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v142);
      if (v105)
      {
        goto LABEL_29;
      }

      v143 = v173;
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v91);
      sub_2703E0DCC(v143, a2 + v189, &qword_2807D0848);

      v147 = v172;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v147);
      if (v105)
      {
        goto LABEL_31;
      }

      sub_270416A6C(v200);
      v117 = v169;
      goto LABEL_18;
    case 2:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v118 = v185;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_6_25(v118);
      if (v105)
      {
        goto LABEL_23;
      }

      v119 = v179;
      sub_2705D66F4();
      v120 = v191;
      v121 = *(v190 + 32);
      v121(a2 + v191[6], v119, v91);

      v122 = v182;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_6_25(v122);
      if (v105)
      {
        goto LABEL_26;
      }

      sub_270416A6C(v200);
      sub_2705D66F4();
      v123 = OUTLINED_FUNCTION_9_21(v120[5]);
      return (v121)(v123);
    case 3:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_35_3();
      v125 = v124;
      type metadata accessor for CGColor(0);
      v127 = v126;
      OUTLINED_FUNCTION_11_20();
      v129 = sub_270450360(v128);

      v130 = sub_2705D7494();
      v131 = OUTLINED_FUNCTION_3_30(v130);
      v197 = &type metadata for CoreMediaArtworkSource;
      v132 = sub_270436F8C();
      v198 = v132;
      v196[0] = v131;
      sub_2705D6744();

      v187 = v125;
      v192 = v127;
      v190 = v129;
      v133 = sub_2705D7494();
      v134 = OUTLINED_FUNCTION_3_30(v133);
      v194 = v132;
      v198 = v132;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v134;
      v193 = a2;
      sub_2705D6744();
      memcpy(v199, v89 + 22, 0xB0uLL);
      if (sub_270436F74(v199) == 1)
      {
        return sub_270416A6C(v200);
      }

      sub_2703CF590((v89 + 22), v196, &qword_2807D22D0);
      sub_270416A6C(v200);

      v153 = sub_2705D7494();
      v154 = OUTLINED_FUNCTION_3_30(v153);
      v198 = v194;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v154;
      v155 = v167;
      sub_2705D6744();
      OUTLINED_FUNCTION_8_9();
      v156 = v195;
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v195);
      v160 = v193;
      sub_2703E0DCC(v155, v193 + v189, &qword_2807D0848);

      v161 = sub_2705D7494();
      v162 = OUTLINED_FUNCTION_3_30(v161);
      sub_2703C2EFC((v89 + 22), &qword_2807D22D0);
      v198 = v194;
      v197 = &type metadata for CoreMediaArtworkSource;
      v196[0] = v162;
      sub_2705D6744();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v156);
      v151 = v160 + v188;
      v152 = v155;
      return sub_2703E0DCC(v152, v151, &qword_2807D0848);
    case 4:
      v103 = *sub_2703BB26C(v201);
      OUTLINED_FUNCTION_28_6();
      sub_2703BB26C(v199);

      v104 = v186;
      v194 = v103;
      sub_2705D4454();
      sub_270416A6C(v200);
      sub_2705D4484();
      OUTLINED_FUNCTION_21_10(v104);
      if (v105)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      v106 = v191;
      v107 = *(v190 + 32);
      v108 = OUTLINED_FUNCTION_9_21(v191[6]);
      v107(v108);

      v109 = v183;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v109);
      if (v105)
      {
        goto LABEL_25;
      }

      sub_2705D66F4();
      v110 = OUTLINED_FUNCTION_9_21(v106[5]);
      v107(v110);

      v111 = v177;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v111);
      if (v105)
      {
        goto LABEL_28;
      }

      v112 = v171;
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v91);
      sub_2703E0DCC(v112, a2 + v189, &qword_2807D0848);

      v116 = v170;
      sub_2705D4454();
      sub_270416A6C(v200);
      OUTLINED_FUNCTION_21_10(v116);
      if (v105)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x27044E94CLL);
      }

      sub_270416A6C(v200);
      v117 = v168;
LABEL_18:
      OUTLINED_FUNCTION_34_5();
      sub_2705D66F4();
      OUTLINED_FUNCTION_8_9();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v91);
      v151 = a2 + v188;
      v152 = v117;
      return sub_2703E0DCC(v152, v151, &qword_2807D0848);
    default:
      sub_2703BB26C(v201);
      OUTLINED_FUNCTION_35_3();
      type metadata accessor for CGColor(0);
      OUTLINED_FUNCTION_11_20();
      sub_270450360(v92);

      v93 = OUTLINED_FUNCTION_36_4();
      v94 = OUTLINED_FUNCTION_3_30(v93);
      v199[3] = &type metadata for CoreMediaArtworkSource;
      v95 = sub_270436F8C();
      v199[4] = v95;
      v199[0] = v94;
      sub_2705D6744();
      v96 = v89[18];
      v97 = v89[19];
      v99 = *(v89 + 20);
      v98 = *(v89 + 21);

      v100 = OUTLINED_FUNCTION_36_4();
      v101 = sub_27047D104(v99, v98, v100, v97, v96);
      sub_270416A6C(v200);
      v199[4] = v95;
      v199[3] = &type metadata for CoreMediaArtworkSource;
      v199[0] = v101;
      return sub_2705D6744();
  }
}

uint64_t sub_27044E960(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B98);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27044FA04();
  sub_2705D84C4();
  LOBYTE(v31[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
  sub_2703E2A50(&unk_2807CFE90);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v10 = type metadata accessor for ImageComponentModel();
  sub_2705D6734();
  OUTLINED_FUNCTION_13_14();
  sub_270450360(v11);
  OUTLINED_FUNCTION_1_31();
  sub_2705D8084();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8084();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8024();
  OUTLINED_FUNCTION_1_31();
  sub_2705D8024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  sub_2703E1004();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  LOBYTE(v31[0]) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
  sub_2703E0F80(&qword_2807CFE98);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v12 = (v4 + v10[11]);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *&v31[0] = v13;
  BYTE8(v31[0]) = v12;
  LOBYTE(v27) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2BA0);
  sub_2703E2A50(&unk_2807D2BA8);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v14 = v4 + v10[12];
  v15 = *(v14 + 32);
  v16 = *(v14 + 16);
  v32[2] = *v14;
  v32[3] = v16;
  v33 = v15;
  v36 = 8;
  sub_27044FB6C();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  v17 = (v4 + v10[13]);
  v18 = v17[1];
  v31[4] = *v17;
  v31[5] = v18;
  v32[0] = v17[2];
  *(v32 + 9) = *(v17 + 41);
  v35 = 9;
  sub_2703E10C0();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v19 = (v4 + v10[14]);
  v20 = v19[1];
  v31[0] = *v19;
  v31[1] = v20;
  v21 = v19[3];
  v23 = *v19;
  v22 = v19[1];
  v31[2] = v19[2];
  v31[3] = v21;
  v27 = v23;
  v28 = v22;
  v24 = v19[3];
  v29 = v19[2];
  v30 = v24;
  v34 = 10;
  sub_2703CF590(v31, v26, &qword_2807CFE38);
  sub_2703E1114();
  OUTLINED_FUNCTION_10_19();
  sub_2705D8024();
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  sub_2703C2EFC(v26, &qword_2807CFE38);
  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_27044EE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v100 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848);
  v6 = OUTLINED_FUNCTION_23_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_11();
  v101 = v7;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v102 = v9;
  OUTLINED_FUNCTION_77();
  v10 = sub_2705D6734();
  OUTLINED_FUNCTION_0();
  v115 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_11();
  v103 = v13;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2B70);
  OUTLINED_FUNCTION_0();
  v104 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = type metadata accessor for ImageComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_0();
  v26 = (v25 - v24);
  v109 = *(v27 + 28);
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  v113 = v22[8];
  OUTLINED_FUNCTION_3_14();
  v107 = v10;
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v10);
  v34 = v22[9];
  sub_2705D6A54();
  v111 = v34;
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = &v26[v22[10]];
  *&v124 = 0;
  v122 = 0u;
  v123 = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  v110 = v39;
  sub_2703E0DCC(&v122, v39, &unk_2807CF480);
  v40 = &v26[v22[11]];
  *v40 = 0;
  v40[8] = 1;
  v114 = v22;
  v41 = v22[14];
  v108 = v26;
  v42 = &v26[v41];
  v42[2] = 0u;
  v42[3] = 0u;
  *v42 = 0u;
  v42[1] = 0u;
  v105 = v42;
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27044FA04();
  v43 = v112;
  sub_2705D8484();
  if (v43)
  {
    v112 = v43;
    v44 = 0;
    LODWORD(v45) = 0;
    v46 = 0;
    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
    goto LABEL_4;
  }

  v97 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
  LOBYTE(v120[0]) = 0;
  sub_2703E2A50(&unk_2807CFE40);
  sub_2705D7FA4();
  v55 = v123;
  v56 = v108;
  *v108 = v122;
  *(v56 + 1) = v55;
  *(v56 + 4) = v124;
  LOBYTE(v122) = 1;
  OUTLINED_FUNCTION_13_14();
  sub_270450360(v57);
  v48 = v107;
  sub_2705D7FA4();
  v58 = *(v115 + 32);
  v58(&v56[v114[5]], v16, v48);
  LOBYTE(v122) = 2;
  v95 = v21;
  v96 = v17;
  sub_2705D7FA4();
  v59 = v114;
  v58(&v56[v114[6]], v103, v48);
  LOBYTE(v122) = 3;
  v60 = v102;
  v45 = v95;
  sub_2705D7F44();
  v47 = v56;
  v49 = v59;
  v61 = v60;
  v62 = v109;
  sub_2703E0DCC(v61, &v47[v109], &qword_2807D0848);
  LOBYTE(v122) = 4;
  v63 = v101;
  sub_2705D7F44();
  v50 = v115;
  sub_2703E0DCC(v63, &v47[v113], &qword_2807D0848);
  LOBYTE(v122) = 5;
  sub_2703E0C88();
  v64 = v100;
  sub_2705D7FA4();
  sub_2703E0DCC(v64, &v47[v111], &qword_2807CF130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
  LOBYTE(v120[0]) = 6;
  sub_2703E0F80(&qword_2807CFE48);
  sub_2705D7FA4();
  v112 = 0;
  sub_2703E0DCC(&v122, v110, &qword_2807CF2D8);
  LOBYTE(v116) = 7;
  v65 = sub_2705D7FC4();
  v66 = v104;
  if (v65)
  {
    v67 = v112;
    v68 = sub_2705D7FD4();
    v112 = v67;
    if (v67)
    {
      v69 = *(v66 + 8);
      v46 = v66 + 8;
      v69(v45, v96);
      v44 = 1;
      OUTLINED_FUNCTION_30_7();
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(v106);
      if (!v44)
      {
        v62 = v109;
        if (v45)
        {
LABEL_7:
          v51 = *(v50 + 8);
          v51(&v47[v49[5]], v48);
          if ((v46 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_10:
        if (!v46)
        {
LABEL_13:
          sub_2703C2EFC(&v47[v62], &qword_2807D0848);
          sub_2703C2EFC(&v47[v113], &qword_2807D0848);
          sub_2703C2EFC(&v47[v111], &qword_2807CF130);
          sub_2703C2EFC(v110, &qword_2807CF2D8);
          v52 = v105[1];
          v122 = *v105;
          v123 = v52;
          v53 = v105[3];
          v124 = v105[2];
          v125 = v53;
          return sub_2703C2EFC(&v122, &qword_2807CFE38);
        }

        v51 = *(v50 + 8);
LABEL_12:
        v51(&v47[v49[6]], v48);
        goto LABEL_13;
      }

      goto LABEL_5;
    }

    v70 = v96;
    if (v68)
    {
      v71 = 0;
      v72 = 1;
      BYTE8(v120[0]) = 1;
      *&v120[0] = 0;
    }

    else
    {
      v73 = v112;
      sub_2705D7EF4();
      v112 = v73;
      OUTLINED_FUNCTION_12_17();
      v74 = v112;
      sub_27044AE94(&v122, v75);
      v112 = v74;
      if (v74)
      {

        v71 = 0;
        v112 = 0;
        *&v120[0] = 0;
        v72 = 1;
        BYTE8(v120[0]) = 1;
      }

      else
      {
        v71 = *&v120[0];
        v72 = BYTE8(v120[0]);
      }
    }

    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
    v62 = v109;
    v66 = v104;
  }

  else
  {
    v70 = v96;
    v71 = 0;
    *&v120[0] = 0;
    v72 = 1;
    BYTE8(v120[0]) = 1;
  }

  v76 = v97;
  *v97 = v71;
  *(v76 + 8) = v72;
  LOBYTE(v120[0]) = 8;
  sub_27044FA58();
  v77 = v112;
  sub_2705D7FA4();
  v112 = v77;
  if (v77 || (v78 = &v47[v49[12]], v79 = v124, v80 = v123, *v78 = v122, *(v78 + 1) = v80, *(v78 + 4) = v79, v127 = 9, sub_2703E0E1C(), v81 = v112, sub_2705D7F44(), (v112 = v81) != 0))
  {
    v82 = *(v66 + 8);
    v46 = v66 + 8;
    v82(v45, v70);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_30_7();
LABEL_6:
    sub_2703C2EFC(v47, &qword_2807CF140);
    if (v45)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v83 = &v47[v49[13]];
  v84 = v120[5];
  *v83 = v120[4];
  *(v83 + 1) = v84;
  *(v83 + 2) = v121[0];
  *(v83 + 41) = *(v121 + 9);
  v126 = 10;
  sub_2703E0ED4();
  v46 = v70;
  v85 = v112;
  sub_2705D7F44();
  v112 = v85;
  if (v85)
  {
    OUTLINED_FUNCTION_19_5();
    v86(v45, v70);
    __swift_destroy_boxed_opaque_existential_1(v106);
    OUTLINED_FUNCTION_30_7();
    v48 = v107;
    v47 = v108;
    v49 = v114;
    v50 = v115;
LABEL_5:
    v62 = v109;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_19_5();
  v87(v45, v70);
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v119 = v125;
  v88 = v105;
  v89 = v105[1];
  v120[0] = *v105;
  v120[1] = v89;
  v90 = v105[3];
  v120[2] = v105[2];
  v120[3] = v90;
  sub_2703C2EFC(v120, &qword_2807CFE38);
  v91 = v117;
  *v88 = v116;
  v88[1] = v91;
  v92 = v119;
  v88[2] = v118;
  v88[3] = v92;
  v93 = v108;
  sub_27044FAAC(v108, v98);
  __swift_destroy_boxed_opaque_existential_1(v106);
  return sub_27044FB10(v93);
}

uint64_t type metadata accessor for ImageComponentModel()
{
  result = qword_2807D2BC8;
  if (!qword_2807D2BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27044FA04()
{
  result = qword_2807D2B78;
  if (!qword_2807D2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B78);
  }

  return result;
}

unint64_t sub_27044FA58()
{
  result = qword_2807D2B80;
  if (!qword_2807D2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2B80);
  }

  return result;
}

uint64_t sub_27044FAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27044FB10(uint64_t a1)
{
  v2 = type metadata accessor for ImageComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27044FB6C()
{
  result = qword_2807D2BB0;
  if (!qword_2807D2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ImageComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27044FD14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27044FD60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2705D6734();
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848);
      OUTLINED_FUNCTION_46_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
        v11 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_27044FE94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_2705D6734();
    OUTLINED_FUNCTION_46_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0848);
      OUTLINED_FUNCTION_46_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
        v11 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_27044FFB0()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2705D6734();
    if (v1 <= 0x3F)
    {
      sub_270450168();
      if (v2 <= 0x3F)
      {
        sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190);
        if (v3 <= 0x3F)
        {
          sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328);
          if (v4 <= 0x3F)
          {
            sub_2704501C0(319, &qword_2807D2BE0, MEMORY[0x277CE02E8], type metadata accessor for CodableOptionalByProxy);
            if (v5 <= 0x3F)
            {
              sub_2704501C0(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2704501C0(319, &qword_2807CFE18, &unk_28805D3D0, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_270450168()
{
  if (!qword_2807D2BD8)
  {
    sub_2705D6734();
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2BD8);
    }
  }
}

void sub_2704501C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_270450214()
{
  result = qword_2807D2BE8;
  if (!qword_2807D2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BE8);
  }

  return result;
}

unint64_t sub_2704502B4()
{
  result = qword_2807D2BF8;
  if (!qword_2807D2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2BF8);
  }

  return result;
}

unint64_t sub_27045030C()
{
  result = qword_2807D2C00;
  if (!qword_2807D2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2C00);
  }

  return result;
}

unint64_t sub_270450360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1)
{

  return sub_27047D104(v1, v2, a1, v5, v4);
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return sub_2705D8454();
}

uint64_t OUTLINED_FUNCTION_23_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2705D8194();
}

void *OUTLINED_FUNCTION_28_6()
{

  return memcpy((v0 + 416), (v0 + 768), 0x160uLL);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_2705D8454();
}

void OUTLINED_FUNCTION_35_3()
{

  type metadata accessor for AMSMediaArtworkColorKind(0);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_2705D7494();
}

uint64_t sub_2704505AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 657))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704505EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 648) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 656) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 657) = 1;
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

    *(result + 657) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2704506EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6954656C62627562 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2704507B8(char a1)
{
  if (a1)
  {
    return 0x6954656C62627562;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

void sub_2704507F0()
{
  OUTLINED_FUNCTION_10_1();
  v22 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D30);
  OUTLINED_FUNCTION_0();
  v20 = v5;
  v21 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D38);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D40);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v19 - v16;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27045391C();
  sub_2705D84C4();
  v18 = (v14 + 8);
  if (v22)
  {
    sub_270453970();
    sub_2705D7FE4();
    (*(v20 + 8))(v8, v21);
  }

  else
  {
    sub_2704539C4();
    sub_2705D7FE4();
    (*(v10 + 8))(v0, v19);
  }

  (*v18)(v17, v12);
  OUTLINED_FUNCTION_11_3();
}

void sub_270450A64()
{
  OUTLINED_FUNCTION_10_1();
  v40 = v0;
  v3 = v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D00);
  OUTLINED_FUNCTION_0();
  v37 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D08);
  OUTLINED_FUNCTION_0();
  v36 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D10);
  OUTLINED_FUNCTION_0();
  v38 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27045391C();
  v16 = v40;
  sub_2705D8484();
  if (v16)
  {
    goto LABEL_8;
  }

  v34 = v8;
  v35 = v1;
  v40 = v3;
  v17 = v39;
  v18 = sub_2705D7FB4();
  sub_27042C9F0(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_2705D7D84();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v29 = &type metadata for InlineMessageModel.Style;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v15, v11);
    v3 = v40;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v33 = 0;
  if (v20 < (v21 >> 1))
  {
    v22 = *(v19 + v20);
    sub_27042C9E4(v20 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v22)
      {
        LODWORD(v36) = v22;
        sub_270453970();
        OUTLINED_FUNCTION_12_8();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v7, v17);
      }

      else
      {
        sub_2704539C4();
        v30 = v35;
        OUTLINED_FUNCTION_12_8();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v30, v34);
      }

      v31 = OUTLINED_FUNCTION_4_15();
      v32(v31);
      __swift_destroy_boxed_opaque_existential_1(v40);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_270450ED0(uint64_t a1)
{
  v2 = sub_2704539C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270450F0C(uint64_t a1)
{
  v2 = sub_2704539C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270450F48(uint64_t a1)
{
  v2 = sub_270453970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270450F84(uint64_t a1)
{
  v2 = sub_270453970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270450FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704506EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270450FF0(uint64_t a1)
{
  v2 = sub_27045391C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27045102C(uint64_t a1)
{
  v2 = sub_27045391C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_270451068(_BYTE *a1@<X8>)
{
  sub_270450A64();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_2704510B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74634165736F6C63 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x41746C7561666564 && a2 == 0xED00006E6F697463;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x8000000270613E90 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2705D8134();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_27045138C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6E61726165707061;
      break;
    case 2:
      result = 0x7465737361;
      break;
    case 3:
      result = 0x74634165736F6C63;
      break;
    case 4:
      result = 0x41746C7561666564;
      break;
    case 5:
      v3 = 1819898995;
      goto LABEL_8;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      v3 = 1819568500;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2704514B8()
{
  OUTLINED_FUNCTION_10_1();
  v47 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2CB0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *v0;
  memcpy(v56, v0 + 1, sizeof(v56));
  memcpy(v57, v0 + 20, 0x160uLL);
  v11 = v0[64];
  v45 = v0[65];
  v46 = v11;
  v44 = v0[66];
  v58 = *(v0 + 536);
  v12 = v0[69];
  v40 = v0[68];
  v41 = v12;
  v43 = v0[70];
  v42 = *(v0 + 568);
  v39 = *(v0 + 569);
  v13 = v0[72];
  v14 = v0[73];
  v37 = v0[74];
  v38 = v14;
  v15 = v0[75];
  v35 = v13;
  v36 = v15;
  v16 = v0[76];
  v33 = v0[77];
  v34 = v16;
  v17 = v0[78];
  v31 = v0[79];
  v32 = v17;
  v18 = v0[80];
  v29 = v0[81];
  v30 = v18;
  HIDWORD(v28) = *(v0 + 656);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704522F0();

  v19 = v4;
  sub_2705D84C4();
  v53[0] = v10;
  v52[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C90);
  sub_270452454(&qword_2807D2CB8, sub_2703B1858);
  v20 = v47;
  sub_2705D8084();
  if (v20)
  {
  }

  else
  {
    v22 = v45;
    v21 = v46;

    memcpy(v55, v56, sizeof(v55));
    sub_2703BFA60(v56, v53);
    sub_2704524CC();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    memcpy(v54, v55, sizeof(v54));
    sub_2703BFABC(v54);
    memcpy(v53, v57, sizeof(v53));
    sub_2703C2E9C(v57, v52, &qword_2807D2478);
    sub_2703BAED8();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    memcpy(v52, v53, sizeof(v52));
    sub_2703C2EFC(v52, &qword_2807D2478);
    v48 = v21;
    v49 = v22;
    v23 = v44;
    v50 = v44;
    LOBYTE(v51) = v58;

    sub_2703AE9E8(v22, v23, v58);
    sub_2703C38C8();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v24 = v49;
    v25 = v50;
    v47 = v4;
    v26 = v51;

    v27 = v26;
    v19 = v47;
    sub_2703AE980(v24, v25, v27);
    v48 = v40;
    v49 = v41;
    v50 = v43;
    LOBYTE(v51) = v42;
    sub_2703B4AA0(v40, v41, v43, v42);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703AFC10(v48, v49, v50, v51);
    LOBYTE(v48) = v39;
    sub_270452520();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v48 = v35;
    v49 = v38;
    v50 = v37;
    v51 = v36;
    sub_2703C3A18(v35, v38);
    sub_2703C3970();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703C3A5C(v48, v49);
    v48 = v34;
    v49 = v33;
    v50 = v32;
    v51 = v31;
    sub_2703C3A18(v34, v33);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703C3A5C(v48, v49);
    v48 = v30;
    v49 = v29;
    LOBYTE(v50) = BYTE4(v28);
    sub_2703AE9E8(v30, v29, SBYTE4(v28));
    sub_2703C39C4();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    sub_2703AE980(v48, v49, v50);
  }

  (*(v6 + 8))(v9, v19);
  OUTLINED_FUNCTION_11_3();
}

void sub_270451A88()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  sub_2704522D0(v84);
  memcpy(v82, v84, sizeof(v82));
  v7 = v3[3];
  v35 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v7);
  sub_2704522F0();
  sub_2705D8484();
  if (v0)
  {
    OUTLINED_FUNCTION_3_31();
    __swift_destroy_boxed_opaque_existential_1(v3);

    memcpy(v50, v82, 0x160uLL);
    sub_2703C2EFC(v50, &qword_2807D2478);
    sub_2703AFC10(v42, v44, v1, 0xFEu);
    sub_2703C3A5C(v36, v38);
    sub_2703C3A5C(v7, v46);
    v8 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v8, v9, 255);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C90);
    sub_270452454(&qword_2807D2C98, sub_2703B1804);
    sub_2705D7FA4();
    v30 = v50[0];
    v77[359] = 1;
    sub_270452344();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7FA4();
    memcpy(v83, v78, sizeof(v83));
    v76[359] = 2;
    sub_2703BAE84();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7F44();
    memcpy(v75, v77, sizeof(v75));
    memcpy(v76, v82, 0x160uLL);
    sub_2703C2EFC(v76, &qword_2807D2478);
    memcpy(v82, v75, sizeof(v82));
    sub_2703C3EB0();
    OUTLINED_FUNCTION_4_26();
    sub_2705D7FA4();
    v31 = v50[1];
    v32 = v50[2];
    v33 = v50[0];
    v34 = v50[3];
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v43 = v50[0];
    v45 = v50[1];
    v29 = v50[2];
    v10 = v50[3];
    v11 = OUTLINED_FUNCTION_6_26();
    sub_2703AFC10(v11, v12, v13, 0xFEu);
    sub_270452398();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7FA4();
    v14 = v50[0];
    sub_2703C3F58();
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v37 = v50[0];
    v39 = v50[1];
    v40 = v50[2];
    v41 = v50[3];
    v15 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v15, v16);
    LOBYTE(v49[0]) = 7;
    OUTLINED_FUNCTION_4_26();
    sub_2705D7F44();
    v17 = v50[0];
    v47 = v50[1];
    v48 = v50[2];
    v85 = v50[3];
    v18 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v18, v19);
    v71 = 8;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_9_22();
    sub_2705D7F44();
    v20 = OUTLINED_FUNCTION_7_19();
    v21(v20);
    v22 = v72;
    v23 = v73;
    v27 = v73;
    v28 = v72;
    v26 = v74;
    v24 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v24, v25, 255);
    v49[0] = v30;
    memcpy(&v49[1], v83, 0x98uLL);
    memcpy(&v49[20], v75, 0x160uLL);
    v49[64] = v33;
    v49[65] = v31;
    v49[66] = v32;
    LOBYTE(v49[67]) = v34;
    v49[68] = v43;
    v49[69] = v45;
    v49[70] = v29;
    LOBYTE(v49[71]) = v10;
    BYTE1(v49[71]) = v14;
    v49[72] = v37;
    v49[73] = v39;
    v49[74] = v40;
    v49[75] = v41;
    v49[76] = v17;
    v49[77] = v47;
    v49[78] = v48;
    v49[79] = v85;
    v49[80] = v22;
    v49[81] = v23;
    LOBYTE(v49[82]) = v26;
    memcpy(v5, v49, 0x291uLL);
    sub_2704523EC(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v50[0] = v30;
    memcpy(&v50[1], v83, 0x98uLL);
    memcpy(&v50[20], v75, 0x160uLL);
    v50[64] = v33;
    v50[65] = v31;
    v50[66] = v32;
    v51 = v34;
    *v52 = *v81;
    *&v52[3] = *&v81[3];
    v53 = v43;
    v54 = v45;
    v55 = v29;
    v56 = v10;
    v57 = v14;
    v58 = v79;
    v59 = v80;
    v60 = v37;
    v61 = v39;
    v62 = v40;
    v63 = v41;
    v64 = v17;
    v65 = v47;
    v66 = v48;
    v67 = v85;
    v68 = v28;
    v69 = v27;
    v70 = v26;
    sub_270452424(v50);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704521D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704510B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270452200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270451384();
  *a1 = result;
  return result;
}

uint64_t sub_270452228(uint64_t a1)
{
  v2 = sub_2704522F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270452264(uint64_t a1)
{
  v2 = sub_2704522F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704522D0(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0xFFFFFFFF00;
  bzero((a1 + 56), 0x128uLL);
}

unint64_t sub_2704522F0()
{
  result = qword_2807D2C88;
  if (!qword_2807D2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2C88);
  }

  return result;
}

unint64_t sub_270452344()
{
  result = qword_2807D2CA0;
  if (!qword_2807D2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CA0);
  }

  return result;
}

unint64_t sub_270452398()
{
  result = qword_2807D2CA8;
  if (!qword_2807D2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CA8);
  }

  return result;
}

uint64_t sub_270452454(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2C90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704524CC()
{
  result = qword_2807D2CC0;
  if (!qword_2807D2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CC0);
  }

  return result;
}

unint64_t sub_270452520()
{
  result = qword_2807D2CC8;
  if (!qword_2807D2CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CC8);
  }

  return result;
}

void *sub_270452574(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v157 - v5;
  v7 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_11();
  v167 = v11;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v12);
  v166 = &v157 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2CD0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v170 = &v157 - v15;
  v168 = type metadata accessor for FlowActionModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  v169 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = _s6ActionVMa();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_11();
  v165 = v21;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  *&v171 = v23;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50();
  v187 = v25;
  OUTLINED_FUNCTION_24_6();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v157 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_50();
  v164 = v30;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_50();
  v185 = v32;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_50();
  v186 = v34;
  OUTLINED_FUNCTION_24_6();
  MEMORY[0x28223BE20](v35);
  v37 = &v157 - v36;
  sub_2704522D0(v219);
  memcpy(v200, v219, sizeof(v200));
  *&v173 = type metadata accessor for MessagingUIRequest();
  v38 = *(v1 + *(v173 + 36)) - 3;
  if (v38 < 6 && ((0x33u >> v38) & 1) != 0)
  {
    v160 = v6;
    v161 = v7;
    v158 = v9;
    v159 = v3;
    v163 = (0x22u >> v38) & 1;
    v162 = v1;
    v39 = *v1;
    v40 = *v1 == 0;
    *&v172 = MEMORY[0x277D84F90];
    if (v40)
    {
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      v41 = v39;
    }

    v42 = *(v41 + 16);
    result = swift_bridgeObjectRetain_n();
    v44 = 0;
    v45 = v188;
    while (v42 != v44)
    {
      if (v44 >= *(v41 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }

      v46 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v47 = *(v19 + 72);
      OUTLINED_FUNCTION_1_32();
      sub_270453544(v48, v37, v49);
      if (v37[v45[10]] == 2)
      {
        OUTLINED_FUNCTION_0_29();
        result = sub_2704535A4(v37, v50);
        ++v44;
      }

      else
      {
        sub_2704534E0(v37, v185);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v172;
        *v196 = v172;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2704ADCFC(0, *(v172 + 16) + 1, 1);
          v45 = v188;
          v52 = *v196;
        }

        v54 = *(v52 + 16);
        v53 = *(v52 + 24);
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v183 = *(v52 + 16);
          v184 = v54 + 1;
          sub_2704ADCFC(v53 > 1, v54 + 1, 1);
          v54 = v183;
          v55 = v184;
          v45 = v188;
          v52 = *v196;
        }

        ++v44;
        *(v52 + 16) = v55;
        *&v172 = v52;
        result = sub_2704534E0(v185, v52 + v46 + v54 * v47);
      }
    }

    v65 = *(v172 + 16);
    if (v65)
    {
      v66 = v172 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v67 = *(v19 + 72);
      v185 = MEMORY[0x277D84F90];
      *&v175 = v67;
      *&v176 = v19;
      *&v174 = v29;
      *&v177 = v41;
      do
      {
        v68 = v186;
        sub_270453544(v66, v186, _s6ActionVMa);
        sub_270453544(v68, v29, _s6ActionVMa);
        v69 = v187;
        sub_270453544(v29, v187, _s6ActionVMa);
        sub_2703AE190(v69, v196);
        OUTLINED_FUNCTION_0_29();
        sub_2704535A4(v68, v70);
        v71 = v196[24];
        if (v196[24] == 254)
        {
          OUTLINED_FUNCTION_0_29();
          sub_2704535A4(v29, v72);
        }

        else
        {
          v73 = v67;
          v74 = *v196;
          v75 = *&v196[8];
          v76 = *&v196[16];
          v77 = &v29[v188[11]];
          v78 = *(v77 + 1);
          if (v78)
          {
            v183 = *&v196[8];
            v184 = *v196;
            v181 = *v77;
            v79 = &v29[v188[8]];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = v79[16];
            swift_bridgeObjectRetain_n();
            v179 = v80;
            LODWORD(v178) = v82;
            sub_2703AE9E8(v81, v80, v82);
            OUTLINED_FUNCTION_0_29();
            sub_2704535A4(v29, v83);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            v182 = v76;
            v180 = v81;
            if ((v84 & 1) == 0)
            {
              sub_27049949C();
              v185 = v95;
            }

            v41 = v177;
            v85 = v184;
            v86 = *(v185 + 16);
            v87 = v183;
            if (v86 >= *(v185 + 24) >> 1)
            {
              sub_27049949C();
              v87 = v183;
              v85 = v184;
              v185 = v96;
            }

            v29 = v174;
            v88 = v185;
            *(v185 + 16) = v86 + 1;
            v89 = v88 + 120 * v86;
            *(v89 + 32) = v85;
            *(v89 + 40) = v87;
            *(v89 + 48) = v182;
            *(v89 + 56) = v71;
            *(v89 + 57) = 1;
            v90 = v193[1];
            *(v89 + 58) = v193[0];
            *(v89 + 62) = v90;
            v92 = v180;
            v91 = v181;
            *(v89 + 64) = v181;
            *(v89 + 72) = v78;
            *(v89 + 80) = v91;
            *(v89 + 88) = v78;
            v93 = v179;
            *(v89 + 96) = v92;
            *(v89 + 104) = v93;
            *(v89 + 112) = v178;
            LODWORD(v93) = *v196;
            *(v89 + 116) = *&v196[3];
            *(v89 + 113) = v93;
            *(v89 + 136) = 0u;
            *(v89 + 120) = 0u;
            v67 = v175;
          }

          else
          {
            OUTLINED_FUNCTION_0_29();
            sub_2704535A4(v29, v94);
            sub_2703AFC10(v74, v75, v76, v71);
            v67 = v73;
            v41 = v177;
          }
        }

        v66 += v67;
        --v65;
      }

      while (v65);
    }

    else
    {

      v185 = MEMORY[0x277D84F90];
    }

    v97 = 0;
    v98 = *(v41 + 16);
    v99 = v162;
    for (i = v171; ; result = sub_2704535A4(i, v103))
    {
      if (v98 == v97)
      {

LABEL_38:
        v110 = v160;
        v109 = v161;
        type metadata accessor for FlowActionModel.FlowType(0);
        v111 = v169;
        swift_storeEnumTagMultiPayload();
        v112 = v168;
        v113 = v111 + *(v168 + 20);
        *v113 = 0;
        *(v113 + 8) = 0;
        *(v113 + 16) = 0;
        *(v113 + 24) = -2;
        v114 = v111 + *(v112 + 24);
        *v114 = 0;
        *(v114 + 8) = 0;
        *(v114 + 16) = 0;
        *(v114 + 24) = -2;
        sub_2703AFC10(*v113, *(v113 + 8), *(v113 + 16), *(v113 + 24));
        *v113 = 0;
        *(v113 + 8) = 0;
        *(v113 + 16) = 0;
        *(v113 + 24) = -2;
        sub_2703AFC10(*v114, *(v114 + 8), *(v114 + 16), *(v114 + 24));
        *v114 = 0;
        *(v114 + 8) = 0;
        *(v114 + 16) = 0;
        *(v114 + 24) = -2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CE8D8);
        v115 = swift_allocBox();
        sub_270453544(v111, v116, type metadata accessor for FlowActionModel);
        v186 = v115 | 0x4000000000000000;
        sub_2704535A4(v111, type metadata accessor for FlowActionModel);
        v183 = 0;
        v184 = 0;
        v108 = 255;
        goto LABEL_40;
      }

      if (v97 >= *(v41 + 16))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_1_32();
      sub_270453544(v101, i, v102);
      if (*(i + v188[10]) == 2)
      {
        break;
      }

      ++v97;
      OUTLINED_FUNCTION_0_29();
    }

    v104 = v164;
    sub_2704534E0(i, v164);
    OUTLINED_FUNCTION_1_32();
    v105 = v187;
    sub_270453544(v104, v187, v106);
    sub_2703AE190(v105, v196);
    OUTLINED_FUNCTION_0_29();
    sub_2704535A4(v104, v107);
    v108 = v196[24];
    if (v196[24] == 254)
    {
      goto LABEL_38;
    }

    v183 = *&v196[8];
    v184 = *&v196[16];
    v186 = *v196;
    v110 = v160;
    v109 = v161;
LABEL_40:
    v117 = v173;
    v118 = v170;
    sub_2703C2E9C(v99 + *(v173 + 24), v170, &qword_2807D2CD0);
    if (__swift_getEnumTagSinglePayload(v118, 1, v188) == 1)
    {
      sub_2703C2EFC(v118, &qword_2807D2CD0);
      v187 = 0;
      v188 = 0;
      v170 = 0;
      LODWORD(v182) = 254;
    }

    else
    {
      v119 = v118;
      v120 = v165;
      sub_2704534E0(v119, v165);
      OUTLINED_FUNCTION_1_32();
      v121 = v187;
      sub_270453544(v120, v187, v122);
      sub_2703AE190(v121, v196);
      OUTLINED_FUNCTION_0_29();
      sub_2704535A4(v120, v123);
      v170 = *&v196[8];
      v187 = *&v196[16];
      v188 = *v196;
      LODWORD(v182) = v196[24];
      v124 = OUTLINED_FUNCTION_6_26();
      sub_2703AFC10(v124, v125, v126, 0xFEu);
    }

    sub_2703C2E9C(v99 + v117[7], v110, &unk_2807D4280);
    if (__swift_getEnumTagSinglePayload(v110, 1, v109) == 1)
    {
      sub_2703C2EFC(v110, &unk_2807D4280);
    }

    else
    {
      v127 = v158;
      v128 = v166;
      (*(v158 + 32))(v166, v110, v109);
      v129 = v167;
      (*(v127 + 16))(v167, v128, v109);
      sub_2703BAF2C(v129, v189);
      (*(v127 + 8))(v128, v109);
      v117 = v173;
      OUTLINED_FUNCTION_23_8(v196);
      sub_2703C2EFC(v196, &qword_2807D2478);
      memcpy(v200, v189, sizeof(v200));
    }

    v130 = (v99 + v117[10]);
    v131 = v130[1];
    if (v131)
    {
      v132 = *v130;
      swift_bridgeObjectRetain_n();
      v133 = OUTLINED_FUNCTION_5_29();
      sub_2703C3A5C(v133, v134);
    }

    else
    {
      v132 = 0;
    }

    v135 = (v99 + v117[11]);
    v136 = v135[1];
    if (v136)
    {
      v137 = *v135;
      swift_bridgeObjectRetain_n();
      v138 = OUTLINED_FUNCTION_5_29();
      sub_2703C3A5C(v138, v139);
    }

    else
    {
      v137 = 0;
    }

    v140 = v99 + v117[12];
    v141 = *v140;
    v142 = *(v140 + 16);
    v180 = *(v140 + 8);
    v181 = v141;
    LODWORD(v179) = v142;
    sub_2703AE9E8(v141, v180, v142);
    v143 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v143, v144, 255);
    sub_2703BF150(v163, v202);
    memcpy(v194, v99 + 1, sizeof(v194));
    memcpy(v195, v99 + 1, sizeof(v195));
    v145 = sub_2704535FC(v195);
    v168 = v132;
    v169 = v131;
    v166 = v137;
    v167 = v136;
    if (v145 == 1)
    {
      v177 = v208;
      v178 = v209;
      v175 = v206;
      v176 = v207;
      v146 = v205;
      v147 = v204;
      v148 = v203;
      v173 = v202[2];
      v174 = v202[3];
      v172 = v202[1];
      v149 = v202[0];
    }

    else
    {
      memcpy(v218, v195, sizeof(v218));
      memcpy(v196, v194, 0x98uLL);
      sub_2703BFA60(v196, v193);
      sub_270453F94(v218, v210);
      sub_2703C2EFC(v194, &qword_2807D2CD8);
      sub_2703BFABC(v202);
      v177 = v216;
      v178 = v217;
      v175 = v214;
      v176 = v215;
      v146 = v213;
      v147 = v212;
      v148 = v211;
      v173 = v210[2];
      v174 = v210[3];
      v172 = v210[1];
      v149 = v210[0];
    }

    v171 = v149;
    v191 = v146;
    OUTLINED_FUNCTION_13_15();
    LODWORD(v165) = v191;
    *&v192[24] = v172;
    *&v192[8] = v171;
    *&v192[56] = v174;
    *&v192[40] = v173;
    *v192 = v185;
    *&v192[72] = v148;
    *&v192[80] = v147;
    v192[88] = v191;
    *&v192[89] = *v201;
    *&v192[92] = *&v201[3];
    *&v192[112] = v176;
    *&v192[96] = v175;
    *&v192[144] = v178;
    *&v192[128] = v177;
    OUTLINED_FUNCTION_23_8(&v192[160]);
    *&v192[512] = v186;
    *&v192[520] = v183;
    *&v192[528] = v184;
    v192[536] = v108;
    *&v192[537] = *v199;
    *&v192[540] = *&v199[3];
    *&v192[544] = v188;
    v150 = v170;
    *&v192[552] = v170;
    *&v192[560] = v187;
    v192[568] = v182;
    LODWORD(v164) = v108;
    v151 = v163;
    v192[569] = v163;
    *&v192[570] = v197;
    *&v192[574] = v198;
    v152 = v168;
    v153 = v169;
    *&v192[576] = v168;
    *&v192[584] = v169;
    *&v192[592] = v168;
    *&v192[600] = v169;
    v155 = v166;
    v154 = v167;
    *&v192[608] = v166;
    *&v192[616] = v167;
    *&v192[624] = v166;
    *&v192[632] = v167;
    *&v192[640] = v181;
    *&v192[648] = v180;
    v192[656] = v179;
    memcpy(v193, v192, 0x291uLL);
    CGSizeMake(v193, v156);
    memcpy(v159, v193, 0x291uLL);
    *&v196[8] = v171;
    *&v196[24] = v172;
    *&v196[40] = v173;
    *&v196[56] = v174;
    *v196 = v185;
    *&v196[72] = v148;
    *&v196[80] = v147;
    v196[88] = v165;
    *&v196[89] = *v201;
    *&v196[92] = *&v201[3];
    *&v196[96] = v175;
    *&v196[112] = v176;
    *&v196[128] = v177;
    *&v196[144] = v178;
    OUTLINED_FUNCTION_23_8(&v196[160]);
    *&v196[512] = v186;
    *&v196[520] = v183;
    *&v196[528] = v184;
    v196[536] = v164;
    *&v196[537] = *v199;
    *&v196[540] = *&v199[3];
    *&v196[544] = v188;
    *&v196[552] = v150;
    *&v196[560] = v187;
    v196[568] = v182;
    v196[569] = v151;
    *&v196[570] = v197;
    *&v196[574] = v198;
    *&v196[576] = v152;
    *&v196[584] = v153;
    *&v196[592] = v152;
    *&v196[600] = v153;
    *&v196[608] = v155;
    *&v196[616] = v154;
    *&v196[624] = v155;
    *&v196[632] = v154;
    *&v196[640] = v181;
    *&v196[648] = v180;
    v196[656] = v179;
    sub_2704523EC(v192, &v190);
    return sub_270452424(v196);
  }

  else
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_23_8(v193);
    sub_2703C2EFC(v193, &qword_2807D2478);
    v56 = OUTLINED_FUNCTION_6_26();
    sub_2703AFC10(v56, v57, v58, 0xFEu);
    v59 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v59, v60);
    v61 = OUTLINED_FUNCTION_5_29();
    sub_2703C3A5C(v61, v62);
    v63 = OUTLINED_FUNCTION_11_8();
    sub_2703AE980(v63, v64, 255);
    sub_2704534D8(v196);
    return memcpy(v3, v196, 0x291uLL);
  }
}

uint64_t sub_2704534E0(uint64_t a1, uint64_t a2)
{
  v4 = _s6ActionVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270453544(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2704535A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2704535FC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for InlineMessageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InlineMessageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270453774);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704537C0()
{
  result = qword_2807D2CE0;
  if (!qword_2807D2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CE0);
  }

  return result;
}

unint64_t sub_270453818()
{
  result = qword_2807D2CE8;
  if (!qword_2807D2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CE8);
  }

  return result;
}

unint64_t sub_270453870()
{
  result = qword_2807D2CF0;
  if (!qword_2807D2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CF0);
  }

  return result;
}

unint64_t sub_2704538C8()
{
  result = qword_2807D2CF8;
  if (!qword_2807D2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2CF8);
  }

  return result;
}

unint64_t sub_27045391C()
{
  result = qword_2807D2D18;
  if (!qword_2807D2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D18);
  }

  return result;
}

unint64_t sub_270453970()
{
  result = qword_2807D2D20;
  if (!qword_2807D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D20);
  }

  return result;
}

unint64_t sub_2704539C4()
{
  result = qword_2807D2D28;
  if (!qword_2807D2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D28);
  }

  return result;
}

_BYTE *sub_270453A1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270453AE8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270453B44()
{
  result = qword_2807D2D48;
  if (!qword_2807D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D48);
  }

  return result;
}

unint64_t sub_270453B9C()
{
  result = qword_2807D2D50;
  if (!qword_2807D2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D50);
  }

  return result;
}

unint64_t sub_270453BF4()
{
  result = qword_2807D2D58;
  if (!qword_2807D2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D58);
  }

  return result;
}

unint64_t sub_270453C4C()
{
  result = qword_2807D2D60;
  if (!qword_2807D2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D60);
  }

  return result;
}

unint64_t sub_270453CA4()
{
  result = qword_2807D2D68;
  if (!qword_2807D2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D68);
  }

  return result;
}

unint64_t sub_270453CFC()
{
  result = qword_2807D2D70;
  if (!qword_2807D2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D70);
  }

  return result;
}

unint64_t sub_270453D54()
{
  result = qword_2807D2D78;
  if (!qword_2807D2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D78);
  }

  return result;
}

void OUTLINED_FUNCTION_3_31()
{
  *(v1 - 72) = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return sub_2704535A4(v0, type metadata accessor for MessagingUIRequest);
}

void *OUTLINED_FUNCTION_23_8(void *a1)
{

  return memcpy(a1, (v1 + 3656), 0x160uLL);
}

uint64_t sub_270453EBC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 152))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270453F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_270453F94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v3;
  v67 = *(v3 + 80);
  v66[0] = *(v3 + 81);
  *(v66 + 3) = *(v3 + 84);
  v6 = *a1;
  if (!*a1)
  {

    v6 = v5;
  }

  v51 = v6;
  v7 = *(v3 + 8);
  sub_2703BFA60(v3, v55);

  v8 = *(a1 + 8);
  if (!v8)
  {

    v8 = v7;
  }

  v50 = v8;
  v9 = *(v3 + 16);

  v10 = *(a1 + 16);
  if (!v10)
  {

    v10 = v9;
  }

  v49 = v10;
  v11 = *(v3 + 24);

  v12 = *(a1 + 24);
  if (!v12)
  {

    v12 = v11;
  }

  v48 = v12;
  v13 = *(v3 + 32);

  v14 = *(a1 + 32);
  if (!v14)
  {

    v14 = v13;
  }

  v47 = v14;
  v15 = *(v3 + 40);

  v16 = *(a1 + 40);
  if (!v16)
  {

    v16 = v15;
  }

  v46 = v16;
  v17 = *(v3 + 48);

  v18 = *(a1 + 48);
  if (!v18)
  {

    v18 = v17;
  }

  v45 = v18;
  v19 = *(v3 + 56);

  v20 = *(a1 + 56);
  if (!v20)
  {

    v20 = v19;
  }

  v44 = v20;
  v21 = *(v3 + 64);

  v22 = *(a1 + 64);
  if (!v22)
  {

    v22 = v21;
  }

  v43 = v22;

  if (*(a1 + 80) == 1)
  {
    v23 = *(v3 + 80);
    v24 = v3;
  }

  else
  {
    v23 = 0;
    v24 = a1;
  }

  v42 = *(v24 + 72);
  v25 = *(v3 + 88);
  v67 = v23;
  v26 = *(a1 + 88);
  if (!v26)
  {

    v26 = v25;
  }

  v41 = v26;
  v28 = *(v3 + 96);
  v27 = *(v3 + 104);

  if (*(a1 + 104))
  {
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
  }

  else
  {

    v29 = v27;
  }

  v30 = *(v3 + 112);

  v31 = *(a1 + 112);
  if (!v31)
  {

    v31 = v30;
  }

  v32 = *(v3 + 120);

  v33 = *(a1 + 120);
  if (!v33)
  {

    v33 = v32;
  }

  v34 = *(v3 + 128);

  v35 = *(a1 + 128);
  if (!v35)
  {

    v35 = v34;
  }

  v36 = *(v3 + 136);

  v37 = *(a1 + 136);
  if (!v37)
  {

    v37 = v36;
  }

  v38 = *(v3 + 144);

  v39 = *(a1 + 144);
  if (!v39)
  {

    v39 = v38;
  }

  __src[0] = v51;
  __src[1] = v50;
  __src[2] = v49;
  __src[3] = v48;
  __src[4] = v47;
  __src[5] = v46;
  __src[6] = v45;
  __src[7] = v44;
  __src[8] = v43;
  __src[9] = v42;
  *(&__src[10] + 1) = v66[0];
  HIDWORD(__src[10]) = *(v66 + 3);
  LOBYTE(__src[10]) = v67;
  __src[11] = v41;
  __src[12] = v28;
  __src[13] = v29;
  __src[14] = v31;
  __src[15] = v33;
  __src[16] = v35;
  __src[17] = v37;
  __src[18] = v39;
  v55[0] = v51;
  v55[1] = v50;
  v55[2] = v49;
  v55[3] = v48;
  v55[4] = v47;
  v55[5] = v46;
  v55[6] = v45;
  v55[7] = v44;
  v55[8] = v43;
  v55[9] = v42;
  v56 = v67;
  *v57 = v66[0];
  *&v57[3] = *(v66 + 3);
  v58 = v41;
  v59 = v28;
  v60 = v29;
  v61 = v31;
  v62 = v33;
  v63 = v35;
  v64 = v37;
  v65 = v39;
  sub_2703BFA60(__src, v53);
  sub_2703BFABC(v55);
  return memcpy(a2, __src, 0x98uLL);
}

uint64_t sub_2704543E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000270613EB0 == a2;
  if (v4 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x8000000270613ED0 == a2;
    if (v6 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000027 && 0x8000000270613EF0 == a2;
      if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x8000000270613F20 == a2;
        if (v8 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x8000000270613F40 == a2;
          if (v9 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000270613F60 == a2;
            if (v10 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == OUTLINED_FUNCTION_17_11() && a2 == v11;
              if (v12 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0xD000000000000011 && 0x8000000270613F80 == a2;
                if (v13 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = a1 == 0xD000000000000010 && 0x8000000270613FA0 == a2;
                  if (v14 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = a1 == 0xD000000000000016 && 0x8000000270613FC0 == a2;
                    if (v15 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = a1 == 0x6E69546567616D69 && a2 == 0xEE00726F6C6F4374;
                      if (v16 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v17 = a1 == 0xD00000000000001DLL && 0x8000000270613FE0 == a2;
                        if (v17 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v18 = a1 == 0x656C746974627573 && a2 == 0xEC000000746E6F46;
                          if (v18 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v19 = a1 == 0x656C746974627573 && a2 == 0xED0000726F6C6F43;
                            if (v19 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v20 = a1 == 0x6F74617261706573 && a2 == 0xEE00726F6C6F4372;
                              if (v20 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v21 = a1 == 0x6E6F46656C746974 && a2 == 0xE900000000000074;
                                if (v21 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6C6F43656C746974 && a2 == 0xEA0000000000726FLL)
                                {

                                  return 16;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_5_30();
                                  OUTLINED_FUNCTION_26_8();
                                  if (a1)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
          }
        }
      }
    }
  }
}

uint64_t sub_270454804()
{
  result = OUTLINED_FUNCTION_17_11();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_25_9();
      result = v7 + 1;
      break;
    case 2:
      OUTLINED_FUNCTION_25_9();
      result = v5 + 10;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_25_9();
      result = v3 - 10;
      break;
    case 5:
      OUTLINED_FUNCTION_25_9();
      result = v8 - 1;
      break;
    case 6:
      return result;
    case 7:
      OUTLINED_FUNCTION_25_9();
      result = v6 - 12;
      break;
    case 8:
      OUTLINED_FUNCTION_25_9();
      result = v9 - 13;
      break;
    case 9:
      OUTLINED_FUNCTION_25_9();
      result = v4 - 7;
      break;
    case 10:
      result = 0x6E69546567616D69;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 13:
      result = 0x656C746974627573;
      break;
    case 14:
      result = 0x6F74617261706573;
      break;
    case 15:
      result = 0x6E6F46656C746974;
      break;
    case 16:
      result = 0x6C6F43656C746974;
      break;
    default:
      OUTLINED_FUNCTION_25_9();
      result = v2 - 9;
      break;
  }

  return result;
}

uint64_t sub_270454A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704543E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270454AC8(uint64_t a1)
{
  v2 = sub_270455434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270454B04(uint64_t a1)
{
  v2 = sub_270455434();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_270454B40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2D80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v80 = 1;
  v9 = a1[3];
  v10 = a1[4];
  v54 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_270455434();
  sub_2705D8484();
  v12 = v2;
  if (v2)
  {
    v81 = v2;
    OUTLINED_FUNCTION_0_30();
    OUTLINED_FUNCTION_24_11();
    v55 = 0;
    v56 = 0;
    v14 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v54);
    v61 = v14;
    v62 = v56;
    v63 = v55;
    v64 = v10;
    v65 = v12;
    v66 = v3;
    v67 = v11;
    v68 = v5;
    v69 = v8;
    v70 = v9;
    OUTLINED_FUNCTION_15_16(v80);
    v71 = v53;
    v72 = v58;
    v73 = v57;
    v74 = v52;
    v75 = v51;
    v76 = v50;
    v77 = v49;
    v78 = 0;
    return sub_2703BFABC(&v61);
  }

  v13 = v48;
  LOBYTE(v59[0]) = 0;
  sub_270455488();
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v47 = v61;
  LOBYTE(v59[0]) = 1;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v16 = v61;
  LOBYTE(v59[0]) = 2;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v56 = v16;
  v17 = v61;
  LOBYTE(v59[0]) = 3;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v55 = v17;
  v46 = v61;
  LOBYTE(v59[0]) = 4;
  v18 = sub_2704554DC();
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v45 = v61;
  LOBYTE(v59[0]) = 5;
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v49 = v18;
  v44 = v61;
  LOBYTE(v59[0]) = 6;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v43 = v61;
  LOBYTE(v59[0]) = 7;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v42 = v61;
  LOBYTE(v59[0]) = 8;
  OUTLINED_FUNCTION_3_32();
  sub_2705D7F44();
  v41 = v61;
  LOBYTE(v61) = 9;
  v40 = sub_2705D7F34();
  v80 = v19 & 1;
  LOBYTE(v59[0]) = 10;
  OUTLINED_FUNCTION_2_27();
  sub_2705D7F44();
  v81 = 0;
  v53 = v61;
  LOBYTE(v61) = 11;
  v20 = sub_2705D7F04();
  v57 = v21;
  v58 = v20;
  v81 = 0;
  LOBYTE(v59[0]) = 12;
  OUTLINED_FUNCTION_7_20();
  v22 = v81;
  sub_2705D7F44();
  v81 = v22;
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_6_27();
    v24(v23);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
LABEL_10:
    v10 = v46;
    v14 = v47;
    v3 = v44;
    v12 = v45;
    v5 = v42;
    v11 = v43;
    v9 = v40;
    v8 = v41;
    goto LABEL_4;
  }

  v52 = v61;
  LOBYTE(v59[0]) = 13;
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_19_6();
  v81 = 0;
  v51 = v61;
  LOBYTE(v59[0]) = 14;
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_19_6();
  v81 = 0;
  v50 = v61;
  LOBYTE(v59[0]) = 15;
  OUTLINED_FUNCTION_7_20();
  v25 = v81;
  sub_2705D7F44();
  v81 = v25;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_6_27();
    v27(v26);
    v49 = 0;
    goto LABEL_10;
  }

  v49 = v61;
  LOBYTE(v61) = 16;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_19_6();
  v28 = OUTLINED_FUNCTION_6_27();
  v29(v28);
  v81 = 0;
  v38 = v60;
  v59[0] = v47;
  v59[1] = v56;
  v59[2] = v55;
  v59[3] = v46;
  v59[4] = v45;
  v59[5] = v44;
  v59[6] = v43;
  v59[7] = v42;
  v59[8] = v41;
  v59[9] = v40;
  v39 = v80;
  LOBYTE(v59[10]) = v80;
  *(&v59[10] + 1) = *v79;
  HIDWORD(v59[10]) = *&v79[3];
  v31 = v52;
  v30 = v53;
  v32 = v57;
  v33 = v58;
  v59[11] = v53;
  v59[12] = v58;
  v59[13] = v57;
  v59[14] = v52;
  v35 = v50;
  v34 = v51;
  v59[15] = v51;
  v59[16] = v50;
  v36 = v49;
  v59[17] = v49;
  v59[18] = v60;
  sub_2703BFA60(v59, &v61);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v61 = v47;
  v62 = v56;
  v63 = v55;
  v64 = v46;
  v65 = v45;
  v66 = v44;
  v67 = v43;
  v68 = v42;
  v69 = v41;
  v70 = v40;
  OUTLINED_FUNCTION_15_16(v39);
  v71 = v30;
  v72 = v33;
  v73 = v32;
  v74 = v31;
  v75 = v34;
  v76 = v35;
  v77 = v36;
  v78 = v38;
  sub_2703BFABC(&v61);
  return memcpy(v13, v59, 0x98uLL);
}

uint64_t sub_2704552A8(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_18_8() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x67696557746E6F66 && a2 == 0xEA00000000007468;
    if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000270614000 == a2)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_30();
      OUTLINED_FUNCTION_26_8();
      if (a1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_270455388(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  if (a1 == 1)
  {
    return 0x67696557746E6F66;
  }

  return 0xD000000000000010;
}

void *sub_2704553E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_270454B40(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x98uLL);
  }

  return result;
}

unint64_t sub_270455434()
{
  result = qword_2807D2D88;
  if (!qword_2807D2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D88);
  }

  return result;
}

unint64_t sub_270455488()
{
  result = qword_2807D2D90;
  if (!qword_2807D2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D90);
  }

  return result;
}

unint64_t sub_2704554DC()
{
  result = qword_2807D2D98;
  if (!qword_2807D2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2D98);
  }

  return result;
}

uint64_t sub_270455548(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2704555D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27045569CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704556D4()
{
  result = qword_2807D2DA0;
  if (!qword_2807D2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DA0);
  }

  return result;
}

uint64_t sub_270455730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704552A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270455764(uint64_t a1)
{
  v2 = sub_2704577E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704557A0(uint64_t a1)
{
  v2 = sub_2704577E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704557DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  v5 = sub_2705D58D4();
  OUTLINED_FUNCTION_0();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DE8);
  OUTLINED_FUNCTION_0();
  v37 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704577E8();
  v16 = v39;
  sub_2705D8484();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v39 = v9;
    v36 = v4;
    v18 = v37;
    v17 = v38;
    v19 = v5;
    v44 = 0;
    sub_27045783C();
    OUTLINED_FUNCTION_18();
    sub_2705D7FA4();
    sub_270455C40(v45, v39);
    v42 = 1;
    sub_270457890();
    OUTLINED_FUNCTION_18();
    sub_2705D7F44();
    v20 = v18;
    v21 = v19;
    if (v43 == 9)
    {
      v35 = 0;
    }

    else
    {
      sub_270455CBC(v43);
      v35 = v22;
    }

    v40 = 2;
    sub_2704578E4();
    OUTLINED_FUNCTION_18();
    sub_2705D7F44();
    v34 = v14;
    v24 = MEMORY[0x277CE0990];
    v33 = a1;
    switch(v41)
    {
      case 1:
        v24 = MEMORY[0x277CE09A0];
        goto LABEL_13;
      case 2:
        v24 = MEMORY[0x277CE0988];
        goto LABEL_13;
      case 3:
        v24 = MEMORY[0x277CE0980];
        goto LABEL_13;
      case 4:
        v25 = sub_2705D5794();
        v26 = v36;
        v27 = v36;
        v28 = 1;
        goto LABEL_14;
      default:
LABEL_13:
        v29 = *v24;
        v30 = sub_2705D5794();
        v26 = v36;
        (*(*(v30 - 8) + 104))(v36, v29, v30);
        v27 = v26;
        v28 = 0;
        v25 = v30;
        v21 = v19;
LABEL_14:
        __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);
        v31 = v39;
        v15 = sub_2705D5854();
        sub_2703BF9F8(v26);
        (*(v17 + 8))(v31, v21);
        (*(v20 + 8))(v34, v10);
        __swift_destroy_boxed_opaque_existential_1(v33);
        break;
    }
  }

  return v15;
}

uint64_t sub_270455C40@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D58D4();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279E047F0 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_270455CBC(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_2705D57D4();
      break;
    case 2:
      result = sub_2705D5804();
      break;
    case 3:
      result = sub_2705D5824();
      break;
    case 4:
      result = sub_2705D5814();
      break;
    case 5:
      result = sub_2705D5834();
      break;
    case 6:
      result = sub_2705D57C4();
      break;
    case 7:
      result = sub_2705D57F4();
      break;
    case 8:
      result = sub_2705D57E4();
      break;
    default:
      result = sub_2705D57A4();
      break;
  }

  return result;
}

uint64_t sub_270455D28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_9();
  sub_2705D8454();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    OUTLINED_FUNCTION_23_9();
    sub_2705D8144();
    v5 = sub_2705D75E4();
    v7 = v6;

    v8 = v5 == 0x746974656772616CLL && v7 == 0xEA0000000000656CLL;
    if (v8 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v24);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v1;
    }

    v9 = v5 == 0x31656C746974 && v7 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 1;
      goto LABEL_12;
    }

    v10 = v5 == 0x32656C746974 && v7 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 2;
      goto LABEL_12;
    }

    v11 = v5 == 0x33656C746974 && v7 == 0xE600000000000000;
    if (v11 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 3;
      goto LABEL_12;
    }

    v12 = v5 == 0x656E696C64616568 && v7 == 0xE800000000000000;
    if (v12 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 4;
      goto LABEL_12;
    }

    v14 = v5 == OUTLINED_FUNCTION_20_8() && v7 == v13;
    if (v14 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 5;
      goto LABEL_12;
    }

    v15 = v5 == 2036625250 && v7 == 0xE400000000000000;
    if (v15 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 6;
      goto LABEL_12;
    }

    v16 = v5 == 0x74756F6C6C6163 && v7 == 0xE700000000000000;
    if (v16 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 7;
      goto LABEL_12;
    }

    v17 = v5 == 0x65746F6E746F6F66 && v7 == 0xE800000000000000;
    if (v17 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 8;
      goto LABEL_12;
    }

    v18 = v5 == 0x316E6F6974706163 && v7 == 0xE800000000000000;
    if (v18 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 9;
      goto LABEL_12;
    }

    v19 = v5 == 0x326E6F6974706163 && v7 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      v1 = 10;
      goto LABEL_12;
    }

    v20 = sub_2705D7D84();
    swift_allocError();
    v22 = v21;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2705D8434();
    sub_2705D7D04();

    v23[0] = 0xD00000000000001DLL;
    v23[1] = 0x8000000270614020;
    v1 = v23;
    MEMORY[0x2743A3A90](v5, v7);

    sub_2705D7D44();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84168], v20);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_270456164()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704561A4(char a1)
{
  result = 0x746974656772616CLL;
  switch(a1)
  {
    case 1:
      result = 0x31656C746974;
      break;
    case 2:
      result = 0x32656C746974;
      break;
    case 3:
      result = 0x33656C746974;
      break;
    case 4:
      result = 0x656E696C64616568;
      break;
    case 5:
      result = OUTLINED_FUNCTION_20_8();
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x74756F6C6C6163;
      break;
    case 8:
      result = 0x65746F6E746F6F66;
      break;
    case 9:
      result = 0x316E6F6974706163;
      break;
    case 10:
      result = 0x326E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704562EC()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27045632C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F72;
      break;
    case 2:
      result = 0x6669726573;
      break;
    case 3:
      result = 0x636170736F6E6F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704563E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456164();
  *a1 = result;
  return result;
}

uint64_t sub_270456410()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704561A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270456438@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270455D28(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270456488@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704562EC();
  *a1 = result;
  return result;
}

uint64_t sub_2704564B8()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_27045632C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270456540()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270456580(char a1)
{
  result = 0x67696C6172746C75;
  switch(a1)
  {
    case 1:
      result = 1852401780;
      break;
    case 2:
      result = 0x746867696CLL;
      break;
    case 3:
      result = 0x72616C75676572;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 0x646C6F62696D6573;
      break;
    case 6:
      result = 1684828002;
      break;
    case 7:
      result = 0x7976616568;
      break;
    case 8:
      result = 0x6B63616C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270456684()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2704566CC(char a1)
{
  if (a1)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t sub_270456700(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F43746867696CLL && a2 == 0xEA0000000000726FLL;
      if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F6C6F436B726164 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_5_30();
        OUTLINED_FUNCTION_26_8();
        if (a1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270456838(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C6F43746867696CLL;
      break;
    case 3:
      result = 0x6F6C6F436B726164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704568E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456540();
  *a1 = result;
  return result;
}

uint64_t sub_270456914()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_270456580(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_27045699C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2704557DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2704569EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270456684();
  *a1 = result;
  return result;
}

uint64_t sub_270456A1C()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704566CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270456AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270456700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270456AD4(uint64_t a1)
{
  v2 = sub_270457698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270456B10(uint64_t a1)
{
  v2 = sub_270457698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270456B4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DB8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270457698();
  sub_2705D8484();
  if (!v1)
  {
    sub_2704576EC();
    OUTLINED_FUNCTION_18();
    sub_2705D7FA4();
    if (v12)
    {
      sub_270455488();
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      v6 = OUTLINED_FUNCTION_13_16();
      v7(v6);
      v4 = v11;
    }

    else
    {
      sub_270457740();
      OUTLINED_FUNCTION_18();
      sub_2705D7FA4();
      v4 = sub_27045704C(v10);
      v8 = OUTLINED_FUNCTION_13_16();
      v9(v8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_270456D88(void *a1)
{
  v3 = sub_2705D5C34();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2DD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270457794();
  sub_2705D8484();
  if (!v1)
  {
    v14 = v5;
    v15 = v3;
    v11 = v16;
    v20 = 0;
    sub_2705D7F74();
    v19 = 1;
    sub_2705D7F74();
    v18 = 2;
    sub_2705D7F74();
    v17 = 3;
    sub_2705D7F24();
    (*(v11 + 104))(v14, *MEMORY[0x277CE0EE0], v15);
    v10 = sub_2705D5D94();
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_27045704C(char a1)
{
  switch(a1)
  {
    case 1:

      return sub_2705D5CB4();
    case 2:

      return sub_2705D5C54();
    case 3:

      return MEMORY[0x282133458]();
    case 4:

      return sub_2705D5CD4();
    case 5:

      return MEMORY[0x282133408]();
    case 6:

      return sub_2705D5C74();
    case 7:

      return MEMORY[0x282133478]();
    case 8:

      return MEMORY[0x282133490]();
    case 9:

      return MEMORY[0x282133428]();
    case 10:

      return sub_2705D5D14();
    case 11:

      return MEMORY[0x282133430]();
    case 12:

      return MEMORY[0x2821334A8]();
    case 13:

      return sub_2705D5C44();
    case 14:

      return MEMORY[0x282133438]();
    case 15:

      return sub_2705D5CF4();
    case 16:

      return sub_2705D5D34();
    case 17:

      return sub_2705D5D54();
    case 18:

      return sub_2705D5D84();
    case 19:
      if (qword_2807CE7A8 != -1)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    case 20:
      v2 = [objc_opt_self() quaternaryLabelColor];
      goto LABEL_61;
    case 21:
      v2 = [objc_opt_self() separatorColor];
      goto LABEL_61;
    case 22:
      v2 = [objc_opt_self() opaqueSeparatorColor];
LABEL_61:
      v3 = v2;

      result = sub_2705D5C14();
      break;
    default:
      if (qword_2807CE790 != -1)
      {
LABEL_66:
        swift_once();
      }

LABEL_65:

      break;
  }

  return result;
}

uint64_t sub_270457380(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_5_30();
        OUTLINED_FUNCTION_26_8();
        if (a1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270457498(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_14_21();
      break;
    case 3:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270457510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270457380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270457544(uint64_t a1)
{
  v2 = sub_270457794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270457580(uint64_t a1)
{
  v2 = sub_270457794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704575BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270456B4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704575EC()
{
  result = qword_2807D2DA8;
  if (!qword_2807D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DA8);
  }

  return result;
}

unint64_t sub_270457644()
{
  result = qword_2807D2DB0;
  if (!qword_2807D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DB0);
  }

  return result;
}

unint64_t sub_270457698()
{
  result = qword_2807D2DC0;
  if (!qword_2807D2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DC0);
  }

  return result;
}

unint64_t sub_2704576EC()
{
  result = qword_2807D2DC8;
  if (!qword_2807D2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DC8);
  }

  return result;
}

unint64_t sub_270457740()
{
  result = qword_2807D2DD0;
  if (!qword_2807D2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DD0);
  }

  return result;
}

unint64_t sub_270457794()
{
  result = qword_2807D2DE0;
  if (!qword_2807D2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DE0);
  }

  return result;
}

unint64_t sub_2704577E8()
{
  result = qword_2807D2DF0;
  if (!qword_2807D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DF0);
  }

  return result;
}

unint64_t sub_27045783C()
{
  result = qword_2807D2DF8;
  if (!qword_2807D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2DF8);
  }

  return result;
}

unint64_t sub_270457890()
{
  result = qword_2807D2E00;
  if (!qword_2807D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E00);
  }

  return result;
}

unint64_t sub_2704578E4()
{
  result = qword_2807D2E08;
  if (!qword_2807D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E08);
  }

  return result;
}

_BYTE *sub_270457948(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270457A14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270457A48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270457B14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270457B48(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270457C14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InlineMessageAppearance.ColorDecoder.ColorIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}