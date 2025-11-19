uint64_t sub_2744C2778@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v7 = sub_27463ADAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v18 = a1 & 1;
  v19 = a2;
  v20 = a3;
  sub_2746393BC();
  type metadata accessor for WorkflowScrollView();
  sub_2744C297C();
  WitnessTable = swift_getWitnessTable();
  sub_2744E9688(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_2744E9688(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

uint64_t sub_2744C297C()
{
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27456E924();
  return sub_27463AD9C();
}

uint64_t sub_2744C2A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14(v11);
  sub_2744E9688(v9, a4, a5);
  v15 = *(v7 + 8);
  v15(v9, a4);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  (*(v7 + 16))(v9, v13, a4);
  v19 = 0;
  v20 = 1;
  v23[1] = v9;
  v23[2] = &v19;
  v18[0] = MEMORY[0x277CE1180];
  v18[1] = a4;
  v18[2] = MEMORY[0x277CE1180];
  v17[1] = MEMORY[0x277CE1170];
  v17[2] = a5;
  v17[3] = MEMORY[0x277CE1170];
  sub_274575750(v23, 3, v18);
  v15(v13, a4);
  return (v15)(v9, a4);
}

uint64_t sub_2744C2C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_27463A35C();

  sub_27451FA64(v5);

  sub_2746390AC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2F8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E300);
  v17 = a2 + *(result + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  return result;
}

double sub_2744C2D50@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((sub_27451F9FC(a1) & 1) == 0)
  {
    sub_27463AB7C();
    sub_27463B0CC();
    sub_2746392FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E458);
  sub_2744C988C();
  sub_2744C98E0();
  sub_274639DDC();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = *v6;
  result = *&v6[9];
  *(a2 + 41) = *&v6[9];
  return result;
}

uint64_t sub_2744C2E84@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E4E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - v2;
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v4 = qword_280965DC8;
  v31 = sub_27463ABDC();
  sub_27463B0CC();
  sub_2746392FC();
  v5 = v33;
  v6 = v34;
  v7 = v35;
  v8 = v36;
  v9 = v37;
  v10 = v38;
  v11 = &v3[*(v1 + 36)];
  v12 = *(sub_27463970C() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_274639BFC();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #1.0 }

  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A6C8) + 36)] = 256;
  *v3 = v31;
  *(v3 + 1) = v5;
  v3[16] = v6;
  *(v3 + 3) = v7;
  v3[32] = v8;
  *(v3 + 5) = v9;
  *(v3 + 6) = v10;
  LOBYTE(v13) = sub_27463A38C();
  sub_2746390AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v32;
  sub_27441277C(v3, v32, &unk_28094E4E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E4F0);
  v30 = v28 + *(result + 36);
  *v30 = v13;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_2744C3100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  if (a1)
  {
    v13 = a1;
    v14 = sub_27443A0F0();

    if (v14)
    {
      if ([v14 numberOfItems] > 0)
      {
        *v12 = sub_274639C5C();
        *(v12 + 1) = 0;
        v12[16] = 0;
        v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2E8) + 44)];
        v16 = v14;
        sub_27440FB1C(v16, v9);
        *(v9 + *(v4 + 52)) = v16;
        sub_274412C20(v9, v6, &qword_28094E2D8);
        *v15 = 0;
        v15[8] = 1;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2F0);
        sub_274412C20(v6, &v15[*(v17 + 48)], &qword_28094E2D8);
        v18 = v16;
        sub_2744C9C24(v9, &qword_28094E2D8);
        sub_2744C9C24(v6, &qword_28094E2D8);
        sub_27463932C();
        sub_27463B14C();
        sub_27463933C();

        sub_27463932C();
        sub_27463B14C();
        sub_27463933C();

        v19 = sub_27463931C();

        *&v12[*(v10 + 36)] = v19;
        sub_27441277C(v12, a2, &qword_28094E2E0);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
      }
    }

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }

  else
  {
    type metadata accessor for WorkflowEditorResults(0);
    sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void *sub_2744C347C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274639C5C();
  v17 = 1;
  sub_2744C3598(__src);
  memcpy(__dst, __src, 0x99uLL);
  memcpy(v19, __src, 0x99uLL);
  sub_274412C20(__dst, &v14, &qword_28094E4D0);
  sub_2744C9C24(v19, &qword_28094E4D0);
  memcpy(&v16[7], __dst, 0x99uLL);
  v3 = v17;
  v4 = sub_27463A38C();
  sub_2746390AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v16, 0xA0uLL);
  *(a1 + 184) = v4;
  *(a1 + 192) = v6;
  *(a1 + 200) = v8;
  *(a1 + 208) = v10;
  *(a1 + 216) = v12;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_2744C3598@<X0>(uint64_t a1@<X8>)
{
  sub_2744C3848();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_27463ABCC();
  v6 = sub_27463A4DC();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  KeyPath = swift_getKeyPath();
  v14 = sub_27463A31C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10 & 1;
  v55 = v10 & 1;
  v54 = 0;
  v24 = sub_27463A33C();
  sub_2746390AC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v56 = 0;
  __src[0] = v6;
  __src[1] = v8;
  LOBYTE(__src[2]) = v23;
  __src[3] = v12;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LOBYTE(__src[6]) = v14;
  __src[7] = v16;
  __src[8] = v18;
  __src[9] = v20;
  __src[10] = v22;
  LOBYTE(__src[11]) = 0;
  LOBYTE(__src[12]) = v24;
  __src[13] = v25;
  __src[14] = v27;
  __src[15] = v29;
  __src[16] = v31;
  LOBYTE(__src[17]) = 0;
  memcpy(__dst, __src, 0x89uLL);
  v34[144] = 1;
  memcpy(a1, __dst, 0x90uLL);
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  v37[0] = v6;
  v37[1] = v8;
  v38 = v23;
  v39 = v12;
  v40 = KeyPath;
  v41 = 1;
  v42 = v14;
  v43 = v16;
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v47 = 0;
  v48 = v24;
  v49 = v26;
  v50 = v28;
  v51 = v30;
  v52 = v32;
  v53 = 0;
  sub_274412C20(__src, v34, &qword_28094E4D8);
  return sub_2744C9C24(v37, &qword_28094E4D8);
}

uint64_t sub_2744C3848()
{
  v0 = sub_274639FEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for EmptyStateView(0);
  sub_2744C6930();
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_274412C20(v15, v6, &qword_28094A610);
  sub_274412C20(v12, &v6[v16], &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_274412C20(v6, v9, &qword_28094A610);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_2744C9840(&unk_28094BC90, MEMORY[0x277CE0570]);
      v17 = sub_27463B5BC();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_2744C9C24(v12, &qword_28094A610);
      sub_2744C9C24(v15, &qword_28094A610);
      v20(v9, v0);
      sub_2744C9C24(v6, &qword_28094A610);
      return v17 & 1;
    }

    sub_2744C9C24(v12, &qword_28094A610);
    sub_2744C9C24(v15, &qword_28094A610);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_2744C9C24(v12, &qword_28094A610);
  sub_2744C9C24(v15, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_2744C9C24(v6, &unk_28094BC50);
    v17 = 0;
    return v17 & 1;
  }

  sub_2744C9C24(v6, &qword_28094A610);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2744C3C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_27443CDC8();
    v8 = v7;

    *a3 = sub_27463B0BC();
    a3[1] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2A0);
    sub_2744C3D78(a1, v6, v8, a3 + *(v10 + 44));
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744C3D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v37 = v8;
  v15 = *(v8 + 16);
  v15(&v36 - v13, a1, v7, v12);
  if (sub_27463B72C() < 1)
  {
    v24 = 0;
    v25 = 0;
    v38 = 0;
    v39 = 0;
    v26 = 0;
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
  }

  else
  {
    LOBYTE(v26) = sub_27463A34C();
    sub_2746390AC();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LOBYTE(v42[0]) = 0;
    v39 = 0;

    sub_27463932C();
    v24 = a2;
    sub_27463B14C();
    v38 = sub_27463933C();

    v25 = a3;

    v26 = v26;
  }

  (v15)(v10, v14, v7);
  v27 = v40;
  (v15)(v40, v10, v7);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2B0) + 48);
  __src[0] = v24;
  __src[1] = v25;
  __src[2] = v26;
  __src[3] = v17;
  __src[4] = v19;
  __src[5] = v21;
  __src[6] = v23;
  v29 = v10;
  v30 = v24;
  v31 = v39;
  v32 = v25;
  v33 = v38;
  __src[7] = v39;
  __src[8] = v38;
  memcpy((v27 + v28), __src, 0x48uLL);
  sub_274412C20(__src, v42, &qword_28094E2B8);
  v34 = *(v37 + 8);
  v34(v14, v7);
  v42[0] = v30;
  v42[1] = v32;
  v42[2] = v26;
  v42[3] = v17;
  v42[4] = v19;
  v42[5] = v21;
  v42[6] = v23;
  v42[7] = v31;
  v42[8] = v33;
  sub_2744C9C24(v42, &qword_28094E2B8);
  return (v34)(v29, v7);
}

uint64_t sub_2744C4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = type metadata accessor for ScrollToRunningActionModifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2C0);
  MEMORY[0x28223BE20](v17);
  v5 = v16 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2C8);
  MEMORY[0x28223BE20](v18);
  v7 = v16 - v6;
  if (*v2)
  {
    v16[0] = *(*v2 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onScrollToAction);
    sub_2744C9158();
    v16[1] = v2;
    v8 = swift_allocObject();
    sub_2744C7648();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2744CAAF4;
    *(v9 + 24) = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E2D0);
    (*(*(v10 - 8) + 16))(v5, v19, v10);
    v11 = v17;
    *&v5[*(v17 + 52)] = v16[0];
    v12 = &v5[*(v11 + 56)];
    *v12 = sub_27444A550;
    v12[1] = v9;
    sub_2744C9158();
    v13 = swift_allocObject();
    sub_2744C7648();
    sub_27441277C(v5, v7, &qword_28094E2C0);
    v14 = &v7[*(v18 + 36)];
    *v14 = sub_2744C92D0;
    *(v14 + 1) = v13;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    sub_27441277C(v7, v20, &qword_28094E2C8);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_2744C4408()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v55 - v6;
  v8 = sub_27463969C();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v16 = v55 - v15;
  v17 = *v0;
  if (*v0)
  {
    v18 = &v17[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
    v19 = *&v17[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
    if (v19)
    {
      v61 = v2;
      v62 = v14;
      v20 = v12;
      v21 = v1;
      v65 = v13;
      v66 = v17;
      v22 = *(v18 + 2);
      v63 = *(v18 + 3);
      v64 = v22;
      v23 = v18[32];
      v68 = *(v18 + 2);
      v60 = v23;
      v73 = v23 & 1;
      v24 = type metadata accessor for ScrollToRunningActionModifier(0);
      v70 = v0;
      v25 = v19;
      v26 = v70;
      sub_2744C6930();
      if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
      {

        sub_2744C9C24(v7, &unk_28094D7C0);
      }

      else
      {
        v59 = v25;
        v27 = *(v69 + 32);
        v28 = v20;
        v58 = v69 + 32;
        v57 = v27;
        v27(v16, v7, v20);
        v55[1] = v24;
        v29 = (v26 + *(v24 + 24));
        v30 = *v29;
        v31 = *(v29 + 8);

        v32 = v30;
        v67 = v16;
        v33 = v21;
        v34 = v61;
        if ((v31 & 1) == 0)
        {
          sub_27463BC0C();
          v35 = sub_27463A2FC();
          sub_274638CEC();

          v16 = v67;
          sub_274639AAC();
          swift_getAtKeyPath();
          j__swift_release(v30, 0);
          (*(v34 + 8))(v4, v21);
          v32 = v72[0];
        }

        if (v32)
        {
          sub_27463874C();
        }

        v56 = v68 & 1;

        v36 = v28;
        if ((v31 & 1) == 0)
        {
          sub_27463BC0C();
          v37 = sub_27463A2FC();
          sub_274638CEC();

          v16 = v67;
          sub_274639AAC();
          swift_getAtKeyPath();
          j__swift_release(v30, 0);
          (*(v34 + 8))(v4, v33);
          v30 = v72[0];
        }

        v38 = v69;
        v39 = v59;
        if (v30)
        {
          v40 = [v59 localizedName];
          sub_27463B6AC();

          v16 = v67;
          sub_27463875C();
        }

        v41 = *(v38 + 16);
        v42 = v62;
        v41(v62, v16, v28);
        v43 = v65;
        v41(v65, v42, v36);
        v44 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v45 = swift_allocObject();
        v57(v45 + v44, v42, v36);
        v46 = v45 + ((v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v46 = v39;
        *(v46 + 8) = v56;
        *(v46 + 9) = v74[0];
        *(v46 + 12) = *(v74 + 3);
        v47 = v63;
        *(v46 + 16) = v64;
        *(v46 + 24) = v47;
        *(v46 + 32) = v73;
        if (v68)
        {
          v48 = *(v38 + 8);
          v49 = v39;
          v48(v43, v36);
          v50 = sub_27463B11C();
          MEMORY[0x28223BE20](v50);
          v55[-2] = sub_2744C9328;
          v55[-1] = v45;

          sub_27463946C();
        }

        else
        {
          v71 = v39;
          sub_27444A444();
          v51 = v39;
          sub_27463C31C();
          sub_27463968C();
          sub_274430664(v72);
          v48 = *(v38 + 8);
          v48(v43, v36);
        }

        v52 = v66;

        v48(v67, v36);
        v53 = &v52[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
        v54 = *&v52[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
        v53[32] = 0;
        *v53 = 0u;
        *(v53 + 1) = 0u;
      }
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744C4BB8()
{
  sub_27444A444();
  sub_27463C31C();
  sub_27463968C();
  return sub_274430664(v1);
}

uint64_t sub_2744C4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  v17 = *v2;
  v18 = *(v2 + 1);
  v19 = v5;
  v20 = v6;
  v21 = v7;
  sub_2744C4D94(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_27463B0AC();
  v10 = v9;
  memcpy(v22, __dst, 0xE8uLL);
  v22[29] = v8;
  v22[30] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E420);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E428);
  memcpy((a2 + *(v12 + 36)), v22, 0xF8uLL);
  memcpy(v23, __dst, sizeof(v23));
  v24 = v8;
  v25 = v10;
  sub_274412C20(v22, v14, &unk_28094E430);
  return sub_2744C9C24(v23, &unk_28094E430);
}

void *sub_2744C4D94@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31[-v4 - 8];
  v6 = sub_274639ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = v1[1];
  v38 = *v1;
  v39[0] = v10;
  *(v39 + 9) = *(v1 + 25);
  v11 = *(v1 + 4);
  v40 = v11;
  v41 = *(v1 + 40);
  if (v41 != 1)
  {

    sub_27463BC0C();
    v28 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744C9C24(&v40, &unk_28094E440);
    (*(v7 + 8))(v9, v6);
    if (v37)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2744C9884(v36);
    return memcpy(a1, v36, 0xE8uLL);
  }

  v37 = v11;

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:

  v12 = sub_274639C6C();
  v32 = 0;
  sub_2744C5140(&v38, v36);
  memcpy(v33, v36, sizeof(v33));
  memcpy(v34, v36, sizeof(v34));
  sub_274412C20(v33, v35, &qword_28094E448);
  sub_2744C9C24(v34, &qword_28094E448);
  memcpy(&v31[7], v33, 0x80uLL);
  v13 = v32;
  v14 = sub_27463A32C();
  sub_2746390AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v36[0] = 0;
  sub_27463ABBC();
  v23 = sub_27463ABAC();

  v24 = sub_27463A32C();
  v25 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
  v26 = sub_27463A40C();
  sub_2744C9C24(v5, &qword_280949FF8);
  KeyPath = swift_getKeyPath();
  v35[0] = v12;
  v35[1] = 0x4000000000000000;
  LOBYTE(v35[2]) = v13;
  memcpy(&v35[2] + 1, v31, 0x87uLL);
  LOBYTE(v35[19]) = v14;
  v35[20] = v16;
  v35[21] = v18;
  v35[22] = v20;
  v35[23] = v22;
  LOBYTE(v35[24]) = 0;
  v35[25] = v23;
  LOWORD(v35[26]) = v24;
  v35[27] = KeyPath;
  v35[28] = v26;
  CGSizeMake(v35);
  memcpy(v36, v35, sizeof(v36));
  return memcpy(a1, v36, 0xE8uLL);
}

uint64_t sub_2744C5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_274639B9C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_274639B8C();
  sub_274639B7C();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = [*a1 identifier];
  sub_27463B6AC();

  sub_274639B6C();

  sub_274639B7C();
  v54[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E450);
  sub_27463B6BC();
  sub_274639B6C();

  sub_274639B7C();
  sub_274639BBC();
  v35 = sub_27463A52C();
  v34 = v8;
  v33 = v9;
  v36 = v10;
  sub_2745272B0(v4);
  if (v11)
  {
    sub_274639B8C();
    sub_274639B7C();
    sub_274639B6C();

    sub_274639B7C();
    sub_274639BBC();
    v12 = sub_27463A52C();
    v14 = v13;
    v16 = v15 & 1;
    v32 = v12;
    v31 = v17;
    sub_27440B094(v12, v17, v15 & 1);
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v16 = 0;
    v14 = 0;
  }

  sub_274639B8C();
  sub_274639B7C();
  v54[0] = v6;
  sub_274639B5C();
  sub_274639B7C();
  v54[0] = v5;
  sub_274639B5C();
  sub_274639B7C();
  sub_274639BBC();
  v18 = sub_27463A52C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_274639B8C();
  sub_274639B7C();
  sub_27451FA64(v4);
  v54[0] = v25;
  sub_274639B5C();
  sub_274639B7C();
  sub_274639BBC();
  v26 = sub_27463A52C();
  v50 = v35;
  v51 = v34;
  v52 = v33 & 1;
  v53 = v36;
  v46 = v32;
  v47 = v31;
  v48 = v16;
  v49 = v14;
  v54[0] = &v50;
  v54[1] = &v46;
  v42 = v18;
  v43 = v20;
  v44 = v22 & 1;
  v45 = v24;
  v38 = v26;
  v39 = v27;
  v40 = v28 & 1;
  v41 = v29;
  v54[2] = &v42;
  v54[3] = &v38;
  sub_2744B2774(v54, a2);
  sub_274483F2C(v32, v31, v16, v14);
  sub_274412C10(v38, v39, v40);

  sub_274412C10(v42, v43, v44);

  sub_274483F2C(v46, v47, v48, v49);
  sub_274412C10(v50, v51, v52);
}

uint64_t sub_2744C567C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2744C5834();
  v6 = *(v2 + 56);
  sub_2744C9D4C(v2, v13);
  v7 = swift_allocObject();
  memcpy((v7 + 16), v13, 0x69uLL);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E570) + 36);
  sub_274434ED4(v2, v8);
  *(v8 + 48) = v5 & 1;
  *(v8 + 56) = v6;
  *(v8 + 64) = sub_2744C9D84;
  *(v8 + 72) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E578);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  KeyPath = swift_getKeyPath();
  v13[3] = &type metadata for ReorderableActionModifier;
  v13[4] = sub_2744C9D8C();
  v13[0] = swift_allocObject();
  sub_2744C9D4C(v2, v13[0] + 16);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E588) + 36));
  sub_274412C20(v13, (v11 + 1), qword_28094E590);
  *v11 = KeyPath;

  return sub_2744C9C24(v13, qword_28094E590);
}

uint64_t sub_2744C5834()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = v6;
    v8 = sub_27443B4C4();

    if (v8)
    {
LABEL_3:
      v9 = 0;
      return v9 & 1;
    }

    v10 = *(v1 + 96);
    if (*(v1 + 104) == 1)
    {
      if (v10)
      {
        goto LABEL_3;
      }
    }

    else
    {

      sub_27463BC0C();
      v11 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v10, 0);
      (*(v3 + 8))(v5, v2);
      if (v15)
      {
        goto LABEL_3;
      }
    }

    v12 = *(v1 + 72);
    v15 = *(v1 + 64);
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0);
    sub_27463ACEC();
    v9 = v14[15] ^ 1;
    return v9 & 1;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

id sub_2744C5A50(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  [v2 registerObject:*(a1 + 48) visibility:3];
  return v2;
}

uint64_t sub_2744C5AEC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F6C4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2744C5BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_2744B7380(a1, v2 + v6, a2);
}

uint64_t objectdestroyTm_4()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  j__swift_release(*(v3 + 72), *(v3 + 80));
  v4 = v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v5 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_58_1();
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_73_0(v7))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v8 + 8))(v3 + v6, v4);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_2744C5E34(_BYTE *a1)
{
  v2 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  sub_2744B8BA4(a1);
}

unint64_t sub_2744C5EA0()
{
  result = qword_28094DD48;
  if (!qword_28094DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DCF8);
    sub_2744C5F58();
    sub_2744CA97C(&unk_28094DDA0, &qword_280953AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD48);
  }

  return result;
}

unint64_t sub_2744C5F58()
{
  result = qword_28094DD50;
  if (!qword_28094DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DCF0);
    sub_2744C5FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD50);
  }

  return result;
}

unint64_t sub_2744C5FE4()
{
  result = qword_28094DD58;
  if (!qword_28094DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD40);
    sub_2744C609C();
    sub_2744CA97C(&qword_28094DD90, &unk_28094DD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD58);
  }

  return result;
}

unint64_t sub_2744C609C()
{
  result = qword_28094DD60;
  if (!qword_28094DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD28);
    sub_2744C6154();
    sub_2744CA97C(&qword_28094DD88, &unk_28094DD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD60);
  }

  return result;
}

unint64_t sub_2744C6154()
{
  result = qword_28094DD68;
  if (!qword_28094DD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DD20);
    sub_2744CA97C(&qword_28094DD70, &unk_28094DD78);
    sub_2744C620C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD68);
  }

  return result;
}

unint64_t sub_2744C620C()
{
  result = qword_28094DD80;
  if (!qword_28094DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DD80);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  sub_27463969C();
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2744C62DC()
{
  v0 = sub_27463969C();
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  return sub_2744B8C80();
}

uint64_t objectdestroy_25Tm()
{
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = *(v4 + 64);
  v5 = sub_27463969C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = v1 + v3;

  j__swift_release(*(v9 + 72), *(v9 + 80));
  v10 = v1 + v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v11 + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);

  v12 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_274639FEC();
    if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v14 + 8))(v9 + v12, v13);
    }
  }

  else
  {
  }

  (*(v7 + 8))(v1 + ((v3 + v16 + v8) & ~v8), v5);
  OUTLINED_FUNCTION_90();

  return swift_deallocObject();
}

uint64_t sub_2744C6598(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = sub_27463969C();
  OUTLINED_FUNCTION_53_0(v5);
  return sub_2744B8D60(a1, v1 + v4);
}

id sub_2744C664C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2744C665C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2744C666C(double a1)
{
  v4 = OUTLINED_FUNCTION_45_2();
  v5 = type metadata accessor for WorkflowView(v4);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_2744B8EB4(v2 + v6, v1, a1);
}

uint64_t sub_2744C66E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E098);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  v4 = sub_274638C8C();
  __swift_allocate_value_buffer(v4, qword_280965EA0);
  v5 = OUTLINED_FUNCTION_25_1();
  __swift_project_value_buffer(v5, v6);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return sub_274638C5C();
}

uint64_t sub_2744C67B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  __swift_allocate_value_buffer(v0, qword_28094DC40);
  v1 = __swift_project_value_buffer(v0, qword_28094DC40);
  v2 = sub_27463969C();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2744C6830@<X0>(uint64_t a1@<X8>)
{
  if (qword_280949308 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  v3 = __swift_project_value_buffer(v2, qword_28094DC40);
  return sub_274412C20(v3, a1, &unk_28094D7C0);
}

void sub_2744C6930()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v14 = v5;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_274412C20(v0, &v13 - v8, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27441277C(v9, v14, v2);
  }

  else
  {
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9();

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v11 = OUTLINED_FUNCTION_4_3();
    v12(v11);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2744C6ABC()
{
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_45_2();
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v7, &qword_28094E078);
  if (v9 == 1)
  {
    v3 = v7[1];
    *v0 = v7[0];
    *(v0 + 16) = v3;
    *(v0 + 32) = v8;
  }

  else
  {
    sub_27463BC0C();
    v4 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9();

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v5 = OUTLINED_FUNCTION_15_2();
    v6(v5);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744C6C3C()
{
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_45_2();
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_2();
  sub_274412C20(v1, v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4(0);
    OUTLINED_FUNCTION_7();
    (*(v9 + 32))(v0, v2);
  }

  else
  {
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9();

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v11 = OUTLINED_FUNCTION_15_2();
    v12(v11);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2744C6DD8()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v8, &qword_28094E088);
  if (v8[9] == 1)
  {
    sub_27441277C(v8, v3, &qword_28094E090);
  }

  else
  {
    sub_27463BC0C();
    v5 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9();

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v6 = OUTLINED_FUNCTION_4_3();
    v7(v6);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744C6F1C()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_18();
  sub_274412C20(v1, v8, &qword_28094E080);
  if (v8[8] == 1)
  {
    sub_27441277C(v8, v3, &unk_28094A0F0);
  }

  else
  {
    sub_27463BC0C();
    v5 = sub_27463A2FC();
    OUTLINED_FUNCTION_14_9();

    sub_274639AAC();
    OUTLINED_FUNCTION_24_5();
    swift_getAtKeyPath();

    v6 = OUTLINED_FUNCTION_4_3();
    v7(v6);
  }

  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744C7078(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  return a1(v1 + v3);
}

unint64_t sub_2744C70E4()
{
  result = qword_28094DE08;
  if (!qword_28094DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDE8);
    sub_2744C7170();
    sub_2744C749C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE08);
  }

  return result;
}

unint64_t sub_2744C7170()
{
  result = qword_28094DE10;
  if (!qword_28094DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDE0);
    sub_2744C71FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE10);
  }

  return result;
}

unint64_t sub_2744C71FC()
{
  result = qword_28094DE18;
  if (!qword_28094DE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDD8);
    sub_2744C72B4();
    sub_2744CA97C(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE18);
  }

  return result;
}

unint64_t sub_2744C72B4()
{
  result = qword_28094DE20;
  if (!qword_28094DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDD0);
    sub_2744C7370();
    sub_2744C9840(&qword_28094A720, type metadata accessor for VariableEditorModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE20);
  }

  return result;
}

unint64_t sub_2744C7370()
{
  result = qword_28094DE28;
  if (!qword_28094DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DDF0);
    sub_2744CA97C(&qword_28094DDF8, &qword_28094DDF0);
    swift_getOpaqueTypeConformance2();
    sub_2744C9840(&qword_28094A6C0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE28);
  }

  return result;
}

unint64_t sub_2744C749C()
{
  result = qword_28094DE40;
  if (!qword_28094DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DE40);
  }

  return result;
}

uint64_t sub_2744C753C()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v0 = OUTLINED_FUNCTION_4_3();

  return sub_2744BAC3C(v0, v1, v2, v3, v4);
}

uint64_t sub_2744C75D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744C7648()
{
  v1 = OUTLINED_FUNCTION_50_2();
  v2(v1);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

id sub_2744C76A4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_2744C76B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_3_18();

  return sub_2744B31D4();
}

uint64_t sub_2744C7748@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E160);
  v2 = sub_274638C8C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_274648570;
  if (qword_280949300 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280965EA0);
  (*(v3 + 16))(v5 + v4, v6, v2);
  type metadata accessor for DragReorderingCoordinator(0);
  swift_allocObject();
  result = sub_2744A933C(v5, 20.0);
  *a1 = result;
  return result;
}

uint64_t sub_2744C7890(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2744C7988;

  return v6(a1);
}

uint64_t sub_2744C7988()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t objectdestroy_91Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_75_0() == 1)
  {
    v4 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v4))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = OUTLINED_FUNCTION_62_1();
      v6(v5);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2744C7C04(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();

  return sub_2744BC290(a1, v1 + v3);
}

void sub_2744C7C90(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = *(v1 + 16);

  sub_2744BC434(a1, v4, v1 + v3);
}

uint64_t sub_2744C7D30(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return a1(v1 + v2, v5, v6, v7);
}

unint64_t sub_2744C7DC8()
{
  result = qword_28094DFA8;
  if (!qword_28094DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFA0);
    sub_2744C7E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFA8);
  }

  return result;
}

unint64_t sub_2744C7E54()
{
  result = qword_28094DFB0;
  if (!qword_28094DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFB8);
    sub_2744C7F0C();
    sub_2744CA97C(&qword_28094E010, &unk_28094E018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFB0);
  }

  return result;
}

unint64_t sub_2744C7F0C()
{
  result = qword_28094DFC0;
  if (!qword_28094DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFC8);
    sub_2744C7FC4();
    sub_2744CA97C(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFC0);
  }

  return result;
}

unint64_t sub_2744C7FC4()
{
  result = qword_28094DFD0;
  if (!qword_28094DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFD8);
    sub_2744C807C();
    sub_2744CA97C(&unk_28094AA00, &qword_28094CC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFD0);
  }

  return result;
}

unint64_t sub_2744C807C()
{
  result = qword_28094DFE0;
  if (!qword_28094DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFE8);
    sub_2744C8108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFE0);
  }

  return result;
}

unint64_t sub_2744C8108()
{
  result = qword_28094DFF0;
  if (!qword_28094DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DFF8);
    sub_2744CA97C(&qword_28094E000, &unk_28094E008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DFF0);
  }

  return result;
}

uint64_t sub_2744C81C0()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746399FC();
  *v0 = result;
  return result;
}

uint64_t sub_2744C8214()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746398DC();
  *v0 = result;
  return result;
}

uint64_t sub_2744C8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  return sub_27451F174(&v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2744C82B4@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return sub_2744BCF84(v5, v6, v7, a1);
}

uint64_t objectdestroy_128Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_75_0() == 1)
  {
    v4 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v4))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = OUTLINED_FUNCTION_62_1();
      v6(v5);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2744C84CC()
{
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_3_18();

  return sub_2744BCFC8();
}

uint64_t sub_2744C8580(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27440B094(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744C85D0()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27444E7E4;
  OUTLINED_FUNCTION_7_1();

  return sub_2744B5554(v3, v4, v5);
}

uint64_t sub_2744C8670()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_4(v3);
  *v4 = v5;
  v4[1] = sub_27445358C;
  v6 = OUTLINED_FUNCTION_49_1();

  return sub_2744B5EBC(v6, v7, v1, v2);
}

uint64_t sub_2744C8710()
{
  OUTLINED_FUNCTION_42_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_4(v0);
  *v1 = v2;
  v1[1] = sub_27444E7E4;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_2744C87BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  v1 = OUTLINED_FUNCTION_4_3();

  return sub_2744B6274(v1);
}

uint64_t sub_2744C883C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_4(v7);
  *v8 = v9;
  v8[1] = sub_27445358C;
  v10 = OUTLINED_FUNCTION_49_1();

  return sub_2744B4AEC(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2744C899C()
{
  result = qword_28094E158;
  if (!qword_28094E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E158);
  }

  return result;
}

void sub_2744C8A38()
{
  sub_274481024();
  if (v0 <= 0x3F)
  {
    sub_274458288(319, &qword_280950D10, &unk_28094D7C0);
    if (v1 <= 0x3F)
    {
      sub_274458288(319, &qword_28094DCB0, &qword_28094DCB8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2744C8B1C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2744C8B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2744C8C20()
{
  sub_274481024();
  if (v0 <= 0x3F)
  {
    sub_274458288(319, &qword_28094E1A0, &unk_28094A0F0);
    if (v1 <= 0x3F)
    {
      sub_274458288(319, &qword_28094BC00, &qword_28094A610);
      if (v2 <= 0x3F)
      {
        sub_2744C8D34(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2744C8D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for ConnectorView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2744C8DD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744C8E28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_30_4();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744C8E78(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2744C8EE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2744C8F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744C9158()
{
  v1 = OUTLINED_FUNCTION_50_2();
  v2(v1);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_258Tm()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ScrollToRunningActionModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  v5 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_73_0(v6))
    {
      OUTLINED_FUNCTION_25_0();
      (*(v7 + 8))(v4 + v5, v2);
    }
  }

  else
  {
  }

  j__swift_release(*(v4 + *(v0 + 24)), *(v4 + *(v0 + 24) + 8));
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

void sub_2744C92D4()
{
  v0 = type metadata accessor for ScrollToRunningActionModifier(0);
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_30_2();
  sub_2744C4408();
}

uint64_t sub_2744C9328()
{
  sub_27463969C();
  OUTLINED_FUNCTION_3_18();

  return sub_2744C4BB8();
}

uint64_t sub_2744C93D4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744C944C()
{
  result = qword_28094E338;
  if (!qword_28094E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E320);
    sub_2744CA97C(&unk_28094E340, &unk_28094E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E338);
  }

  return result;
}

unint64_t sub_2744C951C()
{
  result = qword_28094E3B8;
  if (!qword_28094E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E368);
    sub_2744C95D4();
    sub_2744CA97C(&qword_28094E3B0, &qword_28094E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3B8);
  }

  return result;
}

unint64_t sub_2744C95D4()
{
  result = qword_28094E3C0;
  if (!qword_28094E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E3C8);
    sub_2744C968C();
    sub_2744CA97C(&qword_28094E3E0, &unk_28094E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3C0);
  }

  return result;
}

unint64_t sub_2744C968C()
{
  result = qword_28094E3D0;
  if (!qword_28094E3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E3D8);
    sub_2744CA97C(&qword_28094E3B0, &unk_28094E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E3D0);
  }

  return result;
}

unint64_t sub_2744C9758()
{
  result = qword_28094E410;
  if (!qword_28094E410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E408);
    sub_2744C9840(&qword_28094D360, MEMORY[0x277D7D598]);
    sub_2744CA97C(&unk_28094DE30, &qword_28094AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E410);
  }

  return result;
}

uint64_t sub_2744C9840(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744C988C()
{
  result = qword_28094E460;
  if (!qword_28094E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E460);
  }

  return result;
}

unint64_t sub_2744C98E0()
{
  result = qword_28094E468;
  if (!qword_28094E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E468);
  }

  return result;
}

unint64_t sub_2744C9964()
{
  result = qword_28094E490;
  if (!qword_28094E490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E488);
    sub_2744CA97C(&qword_28094E498, &unk_28094E478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E490);
  }

  return result;
}

unint64_t sub_2744C9A28()
{
  result = qword_28094E540;
  if (!qword_28094E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E528);
    sub_2744CA97C(&qword_28094E548, &unk_28094E530);
    sub_2744CA97C(&qword_28094E550, &unk_28094E510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E540);
  }

  return result;
}

unint64_t sub_2744C9B08()
{
  result = qword_28094E558;
  if (!qword_28094E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E508);
    sub_2744CA97C(&qword_28094E538, &unk_28094E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E558);
  }

  return result;
}

uint64_t sub_2744C9BC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2744C9C24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_60_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_304Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_301Tm()
{

  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

unint64_t sub_2744C9D8C()
{
  result = qword_28094E580;
  if (!qword_28094E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E580);
  }

  return result;
}

uint64_t objectdestroy_322Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_2743F45E8(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

void sub_2744C9E4C()
{
  sub_274431930();
  if (v0 <= 0x3F)
  {
    sub_2744C9F7C(319, &qword_28094E620, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2744C8D34(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2744C9F7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2744C9FCC()
{
  result = qword_28094E638;
  if (!qword_28094E638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E2C8);
    sub_2744CA97C(&qword_28094E640, &qword_28094E2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E638);
  }

  return result;
}

unint64_t sub_2744CA084()
{
  result = qword_28094E658;
  if (!qword_28094E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E2E0);
    sub_2744CA97C(&qword_28094E660, &unk_28094E668);
    sub_2744CA97C(&unk_28094E670, &unk_28094A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E658);
  }

  return result;
}

unint64_t sub_2744CA168()
{
  result = qword_28094E680;
  if (!qword_28094E680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E300);
    sub_2744CA97C(&qword_28094E688, &qword_28094E2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E680);
  }

  return result;
}

unint64_t sub_2744CA220()
{
  result = qword_28094E690;
  if (!qword_28094E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E698);
    sub_2744C93D4(&qword_28094E330, &qword_28094E328, &unk_274652500, sub_2744C944C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E690);
  }

  return result;
}

unint64_t sub_2744CA2D8()
{
  result = qword_28094E6A0;
  if (!qword_28094E6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E428);
    sub_2744CA97C(&qword_28094E6A8, &qword_28094E420);
    sub_2744CA97C(&qword_28094E6B0, &unk_28094E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6A0);
  }

  return result;
}

unint64_t sub_2744CA3BC()
{
  result = qword_28094E6B8;
  if (!qword_28094E6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6C0);
    sub_2744C988C();
    sub_2744C98E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6B8);
  }

  return result;
}

unint64_t sub_2744CA448()
{
  result = qword_28094E6C8;
  if (!qword_28094E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6D0);
    sub_2744C9964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6C8);
  }

  return result;
}

unint64_t sub_2744CA4D4()
{
  result = qword_28094E6D8;
  if (!qword_28094E6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E6E0);
    sub_2744CA97C(&qword_28094E6E8, &unk_28094E6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6D8);
  }

  return result;
}

unint64_t sub_2744CA58C()
{
  result = qword_28094E6F8;
  if (!qword_28094E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E4F0);
    sub_2744CA618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E6F8);
  }

  return result;
}

unint64_t sub_2744CA618()
{
  result = qword_28094E700;
  if (!qword_28094E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094E4E0);
    sub_2744C98E0();
    sub_2744CA97C(&unk_28094A6D0, &qword_28094A6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E700);
  }

  return result;
}

unint64_t sub_2744CA6D0()
{
  result = qword_28094E710;
  if (!qword_28094E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E718);
    sub_2744C9A28();
    sub_2744C9B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E710);
  }

  return result;
}

unint64_t sub_2744CA75C()
{
  result = qword_28094E720;
  if (!qword_28094E720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E588);
    sub_2744CA814();
    sub_2744CA97C(&qword_28094E740, &unk_28094E748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E720);
  }

  return result;
}

unint64_t sub_2744CA814()
{
  result = qword_28094E728;
  if (!qword_28094E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E570);
    sub_2744CA97C(&qword_28094E730, &qword_28094E578);
    sub_2744CA8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E728);
  }

  return result;
}

unint64_t sub_2744CA8CC()
{
  result = qword_28094E738;
  if (!qword_28094E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E738);
  }

  return result;
}

uint64_t sub_2744CA97C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744CAA68()
{
  result = qword_28094E758;
  if (!qword_28094E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E758);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return sub_274638CEC();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_27463B19C();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
}

uint64_t WFStepperParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v3, v4);

  sub_27463950C();
  OUTLINED_FUNCTION_39();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274466BEC;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_274458A90;
  *(v6 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608));
  swift_retain_n();
  sub_27444A604(v1);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v7, &qword_28094B608);
  sub_27463950C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0);
  sub_27463ACDC();
  swift_getKeyPath();
  sub_2744CCFC4();
  return sub_27463AE9C();
}

id WFStepperParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274466DA4();
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (!a1)
  {
    v12 = 0;
LABEL_6:
    v15 = [v1 localizedLabelWithState:v12 includingPrefix:0];
    if (v15)
    {
      v16 = v15;
      v17 = sub_27463B6AC();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if ([objc_opt_self() isGerman])
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else if (v19)
    {
      v22 = v17;
      v23 = v19;
      sub_274412BBC();
      sub_27463C0DC();

LABEL_14:
      v20 = sub_27463B66C();

LABEL_16:
      [v11 populateWithString_];

      return v11;
    }

    v20 = 0;
    goto LABEL_16;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v13 = [v12 variable];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  [v11 populateWith_];

  swift_unknownObjectRelease();
  return v11;
}

id sub_2744CB284(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFStepperParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2744CB2F4()
{
  static WFStepperParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2744CB31C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_274407A8C();
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

double sub_2744CB3BC@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = [a1 parameter];
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_3_12();
  sub_274466E38(v6, v7);

  v8 = sub_27463950C();
  v26 = v9;
  v27 = v8;
  OUTLINED_FUNCTION_39();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_274467390;
  *(v25 + 24) = a2;
  OUTLINED_FUNCTION_39();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_274467398;
  *(v24 + 24) = a2;
  KeyPath = swift_getKeyPath();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608));
  swift_retain_n();
  v11 = v5;
  sub_27444A604(v11);
  OUTLINED_FUNCTION_10_6();
  sub_27440CA78(v12, &qword_28094B608);
  v13 = sub_27463950C();
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0);
  sub_27463ACDC();
  v16 = sub_2746390EC();
  v18 = v17;
  v19 = v16 & 1;
  LOBYTE(v5) = v20 & 1;
  v21 = sub_27463A32C();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v27;
  *(a3 + 48) = v26;
  *(a3 + 56) = sub_2744CD5D8;
  *(a3 + 64) = v25;
  *(a3 + 72) = sub_2744CD5DC;
  *(a3 + 80) = v24;
  *(a3 + 88) = 256;
  *(a3 + 96) = v28;
  *(a3 + 104) = v29;
  *(a3 + 112) = v30;
  *(a3 + 120) = v19;
  *(a3 + 128) = v18;
  *(a3 + 136) = v5;
  *(a3 + 144) = v21;
  result = 0.0;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = 1;
  return result;
}

uint64_t sub_2744CB6A8()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2744CB740, v3, v2);
}

uint64_t sub_2744CB740()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2744CB85C;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_16;
  v0[7].receiver = v2;
  v3 = type metadata accessor for StepperParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2744CB85C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2744CB960, v2, v1);
}

uint64_t sub_2744CB960()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2744CBA58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2744CBAF0, v4, v3);
}

uint64_t sub_2744CBAF0()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2744CB6A8();
}

id sub_2744CBBCC(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_073C17B42FC52C4719BEB2DDCC24406D29StepperParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for StepperParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2744CBC88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StepperParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2744CBCD0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x62uLL);
  v3 = *(__dst[1] + qword_28094A100);
  memcpy(v31, v1, 0x62uLL);
  v4 = v3;
  v5 = sub_2744CC03C();
  v7 = v6;
  v33[0] = *&__dst[2];
  v33[1] = *&__dst[4];
  v33[2] = *&__dst[6];
  *&__dst[13] = *&__dst[2];
  *&__dst[15] = *&__dst[4];
  *&__dst[17] = *&__dst[6];
  v8 = sub_274439BF0(v33, v29, &unk_28094C0C0);
  v9 = sub_274465B00(v8);
  v26 = v10;
  v12 = v11;
  sub_274415174(v33, &unk_28094C0C0);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274466E38(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  __src[28] = sub_27463979C();
  __src[29] = v13;
  __src[30] = swift_getKeyPath();
  LOBYTE(__src[31]) = 0;
  __src[32] = swift_getKeyPath();
  LOBYTE(__src[33]) = 0;
  __src[34] = swift_getKeyPath();
  LOBYTE(__src[35]) = 0;
  __src[36] = swift_getKeyPath();
  LOBYTE(__src[41]) = 0;
  __src[42] = swift_getKeyPath();
  LOBYTE(__src[43]) = 0;
  sub_27463ACDC();
  LOBYTE(__src[44]) = v29[0];
  __src[45] = v30;
  sub_27463ACDC();
  LOBYTE(__src[46]) = v29[0];
  __src[47] = v30;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v15 = v4;
  sub_27444A564(v15);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  __src[0] = sub_27463950C();
  __src[1] = v16;
  if (!v7)
  {
    v17 = [v15 localizedLabel];
    v5 = sub_27463B6AC();
    v7 = v18;
  }

  __src[2] = v5;
  __src[3] = v7;
  v19 = [v15 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  __src[4] = v21;
  __src[5] = v23;
  __src[6] = 1;
  __src[7] = v9;
  __src[8] = v27;
  __src[9] = v12;
  sub_2744CC160(__dst, &__src[10]);

  BYTE1(__src[27]) = 0;
  v24 = swift_allocObject();
  memcpy((v24 + 16), __dst, 0x62uLL);
  memcpy(a1, __src, 0x180uLL);
  a1[48] = sub_2744CD118;
  a1[49] = v24;
  return sub_2744CD120(__dst, v31);
}

uint64_t sub_2744CC03C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v0 + 32))(&v13);
  v5 = v13;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
  sub_27463ACEC();
  if ((v12 & 1) == 0)
  {
    v6 = sub_2746386DC();
    v7 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

    v5 = v7;
  }

  v8 = [*(v1 + qword_28094A100) localizedLabelWithState:v5 includingPrefix:1];
  if (v8)
  {
    v9 = v8;
    v10 = sub_27463B6AC();
  }

  else
  {

    return 0;
  }

  return v10;
}

double sub_2744CC160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 + 8) + qword_28094A100);
  v9 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v9;
  v46 = *(a1 + 48);
  v42 = *(a1 + 88);
  v43 = *(a1 + 96);
  v10 = v42;
  if (HIBYTE(v43) == 1)
  {
    v11 = v43;
    v39 = v42;
    v40 = v43 & 1;
    v12 = v8;
    sub_274439BF0(&v44, &v36, &unk_28094C0C0);
  }

  else
  {
    v13 = v8;
    sub_274439BF0(&v44, &v36, &unk_28094C0C0);
    sub_274439BF0(&v42, &v36, &unk_28094E788);
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v42, &unk_28094E788);
    (*(v5 + 8))(v7, v4);
    v10 = v39;
    v11 = v40;
  }

  v15 = v11 & (v10 == 1);
  KeyPath = swift_getKeyPath();
  v41 = 0;
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B608));
  v18 = v8;
  sub_27444A604(v18);
  sub_27440CA78(&unk_28094E760, &qword_28094B608);
  v19 = sub_27463950C();
  v21 = v20;

  v36 = v44;
  v37 = v45;
  *v38 = v46;
  v31[1] = 0;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C0D0);
  sub_27463ACDC();
  v22 = v33;
  v23 = v35;
  LOBYTE(v33) = v34;
  v24 = sub_2746390EC();
  v25 = v37;
  *(a2 + 40) = v36;
  v27 = v41;
  v28 = v33;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v27;
  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  *(a2 + 56) = v25;
  result = v38[0];
  *(a2 + 72) = *v38;
  *(a2 + 88) = v15;
  *(a2 + 89) = 0;
  *(a2 + 96) = v22;
  *(a2 + 104) = v28;
  *(a2 + 112) = v23;
  *(a2 + 120) = v24 & 1;
  *(a2 + 128) = v30;
  *(a2 + 136) = v26 & 1;
  return result;
}

void sub_2744CC528()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7C8);
  MEMORY[0x28223BE20](v1);
  v3 = v22 - v2;
  memcpy(v27, v0, 0x89uLL);
  sub_27463B9CC();
  sub_2744CD3E8(v27, &v25);
  v4 = sub_27463B9BC();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  memcpy(v5 + 4, v27, 0x89uLL);
  sub_2744CD3E8(v27, &v25);
  v7 = sub_27463B9BC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  memcpy(v8 + 4, v27, 0x89uLL);
  sub_27463AF0C();
  v23 = v25;
  v24 = v26;
  v9 = *&v27[2];
  v10 = qword_28094A100;
  v11 = [*(*&v27[2] + qword_28094A100) minimumValue];
  [v11 doubleValue];
  v13 = v12;

  v14 = [*(v9 + v10) maximumValue];
  [v14 doubleValue];
  v16 = v15;

  if (v13 > v16)
  {
    __break(1u);
  }

  else
  {
    *&v22[1] = v13;
    *&v22[2] = v16;
    v17 = swift_allocObject();
    v18 = memcpy((v17 + 16), v27, 0x89uLL);
    MEMORY[0x28223BE20](v18);
    v22[0] = 0x3FF0000000000000;
    sub_2744CD3E8(v27, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E750);
    sub_2744CAA68();
    sub_27463AFEC();
    v25 = v27[6];
    v26 = *&v27[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
    sub_27463ACEC();
    v19 = BYTE8(v23);
    v20 = &v3[*(v1 + 36)];
    *v20 = v23;
    v20[8] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7D0);
    v21 = sub_2744CD448();
    *&v25 = v1;
    *(&v25 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_27463A60C();
    sub_274415174(v3, &qword_28094E7C8);
  }
}

uint64_t sub_2744CC910(uint64_t a1, __int128 *a2)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v11 = *a2;
  v7 = v11;
  if (v12 != 1)
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274415174(&v11, &qword_28094C138);
    result = (*(v4 + 8))(v6, v3);
    v7 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_2744069F0(v11);
  if (v7)
  {
LABEL_5:
    v7(result);
    return sub_274406A94(v7);
  }

  return result;
}

void sub_2744CCAA4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 88))
  {
    sub_27463B9CC();
    sub_2744CD3E8(a1, v28);
    v4 = sub_27463B9BC();
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D85700];
    v5[2] = v4;
    v5[3] = v6;
    memcpy(v5 + 4, a1, 0x89uLL);
    sub_2744CD3E8(a1, v28);
    v7 = sub_27463B9BC();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    memcpy(v8 + 4, a1, 0x89uLL);
    sub_27463AF0C();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E800);
    MEMORY[0x277C575F0](&v27, v9);
    v10 = v27;

    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v12 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

    v13 = *(a1 + 32);
    v14 = qword_28094A100;
    v15 = [*(v13 + qword_28094A100) localizedLabelWithState:v12 includingPrefix:0];
    if (!v15)
    {
      v15 = [*(v13 + v14) localizedLabel];
    }

    v16 = sub_27463B6AC();
    v18 = v17;

    v28[0] = v16;
    v28[1] = v18;
    sub_274412BBC();
    v19 = sub_27463A53C();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = v23 & 1;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a2 = v19;
  a2[1] = v21;
  a2[2] = v26;
  a2[3] = v25;
}

uint64_t sub_2744CCD00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E7C8);
  sub_2744CD448();
  return sub_27463A71C();
}

void sub_2744CCD58(uint64_t a1@<X2>, void *a2@<X8>)
{
  (*(a1 + 56))(&v8);
  v4 = v8;
  if (v8 && (v5 = [v8 number], v4, v5))
  {
    [v5 doubleValue];
  }

  else
  {
    v5 = [*(*(a1 + 32) + qword_28094A100) minimumValue];
    [v5 doubleValue];
  }

  v7 = v6;

  *a2 = v7;
}

uint64_t sub_2744CCE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2744CD3E8(a4, v13);
  v5 = sub_2746386DC();
  v6 = [objc_allocWithZone(MEMORY[0x277D7C6B0]) initWithNumber_];

  v7 = *(a4 + 56);
  v8 = *(a4 + 72);
  v13[0] = v6;
  v8(v13);

  v9 = sub_2744CD5A0(a4);
  v7(v13, v9);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = [v13[0] number];

    if (v11)
    {
      [v11 doubleValue];
    }
  }

  *v13 = *(a4 + 96);
  v14 = *(a4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C130);
  return sub_27463ACFC();
}

void *sub_2744CCF64(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_2744CCFC4()
{
  result = qword_28094E770;
  if (!qword_28094E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E770);
  }

  return result;
}

uint64_t sub_2744CD050(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_2744CD090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CD158()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2744CBA58(v2, v3);
}

uint64_t sub_2744CD234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2744CD274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744CD2E8()
{
  result = qword_28094E798;
  if (!qword_28094E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7A0);
    sub_27440CA78(&qword_28094E7A8, &qword_28094E7B0);
    sub_27440CA78(&qword_28094E7B8, &qword_28094E7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E798);
  }

  return result;
}

unint64_t sub_2744CD448()
{
  result = qword_28094E7D8;
  if (!qword_28094E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7C8);
    sub_27440CA78(&qword_28094E7E0, &qword_28094E7E8);
    sub_27440CA78(&qword_28094E7F0, &qword_28094E7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E7D8);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();
  sub_2744671A4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void *sub_2744CD5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808);
  result = MEMORY[0x277C575F0](v22, v18);
  v20 = v22[0];
  v21 = v22[1];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v20;
  a9[9] = v21;
  a9[10] = 0;
  return result;
}

uint64_t sub_2744CD68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2744CD6CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CD74C()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v6 = *(v0 + 4);
  v7 = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463AD0C();
  v2 = swift_allocObject();
  memcpy((v2 + 16), v0, 0x58uLL);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v0, 0x58uLL);
  sub_2744CDA1C(v0, &v5);
  sub_2744CDA1C(v0, &v5);
  sub_274412BBC();
  return sub_27463B17C();
}

uint64_t sub_2744CD898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808);
  return sub_27463AEBC();
}

uint64_t sub_2744CD968(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_2744CD898();
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

unint64_t sub_2744CDA54()
{
  result = qword_280952FC0;
  if (!qword_280952FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952FC0);
  }

  return result;
}

uint64_t sub_2744CDAC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2744CDB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2744CDB70@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E810);
  v1 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E818);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E820);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - v9;
  *v8 = sub_274639C5C();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E828) + 44);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v11 = &v8[v10];
  v12 = qword_28094BB00;
  v13 = sub_27463B66C();
  v14 = sub_27463B66C();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_27463B6AC();
  v18 = v17;

  __src[0] = v16;
  __src[1] = v18;
  sub_274412BBC();
  v19 = sub_27463A53C();
  v49 = v19;
  v21 = v20;
  v23 = v22;
  v52 = v24;
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = v23 & 1;
  v50 = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E838);
  __src[0] = MEMORY[0x277CE0BD8];
  __src[1] = MEMORY[0x277CE0BD8];
  __src[2] = MEMORY[0x277CE0BC8];
  __src[3] = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v25 = v5;
  sub_27463AD5C();
  v53 = v8;
  v26 = *(v1 + 16);
  v27 = v54;
  v28 = v5;
  v29 = v55;
  v26(v54, v28, v55);
  *&v60 = v19;
  *(&v60 + 1) = v21;
  LOBYTE(v61) = v23 & 1;
  v30 = v52;
  *(&v61 + 1) = v52;
  LOWORD(v62) = 256;
  v31 = KeyPath;
  *(&v62 + 1) = KeyPath;
  v63 = 1;
  v11[48] = 1;
  v32 = v61;
  *v11 = v60;
  *(v11 + 1) = v32;
  *(v11 + 2) = v62;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E840);
  v26(&v11[*(v33 + 48)], v27, v29);
  sub_2744CE500(&v60, __src);
  v34 = *(v1 + 8);
  v34(v25, v29);
  v34(v27, v29);
  v64[0] = v49;
  v64[1] = v21;
  v65 = v50;
  v66 = v30;
  v67 = 256;
  v68 = v31;
  v69 = 1;
  sub_2744CE570(v64);
  sub_27463B0CC();
  sub_27463973C();
  v35 = v57;
  sub_2744CE5D8(v53, v57, &qword_28094E818);
  memcpy((v35 + *(v56 + 36)), __src, 0x70uLL);
  LOBYTE(v21) = sub_27463A32C();
  sub_2746390AC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v35;
  v45 = v58;
  sub_2744CE5D8(v44, v58, &qword_28094E820);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E850);
  v47 = v45 + *(result + 36);
  *v47 = v21;
  *(v47 + 8) = v37;
  *(v47 + 16) = v39;
  *(v47 + 24) = v41;
  *(v47 + 32) = v43;
  *(v47 + 40) = 0;
  return result;
}

void sub_2744CE150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274637E1C();
  v4 = sub_274637E2C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274637DFC();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

uint64_t sub_2744CE284()
{
  v0 = sub_274638AFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v4 = qword_28094BB00;
  v5 = sub_27463B66C();
  v6 = sub_27463B66C();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_27463B6AC();
  v10 = v9;

  v18 = v8;
  v19 = v10;
  sub_274412BBC();
  v11 = sub_27463A53C();
  v13 = v12;
  v18 = v11;
  v19 = v12;
  v15 = v14 & 1;
  v20 = v14 & 1;
  v21 = v16;
  sub_274638AEC();
  sub_27463A5EC();
  (*(v1 + 8))(v3, v0);
  sub_274412C10(v11, v13, v15);
}

uint64_t sub_2744CE4B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_27463A4FC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2744CE500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744CE570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2744CE5D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2744CE640()
{
  result = qword_28094E860;
  if (!qword_28094E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094E850);
    sub_2744CE6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E860);
  }

  return result;
}

unint64_t sub_2744CE6CC()
{
  result = qword_28094E868;
  if (!qword_28094E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E820);
    sub_2744CE758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E868);
  }

  return result;
}

unint64_t sub_2744CE758()
{
  result = qword_28094E870;
  if (!qword_28094E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E870);
  }

  return result;
}

uint64_t sub_2744CE7BC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void WFSlotTemplateSlot.populate(with:askVariableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_27463822C();
  v7 = [v6 attributedString];

  if (a3)
  {
    v8 = sub_27463B66C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v4 populateWithAttributedVariableString:v7 attachmentName:?];
}

void sub_2744CE8D8(void *a1)
{
  v3 = [objc_allocWithZone(WFSlotTemplateVariableToken) initWithVariable_];
  v4 = [a1 type];
  v5 = sub_27463B6AC();
  v7 = v6;
  if (v5 == sub_27463B6AC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_27463C6BC();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_2744CEA8C(v1);
  if (v11)
  {
    v13 = sub_27463B66C();

    v12 = v13;
    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = v12;
  [v1 populateWithSlotTemplateToken:v3 attachmentName:?];
}

void sub_2744CEA24(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2744CE8D8(v4);
}

uint64_t sub_2744CEA8C(void *a1)
{
  v1 = [a1 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

void sub_2744CEAF0(long double a1)
{
  v2 = a1 / 3600.0;
  if (a1 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = fmod(a1, 3600.0);
  v4 = v3 / 60.0;
  if (v3 / 60.0 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = COERCE_UNSIGNED_INT64(fabs(v3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v6 = fmod(v3, 60.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v5)
  {
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  [v8 selectRow:v2 inComponent:0 animated:0];
  [v8 selectRow:v4 inComponent:1 animated:0];
  [v8 selectRow:v7 inComponent:2 animated:0];

  sub_2744CF8DC(1);
}

id sub_2744CEC70()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  }

  else
  {
    v4 = sub_2744CECD4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2744CECD4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  [a1 addSubview_];
  v5 = WFShouldReverseLayoutDirection();
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274653070;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v7 + 40) = v12;
  v13 = [v2 trailingAnchor];

  v14 = [a1 leadingAnchor];
  v15 = 47.0;
  if (v5)
  {
    v15 = 51.0;
  }

  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  *(v7 + 48) = v16;
  sub_274412734(0, &qword_28094E990);
  v17 = sub_27463B7FC();

  [v6 activateConstraints_];

  return v2;
}

id sub_2744CEF54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for RowView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2744CEFEC(void *a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RowView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_2744CF0DC(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2744CF0F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2744CF0DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2744CF120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2744CF0EC(*v1);
  *a1 = result;
  return result;
}

char *sub_2744CF14C()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = objc_allocWithZone(MEMORY[0x277D75840]);
  v3 = OUTLINED_FUNCTION_0_25();
  v6 = [v4 v5];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker) = v6;
  v15 = type metadata accessor for DurationPickerView();
  v7 = OUTLINED_FUNCTION_0_25();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, v15);
  v11 = OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker;
  v12 = *&v10[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker];
  v13 = v10;
  [v12 setDataSource_];
  [*&v10[v11] setDelegate_];
  [v13 addSubview_];

  return v13;
}

void sub_2744CF280()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  *v1 = 0;
  v1[1] = 0;
  sub_27463C56C();
  __break(1u);
}

id sub_2744CF340(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744CF424(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_274653170[a2];
  }
}

char *sub_2744CF4A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a4 && (type metadata accessor for RowView(), (v9 = swift_dynamicCastClass()) != 0))
  {
    v10 = v9;
    v11 = a4;
  }

  else
  {
    type metadata accessor for RowView();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v12 = sub_2744CEC70();
  [v12 setTextAlignment_];

  v36 = OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel;
  v13 = *&v10[OBJC_IVAR____TtC14WorkflowEditorP33_A7122D355652C430CB8A6535180FDA307RowView____lazy_storage___textLabel];
  v14 = objc_opt_self();
  v15 = v10;
  v16 = v13;
  v17 = [v14 systemFontOfSize_];
  [v16 setFont_];

  [v5 pickerView:*&v5[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker] widthForComponent:a3];
  [v15 setFrame_];

  v19 = [objc_opt_self() labelColor];
  v20 = objc_opt_self();
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

  v23 = sub_27463B6AC();
  v25 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v27 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *(inited + 64) = sub_274412734(0, qword_28094A770);
  *(inited + 40) = v19;
  type metadata accessor for Key(0);
  sub_2744D0860();
  v28 = v27;
  v29 = v19;
  v30 = sub_27463B4DC();
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_2745A9D88(v23, v25, v30);
  v33 = *&v10[v36];

  v34 = v32;
  [v33 setAttributedText_];

  return v15;
}

uint64_t sub_2744CF840()
{
  sub_2744CF8DC(1);
  result = sub_2744CFA0C();
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange);
  if (v3)
  {
    v4 = v2;
    v5 = result;

    v3(v5, v4);

    return sub_274406A94(v3);
  }

  return result;
}

uint64_t sub_2744CF8DC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v4 = [v3 selectedRowInComponent_];
  v5 = [v3 selectedRowInComponent_];
  v6 = [v3 selectedRowInComponent_];
  v7 = sub_2744CFCD8(v4);
  sub_2744CFEF0(0, v7, v8, a1);

  v9 = sub_2744CFCD8(v5);
  sub_2744CFEF0(1, v9, v10, a1);

  v11 = sub_2744CFCD8(v6);
  sub_2744CFEF0(2, v11, v12, a1);
}

uint64_t sub_2744CFA0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v2 = [v1 selectedRowInComponent_];
  v3 = [v1 selectedRowInComponent_];
  v4 = [v1 selectedRowInComponent_];
  v5 = v2 == 0;
  if (v3)
  {
    v5 = 1;
  }

  if (v4)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

_BYTE *storeEnumTagSinglePayload for DurationPickerView.Component(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2744CFC84()
{
  result = qword_28094E980;
  if (!qword_28094E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E980);
  }

  return result;
}

uint64_t sub_2744CFCD8(uint64_t a1)
{
  v2 = sub_27463B70C();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_27463C38C();

    v15 = sub_274412BBC();
    v14 = MEMORY[0x277D837D0];
    sub_27463C0FC();
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v5 = qword_28094BB00;
    v6 = sub_27463B66C();

    v7 = sub_27463B66C();

    v8 = [v5 localizedStringForKey:v6 value:v7 table:{0, v14, v15, v15, v15, 32, 0xE100000000000000, 10, 0xE100000000000000}];

    sub_27463B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D83B88];
  *(v9 + 16) = xmmword_274648570;
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  v12 = sub_27463B67C();

  return v12;
}

void sub_2744CFEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v9 = sub_2744D03B0(a1, 0);
  v10 = v9;
  if (!v9)
  {
    if ((a4 & 1) == 0)
    {
      v16 = sub_2744D02D0();
      [v4 addSubview_];
      sub_2744D0744(a2, a3, v16);
      sub_2744D04F4(v16, v8);
      v15 = 0;
LABEL_16:
      v28 = v15;
      sub_2744D0744(a2, a3, v16);
      sub_2744D04F4(v16, v8);

      goto LABEL_17;
    }

    v15 = 0;
LABEL_12:
    v29 = v15;
    v17 = sub_2744D02D0();
    [v4 addSubview_];
    sub_2744D0744(a2, a3, v17);
    sub_2744D04F4(v17, v8);
    [v17 setAlpha_];
    v18 = objc_opt_self();
    OUTLINED_FUNCTION_5();
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    v34 = sub_2744D079C;
    v35 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_27443E0E8;
    v33 = &block_descriptor_17;
    v20 = _Block_copy(&aBlock);
    v21 = v29;

    OUTLINED_FUNCTION_5();
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    v34 = sub_2744D07D0;
    v35 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2745AA044;
    v33 = &block_descriptor_25_0;
    v23 = _Block_copy(&aBlock);
    v24 = v21;

    [v18 animateWithDuration:0 delay:v20 options:v23 animations:0.2 completion:0.0];
    _Block_release(v23);
    _Block_release(v20);
    OUTLINED_FUNCTION_5();
    v25 = swift_allocObject();
    *(v25 + 16) = v17;
    v34 = sub_2744D07E8;
    v35 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_27443E0E8;
    v33 = &block_descriptor_31;
    v26 = _Block_copy(&aBlock);
    v27 = v17;

    [v18 animateWithDuration:0x20000 delay:v26 options:0 animations:0.2 completion:0.0];

    _Block_release(v26);
    return;
  }

  v28 = v9;
  v11 = sub_2744D07FC(v28);
  if (!v12)
  {
LABEL_8:

    v15 = v28;
    v16 = v28;
    if ((a4 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v11 == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_27463C6BC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_2744D04A0(v28, v8);

LABEL_17:
}

id sub_2744D02D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() boldSystemFontOfSize_];
  [v0 setFont_];

  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_2744D03B0(uint64_t a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0;
      v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel);
      if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_minutesLabel) && (a2 & 1) != 0)
      {
LABEL_11:
        v6 = sub_2744CFCD8(0);
        sub_2744CFEF0(a1, v6, v7, 0);

        v4 = *v5;
        v8 = *v5;
      }
    }

    else
    {
      v4 = 0;
      v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel);
      if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_secondsLabel) && (a2 & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel);
    if (!*(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_hoursLabel) && (a2 & 1) != 0)
    {
      goto LABEL_11;
    }
  }

  return v4;
}

void sub_2744D04A0(void *a1, char a2)
{
  v3 = *off_279EDB570[a2];
  v5 = *(v2 + v3);
  *(v2 + v3) = a1;
  v4 = a1;
}

void sub_2744D04F4(void *a1, char a2)
{
  v5 = WFShouldReverseLayoutDirection();
  if (a2)
  {
    v6 = v5 == 0;
    if (a2 == 1)
    {
      v7 = 161.0;
      v8 = 173.0;
    }

    else
    {
      v7 = 271.0;
      v8 = 283.0;
    }
  }

  else
  {
    v6 = v5 == 0;
    v7 = 51.0;
    v8 = 69.0;
  }

  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  LODWORD(v7) = 1148846080;
  [a1 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v10) = 1148846080;
  [a1 setContentCompressionResistancePriority:0 forAxis:v10];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27464AEE0;
  v13 = [a1 leadingAnchor];
  v14 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_timePicker);
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:v9];

  *(v12 + 32) = v16;
  v17 = [a1 centerYAnchor];
  v18 = [v14 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:1.0];

  *(v12 + 40) = v19;
  sub_274412734(0, &qword_28094E990);
  v20 = sub_27463B7FC();

  [v11 activateConstraints_];
}

void sub_2744D0744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  [a3 setText_];
}

id sub_2744D079C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

id sub_2744D07D0()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

uint64_t sub_2744D07FC(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

unint64_t sub_2744D0860()
{
  result = qword_280953420;
  if (!qword_280953420)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953420);
  }

  return result;
}

uint64_t sub_2744D0914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 32);
  v7 = *(v1 + 24);
  v15 = v7;
  v8 = v16;

  if ((v8 & 1) == 0)
  {
    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744D0C50(&v15);
    (*(v4 + 8))(v6, v3);
    v7 = v14[1];
  }

  if (v7)
  {
    sub_2746383DC();
    sub_2744D0D6C(&qword_28094E9A8, MEMORY[0x277D7BEC0]);

    v10 = sub_27463920C();
    sub_2745212EC(v10);

    sub_27446F35C(a1);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for ActionView(0);
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

uint64_t sub_2744D0B44@<X0>(uint64_t *a1@<X8>)
{
  sub_2746383DC();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2744D0B9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D0BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744D0C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2744D0CB8()
{
  result = qword_28094E9B0;
  if (!qword_28094E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E9B8);
    sub_2744D0D6C(&qword_28094E9C0, type metadata accessor for ActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094E9B0);
  }

  return result;
}

uint64_t sub_2744D0D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2744D0E1C(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_2744FABE8(v5, a1);
  MEMORY[0x277C58EA0](a2);
  return sub_27463C7AC();
}

uint64_t sub_2744D0E84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_27463C74C();
  sub_2744FABE8(v4, v1);
  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

id EditorDragItem.moveParameters.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void *EditorDragItem.sourceView.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

double sub_2744D0F3C()
{
  v1 = 96;
  if (*(v0 + 104))
  {
    v1 = 88;
  }

  return *(v0 + v1);
}

void sub_2744D0F58()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = 96;
  if (*(v1 + 104))
  {
    v3 = 88;
  }

  *(v1 + 112) = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(*(v1 + v3));
}

uint64_t EditorDragItem.__allocating_init(moveParameters:sourceView:item:width:)(_OWORD *a1, void *a2, void *a3, double a4)
{
  v8 = swift_allocObject();
  EditorDragItem.init(moveParameters:sourceView:item:width:)(a1, a2, a3, a4);
  return v8;
}

uint64_t EditorDragItem.init(moveParameters:sourceView:item:width:)(_OWORD *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *(v5 + 112) = 0;
  *(v5 + 16) = *a1;
  *(v5 + 32) = a2;
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v11 = *(v10 + 32);
  v12 = a2;
  v13 = v11(v9, v10);
  *(v5 + 40) = v13;
  sub_2744306B8(a3, v5 + 48);
  *(v5 + 88) = a4;
  *(v13 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8) = &off_288368D08;
  swift_unknownObjectWeakAssign();
  sub_2744D0F58();

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v5;
}

uint64_t EditorDragItem.__deallocating_deinit()
{
  EditorDragItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2744D1324()
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](v0);
  return sub_27463C7AC();
}

uint64_t sub_2744D1384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_27463C74C();
  a4(v6);
  return sub_27463C7AC();
}

uint64_t sub_2744D1414(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2744D1458(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2744D1498(uint64_t result, int a2, int a3)
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

unint64_t sub_2744D14E8()
{
  result = qword_28094E9D8[0];
  if (!qword_28094E9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28094E9D8);
  }

  return result;
}

uint64_t sub_2744D1558()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744D1594(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2744D15D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2744D1634(uint64_t a1)
{
  v2 = v1;
  v9 = *v1;
  v10 = *(v1 + 4);
  v11 = v1[1];
  v12 = v10;
  v3 = sub_2744D16B4(v9, a1);
  v5 = v4;
  v7 = v6;
  result = sub_2744D2D90(&v11);
  v2[2] = v3;
  v2[3] = v5;
  v2[4] = v7;
  return result;
}

uint64_t sub_2744D16B4(uint64_t a1, uint64_t a2)
{
  result = sub_27463B8BC();
  if (result < 1)
  {
    v5 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
LABEL_15:
    v23 = v19;
    if (v19 < 0xB)
    {
      v29 = v5;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      do
      {
        v25 = 0;
        v26 = 0;
        v27 = (v5 + 48);
        v28 = 10;
        v29 = v24;
        v53 = v23;
        v54 = v5;
        do
        {
          if (v23 >= v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = v23;
          }

          v31 = v26 + 10;
          if (__OFADD__(v26, 10))
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (v23 >= v31)
          {
            v32 = v26 + 10;
          }

          else
          {
            v32 = v23;
          }

          if (v32 < v26)
          {
            goto LABEL_58;
          }

          v33 = *(v5 + 16);
          if (v33 < v26 || v33 < v32)
          {
            goto LABEL_59;
          }

          v56 = v27;
          v58 = v25;
          if (v26 == v32)
          {

            v35 = 0;
            v36 = 0.0;
            v37 = v24;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v37 = v24;
            }

            else
            {
LABEL_46:
              sub_274450838();
              v29 = v50;
            }
          }

          else
          {
            if (v26 >= v32)
            {
              goto LABEL_60;
            }

            v55 = v29;
            v38 = v30 + v25;

            v35 = 0;
            v36 = 0.0;
            v39 = v27;
            v37 = v24;
            do
            {
              v40 = *(v39 - 2);
              v41 = *(v39 - 1);
              v29 = *v39;
              swift_bridgeObjectRetain_n();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_274450738();
                v37 = v45;
              }

              v42 = *(v37 + 16);
              if (v42 >= *(v37 + 24) >> 1)
              {
                sub_274450738();
                v37 = v46;
              }

              *(v37 + 16) = v42 + 1;
              v43 = v37 + 32 * v42;
              *(v43 + 32) = v40;
              *(v43 + 40) = v41;
              *(v43 + 48) = v29;
              *(v43 + 56) = 1;

              v44 = __OFADD__(v35, v29);
              v35 += v29;
              if (v44)
              {
                __break(1u);
                goto LABEL_54;
              }

              v39 += 3;
              v36 = v36 + v41;
              --v38;
            }

            while (v38);
            v29 = v55;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = v53;
            v5 = v54;
            v24 = MEMORY[0x277D84F90];
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          v48 = *(v29 + 16);
          if (v48 >= *(v29 + 24) >> 1)
          {
            sub_274450838();
            v29 = v51;
          }

          *(v29 + 16) = v48 + 1;
          v49 = v29 + 24 * v48;
          *(v49 + 32) = v37;
          v28 += 10;
          *(v49 + 40) = v36;
          *(v49 + 48) = v35;
          v25 = v58 - 10;
          v27 = v56 + 30;
          v26 = v31;
        }

        while (v31 < v23);

        v23 = *(v29 + 16);
        v5 = v29;
      }

      while (v23 > 0xA);
    }

    if (v23 == 1)
    {
LABEL_54:
      v52 = *(v29 + 32);
    }

    else if (v23)
    {
      return sub_2744D270C(v29);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v52;
  }

  else
  {
    v3 = result;
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = v4 + 10;
      if (__OFADD__(v4, 10))
      {
        break;
      }

      if (v3 >= v6)
      {
        v7 = v4 + 10;
      }

      else
      {
        v7 = v3;
      }

      if (v7 < v4)
      {
        goto LABEL_62;
      }

      v8 = sub_27463B93C();
      sub_2744D22D8(v8, v9, v10, v11, a2);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450838();
        v5 = v21;
      }

      v18 = *(v5 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v5 + 24) >> 1)
      {
        sub_274450838();
        v5 = v22;
      }

      result = swift_unknownObjectRelease();
      *(v5 + 16) = v19;
      v20 = (v5 + 24 * v18);
      v20[4] = v13;
      v20[5] = v15;
      v20[6] = v17;
      v4 += 10;
      if (v6 >= v3)
      {
        goto LABEL_15;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  return result;
}

uint64_t sub_2744D1AB4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;

  return sub_2744D1634(a2);
}

void sub_2744D1B00(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *&v4[2] = a3;
  *&v4[3] = a4;
  sub_2744D1B40(a1, sub_2744D2D80, v4, a2);
}

void sub_2744D1B40(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v20 = *(*(a4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2744D1D68(a1, a2, a3);
  if ((v14 & 0x100) == 0)
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    sub_27463B94C();
    sub_27463C39C();
    (*(v8 + 8))(v11, v7);
    v21 = v15;
    v22 = v16;
    v23 = v17 & 1;
    v24 = 0;
    swift_getAssociatedConformanceWitness();
    sub_27463B51C();
    sub_27463B54C();
  }
}

uint64_t sub_2744D1D50(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    *(result + 8) = 1;
    *(result + 16) = 1;
  }

  return result;
}

void sub_2744D1D68(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = *v3;
  v13 = 56;
  while (*(*v3 + 16) != v11)
  {
    v14 = a1 - v10;
    if (__OFSUB__(a1, v10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = *(*&v12 + v13 - 8);
    v4 = *(*&v12 + v13);
    if (v4)
    {
      if (v14 < v5)
      {
        v24 = v3;
        v8 = *(*&v12 + v13 - 16);
        v26 = *(*&v12 + v13 - 24);
        v27 = *&v8;
        v28 = v5;
        sub_2744D200C(v26, v8, v5, 1);

        sub_2744D1D68(v14, a2, a3);
        sub_2744D2018(v26, v8, v5, 1);
        v5 = v26;
        v7 = *&v8;
        v6 = v28;

        goto LABEL_23;
      }
    }

    else
    {
      if (v14 < 1)
      {
        v24 = v3;
        v16 = *(*&v12 + v13 - 16);
        v26 = *(*&v12 + v13 - 24);
        v8 = v26;
        v27 = v16;
        LOBYTE(v28) = v5 & 1;
        a2(&v26);
        v7 = v27;
        v6 = v28;
        if (*&v26 != *&v8)
        {
          goto LABEL_22;
        }

        if (v28)
        {
          if (v27 == 0.0)
          {
            if ((v5 & 1) == 0)
            {
              goto LABEL_22;
            }

            v5 = v26;
          }

          else
          {
            if (v5)
            {
              v5 = v26;
              goto LABEL_23;
            }

LABEL_22:
            v5 = v26;
          }
        }

        else
        {
          if (v5 & 1 | (v27 != v16))
          {
            goto LABEL_22;
          }

          v5 = v26;
        }

LABEL_23:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_24:
          if (v11 >= *(*&v12 + 16))
          {
            __break(1u);
          }

          else
          {
            v17 = (*&v12 + v13);
            v18 = *(*&v12 + v13 - 24);
            v19 = *(*&v12 + v13 - 16);
            v20 = *(*&v12 + v13 - 8);
            v21 = *(*&v12 + v13);
            *(v17 - 3) = *&v5;
            *(v17 - 2) = v7;
            *(v17 - 1) = v6;
            *v17 = v4;
            sub_2744D2018(v18, v19, v20, v21);
            v22 = v24;
            *v24 = v12;
            if (v4)
            {
              sub_2744D2018(v5, *&v7, v6, 1);
              v22 = v24;
            }

            else
            {
              v7 = *&v5;
            }

            v22[1] = v22[1] + v7 - *&v8;
          }

          return;
        }

LABEL_30:
        sub_27453AD44();
        v12 = v23;
        goto LABEL_24;
      }

      v5 = 1;
    }

    v13 += 32;
    ++v11;
    v15 = __OFADD__(v10, v5);
    v10 += v5;
    if (v15)
    {
      __break(1u);
      return;
    }
  }
}

uint64_t sub_2744D200C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2744D2018(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2744D202C(uint64_t a1)
{
  sub_2744D2190(a1, *(v1 + 16), v5, 0.0);
  if ((v6 & 1) == 0)
  {
    return v5[1];
  }

  sub_27463C38C();

  v3 = sub_27463C66C();
  MEMORY[0x277C57EA0](v3);

  MEMORY[0x277C57EA0](2109216, 0xE300000000000000);
  sub_27463B8BC();
  v4 = sub_27463C66C();
  MEMORY[0x277C57EA0](v4);

  result = sub_27463C56C();
  __break(1u);
  return result;
}

uint64_t sub_2744D2190@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a2 + 16);
  v6 = 0uLL;
  v7 = 0.0;
  if (v5)
  {
    v9 = 0;
    v10 = (a2 + 56);
    while (1)
    {
      v11 = result - v9;
      if (__OFSUB__(result, v9))
      {
        break;
      }

      v12 = *(v10 - 1);
      if (*v10)
      {
        v13 = *(v10 - 2);
        if (v11 < v12)
        {
          v17 = *(v10 - 3);

          sub_2744D2190(&v19, v11, v17, v12, a4, *&v13);
          v18 = v19;
          v15 = v20;
          v7 = v21;
          v16 = v22;
          result = sub_2744D2018(v17, v13, v12, 1);
          v6 = v18;
          goto LABEL_14;
        }

        v14 = __OFADD__(v9, v12);
        v9 += v12;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v11 < 1)
        {
          v16 = 0;
          v15 = *(v10 - 1) & 1;
          v7 = a4;
          v6 = *(v10 - 24);
          goto LABEL_14;
        }

        v14 = __OFADD__(v9++, 1);
        if (v14)
        {
          goto LABEL_18;
        }

        v13 = *(v10 - 3);
      }

      a4 = a4 + *&v13;
      v10 += 32;
      if (!--v5)
      {
        goto LABEL_13;
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
LABEL_13:
    v15 = 0;
    v16 = 1;
LABEL_14:
    *a3 = v6;
    *(a3 + 16) = v15;
    *(a3 + 24) = v7;
    *(a3 + 32) = v16;
  }

  return result;
}

void sub_2744D22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v44 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v32 - v10;
  v11 = *(v8 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v32 - v16;
  v17 = sub_27463C14C();
  v49 = v17;
  if (v17 == sub_27463C17C())
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = *(v40 + 8);
    v36 = v11 + 16;
    v37 = v19;
    v34 = (v9 + 8);
    v35 = v11 + 32;
    v32 = v7 + 16;
    v18 = MEMORY[0x277D84F90];
    v33 = (v11 + 8);
    v39 = v7;
    v40 = a4;
    v38 = v11;
    do
    {
      sub_27463C16C();
      sub_27463C15C();
      v20 = a2 + *(v11 + 72) * v17;
      v21 = v41;
      (*(v11 + 16))(v41, v20, v8);
      sub_27463C18C();
      (*(v11 + 32))(v14, v21, v8);
      v22 = v42;
      sub_27463C39C();
      v23 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_27463B53C();
      (*v34)(v22, v23);
      if (v48)
      {
        v24 = (*(v7 + 16))(v8, v7);
        v25 = 0;
        v26 = 1;
      }

      else
      {
        v25 = v46;
        v24 = v45;
        v26 = v47;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450754();
        v18 = v30;
      }

      v27 = *(v18 + 16);
      if (v27 >= *(v18 + 24) >> 1)
      {
        sub_274450754();
        v18 = v31;
      }

      (*v33)(v14, v8);
      *(v18 + 16) = v27 + 1;
      v28 = v18 + 24 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      *(v28 + 48) = v26 & 1;
      v29 = sub_27463C17C();
      v17 = v49;
      v11 = v38;
      v7 = v39;
    }

    while (v49 != v29);
  }

  sub_2744D284C(v18);
}

uint64_t sub_2744D270C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 48);
    v4 = MEMORY[0x277D84F90];
    v5 = 0.0;
    while (1)
    {
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450738();
        v4 = v13;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_274450738();
        v4 = v14;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 32 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      *(v10 + 48) = v8;
      *(v10 + 56) = 1;

      v12 = __OFADD__(v2, *&v8);
      v2 += *&v8;
      if (v12)
      {
        break;
      }

      v3 += 3;
      v5 = v5 + v7;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_11:

    return v4;
  }

  return result;
}

double sub_2744D284C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x277D84F90];
    v4 = 0.0;
    do
    {
      v5 = *(v2 - 2);
      v6 = *(v2 - 1);
      v7 = *v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450738();
        v3 = v10;
      }

      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_274450738();
        v3 = v11;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 32 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      *(v9 + 48) = v7;
      *(v9 + 56) = 0;
      v4 = v4 + v5;
      v2 += 3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

uint64_t sub_2744D2960@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463B87C();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_27463B87C();
  swift_getAssociatedConformanceWitness();
  result = sub_27463B4DC();
  *a1 = v2;
  a1[1] = result;
  v4 = MEMORY[0x277D84F90];
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v4;
  return result;
}

uint64_t sub_2744D2A50(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = *&a1 == *&a3;
  if (a4)
  {
    v4 = 0;
  }

  v5 = a4 & (a3 == 0);
  if (*&a1 != 0.0)
  {
    v5 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2744D2A94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x277C58EA0](v4);
  }

  else
  {
    MEMORY[0x277C58EA0](1);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x277C58ED0](v5);
  }
}

uint64_t sub_2744D2AE8(uint64_t a1, char a2)
{
  sub_27463C74C();
  sub_2744D2A94(v5, a1, a2 & 1);
  return sub_27463C7AC();
}

uint64_t sub_2744D2B38(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if (a5 == a6)
  {
    if (a2)
    {
      if (*&a1 == 0.0)
      {
        if (a4)
        {
          return a3 == 0;
        }
      }

      else if (a4)
      {
        return a3 != 0;
      }
    }

    else if ((a4 & 1) == 0 && *&a1 == *&a3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2744D2B8C(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x277C58ED0](*&a1);
  if (a4)
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x277C58EA0](v6);
  }

  else
  {
    MEMORY[0x277C58EA0](1);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x277C58ED0](v7);
  }
}

uint64_t sub_2744D2C00(uint64_t a1, char a2, double a3)
{
  sub_27463C74C();
  sub_2744D2B8C(a3, v7, a1, a2 & 1);
  return sub_27463C7AC();
}

uint64_t sub_2744D2C78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27463C74C();
  sub_2744D2A94(v4, v1, v2);
  return sub_27463C7AC();
}

uint64_t sub_2744D2D00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_27463C74C();
  sub_2744D2B8C(v1, v5, v2, v3);
  return sub_27463C7AC();
}

__n128 sub_2744D2D80(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2744D2DCC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744D2E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Value(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Value(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2744D2EE0()
{
  result = qword_28094EA60;
  if (!qword_28094EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EA60);
  }

  return result;
}

unint64_t sub_2744D2F48()
{
  result = qword_28094EA68;
  if (!qword_28094EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EA68);
  }

  return result;
}

uint64_t sub_2744D2F9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return sub_2744F5644(a1, a4) & (a2 == a5);
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  return sub_2744D3EA8(a1, a4);
}

uint64_t sub_2744D303C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(a1, a2);
    v8 = a3;
    return MEMORY[0x277C58EA0](v8);
  }

  if (a4 != 1)
  {
    v8 = 0;
    return MEMORY[0x277C58EA0](v8);
  }

  MEMORY[0x277C58EA0](2);

  return sub_2744DE090(a1, a2);
}

uint64_t sub_2744D30D0(uint64_t a1, uint64_t a2, char a3)
{
  sub_27463C74C();
  if (!a3)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(__src, a1);
    v6 = a2;
LABEL_6:
    MEMORY[0x277C58EA0](v6);
    return sub_27463C7AC();
  }

  if (a3 != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  MEMORY[0x277C58EA0](2);
  sub_2744DE090(__src, a1);
  return sub_27463C7AC();
}

uint64_t sub_2744D318C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_27463C74C();
  if (!v3)
  {
    MEMORY[0x277C58EA0](1);
    sub_2744FABE8(__src, v1);
    v4 = v2;
LABEL_6:
    MEMORY[0x277C58EA0](v4);
    return sub_27463C7AC();
  }

  if (v3 != 1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  MEMORY[0x277C58EA0](2);
  sub_2744DE090(__src, v1);
  return sub_27463C7AC();
}

id TableCell.init(contentView:)(void *a1)
{
  OUTLINED_FUNCTION_56(&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex]);
  OUTLINED_FUNCTION_70_1(&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_host]);
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered] = 0;
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected] = 0;
  v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized] = 0;
  *&v1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_contentView] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TableCell();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAutoresizingMask_];
  [v4 addSubview_];

  return v4;
}

id TableCell.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_64_0()) initWithCoder_];

  return v1;
}

void TableCell.init(coder:)()
{
  OUTLINED_FUNCTION_56(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex);
  OUTLINED_FUNCTION_70_1(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized) = 0;
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id sub_2744D34E0()
{
  sub_2744D3560();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TableCell();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

id sub_2744D3560()
{
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor9TableCell_contentView];
  v7.origin.x = OUTLINED_FUNCTION_7_16();
  Width = CGRectGetWidth(v7);
  v8.origin.x = OUTLINED_FUNCTION_7_16();
  Height = CGRectGetHeight(v8);

  return [v1 setFrame_];
}

uint64_t sub_2744D3604()
{
  [v0 setNeedsLayout];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_43_3();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2744D36C0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered;
  OUTLINED_FUNCTION_32_4();
  return *(v0 + v1);
}

uint64_t sub_2744D36F4(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isHovered;
  result = OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2744D3780()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected;
  OUTLINED_FUNCTION_32_4();
  return *(v0 + v1);
}

uint64_t sub_2744D37B4(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isSelected;
  result = OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2744D3840()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
  OUTLINED_FUNCTION_32_4();
  return *(v0 + v1);
}

uint64_t sub_2744D3874(char a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
  result = OUTLINED_FUNCTION_31_4();
  *(v1 + v3) = a1;
  return result;
}

id TableCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_0();

  return [v2 v3];
}

void sub_2744D3A18()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SelfSizingTableCell.LayoutHost();
  objc_msgSendSuper2(&v7, sel__layoutMetricsInvalidatedForHostedView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) & 1) != 0 || (v3 = Strong + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight, *v3 = 0, *(v3 + 8) = 0, *(v3 + 16) = 1, v4 = Strong + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host, !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, 1, ObjectType, v5);

      swift_unknownObjectRelease();
    }
  }
}

id sub_2744D3B44(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelfSizingTableCell.LayoutHost();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHostedView_, a1);

  return v3;
}

id sub_2744D3C38(void *a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) = 0;
  v3 = v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = [objc_allocWithZone(type metadata accessor for SelfSizingTableCell.LayoutHost()) initWithHostedView_];
  v5 = OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v1 + v5) setAutoresizingMask_];
  v6 = TableCell.init(contentView:)(*(v1 + v5));

  swift_unknownObjectWeakAssign();
  return v6;
}

void sub_2744D3D04(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight;
  if ((*(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_cachedHeight + 16) & 1) != 0 || *v3 != a1)
  {
    v4 = sub_2744D3D64(a1);
    *v3 = a1;
    *(v3 + 8) = v4;
    *(v3 + 16) = 0;
  }
}

double sub_2744D3D64(double a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_isCalculatingHeight) = 1;
  [*(v1 + OBJC_IVAR____TtC14WorkflowEditor19SelfSizingTableCell_layoutHost) sizeThatFits_];
  result = ceil(v3 + 0.0);
  *(v1 + v2) = 0;
  return result;
}

id sub_2744D3DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744D3EA8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v5 = a2;
    v6 = v2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v3;
LABEL_18:

    return sub_2744DD9D8(v5, v6);
  }

  if (a1 != a2)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v8 = 0;
      v9 = 1 << *(a1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(a1 + 56);
      v12 = (v9 + 63) >> 6;
LABEL_27:
      if (!v11)
      {
        v14 = v8;
        while (1)
        {
          v8 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v8 >= v12)
          {
            return 1;
          }

          v15 = *(v3 + 56 + 8 * v8);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_34;
          }
        }

        __break(1u);
        return MEMORY[0x2821FCF40](a1, a2);
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_34:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v8 << 6)));
      sub_27463C74C();
      MEMORY[0x277C58EA0](v16);
      a1 = sub_27463C7AC();
      v17 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v18 = a1 & v17;
        if (((*(v2 + 56 + (((a1 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (a1 & v17)) & 1) == 0)
        {
          break;
        }

        a1 = v18 + 1;
        if (*(*(v2 + 48) + 8 * v18) == v16)
        {
          goto LABEL_27;
        }
      }
    }

    return 0;
  }

  return 1;
}

void sub_2744D40AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v4)
    {
      v5 = 0;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
LABEL_8:
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_15:
        v14 = *(*(a1 + 48) + 8 * (v10 | (v5 << 6)));
        sub_27463C74C();
        MEMORY[0x277C58EA0](v14);
        v15 = sub_27463C7AC();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(a2 + 48) + 8 * v17) == v14)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v11 = v5;
        while (1)
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v5 >= v9)
          {
            return;
          }

          ++v11;
          if (*(a1 + 56 + 8 * v5))
          {
            OUTLINED_FUNCTION_28_0();
            v8 = v13 & v12;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_2744D41F8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v24)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_42_3();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v26 = v11;
      v27 = v6;
      if (v9)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v28 = (v9 - 1) & v9;
LABEL_11:
          v16 = *(*(v6 + 48) + 8 * (v12 | (v4 << 6)));
          sub_27463B6AC();
          sub_27463C74C();
          v29 = v16;
          sub_27463B71C();
          v17 = sub_27463C7AC();

          OUTLINED_FUNCTION_36_2();
          v19 = ~v18;
          while (1)
          {
            if (((*(a2 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
            {

              return;
            }

            v20 = sub_27463B6AC();
            v22 = v21;
            v24 = v20 == sub_27463B6AC() && v22 == v23;
            if (v24)
            {
              break;
            }

            v25 = sub_27463C6BC();

            v17 = (v17 & v19) + 1;
            if (v25)
            {

              goto LABEL_20;
            }
          }

LABEL_20:
          v11 = v26;
          v6 = v27;
          v9 = v28;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_28_0();
          v28 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_2744D43E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_46_3();
    if (v24)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_42_3();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v26 = v6;
      if ((v8 & v7) != 0)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_11:
          v16 = (*(v6 + 48) + 16 * (v12 | (v4 << 6)));
          v18 = *v16;
          v17 = v16[1];
          sub_27463C74C();

          sub_27463B71C();
          sub_27463C7AC();
          OUTLINED_FUNCTION_36_2();
          v21 = ~v20;
          do
          {
            v22 = v19 & v21;
            if (((*(a2 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
            {

              return;
            }

            v23 = (*(a2 + 48) + 16 * v22);
            v24 = *v23 == v18 && v23[1] == v17;
            if (v24)
            {
              break;
            }

            v25 = sub_27463C6BC();
            v19 = v22 + 1;
          }

          while ((v25 & 1) == 0);

          v6 = v26;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_28_0();
          v9 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2744D45E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, &v1[v3], v4);
}

uint64_t sub_2744D46D8()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094EF30);
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_45_3();
  sub_27463B53C();
  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2744D4788()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094EF30);
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_45_3();
  sub_27463B53C();
  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2744D4838()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094EF30);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_40_3();
  sub_27463B87C();
  swift_getAssociatedConformanceWitness();
  v0 = sub_27463B4DC();
  OUTLINED_FUNCTION_40_3();
  sub_27463B87C();
  sub_27463B4DC();
  return v0;
}

uint64_t sub_2744D492C()
{

  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2744D4988()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA8) + 16);
  v2 = OUTLINED_FUNCTION_5_0();
  sub_2744DE41C(v2, v3, v1);
  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2744D4A18@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0xB8));
  OUTLINED_FUNCTION_54_2();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

int *sub_2744D4B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for ScrollableTableView.Element();
  *(a8 + result[9]) = a2;
  *(a8 + result[10]) = a3;
  *(a8 + result[11]) = a4;
  v15 = a8 + result[12];
  *v15 = a5;
  *(v15 + 8) = a6 & 1;
  return result;
}

uint64_t sub_2744D4D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(&v13, a1, v4);
  v6(&v15, a2, v4);
  if (!v14)
  {
    if (!*(&v16 + 1))
    {
      (*(v5 + 8))(&v13, v4);
      v7 = 1;
      return v7 & 1;
    }

LABEL_7:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 8))(&v13, TupleTypeMetadata2);
    v7 = 0;
    return v7 & 1;
  }

  v6(v12, &v13, v4);
  if (!*(&v16 + 1))
  {
    sub_274430664(v12);
    goto LABEL_7;
  }

  v10[0] = v15;
  v10[1] = v16;
  v11 = v17;
  v7 = MEMORY[0x277C58A40](v12, v10);
  sub_274430664(v10);
  sub_274430664(v12);
  (*(v5 + 8))(&v13, v4);
  return v7 & 1;
}

uint64_t sub_2744D4ED4(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(&v6, v2, a2);
  if (!*(&v7 + 1))
  {
    return MEMORY[0x277C58EA0](0);
  }

  v4[0] = v6;
  v4[1] = v7;
  v5 = v8;
  MEMORY[0x277C58EA0](1);
  sub_27463C30C();
  return sub_274430664(v4);
}

uint64_t sub_2744D4F7C(uint64_t a1)
{
  sub_27463C74C();
  sub_2744D4ED4(v3, a1);
  return sub_27463C7AC();
}

uint64_t sub_2744D4FCC(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_2744D4ED4(v4, a2);
  return sub_27463C7AC();
}

char *sub_2744D50B0()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_0();
  v2 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_70_1(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  OUTLINED_FUNCTION_0_26();
  v4 = *(v3 + 104);
  *(v0 + v4) = sub_27463B87C();
  v5 = MEMORY[0x277D84FA0];
  *(v0 + *((*v2 & *v0) + 0x70)) = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_0_26();
  v7 = MEMORY[0x277D84F90];
  *(v0 + *(v6 + 120)) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_0_26();
  *(v0 + *(v8 + 128)) = v7;
  OUTLINED_FUNCTION_0_26();
  v10 = *(v9 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_0_26();
  *(v0 + *(v12 + 144)) = v7;
  OUTLINED_FUNCTION_0_26();
  v14 = (v0 + *(v13 + 152));
  *v14 = sub_2744D4838();
  v14[1] = v15;
  OUTLINED_FUNCTION_0_26();
  v17 = *(v16 + 160);
  OUTLINED_FUNCTION_15_6();
  _s11OverlayHostCMa();
  *(v1 + v17) = sub_274540FC8();
  OUTLINED_FUNCTION_0_26();
  v19 = v1 + *(v18 + 168);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 2;
  OUTLINED_FUNCTION_0_26();
  v21 = v1 + *(v20 + 176);
  *v21 = 0;
  v21[8] = 0;
  OUTLINED_FUNCTION_0_26();
  v23 = v1 + *(v22 + 184);
  OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView.LayoutItem();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_2744D2960(v91);
  v24 = v91[1];
  *v23 = v91[0];
  *(v23 + 1) = v24;
  *(v23 + 4) = v92;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v25 + 192)) = v5;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v26 + 200)) = 0;
  OUTLINED_FUNCTION_0_26();
  v28 = *(v27 + 208);
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v1 + v28) = sub_27463B4DC();
  OUTLINED_FUNCTION_0_26();
  v31 = *(v30 + 216);
  OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView.Element();
  *(v1 + v31) = OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_0_26();
  v33 = v1 + *(v32 + 224);
  *v33 = xmmword_274653780;
  *(v33 + 1) = xmmword_274653780;
  *(v33 + 4) = 0;
  *(v33 + 5) = 0;
  v33[48] = 1;
  OUTLINED_FUNCTION_0_26();
  v35 = *(v34 + 232);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_29_5();
  *(v1 + v35) = sub_27463B4DC();
  OUTLINED_FUNCTION_0_26();
  v37 = *(v36 + 240);
  type metadata accessor for ScrollableTableView.AccessoryID();
  type metadata accessor for TableCell();
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_11_8();
  swift_getWitnessTable();
  *(v1 + v37) = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_0_26();
  v39 = *(v38 + 248);
  type metadata accessor for ScrollableTableView.ReuseIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_9_9();
  swift_getWitnessTable();
  *(v1 + v39) = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v40 + 272)) = 0;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v41 + 280)) = 0;
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v42 + 288)) = 0;
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_56(v1 + *(v43 + 296));
  OUTLINED_FUNCTION_28_7();
  v44 = sub_27463B87C();
  if (sub_27463B8BC())
  {
    sub_2744DDCAC(v44, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v45 + 304)) = v46;
  OUTLINED_FUNCTION_0_26();
  __swift_storeEnumTagSinglePayload(v1 + *(v47 + 312), 1, 1, AssociatedTypeWitness);
  v48 = objc_allocWithZone(MEMORY[0x277D759D8]);
  v49 = OUTLINED_FUNCTION_0_0();
  [v50 v51];
  OUTLINED_FUNCTION_0_26();
  v53 = *(v52 + 256);
  *(v1 + v53) = v54;
  [v54 setShowsVerticalScrollIndicator_];
  [*(v1 + v53) setShowsHorizontalScrollIndicator_];
  [*(v1 + v53) setAlwaysBounceVertical_];
  v55 = *(v1 + v53);
  OUTLINED_FUNCTION_0_26();
  *(v1 + *(v56 + 264)) = v55;
  OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView();
  v57 = v55;
  v58 = OUTLINED_FUNCTION_0_0();
  v61 = objc_msgSendSuper2(v59, v60, v58);
  v62 = *(v61 + *((*v2 & *v61) + 0x108));
  v63 = v61;
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];
  OUTLINED_FUNCTION_15_6();
  type metadata accessor for ScrollableTableView.ScrollableTableViewScrollDelegate();
  sub_2744D594C(v63);
  OUTLINED_FUNCTION_8_13();
  v65 = *(v64 + 272);
  v66 = *(v63 + v65);
  *(v63 + v65) = v67;
  v68 = v67;

  OUTLINED_FUNCTION_8_13();
  v70 = *(v69 + 256);
  v71 = *(v63 + v70);
  [v71 setDelegate_];

  [*(v63 + v70) setTranslatesAutoresizingMaskIntoConstraints_];
  v72 = *(v63 + v70);
  v73 = v63;
  [v73 addSubview_];
  v90 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_274653790;
  v75 = [*(v63 + v70) leadingAnchor];
  v76 = [v73 leadingAnchor];
  v77 = OUTLINED_FUNCTION_53_2();

  *(v74 + 32) = v77;
  v78 = [*(v63 + v70) trailingAnchor];
  v79 = [v73 trailingAnchor];

  v80 = OUTLINED_FUNCTION_53_2();
  *(v74 + 40) = v80;
  v81 = [*(v63 + v70) topAnchor];
  v82 = [v73 topAnchor];

  v83 = OUTLINED_FUNCTION_53_2();
  *(v74 + 48) = v83;
  v84 = [*(v63 + v70) bottomAnchor];
  v85 = [v73 bottomAnchor];

  v86 = [v84 constraintEqualToAnchor_];
  *(v74 + 56) = v86;
  sub_274412734(0, &qword_28094E990);
  v87 = sub_27463B7FC();

  [v90 activateConstraints_];

  OUTLINED_FUNCTION_8_13();
  [v73 addSubview_];

  return v73;
}

void sub_2744D59A4()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_70_1(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  OUTLINED_FUNCTION_52_2();
  v4 = *(v3 + 104);
  *(v0 + v4) = sub_27463B87C();
  v5 = MEMORY[0x277D84FA0];
  *(v0 + *((*v2 & *v0) + 0x70)) = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_52_2();
  v7 = MEMORY[0x277D84F90];
  *(v0 + *(v6 + 120)) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_52_2();
  *(v0 + *(v8 + 128)) = v7;
  OUTLINED_FUNCTION_52_2();
  v10 = *(v9 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_52_2();
  *(v0 + *(v12 + 144)) = v7;
  OUTLINED_FUNCTION_52_2();
  v14 = (v0 + *(v13 + 152));
  *v14 = sub_2744D4838();
  v14[1] = v15;
  OUTLINED_FUNCTION_52_2();
  v17 = *(v16 + 160);
  _s11OverlayHostCMa();
  *(v1 + v17) = sub_274540FC8();
  OUTLINED_FUNCTION_52_2();
  v19 = v1 + *(v18 + 168);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 2;
  OUTLINED_FUNCTION_52_2();
  v21 = v1 + *(v20 + 176);
  *v21 = 0;
  v21[8] = 0;
  OUTLINED_FUNCTION_52_2();
  v23 = v1 + *(v22 + 184);
  type metadata accessor for ScrollableTableView.LayoutItem();
  OUTLINED_FUNCTION_1_17();
  swift_getWitnessTable();
  sub_2744D2960(v48);
  v24 = v48[1];
  *v23 = v48[0];
  *(v23 + 1) = v24;
  *(v23 + 4) = v49;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v25 + 192)) = v5;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v26 + 200)) = 0;
  OUTLINED_FUNCTION_52_2();
  v28 = *(v27 + 208);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v1 + v28) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  v31 = *(v30 + 216);
  type metadata accessor for ScrollableTableView.Element();
  *(v1 + v31) = OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_52_2();
  v33 = v1 + *(v32 + 224);
  *v33 = xmmword_274653780;
  *(v33 + 1) = xmmword_274653780;
  *(v33 + 4) = 0;
  *(v33 + 5) = 0;
  v33[48] = 1;
  OUTLINED_FUNCTION_52_2();
  v35 = *(v34 + 232);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  *(v1 + v35) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  v37 = *(v36 + 240);
  type metadata accessor for ScrollableTableView.AccessoryID();
  type metadata accessor for TableCell();
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_11_8();
  swift_getWitnessTable();
  *(v1 + v37) = OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_52_2();
  v39 = *(v38 + 248);
  type metadata accessor for ScrollableTableView.ReuseIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_9_9();
  swift_getWitnessTable();
  *(v1 + v39) = sub_27463B4DC();
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v40 + 272)) = 0;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v41 + 280)) = 0;
  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v42 + 288)) = 0;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_56(v1 + *(v43 + 296));
  v44 = sub_27463B87C();
  if (sub_27463B8BC())
  {
    sub_2744DDCAC(v44, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
  }

  OUTLINED_FUNCTION_52_2();
  *(v1 + *(v45 + 304)) = v46;
  OUTLINED_FUNCTION_52_2();
  __swift_storeEnumTagSinglePayload(v1 + *(v47 + 312), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id sub_2744D603C()
{
  sub_2744D6230();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollableTableView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

void sub_2744D60C0(void *a1)
{
  v1 = a1;
  sub_2744D603C();
}

__n128 sub_2744D6108@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_27463C0AC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ScrollableTableView.AccessoryID() + 36);
  result = *a2;
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a2 + 32);
  return result;
}

unint64_t sub_2744D61CC()
{
  if (*v0 >> 62)
  {
    result = sub_27463C27C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_2745A87DC();
  if (!result)
  {
    v2 = sub_274453594(*v0);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return sub_274595980(result);
    }
  }

  return result;
}

uint64_t sub_2744D6230()
{
  v1 = v0;
  sub_2744D6628();
  sub_2744D6340();
  sub_2744D7F18();
  v2 = MEMORY[0x277D85000];
  v3 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA0));
  [v1 bounds];
  [v3 setFrame_];
  v4 = sub_2744D46B0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + *((*v2 & *v1) + 0x90)) = MEMORY[0x277D84F90];
}

double sub_2744D6340()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x100));
  [v1 contentOffset];
  v3 = v2;
  [v1 bounds];
  return v3;
}

id sub_2744D63CC(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ScrollableTableView.ScrollableTableViewScrollDelegate();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void sub_2744D6484()
{
  v0 = sub_2744D63BC();
  if (v0)
  {
    v4 = v0;
    sub_2744D6004(0);
    if (sub_2744D3E30())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      (*(v2 + 48))(ObjectType, v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2744D6544(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2744D6484();
}

void sub_2744D6628()
{
  ObjectType = swift_getObjectType();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  OUTLINED_FUNCTION_40_3();
  v118 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v117 = v4;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v6);
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v121 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v2 & v1) + 0x58);
  OUTLINED_FUNCTION_40_3();
  v13 = type metadata accessor for ScrollableTableView.Element();
  OUTLINED_FUNCTION_1();
  v123 = v14;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v16);
  v142 = v12;
  v17 = *(v12 + 8);
  OUTLINED_FUNCTION_41_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v144 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0();
  v133 = v21;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v23);
  OUTLINED_FUNCTION_4_0();
  v143 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0();
  v119 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_50_3();
  v146 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v30);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v147 = v31;
  v140 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0();
  v139 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3(v35);
  if (*(v0 + *((v2 & v1) + 0xC8)) == 1)
  {
    v116 = v11;
    v115 = v7;
    v37 = v36;
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_34_4();
    v145 = v17;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v129 = AssociatedTypeWitness;
    v124 = AssociatedConformanceWitness;
    v152 = sub_27463B4DC();
    OUTLINED_FUNCTION_21_8();
    v151 = sub_27463B87C();
    v136 = v0;
    v153[0] = sub_2744D3E80();
    v137 = v3;
    v39 = sub_27463B92C();
    OUTLINED_FUNCTION_18_6();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x277C57F10](&v148, v39, WitnessTable);

    v150 = v148;
    OUTLINED_FUNCTION_41_3();
    sub_27463C5BC();
    sub_27463C58C();
    OUTLINED_FUNCTION_41_3();
    v131 = sub_27463C5AC();
    v130 = v37 + 32;
    v125 = (v143 + 32);
    v126 = v143 + 16;
    v127 = (v144 + 8);
    v128 = v143 + 8;
    v141 = v13;
    v41 = v138;
    v42 = (v144 + 8);
    while (1)
    {
      v43 = v139;
      sub_27463C59C();
      OUTLINED_FUNCTION_38_3();
      v44(v41, v43, v140);
      if (__swift_getEnumTagSinglePayload(v41, 1, v147) == 1)
      {
        break;
      }

      v144 = *v41;
      v45 = v144;
      v46 = v41 + *(v147 + 48);
      v47 = v135;
      v48 = v137;
      (*v125)(v135, v46, v137);
      v49 = v132;
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      v148 = v45;
      v149 = 0;
      v50 = v129;
      sub_27463B51C();
      sub_27463B54C();
      OUTLINED_FUNCTION_38_3();
      v51(v146, v47, v48);
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      sub_2744D492C();
      v143 = sub_2744D46D8();

      v52 = *v42;
      (*v42)(v49, v50);
      v53 = v133;
      OUTLINED_FUNCTION_44_2();
      sub_27463C39C();
      sub_2744D492C();
      v54 = sub_2744D4788();

      v52(v53, v50);
      v13 = v141;
      sub_2744D4B7C(v146, v143, v54, 0, v144, 0, v48, v134);
      OUTLINED_FUNCTION_21_8();
      sub_27463B92C();
      sub_27463B8CC();
      OUTLINED_FUNCTION_38_3();
      v55 = v48;
      v41 = v138;
      v56(v47, v55);
    }

    v57 = v136;
    v58 = v136;
    v59 = sub_2744D4988();
    v62 = v59;
    if (v61)
    {
      if (v61 != 1)
      {
LABEL_35:
        MEMORY[0x28223BE20](v59);
        *(&v115 - 2) = v57;
        OUTLINED_FUNCTION_21_8();
        sub_27463B92C();
        OUTLINED_FUNCTION_19_6();
        OUTLINED_FUNCTION_23_5();
        sub_27463BB6C();
        v107 = v151;

        sub_2744D4C40(v108);
        v109 = sub_2744D4590();
        v110 = sub_2744D45B8();
        v111 = sub_2744D76F0(v107, v109, v110);

        v112 = MEMORY[0x277D85000];
        swift_beginAccess();
        type metadata accessor for ScrollableTableView.LayoutItem();
        OUTLINED_FUNCTION_1_17();
        swift_getWitnessTable();
        v113 = type metadata accessor for LazyStackLayoutEngine();
        sub_2744D1AB4(v111, v113);
        swift_endAccess();
        sub_2744D4B54(v152);
        *(v57 + *((*v112 & *v57) + 0xC8)) = 0;
        return;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        sub_27463C23C();
        v58 = type metadata accessor for EditorDropItem();
        sub_2744DE2CC(&qword_28094EF08, type metadata accessor for EditorDropItem);
        OUTLINED_FUNCTION_5_0();
        sub_27463BA7C();
        v62 = v153[0];
        v63 = v153[1];
        v64 = v153[2];
        v65 = v153[3];
        v66 = v153[4];
      }

      else
      {
        v65 = 0;
        OUTLINED_FUNCTION_36_2();
        v63 = v62 + 56;
        OUTLINED_FUNCTION_57_1();
        v66 = v75 & v76;
      }

      v147 = v64;
      v13 = (v64 + 64) >> 6;
      if (v62 < 0)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v77 = v65;
        v78 = v65;
        if (!v66)
        {
          break;
        }

LABEL_20:
        OUTLINED_FUNCTION_28_0();
        v81 = v80 & v79;
        v57 = *(*(v62 + 48) + ((v78 << 9) | (8 * v82)));

        if (!v57)
        {
LABEL_26:
          v59 = sub_274406A24();
          v57 = v136;
          goto LABEL_35;
        }

        while (1)
        {
          v84 = v57[2];
          v85 = v62;
          v86 = v141;
          v87 = sub_27463B92C();
          sub_27463B86C();
          sub_27457FF48(v84, v151);

          OUTLINED_FUNCTION_30_5();
          v90 = v88 + v89 * v84;
          v91 = *(v86 + 44);
          v62 = v85;
          *(v90 + v91) = 1;
          v58 = &v151;
          CGSizeMake(v87);
          v65 = v78;
          v66 = v81;
          if ((v85 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_22:
          v83 = sub_27463C2BC();
          if (v83)
          {
            v150 = v83;
            type metadata accessor for EditorDropItem();
            swift_dynamicCast();
            v57 = v148;
            v78 = v65;
            v81 = v66;
            if (v148)
            {
              continue;
            }
          }

          goto LABEL_26;
        }
      }

      while (1)
      {
        v78 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v78 >= v13)
        {
          goto LABEL_26;
        }

        ++v77;
        if (*(v63 + 8 * v78))
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v65 = v60;
      v58 = v59;
      v62 = v116;
      sub_274637FFC();
      OUTLINED_FUNCTION_21_8();
      v148 = sub_27463B87C();
      v63 = v58 & 0xC000000000000001;
      sub_2744535A4(0, (v58 & 0xC000000000000001) == 0);
      v147 = v58;
      if ((v58 & 0xC000000000000001) == 0)
      {
        v63 = *(v58 + 32);

        goto LABEL_11;
      }
    }

    MEMORY[0x277C58B20](0, v58);
    v114 = OUTLINED_FUNCTION_64_0();
    sub_2744DE3D0(v114, v65, 0);
LABEL_11:
    v67 = v137;
    v68 = v129;
    v69 = *(v63 + 16);
    if (v69)
    {
      v70 = *(v63 + 24);
      sub_274412734(0, &qword_28094C5E0);
      v71 = v69;
      if (sub_27463BF7C())
      {
        OUTLINED_FUNCTION_21_8();
        v72 = sub_27463B92C();
        sub_27463B86C();
        sub_27457FF48(v70, v151);
        OUTLINED_FUNCTION_30_5();
        *(v73 + v74 * v70 + *(v13 + 44)) = 1;
        CGSizeMake(v72);
        sub_274637FCC();

        goto LABEL_32;
      }
    }

    sub_2744306B8(v63 + 48, v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094EF20);
    v92 = v120;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_65_1();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v67);
      OUTLINED_FUNCTION_38_3();
      v96 = v119;
      v97(v119, v92, v67);
      OUTLINED_FUNCTION_38_3();
      v98(v135, v96, v67);
      v144 = v63;
      OUTLINED_FUNCTION_61_2();
      sub_27463C39C();
      sub_2744D492C();
      OUTLINED_FUNCTION_5_0();
      v146 = v65;
      v143 = sub_2744D46D8();

      v99 = *v127;
      (*v127)(v63, v68);
      OUTLINED_FUNCTION_61_2();
      sub_27463C39C();
      sub_2744D492C();
      v100 = sub_2744D4788();

      v99(v63, v129);
      v101 = v100;
      v65 = v146;
      v62 = v116;
      sub_2744D4B7C(v135, v143, v101, 1, 0, 1, v67, v134);
      OUTLINED_FUNCTION_21_8();
      sub_27463B92C();
      sub_27463B8CC();
      OUTLINED_FUNCTION_38_3();
      v103 = v119;
      v104 = v67;
    }

    else
    {
      v105 = OUTLINED_FUNCTION_43_3();
      __swift_storeEnumTagSinglePayload(v105, v106, 1, v67);
      v102 = *(v117 + 8);
      v103 = v92;
      v104 = v118;
    }

    v102(v103, v104);
LABEL_32:
    if ((sub_274637FEC() & 1) == 0)
    {
      OUTLINED_FUNCTION_21_8();
      sub_27463B92C();
      OUTLINED_FUNCTION_19_6();
      sub_27463B5AC();
    }

    v153[0] = v148;
    v150 = v65;
    OUTLINED_FUNCTION_21_8();
    sub_27463B92C();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    sub_27463BB5C();
    sub_2744DE3D0(v147, v65, 0);

    v59 = (*(v121 + 8))(v62, v115);
    goto LABEL_35;
  }
}

BOOL sub_2744D7548()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v8[-v2 - 8];
  v4 = sub_2744D4568();
  sub_27463C39C();
  swift_getAssociatedConformanceWitness();
  sub_27463C63C();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  v5 = sub_2744899C4(v8, v4);

  sub_274430664(v8);
  return v5;
}

uint64_t sub_2744D76F0(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v53[0] = a3;
  v69 = a1;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for ScrollableTableView.Element();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  v64 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_27463C0AC();
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = (v53 - v13);
  v14 = type metadata accessor for ScrollableTableView.LayoutAtom();
  MEMORY[0x28223BE20](v14);
  v16 = v53 - v15;
  v17 = type metadata accessor for ScrollableTableView.LayoutItem();
  MEMORY[0x28223BE20](v17);
  v19 = v53 - v18;
  v75 = sub_27463B87C();
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = a2 + 32;
    do
    {
      sub_2744DE3E4(v21, v16);
      swift_storeEnumTagMultiPayload();
      sub_2744DB408(v16, 0, 1, 0, v19);
      sub_27463B92C();
      sub_27463B8CC();
      v21 += 120;
      --v20;
    }

    while (v20);
  }

  v65 = v6;
  v66 = v19;
  v70 = v17;
  v71 = v14;
  v74[1] = v69;
  v22 = v64;
  v23 = sub_27463B92C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x277C57F10](v74, v23, WitnessTable);
  v73 = v74[0];
  sub_27463C5BC();
  sub_27463C58C();
  v25 = sub_27463C5AC();
  v58 = (v68 + 32);
  v59 = v25;
  v56 = (v72 + 32);
  v26 = (v5 - 8);
  v54 = (v72 + 8);
  v53[1] = (v5 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v57 = v9;
  for (i = (v5 - 8); ; v26 = i)
  {
    v27 = v61;
    sub_27463C59C();
    v28 = v60;
    (*v58)(v60, v27, v62);
    v29 = TupleTypeMetadata2;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, TupleTypeMetadata2);
    v31 = v66;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v32 = *v28;
    (*v56)(v9, v28 + *(v29 + 48), v22);
    v33 = *&v9[v22[9]];
    v34 = *(v33 + 16);
    v35 = *v26;
    v72 = v32;
    if (v34)
    {
      v67 = v35;
      LODWORD(v69) = v9[v22[11]];
      v36 = v33 + 32;
      v68 = *(v35 + 16);
      v37 = v66;
      do
      {
        v38 = *(swift_getTupleTypeMetadata2() + 48);
        (v68)(v16, v9, v5);
        sub_2744DE3E4(v36, &v16[v38]);
        swift_storeEnumTagMultiPayload();
        sub_2744DB408(v16, v72, 0, v69, v37);
        sub_27463B92C();
        sub_27463B8CC();
        v36 += 120;
        --v34;
      }

      while (v34);
      v22 = v64;
      v32 = v72;
      v35 = v67;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40);
    v39 = swift_getTupleTypeMetadata2();
    v40 = v35;
    v41 = &v16[*(v39 + 48)];
    v42 = *(v40 + 16);
    v9 = v57;
    v68 = (v40 + 16);
    v69 = v42;
    v42(v16, v57, v5);
    v43 = &v9[v22[12]];
    v44 = *v43;
    LOBYTE(v43) = v43[8];
    *v41 = v44;
    v41[8] = v43;
    swift_storeEnumTagMultiPayload();
    v45 = v66;
    LODWORD(v67) = v9[v22[11]];
    sub_2744DB408(v16, v32, 0, v67, v66);
    sub_27463B92C();
    sub_27463B8CC();
    v46 = *&v9[v22[10]];
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = v46 + 32;
      do
      {
        v49 = *(swift_getTupleTypeMetadata2() + 48);
        v69(v16, v9, v5);
        sub_2744DE3E4(v48, &v16[v49]);
        swift_storeEnumTagMultiPayload();
        sub_2744DB408(v16, v72, 0, v67, v45);
        sub_27463B8CC();
        v48 += 120;
        --v47;
      }

      while (v47);
    }

    v22 = v64;
    (*v54)(v9, v64);
  }

  v50 = *(v53[0] + 16);
  if (v50)
  {
    v51 = v53[0] + 32;
    do
    {
      sub_2744DE3E4(v51, v16);
      swift_storeEnumTagMultiPayload();
      sub_2744DB408(v16, 0, 1, 0, v31);
      sub_27463B92C();
      sub_27463B8CC();
      v51 += 120;
      --v50;
    }

    while (v50);
  }

  return v75;
}

double sub_2744D7E60(double a1, double a2, double a3, double a4)
{
  v4 = CGRectGetWidth(*&a1) + -40.0;
  v5 = COERCE_DOUBLE(sub_2744D49F0());
  if (v6)
  {
    v5 = v4;
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return (v4 - v7) * 0.5 + 20.0;
}

uint64_t sub_2744D7EE0(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x128);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

void sub_2744D7F18()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_0();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = type metadata accessor for ScrollableTableView.AccessoryID();
  v365 = type metadata accessor for TableCell();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v364 = v5;
  v363 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v322 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0();
  v367 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v381 = v10;
  v11 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_5();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v380 = v14;
  v372 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v323 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0();
  v371 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v370 = v19;
  OUTLINED_FUNCTION_41_3();
  v338 = _s12OverlayLayerC10LayoutItemVMa();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_40_1();
  v332 = v21;
  OUTLINED_FUNCTION_4_0();
  v359 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0();
  v366 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  v361 = v26;
  OUTLINED_FUNCTION_4_0();
  v383 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0();
  v330 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  v341 = v31;
  OUTLINED_FUNCTION_41_3();
  type metadata accessor for ScrollableTableView.LayoutAtom();
  OUTLINED_FUNCTION_1();
  v346 = v33;
  v347 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0();
  v331 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  v368 = v36;
  OUTLINED_FUNCTION_41_3();
  v351 = v3;
  type metadata accessor for ScrollableTableView.LayoutItem();
  OUTLINED_FUNCTION_1();
  v345 = v37;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_40_1();
  v369 = v39;
  v349 = v40;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v342 = v41;
  v382 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v350 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0();
  v377 = v44;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v374 = v46;
  OUTLINED_FUNCTION_28_7();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v328 = v48;
  v329 = v47;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0();
  v320 = v49;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_50_3();
  v336 = v51;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v52);
  v54 = v315 - v53;
  OUTLINED_FUNCTION_4_0();
  v354 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_0();
  v321 = v57;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_50_3();
  v378 = v59;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_50_3();
  v360 = v61;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_50_3();
  v340 = v63;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_19();
  v373 = v65;
  OUTLINED_FUNCTION_28_7();
  v66 = v13;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  v337 = v11;
  v356 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_5();
  v390 = sub_27463B4DC();
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_11_8();
  WitnessTable = swift_getWitnessTable();
  v348 = v4;
  v376 = WitnessTable;
  v70 = sub_27463B4DC();
  v339 = v68;
  *(v68 + 16) = v70;
  v362 = v68 + 16;
  v71 = v66;
  v72 = v354;
  v389 = sub_27463B87C();
  v319 = [objc_opt_self() functionWithName_];
  v73 = OUTLINED_FUNCTION_0_0();
  v77 = sub_2744D7E60(v73, v74, v75, v76);
  v79 = v78;
  sub_2744D45E0(v54);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, AssociatedTypeWitness);
  v355 = AssociatedTypeWitness;
  v379 = v71;
  v375 = AssociatedConformanceWitness;
  if (EnumTagSinglePayload == 1)
  {
    (*(v328 + 8))(v54, v329);
  }

  else
  {
    (*(v72 + 32))(v373, v54, AssociatedTypeWitness);
    sub_2744D4C68();
    sub_27463B53C();

    v81 = *&v385[0];
    if (*&v385[0])
    {
      [*&v385[0] frame];
      v316 = v82;

      v83 = OUTLINED_FUNCTION_59_2();
      v84(v83);
      v317 = 0;
      goto LABEL_7;
    }

    v85 = OUTLINED_FUNCTION_59_2();
    v87(v85, v86);
  }

  v317 = 1;
  v316 = 0.0;
LABEL_7:
  v88 = v356;
  v89 = v349;
  v90 = swift_allocObject();
  v343 = v90;
  *(v90 + 16) = 0;
  v318 = (v90 + 16);
  sub_2744D4A18(v391);
  v419 = v391[1];
  v420[0] = v391[0];
  sub_2744DE314(&v419);
  v417 = v392;
  v418 = v393;
  v91 = sub_2744D2D90(&v417);
  *&v385[0] = v420[0];
  MEMORY[0x28223BE20](v91);
  v92 = v351;
  v315[-2] = v88;
  v315[-1] = v92;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_28_7();
  v94 = sub_27463B92C();
  OUTLINED_FUNCTION_17_7();
  v95 = swift_getWitnessTable();
  v97 = sub_27457591C(sub_2744DE37C, KeyPath, v94, MEMORY[0x277D84030], MEMORY[0x277D84A98], v95, MEMORY[0x277D84AC0], v96);
  v315[2] = 0;
  OUTLINED_FUNCTION_25_0();
  v99 = *(v98 + 8);
  v352 = v98 + 8;
  v353 = v99;
  v99(v420, v94);

  v357 = sub_2745E1B10(v97);
  v421.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v421);
  v358 = v1;
  v344 = v94;
  if (Width > 0.0)
  {
    sub_2744D4A18(v394);
    v415 = v394[1];
    v416 = v394[0];
    sub_2744DE314(&v415);
    v413 = v395;
    v414 = v396;
    sub_2744D2D90(&v413);
    v400[0] = v416;
    OUTLINED_FUNCTION_18_6();
    v101 = swift_getWitnessTable();
    MEMORY[0x277C57F10](v385, v94, v101);
    v353(&v416, v94);
    v400[0] = *&v385[0];
    OUTLINED_FUNCTION_40_3();
    sub_27463C5BC();
    sub_27463C58C();
    OUTLINED_FUNCTION_40_3();
    v373 = sub_27463C5AC();
    v102 = (v350 + 4);
    v350 = (v345 + 32);
    v346 += 2;
    v334 = (v383 + 4);
    v335 = v359 + 8;
    v333 = (v383 + 1);
    v315[1] = v351 + 32;
    v326 = (v354 + 16);
    v327 = v351 + 40;
    v103 = v369;
    v104 = v342;
    v324 = v345 + 8;
    v325 = (v354 + 8);
    while (1)
    {
      while (1)
      {
        v105 = v377;
        sub_27463C59C();
        v106 = v374;
        (*v102)(v374, v105, v382);
        v107 = OUTLINED_FUNCTION_43_3();
        if (__swift_getEnumTagSinglePayload(v107, v108, v104) == 1)
        {
LABEL_41:

          goto LABEL_42;
        }

        v109 = *v106;
        (*v350)(v103, v106 + *(v104 + 48), v89);
        sub_2744D4A18(v397);
        OUTLINED_FUNCTION_1_17();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_28_7();
        v383 = type metadata accessor for LazyStackLayoutEngine();
        sub_2744D202C(v109);
        v111 = v110;
        v113 = v112;
        v412 = v397[0];
        v353(&v412, v94);
        v411 = v397[1];
        sub_2744DE314(&v411);
        v409 = v398;
        v410 = v399;
        sub_2744D2D90(&v409);
        v422.origin.x = OUTLINED_FUNCTION_0_0();
        if (v111 + v113 >= CGRectGetMinY(v422))
        {
          break;
        }

        v114 = OUTLINED_FUNCTION_26_6();
        v115(v114);
      }

      v423.origin.x = OUTLINED_FUNCTION_0_0();
      MaxY = CGRectGetMaxY(v423);
      v424.origin.x = OUTLINED_FUNCTION_0_0();
      if (MaxY + CGRectGetHeight(v424) * 0.5 < v111)
      {
        v203 = OUTLINED_FUNCTION_26_6();
        v204(v203);
        goto LABEL_41;
      }

      v345 = *v346;
      (v345)(v368, v103, v347);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v118 = v356;
        v119 = *(OUTLINED_FUNCTION_35_3() + 48);
        v120 = v330;
        v121 = v368;
        (*v334)(v330, v368, v118);
        memcpy(v385, &v121[v119], 0x78uLL);
        v122 = v336;
        sub_27463C39C();
        OUTLINED_FUNCTION_65_1();
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v355);
        sub_27448E108(v385, &v386);
        v126 = OUTLINED_FUNCTION_62_2();
        sub_2744D6108(v126, v127, v128);
        v129 = OUTLINED_FUNCTION_12_7();
        sub_2744DA7E8(v130, v131, v132, v133, v343, v339, v129, v134, v135, v136, v137, v138);
        v139 = OUTLINED_FUNCTION_51_2();
        v140(v139);
        sub_2744DE060(v385);
        v141 = v120;
        v103 = v369;
        v142 = v118;
        v94 = v344;
        v89 = v349;
        (*v333)(v141, v142);
        if (!v122)
        {
          goto LABEL_36;
        }
      }

      else
      {
        memcpy(v385, v368, 0x78uLL);
        v122 = v336;
        __swift_storeEnumTagSinglePayload(v336, 1, 1, v355);
        sub_27448E108(v385, &v386);
        v145 = OUTLINED_FUNCTION_62_2();
        sub_2744D6108(v145, v146, v147);
        v148 = OUTLINED_FUNCTION_12_7();
        sub_2744DA7E8(v149, v150, v151, v152, v343, v339, v148, v153, v154, v155, v156, v157);
        v158 = OUTLINED_FUNCTION_51_2();
        v159(v158);
        sub_2744DE060(v385);
        if (!v122)
        {
          goto LABEL_36;
        }
      }

LABEL_31:
      v122 = v122;
      v186 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
      swift_beginAccess();
      v187 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x118));
      if (v122[v186] != v187)
      {
        v122[v186] = v187;
      }

      v188 = sub_2744D4AAC();
      v103 = v369;
      sub_2744D9F04(v349, v385);
      v189 = sub_2744899C4(v385, v188);

      sub_274430664(v385);
      if (!v189)
      {
        [v122 isHidden];
      }

      v89 = v349;
      v94 = v344;
LABEL_36:
      v190 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x128);
      *v190 = 0;
      v190[8] = 1;
      sub_2744D4A18(v400);
      sub_2744D202C(v109);
      v192 = v191;
      v194 = v193;
      v408 = v400[0];
      v353(&v408, v94);
      v407 = v400[1];
      sub_2744DE314(&v407);
      v405 = v401;
      v406 = v402;
      sub_2744D2D90(&v405);
      v195 = v103 + *(v89 + 36);
      if (v195[8] == 1)
      {
        v196 = OUTLINED_FUNCTION_26_6();
        v197(v196);
      }

      else
      {
        v198 = *v195;
        v199 = v331;
        (v345)(v331, v103, v347);
        v425.origin.x = OUTLINED_FUNCTION_0_0();
        MinY = CGRectGetMinY(v425);
        sub_274540FFC(v199, v198, v332, v77, v192 - MinY, v79, v194);
        sub_27463B92C();
        v103 = v369;
        sub_27463B8CC();

        v201 = OUTLINED_FUNCTION_26_6();
        v202(v201);
      }

      v104 = v342;
    }

    (*v334)(v341, v368, v356);
    sub_27463C39C();
    sub_2744D4C68();
    sub_27463B53C();

    v143 = *&v385[0];
    if (*&v385[0])
    {
      v144 = *&v385[0];
LABEL_28:
      v169 = *(v351 + 40);
      v170 = v143;
      v171 = v144;
      v169();
      v172 = v171;
      v173 = OUTLINED_FUNCTION_12_7();
      sub_2744DA3E0(v174, v175, v176, v343, v173, v177, v178, v179, v180, v181);
      [v172 setHidden_];

      sub_2744DB9EC();
      v182 = sub_27463BA8C() & 1;

      v183 = (*((*MEMORY[0x277D85000] & *v172) + 0x120))() & 1;
      if (v182 != v183)
      {
        (*((*MEMORY[0x277D85000] & *v172) + 0x128))(v182);
      }

      v184 = v340;
      v185 = v355;
      (*v326)(v360, v340, v355);
      *&v385[0] = v172;
      OUTLINED_FUNCTION_21_8();
      sub_27463B51C();
      v122 = v172;
      OUTLINED_FUNCTION_29_5();
      sub_27463B54C();
      (*v325)(v184, v185);
      (*v333)(v341, v356);
      goto LABEL_31;
    }

    memset(v385, 0, 40);
    v160 = sub_2744D501C();
    v161 = type metadata accessor for ScrollableTableView.ReuseIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10);
    OUTLINED_FUNCTION_9_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_40_3();
    sub_27463B51C();
    v162 = sub_27463B52C();
    if (*v163)
    {
      v164 = sub_2744D61CC();
      v162(v384, 0);
      OUTLINED_FUNCTION_25_0();
      (*(v165 + 8))(v385, v161);
      v160(&v386, 0);
      v1 = v358;
      if (v164)
      {
        v166 = swift_dynamicCastClass();
        if (v166)
        {
          v144 = v166;
          v167 = v164;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v162(v384, 0);
      OUTLINED_FUNCTION_25_0();
      (*(v168 + 8))(v385, v161);
      v160(&v386, 0);
      v1 = v358;
    }

    v144 = (*(v351 + 32))(v356);
    goto LABEL_28;
  }

LABEL_42:
  v205 = sub_2744D4C68();
  v206 = v380;
  if ((v205 & 0xC000000000000001) != 0)
  {
    v207 = sub_27463C51C();
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = v207 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_57_1();
    v210 = (v212 & v213);
  }

  v214 = v355;
  v215 = 0;
  v382 = (v354 + 32);
  v347 = v209;
  v216 = (v209 + 64) >> 6;
  v350 = (v354 + 16);
  v368 = (v354 + 8);
  v369 = (v323 + 32);
  v217 = v357 + 56;
  v377 = v357 + 56;
  v373 = v208;
  v374 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  if (v210)
  {
    v218 = v210;
    v219 = v215;
LABEL_54:
    v383 = ((v218 - 1) & v218);
    v227 = __clz(__rbit64(v218)) | (v219 << 6);
    v228 = v354;
    v229 = v360;
    v230 = v211;
    (*(v354 + 16))(v360, *(v211 + 48) + *(v354 + 72) * v227, v214);
    v231 = *(*(v230 + 56) + 8 * v227);
    v232 = *(v380 + 48);
    v233 = *(v228 + 32);
    v234 = v371;
    v233(v371, v229, v214);
    *(v234 + v232) = v231;
    v206 = v380;
    OUTLINED_FUNCTION_65_1();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v206);
    v238 = v231;
    v226 = v219;
    v217 = v377;
    goto LABEL_58;
  }

  v226 = v215;
  while (1)
  {
    v219 = v226 + 1;
    if (__OFADD__(v226, 1))
    {
      break;
    }

    if (v219 >= v216)
    {
      v239 = OUTLINED_FUNCTION_43_3();
      __swift_storeEnumTagSinglePayload(v239, v240, 1, v206);
      v383 = 0;
LABEL_58:
      while (1)
      {
        v241 = v370;
        (*v369)();
        v242 = OUTLINED_FUNCTION_43_3();
        if (__swift_getEnumTagSinglePayload(v242, v243, v206) == 1)
        {
          break;
        }

        v215 = *(v241 + *(v206 + 48));
        v244 = v378;
        (*v382)(v378, v241, v214);
        sub_27463B53C();
        v245 = *&v385[0];
        if (*&v385[0])
        {

          OUTLINED_FUNCTION_47_3();
          v246(v244, v214);
          v215 = v226;
          v210 = v383;
        }

        else
        {
          sub_27463C63C();
          v247 = v357;
          if (*(v357 + 16))
          {
            sub_27463C2EC();
            OUTLINED_FUNCTION_36_2();
            v250 = ~v249;
            while (1)
            {
              v206 = v248 & v250;
              if (((*(v217 + (((v248 & v250) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v248 & v250)) & 1) == 0)
              {
                break;
              }

              sub_27448E108(*(v247 + 48) + 40 * v206, &v386);
              v251 = MEMORY[0x277C58A40](&v386, v385);
              sub_274430664(&v386);
              v248 = v206 + 1;
              if (v251)
              {
                sub_274430664(v385);
                memset(v385, 0, 40);
                v210 = v215;
                sub_2744DAE68(v210, v385);

                type metadata accessor for ScrollableTableView.ReuseIdentifier();
                OUTLINED_FUNCTION_7();
                (*(v252 + 8))(v385);
                OUTLINED_FUNCTION_47_3();
                v253(v378, v214);
                OUTLINED_FUNCTION_63_1();
                goto LABEL_67;
              }
            }
          }

          sub_274430664(v385);
          v210 = swift_allocObject();
          v254 = v358;
          *(v210 + 2) = v358;
          *(v210 + 3) = v215;
          v206 = (*MEMORY[0x277D85000] & *v215) + 344;
          v255 = *((*MEMORY[0x277D85000] & *v215) + 0x158);
          v256 = v215;
          v257 = v254;
          v255(sub_2744DE3A8, v210);

          OUTLINED_FUNCTION_47_3();
          v214 = v355;
          v258(v378, v355);
          OUTLINED_FUNCTION_63_1();
          v217 = v377;
        }

LABEL_67:
        v208 = v373;
        v211 = v374;
        if ((v374 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

LABEL_48:
        if (sub_27463C55C())
        {
          v220 = v360;
          sub_27463C68C();
          swift_unknownObjectRelease();
          sub_27463C68C();
          swift_unknownObjectRelease();
          v221 = *(v206 + 48);
          v222 = v371;
          v223 = v220;
          v217 = v377;
          (*v382)(v371, v223, v214);
          *(v222 + v221) = *&v385[0];
          v224 = v222;
          v225 = 0;
        }

        else
        {
          v224 = OUTLINED_FUNCTION_43_3();
        }

        __swift_storeEnumTagSinglePayload(v224, v225, 1, v206);
        v226 = v215;
        v383 = v210;
      }

      sub_274406A24();
      v259 = sub_2744D4CB8();
      v260 = 0;
      v261 = v259 + 64;
      v262 = 1 << *(v259 + 32);
      if (v262 < 64)
      {
        v263 = ~(-1 << v262);
      }

      else
      {
        v263 = -1;
      }

      v264 = v263 & *(v259 + 64);
      v265 = (v262 + 63) >> 6;
      v372 = v359 + 16;
      v373 = v259;
      v383 = (v359 + 32);
      v380 = v322 + 32;
      v374 = v359 + 8;
      v266 = v348;
      v267 = v366;
      v268 = v367;
      v269 = v381;
      v378 = v259 + 64;
LABEL_73:
      while (1)
      {
        v270 = v364;
        if (!v264)
        {
          break;
        }

        v271 = v260;
LABEL_79:
        v272 = __clz(__rbit64(v264));
        v264 &= v264 - 1;
        v273 = v272 | (v271 << 6);
        v274 = v373;
        v275 = v359;
        v276 = v361;
        (*(v359 + 16))(v361, *(v373 + 48) + *(v359 + 72) * v273, v266);
        v277 = *(*(v274 + 56) + 8 * v273);
        v278 = *(v270 + 48);
        v279 = *(v275 + 32);
        v268 = v367;
        v279(v367, v276, v266);
        *(v268 + v278) = v277;
        OUTLINED_FUNCTION_65_1();
        __swift_storeEnumTagSinglePayload(v280, v281, v282, v270);
        v283 = v277;
        v269 = v381;
        v267 = v366;
LABEL_80:
        (*v380)(v269, v268, v363);
        if (__swift_getEnumTagSinglePayload(v269, 1, v270) == 1)
        {

          v298 = v358;
          sub_2744D4C90(v297);
          OUTLINED_FUNCTION_54_2();

          sub_2744D4CE0(v299);
          sub_2744D4AD4(v357);
          sub_2744D4A18(v385);
          OUTLINED_FUNCTION_1_17();
          swift_getWitnessTable();
          type metadata accessor for LazyStackLayoutEngine();
          v300 = sub_2744D2024();
          v404 = *&v385[0];
          v353(&v404, v344);
          v403 = *(&v385[0] + 1);
          sub_2744DE314(&v403);
          v386 = v385[1];
          v387 = *&v385[2];
          sub_2744D2D90(&v386);
          v301 = *(v298 + *((*MEMORY[0x277D85000] & *v298) + 0x100));
          [v301 contentSize];
          if (v300 != v302)
          {
            v426.origin.x = OUTLINED_FUNCTION_0_0();
            [v301 setContentSize_];
          }

          v303 = v320;
          sub_2744D45E0(v320);
          v304 = v355;
          v305 = __swift_getEnumTagSinglePayload(v303, 1, v355);
          v306 = v321;
          if (v305 == 1)
          {
            (*(v328 + 8))(v303, v329);
            goto LABEL_100;
          }

          (*v382)(v321, v303, v304);
          if ((v317 & 1) != 0 || (sub_2744D4C68(), OUTLINED_FUNCTION_45_3(), sub_27463B53C(), , (v307 = v388) == 0))
          {
            OUTLINED_FUNCTION_47_3();
            v314(v306, v304);
LABEL_100:
            v312 = v318;
            v313 = v319;
          }

          else
          {
            [v388 frame];
            v309 = v308;

            OUTLINED_FUNCTION_47_3();
            v310(v306, v304);
            v311 = v309 - v316;
            v312 = v318;
            swift_beginAccess();
            *v312 = v311 + *v312;
            v313 = v319;
          }

          OUTLINED_FUNCTION_54_2();
          if (*v312 != 0.0)
          {
            [v301 contentOffset];
            [v301 setContentOffset_];
          }

          *(*(v298 + *((*MEMORY[0x277D85000] & *v298) + 0xA0)) + qword_2809508F0 + 48) = v389;

          sub_27454179C();

          return;
        }

        v284 = *(v269 + *(v270 + 48));
        (*v383)(v267, v269, v266);
        swift_beginAccess();
        sub_27463B53C();
        v285 = v267;
        v286 = v386;
        swift_endAccess();
        if (v286)
        {

          (*v374)(v285, v266);
          v267 = v285;
          v269 = v381;
          v261 = v378;
        }

        else
        {
          sub_27463C63C();
          v287 = v357;
          if (*(v357 + 16))
          {
            sub_27463C2EC();
            OUTLINED_FUNCTION_36_2();
            v290 = ~v289;
            v291 = v287;
            v292 = v377;
            while (1)
            {
              v293 = v288 & v290;
              if (((*(v292 + (((v288 & v290) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v288 & v290)) & 1) == 0)
              {
                break;
              }

              sub_27448E108(*(v291 + 48) + 40 * v293, &v386);
              v294 = MEMORY[0x277C58A40](&v386, v385);
              sub_274430664(&v386);
              v288 = v293 + 1;
              if (v294)
              {
                sub_274430664(v385);
                v266 = v348;
                v295 = v366;
                sub_27448E108(v366 + *(v348 + 36), v385);
                sub_2744DAE68(v284, v385);
                v267 = v295;

                type metadata accessor for ScrollableTableView.ReuseIdentifier();
                OUTLINED_FUNCTION_7();
                (*(v296 + 8))(v385);
                (*v374)(v295, v266);
                v268 = v367;
                v269 = v381;
                v261 = v378;
                goto LABEL_73;
              }
            }

            v266 = v348;
            v267 = v366;
            v268 = v367;
          }

          else
          {
            v267 = v285;
          }

          v269 = v381;
          sub_274430664(v385);
          sub_2744DAD80(v358, v284, v267);

          (*v374)(v267, v266);
          v261 = v378;
        }
      }

      while (1)
      {
        v271 = v260 + 1;
        if (__OFADD__(v260, 1))
        {
          break;
        }

        if (v271 >= v265)
        {
          __swift_storeEnumTagSinglePayload(v268, 1, 1, v364);
          v264 = 0;
          goto LABEL_80;
        }

        v264 = *(v261 + 8 * v271);
        ++v260;
        if (v264)
        {
          v260 = v271;
          goto LABEL_79;
        }
      }

      __break(1u);
      break;
    }

    v218 = *(v208 + 8 * v219);
    v226 = (v226 + 1);
    if (v218)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t sub_2744D9F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  v29 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_27463C0AC();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v28 = type metadata accessor for ScrollableTableView.AccessoryID();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v25 - v7;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrollableTableView.LayoutAtom();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v25 - v18;
  (*(v20 + 16))(&v25 - v18, v30, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v15, v19, v2);
    sub_27463C39C();
    swift_getAssociatedConformanceWitness();
    sub_27463C63C();
    (*(v26 + 8))(v11, AssociatedTypeWitness);
    return (*(v12 + 8))(v15, v2);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v12 + 32))(v15, v19, v2);
    memcpy(__dst, &v19[v22], 0x78uLL);
    sub_27463C39C();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, AssociatedTypeWitness);
    sub_27448E108(__dst, v32);
    sub_2744D6108(v6, v32, v8);
    v23 = v28;
    swift_getWitnessTable();
    sub_27463C63C();
    (*(v27 + 8))(v8, v23);
    sub_2744DE060(__dst);
    return (*(v12 + 8))(v15, v2);
  }

  memcpy(__dst, v19, 0x78uLL);
  sub_27448E108(__dst, v31);
  return sub_2744DE060(__dst);
}

id sub_2744DA3E0(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = MEMORY[0x277D85000];
  sub_2744D4A18(v43);
  type metadata accessor for ScrollableTableView.LayoutItem();
  swift_getWitnessTable();
  v20 = type metadata accessor for LazyStackLayoutEngine();
  *&v21 = COERCE_DOUBLE(sub_2744D202C(a2));
  v23 = v22;
  v25 = v24;
  v26 = *&v21;
  v28 = v27;
  v49 = v43[0];
  v29 = sub_27463B92C();
  (*(*(v29 - 8) + 8))(&v49, v29);
  v48 = v43[1];
  sub_2744DE314(&v48);
  v46 = v44;
  v47 = v45;
  v30 = sub_2744D2D90(&v46);
  if ((v28 & 1) != 0 || (v31 = v25, v26 != a5))
  {
    v31 = (*((*v19 & *a1) + 0xE0))(v30, a5);
    swift_beginAccess();
    sub_2744D1B00(a2, v20, v31, a5);
    swift_endAccess();
    v50.origin.x = a7;
    v50.origin.y = a8;
    v50.size.width = a9;
    v50.size.height = a10;
    if (v23 < CGRectGetMinY(v50))
    {
      swift_beginAccess();
      *(a4 + 16) = v31 - v25 + *(a4 + 16);
    }
  }

  v32 = a3 + *((*v19 & *a3) + 0x128);
  *v32 = a2;
  v32[8] = 0;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8) = &off_288369598;
  swift_unknownObjectWeakAssign();
  v33 = a1 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex;
  *v33 = a2;
  v33[8] = 0;
  v34 = [a1 superview];
  if (v34)
  {

    [a1 frame];
    v52.origin.x = v35;
    v52.origin.y = v36;
    v52.size.width = v37;
    v52.size.height = v38;
    v51.origin.x = a6;
    v51.origin.y = v23;
    v51.size.width = a5;
    v51.size.height = v31;
    if (!CGRectEqualToRect(v51, v52))
    {
      [a1 frame];
      if (v39 == a6 && ([a1 frame], v40 == a5))
      {
        [a1 setFrame_];
        [a1 layoutIfNeeded];
      }

      else
      {
        [a1 setFrame_];
      }
    }
  }

  else
  {
    [a1 setFrame_];
    [*(a3 + *((*v19 & *a3) + 0x108)) addSubview_];
  }

  return [a1 layoutIfNeeded];
}