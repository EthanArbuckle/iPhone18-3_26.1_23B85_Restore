uint64_t sub_26C0E4F18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = xmmword_26C14A1B0;
  *(a2 + 16) = 0;
  sub_26C0D21F8(64);
  sub_26C0D1D1C(0xD000000000000016, 0x800000026C15AB40);
  if (("authenticator finished key" & 0x1000000000000000) != 0)
  {
    sub_26C148F6C();
  }

  v15 = 0;
  v16[3] = MEMORY[0x277D838B0];
  v16[4] = MEMORY[0x277CC9C18];
  v16[0] = &v15;
  v16[1] = v16;
  v5 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v8 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v2 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v2 >> 32;
  }

  else
  {
    v9 = BYTE6(v3);
  }

  if (v9 < v4)
  {
    __break(1u);
  }

  v10 = sub_26C14889C();
  v12 = v11;
  sub_26C0E1E48(v10, v11);
  result = sub_26C0BB9B0(v10, v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0E5094()
{
  sub_26C148E9C();
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C0E6678();
  return sub_26C148CFC();
}

uint64_t sub_26C0E5148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v25 = a5;
  v26 = a4;
  v23 = a2;
  v24 = a3;
  v22[1] = a1;
  v5 = sub_26C148E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148B6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_26C148BDC();
  v15 = *(v22[0] - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v22[0]);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C148B3C();
  sub_26C148B2C();
  (*(v6 + 8))(v9, v5);
  sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
  v19 = sub_26C148E7C();
  sub_26C137650(v23, v24, v19, v18);
  (*(v11 + 8))(v14, v10);
  v20 = sub_26C148E7C();
  sub_26C137650(0x726574726F707865, 0xE800000000000000, v20, v25);
  return (*(v15 + 8))(v18, v22[0]);
}

uint64_t sub_26C0E5438@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v47 = a2;
  v46 = a1;
  v49 = a3;
  v3 = sub_26C148E9C();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C148B6C();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v40 - v23;
  v25 = sub_26C148BDC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D3BA0(v48, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    sub_26C0CF55C(v20, v12, &qword_28047A968, &unk_26C14A810);
    (*(v26 + 16))(v24, &v12[*(v9 + 40)], v25);
    v31 = v12;
    v32 = &qword_28047A968;
    v33 = &unk_26C14A810;
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_26C0CF5C4(v20, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
      v34 = *(v26 + 56);
      v34(v24, 1, 1, v25);
LABEL_9:
      sub_26C0CF5C4(v24, &qword_28047A930, qword_26C14C120);
      return (v34)(v49, 1, 1, v25);
    }

    sub_26C0CF55C(v20, v16, &qword_28047A970, "DG");
    (*(v26 + 16))(v24, &v16[*(v13 + 56)], v25);
    v31 = v16;
    v32 = &qword_28047A970;
    v33 = "DG";
  }

  sub_26C0CF5C4(v31, v32, v33);
  v34 = *(v26 + 56);
  v34(v24, 0, 1, v25);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_9;
  }

  (*(v26 + 32))(v29, v24, v25);
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
  v36 = v41;
  v37 = v45;
  sub_26C148B3C();
  v38 = v40;
  sub_26C148B2C();
  (*(v44 + 8))(v36, v37);
  v39 = v49;
  sub_26C0E5148(v29, v46, v47, v38, v49);
  (*(v42 + 8))(v38, v43);
  (*(v26 + 8))(v29, v25);
  return (v34)(v39, 0, 1, v25);
}

uint64_t sub_26C0E59EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v29 = sub_26C148B6C();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C148E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v31 = xmmword_26C14A1B0;
  *&v31[16] = 0;
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
  result = sub_26C148B3C();
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v18 = 0;
    if (v17 == 2)
    {
      v18 = *(a1 + 24);
    }
  }

  else if (v17)
  {
    v18 = a1 >> 32;
  }

  else
  {
    v18 = BYTE6(a2);
  }

  if (v18 < a3)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_26C14889C();
    v21 = v20;
    sub_26C11E5B4(v19, v20);
    sub_26C0BB9B0(v19, v21);
    v22 = sub_26C148B2C();
    MEMORY[0x28223BE20](v22);
    *(&v28 - 2) = v31;
    sub_26C0E6794(&qword_28047A9D0, MEMORY[0x277CC52C8]);
    v23 = v29;
    sub_26C14880C();
    (*(v7 + 8))(v10, v23);
    (*(v12 + 8))(v15, v11);
    v24 = *v31;
    v25 = v30;
    *v30 = *v31;
    v26 = *&v31[8];
    *(v25 + 1) = *&v31[8];
    v27 = v26;
    sub_26C0BBAA4(v24, v26);
    return sub_26C0BB9B0(v24, v27);
  }

  return result;
}

uint64_t sub_26C0E5D30(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26C0E5DE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26C0E5DE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C0E5F18(v11, 0, 0, 1, a1, a2);
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
    sub_26C0E67DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_26C0E5EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26C0E5F18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26C0E6024(a5, a6);
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
    result = sub_26C1490AC();
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

uint64_t sub_26C0E6024(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C0E6070(a1, a2);
  sub_26C0C6548(&unk_287CC9940);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26C0E6070(uint64_t a1, unint64_t a2)
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

  v6 = sub_26C148520(v5, 0);
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

  result = sub_26C1490AC();
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
        v10 = sub_26C148F6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C148520(v10, 0);
        result = sub_26C14907C();
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

uint64_t sub_26C0E61A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0E6208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0E6284(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_26C0E63BC(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0E63BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26C1487BC();
  v7 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26C1487DC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_26C0E6464(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26C0BBAA4(a3, a4);
          return sub_26C0BE27C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26C0E65F4()
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26C0E6678()
{
  result = qword_28047AB30;
  if (!qword_28047AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB30);
  }

  return result;
}

unint64_t sub_26C0E66CC()
{
  result = qword_28047AB40;
  if (!qword_28047AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AB18, &unk_26C14C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB40);
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

uint64_t sub_26C0E6794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C0E67DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C0E6848()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AB48);
  __swift_project_value_buffer(v0, qword_28047AB48);
  return sub_26C148A8C();
}

uint64_t PAKEClientConfiguration.context.getter()
{
  v1 = *(v0 + 8);
  sub_26C0BBAA4(v1, *(v0 + 16));
  return v1;
}

uint64_t PAKEClientConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  sub_26C0BBAA4(v1, *(v0 + 32));
  return v1;
}

uint64_t PAKEClientConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  sub_26C0BBAA4(v1, *(v0 + 48));
  return v1;
}

uint64_t PAKEClientConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  sub_26C0BBAA4(v1, *(v0 + 64));
  return v1;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD000000000000020, 0x800000026C15AB60);
  v8 = PAKEScheme.description.getter();
  MEMORY[0x26D69BC90](v8);

  MEMORY[0x26D69BC90](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v9 = sub_26C14883C();
  MEMORY[0x26D69BC90](v9);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15AB90);
  v10 = sub_26C14883C();
  MEMORY[0x26D69BC90](v10);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15ABB0);
  v11 = sub_26C14883C();
  MEMORY[0x26D69BC90](v11);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

uint64_t _s8SwiftTLS23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a1;
  if (v17 == 32150 || v17 == 0xFFFF)
  {
    *a9 = v17;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 0;
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a4, a5);
    return sub_26C0BBAA4(a6, a7);
  }

  else
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a4, a5);
    sub_26C0BBAA4(a6, a7);
    sub_26C14908C();

    v19 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v19);

    *a11 = 0xD000000000000018;
    *(a11 + 8) = 0x800000026C15ABD0;
    *(a11 + 16) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v22 = v17;
    v23 = v40;
    v24 = v41;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = a10;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = 0;
    return sub_26C0E6E80(&v22);
  }
}

void sub_26C0E6EB0()
{
  v1 = *(v0 + 88);
  v15[0] = *(v0 + 72);
  v15[1] = v1;
  v15[2] = *(v0 + 104);
  v16 = *(v0 + 120);
  if (qword_28047A730 != -1)
  {
    swift_once();
  }

  v2 = qword_280480370;
  os_unfair_lock_lock((qword_280480370 + 16));
  v3 = *(v2 + 24);
  if (*(v3 + 16) && (v4 = sub_26C0D84BC(v15), (v5 & 1) != 0) && (v6 = *(*(v3 + 56) + 4 * v4)) != 0)
  {
    v7 = v6 - 1;
    v8 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 24);
    sub_26C0D8CCC(v7, v15, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v14;

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    os_unfair_lock_unlock((v2 + 16));
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047AB48);
    oslog = sub_26C148A7C();
    v11 = sub_26C14900C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C0B5000, oslog, v11, "client claiming PAKE attempt failed", v12, 2u);
      MEMORY[0x26D69C3A0](v12, -1, -1);
    }
  }
}

uint64_t PAKEClientConfiguration.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v9 = *v0;
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t PAKEClientConfiguration.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v9 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7280()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v9 = *v0;
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t sub_26C0E7370()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v9 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t PAKEServerRecord.context.getter()
{
  v1 = *(v0 + 8);
  sub_26C0BBAA4(v1, *(v0 + 16));
  return v1;
}

uint64_t PAKEServerRecord.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PAKEServerRecord.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  sub_26C0BBAA4(v1, *(v0 + 32));
  return v1;
}

uint64_t PAKEServerRecord.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PAKEServerRecord.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  sub_26C0BBAA4(v1, *(v0 + 48));
  return v1;
}

uint64_t PAKEServerRecord.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PAKEServerRecord.serverPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  sub_26C0BBAA4(v1, *(v0 + 64));
  return v1;
}

uint64_t PAKEServerRecord.serverPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PAKEServerRecord.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD000000000000019, 0x800000026C15ABF0);
  v8 = PAKEScheme.description.getter();
  MEMORY[0x26D69BC90](v8);

  MEMORY[0x26D69BC90](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v9 = sub_26C14883C();
  MEMORY[0x26D69BC90](v9);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15ABB0);
  v10 = sub_26C14883C();
  MEMORY[0x26D69BC90](v10);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15AB90);
  v11 = sub_26C14883C();
  MEMORY[0x26D69BC90](v11);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

uint64_t _s8SwiftTLS16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v18 = *a1;
  if (v18 == 32150 || v18 == 0xFFFF)
  {
    *a9 = v18;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 1;
    *(a9 + 121) = a11 & 1;
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a6, a7);
    return sub_26C0BBAA4(a4, a5);
  }

  else
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a6, a7);
    sub_26C0BBAA4(a4, a5);
    sub_26C14908C();

    v20 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v20);

    *a12 = 0xD000000000000018;
    *(a12 + 8) = 0x800000026C15ABD0;
    *(a12 + 16) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v23 = v18;
    v24 = v42;
    v25 = v43;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v31 = a7;
    v32 = a8;
    v33 = a10;
    v34 = a2;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = 1;
    v41 = a11 & 1;
    return sub_26C0ECD08(&v23);
  }
}

uint64_t PAKEServerRecord.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v18 = *(v0 + 121);
  v9 = *v0;
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t PAKEServerRecord.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v8 = *(v0 + 7);
  v7 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v18 = *(v0 + 121);
  v9 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7C68()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v18 = *(v0 + 121);
  v9 = *v0;
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t sub_26C0E7D64()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v8 = *(v0 + 7);
  v7 = *(v0 + 8);
  v11 = *(v0 + 10);
  v12 = *(v0 + 9);
  v13 = *(v0 + 12);
  v14 = *(v0 + 11);
  v15 = *(v0 + 14);
  v16 = *(v0 + 13);
  v17 = *(v0 + 120);
  v18 = *(v0 + 121);
  v9 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7E80()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7F00()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C1491DC();
  sub_26C1488BC();

  return sub_26C1488BC();
}

uint64_t sub_26C0E7F70()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7FEC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((sub_26C0E6464(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return sub_26C0E6464(v2, v3, v4, v5);
}

double sub_26C0E806C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v80[0] = *a1;
  v80[1] = v7;
  v80[2] = v10;
  v80[3] = v9;
  v80[4] = v11;
  v80[5] = v12;
  v80[6] = v13;
  sub_26C0E8500(v80, a2, &v78, v81);
  if (v4)
  {
    v14 = v79;
    result = *&v78;
    *a3 = v78;
    *(a3 + 16) = v14;
    return result;
  }

  v74 = v81[6];
  v75 = v81[7];
  v76 = v81[8];
  v77 = v81[9];
  v70 = v81[2];
  v71 = v81[3];
  v72 = v81[4];
  v73 = v81[5];
  v68 = v81[0];
  v69 = v81[1];
  if (!*(v13 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v65 = *(v13 + 32);
  v16 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v8 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v8 >> 32;
  }

  else
  {
    v17 = BYTE6(v7);
  }

  if (v17 < v10)
  {
    goto LABEL_30;
  }

  v82 = a4;
  a4 = 0;
  v8 = sub_26C14889C();
  v19 = v18;
  v20 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v9 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v9 >> 32;
  }

  else
  {
    v21 = BYTE6(v11);
  }

  if (v21 < v12)
  {
    goto LABEL_31;
  }

  v22 = sub_26C14889C();
  v24 = v23;
  sub_26C0E8AA8(&v65, v8, v19, v22, v23, &v64, v66);
  sub_26C0BB9B0(v22, v24);
  sub_26C0BB9B0(v8, v19);
  v58 = v66[2];
  v59 = v66[3];
  *(v62 + 10) = *(v67 + 10);
  v61 = v66[5];
  v62[0] = v67[0];
  v60 = v66[4];
  v56 = v66[0];
  v57 = v66[1];
  LOWORD(v8) = *(v13 + 32);
  v11 = *(v13 + 40);
  v9 = *(v13 + 48);
  a4 = *(v13 + 56);
  v63[6] = v74;
  v63[7] = v75;
  v63[8] = v76;
  v63[9] = v77;
  v63[4] = v72;
  v63[5] = v73;
  v63[0] = v68;
  v63[1] = v69;
  v63[2] = v70;
  v63[3] = v71;
  v25 = sub_26C0ED420(v63);
  sub_26C0BBAA4(v11, v9);
  if (v25 == 1)
  {
    if (qword_28047A748 == -1)
    {
LABEL_22:
      v26 = sub_26C148A9C();
      __swift_project_value_buffer(v26, qword_28047AB48);
      v27 = sub_26C148A7C();
      v28 = sub_26C14900C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_26C0B5000, v27, v28, "Yielding dummy PAKE record", v29, 2u);
        MEMORY[0x26D69C3A0](v29, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_22;
  }

LABEL_25:
  v55[6] = v74;
  v55[7] = v75;
  v55[8] = v76;
  v55[9] = v77;
  v55[2] = v70;
  v55[3] = v71;
  v55[4] = v72;
  v55[5] = v73;
  v55[0] = v68;
  v55[1] = v69;
  if (sub_26C0ED420(v55) == 1)
  {
    v52 = v60;
    v53 = v61;
    *v54 = v62[0];
    *&v54[10] = *(v62 + 10);
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
  }

  else
  {
    sub_26C0BB9B0(v11, v9);
    sub_26C0ECD08(&v56);
    v52 = v72;
    v53 = v73;
    *v54 = v74;
    *&v54[16] = v75;
    v48 = v68;
    v49 = v69;
    v50 = v70;
    v51 = v71;
    LOWORD(v8) = v76;
    v47 = WORD3(v76);
    v46 = *(&v76 + 2);
    v11 = *(&v76 + 1);
    a4 = *(&v77 + 1);
    v9 = v77;
  }

  v40 = v52;
  v41 = v53;
  v42 = *v54;
  v43 = *&v54[16];
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  LOWORD(v44) = v8;
  WORD3(v44) = v47;
  *(&v44 + 2) = v46;
  *(&v44 + 1) = v11;
  *&v45 = v9;
  *(&v45 + 1) = a4;
  nullsub_1(&v36);
  v30 = v43;
  v31 = v82;
  v82[6] = v42;
  v31[7] = v30;
  v32 = v45;
  v31[8] = v44;
  v31[9] = v32;
  v33 = v39;
  v31[2] = v38;
  v31[3] = v33;
  v34 = v41;
  v31[4] = v40;
  v31[5] = v34;
  result = *&v36;
  v35 = v37;
  *v31 = v36;
  v31[1] = v35;
  return result;
}

void sub_26C0E8500(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  v60 = a1[6];
  v59 = *(v60 + 16);
  if (!v59)
  {
LABEL_27:
    sub_26C0ED46C(&v70);
LABEL_28:
    v36 = *&v76[16];
    a4[6] = *v76;
    a4[7] = v36;
    v37 = v78;
    a4[8] = v77;
    a4[9] = v37;
    v38 = v73;
    a4[2] = v72;
    a4[3] = v38;
    v39 = v75;
    a4[4] = v74;
    a4[5] = v39;
    v40 = v71;
    *a4 = v70;
    a4[1] = v40;
    return;
  }

  v5 = 0;
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = v7 >> 62;
  v62 = a1[3];
  v10 = BYTE6(v7);
  v11 = a1[1];
  v12 = v11 >> 62;
  v61 = *a1;
  v55 = *a1 >> 32;
  v56 = BYTE6(v11);
  v57 = v10;
  v13 = (v60 + 56);
  while (1)
  {
    if (v5 >= *(v60 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v14 = *(v62 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v57;
      if (v9)
      {
        v14 = v62 >> 32;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_44;
    }

    v82 = *(v13 - 12);
    v58 = *v13;
    v63 = *(v13 - 2);
    v64 = *(v13 - 1);
    sub_26C0BBAA4(v63, v64);
    v15 = sub_26C14889C();
    v17 = v16;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v18 = *(v61 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v56;
      if (v12)
      {
        v18 = v55;
      }
    }

    if (v18 < v6)
    {
      goto LABEL_45;
    }

    v19 = sub_26C14889C();
    LOWORD(v81[0]) = v82;
    v81[1] = v15;
    v81[2] = v17;
    v81[3] = v19;
    v81[4] = v20;
    if (*(a2 + 16))
    {
      v21 = sub_26C0D8418(v81);
      if (v22)
      {
        break;
      }
    }

    ++v5;
    sub_26C0ED43C(v81);
    sub_26C0BB9B0(v63, v64);
    v13 += 4;
    if (v59 == v5)
    {
      goto LABEL_27;
    }
  }

  v23 = (*(a2 + 56) + (v21 << 7));
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v67 = v23[2];
  v68 = v24;
  v65 = v26;
  v66 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *&v69[42] = *(v23 + 106);
  *&v69[16] = v28;
  *&v69[32] = v27;
  *v69 = v29;
  sub_26C0DA570(&v65, &v70);
  if (qword_28047A730 == -1)
  {
    goto LABEL_22;
  }

LABEL_46:
  swift_once();
LABEL_22:
  v30 = qword_280480370;
  v79[0] = *&v69[8];
  v79[1] = *&v69[24];
  v79[2] = *&v69[40];
  v80 = v69[56];
  if (sub_26C0D8170(v79, 32))
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v31 = sub_26C148A9C();
    __swift_project_value_buffer(v31, qword_28047AB48);
    v32 = sub_26C148A7C();
    v33 = sub_26C148FFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "new server credential added to PAKE Limiter";
LABEL_33:
      _os_log_impl(&dword_26C0B5000, v32, v33, v35, v34, 2u);
      MEMORY[0x26D69C3A0](v34, -1, -1);
    }
  }

  else
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v41 = sub_26C148A9C();
    __swift_project_value_buffer(v41, qword_28047AB48);
    v32 = sub_26C148A7C();
    v33 = sub_26C148FFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "server credential already tracked by PAKE Limiter";
      goto LABEL_33;
    }
  }

  os_unfair_lock_lock((v30 + 16));
  v42 = *(v30 + 24);
  if (*(v42 + 16))
  {
    v43 = sub_26C0D84BC(v79);
    if (v44)
    {
      v45 = *(*(v42 + 56) + 4 * v43);
      if (v45)
      {
        v46 = v45 - 1;
        v47 = *(v30 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = *(v30 + 24);
        sub_26C0D8CCC(v46, v79, isUniquelyReferenced_nonNull_native);
        *(v30 + 24) = v70;
        os_unfair_lock_unlock((v30 + 16));
        sub_26C0ED43C(v81);
        v74 = *v69;
        v75 = *&v69[16];
        *v76 = *&v69[32];
        *&v76[10] = *&v69[42];
        v70 = v65;
        v71 = v66;
        v72 = v67;
        v73 = v68;
        LOWORD(v77) = v82;
        *(&v77 + 1) = v63;
        *&v78 = v64;
        *(&v78 + 1) = v58;
        nullsub_1(&v70);
        goto LABEL_28;
      }
    }
  }

  os_unfair_lock_unlock((v30 + 16));
  if (qword_28047A748 != -1)
  {
    swift_once();
  }

  v49 = sub_26C148A9C();
  __swift_project_value_buffer(v49, qword_28047AB48);
  v50 = sub_26C148A7C();
  v51 = sub_26C14900C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_26C0B5000, v50, v51, "PAKE credential exhausted", v52, 2u);
    MEMORY[0x26D69C3A0](v52, -1, -1);
  }

  *a3 = xmmword_26C14C1B0;
  *(a3 + 16) = 2;
  v70 = xmmword_26C14C1B0;
  LOBYTE(v71) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0ECD08(&v65);
  sub_26C0BB9B0(v63, v64);
  sub_26C0ED43C(v81);
}

uint64_t sub_26C0E8AA8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _WORD *a7@<X8>)
{
  v87 = a4;
  v85 = a3;
  v84 = a2;
  v83 = a7;
  v10 = sub_26C148D1C();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_26C148D4C();
  v89 = *(v90 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C148BFC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_26C148BDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if (v24 != 0xFFFF && v24 != 32150)
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_26C14908C();

    v96 = 0xD000000000000018;
    v97 = 0x800000026C15ABD0;
    LOWORD(v93) = v24;
    v55 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v55);

    v56 = v96;
    v57 = v97;
    *a6 = v96;
    *(a6 + 8) = v57;
    *(a6 + 16) = 1;
    v96 = v56;
    v97 = v57;
    LOBYTE(v98) = 1;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v80 = v24;
  v81 = a5;
  v82 = a6;
  sub_26C148BEC();
  sub_26C148BBC();
  v25 = v88;
  sub_26C148B8C();
  v26 = *(v20 + 8);
  v26(v23, v19);
  v86 = v96;
  v88 = v97;
  sub_26C148BEC();
  sub_26C148BBC();
  sub_26C148B8C();
  v26(v23, v19);
  v28 = v96;
  v27 = v97;
  sub_26C148D3C();
  sub_26C148D2C();
  v29 = (*(v89 + 8))(v16, v90);
  v30 = MEMORY[0x26D69BA40](v29);
  v32 = v31;
  (*(v91 + 8))(v13, v92);
  v93 = v28;
  v94 = v27;
  v99 = MEMORY[0x277CC9318];
  v100 = MEMORY[0x277CC9300];
  v96 = v30;
  v97 = v32;
  v33 = __swift_project_boxed_opaque_existential_1(&v96, MEMORY[0x277CC9318]);
  v34 = *v33;
  v35 = v33[1];
  v92 = v27;
  sub_26C0BBAA4(v28, v27);
  sub_26C0BBAA4(v30, v32);
  sub_26C135114(v34, v35);
  v91 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(&v96);
  v37 = v93;
  v38 = v94;
  v39 = v94 >> 62;
  if ((v94 >> 62) > 1)
  {
    if (v39 != 2)
    {
      goto LABEL_16;
    }

    v41 = *(v93 + 16);
    v40 = *(v93 + 24);
    v42 = __OFSUB__(v40, v41);
    v43 = v40 - v41;
    if (!v42)
    {
      if (v43 == 97)
      {
        goto LABEL_10;
      }

LABEL_16:
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_26C14908C();
      result = MEMORY[0x26D69BC90](0xD000000000000034, 0x800000026C15AC40);
      if (v39 > 1)
      {
        v58 = v37;
        v59 = 0;
        if (v39 != 2)
        {
          goto LABEL_25;
        }

        v61 = *(v37 + 16);
        v60 = *(v37 + 24);
        v42 = __OFSUB__(v60, v61);
        v59 = v60 - v61;
        if (!v42)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v39)
      {
        v58 = v37;
        v59 = BYTE6(v38);
LABEL_25:
        v93 = v59;
        v62 = sub_26C14911C();
        MEMORY[0x26D69BC90](v62);

        MEMORY[0x26D69BC90](540877088, 0xE400000000000000);
        v93 = 97;
        v63 = sub_26C14911C();
        MEMORY[0x26D69BC90](v63);

        v64 = v96;
        v65 = v97;
        v66 = v82;
        *v82 = v96;
        v66[1] = v65;
        *(v66 + 16) = 1;
        v96 = v64;
        v97 = v65;
        LOBYTE(v98) = 1;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v58, v38);
        sub_26C0BB9B0(v86, v88);
        sub_26C0BB9B0(v30, v32);
        return sub_26C0BB9B0(v28, v92);
      }

      LODWORD(v59) = HIDWORD(v37) - v37;
      if (!__OFSUB__(HIDWORD(v37), v37))
      {
        v58 = v37;
        v59 = v59;
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v39)
  {
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      if (HIDWORD(v93) - v93 == 97)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (BYTE6(v94) != 97)
  {
    goto LABEL_16;
  }

LABEL_10:
  v79 = v93;
  v89 = v94;
  v90 = v28;
  v44 = v80;
  if (v80 == 32150 || v80 == 0xFFFF)
  {
    v45 = v87;
    v46 = v80;
    v47 = v81;
    sub_26C0BBAA4(v87, v81);
    v48 = v84;
    v49 = v85;
    sub_26C0BBAA4(v84, v85);
    sub_26C0BBAA4(v48, v49);
    sub_26C0BBAA4(v45, v47);
    v50 = v86;
    v51 = v88;
    sub_26C0BBAA4(v86, v88);
    sub_26C0BB9B0(v30, v32);
    result = sub_26C0BB9B0(v90, v92);
    v52 = v83;
    *v83 = v46;
    *(v52 + 1) = v50;
    *(v52 + 2) = v51;
    *(v52 + 3) = v48;
    *(v52 + 4) = v49;
    *&v53 = v79;
    *(&v53 + 1) = v89;
    *(v52 + 5) = v45;
    *(v52 + 6) = v47;
    *&v54 = v50;
    *(&v54 + 1) = v51;
    *(v52 + 36) = v54;
    *(v52 + 28) = v53;
    *(v52 + 11) = v48;
    *(v52 + 12) = v49;
    *(v52 + 13) = v45;
    *(v52 + 14) = v47;
    v52[60] = 257;
  }

  else
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    v67 = v87;
    v68 = v81;
    sub_26C0BBAA4(v87, v81);
    v69 = v84;
    v70 = v85;
    sub_26C0BBAA4(v84, v85);
    sub_26C0BBAA4(v69, v70);
    sub_26C0BBAA4(v67, v68);
    v71 = v86;
    sub_26C0BBAA4(v86, v88);
    sub_26C14908C();

    v96 = 0xD000000000000018;
    v97 = 0x800000026C15ABD0;
    LOWORD(v93) = v44;
    v72 = PAKEScheme.description.getter();
    v73 = v44;
    MEMORY[0x26D69BC90](v72);

    v74 = v96;
    v75 = v97;
    v93 = v96;
    v94 = v97;
    v95 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v30, v32);
    sub_26C0BB9B0(v90, v92);
    LOWORD(v96) = v73;
    *(&v96 + 2) = v110;
    HIWORD(v96) = v111;
    v97 = v71;
    v98 = v88;
    v99 = v69;
    v100 = v70;
    *&v76 = v79;
    *(&v76 + 1) = v89;
    v101 = v87;
    v102 = v68;
    *&v77 = v71;
    *(&v77 + 1) = v88;
    v103 = v76;
    v104 = v77;
    v105 = v69;
    v106 = v70;
    v107 = v87;
    v108 = v68;
    v109 = 257;
    result = sub_26C0ECD08(&v96);
    v78 = v82;
    *v82 = v74;
    v78[1] = v75;
    *(v78 + 16) = 1;
  }

  return result;
}

uint64_t sub_26C0E9394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_26C13ECD0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_26C13ED88(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_26C13EE04(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t PAKEClientState.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 105);
  v5 = *(v16 + 9);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_26C0ECD38(v11, &v10);
}

__n128 PAKEClientState.configuration.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v11[0] = v1[6];
  *(v11 + 9) = *(v1 + 105);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  sub_26C0E6E80(v10);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  *(v1 + 105) = *(a1 + 105);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v9;
  return result;
}

uint64_t PAKEClientState.prover.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = sub_26C148A1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEClientState.prover.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = sub_26C148A1C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _s8SwiftTLS15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v85 = sub_26C1489BC();
  v67 = *(v85 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v85);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148A1C();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  *&v68 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[5];
  v82 = a1[4];
  v83 = v13;
  v84[0] = a1[6];
  *(v84 + 9) = *(a1 + 105);
  v14 = a1[1];
  v78 = *a1;
  v79 = v14;
  v15 = a1[3];
  v80 = a1[2];
  v81 = v15;
  v65 = type metadata accessor for PAKEClientState(0);
  v16 = *(v65 + 20);
  v17 = sub_26C148BDC();
  result = (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  v19 = a1[5];
  a3[4] = a1[4];
  a3[5] = v19;
  a3[6] = a1[6];
  *(a3 + 105) = *(a1 + 105);
  v20 = a1[1];
  *a3 = *a1;
  a3[1] = v20;
  v21 = a1[3];
  a3[2] = a1[2];
  a3[3] = v21;
  v22 = v78;
  if (v78 != 0xFFFF && v78 != 32150)
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_26C0ECD38(&v78, &v69);
    sub_26C14908C();

    *&v69 = 0xD000000000000018;
    *(&v69 + 1) = 0x800000026C15ABD0;
    LOWORD(v76) = v22;
    v32 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v32);

    v33 = v69;
    *a2 = v69;
    *(a2 + 16) = 1;
    v69 = v33;
    LOBYTE(v70) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0E6E80(&v78);
LABEL_30:
    v49 = a3[5];
    v73 = a3[4];
    v74 = v49;
    v75[0] = a3[6];
    *(v75 + 9) = *(a3 + 105);
    v50 = a3[1];
    v69 = *a3;
    v70 = v50;
    v51 = a3[3];
    v71 = a3[2];
    v72 = v51;
    sub_26C0E6E80(&v69);
    return sub_26C0CF5C4(a3 + v16, &qword_28047A930, qword_26C14C120);
  }

  v64 = v3;
  v24 = *(&v81 + 1);
  v23 = BYTE6(v82);
  v25 = v82 >> 62;
  if ((v82 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_16;
    }

    v27 = *(*(&v81 + 1) + 16);
    v26 = *(*(&v81 + 1) + 24);
    v28 = __OFSUB__(v26, v27);
    v29 = v26 - v27;
    if (v28)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v29 != 64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v25)
    {
      if (BYTE6(v82) != 64)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v81), DWORD2(v81)))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (HIDWORD(v81) - DWORD2(v81) != 64)
    {
LABEL_16:
      *a2 = 0xD000000000000020;
      *(a2 + 8) = 0x800000026C15AC10;
      *(a2 + 16) = 1;
      *&v69 = 0xD000000000000020;
      *(&v69 + 1) = 0x800000026C15AC10;
      LOBYTE(v70) = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      goto LABEL_30;
    }
  }

LABEL_10:
  v52 = v10;
  if (v25)
  {
    if (v25 == 2)
    {
      v31 = *(*(&v81 + 1) + 16);
      v30 = *(*(&v81 + 1) + 24);
    }

    else
    {
      v31 = SDWORD2(v81);
      v30 = *(&v81 + 1) >> 32;
    }
  }

  else
  {
    v31 = 0;
    v30 = BYTE6(v82);
  }

  if (v30 < v31 || v31 > 32)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_26C0ECD38(&v78, &v69);
  result = sub_26C14889C();
  v60 = result;
  v61 = v34;
  if (v25)
  {
    if (v25 == 2)
    {
      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
    }

    else
    {
      v36 = v24;
      v35 = v24 >> 32;
    }
  }

  else
  {
    v36 = 0;
    v35 = v23;
  }

  v63 = v9;
  v53 = v16;
  v54 = a2;
  if (v35 < 32 || v35 < v36)
  {
    goto LABEL_35;
  }

  v37 = sub_26C14889C();
  v39 = v38;
  v62 = v38;
  v41 = *(&v78 + 1);
  v40 = v79;
  v55 = v37;
  v56 = *(&v78 + 1);
  v42 = v81;
  v59 = *(&v79 + 1);
  v57 = *(&v80 + 1);
  v58 = v80;
  (*(v67 + 104))(v63, *MEMORY[0x277D02FC0], v85);
  v44 = v60;
  v43 = v61;
  sub_26C0BBAA4(v60, v61);
  sub_26C0BBAA4(v37, v39);
  sub_26C0BBAA4(v41, v40);
  sub_26C0BBAA4(v57, v42);
  sub_26C0BBAA4(v59, v58);
  v45 = v55;
  v46 = v68;
  v47 = v64;
  sub_26C1489DC();
  if (v47)
  {

    sub_26C0E6E80(&v78);
    v68 = xmmword_26C14A900;
    v69 = xmmword_26C14A900;
    LOBYTE(v70) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v44, v43);
    sub_26C0BB9B0(v45, v62);
    v16 = v53;
    v48 = v54;
    *v54 = v68;
    *(v48 + 16) = 2;
    goto LABEL_30;
  }

  sub_26C0E6E80(&v78);
  sub_26C0BB9B0(v44, v43);
  sub_26C0BB9B0(v45, v62);
  return (*(v66 + 32))(a3 + *(v65 + 24), v46, v52);
}

uint64_t sub_26C0E9D0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  if (qword_28047A730 != -1)
  {
    swift_once();
  }

  v7 = *(v2 + 88);
  v30[0] = *(v2 + 72);
  v30[1] = v7;
  v30[2] = *(v2 + 104);
  v31 = *(v2 + 120);
  if (sub_26C0D8170(v30, 32))
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v8 = sub_26C148A9C();
    __swift_project_value_buffer(v8, qword_28047AB48);
    v9 = sub_26C148A7C();
    v10 = sub_26C148FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "new client credential added to PAKE Limiter";
LABEL_12:
      _os_log_impl(&dword_26C0B5000, v9, v10, v12, v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v13 = sub_26C148A9C();
    __swift_project_value_buffer(v13, qword_28047AB48);
    v9 = sub_26C148A7C();
    v10 = sub_26C148FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "client credential already tracked by PAKE Limiter";
      goto LABEL_12;
    }
  }

  v14 = v5 + *(type metadata accessor for PAKEClientState(0) + 24);
  v15 = sub_26C148A0C();
  if (v3)
  {

    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a1 = xmmword_26C14A900;
    *(a1 + 16) = 2;
    return result;
  }

  v18 = v15;
  v19 = v16;
  v20 = 0;
  v21 = *(v5 + 24);
  v22 = *(v5 + 32);
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_21;
    }

    v20 = *(v21 + 16);
  }

  else
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v20 = v21;
  }

  sub_26C0BBAA4(v21, v22);
LABEL_21:
  v32 = v20;
  v24 = 0;
  v25 = *(v5 + 40);
  v26 = *(v5 + 48);
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v24 = *(v25 + 16);
      goto LABEL_26;
    }
  }

  else if (v27)
  {
    v24 = v25;
LABEL_26:
    sub_26C0BBAA4(*(v5 + 40), *(v5 + 48));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A918, &qword_26C14A7C0);
  result = swift_allocObject();
  v28 = 0;
  *(result + 16) = xmmword_26C14A550;
  v29 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v28 = *(v18 + 16);
    }
  }

  else if (v29)
  {
    v28 = v18;
  }

  *(result + 32) = *v5;
  *(result + 40) = v18;
  *(result + 48) = v19;
  *(result + 56) = v28;
  *a2 = v21;
  a2[1] = v22;
  a2[2] = v32;
  a2[3] = v25;
  a2[4] = v26;
  a2[5] = v24;
  a2[6] = result;
  return result;
}

void sub_26C0EA060(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v5 = v4;
  v9 = sub_26C1489CC();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C1489AC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v21 = (&v68 - v20);
  v22 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v26 == 97)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v22)
    {
      if (BYTE6(a2) != 97)
      {
        goto LABEL_13;
      }

LABEL_8:
      v70 = a4;
      if (v22)
      {
        if (v22 == 2)
        {
          v27 = *(a1 + 16);
        }

        else
        {
          v27 = a1;
        }

LABEL_26:
        v33 = v27 + 65;
        if (__OFADD__(v27, 65))
        {
          __break(1u);
        }

        else
        {
          v34 = v18;
          if (v22)
          {
            if (v22 == 2)
            {
              v35 = *(a1 + 16);
              v36 = *(a1 + 24);
            }

            else
            {
              v35 = a1;
              v36 = a1 >> 32;
            }
          }

          else
          {
            v35 = 0;
            v36 = BYTE6(a2);
          }

          if (v36 >= v35 && v33 >= v35)
          {
            v68 = v19;
            v69 = v34;
            v71 = sub_26C14889C();
            v72 = v37;
            if (!v22)
            {
              v39 = 0;
              v38 = BYTE6(a2);
LABEL_38:
              v22 = v5;
              if (v38 < v33)
              {
                goto LABEL_69;
              }

LABEL_41:
              if (v38 >= v39)
              {
                v5 = sub_26C14889C();
                a1 = v40;
                v41 = *(type metadata accessor for PAKEClientState(0) + 24);
                v42 = v74;
                v43 = sub_26C1489FC();
                v22 = v42;
                if (!v42)
                {
                  sub_26C0BB9B0(v43, v44);
                  sub_26C1489EC();
                  v59 = v68;
                  v58 = v69;
                  (*(v68 + 16))(v17, v21, v69);
                  sub_26C0ED3C8();
                  sub_26C148BAC();
                  sub_26C0BB9B0(v5, a1);
                  sub_26C0BB9B0(v71, v72);
                  (*(v59 + 8))(v21, v58);
                  return;
                }

                v78 = v42;
                MEMORY[0x26D69C260](v42);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB78, &qword_26C14CA58);
                v45 = swift_dynamicCast();
                v46 = v73;
                if (v45)
                {
                  v47 = (*(v73 + 88))(v12, v9);
                  if (v47 == *MEMORY[0x277D02FC8])
                  {

                    if (qword_28047A748 != -1)
                    {
                      swift_once();
                    }

                    v48 = sub_26C148A9C();
                    __swift_project_value_buffer(v48, qword_28047AB48);
                    v49 = sub_26C148A7C();
                    v50 = sub_26C14900C();
                    if (!os_log_type_enabled(v49, v50))
                    {
                      goto LABEL_55;
                    }

                    v51 = swift_slowAlloc();
                    *v51 = 0;
                    v52 = "SPAKE2 integrity issue";
                    goto LABEL_54;
                  }

                  if (v47 == *MEMORY[0x277D02FD0])
                  {

                    if (qword_28047A748 == -1)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_74;
                  }

                  (*(v46 + 8))(v12, v9);
                }

                a2 = a1;
                if (qword_28047A748 == -1)
                {
LABEL_63:
                  v60 = sub_26C148A9C();
                  __swift_project_value_buffer(v60, qword_28047AB48);
                  MEMORY[0x26D69C260](v22);
                  v61 = sub_26C148A7C();
                  v62 = sub_26C14900C();

                  v63 = v5;
                  if (os_log_type_enabled(v61, v62))
                  {
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    *v64 = 138412290;
                    MEMORY[0x26D69C260](v22);
                    v66 = _swift_stdlib_bridgeErrorToNSError();
                    *(v64 + 4) = v66;
                    *v65 = v66;
                    _os_log_impl(&dword_26C0B5000, v61, v62, "failed to process server PAKE message: %@", v64, 0xCu);
                    sub_26C0CF5C4(v65, &qword_28047A880, &qword_26C14A5B0);
                    MEMORY[0x26D69C3A0](v65, -1, -1);
                    MEMORY[0x26D69C3A0](v64, -1, -1);
                  }

                  v67 = v75;
                  *v75 = xmmword_26C14A570;
                  *(v67 + 16) = 2;
                  v76 = xmmword_26C14A570;
                  v77 = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v63, a2);
                  sub_26C0BB9B0(v71, v72);
                  v55 = v22;
                  goto LABEL_66;
                }

LABEL_72:
                swift_once();
                goto LABEL_63;
              }

              goto LABEL_69;
            }

            if (v22 == 2)
            {
              v39 = *(a1 + 16);
              v38 = *(a1 + 24);
              goto LABEL_38;
            }

            v22 = v5;
            v39 = a1;
            v38 = a1 >> 32;
            if (a1 >> 32 >= v33)
            {
              goto LABEL_41;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_24:
      v27 = v22;
      goto LABEL_26;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (HIDWORD(a1) - a1 == 97)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (qword_28047A748 != -1)
  {
    swift_once();
  }

  v28 = sub_26C148A9C();
  __swift_project_value_buffer(v28, qword_28047AB48);
  sub_26C0BBAA4(a1, a2);
  v21 = sub_26C148A7C();
  v29 = sub_26C14900C();
  if (!os_log_type_enabled(v21, v29))
  {
    sub_26C0BB9B0(a1, a2);
LABEL_60:

    v57 = v75;
    *v75 = xmmword_26C14A8E0;
    *(v57 + 16) = 2;
    v76 = xmmword_26C14A8E0;
    v77 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v18 = swift_slowAlloc();
  *v18 = 134218240;
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      v30 = 0;
      goto LABEL_59;
    }

    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    v25 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (!v25)
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v22)
  {
    v30 = BYTE6(a2);
LABEL_59:
    *(v18 + 4) = v30;
    v56 = v18;
    sub_26C0BB9B0(a1, a2);
    *(v56 + 12) = 2048;
    *(v56 + 14) = 97;
    _os_log_impl(&dword_26C0B5000, v21, v29, "Invalid server PAKE message size, got %ld, expected %ld", v56, 0x16u);
    MEMORY[0x26D69C3A0](v56, -1, -1);
    goto LABEL_60;
  }

  LODWORD(v30) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v30 = v30;
    goto LABEL_59;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_52:
  v53 = sub_26C148A9C();
  __swift_project_value_buffer(v53, qword_28047AB48);
  v49 = sub_26C148A7C();
  v50 = sub_26C14900C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "SPAKE2 invalid input length issue";
LABEL_54:
    _os_log_impl(&dword_26C0B5000, v49, v50, v52, v51, 2u);
    MEMORY[0x26D69C3A0](v51, -1, -1);
  }

LABEL_55:

  v54 = v75;
  *v75 = xmmword_26C14C1C0;
  *(v54 + 16) = 2;
  v76 = xmmword_26C14C1C0;
  v77 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB9B0(v5, a1);
  sub_26C0BB9B0(v71, v72);
  v55 = v78;
LABEL_66:
}

uint64_t sub_26C0EA90C(void *a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *v2;
  if (*a1 == v12)
  {
    result = a1[3];
    v14 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v10 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = v10 >> 32;
    }

    else
    {
      v15 = BYTE6(v11);
    }

    if (v15 < result)
    {
      __break(1u);
    }

    else
    {
      v38 = a1[1];
      v39 = a1[2];
      v40 = sub_26C14889C();
      v42 = v41;
      sub_26C0EA060(v40, v41, &v50, v9);
      result = sub_26C0BB9B0(v40, v42);
      if (v3)
      {
        v43 = v51;
        *a2 = v50;
        *(a2 + 16) = v43;
      }

      else
      {
        v44 = sub_26C148BDC();
        (*(*(v44 - 8) + 56))(v9, 0, 1, v44);
        v45 = type metadata accessor for PAKEClientState(0);
        return sub_26C0ECD90(v9, v2 + *(v45 + 20));
      }
    }
  }

  else
  {
    v47 = *a1;
    v52 = v12;
    v49 = a2;
    v17 = a1[4];
    v16 = a1[5];
    v18 = a1[6];
    v48 = a1[7];
    v20 = a1[8];
    v19 = a1[9];
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v21 = sub_26C148A9C();
    __swift_project_value_buffer(v21, qword_28047AB48);
    sub_26C0BBAA4(v10, v11);
    sub_26C0BB37C(v17, v16);
    v22 = v48;
    sub_26C0BB37C(v48, v20);
    v23 = v20;
    v24 = sub_26C148A7C();
    v25 = sub_26C14900C();
    v26 = v10;
    v27 = v25;
    sub_26C0BB9B0(v26, v11);
    sub_26C0BB344(v17, v16);
    sub_26C0BB344(v22, v23);
    v28 = v27;
    if (os_log_type_enabled(v24, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v50 = v30;
      *v29 = 136315394;
      v53 = v47;
      v31 = PAKEScheme.description.getter();
      v33 = sub_26C0E5DE8(v31, v32, &v50);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v53 = v52;
      v34 = PAKEScheme.description.getter();
      v36 = sub_26C0E5DE8(v34, v35, &v50);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_26C0B5000, v24, v28, "Server PAKE message scheme mismatch, got %s, expected %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69C3A0](v30, -1, -1);
      MEMORY[0x26D69C3A0](v29, -1, -1);
    }

    v37 = v49;
    *v49 = xmmword_26C14A8E0;
    *(v37 + 16) = 2;
    v50 = xmmword_26C14A8E0;
    v51 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t PAKEServerState.clientShare.getter()
{
  v1 = *v0;
  sub_26C0BB37C(*v0, *(v0 + 8));
  return v1;
}

uint64_t PAKEServerState.clientShare.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB344(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_26C0EADD4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_26C0ECD90(a1, v4);
}

uint64_t PAKEServerState.verifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = sub_26C148A6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEServerState.verifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = sub_26C148A6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26C0EAFA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26C1489BC();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  *&v73 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148A6C();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[5];
  v86 = a1[4];
  v87 = v12;
  v88[0] = a1[6];
  *(v88 + 10) = *(a1 + 106);
  v13 = a1[1];
  v82 = *a1;
  v83 = v13;
  v14 = a1[3];
  v84 = a1[2];
  v85 = v14;
  *a3 = xmmword_26C14A540;
  v15 = type metadata accessor for PAKEServerState(0);
  v16 = v15[5];
  v17 = sub_26C148BDC();
  v18 = *(*(v17 - 8) + 56);
  v89 = v16;
  result = v18(a3 + v16, 1, 1, v17);
  v20 = a3 + v15[6];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0xF000000000000000;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0;
  *(a3 + v15[7]) = 0;
  v21 = (a3 + v15[8]);
  v22 = a1[5];
  v21[4] = a1[4];
  v21[5] = v22;
  v21[6] = a1[6];
  *(v21 + 106) = *(a1 + 106);
  v23 = a1[1];
  *v21 = *a1;
  v21[1] = v23;
  v24 = a1[3];
  v21[2] = a1[2];
  v21[3] = v24;
  v25 = v82;
  if (v82 != 0xFFFF && v82 != 32150)
  {
    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_26C0DA570(&v82, &v75);
    sub_26C14908C();

    *&v75 = 0xD000000000000018;
    *(&v75 + 1) = 0x800000026C15ABD0;
    LOWORD(v74[0]) = v25;
    v33 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v33);

    v34 = v75;
    *a2 = v75;
    *(a2 + 16) = 1;
    v75 = v34;
    LOBYTE(v76) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0ECD08(&v82);
LABEL_36:
    sub_26C0BB344(*a3, *(a3 + 8));
    sub_26C0CF5C4(a3 + v89, &qword_28047A930, qword_26C14C120);
    v53 = *(v20 + 48);
    v74[2] = *(v20 + 32);
    v74[3] = v53;
    v74[4] = *(v20 + 64);
    v54 = *(v20 + 16);
    v74[0] = *v20;
    v74[1] = v54;
    sub_26C0CF5C4(v74, &qword_28047AB90, &qword_26C14CA68);
    v55 = v21[5];
    v79 = v21[4];
    v80 = v55;
    v81[0] = v21[6];
    *(v81 + 10) = *(v21 + 106);
    v56 = v21[1];
    v75 = *v21;
    v76 = v56;
    v57 = v21[3];
    v77 = v21[2];
    v78 = v57;
    return sub_26C0ECD08(&v75);
  }

  v68 = a2;
  v26 = *(&v85 + 1);
  v27 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v27 != 2)
    {
      goto LABEL_16;
    }

    v29 = *(*(&v85 + 1) + 16);
    v28 = *(*(&v85 + 1) + 24);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (v30)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v31 != 97)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v27)
    {
      if (BYTE6(v86) != 97)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v85), DWORD2(v85)))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    if (HIDWORD(v85) - DWORD2(v85) != 97)
    {
LABEL_16:
      v35 = v68;
      *v68 = 0xD000000000000020;
      v35[1] = 0x800000026C15AC80;
      *(v35 + 16) = 1;
      *&v75 = 0xD000000000000020;
      *(&v75 + 1) = 0x800000026C15AC80;
      LOBYTE(v76) = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      goto LABEL_36;
    }
  }

LABEL_10:
  v65 = v86;
  if (v27)
  {
    if (v27 == 2)
    {
      v32 = *(*(&v85 + 1) + 16);
    }

    else
    {
      v32 = SDWORD2(v85);
    }
  }

  else
  {
    v32 = 0;
  }

  v36 = v32 + 32;
  if (__OFADD__(v32, 32))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v27)
  {
    if (v27 == 2)
    {
      v38 = *(*(&v85 + 1) + 16);
      v37 = *(*(&v85 + 1) + 24);
    }

    else
    {
      v38 = SDWORD2(v85);
      v37 = *(&v85 + 1) >> 32;
    }
  }

  else
  {
    v38 = 0;
    v37 = BYTE6(v65);
  }

  if (v37 < v38 || v36 < v38)
  {
    goto LABEL_39;
  }

  sub_26C0DA570(&v82, &v75);
  v39 = v36;
  v40 = BYTE6(v65);
  result = sub_26C14889C();
  v63 = v41;
  if (v27)
  {
    if (v27 == 2)
    {
      v43 = *(v26 + 16);
      v42 = *(v26 + 24);
    }

    else
    {
      v43 = v26;
      v42 = v26 >> 32;
    }
  }

  else
  {
    v43 = 0;
    v42 = v40;
  }

  if (v42 < v39 || v42 < v43)
  {
    goto LABEL_40;
  }

  v61 = a3;
  v58[0] = v15;
  v64 = result;
  v44 = sub_26C14889C();
  v62 = v44;
  v65 = v45;
  v46 = *(&v82 + 1);
  v58[1] = *(&v82 + 1);
  v59 = v83;
  v47 = *(&v84 + 1);
  v48 = v85;
  v49 = *(&v83 + 1);
  v60 = v84;
  (*(v69 + 104))(v73, *MEMORY[0x277D02FC0], v70);
  sub_26C0BBAA4(v64, v63);
  sub_26C0BBAA4(v44, v65);
  sub_26C0BBAA4(v46, v59);
  sub_26C0BBAA4(v47, v48);
  sub_26C0BBAA4(v49, v60);
  v51 = v71;
  v50 = v72;
  sub_26C148A3C();
  if (v50)
  {

    sub_26C0ECD08(&v82);
    v73 = xmmword_26C14A900;
    v75 = xmmword_26C14A900;
    LOBYTE(v76) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v64, v63);
    sub_26C0BB9B0(v62, v65);
    v52 = v68;
    *v68 = v73;
    *(v52 + 16) = 2;
    a3 = v61;
    goto LABEL_36;
  }

  sub_26C0ECD08(&v82);
  sub_26C0BB9B0(v64, v63);
  sub_26C0BB9B0(v62, v65);
  return (*(v66 + 32))(v61 + *(v58[0] + 36), v51, v67);
}

id sub_26C0EB64C(uint64_t a1, id a2, uint64_t a3, _OWORD *a4)
{
  v64 = a4;
  v54 = a1;
  v57 = sub_26C1489CC();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C1489AC();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = *(type metadata accessor for PAKEServerState(0) + 36);
  v16 = sub_26C148A4C();
  if (v4)
  {
    v62 = v4;
    MEMORY[0x26D69C260](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB78, &qword_26C14CA58);
    v30 = v56;
    v29 = v57;
    if (swift_dynamicCast())
    {
      v31 = (*(v55 + 88))(v30, v29);
      if (v31 == *MEMORY[0x277D02FC8])
      {

        if (qword_28047A748 != -1)
        {
          swift_once();
        }

        v32 = sub_26C148A9C();
        __swift_project_value_buffer(v32, qword_28047AB48);
        v33 = sub_26C148A7C();
        v34 = sub_26C14900C();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_15;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "SPAKE2 integrity issue";
LABEL_14:
        _os_log_impl(&dword_26C0B5000, v33, v34, v36, v35, 2u);
        MEMORY[0x26D69C3A0](v35, -1, -1);
LABEL_15:

        v38 = v64;
        *v64 = xmmword_26C14C1C0;
        *(v38 + 16) = 2;
        v58 = xmmword_26C14C1C0;
        v59 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v39 = v62;
LABEL_22:

        return a2;
      }

      if (v31 == *MEMORY[0x277D02FD0])
      {

        if (qword_28047A748 != -1)
        {
          swift_once();
        }

        v37 = sub_26C148A9C();
        __swift_project_value_buffer(v37, qword_28047AB48);
        v33 = sub_26C148A7C();
        v34 = sub_26C14900C();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_15;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "encountered an invalid input length in SPAKE2+ while deriving shared key in PAKE server";
        goto LABEL_14;
      }

      (*(v55 + 8))(v30, v29);
    }

    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v40 = sub_26C148A9C();
    __swift_project_value_buffer(v40, qword_28047AB48);
    MEMORY[0x26D69C260](v4);
    v41 = sub_26C148A7C();
    v42 = sub_26C14900C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      MEMORY[0x26D69C260](v4);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&dword_26C0B5000, v41, v42, "error deriving shared key in PAKE server: %@", v43, 0xCu);
      sub_26C0CF5C4(v44, &qword_28047A880, &qword_26C14A5B0);
      MEMORY[0x26D69C3A0](v44, -1, -1);
      MEMORY[0x26D69C3A0](v43, -1, -1);
    }

    v46 = v64;
    *v64 = xmmword_26C14A570;
    *(v46 + 16) = 2;
    v58 = xmmword_26C14A570;
    v59 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v39 = v4;
    goto LABEL_22;
  }

  v18 = v16;
  v19 = v17;
  v51 = v12;
  v52 = v14;
  v50 = v8;
  v62 = sub_26C148A5C();
  v63 = v20;
  v60 = MEMORY[0x277CC9318];
  v61 = MEMORY[0x277CC9300];
  *&v58 = v18;
  *(&v58 + 1) = v19;
  v21 = v62;
  v22 = v19;
  v23 = v20;
  v24 = __swift_project_boxed_opaque_existential_1(&v58, MEMORY[0x277CC9318]);
  v25 = v18;
  v27 = *v24;
  v26 = v24[1];
  sub_26C0BBAA4(v21, v23);
  sub_26C0BBAA4(v25, v22);
  sub_26C135114(v27, v26);
  sub_26C0BB9B0(v21, v23);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  a2 = v62;
  v28 = v52;
  sub_26C148A2C();
  v48 = v53;
  v49 = v50;
  (*(v53 + 16))(v51, v28, v50);
  sub_26C0ED3C8();
  sub_26C148BAC();
  sub_26C0BB9B0(v25, v22);
  (*(v48 + 8))(v28, v49);
  return a2;
}

uint64_t sub_26C0EBCE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  result = a1[3];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v8 >> 32;
  }

  else
  {
    v12 = BYTE6(v9);
  }

  if (v12 < result)
  {
    __break(1u);
    return result;
  }

  v13 = *a1;
  v14 = sub_26C14889C();
  v16 = v15;
  v17 = sub_26C0EB64C(a3, v14, v15, &v42);
  v19 = v18;
  result = sub_26C0BB9B0(v14, v16);
  if (v4)
  {
    v20 = v43;
    *a2 = v42;
    *(a2 + 16) = v20;
    return result;
  }

  v47 = type metadata accessor for PAKEServerState(0);
  v21 = *(v47 + 20);
  sub_26C0CF5C4(v3 + v21, &qword_28047A930, qword_26C14C120);
  v22 = sub_26C148BDC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v3 + v21, a3, v22);
  (*(v23 + 56))(v3 + v21, 0, 1, v22);
  v24 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    v25 = 0;
    if (v24 == 2)
    {
      v25 = v17[2];
    }
  }

  else if (v24)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  v26 = v47;
  v27 = (v3 + *(v47 + 24));
  v28 = v27[3];
  v44 = v27[2];
  v45 = v28;
  v46 = v27[4];
  v29 = v27[1];
  v42 = *v27;
  v43 = v29;
  result = sub_26C0CF5C4(&v42, &qword_28047AB90, &qword_26C14CA68);
  *v27 = v13;
  *(v27 + 1) = v17;
  *(v27 + 2) = v19;
  *(v27 + 3) = v25;
  v27[2] = xmmword_26C14A540;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0;
  v27[4] = xmmword_26C14C1D0;
  if (v13 != 0xFFFF || v19 >> 60 == 15)
  {
    return result;
  }

  v30 = 0;
  v31 = v3 + *(v26 + 32);
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_26;
    }

    v30 = *(v32 + 16);
  }

  else
  {
    if (!v34)
    {
      goto LABEL_26;
    }

    v30 = v32;
  }

  sub_26C0BBAA4(v32, v33);
LABEL_26:
  v35 = *(v27 + 6);
  result = sub_26C0BB344(*(v27 + 4), *(v27 + 5));
  *(v27 + 4) = v32;
  *(v27 + 5) = v33;
  *(v27 + 6) = v30;
  if (*(v27 + 2) >> 60 != 15)
  {
    v36 = 0;
    v37 = v3 + *(v26 + 32);
    v38 = *(v37 + 40);
    v39 = *(v37 + 48);
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v36 = *(v38 + 16);
        goto LABEL_32;
      }
    }

    else if (v40)
    {
      v36 = v38;
LABEL_32:
      sub_26C0BBAA4(v38, v39);
    }

    v41 = *(v27 + 9);
    result = sub_26C0BB344(*(v27 + 7), *(v27 + 8));
    *(v27 + 7) = v38;
    *(v27 + 8) = v39;
    *(v27 + 9) = v36;
  }

  return result;
}

uint64_t static PAKEScheme.fromFeatureFlags()@<X0>(__int16 *a1@<X8>)
{
  v5[3] = &type metadata for SwiftTLSFeatureFlags;
  v5[4] = sub_26C0ECE20();
  v2 = sub_26C14897C();
  result = __swift_destroy_boxed_opaque_existential_1(v5);
  if (v2)
  {
    v4 = 32150;
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  return result;
}

void *sub_26C0EC038(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A980, &qword_26C14A828);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_26C0EC0B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26C0ECA2C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C14910C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      v7 = sub_26C148FCC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26C0EC1EC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26C0EC1EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_26C0EC918(v8);
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
        sub_26C0EC73C((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
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
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
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

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
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
      result = sub_26C0CDBF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26C0CDBF0((v29 > 1), v5 + 1, 1, v8);
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
        sub_26C0EC73C((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
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
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
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

    v26[1] = v27;
    *v26-- = v24;
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

uint64_t sub_26C0EC73C(unsigned __int16 *__dst, unsigned __int16 *__src, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  v11 = a3 - __src;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v7;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    --v5;
    v16 = v12;
    do
    {
      v17 = v5 + 1;
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      --v5;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void *sub_26C0EC92C(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s8SwiftTLS16PAKEServerRecordV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v30 = *(a1 + 8);
  v31 = *(a1 + 7);
  v28 = *(a1 + 10);
  v29 = *(a1 + 9);
  v24 = *(a1 + 12);
  v25 = *(a1 + 11);
  v20 = *(a1 + 14);
  v21 = *(a1 + 13);
  v17 = *(a1 + 120);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v11 = *(a2 + 8);
  v26 = *(a2 + 10);
  v27 = *(a2 + 9);
  v22 = *(a2 + 12);
  v23 = *(a2 + 11);
  v18 = *(a2 + 14);
  v19 = *(a2 + 13);
  v15 = *(a1 + 121);
  v16 = *(a2 + 120);
  v14 = *(a2 + 121);
  if ((sub_26C0E6464(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0 || (sub_26C0E6464(v2, v3, v6, v7) & 1) == 0 || (sub_26C0E6464(v4, v5, v8, v9) & 1) == 0 || (sub_26C0E6464(v31, v30, v10, v11) & 1) == 0 || (sub_26C0E6464(v29, v28, v27, v26) & 1) == 0 || (sub_26C0E6464(v25, v24, v23, v22) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_26C0E6464(v21, v20, v19, v18);
  result = 0;
  if ((v12 & 1) != 0 && ((v17 ^ v16) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

BOOL _s8SwiftTLS23PAKEClientConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v27 = *(a1 + 8);
  v28 = *(a1 + 7);
  v25 = *(a1 + 10);
  v26 = *(a1 + 9);
  v21 = *(a1 + 12);
  v22 = *(a1 + 11);
  v17 = *(a1 + 14);
  v18 = *(a1 + 13);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v11 = *(a2 + 8);
  v23 = *(a2 + 10);
  v24 = *(a2 + 9);
  v19 = *(a2 + 12);
  v20 = *(a2 + 11);
  v15 = *(a2 + 14);
  v16 = *(a2 + 13);
  v13 = *(a2 + 120);
  v14 = *(a1 + 120);
  return (sub_26C0E6464(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) != 0 && (sub_26C0E6464(v2, v3, v6, v7) & 1) != 0 && (sub_26C0E6464(v4, v5, v8, v9) & 1) != 0 && (sub_26C0E6464(v28, v27, v10, v11) & 1) != 0 && (sub_26C0E6464(v26, v25, v24, v23) & 1) != 0 && (sub_26C0E6464(v22, v21, v20, v19) & 1) != 0 && (sub_26C0E6464(v18, v17, v16, v15) & 1) != 0 && v14 == v13;
}

uint64_t sub_26C0ECD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26C0ECE20()
{
  result = qword_28047AB60;
  if (!qword_28047AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB60);
  }

  return result;
}

unint64_t sub_26C0ECE78()
{
  result = qword_28047AB68;
  if (!qword_28047AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB68);
  }

  return result;
}

unint64_t sub_26C0ECED0()
{
  result = qword_28047AB70;
  if (!qword_28047AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB70);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26C0ECF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0ECFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26C0ED044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 122))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0ED098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

void sub_26C0ED134()
{
  sub_26C0ED1C8();
  if (v0 <= 0x3F)
  {
    sub_26C148A1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26C0ED1C8()
{
  if (!qword_281590338)
  {
    sub_26C148BDC();
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_281590338);
    }
  }
}

void sub_26C0ED248()
{
  sub_26C0CFD5C(319, &qword_281592480);
  if (v0 <= 0x3F)
  {
    sub_26C0ED1C8();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281590350);
      if (v2 <= 0x3F)
      {
        sub_26C148A6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C0ED334(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C0ED37C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26C0ED3C8()
{
  result = qword_28047AB80;
  if (!qword_28047AB80)
  {
    sub_26C1489AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB80);
  }

  return result;
}

uint64_t sub_26C0ED420(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_26C0ED46C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

unint64_t sub_26C0ED490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
    v3 = sub_26C1490DC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      *&v26[128] = *(v4 + 128);
      *&v26[144] = v6;
      *&v26[160] = *(v4 + 160);
      v7 = *(v4 + 80);
      *&v26[64] = *(v4 + 64);
      *&v26[80] = v7;
      v8 = *(v4 + 112);
      *&v26[96] = *(v4 + 96);
      *&v26[112] = v8;
      v9 = *(v4 + 16);
      *v26 = *v4;
      *&v26[16] = v9;
      v10 = *(v4 + 48);
      *&v26[32] = *(v4 + 32);
      *&v26[48] = v10;
      *v27 = *v26;
      *&v27[8] = *&v26[8];
      *&v27[24] = *&v26[24];
      sub_26C0CF314(v26, v25, &qword_28047ABA0, &qword_26C14CA78);
      result = sub_26C0D8418(v27);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = *&v27[16];
      *v13 = *v27;
      *(v13 + 16) = v14;
      *(v13 + 32) = *&v27[32];
      v15 = (v3[7] + (result << 7));
      v16 = *&v26[104];
      v17 = *&v26[120];
      v18 = *&v26[136];
      *(v15 + 106) = *&v26[146];
      v15[5] = v17;
      v15[6] = v18;
      v15[4] = v16;
      v19 = *&v26[88];
      v20 = *&v26[72];
      v21 = *&v26[56];
      *v15 = *&v26[40];
      v15[1] = v21;
      v15[2] = v20;
      v15[3] = v19;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_11;
      }

      v3[2] = v24;
      if (!i)
      {

        return v3;
      }

      v4 += 168;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26C0ED644(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26C0EDAD4();
  result = MEMORY[0x26D69BD10](v2, &type metadata for PAKEScheme, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26C11D944(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26C0ED6B8(void *a1)
{
  v2 = sub_26C0ED490(MEMORY[0x277D84F90]);
  v3 = a1[2];
  if (!v3)
  {
LABEL_22:

    v49 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = 4;
  do
  {
    v7 = *&a1[v6 + 2];
    v62 = *&a1[v6];
    v63 = v7;
    v8 = *&a1[v6 + 6];
    v64 = *&a1[v6 + 4];
    v65 = v8;
    v9 = *&a1[v6 + 10];
    v66 = *&a1[v6 + 8];
    v67 = v9;
    v68[0] = *&a1[v6 + 12];
    *(v68 + 10) = *(&a1[v6 + 13] + 2);
    v10 = *(&v63 + 1);
    v12 = v64;
    v11 = v65;
    LOWORD(v69) = v62;
    *(&v69 + 1) = *(&v64 + 1);
    *&v70 = v65;
    *(&v70 + 1) = *(&v63 + 1);
    v71 = v64;
    sub_26C0DA570(&v62, v60);
    sub_26C0DA570(&v62, v60);
    sub_26C0BBAA4(*(&v12 + 1), v11);
    sub_26C0BBAA4(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v2;
    v14 = sub_26C0D8418(&v69);
    v16 = *(v2 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_26C14914C();
      __break(1u);

      __break(1u);
      return result;
    }

    v20 = v15;
    if (*(v2 + 24) < v19)
    {
      sub_26C0D8550(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_26C0D8418(&v69);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_30;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v35 = v14;
    sub_26C0DA120();
    v14 = v35;
    if (v20)
    {
LABEL_9:
      v2 = v59;
      v22 = (v59[7] + (v14 << 7));
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v60[2] = v22[2];
      v60[3] = v23;
      v60[0] = v25;
      v60[1] = v24;
      v27 = v22[5];
      v26 = v22[6];
      v28 = v22[4];
      *&v61[10] = *(v22 + 106);
      v60[5] = v27;
      *v61 = v26;
      v60[4] = v28;
      v29 = v62;
      v30 = v63;
      v31 = v65;
      v22[2] = v64;
      v22[3] = v31;
      *v22 = v29;
      v22[1] = v30;
      v32 = v66;
      v33 = v67;
      v34 = v68[0];
      *(v22 + 106) = *(v68 + 10);
      v22[5] = v33;
      v22[6] = v34;
      v22[4] = v32;
      sub_26C0ECD08(v60);
      sub_26C0ED43C(&v69);
      sub_26C0ECD08(&v62);
      if (v5 == v4)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    v2 = v59;
    v59[(v14 >> 6) + 8] |= 1 << v14;
    v36 = v59[6] + 40 * v14;
    v37 = v71;
    v38 = v70;
    *v36 = v69;
    *(v36 + 16) = v38;
    *(v36 + 32) = v37;
    v39 = (v59[7] + (v14 << 7));
    v40 = v66;
    v41 = v67;
    v42 = v68[0];
    *(v39 + 106) = *(v68 + 10);
    v39[5] = v41;
    v39[6] = v42;
    v39[4] = v40;
    v44 = v64;
    v43 = v65;
    v45 = v63;
    *v39 = v62;
    v39[1] = v45;
    v39[2] = v44;
    v39[3] = v43;
    sub_26C0ECD08(&v62);
    v46 = v59[2];
    v18 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v18)
    {
      goto LABEL_29;
    }

    v59[2] = v47;
    if (v5 == v4)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v4;
    v6 += 16;
  }

  while (v4 < a1[2]);
  __break(1u);
LABEL_16:
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_22;
  }

  *&v62 = MEMORY[0x277D84F90];
  sub_26C0CEB5C(0, v48, 0);
  v49 = v62;
  v50 = *(v62 + 16);
  v51 = 4;
  do
  {
    v52 = a1[v51];
    *&v62 = v49;
    v53 = *(v49 + 24);
    if (v50 >= v53 >> 1)
    {
      sub_26C0CEB5C((v53 > 1), v50 + 1, 1);
      v49 = v62;
    }

    *(v49 + 16) = v50 + 1;
    *(v49 + 2 * v50 + 32) = v52;
    v51 += 16;
    ++v50;
    --v48;
  }

  while (v48);

LABEL_23:
  v54 = sub_26C0ED644(v49);

  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = sub_26C0EC038(*(v54 + 16), 0);
    v57 = sub_26C0EC92C(&v62, v56 + 16, v55, v54);

    sub_26C0EDACC();
    if (v57 != v55)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v56 = MEMORY[0x277D84F90];
  }

  *&v62 = v56;
  sub_26C0EC0B4(&v62);

  return v2;
}

unint64_t sub_26C0EDAD4()
{
  result = qword_28047AB98;
  if (!qword_28047AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB98);
  }

  return result;
}

uint64_t sub_26C0EDB28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0EDB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_26C0EDBE8()
{
  result = qword_28047ABA8;
  if (!qword_28047ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ABA8);
  }

  return result;
}

void sub_26C0EDC84()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F40);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281591458);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281591658);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281590348);
            if (v5 <= 0x3F)
            {
              sub_26C0EDFA4(319, qword_281590500, type metadata accessor for GeneratedEphemeralPrivateKey);
              if (v6 <= 0x3F)
              {
                sub_26C148BDC();
                if (v7 <= 0x3F)
                {
                  sub_26C0CFD5C(319, &qword_281592480);
                  if (v8 <= 0x3F)
                  {
                    sub_26C0CFD5C(319, &qword_281591F48);
                    if (v9 <= 0x3F)
                    {
                      sub_26C0CFD5C(319, qword_281592488);
                      if (v10 <= 0x3F)
                      {
                        sub_26C0EDFA4(319, &qword_281591EF0, type metadata accessor for GeneralEPSK);
                        if (v11 <= 0x3F)
                        {
                          sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
                          if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_26C0EDF10()
{
  if (!qword_281590730[0])
  {
    sub_26C148E9C();
    sub_26C0FF17C(&qword_281590328, MEMORY[0x277CC5550]);
    v0 = type metadata accessor for ServerSessionKeyManager();
    if (!v1)
    {
      atomic_store(v0, qword_281590730);
    }
  }
}

void sub_26C0EDFA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C14902C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26C0EE040()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F38);
            if (v5 <= 0x3F)
            {
              sub_26C0CFD5C(319, &qword_281591F40);
              if (v6 <= 0x3F)
              {
                sub_26C0CFD5C(319, qword_281591658);
                if (v7 <= 0x3F)
                {
                  sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
                  if (v8 <= 0x3F)
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
}

void sub_26C0EE244()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F38);
            if (v5 <= 0x3F)
            {
              sub_26C0CFD5C(319, &qword_281591F40);
              if (v6 <= 0x3F)
              {
                sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
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

void sub_26C0EE420()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26C0EE5AC()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F40);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0EE710()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F38);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40);
            if (v5 <= 0x3F)
            {
              sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
              if (v6 <= 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_26C0EEB10()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48);
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F38);
          if (v4 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26C0EEC70()
{
  result = type metadata accessor for ServerHandshakeState.IdleState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeState.ClientHelloState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ServerHandshakeState.ServerHelloState(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ServerHandshakeState.ServerCertificateState(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ServerHandshakeState.ServerFinishedState(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ServerHandshakeState.ReadyState(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
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

void sub_26C0EEDA4()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration();
  if (v0 <= 0x3F)
  {
    sub_26C0EDF10();
    if (v1 <= 0x3F)
    {
      sub_26C0EEEB8(319, &qword_281590310, &qword_28047ABD0, "|>");
      if (v2 <= 0x3F)
      {
        sub_26C0EEEB8(319, &qword_2815902F0, &qword_28047ABD8, "~>");
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_2815913C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0EEEB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26C14902C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26C0EEF0C()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v0, v4, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1701602409;
  v7 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v7 = 0x726F467964616572;
  }

  v8 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v8 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v9 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v6 = v9;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  sub_26C0FEEA0(v4, type metadata accessor for ServerHandshakeState);
  return v10;
}

uint64_t sub_26C0EF0D8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v64 = a2;
  v4 = v3;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v61 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = v55 - v10;
  v11 = sub_26C148BDC();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = v55 - v15;
  v16 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v55 - v21;
  v23 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  sub_26C0FEE38(v4, v30, type metadata accessor for ServerHandshakeState);
  v57 = v27;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_26C0FEEA0(v30, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_26C0FEF5C(v30, v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v31 = a1[3];
  v70[2] = a1[2];
  v70[3] = v31;
  v32 = a1[5];
  v70[4] = a1[4];
  v70[5] = v32;
  v33 = a1[1];
  v70[0] = *a1;
  v70[1] = v33;
  v34 = v71;
  sub_26C0F4B6C(v20, &v68, v26, v70, &v66);
  if (v34)
  {
    result = sub_26C0FEEA0(v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v36 = v67;
    v37 = v64;
    *v64 = v66;
    *(v37 + 16) = v36;
    return result;
  }

  v64 = *(&v68 + 1);
  v71 = v68;
  v56 = v69;
  sub_26C0FEF5C(v20, v22, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v38 = *(v16 + 20);
  v39 = v62;
  sub_26C0F5558(v62);
  v40 = v63;
  v41 = *(v63 + 48);
  result = v41(v39, 1, v11);
  if (result == 1)
  {
    goto LABEL_9;
  }

  v55[1] = 0;
  v63 = *(v40 + 32);
  (v63)(v65, v39, v11);
  v42 = v61;
  sub_26C0F5890(v61);
  result = v41(v42, 1, v11);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v43 = v59;
  sub_26C0FEEA0(v59, type metadata accessor for ServerHandshakeState);
  sub_26C0FEEA0(v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v44 = v58;
  v45 = v42;
  v46 = v63;
  (v63)(v58, v45, v11);
  sub_26C0FEF5C(v22, v43, type metadata accessor for ServerHandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for PartialHandshakeResult(0);
  v48 = v47[5];
  v49 = v11;
  v50 = v60;
  v46(&v60[v48], v44, v49);
  v51 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v52 = *(*(v51 - 8) + 56);
  v52(&v50[v48], 0, 1, v51);
  v53 = v47[6];
  v46(&v50[v53], v65, v49);
  swift_storeEnumTagMultiPayload();
  result = (v52)(&v50[v53], 0, 1, v51);
  v54 = v64;
  *v50 = v71;
  *(v50 + 1) = v54;
  *(v50 + 2) = v56;
  *&v50[v47[7]] = xmmword_26C14A540;
  return result;
}

uint64_t sub_26C0EF6DC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v55 = a2;
  v4 = v3;
  v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = type metadata accessor for ServerHandshakeState(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_26C0FEE38(v4, v23, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C0FEF5C(v23, v19, type metadata accessor for ServerHandshakeState.ServerHelloState);
    sub_26C0CF314(&v19[v13[5]], v8, &qword_28047ABC8, &unk_26C14CCA0);
    v60 = xmmword_26C14A1B0;
    v61 = 0;
    sub_26C100A40(v57);
    v57 = *(&v60 + 1);
    v24 = v60;
    v53 = v61;
    v25 = v62;
    sub_26C108ABC(v60, *(&v60 + 1), v61, &v58);
    if (v25)
    {
      sub_26C0CF5C4(v8, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEEA0(v19, type metadata accessor for ServerHandshakeState.ServerHelloState);
      result = sub_26C0BB9B0(v24, v57);
      v27 = v59;
      v28 = v55;
      *v55 = v58;
      *(v28 + 16) = v27;
    }

    else
    {
      v62 = 0;
      sub_26C0FEEA0(v56, type metadata accessor for ServerHandshakeState);
      sub_26C0FEF5C(v19, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      sub_26C0CF55C(v8, &v12[v9[5]], &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEE38(v17, v12, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v29 = &v17[v13[6]];
      v30 = *v29;
      LOBYTE(v29) = v29[2];
      v31 = &v12[v9[6]];
      *v31 = v30;
      v31[2] = v29;
      v32 = &v17[v13[7]];
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = &v12[v9[7]];
      *v36 = v33;
      v36[1] = v34;
      v36[2] = v35;
      v37 = &v17[v13[8]];
      v55 = v24;
      v38 = *v37;
      v39 = *(v37 + 1);
      v40 = &v12[v9[8]];
      *v40 = v38;
      *(v40 + 1) = v39;
      *&v12[v9[9]] = *&v17[v13[9]];
      v12[v9[10]] = v17[v13[10]];
      v12[v9[11]] = v17[v13[11]];
      v41 = &v17[v13[12]];
      LOWORD(v38) = *v41;
      LOBYTE(v41) = v41[2];
      v42 = &v12[v9[12]];
      *v42 = v38;
      v42[2] = v41;
      v43 = &v17[v13[13]];
      LOWORD(v38) = *v43;
      LOBYTE(v43) = v43[2];
      v44 = &v12[v9[13]];
      *v44 = v38;
      v44[2] = v43;
      v12[v9[14]] = v17[v13[15]];
      sub_26C0CF314(&v17[v13[16]], &v12[v9[15]], &qword_28047A888, &qword_26C14A5B8);
      v45 = v17[v13[17]];
      sub_26C0BB37C(v33, v34);

      sub_26C0FEEA0(v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v12[v9[16]] = v45;
      sub_26C0FEF5C(v12, v56, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      v46 = type metadata accessor for PartialHandshakeResult(0);
      v47 = v46[5];
      v48 = type metadata accessor for EncryptionLevel(0);
      v49 = *(*(v48 - 8) + 56);
      v50 = v54;
      v49(v54 + v47, 1, 1, v48);
      result = (v49)(v50 + v46[6], 1, 1, v48);
      v51 = v57;
      *v50 = v55;
      v50[1] = v51;
      v50[2] = v53;
      *(v50 + v46[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v23, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0EFC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v2, v17, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C0FEF5C(v17, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    sub_26C0F5BC8(v9, &v28, v13, &v26);
    if (v3)
    {
      result = sub_26C0FEEA0(v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v19 = v27;
      *a1 = v26;
      *(a1 + 16) = v19;
    }

    else
    {
      sub_26C0FEEA0(v2, type metadata accessor for ServerHandshakeState);
      sub_26C0FEEA0(v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v25 = v28;
      v20 = v29;
      sub_26C0FEF5C(v9, v2, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v21 = type metadata accessor for PartialHandshakeResult(0);
      v22 = v21[5];
      v23 = type metadata accessor for EncryptionLevel(0);
      v24 = *(*(v23 - 8) + 56);
      v24(a2 + v22, 1, 1, v23);
      result = (v24)(a2 + v21[6], 1, 1, v23);
      *a2 = v25;
      *(a2 + 16) = v20;
      *(a2 + v21[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v17, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0EFF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v2, v17, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C0FEF5C(v17, v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    sub_26C0F6280(v9, &v28, v13, &v26);
    if (v3)
    {
      result = sub_26C0FEEA0(v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v19 = v27;
      *a1 = v26;
      *(a1 + 16) = v19;
    }

    else
    {
      sub_26C0FEEA0(v2, type metadata accessor for ServerHandshakeState);
      sub_26C0FEEA0(v13, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v25 = v28;
      v20 = v29;
      sub_26C0FEF5C(v9, v2, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v21 = type metadata accessor for PartialHandshakeResult(0);
      v22 = v21[5];
      v23 = type metadata accessor for EncryptionLevel(0);
      v24 = *(*(v23 - 8) + 56);
      v24(a2 + v22, 1, 1, v23);
      result = (v24)(a2 + v21[6], 1, 1, v23);
      *a2 = v25;
      *(a2 + 16) = v20;
      *(a2 + v21[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v17, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0F0228@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v113 = a1;
  v3 = v2;
  v102 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v103 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v93 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v88 - v10;
  v11 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v105 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v94 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  v22 = sub_26C148BDC();
  v100 = *(v22 - 8);
  v101 = v22;
  v23 = *(v100 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v89 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - v26;
  v99 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v28 = *(*(v99 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v99);
  v90 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v91 = &v88 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v88 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v88 - v36;
  v38 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ServerHandshakeState(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v88 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v3;
  sub_26C0FEE38(v3, v45, type metadata accessor for ServerHandshakeState);
  v97 = v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_26C0FEF5C(v45, v41, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v47 = v106;
      sub_26C0F6B60(v35, &v109, v41, &v107);
      if (v47)
      {
        result = sub_26C0FEEA0(v41, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v49 = v108;
        v50 = v113;
        *v113 = v107;
        *(v50 + 16) = v49;
        return result;
      }

      *&v106 = 0;
      v113 = *(&v109 + 1);
      v56 = v109;
      v103 = v110;
      sub_26C0FEF5C(v35, v37, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v57 = &v37[*(v99 + 20)];
      sub_26C0F7068(v21);
      v59 = v100;
      v58 = v101;
      result = (*(v100 + 48))(v21, 1, v101);
      if (result != 1)
      {
        v60 = v98;
        sub_26C0FEEA0(v98, type metadata accessor for ServerHandshakeState);
        sub_26C0FEEA0(v41, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v61 = *(v59 + 32);
        v61(v27, v21, v58);
        sub_26C0FEF5C(v37, v60, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        swift_storeEnumTagMultiPayload();
        v62 = type metadata accessor for PartialHandshakeResult(0);
        v63 = v102;
        v64 = &v102[v62[5]];
        v61(v64, v27, v58);
LABEL_18:
        v85 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v86 = *(*(v85 - 8) + 56);
        v86(v64, 0, 1, v85);
        result = v86(&v63[v62[6]], 1, 1, v85);
        v87 = v113;
        *v63 = v56;
        *(v63 + 1) = v87;
        *(v63 + 2) = v103;
        *&v63[v62[7]] = xmmword_26C14A540;
        return result;
      }

      goto LABEL_21;
    }

LABEL_20:
    result = sub_26C0FEEA0(v45, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v105;
  sub_26C0FEF5C(v45, v105, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  if (*(v51 + v11[10]) & 1) == 0 && (*(v51 + v11[12] + 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v52 = v104;
  sub_26C0CF314(v51 + v11[5], v104, &qword_28047ABC8, &unk_26C14CCA0);
  v53 = v103;
  v54 = v106;
  sub_26C108ECC(&v109, v103);
  if (v54)
  {
    sub_26C0CF5C4(v52, &qword_28047ABC8, &unk_26C14CCA0);
    v106 = v109;
    v55 = v110;
    result = sub_26C0FEEA0(v51, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v72 = v113;
    *v113 = v106;
    *(v72 + 16) = v55;
    return result;
  }

  v65 = v96;
  v111 = v96;
  v112 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v109);
  v67 = v95;
  (*(v95 + 16))(boxed_opaque_existential_1, v53, v65);
  __swift_project_boxed_opaque_existential_1(&v109, v111);
  sub_26C14880C();
  (*(v67 + 8))(v53, v65);
  v69 = *(&v107 + 1);
  v68 = v107;
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v70 = 0;
  v71 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    v63 = v102;
    if (v71 == 2)
    {
      v70 = *(v68 + 16);
    }
  }

  else
  {
    v63 = v102;
    if (v71)
    {
      v70 = v68;
    }
  }

  sub_26C0FD540(v68, v69, v70, &v107, &v109);
  *&v106 = 0;
  v113 = *(&v109 + 1);
  v102 = v109;
  v103 = v110;
  v73 = v92;
  sub_26C0FEE38(v51, v92, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v74 = v93;
  sub_26C0CF314(v52, v93, &qword_28047ABC8, &unk_26C14CCA0);
  v75 = v90;
  sub_26C0FD2A0(v73, v74, v90);
  sub_26C0BB9B0(v68, v69);
  sub_26C0CF5C4(v52, &qword_28047ABC8, &unk_26C14CCA0);
  v76 = v91;
  sub_26C0FEF5C(v75, v91, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v77 = v76 + *(v99 + 20);
  v78 = v94;
  sub_26C0F7068(v94);
  v79 = v78;
  v81 = v100;
  v80 = v101;
  result = (*(v100 + 48))(v78, 1, v101);
  if (result != 1)
  {
    v82 = v98;
    sub_26C0FEEA0(v98, type metadata accessor for ServerHandshakeState);
    sub_26C0FEEA0(v51, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v83 = *(v81 + 32);
    v84 = v89;
    v83(v89, v79, v80);
    sub_26C0FEF5C(v76, v82, type metadata accessor for ServerHandshakeState.ServerFinishedState);
    swift_storeEnumTagMultiPayload();
    v62 = type metadata accessor for PartialHandshakeResult(0);
    v64 = &v63[v62[5]];
    v83(v64, v84, v80);
    v56 = v102;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0F0D0C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047ABB0);
  __swift_project_value_buffer(v0, qword_28047ABB0);
  return sub_26C148A8C();
}

uint64_t sub_26C0F0D8C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v1;
  v325 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v327 = v2;
  v289 = v15;
  v326 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v16 = *(*(v326 - 8) + 64);
  MEMORY[0x28223BE20](v326);
  v293 = v267 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v298 = v267 - v20;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v21 = *(*(v302 - 8) + 64);
  MEMORY[0x28223BE20](v302);
  v303 = v267 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v296 = v267 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v317 = v267 - v27;
  v28 = sub_26C14896C();
  v299 = *(v28 - 8);
  v300 = v28;
  v29 = *(v299 + 64);
  MEMORY[0x28223BE20](v28);
  v306 = v267 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v291 = v267 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v316 = v267 - v35;
  v36 = sub_26C148BDC();
  v311 = *(v36 - 8);
  v312 = v36;
  v37 = *(v311 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v292 = v267 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v297 = v267 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v318 = (v267 - v43);
  MEMORY[0x28223BE20](v42);
  v310 = v267 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v304 = v267 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v322 = v267 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v290 = v267 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v320 = (v267 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v313 = v267 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v314 = v267 - v59;
  MEMORY[0x28223BE20](v58);
  v323 = v267 - v60;
  v321 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v319 = *(v321 - 1);
  v61 = *(v319 + 64);
  MEMORY[0x28223BE20](v321);
  v301 = v267 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABE0, &qword_26C14CDD8);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v295 = v267 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v294 = v267 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v309 = v267 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v308 = v267 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v307 = v267 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v305 = (v267 - v76);
  v77 = MEMORY[0x28223BE20](v75);
  v315 = v267 - v78;
  MEMORY[0x28223BE20](v77);
  v324 = v267 - v79;
  v80 = *v14;
  *&v328 = v14;
  v81 = v14[1];
  if (v80 != 3 || v81 != 3 || (v82 = *v12, v288 = v12[1], v83 = v12[2], (sub_26C0BC82C(*(v328 + 88), &unk_287CC99A8) & 1) == 0))
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v100 = sub_26C148A9C();
    __swift_project_value_buffer(v100, qword_28047ABB0);
    v101 = v328;
    sub_26C0CF298(v328, v545);
    sub_26C0CF298(v101, v545);
    sub_26C0CF298(v101, v545);
    sub_26C0CF298(v101, v545);
    v102 = sub_26C148A7C();
    v103 = sub_26C14900C();
    if (!os_log_type_enabled(v102, v103))
    {
      sub_26C0FED20(v101);
      sub_26C0FED20(v101);
      sub_26C0FED20(v101);
      sub_26C0FED20(v101);

LABEL_22:
      *v4 = xmmword_26C14A8F0;
      *(v4 + 16) = 2;
      v545[0] = xmmword_26C14A8F0;
      LOBYTE(v545[1]) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v558 = v4;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *&v545[0] = v105;
    *v104 = 136315906;
    v106 = sub_26C0D52F0(771);
    v108 = sub_26C0E5DE8(v106, v107, v545);

    *(v104 + 4) = v108;
    *(v104 + 12) = 2080;
    v109 = sub_26C0D52F0(v80 | (v81 << 8));
    v111 = sub_26C0E5DE8(v109, v110, v545);
    v112 = v328;

    *(v104 + 14) = v111;
    *(v104 + 22) = 2048;
    v113 = *(v112 + 88);
    v114 = *(v113 + 16);
    sub_26C0FED20(v112);
    *(v104 + 24) = v114;
    sub_26C0FED20(v112);
    *(v104 + 32) = 1024;
    if (v114)
    {
      v115 = *(v113 + 32);
      sub_26C0FED20(v112);
      if (!v115)
      {
        v116 = 1;
LABEL_21:
        *(v104 + 34) = v116;
        sub_26C0FED20(v112);
        _os_log_impl(&dword_26C0B5000, v102, v103, "client hello legacy version and/or legacy compression methods incorrect. version expected %s, got %s, legacy compression methods expected [0], got array of length %ld with first value == 0? %{BOOL}d.", v104, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x26D69C3A0](v105, -1, -1);
        MEMORY[0x26D69C3A0](v104, -1, -1);

        v4 = v558;
        goto LABEL_22;
      }
    }

    else
    {
      sub_26C0FED20(v112);
    }

    v116 = 0;
    goto LABEL_21;
  }

  v285 = v83;
  v286 = v82;
  v558 = v4;
  v84 = v326;
  v85 = v327;
  if (*(v327 + *(v326 + 24)))
  {
    v86 = *(v327 + *(v326 + 24));
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v287 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v87 = *(v85 + v287[10]);
  v88 = (v85 + *(v84 + 32));
  v89 = *v88;
  v90 = v88[1];
  *(v545 + 8) = 0u;
  *(&v545[2] + 8) = 0u;
  *&v545[0] = MEMORY[0x277D84FA0];
  *(&v545[3] + 1) = 0;
  *(&v545[1] + 8) = 0u;
  *&v546[0] = 0xF000000000000000;
  BYTE8(v546[2]) = 0;
  *(&v546[1] + 8) = 0u;
  *(v546 + 8) = 0u;
  *&v550 = 0;
  *(&v550 + 1) = &unk_287CC99D0;
  v549 = 0u;
  *&v551 = &unk_287CC99F8;
  *(&v551 + 1) = &unk_287CC9A20;
  v548 = 0u;
  v547 = 0u;
  *&v552 = &unk_287CC9A48;
  *(&v552 + 1) = v86;
  v284 = v87;
  LOBYTE(v553) = v87;
  *(&v553 + 1) = v10;
  *&v554[0] = v8;
  *(&v554[0] + 1) = v89;
  *&v554[1] = v90;
  v325 &= 1u;
  BYTE8(v554[1]) = v325;
  v91 = *(v328 + 96);
  v92 = *(v91 + 16);

  sub_26C0FED74(v89);
  sub_26C0CEB4C(v10);
  if (v92)
  {
    v93 = (v91 + 32);
    v94 = v558;
    v95 = v328;
    while (1)
    {
      v96 = *v93;
      v516 = v93[1];
      v515 = v96;
      v97 = v93[2];
      v98 = v93[3];
      v99 = v93[4];
      LOBYTE(v520) = *(v93 + 80);
      v519 = v99;
      v518 = v98;
      v517 = v97;
      v500 = v93[2];
      v501 = v93[3];
      v502 = v93[4];
      LOBYTE(v503) = *(v93 + 80);
      v498 = *v93;
      v499 = v93[1];
      sub_26C0BE40C(&v515, &v530);
      sub_26C0F7E30(&v498, &v483);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_26C0BE468(&v515);
      v93 = (v93 + 88);
      if (!--v92)
      {
        goto LABEL_24;
      }
    }

    v542 = v552;
    v543 = v553;
    v544[0] = v554[0];
    *(v544 + 9) = *(v554 + 9);
    v538 = v548;
    v539 = v549;
    v540 = v550;
    v541 = v551;
    v534 = v546[0];
    v535 = v546[1];
    v536 = v546[2];
    v537 = v547;
    v530 = v545[0];
    v531 = v545[1];
    v532 = v545[2];
    v533 = v545[3];
    sub_26C0FEDB4(&v530);
    result = sub_26C0BE468(&v515);
    v118 = v484;
    v119 = v483;
LABEL_38:
    *v94 = v119;
    *(v94 + 16) = v118;
    return result;
  }

  v94 = v558;
  v95 = v328;
LABEL_24:
  v542 = v552;
  v543 = v553;
  v544[0] = v554[0];
  *(v544 + 9) = *(v554 + 9);
  v538 = v548;
  v539 = v549;
  v540 = v550;
  v541 = v551;
  v534 = v546[0];
  v535 = v546[1];
  v536 = v546[2];
  v537 = v547;
  v530 = v545[0];
  v531 = v545[1];
  v532 = v545[2];
  v533 = v545[3];
  v527 = v552;
  v528 = v553;
  v529[0] = v554[0];
  *(v529 + 9) = *(v554 + 9);
  v523 = v548;
  v524 = v549;
  v525 = v550;
  v526 = v551;
  v519 = v546[0];
  v520 = v546[1];
  v521 = v546[2];
  v522 = v547;
  v515 = v545[0];
  v516 = v545[1];
  v517 = v545[2];
  v518 = v545[3];
  sub_26C0FEDE4(&v530, &v498);
  sub_26C0FC28C(&v513);
  if (v5)
  {
    v495 = v527;
    v496 = v528;
    v497[0] = v529[0];
    *(v497 + 9) = *(v529 + 9);
    v491 = v523;
    v492 = v524;
    v493 = v525;
    v494 = v526;
    v487 = v519;
    v488 = v520;
    v489 = v521;
    v490 = v522;
    v483 = v515;
    v484 = v516;
    v485 = v517;
    v486 = v518;
    sub_26C0FEDB4(&v483);
    v510 = v552;
    v511 = v553;
    v512[0] = v554[0];
    *(v512 + 9) = *(v554 + 9);
    v506 = v548;
    v507 = v549;
    v508 = v550;
    v509 = v551;
    v502 = v546[0];
    v503 = v546[1];
    v504 = v546[2];
    v505 = v547;
    v498 = v545[0];
    v499 = v545[1];
    v500 = v545[2];
    v501 = v545[3];
    result = sub_26C0FEDB4(&v498);
    v118 = v514;
    v119 = v513;
    goto LABEL_38;
  }

  v510 = v552;
  v511 = v553;
  v512[0] = v554[0];
  *(v512 + 9) = *(v554 + 9);
  v506 = v548;
  v507 = v549;
  v508 = v550;
  v509 = v551;
  v502 = v546[0];
  v503 = v546[1];
  v504 = v546[2];
  v505 = v547;
  v498 = v545[0];
  v499 = v545[1];
  v500 = v545[2];
  v501 = v545[3];
  sub_26C0FEDB4(&v498);
  v120 = sub_26C0FCD7C(*(v95 + 80), &unk_287CC9A70, v479);
  if (*(&v532 + 1) && (v121 = *(*(&v532 + 1) + 16)) != 0)
  {
    v122 = 0;
    do
    {
      v123 = *(*(&v532 + 1) + 32 + v122++);
      v124 = *(*(&v541 + 1) + 16);
      v125 = (*(&v541 + 1) + 32);
      while (v124)
      {
        v126 = *v125++;
        --v124;
        if (v126 == v123)
        {
          v127 = 0;
          goto LABEL_37;
        }
      }

      LOBYTE(v123) = 0;
      v127 = 1;
    }

    while (v122 != v121);
  }

  else
  {
    LOBYTE(v123) = 0;
    v127 = 1;
  }

LABEL_37:
  v282 = v127;
  v283 = v120;
  v495 = v552;
  v496 = v553;
  v497[0] = v554[0];
  *(v497 + 9) = *(v554 + 9);
  v491 = v548;
  v492 = v549;
  v493 = v550;
  v494 = v551;
  v487 = v546[0];
  v488 = v546[1];
  v489 = v546[2];
  v490 = v547;
  v483 = v545[0];
  v484 = v545[1];
  v485 = v545[2];
  v486 = v545[3];
  v479[12] = v552;
  v479[13] = v553;
  *v480 = v554[0];
  *&v480[9] = *(v554 + 9);
  v479[8] = v548;
  v479[9] = v549;
  v479[10] = v550;
  v479[11] = v551;
  v479[4] = v546[0];
  v479[5] = v546[1];
  v479[6] = v546[2];
  v479[7] = v547;
  v479[0] = v545[0];
  v479[1] = v545[1];
  v479[2] = v545[2];
  v479[3] = v545[3];
  sub_26C0FEDE4(&v483, v467);
  sub_26C0FBEE4(&v478, &v481);
  v465[12] = v552;
  v465[13] = v553;
  v466[0] = v554[0];
  *(v466 + 9) = *(v554 + 9);
  v465[8] = v548;
  v465[9] = v549;
  v465[10] = v550;
  v465[11] = v551;
  v465[4] = v546[0];
  v465[5] = v546[1];
  v465[6] = v546[2];
  v465[7] = v547;
  v465[0] = v545[0];
  v465[1] = v545[1];
  v465[2] = v545[2];
  v465[3] = v545[3];
  sub_26C0FEDB4(v465);
  v475 = v552;
  v476 = v553;
  v477[0] = v554[0];
  *(v477 + 9) = *(v554 + 9);
  v471 = v548;
  v472 = v549;
  v473 = v550;
  v474 = v551;
  v467[4] = v546[0];
  v468 = v546[1];
  v469 = v546[2];
  v470 = v547;
  v467[0] = v545[0];
  v467[1] = v545[1];
  v467[2] = v545[2];
  v467[3] = v545[3];
  v463[14] = v552;
  v463[15] = v553;
  v464[0] = v554[0];
  *(v464 + 9) = *(v554 + 9);
  v463[10] = v548;
  v463[11] = v549;
  v463[12] = v550;
  v463[13] = v551;
  v463[6] = v546[0];
  v463[7] = v546[1];
  v463[8] = v546[2];
  v463[9] = v547;
  v463[2] = v545[0];
  v463[3] = v545[1];
  v128 = v481;
  v129 = v482;
  v463[4] = v545[2];
  v463[5] = v545[3];
  sub_26C0FEDE4(v467, v461);
  v279 = sub_26C0FBD44(v463);
  v461[12] = v552;
  v461[13] = v553;
  v462[0] = v554[0];
  *(v462 + 9) = *(v554 + 9);
  v461[8] = v548;
  v461[9] = v549;
  v461[10] = v550;
  v461[11] = v551;
  v461[4] = v546[0];
  v461[5] = v546[1];
  v461[6] = v546[2];
  v461[7] = v547;
  v461[0] = v545[0];
  v461[1] = v545[1];
  v461[2] = v545[2];
  v461[3] = v545[3];
  sub_26C0FEDB4(v461);
  if (v129)
  {
    v277 = v128;
    v278 = v129;
    v130 = 0;
    v131 = 0;
    v280 = 0;
    v281 = 0xF000000000000000;
    v132 = *(&v468 + 1);
    v133 = v324;
  }

  else
  {
    v458 = v552;
    v459 = v553;
    v460[0] = v554[0];
    *(v460 + 9) = *(v554 + 9);
    v454 = v548;
    v455 = v549;
    v456 = v550;
    v457 = v551;
    v450 = v546[0];
    v451 = v546[1];
    v452 = v546[2];
    v453 = v547;
    v446 = v545[0];
    v447 = v545[1];
    v448 = v545[2];
    v449 = v545[3];
    v443 = v552;
    v444 = v553;
    v445[0] = v554[0];
    *(v445 + 9) = *(v554 + 9);
    v439 = v548;
    v440 = v549;
    v441 = v550;
    v442 = v551;
    v435 = v546[0];
    v436 = v546[1];
    v437 = v546[2];
    v438 = v547;
    v431 = v545[0];
    v432 = v545[1];
    v433 = v545[2];
    v434 = v545[3];
    LOWORD(v378) = v128;
    sub_26C0FEDE4(&v446, &v413);
    sub_26C0FC07C(&v378, v393, &v396);
    v134 = v128;
    v133 = v324;
    v277 = v134;
    v278 = 0;
    v132 = *(&v451 + 1);
    v425 = v443;
    v426 = v444;
    v427[0] = v445[0];
    *(v427 + 9) = *(v445 + 9);
    v421 = v439;
    v422 = v440;
    v423 = v441;
    v424 = v442;
    v417 = v435;
    v418 = v436;
    v419 = v437;
    v420 = v438;
    v413 = v431;
    v414 = v432;
    v415 = v433;
    v416 = v434;
    sub_26C0FEDB4(&v413);
    v130 = v396;
    v280 = *(&v396 + 1);
    v131 = *(&v397 + 1);
    v281 = v397;
  }

  if (v283 != 4866)
  {
    v328 = xmmword_26C14CBF0;
    v431 = xmmword_26C14CBF0;
    LOBYTE(v432) = 2;
    v135 = v130;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0FEE1C(v135, v280, v281);
    v458 = v552;
    v459 = v553;
    v460[0] = v554[0];
    *(v460 + 9) = *(v554 + 9);
    v454 = v548;
    v455 = v549;
    v456 = v550;
    v457 = v551;
    v450 = v546[0];
    v451 = v546[1];
    v452 = v546[2];
    v453 = v547;
    v446 = v545[0];
    v447 = v545[1];
    v448 = v545[2];
    v449 = v545[3];
    result = sub_26C0FEDB4(&v446);
    v136 = v558;
    *v558 = v328;
    *(v136 + 16) = 2;
    return result;
  }

  v275 = v132;
  v276 = v130;
  v274 = v550;
  if (qword_28047A630 != -1)
  {
    swift_once();
  }

  v458 = v552;
  v459 = v553;
  v460[0] = v554[0];
  *(v460 + 9) = *(v554 + 9);
  v454 = v548;
  v455 = v549;
  v456 = v550;
  v457 = v551;
  v450 = v546[0];
  v451 = v546[1];
  v452 = v546[2];
  v453 = v547;
  v446 = v545[0];
  v447 = v545[1];
  v448 = v545[2];
  v449 = v545[3];
  v443 = v552;
  v444 = v553;
  v445[0] = v554[0];
  *(v445 + 9) = *(v554 + 9);
  v439 = v548;
  v440 = v549;
  v441 = v550;
  v442 = v551;
  v435 = v546[0];
  v436 = v546[1];
  v437 = v546[2];
  v438 = v547;
  v431 = v545[0];
  v432 = v545[1];
  v433 = v545[2];
  v434 = v545[3];
  v429 = word_280480300;
  v430 = qword_280480308;
  sub_26C0FEDE4(&v446, &v413);
  sub_26C0F8638(&v429, &v428, v133);
  v273 = v131;
  v411[12] = v443;
  v411[13] = v444;
  v412[0] = v445[0];
  *(v412 + 9) = *(v445 + 9);
  v411[8] = v439;
  v411[9] = v440;
  v411[10] = v441;
  v411[11] = v442;
  v411[4] = v435;
  v411[5] = v436;
  v411[6] = v437;
  v411[7] = v438;
  v411[0] = v431;
  v411[1] = v432;
  v411[2] = v433;
  v411[3] = v434;
  sub_26C0FEDB4(v411);
  v425 = v552;
  v426 = v553;
  v427[0] = v554[0];
  *(v427 + 9) = *(v554 + 9);
  v421 = v548;
  v422 = v549;
  v423 = v550;
  v424 = v551;
  v417 = v546[0];
  v418 = v546[1];
  v419 = v546[2];
  v420 = v547;
  v413 = v545[0];
  v414 = v545[1];
  v415 = v545[2];
  v416 = v545[3];
  v399 = v545[3];
  v398 = v545[2];
  v403 = v547;
  v402 = v546[2];
  v401 = v546[1];
  v400 = v546[0];
  v407 = v551;
  v406 = v550;
  v405 = v549;
  v404 = v548;
  *(v410 + 9) = *(v554 + 9);
  v410[0] = v554[0];
  v409 = v553;
  v408 = v552;
  v397 = v545[1];
  v396 = v545[0];
  v137 = *(v327 + v287[7]);
  sub_26C0FEDE4(&v413, v393);
  sub_26C0FC76C(v137, &v395);
  v270 = v138;
  v271 = 0;
  v272 = v139;
  v141 = v140;
  v142 = BYTE8(v419);
  v393[12] = v408;
  v393[13] = v409;
  v394[0] = v410[0];
  *(v394 + 9) = *(v410 + 9);
  v393[8] = v404;
  v393[9] = v405;
  v393[10] = v406;
  v393[11] = v407;
  v393[4] = v400;
  v393[5] = v401;
  v393[6] = v402;
  v393[7] = v403;
  v393[0] = v396;
  v393[1] = v397;
  v393[2] = v398;
  v393[3] = v399;
  sub_26C0FEDB4(v393);
  if (v142 != 1 || *(v327 + v287[8]) != 1)
  {
    goto LABEL_77;
  }

  if (qword_28047A750 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    v143 = sub_26C148A9C();
    __swift_project_value_buffer(v143, qword_28047ABB0);
    v144 = sub_26C148A7C();
    v145 = sub_26C148FFC();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_26C0B5000, v144, v145, "Client requested early data and server configured to allow early data. Checking conditions...", v146, 2u);
      MEMORY[0x26D69C3A0](v146, -1, -1);
    }

    v147 = v315;
    sub_26C0CF314(v324, v315, &qword_28047ABE0, &qword_26C14CDD8);
    v148 = *(v319 + 48);
    if (v148(v147, 1, v321) == 1)
    {
      sub_26C0CF5C4(v315, &qword_28047ABE0, &qword_26C14CDD8);
      goto LABEL_56;
    }

    v149 = v301;
    sub_26C0FEF5C(v315, v301, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    if (*(v149 + v321[5]))
    {
      sub_26C0FEEA0(v301, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_56:
      sub_26C0CF314(v324, v305, &qword_28047ABE0, &qword_26C14CDD8);
      v150 = sub_26C148A7C();
      v151 = sub_26C148FFC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *&v378 = v153;
        *v152 = 136315138;
        v154 = v305;
        v155 = v148(v305, 1, v321);
        if (v155 == 1)
        {
          v156 = 0xD000000000000012;
        }

        else
        {
          v156 = 0xD00000000000001CLL;
        }

        if (v155 == 1)
        {
          v157 = "assword verifier";
        }

        else
        {
          v157 = "psk not negotiated";
        }

        sub_26C0CF5C4(v154, &qword_28047ABE0, &qword_26C14CDD8);
        v158 = sub_26C0E5DE8(v156, v157 | 0x8000000000000000, &v378);

        *(v152 + 4) = v158;
        _os_log_impl(&dword_26C0B5000, v150, v151, "Early data not authorized: %s", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x26D69C3A0](v153, -1, -1);
        MEMORY[0x26D69C3A0](v152, -1, -1);
      }

      else
      {

        sub_26C0CF5C4(v305, &qword_28047ABE0, &qword_26C14CDD8);
      }

      goto LABEL_77;
    }

    v159 = sub_26C148A7C();
    v160 = sub_26C148FFC();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_26C0B5000, v159, v160, "Early data compatibly psk negotiated. Continuing checks...", v161, 2u);
      MEMORY[0x26D69C3A0](v161, -1, -1);
    }

    if (!v418)
    {
      goto LABEL_76;
    }

    v162 = sub_26C148A7C();
    v163 = sub_26C148FFC();
    v164 = os_log_type_enabled(v162, v163);
    if (!v272 || v141)
    {
      if (v164)
      {
        v166 = swift_slowAlloc();
        *v166 = 0;
        _os_log_impl(&dword_26C0B5000, v162, v163, "Server does not support the ALPN protocol associated with early data. Rejecting early data.", v166, 2u);
        MEMORY[0x26D69C3A0](v166, -1, -1);
      }

LABEL_76:
      sub_26C0FEEA0(v301, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_77:
      LODWORD(v301) = 0;
      goto LABEL_78;
    }

    if (v164)
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_26C0B5000, v162, v163, "Server supports ALPN protocol associated with early data. Accepting early data.", v165, 2u);
      MEMORY[0x26D69C3A0](v165, -1, -1);
    }

    sub_26C0FEEA0(v301, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    LODWORD(v301) = 1;
LABEL_78:
    v167 = v278;
    v168 = sub_26C0ED46C(&v368);
    v278 = v167;
    if ((v167 & 1) != 0 && (v279 & 0x10000) != 0 && (*(v319 + 48))(v324, 1, v321, v168) == 1)
    {
      v390 = v552;
      v391 = v553;
      v392[0] = v554[0];
      *(v392 + 9) = *(v554 + 9);
      v386 = v548;
      v387 = v549;
      v388 = v550;
      v389 = v551;
      v382 = v546[0];
      v383 = v546[1];
      v384 = v546[2];
      v385 = v547;
      v378 = v545[0];
      v379 = v545[1];
      v380 = v545[2];
      v381 = v545[3];
      v315 = v550;
      if (!v550)
      {
        goto LABEL_129;
      }

      v305 = *(&v392[0] + 1);
      if (*(&v392[0] + 1))
      {
        v169 = v385;
        v170 = v386;
        v171 = v387;
        v267[1] = *&v392[1];
        v345 = v385;
        v346 = v386;
        v347 = v387;
        v172 = v315;
        v348 = v315;
        sub_26C0FEDE4(&v378, &v329);
        v268 = v169;
        v287 = v170;
        v269 = v171;
        sub_26C0FEF00(v169, *(&v169 + 1), v170, *(&v170 + 1), v171, *(&v171 + 1), v172);
        v173 = v271;
        sub_26C0E806C(&v345, v305, &v343, &v349);
        v271 = v173;
        if (v173)
        {

          sub_26C0FEE1C(v276, v280, v281);
          v340 = v552;
          v341 = v553;
          v342[0] = v554[0];
          *(v342 + 9) = *(v554 + 9);
          v336 = v548;
          v337 = v549;
          v338 = v550;
          v339 = v551;
          v333 = v546[0];
          v334 = v546[1];
          v335[0] = v546[2];
          v335[1] = v547;
          v329 = v545[0];
          v330 = v545[1];
          v331 = v545[2];
          v332 = v545[3];
          sub_26C0FEDB4(&v329);
          sub_26C0E091C(v268, *(&v268 + 1), v287, *(&v170 + 1), v269, *(&v269 + 1), v315);
          sub_26C0FEDB4(&v378);
          v174 = v344;
          v175 = v558;
          *v558 = v343;
          *(v175 + 16) = v174;
          return sub_26C0CF5C4(v324, &qword_28047ABE0, &qword_26C14CDD8);
        }

        sub_26C0E091C(v268, *(&v268 + 1), v287, *(&v170 + 1), v269, *(&v269 + 1), v315);
        sub_26C0FEDB4(&v378);
      }

      else
      {
LABEL_129:
        v355[0] = v374;
        v355[1] = v375;
        v356 = v376;
        v357 = v377;
        v351 = v370;
        v352 = v371;
        v353 = v372;
        v354 = v373;
        v349 = v368;
        v350 = v369;
      }

      v364 = v355[0];
      v365 = v355[1];
      v366 = v356;
      v367 = v357;
      v360 = v351;
      v361 = v352;
      v362 = v353;
      v363 = v354;
      v176 = v349;
      v177 = v350;
    }

    else
    {
      v364 = v374;
      v365 = v375;
      v366 = v376;
      v367 = v377;
      v360 = v370;
      v361 = v371;
      v362 = v372;
      v363 = v373;
      v176 = v368;
      v177 = v369;
    }

    v358 = v176;
    v359 = v177;
    v178 = v281;
    v179 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    v180 = *(v179 - 8);
    v181 = *(v180 + 56);
    v181(v323, 1, 1, v179);
    v182 = type metadata accessor for PAKEServerState(0);
    v315 = *(v182 - 8);
    v305 = *(v315 + 56);
    (v305)(v322, 1, 1, v182);
    v183 = v278;
    if (v178 >> 60 == 15)
    {
      v183 = 1;
    }

    if (v183)
    {
      break;
    }

    LOWORD(v378) = v277;
    sub_26C0BBAA4(v280, v178);
    v189 = v313;
    sub_26C0DDFF0(&v378, v313);
    v190 = *(v180 + 48);
    result = v190(v189, 1, v179);
    if (result == 1)
    {
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v191 = v323;
    sub_26C0CF5C4(v323, &qword_28047A960, "L6");
    v192 = v189;
    v193 = v314;
    sub_26C0FEF5C(v192, v314, type metadata accessor for GeneratedEphemeralPrivateKey);
    v181(v193, 0, 1, v179);
    v194 = v193;
    v141 = "L6";
    sub_26C0CF55C(v194, v191, &qword_28047A960, "L6");
    v195 = v320;
    sub_26C0CF314(v191, v320, &qword_28047A960, "L6");
    result = v190(v195, 1, v179);
    if (result == 1)
    {
      goto LABEL_144;
    }

    v196 = v281 >> 62;
    if ((v281 >> 62) <= 1)
    {
      if (!v196)
      {
        v197 = BYTE6(v281);
        goto LABEL_107;
      }

      v201 = v280;
      v197 = v280 >> 32;
      goto LABEL_105;
    }

    if (v196 == 2)
    {
      v201 = v280;
      v197 = *(v280 + 24);
LABEL_105:
      sub_26C0BBAA4(v201, v281);
      goto LABEL_107;
    }

    v197 = 0;
LABEL_107:
    if (v197 >= v273)
    {
      v203 = v280;
      v202 = v281;
      v204 = sub_26C14889C();
      v206 = v205;
      v207 = v276;
      sub_26C0FEE1C(v276, v203, v202);
      v208 = v320;
      v209 = v271;
      v314 = sub_26C0DBB54(v318, v204, v206, &v329);
      v315 = v210;
      v313 = v209;
      if (v209)
      {
        sub_26C0CF5C4(v323, &qword_28047A960, "L6");
        sub_26C0BB9B0(v204, v206);

        sub_26C0FEE1C(v207, v203, v202);
        sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0FEE1C(v207, v203, v202);
        v390 = v552;
        v391 = v553;
        v392[0] = v554[0];
        *(v392 + 9) = *(v554 + 9);
        v386 = v548;
        v387 = v549;
        v388 = v550;
        v389 = v551;
        v382 = v546[0];
        v383 = v546[1];
        v384 = v546[2];
        v385 = v547;
        v378 = v545[0];
        v379 = v545[1];
        v380 = v545[2];
        v381 = v545[3];
        sub_26C0FEDB4(&v378);
        v211 = v330;
        v212 = v558;
        *v558 = v329;
        *(v212 + 16) = v211;
        sub_26C0FEEA0(v208, type metadata accessor for GeneratedEphemeralPrivateKey);
        goto LABEL_127;
      }

      sub_26C0FEE1C(v207, v203, v202);
      sub_26C0BB9B0(v204, v206);
      sub_26C0FEEA0(v208, type metadata accessor for GeneratedEphemeralPrivateKey);
      v320 = *(v311 + 32);
      (v320)(v310, v318, v312);
LABEL_111:
      sub_26C0CF314(v327 + *(v326 + 20), v316, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C14895C();
      v213 = v307;
      sub_26C0CF314(v324, v307, &qword_28047ABE0, &qword_26C14CDD8);
      v214 = *(v319 + 48);
      if (v214(v213, 1, v321) == 1)
      {
        sub_26C0CF5C4(v307, &qword_28047ABE0, &qword_26C14CDD8);
        v215 = 1;
      }

      else
      {
        v216 = v307;
        sub_26C0FEE38(v307, v317, type metadata accessor for GeneralEPSK);
        sub_26C0FEEA0(v216, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        v215 = 0;
      }

      v217 = type metadata accessor for GeneralEPSK(0);
      v218 = *(v217 - 8);
      v318 = *(v218 + 56);
      v319 = v217;
      v307 = v218 + 56;
      v318(v317, v215, 1);
      v219 = v308;
      sub_26C0CF314(v324, v308, &qword_28047ABE0, &qword_26C14CDD8);
      if (v214(v219, 1, v321) == 1)
      {
        sub_26C0CF5C4(v308, &qword_28047ABE0, &qword_26C14CDD8);
        v220 = 0;
        v326 = 0;
        v221 = 0xF000000000000000;
      }

      else
      {
        v222 = v308;
        v223 = (v308 + v321[6]);
        v220 = *v223;
        v221 = v223[1];
        v326 = v223[2];
        sub_26C0BBAA4(v220, v221);
        sub_26C0FEEA0(v222, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      v224 = v309;
      sub_26C0CF314(v324, v309, &qword_28047ABE0, &qword_26C14CDD8);
      v225 = v214(v224, 1, v321);
      if (v225 == 1)
      {
        sub_26C0CF5C4(v309, &qword_28047ABE0, &qword_26C14CDD8);
        v226 = 0;
      }

      else
      {
        v226 = *(v309 + v321[7]);
        sub_26C0FEEA0(v309, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      sub_26C0CF314(v316, v303, &qword_28047A870, &qword_26C14A5A0);
      if (swift_getEnumCaseMultiPayload() >= 4)
      {
        v230 = v313;
        sub_26C0FD7EC(v286, v288, v285, v317, v284, v220, v221, v326, v298, v226, v225 == 1, &v329);
        v313 = v230;
        if (!v230)
        {
          sub_26C0BB344(v220, v221);
          sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
          sub_26C0CF5C4(v317, &qword_28047A890, &qword_26C14A5C0);
          (*(v299 + 8))(v306, v300);
          v237 = v316;
          sub_26C0CF5C4(v316, &qword_28047A870, &qword_26C14A5A0);
          sub_26C0CF55C(v298, v237, &qword_28047A948, &qword_26C14A7F0);
          swift_storeEnumTagMultiPayload();
          sub_26C0FEE38(v327, v293, type metadata accessor for ServerHandshakeState.IdleState);
          sub_26C0CF55C(v237, v291, &qword_28047ABC8, &unk_26C14CCA0);
          sub_26C0CF55C(v323, v290, &qword_28047A960, "L6");
          v558 = (v311 + 32);
          (v320)(v292, v310, v312);
          v390 = v552;
          v391 = v553;
          v392[0] = v554[0];
          *(v392 + 9) = *(v554 + 9);
          v386 = v548;
          v387 = v549;
          v388 = v550;
          v389 = v551;
          v382 = v546[0];
          v383 = v546[1];
          v384 = v546[2];
          v385 = v547;
          v378 = v545[0];
          v379 = v545[1];
          v380 = v545[2];
          v381 = v545[3];
          v326 = *&v546[0];
          v327 = *(&v545[3] + 1);
          v323 = *(&v546[0] + 1);
          sub_26C0BB37C(*(&v545[3] + 1), *&v546[0]);
          sub_26C0FEDB4(&v378);
          v238 = v270;
          if (!v272)
          {
            v238 = 0;
          }

          v317 = v238;
          v239 = v294;
          sub_26C0CF314(v324, v294, &qword_28047ABE0, &qword_26C14CDD8);
          if (v214(v239, 1, v321) == 1)
          {
            sub_26C0CF5C4(v294, &qword_28047ABE0, &qword_26C14CDD8);
            v240 = 1;
          }

          else
          {
            v241 = v294;
            sub_26C0FEE38(v294, v296, type metadata accessor for GeneralEPSK);
            sub_26C0FEEA0(v241, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
            v240 = 0;
          }

          (v318)(v296, v240, 1, v319);
          v242 = v295;
          sub_26C0CF314(v324, v295, &qword_28047ABE0, &qword_26C14CDD8);
          if (v214(v242, 1, v321) == 1)
          {
            sub_26C0CF5C4(v295, &qword_28047ABE0, &qword_26C14CDD8);
            v243 = 0;
          }

          else
          {
            v243 = *(v295 + v321[5]);
            sub_26C0FEEA0(v295, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
          }

          v244 = v274 != 0;
          v245 = v275 != 0;
          v246 = *(v328 + 56);
          v555 = *(v328 + 40);
          v556 = v246;
          v557 = *(v328 + 72);
          v247 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
          v248 = v289;
          v249 = v322;
          sub_26C0CF314(v322, v289 + v247[21], &qword_28047A888, &qword_26C14A5B8);
          v250 = v293;
          sub_26C0FEE38(v293, v248, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          sub_26C0FEEA0(v250, type metadata accessor for ServerHandshakeState.IdleState);
          sub_26C0CF55C(v291, v248 + v247[5], &qword_28047ABC8, &unk_26C14CCA0);
          *(v248 + v247[6]) = v283;
          v251 = v248 + v247[7];
          v252 = v278;
          *v251 = v277;
          *(v251 + 2) = v252;
          v253 = v248 + v247[8];
          v254 = BYTE2(v279);
          *v253 = v279;
          *(v253 + 2) = v254 & 1;
          v255 = (v248 + v247[9]);
          *v255 = v123;
          v255[1] = v282;
          v256 = (v248 + v247[10]);
          v258 = v280;
          v257 = v281;
          *v256 = v276;
          v256[1] = v258;
          v256[2] = v257;
          v256[3] = v273;
          v259 = v248 + v247[14];
          v260 = v556;
          *v259 = v555;
          *(v259 + 16) = v260;
          *(v259 + 32) = v557;
          sub_26C0CF55C(v290, v248 + v247[11], &qword_28047A960, "L6");
          (v320)(v248 + v247[12], v292, v312);
          v261 = (v248 + v247[13]);
          v262 = v315;
          *v261 = v314;
          v261[1] = v262;
          v263 = (v248 + v247[15]);
          v264 = v326;
          *v263 = v327;
          v263[1] = v264;
          v263[2] = v323;
          v265 = (v248 + v247[16]);
          v266 = v272;
          *v265 = v317;
          v265[1] = v266;
          *(v248 + v247[17]) = v245;
          sub_26C0CF55C(v296, v248 + v247[18], &qword_28047A890, &qword_26C14A5C0);
          *(v248 + v247[19]) = v243;
          *(v248 + v247[20]) = v301;
          *(v248 + v247[22]) = v325;
          *(v248 + v247[23]) = v244;
          sub_26C0CF5C4(v249, &qword_28047A888, &qword_26C14A5B8);
          return sub_26C0CF5C4(v324, &qword_28047ABE0, &qword_26C14CDD8);
        }

        sub_26C0BB344(v314, v315);
        sub_26C0BB344(v220, v221);

        sub_26C0FEE1C(v276, v280, v281);
        sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0CF5C4(v317, &qword_28047A890, &qword_26C14A5C0);
        (*(v299 + 8))(v306, v300);
        (*(v311 + 8))(v310, v312);
        sub_26C0CF5C4(v323, &qword_28047A960, "L6");
        v228 = *(&v329 + 1);
        v227 = v329;
        v229 = v330;
      }

      else
      {

        sub_26C0CF5C4(v303, &qword_28047A870, &qword_26C14A5A0);
        v378 = xmmword_26C14A570;
        v227 = 2;
        LOBYTE(v379) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB344(v314, v315);
        sub_26C0BB344(v220, v221);
        sub_26C0FEE1C(v276, v280, v281);
        sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0CF5C4(v317, &qword_28047A890, &qword_26C14A5C0);
        (*(v299 + 8))(v306, v300);
        (*(v311 + 8))(v310, v312);
        sub_26C0CF5C4(v323, &qword_28047A960, "L6");
        v228 = 0;
        v229 = 2;
      }

      sub_26C0CF5C4(v316, &qword_28047ABC8, &unk_26C14CCA0);
      v390 = v552;
      v391 = v553;
      v392[0] = v554[0];
      *(v392 + 9) = *(v554 + 9);
      v386 = v548;
      v387 = v549;
      v388 = v550;
      v389 = v551;
      v382 = v546[0];
      v383 = v546[1];
      v384 = v546[2];
      v385 = v547;
      v378 = v545[0];
      v379 = v545[1];
      v380 = v545[2];
      v381 = v545[3];
      sub_26C0FEDB4(&v378);
      v231 = v558;
      *v558 = v227;
      *(v231 + 1) = v228;
      *(v231 + 16) = v229;
      goto LABEL_127;
    }

    __break(1u);
LABEL_142:
    swift_once();
  }

  v335[0] = v364;
  v335[1] = v365;
  v336 = v366;
  v337 = v367;
  v331 = v360;
  v332 = v361;
  v333 = v362;
  v334 = v363;
  v329 = v358;
  v330 = v359;
  if (sub_26C0ED420(&v329) == 1)
  {

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v184 = sub_26C148A9C();
    __swift_project_value_buffer(v184, qword_28047ABB0);
    v185 = sub_26C148A7C();
    v186 = sub_26C14900C();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&dword_26C0B5000, v185, v186, "no group or PAKE negotiated", v187, 2u);
      MEMORY[0x26D69C3A0](v187, -1, -1);
    }

    v188 = v558;
    *v558 = xmmword_26C14A570;
    *(v188 + 16) = 2;
    v349 = xmmword_26C14A570;
    LOBYTE(v350) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0FEE1C(v276, v280, v281);
    sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0CF5C4(v323, &qword_28047A960, "L6");
    v390 = v552;
    v391 = v553;
    v392[0] = v554[0];
    *(v392 + 9) = *(v554 + 9);
    v386 = v548;
    v387 = v549;
    v388 = v550;
    v389 = v551;
    v382 = v546[0];
    v383 = v546[1];
    v384 = v546[2];
    v385 = v547;
    v378 = v545[0];
    v379 = v545[1];
    v380 = v545[2];
    v381 = v545[3];
    sub_26C0FEDB4(&v378);
LABEL_127:
    sub_26C0CF5C4(v322, &qword_28047A888, &qword_26C14A5B8);
    return sub_26C0CF5C4(v324, &qword_28047ABE0, &qword_26C14CDD8);
  }

  v198 = v336;
  v320 = *(&v336 + 1);
  v199 = v337;
  v353 = v333;
  v354 = v334;
  v355[0] = v335[0];
  *(v355 + 10) = *(v335 + 10);
  v349 = v329;
  v350 = v330;
  v351 = v331;
  v352 = v332;
  sub_26C0CF314(&v358, &v378, &qword_28047AB88, &qword_26C14CA60);
  sub_26C0CF314(&v358, &v378, &qword_28047AB88, &qword_26C14CA60);
  sub_26C0DA570(&v329, &v378);
  v200 = v271;
  sub_26C0EAFA4(&v349, &v345, v304);
  if (v200)
  {
    sub_26C0CF5C4(v323, &qword_28047A960, "L6");
    sub_26C0BB9B0(v320, v199);

    sub_26C0ECD08(&v329);
    sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0FEE1C(v276, v280, v281);
    v390 = v552;
    v391 = v553;
    v392[0] = v554[0];
    *(v392 + 9) = *(v554 + 9);
    v386 = v548;
    v387 = v549;
    v388 = v550;
    v389 = v551;
    v382 = v546[0];
    v383 = v546[1];
    v384 = v546[2];
    v385 = v547;
    v378 = v545[0];
    v379 = v545[1];
    v380 = v545[2];
    v381 = v545[3];
    sub_26C0FEDB4(&v378);
    v235 = v346;
    v236 = v558;
    *v558 = v345;
    *(v236 + 16) = v235;
    goto LABEL_127;
  }

  v232 = v304;
  (v305)(v304, 0, 1, v182);
  v233 = v232;
  v234 = v322;
  sub_26C0FF20C(v233, v322, &qword_28047A888, &qword_26C14A5B8);
  LOWORD(v349) = v198;
  *(&v349 + 1) = v320;
  v350 = v199;
  result = (*(v315 + 48))(v234, 1, v182);
  if (result != 1)
  {
    sub_26C0EBCE0(&v349, &v345, v297);
    v313 = 0;
    sub_26C0CF5C4(&v358, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0ECD08(&v329);
    sub_26C0BB9B0(v320, v199);
    v320 = *(v311 + 32);
    (v320)(v310, v297, v312);
    v314 = 0;
    v315 = 0xF000000000000000;
    goto LABEL_111;
  }

LABEL_145:
  __break(1u);
  return result;
}

double sub_26C0F4B6C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v96 = a5;
  v90 = a4;
  v92 = a2;
  v91 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v86 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v83 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v14 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v83 - v15;
  v16 = sub_26C148BDC();
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = *(v101 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  *&v100 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  *&v103 = &v83 - v20;
  v21 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v97 = &v83 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v95 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v83 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v85 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = a3 + v21[5];
  v108 = &v83 - v43;
  v44 = a3;
  v45 = v21;
  sub_26C0CF314(v42, &v83 - v43, &qword_28047ABC8, &unk_26C14CCA0);
  sub_26C0CF314(v44 + v21[18], v37, &qword_28047A890, &qword_26C14A5C0);
  v46 = type metadata accessor for GeneralEPSK(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  v93 = v47 + 48;
  v94 = v48;
  if (v48(v37, 1, v46) == 1)
  {
    v84 = *(v44 + v21[17]);
  }

  else
  {
    v84 = 0;
  }

  sub_26C0CF5C4(v37, &qword_28047A890, &qword_26C14A5C0);
  v49 = v27;
  v50 = v31;
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v51 = sub_26C148A9C();
  __swift_project_value_buffer(v51, qword_28047ABB0);
  sub_26C0FEE38(v44, v31, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v52 = v97;
  sub_26C0FEE38(v44, v97, type metadata accessor for ServerHandshakeState.ClientHelloState);
  sub_26C0FEE38(v44, v49, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v53 = sub_26C148A7C();
  v54 = sub_26C148FFC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v83 = v49;
    v56 = v55;
    *v55 = 67109632;
    v57 = v45;
    v58 = v50 + v45[18];
    v59 = v95;
    sub_26C0CF314(v58, v95, &qword_28047A890, &qword_26C14A5C0);
    v60 = v94(v59, 1, v46) != 1;
    sub_26C0CF5C4(v59, &qword_28047A890, &qword_26C14A5C0);
    sub_26C0FEEA0(v50, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v56[1] = v60;
    *(v56 + 4) = 1024;
    v61 = *(v52 + v57[17]);
    sub_26C0FEEA0(v52, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v56 + 10) = v61;
    *(v56 + 7) = 1024;
    v62 = *(v83 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 40));
    sub_26C0FEEA0(v83, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v56[4] = v62;
    _os_log_impl(&dword_26C0B5000, v53, v54, "selectedPSK? = %{BOOL}d, pskNegotiationAttempted? = %{BOOL}d, useRawEPSKs? = %{BOOL}d", v56, 0x14u);
    MEMORY[0x26D69C3A0](v56, -1, -1);
  }

  else
  {
    v57 = v45;
    sub_26C0FEEA0(v49, type metadata accessor for ServerHandshakeState.ClientHelloState);
    sub_26C0FEEA0(v52, type metadata accessor for ServerHandshakeState.ClientHelloState);
    sub_26C0FEEA0(v50, type metadata accessor for ServerHandshakeState.ClientHelloState);
  }

  v64 = v101;
  v63 = v102;
  v65 = *(v101 + 16);
  v66 = v100;
  v65(v100, v44 + v57[12], v102);
  sub_26C0FF17C(&qword_28047AC00, MEMORY[0x277CC5330]);
  sub_26C148BAC();
  v67 = v98;
  sub_26C0CF314(v108, v98, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      v69 = v89;
      sub_26C0CF55C(v67, v89, &qword_28047A948, &qword_26C14A7F0);
      v106 = xmmword_26C14A1B0;
      v107 = 0;
      sub_26C10089C();
      v70 = v86;
      sub_26C0CF314(v69, v86, &qword_28047A948, &qword_26C14A7F0);
      v71 = v66;
      v72 = v103;
      v65(v71, v103, v63);
      v73 = v106;
      v74 = v107;
      sub_26C0BBAA4(v106, *(&v106 + 1));
      v75 = v88;
      sub_26C11C240(v70, v100, v73, *(&v73 + 1), v74, v84, v88);
      sub_26C0CF5C4(v69, &qword_28047A948, &qword_26C14A7F0);
      (*(v101 + 8))(v72, v102);
      v76 = v108;
      sub_26C0CF5C4(v108, &qword_28047A870, &qword_26C14A5A0);
      sub_26C0CF55C(v75, v76, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      v103 = v106;
      v77 = v107;
      v78 = v87;
      sub_26C0FEE38(v44, v87, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v79 = v85;
      sub_26C0CF314(v76, v85, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FCEE0(v78, v79, v91);
      sub_26C0CF5C4(v76, &qword_28047ABC8, &unk_26C14CCA0);
      v80 = v92;
      result = *&v103;
      *v92 = v103;
      *(v80 + 2) = v77;
      return result;
    }
  }

  else
  {
    sub_26C0CF5C4(v67, &qword_28047A870, &qword_26C14A5A0);
  }

  v100 = xmmword_26C14A570;
  v104 = xmmword_26C14A570;
  v105 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  (*(v64 + 8))(v103, v63);
  sub_26C0CF5C4(v108, &qword_28047ABC8, &unk_26C14CCA0);
  v82 = v96;
  result = *&v100;
  *v96 = v100;
  *(v82 + 16) = 2;
  return result;
}

uint64_t sub_26C0F5558@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v17 = sub_26C148BDC();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    sub_26C0CF55C(v15, v11, &qword_28047A9C8, &qword_26C14D2A0);
    v22 = *(v8 + 40);
    v23 = sub_26C148BDC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    sub_26C0CF5C4(v11, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v15, v7, &qword_28047A970, "DG");
    v19 = *(v4 + 40);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    sub_26C0CF5C4(v7, &qword_28047A970, "DG");
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_26C0F5890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v17 = sub_26C148BDC();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    sub_26C0CF55C(v15, v11, &qword_28047A9C8, &qword_26C14D2A0);
    v22 = *(v8 + 44);
    v23 = sub_26C148BDC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v11[v22], v23);
    sub_26C0CF5C4(v11, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v15, v7, &qword_28047A970, "DG");
    v19 = *(v4 + 44);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v7[v19], v20);
    sub_26C0CF5C4(v7, &qword_28047A970, "DG");
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

double sub_26C0F5BC8(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4)
{
  v73 = a4;
  v67 = a1;
  v68 = a2;
  v78 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v5 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C148E2C();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - v16;
  v18 = sub_26C148D8C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  sub_26C0CF314(a3 + *(v23 + 20), v17, &qword_28047AC08, &qword_26C14CDF0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_26C0CF5C4(v17, &qword_28047AC08, &qword_26C14CDF0);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v24 = sub_26C148A9C();
    __swift_project_value_buffer(v24, qword_28047ABB0);
    v25 = sub_26C148A7C();
    v26 = sub_26C14900C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26C0B5000, v25, v26, "server attempting to send Certificate message but was not configured with a signing key. EPSK or PAKE negotiation probably failed.", v27, 2u);
      MEMORY[0x26D69C3A0](v27, -1, -1);
    }

    v28 = v73;
    *v73 = xmmword_26C14CC00;
    *(v28 + 16) = 2;
    v76 = xmmword_26C14CC00;
    LOBYTE(v77) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v30 = a3 + *(v78 + 20);
    v65 = v13;
    sub_26C0CF314(v30, v13, &qword_28047ABC8, &unk_26C14CCA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A928, &unk_26C14A7D0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26C14A550;
    v32 = v69;
    sub_26C148D2C();
    v33 = sub_26C148DDC();
    v35 = v34;
    (*(v70 + 8))(v32, v71);
    v36 = 0;
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v36 = *(v33 + 16);
      }
    }

    else if (v37)
    {
      v36 = v33;
    }

    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    v38 = MEMORY[0x277D84F90];
    *(v31 + 48) = v36;
    *(v31 + 56) = v38;
    v76 = xmmword_26C14A1B0;
    v77 = 0;
    sub_26C100D6C(0, 0xC000000000000000, 0, v31);
    v39 = v65;
    v40 = v72;
    sub_26C108ABC(v76, *(&v76 + 1), v77, &v74);
    v41 = v78;
    if (v40)
    {
      sub_26C0BB9B0(0, 0xC000000000000000);

      sub_26C0CF5C4(v39, &qword_28047ABC8, &unk_26C14CCA0);
      (*(v19 + 8))(v22, v18);
      sub_26C0BB9B0(v76, *(&v76 + 1));
      v42 = v75;
      result = *&v74;
      v43 = v73;
      *v73 = v74;
      *(v43 + 16) = v42;
    }

    else
    {
      v73 = 0;
      sub_26C0BB9B0(0, 0xC000000000000000);

      (*(v19 + 8))(v22, v18);
      v44 = v66;
      sub_26C0FEE38(a3, v66, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v45 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
      v46 = v67;
      sub_26C0CF55C(v39, v67 + v45[5], &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEE38(v44, v46, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v47 = v44 + v41[6];
      v48 = *v47;
      LOBYTE(v47) = *(v47 + 2);
      v49 = v46 + v45[6];
      *v49 = v48;
      *(v49 + 2) = v47;
      v50 = (v44 + v41[7]);
      v51 = *v50;
      v52 = v50[1];
      v53 = v50[2];
      v54 = (v46 + v45[7]);
      *v54 = v51;
      v54[1] = v52;
      v54[2] = v53;
      v55 = (v44 + v41[8]);
      v56 = *v55;
      v57 = v55[1];
      v58 = (v46 + v45[8]);
      *v58 = v56;
      v58[1] = v57;
      *(v46 + v45[9]) = *(v44 + v41[9]);
      *(v46 + v45[10]) = *(v44 + v41[11]);
      v59 = v44 + v41[13];
      LOWORD(v56) = *v59;
      LOBYTE(v59) = *(v59 + 2);
      v60 = v46 + v45[11];
      *v60 = v56;
      *(v60 + 2) = v59;
      *(v46 + v45[12]) = *(v44 + v41[14]);
      v61 = *(v44 + v41[16]);
      sub_26C0BB37C(v51, v52);

      sub_26C0FEEA0(v44, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *(v46 + v45[13]) = v61;
      v62 = v77;
      result = *&v76;
      v63 = v68;
      *v68 = v76;
      *(v63 + 2) = v62;
    }
  }

  return result;
}

uint64_t sub_26C0F6280(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v96 = a4;
  v86 = a1;
  v87 = a2;
  v5 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C148DBC();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 8);
  MEMORY[0x28223BE20](v8);
  v90 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v81 - v17;
  v19 = sub_26C148D8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  sub_26C0CF314(a3 + *(v24 + 20), v18, &qword_28047AC08, &qword_26C14CDF0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_26C0CF5C4(v18, &qword_28047AC08, &qword_26C14CDF0);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v25 = sub_26C148A9C();
    __swift_project_value_buffer(v25, qword_28047ABB0);
    v26 = sub_26C148A7C();
    v27 = sub_26C14900C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26C0B5000, v26, v27, "server attempting to send Certificate message but was not configured with a signing key. shouldn't get here", v28, 2u);
      MEMORY[0x26D69C3A0](v28, -1, -1);
    }

    v29 = v96;
    *v96 = xmmword_26C14CC00;
    *(v29 + 16) = 2;
    v94 = xmmword_26C14CC00;
    LOBYTE(v95) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_26C0CF314(a3 + *(v5 + 20), v14, &qword_28047ABC8, &unk_26C14CCA0);
  v31 = (a3 + *(v5 + 24));
  if (v31[1])
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v32 = sub_26C148A9C();
    __swift_project_value_buffer(v32, qword_28047ABB0);
    v33 = sub_26C148A7C();
    v34 = sub_26C14900C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v20;
      v36 = v19;
      v37 = v23;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26C0B5000, v33, v34, "missing negotiated signature algorithm in server certificate verify", v38, 2u);
      v39 = v38;
      v23 = v37;
      v19 = v36;
      v20 = v35;
      MEMORY[0x26D69C3A0](v39, -1, -1);
    }

    v40 = v96;
    *v96 = xmmword_26C14A8E0;
    *(v40 + 16) = 2;
    v94 = xmmword_26C14A8E0;
    LOBYTE(v95) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v14, &qword_28047ABC8, &unk_26C14CCA0);
    return (*(v20 + 8))(v23, v19);
  }

  v41 = *v31;
  v42 = v91;
  sub_26C0D257C(&v92, &v94);
  if (v42)
  {
    sub_26C0CF5C4(v14, &qword_28047ABC8, &unk_26C14CCA0);
    v43 = v93;
    v44 = v96;
    *v96 = v92;
    *(v44 + 16) = v43;
    return (*(v20 + 8))(v23, v19);
  }

  v83 = a3;
  v84 = v41;
  v46 = *(&v94 + 1);
  v45 = v94;
  result = v95;
  v47 = *(&v94 + 1) >> 62;
  if ((*(&v94 + 1) >> 62) > 1)
  {
    v48 = v90;
    if (v47 == 2)
    {
      v49 = *(v94 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v48 = v90;
    if (v47)
    {
      v49 = v94 >> 32;
    }

    else
    {
      v49 = BYTE14(v94);
    }
  }

  v90 = v5;
  *&v91 = 0;
  if (v49 < v95)
  {
    __break(1u);
    return result;
  }

  v50 = sub_26C14889C();
  v52 = v51;
  sub_26C0BB9B0(v45, v46);
  *&v94 = v50;
  *(&v94 + 1) = v52;
  sub_26C0BE710();
  v53 = v91;
  sub_26C148D7C();
  if (v53)
  {

    v91 = xmmword_26C14A900;
    v94 = xmmword_26C14A900;
    LOBYTE(v95) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v50, v52);
    sub_26C0CF5C4(v14, &qword_28047ABC8, &unk_26C14CCA0);
    v54 = v96;
    *v96 = v91;
    *(v54 + 16) = 2;
    return (*(v20 + 8))(v23, v19);
  }

  v81 = v50;
  v82 = v52;
  v55 = sub_26C148D9C();
  v57 = v56;
  (*(v88 + 1))(v48, v89);
  v58 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    v59 = 0;
    if (v58 == 2)
    {
      v59 = *(v55 + 16);
    }
  }

  else if (v58)
  {
    v59 = v55;
  }

  else
  {
    v59 = 0;
  }

  v94 = xmmword_26C14A1B0;
  v95 = 0;
  sub_26C100F0C(v84, v55, v57, v59);
  v60 = v57;
  v61 = v95;
  *&v91 = *(&v94 + 1);
  v89 = v94;
  sub_26C108ABC(v94, *(&v94 + 1), v95, &v92);
  v88 = v23;
  v96 = 0;
  sub_26C0BB9B0(v81, v82);
  sub_26C0BB9B0(v55, v60);
  v62 = v61;
  v63 = v90;
  v64 = v85;
  sub_26C0FEE38(v83, v85, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  v65 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v66 = v86;
  sub_26C0CF55C(v14, v86 + v65[5], &qword_28047ABC8, &unk_26C14CCA0);
  v67 = (v66 + v65[7]);
  sub_26C0FEE38(v64, v66, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v68 = (v64 + v63[7]);
  v69 = *v68;
  v70 = v68[1];
  v71 = v68[2];
  v72 = (v66 + v65[6]);
  *v72 = v69;
  v72[1] = v70;
  v72[2] = v71;
  v73 = (v64 + v63[8]);
  v74 = v73[1];
  *v67 = *v73;
  v67[1] = v74;
  *(v66 + v65[8]) = *(v64 + v63[9]);
  *(v66 + v65[9]) = *(v64 + v63[10]);
  v75 = v64 + v63[11];
  v76 = *v75;
  LOBYTE(v75) = *(v75 + 2);
  v77 = v66 + v65[10];
  *v77 = v76;
  *(v77 + 2) = v75;
  *(v66 + v65[11]) = *(v64 + v63[12]);
  LOBYTE(v63) = *(v64 + v63[13]);
  sub_26C0BB37C(v69, v70);

  sub_26C0FEEA0(v64, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  *(v66 + v65[12]) = v63;
  v79 = v87;
  v78 = v88;
  v80 = v91;
  *v87 = v89;
  v79[1] = v80;
  v79[2] = v62;
  return (*(v20 + 8))(v78, v19);
}

double sub_26C0F6B60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a1;
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  *&v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - v16;
  sub_26C0CF314(a3 + *(v6 + 20), &v47 - v16, &qword_28047ABC8, &unk_26C14CCA0);
  v18 = v57;
  sub_26C108ECC(&v53, v13);
  if (v18)
  {
    sub_26C0CF5C4(v17, &qword_28047ABC8, &unk_26C14CCA0);
    v19 = v54;
    result = *&v53;
    *a4 = v53;
    *(a4 + 16) = v19;
  }

  else
  {
    v47 = a3;
    v48 = v6;
    v57 = v9;
    v21 = v50;
    v55 = v10;
    v56 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v23 = v51;
    (*(v51 + 16))(boxed_opaque_existential_1, v13, v10);
    __swift_project_boxed_opaque_existential_1(&v53, v55);
    sub_26C14880C();
    (*(v23 + 8))(v13, v10);
    v24 = v52;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v25 = *(&v24 + 1) >> 62;
    if ((*(&v24 + 1) >> 62) > 1)
    {
      v26 = 0;
      v27 = v57;
      v28 = v48;
      if (v25 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = v57;
      v28 = v48;
    }

    sub_26C0FD540(v24, *(&v24 + 1), v26, &v52, &v53);
    sub_26C0BB9B0(v24, *(&v24 + 1));
    v51 = v53;
    v50 = v54;
    v57 = 0;
    sub_26C0FEE38(v47, v27, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    sub_26C0CF55C(v17, v21 + v29[5], &qword_28047ABC8, &unk_26C14CCA0);
    sub_26C0FEE38(v27, v21, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v30 = (v27 + v28[6]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v28;
    v34 = v30[2];
    v35 = (v21 + v29[6]);
    *v35 = v31;
    v35[1] = v32;
    v35[2] = v34;
    v36 = (v27 + v28[7]);
    v37 = *v36;
    v38 = v36[1];
    v39 = (v21 + v29[7]);
    *v39 = v37;
    v39[1] = v38;
    *(v21 + v29[8]) = *(v27 + v33[8]);
    *(v21 + v29[9]) = *(v27 + v33[9]);
    v40 = v21 + v29[10];
    *v40 = 0;
    *(v40 + 2) = 1;
    v41 = v27 + v33[10];
    LOWORD(v37) = *v41;
    LOBYTE(v41) = *(v41 + 2);
    v42 = v21 + v29[11];
    *v42 = v37;
    *(v42 + 2) = v41;
    *(v21 + v29[12]) = 0;
    *(v21 + v29[13]) = *(v27 + v33[11]);
    v43 = v29[14];
    v44 = type metadata accessor for PAKEServerState(0);
    (*(*(v44 - 8) + 56))(v21 + v43, 1, 1, v44);
    LOBYTE(v43) = *(v27 + v33[12]);
    sub_26C0BB37C(v31, v32);

    sub_26C0FEEA0(v27, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    *(v21 + v29[15]) = v43;
    v45 = v49;
    v46 = v50;
    result = *&v51;
    *v49 = v51;
    *(v45 + 2) = v46;
  }

  return result;
}

uint64_t sub_26C0F7068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v15, v7, &qword_28047A968, &unk_26C14A810);
      v17 = *(v4 + 36);
      v18 = sub_26C148BDC();
      v19 = *(v18 - 8);
      (*(v19 + 16))(a1, &v7[v17], v18);
      sub_26C0CF5C4(v7, &qword_28047A968, &unk_26C14A810);
      return (*(v19 + 56))(a1, 0, 1, v18);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v21 = sub_26C148BDC();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  sub_26C0CF55C(v15, v11, &qword_28047A970, "DG");
  v22 = *(v8 + 52);
  v23 = sub_26C148BDC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a1, &v11[v22], v23);
  sub_26C0CF5C4(v11, &qword_28047A970, "DG");
  return (*(v24 + 56))(a1, 0, 1, v23);
}

uint64_t sub_26C0F7398@<X0>(uint64_t a1@<X0>, int64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a4;
  v108 = a1;
  v100 = a5;
  v7 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v99 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v93 - v12;
  v13 = type metadata accessor for PAKEServerState(0);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v13);
  v95 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v102 = *(v105 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v105);
  v18 = &v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a3[1];
  v103 = *a3;
  v104 = v21;
  v25 = a3[2];
  v101 = v7;
  v27 = &v93 - v26;
  sub_26C0CF314(v108 + *(v7 + 20), &v93 - v26, &qword_28047ABC8, &unk_26C14CCA0);
  v118 = v27;
  v28 = v107;
  sub_26C1094C4(&v111, v18);
  if (v28)
  {
    result = sub_26C0CF5C4(v118, &qword_28047ABC8, &unk_26C14CCA0);
    v30 = v112;
    v31 = v106;
    *v106 = v111;
    *(v31 + 16) = v30;
    return result;
  }

  v32 = v23;
  v33 = v103;
  v94 = v25;
  v107 = v18;
  v34 = v105;
  v35 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v35 == 2)
    {
      v36 = *(v104 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v35)
  {
    v36 = v104 >> 32;
  }

  else
  {
    v36 = BYTE6(v22);
  }

  if (v36 < v32)
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = sub_26C14889C();
  v38 = v37;
  *&v111 = v7;
  *(&v111 + 1) = v37;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110);
  sub_26C0BE710();
  v22 = v107;
  if ((sub_26C148C1C() & 1) == 0)
  {
    v34 = v38;
    if (qword_28047A750 == -1)
    {
LABEL_14:
      v39 = sub_26C148A9C();
      __swift_project_value_buffer(v39, qword_28047ABB0);
      v40 = sub_26C148A7C();
      v41 = sub_26C14900C();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v102;
      v44 = v106;
      if (v42)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_26C0B5000, v40, v41, "invalid client finished payload", v45, 2u);
        v46 = v45;
        v22 = v107;
        MEMORY[0x26D69C3A0](v46, -1, -1);
      }

      *v44 = xmmword_26C14A8E0;
      *(v44 + 16) = 2;
      v111 = xmmword_26C14A8E0;
      LOBYTE(v112) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v7, v34);
      (*(v43 + 8))(v22, v105);
      return sub_26C0CF5C4(v118, &qword_28047ABC8, &unk_26C14CCA0);
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  sub_26C109AA4(v33, v24, v94, &v111);
  v47 = v108;
  v48 = v98;
  sub_26C0CF314(v108 + v101[14], v98, &qword_28047A888, &qword_26C14A5B8);
  v49 = v97;
  if ((*(v96 + 48))(v48, 1, v97) != 1)
  {
    v103 = v7;
    v104 = v38;
    v53 = v95;
    sub_26C0FEF5C(v48, v95, type metadata accessor for PAKEServerState);
    v54 = (v53 + *(v49 + 32));
    *(&v115[2] + 10) = *(v54 + 106);
    v55 = v54[5];
    v115[0] = v54[4];
    v115[1] = v55;
    v115[2] = v54[6];
    v56 = v54[3];
    v113 = v54[2];
    v114 = v56;
    v57 = v54[1];
    v111 = *v54;
    v112 = v57;
    v116[0] = *(v115 + 8);
    v116[1] = *(&v115[1] + 8);
    v116[2] = *(&v115[2] + 8);
    v117 = BYTE8(v115[3]);
    sub_26C0DA570(&v111, v109);
    v51 = v99;
    v50 = v100;
    if (qword_28047A730 != -1)
    {
      swift_once();
    }

    v58 = qword_280480370;
    os_unfair_lock_lock((qword_280480370 + 16));
    v59 = *(v58 + 24);
    if (*(v59 + 16))
    {
      v60 = sub_26C0D84BC(v116);
      if (v61)
      {
        v62 = *(*(v59 + 56) + 4 * v60);
        v63 = v62 + 1;
        if (v62 == -1)
        {
          __break(1u);
        }

        else
        {
          v64 = *(v58 + 24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109[0] = *(v58 + 24);
          *(v58 + 24) = 0x8000000000000000;
          sub_26C0D8CCC(v63, v116, isUniquelyReferenced_nonNull_native);
          *(v58 + 24) = v109[0];
          os_unfair_lock_unlock((v58 + 16));
          sub_26C0ECD08(&v111);
          if (qword_28047A750 == -1)
          {
LABEL_26:
            v66 = sub_26C148A9C();
            __swift_project_value_buffer(v66, qword_28047ABB0);
            v67 = sub_26C148A7C();
            v68 = sub_26C148FFC();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_26C0B5000, v67, v68, "restored PAKE credential attempt", v69, 2u);
              MEMORY[0x26D69C3A0](v69, -1, -1);
            }

            sub_26C0BB9B0(v103, v104);

            sub_26C0FEEA0(v95, type metadata accessor for PAKEServerState);
            (*(v102 + 8))(v107, v105);
            v52 = v101;
            v47 = v108;
            goto LABEL_29;
          }
        }

        swift_once();
        goto LABEL_26;
      }
    }

    os_unfair_lock_unlock((v58 + 16));
    sub_26C0ECD08(&v111);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v85 = sub_26C148A9C();
    __swift_project_value_buffer(v85, qword_28047ABB0);
    v86 = sub_26C148A7C();
    v87 = sub_26C14900C();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v102;
    v90 = v106;
    v91 = v95;
    if (v88)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_26C0B5000, v86, v87, "error restoring PAKE Credential Attempt. This should never happen.", v92, 2u);
      MEMORY[0x26D69C3A0](v92, -1, -1);
    }

    *v90 = 0xD000000000000027;
    *(v90 + 1) = 0x800000026C15AD20;
    *(v90 + 16) = 1;
    v109[0] = 0xD000000000000027;
    v109[1] = 0x800000026C15AD20;
    v110 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v103, v104);
    sub_26C0FEEA0(v91, type metadata accessor for PAKEServerState);
    (*(v89 + 8))(v107, v105);
    return sub_26C0CF5C4(v118, &qword_28047ABC8, &unk_26C14CCA0);
  }

  (*(v102 + 8))(v22, v34);
  sub_26C0BB9B0(v7, v38);
  sub_26C0CF5C4(v48, &qword_28047A888, &qword_26C14A5B8);
  v51 = v99;
  v50 = v100;
  v52 = v101;
LABEL_29:
  sub_26C0FEE38(v47, v51, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  sub_26C0FEE38(v47, v50, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  sub_26C0CF55C(v118, v50 + ready[5], &qword_28047ABC8, &unk_26C14CCA0);
  v71 = (v51 + v52[6]);
  v72 = *v71;
  v73 = v71[1];
  v74 = v71[2];
  v75 = (v50 + ready[6]);
  *v75 = v72;
  v75[1] = v73;
  v75[2] = v74;
  v76 = (v51 + v52[7]);
  v77 = *v76;
  v78 = v76[1];
  v79 = (v50 + ready[7]);
  *v79 = v77;
  v79[1] = v78;
  *(v50 + ready[8]) = *(v51 + v52[8]);
  *(v50 + ready[9]) = *(v51 + v52[9]);
  v80 = v51 + v52[10];
  LOWORD(v77) = *v80;
  LOBYTE(v80) = *(v80 + 2);
  v81 = v50 + ready[10];
  *v81 = v77;
  *(v81 + 2) = v80;
  v82 = v51 + v52[11];
  LOWORD(v77) = *v82;
  LOBYTE(v82) = *(v82 + 2);
  v83 = v50 + ready[11];
  *v83 = v77;
  *(v83 + 2) = v82;
  *(v50 + ready[12]) = *(v51 + v52[12]);
  *(v50 + ready[13]) = *(v51 + v52[13]);
  v84 = *(v51 + v52[15]);
  sub_26C0BB37C(v72, v73);

  result = sub_26C0FEEA0(v51, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  *(v50 + ready[14]) = v84;
  return result;
}

void sub_26C0F7E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v67[16] = *(a1 + 32);
  *&v67[32] = v3;
  v68 = *(a1 + 64);
  v4 = *a1;
  v5 = *(a1 + 16);
  v69 = *(a1 + 80);
  v66 = v4;
  *v67 = v5;
  v7 = 0;
  switch(v69 >> 4)
  {
    case 1:
      v7 = 10;
      break;
    case 2:
      v7 = 43;
      break;
    case 3:
      v7 = 16;
      break;
    case 4:
      v7 = 51;
      break;
    case 5:
      v7 = 42;
      break;
    case 6:
      v7 = 13;
      break;
    case 7:
      v7 = 20;
      break;
    case 8:
      v7 = 57;
      break;
    case 9:
      v7 = 45;
      break;
    case 0xA:
      v7 = 41;
      break;
    case 0xB:
      v7 = 58;
      break;
    case 0xC:
      v7 = 35387;
      break;
    case 0xD:
      v7 = v66;
      break;
    default:
      break;
  }

  if (sub_26C11D960(&v60, v7))
  {
    v8 = v66;
    v9 = BYTE8(v66);
    v10 = *(&v66 + 9) | ((*(&v66 + 13) | (HIBYTE(v66) << 16)) << 32);
    v11 = v67[0];
    v12 = *&v67[1] | ((*&v67[5] | (v67[7] << 16)) << 32);
    switch(v69 >> 4)
    {
      case 1:
        v13 = *(v2 + 16);

        *(v2 + 16) = v8;
        break;
      case 2:
        if (BYTE8(v66))
        {
          goto LABEL_43;
        }

        v29 = *(v2 + 24);
        sub_26C0B8B24(v66, 0);

        *(v2 + 24) = v8;
        break;
      case 3:
        if (v67[0])
        {
          goto LABEL_43;
        }

        v22 = *(v2 + 80);
        sub_26C0FF14C();

        *(v2 + 80) = v8;
        break;
      case 4:
        if ((v12 & 0x30000000000000) != 0)
        {
          goto LABEL_43;
        }

        v31 = *(v2 + 8);
        sub_26C0FF158(v66, *(&v66 + 1), *v67);

        *(v2 + 8) = v8;
        break;
      case 5:
        *(v2 + 104) = 1;
        break;
      case 6:
        v30 = *(v2 + 32);

        *(v2 + 32) = v8;
        break;
      case 7:
        if (BYTE8(v66))
        {
          goto LABEL_43;
        }

        v49 = *(v2 + 40);
        sub_26C0B8B24(v66, 0);

        *(v2 + 40) = v8;
        break;
      case 8:
        v27 = *(v2 + 56);
        v70 = *(v2 + 64);
        v28 = *(v2 + 72);
        sub_26C0BBAA4(v66, *(&v66 + 1));
        sub_26C0BB344(v27, v70);
        *(v2 + 56) = v8;
        *(v2 + 64) = v9;
        *(v2 + 71) = BYTE6(v10);
        *(v2 + 69) = WORD2(v10);
        *(v2 + 65) = v10;
        *(v2 + 72) = v11;
        *(v2 + 79) = BYTE6(v12);
        *(v2 + 77) = WORD2(v12);
        *(v2 + 73) = v12;
        break;
      case 9:
        v38 = *(v2 + 48);

        *(v2 + 48) = v8;
        break;
      case 0xA:
        if (v67[0])
        {
          goto LABEL_43;
        }

        v20 = *(v2 + 88);
        v21 = *(v2 + 96);

        sub_26C0FF10C(v20);
        *(v2 + 88) = v8;
        *(v2 + 96) = v9 | (v10 << 8);
        break;
      case 0xB:
        if (qword_28047A750 != -1)
        {
          swift_once();
        }

        v23 = sub_26C148A9C();
        __swift_project_value_buffer(v23, qword_28047ABB0);
        v24 = sub_26C148A7C();
        v25 = sub_26C14900C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_26C0B5000, v24, v25, "skipped processing ticket_request in CH", v26, 2u);
          MEMORY[0x26D69C3A0](v26, -1, -1);
        }

        break;
      case 0xC:
        if (v69)
        {
          goto LABEL_43;
        }

        v70 = BYTE8(v66) | (v10 << 8);
        v58 = v67[0] | (v12 << 8);
        v32 = *(v2 + 120);
        v33 = *(v2 + 128);
        v34 = *(v2 + 136);
        v35 = *(v2 + 144);
        v36 = *(v2 + 152);
        v54 = *(v2 + 160);
        v55 = *(v2 + 112);
        v56 = *&v67[24];
        v57 = *&v67[8];
        v63 = *&v67[32];
        v64 = v68;
        v60 = v66;
        v61 = *v67;
        v62 = *&v67[16];
        v65 = v69 & 0xF;
        sub_26C0FF0B0(&v60, v59);
        sub_26C0E091C(v55, v32, v33, v34, v35, v36, v54);
        v37 = v70;
        *(v2 + 112) = v8;
        *(v2 + 120) = v37;
        *(v2 + 128) = v58;
        *(v2 + 152) = v56;
        *(v2 + 136) = v57;
        break;
      case 0xD:
LABEL_43:
        if (qword_28047A750 != -1)
        {
          swift_once();
        }

        v39 = sub_26C148A9C();
        __swift_project_value_buffer(v39, qword_28047ABB0);
        sub_26C0BE40C(&v66, &v60);
        v40 = sub_26C148A7C();
        v41 = sub_26C14900C();
        sub_26C0BE468(&v66);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v60 = v43;
          *v42 = 136315138;
          v44 = v43;
          switch(v69 >> 4)
          {
            case 1:
              v50 = 10;
              goto LABEL_78;
            case 2:
              v50 = 43;
              goto LABEL_78;
            case 3:
              v50 = 16;
              goto LABEL_78;
            case 4:
              v50 = 51;
              goto LABEL_78;
            case 5:
              v50 = 42;
              goto LABEL_78;
            case 6:
              v50 = 13;
              goto LABEL_78;
            case 7:
              v50 = 20;
              goto LABEL_78;
            case 8:
              v50 = 57;
              goto LABEL_78;
            case 9:
              v50 = 45;
              goto LABEL_78;
            case 0xA:
              v50 = 41;
              goto LABEL_78;
            case 0xB:
              v50 = 58;
              goto LABEL_78;
            case 0xC:
              v50 = -30149;
LABEL_78:
              v59[0] = v50;
              break;
            case 0xD:
              v59[0] = v66;
              break;
            default:
              v59[0] = 0;
              break;
          }

          v51 = ExtensionType.description.getter();
          v53 = sub_26C0E5DE8(v51, v52, &v60);

          *(v42 + 4) = v53;
          _os_log_impl(&dword_26C0B5000, v40, v41, "skipped unknown/unsupported client extension with raw value %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x26D69C3A0](v44, -1, -1);
          MEMORY[0x26D69C3A0](v42, -1, -1);
        }

        break;
      default:
        return;
    }
  }

  else
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v14 = sub_26C148A9C();
    __swift_project_value_buffer(v14, qword_28047ABB0);
    sub_26C0BE40C(&v66, &v60);
    v15 = sub_26C148A7C();
    v16 = sub_26C14900C();
    sub_26C0BE468(&v66);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v60 = v18;
      *v17 = 136315138;
      v19 = v18;
      switch(v69 >> 4)
      {
        case 1:
          v45 = 10;
          goto LABEL_61;
        case 2:
          v45 = 43;
          goto LABEL_61;
        case 3:
          v45 = 16;
          goto LABEL_61;
        case 4:
          v45 = 51;
          goto LABEL_61;
        case 5:
          v45 = 42;
          goto LABEL_61;
        case 6:
          v45 = 13;
          goto LABEL_61;
        case 7:
          v45 = 20;
          goto LABEL_61;
        case 8:
          v45 = 57;
          goto LABEL_61;
        case 9:
          v45 = 45;
          goto LABEL_61;
        case 0xA:
          v45 = 41;
          goto LABEL_61;
        case 0xB:
          v45 = 58;
          goto LABEL_61;
        case 0xC:
          v45 = -30149;
LABEL_61:
          v59[0] = v45;
          break;
        case 0xD:
          v59[0] = v66;
          break;
        default:
          v59[0] = 0;
          break;
      }

      v46 = ExtensionType.description.getter();
      v48 = sub_26C0E5DE8(v46, v47, &v60);

      *(v17 + 4) = v48;
      _os_log_impl(&dword_26C0B5000, v15, v16, "client offered duplicate extension of type %s on server hello", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D69C3A0](v19, -1, -1);
      MEMORY[0x26D69C3A0](v17, -1, -1);
    }

    *a2 = xmmword_26C14A8F0;
    *(a2 + 16) = 2;
    v60 = xmmword_26C14A8F0;
    LOBYTE(v61) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }
}