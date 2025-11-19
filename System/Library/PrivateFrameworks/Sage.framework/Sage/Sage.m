char *TextCompositionClient.init()()
{
  *&v0[OBJC_IVAR___TextCompositionClient_client] = 0;
  v1 = sub_1B5EA4470();
  sub_1B5E5FE38(v1);
  *&v0[OBJC_IVAR___TextCompositionClient_tcClient] = sub_1B5EA4460();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TextCompositionClient();
  v2 = objc_msgSendSuper2(&v9, sel_init);
  sub_1B5DEEE50(&qword_1ED7D2D40, v3, type metadata accessor for TextCompositionClient);
  v4 = sub_1B5DF33E0(&qword_1EB90F7B0, &unk_1B5EBAFE0);
  sub_1B5E5FE38(v4);
  v5 = v2;
  v6 = sub_1B5EA4DA0();
  v7 = *&v5[OBJC_IVAR___TextCompositionClient_client];
  *&v5[OBJC_IVAR___TextCompositionClient_client] = v6;

  return v5;
}

uint64_t sub_1B5DEEE50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *ExternalTextCompositionClient.init()()
{
  *&v0[OBJC_IVAR___ExternalTextCompositionClient_client] = 0;
  v1 = sub_1B5EA43C0();
  sub_1B5E5FE38(v1);
  *&v0[OBJC_IVAR___ExternalTextCompositionClient_tcClient] = sub_1B5EA43B0();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ExternalTextCompositionClient();
  v2 = objc_msgSendSuper2(&v9, sel_init);
  sub_1B5DEEE50(&qword_1ED7D2D38, v3, type metadata accessor for ExternalTextCompositionClient);
  v4 = sub_1B5DF33E0(&qword_1EB90F820, qword_1B5EBB098);
  sub_1B5E5FE38(v4);
  v5 = v2;
  v6 = sub_1B5EA4DA0();
  v7 = *&v5[OBJC_IVAR___ExternalTextCompositionClient_client];
  *&v5[OBJC_IVAR___ExternalTextCompositionClient_client] = v6;

  return v5;
}

uint64_t sub_1B5DEF00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 4);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v11 = a1 + *(a3 + 24);

    return sub_1B5DF46E0(v11, a2, v10);
  }
}

uint64_t sub_1B5DEF0A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 4) = a2 + 1;
  }

  else
  {
    v7 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v8 = v5 + *(a4 + 24);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

void sub_1B5DEF198(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B5DEF150();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1B5DEF2C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DEF28C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B5DEF328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
    v10 = a1 + *(a3 + 52);

    return sub_1B5DF46E0(v10, a2, v9);
  }
}

uint64_t sub_1B5DEF3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
    v8 = v5 + *(a4 + 52);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DEF4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B5EA4930();
  v7 = sub_1B5DFD8F0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_5:

    return sub_1B5DF46E0(a1 + v10, a2, v9);
  }

  v11 = sub_1B5EA5450();
  v12 = sub_1B5DFD8F0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[8] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B5DEF5A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1B5EA4930();
  v9 = sub_1B5DFD8F0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = sub_1B5EA5450();
    result = sub_1B5DFD8F0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[6];
  }

  return sub_1B5DF3658(a1 + v12, a2, a2, v11);
}

void sub_1B5DEF68C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  GenerativeExperiencesSession.tools.getter();
  *a2 = v4;
}

void sub_1B5DEF6BC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  GenerativeExperiencesSession.instructionsTemplateVariableBindings.getter();
  *a2 = v4;
}

uint64_t sub_1B5DEF718()
{
  v1 = sub_1B5E01D1C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B5DEF748()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B5DEF7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E028D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DEF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 28);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DEF890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 28);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DEFAB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1B5E046E0();
}

uint64_t sub_1B5DEFAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1B5DF3284();
}

uint64_t sub_1B5DEFAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1B5E0A864(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1B5DEFB14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B5DEFB90(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001CLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_1B5DEFBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E0BEC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DEFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 28);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DEFD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 28);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1B5DEFEF0(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return result;
}

uint64_t sub_1B5DEFF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E14380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DEFFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 40);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DF004C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 40);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DF0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E1A084();
  v6 = sub_1B5EA4DF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1B5DF46E0(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1B5DF0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B5EA4DF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B5DF3658(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B5DF02F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1A200(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5DF03F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_1B5DF46E0(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v8 = a1 + *(a3 + 44);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1B5DF04DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v9 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v10 = a1 + *(a4 + 44);
  }

  return sub_1B5DF3658(v10, a2, a2, v9);
}

uint64_t sub_1B5DF0638(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B5DF0694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E200E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF0828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityResult();
  v5 = sub_1B5DF46E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DF0870(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PriorityResult();

  return sub_1B5DF3658(a1, v5, a3, v6);
}

uint64_t sub_1B5DF095C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  if (v0[7])
  {
    v3 = v0[8];
  }

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B5DF0AB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B5DF0AF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B5DF0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5EA5450();
  v7 = sub_1B5DFD8F0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1B5DF46E0(v10, a2, v9);
  }

  v11 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  v12 = sub_1B5DFD8F0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B5DF0C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B5EA5450();
  v9 = sub_1B5DFD8F0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
    result = sub_1B5DFD8F0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1B5DF3658(v12, a2, a2, v11);
}

uint64_t sub_1B5DF0D2C()
{
  v1 = sub_1B5EA4EE0();
  sub_1B5DF5DA8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B5DF0DEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B5DF0EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA5450();
    v9 = a1 + *(a3 + 24);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DF0F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA5450();
    v8 = v5 + *(a4 + 24);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DF1040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA42B0();

  return sub_1B5DF46E0(a1, a2, v4);
}

uint64_t sub_1B5DF1088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA42B0();

  return sub_1B5DF3658(a1, a2, a2, v4);
}

uint64_t sub_1B5DF10FC()
{
  MEMORY[0x1B8C8B3E0](v0 + 16);
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B5DF1130()
{
  v1 = sub_1B5EA4E90();
  sub_1B5DF5EB8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B5DF11B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1B5E5FB08();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1B5DF11FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B5DF123C()
{
  v1 = *(v0 + 16);

  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B5DF1278()
{
  v1 = sub_1B5EA5160();
  sub_1B5DF5DA8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B5DF1450()
{
  v39 = sub_1B5EA5470();
  sub_1B5DF5DA8(v39);
  v2 = v1;
  v41 = *(v1 + 80);
  v34 = (v41 + 16) & ~v41;
  v4 = (*(v3 + 64) + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v4;
  v36 = sub_1B5EA4820();
  sub_1B5DF5DA8(v36);
  v6 = v5;
  v40 = *(v5 + 80);
  v7 = (v4 + v40 + 8) & ~v40;
  v9 = *(v8 + 64);
  v10 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v10);
  v12 = *(v11 + 80);
  v13 = (v7 + v9 + v12) & ~v12;
  v37 = *(v14 + 64);
  v38 = sub_1B5EA4D20();
  sub_1B5DF5DA8(v38);
  v16 = v15;
  v17 = *(v15 + 80);
  v33 = *(v18 + 64);
  v35 = sub_1B5EA4CC0();
  sub_1B5DF5DA8(v35);
  v20 = v19;
  v21 = *(v19 + 80);
  v31 = *(v22 + 64);
  (*(v2 + 8))(v0 + v34, v39);

  (*(v6 + 8))(v0 + v7, v36);
  v23 = sub_1B5EA5290();
  if (!sub_1B5DF46E0(v0 + v13, 1, v23))
  {
    sub_1B5E2D1D8(v23);
    (*(v24 + 8))(v0 + v13, v23);
  }

  v25 = v41 | v40 | v17 | v12 | v21;
  v26 = (v13 + v37 + v17) & ~v17;
  v27 = (v26 + v33 + v21) & ~v21;
  v28 = (v31 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v16 + 8))(v0 + v26, v38);
  (*(v20 + 8))(v0 + v27, v35);
  v29 = *(v0 + v28 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v28 + 16, v25 | 7);
}

uint64_t sub_1B5DF1774()
{
  v1 = *(v0 + 24);

  sub_1B5E5F8F8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B5DF17A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B5DF17F8()
{
  sub_1B5E638E0();
  sub_1B5EA4990();
  v0 = sub_1B5E5F324();

  return sub_1B5DF46E0(v0, v1, v2);
}

uint64_t sub_1B5DF1834()
{
  sub_1B5E638E0();
  sub_1B5EA4990();
  v1 = sub_1B5E5F324();

  return sub_1B5DF3658(v1, v2, v0, v3);
}

uint64_t sub_1B5DF1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E638E0();
  v6 = sub_1B5EA4950();
  v7 = sub_1B5DFD8F0(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return sub_1B5DF46E0(v10, v3, v9);
  }

  v11 = sub_1B5EA46F0();
  v12 = sub_1B5DFD8F0(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v4 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B5DF195C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1B5E638E0();
  v8 = sub_1B5EA4950();
  v9 = sub_1B5DFD8F0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1B5EA46F0();
    result = sub_1B5DFD8F0(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return sub_1B5DF3658(v12, v4, v4, v11);
}

uint64_t sub_1B5DF1A90()
{
  v1 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  sub_1B5DF5DA8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B5DF1B5C()
{
  sub_1B5E6FB9C();
  v2 = type metadata accessor for Field.FieldType(0);

  return sub_1B5DF46E0(v1, v0, v2);
}

uint64_t sub_1B5DF1BA0()
{
  sub_1B5E6FB9C();
  type metadata accessor for Field.FieldType(0);
  v0 = sub_1B5E6FBBC();

  return sub_1B5DF3658(v0, v1, v2, v3);
}

uint64_t sub_1B5DF1BDC()
{
  sub_1B5E6FB9C();
  v2 = sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);

  return sub_1B5DF46E0(v1, v0, v2);
}

uint64_t sub_1B5DF1C2C()
{
  sub_1B5E6FB9C();
  sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  v0 = sub_1B5E6FBBC();

  return sub_1B5DF3658(v0, v1, v2, v3);
}

uint64_t sub_1B5DF1CB8()
{
  swift_weakDestroy();
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B5DF1CEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B5DF1D24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B5DF1D74()
{
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B5DF1DA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B5DF2448(char a1)
{
  if (!a1)
  {
    return 0x746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000018;
}

uint64_t sub_1B5DF24A4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1B5DF2438(*a1, *a2);
}

uint64_t sub_1B5DF24BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1B5DF37F4(*v1);
}

uint64_t sub_1B5DF24E0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1B5DF3210(a1, *v2);
}

uint64_t sub_1B5DF24F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1B5DF2448(*v1);
}

uint64_t sub_1B5DF2500@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1B5E86E10();
  *a2 = result;
  return result;
}

uint64_t sub_1B5DF25A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  if (v0[10])
  {
    v4 = v0[11];
  }

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B5DF2604()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B5DF263C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B5DF286C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B5DF28B4()
{
  v1 = *(v0 + 24);

  v2 = sub_1B5E907FC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B5DF2920()
{
  sub_1B5EA5710();
}

uint64_t sub_1B5DF2A0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B5EA5B40();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1B5DF2A88@<X0>(uint64_t *a1@<X8>)
{
  result = TextCompositionClient.TCDocumentType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xEB00000000656761;
  return result;
}

uint64_t sub_1B5DF300C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B5DF305C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B5DF3094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 72);

  v3 = *(v0 + 112);

  v4 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B5DF30F4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B5DF3158()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t PriorityResult.inferenceEnvironmentInfo.getter()
{
  sub_1B5DF5E80();
  v2 = type metadata accessor for PriorityResult();
  return sub_1B5DF43C8(v1 + *(v2 + 24), v0, &qword_1EB90D990, &qword_1B5EAE990);
}

uint64_t type metadata accessor for PriorityResult()
{
  result = qword_1EB90D7D8;
  if (!qword_1EB90D7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5DF33E0(uint64_t *a1, uint64_t *a2)
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

uint64_t PriorityResult.inferenceEnvironmentInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PriorityResult() + 24);

  return sub_1B5DF346C(a1, v3);
}

uint64_t sub_1B5DF346C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PriorityResult.importance.setter(float a1)
{
  result = type metadata accessor for PriorityResult();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PriorityResult.init(urgency:llmClassifierWasInvoked:inferenceEnvironmentInfo:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = type metadata accessor for PriorityResult();
  v9 = *(v8 + 24);
  type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v10, v11, v12, v13);
  *(a3 + *(v8 + 28)) = -1082130432;
  *a3 = a4;
  *(a3 + 4) = a1;

  return sub_1B5DF346C(a2, a3 + v9);
}

uint64_t sub_1B5DF3680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E65677275 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001B5EA7820 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001B5EA7840 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B5EA5F00();

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

uint64_t sub_1B5DF37F4(unsigned __int8 a1)
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](a1);
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF3848(char a1)
{
  result = 0x79636E65677275;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6174726F706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5DF38E4()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  sub_1B5DF3210(v3, v1);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF3930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF3680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF3978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF37EC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF39A0(uint64_t a1)
{
  v2 = sub_1B5DF3C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF39DC(uint64_t a1)
{
  v2 = sub_1B5DF3C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PriorityResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90D998, &qword_1B5EAE998);
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF3C40();
  sub_1B5EA6040();
  v14 = *v3;
  v22[15] = 0;
  sub_1B5DF5EC8();
  sub_1B5EA5E80();
  if (!v2)
  {
    v15 = *(v3 + 4);
    v22[14] = 1;
    sub_1B5DF5EC8();
    sub_1B5EA5E60();
    v16 = type metadata accessor for PriorityResult();
    v17 = *(v16 + 24);
    v22[13] = 2;
    type metadata accessor for InferenceEnvironmentInfo();
    sub_1B5DF5DFC();
    sub_1B5DF4004(v18, v19);
    sub_1B5DF5EC8();
    sub_1B5EA5E40();
    v20 = *(v3 + *(v16 + 28));
    v22[12] = 3;
    sub_1B5DF5EC8();
    sub_1B5EA5E80();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1B5DF3BFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B5DF3C40()
{
  result = qword_1EB90D7F8;
  if (!qword_1EB90D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7F8);
  }

  return result;
}

uint64_t PriorityResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v35 - v6;
  v40 = sub_1B5DF33E0(&qword_1EB90D9A0, &qword_1B5EAE9A0);
  v7 = sub_1B5DF5DA8(v40);
  v37 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v35 - v11;
  v13 = type metadata accessor for PriorityResult();
  v14 = sub_1B5DF5EB8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DF5DBC();
  v18 = *(v17 + 24);
  v19 = type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v20, v21, v22, v19);
  v23 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF3C40();
  v39 = v12;
  v24 = v41;
  sub_1B5EA6030();
  if (v24)
  {
    sub_1B5DF3FB8(a1);
    return sub_1B5DF4428(v2 + v18, &qword_1EB90D990, &qword_1B5EAE990);
  }

  else
  {
    v35 = a1;
    v25 = v38;
    v41 = v18;
    v45 = 0;
    sub_1B5EA5DA0();
    *v2 = v26;
    v44 = 1;
    *(v2 + 4) = sub_1B5EA5D80() & 1;
    v43 = 2;
    sub_1B5DF5DFC();
    sub_1B5DF4004(v27, v28);
    sub_1B5EA5D60();
    sub_1B5DF346C(v25, v2 + v41);
    v42 = 3;
    sub_1B5EA5DA0();
    v30 = v29;
    v31 = *(v13 + 28);
    v32 = sub_1B5DF5EA8();
    v33(v32);
    *(v2 + v31) = v30;
    sub_1B5DF404C(v2, v36);
    sub_1B5DF3FB8(v35);
    return sub_1B5DF40B0(v2);
  }
}

uint64_t sub_1B5DF3FB8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B5DF4004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5DF404C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DF40B0(uint64_t a1)
{
  v2 = type metadata accessor for PriorityResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PriorityResult.init(urgency:llmClassifierWasInvoked:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for PriorityResult();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v9, v10, v11, v8);
  *(a2 + *(v6 + 28)) = -1082130432;
  *a2 = a3;
  *(a2 + 4) = a1;
  sub_1B5DF4428(a2 + v7, &qword_1EB90D990, &qword_1B5EAE990);
  sub_1B5DF5DF0();

  return sub_1B5DF3658(v12, v13, v14, v8);
}

uint64_t PriorityResult.init(urgency:importance:)(float a1, float a2)
{
  sub_1B5DF5E80();
  v5 = type metadata accessor for PriorityResult();
  v6 = *(v5 + 24);
  type metadata accessor for InferenceEnvironmentInfo();
  sub_1B5DF5DF0();
  result = sub_1B5DF3658(v7, v8, v9, v10);
  v12 = *(v5 + 28);
  *v2 = a1;
  *(v2 + v12) = a2;
  *(v2 + 4) = 0;
  return result;
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete5query10parameters15promptSanitizer08responseJ015clientRequestID15TokenGeneration0O6StreamVySSG9PromptKit012ChatMessagesR0V_AJ18SamplingParametersV0B6Models014StringRenderedrJ0VAS0y8ResponseJ0VSSSgtFfA2__0()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4C90();
  v1 = sub_1B5DF5DA8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DF5DD4();
  v4 = sub_1B5EA4C80();
  v5 = sub_1B5DF5DA8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DF5DBC();
  sub_1B5EA4CA0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  v12 = *MEMORY[0x1E69A1390];
  v13 = sub_1B5DF5E70();
  v14(v13);
  sub_1B5EA4C70();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v15, v16, v17, v18);
  v19 = *MEMORY[0x1E69A1398];
  v20 = sub_1B5DF5E60();
  v21(v20);
  sub_1B5DF5E50();
  return sub_1B5EA4CB0();
}

uint64_t sub_1B5DF43C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B5DF33E0(a3, a4);
  sub_1B5DF5EB8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B5DF4428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B5DF33E0(a2, a3);
  sub_1B5DF5EB8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete10generating5query10parameters15promptSanitizer08responseK015clientRequestID15TokenGeneration0P6StreamVyxGxm_9PromptKit012ChatMessagesS0VAK18SamplingParametersV0B6Models014StringRenderedsK0VAT0z8ResponseK0VSSSgt0B19FunctionsFoundation9GenerableRzlFfA2__0()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4CF0();
  v1 = sub_1B5DF5DA8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DF5DD4();
  v4 = sub_1B5EA4CE0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DF5DBC();
  sub_1B5EA4D00();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  v12 = *MEMORY[0x1E69A13C0];
  v13 = sub_1B5DF5E70();
  v14(v13);
  sub_1B5EA4CD0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v15, v16, v17, v18);
  v19 = *MEMORY[0x1E69A13D0];
  v20 = sub_1B5DF5E60();
  v21(v20);
  sub_1B5DF5E50();
  return sub_1B5EA4D10();
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete5query10parameters15promptSanitizer08responseJ015clientRequestID15TokenGeneration0O6StreamVySSG9PromptKit012ChatMessagesR0V_AJ18SamplingParametersV0B6Models014StringRenderedrJ0VAS0y8ResponseJ0VSSSgtFfA0__0()
{
  v1 = sub_1B5DF33E0(&qword_1EB90D9A8, &qword_1B5EAE9A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B5DF5E8C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DF5F08();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v4, v5, v6, v7);
  sub_1B5DF5EE8();
  sub_1B5DF5ED4();
  sub_1B5DF5E14(MEMORY[0x1E69E7CD0], v9);
  sub_1B5EA4800();
  sub_1B5EA47E0();
  sub_1B5EA47F0();
  return sub_1B5DF4428(v0, &qword_1EB90D9A8, &qword_1B5EAE9A8);
}

void sub_1B5DF471C()
{
  sub_1B5DF47A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B5DF47A0()
{
  if (!qword_1ED7D2C08[0])
  {
    type metadata accessor for InferenceEnvironmentInfo();
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7D2C08);
    }
  }
}

__n128 sub_1B5DF47F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B5DF4808(uint64_t a1, int a2)
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

uint64_t sub_1B5DF4828(uint64_t result, int a2, int a3)
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

uint64_t sub_1B5DF4870(uint64_t a1, int a2)
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

uint64_t sub_1B5DF4890(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PriorityResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PriorityResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1B5DF4A68()
{
  result = qword_1EB90D9B8;
  if (!qword_1EB90D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D9B8);
  }

  return result;
}

uint64_t sub_1B5DF4AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B5DF5CFC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF4B2C(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B5DF4B98(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B5DF4C04(void *a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B5DF4C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B5DF4D10@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF4D40(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B5DF4DAC(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B5DF4E18(void *a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B5DF4EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B5DF4F24()
{
  v2 = *v0;
  sub_1B5EA5FD0();
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF4F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B5EA5670();

  *a2 = v5;
  return result;
}

uint64_t sub_1B5DF4FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B5DF4FF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B5DF4FFC(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA20, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B5DF5068(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA20, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B5DF50D4(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B5DF5140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B5DF5218(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D9E0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B5DF5284(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D9E0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B5DF52F0(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B5DF535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1B5DF55A4()
{
  result = qword_1EB90DA08;
  if (!qword_1EB90DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA08);
  }

  return result;
}

unint64_t sub_1B5DF5898()
{
  result = qword_1EB90D7E8;
  if (!qword_1EB90D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7E8);
  }

  return result;
}

unint64_t sub_1B5DF58F0()
{
  result = qword_1EB90D7F0;
  if (!qword_1EB90D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7F0);
  }

  return result;
}

uint64_t sub_1B5DF5944(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D1E0, type metadata accessor for TCTextCompositionAssistantResponseType);
  v3 = sub_1B5DF4004(&qword_1EB90DA78, type metadata accessor for TCTextCompositionAssistantResponseType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1B5DF5A14(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B5DF5B38()
{
  sub_1B5EA56A0();
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v0 = sub_1B5EA6020();

  return v0;
}

uint64_t sub_1B5DF5BAC()
{
  sub_1B5EA56A0();
  sub_1B5EA5710();
}

uint64_t sub_1B5DF5C00(uint64_t a1, id *a2)
{
  v3 = sub_1B5EA5690();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B5DF5C84(uint64_t a1, id *a2)
{
  result = sub_1B5EA5680();
  *a2 = 0;
  return result;
}

uint64_t sub_1B5DF5CFC()
{
  sub_1B5EA56A0();
  v0 = sub_1B5EA5670();

  return v0;
}

uint64_t sub_1B5DF5D34()
{
  v0 = sub_1B5EA56A0();
  v1 = MEMORY[0x1B8C8A3C0](v0);

  return v1;
}

uint64_t sub_1B5DF5E14@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  LOBYTE(a2) = v3;

  return MEMORY[0x1EEE49F08](v2, 0, 1, 0, 1, 0, 1, 0, a2, a1, 0);
}

uint64_t sub_1B5DF5EE8()
{

  return sub_1B5DF43C8(v2, v3, v0, v1);
}

uint64_t sub_1B5DF5F08()
{

  return MEMORY[0x1EEE49E70](0);
}

uint64_t ClientProcessInfo.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void ClientProcessInfo.init(auditToken:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v39 = v9;
  v10 = sub_1B5EA4110();
  v37 = sub_1B5DF5DA8(v10);
  v38 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B5EA4100();
  v17 = sub_1B5DF5DA8(v16);
  v40 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  v26 = v8;
  v27 = v6;
  v28 = v4;
  v29 = sub_1B5EA53C0();
  if (!v0)
  {
    v31 = v40;
    if (v30)
    {
      *v41.val = v26;
      *&v41.val[2] = v27;
      *&v41.val[4] = v28;
      *&v41.val[6] = v2;
      v32 = v29;
      v33 = v30;
      v34 = audit_token_to_pid(&v41);
      v35 = v39;
      *v39 = v32;
      v35[1] = v33;
      *(v35 + 4) = v34;
    }

    else
    {
      sub_1B5EA40F0();
      (*(v31 + 16))(v23, v25, v16);
      sub_1B5DF6A60(MEMORY[0x1E69E7CC0]);
      sub_1B5DF6B98();
      v36 = v37;
      sub_1B5EA4220();
      sub_1B5EA40C0();
      (*(v38 + 8))(v15, v36);
      swift_willThrow();
      (*(v31 + 8))(v25, v16);
    }
  }

  sub_1B5DF7180();
}

uint64_t ClientProcessInfo.init(applicationIdentifier:processIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void ClientProcessInfo.init(processIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DF7168();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1B5EA53B0();
  v28 = sub_1B5DF5DA8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1B5EA53D0();
  if (!v20)
  {
    if (!v36)
    {
      sub_1B5EA4E10();
      v37 = sub_1B5EA5380();
      v38 = sub_1B5EA5A40();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v24;
        _os_log_impl(&dword_1B5DED000, v37, v38, "Could not look up bundle identifier for pid %d", v39, 8u);
        MEMORY[0x1B8C8B330](v39, -1, -1);
      }

      (*(v30 + 8))(v34, v27);
      v36 = 0xE700000000000000;
      v35 = 0x6E776F6E6B6E75;
    }

    *v26 = v35;
    *(v26 + 8) = v36;
    *(v26 + 16) = v24;
  }

  sub_1B5DF7180();
}

BOOL static ClientProcessInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B5EA5F00();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B5DF63B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001B5EA8830 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B5EA8850 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

uint64_t sub_1B5DF6498(char a1)
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](a1 & 1);
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF64E0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1B5DF6520()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  sub_1B5DF3250(v3, v1);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF656C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF63B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF6594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF6490();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF65BC(uint64_t a1)
{
  v2 = sub_1B5DF6D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF65F8(uint64_t a1)
{
  v2 = sub_1B5DF6D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ClientProcessInfo.encode(to:)()
{
  sub_1B5DF7168();
  v17 = v1;
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90DA88, &qword_1B5EAF2A0);
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v18 = *(v0 + 4);
  v14 = v3[4];
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5DF6D1C();
  sub_1B5EA6040();
  v15 = v17;
  sub_1B5EA5E50();
  if (!v15)
  {
    sub_1B5EA5EB0();
  }

  (*(v7 + 8))(v11, v4);
  sub_1B5DF7180();
}

uint64_t ClientProcessInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_1B5EA5710();
  return sub_1B5EA6000();
}

uint64_t ClientProcessInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  sub_1B5EA6000();
  return sub_1B5EA6020();
}

void ClientProcessInfo.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DA90, &qword_1B5EAF2A8);
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v2[4];
  sub_1B5DF3BFC(v2, v2[3]);
  sub_1B5DF6D1C();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    v10 = sub_1B5EA5D70();
    v12 = v11;
    v13 = sub_1B5EA5DD0();
    v14 = sub_1B5DF7158();
    v15(v14);
    *v4 = v10;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5DF6A0C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1B5EA5FD0();
  ClientProcessInfo.hash(into:)();
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF6A60(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1B5DF33E0(&qword_1EB90DAA8, &qword_1B5EAF4C8);
  v2 = sub_1B5EA5CE0();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1B5DF70D8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1B5DF6BF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1B5DF7148(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B5DF6B98()
{
  result = qword_1EB90DA80;
  if (!qword_1EB90DA80)
  {
    sub_1B5EA4110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA80);
  }

  return result;
}

unint64_t sub_1B5DF6BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v6 = sub_1B5EA6020();

  return sub_1B5DF6C68(a1, a2, v6);
}

unint64_t sub_1B5DF6C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B5EA5F00() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B5DF6D1C()
{
  result = qword_1EB90D098;
  if (!qword_1EB90D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D098);
  }

  return result;
}

unint64_t sub_1B5DF6D74()
{
  result = qword_1EB90DA98;
  if (!qword_1EB90DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA98);
  }

  return result;
}

__n128 sub_1B5DF6DC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF6DDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5DF6E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientProcessInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientProcessInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1B5DF6FD4()
{
  result = qword_1EB90DAA0;
  if (!qword_1EB90DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAA0);
  }

  return result;
}

unint64_t sub_1B5DF702C()
{
  result = qword_1EB90D088;
  if (!qword_1EB90D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D088);
  }

  return result;
}

unint64_t sub_1B5DF7084()
{
  result = qword_1EB90D090;
  if (!qword_1EB90D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D090);
  }

  return result;
}

uint64_t sub_1B5DF70D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DAB0, &unk_1B5EAF4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B5DF7148(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B5DF71AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697665446E6FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B5EA88A0 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001B5EA88C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
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

uint64_t sub_1B5DF72D0(char a1)
{
  if (!a1)
  {
    return 0x6563697665446E6FLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000014;
}

uint64_t sub_1B5DF735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF71AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF7384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF72C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF73AC(uint64_t a1)
{
  v2 = sub_1B5DF78CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF73E8(uint64_t a1)
{
  v2 = sub_1B5DF78CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF7444@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF7328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B5DF7470(uint64_t a1)
{
  v2 = sub_1B5DF7920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF74AC(uint64_t a1)
{
  v2 = sub_1B5DF7920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF74E8(uint64_t a1)
{
  v2 = sub_1B5DF79C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF7524(uint64_t a1)
{
  v2 = sub_1B5DF79C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF7560(uint64_t a1)
{
  v2 = sub_1B5DF7974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF759C(uint64_t a1)
{
  v2 = sub_1B5DF7974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceEnvironmentInfo.ExecutionEnvironment.encode(to:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90DAB8, &qword_1B5EAF4E0);
  v4 = sub_1B5DF5DA8(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFA50C();
  v44 = v9;
  v10 = sub_1B5DF33E0(&qword_1EB90DAC0, &qword_1B5EAF4E8);
  v11 = sub_1B5DF5DA8(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFA50C();
  v41 = v16;
  v17 = sub_1B5DF33E0(&qword_1EB90DAC8, &qword_1B5EAF4F0);
  v18 = sub_1B5DF5DA8(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v25 = sub_1B5DF33E0(&qword_1EB90DAD0, &qword_1B5EAF4F8);
  sub_1B5DF5DA8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF78CC();
  sub_1B5EA6040();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_1B5DF7974();
      v24 = v41;
      sub_1B5DFA494();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_1B5DF7920();
      v24 = v44;
      sub_1B5DFA494();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_1B5DF79C8();
    sub_1B5DFA494();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

unint64_t sub_1B5DF78CC()
{
  result = qword_1EB90D2D8;
  if (!qword_1EB90D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2D8);
  }

  return result;
}

unint64_t sub_1B5DF7920()
{
  result = qword_1EB90DAD8;
  if (!qword_1EB90DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAD8);
  }

  return result;
}

unint64_t sub_1B5DF7974()
{
  result = qword_1EB90DAE0;
  if (!qword_1EB90DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAE0);
  }

  return result;
}

unint64_t sub_1B5DF79C8()
{
  result = qword_1EB90D2C0;
  if (!qword_1EB90D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2C0);
  }

  return result;
}

uint64_t InferenceEnvironmentInfo.ExecutionEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v1);
  return sub_1B5EA6020();
}

void InferenceEnvironmentInfo.ExecutionEnvironment.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  v75 = sub_1B5DF33E0(&qword_1EB90DAE8, &qword_1B5EAF500);
  sub_1B5DF5DA8(v75);
  v72 = v3;
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFA50C();
  v74 = v7;
  v8 = sub_1B5DF33E0(&qword_1EB90DAF0, &qword_1B5EAF508);
  v9 = sub_1B5DF5DA8(v8);
  v69 = v10;
  v70 = v9;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v16 = sub_1B5DF33E0(&qword_1EB90DAF8, &qword_1B5EAF510);
  sub_1B5DF5DA8(v16);
  v68 = v17;
  v19 = *(v18 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = sub_1B5DF33E0(&qword_1EB90DB00, &qword_1B5EAF518);
  sub_1B5DF5DA8(v23);
  v73 = v24;
  v26 = *(v25 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF78CC();
  v31 = v76;
  sub_1B5EA6030();
  if (v31)
  {
    goto LABEL_11;
  }

  v65 = v16;
  v66 = v22;
  v67 = v15;
  v33 = v74;
  v32 = v75;
  v76 = a1;
  v34 = sub_1B5EA5DE0();
  sub_1B5DF9704(v34, 0);
  if (v37 != v38 >> 1)
  {
    v64 = 0;
    if (v37 >= (v38 >> 1))
    {
      __break(1u);
      return;
    }

    LODWORD(v39) = *(v36 + v37);
    sub_1B5DFA3A8(v37 + 1, v38 >> 1, v35, v36, v37, v38);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v72;
    if (v44)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          v78 = 1;
          sub_1B5DF7974();
          v46 = v67;
          sub_1B5DFA500();
          v47 = v64;
          sub_1B5EA5D10();
          v48 = v71;
          v49 = v23;
          v50 = v73;
          if (v47)
          {
            (*(v73 + 8))(v29, v49);
LABEL_17:
            swift_unknownObjectRelease();
            a1 = v76;
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v69 + 8))(v46, v70);
          (*(v50 + 8))(v29, v49);
        }

        else
        {
          LODWORD(v70) = v39;
          v79 = 2;
          sub_1B5DF7920();
          sub_1B5DFA500();
          v59 = v64;
          sub_1B5EA5D10();
          v48 = v71;
          v39 = v23;
          v60 = v73;
          if (v59)
          {
            (*(v73 + 8))(v29, v39);
            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          (*(v45 + 8))(v33, v32);
          (*(v60 + 8))(v29, v39);
          LOBYTE(v39) = v70;
        }
      }

      else
      {
        v77 = 0;
        sub_1B5DF79C8();
        v55 = v66;
        sub_1B5DFA500();
        v56 = v64;
        sub_1B5EA5D10();
        if (v56)
        {
          v57 = sub_1B5DFA4CC();
          v58(v57);
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        (*(v68 + 8))(v55, v65);
        v61 = sub_1B5DFA4CC();
        v62(v61);
        v48 = v71;
      }

      *v48 = v39;
      sub_1B5DF3FB8(v76);
      return;
    }
  }

  v51 = sub_1B5EA5BF0();
  swift_allocError();
  v53 = v52;
  v54 = *(sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520) + 48);
  *v53 = &type metadata for InferenceEnvironmentInfo.ExecutionEnvironment;
  sub_1B5EA5D20();
  sub_1B5EA5BE0();
  (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v73 + 8))(v29, v23);
  a1 = v76;
LABEL_11:
  sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5DF8060()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v1);
  return sub_1B5EA6020();
}

uint64_t InferenceEnvironmentInfo.modelIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.modelIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.modelVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.modelVersion.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.tokenizerIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.tokenizerIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.tokenizerVersion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.tokenizerVersion.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.baseModelIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.baseModelIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.baseModelVersion.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.baseModelVersion.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.draftModelIdentifier.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.draftModelIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.draftModelVersion.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return sub_1B5DFA488();
}

uint64_t InferenceEnvironmentInfo.draftModelVersion.setter()
{
  sub_1B5DFA47C();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.detectedLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceEnvironmentInfo() + 52);

  return sub_1B5DF9788(v3, a1);
}

uint64_t InferenceEnvironmentInfo.detectedLanguage.setter()
{
  v2 = v1 + *(sub_1B5DFA518() + 52);

  return sub_1B5DF97F8(v0, v2);
}

uint64_t InferenceEnvironmentInfo.init(builder:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  v4 = type metadata accessor for InferenceEnvironmentInfo();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v5 = v4[13];
  v6 = sub_1B5EA4350();
  sub_1B5DF3658(a2 + v5, 1, 1, v6);
  v7 = a2 + v4[14];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v4[15];
  *v8 = 0;
  *(v8 + 8) = 1;
  return a1(a2);
}

__n128 InferenceEnvironmentInfo.init(modelIdentifier:modelVersion:tokenizerIdentifier:tokenizerVersion:baseModelIdentifier:baseModelVersion:draftModelIdentifier:draftModelVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = 3;
  v20 = type metadata accessor for InferenceEnvironmentInfo();
  v21 = v20[13];
  v22 = sub_1B5EA4350();
  sub_1B5DF3658(a9 + v21, 1, 1, v22);
  v23 = a9 + v20[14];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a9 + v20[15];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  result = a12;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14;
  return result;
}

uint64_t sub_1B5DF88E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B5EA88E0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001B5EA8900 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001B5EA8920 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001B5EA8940 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001B5EA8960 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001B5EA8980 == a2;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001B5EA89A0 == a2;
                  if (v13 || (sub_1B5EA5F00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001B5EA89C0 == a2;
                    if (v14 || (sub_1B5EA5F00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000018 && 0x80000001B5EA89E0 == a2;
                      if (v15 || (sub_1B5EA5F00() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000019 && 0x80000001B5EA8A00 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1B5EA5F00();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1B5DF8C98(char a1)
{
  result = 0x6564496C65646F6DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265566C65646F6DLL;
      break;
    case 3:
    case 5:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B5DF8E00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF8E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF88E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF8E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF8C90();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF8EA4(uint64_t a1)
{
  v2 = sub_1B5DF9868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF8EE0(uint64_t a1)
{
  v2 = sub_1B5DF9868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceEnvironmentInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90DB18, &qword_1B5EAF530);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-v11];
  v13 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF9868();
  sub_1B5EA6040();
  v33[15] = *v3;
  v33[14] = 0;
  sub_1B5DF98BC();
  sub_1B5EA5E40();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v33[13] = 1;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v16 = *(v3 + 24);
    v17 = *(v3 + 32);
    v33[12] = 2;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v18 = *(v3 + 40);
    v19 = *(v3 + 48);
    v33[11] = 3;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v20 = *(v3 + 56);
    v21 = *(v3 + 64);
    v33[10] = 4;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v22 = *(v3 + 72);
    v23 = *(v3 + 80);
    v33[9] = 5;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v24 = *(v3 + 88);
    v25 = *(v3 + 96);
    v33[8] = 6;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v26 = *(v3 + 104);
    v27 = *(v3 + 112);
    v33[7] = 7;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v28 = *(v3 + 120);
    v29 = *(v3 + 128);
    v33[6] = 8;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v30 = type metadata accessor for InferenceEnvironmentInfo();
    v31 = v30[13];
    v33[5] = 9;
    sub_1B5EA4350();
    sub_1B5DF99C0(&qword_1EB90D910);
    sub_1B5EA5E40();
    sub_1B5DFA4E0((v3 + v30[14]));
    v33[4] = 10;
    sub_1B5DFA44C();
    sub_1B5EA5E30();
    sub_1B5DFA4E0((v3 + v30[15]));
    v33[3] = 11;
    sub_1B5DFA44C();
    sub_1B5EA5E30();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t InferenceEnvironmentInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = *(*(sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528) - 8) + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFA50C();
  v52 = v5;
  v54 = sub_1B5DF33E0(&qword_1EB90DB20, &qword_1B5EAF538);
  sub_1B5DF5DA8(v54);
  v51 = v6;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for InferenceEnvironmentInfo();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 3;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v17 = v13[15];
  v18 = sub_1B5EA4350();
  sub_1B5DF3658(&v16[v17], 1, 1, v18);
  v19 = &v16[v13[16]];
  *v19 = 0;
  v19[8] = 1;
  v20 = v13[17];
  v56 = a1;
  v57 = v16;
  v21 = &v16[v20];
  *v21 = 0;
  v21[8] = 1;
  v22 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF9868();
  v53 = v11;
  v23 = v55;
  sub_1B5EA6030();
  if (v23)
  {
    v26 = v57;
    sub_1B5DF3FB8(v56);
    v48 = v26;
  }

  else
  {
    v55 = v17;
    v49 = v19;
    v24 = v51;
    v25 = v52;
    v69 = 0;
    sub_1B5DF996C();
    sub_1B5DFA500();
    sub_1B5EA5D60();
    v28 = v57;
    *v57 = v70;
    v68 = 1;
    v28[1] = sub_1B5DFA4B4();
    v28[2] = v29;
    v67 = 2;
    v28[3] = sub_1B5DFA4B4();
    v28[4] = v30;
    v66 = 3;
    v28[5] = sub_1B5DFA4B4();
    v28[6] = v31;
    v65 = 4;
    v28[7] = sub_1B5DFA4B4();
    v28[8] = v32;
    v64 = 5;
    v28[9] = sub_1B5DFA4B4();
    v28[10] = v33;
    v63 = 6;
    v28[11] = sub_1B5DFA4B4();
    v28[12] = v34;
    v62 = 7;
    v35 = sub_1B5DFA4B4();
    v36 = v57;
    v57[13] = v35;
    *(v36 + 112) = v37;
    v61 = 8;
    v38 = sub_1B5DFA4B4();
    v39 = v57;
    v57[15] = v38;
    *(v39 + 128) = v40;
    v60 = 9;
    sub_1B5DF99C0(&qword_1EB90D908);
    sub_1B5EA5D60();
    sub_1B5DF97F8(v25, v57 + v55);
    v59 = 10;
    v41 = sub_1B5EA5D50();
    v42 = v49;
    *v49 = v41;
    *(v42 + 8) = v43 & 1;
    v58 = 11;
    v44 = sub_1B5EA5D50();
    v46 = v45;
    (*(v24 + 8))(v53, v54);
    *v21 = v44;
    v21[8] = v46 & 1;
    v47 = v57;
    sub_1B5DF9A04(v57, v50);
    sub_1B5DF3FB8(v56);
    v48 = v47;
  }

  return sub_1B5DF9910(v48);
}

void sub_1B5DF9704(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1B5DFA45C();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for InferenceEnvironmentInfo()
{
  result = qword_1ED7D2C60;
  if (!qword_1ED7D2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5DF9788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DF97F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5DF9868()
{
  result = qword_1ED7D1F58;
  if (!qword_1ED7D1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F58);
  }

  return result;
}

unint64_t sub_1B5DF98BC()
{
  result = qword_1EB90CF10;
  if (!qword_1EB90CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF10);
  }

  return result;
}

uint64_t sub_1B5DF9910(uint64_t a1)
{
  v2 = type metadata accessor for InferenceEnvironmentInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5DF996C()
{
  result = qword_1EB90CF08;
  if (!qword_1EB90CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF08);
  }

  return result;
}

uint64_t sub_1B5DF99C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B5EA4350();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5DF9A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceEnvironmentInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5DF9A6C()
{
  result = qword_1EB90DB28;
  if (!qword_1EB90DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB28);
  }

  return result;
}

void sub_1B5DF9AE8()
{
  sub_1B5DF9C34(319, qword_1ED7D2C70);
  if (v0 <= 0x3F)
  {
    sub_1B5DF9C34(319, &qword_1ED7D2D00);
    if (v1 <= 0x3F)
    {
      sub_1B5DF9BDC();
      if (v2 <= 0x3F)
      {
        sub_1B5DF9C34(319, &qword_1ED7D2BA0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5DF9BDC()
{
  if (!qword_1ED7D2CF8)
  {
    sub_1B5EA4350();
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2CF8);
    }
  }
}

void sub_1B5DF9C34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B5EA5AD0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceEnvironmentInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceEnvironmentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        break;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoteMessage.VisualPromptOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B5DF9E7C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1B5DF9F8C()
{
  result = qword_1EB90DB30;
  if (!qword_1EB90DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB30);
  }

  return result;
}

unint64_t sub_1B5DF9FE4()
{
  result = qword_1EB90DB38;
  if (!qword_1EB90DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB38);
  }

  return result;
}

unint64_t sub_1B5DFA03C()
{
  result = qword_1ED7D1F48;
  if (!qword_1ED7D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F48);
  }

  return result;
}

unint64_t sub_1B5DFA094()
{
  result = qword_1ED7D1F50;
  if (!qword_1ED7D1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F50);
  }

  return result;
}

unint64_t sub_1B5DFA0EC()
{
  result = qword_1EB90D2B0;
  if (!qword_1EB90D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2B0);
  }

  return result;
}

unint64_t sub_1B5DFA144()
{
  result = qword_1EB90D2B8;
  if (!qword_1EB90D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2B8);
  }

  return result;
}

unint64_t sub_1B5DFA19C()
{
  result = qword_1EB90D2A0;
  if (!qword_1EB90D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2A0);
  }

  return result;
}

unint64_t sub_1B5DFA1F4()
{
  result = qword_1EB90D2A8;
  if (!qword_1EB90D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2A8);
  }

  return result;
}

unint64_t sub_1B5DFA24C()
{
  result = qword_1EB90D290;
  if (!qword_1EB90D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D290);
  }

  return result;
}

unint64_t sub_1B5DFA2A4()
{
  result = qword_1EB90D298;
  if (!qword_1EB90D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D298);
  }

  return result;
}

unint64_t sub_1B5DFA2FC()
{
  result = qword_1EB90D2C8;
  if (!qword_1EB90D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2C8);
  }

  return result;
}

unint64_t sub_1B5DFA354()
{
  result = qword_1EB90D2D0;
  if (!qword_1EB90D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2D0);
  }

  return result;
}

uint64_t sub_1B5DFA3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B5DFA494()
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5DFA4B4()
{

  return sub_1B5EA5D30();
}

uint64_t sub_1B5DFA4E0@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

void sub_1B5DFA4EC(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_1B5DFA518()
{

  return type metadata accessor for InferenceEnvironmentInfo();
}

uint64_t SessionConfiguration.tokenGeneratorConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration() + 20);
  v4 = sub_1B5EA4930();
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SessionConfiguration()
{
  result = qword_1EB90D4B0;
  if (!qword_1EB90D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionConfiguration.tokenGeneratorConfig.setter()
{
  v2 = *(sub_1B5DFD878() + 20);
  v3 = sub_1B5EA4930();
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t SessionConfiguration.instructions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration() + 24);
  v4 = sub_1B5EA5450();
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SessionConfiguration.instructions.setter()
{
  v2 = *(sub_1B5DFD878() + 24);
  v3 = sub_1B5EA5450();
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t SessionConfiguration.templateID.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionConfiguration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SessionConfiguration.templateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionConfiguration() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionConfiguration.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SessionConfiguration.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionConfiguration() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionConfiguration.variableBindings.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionConfiguration() + 36));
}

uint64_t SessionConfiguration.variableBindings.setter()
{
  v2 = *(sub_1B5DFD878() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void sub_1B5DFAA14(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && (*&a1 < 0.0 || *&a1 > 600.0))
  {
    if (qword_1EB90D178 != -1)
    {
      swift_once();
    }

    v2 = sub_1B5EA53B0();
    sub_1B5DFD794(v2, qword_1EB90D180);
    v3 = sub_1B5EA5380();
    v4 = sub_1B5EA5A40();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B5DED000, v3, v4, "Invalid time to live provided, ignoring passed in value", v5, 2u);
      MEMORY[0x1B8C8B330](v5, -1, -1);
    }
  }
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:templateID:)()
{
  sub_1B5DFD840();
  v55 = v1;
  v56 = v2;
  v58 = v3;
  v59 = v4;
  v57 = v5;
  v7 = v6;
  v49 = v8;
  v50 = v9;
  v54 = v10;
  v11 = sub_1B5EA5450();
  v12 = sub_1B5DF5DA8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7E8();
  v19 = (v18 - v17);
  v20 = sub_1B5EA4930();
  v21 = sub_1B5DF5DA8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v44 - v27;
  v29 = *(v23 + 16);
  v52 = v7;
  v29(&v44 - v27, v7, v20);
  v51 = v14;
  v30 = *(v14 + 16);
  v48 = v19;
  v53 = v11;
  v46 = v30;
  v30(v19, v59, v11);
  v47 = v28;
  v29(v0, v28, v20);
  sub_1B5EA4900();
  if (!v31)
  {
  }

  v32 = type metadata accessor for SessionConfiguration();
  v33 = v54;
  v44 = &v54[v32[7]];
  v45 = v32[9];
  sub_1B5EA4910();
  v29(&v33[v32[5]], v0, v20);
  v34 = v48;
  v35 = v53;
  v46(&v33[v32[6]], v48, v53);
  v36 = &v33[v32[8]];
  v37 = v58;
  *v36 = v57;
  *(v36 + 1) = v37;
  sub_1B5DFAA14(v50, v49 & 1);
  v39 = v38;
  v40 = *(v51 + 8);
  v40(v59, v35);
  v41 = *(v23 + 8);
  v41(v52, v20);
  v41(v0, v20);
  v40(v34, v35);
  v41(v47, v20);
  *v33 = v39;
  v42 = v56;
  v43 = v44;
  *v44 = v55;
  *(v43 + 1) = v42;
  *&v33[v45] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:templateID:variableBindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DFD840();
  v64 = v23;
  v65 = v24;
  v61 = v25;
  v62 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v60 = v33;
  v35 = v34;
  v36 = sub_1B5EA4930();
  v37 = sub_1B5DF5DA8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5DFD7E8();
  v44 = v43 - v42;
  v45 = *(v39 + 16);
  v63 = v32;
  v45(v43 - v42, v32, v36);
  sub_1B5EA4900();
  v57 = v30;
  v58 = v28;
  if (!v46)
  {
  }

  v47 = type metadata accessor for SessionConfiguration();
  v48 = &v35[v47[7]];
  v59 = v47[9];
  sub_1B5EA4910();
  v45(&v35[v47[5]], v44, v36);
  v49 = v47[6];
  v50 = sub_1B5EA5450();
  sub_1B5DFD8F0(v50);
  v52 = v51;
  (*(v51 + 16))(&v35[v49], v62, v50);
  v53 = &v35[v47[8]];
  *v53 = v57;
  *(v53 + 1) = v58;
  sub_1B5DFAA14(v61, v60 & 1);
  v55 = v54;
  (*(v52 + 8))(v62, v50);
  v56 = *(v39 + 8);
  v56(v63, v36);
  v56(v44, v36);
  *v35 = v55;
  *v48 = v64;
  *(v48 + 1) = v65;
  *&v35[v59] = a23;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:)()
{
  sub_1B5DFD840();
  v59 = v2;
  v60 = v1;
  v48 = v3;
  v56 = v5;
  v57 = v4;
  v51 = v6;
  v52 = v7;
  v8 = sub_1B5EA5450();
  v9 = sub_1B5DF5DA8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7F8();
  v58 = (v14 - v15);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = sub_1B5EA4930();
  v20 = sub_1B5DF5DA8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7CC();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v45 - v29;
  v50 = v22;
  v31 = *(v22 + 16);
  v31(&v45 - v29, v60, v19);
  v54 = v11;
  v32 = *(v11 + 16);
  v32(v18, v59, v8);
  v49 = v30;
  v31(v28, v30, v19);
  v53 = v18;
  v55 = v8;
  v46 = v32;
  v32(v58, v18, v8);
  v47 = v28;
  v31(v0, v28, v19);
  sub_1B5EA4900();
  if (v33)
  {
    v34 = v48;
  }

  else
  {
  }

  v35 = type metadata accessor for SessionConfiguration();
  v36 = v56;
  v45 = &v56[v35[7]];
  v48 = v35[9];
  sub_1B5EA4910();
  v31(&v36[v35[5]], v0, v19);
  v37 = v58;
  v38 = v55;
  v46(&v36[v35[6]], v58, v55);
  v39 = &v36[v35[8]];
  *v39 = v57;
  *(v39 + 1) = v34;
  sub_1B5DFAA14(v52, v51 & 1);
  v41 = v40;
  v42 = *(v54 + 8);
  v42(v59, v38);
  v43 = *(v50 + 8);
  v43(v60, v19);
  v43(v0, v19);
  v42(v37, v38);
  v43(v47, v19);
  v42(v53, v38);
  v43(v49, v19);
  *v36 = v41;
  v44 = v45;
  *v45 = 0;
  *(v44 + 1) = 0;
  *&v36[v48] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)()
{
  sub_1B5DFD8A8();
  v49 = v1;
  v50 = v2;
  v52 = v3;
  v53 = v4;
  v51 = v5;
  v7 = v6;
  v48 = v8;
  v9 = sub_1B5EA5450();
  v10 = sub_1B5DF5DA8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v17 = (v16 - v15);
  v18 = sub_1B5EA4930();
  v19 = sub_1B5DF5DA8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v27 = *(v21 + 16);
  v46 = v7;
  v27(&v40 - v25, v7, v18);
  v44 = v17;
  v45 = v12;
  v28 = *(v12 + 16);
  v47 = v9;
  v42 = v28;
  v28(v17, v53, v9);
  v43 = v26;
  v27(v0, v26, v18);
  sub_1B5EA4900();
  if (!v29)
  {
  }

  v30 = type metadata accessor for SessionConfiguration();
  v31 = v48;
  v40 = &v48[v30[7]];
  v41 = v30[9];
  sub_1B5EA4910();
  v27(&v31[v30[5]], v0, v18);
  v32 = v44;
  v33 = v47;
  v42(&v31[v30[6]], v44, v47);
  v34 = &v31[v30[8]];
  v35 = v52;
  *v34 = v51;
  *(v34 + 1) = v35;
  v36 = *(v45 + 8);
  v36(v53, v33);
  v37 = *(v21 + 8);
  v37(v46, v18);
  v37(v0, v18);
  v36(v32, v33);
  v37(v43, v18);
  *v31 = 0x4082C00000000000;
  v38 = v50;
  v39 = v40;
  *v40 = v49;
  *(v39 + 1) = v38;
  *&v31[v41] = 0;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:variableBindings:)()
{
  sub_1B5DFD8A8();
  v53 = v1;
  v54 = v2;
  v51 = v4;
  v52 = v3;
  v56 = v5;
  v57 = v6;
  v55 = v7;
  v9 = v8;
  v10 = sub_1B5EA5450();
  v11 = sub_1B5DF5DA8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v18 = (v17 - v16);
  v19 = sub_1B5EA4930();
  v20 = sub_1B5DF5DA8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v28 = *(v22 + 16);
  v49 = v9;
  v28(&v42 - v26, v9, v19);
  v47 = v18;
  v48 = v13;
  v29 = *(v13 + 16);
  v50 = v10;
  v45 = v29;
  v29(v18, v57, v10);
  v46 = v27;
  v28(v0, v27, v19);
  sub_1B5EA4900();
  if (!v30)
  {
  }

  v31 = type metadata accessor for SessionConfiguration();
  v32 = v51;
  v43 = &v51[v31[7]];
  v44 = v31[9];
  sub_1B5EA4910();
  v28(&v32[v31[5]], v0, v19);
  v33 = v47;
  v34 = v50;
  v45(&v32[v31[6]], v47, v50);
  v35 = &v32[v31[8]];
  v36 = v56;
  *v35 = v55;
  *(v35 + 1) = v36;
  v37 = *(v48 + 8);
  v37(v57, v34);
  v38 = *(v22 + 8);
  v38(v49, v19);
  v38(v0, v19);
  v37(v33, v34);
  v38(v46, v19);
  *v32 = 0x4082C00000000000;
  v39 = v53;
  v41 = v43;
  v40 = v44;
  *v43 = v52;
  *(v41 + 1) = v39;
  *&v32[v40] = v54;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:)()
{
  sub_1B5DFD8A8();
  v69 = v0;
  v63 = v2;
  v64 = v1;
  v4 = v3;
  v62 = v5;
  v70 = sub_1B5EA5450();
  v6 = sub_1B5DF5DA8(v70);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7F8();
  v67 = (v11 - v12);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v53 - v14;
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_1B5EA4930();
  v19 = sub_1B5DF5DA8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7F8();
  v65 = (v24 - v25);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v53 - v27;
  sub_1B5DFD824();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v53 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v53 - v32;
  v58 = v21;
  v34 = *(v21 + 16);
  v60 = v4;
  v34(&v53 - v32, v4, v18);
  v61 = v8;
  v35 = *(v8 + 16);
  v36 = v70;
  v35(v17, v69, v70);
  v57 = v33;
  v34(v31, v33, v18);
  v37 = v68;
  v59 = v17;
  v35(v68, v17, v36);
  v38 = v66;
  v56 = v31;
  v34(v66, v31, v18);
  v55 = v35;
  v35(v67, v37, v36);
  v39 = v34;
  v40 = v18;
  v39(v65, v38, v18);
  sub_1B5EA4900();
  if (!v41)
  {
  }

  v42 = type metadata accessor for SessionConfiguration();
  v43 = v62;
  v53 = &v62[v42[7]];
  v54 = v42[9];
  v44 = v65;
  sub_1B5EA4910();
  v39(&v43[v42[5]], v44, v40);
  v45 = v67;
  v46 = v70;
  v55(&v43[v42[6]], v67, v70);
  v47 = &v43[v42[8]];
  v48 = v63;
  *v47 = v64;
  *(v47 + 1) = v48;
  v49 = *(v61 + 8);
  v49(v69, v46);
  v50 = *(v58 + 8);
  v50(v60, v40);
  v50(v44, v40);
  v49(v45, v46);
  v50(v66, v40);
  v49(v68, v46);
  v50(v56, v40);
  v49(v59, v46);
  v50(v57, v40);
  *v43 = 0x4082C00000000000;
  v52 = v53;
  v51 = v54;
  *v53 = 0;
  *(v52 + 1) = 0;
  *&v43[v51] = 0;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)()
{
  sub_1B5DFD840();
  v78 = v1;
  v79 = v0;
  v69 = v2;
  v70 = v3;
  v72 = v4;
  v5 = sub_1B5EA5450();
  v6 = sub_1B5DF5DA8(v5);
  v80 = v7;
  v81 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7F8();
  v76 = (v10 - v11);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v63 - v13;
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = sub_1B5EA4340();
  v18 = sub_1B5DF5DA8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  v25 = v24 - v23;
  v26 = sub_1B5EA4930();
  v27 = sub_1B5DF5DA8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5DFD7F8();
  v75 = (v32 - v33);
  sub_1B5DFD824();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v63 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v63 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v63 - v41;
  v65 = v29;
  v43 = *(v29 + 16);
  v43(&v63 - v41, v79, v26);
  sub_1B5EA4330();
  v44 = sub_1B5EA4300();
  v73 = v45;
  v74 = v44;
  (*(v20 + 8))(v25, v17);
  v46 = v81;
  v47 = *(v80 + 16);
  v47(v16, v78, v81);
  v68 = v42;
  v43(v40, v42, v26);
  v48 = v77;
  v71 = v16;
  v47(v77, v16, v46);
  v67 = v40;
  v43(v37, v40, v26);
  v47(v76, v48, v46);
  v66 = v37;
  v43(v75, v37, v26);
  sub_1B5EA4900();
  if (!v49)
  {
  }

  v50 = type metadata accessor for SessionConfiguration();
  v51 = v72;
  v63 = &v72[v50[7]];
  v64 = v50[9];
  v52 = v75;
  sub_1B5EA4910();
  v43(&v51[v50[5]], v52, v26);
  v53 = v76;
  v54 = v81;
  v47(&v51[v50[6]], v76, v81);
  v55 = &v51[v50[8]];
  v56 = v73;
  *v55 = v74;
  v55[1] = v56;
  sub_1B5DFAA14(v70, v69 & 1);
  v58 = v57;
  v59 = *(v80 + 8);
  v59(v78, v54);
  v60 = *(v65 + 8);
  v60(v79, v26);
  v60(v52, v26);
  v59(v53, v54);
  v60(v66, v26);
  v59(v77, v54);
  v60(v67, v26);
  v59(v71, v54);
  v60(v68, v26);
  *v51 = v58;
  v62 = v63;
  v61 = v64;
  *v63 = 0;
  *(v62 + 1) = 0;
  *&v51[v61] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(tokenGeneratorConfig:instructions:)()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA5450();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = sub_1B5EA4930();
  v14 = sub_1B5DF5DA8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  (*(v16 + 16))(v20 - v19, v3, v13);
  (*(v7 + 16))(v12, v1, v4);
  SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)();
  (*(v7 + 8))(v1, v4);
  (*(v16 + 8))(v3, v13);
  sub_1B5DFD8C0();
}

void SessionConfiguration.hash(into:)()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v3 = sub_1B5EA5520();
  v44 = sub_1B5DF5DA8(v3);
  v45 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1B5DFD7E8();
  v43 = v8 - v7;
  v9 = *v0;
  if (*v0 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1B8C8AC30](*&v9);
  v10 = type metadata accessor for SessionConfiguration();
  v11 = v10[5];
  sub_1B5EA4930();
  sub_1B5DFD74C(&qword_1EB90DB40, MEMORY[0x1E69DA580]);
  sub_1B5DFD91C();
  v12 = v10[6];
  sub_1B5EA5450();
  sub_1B5DFD74C(&qword_1EB90DB48, MEMORY[0x1E69C61C0]);
  sub_1B5DFD91C();
  v13 = (v0 + v10[7]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  v15 = (v0 + v10[8]);
  v16 = *v15;
  v17 = v15[1];
  sub_1B5EA5710();
  v18 = *(v0 + v10[9]);
  if (v18)
  {
    v40 = v2;
    sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
    v19 = sub_1B5EA5CC0();
    v20 = 0;
    v21 = *(v18 + 64);
    v22 = *(v18 + 32);
    sub_1B5DFD808();
    v26 = (v25 + 63) >> 6;
    v41 = v27 + 8;
    v42 = v27;
    if ((v24 & v23) != 0)
    {
      while (1)
      {
        sub_1B5DFD908();
        v46 = v29;
LABEL_14:
        v33 = v28 | (v20 << 6);
        v34 = (*(v18 + 48) + 16 * v33);
        v35 = v34[1];
        v47 = *v34;
        sub_1B5DFC6BC(*(v18 + 56) + 40 * v33, v48);
        sub_1B5DF3BFC(v48, v48[3]);

        sub_1B5EA5580();
        sub_1B5DF3FB8(v48);
        v19 = v42;
        *(v41 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v36 = (v42[6] + 16 * v33);
        *v36 = v47;
        v36[1] = v35;
        (*(v45 + 32))(v42[7] + *(v45 + 72) * v33, v43, v44);
        v37 = v42[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          break;
        }

        v42[2] = v39;
        if (!v46)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v30 = v20;
      while (1)
      {
        v20 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v20 >= v26)
        {
          sub_1B5EA5FF0();
          sub_1B5DFD0BC(v40, v19);

          goto LABEL_19;
        }

        ++v30;
        if (*(v18 + 64 + 8 * v20))
        {
          sub_1B5DFD830();
          v46 = v32 & v31;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1B5EA5FF0();
LABEL_19:
    sub_1B5DFD8C0();
  }
}

uint64_t sub_1B5DFC6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static SessionConfiguration.== infix(_:_:)()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA5520();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  if (*v3 != *v1)
  {
    goto LABEL_29;
  }

  v13 = type metadata accessor for SessionConfiguration();
  if ((MEMORY[0x1B8C89510](v3 + v13[5], v1 + v13[5]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v14 = v13[6];
  if ((sub_1B5EA53E0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v15 = v13[7];
  v16 = (v3 + v15);
  v17 = *(v3 + v15 + 8);
  v18 = (v1 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_1B5EA5F00() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v19)
  {
    goto LABEL_29;
  }

  v21 = v13[8];
  v22 = *(v3 + v21);
  v23 = *(v3 + v21 + 8);
  v24 = (v1 + v21);
  v25 = v22 == *v24 && v23 == v24[1];
  if (!v25 && (sub_1B5EA5F00() & 1) == 0)
  {
    goto LABEL_29;
  }

  v26 = v13[9];
  v27 = *(v3 + v26);
  v73 = v7;
  v72 = v12;
  if (v27)
  {
    sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
    v28 = sub_1B5EA5CC0();
    v29 = 0;
    v31 = v27 + 64;
    v30 = *(v27 + 64);
    v32 = *(v27 + 32);
    sub_1B5DFD808();
    v65 = sub_1B5DFD890(v33);
    v64 = v27;
    if (!v34)
    {
LABEL_21:
      v37 = v29;
      while (1)
      {
        v29 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v29 >= v4)
        {
          break;
        }

        ++v37;
        if (*(v31 + 8 * v29))
        {
          sub_1B5DFD830();
          v66 = v39 & v38;
          goto LABEL_26;
        }
      }

      v69 = *(v1 + v13[9]);
      if (v69)
      {
        goto LABEL_35;
      }

      if (v28)
      {
LABEL_50:
      }

      goto LABEL_29;
    }

    while (1)
    {
      sub_1B5DFD908();
      v66 = v36;
LABEL_26:
      v40 = v35 | (v29 << 6);
      v41 = (*(v27 + 48) + 16 * v40);
      v68 = v41[1];
      v70 = *v41;
      sub_1B5DFC6BC(*(v27 + 56) + 40 * v40, v74);
      sub_1B5DF3BFC(v74, v75);

      sub_1B5EA5580();
      sub_1B5DF3FB8(v74);
      v28 = v65;
      sub_1B5DFD8D8((v40 >> 3) & 0x1FFFFFFFFFFFFFF8);
      v42 = (v65[6] + 16 * v40);
      *v42 = v70;
      v42[1] = v68;
      (*(v7 + 32))(v65[7] + *(v7 + 72) * v40, v72, v4);
      v43 = v65[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_54;
      }

      v65[2] = v45;
      v27 = v64;
      if (!v66)
      {
        goto LABEL_21;
      }
    }
  }

  v69 = *(v1 + v26);
  if (!v69)
  {
LABEL_29:
    sub_1B5DFD8C0();
    return;
  }

  v65 = 0;
LABEL_35:
  sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
  v46 = sub_1B5EA5CC0();
  v47 = 0;
  v48 = *(v69 + 64);
  v49 = *(v69 + 32);
  sub_1B5DFD808();
  v52 = v51 & v50;
  for (i = sub_1B5DFD890(v53); v52; i[2] = v63)
  {
    v54 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
LABEL_42:
    v58 = v54 | (v47 << 6);
    v59 = (*(v69 + 48) + 16 * v58);
    v60 = v59[1];
    v71 = *v59;
    sub_1B5DFC6BC(*(v69 + 56) + 40 * v58, v74);
    sub_1B5DF3BFC(v74, v75);

    sub_1B5EA5580();
    sub_1B5DF3FB8(v74);
    sub_1B5DFD8D8((v58 >> 3) & 0x1FFFFFFFFFFFFFF8);
    v46 = i;
    v61 = (i[6] + 16 * v58);
    *v61 = v71;
    v61[1] = v60;
    (*(v73 + 32))(i[7] + *(v73 + 72) * v58, v72, v4);
    v62 = i[2];
    v44 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v44)
    {
      goto LABEL_55;
    }
  }

  v55 = v47;
  while (1)
  {
    v47 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v47 >= v4)
    {
      if (v65)
      {
        if (v46)
        {
          sub_1B5DFCC30(v65, v46);
        }
      }

      else if (!v46)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }

    ++v55;
    if (*(v69 + 64 + 8 * v47))
    {
      sub_1B5DFD830();
      v52 = v57 & v56;
      goto LABEL_42;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t SessionConfiguration.hashValue.getter()
{
  sub_1B5EA5FD0();
  SessionConfiguration.hash(into:)();
  return sub_1B5EA6020();
}

uint64_t sub_1B5DFCBF0()
{
  sub_1B5EA5FD0();
  SessionConfiguration.hash(into:)();
  return sub_1B5EA6020();
}

uint64_t sub_1B5DFCC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA5520();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - v9;
  v10 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v61 = &v57 - v15;
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v16 = 0;
  v58 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v64 = v68 + 16;
  v65 = (v68 + 32);
  v59 = (v68 + 8);
  v60 = v8;
  while (v22)
  {
    v66 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_13:
    v28 = (*(v58 + 48) + 16 * v24);
    v29 = *v28;
    v30 = v28[1];
    v32 = v67;
    v31 = v68;
    (*(v68 + 16))(v67, *(v58 + 56) + *(v68 + 72) * v24, v4);
    v33 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v34 = *(v33 + 48);
    v35 = v63;
    *v63 = v29;
    *(v35 + 1) = v30;
    v25 = v35;
    (*(v31 + 32))(&v35[v34], v32, v4);
    sub_1B5DF3658(v25, 0, 1, v33);

LABEL_14:
    v36 = v25;
    v37 = v61;
    sub_1B5DFD6DC(v36, v61);
    v38 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v39 = sub_1B5DF46E0(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v43 = *v37;
    v42 = *(v37 + 1);
    v44 = v62;
    v45 = v60;
    (*v65)(v60, &v37[v41], v4);
    v46 = sub_1B5E5AE4C();
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      (*v59)(v45, v4);
      return 0;
    }

    v49 = v68;
    v50 = *(v44 + 56) + *(v68 + 72) * v46;
    v51 = v4;
    v52 = v67;
    (*(v68 + 16))(v67, v50, v51);
    sub_1B5DFD74C(&qword_1EB90DB78, MEMORY[0x1E69C6348]);
    v53 = sub_1B5EA5660();
    v54 = *(v49 + 8);
    v55 = v52;
    v4 = v51;
    v54(v55, v51);
    result = (v54)(v45, v51);
    v22 = v66;
    if ((v53 & 1) == 0)
    {
      return v40;
    }
  }

  v25 = v63;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v56 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
      sub_1B5DF3658(v25, 1, 1, v56);
      v66 = 0;
      goto LABEL_14;
    }

    v27 = *(v18 + 8 * v26);
    ++v16;
    if (v27)
    {
      v66 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5DFD0BC(const void *a1, uint64_t a2)
{
  v48 = a1;
  v51 = sub_1B5EA5520();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v42 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v42[1] = v3 + 16;
  v17 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v47 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v43 = v11;
  v42[0] = v3 + 32;
  for (i = a2 + 64; ; v12 = i)
  {
    v52 = v19;
    if (!v15)
    {
      break;
    }

    v21 = v20;
LABEL_11:
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v21 << 6);
    v25 = v44;
    v26 = (*(v45 + 48) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v30 = v50;
    v29 = v51;
    (*(v44 + 16))(v50, *(v45 + 56) + *(v44 + 72) * v24, v51);
    v31 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v32 = *(v31 + 48);
    v33 = v49;
    *v49 = v28;
    *(v33 + 1) = v27;
    v22 = v33;
    v34 = v30;
    v17 = v42[0];
    (*(v25 + 32))(&v33[v32], v34, v29);
    sub_1B5DF3658(v22, 0, 1, v31);

    v11 = v43;
LABEL_12:
    sub_1B5DFD6DC(v22, v11);
    v35 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    if (sub_1B5DF46E0(v11, 1, v35) == 1)
    {

      return MEMORY[0x1B8C8AC00](v52);
    }

    v36 = *(v35 + 48);
    v37 = *v11;
    v38 = v11[1];
    v40 = v50;
    v39 = v51;
    (*v17)(v50, v11 + v36, v51);
    memcpy(__dst, v48, sizeof(__dst));
    sub_1B5EA5710();

    sub_1B5DFD74C(&qword_1EB90DB80, MEMORY[0x1E69C6348]);
    sub_1B5EA5600();
    (*v47)(v40, v39);
    result = sub_1B5EA6020();
    v19 = result ^ v52;
  }

  v22 = v49;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v16)
    {
      v41 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
      sub_1B5DF3658(v22, 1, 1, v41);
      v15 = 0;
      goto LABEL_12;
    }

    v15 = *(v12 + 8 * v21);
    ++v20;
    if (v15)
    {
      v20 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B5DFD514()
{
  sub_1B5EA4930();
  if (v0 <= 0x3F)
  {
    sub_1B5EA5450();
    if (v1 <= 0x3F)
    {
      sub_1B5DFD5E0();
      if (v2 <= 0x3F)
      {
        sub_1B5DFD630();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5DFD5E0()
{
  if (!qword_1ED7D2D00)
  {
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2D00);
    }
  }
}

void sub_1B5DFD630()
{
  if (!qword_1EB90CE28)
  {
    sub_1B5DFD694(&qword_1EB90DB60, &qword_1B5EAFBF8);
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB90CE28);
    }
  }
}

uint64_t sub_1B5DFD694(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B5DFD6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DFD74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5DFD794(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B5DFD878()
{

  return type metadata accessor for SessionConfiguration();
}

uint64_t sub_1B5DFD890(uint64_t result)
{
  *(v2 - 192) = v1 + 32;
  *(v2 - 184) = result + 64;
  return result;
}

uint64_t sub_1B5DFD91C()
{

  return sub_1B5EA5600();
}

void *GenerativeExperiencesSession.__allocating_init(configuration:)(uint64_t a1)
{
  sub_1B5E01D1C();
  swift_allocObject();
  return GenerativeExperiencesSession.init(configuration:)(a1);
}

void *GenerativeExperiencesSession.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for SessionConfiguration();
  v6 = sub_1B5E01CF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  sub_1B5DFDA5C(a1, v10 - v9);
  v11 = objc_allocWithZone(type metadata accessor for GenerativeExperiencesSessionClient());
  GenerativeExperiencesSessionClient.init(_:)();
  v13 = v12;
  sub_1B5E01688(a1);
  if (v13)
  {
    v2[2] = v13;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_1B5DFDA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesSession.terminateSession(for:)()
{
  v0 = objc_allocWithZone(type metadata accessor for GenerativeExperiencesSessionClient());

  GenerativeExperiencesSessionClient.init(identifer:)();
  if (v1)
  {
    v2 = v1;
    sub_1B5E47AB0();
  }
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{
  v1 = (*(*(v0 + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_identifier);
  v2 = *v1;
  v3 = v1[1];

  v4 = sub_1B5DFA488();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t GenerativeExperiencesSession.registeredDocuments()()
{
  v1 = *(v0 + 16);
  sub_1B5E49FF8();

  return sub_1B5DFDBB8(v2);
}

uint64_t sub_1B5DFDBB8(uint64_t a1)
{
  v2 = sub_1B5EA4EE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1B5E01BDC();
  v12 = MEMORY[0x1B8C8A630](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_1B5E32B5C();
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t sub_1B5DFDD48(uint64_t a1)
{
  result = MEMORY[0x1B8C8A630](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1B5E32DE0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5DFDE88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return GenerativeExperiencesSession.tools.setter();
}

uint64_t GenerativeExperiencesSession.tools.setter()
{
  sub_1B5E01D44();
  sub_1B5E4A75C();
}

uint64_t (*GenerativeExperiencesSession.tools.modify())(uint64_t *a1, char a2)
{
  sub_1B5E01D44();
  *(v2 + 8) = v1;
  sub_1B5E4A674();
  *v0 = v3;
  return sub_1B5DFDF34;
}

uint64_t sub_1B5DFDF70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return GenerativeExperiencesSession.instructionsTemplateVariableBindings.setter();
}

uint64_t GenerativeExperiencesSession.instructionsTemplateVariableBindings.setter()
{
  sub_1B5E01D44();
  sub_1B5E4B09C();
}

uint64_t (*GenerativeExperiencesSession.instructionsTemplateVariableBindings.modify())(uint64_t *a1, char a2)
{
  sub_1B5E01D44();
  *(v2 + 8) = v1;
  sub_1B5E4AE18();
  *v0 = v3;
  return sub_1B5DFE01C;
}

uint64_t sub_1B5DFE034(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = a1[1];
  v5 = *a1;
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }
}

uint64_t sub_1B5DFE0C0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B5EA5160();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = *a2;
  return GenerativeExperiencesSession.toolChoice.setter();
}

uint64_t GenerativeExperiencesSession.toolChoice.setter()
{
  sub_1B5E01D44();
  sub_1B5E4ABB0();
  v1 = sub_1B5EA5160();
  v2 = *(*(v1 - 8) + 8);

  return v2(v0, v1);
}

void (*GenerativeExperiencesSession.toolChoice.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_1B5E016E4(0x28uLL);
  *a1 = v3;
  v4 = sub_1B5EA5160();
  *v3 = v4;
  sub_1B5E01C50(v4);
  v3[1] = v5;
  v7 = *(v6 + 64);
  v3[2] = sub_1B5E016E4(v7);
  v3[3] = sub_1B5E016E4(v7);
  v3[4] = *(v1 + 16);
  sub_1B5E4A834();
  return sub_1B5DFE2C4;
}

void sub_1B5DFE2C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[2], v4, v7);
    sub_1B5E4ABB0();
    v8 = *(v6 + 8);
    v8(v5, v7);
    v9 = sub_1B5E01DD8();
    (v8)(v9);
  }

  else
  {
    v10 = (*a1)[3];
    sub_1B5E4ABB0();
    v11 = *(v6 + 8);
    v12 = sub_1B5E01DD8();
    v13(v12);
  }

  free(v4);
  free(v5);

  free(v2);
}

void GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5EA5470();
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  v14 = *(v0 + 16);
  sub_1B5E01C98();
  v4();
  if (v2)
  {
    type metadata accessor for TokenStreamHandler();
    sub_1B5E63984();
  }

  else
  {
    sub_1B5E4A164();
    (*(v8 + 8))(v13, v5);
  }

  sub_1B5DFD8C0();
}

uint64_t GenerativeExperiencesSession.undo()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E01CA4();
}

uint64_t sub_1B5DFE61C()
{
  sub_1B5E01DFC();
  v1 = *(*(v0[3] + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1B5E01C34;
  v3 = v0[2];

  return sub_1B5E2F324();
}

uint64_t GenerativeExperiencesSession.redo()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E01CA4();
}

uint64_t sub_1B5DFE6D4()
{
  sub_1B5E01DFC();
  v1 = *(*(v0[3] + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1B5DFE778;
  v3 = v0[2];

  return sub_1B5E2F604();
}

uint64_t sub_1B5DFE778()
{
  sub_1B5E01DFC();
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Bool __swiftcall GenerativeExperiencesSession.canUndo()()
{
  v1 = *(v0 + 16);
  sub_1B5E4B484();
  return v2 & 1;
}

Swift::Bool __swiftcall GenerativeExperiencesSession.canRedo()()
{
  v1 = *(v0 + 16);
  sub_1B5E4B51C();
  return v2 & 1;
}

uint64_t sub_1B5DFE8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v6 = sub_1B5EA5350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B5DFF378(a1, &v21);
  v11 = *(a2 + 16);
  v12 = v21;
  for (i = a2 + 32; v11; --v11)
  {
    sub_1B5EA5310();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(v12 + 16);
      sub_1B5E6D73C();
      v12 = v16;
    }

    v14 = *(v12 + 16);
    if (v14 >= *(v12 + 24) >> 1)
    {
      sub_1B5E6D73C();
      v12 = v17;
    }

    *(v12 + 16) = v14 + 1;
    (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
    i += 40;
  }

  v21 = v12;
  v18 = *(v3 + 16);
  sub_1B5E4A75C();
  sub_1B5E4ABB0();
}

uint64_t sub_1B5DFEA7C(uint64_t a1, uint64_t *a2)
{
  v67 = a2;
  v3 = sub_1B5EA5260();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B5EA51B0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B5EA5290();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B5EA5250();
  v63 = *(v66 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B5EA51E0();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v58 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B5EA51F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B5EA5350();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B5EA5200();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v53[1] = v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v53 - v32;
  v57 = a1;
  sub_1B5EA5210();
  v34 = (*(v28 + 88))(v33, v27);
  if (v34 == *MEMORY[0x1E69A0DD0])
  {
    (*(v28 + 96))(v33, v27);
    v35 = v63;
    (*(v63 + 32))(v14, v33, v66);
    sub_1B5EA5240();
    sub_1B5EA5230();
    sub_1B5EA5220();
    v36 = v62;
    sub_1B5EA5280();
    sub_1B5EA5340();

    (*(v64 + 8))(v36, v65);
    v37 = v67;
    sub_1B5E32A28();
    v38 = *(*v37 + 16);
    sub_1B5E32ACC(v38);
    (*(v35 + 8))(v14, v66);
LABEL_12:
    v43 = *v37;
    *(v43 + 16) = v38 + 1;
    return (*(v68 + 32))(v43 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v38, v26, v69);
  }

  v37 = v67;
  if (v34 == *MEMORY[0x1E69A0DB8])
  {
    (*(v28 + 96))(v33, v27);
    v39 = v19;
    (*(v19 + 32))(v22, v33, v18);
    sub_1B5EA52C0();
    sub_1B5E32A28();
    v38 = *(*v37 + 16);
    sub_1B5E32ACC(v38);
    (*(v39 + 8))(v22, v18);
    goto LABEL_12;
  }

  if (v34 == *MEMORY[0x1E69A0DB0])
  {
    (*(v28 + 96))(v33, v27);
    v41 = v58;
    v40 = v59;
    v42 = v60;
    (*(v59 + 32))(v58, v33, v60);
    sub_1B5EA52B0();
    sub_1B5E32A28();
    v38 = *(*v37 + 16);
    sub_1B5E32ACC(v38);
    (*(v40 + 8))(v41, v42);
    goto LABEL_12;
  }

  if (v34 == *MEMORY[0x1E69A0DC8])
  {
    sub_1B5EA5300();
LABEL_11:
    sub_1B5E32A28();
    v38 = *(*v37 + 16);
    sub_1B5E32ACC(v38);
    goto LABEL_12;
  }

  if (v34 == *MEMORY[0x1E69A0DC0])
  {
    sub_1B5EA52E0();
    goto LABEL_11;
  }

  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v45 = sub_1B5EA53B0();
  sub_1B5DFD794(v45, qword_1EB90D180);
  (*(v55 + 16))(v54, v57, v56);
  v46 = sub_1B5EA5380();
  v47 = sub_1B5EA5A50();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70 = v49;
    *v48 = 136315138;
    v50 = v54;
    sub_1B5EA5210();
    sub_1B5EA56E0();
    (*(v55 + 8))(v50, v56);
    v51 = sub_1B5E5B1CC();

    *(v48 + 4) = v51;
    _os_log_impl(&dword_1B5DED000, v46, v47, "Unknown tool type: %s", v48, 0xCu);
    sub_1B5DF3FB8(v49);
    MEMORY[0x1B8C8B330](v49, -1, -1);
    MEMORY[0x1B8C8B330](v48, -1, -1);
  }

  else
  {

    (*(v55 + 8))(v54, v56);
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1B5EA5BC0();

  v70 = 0xD000000000000013;
  v71 = 0x80000001B5EA8A90;
  sub_1B5EA5210();
  v52 = sub_1B5EA56E0();
  MEMORY[0x1B8C8A360](v52);

  result = sub_1B5EA5CA0();
  __break(1u);
  return result;
}

uint64_t sub_1B5DFF378(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_1B5EA5260() - 8);
    result = sub_1B5DFEA7C(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

void GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:query:)()
{
  sub_1B5DFD8A8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B5EA5470();
  v7 = sub_1B5DF5DA8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v12 = *(v0 + 16);
  sub_1B5E01C98();
  v5();
  if (v3)
  {
    sub_1B5EA45F0();
  }

  else
  {
    sub_1B5E4A398();
    (*(v9 + 8))(v1, v6);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:query:)()
{
  sub_1B5DFD8A8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B5EA5470();
  v7 = sub_1B5DF5DA8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v12 = *(v0 + 16);
  sub_1B5E01C98();
  v5();
  if (v3)
  {
    sub_1B5EA45F0();
  }

  else
  {
    sub_1B5E01CC8();
    sub_1B5E4A398();
    (*(v9 + 8))(v1, v6);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:parameters:query:)()
{
  sub_1B5DFD8A8();
  v3 = v2;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v31 = sub_1B5EA4CC0();
  v9 = sub_1B5DF5DA8(v31);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E01C60();
  v12 = sub_1B5EA4D20();
  v13 = sub_1B5DF5DA8(v12);
  v29 = v14;
  v30 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E01C38();
  v17 = sub_1B5EA5470();
  v18 = sub_1B5DF5DA8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  v25 = v24 - v23;
  v26 = *(v0 + 16);
  sub_1B5E01C98();
  v8();
  if (v6)
  {
    sub_1B5E01E30();
    sub_1B5EA45F0();
  }

  else
  {
    default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v32, v3);
    default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v32, v3);
    sub_1B5E01E08();
    sub_1B5E4A398();
    v27 = sub_1B5E01DF0();
    v28(v27, v31);
    (*(v29 + 8))(v1, v30);
    (*(v20 + 8))(v25, v17);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:tools:tooling:toolChoice:documents:parameters:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1B5DFD8A8();
  v50 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v49 = sub_1B5E01D80(a21);
  v30 = sub_1B5DF5DA8(v49);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFD7E8();
  sub_1B5E01C60();
  v33 = sub_1B5EA4D20();
  v34 = sub_1B5DF5DA8(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v37 = sub_1B5EA5470();
  v38 = sub_1B5DF5DA8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v43 = sub_1B5DFE8B8(v29, v27, v25);
  v44 = *(v22 + 16);
  v50(v43);
  default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v51);
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v51);
  sub_1B5E01E08();
  sub_1B5E4A398();
  v45 = sub_1B5E01DF0();
  v46(v45, v49);
  v47 = sub_1B5E01DE4();
  v48(v47);
  (*(v40 + 8))(v21, v37);
  sub_1B5DFD8C0();
}

{
  sub_1B5DFD8A8();
  v66 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v65 = sub_1B5E01D80(a21);
  v30 = sub_1B5DF5DA8(v65);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFD7E8();
  v64 = sub_1B5E01D50();
  v33 = sub_1B5DF5DA8(v64);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v36 = sub_1B5EA5560();
  v37 = sub_1B5E01CF8(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5E01C38();
  v40 = sub_1B5EA55A0();
  v41 = sub_1B5DF5DA8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFD7E8();
  sub_1B5E01C60();
  v46 = sub_1B5EA5470();
  v47 = sub_1B5DF5DA8(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1B5DFD7E8();
  sub_1B5DFE8B8(v29, v27, v25);
  v63 = *(v21 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v50 = sub_1B5E01D98();
  sub_1B5E01C50(v50);
  v52 = *(v51 + 72);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v55 = (*(v43 + 104))(v22, *MEMORY[0x1E69C63E0], v40);
  v66(v55);
  sub_1B5EA5400();
  sub_1B5EA5480();
  sub_1B5E01E3C();
  v56 = sub_1B5DFA488();
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v56);
  sub_1B5E01CC8();
  sub_1B5E4A398();
  v57 = sub_1B5E01D04();
  v58(v57, v65);
  v59 = sub_1B5E01DE4();
  v60(v59, v64);
  v61 = sub_1B5E01D38();
  v62(v61);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(tools:tooling:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v68 = v3;
  v69 = v2;
  v65 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v66 = sub_1B5E01D80(v11);
  v12 = sub_1B5DF5DA8(v66);
  v64 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7E8();
  v62 = v17 - v16;
  v63 = sub_1B5E01D50();
  v18 = sub_1B5DF5DA8(v63);
  v61 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5E01C38();
  v22 = sub_1B5EA5560();
  v23 = sub_1B5E01CF8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  v26 = sub_1B5EA55A0();
  v27 = sub_1B5DF5DA8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5DFD7E8();
  v30 = sub_1B5EA5470();
  v31 = sub_1B5DF5DA8(v30);
  v57 = v32;
  v59 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  sub_1B5DFE8B8(v10, v8, v6);
  v56 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v35 = sub_1B5E01D98();
  sub_1B5E01C50(v35);
  v37 = *(v36 + 72);
  *(sub_1B5E01C70() + 16) = xmmword_1B5EAFC20;
  v38 = *MEMORY[0x1E69C63E0];
  v39 = sub_1B5E01DB0();
  v41 = v40(v39);
  v69(v41);
  sub_1B5E01DD8();
  sub_1B5EA5400();
  v42 = sub_1B5EA5480();
  default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v42);
  default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CB4();
  sub_1B5E4A56C(v43, v44, v45, v46, v47, v48, v49, v50, v55, v56, v57, v59, v61, v62, v63, v64, v65, v66, v68, v69);
  v51 = sub_1B5E01D04();
  v52(v51, v67);
  v53 = sub_1B5E01DC4();
  v54(v53);
  (*(v58 + 8))(v0, v60);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v44 = v3;
  v43 = sub_1B5EA4CC0();
  v4 = sub_1B5DF5DA8(v43);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v42 = sub_1B5E01D50();
  v7 = sub_1B5DF5DA8(v42);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  sub_1B5E01CD8();
  v10 = sub_1B5EA5560();
  v11 = sub_1B5E01CF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v14 = sub_1B5EA55A0();
  v15 = sub_1B5DF5DA8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  v22 = v21 - v20;
  v23 = sub_1B5EA5470();
  v24 = sub_1B5DF5DA8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v41 = *(v0 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v27 = sub_1B5E01D98();
  sub_1B5E01C50(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B5EAFC20;
  (*(v17 + 104))(v22, *MEMORY[0x1E69C63E0], v14);
  sub_1B5E01C98();
  v44();
  if (v2)
  {
    (*(v17 + 8))(v22, v14);
    *(v32 + 16) = 0;

    sub_1B5EA45F0();
  }

  else
  {
    sub_1B5EA5400();
    sub_1B5EA5480();
    v33 = sub_1B5DFA488();
    default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v33);
    v34 = sub_1B5DFA488();
    default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v34);
    sub_1B5E01CC8();
    sub_1B5E4A398();
    v35 = sub_1B5E01D04();
    v36(v35, v43);
    v37 = sub_1B5E01D38();
    v38(v37, v42);
    v39 = sub_1B5E01DE4();
    v40(v39);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v4 = v3;
  v65 = v5;
  v66 = v6;
  v62 = v7;
  v63 = sub_1B5EA4CC0();
  v8 = sub_1B5DF5DA8(v63);
  v61 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v58 = v13 - v12;
  v59 = sub_1B5E01D50();
  v14 = sub_1B5DF5DA8(v59);
  v56 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5E01C38();
  v18 = sub_1B5EA5560();
  v19 = sub_1B5E01CF8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  v22 = sub_1B5EA55A0();
  v23 = sub_1B5DF5DA8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5DFD7E8();
  v30 = v29 - v28;
  v31 = sub_1B5EA5470();
  v32 = sub_1B5DF5DA8(v31);
  v52 = v33;
  v54 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v51 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v36 = sub_1B5E01D98();
  sub_1B5E01C50(v36);
  v38 = *(v37 + 72);
  v39 = sub_1B5E01C70();
  *(v39 + 16) = xmmword_1B5EAFC20;
  (*(v25 + 104))(v30, *MEMORY[0x1E69C63E0], v22);
  sub_1B5E01C98();
  v65();
  if (v4)
  {
    (*(v25 + 8))(v30, v22);
    *(v39 + 16) = 0;

    sub_1B5E01D68();
  }

  else
  {
    sub_1B5EA5400();
    v40 = sub_1B5EA5480();
    default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v40);
    default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
    sub_1B5E01CB4();
    sub_1B5E4A56C(v41, v42, v43, v44, v45, v46, v47, v48, v51, v52, v54, v56, v58, v59, v61, v62, v63, v65, v66, v67);
    v49 = sub_1B5E01D04();
    v50(v49, v64);
    (*(v57 + 8))(v2, v60);
    (*(v53 + 8))(v0, v55);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:tools:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v42 = sub_1B5EA4CC0();
  v7 = sub_1B5DF5DA8(v42);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v41 = sub_1B5E01D50();
  v10 = sub_1B5DF5DA8(v41);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  sub_1B5E01CD8();
  v13 = sub_1B5EA5560();
  v14 = sub_1B5E01CF8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5E01C38();
  v17 = sub_1B5EA55A0();
  v18 = sub_1B5DF5DA8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  v23 = sub_1B5EA5470();
  v24 = sub_1B5DF5DA8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5DFE8B8(MEMORY[0x1E69E7CC0], v6, v4);
  v40 = *(v0 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v27 = sub_1B5EA5450();
  sub_1B5E01C50(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v32 = (*(v20 + 104))(v1, *MEMORY[0x1E69C63E0], v17);
  v43(v32);
  sub_1B5EA5400();
  sub_1B5EA5480();
  sub_1B5E01E3C();
  v33 = sub_1B5DFA488();
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v33);
  sub_1B5E01CC8();
  sub_1B5E4A398();
  v34 = sub_1B5E01D04();
  v35(v34, v42);
  v36 = sub_1B5E01D38();
  v37(v36, v41);
  v38 = sub_1B5E01DE4();
  v39(v38);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(tools:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v66 = v3;
  v67 = v2;
  v63 = v4;
  v6 = v5;
  v8 = v7;
  v64 = sub_1B5E01D80(v9);
  v10 = sub_1B5DF5DA8(v64);
  v62 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v60 = v15 - v14;
  v61 = sub_1B5E01D50();
  v16 = sub_1B5DF5DA8(v61);
  v59 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5E01C38();
  v20 = sub_1B5EA5560();
  v21 = sub_1B5E01CF8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  v24 = sub_1B5EA55A0();
  v25 = sub_1B5DF5DA8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFD7E8();
  v28 = sub_1B5EA5470();
  v29 = sub_1B5DF5DA8(v28);
  v55 = v30;
  v57 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  sub_1B5DFE8B8(MEMORY[0x1E69E7CC0], v8, v6);
  v54 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v33 = sub_1B5E01D98();
  sub_1B5E01C50(v33);
  v35 = *(v34 + 72);
  *(sub_1B5E01C70() + 16) = xmmword_1B5EAFC20;
  v36 = *MEMORY[0x1E69C63E0];
  v37 = sub_1B5E01DB0();
  v39 = v38(v37);
  v67(v39);
  sub_1B5E01DD8();
  sub_1B5EA5400();
  v40 = sub_1B5EA5480();
  default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v40);
  default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CB4();
  sub_1B5E4A56C(v41, v42, v43, v44, v45, v46, v47, v48, v53, v54, v55, v57, v59, v60, v61, v62, v63, v64, v66, v67);
  v49 = sub_1B5E01D04();
  v50(v49, v65);
  v51 = sub_1B5E01DC4();
  v52(v51);
  (*(v56 + 8))(v0, v58);
  sub_1B5DFD8C0();
}

uint64_t GenerativeExperiencesSession.__deallocating_deinit()
{
  v1 = sub_1B5E01D1C();

  return MEMORY[0x1EEE6BDC0](v1);
}

uint64_t sub_1B5E01688(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B5E016E4(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B5E01718(void *a1)
{
  v3 = sub_1B5EA4990();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1EB90EE70) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B5E01A08;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B5E01A10;
  *(v11 + 24) = v9;
  v12 = a1;
  sub_1B5EA4960();
  (*(v4 + 32))(v1 + qword_1EB90EE50, v7, v3);
  return v1;
}

unint64_t sub_1B5E01920()
{
  result = qword_1EB90DB98;
  if (!qword_1EB90DB98)
  {
    sub_1B5DFD694(&qword_1EB90DBA0, &qword_1B5EAFC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB98);
  }

  return result;
}

uint64_t sub_1B5E01984(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1B5E01A34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B5E01AEC;

  return sub_1B5E01984(a1, v5);
}

uint64_t sub_1B5E01AEC()
{
  sub_1B5E01DFC();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1B5E01BDC()
{
  result = qword_1EB90DBA8;
  if (!qword_1EB90DBA8)
  {
    sub_1B5EA4EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DBA8);
  }

  return result;
}

uint64_t sub_1B5E01C70()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1B5E01D50()
{

  return sub_1B5EA4D20();
}

uint64_t sub_1B5E01D68()
{
  v2 = *(v0 - 96);

  return sub_1B5EA45F0();
}

uint64_t sub_1B5E01D80@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_1B5EA4CC0();
}

uint64_t sub_1B5E01D98()
{

  return sub_1B5EA5450();
}

uint64_t sub_1B5E01DC4()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_1B5E01E30()
{
  v3 = *(v1 - 104);
  v2 = *(v1 - 96);
  return v0;
}

uint64_t sub_1B5E01E3C()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 112);

  return default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)(v2, v3);
}

uint64_t MailMessage.SummarizationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.SummarizationOptions.requestedSummarizationStyles.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MailMessage.SummarizationOptions.previousMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1B5E02014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E01FF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E0203C(uint64_t a1)
{
  v2 = sub_1B5E060D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E02078(uint64_t a1)
{
  v2 = sub_1B5E060D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.SummarizationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v3 = sub_1B5DF33E0(&qword_1EB90DBC8, &qword_1B5EAFCC8);
  sub_1B5DF5DA8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E060D4();
  sub_1B5E08AAC();
  if (v0)
  {
    sub_1B5E08BB4();
  }

  else
  {
    sub_1B5E08668();
    sub_1B5EA5D70();
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E08804();
    sub_1B5E0621C(v8);
    sub_1B5E08704();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E062DC();
    sub_1B5E089D0();
    sub_1B5E0894C();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v9);
    sub_1B5E08704();
    v10 = sub_1B5E0867C();
    v11(v10);
    v12 = sub_1B5E086A8();
    sub_1B5E063C0(v12, v13);
    sub_1B5DF3FB8(v2);
    v14 = sub_1B5E08764();
    sub_1B5E063F8(v14);
  }

  sub_1B5DF7180();
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17onBehalfOfProcessAA06ClientI4InfoVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17onBehalfOfProcessAA06ClientI4InfoVSgvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

void _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles15isUserInitiated23useExternalIntelligence17onBehalfOfProcess16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGS2bAA0vS4InfoVSgSayACGtcfC_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 4);

  if (a4 & 1) == 0 && (a5)
  {
    v24 = v17;
    v25 = v16;
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v18 = sub_1B5EA53B0();
    sub_1B5DFD794(v18, qword_1ED7D2990);
    v19 = sub_1B5EA5380();
    v20 = sub_1B5EA5A40();
    if (os_log_type_enabled(v19, v20))
    {
      v23 = a7;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B5DED000, v19, v20, "useExternalIntelligence should only be true for user initiated requests.", v21, 2u);
      v22 = v21;
      a7 = v23;
      MEMORY[0x1B8C8B330](v22, -1, -1);
    }

    v16 = v25;
    v17 = v24;
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = a5 & 1;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = v17;
  *(a8 + 56) = a7;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles15isUserInitiated17onBehalfOfProcess16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGSbAA0sP4InfoVSgSayACGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 4);

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 25) = 0;
  *(a7 + 32) = v13;
  *(a7 + 40) = v14;
  *(a7 + 48) = v15;
  *(a7 + 56) = a6;
  return result;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGSayACGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = a4;
  return result;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6StylesAESS_ShyAA0D6ClientC0D5StyleOGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B5E027BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B5EA4340();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = sub_1B5E05F94(a1);
  sub_1B5EA4330();
  v14 = sub_1B5EA4300();
  v16 = v15;
  (*(v7 + 8))(v12, v4);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = 0;
  *(a2 + 26) = v18;
  *(a2 + 30) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B5E028D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5E0888C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001B5EA8AD0 == a2;
    if (v6 || (sub_1B5E0888C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == sub_1B5E08A58() && a2 == v7;
      if (v8 || (sub_1B5E0888C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000017 && 0x80000001B5EA8AF0 == a2;
        if (v9 || (sub_1B5E0888C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0xD000000000000011 && 0x80000001B5EA8B10 == a2;
          if (v10 || (sub_1B5E0888C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
          {

            return 5;
          }

          else
          {
            v12 = sub_1B5E0888C();

            if (v12)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E02A68()
{
  result = sub_1B5E08A58();
  switch(v1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1B5E02B34(uint64_t a1)
{
  v2 = sub_1B5E06428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E02B70(uint64_t a1)
{
  v2 = sub_1B5E06428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B5E02BF0()
{
  sub_1B5DF7168();
  v36 = v2;
  v37 = v1;
  v4 = v3;
  v7 = sub_1B5DF33E0(v5, v6);
  sub_1B5DF5DA8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = *v0;
  v16 = v0[1];
  v35 = v0[2];
  v41 = *(v0 + 24);
  v34 = *(v0 + 25);
  v17 = v0[4];
  v32 = v0[5];
  v33 = v17;
  v31 = *(v0 + 12);
  v30 = v0[7];
  v18 = v4[3];
  v19 = v4[4];
  v20 = v4;
  v22 = v21;
  v23 = sub_1B5E0897C(v20, v18);
  v36(v23);
  sub_1B5EA6040();
  LOBYTE(v38) = 0;
  v24 = v14;
  v25 = v37;
  sub_1B5EA5E50();
  if (!v25)
  {
    v26 = v32;
    v27 = v33;
    v38 = v35;
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E0621C(&qword_1EB90CDA0);
    sub_1B5E089C0();
    sub_1B5EA5EA0();
    LOBYTE(v38) = 2;
    sub_1B5EA5E60();
    LOBYTE(v38) = 3;
    sub_1B5EA5E60();
    v38 = v27;
    v39 = v26;
    LODWORD(v40) = v31;
    sub_1B5E0617C();

    sub_1B5E089C0();
    sub_1B5EA5E40();

    v38 = v30;
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v28);
    sub_1B5E089C0();
    sub_1B5EA5EA0();
  }

  (*(v9 + 8))(v24, v22);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ThreadSummarizationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v3 = sub_1B5DF33E0(&qword_1EB90DBE0, &qword_1B5EAFCD8);
  sub_1B5DF5DA8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E06428();
  sub_1B5E08AAC();
  if (v0)
  {
    sub_1B5E08BB4();
  }

  else
  {
    sub_1B5E08668();
    sub_1B5EA5D70();
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E08804();
    sub_1B5E0621C(v8);
    sub_1B5E08704();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E062DC();
    sub_1B5E089D0();
    sub_1B5E0894C();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v9);
    sub_1B5E08704();
    v10 = sub_1B5E0867C();
    v11(v10);
    v12 = sub_1B5E086A8();
    sub_1B5E0647C(v12, v13);
    sub_1B5DF3FB8(v2);
    v14 = sub_1B5E08764();
    sub_1B5E064B4(v14);
  }

  sub_1B5DF7180();
}

uint64_t MailMessage.ClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.ClassificationOptions.previousMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

Sage::MailMessage::ClassificationOptions __swiftcall MailMessage.ClassificationOptions.init(requestIdentifier:isSenderImportant:previousMessages:)(Sage::MailMessage::ClassificationOptions requestIdentifier, Swift::Bool_optional isSenderImportant, Swift::OpaquePointer previousMessages)
{
  *v3 = requestIdentifier.requestIdentifier;
  *(v3 + 16) = isSenderImportant;
  *(v3 + 24) = previousMessages;
  requestIdentifier.previousMessages = previousMessages;
  requestIdentifier.isSenderImportant = isSenderImportant;
  return requestIdentifier;
}

Sage::MailMessage::ClassificationOptions __swiftcall MailMessage.ClassificationOptions.init()()
{
  v1 = v0;
  v2 = sub_1B5EA4340();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  sub_1B5EA4330();
  v11 = sub_1B5EA4300();
  v13 = v12;
  v14 = (*(v5 + 8))(v10, v2);
  *v1 = v11;
  *(v1 + 8) = v13;
  *(v1 + 16) = 2;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  result.previousMessages._rawValue = v17;
  result.requestIdentifier._object = v15;
  result.requestIdentifier._countAndFlagsBits = v14;
  result.isSenderImportant.value = v16;
  return result;
}

uint64_t sub_1B5E033D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001B5EA8B50 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
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

unint64_t sub_1B5E034EC(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_1B5E03548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E033D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E03570(uint64_t a1)
{
  v2 = sub_1B5E064E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E035AC(uint64_t a1)
{
  v2 = sub_1B5E064E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DBE8, &qword_1B5EAFCE0);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E08868();
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v15 = v0[3];
  v13 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E064E4();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5E08B70();
    sub_1B5E08798();
    sub_1B5EA5E20();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v14);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v7 + 8))(v2, v5);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DBF0, &qword_1B5EAFCE8);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E064E4();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v9 = sub_1B5EA5D70();
    v11 = v10;
    sub_1B5E08B70();
    sub_1B5E089F8();
    v16 = sub_1B5EA5D40();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v12);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v13 = sub_1B5E088E8();
    v14(v13, v5);
    *v4 = v9;
    *(v4 + 8) = v11;
    *(v4 + 16) = v16;
    *(v4 + 24) = v15;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t MailMessage.ThreadClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.ThreadClassificationOptions.previousMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

Sage::MailMessage::ThreadClassificationOptions __swiftcall MailMessage.ThreadClassificationOptions.init(requestIdentifier:previousMessages:)(Swift::String requestIdentifier, Swift::OpaquePointer previousMessages)
{
  *v2 = requestIdentifier;
  *(v2 + 16) = previousMessages;
  result.requestIdentifier = requestIdentifier;
  result.previousMessages = previousMessages;
  return result;
}

uint64_t sub_1B5E03AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

unint64_t sub_1B5E03B90(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1B5E03BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E03AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E03BF4(uint64_t a1)
{
  v2 = sub_1B5E06538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E03C30(uint64_t a1)
{
  v2 = sub_1B5E06538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ThreadClassificationOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DBF8, &qword_1B5EAFCF0);
  sub_1B5DF5DA8(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08868();
  v10 = *v0;
  v11 = v0[1];
  v14 = v0[2];
  v12 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E06538();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    sub_1B5E08B70();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v13);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v15 + 8))(v2, v5);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ThreadClassificationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DC08, &qword_1B5EAFCF8);
  sub_1B5DF5DA8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E06538();
  sub_1B5E08AD0();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    sub_1B5E089F8();
    v9 = sub_1B5EA5D70();
    v11 = v10;
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08B70();
    sub_1B5E08638();
    sub_1B5E06330(v12);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v13 = sub_1B5E088E8();
    v14(v13, v5);
    *v4 = v9;
    v4[1] = v11;
    v4[2] = v15;

    sub_1B5DF3FB8(v2);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5E040B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001B5EA8B70 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001B5EA8B90 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
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

uint64_t sub_1B5E041D4(char a1)
{
  if (!a1)
  {
    return 0x65736143657375;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000014;
}

uint64_t sub_1B5E04240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E040B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E04268(uint64_t a1)
{
  v2 = sub_1B5E0658C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E042A4(uint64_t a1)
{
  v2 = sub_1B5E0658C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.VisualPromptOptions.encode(to:)()
{
  sub_1B5DF7168();
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90DC10, &qword_1B5EAFD00);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E08868();
  v11 = *v0;
  v14 = v0[1];
  v13 = v0[2];
  v12 = v4[4];
  sub_1B5E0897C(v4, v4[3]);
  sub_1B5E0658C();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5E089B0();
  sub_1B5EA5EA0();
  if (!v1)
  {
    sub_1B5E089B0();
    sub_1B5EA5E60();
    sub_1B5E089B0();
    sub_1B5EA5E60();
  }

  (*(v7 + 8))(v2, v5);
  sub_1B5DF7180();
}

void MailMessage.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1B5DF7168();
  v15 = v14;
  v17 = v16;
  v18 = sub_1B5DF33E0(&qword_1EB90DC28, &qword_1B5EAFD08);
  sub_1B5DF5DA8(v18);
  v20 = *(v19 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E0658C();
  sub_1B5EA6030();
  if (!v13)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    v22 = sub_1B5EA5D80();
    v23 = sub_1B5EA5D80();
    v24 = sub_1B5E088E8();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v22 & 1;
    v17[2] = v23 & 1;
  }

  sub_1B5DF3FB8(v15);
  sub_1B5DF7180();
}

uint64_t sub_1B5E04668(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E046E0()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E04744()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E04788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E04668(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E047B4(uint64_t a1)
{
  v2 = sub_1B5E06688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E047F0(uint64_t a1)
{
  v2 = sub_1B5E06688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ThreadVisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DC38, &qword_1B5EAFD10);
  sub_1B5DF5DA8(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = *v23;
  v37 = v27[4];
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E06688();
  sub_1B5EA6040();
  a13 = v36;
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v30 + 8))(v35, v28);
  sub_1B5DF7180();
}

void MailMessage.ThreadVisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1B5DF33E0(&qword_1EB90DC48, &qword_1B5EAFD18);
  sub_1B5DF5DA8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1B5E08834();
  sub_1B5E06688();
  sub_1B5EA6030();
  if (!v23)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v32 + 8))(v37, v30);
    *v29 = a13;
  }

  sub_1B5DF3FB8(v27);
  sub_1B5DF7180();
}

uint64_t MailMessage.messageID.setter()
{
  sub_1B5DFA47C();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.sender.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1B5E066DC(v7, &v6);
}

__n128 MailMessage.sender.setter(uint64_t a1)
{
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v7[0] = v1[3];
  *(v7 + 9) = *(v1 + 57);
  sub_1B5E06738(v6);
  v4 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 57) = result;
  return result;
}

uint64_t MailMessage.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MailMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MailMessage() + 28);
  v4 = sub_1B5EA42F0();
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MailMessage.dateReceived.setter()
{
  v2 = *(sub_1B5E08A40() + 28);
  v3 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MailMessage.isUnread.setter(char a1)
{
  result = type metadata accessor for MailMessage();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MailMessage.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for MailMessage() + 36));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B5DFA488();
}

uint64_t MailMessage.subject.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for MailMessage() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailMessage.body.getter()
{
  v1 = (v0 + *(type metadata accessor for MailMessage() + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B5DFA488();
}

uint64_t MailMessage.body.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for MailMessage() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailMessage.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for MailMessage() + 44));
}

uint64_t MailMessage.attachments.setter()
{
  v2 = *(sub_1B5E08A40() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MailMessage.init(messageID:sender:recipients:dateReceived:isUnread:subject:body:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for MailMessage();
  v19 = (a9 + v18[9]);
  v20 = (a9 + v18[10]);
  *a9 = a1;
  *(a9 + 8) = a2;
  v21 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v21;
  *(a9 + 48) = a3[2];
  *(a9 + 57) = *(a3 + 41);
  *(a9 + 80) = a4;
  v22 = v18[7];
  v23 = sub_1B5EA42F0();
  sub_1B5DF5EB8(v23);
  result = (*(v24 + 32))(a9 + v22, a5);
  *(a9 + v18[8]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *v20 = a10;
  v20[1] = a11;
  *(a9 + v18[11]) = a12;
  return result;
}

uint64_t sub_1B5E05128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646165726E557369 && a2 == 0xE800000000000000;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 2036625250 && a2 == 0xE400000000000000;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E053BC(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x6E65697069636572;
      break;
    case 3:
      result = 0x6563655265746164;
      break;
    case 4:
      result = 0x646165726E557369;
      break;
    case 5:
      result = 0x7463656A627573;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E054AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E05500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E05128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E05528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E053B4();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E05550(uint64_t a1)
{
  v2 = sub_1B5E0678C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0558C(uint64_t a1)
{
  v2 = sub_1B5E0678C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v0;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90DC50, &unk_1B5EAFD20);
  sub_1B5DF5DA8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E08868();
  v12 = v5[4];
  sub_1B5E0897C(v5, v5[3]);
  sub_1B5E0678C();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  v13 = *v3;
  v14 = v3[1];
  v36 = 0;
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    v15 = *(v3 + 2);
    v34[0] = *(v3 + 1);
    v34[1] = v15;
    v17 = *(v3 + 1);
    v16 = *(v3 + 2);
    *v35 = *(v3 + 3);
    *&v35[9] = *(v3 + 57);
    v31 = v17;
    v32 = v16;
    v33[0] = *(v3 + 3);
    *(v33 + 9) = *(v3 + 57);
    v30[63] = 1;
    sub_1B5E066DC(v34, v30);
    sub_1B5E067E0();
    sub_1B5E08798();
    sub_1B5EA5EA0();
    sub_1B5E0891C();
    v28 = v3[10];
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E06918(&qword_1EB90CDB0);
    sub_1B5E08798();
    sub_1B5EA5EA0();
    v18 = type metadata accessor for MailMessage();
    v19 = v18[7];
    sub_1B5E08B3C(3);
    sub_1B5EA42F0();
    sub_1B5E0881C();
    sub_1B5E08594(v20);
    sub_1B5E08798();
    sub_1B5EA5EA0();
    v21 = *(v3 + v18[8]);
    sub_1B5E08B3C(4);
    sub_1B5E08798();
    sub_1B5EA5E60();
    v22 = (v3 + v18[9]);
    v23 = *v22;
    v24 = v22[1];
    sub_1B5E08B3C(5);
    sub_1B5E08798();
    sub_1B5EA5E10();
    v25 = (v3 + v18[10]);
    v26 = *v25;
    v27 = v25[1];
    sub_1B5E08B3C(6);
    sub_1B5E08798();
    sub_1B5EA5E10();
    v29 = *(v3 + v18[11]);
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E06834(&unk_1EB90CE10);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v8 + 8))(v2, v6);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v33 = v3;
  v4 = sub_1B5EA42F0();
  v5 = sub_1B5DF5DA8(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v34 = sub_1B5DF33E0(&qword_1EB90DC68, &qword_1B5EAFD38);
  sub_1B5DF5DA8(v34);
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5E08858();
  v35 = type metadata accessor for MailMessage();
  v15 = sub_1B5DF5EB8(v35);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E0678C();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    LOBYTE(v39) = 0;
    *v20 = sub_1B5EA5D70();
    *(v20 + 8) = v22;
    sub_1B5E068C4();
    sub_1B5EA5DC0();
    v23 = v40;
    *(v20 + 16) = v39;
    *(v20 + 32) = v23;
    *(v20 + 48) = *v41;
    *(v20 + 57) = *&v41[9];
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E06918(&qword_1EB90CDA8);
    sub_1B5EA5DC0();
    *(v20 + 80) = v38;
    LOBYTE(v38) = 3;
    sub_1B5E0881C();
    sub_1B5E08594(v24);
    sub_1B5EA5DC0();
    (*(v36 + 32))(v20 + v35[7], v11, v37);
    sub_1B5E08878(4);
    *(v20 + v35[8]) = sub_1B5EA5D80() & 1;
    sub_1B5E08878(5);
    v25 = sub_1B5EA5D30();
    v26 = (v20 + v35[9]);
    *v26 = v25;
    v26[1] = v27;
    sub_1B5E08878(6);
    v28 = sub_1B5EA5D30();
    v29 = (v20 + v35[10]);
    *v29 = v28;
    v29[1] = v30;
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E06834(&unk_1EB90CE08);
    sub_1B5EA5DC0();
    v31 = sub_1B5E0868C();
    v32(v31);
    *(v20 + v35[11]) = v38;
    sub_1B5E06984(v20, v33);
    sub_1B5DF3FB8(v2);
    sub_1B5E069E8(v20);
  }

  sub_1B5DF7180();
}

Sage::MailMessage::VisualPromptOptions __swiftcall MailMessage.VisualPromptOptions.init()()
{
  *v0 = 258;
  *(v0 + 2) = 0;
  return result;
}

Sage::MailMessage::VisualPromptOptions __swiftcall MailMessage.VisualPromptOptions.init(extractVisualConcepts:extractVisualTopLine:)(Swift::Bool extractVisualConcepts, Swift::Bool extractVisualTopLine)
{
  *v2 = 2;
  v2[1] = extractVisualConcepts;
  v2[2] = extractVisualTopLine;
  result.useCase = extractVisualConcepts;
  return result;
}

uint64_t sub_1B5E05F94(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  sub_1B5DF33E0(&qword_1EB90DD58, &unk_1B5EB0910);
  result = sub_1B5E08A90();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    v8 = *(v3 + 40);
    sub_1B5EA5FD0();
    MEMORY[0x1B8C8AC00](v7);
    result = sub_1B5EA6020();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1B5E060D4()
{
  result = qword_1EB90D8B0;
  if (!qword_1EB90D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8B0);
  }

  return result;
}

unint64_t sub_1B5E06128()
{
  result = qword_1EB90D018;
  if (!qword_1EB90D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D018);
  }

  return result;
}

unint64_t sub_1B5E0617C()
{
  result = qword_1EB90D768;
  if (!qword_1EB90D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D768);
  }

  return result;
}

uint64_t type metadata accessor for MailMessage()
{
  result = qword_1ED7D28D0;
  if (!qword_1ED7D28D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B5E0621C(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    v4();
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E06288()
{
  result = qword_1EB90D010;
  if (!qword_1EB90D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D010);
  }

  return result;
}

unint64_t sub_1B5E062DC()
{
  result = qword_1EB90D080;
  if (!qword_1EB90D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D080);
  }

  return result;
}

unint64_t sub_1B5E06330(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08594(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E06428()
{
  result = qword_1EB90DBD8;
  if (!qword_1EB90DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DBD8);
  }

  return result;
}

unint64_t sub_1B5E064E4()
{
  result = qword_1EB90D898;
  if (!qword_1EB90D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D898);
  }

  return result;
}

unint64_t sub_1B5E06538()
{
  result = qword_1EB90DC00;
  if (!qword_1EB90DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC00);
  }

  return result;
}

unint64_t sub_1B5E0658C()
{
  result = qword_1EB90DC18;
  if (!qword_1EB90DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC18);
  }

  return result;
}

unint64_t sub_1B5E065E0()
{
  result = qword_1EB90DC20;
  if (!qword_1EB90DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC20);
  }

  return result;
}

unint64_t sub_1B5E06634()
{
  result = qword_1EB90DC30;
  if (!qword_1EB90DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC30);
  }

  return result;
}

unint64_t sub_1B5E06688()
{
  result = qword_1EB90DC40;
  if (!qword_1EB90DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC40);
  }

  return result;
}

unint64_t sub_1B5E0678C()
{
  result = qword_1EB90D8C8;
  if (!qword_1EB90D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8C8);
  }

  return result;
}

unint64_t sub_1B5E067E0()
{
  result = qword_1EB90CE58;
  if (!qword_1EB90CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE58);
  }

  return result;
}

unint64_t sub_1B5E06834(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E08594(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E068C4()
{
  result = qword_1EB90CE50;
  if (!qword_1EB90CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE50);
  }

  return result;
}

unint64_t sub_1B5E06918(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DC58, &unk_1B5EB2BC0);
    v4();
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B5E06984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E069E8(uint64_t a1)
{
  v2 = type metadata accessor for MailMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E06A48()
{
  result = qword_1EB90D148;
  if (!qword_1EB90D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D148);
  }

  return result;
}

unint64_t sub_1B5E06AA0()
{
  result = qword_1EB90D150;
  if (!qword_1EB90D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D150);
  }

  return result;
}

unint64_t sub_1B5E06AF8()
{
  result = qword_1EB90D158;
  if (!qword_1EB90D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D158);
  }

  return result;
}

unint64_t sub_1B5E06B50()
{
  result = qword_1EB90D160;
  if (!qword_1EB90D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D160);
  }

  return result;
}

unint64_t sub_1B5E06BA8()
{
  result = qword_1EB90DC70;
  if (!qword_1EB90DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC70);
  }

  return result;
}

unint64_t sub_1B5E06C00()
{
  result = qword_1EB90DC78;
  if (!qword_1EB90DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC78);
  }

  return result;
}

unint64_t sub_1B5E06C58()
{
  result = qword_1EB90DC80;
  if (!qword_1EB90DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC80);
  }

  return result;
}

unint64_t sub_1B5E06CB0()
{
  result = qword_1EB90DC88;
  if (!qword_1EB90DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC88);
  }

  return result;
}

unint64_t sub_1B5E06D08()
{
  result = qword_1EB90DC90;
  if (!qword_1EB90DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC90);
  }

  return result;
}

unint64_t sub_1B5E06D60()
{
  result = qword_1EB90DC98;
  if (!qword_1EB90DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC98);
  }

  return result;
}

unint64_t sub_1B5E06DB8()
{
  result = qword_1EB90DCA0;
  if (!qword_1EB90DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCA0);
  }

  return result;
}

unint64_t sub_1B5E06E10()
{
  result = qword_1EB90DCA8;
  if (!qword_1EB90DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCA8);
  }

  return result;
}

unint64_t sub_1B5E06E64(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E08594(&unk_1ED7D28E0);
  sub_1B5E08650();
  result = sub_1B5E08594(v2);
  *(a1 + 16) = result;
  return result;
}

void sub_1B5E06F00()
{
  sub_1B5E07014(319, &qword_1ED7D2010, &type metadata for Handle, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B5EA42F0();
    if (v1 <= 0x3F)
    {
      sub_1B5E07014(319, &qword_1ED7D2D00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B5E07064();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5E07014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B5E07064()
{
  if (!qword_1ED7D2030)
  {
    type metadata accessor for Attachment();
    v0 = sub_1B5EA58A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2030);
    }
  }
}

__n128 sub_1B5E070BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B5E070E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5E07120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}