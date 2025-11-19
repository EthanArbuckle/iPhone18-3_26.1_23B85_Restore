unint64_t sub_1DCCECD78()
{
  result = qword_1ECCA4468;
  if (!qword_1ECCA4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4468);
  }

  return result;
}

unint64_t sub_1DCCECDD0()
{
  result = qword_1ECCA4470;
  if (!qword_1ECCA4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4470);
  }

  return result;
}

uint64_t DialogSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t DialogSection.content.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t DialogSection.caption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DCB40A04(v2, v3);
}

void __swiftcall DialogSection.init(id:content:caption:spokenOnly:)(SiriKitFlow::DialogSection *__return_ptr retstr, Swift::String id, SiriKitFlow::DialogText content, SiriKitFlow::DialogText_optional caption, Swift::Bool spokenOnly)
{
  v5 = *content.text._object;
  v6 = *(content.text._object + 1);
  retstr->content.speakableTextOverride = *(content.text._countAndFlagsBits + 16);
  retstr->caption.value.text = v5;
  v7 = *content.text._countAndFlagsBits;
  v8 = *(content.text._countAndFlagsBits + 8);
  retstr->id = id;
  retstr->content.text._countAndFlagsBits = v7;
  retstr->content.text._object = v8;
  retstr->caption.value.speakableTextOverride = v6;
  retstr->spokenOnly = content.speakableTextOverride.value._countAndFlagsBits;
}

uint64_t DialogText.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t DialogText.speakableTextOverride.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t VisualResult.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E80(v3, v4);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t DialogVisualResult.dialog.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DCCECFA8(v2, v3);
}

uint64_t sub_1DCCECFA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void DialogVisualResult.visual.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1DCCED00C(v2, v3, v4, v5);
}

void sub_1DCCED00C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1DCC91E80(a3, a4);
  }
}

__n128 DialogVisualResult.init(dialog:visual:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  result = *a2;
  v5 = *(a2 + 16);
  a3[2] = *a2;
  a3[3] = v5;
  return result;
}

uint64_t destroy for DialogResult(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];
}

void *initializeWithCopy for DialogResult(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for DialogResult(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  v6 = a2[3];
  v7 = a1[3];
  a1[3] = v6;

  return a1;
}

void *assignWithTake for DialogResult(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t destroy for DialogSection(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  result = a1[7];
  if (result)
  {

    v6 = a1[9];
  }

  return result;
}

uint64_t initializeWithCopy for DialogSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);

  if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v8 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v8;
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for DialogSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      v8 = *(a1 + 72);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCED420(a1 + 48);
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
    }
  }

  else if (v7)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for DialogSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
    sub_1DCCED420(a1 + 48);
LABEL_5:
    v13 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v13;
    goto LABEL_6;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v10;

  v11 = *(a2 + 72);
  v12 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;

LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogSection(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for DialogSection(uint64_t result, int a2, int a3)
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

uint64_t destroy for VisualResult(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];
  v4 = a1[3];

  return sub_1DCB21A14(v3, v4);
}

void *initializeWithCopy for VisualResult(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  v5 = a2[3];

  sub_1DCC91E80(v4, v5);
  a1[2] = v4;
  a1[3] = v5;
  return a1;
}

void *assignWithCopy for VisualResult(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v6 = a2[2];
  v5 = a2[3];
  sub_1DCC91E80(v6, v5);
  v7 = a1[2];
  v8 = a1[3];
  a1[2] = v6;
  a1[3] = v5;
  sub_1DCB21A14(v7, v8);
  return a1;
}

void *assignWithTake for VisualResult(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a1[2];
  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  sub_1DCB21A14(v6, v7);
  return a1;
}

uint64_t destroy for DialogVisualResult(void *a1)
{
  if (a1[1])
  {

    v2 = a1[2];

    v3 = a1[3];
  }

  result = a1[5];
  if (result)
  {

    v5 = a1[6];
    v6 = a1[7];

    return sub_1DCB21A14(v5, v6);
  }

  return result;
}

void *initializeWithCopy for DialogVisualResult(void *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    *a1 = *a2;
    a1[1] = v4;
    v5 = a2[3];
    a1[2] = a2[2];
    a1[3] = v5;
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
  }

  v7 = a2[5];
  if (v7)
  {
    a1[4] = a2[4];
    a1[5] = v7;
    v9 = a2[6];
    v8 = a2[7];

    sub_1DCC91E80(v9, v8);
    a1[6] = v9;
    a1[7] = v8;
  }

  else
  {
    v10 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v10;
  }

  return a1;
}

void *assignWithCopy for DialogVisualResult(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      v5 = a1[2];
      a1[2] = a2[2];

      v6 = a1[3];
      a1[3] = a2[3];
    }

    else
    {
      sub_1DCCED974(a1);
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
  }

  else
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
  }

  v9 = a2[5];
  if (a1[5])
  {
    if (v9)
    {
      a1[4] = a2[4];
      a1[5] = a2[5];

      v11 = a2[6];
      v10 = a2[7];
      sub_1DCC91E80(v11, v10);
      v12 = a1[6];
      v13 = a1[7];
      a1[6] = v11;
      a1[7] = v10;
      sub_1DCB21A14(v12, v13);
    }

    else
    {
      sub_1DCCED9A4(a1 + 4);
      v16 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v16;
    }
  }

  else if (v9)
  {
    a1[4] = a2[4];
    a1[5] = a2[5];
    v15 = a2[6];
    v14 = a2[7];

    sub_1DCC91E80(v15, v14);
    a1[6] = v15;
    a1[7] = v14;
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
  }

  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

void *assignWithTake for DialogVisualResult(void *a1, uint64_t a2)
{
  if (a1[1])
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      a1[1] = v4;

      v5 = a1[2];
      a1[2] = *(a2 + 16);

      v6 = a1[3];
      a1[3] = *(a2 + 24);

      goto LABEL_6;
    }

    sub_1DCCED974(a1);
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v7;
LABEL_6:
  if (!a1[5])
  {
LABEL_10:
    v11 = *(a2 + 48);
    *(a1 + 2) = *(a2 + 32);
    *(a1 + 3) = v11;
    return a1;
  }

  v8 = *(a2 + 40);
  if (!v8)
  {
    sub_1DCCED9A4(a1 + 4);
    goto LABEL_10;
  }

  a1[4] = *(a2 + 32);
  a1[5] = v8;

  v9 = a1[6];
  v10 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  sub_1DCB21A14(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for DialogVisualResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DialogVisualResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCCEDB74(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCEDB94, 0, 0);
}

uint64_t sub_1DCCEDB94()
{
  v16 = v0;
  v1 = v0[6];
  type metadata accessor for ParameterWrapper();
  *(swift_initStackObject() + 16) = v1;

  OUTLINED_FUNCTION_0_41();
  v2 = sub_1DD0B3E1C();
  v4 = v3;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);

  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(v2, v4, &v15);
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Sending direct invocation %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = sub_1DCC6A1F8(0x6174614472657375, 0xE800000000000000);

  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v12;
  *(v11 + 40) = 0;
  v13 = v0[1];

  return v13();
}

uint64_t sub_1DCCEDDC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCCEDB74(a1, a2);
}

uint64_t sub_1DCCEDE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Parse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  swift_storeEnumTagMultiPayload();
  v12 = qword_1EDE4F518;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_1DCD3B154();
  sub_1DCB284D8(v11, type metadata accessor for Parse);
  result = 0;
  if (v13)
  {
    result = type metadata accessor for AnyFlow();
    v15 = &protocol witness table for AnyFlow;
  }

  else
  {
    v15 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v13;
  a4[3] = result;
  a4[4] = v15;
  return result;
}

uint64_t sub_1DCCEDFD0()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v3 = type metadata accessor for Parse(0);
  v1[19] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for Input(0);
  v1[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCCEE090, 0, 0);
}

uint64_t sub_1DCCEE090()
{
  v1 = v0[18];
  if (*(v1 + 96) == 1)
  {
    sub_1DCCEDE68(*(v1 + 32), *(v1 + 40), *(v1 + 48), v0 + 7);
    if (!v0[10])
    {
      sub_1DCCEEB48((v0 + 7));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = v0[18];
      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      sub_1DD0DCF8C();
    }

    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    sub_1DCB18FF0((v0 + 7), (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = *(v1 + 32);
    v0[23] = v8;
    v9 = *(v1 + 40);
    v0[24] = v9;
    v10 = *(v1 + 48);
    *v4 = v8;
    v4[1] = v9;
    v4[2] = v10;
    swift_storeEnumTagMultiPayload();
    v11 = v2 + v3[7];
    *(v11 + 32) = 0;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    sub_1DCB29E58(v4, v2 + v3[5]);
    *(v2 + v3[6]) = MEMORY[0x1E69E7CC0];

    sub_1DD0DB03C();
    sub_1DCB284D8(v4, type metadata accessor for Parse);
    *(v2 + v3[8]) = 0;
    v12 = *(v7 + 24);
    v27 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = sub_1DCCEE4FC;
    v15 = v0[22];

    return v27(v15, v6, v7);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Invocation sent exiting as complete.", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    v21 = v0[17];

    static ExecuteResponse.complete()();
    v24 = v0[22];
    v25 = v0[20];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1DCCEE4FC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v5 = *v0;
  *(*v0 + 208) = v3;

  sub_1DCB284D8(v2, type metadata accessor for Input);

  return MEMORY[0x1EEE6DFA0](sub_1DCCEE62C, 0, 0);
}

void sub_1DCCEE62C()
{
  v7 = v0;
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 136);
    *(*(v0 + 144) + 96) = 0;
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_1DCC05848(v2, v3, (v0 + 96));
    v4 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = *(v0 + 144);
  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCCEE894(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1DCCEE8D4(&v2);
}

void sub_1DCCEE8D4(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Child flow returned with an exitValue.", v8, 2u);
    OUTLINED_FUNCTION_37();
  }

  v9 = *(v2 + 16);
  *(v2 + 16) = v3;
  v10 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1DCC5F868(v3, v4);

  sub_1DCC5F884(v9, v10);
}

uint64_t sub_1DCCEE9D8()
{
  sub_1DCC5F884(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCCEEA1C()
{
  sub_1DCCEE9D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCEEA98()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBFA404;

  return sub_1DCCEDFD0();
}

id sub_1DCCEEB30@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  *a1 = v3;
  v4 = *(v2 + 24);
  *(a1 + 8) = v4;
  return sub_1DCC5F868(v3, v4);
}

uint64_t sub_1DCCEEB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4478, &unk_1DD0EC670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationExecutingFlow.DirectInvocationFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCCEEC9C()
{
  result = qword_1ECCA4480[0];
  if (!qword_1ECCA4480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA4480);
  }

  return result;
}

void *sub_1DCCEECF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Input(0);
  sub_1DCB29E58(a1 + *(v9 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v11 = *v8;
    v10 = v8[1];
    v89 = v8[2];
    v90 = v10;
    v12 = a2 + 64;
    v13 = 1 << *(a2 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a2 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v93 = 0;
    *&v18 = 136315138;
    v79 = v18;
    *&v18 = 136315394;
    v86 = v18;
    *&v18 = 136315650;
    v87 = v18;
    v91 = v11;
    v82 = v16;
    v81 = a2;
    v80 = a2 + 64;
LABEL_5:
    while (v15)
    {
      v19 = v15;
      v20 = v17;
LABEL_10:
      v84 = (v19 - 1) & v19;
      v83 = v20;
      v21 = __clz(__rbit64(v19)) | (v20 << 6);
      v22 = *(a2 + 56);
      v23 = (*(a2 + 48) + 16 * v21);
      v24 = v23[1];
      v88 = *v23;
      v25 = *(v22 + 8 * v21);
      v96 = type metadata accessor for ParameterWrapper();
      inited = swift_initStackObject();
      *(inited + 16) = v25;

      v85 = inited;
      v27 = sub_1DCC6A478(0x697461636F766E69, 0xEB00000000736E6FLL, MEMORY[0x1E69E7CC0]);
      v28 = v27;
      v95 = *(v27 + 16);
      if (v95)
      {
        v29 = 0;
        v30 = &off_1EDE4F000;
        v31 = v93;
        v92 = v24;
        v94 = v27;
        while (v29 < *(v28 + 16))
        {
          v32 = *(v28 + 8 * v29 + 32);
          v33 = swift_allocObject();
          *(v33 + 16) = v32;
          swift_bridgeObjectRetain_n();
          v34 = sub_1DCD14914();
          if (v31)
          {
            if (v30[288] != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v36 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v36, qword_1EDE57E00);

            v37 = sub_1DD0DD8EC();
            v38 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v97[0] = swift_slowAlloc();
              *v39 = v87;
              *(v39 + 4) = sub_1DCB10E9C(v88, v24, v97);
              *(v39 + 12) = 2080;
              *(v39 + 14) = sub_1DCB10E9C(0x696669746E656469, 0xEA00000000007265, v97);
              *(v39 + 22) = 2080;
              v40 = sub_1DD0DDE7C();
              v42 = v41;

              v43 = sub_1DCB10E9C(v40, v42, v97);
              v11 = v91;

              *(v39 + 24) = v43;
              v24 = v92;
              _os_log_impl(&dword_1DCAFC000, v37, v38, "Configuration for eventId '%s' is invalid. Parameter %s is required: %s", v39, 0x20u);
              swift_arrayDestroy();
              v30 = &off_1EDE4F000;
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            v31 = 0;
          }

          else
          {
            v44 = v34;
            v45 = v35;

            v46 = v90;
            v47 = v44 == v11 && v45 == v90;
            if (v47 || (sub_1DD0DF0AC() & 1) != 0)
            {

              v73 = v85;
              swift_setDeallocating();
              v74 = *(v73 + 16);

              v75 = swift_allocObject();
              v75[2] = v11;
              v75[3] = v46;
              v76 = v88;
              v75[4] = v89;
              v75[5] = v76;
              v75[6] = v92;
              v75[7] = v33;
              return &unk_1DD0EC7D8;
            }

            v93 = 0;
            if (v30[288] != -1)
            {
              OUTLINED_FUNCTION_1_2();
              swift_once();
            }

            v48 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v48, qword_1EDE57E00);

            v49 = sub_1DD0DD8EC();
            v50 = sub_1DD0DE6DC();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v97[0] = swift_slowAlloc();
              *v51 = v86;

              v52 = sub_1DCB10E9C(v11, v46, v97);

              *(v51 + 4) = v52;
              v11 = v91;
              *(v51 + 12) = 2080;
              v53 = sub_1DCB10E9C(v44, v45, v97);

              *(v51 + 14) = v53;
              _os_log_impl(&dword_1DCAFC000, v49, v50, "Input DI identifier '%s' is not a match for desired identifier '%s'. Continuing", v51, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();
            }

            else
            {
            }

            v30 = &off_1EDE4F000;
            v24 = v92;
            v31 = v93;
          }

          ++v29;
          v28 = v94;
          if (v95 == v29)
          {
            v93 = v31;
            v64 = v85;
            swift_setDeallocating();
            v65 = *(v64 + 16);

            v17 = v83;
            a2 = v81;
            v12 = v80;
            v16 = v82;
            v15 = v84;
            goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_50;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v54 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v54, qword_1EDE57E00);

      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6EC();

      v57 = os_log_type_enabled(v55, v56);
      v16 = v82;
      if (v57)
      {
        v58 = v24;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v97[0] = v60;
        *v59 = v79;
        v61 = sub_1DCB10E9C(v88, v58, v97);

        *(v59 + 4) = v61;
        _os_log_impl(&dword_1DCAFC000, v55, v56, "No invocation configurations provided for eventId: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
        v62 = v85;
        swift_setDeallocating();
        v63 = *(v62 + 16);
      }

      else
      {

        v66 = v85;
        swift_setDeallocating();
        v67 = *(v66 + 16);
      }

      v17 = v83;
      v15 = v84;
    }

    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v78 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v78, qword_1EDE57E00);
        v69 = sub_1DD0DD8EC();
        v70 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          v72 = "Could not match DirectInvocation to any provided configuration. Will not process";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v19 = *(v12 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

  else
  {
    sub_1DCB29EBC(v8);
    if (qword_1EDE4F900 == -1)
    {
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_40:
  v68 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v68, qword_1EDE57E00);
  v69 = sub_1DD0DD8EC();
  v70 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Provided input is not a direct invocation with identifier. Will not process.";
LABEL_47:
    _os_log_impl(&dword_1DCAFC000, v69, v70, v72, v71, 2u);
    OUTLINED_FUNCTION_80();
  }

LABEL_48:

  return 0;
}

uint64_t sub_1DCCEF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCEF6A0, 0, 0);
}

uint64_t sub_1DCCEF6A0()
{
  v20 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1DCB10E9C(v10, v9, &v19);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DCB10E9C(v8, v7, &v19);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Matched invocation identifier: %s to eventId: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v15 = v0[2];
  v16 = sub_1DCC6A52C(0x6174614472657375, 0xE800000000000000, MEMORY[0x1E69E7CC8]);
  *v15 = v14;
  *(v15 + 8) = v12;
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  v18 = v0[1];

  return v18();
}

uint64_t sub_1DCCEF8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DCB193FC;

  return sub_1DCCEF674(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t BasicDisambiguationItemContainer.__allocating_init(_:_:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = a2;
  return result;
}

uint64_t BasicDisambiguationItemContainer.init(_:_:)(uint64_t a1, char a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t BasicDisambiguationItemContainer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t BasicDisambiguationItemContainer.__deallocating_deinit()
{
  BasicDisambiguationItemContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCEFBC4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a8;
  v62 = a1;
  v63 = a2;
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v64 = v18 - v17;
  v20 = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v66 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v51 - v27;
  v29 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v30);
  OUTLINED_FUNCTION_16();
  v60 = v32 - v31;
  v33 = swift_getAssociatedTypeWitness();
  v34 = OUTLINED_FUNCTION_9(v33);
  v54 = v35;
  v55 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v51 - v40;
  v42 = sub_1DD0DE5DC();
  if (!v42)
  {
    return sub_1DD0DE37C();
  }

  v65 = v42;
  v69 = sub_1DD0DED4C();
  v56 = sub_1DD0DED5C();
  sub_1DD0DECFC();
  result = sub_1DD0DE5CC();
  if ((v65 & 0x8000000000000000) == 0)
  {
    v51 = v12;
    v52 = a5;
    v44 = 0;
    v57 = (v66 + 16);
    v58 = v66 + 8;
    v59 = v8;
    while (!__OFADD__(v44, 1))
    {
      v66 = v44 + 1;
      v45 = sub_1DD0DE66C();
      (*v57)(v28);
      v45(v68, 0);
      v46 = v67;
      v62(v28, v64);
      if (v46)
      {
        v49 = OUTLINED_FUNCTION_31_13();
        v50(v49);
        (*(v54 + 8))(v41, v55);

        return (*(v51 + 32))(v53, v64, v52);
      }

      v67 = 0;
      v47 = OUTLINED_FUNCTION_31_13();
      v48(v47);
      sub_1DD0DED3C();
      result = sub_1DD0DE62C();
      ++v44;
      if (v66 == v65)
      {
        (*(v54 + 8))(v41, v55);
        return v69;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCCEFF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_2();
  v5 = v4;
  v7 = *(v6 + 160);
  swift_beginAccess();
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  v10 = OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_2(v10);
  return (*(v11 + 16))(a1, &v1[v7]);
}

uint64_t sub_1DCCF0044(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_2();
  v5 = v4;
  v7 = *(v6 + 160);
  swift_beginAccess();
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  v10 = OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_2(v10);
  (*(v11 + 40))(&v1[v7], a1);
  return swift_endAccess();
}

uint64_t DisambiguationPrompt.__allocating_init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DisambiguationPrompt.init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)();
  return v3;
}

void DisambiguationPrompt.init(choices:usoKeyPath:responseBundleProducer:itemToEntityMapper:responseFactory:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v64 = v3;
  v65 = v2;
  v5 = v4;
  v7 = v6;
  v60 = v8;
  v10 = v9;
  v11 = *v0;
  v12 = *(v11 + 88);
  v67 = *(v11 + 96);
  v13 = v67;
  OUTLINED_FUNCTION_25_0();
  v14 = type metadata accessor for USOKeyPath();
  OUTLINED_FUNCTION_9(v14);
  v66 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  v58 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v52 - v21;
  v61 = v10;
  v75 = v10;
  v23 = *(v11 + 80);
  v68[2] = v23;
  v68[3] = v12;
  v69 = v67;
  v56 = v7;
  v70 = v7;
  v71 = v5;
  v57 = v5;
  OUTLINED_FUNCTION_24_17();
  v24 = sub_1DD0DE40C();
  v62 = v23;
  *&v72 = v23;
  *(&v72 + 1) = v12;
  OUTLINED_FUNCTION_32_12();
  v25 = type metadata accessor for DisambiguationPrompt.Choice();
  WitnessTable = swift_getWitnessTable();
  v55 = v24;
  v54 = WitnessTable;
  v1[2] = sub_1DCCEFBC4(sub_1DCCF0888, v68, v24, v25, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);
  v28 = type metadata accessor for InputResolverAdapter();
  v53 = *(v66 + 16);
  v53(v22, v60, v14);
  OUTLINED_FUNCTION_25_0();
  *(&v73 + 1) = type metadata accessor for PromptInputResolver();
  v74 = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v72);
  v59 = v22;
  sub_1DCE9748C(v22, boxed_opaque_existential_1Tm);
  v30 = v14;
  v31 = sub_1DCCF09BC(&v72);
  v1[18] = v28;
  v32 = swift_getWitnessTable();
  v1[15] = v31;
  v1[19] = v32;
  sub_1DCB17D04(v65, (v1 + 3));
  v52[1] = v1 + 8;
  v33 = sub_1DCB17D04(v64, (v1 + 8));
  v75 = v61;
  MEMORY[0x1EEE9AC00](v33, v34);
  v52[-6] = v62;
  v52[-5] = v12;
  v63 = v12;
  *&v52[-4] = v67;
  v35 = v57;
  v52[-2] = v56;
  v52[-1] = v35;
  v37 = sub_1DCCEFBC4(sub_1DCCF0A00, &v52[-8], v55, v13, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v36);

  v38 = v59;
  v39 = v60;
  v53(v59, v60, v30);
  v40 = v66;
  v41 = (*(v66 + 80) + 56) & ~*(v66 + 80);
  v42 = swift_allocObject();
  v43 = v62;
  v44 = v63;
  *(v42 + 16) = v62;
  *(v42 + 24) = v44;
  *(v42 + 32) = v67;
  *(v42 + 48) = v37;
  (*(v40 + 32))(v42 + v41, v38, v30);
  v1[13] = sub_1DCCF0D6C;
  v1[14] = v42;
  if (*(v39 + 24))
  {
    v45 = *(v39 + 16);
    v46 = *(v39 + 24);
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  v48 = v64;
  v47 = v65;

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  (*(v66 + 8))(v39, v30);
  v1[20] = v45;
  v1[21] = v46;
  v49 = *(*v1 + 160);
  *&v50 = v43;
  *(&v50 + 1) = v63;
  v72 = v50;
  v73 = v67;
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_24_17();
  v51 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v1 + v49, 1, 1, v51);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF0724@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22[1] = a5;
  v11 = *(*(a4 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  (*(v19 + 16))(v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20);
  a2(a1);
  return sub_1DCCF08F8(v14, a3, a4, a6);
}

uint64_t sub_1DCCF0888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  return sub_1DCCF0724(a1, *(v2 + 48), *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1DCCF08F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_112(a2);
  (*(v7 + 32))(a4);
  v8 = type metadata accessor for DisambiguationPrompt.Choice();
  return (*(*(a3 - 8) + 32))(a4 + *(v8 + 52), a1, a3);
}

uint64_t sub_1DCCF09BC(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DCAFF9E8(a1, v2 + 16);
  return v2;
}

uint64_t sub_1DCCF0A00()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1DCCF0A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a2;
  v42 = a6;
  v10 = sub_1DD0DE97C();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v36 = &v33 - v13;
  v14 = sub_1DD0DBAAC();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v33 = a5;
  v34 = &v33 - v17;
  v18 = type metadata accessor for USOKeyPath();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  v24 = type metadata accessor for SystemGaveOptionsDialogActGenerator();
  v35 = *(v24 - 8);
  v25 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v33 - v27;
  (*(v19 + 16))(v23, v37, v18);
  sub_1DD0051A8(a1, v23, v28);
  v29 = v36;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, a4);

  v30 = v24;
  v31 = v34;
  USOKeyPath.createTask(with:)();
  (*(v38 + 8))(v29, v39);
  sub_1DD005258(v31, v30, a3, v42);
  (*(v40 + 8))(v31, v41);
  return (*(v35 + 8))(v28, v30);
}

uint64_t sub_1DCCF0D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  OUTLINED_FUNCTION_25_0();
  v7 = type metadata accessor for USOKeyPath();
  OUTLINED_FUNCTION_20_0(v7);
  return sub_1DCCF0A30(v1[6], v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80)), v4, v5, v6, a1);
}

void sub_1DCCF0E20()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v34[5] = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_8_2();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_8_2();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_8_2();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_18_21();
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  v34[4] = v12;
  v13 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v34 - v20;
  OUTLINED_FUNCTION_18_21();
  v22 = type metadata accessor for DisambiguationPrompt.State();
  OUTLINED_FUNCTION_20_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v34 - v27;
  sub_1DCCEFF90(v34 - v27);
  if (__swift_getEnumTagSinglePayload(v28, 1, v13) == 1)
  {
    v34[1] = v5;
    sub_1DCB17D04((v0 + 3), &v35);
    sub_1DCB17D04((v0 + 8), &v36);
    v29 = v0[13];
    v30 = v0[14];
    v31 = v1[14];
    sub_1DD0DCF8C();
  }

  (*(v15 + 32))(v21, v28, v13);
  OUTLINED_FUNCTION_25_0();
  v32 = type metadata accessor for Conclude();
  v33 = OUTLINED_FUNCTION_37_17(v32, &protocol witness table for Conclude<A>);
  OUTLINED_FUNCTION_18_21();
  type metadata accessor for DisambiguationPrompt();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v21, v33);
  (*(v15 + 8))(v21, v13);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF1560(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v40 = *(*a2 + 80);
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v7 = type metadata accessor for DisambiguationPrompt.State();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v39 = &v36 - v10;
  v41 = v4;
  v42 = v5;
  v43 = v6;
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DF22C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v21, qword_1EDE57E00);
  v22 = *(v12 + 16);
  v22(v20, a1, v11);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v37 = a1;
    v28 = v27;
    v40 = v27;
    *v26 = 136315138;
    v22(v17, v20, v11);
    v29 = sub_1DD0DE02C();
    v36 = v22;
    v31 = v30;
    (*(v12 + 8))(v20, v11);
    v32 = sub_1DCB10E9C(v29, v31, &v40);
    v22 = v36;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "[DisambiguationPrompt] received response %s)", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v33 = v28;
    a1 = v37;
    MEMORY[0x1E12A8390](v33, -1, -1);
    MEMORY[0x1E12A8390](v26, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v20, v11);
  }

  v34 = v39;
  v22(v39, a1, v11);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v11);
  return sub_1DCCF0044(v34);
}

uint64_t sub_1DCCF190C(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v7 = type metadata accessor for DisambiguationPrompt.State();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = (&v25 - v10);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = a1;
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = a1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "[DisambiguationPrompt] received unexpected failure %@", v17, 0xCu);
    sub_1DCB0E9D8(v18, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v18, -1, -1);
    v21 = v17;
    v3 = v26;
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  *v11 = a1;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v22 = sub_1DD0DF22C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
  v23 = a1;
  return sub_1DCCF0044(v11);
}

uint64_t sub_1DCCF1BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriKitEventPayload(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  *v13 = 56;
  *(v13 + 8) = a1;
  *(v13 + 16) = a2;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  v15 = *(a3 + 160);
  v14 = *(a3 + 168);
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  type metadata accessor for SiriKitEvent(0);
  *(v13 + 136) = v15;
  *(v13 + 144) = v14;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 184) = 29;
  swift_storeEnumTagMultiPayload();

  return SiriKitEvent.__allocating_init(_:builder:)(v13, 0);
}

uint64_t sub_1DCCF1CE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v122 = a3;
  v120 = a2;
  v118 = a1;
  v5 = *a4;
  v6 = (*a4 + 88);
  v7 = (*a4 + 104);
  v8 = *(*a4 + 96);
  v111 = *(v8 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v110 = &v108 - v10;
  v121 = type metadata accessor for SiriKitEventPayload(0);
  v11 = *(*(v121 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v121, v12);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v108 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v108 - v22;
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v114 = &v108 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v115 = &v108 - v29;
  v119 = a4;
  v108 = *(*(v5 + 80) - 8);
  v30 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v28, v31);
  v113 = &v108 - v32;
  v109 = v33;
  *&v34 = v33;
  *(&v34 + 1) = *v6;
  v112 = v8;
  *&v35 = v8;
  *(&v35 + 1) = *v7;
  v116 = v35;
  v117 = v34;
  v124 = v35;
  v123 = v34;
  v36 = type metadata accessor for DisambiguationPrompt.Response();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v42 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v108 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v46 = sub_1DD0DF22C();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = (&v108 - v49);
  (*(v51 + 16))(&v108 - v49, v122, v46);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v123 = *v50;
    v52 = v123;
    v53 = v123;
    if (swift_dynamicCast())
    {
      *v19 = 5;
      v54 = v119;
      v55 = v120;
      *(v19 + 1) = v118;
      *(v19 + 2) = v55;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 104) = 0u;
      *(v19 + 120) = 0u;
      v57 = v54[20];
      v56 = v54[21];
      v58 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v58 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      *(v19 + 17) = v57;
      *(v19 + 18) = v56;
      *(v19 + 152) = 0u;
      *(v19 + 168) = 0u;
      v19[184] = 87;
      swift_storeEnumTagMultiPayload();

      v99 = v19;
    }

    else
    {
      *v15 = 6;
      v74 = v119;
      v75 = v120;
      *(v15 + 1) = v118;
      *(v15 + 2) = v75;
      *(v15 + 24) = 0u;
      *(v15 + 40) = 0u;
      *(v15 + 56) = 0u;
      *(v15 + 72) = 0u;
      *(v15 + 88) = 0u;
      *(v15 + 104) = 0u;
      *(v15 + 120) = 0u;
      v77 = v74[20];
      v76 = v74[21];
      v78 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v78 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v78)
      {
      }

      else
      {
        v77 = 0;
        v76 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      *(v15 + 17) = v77;
      *(v15 + 18) = v76;
      *(v15 + 19) = 0;
      *(v15 + 20) = 0;
      swift_getErrorValue();

      *(v15 + 21) = sub_1DD0DF18C();
      *(v15 + 22) = v100;
      v15[184] = 91;
      swift_storeEnumTagMultiPayload();
      v99 = v15;
    }

    v101 = SiriKitEvent.__allocating_init(_:builder:)(v99, 0);
  }

  else
  {
    (*(v37 + 32))(v45, v50, v36);
    (*(v37 + 16))(v42, v45, v36);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v60 = v36;
    v61 = v45;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v62 = v111;
        v63 = v110;
        v64 = v112;
        (*(v111 + 32))(v110, v42, v112);
        v65 = v114;
        *v114 = 57;
        v66 = v120;
        *(v65 + 1) = v118;
        *(v65 + 2) = v66;
        *(v65 + 4) = 0;
        *(v65 + 5) = 0;
        *(v65 + 3) = 0;
        *(v65 + 9) = v64;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v65 + 6);
        (*(v62 + 16))(boxed_opaque_existential_1Tm, v63, v64);
        v68 = v119;
        v69 = v119[2];

        v124 = v116;
        v123 = v117;
        type metadata accessor for DisambiguationPrompt.Choice();
        *(v65 + 10) = sub_1DD0DEDAC();
        *(v65 + 88) = 0u;
        *(v65 + 104) = 0u;
        *(v65 + 120) = 0u;
        v71 = v68[20];
        v70 = v68[21];
        v72 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v72 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          v73 = v68[21];
        }

        else
        {
          v71 = 0;
          v70 = 0;
        }

        type metadata accessor for SiriKitEvent(0);
        v102 = v114;
        *(v114 + 17) = v71;
        *(v102 + 144) = v70;
        *(v102 + 152) = 0;
        *(v102 + 160) = 0;
        *&v123 = 0;
        *(v102 + 168) = sub_1DD0DF03C();
        *(v102 + 176) = v103;
        *(v102 + 184) = 125;
        swift_storeEnumTagMultiPayload();
        v101 = SiriKitEvent.__allocating_init(_:builder:)(v102, 0);
        (*(v62 + 8))(v63, v64);
      }

      else
      {
        *v23 = 57;
        v92 = v119;
        v93 = v120;
        *(v23 + 1) = v118;
        *(v23 + 2) = v93;
        *(v23 + 24) = 0u;
        *(v23 + 40) = 0u;
        *(v23 + 56) = 0u;
        *(v23 + 9) = 0;
        v94 = v92[2];

        v124 = v116;
        v123 = v117;
        type metadata accessor for DisambiguationPrompt.Choice();
        *(v23 + 10) = sub_1DD0DEDAC();
        *(v23 + 88) = 0u;
        *(v23 + 104) = 0u;
        *(v23 + 120) = 0u;
        v96 = v92[20];
        v95 = v92[21];
        v97 = HIBYTE(v95) & 0xF;
        if ((v95 & 0x2000000000000000) == 0)
        {
          v97 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {
          v98 = v92[21];
        }

        else
        {
          v96 = 0;
          v95 = 0;
        }

        type metadata accessor for SiriKitEvent(0);
        *(v23 + 17) = v96;
        *(v23 + 18) = v95;
        *(v23 + 19) = 0;
        *(v23 + 20) = 0;
        *&v123 = 0;
        *(v23 + 21) = sub_1DD0DF03C();
        *(v23 + 22) = v106;
        v23[184] = 125;
        swift_storeEnumTagMultiPayload();
        v101 = SiriKitEvent.__allocating_init(_:builder:)(v23, 0);
      }
    }

    else
    {
      v79 = v109;
      v80 = *&v42[*(swift_getTupleTypeMetadata2() + 48)];
      v81 = v108;
      v82 = v113;
      (*(v108 + 32))(v113, v42, v79);
      v83 = v115;
      *v115 = 57;
      v84 = v120;
      *(v83 + 1) = v118;
      *(v83 + 2) = v84;
      *(v83 + 4) = 0;
      *(v83 + 5) = 0;
      *(v83 + 3) = 0;
      *(v83 + 9) = v79;
      v85 = __swift_allocate_boxed_opaque_existential_1Tm(v83 + 6);
      (*(v81 + 16))(v85, v82, v79);
      v86 = v119;
      v87 = v119[2];

      v124 = v116;
      v123 = v117;
      type metadata accessor for DisambiguationPrompt.Choice();
      *(v83 + 10) = sub_1DD0DEDAC();
      *(v83 + 88) = 0u;
      *(v83 + 104) = 0u;
      *(v83 + 120) = 0u;
      v89 = v86[20];
      v88 = v86[21];
      v90 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v90 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        v91 = v86[21];
      }

      else
      {
        v89 = 0;
        v88 = 0;
      }

      type metadata accessor for SiriKitEvent(0);
      v104 = v115;
      *(v115 + 17) = v89;
      *(v104 + 144) = v88;
      *(v104 + 152) = 0;
      *(v104 + 160) = 0;
      *&v123 = v80;
      *(v104 + 168) = sub_1DD0DF03C();
      *(v104 + 176) = v105;
      *(v104 + 184) = 125;
      swift_storeEnumTagMultiPayload();
      v101 = SiriKitEvent.__allocating_init(_:builder:)(v104, 0);
      (*(v81 + 8))(v113, v79);
    }

    (*(v37 + 8))(v61, v60);
  }

  return v101;
}

uint64_t sub_1DCCF2730(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v41 = a1;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v39 - v14;
  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57DA0);

  v17 = a3;
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();

  v20 = os_log_type_enabled(v18, v19);
  v40 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v7;
    v23 = v22;
    v42 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DCB10E9C(v41, a2, &v42);
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v24 = sub_1DD0DF18C();
    v26 = a4;
    v27 = sub_1DCB10E9C(v24, v25, &v42);

    *(v21 + 14) = v27;
    a4 = v26;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "[DisambiguationPrompt#instrumentOnFailure(%s)]: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v23, -1, -1);
    MEMORY[0x1E12A8390](v21, -1, -1);
  }

  v42 = a3;
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    type metadata accessor for SiriKitEvent(0);
    *v15 = 5;
    v29 = v40;
    *(v15 + 1) = v41;
    *(v15 + 2) = v29;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 120) = 0u;
    v30 = *(a4 + 168);
    *(v15 + 17) = *(a4 + 160);
    *(v15 + 18) = v30;
    *(v15 + 152) = 0u;
    *(v15 + 168) = 0u;
    v15[184] = 87;
    swift_storeEnumTagMultiPayload();

    v31 = v15;
  }

  else
  {
    *v12 = 6;
    v32 = v40;
    *(v12 + 1) = v41;
    *(v12 + 2) = v32;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
    v34 = *(a4 + 160);
    v33 = *(a4 + 168);
    v35 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = *(a4 + 168);
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    type metadata accessor for SiriKitEvent(0);
    *(v12 + 17) = v34;
    *(v12 + 18) = v33;
    *(v12 + 19) = 0;
    *(v12 + 20) = 0;
    swift_getErrorValue();

    *(v12 + 21) = sub_1DD0DF18C();
    *(v12 + 22) = v37;
    v12[184] = 91;
    swift_storeEnumTagMultiPayload();
    v31 = v12;
  }

  return SiriKitEvent.__allocating_init(_:builder:)(v31, 0);
}

void DisambiguationPrompt.Response.description.getter()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_10_2();
  v21 = v19 - v20;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = v39 - v25;
  v27 = OUTLINED_FUNCTION_9(v24);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  OUTLINED_FUNCTION_16();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v10, v33, v1);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000001DLL, 0x80000001DD119620);
      MEMORY[0x1E12A6780](0x69746E457761722ELL, 0xEB00000000287974);
      sub_1DD0DF07C();
      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      (*(v3 + 8))(v10, v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v36 = *(v33 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v14 + 32))(v26, v33, v12);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1DD0DEC1C();

    v40 = 0xD000000000000032;
    v41 = 0x80000001DD119670;
    (*(v14 + 16))(v21, v26, v12);
    v37 = sub_1DD0DE02C();
    MEMORY[0x1E12A6780](v37);

    MEMORY[0x1E12A6780](0x65646E6920746120, 0xEA00000000002078);
    v39[1] = v36;
    v38 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v38);

    (*(v14 + 8))(v26, v12);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t *DisambiguationPrompt.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v3 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v4 = v0[21];

  v5 = *(*v0 + 160);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 8))(v0 + v5);
  return v0;
}

uint64_t DisambiguationPrompt.__deallocating_deinit()
{
  DisambiguationPrompt.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCF2FE4(uint64_t a1)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  result = type metadata accessor for DisambiguationPrompt.State();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCCF3104(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_getTupleTypeLayout2();
    v8[4] = v8;
    v6 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      v8[5] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCCF31E8(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  if (v9 + 1 > 0x18 || ((*(v8 + 80) | *(v5 + 80)) & 0x1000F8) != 0)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v11 = __src[v9];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__src;
        goto LABEL_18;
      case 2:
        v14 = *__src;
        goto LABEL_18;
      case 3:
        v14 = *__src | (__src[2] << 16);
        goto LABEL_18;
      case 4:
        v14 = *__src;
LABEL_18:
        v15 = (v14 | (v12 << (8 * v9))) + 2;
        v11 = v14 + 2;
        if (v9 < 4)
        {
          v11 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    (*(v8 + 16))(__dst, __src, v7);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v11)
  {
    (*(v5 + 16))(__dst, __src);
    *(&__dst[v6 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

unsigned __int8 *sub_1DCCF341C(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(*(*(a2 + 32) - 8) + 64);
  if (v3 <= ((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = result[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *result;
        goto LABEL_12;
      case 2:
        v7 = *result;
        goto LABEL_12;
      case 3:
        v7 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *result;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        v4 = v7 + 2;
        if (v3 < 4)
        {
          v4 = v8;
        }

        break;
      default:
        break;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    v2 = *(*(a2 + 32) - 8);
  }

  return (*(v2 + 8))();
}

_BYTE *sub_1DCCF3564(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  v8 = __src[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_13;
      case 2:
        v11 = *__src;
        goto LABEL_13;
      case 3:
        v11 = *__src | (__src[2] << 16);
        goto LABEL_13;
      case 4:
        v11 = *__src;
LABEL_13:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __dst[v7] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
    *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v7] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

unsigned __int8 *sub_1DCCF3750(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __dst[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *__dst;
        goto LABEL_14;
      case 2:
        v15 = *__dst;
        goto LABEL_14;
      case 3:
        v15 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v15 = *__dst;
LABEL_14:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_21;
    }

    v17 = *(*(a3 + 32) - 8);
    v18 = *(a3 + 32);
  }

  else
  {
    v17 = *(*(a3 + 16) - 8);
    v18 = *(a3 + 16);
  }

  (*(v17 + 8))(__dst, v18);
LABEL_21:
  v19 = __src[v10];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v10 <= 3)
    {
      v21 = v10;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *__src;
        goto LABEL_30;
      case 2:
        v22 = *__src;
        goto LABEL_30;
      case 3:
        v22 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v22 = *__src;
LABEL_30:
        v23 = (v22 | (v20 << v12)) + 2;
        v19 = v22 + 2;
        if (v10 < 4)
        {
          v19 = v23;
        }

        break;
      default:
        break;
    }
  }

  if (v19 == 1)
  {
    (*(v9 + 16))(__dst, __src, v8);
    __dst[v10] = 1;
    return __dst;
  }

  if (!v19)
  {
    (*(v6 + 16))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v10] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

_BYTE *sub_1DCCF3A10(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  v8 = __src[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *__src;
        goto LABEL_13;
      case 2:
        v11 = *__src;
        goto LABEL_13;
      case 3:
        v11 = *__src | (__src[2] << 16);
        goto LABEL_13;
      case 4:
        v11 = *__src;
LABEL_13:
        v12 = (v11 | (v9 << (8 * v7))) + 2;
        v8 = v11 + 2;
        if (v7 < 4)
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  if (v8 == 1)
  {
    (*(*(v6 - 8) + 32))(__dst, __src, v6);
    __dst[v7] = 1;
    return __dst;
  }

  if (!v8)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst, __src);
    *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v7] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v7 + 1);
}

unsigned __int8 *sub_1DCCF3BFC(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __dst[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *__dst;
        goto LABEL_14;
      case 2:
        v15 = *__dst;
        goto LABEL_14;
      case 3:
        v15 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v15 = *__dst;
LABEL_14:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_21;
    }

    v17 = *(*(a3 + 32) - 8);
    v18 = *(a3 + 32);
  }

  else
  {
    v17 = *(*(a3 + 16) - 8);
    v18 = *(a3 + 16);
  }

  (*(v17 + 8))(__dst, v18);
LABEL_21:
  v19 = __src[v10];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v10 <= 3)
    {
      v21 = v10;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *__src;
        goto LABEL_30;
      case 2:
        v22 = *__src;
        goto LABEL_30;
      case 3:
        v22 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v22 = *__src;
LABEL_30:
        v23 = (v22 | (v20 << v12)) + 2;
        v19 = v22 + 2;
        if (v10 < 4)
        {
          v19 = v23;
        }

        break;
      default:
        break;
    }
  }

  if (v19 == 1)
  {
    (*(v9 + 32))(__dst, __src, v8);
    __dst[v10] = 1;
    return __dst;
  }

  if (!v19)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    __dst[v10] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

uint64_t sub_1DCCF3EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 32) - 8) + 64);
  if (v3 <= ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1DCCF4000(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a4 + 32) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 32) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCCF41E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 32) - 8) + 64);
  if (v2 <= ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        LODWORD(v3) = v6 + 2;
        if (v2 >= 4)
        {
          v3 = v3;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        return v3;
    }
  }

  return v3;
}

void sub_1DCCF42A8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 32) - 8) + 64) <= ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v4 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v4 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

void sub_1DCCF43E8()
{
  OUTLINED_FUNCTION_50();
  v104 = v0;
  v2 = v1;
  v4 = v3;
  v107 = v5;
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_25_0();
  v7 = sub_1DD0DE97C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v95 = v9;
  v96 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v98 = &v91 - v14;
  OUTLINED_FUNCTION_0_1();
  v94 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v93 = v21 - v20;
  v22 = *(v2 + 16);
  v23 = *(v2 + 32);
  v108[0] = v22;
  v103 = v23.f64[0];
  v108[1] = *&v23.f64[0];
  *&v108[2] = v6;
  v105 = v24;
  v106 = v23;
  v108[3] = *&v23.f64[1];
  v25 = type metadata accessor for DisambiguationPrompt.Choice();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_11();
  v27 = sub_1DD0DE97C();
  v28 = OUTLINED_FUNCTION_9(v27);
  v99 = v29;
  v100 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28, v32);
  OUTLINED_FUNCTION_10_2();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v91 - v38;
  v102 = v25;
  v40 = *(v25 - 8);
  OUTLINED_FUNCTION_8_2();
  v101 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  OUTLINED_FUNCTION_10_2();
  v97 = v46 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v91 - v50;
  v52 = v4 + *(type metadata accessor for Input(0) + 20);
  sub_1DCE2FF24();
  if (v53)
  {
    sub_1DCC9FB70();
    v54 = swift_allocError();
    v55 = v107;
    *v107 = v54;
    v109.val[1] = v106;
    *&v109.val[0].f64[0] = v22;
    v109.val[0].f64[1] = v6;
    v56 = v108;
    vst2q_f64(v56, v109);
    v57 = type metadata accessor for DisambiguationPrompt.Response();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_19_20();
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v58 = v55;
LABEL_10:
    v75 = 0;
    v74 = v57;
    goto LABEL_11;
  }

  v92 = *&v6;
  v59 = OUTLINED_FUNCTION_17_16();
  sub_1DCCF4A64(v59, v60, v61);
  OUTLINED_FUNCTION_38_2(v39);
  if (!v62)
  {
    v76 = *&v39[*(TupleTypeMetadata2 + 48)];
    v77 = v101;
    v78 = v102;
    (*(v101 + 32))(v51, v39, v102);
    v79 = *(OUTLINED_FUNCTION_38_11() + 48);
    OUTLINED_FUNCTION_112(v22);
    v81 = v107;
    (*(v80 + 16))(v107, v51, v22);
    (*(v77 + 8))(v51, v78);
    *(v81 + v79) = v76;
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    v57 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    v58 = v81;
    goto LABEL_10;
  }

  v63 = v100;
  v64 = *(v99 + 8);
  v64(v39, v100);
  v65 = OUTLINED_FUNCTION_17_16();
  sub_1DCCF4F4C(v65, v66, v67);
  OUTLINED_FUNCTION_38_2(v35);
  if (!v62)
  {
    v82 = *(v35 + *(TupleTypeMetadata2 + 48));
    v83 = v101;
    v84 = v97;
    v85 = v35;
    v86 = v102;
    (*(v101 + 32))(v97, v85, v102);
    v87 = *(OUTLINED_FUNCTION_38_11() + 48);
    OUTLINED_FUNCTION_112(v22);
    v89 = v107;
    (*(v88 + 16))(v107, v84, v22);
    (*(v83 + 8))(v84, v86);
    *(v89 + v87) = v82;
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    v57 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_21_13();
    swift_storeEnumTagMultiPayload();
    v58 = v89;
    goto LABEL_10;
  }

  v64(v35, v63);
  v68 = v98;
  v69 = OUTLINED_FUNCTION_17_16();
  sub_1DCCF54CC(v69, v70, v71);
  v72 = v92;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v92);
  v55 = v107;
  if (EnumTagSinglePayload != 1)
  {
    v90 = v93;
    v57 = *(v94 + 32);
    v57(v93, v68, v72);
    v57(v55, v90, v72);
    OUTLINED_FUNCTION_34_17();
    type metadata accessor for DisambiguationPrompt.Response();
    OUTLINED_FUNCTION_19_20();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_4_11();
    sub_1DD0DF22C();
    OUTLINED_FUNCTION_19_20();
    goto LABEL_3;
  }

  (*(v95 + 8))(v68, v96);
  OUTLINED_FUNCTION_34_17();
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  v74 = sub_1DD0DF22C();
  v58 = v55;
  v75 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v58, v75, 1, v74);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF4A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1 + *(type metadata accessor for Input(0) + 20);
  v8 = sub_1DCCF5648();
  if (v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "ChoiceResolver: No positional reference found in parse", v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    v14 = *(a2 + 40);
    v43 = *(a2 + 16);
    v44 = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
    v45 = v14;
    type metadata accessor for DisambiguationPrompt.Choice();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v16 = a3;
LABEL_22:
    v30 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v30, 1, TupleTypeMetadata2);
  }

  v17 = v8;
  if (v8 < 0)
  {
    v19 = *v4;
    v20 = *(a2 + 40);
    v43 = *(a2 + 16);
    v44 = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
    v45 = v20;
    type metadata accessor for DisambiguationPrompt.Choice();
    v21 = sub_1DD0DE3BC();
    v18 = v21 + v17;
    if (__OFADD__(v21, v17))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_13;
    }
  }

  else
  {
    v18 = v8 - 1;
  }

  if (v18 < 0 || (v22 = *v4, v23 = *(a2 + 40), v43 = *(a2 + 16), v44 = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL), v45 = v23, type metadata accessor for DisambiguationPrompt.Choice(), v18 >= sub_1DD0DE3BC()))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v42 = a3;
    v31 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v31, qword_1EDE57E00);
    v32 = *(a2 - 8);
    (*(v32 + 16))(&v43, v4, a2);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = v18;
      *(v35 + 12) = 2048;
      v36 = *(a2 + 16);
      v37 = *(a2 + 24);
      v39 = *(a2 + 32);
      v38 = *(a2 + 40);
      type metadata accessor for DisambiguationPrompt.Choice();
      v40 = sub_1DD0DE3BC();
      (*(v32 + 8))(&v43, a2);
      *(v35 + 14) = v40;
      _os_log_impl(&dword_1DCAFC000, v33, v34, "Referenced list index (%ld) outside of choice range (count: %ld", v35, 0x16u);
      MEMORY[0x1E12A8390](v35, -1, -1);
    }

    else
    {
      (*(v32 + 8))(&v43, a2);

      v36 = *(a2 + 16);
      v37 = *(a2 + 24);
      v39 = *(a2 + 32);
      v38 = *(a2 + 40);
    }

    v43 = v36;
    v44.i64[0] = v39;
    v44.i64[1] = v37;
    v45 = v38;
    type metadata accessor for DisambiguationPrompt.Choice();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v16 = v42;
    goto LABEL_22;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_25;
  }

LABEL_13:
  v24 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v18;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "ChoiceResolver: Found positional reference in parse. Index: %ld", v27, 0xCu);
    MEMORY[0x1E12A8390](v27, -1, -1);
  }

  v28 = swift_getTupleTypeMetadata2();
  v29 = *(v28 + 48);
  sub_1DD0DE43C();
  *(a3 + v29) = v18;
  v16 = a3;
  v30 = 0;
  TupleTypeMetadata2 = v28;
  return __swift_storeEnumTagSinglePayload(v16, v30, 1, TupleTypeMetadata2);
}

uint64_t sub_1DCCF4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Parse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Input(0);
  sub_1DCB29E58(a1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB283D8(v11, type metadata accessor for Parse);
    goto LABEL_20;
  }

  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v13 == 0xD00000000000002ELL && 0x80000001DD1196F0 == v14;
  if (v16 || (sub_1DD0DF0AC() & 1) != 0)
  {
    if (v15)
    {
      sub_1DCB90D40(0x6F697463656C6573, 0xE90000000000006ELL, v15);

      if (*(&v49[1] + 1))
      {
        if (swift_dynamicCast())
        {
          v17 = v45;
          if ((v45 & 0x8000000000000000) == 0)
          {
            v18 = *v3;
            v19 = *(a2 + 40);
            *&v49[0] = *(a2 + 16);
            *(v49 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
            *(&v49[1] + 1) = v19;
            type metadata accessor for DisambiguationPrompt.Choice();
            if (v17 < sub_1DD0DE3BC())
            {
              if (qword_1EDE4F900 != -1)
              {
                swift_once();
              }

              v20 = sub_1DD0DD8FC();
              __swift_project_value_buffer(v20, qword_1EDE57E00);
              v21 = sub_1DD0DD8EC();
              v22 = sub_1DD0DE6DC();
              if (os_log_type_enabled(v21, v22))
              {
                v23 = swift_slowAlloc();
                *v23 = 134217984;
                *(v23 + 4) = v17;
                _os_log_impl(&dword_1DCAFC000, v21, v22, "#interpretInputAsDirectChoice ChoiceResolver: Found direct invocation in parse. Index: %ld", v23, 0xCu);
                MEMORY[0x1E12A8390](v23, -1, -1);
              }

              TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
              v25 = *(TupleTypeMetadata2 + 48);
              sub_1DD0DE43C();
              *(a3 + v25) = v17;
              v26 = a3;
              v27 = 0;
              v28 = TupleTypeMetadata2;
              return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
            }
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v33 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v33, qword_1EDE57E00);
          v34 = *(a2 - 8);
          (*(v34 + 16))(v49, v3, a2);
          v35 = sub_1DD0DD8EC();
          v36 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 134218240;
            *(v37 + 4) = v17;
            *(v37 + 12) = 2048;
            v38 = *(a2 + 24);
            v44 = *(a2 + 16);
            v45 = v44;
            v40 = *(a2 + 32);
            v39 = *(a2 + 40);
            v46 = v40;
            v47 = v38;
            v48 = v39;
            type metadata accessor for DisambiguationPrompt.Choice();
            v41 = sub_1DD0DE3BC();
            (*(v34 + 8))(v49, a2);
            *(v37 + 14) = v41;
            _os_log_impl(&dword_1DCAFC000, v35, v36, "#interpretInputAsDirectChoice Referenced list index (%ld) outside of choice range (count: %ld", v37, 0x16u);
            MEMORY[0x1E12A8390](v37, -1, -1);

            v42 = v44;
          }

          else
          {
            (*(v34 + 8))(v49, a2);

            v42 = *(a2 + 16);
            v38 = *(a2 + 24);
            v40 = *(a2 + 32);
            v39 = *(a2 + 40);
          }

          *&v49[0] = v42;
          *(&v49[0] + 1) = v40;
          *&v49[1] = v38;
          *(&v49[1] + 1) = v39;
LABEL_21:
          type metadata accessor for DisambiguationPrompt.Choice();
          v28 = swift_getTupleTypeMetadata2();
          v26 = a3;
          v27 = 1;
          return __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
        }

LABEL_20:
        v29 = *(a2 + 40);
        *&v49[0] = *(a2 + 16);
        *(v49 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
        *(&v49[1] + 1) = v29;
        goto LABEL_21;
      }
    }

    else
    {

      memset(v49, 0, 32);
    }

    sub_1DCB0E9D8(v49, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_20;
  }

  v31 = *(a2 + 40);
  *&v49[0] = *(a2 + 16);
  *(v49 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
  *(&v49[1] + 1) = v31;
  type metadata accessor for DisambiguationPrompt.Choice();
  v32 = swift_getTupleTypeMetadata2();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v32);
}

uint64_t sub_1DCCF54CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Interpretable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v3[4];
  v14 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v13);
  (*(v14 + 16))(a1, v13, v14);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v15 = 1;
  }

  else
  {
    (*(*(v6 - 8) + 32))(a3, v12, v6);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v15, 1, v6);
}

uint64_t sub_1DCCF5648()
{
  sub_1DCCF61C8();
  if (v0)
  {
    sub_1DD0DCF8C();
  }

  return 0;
}

uint64_t sub_1DCCF5A80()
{
  if (sub_1DD0DBC0C())
  {
    goto LABEL_2;
  }

  v2 = sub_1DD0DBDBC();
  if (v2)
  {
    v3 = v2;
    if (sub_1DCB08B14(v2))
    {
      v4 = OUTLINED_FUNCTION_10_29();
      sub_1DCB35460(v4, v5, v6);
      if (!v0)
      {
        v7 = *(v3 + 32);
        sub_1DD0DCF8C();
      }

      v20 = OUTLINED_FUNCTION_24_17();
      MEMORY[0x1E12A72C0](v20);

      sub_1DD0DBBBC();

      v0 = v23;
      if (v23)
      {
        v8 = sub_1DD0DBC0C();

        if (v8)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
    }
  }

  v9 = sub_1DD0DBDCC();
  if (v9)
  {
    v10 = v9;
    if (sub_1DCB08B14(v9))
    {
      v11 = OUTLINED_FUNCTION_10_29();
      sub_1DCB35460(v11, v12, v13);
      if (!v0)
      {
        v14 = *(v10 + 32);
        sub_1DD0DCF8C();
      }

      v21 = OUTLINED_FUNCTION_24_17();
      MEMORY[0x1E12A72C0](v21);

      sub_1DD0DBBBC();

      if (v23)
      {
        v15 = sub_1DD0DBC0C();

        if (v15)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
    }
  }

  v16 = sub_1DD0DBDDC();
  v1 = v16;
  if (!v16)
  {
    return v1;
  }

  if (!sub_1DCB08B14(v16))
  {

    return 0;
  }

  sub_1DCB35460(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v17 = *(v1 + 32);
    sub_1DD0DCF8C();
  }

  v22 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x1E12A72C0](v22);

  sub_1DD0DBBBC();

  v1 = v23;
  if (v23)
  {
    v18 = sub_1DD0DBC0C();

    if (v18)
    {
LABEL_2:
      v1 = sub_1DCCF5C88();

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1DCCF5C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4808, &unk_1DD0ECA80);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_36_18();
  v6 = sub_1DD0DC0AC();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24 - v18;
  sub_1DD0DC09C();
  OUTLINED_FUNCTION_38_2(v0);
  if (v20)
  {
    sub_1DCB0E9D8(v0, &qword_1ECCA4808, &unk_1DD0ECA80);
    return 0;
  }

  v22 = *(v9 + 32);
  v22(v19, v0, v6);
  v22(v15, v19, v6);
  v23 = (*(v9 + 88))(v15, v6);
  if (v23 == *MEMORY[0x1E69D1EB0])
  {
    return 4;
  }

  if (v23 == *MEMORY[0x1E69D1EB8])
  {
    return 2;
  }

  if (v23 == *MEMORY[0x1E69D1DE0])
  {
    return 1;
  }

  if (v23 == *MEMORY[0x1E69D1E50])
  {
    return 24;
  }

  if (v23 == *MEMORY[0x1E69D1E20])
  {
    return 17;
  }

  if (v23 == *MEMORY[0x1E69D1EA8])
  {
    return 8;
  }

  if (v23 == *MEMORY[0x1E69D1E28])
  {
    return -3;
  }

  if (v23 == *MEMORY[0x1E69D1E90])
  {
    return 6;
  }

  if (v23 == *MEMORY[0x1E69D1E10])
  {
    return 19;
  }

  if (v23 == *MEMORY[0x1E69D1E30])
  {
    return 25;
  }

  if (v23 == *MEMORY[0x1E69D1E88])
  {
    return 9;
  }

  if (v23 == *MEMORY[0x1E69D1ED8])
  {
    return 11;
  }

  if (v23 == *MEMORY[0x1E69D1E60])
  {
    return -1;
  }

  if (v23 == *MEMORY[0x1E69D1E08])
  {
    return 14;
  }

  if (v23 == *MEMORY[0x1E69D1E48])
  {
    return -2;
  }

  if (v23 == *MEMORY[0x1E69D1E38])
  {
    return 21;
  }

  if (v23 != *MEMORY[0x1E69D1E18])
  {
    if (v23 == *MEMORY[0x1E69D1E68])
    {
      return -1;
    }

    if (v23 == *MEMORY[0x1E69D1E58])
    {
      return 22;
    }

    if (v23 == *MEMORY[0x1E69D1DE8])
    {
      return 15;
    }

    if (v23 == *MEMORY[0x1E69D1DF8])
    {
      return 20;
    }

    if (v23 == *MEMORY[0x1E69D1E78])
    {
      return 5;
    }

    if (v23 == *MEMORY[0x1E69D1DF0])
    {
      return 16;
    }

    if (v23 == *MEMORY[0x1E69D1E80])
    {
      return 1;
    }

    if (v23 == *MEMORY[0x1E69D1EC8])
    {
      return 7;
    }

    if (v23 == *MEMORY[0x1E69D1E00])
    {
      return 18;
    }

    if (v23 == *MEMORY[0x1E69D1E40])
    {
      return 23;
    }

    if (v23 == *MEMORY[0x1E69D1ED0])
    {
      return 12;
    }

    if (v23 == *MEMORY[0x1E69D1EA0])
    {
      return 3;
    }

    if (v23 == *MEMORY[0x1E69D1E98])
    {
      return 10;
    }

    (*(v9 + 8))(v15, v6);
    return 0;
  }

  return 13;
}

void sub_1DCCF61C8()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_36_18();
  v8 = sub_1DD0DB5BC();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_10_2();
  v107 = (v15 - v16);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v105 - v22;
  v24 = type metadata accessor for Parse(0);
  v25 = OUTLINED_FUNCTION_2(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  OUTLINED_FUNCTION_10_2();
  v31 = v29 - v30;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v105 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v105 - v38;
  v40 = type metadata accessor for USOParse();
  v41 = OUTLINED_FUNCTION_20_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  OUTLINED_FUNCTION_16();
  v47 = v46 - v45;
  sub_1DCB29E58(v2, v39);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1DCC6D300(v39, v47);
    Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) != 1)
    {
      v106 = v47;
      v62 = v11;
      v63 = *(v11 + 32);
      v64 = v8;
      v63(v23, v1, v8);
      if (sub_1DD0DB51C())
      {
        v98 = sub_1DD0DB7DC();
        v99 = sub_1DCB08B14(v98);
        v100 = v108;
        if (v99)
        {
          v101 = OUTLINED_FUNCTION_10_29();
          sub_1DCB35460(v101, v102, v103);
          v104 = *(v98 + 32);
          sub_1DD0DCF8C();
        }

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v65 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v65, qword_1EDE57E00);
        v66 = *(v62 + 16);
        v66(v100, v23, v8);
        v67 = sub_1DD0DD8EC();
        v68 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v108 = v23;
          v71 = v62;
          v72 = v70;
          v109 = v70;
          *v69 = 136315138;
          v66(v107, v100, v64);
          OUTLINED_FUNCTION_35_17();
          v73 = sub_1DD0DE02C();
          v75 = v74;
          v76 = *(v71 + 8);
          v76(v100, v64);
          v77 = sub_1DCB10E9C(v73, v75, &v109);

          *(v69 + 4) = v77;
          OUTLINED_FUNCTION_24_2();
          _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x1E12A8390](v72, -1, -1);
          OUTLINED_FUNCTION_52();

          v76(v108, v64);
        }

        else
        {

          v96 = *(v62 + 8);
          v96(v100, v8);
          v97 = OUTLINED_FUNCTION_35_17();
          (v96)(v97);
        }

        OUTLINED_FUNCTION_0_22();
        v61 = v106;
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v83 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v83, qword_1EDE57E00);
        v84 = sub_1DD0DD8EC();
        v85 = sub_1DD0DE6EC();
        v86 = os_log_type_enabled(v84, v85);
        v87 = v106;
        if (v86)
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_24_2();
          _os_log_impl(v88, v89, v90, v91, v92, 2u);
          OUTLINED_FUNCTION_52();
        }

        v93 = *(v62 + 8);
        v94 = OUTLINED_FUNCTION_35_17();
        v95(v94);
        OUTLINED_FUNCTION_0_22();
        v61 = v87;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v47, v48);
    sub_1DCB0E9D8(v1, &qword_1ECCA29B8, &qword_1DD0E96C0);
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v39, v49);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v50 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v50, qword_1EDE57E00);
  sub_1DCB29E58(v2, v36);
  v51 = sub_1DD0DD8EC();
  v52 = sub_1DD0DE6EC();
  if (!os_log_type_enabled(v51, v52))
  {

    OUTLINED_FUNCTION_4_42();
    v61 = v36;
LABEL_23:
    sub_1DCB283D8(v61, v60);
    goto LABEL_24;
  }

  v53 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v109 = v54;
  *v53 = 136315138;
  sub_1DCB29E58(v36, v31);
  v55 = sub_1DD0DE02C();
  v57 = v56;
  OUTLINED_FUNCTION_4_42();
  sub_1DCB283D8(v36, v58);
  v59 = sub_1DCB10E9C(v55, v57, &v109);

  *(v53 + 4) = v59;
  _os_log_impl(&dword_1DCAFC000, v51, v52, "Cannot extract task: USO parse has no UDAs. %s", v53, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1E12A8390](v53, -1, -1);

LABEL_24:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v4 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DF22C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v50 = &v45 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v45 - v19;
  v21 = type metadata accessor for Interpretable();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v45 - v24;
  v27 = v2[5];
  v26 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v27);
  (*(v26 + 16))(v51, v27, v26);
  v28 = 1;
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) != 1)
  {
    (*(v6 + 32))(v20, v25, v5);
    v29 = *(v6 + 16);
    v29(v17, v20, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = *(v6 + 8);
    if (EnumCaseMultiPayload == 1)
    {
      v31(v17, v5);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v33 = v50;
      v29(v50, v20, v5);
      v34 = sub_1DD0DD8EC();
      LODWORD(v51) = sub_1DD0DE6EC();
      if (os_log_type_enabled(v34, v51))
      {
        v35 = swift_slowAlloc();
        v47 = v20;
        v48 = a2;
        v46 = v4;
        v36 = v35;
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 136315138;
        v29(v49, v33, v5);
        v38 = sub_1DD0DE02C();
        v40 = v39;
        v31(v33, v5);
        v41 = sub_1DCB10E9C(v38, v40, &v52);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1DCAFC000, v34, v51, "[DisambiguationPrompt] ChoiceResolver's inner entity resolver returned unexpected result %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1E12A8390](v37, -1, -1);
        v42 = v36;
        v4 = v46;
        a2 = v48;
        MEMORY[0x1E12A8390](v42, -1, -1);

        v43 = v47;
      }

      else
      {

        v31(v33, v5);
        v43 = v20;
      }

      v31(v43, v5);
      v28 = 1;
    }

    else
    {
      v31(v20, v5);
      (*(*(v4 - 8) + 32))(a2, v17, v4);
      v28 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, v28, 1, v4);
}

uint64_t sub_1DCCF6CFC(uint64_t *a1)
{
  v2 = a1 + 1;
  v1 = *a1;

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1DCCF6D2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 8, a2 + 8, v5);
  return a1;
}

uint64_t *sub_1DCCF6DB0(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 1;
  v4 = *a1;
  *a1 = *a2;

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t *sub_1DCCF6E08(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

uint64_t storeEnumTagSinglePayload for SiriKitIntentHandler(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DCCF6EAC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  type metadata accessor for DisambiguationPrompt.Response();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  result = sub_1DD0DF22C();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_1DCCF6F68(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  if (v9 + 1 > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  if (((*(v8 + 80) | *(v5 + 80)) & 0x1000F8) != 0 || (v10 + 1) > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v13 = __src[v10];
  if (v13 > 1)
  {

    return memcpy(__dst, __src, v10 + 1);
  }

  else
  {
    if (v13 == 1)
    {
      v14 = *__src;
      v15 = *__src;
      *__dst = v14;
      *(__dst + v10) = 1;
    }

    else
    {
      v16 = __src[v9];
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v9 <= 3)
        {
          v18 = v9;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_29;
          case 2:
            v19 = *__src;
            goto LABEL_29;
          case 3:
            v19 = *__src | (__src[2] << 16);
            goto LABEL_29;
          case 4:
            v19 = *__src;
LABEL_29:
            if (v9 < 4)
            {
              v16 = (v19 | (v17 << (8 * v9))) + 2;
            }

            else
            {
              v16 = v19 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v16 == 1)
      {
        (*(v8 + 16))(__dst, __src, v7);
        *(__dst + v9) = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v9 + 1);
      }

      else
      {
        (*(v5 + 16))(__dst, __src);
        *((__dst + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v9) = 0;
      }

      *(__dst + v10) = 0;
    }

    return __dst;
  }
}

void sub_1DCCF7200(id *a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) - 8);
  v3 = *(v2 + 64);
  if (v3 <= ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = 8;
  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  v5 = *(a1 + v4);
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
    }

    else
    {
      v6 = *(a1 + v3);
      v7 = v6 - 2;
      if (v6 >= 2)
      {
        if (v3 <= 3)
        {
          v8 = v3;
        }

        else
        {
          v8 = 4;
        }

        switch(v8)
        {
          case 1:
            v9 = *a1;
            goto LABEL_17;
          case 2:
            v9 = *a1;
            goto LABEL_17;
          case 3:
            v9 = *a1 | (*(a1 + 2) << 16);
            goto LABEL_17;
          case 4:
            v9 = *a1;
LABEL_17:
            v10 = (v9 | (v7 << (8 * v3))) + 2;
            v6 = v9 + 2;
            if (v3 < 4)
            {
              v6 = v10;
            }

            break;
          default:
            break;
        }
      }

      if (v6 == 1)
      {
        (*(v2 + 8))();
      }

      else if (!v6)
      {
        (*(*(*(a2 + 16) - 8) + 8))();
      }
    }
  }
}

void *sub_1DCCF737C(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  if (v7 + 1 > 8)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 8;
  }

  v9 = __src[v8];
  if (v9 > 1)
  {

    return memcpy(__dst, __src, v8 + 1);
  }

  else
  {
    if (v9 == 1)
    {
      v10 = *__src;
      v11 = *__src;
      *__dst = v10;
      *(__dst + v8) = 1;
    }

    else
    {
      v13 = __src[v7];
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            v16 = *__src;
            goto LABEL_22;
          case 2:
            v16 = *__src;
            goto LABEL_22;
          case 3:
            v16 = *__src | (__src[2] << 16);
            goto LABEL_22;
          case 4:
            v16 = *__src;
LABEL_22:
            v17 = (v16 | (v14 << (8 * v7))) + 2;
            v13 = v16 + 2;
            if (v7 < 4)
            {
              v13 = v17;
            }

            break;
          default:
            break;
        }
      }

      if (v13 == 1)
      {
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        *(__dst + v7) = 1;
      }

      else if (v13)
      {
        memcpy(__dst, __src, v7 + 1);
      }

      else
      {
        (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
        *((__dst + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v7) = 0;
      }

      *(__dst + v8) = 0;
    }

    return __dst;
  }
}

void **sub_1DCCF75C8(void **__dst, void **__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v10 + 1 > 8)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(__dst + v11);
  v13 = *(__src + v11);
  v14 = 8 * v10;
  if (v12 > 1)
  {
    if (v13 <= 1)
    {
      if (v13 == 1)
      {
LABEL_76:
        v37 = *__src;
        v38 = v37;
        *__dst = v37;
        *(__dst + v11) = 1;
        return __dst;
      }

      v16 = *(__src + v10);
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v10 <= 3)
        {
          v18 = v10;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_39;
          case 2:
            v19 = *__src;
            goto LABEL_39;
          case 3:
            v19 = *__src | (*(__src + 2) << 16);
            goto LABEL_39;
          case 4:
            v19 = *__src;
LABEL_39:
            v28 = (v19 | (v17 << v14)) + 2;
            v16 = v19 + 2;
            if (v10 < 4)
            {
              v16 = v28;
            }

            break;
          default:
            break;
        }
      }

LABEL_89:
      if (v16 == 1)
      {
        (*(v9 + 16))(__dst, __src, v8);
        *(__dst + v10) = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v10 + 1);
      }

      else
      {
        (*(v6 + 16))(__dst, __src, v5);
        *((__dst + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((__src + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v10) = 0;
      }

      *(__dst + v11) = 0;
      return __dst;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      v43 = *(*(a3 + 16) - 8);
      if (v12 == 1)
      {
        v15 = *(*(a3 + 32) - 8);

        v9 = v15;
        v14 = 8 * v10;
LABEL_63:
        v32 = *(__src + v11);
        v33 = v32 - 2;
        if (v32 < 2)
        {
          v6 = v43;
        }

        else
        {
          if (v11 <= 3)
          {
            v34 = v11;
          }

          else
          {
            v34 = 4;
          }

          v6 = v43;
          switch(v34)
          {
            case 1:
              v35 = *__src;
              goto LABEL_73;
            case 2:
              v35 = *__src;
              goto LABEL_73;
            case 3:
              v35 = *__src | (*(__src + 2) << 16);
              goto LABEL_73;
            case 4:
              v35 = *__src;
LABEL_73:
              v36 = (v35 | (v33 << (8 * v11))) + 2;
              v32 = v35 + 2;
              if (v11 < 4)
              {
                v32 = v36;
              }

              break;
            default:
              break;
          }
        }

        if (v32 == 1)
        {
          goto LABEL_76;
        }

        v16 = *(__src + v10);
        v39 = v16 - 2;
        if (v16 >= 2)
        {
          if (v10 <= 3)
          {
            v40 = v10;
          }

          else
          {
            v40 = 4;
          }

          switch(v40)
          {
            case 1:
              v41 = *__src;
              goto LABEL_86;
            case 2:
              v41 = *__src;
              goto LABEL_86;
            case 3:
              v41 = *__src | (*(__src + 2) << 16);
              goto LABEL_86;
            case 4:
              v41 = *__src;
LABEL_86:
              if (v10 < 4)
              {
                v16 = (v41 | (v39 << v14)) + 2;
              }

              else
              {
                v16 = v41 + 2;
              }

              break;
            default:
              goto LABEL_89;
          }
        }

        goto LABEL_89;
      }

      v24 = *(__dst + v10);
      v25 = v24 - 2;
      if (v24 >= 2)
      {
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        switch(v26)
        {
          case 1:
            v27 = *__dst;
            goto LABEL_55;
          case 2:
            v27 = *__dst;
            goto LABEL_55;
          case 3:
            v27 = *__dst | (*(__dst + 2) << 16);
            goto LABEL_55;
          case 4:
            v27 = *__dst;
LABEL_55:
            if (v10 < 4)
            {
              v24 = (v27 | (v25 << v14)) + 2;
            }

            else
            {
              v24 = v27 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v24 == 1)
      {
        v31 = *(v9 + 8);
      }

      else
      {
        if (v24)
        {
          goto LABEL_63;
        }

        v31 = *(v6 + 8);
      }

      v42 = *(*(a3 + 32) - 8);
      v31();
      v9 = v42;
      goto LABEL_63;
    }

    if (v12 == 1)
    {
    }

    else
    {
      v20 = *(__dst + v10);
      v21 = v20 - 2;
      if (v20 >= 2)
      {
        if (v10 <= 3)
        {
          v22 = v10;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 1:
            v23 = *__dst;
            goto LABEL_43;
          case 2:
            v23 = *__dst;
            goto LABEL_43;
          case 3:
            v23 = *__dst | (*(__dst + 2) << 16);
            goto LABEL_43;
          case 4:
            v23 = *__dst;
LABEL_43:
            v29 = (v23 | (v21 << v14)) + 2;
            v20 = v23 + 2;
            if (v10 < 4)
            {
              v20 = v29;
            }

            break;
          default:
            break;
        }
      }

      if (v20 == 1)
      {
        (*(v9 + 8))(__dst, v8);
      }

      else if (!v20)
      {
        (*(v6 + 8))(__dst, v5);
      }
    }
  }

  return memcpy(__dst, __src, v11 + 1);
}

void *sub_1DCCF7B08(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  if (v7 + 1 > 8)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 8;
  }

  v9 = __src[v8];
  if (v9 > 1)
  {

    return memcpy(__dst, __src, v8 + 1);
  }

  else
  {
    if (v9 == 1)
    {
      *__dst = *__src;
      *(__dst + v8) = 1;
    }

    else
    {
      v11 = __src[v7];
      v12 = v11 - 2;
      if (v11 >= 2)
      {
        if (v7 <= 3)
        {
          v13 = v7;
        }

        else
        {
          v13 = 4;
        }

        switch(v13)
        {
          case 1:
            v14 = *__src;
            goto LABEL_22;
          case 2:
            v14 = *__src;
            goto LABEL_22;
          case 3:
            v14 = *__src | (__src[2] << 16);
            goto LABEL_22;
          case 4:
            v14 = *__src;
LABEL_22:
            v15 = (v14 | (v12 << (8 * v7))) + 2;
            v11 = v14 + 2;
            if (v7 < 4)
            {
              v11 = v15;
            }

            break;
          default:
            break;
        }
      }

      if (v11 == 1)
      {
        (*(*(v6 - 8) + 32))(__dst, __src, v6);
        *(__dst + v7) = 1;
      }

      else if (v11)
      {
        memcpy(__dst, __src, v7 + 1);
      }

      else
      {
        (*(*(*(a3 + 16) - 8) + 32))(__dst, __src);
        *((__dst + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v7) = 0;
      }

      *(__dst + v8) = 0;
    }

    return __dst;
  }
}

unsigned __int8 *sub_1DCCF7D4C(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v10 + 1 > 8)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 8;
  }

  v12 = __dst[v11];
  v13 = __src[v11];
  v14 = 8 * v10;
  if (v12 > 1)
  {
    if (v13 <= 1)
    {
      if (v13 == 1)
      {
LABEL_76:
        *__dst = *__src;
        __dst[v11] = 1;
        return __dst;
      }

      v16 = __src[v10];
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v10 <= 3)
        {
          v18 = v10;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_39;
          case 2:
            v19 = *__src;
            goto LABEL_39;
          case 3:
            v19 = *__src | (__src[2] << 16);
            goto LABEL_39;
          case 4:
            v19 = *__src;
LABEL_39:
            v28 = (v19 | (v17 << v14)) + 2;
            v16 = v19 + 2;
            if (v10 < 4)
            {
              v16 = v28;
            }

            break;
          default:
            break;
        }
      }

LABEL_89:
      if (v16 == 1)
      {
        (*(v9 + 32))(__dst, __src, v8);
        __dst[v10] = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v10 + 1);
      }

      else
      {
        (*(v6 + 32))(__dst, __src, v5);
        *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        __dst[v10] = 0;
      }

      __dst[v11] = 0;
      return __dst;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      v41 = *(*(a3 + 16) - 8);
      if (v12 == 1)
      {
        v15 = *(*(a3 + 32) - 8);

        v9 = v15;
        v14 = 8 * v10;
LABEL_63:
        v32 = __src[v11];
        v33 = v32 - 2;
        if (v32 < 2)
        {
          v6 = v41;
        }

        else
        {
          if (v11 <= 3)
          {
            v34 = v11;
          }

          else
          {
            v34 = 4;
          }

          v6 = v41;
          switch(v34)
          {
            case 1:
              v35 = *__src;
              goto LABEL_73;
            case 2:
              v35 = *__src;
              goto LABEL_73;
            case 3:
              v35 = *__src | (__src[2] << 16);
              goto LABEL_73;
            case 4:
              v35 = *__src;
LABEL_73:
              v36 = (v35 | (v33 << (8 * v11))) + 2;
              v32 = v35 + 2;
              if (v11 < 4)
              {
                v32 = v36;
              }

              break;
            default:
              break;
          }
        }

        if (v32 == 1)
        {
          goto LABEL_76;
        }

        v16 = __src[v10];
        v37 = v16 - 2;
        if (v16 >= 2)
        {
          if (v10 <= 3)
          {
            v38 = v10;
          }

          else
          {
            v38 = 4;
          }

          switch(v38)
          {
            case 1:
              v39 = *__src;
              goto LABEL_86;
            case 2:
              v39 = *__src;
              goto LABEL_86;
            case 3:
              v39 = *__src | (__src[2] << 16);
              goto LABEL_86;
            case 4:
              v39 = *__src;
LABEL_86:
              if (v10 < 4)
              {
                v16 = (v39 | (v37 << v14)) + 2;
              }

              else
              {
                v16 = v39 + 2;
              }

              break;
            default:
              goto LABEL_89;
          }
        }

        goto LABEL_89;
      }

      v24 = __dst[v10];
      v25 = v24 - 2;
      if (v24 >= 2)
      {
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        switch(v26)
        {
          case 1:
            v27 = *__dst;
            goto LABEL_55;
          case 2:
            v27 = *__dst;
            goto LABEL_55;
          case 3:
            v27 = *__dst | (__dst[2] << 16);
            goto LABEL_55;
          case 4:
            v27 = *__dst;
LABEL_55:
            if (v10 < 4)
            {
              v24 = (v27 | (v25 << v14)) + 2;
            }

            else
            {
              v24 = v27 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v24 == 1)
      {
        v31 = *(v9 + 8);
      }

      else
      {
        if (v24)
        {
          goto LABEL_63;
        }

        v31 = *(v6 + 8);
      }

      v40 = *(*(a3 + 32) - 8);
      v31();
      v9 = v40;
      goto LABEL_63;
    }

    if (v12 == 1)
    {
    }

    else
    {
      v20 = __dst[v10];
      v21 = v20 - 2;
      if (v20 >= 2)
      {
        if (v10 <= 3)
        {
          v22 = v10;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 1:
            v23 = *__dst;
            goto LABEL_43;
          case 2:
            v23 = *__dst;
            goto LABEL_43;
          case 3:
            v23 = *__dst | (__dst[2] << 16);
            goto LABEL_43;
          case 4:
            v23 = *__dst;
LABEL_43:
            v29 = (v23 | (v21 << v14)) + 2;
            v20 = v23 + 2;
            if (v10 < 4)
            {
              v20 = v29;
            }

            break;
          default:
            break;
        }
      }

      if (v20 == 1)
      {
        (*(v9 + 8))(__dst, v8);
      }

      else if (!v20)
      {
        (*(v6 + 8))(__dst, v5);
      }
    }
  }

  return memcpy(__dst, __src, v11 + 1);
}

uint64_t sub_1DCCF8284(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v4 = *(*(a3 + 32) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 + 1 > 8)
  {
    v5 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) > 3)
  {
    goto LABEL_8;
  }

  v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_24:
    v12 = *(a1 + v5);
    if (v12 >= 2)
    {
      v13 = (v12 ^ 0xFF) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v13 >= 2)
    {
      return v13 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (v10 < 2)
  {
    goto LABEL_24;
  }

LABEL_8:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1DCCF83E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a4 + 32) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 32) - 8) + 64);
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCCF85D8(uint64_t a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = *(*(a2 + 32) - 8);
  if (*(v3 + 64) > v2)
  {
    v2 = *(v3 + 64);
  }

  if (v2 + 1 > 8)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = 8;
  }

  v5 = *(a1 + v4);
  if (v5 >= 2)
  {
    return (v5 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCCF8640(_WORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a3 + 32) - 8) + 64) > v4)
  {
    v4 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (v4 + 1 > 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 8;
  }

  if (a2 > 0xFE)
  {
    v6 = (v5 + 1);
    if (v6 <= 3)
    {
      v7 = ~(-1 << (8 * v6));
    }

    else
    {
      v7 = -1;
    }

    if (v6)
    {
      v8 = v7 & (a2 - 255);
      if (v6 <= 3)
      {
        v9 = v6;
      }

      else
      {
        v9 = 4;
      }

      bzero(a1, v6);
      switch(v9)
      {
        case 2:
          *a1 = v8;
          break;
        case 3:
          *a1 = v8;
          *(a1 + 2) = BYTE2(v8);
          break;
        case 4:
          *a1 = v8;
          break;
        default:
          *a1 = v8;
          break;
      }
    }
  }

  else if (a2)
  {
    *(a1 + v5) = -a2;
  }
}

uint64_t sub_1DCCF8758(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_1DCCF8828(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v5 + 64) + v8;
  v11 = *(v5 + 80) | v8;
  v12 = v11;
  v13 = v11 & 0x100000;
  if (v12 > 7 || v13 != 0 || (v10 & ~v9) + *(v7 + 64) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v16 = ~v9;
  (*(v5 + 16))(a1, a2);
  (*(v7 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v6);
  return a1;
}

uint64_t sub_1DCCF8984(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 32) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_1DCCF8A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8CC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1DCCF8E90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 32);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCCF9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  sub_1DCCF91E0(v12, v13, v14, v15, v16, v17, a8);
  swift_setDeallocating();
  return sub_1DCB19D2C();
}

void sub_1DCCF91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  sub_1DCCF9278();
  v13 = swift_allocError();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  a7(&v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;

  sub_1DCCF92CC(v8, v9, v10, v11, v12);
}

unint64_t sub_1DCCF9278()
{
  result = qword_1ECCA4810;
  if (!qword_1ECCA4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4810);
  }

  return result;
}

void sub_1DCCF92CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t dispatch thunk of DucTemplateExecutor.execute(ducFamily:ducId:parameters:locale:_:)()
{
  return (*(*v0 + 88))();
}

{
  return (*(*v0 + 96))();
}

double DucTemplatingResult.asTemplatingResult()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_1DCB72FB0(0, 0xE000000000000000, *(v5 + 16));

  v8 = sub_1DCB73048(v3, v4, v7, v5, v6);

  *a1 = v3;
  *(a1 + 8) = v4;
  v9 = MEMORY[0x1E69E7CC8];
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  result = 0.0;
  *(a1 + 48) = xmmword_1DD0E1E40;
  *(a1 + 64) = v7;
  return result;
}

uint64_t AppIntentSELFPerformanceLogger.__deallocating_deinit()
{
  AppIntentSELFPerformanceLogger.deinit();

  return swift_deallocClassInstance();
}

id AppIntentSELFPerformanceLogger.init(measuring:taskType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DD0DD33C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DD0DB04C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 40) = 1039;
  *(v4 + 80) = 0;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_1DCCFA3D0();

  sub_1DD0DB03C();
  *(v4 + 64) = sub_1DCB0DEDC(v18);
  v19 = [objc_allocWithZone(MEMORY[0x1E69CEB30]) init];
  if (v19)
  {
    sub_1DD0DD3BC();
    v20 = sub_1DD0DD32C();
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    sub_1DCCFA414(v20, v22, v19);
  }

  *(v4 + 72) = v19;
  v23 = objc_allocWithZone(MEMORY[0x1E69CEB08]);
  v24 = v19;
  result = [v23 init];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 48) = result;
  result = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = result;

  *(v4 + 56) = v26;
  sub_1DCCF9904();
  if (v27)
  {
    v28 = sub_1DD0DD3CC();
    OUTLINED_FUNCTION_13_1(v28);
    (*(v29 + 8))(a1);
  }

  else
  {
    if (qword_1ECCA1290 != -1)
    {
      OUTLINED_FUNCTION_0_42();
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1ECCD25E8);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_50_0();
      *v33 = 0;
      _os_log_impl(&dword_1DCAFC000, v31, v32, "Couldn't log start event", v33, 2u);
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    v34 = sub_1DD0DD3CC();
    OUTLINED_FUNCTION_13_1(v34);
    (*(v35 + 8))(a1);
    return 0;
  }

  return v4;
}

void sub_1DCCF9904()
{
  OUTLINED_FUNCTION_10_4();
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x1E69CEB18]) init];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x1E69CEB38]) init];
      if (v4)
      {
        v5 = v4;
        [v4 setDomainExecutionType_];
        [v5 setDomainExecutionMetadata_];
        [v3 setStartedOrChanged_];
        [v3 setContextId_];
        v6 = *(v0 + 48);
        [*(v1 + 48) setFlowDomainExecutionContext_];
        type metadata accessor for SiriKitEvent(0);
        v7 = *(v1 + 24);
        v8 = *(v1 + 32);

        v9 = v6;
        OUTLINED_FUNCTION_1_46();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
      }

      if (qword_1ECCA1290 != -1)
      {
        OUTLINED_FUNCTION_0_42();
      }

      v14 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v14, qword_1ECCD25E8);
      v15 = sub_1DD0DD8EC();
      v16 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_50_0();
        *v17 = 0;
        _os_log_impl(&dword_1DCAFC000, v15, v16, "Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v17, 2u);
        OUTLINED_FUNCTION_80();
      }
    }

    else
    {
      if (qword_1ECCA1290 != -1)
      {
        OUTLINED_FUNCTION_0_42();
      }

      v10 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v10, qword_1ECCD25E8);
      v3 = sub_1DD0DD8EC();
      v11 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v11))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v12, v13, "Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext");
        OUTLINED_FUNCTION_80();
      }
    }
  }

  OUTLINED_FUNCTION_11_7();
}

unint64_t sub_1DCCFA3D0()
{
  result = qword_1EDE4D700;
  if (!qword_1EDE4D700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4D700);
  }

  return result;
}

void sub_1DCCFA414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDomainExecutionAppIntentBundleID_];
}

Swift::Void __swiftcall Logger.error(output:test:file:function:line:)(Swift::String output, Swift::Bool test, Swift::String file, Swift::String function, Swift::Int line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  v102[0] = 47;
  v102[1] = 0xE100000000000000;
  v101 = v102;
  sub_1DCC3C83C(sub_1DCC3CA80, v100, file._countAndFlagsBits, file._object);
  v9 = v8;

  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6EC();

  v12 = os_log_type_enabled(v10, v11);
  if (v9)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v102[0] = v14;
      v22 = OUTLINED_FUNCTION_0_43(4.8154e-34, v14, v15, v16, v17, v18, v19, v20, v21);
      *(v13 + 4) = v22;
      v30 = OUTLINED_FUNCTION_2_49(v22, v23, v24, v25, v26, v27, v28, v29);
      *(v13 + 24) = OUTLINED_FUNCTION_1_47(v30, v31, v32, v33, v34, v35, v36, v37, v94);
      *(v13 + 32) = line;
      v38 = sub_1DD0DE1EC();
      v39 = MEMORY[0x1E12A66E0](v38);
      v41 = v40;

      v42 = sub_1DCB10E9C(v39, v41, v102);

      *(v13 + 34) = v42;
      OUTLINED_FUNCTION_3_48(v43, v44, v45, v46, v47, v48, v49, v50, v95, v97, line);
      OUTLINED_FUNCTION_4_44(&dword_1DCAFC000, v51, v52, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
      v53 = v14;
LABEL_9:
      MEMORY[0x1E12A8390](v53, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

LABEL_10:

    return;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = swift_slowAlloc();
  v98 = swift_slowAlloc();
  v102[0] = v98;
  v61 = OUTLINED_FUNCTION_0_43(4.8154e-34, v98, v54, v55, v56, v57, v58, v59, v60);
  *(v13 + 4) = v61;
  v69 = OUTLINED_FUNCTION_2_49(v61, v62, v63, v64, v65, v66, v67, v68);
  *(v13 + 24) = OUTLINED_FUNCTION_1_47(v69, v70, v71, v72, v73, v74, v75, v76, v94);
  *(v13 + 32) = line;
  v77 = sub_1DD0DE10C();
  v78 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v78 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v78 >= v77 >> 14)
  {
    v79 = sub_1DD0DE1EC();
    v80 = MEMORY[0x1E12A66E0](v79);
    v82 = v81;

    v83 = sub_1DCB10E9C(v80, v82, v102);

    *(v13 + 34) = v83;
    OUTLINED_FUNCTION_3_48(v84, v85, v86, v87, v88, v89, v90, v91, v96, v98, line);
    OUTLINED_FUNCTION_4_44(&dword_1DCAFC000, v92, v93, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    v53 = v99;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DCCFA81C()
{
  v0 = sub_1DD0DD8FC();
  __swift_allocate_value_buffer(v0, qword_1ECCD25E8);
  __swift_project_value_buffer(v0, qword_1ECCD25E8);
  if (qword_1ECCA1298 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2600;
  return sub_1DD0DD90C();
}

uint64_t sub_1DCCFA8A8()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1ECCD2600 = result;
  return result;
}

unint64_t sub_1DCCFA914()
{
  result = qword_1EDE4F8F0;
  if (!qword_1EDE4F8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4F8F0);
  }

  return result;
}

uint64_t DucTemplatingLocalContext.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DucTemplatingLocalContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DucTemplatingLocalContext.meCard.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0xB0uLL);
  memcpy(a1, (v1 + 16), 0xB0uLL);
  return sub_1DCB28B08(__dst, v4, &qword_1ECCA4818, &unk_1DD0ECB40);
}

void *DucTemplatingLocalContext.meCard.setter(const void *a1)
{
  memcpy(v4, (v1 + 16), sizeof(v4));
  sub_1DCCFAA94(v4);
  return memcpy((v1 + 16), a1, 0xB0uLL);
}

uint64_t sub_1DCCFAA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4818, &unk_1DD0ECB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DucTemplatingLocalContext.nlIntent.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t type metadata accessor for DucTemplatingLocalContext()
{
  result = qword_1EDE47C98;
  if (!qword_1EDE47C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DucTemplatingLocalContext.requestStartTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DucTemplatingLocalContext() + 28);

  return sub_1DCCFAC48(a1, v3);
}

uint64_t sub_1DCCFAC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DucTemplatingLocalContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1DCCFAD70(v5);
  memcpy(a1 + 2, v5, 0xB0uLL);
  a1[24] = 0;
  v2 = *(type metadata accessor for DucTemplatingLocalContext() + 28);
  v3 = sub_1DD0DAFDC();
  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for DucTemplatingLocalContext(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[3];

  if (v7)
  {
    if (v7 == 1)
    {
      memcpy((a1 + 16), a2 + 2, 0xB0uLL);
      goto LABEL_23;
    }

    *(a1 + 16) = a2[2];
    *(a1 + 24) = v7;
    v9 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v9;
  }

  else
  {
    v8 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v8;
  }

  v10 = a2[7];
  if (v10)
  {
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v10;
    v11 = a2[9];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v11;
  }

  else
  {
    v12 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v12;
  }

  v13 = a2[11];
  if (v13)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v13;
    v14 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v14;
  }

  else
  {
    v15 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v15;
  }

  v16 = a2[15];
  if (v16)
  {
    *(a1 + 112) = a2[14];
    *(a1 + 120) = v16;
    v17 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v17;
  }

  else
  {
    v18 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v18;
  }

  v19 = a2[19];
  if (v19)
  {
    *(a1 + 144) = a2[18];
    *(a1 + 152) = v19;
    v20 = a2[21];
    *(a1 + 160) = a2[20];
    *(a1 + 168) = v20;
  }

  else
  {
    v21 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v21;
  }

  v22 = a2[23];
  if (v22 >> 60 == 15)
  {
    *(a1 + 176) = *(a2 + 11);
  }

  else
  {
    v23 = a2[22];
    sub_1DCC91E80(v23, a2[23]);
    *(a1 + 176) = v23;
    *(a1 + 184) = v22;
  }

LABEL_23:
  *(a1 + 192) = a2[24];
  v24 = *(a3 + 28);
  v25 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v24), a2 + v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
  }

  return a1;
}

uint64_t destroy for DucTemplatingLocalContext(char *a1, uint64_t a2)
{
  v4 = *(a1 + 1);

  v5 = *(a1 + 3);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 5);
  }

  if (*(a1 + 7))
  {

    v7 = *(a1 + 9);
  }

  if (*(a1 + 11))
  {

    v8 = *(a1 + 13);
  }

  if (*(a1 + 15))
  {

    v9 = *(a1 + 17);
  }

  if (*(a1 + 19))
  {

    v10 = *(a1 + 21);
  }

  v11 = *(a1 + 23);
  if (v11 >> 60 != 15)
  {
    sub_1DCB21A14(*(a1 + 22), v11);
  }

LABEL_14:
  v12 = *(a1 + 24);

  v13 = *(a2 + 28);
  v14 = sub_1DD0DAFDC();
  result = __swift_getEnumTagSinglePayload(&a1[v13], 1, v14);
  if (!result)
  {
    v16 = *(*(v14 - 8) + 8);

    return v16(&a1[v13], v14);
  }

  return result;
}

uint64_t initializeWithCopy for DucTemplatingLocalContext(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[3];

  if (v7)
  {
    if (v7 == 1)
    {
      memcpy((a1 + 16), a2 + 2, 0xB0uLL);
      goto LABEL_21;
    }

    *(a1 + 16) = a2[2];
    *(a1 + 24) = v7;
    v9 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v9;
  }

  else
  {
    v8 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v8;
  }

  v10 = a2[7];
  if (v10)
  {
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v10;
    v11 = a2[9];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v11;
  }

  else
  {
    v12 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v12;
  }

  v13 = a2[11];
  if (v13)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v13;
    v14 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v14;
  }

  else
  {
    v15 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v15;
  }

  v16 = a2[15];
  if (v16)
  {
    *(a1 + 112) = a2[14];
    *(a1 + 120) = v16;
    v17 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v17;
  }

  else
  {
    v18 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v18;
  }

  v19 = a2[19];
  if (v19)
  {
    *(a1 + 144) = a2[18];
    *(a1 + 152) = v19;
    v20 = a2[21];
    *(a1 + 160) = a2[20];
    *(a1 + 168) = v20;
  }

  else
  {
    v21 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v21;
  }

  v22 = a2[23];
  if (v22 >> 60 == 15)
  {
    *(a1 + 176) = *(a2 + 11);
  }

  else
  {
    v23 = a2[22];
    sub_1DCC91E80(v23, a2[23]);
    *(a1 + 176) = v23;
    *(a1 + 184) = v22;
  }

LABEL_21:
  *(a1 + 192) = a2[24];
  v24 = *(a3 + 28);
  v25 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v24), a2 + v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
  }

  return a1;
}

uint64_t assignWithCopy for DucTemplatingLocalContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7 == 1)
  {
    if (!v8)
    {
      v10 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v10;
      goto LABEL_12;
    }

    if (v8 != 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

LABEL_12:
      if (*(a2 + 56))
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v11 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v11;
      }

      if (*(a2 + 88))
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
      }

      else
      {
        v12 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v12;
      }

      if (*(a2 + 120))
      {
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
      }

      else
      {
        v13 = *(a2 + 128);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = v13;
      }

      if (*(a2 + 152))
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        v14 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v14;
      }

      v15 = *(a2 + 184);
      goto LABEL_58;
    }

LABEL_7:
    memcpy((a1 + 16), (a2 + 16), 0xB0uLL);
    goto LABEL_63;
  }

  if (v8 == 1)
  {
    sub_1DCCFBAC0(a1 + 16);
    goto LABEL_7;
  }

  if (v7)
  {
    if (v8)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      v9 = *(a1 + 40);
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      sub_1DCCFBA18(a1 + 16);
      v16 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v16;
    }
  }

  else if (v8)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v17 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v17;
  }

  v18 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v18)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      v19 = *(a1 + 72);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCFBA18(a1 + 48);
      v20 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v21 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v21;
  }

  v22 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (v22)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);
      v23 = *(a1 + 104);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      sub_1DCCFBA18(a1 + 80);
      v24 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v25 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v25;
  }

  v26 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (v26)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);
      v27 = *(a1 + 136);
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      sub_1DCCFBA18(a1 + 112);
      v28 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v29 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v29;
  }

  v30 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (v30)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
      v31 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);
    }

    else
    {
      sub_1DCCFBA18(a1 + 144);
      v32 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v32;
    }
  }

  else if (v30)
  {
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  else
  {
    v33 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v33;
  }

  v15 = *(a2 + 184);
  if (*(a1 + 184) >> 60 == 15)
  {
LABEL_58:
    if (v15 >> 60 != 15)
    {
      v34 = *(a2 + 176);
      sub_1DCC91E80(v34, v15);
      *(a1 + 176) = v34;
      *(a1 + 184) = v15;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v15 >> 60 == 15)
  {
    sub_1DCCFBA6C(a1 + 176);
LABEL_62:
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_63;
  }

  v42 = *(a2 + 176);
  sub_1DCC91E80(v42, *(a2 + 184));
  v43 = *(a1 + 176);
  v44 = *(a1 + 184);
  *(a1 + 176) = v42;
  *(a1 + 184) = v15;
  sub_1DCB21A14(v43, v44);
LABEL_63:
  v35 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  v36 = *(a3 + 28);
  v37 = sub_1DD0DAFDC();
  LODWORD(v35) = __swift_getEnumTagSinglePayload(a1 + v36, 1, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2 + v36, 1, v37);
  if (!v35)
  {
    v39 = *(v37 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v39 + 24))(a1 + v36, a2 + v36, v37);
      return a1;
    }

    (*(v39 + 8))(a1 + v36, v37);
    goto LABEL_68;
  }

  if (EnumTagSinglePayload)
  {
LABEL_68:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v36), (a2 + v36), *(*(v40 - 8) + 64));
    return a1;
  }

  (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
  __swift_storeEnumTagSinglePayload(a1 + v36, 0, 1, v37);
  return a1;
}

uint64_t initializeWithTake for DucTemplatingLocalContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  memcpy((a1 + 16), (a2 + 16), 0xB0uLL);
  *(a1 + 192) = *(a2 + 192);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();
  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), (a2 + v6), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for DucTemplatingLocalContext(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = a1[3];
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  v9 = *(a2 + 24);
  if (v9 == 1)
  {
    sub_1DCCFBAC0((a1 + 2));
LABEL_4:
    memcpy(a1 + 2, (a2 + 16), 0xB0uLL);
    goto LABEL_5;
  }

  if (v8)
  {
    if (v9)
    {
      a1[2] = *(a2 + 16);
      a1[3] = v9;

      v18 = *(a2 + 40);
      v19 = a1[5];
      a1[4] = *(a2 + 32);
      a1[5] = v18;

      goto LABEL_18;
    }

    sub_1DCCFBA18((a1 + 2));
  }

  v20 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v20;
LABEL_18:
  if (a1[7])
  {
    v21 = *(a2 + 56);
    if (v21)
    {
      a1[6] = *(a2 + 48);
      a1[7] = v21;

      v22 = *(a2 + 72);
      v23 = a1[9];
      a1[8] = *(a2 + 64);
      a1[9] = v22;

      goto LABEL_23;
    }

    sub_1DCCFBA18((a1 + 6));
  }

  v24 = *(a2 + 64);
  *(a1 + 3) = *(a2 + 48);
  *(a1 + 4) = v24;
LABEL_23:
  if (a1[11])
  {
    v25 = *(a2 + 88);
    if (v25)
    {
      a1[10] = *(a2 + 80);
      a1[11] = v25;

      v26 = *(a2 + 104);
      v27 = a1[13];
      a1[12] = *(a2 + 96);
      a1[13] = v26;

      goto LABEL_28;
    }

    sub_1DCCFBA18((a1 + 10));
  }

  v28 = *(a2 + 96);
  *(a1 + 5) = *(a2 + 80);
  *(a1 + 6) = v28;
LABEL_28:
  if (a1[15])
  {
    v29 = *(a2 + 120);
    if (v29)
    {
      a1[14] = *(a2 + 112);
      a1[15] = v29;

      v30 = *(a2 + 136);
      v31 = a1[17];
      a1[16] = *(a2 + 128);
      a1[17] = v30;

      goto LABEL_33;
    }

    sub_1DCCFBA18((a1 + 14));
  }

  v32 = *(a2 + 128);
  *(a1 + 7) = *(a2 + 112);
  *(a1 + 8) = v32;
LABEL_33:
  if (a1[19])
  {
    v33 = *(a2 + 152);
    if (v33)
    {
      a1[18] = *(a2 + 144);
      a1[19] = v33;

      v34 = *(a2 + 168);
      v35 = a1[21];
      a1[20] = *(a2 + 160);
      a1[21] = v34;

      goto LABEL_38;
    }

    sub_1DCCFBA18((a1 + 18));
  }

  v36 = *(a2 + 160);
  *(a1 + 9) = *(a2 + 144);
  *(a1 + 10) = v36;
LABEL_38:
  v37 = a1[23];
  if (v37 >> 60 == 15)
  {
LABEL_41:
    *(a1 + 11) = *(a2 + 176);
    goto LABEL_5;
  }

  v38 = *(a2 + 184);
  if (v38 >> 60 == 15)
  {
    sub_1DCCFBA6C((a1 + 22));
    goto LABEL_41;
  }

  v39 = a1[22];
  a1[22] = *(a2 + 176);
  a1[23] = v38;
  sub_1DCB21A14(v39, v37);
LABEL_5:
  v10 = a1[24];
  a1[24] = *(a2 + 192);

  v11 = *(a3 + 28);
  v12 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v11, 1, v12);
  v14 = __swift_getEnumTagSinglePayload(a2 + v11, 1, v12);
  if (!EnumTagSinglePayload)
  {
    v15 = *(v12 - 8);
    if (!v14)
    {
      (*(v15 + 40))(a1 + v11, a2 + v11, v12);
      return a1;
    }

    (*(v15 + 8))(a1 + v11, v12);
    goto LABEL_10;
  }

  if (v14)
  {
LABEL_10:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy(a1 + v11, (a2 + v11), *(*(v16 - 8) + 64));
    return a1;
  }

  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_1DCCFBF58()
{
  sub_1DCC4A194();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

unint64_t DucParameterCodingError.description.getter()
{
  sub_1DCCFC130(v0, &v11);
  if (!v12)
  {
    return 0xD000000000000037;
  }

  v2 = v13;
  v1 = v14;
  sub_1DCAFF9E8(&v11, v8);
  sub_1DD0DEC1C();

  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 8))(v3, v4);
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](2112039, 0xE300000000000000);
  MEMORY[0x1E12A6780](v2, v1);

  v6 = 0xD000000000000022;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t *destroy for DucParameterCodingError(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1Tm(result);
    v3 = v2[6];
  }

  return result;
}

uint64_t initializeWithCopy for DucParameterCodingError(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    v6 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;
  }

  return a1;
}

uint64_t assignWithCopy for DucParameterCodingError(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);

      return a1;
    }

LABEL_7:
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    *a1 = v8;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = *(a1 + 48);

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 5);
  v5 = *(a2 + 6);
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t assignWithTake for DucParameterCodingError(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v4 < 0xFFFFFFFF)
  {
    v7 = *(a1 + 48);

LABEL_5:
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for DucParameterCodingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DucParameterCodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DCCFC498(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCCFC510()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1ECCD2608 = result;
  return result;
}

uint64_t DucTemplatingService.locale.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DucTemplatingService.ducFamily.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DucTemplatingService.synapseAppLaunchDucs.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void DucTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_25_10();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_17_17();
  swift_allocObject();
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)(v6, v4, v2, v1, v0);
}

void DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_14_31(a1, a2, a3, a4, "synapseAppLaunchDucs");
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  type metadata accessor for DucTemplateExecutor();
  *(v5 + 48) = swift_allocObject();
  *(v5 + 56) = a5;
  sub_1DD0DCF8C();
}

uint64_t DucTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_17();
  v16 = swift_allocObject();
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_31(a1, a2, a3, a4, "synapseAppLaunchDucs");
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  sub_1DCB16D50(a8, &qword_1ECCA4820, &unk_1DD0ECCB0);
  type metadata accessor for DucTemplateExecutor();
  *(v8 + 48) = swift_allocObject();
  *(v8 + 56) = a5;
  sub_1DCB18FF0(a7, v8 + 80);
  return v8;
}

uint64_t sub_1DCCFC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v9 = a8();
  OUTLINED_FUNCTION_9_30(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]);
  return sub_1DCB16D50(v30, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFC8F4()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v5);
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v6 = a5();
  OUTLINED_FUNCTION_9_30(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
  return sub_1DCB16D50(v27, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = v9;
  *(v17 + 40) = a5;
  *(v17 + 48) = a1;
  *(v17 + 56) = a7;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFCAE0(void *__src, uint64_t (*a2)(_BYTE *), uint64_t a3, void *a4)
{
  memcpy(__dst, __src, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v7 = a4[14];
    __swift_project_boxed_opaque_existential_1(a4 + 10, a4[13]);
    memcpy(v10, __src, 0x49uLL);
    sub_1DCBBF670(v10, &v9);
    DeviceState.isVox.getter();
  }

  memcpy(v10, __src, 0x49uLL);
  return a2(v10);
}

uint64_t sub_1DCCFCC84(uint64_t result, uint64_t (*a2)(void *), uint64_t a3, const void *a4, uint64_t a5, uint64_t *a6)
{
  if (*(result + 72))
  {
    v8 = *result;
    if (qword_1ECCA12A0 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DD0E07C0;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    __src[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1DCB34060();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1DD0DD7EC();

    memcpy(__dst, a4, 0x49uLL);
    return a2(__dst);
  }

  else
  {
    v10 = *(result + 32);
    if (v10[2])
    {
      v12 = v10[4];
      v13 = v10[5];

      sub_1DCCFE594(a6, v12, v13, __src);

      v15 = 0;
      LOBYTE(__src[9]) = 0;
      a2(__src);
      memcpy(__dst, __src, 0x49uLL);
      return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DCCFCE94()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v5);
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFCF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v5 = a4();
  OUTLINED_FUNCTION_9_30(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0]);
  return sub_1DCB16D50(v26, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFCFA0()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFD064(void *a1)
{
  v2 = sub_1DD0DB0FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 152))(v5, v6);
  sub_1DD0DD1BC();
  if (v7)
  {
    sub_1DCD00AE8();
    sub_1DCD00B3C();
    sub_1DD0DDF3C();
  }

  type metadata accessor for AppInformationResolver();
  swift_initStackObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFD260(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v3 = a2();
  OUTLINED_FUNCTION_9_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24[0]);
  return sub_1DCB16D50(v24, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD2F8()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCCFD064((v0 + 80));
}

uint64_t sub_1DCCFD40C(uint64_t (*a1)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v2 = a1();
  OUTLINED_FUNCTION_9_30(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]);
  return sub_1DCB16D50(v23, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD474()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFD538()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

uint64_t sub_1DCCFD624(id a1, uint64_t a2, char a3, void (*a4)(_BYTE *))
{
  sub_1DCCFD6B4(a1, 0xD00000000000001FLL, 0x80000001DD119B20, a2, a3 & 1, v6);
  a4(v6);
  memcpy(__dst, v6, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD6B4(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DF06C();
    if (v10)
    {
      v11 = v10;
      sub_1DCD00AD8(a1, a4, 1);
    }

    else
    {
      v11 = swift_allocError();
      *v19 = a1;
    }

    *a6 = v11;
    *(a6 + 72) = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD0E07C0;
    *(v14 + 32) = a1;
    *(v14 + 40) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DD0E07C0;
    *(v15 + 32) = a1;
    *(v15 + 40) = a4;
    sub_1DCCB6F38(a1, a4, 0);
    sub_1DCCB6F38(a1, a4, 0);
    v16 = sub_1DD0DE38C();
    v16[2] = 1;
    v16[4] = 0;
    v16[5] = 0xE000000000000000;

    v17 = sub_1DCB73048(a2, a3, v16, v15, v14);

    *a6 = a2;
    *(a6 + 8) = a3;
    v18 = MEMORY[0x1E69E7CC8];
    *(a6 + 16) = v17;
    *(a6 + 24) = v18;
    *(a6 + 32) = v14;
    *(a6 + 40) = v15;
    *(a6 + 48) = xmmword_1DD0E1E40;
    *(a6 + 64) = v16;
    *(a6 + 72) = 0;
  }
}

uint64_t sub_1DCCFD904(id a1, uint64_t a2, char a3, void (*a4)(_BYTE *))
{
  sub_1DCCFD6B4(a1, 0xD000000000000036, 0x80000001DD119AE0, a2, a3 & 1, v6);
  a4(v6);
  memcpy(__dst, v6, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

uint64_t sub_1DCCFD9AC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1DCB17CA0(v3 + 80, v8);
  a3(v8, a1, a2);
  return sub_1DCB16D50(v8, &qword_1ECCA8AB0, &qword_1DD0E23E0);
}

void sub_1DCCFDB20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v5);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_13_28(v6);
  v7[6] = &unk_1DD0ECD08;
  v7[7] = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFDBDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCCFDC6C;

  return sub_1DCC453B4();
}

uint64_t sub_1DCCFDC6C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 32) = v0;

  if (!v0)
  {
    *(v6 + 40) = v3;
    *(v6 + 48) = v5;
  }

  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCFDD94()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[4] != 0;
  v5 = OUTLINED_FUNCTION_19_21();
  sub_1DCCFD6B4(v7, v5, v6, v1, v4, v8);
  sub_1DCD00AD8(v2, v1, v4);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1DCCFDE30()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = OUTLINED_FUNCTION_19_21();
  sub_1DCCFD6B4(v5, v3, v4, 0, v1 != 0, v6);
  sub_1DCD00AD8(v1, 0, v1 != 0);
  v7 = v0[1];

  return v7();
}

void sub_1DCCFDEE0()
{
  OUTLINED_FUNCTION_26_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = OUTLINED_FUNCTION_27_1();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v6);
  OUTLINED_FUNCTION_136();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_28_13(v7);
}

void sub_1DCCFDFEC()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFE108()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_25_10();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15_3();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v12);
  OUTLINED_FUNCTION_136();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;
  v13[5] = v11;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFE1F0(id a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  v5 = a1;
  if (a3)
  {
    LOBYTE(__dst[0]) = 1;
    v6 = a1;
    v7 = 1;
  }

  else
  {
    __src[0] = a1;
    __src[1] = a2;
    sub_1DCCFE2D8(__src, __dst);
    v7 = 0;
    v5 = __dst[0];
    v11 = *&__dst[1];
    v12 = *&__dst[3];
    v13 = *&__dst[5];
    v14 = *&__dst[7];
  }

  __src[0] = v5;
  *&__src[1] = v11;
  *&__src[3] = v12;
  *&__src[5] = v13;
  *&__src[7] = v14;
  LOBYTE(__src[9]) = v7;
  a4(__src);
  memcpy(__dst, __src, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

double sub_1DCCFE2D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  OUTLINED_FUNCTION_136();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E07C0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E07C0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  swift_bridgeObjectRetain_n();
  v7 = sub_1DD0DE38C();
  v7[2] = 1;
  v7[4] = 0;
  v7[5] = 0xE000000000000000;

  v8 = sub_1DCB73048(0xD000000000000010, 0x80000001DD119A90, v7, v6, v5);

  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x80000001DD119A90;
  v9 = MEMORY[0x1E69E7CC8];
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  result = 0.0;
  *(a2 + 48) = xmmword_1DD0E1E40;
  *(a2 + 64) = v7;
  return result;
}

void sub_1DCCFE42C()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v5);
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v6);
  sub_1DD0DCF8C();
}

void sub_1DCCFE4EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = OUTLINED_FUNCTION_27_1();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v6);
  OUTLINED_FUNCTION_136();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_28_13(v7);
}

uint64_t *sub_1DCCFE594@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result[4];
  if (v5[2])
  {
    v8 = result[5];
    v10 = *result;
    v9 = result[1];
    v12 = v5[4];
    v11 = v5[5];

    MEMORY[0x1E12A6780](a2, a3);

    MEMORY[0x1E12A6780](32, 0xE100000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    OUTLINED_FUNCTION_136();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DD0E07C0;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    v14 = sub_1DCB72FB0(0, 0xE000000000000000, *(v8 + 16));

    v15 = sub_1DCB73048(v10, v9, v14, v8, v13);

    *a4 = v10;
    *(a4 + 8) = v9;
    v16 = MEMORY[0x1E69E7CC8];
    *(a4 + 16) = v15;
    *(a4 + 24) = v16;
    *(a4 + 32) = v13;
    *(a4 + 40) = v8;
    *(a4 + 48) = xmmword_1DD0E1E40;
    *(a4 + 64) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DCCFE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v7 = a6();
  OUTLINED_FUNCTION_9_30(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28[0]);
  return sub_1DCB16D50(v28, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

uint64_t sub_1DCCFE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_1DCCF9278();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_48();
  v8 = a7();
  OUTLINED_FUNCTION_9_30(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29[0]);
  return sub_1DCB16D50(v29, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFE7E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v46 = &v53;

  v6 = sub_1DCCFFD40(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DCD00108, v45, a1, a2);
  v7 = *(v6 + 16);
  if (v7)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v8 = 0;
    v9 = v57;
    v10 = (v6 + 56);
    v41 = v7;
    v42 = v6;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v14 = *(v10 - 1);
      v13 = *v10;
      swift_bridgeObjectRetain_n();
      v15 = OUTLINED_FUNCTION_16_21();
      if (v16)
      {
        v17 = v12;
      }

      else
      {
        v17 = v15;
      }

      if (v17 >> 14 < v11 >> 14)
      {
        goto LABEL_18;
      }

      v43 = v8;
      v44 = v9;
      v18 = OUTLINED_FUNCTION_29_13(v11, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v53 = v18;
      v54 = v20;
      v55 = v22;
      v56 = v24;
      sub_1DCD00128();
      v25 = sub_1DD0DEA2C();
      v27 = v26;

      v28 = OUTLINED_FUNCTION_16_21();
      if (v29)
      {
        v28 = v12;
      }

      if (v12 >> 14 < v28 >> 14)
      {
        goto LABEL_19;
      }

      v30 = OUTLINED_FUNCTION_29_13(v28, v12);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v51 = v25;
      v52 = v27;
      v47 = v30;
      v48 = v32;
      v49 = v34;
      v50 = v36;
      sub_1DCB59970();

      sub_1DD0DE11C();

      v37 = v51;
      v38 = v52;
      v9 = v44;
      v57 = v44;
      v39 = *(v44 + 16);
      if (v39 >= *(v44 + 24) >> 1)
      {
        sub_1DCB38954();
        v9 = v57;
      }

      v8 = v43 + 1;
      *(v9 + 16) = v39 + 1;
      v40 = v9 + 16 * v39;
      *(v40 + 32) = v37;
      *(v40 + 40) = v38;
      v10 += 4;
      v6 = v42;
      if (v41 == v43 + 1)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v53 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    sub_1DD0DDF6C();
  }
}

void *DucTemplatingService.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  return v0;
}

uint64_t DucTemplatingService.__deallocating_deinit()
{
  DucTemplatingService.deinit();
  OUTLINED_FUNCTION_17_17();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCFF704@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x65756C6176;
  *(inited + 40) = 0xE500000000000000;
  sub_1DCB0DF6C(v1 + 32, inited + 48);
  v4 = sub_1DD0DDE9C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  *(a1 + 24) = result;
  *a1 = v4;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1DCCFF7C8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCFF82C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v8 = *(v1 + 80);
  v7 = *(v1 + 72);
  return sub_1DCCFCAE0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1DCCFF868()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF68290();
}

uint64_t sub_1DCCFF8F4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF696F0();
}

uint64_t sub_1DCCFF998()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DD01F588();
}

uint64_t sub_1DCCFFA24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4A548;

  return sub_1DCCBFBD8();
}

uint64_t sub_1DCCFFAF0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD033B0();
}

uint64_t sub_1DCCFFB7C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAF2DC();
}

uint64_t sub_1DCCFFC28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAF034();
}

uint64_t sub_1DCCFFCB4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD033B0();
}

uint64_t sub_1DCCFFD40(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1DD0DE1EC();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1DCE195B4();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1DCE195B4();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_1DD0DE1CC();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1DD0DE0DC();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_1DD0DE1EC();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_1DCE195B4();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_1DCE195B4();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_1DD0DE0DC();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1DD0DE1EC();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1DCE195B4();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DCD00128()
{
  result = qword_1ECCA4828;
  if (!qword_1ECCA4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4828);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DucFailure(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DCD00A84()
{
  result = qword_1ECCA4830;
  if (!qword_1ECCA4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4830);
  }

  return result;
}

void sub_1DCD00AD8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1DCD00AE8()
{
  result = qword_1ECCA4838;
  if (!qword_1ECCA4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4838);
  }

  return result;
}

unint64_t sub_1DCD00B3C()
{
  result = qword_1ECCA8EF0;
  if (!qword_1ECCA8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8EF0);
  }

  return result;
}

void sub_1DCD00B90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }

  else
  {

    sub_1DCB409A8(a7, a8);
  }
}

uint64_t sub_1DCD00C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnableTCCAction.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCD00DB0()
{
  result = qword_1ECCA4840;
  if (!qword_1ECCA4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EnableTCCAction(_BYTE *result, unsigned int a2, unsigned int a3)
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