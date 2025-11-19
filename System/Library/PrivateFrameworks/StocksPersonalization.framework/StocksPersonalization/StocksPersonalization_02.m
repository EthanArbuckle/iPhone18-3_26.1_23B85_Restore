uint64_t static Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203F1030();
    }

    else if (result == 2)
    {
      sub_2203F10E4();
    }
  }

  return result;
}

uint64_t sub_2203F1030()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 20);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_2203F2410(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t sub_2203F10E4()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 24);
  sub_22042B650();
  sub_2203F2410(&unk_280FA2218, MEMORY[0x277D21628]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2203F1208(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2203F142C(v3, a1, a2, a3);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203F1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(a1 + *(v16 + 20), v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2203EF6B4(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_2203DFAD4(v9, v15);
  sub_2203F2410(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203EFECC(v15);
}

uint64_t sub_2203F142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a3;
  v5 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_22042B650();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(a1 + *(v17 + 24), v10, &qword_280FA2210, v5);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2203EF6B4(v10, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_2203F2410(&unk_280FA2218, MEMORY[0x277D21628]);
  sub_22042B890();
  return (*(v12 + 8))(v16, v11);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F2410(&qword_27CF52540, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F1704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2203F1814(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F2410(&qword_27CF52550, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203F1890@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203F1938(uint64_t a1)
{
  v2 = sub_2203F2410(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203F19A4()
{
  sub_2203F2410(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B28_SessionEventSymbolFeedVisitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  v2 = sub_22042B650();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D21628];
  v7 = MEMORY[0x277D83D88];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v59 = &v58 - v11;
  sub_2203F233C(0, &qword_27CF52558, &qword_280FA2210, v6);
  v60 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v61 = &v58 - v15;
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v7);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v58 - v25;
  sub_2203F233C(0, &qword_27CF52418, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v58 - v31;
  v33 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v34 = *(v33 + 20);
  v35 = *(v28 + 56);
  sub_2203F026C(v65 + v34, v32, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v36 = v64 + v34;
  v37 = v64;
  sub_2203F026C(v36, &v32[v35], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v38 = *(v17 + 48);
  if (v38(v32, 1, v16) != 1)
  {
    sub_2203F026C(v32, v26, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    if (v38(&v32[v35], 1, v16) != 1)
    {
      sub_2203DFAD4(&v32[v35], v21);
      v43 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v26, v21);
      sub_2203EFECC(v21);
      sub_2203EFECC(v26);
      sub_2203EF6B4(v32, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_2203EFECC(v26);
LABEL_6:
    v39 = &qword_27CF52418;
    v40 = qword_280FA2010;
    v41 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
    v42 = v32;
LABEL_14:
    sub_2203F23B4(v42, v39, v40, v41);
    goto LABEL_15;
  }

  if (v38(&v32[v35], 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_2203EF6B4(v32, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_8:
  v44 = *(v33 + 24);
  v45 = v61;
  v46 = *(v60 + 48);
  v47 = MEMORY[0x277D21628];
  sub_2203F026C(v65 + v44, v61, &qword_280FA2210, MEMORY[0x277D21628]);
  sub_2203F026C(v37 + v44, v45 + v46, &qword_280FA2210, v47);
  v49 = v62;
  v48 = v63;
  v50 = *(v62 + 48);
  if (v50(v45, 1, v63) == 1)
  {
    if (v50(v45 + v46, 1, v48) == 1)
    {
      sub_2203EF6B4(v45, &qword_280FA2210, MEMORY[0x277D21628]);
LABEL_18:
      sub_22042B680();
      sub_2203F2410(&qword_27CF52420, MEMORY[0x277D216C8]);
      v52 = sub_22042BA10();
      return v52 & 1;
    }

    goto LABEL_13;
  }

  v51 = v59;
  sub_2203F026C(v45, v59, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v50(v45 + v46, 1, v48) == 1)
  {
    (*(v49 + 8))(v51, v48);
LABEL_13:
    v39 = &qword_27CF52558;
    v40 = &qword_280FA2210;
    v41 = MEMORY[0x277D21628];
    v42 = v45;
    goto LABEL_14;
  }

  v54 = v45 + v46;
  v55 = v58;
  (*(v49 + 32))(v58, v54, v48);
  sub_2203F2410(&qword_27CF52560, MEMORY[0x277D21628]);
  v56 = sub_22042BA10();
  v57 = *(v49 + 8);
  v57(v55, v48);
  v57(v51, v48);
  sub_2203EF6B4(v45, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v56)
  {
    goto LABEL_18;
  }

LABEL_15:
  v52 = 0;
  return v52 & 1;
}

void sub_2203F2240()
{
  sub_22042B680();
  if (v0 <= 0x3F)
  {
    sub_2203F2458(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2203F2458(319, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2203F233C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2203F2458(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2203F23B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F233C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2203F2410(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203F2458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL Com_Apple_Stocks_Personalization_SessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(v0 + *(v7 + 24), v6, &qword_280FA2228, v1);
  v8 = sub_22042B600();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_2203F9564(v6, &qword_280FA2228, v1);
  return v9;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(v1 + *(v9 + 24), v8, &qword_280FA2228, v3);
  v10 = sub_22042B600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22042B5F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2203F9564(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_2203F286C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(a1 + *(v10 + 24), v9, &qword_280FA2228, v4);
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_22042B5F0();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_2203F9564(v9, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_2203F2A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(a2 + v10, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_2203F95D4(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203F9564(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_2203F2D8C;
}

void sub_2203F2D8C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_2203F9564(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_2203F9564(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203F9564(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_2203F2FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203F306C(uint64_t a1, uint64_t a2)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.articleRead.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  sub_2203F95D4(v2, &v16 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_2203F3B20(v8, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_22042B650();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_2203F3340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  sub_2203F95D4(a1, &v16 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_2203F3B20(v8, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_22042B650();
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.articleRead.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_2203F95D4(v2, v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2203F9564(v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2203F3B20(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      return sub_2203F3858;
    }

    sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_22042B650();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_2203F3858;
}

uint64_t sub_2203F389C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.symbolFeedVisit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  sub_2203F95D4(v2, &v16 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_2203F3B20(v8, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = *(v11 + 24);
  v15 = sub_22042B650();
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t sub_2203F3B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203F3B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  sub_2203F95D4(a1, &v16 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_2203F3B20(v8, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v12 = *(v11 + 20);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v11 + 24);
  v15 = sub_22042B650();
  return (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
}

uint64_t sub_2203F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v18 - v14;
  sub_2203F96B8(a1, &v18 - v14, a6);
  sub_2203F9564(a2, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(v15, a2, a7);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_2203F3EE8(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2203F9564(v2, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.symbolFeedVisit.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_2203F95D4(v2, v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2203F9564(v10, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_22042B650();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_2203F428C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2203F389C(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v10, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  return sub_2203F428C;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.watchSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2203F95D4(v2, &v13 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_2203F3B20(v8, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

uint64_t sub_2203F44AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2203F95D4(a1, &v13 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_2203F3B20(v8, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  return (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.watchSymbol.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_2203F95D4(v1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_2203F493C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  return sub_2203F493C;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unwatchSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2203F95D4(v2, &v13 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_2203F3B20(v8, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

uint64_t sub_2203F4B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2203F95D4(a1, &v13 - v7, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_2203F9564(v8, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_2203F3B20(v8, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    }

    sub_2203F389C(v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  sub_22042B670();
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  return (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
}

void (*Com_Apple_Stocks_Personalization_SessionEvent.unwatchSymbol.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_2203F95D4(v1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_22042B670();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_2203F4FEC;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_2203F3B20(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  return sub_2203F4FEC;
}

void sub_2203F5030(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_2203F96B8((*a1)[3], v10, a5);
    sub_2203F9564(v13, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_2203F389C(v11, a6);
  }

  else
  {
    sub_2203F9564(**a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v4 = a1 + *(v3 + 20);
  sub_22042B670();
  v5 = *(v3 + 24);
  v6 = sub_22042B600();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_2203F53CC()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA2148);
  __swift_project_value_buffer(v0, qword_280FA2148);
  sub_2203F2FE0(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042F4D0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "articleRead";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "symbolFeedVisit";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "watchSymbol";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "unwatchSymbol";
  *(v16 + 8) = 13;
  *(v16 + 16) = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2140 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_2203F5828();
      }

      else if (result == 2)
      {
        sub_2203F58DC(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_2203F5F10(v5, a1, a2, a3);
          break;
        case 4:
          sub_2203F6560(v5, a1, a2, a3);
          break;
        case 5:
          sub_2203F6BB0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2203F5828()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_22042B600();
  sub_2203F91B0(&qword_280FA2230, MEMORY[0x277D21570]);
  return sub_22042B7A0();
}

uint64_t sub_2203F58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v48 = &v45 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v45 - v26;
  sub_2203F2FE0(0, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead, v12);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v51 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v45 - v34;
  v50 = v5;
  v36 = *(v5 + 56);
  v53 = v4;
  v47 = v36;
  v36(&v45 - v34, 1, 1, v4);
  sub_2203F95D4(v57, v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v46 = v19;
  v37 = (*(v19 + 48))(v17, 1, v18);
  if (v37 == 1)
  {
    sub_2203F9564(v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_5:
    v38 = v53;
    goto LABEL_6;
  }

  sub_2203F3B20(v17, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F3B20(v27, v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2203F389C(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_2203F9564(v35, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v42 = v48;
  sub_2203F3B20(v24, v48, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_2203F3B20(v42, v35, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v38 = v53;
  v47(v35, 0, 1, v53);
LABEL_6:
  v39 = v51;
  sub_2203F91B0(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  v40 = v52;
  sub_22042B7A0();
  if (v40)
  {
    return sub_2203F9564(v35, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  sub_2203F95D4(v35, v39, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  if ((*(v50 + 48))(v39, 1, v38) == 1)
  {
    sub_2203F9564(v35, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    return sub_2203F9564(v39, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  else
  {
    v43 = v49;
    sub_2203F3B20(v39, v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    if (v37 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v35, qword_280FA1C80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    v44 = v57;
    sub_2203F9564(v57, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v43, v44, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v44, 0, 1, v18);
  }
}

uint64_t sub_2203F5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v58 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v46 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  sub_2203F2FE0(0, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit, v12);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v51 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v50 = v5;
  v34 = *(v5 + 56);
  v52 = &v46 - v35;
  v54 = v4;
  v34();
  sub_2203F95D4(v58, v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v47 = v19;
  v36 = (*(v19 + 48))(v17, 1, v18);
  if (v36 == 1)
  {
    sub_2203F9564(v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
  }

  else
  {
    sub_2203F3B20(v17, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v27, v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v52;
      sub_2203F9564(v52, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      v39 = v49;
      sub_2203F3B20(v24, v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      sub_2203F3B20(v39, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
      v40 = v54;
      (v34)(v38, 0, 1, v54);
      goto LABEL_7;
    }

    sub_2203F389C(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v40 = v54;
  v38 = v52;
LABEL_7:
  v41 = v51;
  sub_2203F91B0(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  v42 = v53;
  sub_22042B7A0();
  if (v42)
  {
    return sub_2203F9564(v38, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  sub_2203F95D4(v38, v41, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  if ((*(v50 + 48))(v41, 1, v40) == 1)
  {
    sub_2203F9564(v38, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    return sub_2203F9564(v41, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  else
  {
    v44 = v48;
    sub_2203F3B20(v41, v48, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    if (v36 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v38, qword_280FA1A90, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    v45 = v58;
    sub_2203F9564(v58, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v44, v45, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v45, 0, 1, v37);
  }
}

uint64_t sub_2203F6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v58 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v46 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  sub_2203F2FE0(0, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol, v12);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v51 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v50 = v5;
  v34 = *(v5 + 56);
  v52 = &v46 - v35;
  v54 = v4;
  v34();
  sub_2203F95D4(v58, v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v47 = v19;
  v36 = (*(v19 + 48))(v17, 1, v18);
  if (v36 == 1)
  {
    sub_2203F9564(v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
  }

  else
  {
    sub_2203F3B20(v17, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v27, v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v38 = v52;
      sub_2203F9564(v52, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v39 = v49;
      sub_2203F3B20(v24, v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      sub_2203F3B20(v39, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v40 = v54;
      (v34)(v38, 0, 1, v54);
      goto LABEL_7;
    }

    sub_2203F389C(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v40 = v54;
  v38 = v52;
LABEL_7:
  v41 = v51;
  sub_2203F91B0(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  v42 = v53;
  sub_22042B7A0();
  if (v42)
  {
    return sub_2203F9564(v38, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  sub_2203F95D4(v38, v41, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  if ((*(v50 + 48))(v41, 1, v40) == 1)
  {
    sub_2203F9564(v38, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    return sub_2203F9564(v41, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  else
  {
    v44 = v48;
    sub_2203F3B20(v41, v48, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    if (v36 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v38, &qword_27CF52598, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    v45 = v58;
    sub_2203F9564(v58, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v44, v45, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v45, 0, 1, v37);
  }
}

uint64_t sub_2203F6BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v58 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v46 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  sub_2203F2FE0(0, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol, v12);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v51 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v50 = v5;
  v34 = *(v5 + 56);
  v52 = &v46 - v35;
  v54 = v4;
  v34();
  sub_2203F95D4(v58, v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v47 = v19;
  v36 = (*(v19 + 48))(v17, 1, v18);
  if (v36 == 1)
  {
    sub_2203F9564(v17, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
  }

  else
  {
    sub_2203F3B20(v17, v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v27, v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v37 = v18;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v38 = v52;
      sub_2203F9564(v52, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v39 = v49;
      sub_2203F3B20(v24, v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      sub_2203F3B20(v39, v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v40 = v54;
      (v34)(v38, 0, 1, v54);
      goto LABEL_7;
    }

    sub_2203F389C(v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  v40 = v54;
  v38 = v52;
LABEL_7:
  v41 = v51;
  sub_2203F91B0(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  v42 = v53;
  sub_22042B7A0();
  if (v42)
  {
    return sub_2203F9564(v38, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  sub_2203F95D4(v38, v41, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  if ((*(v50 + 48))(v41, 1, v40) == 1)
  {
    sub_2203F9564(v38, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    return sub_2203F9564(v41, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  else
  {
    v44 = v48;
    sub_2203F3B20(v41, v48, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    if (v36 != 1)
    {
      sub_22042B710();
    }

    sub_2203F9564(v38, &qword_27CF525A0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    v45 = v58;
    sub_2203F9564(v58, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_2203F3B20(v44, v45, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v45, 0, 1, v37);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  result = sub_2203F7424(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2203F95D4(v3, v12, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_2203F7B3C(v3, a1, a2, a3);
        }

        else
        {
          sub_2203F7DA4(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_2203F78D4(v3, a1, a2, a3);
      }

      else
      {
        sub_2203F7670(v3, a1, a2, a3);
      }

      sub_2203F389C(v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    }

    v16 = v3 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 20);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203F7424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F95D4(a1 + *(v17 + 24), v10, &qword_280FA2228, v5);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2203F9564(v10, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_2203F91B0(&qword_280FA2230, MEMORY[0x277D21570]);
  sub_22042B890();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_2203F7670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_2203F3B20(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_2203F91B0(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_22042B890();
    return sub_2203F389C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  }

  result = sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2203F3B20(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    sub_2203F91B0(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    sub_22042B890();
    return sub_2203F389C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  }

  result = sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F7B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2203F3B20(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    sub_2203F91B0(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
    sub_22042B890();
    return sub_2203F389C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  }

  result = sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2203F7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203F95D4(a1, v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_2203F9564(v9, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2203F3B20(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    sub_2203F91B0(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
    sub_22042B890();
    return sub_2203F389C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  }

  result = sub_2203F389C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  sub_2203F91B0(&qword_27CF52568, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F8098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  sub_22042B670();
  v6 = *(a1 + 24);
  v7 = sub_22042B600();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2203F8174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203F81E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2203F825C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2203F82B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F91B0(&qword_27CF52578, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203F832C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2140 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203F83D4(uint64_t a1)
{
  v2 = sub_2203F91B0(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203F8440()
{
  sub_2203F91B0(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2203F2FE0(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v59 = &v56 - v11;
  sub_2203F9490(0, &qword_27CF52580, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v60 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v63 = &v56 - v15;
  v16 = sub_22042B600();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D21570];
  sub_2203F2FE0(0, &qword_280FA2228, MEMORY[0x277D21570], v7);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v56 - v26;
  sub_2203F9490(0, &qword_27CF52588, &qword_280FA2228, v22);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v56 - v32;
  v58 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v34 = *(v58 + 24);
  v35 = *(v29 + 56);
  v64 = a1;
  sub_2203F95D4(a1 + v34, v33, &qword_280FA2228, v22);
  v36 = v65 + v34;
  v37 = v65;
  sub_2203F95D4(v36, &v33[v35], &qword_280FA2228, v22);
  v38 = *(v17 + 48);
  if (v38(v33, 1, v16) != 1)
  {
    sub_2203F95D4(v33, v27, &qword_280FA2228, MEMORY[0x277D21570]);
    if (v38(&v33[v35], 1, v16) != 1)
    {
      (*(v17 + 32))(v21, &v33[v35], v16);
      sub_2203F91B0(&qword_27CF52590, MEMORY[0x277D21570]);
      v43 = sub_22042BA10();
      v44 = *(v17 + 8);
      v44(v21, v16);
      v44(v27, v16);
      sub_2203F9564(v33, &qword_280FA2228, MEMORY[0x277D21570]);
      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v17 + 8))(v27, v16);
LABEL_6:
    v39 = &qword_27CF52588;
    v40 = &qword_280FA2228;
    v41 = MEMORY[0x277D21570];
    v42 = v33;
LABEL_14:
    sub_2203F9508(v42, v39, v40, v41);
    goto LABEL_15;
  }

  if (v38(&v33[v35], 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_2203F9564(v33, &qword_280FA2228, MEMORY[0x277D21570]);
LABEL_8:
  v45 = *(v60 + 48);
  v46 = v63;
  sub_2203F95D4(v64, v63, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F95D4(v37, v46 + v45, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v47 = v62;
  v48 = *(v61 + 48);
  if (v48(v46, 1, v62) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      sub_2203F9564(v46, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_18:
      v55 = *(v58 + 20);
      sub_22042B680();
      sub_2203F91B0(&qword_27CF52420, MEMORY[0x277D216C8]);
      v50 = sub_22042BA10();
      return v50 & 1;
    }

    goto LABEL_13;
  }

  v49 = v59;
  sub_2203F95D4(v46, v59, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    sub_2203F389C(v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_13:
    v39 = &qword_27CF52580;
    v40 = qword_280FA21D0;
    v41 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
    v42 = v46;
    goto LABEL_14;
  }

  v52 = v46 + v45;
  v53 = v57;
  sub_2203F3B20(v52, v57, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v54 = _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(v49, v53);
  sub_2203F389C(v53, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F389C(v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F9564(v46, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (v54)
  {
    goto LABEL_18;
  }

LABEL_15:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v57 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v57 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v57 - v35;
  sub_2203F9654();
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v42 = &v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v40 + 56);
  sub_2203F96B8(v59, v42, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  sub_2203F96B8(v60, &v42[v43], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2203F96B8(v42, v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol;
        v46 = v29;
        goto LABEL_15;
      }

      v47 = &v42[v43];
      v48 = v57;
      sub_2203F3B20(v47, v57, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventWatchSymbolV2eeoiySbAC_ACtFZ_0(v29, v48);
      v50 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol;
      sub_2203F389C(v48, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
      v51 = v29;
    }

    else
    {
      sub_2203F96B8(v42, v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol;
        v46 = v25;
        goto LABEL_15;
      }

      v53 = &v42[v43];
      v54 = v58;
      sub_2203F3B20(v53, v58, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B26_SessionEventUnwatchSymbolV2eeoiySbAC_ACtFZ_0(v25, v54);
      v50 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol;
      sub_2203F389C(v54, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
      v51 = v25;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2203F96B8(v42, v33, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit;
      v46 = v33;
      goto LABEL_15;
    }

    sub_2203F3B20(&v42[v43], v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B28_SessionEventSymbolFeedVisitV2eeoiySbAC_ACtFZ_0(v33, v14);
    sub_2203F389C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
    v51 = v33;
    v52 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit;
LABEL_18:
    sub_2203F389C(v51, v52);
    v55 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
    goto LABEL_19;
  }

  sub_2203F96B8(v42, v36, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_2203F3B20(&v42[v43], v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    V2eeoiySbAC_ACtFZ_0 = _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v36, v19);
    v50 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead;
    sub_2203F389C(v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    v51 = v36;
LABEL_17:
    v52 = v50;
    goto LABEL_18;
  }

  v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead;
  v46 = v36;
LABEL_15:
  sub_2203F389C(v46, v45);
  V2eeoiySbAC_ACtFZ_0 = 0;
  v55 = sub_2203F9654;
LABEL_19:
  sub_2203F389C(v42, v55);
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_2203F91B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203F92F8()
{
  sub_2203F2FE0(319, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22042B680();
    if (v1 <= 0x3F)
    {
      sub_2203F2FE0(319, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2203F93F4()
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2203F9490(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2203F2FE0(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2203F9508(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F9490(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2203F9564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203F2FE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2203F95D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F2FE0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2203F9654()
{
  if (!qword_27CF525A8)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF525A8);
    }
  }
}

uint64_t sub_2203F96B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t Com_Apple_Stocks_Personalization_FeedType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2203F979C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F9808(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203F9E10();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2203F9854()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203F98D0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF525B0);
  __swift_project_value_buffer(v0, qword_27CF525B0);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042F6E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "FEED_TYPE_UNKNOWN";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "FEED_TYPE_SYMBOL";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "FEED_TYPE_FOR_YOU";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "FEED_TYPE_EOA";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_FeedType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF525B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203F9BA8()
{
  result = qword_27CF525C8;
  if (!qword_27CF525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525C8);
  }

  return result;
}

unint64_t sub_2203F9C00()
{
  result = qword_27CF525D0;
  if (!qword_27CF525D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525D0);
  }

  return result;
}

unint64_t sub_2203F9C58()
{
  result = qword_27CF525D8;
  if (!qword_27CF525D8)
  {
    sub_2203F9CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525D8);
  }

  return result;
}

void sub_2203F9CB0()
{
  if (!qword_27CF525E0)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF525E0);
    }
  }
}

unint64_t sub_2203F9D04()
{
  result = qword_27CF525E8;
  if (!qword_27CF525E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525E8);
  }

  return result;
}

uint64_t sub_2203F9D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF525B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203F9E10()
{
  result = qword_27CF525F0;
  if (!qword_27CF525F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF525F0);
  }

  return result;
}

uint64_t type metadata accessor for ArticleScoringRequestEventProcessor()
{
  result = qword_280FA0660;
  if (!qword_280FA0660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203F9EFC()
{
  v1 = sub_22042A5E0();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042A5B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22042B370();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22042B560();
  v19 = *(*(v18 - 8) + 64);
  result = MEMORY[0x28223BE20](v18, v20);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_27CF525F8))
  {
    v33[3] = *(v0 + qword_27CF525F8);
    v34 = v22;
    v35 = result;
    sub_22042B240();
    v33[1] = sub_22042B330();
    v33[2] = v25;
    (*(v13 + 8))(v17, v12);
    sub_22042A5A0();
    sub_22042A570();
    v27 = v26;
    v28 = v26;
    result = (*(v7 + 8))(v11, v6);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        v38 = v27;
        v39 = sub_22042BF20();
        v40 = v29;
        MEMORY[0x223D7BDE0](45, 0xE100000000000000);
        sub_22042A5D0();
        v30 = sub_22042A5C0();
        v32 = v31;
        (*(v36 + 8))(v5, v37);
        MEMORY[0x223D7BDE0](v30, v32);

        sub_22042B550();
        sub_22042B5A0();
        return (*(v34 + 8))(v24, v35);
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures() + 52);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures()
{
  result = qword_280FA1DC0;
  if (!qword_280FA1DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures() + 52);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = a1 + *(v2 + 52);
  return sub_22042B670();
}

uint64_t sub_2203FA7A0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1DE8);
  __swift_project_value_buffer(v0, qword_280FA1DE8);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22042F8C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "is_audio";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "is_featured";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "is_evergreen";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "is_anf";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "is_paid";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "is_video";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "is_bundle_paid";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "is_aigc";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "is_press_release";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_ArticleFeatures._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.decodeMessage<A>(decoder:)()
{
  result = sub_22042B700();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = sub_22042B700();
    }

    if (result > 9)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_22042B720();
    goto LABEL_10;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_22042B820(), !v1))
  {
    if (v0[1] != 1 || (result = sub_22042B820(), !v1))
    {
      if (v0[2] != 1 || (result = sub_22042B820(), !v1))
      {
        if (v0[3] != 1 || (result = sub_22042B820(), !v1))
        {
          if (v0[4] != 1 || (result = sub_22042B820(), !v1))
          {
            if (v0[5] != 1 || (result = sub_22042B820(), !v1))
            {
              if (v0[6] != 1 || (result = sub_22042B820(), !v1))
              {
                if (v0[7] != 1 || (result = sub_22042B820(), !v1))
                {
                  if (v0[8] != 1 || (result = sub_22042B820(), !v1))
                  {
                    v3 = &v0[*(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures() + 52)];
                    return sub_22042B660();
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

uint64_t Com_Apple_Stocks_Personalization_ArticleFeatures.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  sub_2203FB5AC(&qword_27CF52600, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203FAF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  v2 = a2 + *(a1 + 52);
  return sub_22042B670();
}

uint64_t sub_2203FAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203FAFD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2203FB044(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_2203FB098(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FB5AC(&qword_27CF52610, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203FB114@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203FB1BC(uint64_t a1)
{
  v2 = sub_2203FB5AC(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203FB228()
{
  sub_2203FB5AC(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8])
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures() + 52);
  sub_22042B680();
  sub_2203FB5AC(&qword_27CF52420, MEMORY[0x277D216C8]);
  return sub_22042BA10() & 1;
}

uint64_t sub_2203FB518()
{
  result = sub_22042B680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2203FB5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.getter()
{
  v1 = *v0;
  sub_2203DF3D8(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2203DF1B0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List() + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List()
{
  result = qword_280FA0600;
  if (!qword_280FA0600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List() + 20);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22042D6B0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List() + 20);
  return sub_22042B670();
}

uint64_t sub_2203FB868()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA0630);
  __swift_project_value_buffer(v0, qword_280FA0630);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3F0;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "little_endian_bytes";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22042B8A0();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA0628 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA0630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22042B740();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22042B840();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List() + 20);
  return sub_22042B660();
}

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2203FC480(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List() + 20);
  sub_22042B680();
  sub_2203FC7AC(&qword_27CF52420, MEMORY[0x277D216C8]);
  return sub_22042BA10() & 1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  sub_2203FC7AC(&qword_27CF52618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203FBCD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_22042D6B0;
  v2 = a2 + *(a1 + 20);
  return sub_22042B670();
}

uint64_t sub_2203FBD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FC7AC(&qword_27CF52628, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203FBDCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA0628 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA0630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203FBE74(uint64_t a1)
{
  v2 = sub_2203FC7AC(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203FBEE0()
{
  sub_2203FC7AC(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return sub_22042B800();
}

uint64_t sub_2203FBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2203FC480(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22042B680();
  sub_2203FC7AC(&qword_27CF52420, MEMORY[0x277D216C8]);
  return sub_22042BA10() & 1;
}

uint64_t sub_2203FC008@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22042A430();
    if (v10)
    {
      v11 = sub_22042A460();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22042A450();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22042A430();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22042A460();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22042A450();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2203FC238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2203FC3C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2203DF1B0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2203FC008(v14, a3, a4, &v13);
  v10 = v4;
  sub_2203DF1B0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2203FC3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22042A430();
  v11 = result;
  if (result)
  {
    result = sub_22042A460();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22042A450();
  sub_2203FC008(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2203FC480(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2203DF3D8(a3, a4);
          return sub_2203FC238(v13, a2, a3, a4) & 1;
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

uint64_t sub_2203FC730()
{
  result = sub_22042B680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2203FC7AC(unint64_t *a1, void (*a2)(uint64_t))
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

void UserEventsFeatureResolver.resolveFeatures(inputKeys:configuration:nodeID:)(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = a1[4];
  v13 = a1[5];
  v16 = a1[8];
  v17 = a1[9];
  v14 = a1[6];
  v15 = a1[7];
  v22 = *(a1 + 28);
  v20 = a1[12];
  v21 = a1[13];
  v18 = a1[10];
  v19 = a1[11];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v5 = *(v2 + 16);
  v6 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = *(*v5 + *MEMORY[0x277D841D0] + 16);

  os_unfair_lock_lock((v5 + v6));
  sub_2203FCAA8(v5 + v7, a2);
  os_unfair_lock_unlock((v5 + v6));
  if (v3)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_2203FC90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2203FCC64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203FCCBC(a1, v12);
  v13 = sub_22042B370();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    return (*(v14 + 32))(a4, v12, v13);
  }

  sub_2203FCD20(a1);
  sub_2203FCD20(v12);
  v15 = *(a2 + 24);
  v16 = *(a3 + 152);
  v18[0] = *(a3 + 136);
  v18[1] = v16;
  v19 = *(a3 + 168);
  sub_2203C6B90(v18, a4);
  (*(v14 + 16))(a1, a4, v13);
  return (*(v14 + 56))(a1, 0, 1, v13);
}

uint64_t UserEventsFeatureResolver.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t UserEventsFeatureResolver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_2203FCB30(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = a1[4];
  v13 = a1[5];
  v10 = a1[2];
  v11 = a1[3];
  v16 = a1[8];
  v17 = a1[9];
  v14 = a1[6];
  v15 = a1[7];
  v22 = *(a1 + 28);
  v20 = a1[12];
  v21 = a1[13];
  v18 = a1[10];
  v19 = a1[11];
  v8 = *a1;
  v9 = a1[1];
  v5 = *(*v2 + 16);
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  sub_2203FCD7C(v5 + v6, a2);
  os_unfair_lock_unlock((v5 + v7));
  if (v3)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_2203FCC64()
{
  if (!qword_280FA22F0)
  {
    sub_22042B370();
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA22F0);
    }
  }
}

uint64_t sub_2203FCCBC(uint64_t a1, uint64_t a2)
{
  sub_2203FCC64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203FCD20(uint64_t a1)
{
  sub_2203FCC64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_GroupType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *&aUnknown_3[8 * *v0];
  v2 = qword_22042FD78[*v0];
  return result;
}

unint64_t Com_Apple_Stocks_Personalization_GroupType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2203FCE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203FD48C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2203FCE8C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52630);
  __swift_project_value_buffer(v0, qword_27CF52630);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042FDB0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "GROUP_TYPE_UNKNOWN";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "GROUP_TYPE_CURATED";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "GROUP_TYPE_TOP_STORIES";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "GROUP_TYPE_SYMBOL";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "GROUP_TYPE_MORE_FROM";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "GROUP_TYPE_RELATED";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "GROUP_TYPE_AD";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_GroupType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F00 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203FD224()
{
  result = qword_27CF52648;
  if (!qword_27CF52648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52648);
  }

  return result;
}

unint64_t sub_2203FD27C()
{
  result = qword_27CF52650;
  if (!qword_27CF52650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52650);
  }

  return result;
}

unint64_t sub_2203FD2D4()
{
  result = qword_27CF52658;
  if (!qword_27CF52658)
  {
    sub_2203FD32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52658);
  }

  return result;
}

void sub_2203FD32C()
{
  if (!qword_27CF52660)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52660);
    }
  }
}

unint64_t sub_2203FD380()
{
  result = qword_27CF52668;
  if (!qword_27CF52668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52668);
  }

  return result;
}

uint64_t sub_2203FD3D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F00 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2203FD48C()
{
  result = qword_27CF52670;
  if (!qword_27CF52670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52670);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.humanReadableJSON(headlineService:tagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_22042BA70();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_22042B6A0();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = sub_22042AE70();
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v13 = *(v12 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2203FD694, 0, 0);
}

uint64_t sub_2203FD694()
{
  v23 = v0;
  v22[5] = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = v0[7];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_2203FE6B0();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_2203FFAE4(*(v4 + 16), 0);
    v8 = sub_220401AC4(v22, v7 + 4, v6, v5);
    sub_220401C1C();
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v10 = v0[8];
  v9 = v0[9];
  sub_22042B940();

  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v12 = sub_2203FEC38();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = sub_2203FFAE4(*(v12 + 16), 0);
    v16 = sub_220401AC4(v22, v15 + 4, v14, v13);
    sub_220401C1C();
    if (v16 == v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_9:
  sub_22042B930();

  v17 = sub_22042AEA0();
  v0[20] = sub_22042AE90();

  v18 = *(MEMORY[0x277D6CF28] + 4);
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_2203FD8DC;
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_2203FD8DC()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_2203FE5E8;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_2203FDA2C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2203FDA2C()
{
  v137 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v134 = v1 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_34:
    v38 = v131;
    if (v131 >> 62)
    {
      goto LABEL_78;
    }

    v39 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
    v40 = v132;
    v125 = v1;
    if (v39)
    {
      v41 = 0;
      v128 = v38 & 0xFFFFFFFFFFFFFF8;
      v130 = v38 & 0xC000000000000001;
      v42 = MEMORY[0x277D84F98];
      v126 = v39;
      do
      {
        if (v130)
        {
          v45 = MEMORY[0x223D7C0A0](v41, v38);
          v46 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v41 >= *(v128 + 16))
          {
            goto LABEL_74;
          }

          v45 = *(v38 + 8 * v41 + 32);
          swift_unknownObjectRetain();
          v46 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }
        }

        v135 = v46;
        v47 = [v45 identifier];
        v48 = sub_22042BA30();
        v50 = v49;

        v51 = [v45 name];
        v40 = sub_22042BA30();
        v53 = v52;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = sub_2203FFB78(v48, v50);
        v55 = v42[2];
        v56 = (v54 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_75;
        }

        v58 = v54;
        if (v42[3] >= v57)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v54)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_22040139C();
            if (v58)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
          sub_2204004B8(v57, isUniquelyReferenced_nonNull_native);
          v59 = sub_2203FFB78(v48, v50);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_61;
          }

          v38 = v59;
          if (v58)
          {
LABEL_38:

            v43 = (v42[7] + 16 * v38);
            v44 = v43[1];
            *v43 = v40;
            v43[1] = v53;

            swift_unknownObjectRelease();
            goto LABEL_39;
          }
        }

        v42[(v38 >> 6) + 8] |= 1 << v38;
        v61 = (v42[6] + 16 * v38);
        *v61 = v48;
        v61[1] = v50;
        v62 = (v42[7] + 16 * v38);
        *v62 = v40;
        v62[1] = v53;
        swift_unknownObjectRelease();
        v63 = v42[2];
        v22 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v22)
        {
          __break(1u);
LABEL_78:
          v123 = v1;
          v124 = sub_22042BE10();
          v1 = v123;
          v39 = v124;
          goto LABEL_36;
        }

        v42[2] = v64;
LABEL_39:
        ++v41;
        v38 = v131;
        v40 = v132;
      }

      while (v135 != v126);
    }

    v65 = v40[22];
    v66 = v40[15];
    v67 = v40[9];
    v136 = sub_22042AE20();

    v68 = sub_22042A380();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    sub_22042A370();
    v71 = sub_22042A3E0();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    sub_22042A3D0();
    v74 = *(v68 + 48);
    v75 = *(v68 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_22042B690();
    type metadata accessor for Com_Apple_Stocks_Personalization_Session();
    sub_220401C24(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    v76 = sub_22042B7B0();
    v78 = v40[14];
    v77 = v40[15];
    if (v65)
    {
      (*(v78 + 8))(v77, v40[13], v76);
    }

    else
    {
      v79 = v40[11];
      v80 = v40[12];
      v81 = v40[10];
      (*(v78 + 8))(v77, v40[13]);
      sub_22042BA60();
      v82 = sub_22042BA40();
      v84 = v83;

      result = (*(v79 + 8))(v80, v81);
      if (v84 >> 60 == 15)
      {
        __break(1u);
        return result;
      }

      v86 = v40[18];
      v87 = v40[16];

      sub_220401C24(&qword_27CF52678, MEMORY[0x277D6CED0]);
      sub_22042A360();
      v89 = v40[19];
      v90 = *(v132 + 144);
      v91 = *(v132 + 136);
      v92 = *(v132 + 128);
      sub_2203DF298(v82, v84);

      sub_2203FF588(v90, v136, v89);

      v93 = *(v91 + 8);
      v40 = v132;
      v93(v90, v92);
      sub_220401C24(&qword_280FA2408, MEMORY[0x277D6CED0]);
      v94 = sub_22042A3C0();
      v95 = *(v132 + 152);
      v96 = *(v132 + 128);
      v103 = v94;
      v105 = v104;
      v106 = objc_opt_self();
      v93(v95, v96);

      v107 = sub_22042A540();
      sub_2203DF1B0(v103, v105);
      *(v132 + 32) = 0;
      v108 = [v106 JSONObjectWithData:v107 options:0 error:v132 + 32];

      v109 = *(v132 + 32);
      if (v108)
      {
        *(v132 + 40) = 0;
        v110 = v109;
        v111 = [v106 dataWithJSONObject:v108 options:2 error:v132 + 40];
        swift_unknownObjectRelease();
        v112 = *(v132 + 40);
        if (v111)
        {
          v113 = *(v132 + 128);
          v114 = *(v132 + 48);
          isUniquelyReferenced_nonNull_native = sub_22042A550();
          v38 = v115;

          sub_22042A360();
LABEL_76:
          v118 = v40[18];
          v119 = v40[19];
          v120 = v40[15];
          v121 = v40[12];

          sub_2203DF1B0(isUniquelyReferenced_nonNull_native, v38);

          v101 = v40[1];
          v122 = *MEMORY[0x277D85DE8];
          goto LABEL_65;
        }

        v117 = v112;

        sub_22042A480();

        swift_willThrow();
      }

      else
      {
        v116 = v109;

        sub_22042A480();

        swift_willThrow();
      }
    }

    v98 = v40[18];
    v97 = v40[19];
    v99 = v40[15];
    v100 = v40[12];

    v101 = v40[1];
    v102 = *MEMORY[0x277D85DE8];
LABEL_65:

    return v101();
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v133 = MEMORY[0x277D84F98];
LABEL_4:
  v0 = v4;
  while (1)
  {
    if (v5)
    {
      v6 = v1;
      v7 = MEMORY[0x223D7C0A0](v0);
      v4 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v0 >= *(v134 + 16))
      {
        goto LABEL_32;
      }

      v6 = v1;
      v7 = *(v1 + 8 * v0 + 32);
      swift_unknownObjectRetain();
      v4 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v134 = v1 & 0xFFFFFFFFFFFFFF8;
        v36 = v1;
        v37 = sub_22042BE10();
        v1 = v36;
        isUniquelyReferenced_nonNull_native = v37;
        v131 = v2;
        v132 = v0;
        if (!v37)
        {
          goto LABEL_34;
        }

        goto LABEL_3;
      }
    }

    v8 = [v7 identifier];
    v9 = sub_22042BA30();
    v11 = v10;

    v12 = [v7 title];
    if (v12)
    {
      break;
    }

    v13 = sub_2203FFB78(v9, v11);
    v2 = v14;

    if (v2)
    {
      v26 = v133;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_22040139C();
        v26 = v133;
      }

      v2 = 16 * v13;
      v27 = *(*(v26 + 48) + 16 * v13 + 8);

      v28 = *(*(v26 + 56) + 16 * v13 + 8);

      v133 = v26;
      sub_220401914(v13, v26);
LABEL_25:
      swift_unknownObjectRelease();
LABEL_29:
      v1 = v6;
      if (v4 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    ++v0;
    v1 = v6;
    if (v4 == isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }
  }

  v15 = v12;
  v127 = sub_22042BA30();
  v129 = v16;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_2203FFB78(v9, v11);
  v20 = v133[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_80;
  }

  v24 = v19;
  if (v133[3] >= v23)
  {
    if ((v17 & 1) == 0)
    {
      v31 = v18;
      sub_22040139C();
      v18 = v31;
      if (v24)
      {
LABEL_24:
        v2 = v18;

        v29 = (v133[7] + 16 * v2);
        v30 = v29[1];
        *v29 = v127;
        v29[1] = v129;

        goto LABEL_25;
      }

LABEL_27:
      v2 = v133;
      v133[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v133[6] + 16 * v18);
      *v32 = v9;
      v32[1] = v11;
      v33 = (v133[7] + 16 * v18);
      *v33 = v127;
      v33[1] = v129;
      swift_unknownObjectRelease();
      v34 = v133[2];
      v22 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v22)
      {
        v133[2] = v35;
        goto LABEL_29;
      }

LABEL_80:
      __break(1u);
    }

LABEL_23:
    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  sub_2204004B8(v23, v17);
  v18 = sub_2203FFB78(v9, v11);
  if ((v24 & 1) == (v25 & 1))
  {
    goto LABEL_23;
  }

LABEL_61:
  v88 = *MEMORY[0x277D85DE8];

  return sub_22042BF70();
}

uint64_t sub_2203FE5E8()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[20];

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[12];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_2203FE6B0()
{
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v44 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v11 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + 16);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v51 = *(v23 + 72);
    v29 = MEMORY[0x277D84F90];
    v45 = (v7 + 48);
    v46 = v6;
    v30 = v48;
    v49 = v14;
    while (1)
    {
      sub_22040206C(v28, v25);
      sub_2204020D0(v25, v19, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      v31 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
      if ((*(*(v31 - 8) + 48))(v19, 1, v31) != 1)
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v50 = v29;
          sub_220402214(v19, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2204020D0(&v14[*(v47 + 20)], v5, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v32 = *v45;
          if ((*v45)(v5, 1, v6) == 1)
          {
            *v30 = 0;
            *(v30 + 1) = 0xE000000000000000;
            v33 = *(v6 + 20);
            v34 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
            (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
            v35 = &v30[*(v6 + 24)];
            sub_22042B670();
            sub_22040213C(v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            if (v32(v5, 1, v6) != 1)
            {
              sub_22040219C(v5);
            }
          }

          else
          {
            sub_22040213C(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            sub_220402214(v5, v30, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          }

          v36 = v5;
          v38 = *v30;
          v37 = *(v30 + 1);

          sub_22040213C(v30, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          sub_22040213C(v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
          v29 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_22041ECD0(0, *(v29 + 2) + 1, 1, v29);
          }

          v40 = *(v29 + 2);
          v39 = *(v29 + 3);
          if (v40 >= v39 >> 1)
          {
            v29 = sub_22041ECD0((v39 > 1), v40 + 1, 1, v29);
          }

          *(v29 + 2) = v40 + 1;
          v41 = &v29[16 * v40];
          *(v41 + 4) = v38;
          *(v41 + 5) = v37;
          v5 = v36;
          v6 = v46;
          v30 = v48;
          v14 = v49;
          goto LABEL_5;
        }

        sub_22040213C(v19, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      }

      sub_22040213C(v25, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
LABEL_5:
      v28 += v51;
      if (!--v27)
      {
        goto LABEL_18;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:
  v42 = sub_2204216C8(v29);

  return v42;
}

uint64_t sub_2203FEC38()
{
  v76 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v1 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v2);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v81 = &v73 - v8;
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v79 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v19 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220402018(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v73 - v26;
  v28 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v29 = *(*(v28 - 8) + 64);
  result = MEMORY[0x28223BE20](v28 - 8, v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + 16);
  v36 = *(v35 + 16);
  if (v36)
  {
    v77 = v4;
    v37 = v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v84 = *(v32 + 72);
    v38 = MEMORY[0x277D84F90];
    v39 = (v15 + 48);
    v75 = xmmword_22042D3F0;
    v82 = v14;
    v74 = v13;
    v78 = v22;
    while (1)
    {
      v40 = v39;
      sub_22040206C(v37, v34);
      sub_2204020D0(v34, v27, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      v41 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
      if ((*(*(v41 - 8) + 48))(v27, 1, v41) != 1)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22040213C(v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
        }

        else
        {
          v83 = v38;
          sub_220402214(v27, v22, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          sub_2204020D0(&v22[*(v80 + 20)], v13, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v42 = *v40;
          if ((*v40)(v13, 1, v14) == 1)
          {
            v43 = v79;
            *v79 = 0;
            v43[1] = 0xE000000000000000;
            v44 = *(v82 + 20);
            v45 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
            v46 = v43 + v44;
            v14 = v82;
            (*(*(v45 - 8) + 56))(v46, 1, 1, v45);
            v47 = v43 + *(v14 + 24);
            sub_22042B670();
            if (v42(v13, 1, v14) != 1)
            {
              sub_22040219C(v13);
            }
          }

          else
          {
            v43 = v79;
            sub_220402214(v13, v79, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          }

          v48 = v81;
          sub_2204020D0(v43 + *(v14 + 20), v81, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
          sub_22040213C(v43, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
          v49 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
          if ((*(*(v49 - 8) + 48))(v48, 1, v49) != 1)
          {
            v50 = v77;
            sub_220402214(v48, v77, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
            v51 = *(v50 + *(v76 + 20));
            swift_beginAccess();
            v52 = v51[2];
            sub_22040227C(0, &qword_280FA2560, MEMORY[0x277D84560]);
            inited = swift_initStackObject();
            *(inited + 16) = v75;
            swift_beginAccess();
            v54 = v51[3];
            v55 = v51[4];
            *(inited + 32) = v54;
            *(inited + 40) = v55;
            v56 = *(v52 + 16);

            result = swift_isUniquelyReferenced_nonNull_native();
            if (!result || (v57 = *(v52 + 24) >> 1, v57 <= v56))
            {
              result = sub_22041ECD0(result, v56 + 1, 1, v52);
              v52 = result;
              v57 = *(result + 24) >> 1;
            }

            v22 = v78;
            if (v57 <= *(v52 + 16))
            {
              goto LABEL_51;
            }

            swift_arrayInitWithCopy();

            ++*(v52 + 16);
            sub_22040213C(v22, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
            sub_22040213C(v77, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
            sub_22040213C(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
            v38 = v83;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_22041EF44(0, v38[2] + 1, 1, v38);
              v38 = result;
            }

            v59 = v38[2];
            v58 = v38[3];
            if (v59 >= v58 >> 1)
            {
              result = sub_22041EF44((v58 > 1), v59 + 1, 1, v38);
              v39 = v40;
              v38 = result;
            }

            else
            {
              v39 = v40;
            }

            v38[2] = v59 + 1;
            v38[v59 + 4] = v52;
            v13 = v74;
            v14 = v82;
            goto LABEL_10;
          }

          v22 = v78;
          sub_22040213C(v78, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
          v38 = v83;
        }
      }

      result = sub_22040213C(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
      v39 = v40;
LABEL_10:
      v37 += v84;
      if (!--v36)
      {
        goto LABEL_26;
      }
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_26:
  v60 = v38[2];
  if (!v60)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_45:

    v72 = sub_2204216C8(v62);

    return v72;
  }

  v61 = 0;
  v62 = MEMORY[0x277D84F90];
  while (v61 < v38[2])
  {
    v63 = v38[v61 + 4];
    v64 = *(v63 + 16);
    v65 = *(v62 + 16);
    v66 = v65 + v64;
    if (__OFADD__(v65, v64))
    {
      goto LABEL_47;
    }

    v67 = v38[v61 + 4];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v66 <= *(v62 + 24) >> 1)
    {
      if (*(v63 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v65 <= v66)
      {
        v68 = v65 + v64;
      }

      else
      {
        v68 = v65;
      }

      result = sub_22041ECD0(result, v68, 1, v62);
      v62 = result;
      if (*(v63 + 16))
      {
LABEL_40:
        if ((*(v62 + 24) >> 1) - *(v62 + 16) < v64)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v69 = *(v62 + 16);
          v70 = __OFADD__(v69, v64);
          v71 = v69 + v64;
          if (v70)
          {
            goto LABEL_50;
          }

          *(v62 + 16) = v71;
        }

        goto LABEL_29;
      }
    }

    if (v64)
    {
      goto LABEL_48;
    }

LABEL_29:
    if (v60 == ++v61)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

size_t sub_2203FF588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22042AE70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v63 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v54[-v14];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v54[-v17];
  v64 = *(v7 + 16);
  v65 = v7 + 16;
  v64(&v54[-v17], a1, v6);
  v19 = (*(v7 + 88))(v18, v6);
  v20 = v19;
  if (v19 == *MEMORY[0x277D6CEC0])
  {
    (*(v7 + 96))(v18, v6);
    v21 = *(*v18 + 16);
    v22 = swift_allocObject();

    v24 = sub_220401D3C(v23, a2);

    *(v22 + 16) = v24;
    *a3 = v22;
    (*(v7 + 104))(a3, v20, v6);
  }

  else if (v19 == *MEMORY[0x277D6CEB8])
  {
    (*(v7 + 96))(v18, v6);
    v57 = *v18;
    v26 = *(v57 + 16);
    v27 = *(v26 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v55 = v20;
      v56 = a3;
      v66 = MEMORY[0x277D84F90];

      result = sub_2203CE9AC(0, v27, 0);
      v29 = 0;
      v28 = v66;
      v61 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v62 = v26;
      v60 = v26 + v61;
      v58 = (v7 + 32);
      v59 = v7 + 8;
      while (v29 < *(v26 + 16))
      {
        v30 = v27;
        v31 = *(v7 + 72);
        v32 = v63;
        v64(v63, v60 + v31 * v29, v6);
        v33 = a2;
        sub_2203FF588(v32, a2);
        v34 = v7;
        (*(v7 + 8))(v32, v6);
        v66 = v28;
        v35 = v6;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2203CE9AC(v36 > 1, v37 + 1, 1);
          v28 = v66;
        }

        ++v29;
        *(v28 + 16) = v37 + 1;
        result = (*v58)(v28 + v61 + v37 * v31, v15, v35);
        v27 = v30;
        v6 = v35;
        v7 = v34;
        a2 = v33;
        v26 = v62;
        if (v30 == v29)
        {

          a3 = v56;
          v20 = v55;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      v53 = swift_allocObject();
      *(v53 + 16) = v28;
      *a3 = v53;
      (*(v7 + 104))(a3, v20, v6);
    }
  }

  else if (v19 == *MEMORY[0x277D6CEC8])
  {
    v38 = a2;
    v39 = v19;
    v65 = v7;
    v40 = *(v7 + 96);
    v41 = v6;
    v40(v18, v6);
    v43 = *(*v18 + 16);
    v42 = *(*v18 + 24);
    v44 = swift_allocObject();
    v45 = *(v38 + 16);

    if (v45)
    {
      v46 = sub_2203FFB78(v43, v42);
      if (v47)
      {
        v48 = (*(v38 + 56) + 16 * v46);
        v56 = a3;
        v49 = *v48;
        v50 = v48[1];
        v66 = 10272;
        v67 = 0xE200000000000000;
        swift_bridgeObjectRetain_n();
        MEMORY[0x223D7BDE0](v43, v42);
        MEMORY[0x223D7BDE0](41, 0xE100000000000000);
        v51 = v66;
        v52 = v67;
        v66 = v49;
        v67 = v50;

        MEMORY[0x223D7BDE0](v51, v52);

        a3 = v56;
        swift_bridgeObjectRelease_n();

        v43 = v66;
        v42 = v67;
      }
    }

    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    *a3 = v44;
    (*(v65 + 104))(a3, v39, v41);
  }

  else
  {
    v64(a3, a1, v6);
    return (*(v7 + 8))(v18, v6);
  }

  return result;
}

void *sub_2203FFAE4(uint64_t a1, uint64_t a2)
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

  sub_22040227C(0, &qword_280FA2560, MEMORY[0x277D84560]);
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

unint64_t sub_2203FFB78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22042BFC0();
  sub_22042BAA0();
  v6 = sub_22042BFE0();

  return sub_220400DB4(a1, a2, v6);
}

uint64_t sub_2203FFBF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_220401C6C(0, &qword_280FA0300, &qword_280FA25C8, MEMORY[0x277D83940], sub_22040227C);
  v38 = a2;
  result = sub_22042BE30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2203FFEC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2204022D0(0, &qword_280FA02F8);
  v37 = a2;
  result = sub_22042BE30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2204001CC(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v9 = *v6;
  if (*(*v6 + 24) > a1)
  {
    v10 = *(*v6 + 24);
  }

  sub_220401C6C(0, a3, a4, a5, sub_2203CFDB8);
  v40 = a2;
  result = sub_22042BE30();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v7;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = (*(v9 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v9 + 56) + 40 * v25;
      if (v40)
      {
        a6(v29, v42);
      }

      else
      {
        sub_2203C37C0(v29, v42);
      }

      v30 = *(v12 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v27;
      v21[1] = v28;
      result = (a6)(v42, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v7 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v7 = v12;
  return result;
}

uint64_t sub_2204004B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2204022D0(0, &qword_27CF52688);
  v40 = a2;
  result = sub_22042BE30();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22040077C(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_22042A9A0();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_220401CD8(0, &qword_280FA2598, MEMORY[0x277D69428]);
  v47 = a2;
  result = sub_22042BE30();
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v2;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_220400B10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2204022D0(0, &unk_280FA02E8);
  v38 = a2;
  result = sub_22042BE30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_220400DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22042BF50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_220400E6C()
{
  v1 = v0;
  sub_220401C6C(0, &qword_280FA0300, &qword_280FA25C8, MEMORY[0x277D83940], sub_22040227C);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_220401008()
{
  v1 = v0;
  sub_2204022D0(0, &qword_280FA02F8);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2204011D4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v5 = v4;
  sub_220401C6C(0, a1, a2, a3, sub_2203CFDB8);
  v6 = *v4;
  v7 = sub_22042BE20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = 40 * v21;
        sub_2203C37C0(*(v6 + 56) + 40 * v21, v30);
        v27 = (*(v8 + 48) + v22);
        *v27 = v24;
        v27[1] = v25;
        a4(v30, *(v8 + 56) + v26);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v5 = v28;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_22040139C()
{
  v1 = v0;
  sub_2204022D0(0, &qword_27CF52688);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_220401518()
{
  v1 = v0;
  v37 = sub_22042A9A0();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220401CD8(0, &qword_280FA2598, MEMORY[0x277D69428]);
  v5 = *v0;
  v6 = sub_22042BE20();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2204017A8()
{
  v1 = v0;
  sub_2204022D0(0, &unk_280FA02E8);
  v2 = *v0;
  v3 = sub_22042BE20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_220401914(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22042BD30() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22042BFC0();

      sub_22042BAA0();
      v13 = sub_22042BFE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_220401AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_220401C24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220401C6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22042BE50();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220401CD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BE50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220401D3C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = sub_22042AE70();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v44, v5);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v41 = v36 - v9;
  sub_220401CD8(0, &qword_27CF52680, MEMORY[0x277D6CED0]);
  result = sub_22042BE20();
  v11 = result;
  v12 = 0;
  v45 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v38 = v3 + 8;
  v39 = v3 + 16;
  v43 = v3;
  v36[2] = v3 + 32;
  v37 = result + 64;
  v40 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v49 = 16 * v23;
      v24 = v44;
      v25 = *(v45 + 56);
      v26 = (*(v45 + 48) + 16 * v23);
      v27 = v26[1];
      v50 = *v26;
      v28 = v43;
      v48 = *(v43 + 72) * v23;
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v48, v44);

      v30 = v42;
      sub_2203FF588(v29, v46);
      (*(v28 + 8))(v29, v24);
      *(v37 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v11 = v40;
      v31 = v48;
      v32 = (*(v40 + 48) + v49);
      *v32 = v50;
      v32[1] = v27;
      result = (*(v28 + 32))(*(v11 + 56) + v31, v30, v24);
      v33 = *(v11 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      *(v11 + 16) = v35;
      v18 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220402018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22042BCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22040206C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204020D0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220402018(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22040213C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22040219C(uint64_t a1)
{
  sub_220402018(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220402214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22040227C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2204022D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22042BE50();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_FeedType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *&aUnknown_4[8 * *v0];
  v2 = qword_22042FF90[*v0];
  return result;
}

unint64_t Com_Apple_Stocks_Personalization_SessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionMessageVersion.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_2204023B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2204023CC()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_2204023F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_220402414(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_220402434(uint64_t a1, uint64_t a2)
{
  v4 = sub_220402980();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_220402480(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_2204024BC()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52690);
  __swift_project_value_buffer(v0, qword_27CF52690);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v7 + 8) = 31;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SESSION_MESSAGE_VERSION_ONE";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F08 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220402718()
{
  result = qword_280FA1D08;
  if (!qword_280FA1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1D08);
  }

  return result;
}

unint64_t sub_220402770()
{
  result = qword_280FA1CF8;
  if (!qword_280FA1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1CF8);
  }

  return result;
}

unint64_t sub_2204027C8()
{
  result = qword_27CF526A8;
  if (!qword_27CF526A8)
  {
    sub_220402820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF526A8);
  }

  return result;
}

void sub_220402820()
{
  if (!qword_27CF526B0)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF526B0);
    }
  }
}

unint64_t sub_220402874()
{
  result = qword_280FA1D00;
  if (!qword_280FA1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1D00);
  }

  return result;
}

uint64_t sub_2204028C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F08 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52690);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220402980()
{
  result = qword_280FA1D10[0];
  if (!qword_280FA1D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA1D10);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(v1 + *(v9 + 36), v8, &qword_280FA2228, v3);
  v10 = sub_22042B600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22042B5F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_220406BCC(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_Session()
{
  result = qword_280FA1620;
  if (!qword_280FA1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_Stocks_Personalization_Session.hasStartedAt.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(v0 + *(v7 + 36), v6, &qword_280FA2228, v1);
  v8 = sub_22042B600();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_220406BCC(v6, &qword_280FA2228, v1);
  return v9;
}

uint64_t Com_Apple_Stocks_Personalization_Session.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  sub_220406BCC(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_Stocks_Personalization_Session.hasEndedAt.getter()
{
  v1 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(v0 + *(v7 + 40), v6, &qword_280FA2228, v1);
  v8 = sub_22042B600();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_220406BCC(v6, &qword_280FA2228, v1);
  return v9;
}

uint64_t Com_Apple_Stocks_Personalization_Session.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  sub_220406BCC(v1 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
  v4 = sub_22042B600();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220403034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(a1 + *(v10 + 36), v9, &qword_280FA2228, v4);
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_22042B5F0();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_2204031CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  sub_220406BCC(a2 + v10, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_Stocks_Personalization_Session.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  *(v5 + 12) = v16;
  sub_220406AF0(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220406DAC;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_Session.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  sub_220406BCC(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(v1 + *(v9 + 40), v8, &qword_280FA2228, v3);
  v10 = sub_22042B600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22042B5F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_220406BCC(v8, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_220403780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(a1 + *(v10 + 40), v9, &qword_280FA2228, v4);
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_22042B5F0();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  return result;
}

uint64_t sub_220403918(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  sub_220406BCC(a2 + v10, &qword_280FA2228, MEMORY[0x277D21570]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_Stocks_Personalization_Session.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B600();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  *(v5 + 12) = v16;
  sub_220406AF0(v1 + v16, v9, &qword_280FA2228, MEMORY[0x277D21570]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B5F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_220406BCC(v9, &qword_280FA2228, MEMORY[0x277D21570]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220403CA0;
}

void sub_220403CA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_220406BCC(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_220406BCC(v9 + v3, &qword_280FA2228, MEMORY[0x277D21570]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_Session.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  sub_220406BCC(v0 + v1, &qword_280FA2228, MEMORY[0x277D21570]);
  v2 = sub_22042B600();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.clientVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.clientVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_Stocks_Personalization_Session.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Stocks_Personalization_Session.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 32);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 32);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_Session.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  v3 = a1 + v2[8];
  sub_22042B670();
  v4 = v2[9];
  v5 = sub_22042B600();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[10];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_220404224()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF526B8);
  __swift_project_value_buffer(v0, qword_27CF526B8);
  sub_220406D48(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220430150;
  v5 = v21 + v4;
  v6 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ended_at";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "events";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "client_version";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "message_version";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_Session._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F10 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF526B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_Session.decodeMessage<A>(decoder:)()
{
  result = sub_22042B700();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
            sub_220406D00(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
            sub_22042B790();
            break;
          case 5:
LABEL_18:
            sub_22042B770();
            break;
          case 6:
            sub_220402980();
            sub_22042B730();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_220404754();
            break;
          case 3:
            sub_220404808();
            break;
        }
      }

      result = sub_22042B700();
    }
  }

  return result;
}

uint64_t sub_220404754()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  sub_22042B600();
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570]);
  return sub_22042B7A0();
}

uint64_t sub_220404808()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  sub_22042B600();
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_Session.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_22042B860(), !v4))
  {
    result = sub_220404A84(v3, a1, a2, a3);
    if (!v4)
    {
      sub_220404CD0(v3, a1, a2, a3);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
        sub_220406D00(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        sub_22042B880();
      }

      v12 = *(v3 + 32);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_22042B860();
      }

      if (*(v3 + 40))
      {
        v15 = *(v3 + 40);
        v16 = *(v3 + 48);
        sub_220402980();
        sub_22042B830();
      }

      v14 = v3 + *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 32);
      return sub_22042B660();
    }
  }

  return result;
}

uint64_t sub_220404A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(a1 + *(v17 + 36), v10, &qword_280FA2228, v5);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_220406BCC(v10, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570]);
  sub_22042B890();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_220404CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_22042B600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406AF0(a1 + *(v17 + 40), v10, &qword_280FA2228, v5);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_220406BCC(v10, &qword_280FA2228, MEMORY[0x277D21570]);
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_220406D00(&qword_280FA2230, MEMORY[0x277D21570]);
  sub_22042B890();
  return (*(v12 + 8))(v16, v11);
}

uint64_t Com_Apple_Stocks_Personalization_Session.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_220406D00(&qword_27CF526D0, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_220404FA8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v4 = a2 + a1[8];
  sub_22042B670();
  v5 = a1[9];
  v6 = sub_22042B600();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[10];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_2204050A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220405118(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22040518C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_2204051E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_220406D00(&qword_27CF526E0, type metadata accessor for Com_Apple_Stocks_Personalization_Session);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22040525C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51F10 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF526B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_220405304(uint64_t a1)
{
  v2 = sub_220406D00(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_220405370()
{
  sub_220406D00(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);

  return sub_22042B800();
}

uint64_t sub_2204053F0(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89, v6);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_220406D48(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v75 - v12;
  sub_220406A10(0, &qword_27CF52580, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  v84 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v86 = &v75 - v17;
  v87 = sub_22042B600();
  v18 = *(v87 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v87, v20);
  v82 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], v8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v75 - v26;
  sub_220406A10(0, &qword_27CF52588, &qword_280FA2228, v22);
  v85 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v75 - v31;
  v90 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v33 = *(*(v90 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v90, v34);
  v92 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v40 = &v75 - v39;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
LABEL_27:
    v69 = 0;
    return v69 & 1;
  }

  if (!v41 || a1 == a2)
  {
    v69 = 1;
    return v69 & 1;
  }

  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = a1 + v42;
  v44 = a2 + v42;
  v83 = (v18 + 48);
  v75 = (v18 + 32);
  v76 = (v18 + 8);
  v81 = (v4 + 48);
  v79 = *(v38 + 72);
  v88 = v13;
  v91 = &v75 - v39;
  v77 = v27;
  while (1)
  {
    result = sub_220406A88(v43, v40, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (!v41)
    {
      break;
    }

    v46 = v92;
    sub_220406A88(v44, v92, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v47 = *(v90 + 24);
    v48 = *(v85 + 48);
    v49 = MEMORY[0x277D21570];
    sub_220406AF0(&v40[v47], v32, &qword_280FA2228, MEMORY[0x277D21570]);
    sub_220406AF0(v46 + v47, &v32[v48], &qword_280FA2228, v49);
    v50 = *v83;
    v51 = v87;
    if ((*v83)(v32, 1, v87) == 1)
    {
      v52 = v50(&v32[v48], 1, v51);
      v53 = v86;
      if (v52 != 1)
      {
        goto LABEL_22;
      }

      sub_220406BCC(v32, &qword_280FA2228, MEMORY[0x277D21570]);
      v54 = v88;
      v55 = v81;
    }

    else
    {
      v56 = v77;
      sub_220406AF0(v32, v77, &qword_280FA2228, MEMORY[0x277D21570]);
      v57 = v50(&v32[v48], 1, v51);
      v53 = v86;
      if (v57 == 1)
      {
        (*v76)(v56, v51);
LABEL_22:
        v71 = &qword_27CF52588;
        v72 = &qword_280FA2228;
        v73 = MEMORY[0x277D21570];
        v74 = v32;
LABEL_25:
        sub_220406B70(v74, v71, v72, v73);
LABEL_26:
        sub_220406C3C(v92, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        sub_220406C3C(v91, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
        goto LABEL_27;
      }

      v58 = v82;
      (*v75)(v82, &v32[v48], v51);
      sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570]);
      v78 = sub_22042BA10();
      v59 = *v76;
      (*v76)(v58, v51);
      v59(v56, v51);
      sub_220406BCC(v32, &qword_280FA2228, MEMORY[0x277D21570]);
      v54 = v88;
      v55 = v81;
      if ((v78 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v60 = *(v84 + 48);
    sub_220406AF0(v91, v53, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    sub_220406AF0(v92, v53 + v60, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    v61 = *v55;
    if ((*v55)(v53, 1, v89) == 1)
    {
      if (v61(v53 + v60, 1, v89) != 1)
      {
        goto LABEL_24;
      }

      sub_220406BCC(v53, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
    }

    else
    {
      sub_220406AF0(v53, v54, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if (v61(v53 + v60, 1, v89) == 1)
      {
        sub_220406C3C(v54, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
LABEL_24:
        v71 = &qword_27CF52580;
        v72 = qword_280FA21D0;
        v73 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event;
        v74 = v53;
        goto LABEL_25;
      }

      v62 = v80;
      sub_220406C9C(v53 + v60, v80);
      v63 = static Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.== infix(_:_:)(v88, v62);
      v64 = v62;
      v65 = v88;
      sub_220406C3C(v64, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      sub_220406C3C(v65, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      sub_220406BCC(v53, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
      if ((v63 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v66 = *(v90 + 20);
    sub_22042B680();
    sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8]);
    v67 = v91;
    v68 = v92;
    v69 = sub_22042BA10();
    sub_220406C3C(v68, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    sub_220406C3C(v67, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v69)
    {
      v44 += v79;
      v43 += v79;
      v70 = v41-- == 1;
      v40 = v91;
      if (!v70)
      {
        continue;
      }
    }

    return v69 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_220405D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22042BF50() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_220405DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_220406A88(v16, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        sub_220406A88(v17, v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        v19 = *(v4 + 20);
        v20 = &v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (!v23 || (*v20 == *v22 ? (v24 = v21 == v23) : (v24 = 0), !v24 && (sub_22042BF50() & 1) == 0))
          {
LABEL_27:
            sub_220406C3C(v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
            sub_220406C3C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
            goto LABEL_28;
          }
        }

        else if (v23)
        {
          goto LABEL_27;
        }

        v25 = *(v4 + 24);
        v26 = &v13[v25];
        v27 = *&v13[v25 + 8];
        v28 = &v9[v25];
        v29 = *(v28 + 1);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_27;
          }

          v30 = *v26 == *v28 && v27 == v29;
          if (!v30 && (sub_22042BF50() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v29)
        {
          goto LABEL_27;
        }

        sub_22042B680();
        sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8]);
        v31 = sub_22042BA10();
        sub_220406C3C(v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        sub_220406C3C(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
        if (v31)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v31 & 1;
      }
    }

    v31 = 1;
  }

  else
  {
LABEL_28:
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B8_SessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22042B600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x277D21570];
  sub_220406D48(0, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v63 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58[-v17];
  sub_220406A10(0, &qword_27CF52588, &qword_280FA2228, v10);
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v58[-v27];
  v29 = *a1;
  v30 = a1[1];
  v65 = a1;
  if ((v29 != *a2 || v30 != a2[1]) && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_18;
  }

  v60 = v9;
  v61 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  v31 = *(v61 + 36);
  v32 = *(v20 + 48);
  v64 = v5;
  v33 = MEMORY[0x277D21570];
  sub_220406AF0(v65 + v31, v28, &qword_280FA2228, MEMORY[0x277D21570]);
  v62 = a2;
  v34 = v33;
  v35 = v64;
  sub_220406AF0(a2 + v31, &v28[v32], &qword_280FA2228, v34);
  v36 = *(v35 + 48);
  if (v36(v28, 1, v4) == 1)
  {
    if (v36(&v28[v32], 1, v4) == 1)
    {
      sub_220406BCC(v28, &qword_280FA2228, MEMORY[0x277D21570]);
      goto LABEL_11;
    }

LABEL_9:
    v37 = MEMORY[0x277D21570];
    v38 = v28;
LABEL_17:
    sub_220406B70(v38, &qword_27CF52588, &qword_280FA2228, v37);
    goto LABEL_18;
  }

  sub_220406AF0(v28, v18, &qword_280FA2228, MEMORY[0x277D21570]);
  if (v36(&v28[v32], 1, v4) == 1)
  {
    (*(v35 + 8))(v18, v4);
    goto LABEL_9;
  }

  v39 = v60;
  (*(v35 + 32))(v60, &v28[v32], v4);
  sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570]);
  v59 = sub_22042BA10();
  v40 = *(v35 + 8);
  v40(v39, v4);
  v40(v18, v4);
  sub_220406BCC(v28, &qword_280FA2228, MEMORY[0x277D21570]);
  if ((v59 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v41 = v61;
  v42 = *(v61 + 40);
  v43 = *(v20 + 48);
  v44 = MEMORY[0x277D21570];
  v45 = v65;
  sub_220406AF0(v65 + v42, v25, &qword_280FA2228, MEMORY[0x277D21570]);
  sub_220406AF0(v62 + v42, &v25[v43], &qword_280FA2228, v44);
  if (v36(v25, 1, v4) != 1)
  {
    v46 = v63;
    sub_220406AF0(v25, v63, &qword_280FA2228, MEMORY[0x277D21570]);
    if (v36(&v25[v43], 1, v4) != 1)
    {
      v49 = v64;
      v50 = &v25[v43];
      v51 = v60;
      (*(v64 + 32))(v60, v50, v4);
      sub_220406D00(&qword_27CF52590, MEMORY[0x277D21570]);
      v52 = sub_22042BA10();
      v53 = *(v49 + 8);
      v53(v51, v4);
      v53(v46, v4);
      sub_220406BCC(v25, &qword_280FA2228, MEMORY[0x277D21570]);
      if ((v52 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v64 + 8))(v46, v4);
    goto LABEL_16;
  }

  if (v36(&v25[v43], 1, v4) != 1)
  {
LABEL_16:
    v37 = MEMORY[0x277D21570];
    v38 = v25;
    goto LABEL_17;
  }

  sub_220406BCC(v25, &qword_280FA2228, MEMORY[0x277D21570]);
LABEL_21:
  v54 = v62;
  if (sub_2204053F0(v45[2], v62[2]) & 1) != 0 && (v45[3] == v54[3] && v45[4] == v54[4] || (sub_22042BF50()))
  {
    v55 = v45[5];
    v56 = v54[5];
    if (*(v45 + 48))
    {
      v55 = v55 != 0;
    }

    if (*(v54 + 48) == 1)
    {
      if (v56)
      {
        if (v55 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (!v55)
      {
LABEL_34:
        v57 = *(v41 + 32);
        sub_22042B680();
        sub_220406D00(&qword_27CF52420, MEMORY[0x277D216C8]);
        v47 = sub_22042BA10();
        return v47 & 1;
      }
    }

    else if (v55 == v56)
    {
      goto LABEL_34;
    }
  }

LABEL_18:
  v47 = 0;
  return v47 & 1;
}

void sub_2204068F4()
{
  sub_220406D48(319, &unk_280FA0430, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22042B680();
    if (v1 <= 0x3F)
    {
      sub_220406D48(319, &qword_280FA2228, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220406A10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220406D48(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220406A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220406AF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220406D48(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220406B70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220406A10(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_220406BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220406D48(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220406C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220406C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220406D00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220406D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v2 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v9 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v8 + v9, v7, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_220407E70(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_22042D6B0;
  v12 = a1 + *(v10 + 20);
  sub_22042B670();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_220407E00(v7, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v9 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(v8 + v9, v7, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_220407E70(v7, a1, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  v12 = a1 + *(v10 + 52);
  sub_22042B670();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_220407E00(v7, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v9 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v8 + v9, v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_220407E70(v7, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_22042B670();
  v12 = (a1 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_220407E00(v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_220407450(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 4);
  *(v9 + 3) = a1;
  *(v9 + 4) = a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 2);
  *(v7 + 2) = a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_22040B3C8(v12);
    *(v2 + v9) = v12;
  }

  sub_220407E70(a1, v8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_22040BA48(v8, &v12[v17], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  return swift_endAccess();
}

uint64_t sub_2204077B0(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_22040B3C8(v10);
    *(v4 + v7) = v10;
  }

  v14 = &v10[*a2];
  result = swift_beginAccess();
  *v14 = v5;
  v14[8] = v6;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_22040B3C8(v12);
    *(v2 + v9) = v12;
  }

  sub_220407E70(a1, v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_22040BA48(v8, &v12[v17], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.setter(uint64_t a1)
{
  v2 = v1;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_22040B3C8(v12);
    *(v2 + v9) = v12;
  }

  sub_220407E70(a1, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_22040BA48(v8, &v12[v17], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *&v7[v11] = a1;
  return result;
}

uint64_t sub_220407C54(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22040B3C8(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a2;
  swift_beginAccess();
  v14 = *&v9[v13];
  *&v9[v13] = a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  v2 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280FA1A18;
}

uint64_t sub_220407D80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EA84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220407E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22040EA84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220407E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220407EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_220407F54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(a2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 2);
  *(v7 + 2) = v3;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.topicIds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);

  return sub_2204080A0;
}

void sub_2204080A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22040B3C8(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 2);
    *(v10 + 2) = v3;

    v17 = *v4;
  }

  else
  {
    v18 = *(v6 + v5);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 88);
      v22 = *(v2 + 80);
      v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_22040B3C8(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 2);
    *(v20 + 2) = v3;
  }

  free(v2);
}

uint64_t sub_2204081D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_22040822C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22040B3C8(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 4);
  *(v8 + 3) = v4;
  *(v8 + 4) = v3;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.publisherID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return sub_220408380;
}

void sub_220408380(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22040B3C8(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 4);
    *(v10 + 3) = v3;
    *(v10 + 4) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_22040B3C8(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 4);
    *(v20 + 3) = v3;
    *(v20 + 4) = v5;
  }

  free(v2);
}

uint64_t sub_2204084B0(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v14, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v16 = *(a2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18 = sub_22040B3C8(v18);
    *(a2 + v15) = v18;
  }

  sub_220407E70(v14, v8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  (*(v10 + 56))(v8, 0, 1, v9);
  v22 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_22040BA48(v8, &v18[v22], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.features.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *(v15 + 8) = 0;
    *v15 = 0;
    v20 = v15 + *(v10 + 52);
    sub_22042B670();
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  return sub_220408964;
}

void sub_220408964(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22040B3C8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v14, v18, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
    swift_beginAccess();
    sub_22040BA48(v18, &v7[v19], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    swift_endAccess();
    sub_22040E5E8(v13, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22040B3C8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v13, v18, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
    swift_beginAccess();
    sub_22040BA48(v18, &v23[v31], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_220408C44(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  result = swift_beginAccess();
  *&v7[v11] = v3;
  return result;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.length.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_220408D88;
}

void sub_220408D88(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_22040B3C8(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  *&v7[v13] = v2;

  free(v1);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.group.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220408F14;
}

uint64_t sub_220408F2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_220408F9C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_220409010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_22040B3C8(v12);
    *(a2 + v9) = v12;
  }

  v16 = &v12[*a5];
  result = swift_beginAccess();
  *v16 = v7;
  v16[8] = v8;
  return result;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.feed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220409174;
}

void sub_220409180(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v4 + 84);
    v13 = *(v4 + 88);
    v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v11 = sub_22040B3C8(v11);
    *(v13 + v12) = v11;
  }

  v17 = &v11[*a3];
  swift_beginAccess();
  *v17 = v5;
  v17[8] = v8;

  free(v4);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.viewAction.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_220409320;
}

uint64_t sub_22040932C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v10 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v9 + v10, v8, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_220407E70(v8, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_22042D6B0;
  v13 = a2 + *(v11 + 20);
  sub_22042B670();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_220407E00(v8, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_2204094E8(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v16 = *(a2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18 = sub_22040B3C8(v18);
    *(a2 + v15) = v18;
  }

  sub_220407E70(v14, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(v10 + 56))(v8, 0, 1, v9);
  v22 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_22040BA48(v8, &v18[v22], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.embedding.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_22042D6B0;
    v20 = v15 + *(v10 + 20);
    sub_22042B670();
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_2204099A0;
}