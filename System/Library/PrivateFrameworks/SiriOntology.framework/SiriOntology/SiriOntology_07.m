uint64_t Com_Apple_Siri_Product_Proto_TerminalElement.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0), sub_1C05AB400(&qword_1EBE151F8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue), result = sub_1C095D69C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0) + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A28D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17950, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A2970(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A29DC()
{
  sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A2A8C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE176C8);
  __swift_project_value_buffer(v0, qword_1EBE176C8);
  return sub_1C095D6DC();
}

uint64_t Com_Apple_Siri_Product_Proto_NonTerminalElement.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1C095D41C();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C05A2BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17948, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A2C90(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A2CFC()
{
  sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A2D78()
{
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05A2E1C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE176E0);
  __swift_project_value_buffer(v0, qword_1EBE176E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ontologyNodeName";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultIds";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "terminalElement";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nonTerminalElement";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Element.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C05A3164(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1C05A36F8(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C095D50C();
    }

    else if (result == 2)
    {
      sub_1C095D4BC();
    }
  }

  return result;
}

uint64_t sub_1C05A3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17998, &qword_1C0972E30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v50 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - v27;
  v51 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v45 = v29;
  v29(&v43 - v27, 1, 1, v5);
  v30 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  v49 = a1;
  sub_1C05149F8(a1 + v30, v14, &qword_1EBE16E00, &qword_1C099BAE0);
  v47 = v16;
  v31 = *(v16 + 48);
  v52 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    v44 = v30;
    sub_1C05145B4(v14, &qword_1EBE16E00, &qword_1C099BAE0);
    v32 = v53;
    v33 = v55;
  }

  else
  {
    sub_1C05A8A4C(v14, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    v36 = v55;
    sub_1C095D42C();
    v33 = v36;
    if (v36)
    {
      sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      goto LABEL_8;
    }

    v44 = v30;
    sub_1C05A8A4C(v22, v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v32 = v53;
    }

    else
    {
      sub_1C05145B4(v28, &qword_1EBE17998, &qword_1C0972E30);
      v42 = v46;
      sub_1C05A8A4C(v20, v46, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C05A8A4C(v42, v28, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v32 = v53;
      v45(v28, 0, 1, v53);
    }
  }

  sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
  sub_1C095D55C();
  if (v33)
  {
LABEL_8:
    v35 = v28;
    return sub_1C05145B4(v35, &qword_1EBE17998, &qword_1C0972E30);
  }

  v34 = v50;
  sub_1C0575620(v28, v50, &qword_1EBE17998, &qword_1C0972E30);
  if ((*(v51 + 48))(v34, 1, v32) != 1)
  {
    v38 = v48;
    sub_1C05A8A4C(v34, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v39 = v49;
    v40 = v44;
    sub_1C05145B4(v49 + v44, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v38, v39 + v40, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v41 = v52;
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v39 + v40, 0, 1, v41);
  }

  v35 = v34;
  return sub_1C05145B4(v35, &qword_1EBE17998, &qword_1C0972E30);
}

uint64_t sub_1C05A36F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v54 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A0, &qword_1C0972E38);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v50 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - v27;
  v51 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v45 = v29;
  v29(&v43 - v27, 1, 1, v5);
  v30 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  v49 = a1;
  sub_1C05149F8(a1 + v30, v14, &qword_1EBE16E00, &qword_1C099BAE0);
  v47 = v16;
  v31 = *(v16 + 48);
  v52 = v15;
  if (v31(v14, 1, v15) == 1)
  {
    v44 = v30;
    sub_1C05145B4(v14, &qword_1EBE16E00, &qword_1C099BAE0);
    v32 = v53;
    v33 = v55;
  }

  else
  {
    sub_1C05A8A4C(v14, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    v36 = v55;
    sub_1C095D42C();
    v33 = v36;
    if (v36)
    {
      sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      goto LABEL_8;
    }

    v44 = v30;
    sub_1C05A8A4C(v22, v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v28, &qword_1EBE179A0, &qword_1C0972E38);
      v38 = v46;
      sub_1C05A8A4C(v20, v46, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
      sub_1C05A8A4C(v38, v28, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
      v32 = v53;
      v45(v28, 0, 1, v53);
    }

    else
    {
      sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v32 = v53;
    }
  }

  sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C095D55C();
  if (v33)
  {
LABEL_8:
    v35 = v28;
    return sub_1C05145B4(v35, &qword_1EBE179A0, &qword_1C0972E38);
  }

  v34 = v50;
  sub_1C0575620(v28, v50, &qword_1EBE179A0, &qword_1C0972E38);
  if ((*(v51 + 48))(v34, 1, v32) != 1)
  {
    v39 = v48;
    sub_1C05A8A4C(v34, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    v40 = v49;
    v41 = v44;
    sub_1C05145B4(v49 + v44, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v39, v40 + v41, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    v42 = v52;
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v40 + v41, 0, 1, v42);
  }

  v35 = v34;
  return sub_1C05145B4(v35, &qword_1EBE179A0, &qword_1C0972E38);
}

uint64_t Com_Apple_Siri_Product_Proto_Element.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1C095D66C(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C095D64C(), !v4))
    {
      v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
      sub_1C05149F8(v5 + *(v17 + 24), v12, &qword_1EBE16E00, &qword_1C099BAE0);
      v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
      if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
      {
        goto LABEL_12;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C05A40D0(v5, a1, a2, a3);
      }

      else
      {
        sub_1C05A3E8C(v5, a1, a2, a3);
      }

      result = sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      if (!v4)
      {
LABEL_12:
        v19 = v5 + *(v17 + 28);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C05A3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v13 + 24), v8, &qword_1EBE16E00, &qword_1C099BAE0);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16E00, &qword_1C099BAE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C05A8A4C(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C095D6AC();
    return sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
  }

  result = sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t sub_1C05A40D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v13 + 24), v8, &qword_1EBE16E00, &qword_1C099BAE0);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16E00, &qword_1C099BAE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C05A8A4C(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    sub_1C095D6AC();
    return sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  }

  result = sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t sub_1C05A4360@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05A4480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C05A44F4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C05A4548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17940, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A45E8(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A4654()
{
  sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C05A47C4();
    }

    else if (result == 2)
    {
      sub_1C095D48C();
    }
  }

  return result;
}

uint64_t sub_1C05A47C4()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0) + 24);
  type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v14 = *(v13 + 24);
  v20 = v3;
  sub_1C05149F8(v3 + v14, v7, &qword_1EBE16E10, &unk_1C0971270);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16E10, &unk_1C0971270);
    v15 = v23;
  }

  else
  {
    sub_1C05A8A4C(v7, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    v15 = v23;
    sub_1C095D6AC();
    result = sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    if (v15)
    {
      return result;
    }
  }

  v17 = v20;
  if (!*v20 || (result = sub_1C095D62C(), !v15))
  {
    v18 = v17 + *(v13 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A4B30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C05A4C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17938, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A4CA0(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A4D0C()
{
  sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A4DA8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17710);
  __swift_project_value_buffer(v0, qword_1EBE17710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C0971230;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "score";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v36 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "originalInput";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v36 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "allWordsMatched";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v36 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "primary";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v36 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "usingExplicitInput";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v36 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "intentRank";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v36 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "NERBasedParse";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v36 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "intentId";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v36 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "nlState";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "mitigatorClassification";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v8();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "strippedVoiceTrigger";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "invalidVoiceTrigger";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "suggested";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "metaDomainAction";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "intentTree";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05A52B0()
{
  v0 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C05A52F0();
  qword_1EBE15038 = result;
  return result;
}

uint64_t sub_1C05A52F0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 42) = 0;
  *(v0 + 44) = 0;
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  v1 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree) = v5;
  return v0;
}

uint64_t sub_1C05A53E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v42 - v5;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 44) = 0;
  v43 = (v1 + 44);
  *(v1 + 48) = 0;
  v44 = (v1 + 48);
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 52) = 0;
  v45 = (v1 + 52);
  v6 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  v47 = v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v48 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger) = 0;
  v49 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested) = 0;
  v50 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction) = MEMORY[0x1E69E7CC0];
  v51 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree) = v10;
  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v12;
  *(v1 + 32) = v13;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v12;
  swift_beginAccess();
  v14 = *(a1 + 41);
  swift_beginAccess();
  *(v1 + 41) = v14;
  swift_beginAccess();
  v15 = *(a1 + 42);
  swift_beginAccess();
  *(v1 + 42) = v15;
  swift_beginAccess();
  v16 = *(a1 + 44);
  v17 = v43;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 48);
  v18 = v44;
  swift_beginAccess();
  *v18 = v17;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 52);
  v19 = v45;
  swift_beginAccess();
  *v19 = v17;
  v20 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  v21 = v46;
  sub_1C05149F8(a1 + v20, v46, &qword_1EBE17780, &qword_1C0999E30);
  swift_beginAccess();

  sub_1C051F9D4(v21, v1 + v6, &qword_1EBE17780, &qword_1C0999E30);
  swift_endAccess();
  v22 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification);
  swift_beginAccess();
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  v24 = v47;
  swift_beginAccess();
  *v24 = v23;
  *(v24 + 8) = v22;
  v25 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  v28 = v9[1];
  *v9 = v27;
  v9[1] = v26;

  v29 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v48;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v49;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v50;
  swift_beginAccess();
  v36 = *(v1 + v35);
  *(v1 + v35) = v34;

  v37 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  swift_beginAccess();
  v38 = *(a1 + v37);

  v39 = v51;
  swift_beginAccess();
  v40 = *(v1 + v39);
  *(v1 + v39) = v38;

  return v1;
}

uint64_t sub_1C05A5950()
{
  v1 = v0[4];

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState, &qword_1EBE17780, &qword_1C0999E30);
  v2 = *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_1C05A53E0(v12);
    *(v4 + v8) = v11;
  }

  return sub_1C05A5AA8(v11, a1, a2, a3);
}

uint64_t sub_1C05A5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1C05A5CE8();
          break;
        case 2:
          sub_1C05A5D6C();
          break;
        case 4:
          sub_1C05A5DF0();
          break;
        case 5:
          sub_1C05A5E74();
          break;
        case 6:
          sub_1C05A5EF8();
          break;
        case 7:
          sub_1C05A5F7C();
          break;
        case 8:
          sub_1C05A6000();
          break;
        case 9:
          sub_1C05A6084();
          break;
        case 10:
          sub_1C05A6108();
          break;
        case 11:
          sub_1C05A61E4();
          break;
        case 12:
          sub_1C05A6280();
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
          goto LABEL_14;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
LABEL_14:
          sub_1C05516B8(v11, v12, v13, v14, v15);
          break;
        case 15:
          sub_1C05A630C();
          break;
        case 16:
          sub_1C05A63A8();
          break;
        default:
          break;
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05A5CE8()
{
  swift_beginAccess();
  sub_1C095D4EC();
  return swift_endAccess();
}

uint64_t sub_1C05A5D6C()
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C05A5DF0()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5E74()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5EF8()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5F7C()
{
  swift_beginAccess();
  sub_1C095D52C();
  return swift_endAccess();
}

uint64_t sub_1C05A6000()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A6084()
{
  swift_beginAccess();
  sub_1C095D52C();
  return swift_endAccess();
}

uint64_t sub_1C05A6108()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  sub_1C05AB400(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05A61E4()
{
  swift_beginAccess();
  sub_1C05AD7FC();
  sub_1C095D45C();
  return swift_endAccess();
}

uint64_t sub_1C05A6280()
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C05A630C()
{
  swift_beginAccess();
  sub_1C05AD7A8();
  sub_1C095D43C();
  return swift_endAccess();
}

uint64_t sub_1C05A63A8()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  result = sub_1C05A64F0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v35 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v32 = *(v35 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0)
  {
    v15 = a4;
  }

  else
  {
    result = sub_1C095D65C();
    if (v4)
    {
      return result;
    }

    v15 = a4;
    v5 = 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 32);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 32);

    sub_1C095D66C();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 40) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 41) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 42) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 44))
  {
    result = sub_1C095D67C();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 52))
  {
    result = sub_1C095D67C();
    if (v5)
    {
      return result;
    }

    v31 = v15;
    v5 = 0;
  }

  else
  {
    v31 = v15;
  }

  v20 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(a1 + v20, v11, &qword_1EBE17780, &qword_1C0999E30);
  if ((*(v32 + 48))(v11, 1, v35) == 1)
  {
    sub_1C05145B4(v11, &qword_1EBE17780, &qword_1C0999E30);
  }

  else
  {
    sub_1C05A8A4C(v11, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05AB400(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C095D6AC();
    result = sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v21 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification);
  swift_beginAccess();
  if (*v21)
  {
    v22 = *(v21 + 8);
    v33 = *v21;
    v34 = v22;
    sub_1C05AD7FC();
    result = sub_1C095D60C();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v23 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1C095D66C();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v27 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  if (*(a1 + v27) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v28 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  if (*(a1 + v28) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v29 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  if (!*(*(a1 + v29) + 16) || (sub_1C05AD7A8(), , sub_1C095D5DC(), result = , !v5))
  {
    v30 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
    result = swift_beginAccess();
    if (*(*(a1 + v30) + 16))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
      sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);

      sub_1C095D69C();
    }
  }

  return result;
}

uint64_t sub_1C05A6BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17990, &qword_1C0972E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  if (v20 != *(a2 + 16))
  {
    goto LABEL_19;
  }

  v62 = v5;
  v63 = v12;
  swift_beginAccess();
  v22 = *(a1 + 24);
  v21 = *(a1 + 32);
  swift_beginAccess();
  if ((v22 != *(a2 + 24) || v21 != *(a2 + 32)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v23 = *(a1 + 40);
  swift_beginAccess();
  if (v23 != *(a2 + 40))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v24 = *(a1 + 41);
  swift_beginAccess();
  if (v24 != *(a2 + 41))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v25 = *(a1 + 42);
  swift_beginAccess();
  if (v25 != *(a2 + 42))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v26 = *(a1 + 44);
  swift_beginAccess();
  if (v26 != *(a2 + 44))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v27 = *(a1 + 48);
  swift_beginAccess();
  if (v27 != *(a2 + 48))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v28 = *(a1 + 52);
  swift_beginAccess();
  if (v28 != *(a2 + 52))
  {
    goto LABEL_19;
  }

  v29 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(a1 + v29, v19, &qword_1EBE17780, &qword_1C0999E30);
  v30 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  v31 = *(v9 + 48);
  v32 = v63;
  sub_1C05149F8(v19, v63, &qword_1EBE17780, &qword_1C0999E30);
  v61 = v31;
  sub_1C05149F8(a2 + v30, v32 + v31, &qword_1EBE17780, &qword_1C0999E30);
  v33 = *(v62 + 48);
  if (v33(v32, 1, v4) == 1)
  {

    sub_1C05145B4(v19, &qword_1EBE17780, &qword_1C0999E30);
    v34 = v63;
    v35 = v33(&v63[v61], 1, v4) == 1;
    v36 = v34;
    if (!v35)
    {
      goto LABEL_17;
    }

    sub_1C05145B4(v34, &qword_1EBE17780, &qword_1C0999E30);
LABEL_22:
    v42 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    v43 = *(a1 + v42);
    v44 = a2 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    v45 = *v44;
    if (*(v44 + 8) == 1)
    {
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          if (v43 != 2)
          {
            goto LABEL_18;
          }
        }

        else if (v43 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v45)
      {
        if (v43 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v43)
      {
        goto LABEL_18;
      }
    }

    else if (v43 != v45)
    {
      goto LABEL_18;
    }

    v46 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v49 = (a2 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    if (v47 == *v49 && v48 == v49[1] || (sub_1C095DF3C() & 1) != 0)
    {
      v50 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      swift_beginAccess();
      LODWORD(v50) = *(a1 + v50);
      v51 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      swift_beginAccess();
      if (v50 == *(a2 + v51))
      {
        v52 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
        swift_beginAccess();
        LODWORD(v52) = *(a1 + v52);
        v53 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
        swift_beginAccess();
        if (v52 == *(a2 + v53))
        {
          v54 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
          swift_beginAccess();
          v55 = *(a1 + v54);
          v56 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
          swift_beginAccess();
          if (sub_1C0563790(v55, *(a2 + v56)))
          {
            v57 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
            swift_beginAccess();
            v58 = *(a1 + v57);
            v59 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
            swift_beginAccess();
            v60 = *(a2 + v59);

            v38 = sub_1C0563820(v58, v60);

            return v38 & 1;
          }
        }
      }
    }

    goto LABEL_18;
  }

  v37 = v63;
  sub_1C05149F8(v63, v17, &qword_1EBE17780, &qword_1C0999E30);
  if (v33((v37 + v61), 1, v4) != 1)
  {
    v40 = v63;
    sub_1C05A8A4C(&v63[v61], v8, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);

    v41 = static Com_Apple_Siri_Product_Proto_NLState.== infix(_:_:)(v17, v8);
    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05145B4(v19, &qword_1EBE17780, &qword_1C0999E30);
    sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05145B4(v40, &qword_1EBE17780, &qword_1C0999E30);
    if ((v41 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_1C05145B4(v19, &qword_1EBE17780, &qword_1C0999E30);
  sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  v36 = v63;
LABEL_17:
  sub_1C05145B4(v36, &qword_1EBE17990, &qword_1C0972E28);
LABEL_18:

LABEL_19:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1C05A7470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1EBE15030 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EBE15038;
}

uint64_t sub_1C05A7534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17930, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A75D4(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A7640()
{
  sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A76DC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17728);
  __swift_project_value_buffer(v0, qword_1EBE17728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "intents";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "languageContainerTopLevelIntents";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previousIntentsIndices";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "alternativeIntentsIndices";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C095D35C();
          sub_1C095D40C();
        }

        else if (result == 4)
        {
          sub_1C05A7BC4();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
        sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
        sub_1C095D54C();
      }

      else if (result == 2)
      {
        sub_1C05A7ACC();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05A7ACC()
{
  sub_1C095D35C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
  sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
  return sub_1C095D3FC();
}

uint64_t sub_1C05A7BC4()
{
  sub_1C095D35C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
  sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
  return sub_1C095D3FC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
    sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    result = sub_1C095D69C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    sub_1C095D35C();
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
    sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    result = sub_1C095D5BC();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    sub_1C095D35C();
    v4 = v2;
    result = sub_1C095D5CC();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[3] + 16) || (sub_1C095D35C(), type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0), sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList), sub_1C05AB400(&qword_1EBE177E0, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList), result = sub_1C095D5BC(), !v4))
  {
    v5 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0) + 32);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A7FF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = sub_1C058BE34(v4);
  a2[2] = sub_1C058C00C(v4);
  a2[3] = sub_1C058BE34(v4);
  v5 = a2 + *(a1 + 32);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A8074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05A80E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C05A815C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C05A81B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17928, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A8250(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE178B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A82BC()
{
  sub_1C05AB400(&qword_1EBE178B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A836C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C096E0C0;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = a3;
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v12 = sub_1C095D6BC();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntegerList.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D4CC();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_IntegerList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1C095D5EC(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0) + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_IntegerList.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0) + 20);
    sub_1C095D38C();
    sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    return sub_1C095D73C() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C05A872C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C095DFEC();
  a1(0);
  sub_1C05AB400(a2, a3);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C05A8800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17920, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A88A0(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A890C()
{
  sub_1C05AB400(&qword_1EBE177D8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A89A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05A8A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05A8AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s12SiriOntology010Com_Apple_a15_Product_Proto_F6IntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C05A6BE0(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A35_Product_Proto_OriginalElementValueV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0) + 24);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A31_Product_Proto_AdjustmentReasonV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0) + 24);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A30_Product_Proto_IntentHierarchyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  if ((sub_1C0561FA4(*a1, *a2) & 1) == 0 || (sub_1C056A4B8(*(a1 + 8), a2[1]) & 1) == 0 || (sub_1C056AA5C(*(a1 + 16), a2[2]) & 1) == 0 || (sub_1C056A4B8(*(a1 + 24), a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0) + 32);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_DerivedOriginV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v30 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179E0, &qword_1C0972E78);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v31 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v17 = *(v31 + 24);
  v18 = *(v13 + 56);
  v33 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE17758, &unk_1C0971240);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE17758, &unk_1C0971240);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE17758, &unk_1C0971240);
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE17758, &unk_1C0971240);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
LABEL_6:
    v20 = &qword_1EBE179E0;
    v21 = &qword_1C0972E78;
LABEL_7:
    sub_1C05145B4(v16, v20, v21);
LABEL_21:
    v28 = 0;
    return v28 & 1;
  }

  v22 = v32;
  sub_1C05A8A4C(&v16[v18], v32, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  v23 = *v11 == *v22 && v11[1] == v22[1];
  if (!v23 && (sub_1C095DF3C() & 1) == 0 || (v11[2] == v22[2] ? (v24 = v11[3] == v22[3]) : (v24 = 0), !v24 && (sub_1C095DF3C() & 1) == 0))
  {
    sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    v20 = &qword_1EBE17758;
    v21 = &unk_1C0971240;
    goto LABEL_7;
  }

  v25 = *(v4 + 24);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v26 = sub_1C095D73C();
  sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  sub_1C05145B4(v16, &qword_1EBE17758, &unk_1C0971240);
  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ((sub_1C05622C4(*v33, *a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = *(v31 + 20);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v28 = sub_1C095D73C();
  return v28 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A25_Product_Proto_IntentNodeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E18, &qword_1C09704F0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16E10, &unk_1C0971270);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16E10, &unk_1C0971270);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE16E10, &unk_1C0971270);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16E10, &unk_1C0971270);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE16E18, &qword_1C09704F0);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_1C05A8A4C(&v16[v18], v27, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v21 = _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV2eeoiySbAC_ACtFZ_0(v11, v20);
  sub_1C0594D2C(v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C05145B4(v16, &qword_1EBE16E10, &unk_1C0971270);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *a2)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v23 = sub_1C095D73C();
  return v23 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E08, &unk_1C09704E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = v8;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16E00, &qword_1C099BAE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE16E00, &qword_1C099BAE0);
LABEL_14:
      v24 = *(v26 + 28);
      sub_1C095D38C();
      sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v20 = sub_1C095D73C();
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_1C05149F8(v16, v12, &qword_1EBE16E00, &qword_1C099BAE0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_10:
    sub_1C05145B4(v16, &qword_1EBE16E08, &unk_1C09704E0);
    goto LABEL_11;
  }

  v22 = v25;
  sub_1C05A8A4C(&v16[v18], v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  v23 = _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV10OneOf_NodeO2eeoiySbAE_AEtFZ_0(v12, v22);
  sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C05145B4(v16, &qword_1EBE16E00, &qword_1C099BAE0);
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A27_Product_Proto_ElementValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v74 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A8, &qword_1C0972E40);
  v11 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v13 = &v74 - v12;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v74 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179B0, &qword_1C0972E48);
  v20 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v74 - v21;
  v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = (&v74 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179B8, &qword_1C0972E50);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v74 - v33;
  if ((sub_1C055B098(*a1, *a2) & 1) == 0)
  {
    goto LABEL_31;
  }

  v74 = v7;
  v75 = v13;
  v35 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v36 = *(v35 + 28);
  v37 = a1;
  v38 = *(v31 + 48);
  v76 = v35;
  v77 = v37;
  sub_1C05149F8(v37 + v36, v34, &qword_1EBE17768, &unk_1C0971250);
  v39 = a2 + v36;
  v40 = a2;
  sub_1C05149F8(v39, &v34[v38], &qword_1EBE17768, &unk_1C0971250);
  v41 = *(v23 + 48);
  if (v41(v34, 1, v22) == 1)
  {
    if (v41(&v34[v38], 1, v22) == 1)
    {
      sub_1C05145B4(v34, &qword_1EBE17768, &unk_1C0971250);
      goto LABEL_9;
    }

LABEL_7:
    v42 = &qword_1EBE179B8;
    v43 = &qword_1C0972E50;
    v44 = v34;
LABEL_30:
    sub_1C05145B4(v44, v42, v43);
    goto LABEL_31;
  }

  sub_1C05149F8(v34, v30, &qword_1EBE17768, &unk_1C0971250);
  if (v41(&v34[v38], 1, v22) == 1)
  {
    sub_1C0594D2C(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    goto LABEL_7;
  }

  sub_1C05A8A4C(&v34[v38], v26, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  v45 = _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_1C0594D2C(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C0594D2C(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C05145B4(v34, &qword_1EBE17768, &unk_1C0971250);
  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v47 = v76;
  v46 = v77;
  v48 = *(v76 + 32);
  v49 = *(v84 + 48);
  v50 = v87;
  sub_1C05149F8(v77 + v48, v87, &qword_1EBE17770, &unk_1C099BB00);
  sub_1C05149F8(v40 + v48, v50 + v49, &qword_1EBE17770, &unk_1C099BB00);
  v51 = v86;
  v52 = *(v85 + 48);
  if (v52(v50, 1, v86) == 1)
  {
    if (v52(v50 + v49, 1, v51) == 1)
    {
      sub_1C05145B4(v50, &qword_1EBE17770, &unk_1C099BB00);
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v58 = v83;
  sub_1C05149F8(v50, v83, &qword_1EBE17770, &unk_1C099BB00);
  if (v52(v50 + v49, 1, v51) == 1)
  {
    sub_1C0594D2C(v58, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
LABEL_18:
    v42 = &qword_1EBE179B0;
    v43 = &qword_1C0972E48;
LABEL_29:
    v44 = v50;
    goto LABEL_30;
  }

  v59 = v82;
  sub_1C05A8A4C(v50 + v49, v82, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  if (*v58 != *v59 || (*(v58 + 1) != *(v59 + 1) || *(v58 + 2) != *(v59 + 2)) && (sub_1C095DF3C() & 1) == 0)
  {
    sub_1C0594D2C(v59, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    sub_1C0594D2C(v58, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    v42 = &qword_1EBE17770;
    v43 = &unk_1C099BB00;
    goto LABEL_29;
  }

  v60 = *(v51 + 24);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  LOBYTE(v60) = sub_1C095D73C();
  sub_1C0594D2C(v59, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  sub_1C0594D2C(v58, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  sub_1C05145B4(v50, &qword_1EBE17770, &unk_1C099BB00);
  if ((v60 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  v53 = *(v40 + 16);
  if (sub_1C05273AC(v46[1], *(v46 + 16), v40[1]))
  {
    v54 = *(v47 + 36);
    v55 = *(v79 + 48);
    v50 = v75;
    sub_1C05149F8(v46 + v54, v75, &qword_1EBE17778, &unk_1C0971260);
    sub_1C05149F8(v40 + v54, v50 + v55, &qword_1EBE17778, &unk_1C0971260);
    v56 = v81;
    v57 = *(v80 + 48);
    if (v57(v50, 1, v81) == 1)
    {
      if (v57(v50 + v55, 1, v56) == 1)
      {
        sub_1C05145B4(v50, &qword_1EBE17778, &unk_1C0971260);
LABEL_36:
        v73 = *(v47 + 24);
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
        v62 = sub_1C095D73C();
        return v62 & 1;
      }

      goto LABEL_28;
    }

    v61 = v78;
    sub_1C05149F8(v50, v78, &qword_1EBE17778, &unk_1C0971260);
    if (v57(v50 + v55, 1, v56) == 1)
    {
      sub_1C0594D2C(v61, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
LABEL_28:
      v42 = &qword_1EBE179A8;
      v43 = &qword_1C0972E40;
      goto LABEL_29;
    }

    v64 = v56;
    v65 = v74;
    sub_1C05A8A4C(v50 + v55, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v66 = *(v64 + 20);
    v67 = *(v61 + v66);
    v68 = *(v65 + v66);
    if (v67 != v68)
    {
      v69 = *(v61 + v66);

      v70 = sub_1C081C1F4(v67, v68);

      if (!v70)
      {
        sub_1C0594D2C(v74, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        sub_1C0594D2C(v61, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
        v42 = &qword_1EBE17778;
        v43 = &unk_1C0971260;
        v44 = v75;
        goto LABEL_30;
      }
    }

    sub_1C095D38C();
    sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v71 = v74;
    v72 = sub_1C095D73C();
    sub_1C0594D2C(v71, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C0594D2C(v61, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C05145B4(v75, &qword_1EBE17778, &unk_1C0971260);
    if (v72)
    {
      goto LABEL_36;
    }
  }

LABEL_31:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A22_Product_Proto_ElementV10OneOf_NodeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v8 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179D8, &qword_1C0972E70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_1C05A8AB4(a1, &v29 - v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  sub_1C05A8AB4(a2, &v22[v23], type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C05A8AB4(v22, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C05A8A4C(&v22[v23], v10, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (sub_1C05626C0(*v17, *v10))
      {
        v27 = *(v30 + 20);
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
        if (sub_1C095D73C())
        {
          sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
          sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
          sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
          v24 = 1;
          return v24 & 1;
        }
      }

      sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement;
    v26 = v17;
LABEL_7:
    sub_1C0594D2C(v26, v25);
    sub_1C05145B4(v22, &qword_1EBE179D8, &qword_1C0972E70);
    goto LABEL_12;
  }

  sub_1C05A8AB4(v22, v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement;
    v26 = v15;
    goto LABEL_7;
  }

  sub_1C05A8A4C(&v22[v23], v7, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C0594D2C(v15, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  return v24 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C0, &qword_1C0972E58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          if (v17 != 5)
          {
            goto LABEL_20;
          }
        }

        else if (v17 != 6)
        {
          goto LABEL_20;
        }
      }

      else if (v18 == 7)
      {
        if (v17 != 7)
        {
          goto LABEL_20;
        }
      }

      else if (v18 == 8)
      {
        if (v17 != 8)
        {
          goto LABEL_20;
        }
      }

      else if (v17 != 9)
      {
        goto LABEL_20;
      }
    }

    else if (v18 <= 1)
    {
      if (v18)
      {
        if (v17 != 1)
        {
          goto LABEL_20;
        }
      }

      else if (v17)
      {
        goto LABEL_20;
      }
    }

    else if (v18 == 2)
    {
      if (v17 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v18 == 3)
    {
      if (v17 != 3)
      {
        goto LABEL_20;
      }
    }

    else if (v17 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_20;
  }

  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v20 = a1;
  v28[0] = v19;
  v28[1] = a1;
  v21 = *(v19 + 20);
  v22 = *(v13 + 48);
  sub_1C05149F8(v20 + v21, v16, &qword_1EBE17760, &unk_1C099BB10);
  sub_1C05149F8(a2 + v21, &v16[v22], &qword_1EBE17760, &unk_1C099BB10);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE17760, &unk_1C099BB10);
LABEL_23:
      v27 = *(v28[0] + 24);
      sub_1C095D38C();
      sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v24 = sub_1C095D73C();
      return v24 & 1;
    }

    goto LABEL_19;
  }

  sub_1C05149F8(v16, v12, &qword_1EBE17760, &unk_1C099BB10);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
LABEL_19:
    sub_1C05145B4(v16, &qword_1EBE179C0, &qword_1C0972E58);
    goto LABEL_20;
  }

  sub_1C05A8A4C(&v16[v22], v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  v26 = _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV06OneOf_G6DetailO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C05145B4(v16, &qword_1EBE17760, &unk_1C099BB10);
  if (v26)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A21_Product_Proto_OriginV06OneOf_G6DetailO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v43 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179E8, &unk_1C0972E80);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v43 - v23;
  v25 = (&v43 + *(v22 + 56) - v23);
  sub_1C05A8AB4(a1, &v43 - v23, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C05A8AB4(a2, v25, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C05A8AB4(v24, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v34 = *v19;
    v33 = v19[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v34 == *v25 && v33 == v25[1])
      {
        v42 = v25[1];

        goto LABEL_27;
      }

      v39 = v25[1];
      v40 = sub_1C095DF3C();

      if (v40)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_15:
    sub_1C05145B4(v24, &qword_1EBE179E8, &unk_1C0972E80);
LABEL_24:
    v35 = 0;
    return v35 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C05A8AB4(v24, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v44;
      sub_1C05A8A4C(v25, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      v28 = *(v43 + 20);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      if (v29 == v30 || (v31 = *&v17[v28], , , v32 = sub_1C08170B0(v29, v30), , , v32))
      {
        sub_1C095D38C();
        sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
        if (sub_1C095D73C())
        {
          sub_1C0594D2C(v27, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
LABEL_27:
          sub_1C0594D2C(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
          v35 = 1;
          return v35 & 1;
        }
      }

      sub_1C0594D2C(v27, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
LABEL_23:
      sub_1C0594D2C(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      goto LABEL_24;
    }

    v36 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan;
    v37 = v17;
    goto LABEL_14;
  }

  sub_1C05A8AB4(v24, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v36 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin;
    v37 = v14;
LABEL_14:
    sub_1C0594D2C(v37, v36);
    goto LABEL_15;
  }

  sub_1C05A8A4C(v25, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  v35 = _s12SiriOntology010Com_Apple_A28_Product_Proto_DerivedOriginV2eeoiySbAC_ACtFZ_0(v14, v7);
  sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  sub_1C0594D2C(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  return v35 & 1;
}

uint64_t sub_1C05AB400(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C05AB448()
{
  result = qword_1EBE15298;
  if (!qword_1EBE15298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15298);
  }

  return result;
}

unint64_t sub_1C05AB49C()
{
  result = qword_1EBE152D8;
  if (!qword_1EBE152D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152D8);
  }

  return result;
}

unint64_t sub_1C05AB4F4()
{
  result = qword_1EBE152D0;
  if (!qword_1EBE152D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152D0);
  }

  return result;
}

unint64_t sub_1C05AB54C()
{
  result = qword_1EBE152C0;
  if (!qword_1EBE152C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152C0);
  }

  return result;
}

unint64_t sub_1C05AB5A4()
{
  result = qword_1EBE152C8;
  if (!qword_1EBE152C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE152C8);
  }

  return result;
}

unint64_t sub_1C05AB62C()
{
  result = qword_1EBE15290;
  if (!qword_1EBE15290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15290);
  }

  return result;
}

unint64_t sub_1C05AB684()
{
  result = qword_1EBE15280;
  if (!qword_1EBE15280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15280);
  }

  return result;
}

unint64_t sub_1C05AB6DC()
{
  result = qword_1EBE15288;
  if (!qword_1EBE15288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE15288);
  }

  return result;
}

unint64_t sub_1C05AB764()
{
  result = qword_1EBE17810;
  if (!qword_1EBE17810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17810);
  }

  return result;
}

unint64_t sub_1C05AB7BC()
{
  result = qword_1EBE17818;
  if (!qword_1EBE17818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17818);
  }

  return result;
}

unint64_t sub_1C05AB814()
{
  result = qword_1EBE17820;
  if (!qword_1EBE17820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17820);
  }

  return result;
}

unint64_t sub_1C05AB89C()
{
  result = qword_1EBE17838;
  if (!qword_1EBE17838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17838);
  }

  return result;
}

unint64_t sub_1C05AB8F4()
{
  result = qword_1EBE17840;
  if (!qword_1EBE17840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17840);
  }

  return result;
}

unint64_t sub_1C05AB94C()
{
  result = qword_1EBE17848;
  if (!qword_1EBE17848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17848);
  }

  return result;
}

uint64_t keypath_get_53Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1C05AC868()
{
  sub_1C05AC964(319, &qword_1EBE178D8, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C05AC964(319, &qword_1EBE150E0, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C05AC964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C05AC9F0()
{
  sub_1C05AC964(319, &qword_1EBE15400, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05ACAB4()
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C05ACB68()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05ACC0C()
{
  sub_1C05AD638(319, &qword_1EBE0FDA8);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C05AC964(319, &qword_1EBE153D8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C05AC964(319, &qword_1EBE15070, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C05AC964(319, &qword_1EBE15418, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C05ACDA8()
{
  sub_1C05AC964(319, &qword_1EBE0FDD0, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05ACE84()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C05ACF18()
{
  sub_1C05AD638(319, &qword_1EBE0FDA8);
  if (v0 <= 0x3F)
  {
    sub_1C05AC964(319, &qword_1EBE153C0, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C095D38C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C05AD04C()
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05AD0E8()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C05AC964(319, &qword_1EBE15398, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C05AD1D4()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05AD280()
{
  sub_1C05AC964(319, &qword_1EBE178F0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C05AD368();
    if (v1 <= 0x3F)
    {
      sub_1C05AD3D0();
      if (v2 <= 0x3F)
      {
        sub_1C095D38C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C05AD368()
{
  if (!qword_1EBE178F8)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(255);
    v0 = sub_1C095D6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE178F8);
    }
  }
}

void sub_1C05AD3D0()
{
  if (!qword_1EBE17900)
  {
    v0 = sub_1C095D6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE17900);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_133Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_134Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C05AD5A4()
{
  sub_1C05AD638(319, &qword_1EBE17918);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C05AD638(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C095D9FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C05AD68C()
{
  sub_1C05AC964(319, &qword_1EBE15380, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C05AD7A8()
{
  result = qword_1EBE17980;
  if (!qword_1EBE17980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17980);
  }

  return result;
}

unint64_t sub_1C05AD7FC()
{
  result = qword_1EBE17988;
  if (!qword_1EBE17988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17988);
  }

  return result;
}

uint64_t Graph.__allocating_init(tasks:)(uint64_t a1)
{
  v1 = sub_1C05AF2C8(a1);

  return v1;
}

uint64_t Graph.__allocating_init<A>(task:)(uint64_t a1)
{
  v2 = sub_1C05AF778(a1);
  v3 = type metadata accessor for DynamicTask();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t Graph.__allocating_init<A>(entity:)(uint64_t a1)
{
  v2 = type metadata accessor for Entity();
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBF6C(v2, WitnessTable);

  DynamicTask<A>.init(verbName:entityName:)(0x627265566F6ELL, 0xE600000000000000, v9[0], v9[1], v10);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v8, a1, v2);
  Entity<A>.init<A>(_:)(v8, v9);
  sub_1C05ADB6C(v9, 0x797469746E65, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179F0, &qword_1C0972ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  sub_1C05149F8(v10, inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  v6 = sub_1C05AF2C8(inited);
  swift_setDeallocating();
  sub_1C05145B4(inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  (*(v4 + 8))(a1, v2);
  sub_1C05145B4(v10, &qword_1EBE179F8, &qword_1C0972ED8);
  return v6;
}

uint64_t sub_1C05ADB6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  sub_1C05149F8(a1, v50, &qword_1EBE17A00, &qword_1C0972EE0);
  if (!v51)
  {
    sub_1C05145B4(v50, &qword_1EBE17A00, &qword_1C0972EE0);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    goto LABEL_5;
  }

  sub_1C0526080(v50, &v52);
  sub_1C05145B4(v50, &qword_1EBE17A08, &qword_1C0972EE8);
  v7 = *(&v53 + 1);
  v8 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v8 + 72))(&v42, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v9 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_5:
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v49[1] = 0;
    v49[2] = 0;
    goto LABEL_6;
  }

  v10 = v52;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = v56;
  *(v11 + 64) = v55;
  *(v11 + 80) = v12;
  *(v11 + 96) = v57;
  *(v11 + 112) = v58;
  v13 = v54;
  *(v11 + 32) = v53;
  *(v11 + 48) = v13;
  v14 = &off_1F3FA1508;
  v15 = &type metadata for BuilderNode;
LABEL_6:
  v49[0] = v11;
  v49[3] = v15;
  v49[4] = v14;
  v16 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v16);
  v18 = *(v17 + 72);
  sub_1C05149F8(&v52, &v42, &qword_1EBE16C48, &qword_1C096E828);
  v18(&v28, v16, v17);
  sub_1C06FC068(&v28, v49, a2, a3);

  v39 = v32;
  v40 = v33;
  v41 = v34;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v26 = &type metadata for BuilderNode;
  v27 = &off_1F3FA1508;
  v19 = swift_allocObject();
  *&v25 = v19;
  sub_1C05AF88C(&v35, &v42);
  sub_1C05145B4(&v52, &qword_1EBE16C48, &qword_1C096E828);
  v20 = v40;
  *(v19 + 80) = v39;
  *(v19 + 96) = v20;
  *(v19 + 112) = v41;
  v21 = v36;
  *(v19 + 16) = v35;
  *(v19 + 32) = v21;
  v22 = v38;
  *(v19 + 48) = v37;
  *(v19 + 64) = v22;
  sub_1C05145B4(a1, &qword_1EBE17A00, &qword_1C0972EE0);
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  sub_1C05AF8E8(&v42);
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1C0531D80(&v25, v4);
  return sub_1C05145B4(v49, &qword_1EBE16C40, &qword_1C09932B0);
}

uint64_t sub_1C05ADE84(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v53 = *a1;
  v55 = a1[1];
  v52 = a1[2];
  v56 = a1[3];
  v9 = a1[4];
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v17 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    (*(v16 + 16))(&v63, v17, v16);
    v60 = v63;
    v61 = v64;
    v62 = v65;
    if (qword_1ED5D7CA0 != -1)
    {
      swift_once();
    }

    v57 = xmmword_1ED5D7CA8;
    v58 = xmmword_1ED5D7CB8;
    v59 = qword_1ED5D7CC8;

    v18 = sub_1C051D4D0(&v60, &v57);

    if (v18)
    {
      v63 = xmmword_1ED5D7CA8;
      v64 = xmmword_1ED5D7CB8;
      *&v65 = qword_1ED5D7CC8;

      v19 = sub_1C0514CE0(&v63, v14, v15, 1, MEMORY[0x1E69E7CC0]);

LABEL_12:

      goto LABEL_14;
    }
  }

  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 32))(v20, v21);
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    (*(v26 + 16))(&v63, v25, v26);
    v60 = v63;
    v61 = v64;
    v62 = v65;
    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    v57 = xmmword_1ED5BDEE0;
    v58 = xmmword_1ED5BDEF0;
    v59 = qword_1ED5BDF00;

    v27 = sub_1C051D4D0(&v60, &v57);

    if (v27)
    {
      v63 = xmmword_1ED5BDEE0;
      v64 = xmmword_1ED5BDEF0;
      *&v65 = qword_1ED5BDF00;

      v19 = sub_1C0514CE0(&v63, v24, 0, 0, MEMORY[0x1E69E7CC0]);
      goto LABEL_12;
    }
  }

  v28 = a2[3];
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v28);
  (*(v29 + 16))(&v63, v28, v29);
  v60 = v63;
  v61 = v64;
  v62 = v65;
  v19 = sub_1C0514CE0(&v60, 0, 0, 255, MEMORY[0x1E69E7CC0]);

LABEL_14:

  swift_unownedRetain();

  v30 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v30);
  v32 = *(v31 + 40);

  swift_unownedRetain();
  v33 = v32(v30, v31);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v34 = v19[13];
  v19[13] = v33;

  v35 = a5[3];
  v36 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v35);
  v37 = (*(v36 + 48))(v35, v36);
  swift_unownedRetainStrong();
  v38 = v19[14];
  v19[14] = v37;

  swift_unownedRelease();
  swift_unownedRetainStrong();
  v39 = v19[7];

  *&v63 = a6;
  *(&v63 + 1) = v39;
  LODWORD(v64) = 0;
  *(&v64 + 1) = v53;
  *&v65 = v55;
  *(&v65 + 1) = v52;
  *&v66 = v56;
  *(&v66 + 1) = v9;
  swift_beginAccess();
  v40 = *(a4 + 16);

  sub_1C0514AC4(&v63, &v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_1C0514F9C(0, *(v40 + 2) + 1, 1, v40);
    *(a4 + 16) = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = sub_1C0514F9C((v42 > 1), v43 + 1, 1, v40);
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[64 * v43];
  v45 = v63;
  v46 = v64;
  v47 = v66;
  *(v44 + 4) = v65;
  *(v44 + 5) = v47;
  *(v44 + 2) = v45;
  *(v44 + 3) = v46;
  *(a4 + 16) = v40;
  swift_endAccess();
  sub_1C0514A70(&v63);
  swift_unownedRetainStrong();
  v48 = v19[7];

  v49 = a2[4];
  v50 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x1EEE9AC00](v50);
  (*(v49 + 80))(sub_1C05AF94C);

  return swift_unownedRelease();
}

uint64_t Graph.__allocating_init<A>(task:fixEntityEdges:)(uint64_t a1, char a2)
{
  if (a2)
  {
    type metadata accessor for Graph();
    swift_allocObject();
    v3 = Graph.init()();
    v4 = type metadata accessor for DynamicTask();

    DynamicTask.nodeName.getter();
    v37[0] = v39;
    v37[1] = v40;
    v38 = v41;
    v5 = sub_1C0514CE0(v37, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    WitnessTable = swift_getWitnessTable();
    v35 = v4;
    sub_1C06FBEEC(WitnessTable, v43);

    swift_unownedRetain();
    v7 = type metadata accessor for Metadata();
    v8 = Metadata.identifiers.getter();
    swift_unownedRetainStrong();
    swift_beginAccess();
    v9 = v5[13];
    v5[13] = v8;

    v34 = v7;
    v10 = Metadata.utteranceAlignments.getter();
    swift_unownedRetainStrong();
    v11 = v5[14];
    v5[14] = v10;

    swift_unownedRelease();
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    v36 = a1;
    v13 = qword_1ED5BD008;
    v12 = unk_1ED5BD010;
    v14 = qword_1ED5BD018;
    v15 = unk_1ED5BD020;
    v16 = qword_1ED5BD028;
    swift_beginAccess();
    v17 = v3[4];
    result = swift_unownedRetainStrong();
    if (v17)
    {

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v19 = *(v17 + 56);

      swift_unownedRetainStrong();
      v20 = v5[7];

      *&v39 = v19;
      *(&v39 + 1) = v20;
      LODWORD(v40) = 0;
      *(&v40 + 1) = v13;
      *&v41 = v12;
      *(&v41 + 1) = v14;
      *&v42 = v15;
      *(&v42 + 1) = v16;
      swift_beginAccess();
      v21 = v3[2];

      sub_1C0514AC4(&v39, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1C0514F9C(0, *(v21 + 2) + 1, 1, v21);
        v3[2] = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1C0514F9C((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[64 * v24];
      v26 = v39;
      v27 = v40;
      v28 = v42;
      *(v25 + 4) = v41;
      *(v25 + 5) = v28;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      v3[2] = v21;
      swift_endAccess();

      swift_unownedRelease();
      sub_1C0514A70(&v39);
      swift_unownedRetainStrong();
      v29 = v5[7];

      v30 = v36[4];
      v31 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      MEMORY[0x1EEE9AC00](v31);
      (*(v30 + 80))(sub_1C05AF880);

      swift_unownedRelease();
      (*(*(v34 - 8) + 8))(v43);
      (*(*(v35 - 8) + 8))(v36);

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = sub_1C05AF778(a1);
    v33 = type metadata accessor for DynamicTask();
    (*(*(v33 - 8) + 8))(a1, v33);
    return v32;
  }

  return result;
}

uint64_t sub_1C05AEA88(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a1[1];
  v59 = *a1;
  v57 = a1[2];
  v56 = a1[3];
  v55 = a1[4];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v61 = v8;
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v16 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    (*(v15 + 16))(&v69, v16, v15);
    v66 = v69;
    v67 = v70;
    v68 = v71;
    if (qword_1ED5D7CA0 != -1)
    {
      swift_once();
    }

    v63 = xmmword_1ED5D7CA8;
    v64 = xmmword_1ED5D7CB8;
    v65 = qword_1ED5D7CC8;

    v17 = sub_1C051D4D0(&v66, &v63);

    if (v17)
    {
      v69 = xmmword_1ED5D7CA8;
      v70 = xmmword_1ED5D7CB8;
      *&v71 = qword_1ED5D7CC8;

      v18 = sub_1C0514CE0(&v69, v13, v14, 1, MEMORY[0x1E69E7CC0]);

      goto LABEL_12;
    }
  }

  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v21;
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 16))(&v69, v24, v25);
  v66 = v69;
  v67 = v70;
  v68 = v71;
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v63 = xmmword_1ED5BDEE0;
  v64 = xmmword_1ED5BDEF0;
  v65 = qword_1ED5BDF00;

  v26 = sub_1C051D4D0(&v66, &v63);

  if ((v26 & 1) == 0)
  {
LABEL_13:
    v27 = a2[3];
    v28 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v27);
    (*(v28 + 16))(&v69, v27, v28);
    v66 = v69;
    v67 = v70;
    v68 = v71;
    v18 = sub_1C0514CE0(&v66, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    goto LABEL_14;
  }

  v69 = xmmword_1ED5BDEE0;
  v70 = xmmword_1ED5BDEF0;
  *&v71 = qword_1ED5BDF00;

  v18 = sub_1C0514CE0(&v69, v23, 0, 0, MEMORY[0x1E69E7CC0]);
LABEL_12:

LABEL_14:

  swift_unownedRetain();

  v29 = 0x746E656D75677241;
  v31 = a2[3];
  v30 = a2[4];
  v60 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v32 = *(v30 + 40);

  swift_unownedRetain();
  v33 = v32(v31, v30);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v34 = v18[13];
  v18[13] = v33;

  v35 = a5[3];
  v36 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v35);
  v37 = (*(v36 + 48))(v35, v36);
  swift_unownedRetainStrong();
  v38 = v18[14];
  v18[14] = v37;

  swift_unownedRelease();
  if (v57 == 0x797469746E45 && v56 == 0xE600000000000000)
  {
    v39 = 0;
    v40 = 0xE800000000000000;
    v41 = v61;
  }

  else
  {
    v41 = v61;
    if (sub_1C095DF3C())
    {
      v39 = 0;
      v40 = 0xE800000000000000;
    }

    else
    {
      v39 = v55;

      v29 = v57;
      v40 = v56;
    }
  }

  swift_unownedRetainStrong();
  v42 = v18[7];

  *&v69 = a6;
  *(&v69 + 1) = v42;
  LODWORD(v70) = 0;
  *(&v70 + 1) = v59;
  *&v71 = v41;
  *(&v71 + 1) = v29;
  *&v72 = v40;
  *(&v72 + 1) = v39;
  swift_beginAccess();
  v43 = *(a4 + 16);

  sub_1C0514AC4(&v69, &v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_1C0514F9C(0, *(v43 + 2) + 1, 1, v43);
    *(a4 + 16) = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    v43 = sub_1C0514F9C((v45 > 1), v46 + 1, 1, v43);
  }

  *(v43 + 2) = v46 + 1;
  v47 = &v43[64 * v46];
  v48 = v69;
  v49 = v70;
  v50 = v72;
  *(v47 + 4) = v71;
  *(v47 + 5) = v50;
  *(v47 + 2) = v48;
  *(v47 + 3) = v49;
  *(a4 + 16) = v43;
  swift_endAccess();
  sub_1C0514A70(&v69);

  swift_unownedRetainStrong();
  v51 = v18[7];

  v52 = v60[4];
  v53 = __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  MEMORY[0x1EEE9AC00](v53);
  (*(v52 + 80))(sub_1C05AF948);

  swift_unownedRelease();
}

uint64_t sub_1C05AF2C8(uint64_t a1)
{
  type metadata accessor for Graph();
  swift_allocObject();
  v2 = Graph.init()();
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (!v3)
  {
    return v2;
  }

  v4 = a1 + 32;
  v39 = v2;
  while (1)
  {
    v37 = v4;
    v38 = v3;
    sub_1C05149F8(v4, v49, &qword_1EBE179F8, &qword_1C0972ED8);
    v5 = v50;
    v6 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v6 + 16))(&v42, v5, v6);
    v40[0] = v42;
    v40[1] = v43;
    v41 = v44;
    v7 = sub_1C0514CE0(v40, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    sub_1C0526080(v49, v46);
    v8 = v47;
    v9 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v10 = *(v9 + 40);

    swift_unownedRetain();
    v11 = v10(v8, v9);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = v7[13];
    v7[13] = v11;

    v13 = v47;
    v14 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v15 = (*(v14 + 48))(v13, v14);
    swift_unownedRetainStrong();
    v16 = v7[14];
    v7[14] = v15;

    swift_unownedRelease();
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED5BD008;
    v18 = unk_1ED5BD010;
    v19 = qword_1ED5BD018;
    v20 = unk_1ED5BD020;
    v21 = qword_1ED5BD028;
    v22 = v2[4];
    result = swift_unownedRetainStrong();
    if (!v22)
    {
      break;
    }

    swift_unownedRetain();

    swift_unownedRetainStrong();
    v24 = *(v22 + 56);

    swift_unownedRetainStrong();
    v25 = v7[7];

    *&v42 = v24;
    *(&v42 + 1) = v25;
    LODWORD(v43) = 0;
    *(&v43 + 1) = v17;
    *&v44 = v18;
    *(&v44 + 1) = v19;
    *&v45 = v20;
    *(&v45 + 1) = v21;
    swift_beginAccess();
    v26 = v39[2];

    sub_1C0514AC4(&v42, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[2] = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1C0514F9C(0, *(v26 + 2) + 1, 1, v26);
      v39[2] = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1C0514F9C((v28 > 1), v29 + 1, 1, v26);
    }

    *(v26 + 2) = v29 + 1;
    v30 = &v26[64 * v29];
    v31 = v42;
    v32 = v43;
    v33 = v45;
    *(v30 + 4) = v44;
    *(v30 + 5) = v33;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v39[2] = v26;
    swift_endAccess();

    swift_unownedRelease();
    sub_1C0514A70(&v42);
    swift_unownedRetainStrong();
    v34 = v7[7];

    v35 = v51;
    v36 = __swift_project_boxed_opaque_existential_1(v49, v50);
    MEMORY[0x1EEE9AC00](v36);
    v2 = v39;
    (*(v35 + 80))(sub_1C05AF93C);

    swift_unownedRelease();
    sub_1C05145B4(v46, &qword_1EBE17A10, &unk_1C0972EF0);
    sub_1C05145B4(v49, &qword_1EBE179F8, &qword_1C0972ED8);
    v4 = v37 + 40;
    v3 = v38 - 1;
    if (v38 == 1)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05AF778(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTask();
  (*(*(v2 - 8) + 16))(v6, a1, v2);
  DynamicTask<A>.init<A>(_:)(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179F0, &qword_1C0972ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  sub_1C05149F8(v7, inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  v4 = sub_1C05AF2C8(inited);
  swift_setDeallocating();
  sub_1C05145B4(inited + 32, &qword_1EBE179F8, &qword_1C0972ED8);
  sub_1C05145B4(v7, &qword_1EBE179F8, &qword_1C0972ED8);
  return v4;
}

uint64_t PersonPlaceIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 PersonPlaceIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static PersonPlaceIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C05AFA40()
{
  v1 = *(v0 + 16);
  __src[33] = *v0;
  __src[34] = v1;
  v13 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  sub_1C05B0128(inited, &qword_1EBE16E40, &qword_1C0970530, __src);
  v3 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v4 = *&__src[0];
    v5 = *(*(&__src[1] + 1) + 16);
    if (v5)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v5 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        v6 = sub_1C057363C(v10);
        if (v6 == 4 || v6 == 7)
        {
          v7 = sub_1C05272F0(v10);
          result = *v7;
          v9 = v7[1];
          return result;
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  return 0;
}

void PersonPlaceIntentNode.reference.getter(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v3;
  v16 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A18, &qword_1C0972F00);
  inited = swift_initStaticObject();
  sub_1C05B0128(inited, &qword_1EBE17A18, &qword_1C0972F00, __src);
  v5 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v6 = *&__src[0];
    v7 = *(*(&__src[1] + 1) + 16);
    if (v7)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v13);
      sub_1C05AFFBC(v6, v5);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v13, __src, 0x20AuLL);
        if (sub_1C057363C(v13) == 8)
        {
          v8 = sub_1C05272F0(v13);
          v9 = *(v8 + 16);
          v10 = *(v8 + 24);
          v11 = sub_1C095DD6C();
          if (v11 == 1)
          {
            v12 = 1;
            goto LABEL_13;
          }

          if (!v11)
          {
            v12 = 0;
LABEL_13:
            *a1 = v12;
            sub_1C05B000C(__dst);
            return;
          }
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  *a1 = 2;
}

double PersonPlaceIntentNode.occupant.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 4);
  if (qword_1EBE15648 != -1)
  {
    swift_once();
  }

  sub_1C05AFE74(qword_1EBE18298, &v11);
  if (v12)
  {
    v10 = v12;
    v4 = v11;
    v5 = v13;
    type metadata accessor for AddressOntologyNode.OccupantNode();
    v6 = swift_allocObject();
    if (qword_1EBE158F0 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = qword_1EBE1FCF8;
    *(v6 + 16) = 0x746E61707563636FLL;
    *(v6 + 24) = 0xE800000000000000;
    *(v6 + 32) = 0;
    *(v6 + 40) = v7;
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1C05AFE74@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1C05B0480(a1, *(v2 + 4));
  if (*(v4 + 16))
  {
    v7 = *v2;
    v8 = v2[1];
    v5 = sub_1C0791388(v4);

    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C0526080(v5 + 32, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C05AFF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C70, &unk_1C099BB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C05AFFBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C05B000C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C70, &unk_1C099BB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C05B0128@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = sub_1C05B0218(a1, *(v4 + 4), a2, a3);
  if (*(v6 + 16))
  {
    v9 = *v4;
    v10 = v4[1];
    v7 = sub_1C0791388(v6);

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1C0526080(v7 + 32, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1C05B0218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v24[3] = v6;
  v24[4] = &protocol witness table for TerminalOntologyNode<A>;
  v24[0] = a1;

  v23 = sub_1C058B754(MEMORY[0x1E69E7CC0]);
  sub_1C05FDEA8(a2, *(a2 + 40), &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0C0;
  sub_1C0526080(v24, v7 + 32);
  v21 = v6;
  v22 = &protocol witness table for TerminalOntologyNode<A>;
  *&v20 = a1;
  type metadata accessor for AnyOntologyNode();
  v8 = swift_allocObject();
  sub_1C0531D80(&v20, v8 + 16);
  v9 = v23;
  v10 = v23 & 0xC000000000000001;

  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_2:

  if (sub_1C095DCEC())
  {
    type metadata accessor for NonTerminalOntologyNode();
    swift_dynamicCast();
    v11 = v20;
    while (1)
    {

      if (!v11)
      {
        break;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);

      if (v16 >= v15 >> 1)
      {
        v7 = sub_1C0577FE4((v15 > 1), v16 + 1, 1, v7);
      }

      v17 = type metadata accessor for NonTerminalOntologyNode();
      v21 = v17;
      v22 = &protocol witness table for NonTerminalOntologyNode;
      *&v20 = v11;
      *(v7 + 16) = v16 + 1;
      sub_1C0531D80(&v20, v7 + 40 * v16 + 32);
      v21 = v17;
      v22 = &protocol witness table for NonTerminalOntologyNode;
      *&v20 = v11;
      v18 = swift_allocObject();
      sub_1C0531D80(&v20, v18 + 16);
      if (v10)
      {
        goto LABEL_2;
      }

LABEL_4:
      if (!*(v9 + 16))
      {
        break;
      }

      v13 = sub_1C057EAFC(v12);
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }

      v11 = *(*(v9 + 56) + 8 * v13);
    }
  }

  else
  {
LABEL_12:
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v7;
}

uint64_t sub_1C05B0480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalOntologyNode();
  v21[3] = v4;
  v21[4] = &protocol witness table for NonTerminalOntologyNode;
  v21[0] = a1;

  v20 = sub_1C058B754(MEMORY[0x1E69E7CC0]);
  sub_1C05FDEA8(a2, *(a2 + 40), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C096E0C0;
  sub_1C0526080(v21, v5 + 32);
  v18 = v4;
  v19 = &protocol witness table for NonTerminalOntologyNode;
  *&v17 = a1;
  type metadata accessor for AnyOntologyNode();
  v6 = swift_allocObject();
  sub_1C0531D80(&v17, v6 + 16);
  v7 = v20;
  v8 = v20 & 0xC000000000000001;

  if (!v8)
  {
    goto LABEL_4;
  }

LABEL_2:

  if (sub_1C095DCEC())
  {
    swift_dynamicCast();
    v9 = v17;
    while (1)
    {

      if (!v9)
      {
        break;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);

      if (v14 >= v13 >> 1)
      {
        v5 = sub_1C0577FE4((v13 > 1), v14 + 1, 1, v5);
      }

      v18 = v4;
      v19 = &protocol witness table for NonTerminalOntologyNode;
      *&v17 = v9;
      *(v5 + 16) = v14 + 1;
      sub_1C0531D80(&v17, v5 + 40 * v14 + 32);
      v18 = v4;
      v19 = &protocol witness table for NonTerminalOntologyNode;
      *&v17 = v9;
      v15 = swift_allocObject();
      sub_1C0531D80(&v17, v15 + 16);
      if (v8)
      {
        goto LABEL_2;
      }

LABEL_4:
      if (!*(v7 + 16))
      {
        break;
      }

      v11 = sub_1C057EAFC(v10);
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      v9 = *(*(v7 + 56) + 8 * v11);
    }
  }

  else
  {
LABEL_12:
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v5;
}

uint64_t sub_1C05B06E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  sub_1C0526080(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = v8;
  if (!*(&v8 + 1))
  {
LABEL_5:
    sub_1C05AFFBC(v5, 0);
    v6 = 0;
    return v6 & 1;
  }

  v11[0] = v8;
  v11[1] = v9;
  v6 = static NonTerminalIntentNode.== infix(_:_:)(v11, v12);

  return v6 & 1;
}

BOOL sub_1C05B07BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C0526080(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
LABEL_12:
    sub_1C05AFFBC(v12, v13);
    return 0;
  }

  v9 = v14 == a2 && v15 == a3;
  if (!v9 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(v16, a4) & 1) == 0)
  {
    v12 = v14;
    v13 = v15;
    goto LABEL_12;
  }

  v10 = sub_1C055B128(v17, a5);
  sub_1C05AFFBC(v14, v15);
  return (v10 & 1) != 0;
}

uint64_t IntentNode<>.isEqualTo(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095DB0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19[-v8 - 8];
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C0526080(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a2);
    (*(v10 + 32))(v13, v9, a2);
    v16 = sub_1C095D73C();
    (*(v10 + 8))(v13, a2);
  }

  else
  {
    v15(v9, 1, 1, a2);
    (*(v5 + 8))(v9, v4);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t static PersonOntologyNode.personCompanyNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personFirstNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personFullNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personLastNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personMiddleNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNamePostfixNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNamePrefixNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personNickNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personRelationshipNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static PersonOntologyNode.personSelfReferenceNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A68, &qword_1C0972FF8);

  return swift_initStaticObject();
}

uint64_t PersonOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  PersonOntologyNode.init(name:multicardinal:)(a1, a2, a3);
  return v6;
}

uint64_t PersonOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C09711F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  v11 = swift_initStaticObject();
  *(v7 + 136) = v8;
  *(v7 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 112) = v11;
  v12 = swift_initStaticObject();
  *(v7 + 176) = v8;
  *(v7 + 184) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 152) = v12;
  v13 = swift_initStaticObject();
  *(v7 + 216) = v8;
  *(v7 + 224) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 192) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);
  v15 = swift_initStaticObject();
  *(v7 + 256) = v14;
  *(v7 + 264) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 232) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);
  v17 = swift_initStaticObject();
  *(v7 + 296) = v16;
  *(v7 + 304) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 272) = v17;
  v18 = swift_initStaticObject();
  *(v7 + 336) = v8;
  *(v7 + 344) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 312) = v18;
  v19 = swift_initStaticObject();
  *(v7 + 376) = v8;
  *(v7 + 384) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 352) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A68, &qword_1C0972FF8);
  v21 = swift_initStaticObject();
  *(v7 + 416) = v20;
  *(v7 + 424) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 392) = v21;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t PersonOntologyNode.PersonSelfReference.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C095DD6C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C05B1064()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05B10B8()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05B10FC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C095DD6C();

  *a2 = v5 != 0;
  return result;
}

uint64_t PersonOntologyNode.PersonNamePrefix.rawValue.getter()
{
  result = 29293;
  switch(*v0)
  {
    case 1:
      result = 7565933;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 29284;
      break;
    case 4:
      result = 1718579824;
      break;
    case 5:
      result = 0x636F737361;
      break;
    case 6:
      result = 7759218;
      break;
    case 7:
      result = 29286;
      break;
    case 8:
      result = 2037675105;
      break;
    case 9:
      result = 7237480;
      break;
    case 0xA:
      result = 1936028272;
      break;
    case 0xB:
      result = 7761767;
      break;
    case 0xC:
      result = 0x6863616F63;
      break;
    case 0xD:
      result = 6514287;
      break;
    case 0xE:
      result = 1953522019;
      break;
    case 0xF:
      result = 7106403;
      break;
    case 0x10:
      result = 0x6C6F6320746CLL;
      break;
    case 0x11:
      result = 6971757;
      break;
    case 0x12:
      result = 29804;
      break;
    case 0x13:
      result = 7628659;
      break;
    case 0x14:
      result = 7499892;
      break;
    case 0x15:
      result = 1919184227;
      break;
    case 0x16:
      result = 0x72646D6320746CLL;
      break;
    case 0x17:
      result = 7106659;
      break;
    case 0x18:
      result = 7628132;
      break;
    case 0x19:
      result = 7234919;
      break;
    case 0x1A:
      result = 7632496;
      break;
    case 0x1B:
      result = 7169121;
      break;
    case 0x1C:
      result = 29299;
      break;
    case 0x1D:
      result = 0x726F696E756ALL;
      break;
    case 0x1E:
      result = 0x726F696E6573;
      break;
    case 0x1F:
      result = 0x746361746E6F63;
      break;
    case 0x20:
      result = 7237491;
      break;
    case 0x21:
      result = 0x6E6F73646E617267;
      break;
    case 0x22:
      result = 0x77656870656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C05B1468@<X0>(uint64_t *a1@<X8>)
{
  result = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C05B14B4@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DF4C();

  v4 = 0;
  v5 = 17;
  switch(v2)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v4 = 1;
      goto LABEL_27;
    case 2:
      v4 = 2;
      goto LABEL_27;
    case 3:
      v4 = 3;
      goto LABEL_27;
    case 4:
      v4 = 4;
      goto LABEL_27;
    case 5:
      v4 = 5;
      goto LABEL_27;
    case 6:
      v4 = 6;
      goto LABEL_27;
    case 7:
      v4 = 7;
      goto LABEL_27;
    case 8:
      v4 = 8;
      goto LABEL_27;
    case 9:
      v4 = 9;
      goto LABEL_27;
    case 10:
      v4 = 10;
      goto LABEL_27;
    case 11:
      v4 = 11;
      goto LABEL_27;
    case 12:
      v4 = 12;
      goto LABEL_27;
    case 13:
      v4 = 13;
      goto LABEL_27;
    case 14:
      v4 = 14;
      goto LABEL_27;
    case 15:
      v4 = 15;
      goto LABEL_27;
    case 16:
      v4 = 16;
LABEL_27:
      v5 = v4;
      break;
    case 17:
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    default:
      v5 = 35;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t PersonOntologyNode.PersonNamePostfix.rawValue.getter()
{
  result = 0x726F696E756ALL;
  switch(*v0)
  {
    case 1:
      result = 0x726F696E6573;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 7237491;
      break;
    case 4:
      result = 0x6E6F73646E617267;
      break;
    case 5:
      result = 0x77656870656ELL;
      break;
    case 6:
      result = 29293;
      break;
    case 7:
      result = 7565933;
      break;
    case 8:
      result = 29549;
      break;
    case 9:
      result = 29284;
      break;
    case 0xA:
      result = 1718579824;
      break;
    case 0xB:
      result = 0x636F737361;
      break;
    case 0xC:
      result = 7759218;
      break;
    case 0xD:
      result = 29286;
      break;
    case 0xE:
      result = 2037675105;
      break;
    case 0xF:
      result = 7237480;
      break;
    case 0x10:
      result = 1936028272;
      break;
    case 0x11:
      result = 7761767;
      break;
    case 0x12:
      result = 0x6863616F63;
      break;
    case 0x13:
      result = 6514287;
      break;
    case 0x14:
      result = 1953522019;
      break;
    case 0x15:
      result = 7106403;
      break;
    case 0x16:
      result = 0x6C6F6320746CLL;
      break;
    case 0x17:
      result = 6971757;
      break;
    case 0x18:
      result = 29804;
      break;
    case 0x19:
      result = 7628659;
      break;
    case 0x1A:
      result = 7499892;
      break;
    case 0x1B:
      result = 1919184227;
      break;
    case 0x1C:
      result = 0x72646D6320746CLL;
      break;
    case 0x1D:
      result = 7106659;
      break;
    case 0x1E:
      result = 7628132;
      break;
    case 0x1F:
      result = 7234919;
      break;
    case 0x20:
      result = 7632496;
      break;
    case 0x21:
      result = 7169121;
      break;
    case 0x22:
      result = 29299;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C05B18D4(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C05B1994(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1C095DFEC();
  a3(v6);
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C05B1A1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_1C095D7BC();
}

uint64_t sub_1C05B1A9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_1C095DFEC();
  a4(v7);
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C05B1B14@<X0>(uint64_t *a1@<X8>)
{
  result = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonOntologyNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PersonOntologyNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_1C05B1BE8()
{
  result = qword_1EBE0FBF8;
  if (!qword_1EBE0FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FBF8);
  }

  return result;
}

unint64_t sub_1C05B1C3C(uint64_t a1)
{
  result = sub_1C05B1C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1C64()
{
  result = qword_1EBE17A70;
  if (!qword_1EBE17A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17A70);
  }

  return result;
}

unint64_t sub_1C05B1CE8(uint64_t a1)
{
  result = sub_1C05B1D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1D10()
{
  result = qword_1EBE0FC00;
  if (!qword_1EBE0FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC00);
  }

  return result;
}

unint64_t sub_1C05B1D68()
{
  result = qword_1EBE0FC18;
  if (!qword_1EBE0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC18);
  }

  return result;
}

unint64_t sub_1C05B1DBC(uint64_t a1)
{
  result = sub_1C05B1DE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1DE4()
{
  result = qword_1EBE17A88;
  if (!qword_1EBE17A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17A88);
  }

  return result;
}

unint64_t sub_1C05B1E68(uint64_t a1)
{
  result = sub_1C05B1E90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1E90()
{
  result = qword_1EBE0FC20;
  if (!qword_1EBE0FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC20);
  }

  return result;
}

unint64_t sub_1C05B1EE8()
{
  result = qword_1EBE0FC08;
  if (!qword_1EBE0FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC08);
  }

  return result;
}

unint64_t sub_1C05B1F3C(uint64_t a1)
{
  result = sub_1C05B1F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B1F64()
{
  result = qword_1EBE17AA0;
  if (!qword_1EBE17AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17AA0);
  }

  return result;
}

unint64_t sub_1C05B1FE8(uint64_t a1)
{
  result = sub_1C05B2010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C05B2010()
{
  result = qword_1EBE0FC10;
  if (!qword_1EBE0FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FC10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoEntity_appleMessage_MessageAttribute.DefinedValues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UsoEntity_appleMessage_MessageAttribute.DefinedValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t Com_Apple_Siri_Product_Proto_Period.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x37;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C24();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

BOOL sub_1C05B22C4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v2 = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  return v2 == Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
}

unint64_t Com_Apple_Siri_Product_Proto_Qualifier.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x14;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5CC0();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

unint64_t Com_Apple_Siri_Product_Proto_CalendarSystem.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B2544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5D14();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

unint64_t Com_Apple_Siri_Product_Proto_DayOfWeek.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B266C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5D68();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.meridiem.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.meridiem.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.period.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v1 + *(v7 + 52), v6, &qword_1EBE17C38, &unk_1C0973550);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = a1 + *(v8 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C38, &unk_1C0973550);
  }

  return result;
}

uint64_t sub_1C05B2D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(a1 + *(v8 + 52), v7, &qword_1EBE17C38, &unk_1C0973550);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = a2 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C38, &unk_1C0973550);
  }

  return result;
}

uint64_t sub_1C05B2E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(a2 + v9, &qword_1EBE17C38, &unk_1C0973550);
  sub_1C05B3C0C(v8, a2 + v9, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.period.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C38, &unk_1C0973550);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Time.period.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C38, &unk_1C0973550);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v17 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C38, &unk_1C0973550);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  return sub_1C05B3294;
}

BOOL Com_Apple_Siri_Product_Proto_Time.hasPeriod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v0 + *(v5 + 52), v4, &qword_1EBE17C38, &unk_1C0973550);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE17C38, &unk_1C0973550);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Time.clearPeriod()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C38, &unk_1C0973550);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_Siri_Product_Proto_Time.qualifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.qualifier.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.timeZoneID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.timeZoneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Time.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 48);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 48);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Time.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v3 = a1 + *(v2 + 48);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 52);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C05B37DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05B3898(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void Com_Apple_Siri_Product_Proto_Date.dayOfWeek.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dayOfWeek.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v1 + *(v7 + 60), v6, &qword_1EBE17C40, &unk_1C099BB60);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C40, &unk_1C099BB60);
  }

  return result;
}

uint64_t sub_1C05B3C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05B3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(a1 + *(v8 + 60), v7, &qword_1EBE17C40, &unk_1C099BB60);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C40, &unk_1C099BB60);
  }

  return result;
}

uint64_t sub_1C05B3DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(a2 + v9, &qword_1EBE17C40, &unk_1C099BB60);
  sub_1C05B3C0C(v8, a2 + v9, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C40, &unk_1C099BB60);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Date.dateTimeHoliday.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C40, &unk_1C099BB60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C40, &unk_1C099BB60);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  }

  return sub_1C05B41E8;
}

uint64_t sub_1C05B4210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05B4278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Siri_Product_Proto_Date.hasDateTimeHoliday.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v0 + *(v5 + 60), v4, &qword_1EBE17C40, &unk_1C099BB60);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE17C40, &unk_1C099BB60);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Date.clearDateTimeHoliday()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 60);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C40, &unk_1C099BB60);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_Siri_Product_Proto_Date.qualifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.qualifier.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.periods.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void Com_Apple_Siri_Product_Proto_Date.calendarSystem.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.calendarSystem.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v1 + *(v7 + 64), v6, &qword_1EBE17C48, &unk_1C0973560);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C48, &unk_1C0973560);
  }

  return result;
}

uint64_t sub_1C05B46FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(a1 + *(v8 + 64), v7, &qword_1EBE17C48, &unk_1C0973560);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C48, &unk_1C0973560);
  }

  return result;
}

uint64_t sub_1C05B4860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(a2 + v9, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05B3C0C(v8, a2 + v9, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(v1 + v3, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C05B3C0C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_Date.fractionalPeriod.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17C48, &unk_1C0973560);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C48, &unk_1C0973560);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  }

  return sub_1C05B4C58;
}

void sub_1C05B4C80(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1C05B4210(v11, v10, a5);
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C05B3C0C(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1C05B4278(v11, a5);
  }

  else
  {
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C05B3C0C(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Siri_Product_Proto_Date.hasFractionalPeriod.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  sub_1C05149F8(v0 + *(v5 + 64), v4, &qword_1EBE17C48, &unk_1C0973560);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE17C48, &unk_1C0973560);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_Date.clearFractionalPeriod()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 64);
  sub_1C05145B4(v0 + v1, &qword_1EBE17C48, &unk_1C0973560);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 56);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0) + 56);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Date.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 0;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v3 = a1 + v2[14];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[15];
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[16];
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void Com_Apple_Siri_Product_Proto_Duration.period.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.period.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Duration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Interval.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Recurrence.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0) + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05B5680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.startDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C50, &unk_1C099BB50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v19 = MEMORY[0x1E69E7CC0];
    *(v14 + 41) = 0;
    *(v14 + 48) = v19;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 68) = 0;
    v20 = v14 + v9[14];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v21 = v9[15];
    v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = v9[16];
    v24 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C50, &unk_1C099BB50);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  return sub_1C05B5D1C;
}

uint64_t sub_1C05B5DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = *(v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE17C50, &unk_1C099BB50);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C05B3C0C(v8, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 41) = 0;
  *(a2 + 48) = v13;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  v14 = a2 + v11[14];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = v11[15];
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = v11[16];
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17C50, &unk_1C099BB50);
  }

  return result;
}

uint64_t sub_1C05B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.endDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C50, &unk_1C099BB50);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C50, &unk_1C099BB50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    v19 = MEMORY[0x1E69E7CC0];
    *(v14 + 41) = 0;
    *(v14 + 48) = v19;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 68) = 0;
    v20 = v14 + v9[14];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v21 = v9[15];
    v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = v9[16];
    v24 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C50, &unk_1C099BB50);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  }

  return sub_1C05B666C;
}

BOOL sub_1C05B66CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1C05149F8(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v16;
}

uint64_t sub_1C05B6814(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1C05C5474(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE17C58, &unk_1C0973570);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = a1 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C58, &unk_1C0973570);
  }

  return result;
}

uint64_t sub_1C05B6AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE17C58, &unk_1C0973570);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = a2 + *(v10 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C58, &unk_1C0973570);
  }

  return result;
}

uint64_t sub_1C05B6C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C58, &unk_1C0973570);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.duration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C58, &unk_1C0973570);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.duration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C58, &unk_1C0973570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v19 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C58, &unk_1C0973570);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
  }

  return sub_1C05B7250;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE17C60, &unk_1C099BB40);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v11 = a1 + *(v9 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C60, &unk_1C099BB40);
  }

  return result;
}

uint64_t sub_1C05B7470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C60, &unk_1C099BB40);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.interval.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C60, &unk_1C099BB40);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.interval.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C60, &unk_1C099BB40);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    v19 = v14 + *(v9 + 32);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C60, &unk_1C099BB40);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  }

  return sub_1C05B7A44;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.recurrence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE17C68, &unk_1C0973580);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C05B3C0C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = a1 + *(v9 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17C68, &unk_1C0973580);
  }

  return result;
}

uint64_t sub_1C05B7C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE17C68, &unk_1C0973580);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C05B3C0C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = a2 + *(v10 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17C68, &unk_1C0973580);
  }

  return result;
}

uint64_t sub_1C05B7DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C68, &unk_1C0973580);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.recurrence.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C68, &unk_1C0973580);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.recurrence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C68, &unk_1C0973580);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v19 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C68, &unk_1C0973580);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
  }

  return sub_1C05B83C0;
}

uint64_t sub_1C05B845C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.startTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C70, &unk_1C099BB30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0xE000000000000000;
    *(v14 + 56) = 0;
    *(v14 + 58) = 0;
    v19 = v14 + *(v9 + 48);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 52);
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C70, &unk_1C099BB30);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  return sub_1C05B8A80;
}

uint64_t sub_1C05B8B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE17C70, &unk_1C099BB30);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C05B3C0C(v8, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  v13 = a2 + *(v11 + 48);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v14 = *(v11 + 52);
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE17C70, &unk_1C099BB30);
  }

  return result;
}

uint64_t sub_1C05B8CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05B4210(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C05C5474(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C05B3C0C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.endTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C05B3C0C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE17C70, &unk_1C099BB30);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17C70, &unk_1C099BB30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0xE000000000000000;
    *(v14 + 56) = 0;
    *(v14 + 58) = 0;
    v19 = v14 + *(v9 + 48);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v20 = *(v9 + 52);
    v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17C70, &unk_1C099BB30);
    }
  }

  else
  {
    sub_1C05B3C0C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  }

  return sub_1C05B9320;
}

void sub_1C05B9350(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1C05B4210(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_1C05C5474(v13);

      *(v15 + v14) = v19;
      v13 = v19;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v22 = *(v8 + 96);
    v23 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_1C05B3C0C(v21, v25, a3);
    (*(v23 + 56))(v25, 0, 1, v22);
    v26 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v25, v13 + v26, a5, a6);
    swift_endAccess();
    sub_1C05B4278(v20, a3);
  }

  else
  {
    v27 = *(v8 + 72);
    v28 = *(v27 + v9);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v27 + v9);
    if ((v29 & 1) == 0)
    {
      v31 = *(v8 + 128);
      v32 = *(v8 + 72);
      v33 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_1C05C5474(v30);

      *(v32 + v31) = v36;
      v30 = v36;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v37 = *(v8 + 96);
    v38 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_1C05B3C0C(v20, v25, a3);
    (*(v38 + 56))(v25, 0, 1, v37);
    v39 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v25, v30 + v39, a5, a6);
    swift_endAccess();
  }

  free(v20);
  free(v21);
  free(v24);
  free(v25);

  free(v8);
}

void (*Com_Apple_Siri_Product_Proto_DateTime.startPosition.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C05B9694;
}

uint64_t sub_1C05B96AC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t sub_1C05B9700(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C05C5474(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

uint64_t sub_1C05B97B8(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C05C5474(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_DateTime.endPosition.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C05B990C;
}

void sub_1C05B9918(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C05C5474(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C05B9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C05B9AC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1C05C5474(v8);

    *(a2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v13 = v3;
  *(v13 + 8) = v4;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1C05C5474(v8);

    *(v2 + v5) = v12;
    v8 = v12;
  }

  v13 = v8 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v13 = v3;
  *(v13 + 8) = v4;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_DateTime.temporalIntent.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C05B9CEC;
}

void sub_1C05B9CEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_1C05C5474(v8);

    *(v10 + v9) = v14;
    v8 = v14;
  }

  v15 = v8 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  swift_beginAccess();
  *v15 = v2;
  *(v15 + 8) = v5;

  free(v1);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t Com_Apple_Siri_Product_Proto_DateTime.TemporalIntent.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C05B9EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C78E4();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DateTime.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBE17C18;
}

uint64_t sub_1C05BA068()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17AE0);
  __swift_project_value_buffer(v0, qword_1EBE17AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1C09734F0;
  v4 = v114 + v3;
  v5 = v114 + v3 + v1[14];
  *(v114 + v3) = 0;
  *v5 = "PERIOD_NOT_SET";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v114 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NULL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v114 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NOW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v114 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MIDNIGHT";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v114 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MILLISECOND";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v114 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SECOND";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v114 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MINUTE";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v114 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HOUR";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v114 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MORNING";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v114 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "BREAKFAST";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v114 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "BRUNCH";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v114 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "LUNCH";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v114 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "NOON";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v8();
  v31 = (v114 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AFTERNOON";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v114 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "EVENING";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v114 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "HAPPYHOUR";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  v37 = v114 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "DINNER";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v114 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "BEDTIME";
  *(v39 + 1) = 7;
  v39[16] = 2;
  v8();
  v40 = (v114 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "DAYTIME";
  *(v41 + 1) = 7;
  v41[16] = 2;
  v8();
  v42 = (v114 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "NIGHT";
  *(v43 + 1) = 5;
  v43[16] = 2;
  v8();
  v44 = (v114 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "OVERNIGHT";
  *(v45 + 1) = 9;
  v45[16] = 2;
  v8();
  v46 = (v114 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "TONIGHT";
  *(v47 + 1) = 7;
  v47[16] = 2;
  v8();
  v48 = (v114 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "DAYPERIOD";
  *(v49 + 1) = 9;
  v49[16] = 2;
  v8();
  v50 = (v114 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "TWO_DAYS_BEFORE_YESTERDAY";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v114 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "DAY_BEFORE_YESTERDAY";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v114 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "YESTERDAY";
  *(v55 + 1) = 9;
  v55[16] = 2;
  v8();
  v56 = (v114 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "TODAY";
  *(v57 + 1) = 5;
  v57[16] = 2;
  v8();
  v58 = (v114 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "TOMORROW";
  *(v59 + 1) = 8;
  v59[16] = 2;
  v8();
  v60 = (v114 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "DAY_AFTER_TOMORROW";
  *(v61 + 1) = 18;
  v61[16] = 2;
  v8();
  v62 = (v114 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "TWO_DAYS_AFTER_TOMORROW";
  *(v63 + 1) = 23;
  v63[16] = 2;
  v8();
  v64 = (v114 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "DAY";
  *(v65 + 1) = 3;
  v65[16] = 2;
  v8();
  v66 = (v114 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "SUNDAY";
  *(v67 + 1) = 6;
  v67[16] = 2;
  v8();
  v68 = v114 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "MONDAY";
  *(v68 + 8) = 6;
  *(v68 + 16) = 2;
  v8();
  v69 = (v114 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "TUESDAY";
  *(v70 + 1) = 7;
  v70[16] = 2;
  v8();
  v71 = (v114 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "WEDNESDAY";
  *(v72 + 1) = 9;
  v72[16] = 2;
  v8();
  v73 = (v114 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "THURSDAY";
  *(v74 + 1) = 8;
  v74[16] = 2;
  v8();
  v75 = (v114 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "FRIDAY";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v8();
  v77 = (v114 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "SATURDAY";
  *(v78 + 1) = 8;
  v78[16] = 2;
  v8();
  v79 = (v114 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "DAYOFWEEK";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v8();
  v81 = (v114 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "WEEKEND";
  *(v82 + 1) = 7;
  v82[16] = 2;
  v8();
  v83 = (v114 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "WEEKDAY";
  *(v84 + 1) = 7;
  v84[16] = 2;
  v8();
  v85 = (v114 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "WEEK";
  *(v86 + 1) = 4;
  v86[16] = 2;
  v8();
  v87 = (v114 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "FORTNIGHT";
  *(v88 + 1) = 9;
  v88[16] = 2;
  v8();
  v89 = (v114 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "DAYOFMONTH";
  *(v90 + 1) = 10;
  v90[16] = 2;
  v8();
  v91 = (v114 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "MONTH";
  *(v92 + 1) = 5;
  v92[16] = 2;
  v8();
  v93 = (v114 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "QUARTER";
  *(v94 + 1) = 7;
  v94[16] = 2;
  v8();
  v95 = (v114 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "SPRING";
  *(v96 + 1) = 6;
  v96[16] = 2;
  v8();
  v97 = (v114 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "SUMMER";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v8();
  v99 = (v114 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "WINTER";
  *(v100 + 1) = 6;
  v100[16] = 2;
  v8();
  v101 = (v114 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "FALL";
  *(v102 + 1) = 4;
  v102[16] = 2;
  v8();
  v103 = (v114 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "SEASON";
  *(v104 + 1) = 6;
  v104[16] = 2;
  v8();
  v105 = (v114 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "SEMESTER";
  *(v106 + 1) = 8;
  v106[16] = 2;
  v8();
  v107 = (v114 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "YEAR";
  *(v108 + 1) = 4;
  v108[16] = 2;
  v8();
  v109 = (v114 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "DECADE";
  *(v110 + 1) = 6;
  v110[16] = 2;
  v8();
  v111 = (v114 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "CENTURY";
  *(v112 + 1) = 7;
  v112[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BAED8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17AF8);
  __swift_project_value_buffer(v0, qword_1EBE17AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C0973500;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "QUALIFIER_NOT_SET";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NONE";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PLUS";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MINUS";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "APPROX";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EARLY";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "LATE";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "EVERY";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "BEGINOF";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MIDDLEOF";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ENDOF";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ALLOF";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RESTOF";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "BEFORE";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AFTER";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "THIS";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "NEXT";
  *(v37 + 8) = 4;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "UPCOMING";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "NEXT_NEXT";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "LAST";
  *(v43 + 1) = 4;
  v43[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BB52C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B10);
  __swift_project_value_buffer(v0, qword_1EBE17B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C0973510;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "CALENDAR_SYSTEM_NOT_SET";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BUDDHIST";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CHINESE";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HEBREW";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "HIJRI";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "HINDU";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ISLAMIC_UMALQURA";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ISLAMIC";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "GREGORIAN";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "JAPANESE";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "JULIAN";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PERSIAN";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ROC";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05BB9F0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B28);
  __swift_project_value_buffer(v0, qword_1EBE17B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0973520;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "DOW_NOT_SET";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DOW_MONDAY";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DOW_TUESDAY";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DOW_WEDNESDAY";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DOW_THURSDAY";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DOW_FRIDAY";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DOW_SATURDAY";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DOW_SUNDAY";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D44C();
      }

      else if (result == 2)
      {
        sub_1C05C5C24();
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimePeriod.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1C095D5FC(), !v1))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    if (!Com_Apple_Siri_Product_Proto_Period.rawValue.getter() || (sub_1C05C5C24(), result = sub_1C095D60C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05BBFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BC044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EC0, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BC0E4(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BC150()
{
  sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BC1EC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B58);
  __swift_project_value_buffer(v0, qword_1EBE17B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numerator";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "denominator";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ordinalValue";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_FractionalPeriod.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D67C(), !v1))
  {
    if (!v0[1] || (result = sub_1C095D67C(), !v1))
    {
      if (!v0[2] || (result = sub_1C095D67C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C05BC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05BC638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EB8, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BC6D8(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BC744()
{
  sub_1C05C5C78(&qword_1EBE17CC0, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BC7E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B70);
  __swift_project_value_buffer(v0, qword_1EBE17B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973530;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "meridiem";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hourOfDay";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "minute";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "period";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "qualifier";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeZoneId";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isStart";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isUserDefined";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is24HourStyleInput";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_1C05BCCFC();
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 1)
          {
            goto LABEL_20;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }
        }

        sub_1C095D52C();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
LABEL_20:
          sub_1C095D50C();
          goto LABEL_5;
        }

        sub_1C05C5CC0();
        sub_1C095D45C();
      }

      else if (result == 7 || result == 8 || result == 9)
      {
        sub_1C095D44C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05BCCFC()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_Time.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    result = sub_1C095D66C();
    if (v1)
    {
      return result;
    }

    if (!*(v0 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (!*(v0 + 4))
  {
    goto LABEL_9;
  }

  result = sub_1C095D67C();
  if (v1)
  {
    return result;
  }

LABEL_9:
  if (*(v0 + 5))
  {
    result = sub_1C095D67C();
    if (v1)
    {
      return result;
    }
  }

  v26 = v1;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  sub_1C05149F8(v0 + *(v15 + 52), v5, &qword_1EBE17C38, &unk_1C0973550);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v23 = v15;
    sub_1C05B3C0C(v5, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C05C5C78(&qword_1EBE17C98, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v16 = v26;
    sub_1C095D6AC();
    result = sub_1C05B4278(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    if (v16)
    {
      return result;
    }

    v15 = v23;
    v17 = v0[3];
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = *(v0 + 32);
    v24 = v17;
    v25 = v18;
    sub_1C05C5CC0();
    result = sub_1C095D60C();
    if (v16)
    {
      return result;
    }

    goto LABEL_17;
  }

  sub_1C05145B4(v5, &qword_1EBE17C38, &unk_1C0973550);
  v16 = v26;
  v17 = v0[3];
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_17:
  v19 = v0[6];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v0[5] & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (result = sub_1C095D66C(), !v16))
  {
    if (*(v0 + 56) != 1 || (result = sub_1C095D5FC(), !v16))
    {
      if (*(v0 + 57) != 1 || (result = sub_1C095D5FC(), !v16))
      {
        if (*(v0 + 58) != 1 || (result = sub_1C095D5FC(), !v16))
        {
          v21 = v0 + *(v15 + 48);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C05BD1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  v4 = a2 + *(a1 + 48);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C05BD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05BD2D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C05BD34C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1C05BD3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C5C78(&qword_1EBE17EB0, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05BD440(uint64_t a1)
{
  v2 = sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05BD4AC()
{
  sub_1C05C5C78(&qword_1EBE17DE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);

  return sub_1C095D5AC();
}

uint64_t sub_1C05BD548()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17B88);
  __swift_project_value_buffer(v0, qword_1EBE17B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "calendarSystem";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D50C();
      }

      else if (result == 2)
      {
        sub_1C05C5D14();
        sub_1C095D45C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DateTimeHoliday.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C095D66C(), !v1))
  {
    if (!v0[2] || (v7 = v0[2], v8 = *(v0 + 24), sub_1C05C5D14(), result = sub_1C095D60C(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_DateTimeHoliday.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v5 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v5 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v5 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v5 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v5 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v5 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v5 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v5 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v5 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v5 == 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v5 == 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v5 == 12)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v5)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_11:
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0) + 24);
  sub_1C095D38C();
  sub_1C05C5C78(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}