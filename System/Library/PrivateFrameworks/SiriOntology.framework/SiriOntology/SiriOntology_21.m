uint64_t sub_1C0738164@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[7];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = a1[8];
  v6 = sub_1C095D32C();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[9];
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C0738294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1F8, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0738334(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07383A0()
{
  sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C07384AC()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C073858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v18[0] = a2;
  v18[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4(0);
  sub_1C05149F8(v4 + *(v15 + 20), v9, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    sub_1C070BA2C(v9, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v16 = v18[3];
    sub_1C095D6AC();
    result = sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v16)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073881C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C07388F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1F0, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0738990(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07389FC()
{
  sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);

  return sub_1C095D5AC();
}

uint64_t sub_1C0738AC4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E5C8);
  __swift_project_value_buffer(v0, qword_1EBE1E5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "child_acts";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C0738DB0();
      }

      else if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
        sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0738DB0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v14 = *(v13 + 24);
  v20 = v3;
  sub_1C05149F8(v3 + v14, v7, &qword_1EBE16DB0, &qword_1C0970478);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16DB0, &qword_1C0970478);
    v15 = v23;
  }

  else
  {
    sub_1C070BA2C(v7, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    v15 = v23;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    if (v15)
    {
      return result;
    }
  }

  v17 = v20;
  if (!*(*v20 + 16) || (sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup), result = sub_1C095D69C(), !v15))
  {
    v18 = v17 + *(v13 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0739180@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  v6 = &a3[*(a1 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v7 = *(a1 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1C0739268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1E8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0739308(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0739374()
{
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return sub_1C095D5AC();
}

uint64_t sub_1C0739410()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E5E0);
  __swift_project_value_buffer(v0, qword_1EBE1E5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0973520;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prompted";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "offered";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gave_options";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v14 = *MEMORY[0x1E69D26E8];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "informed";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reported_success";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "reported_failure";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 101;
  *v22 = "rendered_text";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0739784()
{
  v0 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  v9 = sub_1C095D32C();
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_1EBE1E5F8 = v3;
  return result;
}

uint64_t sub_1C0739898(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25[-v13];
  v15 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  v20 = sub_1C095D32C();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v21, v14, &qword_1EBE17420, &qword_1C0993380);
  swift_beginAccess();
  sub_1C051F9D4(v14, v1 + v15, &qword_1EBE17420, &qword_1C0993380);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v22, v10, &qword_1EBE1E800, &qword_1C09933D0);
  swift_beginAccess();
  sub_1C051F9D4(v10, v1 + v17, &qword_1EBE1E800, &qword_1C09933D0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(a1 + v23, v6, &qword_1EBE16D68, &unk_1C09933C0);

  swift_beginAccess();
  sub_1C051F9D4(v6, v1 + v19, &qword_1EBE16D68, &unk_1C09933C0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C0739BF0()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct, &qword_1EBE1E800, &qword_1C09933D0);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText, &qword_1EBE16D68, &unk_1C09933C0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0739D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1C073BDFC(a1, a2, a3, a4);
        }

        else if (result == 101)
        {
          sub_1C073C418();
        }
      }

      else if (result == 5)
      {
        sub_1C073B1C4(a1, a2, a3, a4);
      }

      else
      {
        sub_1C073B7E0(a1, a2, a3, a4);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1C073A58C(a1, a2, a3, a4);
      }

      else
      {
        sub_1C073ABA8(a1, a2, a3, a4);
      }
    }

    else if (result == 1)
    {
      sub_1C0739E90();
    }

    else if (result == 2)
    {
      sub_1C0739F6C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1C0739E90()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0739F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2C8, &qword_1C0997950);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v52 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v43 - v29;
  v51 = v6;
  v31 = *(v6 + 56);
  v54 = v5;
  v47 = v31;
  v31(&v43 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v46 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v44 = v18;
  v33 = (*(v18 + 48))(v16, 1, v17);
  v49 = v17;
  if (v33 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
    v34 = v54;
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      v34 = v54;
    }

    else
    {
      sub_1C05145B4(v30, &qword_1EBE1F2C8, &qword_1C0997950);
      v35 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      sub_1C070BA2C(v35, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      v34 = v54;
      v47(v30, 0, 1, v54);
    }
  }

  v36 = v52;
  sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
  v37 = v53;
  sub_1C095D55C();
  if (v37)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2C8, &qword_1C0997950);
  }

  sub_1C05149F8(v30, v36, &qword_1EBE1F2C8, &qword_1C0997950);
  if ((*(v51 + 48))(v36, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2C8, &qword_1C0997950);
    return sub_1C05145B4(v36, &qword_1EBE1F2C8, &qword_1C0997950);
  }

  else
  {
    v39 = v50;
    sub_1C070BA2C(v36, v50, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    if (v33 != 1)
    {
      sub_1C095D42C();
    }

    v40 = v49;
    sub_1C05145B4(v30, &qword_1EBE1F2C8, &qword_1C0997950);
    v41 = v45;
    sub_1C070BA2C(v39, v45, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    swift_storeEnumTagMultiPayload();
    (*(v44 + 56))(v41, 0, 1, v40);
    v42 = v46;
    swift_beginAccess();
    sub_1C051F9D4(v41, v42 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2D0, &qword_1C0997958);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v44 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v30, &qword_1EBE1F2D0, &qword_1C0997958);
      v33 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      sub_1C070BA2C(v33, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
  v36 = v51;
  sub_1C095D55C();
  if (v36)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2D0, &qword_1C0997958);
  }

  sub_1C05149F8(v30, v35, &qword_1EBE1F2D0, &qword_1C0997958);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2D0, &qword_1C0997958);
    return sub_1C05145B4(v35, &qword_1EBE1F2D0, &qword_1C0997958);
  }

  else
  {
    v38 = v46;
    sub_1C070BA2C(v35, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    if (v45 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v30, &qword_1EBE1F2D0, &qword_1C0997958);
    v39 = v43;
    sub_1C070BA2C(v38, v43, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_1C051F9D4(v39, v40 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2D8, &qword_1C0997960);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v44 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C05145B4(v30, &qword_1EBE1F2D8, &qword_1C0997960);
      v33 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
      sub_1C070BA2C(v33, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  v36 = v51;
  sub_1C095D55C();
  if (v36)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2D8, &qword_1C0997960);
  }

  sub_1C05149F8(v30, v35, &qword_1EBE1F2D8, &qword_1C0997960);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2D8, &qword_1C0997960);
    return sub_1C05145B4(v35, &qword_1EBE1F2D8, &qword_1C0997960);
  }

  else
  {
    v38 = v46;
    sub_1C070BA2C(v35, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    if (v45 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v30, &qword_1EBE1F2D8, &qword_1C0997960);
    v39 = v43;
    sub_1C070BA2C(v38, v43, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_1C051F9D4(v39, v40 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2E0, &qword_1C0997968);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v44 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C05145B4(v30, &qword_1EBE1F2E0, &qword_1C0997968);
      v33 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      sub_1C070BA2C(v33, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
  v36 = v51;
  sub_1C095D55C();
  if (v36)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2E0, &qword_1C0997968);
  }

  sub_1C05149F8(v30, v35, &qword_1EBE1F2E0, &qword_1C0997968);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2E0, &qword_1C0997968);
    return sub_1C05145B4(v35, &qword_1EBE1F2E0, &qword_1C0997968);
  }

  else
  {
    v38 = v46;
    sub_1C070BA2C(v35, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    if (v45 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v30, &qword_1EBE1F2E0, &qword_1C0997968);
    v39 = v43;
    sub_1C070BA2C(v38, v43, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_1C051F9D4(v39, v40 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2E8, &qword_1C0997970);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v44 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C05145B4(v30, &qword_1EBE1F2E8, &qword_1C0997970);
      v33 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      sub_1C070BA2C(v33, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  v36 = v51;
  sub_1C095D55C();
  if (v36)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2E8, &qword_1C0997970);
  }

  sub_1C05149F8(v30, v35, &qword_1EBE1F2E8, &qword_1C0997970);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2E8, &qword_1C0997970);
    return sub_1C05145B4(v35, &qword_1EBE1F2E8, &qword_1C0997970);
  }

  else
  {
    v38 = v46;
    sub_1C070BA2C(v35, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    if (v45 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v30, &qword_1EBE1F2E8, &qword_1C0997970);
    v39 = v43;
    sub_1C070BA2C(v38, v43, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_1C051F9D4(v39, v40 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2F0, &unk_1C0997978);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v50 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v41 - v29;
  v49 = v6;
  v31 = *(v6 + 56);
  v52 = v5;
  v47 = v31;
  v31(&v41 - v29, 1, 1, v5);
  v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v44 = a1;
  sub_1C05149F8(a1 + v32, v16, &qword_1EBE1E800, &qword_1C09933D0);
  v42 = v18;
  v45 = (*(v18 + 48))(v16, 1, v17);
  if (v45 == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v16, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C05145B4(v30, &qword_1EBE1F2F0, &unk_1C0997978);
      v33 = v48;
      sub_1C070BA2C(v22, v48, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      sub_1C070BA2C(v33, v30, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      v34 = v52;
      v47(v30, 0, 1, v52);
      goto LABEL_7;
    }

    sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v34 = v52;
LABEL_7:
  v35 = v50;
  sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
  v36 = v51;
  sub_1C095D55C();
  if (v36)
  {
    return sub_1C05145B4(v30, &qword_1EBE1F2F0, &unk_1C0997978);
  }

  sub_1C05149F8(v30, v35, &qword_1EBE1F2F0, &unk_1C0997978);
  if ((*(v49 + 48))(v35, 1, v34) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE1F2F0, &unk_1C0997978);
    return sub_1C05145B4(v35, &qword_1EBE1F2F0, &unk_1C0997978);
  }

  else
  {
    v38 = v46;
    sub_1C070BA2C(v35, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    if (v45 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v30, &qword_1EBE1F2F0, &unk_1C0997978);
    v39 = v43;
    sub_1C070BA2C(v38, v43, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 56))(v39, 0, 1, v17);
    v40 = v44;
    swift_beginAccess();
    sub_1C051F9D4(v39, v40 + v32, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073C418()
{
  swift_beginAccess();
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C073C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C073C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v50 = a4;
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v43 - v7;
  v8 = sub_1C095D32C();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v43 - v17;
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v24, v18, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v26 = v48;
    v25 = v49;
    v27 = v50;
    v28 = v47;
    sub_1C05145B4(v18, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v18, v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v30 = v47;
    v29 = v48;
    v25 = v49;
    v31 = v50;
    sub_1C095D6AC();
    v28 = v30;
    result = sub_1C0751DA0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v30)
    {
      return result;
    }

    v26 = v29;
    v27 = v31;
  }

  v33 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v33, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v34 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = v28;
      sub_1C073D2B0(a1, v26, v25, v27);
    }

    else
    {
      v36 = v28;
      if (EnumCaseMultiPayload == 4)
      {
        sub_1C073D508(a1, v26, v25, v27);
      }

      else
      {
        sub_1C073D760(a1, v26, v25, v27);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v36 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C073CE00(a1, v26, v25, v27);
    }

    else
    {
      sub_1C073D058(a1, v26, v25, v27);
    }
  }

  else
  {
    v36 = v28;
    sub_1C073CBAC(a1, v26, v25, v27);
  }

  result = sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  if (!v36)
  {
LABEL_18:
    v37 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    v38 = a1 + v37;
    v39 = v44;
    sub_1C05149F8(v38, v44, &qword_1EBE16D68, &unk_1C09933C0);
    v41 = v45;
    v40 = v46;
    if ((*(v45 + 48))(v39, 1, v46) == 1)
    {
      return sub_1C05145B4(v39, &qword_1EBE16D68, &unk_1C09933C0);
    }

    else
    {
      v42 = v43;
      (*(v41 + 32))(v43, v39, v40);
      sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
      sub_1C095D6AC();
      return (*(v41 + 8))(v42, v40);
    }
  }

  return result;
}

uint64_t sub_1C073CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v13, v8, &qword_1EBE1E800, &qword_1C09933D0);
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    sub_1C095D6AC();
    return sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
  }

  result = sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

BOOL sub_1C073D9FC(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v78 = sub_1C095D32C();
  v80 = *(v78 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v5 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v88 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v75 - v11;
  v84 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2C0, &qword_1C0997948);
  v14 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v75 - v20;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v75 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v89 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v75 - v34;
  v36 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v36, v35, &qword_1EBE17420, &qword_1C0993380);
  v37 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v38 = v91;
  swift_beginAccess();
  v39 = *(v26 + 56);
  sub_1C05149F8(v35, v29, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v38 + v37, &v29[v39], &qword_1EBE17420, &qword_1C0993380);
  v40 = *(v22 + 48);
  if (v40(v29, 1, v21) == 1)
  {

    sub_1C05145B4(v35, &qword_1EBE17420, &qword_1C0993380);
    v41 = a1;
    if (v40(&v29[v39], 1, v21) == 1)
    {
      sub_1C05145B4(v29, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v43 = &qword_1EBE16D60;
    v44 = &unk_1C0970430;
    v45 = v29;
LABEL_14:
    sub_1C05145B4(v45, v43, v44);
    goto LABEL_15;
  }

  v41 = a1;
  v42 = v89;
  sub_1C05149F8(v29, v89, &qword_1EBE17420, &qword_1C0993380);
  if (v40(&v29[v39], 1, v21) == 1)
  {

    sub_1C05145B4(v35, &qword_1EBE17420, &qword_1C0993380);
    sub_1C0751DA0(v42, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  v46 = v81;
  sub_1C070BA2C(&v29[v39], v81, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  v47 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v42, v46);
  sub_1C0751DA0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v35, &qword_1EBE17420, &qword_1C0993380);
  sub_1C0751DA0(v42, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v29, &qword_1EBE17420, &qword_1C0993380);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v48 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v49 = v90;
  sub_1C05149F8(v41 + v48, v90, &qword_1EBE1E800, &qword_1C09933D0);
  v50 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v51 = *(v82 + 48);
  v52 = v85;
  sub_1C05149F8(v49, v85, &qword_1EBE1E800, &qword_1C09933D0);
  sub_1C05149F8(v38 + v50, v52 + v51, &qword_1EBE1E800, &qword_1C09933D0);
  v53 = *(v83 + 48);
  v54 = v84;
  if (v53(v52, 1, v84) != 1)
  {
    v59 = v79;
    sub_1C05149F8(v52, v79, &qword_1EBE1E800, &qword_1C09933D0);
    v60 = v53(v52 + v51, 1, v54);
    v56 = v88;
    v61 = v87;
    v58 = v86;
    if (v60 == 1)
    {
      sub_1C05145B4(v90, &qword_1EBE1E800, &qword_1C09933D0);
      sub_1C0751DA0(v59, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      goto LABEL_13;
    }

    v63 = v52 + v51;
    v64 = v76;
    sub_1C070BA2C(v63, v76, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    LODWORD(v89) = _s12SiriOntology0A33_Nl_Core_Protocol_SystemDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(v59, v64);
    sub_1C0751DA0(v64, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C05145B4(v90, &qword_1EBE1E800, &qword_1C09933D0);
    sub_1C0751DA0(v59, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C05145B4(v52, &qword_1EBE1E800, &qword_1C09933D0);
    v57 = v61;
    if (v89)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C05145B4(v49, &qword_1EBE1E800, &qword_1C09933D0);
  v55 = v53(v52 + v51, 1, v54);
  v56 = v88;
  v57 = v87;
  v58 = v86;
  if (v55 != 1)
  {
LABEL_13:
    v43 = &qword_1EBE1F2C0;
    v44 = &qword_1C0997948;
    v45 = v52;
    goto LABEL_14;
  }

  sub_1C05145B4(v52, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_19:
  v65 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v41 + v65, v58, &qword_1EBE16D68, &unk_1C09933C0);
  v66 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  v67 = *(v77 + 48);
  sub_1C05149F8(v58, v56, &qword_1EBE16D68, &unk_1C09933C0);
  sub_1C05149F8(v38 + v66, v56 + v67, &qword_1EBE16D68, &unk_1C09933C0);
  v68 = *(v80 + 48);
  v69 = v78;
  if (v68(v56, 1, v78) == 1)
  {

    sub_1C05145B4(v58, &qword_1EBE16D68, &unk_1C09933C0);
    if (v68(v56 + v67, 1, v69) == 1)
    {
      sub_1C05145B4(v56, &qword_1EBE16D68, &unk_1C09933C0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_1C05149F8(v56, v57, &qword_1EBE16D68, &unk_1C09933C0);
  if (v68(v56 + v67, 1, v69) == 1)
  {

    sub_1C05145B4(v58, &qword_1EBE16D68, &unk_1C09933C0);
    (*(v80 + 8))(v57, v69);
LABEL_24:
    sub_1C05145B4(v56, &qword_1EBE16D70, &qword_1C0970440);
    return 0;
  }

  v70 = v80;
  v71 = v56 + v67;
  v72 = v75;
  (*(v80 + 32))(v75, v71, v69);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v73 = sub_1C095D73C();

  v74 = *(v70 + 8);
  v74(v72, v69);
  sub_1C05145B4(v58, &qword_1EBE16D68, &unk_1C09933C0);
  v74(v57, v69);
  sub_1C05145B4(v56, &qword_1EBE16D68, &unk_1C09933C0);
  return (v73 & 1) != 0;
}

uint64_t sub_1C073E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1E0, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073E768(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073E7D4()
{
  sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C073E8B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E600);
  __swift_project_value_buffer(v0, qword_1EBE1E600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C073EAE4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C073EB98()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073F100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1D8, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073F1A0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073F20C()
{
  sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);

  return sub_1C095D5AC();
}

uint64_t sub_1C073F318(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C095D41C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C073F39C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(v3 + *(v13 + 20), v7, &qword_1EBE1E810, &qword_1C09933D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E810, &qword_1C09933D8);
  }

  else
  {
    sub_1C070BA2C(v7, v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    v14 = v16[3];
    sub_1C095D6AC();
    result = sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    if (v14)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073F740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1D0, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073F7E0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073F84C()
{
  sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);

  return sub_1C095D5AC();
}

uint64_t sub_1C073F908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C096E0C0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1C095D6BC();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.decodeMessage<A>(decoder:)()
{
  result = sub_1C095D41C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
        sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0), sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct), result = sub_1C095D69C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0) + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C073FCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1C8, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073FD94(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073FE00()
{
  sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return sub_1C095D5AC();
}

uint64_t sub_1C073FE7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C055C1E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C073FF40()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E648);
  __swift_project_value_buffer(v0, qword_1EBE1E648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0740160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_1C095D41C();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        a4(a1, v7, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
        sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0740268()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0740348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v20 = a1;
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4(0);
  sub_1C05149F8(v4 + *(v19 + 24), v9, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE17420, &qword_1C0993380);
    v15 = v22;
  }

  else
  {
    sub_1C070BA2C(v9, v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v15 = v22;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v15)
    {
      return result;
    }
  }

  if (!*(*v4 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0), sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph), result = sub_1C095D69C(), !v15))
  {
    v17 = v4 + *(v19 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07406A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1C0, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0740748(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07407B4()
{
  sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);

  return sub_1C095D5AC();
}

uint64_t sub_1C074087C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E660);
  __swift_project_value_buffer(v0, qword_1EBE1E660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0740AB0()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0740B64()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v22 = *(v21 + 20);
  v31 = v4;
  sub_1C05149F8(v4 + v22, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v15, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v23 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  sub_1C05149F8(v31 + *(v21 + 24), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v25 = v28;
    sub_1C070BA2C(v8, v28, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v26 = v35;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v26)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07410CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1B8, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C074116C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07411D8()
{
  sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return sub_1C095D5AC();
}

uint64_t sub_1C07412A0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E678);
  __swift_project_value_buffer(v0, qword_1EBE1E678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "task";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07414E4()
{
  v0 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3 + v6, 1, 1, v7);
  result = (v8)(v3 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, 1, 1, v7);
  qword_1EBE1E690 = v3;
  return result;
}

uint64_t sub_1C07415E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  v15(v1 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, 1, 1, v14);
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(a1 + v17, v10, &qword_1EBE17420, &qword_1C0993380);
  swift_beginAccess();
  sub_1C051F9D4(v10, v1 + v11, &qword_1EBE17420, &qword_1C0993380);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(a1 + v18, v6, &qword_1EBE17400, &unk_1C0970CA0);
  swift_beginAccess();
  sub_1C051F9D4(v6, v1 + v13, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(a1 + v19, v6, &qword_1EBE17400, &unk_1C0970CA0);

  swift_beginAccess();
  sub_1C051F9D4(v6, v1 + v16, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C07418CC()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, &qword_1EBE17400, &unk_1C0970CA0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C07419F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = *(v7 + v14);
    v19 = a5(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v17 = a6(v18);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_1C0741AC8()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C0741D38();
        break;
      case 2:
        sub_1C0741C5C();
        break;
      case 1:
        sub_1C0741B80();
        break;
    }
  }

  return result;
}

uint64_t sub_1C0741B80()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741C5C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741D38()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v9;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  v25 = a1 + v24;
  v26 = a1;
  sub_1C05149F8(v25, v18, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1C05145B4(v18, &qword_1EBE17420, &qword_1C0993380);
    v27 = v48;
  }

  else
  {
    sub_1C070BA2C(v18, v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v28 = v48;
    sub_1C095D6AC();
    v27 = v28;
    result = sub_1C0751DA0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v28)
    {
      return result;
    }
  }

  v30 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v45;
  sub_1C05149F8(v31, v45, &qword_1EBE17400, &unk_1C0970CA0);
  v33 = v47;
  v34 = *(v46 + 48);
  if (v34(v32, 1, v47) == 1)
  {
    sub_1C05145B4(v32, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v35 = v32;
    v36 = v43;
    sub_1C070BA2C(v35, v43, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v36, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v27)
    {
      return result;
    }
  }

  v37 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v38 = v26 + v37;
  v39 = v44;
  sub_1C05149F8(v38, v44, &qword_1EBE17400, &unk_1C0970CA0);
  if (v34(v39, 1, v33) == 1)
  {
    return sub_1C05145B4(v39, &qword_1EBE17400, &unk_1C0970CA0);
  }

  v40 = v42;
  sub_1C070BA2C(v39, v42, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D6AC();
  return sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
}

BOOL sub_1C07423D4(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v83 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v82 = *(v83 - 8);
  v3 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v5 = *(*(v85 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v85);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v75 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v75 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v75 - v17;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v84 = (&v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  v33 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(a1 + v33, v32, &qword_1EBE17420, &qword_1C0993380);
  v34 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v35 = v87;
  swift_beginAccess();
  v36 = *(v23 + 56);
  sub_1C05149F8(v32, v26, &qword_1EBE17420, &qword_1C0993380);
  v37 = v35 + v34;
  v38 = v35;
  sub_1C05149F8(v37, &v26[v36], &qword_1EBE17420, &qword_1C0993380);
  v39 = *(v19 + 48);
  if (v39(v26, 1, v18) == 1)
  {

    sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
    if (v39(&v26[v36], 1, v18) == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v42 = &qword_1EBE16D60;
    v43 = &unk_1C0970430;
LABEL_14:
    sub_1C05145B4(v26, v42, v43);
    goto LABEL_15;
  }

  v40 = a1;
  v41 = v84;
  sub_1C05149F8(v26, v84, &qword_1EBE17420, &qword_1C0993380);
  if (v39(&v26[v36], 1, v18) == 1)
  {

    sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
    sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  v44 = v80;
  sub_1C070BA2C(&v26[v36], v80, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  v45 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v41, v44);
  sub_1C0751DA0(v44, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
  v46 = v41;
  a1 = v40;
  sub_1C0751DA0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
  if ((v45 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v47 = v38;
  v48 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v49 = v86;
  sub_1C05149F8(a1 + v48, v86, &qword_1EBE17400, &unk_1C0970CA0);
  v50 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v51 = *(v85 + 48);
  v26 = v81;
  sub_1C05149F8(v49, v81, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v47 + v50, &v26[v51], &qword_1EBE17400, &unk_1C0970CA0);
  v52 = *(v82 + 48);
  v53 = v83;
  if (v52(v26, 1, v83) != 1)
  {
    v54 = v78;
    sub_1C05149F8(v26, v78, &qword_1EBE17400, &unk_1C0970CA0);
    if (v52(&v26[v51], 1, v53) == 1)
    {
      sub_1C05145B4(v86, &qword_1EBE17400, &unk_1C0970CA0);
      sub_1C0751DA0(v54, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      goto LABEL_13;
    }

    v84 = v52;
    v56 = &v26[v51];
    v57 = v76;
    sub_1C070BA2C(v56, v76, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v58 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v54, v57);
    sub_1C0751DA0(v57, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v86, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C0751DA0(v54, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v26, &qword_1EBE17400, &unk_1C0970CA0);
    if (v58)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C05145B4(v49, &qword_1EBE17400, &unk_1C0970CA0);
  if (v52(&v26[v51], 1, v53) != 1)
  {
LABEL_13:
    v42 = &qword_1EBE16DE8;
    v43 = &qword_1C09704C0;
    goto LABEL_14;
  }

  v84 = v52;
  sub_1C05145B4(v26, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_19:
  v59 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v60 = a1 + v59;
  v61 = v79;
  sub_1C05149F8(v60, v79, &qword_1EBE17400, &unk_1C0970CA0);
  v62 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v63 = v53;
  v64 = *(v85 + 48);
  v65 = v77;
  sub_1C05149F8(v61, v77, &qword_1EBE17400, &unk_1C0970CA0);
  v66 = v47 + v62;
  v67 = v64;
  v68 = v65 + v64;
  v69 = v63;
  sub_1C05149F8(v66, v68, &qword_1EBE17400, &unk_1C0970CA0);
  v70 = v63;
  v71 = v84;
  if (v84(v65, 1, v70) == 1)
  {

    sub_1C05145B4(v61, &qword_1EBE17400, &unk_1C0970CA0);
    if (v71(v65 + v67, 1, v69) == 1)
    {
      sub_1C05145B4(v65, &qword_1EBE17400, &unk_1C0970CA0);
      return 1;
    }

    goto LABEL_24;
  }

  v72 = v75;
  sub_1C05149F8(v65, v75, &qword_1EBE17400, &unk_1C0970CA0);
  if (v71(v65 + v67, 1, v69) == 1)
  {

    sub_1C05145B4(v79, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C0751DA0(v72, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_24:
    sub_1C05145B4(v65, &qword_1EBE16DE8, &qword_1C09704C0);
    return 0;
  }

  v73 = v76;
  sub_1C070BA2C(v65 + v67, v76, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v74 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v72, v73);

  sub_1C0751DA0(v73, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v79, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C0751DA0(v72, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v65, &qword_1EBE17400, &unk_1C0970CA0);
  return (v74 & 1) != 0;
}

uint64_t sub_1C0742F10@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1C0742FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1B0, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0743078(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07430E4()
{
  sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return sub_1C095D5AC();
}

uint64_t sub_1C07431C0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E698);
  __swift_project_value_buffer(v0, qword_1EBE1E698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seq";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.decodeMessage<A>(decoder:)()
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
      sub_1C0743444();
    }

    else if (result == 2)
    {
      sub_1C095D48C();
    }
  }

  return result;
}

uint64_t sub_1C0743444()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0) + 24);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v21 = a2;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v19 = v4;
  sub_1C05149F8(v4 + *(v18 + 24), v8, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    sub_1C095D6AC();
    if (v3)
    {
      return (*(v10 + 8))(v13, v9);
    }

    (*(v10 + 8))(v13, v9);
  }

  v15 = v19;
  if (!*v19 || (result = sub_1C095D62C(), !v3))
  {
    v16 = v15 + *(v18 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07437E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1C095D32C();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C07438B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1A8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0743954(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07439C0()
{
  sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return sub_1C095D5AC();
}

uint64_t sub_1C0743A5C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6B0);
  __swift_project_value_buffer(v0, qword_1EBE1E6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0743C88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1C095D41C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C0743D34()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 20);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t sub_1C0743DE8()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0) + 24);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v26 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v19 = *(v18 + 20);
  v27 = v3;
  sub_1C05149F8(v3 + v19, v10, &qword_1EBE16D68, &unk_1C09933C0);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16D68, &unk_1C09933C0);
    v21 = v28;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    v22 = v28;
    sub_1C095D6AC();
    v21 = v22;
    if (v22)
    {
      return (*(v12 + 8))(v17, v11);
    }

    (*(v12 + 8))(v17, v11);
  }

  sub_1C05149F8(v27 + *(v18 + 24), v8, &qword_1EBE16D68, &unk_1C09933C0);
  if (v20(v8, 1, v11) != 1)
  {
    v23 = v26;
    (*(v12 + 32))(v26, v8, v11);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    sub_1C095D6AC();
    if (!v21)
    {
      (*(v12 + 8))(v23, v11);
      return sub_1C095D36C();
    }

    v17 = v23;
    return (*(v12 + 8))(v17, v11);
  }

  sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  return sub_1C095D36C();
}

uint64_t sub_1C07442A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  v5 = sub_1C095D32C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C07443A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1A0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0744448(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07444B4()
{
  sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);

  return sub_1C095D5AC();
}

uint64_t sub_1C0744550()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6C8);
  __swift_project_value_buffer(v0, qword_1EBE1E6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C09787B0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "entity";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "score";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69D26E8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "app_bundle_id";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "group_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "annotations";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1C0744ABC();
            break;
          case 5:
            sub_1C0744B70();
            break;
          case 6:
            type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
            sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
            sub_1C095D54C();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1C0744A08();
            break;
          case 2:
            sub_1C0745E88(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
            break;
          case 3:
            sub_1C0737A78(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0744A08()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0744ABC()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 36);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t sub_1C0744B70()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0) + 40);
  type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v4 = v3;
  v73 = a1;
  v74 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v57 - v7;
  v62 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v59 = *(v62 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v57 - v14;
  v15 = sub_1C095D32C();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v57 - v22;
  v24 = sub_1C095D2EC();
  v68 = *(v24 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v63 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v57 - v29;
  v31 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  v36 = v75[6];
  v72 = v4;
  sub_1C05149F8(v4 + v36, v30, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE17400, &unk_1C0970CA0);
    v37 = v70;
  }

  else
  {
    sub_1C070BA2C(v30, v35, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v38 = v70;
    sub_1C095D6AC();
    v37 = v38;
    result = sub_1C0751DA0(v35, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v38)
    {
      return result;
    }
  }

  sub_1C05149F8(v72 + v75[7], v23, &qword_1EBE1E830, &qword_1C09933E0);
  v40 = v68;
  v41 = (*(v68 + 48))(v23, 1, v24);
  v42 = v69;
  if (v41 == 1)
  {
    sub_1C05145B4(v23, &qword_1EBE1E830, &qword_1C09933E0);
  }

  else
  {
    v43 = v63;
    (*(v40 + 32))();
    sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668]);
    sub_1C095D6AC();
    if (v37)
    {
      return (*(v40 + 8))(v43, v24);
    }

    (*(v40 + 8))(v43, v24);
  }

  v44 = v66;
  v45 = v64;
  sub_1C05149F8(v72 + v75[8], v64, &qword_1EBE16D68, &unk_1C09933C0);
  v46 = *(v44 + 48);
  v47 = v67;
  v48 = v46(v45, 1, v67);
  v49 = v65;
  if (v48 == 1)
  {
    sub_1C05145B4(v45, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v44 + 32))(v65, v45, v47);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    sub_1C095D6AC();
    if (v37)
    {
      return (*(v44 + 8))(v49, v47);
    }

    (*(v44 + 8))(v49, v47);
    v42 = v69;
  }

  v50 = v72;
  v51 = v60;
  sub_1C05149F8(v72 + v75[9], v60, &qword_1EBE16D68, &unk_1C09933C0);
  if (v46(v51, 1, v47) == 1)
  {
    sub_1C05145B4(v51, &qword_1EBE16D68, &unk_1C09933C0);
    v53 = v61;
    v52 = v62;
  }

  else
  {
    (*(v44 + 32))(v42, v51, v47);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    v54 = v44;
    sub_1C095D6AC();
    v53 = v61;
    v52 = v62;
    if (v37)
    {
      return (*(v54 + 8))(v42, v47);
    }

    (*(v54 + 8))(v42, v47);
  }

  sub_1C05149F8(v50 + v75[10], v53, &qword_1EBE1E838, &qword_1C09933E8);
  if ((*(v59 + 48))(v53, 1, v52) == 1)
  {
    sub_1C05145B4(v53, &qword_1EBE1E838, &qword_1C09933E8);
  }

  else
  {
    v55 = v58;
    sub_1C070BA2C(v53, v58, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v55, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    if (v37)
    {
      return result;
    }
  }

  if (!*(*v50 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0), sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation), result = sub_1C095D69C(), !v37))
  {
    v56 = v50 + v75[5];
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0745690@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[5]];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = sub_1C095D2EC();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[8];
  v10 = sub_1C095D32C();
  v11 = *(*(v10 - 8) + 56);
  v11(&a2[v9], 1, 1, v10);
  v11(&a2[a1[9]], 1, 1, v10);
  v12 = a1[10];
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(&a2[v12], 1, 1, v13);
}

uint64_t sub_1C0745868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F198, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0745908(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0745974()
{
  sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);

  return sub_1C095D5AC();
}

uint64_t sub_1C0745A10()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6E0);
  __swift_project_value_buffer(v0, qword_1EBE1E6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "score";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Task.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C0745E88(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_Task);
        break;
      case 2:
        sub_1C0745DD4();
        break;
      case 1:
        sub_1C0745D20();
        break;
    }
  }

  return result;
}

uint64_t sub_1C0745D20()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 20);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0745DD4()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_Task(0) + 24);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0745E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  sub_1C095D2EC();
  sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_Task.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v4 = v3;
  v50 = a3;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v38 - v7;
  v8 = sub_1C095D2EC();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  v42 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v38 - v20;
  v22 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v27 = v49[5];
  v45 = v4;
  sub_1C05149F8(v4 + v27, v21, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
    v28 = v46;
  }

  else
  {
    sub_1C070BA2C(v21, v26, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v29 = v46;
    sub_1C095D6AC();
    v28 = v29;
    result = sub_1C0751DA0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v29)
    {
      return result;
    }
  }

  v31 = v45;
  sub_1C05149F8(v45 + v49[6], v14, &qword_1EBE17400, &unk_1C0970CA0);
  v32 = (*(v15 + 48))(v14, 1, v42);
  v34 = v43;
  v33 = v44;
  if (v32 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v14, v39, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v35, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v28)
    {
      return result;
    }
  }

  sub_1C05149F8(v31 + v49[7], v34, &qword_1EBE1E830, &qword_1C09933E0);
  v37 = v40;
  v36 = v41;
  if ((*(v40 + 48))(v34, 1, v41) == 1)
  {
    sub_1C05145B4(v34, &qword_1EBE1E830, &qword_1C09933E0);
  }

  else
  {
    (*(v37 + 32))(v33, v34, v36);
    sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668]);
    sub_1C095D6AC();
    if (v28)
    {
      return (*(v37 + 8))(v33, v36);
    }

    (*(v37 + 8))(v33, v36);
  }

  return sub_1C095D36C();
}

uint64_t sub_1C074659C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = sub_1C095D2EC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C07466F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F190, type metadata accessor for Siri_Nl_Core_Protocol_Task);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0746790(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07467FC()
{
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task);

  return sub_1C095D5AC();
}

uint64_t sub_1C0746898()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6F8);
  __swift_project_value_buffer(v0, qword_1EBE1E6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E0];
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.decodeMessage<A>(decoder:)()
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
      sub_1C0746B1C();
    }

    else if (result == 2)
    {
      sub_1C095D4EC();
    }
  }

  return result;
}

uint64_t sub_1C0746B1C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0) + 24);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  v14 = *(v13 + 24);
  v21 = v3;
  sub_1C05149F8(v3 + v14, v7, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680]);
    v15 = v24;
    sub_1C095D6AC();
    v24 = v15;
    if (v15)
    {
      return (*(v9 + 8))(v12, v8);
    }

    (*(v9 + 8))(v12, v8);
  }

  v17 = v21;
  v18 = v24;
  if (*v21 == 0.0 || (result = sub_1C095D65C(), !v18))
  {
    v19 = v17 + *(v13 + 20);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0746EBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1C095D32C();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C0746F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F188, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C074702C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0747098()
{
  sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return sub_1C095D5AC();
}

uint64_t sub_1C0747134()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E710);
  __swift_project_value_buffer(v0, qword_1EBE1E710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "probability";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_tokens";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69D26E8];
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "rewritten_utterances";
  *(v16 + 8) = 20;
  *(v16 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C0747598();
        }

        else if (result == 2)
        {
          sub_1C095D50C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1C095D4EC();
            goto LABEL_5;
          case 4:
            v3 = v0;
            type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
            sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
            sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_1C095D54C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0747598()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0) + 36);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v22 = v3;
  sub_1C05149F8(v3 + *(v21 + 36), v7, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
    v13 = v24;
  }

  else
  {
    sub_1C070BA2C(v7, v12, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v13 = v24;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v13)
    {
      return result;
    }
  }

  v15 = v22;
  v16 = *v22;
  v17 = *(v22 + 1);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = sub_1C095D66C(), !v13))
  {
    if (v15[2] == 0.0 || (result = sub_1C095D65C(), !v13))
    {
      if (!*(*(v15 + 3) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0), sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation), result = sub_1C095D69C(), !v13))
      {
        if (!*(*(v15 + 4) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0), sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance), result = sub_1C095D69C(), !v13))
        {
          v19 = v15 + *(v21 + 32);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0747A3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = 0;
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  v5 = &a2[*(a1 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C0747B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F180, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0747BC0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0747C2C()
{
  sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return sub_1C095D5AC();
}

uint64_t sub_1C0747CC8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E728);
  __swift_project_value_buffer(v0, qword_1EBE1E728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C0993350;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "post_itn_text";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "phone_sequence";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ipa_phone_sequence";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "add_space_after";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remove_space_after";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "remove_space_before";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "confidence_score";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "begin_index";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "end_index";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "start_milli_seconds";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "end_milli_seconds";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_2:
          sub_1C095D50C();
        }
      }

      else
      {
        if (result == 3)
        {
          goto LABEL_2;
        }

LABEL_23:
        sub_1C095D44C();
      }
    }

    else if (result > 8)
    {
      if (result == 9)
      {
        goto LABEL_24;
      }

      if (result == 10 || result == 11)
      {
        sub_1C095D48C();
      }
    }

    else
    {
      if (result == 6)
      {
        goto LABEL_23;
      }

      if (result == 7)
      {
        sub_1C095D4EC();
      }

      else
      {
LABEL_24:
        sub_1C095D52C();
      }
    }
  }
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C095D66C(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1C095D66C(), !v1))
      {
        if (*(v0 + 48) != 1 || (result = sub_1C095D5FC(), !v1))
        {
          if (*(v0 + 49) != 1 || (result = sub_1C095D5FC(), !v1))
          {
            if (*(v0 + 50) != 1 || (result = sub_1C095D5FC(), !v1))
            {
              if (*(v0 + 7) == 0.0 || (result = sub_1C095D65C(), !v1))
              {
                if (!*(v0 + 16) || (result = sub_1C095D67C(), !v1))
                {
                  if (!*(v0 + 17) || (result = sub_1C095D67C(), !v1))
                  {
                    if (!*(v0 + 18) || (result = sub_1C095D62C(), !v1))
                    {
                      if (!*(v0 + 19) || (result = sub_1C095D62C(), !v1))
                      {
                        v10 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
                        return sub_1C095D36C();
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

uint64_t sub_1C07484A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v2 = a2 + *(a1 + 60);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0748500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0748574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C07485E8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_1C074863C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F178, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07486DC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0748748()
{
  sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return sub_1C095D5AC();
}

uint64_t sub_1C07487E4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E740);
  __swift_project_value_buffer(v0, qword_1EBE1E740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C0993360;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E0];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "start_token_index";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "end_token_index";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uso_graph";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "score";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "matcher_names";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Span.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        sub_1C095D50C();
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            sub_1C0748C7C();
            goto LABEL_5;
          }

LABEL_19:
          sub_1C095D52C();
          goto LABEL_5;
        }

        if (result == 6)
        {
          sub_1C095D4EC();
        }

        else if (result == 7)
        {
          sub_1C0752320();
          sub_1C095D43C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0748C7C()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_Span(0) + 44);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_Span.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = *(v0 + 1);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_1C095D66C(), !v1))
  {
    v15 = *(v0 + 3);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_1C095D66C(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_1C095D67C(), !v1))
      {
        if (!*(v0 + 9) || (result = sub_1C095D67C(), !v1))
        {
          v19 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
          sub_1C05149F8(v0 + *(v19 + 44), v5, &qword_1EBE17400, &unk_1C0970CA0);
          if ((*(v7 + 48))(v5, 1, v6) == 1)
          {
            sub_1C05145B4(v5, &qword_1EBE17400, &unk_1C0970CA0);
          }

          else
          {
            sub_1C070BA2C(v5, v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            sub_1C095D6AC();
            result = sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            if (v1)
            {
              return result;
            }
          }

          if (v0[5] == 0.0 || (result = sub_1C095D65C(), !v1))
          {
            if (!*(*(v0 + 6) + 16) || (sub_1C0752320(), result = sub_1C095D5DC(), !v1))
            {
              v17 = v0 + *(v19 + 40);
              return sub_1C095D36C();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C07490D8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C095DFEC();
  a1(0);
  sub_1C0752188(a2, a3);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0749160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 40)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 44);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C0749218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C074928C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0749330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F170, type metadata accessor for Siri_Nl_Core_Protocol_Span);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07493D0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C074943C()
{
  sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span);

  return sub_1C095D5AC();
}

uint64_t sub_1C07494BC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E758);
  __swift_project_value_buffer(v0, qword_1EBE1E758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY_MATCHER";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MRR_DETECTOR";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MRR_MATCHER";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology0A40_Nl_Core_Protocol_DelegatedUserDialogActV2eeoiySbAC_ACtFZ_0(_DWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v51 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v51 - v12;
  v14 = sub_1C095D32C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_19;
  }

  v53 = v13;
  v51 = v7;
  v52 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v27 = *(v52 + 32);
  v28 = *(v23 + 48);
  v54 = a1;
  sub_1C05149F8(a1 + v27, v26, &qword_1EBE16D68, &unk_1C09933C0);
  v29 = a2 + v27;
  v30 = a2;
  sub_1C05149F8(v29, &v26[v28], &qword_1EBE16D68, &unk_1C09933C0);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) == 1)
  {
    if (v31(&v26[v28], 1, v14) == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_9;
    }

LABEL_7:
    v32 = &qword_1EBE16D70;
    v33 = &qword_1C0970440;
    v34 = v26;
LABEL_18:
    sub_1C05145B4(v34, v32, v33);
    goto LABEL_19;
  }

  sub_1C05149F8(v26, v22, &qword_1EBE16D68, &unk_1C09933C0);
  if (v31(&v26[v28], 1, v14) == 1)
  {
    (*(v15 + 8))(v22, v14);
    goto LABEL_7;
  }

  (*(v15 + 32))(v18, &v26[v28], v14);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v35 = sub_1C095D73C();
  v36 = *(v15 + 8);
  v36(v18, v14);
  v36(v22, v14);
  sub_1C05145B4(v26, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v37 = v54;
  if ((*(v54 + 1) != *(a2 + 8) || *(v54 + 2) != *(a2 + 16)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_19;
  }

  v39 = v52;
  v38 = v53;
  v40 = *(v52 + 36);
  v41 = *(v56 + 48);
  sub_1C05149F8(v37 + v40, v53, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v30 + v40, v38 + v41, &qword_1EBE17420, &qword_1C0993380);
  v42 = v58;
  v43 = *(v57 + 48);
  if (v43(v38, 1, v58) != 1)
  {
    v44 = v55;
    sub_1C05149F8(v38, v55, &qword_1EBE17420, &qword_1C0993380);
    if (v43(v38 + v41, 1, v42) != 1)
    {
      v47 = v38 + v41;
      v48 = v51;
      sub_1C070BA2C(v47, v51, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v49 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v44, v48);
      sub_1C0751DA0(v48, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v44, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v38, &qword_1EBE17420, &qword_1C0993380);
      if ((v49 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    sub_1C0751DA0(v44, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_17;
  }

  if (v43(v38 + v41, 1, v42) != 1)
  {
LABEL_17:
    v32 = &qword_1EBE16D60;
    v33 = &unk_1C0970430;
    v34 = v38;
    goto LABEL_18;
  }

  sub_1C05145B4(v38, &qword_1EBE17420, &qword_1C0993380);
LABEL_22:
  if (sub_1C055B8F0(*(v37 + 3), *(v30 + 24)))
  {
    v50 = *(v39 + 28);
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v45 = sub_1C095D73C();
    return v45 & 1;
  }

LABEL_19:
  v45 = 0;
  return v45 & 1;
}

uint64_t _s12SiriOntology0A36_Nl_Core_Protocol_RewrittenUtteranceV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16D68, &unk_1C09933C0);
  v29 = a2;
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16D68, &unk_1C09933C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16D68, &unk_1C09933C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE16D70, &qword_1C0970440);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v21 = sub_1C095D73C();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *v29)
  {
    goto LABEL_10;
  }

  v23 = *(v26 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  return v24 & 1;
}

uint64_t _s12SiriOntology0A35_Nl_Core_Protocol_RRGroupIdentifierV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16D68, &unk_1C09933C0);
  v29 = a2;
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16D68, &unk_1C09933C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16D68, &unk_1C09933C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE16D70, &qword_1C0970440);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v21 = sub_1C095D73C();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *v29)
  {
    goto LABEL_10;
  }

  v23 = *(v26 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  return v24 & 1;
}

uint64_t _s12SiriOntology0A34_Nl_Core_Protocol_RepetitionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0) + 24);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C074A660(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v28 = a3(0);
  v19 = *(v28 + 24);
  v20 = *(v15 + 56);
  v30 = a1;
  sub_1C05149F8(a1 + v19, v18, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(a2 + v19, &v18[v20], &qword_1EBE17420, &qword_1C0993380);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_1C05145B4(v18, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v18, v13, &qword_1EBE17420, &qword_1C0993380);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_1C0751DA0(v13, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    sub_1C05145B4(v18, &qword_1EBE16D60, &unk_1C0970430);
LABEL_10:
    v25 = 0;
    return v25 & 1;
  }

  v22 = v29;
  sub_1C070BA2C(&v18[v20], v29, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v23 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v13, v22);
  sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v13, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v18, &qword_1EBE17420, &qword_1C0993380);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C055C9E4(*v30, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(v28 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v25 = sub_1C095D73C();
  return v25 & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_SystemOfferedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F390, &qword_1C0997A20);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE1E810, &qword_1C09933D8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE1E810, &qword_1C09933D8);
LABEL_9:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v20 = sub_1C095D73C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE1E810, &qword_1C09933D8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE1F390, &qword_1C0997A20);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1C070BA2C(&v16[v18], v24[0], type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v22 = _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV2eeoiySbAC_ACtFZ_0(v11, v21);
  sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  sub_1C05145B4(v16, &qword_1EBE1E810, &qword_1C09933D8);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s12SiriOntology0A37_Nl_Core_Protocol_AsrTokenInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 49) != *(a2 + 49) || *(a1 + 50) != *(a2 + 50) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || *(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0) + 60);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_AsrHypothesisV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v17 = *(v27 + 36);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE17420, &qword_1C0993380);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C05149F8(v16, v11, &qword_1EBE17420, &qword_1C0993380);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v28;
      sub_1C070BA2C(&v16[v18], v28, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v23 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v11, v22);
      sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v16, &qword_1EBE17420, &qword_1C0993380);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE16D60, &unk_1C0970430);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v16, &qword_1EBE17420, &qword_1C0993380);
LABEL_10:
  v24 = v29;
  if (*v29 == *a2 && *(v29 + 1) == *(a2 + 8) || (sub_1C095DF3C()) && v24[2] == *(a2 + 16) && (sub_1C055DF14(*(v24 + 3), *(a2 + 24)) & 1) != 0 && (sub_1C055E108(*(v24 + 4), *(a2 + 32)))
  {
    v25 = *(v27 + 32);
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v20 = sub_1C095D73C();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s12SiriOntology0A30_Nl_Core_Protocol_RRAnnotationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v41 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v39 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v40 = v14;
  v20 = *(v39 + 20);
  v21 = *(v14 + 48);
  v43 = a1;
  v22 = a1 + v20;
  v23 = v5;
  sub_1C05149F8(v22, v19, &qword_1EBE16D68, &unk_1C09933C0);
  v42 = a2;
  sub_1C05149F8(a2 + v20, &v19[v21], &qword_1EBE16D68, &unk_1C09933C0);
  v24 = v5[6];
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v21], 1, v4) != 1)
    {
LABEL_11:
      sub_1C05145B4(v19, &qword_1EBE16D70, &qword_1C0970440);
      goto LABEL_12;
    }

    sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
LABEL_6:
    v29 = *(v39 + 24);
    v30 = *(v40 + 48);
    v19 = v41;
    sub_1C05149F8(v43 + v29, v41, &qword_1EBE16D68, &unk_1C09933C0);
    sub_1C05149F8(v42 + v29, &v19[v30], &qword_1EBE16D68, &unk_1C09933C0);
    if (v24(v19, 1, v4) == 1)
    {
      if (v24(&v19[v30], 1, v4) == 1)
      {
        sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
LABEL_15:
        sub_1C095D38C();
        sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
        v31 = sub_1C095D73C();
        return v31 & 1;
      }

      goto LABEL_11;
    }

    v13 = v37;
    sub_1C05149F8(v19, v37, &qword_1EBE16D68, &unk_1C09933C0);
    if (v24(&v19[v30], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    v33 = v38;
    (v23[4])(v38, &v19[v30], v4);
    sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
    v34 = sub_1C095D73C();
    v35 = v23[1];
    v35(v33, v4);
    v35(v13, v4);
    sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
    if (v34)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_1C05149F8(v19, v13, &qword_1EBE16D68, &unk_1C09933C0);
  if (v24(&v19[v21], 1, v4) == 1)
  {
LABEL_10:
    (v23[1])(v13, v4);
    goto LABEL_11;
  }

  v25 = v5[4];
  v26 = v38;
  v25(v38, &v19[v21], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v27 = sub_1C095D73C();
  v28 = v23[1];
  v28(v26, v4);
  v28(v13, v4);
  sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
  if (v27)
  {
    goto LABEL_6;
  }

LABEL_12:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_LegacyNLContextV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = *(a1 + 1);
    v5 = a2;
    v6 = sub_1C095DF3C();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[24] != a2[24])
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  if ((sub_1C055E730(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v8 + 5);
  v11 = *(v9 + 5);
  if (v9[48] == 1)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (v10 != 2)
        {
          return 0;
        }
      }

      else if (v10 != 3)
      {
        return 0;
      }
    }

    else if (v11)
    {
      if (v10 != 1)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0) + 40);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0A29_Nl_Core_Protocol_TurnContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F380, &qword_1C0997A10);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v43 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F388, &qword_1C0997A18);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_1C05149F8(a1 + v25, v24, &qword_1EBE1E7C8, &qword_1C0993398);
  sub_1C05149F8(v52 + v25, &v24[v26], &qword_1EBE1E7C8, &qword_1C0993398);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_1C05149F8(v24, v19, &qword_1EBE1E7C8, &qword_1C0993398);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1C070BA2C(&v24[v26], v15, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      v31 = _s12SiriOntology0A27_Nl_Core_Protocol_NLContextV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      sub_1C05145B4(v24, &qword_1EBE1E7C8, &qword_1C0993398);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
LABEL_6:
    v28 = &qword_1EBE1F388;
    v29 = &qword_1C0997A18;
    v30 = v24;
LABEL_14:
    sub_1C05145B4(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v24, &qword_1EBE1E7C8, &qword_1C0993398);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_1C05149F8(v51 + v32, v50, &qword_1EBE1E7D0, &qword_1C09933A0);
  sub_1C05149F8(v52 + v32, v34 + v33, &qword_1EBE1E7D0, &qword_1C09933A0);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1C05145B4(v34, &qword_1EBE1E7D0, &qword_1C09933A0);
LABEL_18:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v38 = sub_1C095D73C();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_1C05149F8(v34, v45, &qword_1EBE1E7D0, &qword_1C09933A0);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
LABEL_13:
    v28 = &qword_1EBE1F380;
    v29 = &qword_1C0997A10;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1C070BA2C(v40, v44, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  v42 = _s12SiriOntology0A33_Nl_Core_Protocol_LegacyNLContextV2eeoiySbAC_ACtFZ_0(v37, v41);
  sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  sub_1C05145B4(v34, &qword_1EBE1E7D0, &qword_1C09933A0);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1C074BFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v26 = a1;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = *(a3(0) + 20);
  v19 = *(v14 + 56);
  sub_1C05149F8(v26 + v18, v17, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(a2 + v18, &v17[v19], &qword_1EBE17400, &unk_1C0970CA0);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v19], 1, v5) == 1)
    {
      sub_1C05145B4(v17, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_9:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v21 = sub_1C095D73C();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v17, v12, &qword_1EBE17400, &unk_1C0970CA0);
  if (v20(&v17[v19], 1, v5) == 1)
  {
    sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_6:
    sub_1C05145B4(v17, &qword_1EBE16DE8, &qword_1C09704C0);
    goto LABEL_7;
  }

  v22 = v25;
  sub_1C070BA2C(&v17[v19], v25, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v23 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v12, v22);
  sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v17, &qword_1EBE17400, &unk_1C0970CA0);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v130 = a1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v121 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v120 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v119 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v118 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = (&v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v116 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v115 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v114 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v113 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v112 = (&v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v111 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v110 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v109 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v128 = (&v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x1EEE9AC00](v43);
  v127 = (&v108 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v126 = (&v108 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v125 = (&v108 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v124 = (&v108 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v123 = (&v108 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v122 = (&v108 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v108 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v108 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = (&v108 - v64);
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = &v108 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v108 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v108 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F3A0, &unk_1C0997A30);
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x1EEE9AC00](v74 - 8);
  v78 = &v108 - v77;
  v79 = *(v76 + 56);
  sub_1C0751E60(v130, &v108 - v77, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  v130 = v79;
  sub_1C0751E60(v129, &v78[v79], type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C0751E60(v78, v71, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v98 = v130;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v99 = v110;
        sub_1C070BA2C(&v78[v98], v110, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v85 = sub_1C074F284(v71, v99, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v95 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
        sub_1C0751DA0(v99, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v89 = v71;
        goto LABEL_29;
      }

      v81 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
      v82 = v71;
      goto LABEL_44;
    case 2u:
      sub_1C0751E60(v78, v68, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v93 = v130;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = v111;
        sub_1C070BA2C(&v78[v93], v111, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v85 = sub_1C074F284(v68, v94, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v95 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted;
        sub_1C0751DA0(v94, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v89 = v68;
        goto LABEL_29;
      }

      v81 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted;
      v82 = v68;
      goto LABEL_44;
    case 3u:
      sub_1C0751E60(v78, v65, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v96 = v130;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v84 = v112;
        sub_1C070BA2C(&v78[v96], v112, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v85 = sub_1C074F284(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
      goto LABEL_43;
    case 4u:
      sub_1C0751E60(v78, v62, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v87 = v130;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v88 = v113;
        sub_1C070BA2C(&v78[v87], v113, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v85 = sub_1C074F284(v62, v88, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        sub_1C0751DA0(v88, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v89 = v62;
        v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
        goto LABEL_30;
      }

      v81 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
      v82 = v62;
      goto LABEL_44;
    case 5u:
      sub_1C0751E60(v78, v59, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v100 = v130;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v101 = v114;
        sub_1C070BA2C(&v78[v100], v114, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v85 = sub_1C074F284(v59, v101, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v95 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
        sub_1C0751DA0(v101, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v89 = v59;
        goto LABEL_29;
      }

      v81 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
      v82 = v59;
      goto LABEL_44;
    case 6u:
      v65 = v122;
      sub_1C0751E60(v78, v122, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v102 = v130;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v84 = v115;
        sub_1C070BA2C(&v78[v102], v115, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v85 = sub_1C074F284(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat;
      goto LABEL_43;
    case 7u:
      v65 = v123;
      sub_1C0751E60(v78, v123, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v97 = v130;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v84 = v116;
        sub_1C070BA2C(&v78[v97], v116, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v85 = sub_1C074F284(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged;
      goto LABEL_43;
    case 8u:
      v65 = v124;
      sub_1C0751E60(v78, v124, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v104 = v130;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v84 = v117;
        sub_1C070BA2C(&v78[v104], v117, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v85 = sub_1C074F284(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
      goto LABEL_43;
    case 9u:
      v65 = v125;
      sub_1C0751E60(v78, v125, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v92 = v130;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v84 = v118;
        sub_1C070BA2C(&v78[v92], v118, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v85 = sub_1C074F284(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
      goto LABEL_43;
    case 0xAu:
      v65 = v126;
      sub_1C0751E60(v78, v126, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v103 = v130;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v84 = v119;
        sub_1C070BA2C(&v78[v103], v119, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v85 = sub_1C074A660(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
      goto LABEL_43;
    case 0xBu:
      v65 = v127;
      sub_1C0751E60(v78, v127, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v83 = v130;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v84 = v120;
        sub_1C070BA2C(&v78[v83], v120, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
        v85 = _s12SiriOntology0A40_Nl_Core_Protocol_DelegatedUserDialogActV2eeoiySbAC_ACtFZ_0(v65, v84);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct;
        goto LABEL_28;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct;
      goto LABEL_43;
    case 0xCu:
      v65 = v128;
      sub_1C0751E60(v78, v128, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v91 = v130;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v84 = v121;
        sub_1C070BA2C(&v78[v91], v121, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
        v85 = sub_1C074BFB4(v65, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
        v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask;
LABEL_28:
        v95 = v86;
        sub_1C0751DA0(v84, v86);
        v89 = v65;
        goto LABEL_29;
      }

      v105 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask;
LABEL_43:
      v81 = v105;
      v82 = v65;
      goto LABEL_44;
    default:
      sub_1C0751E60(v78, v73, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v80 = v130;
      if (swift_getEnumCaseMultiPayload())
      {
        v81 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted;
        v82 = v73;
LABEL_44:
        sub_1C0751DA0(v82, v81);
        sub_1C05145B4(v78, &qword_1EBE1F3A0, &unk_1C0997A30);
        v85 = 0;
      }

      else
      {
        v107 = v109;
        sub_1C070BA2C(&v78[v80], v109, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v85 = sub_1C074BFB4(v73, v107, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v95 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted;
        sub_1C0751DA0(v107, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v89 = v73;
LABEL_29:
        v90 = v95;
LABEL_30:
        sub_1C0751DA0(v89, v90);
        sub_1C0751DA0(v78, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      }

      return v85 & 1;
  }
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2F8, &qword_1C0997988);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v44 - v11;
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F300, &qword_1C0997990);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v50 = a1;
  sub_1C05149F8(a1, &v44 - v24, &qword_1EBE17408, &unk_1C0993370);
  v51 = a2;
  sub_1C05149F8(a2, &v25[v26], &qword_1EBE17408, &unk_1C0993370);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_1C05145B4(v25, &qword_1EBE17408, &unk_1C0993370);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_1EBE1F300;
    v29 = &qword_1C0997990;
    v30 = v25;
LABEL_22:
    sub_1C05145B4(v30, v28, v29);
    goto LABEL_23;
  }

  sub_1C05149F8(v25, v20, &qword_1EBE17408, &unk_1C0993370);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v25[v26], v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  v31 = _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(v20, v16);
  sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C05145B4(v25, &qword_1EBE17408, &unk_1C0993370);
  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v32 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v33 = *(v32 + 24);
  v34 = *(v46 + 48);
  v35 = v49;
  sub_1C05149F8(v50 + v33, v49, &qword_1EBE1E7E8, &qword_1C09933B8);
  sub_1C05149F8(v51 + v33, v35 + v34, &qword_1EBE1E7E8, &qword_1C09933B8);
  v36 = v48;
  v37 = *(v47 + 48);
  if (v37(v35, 1, v48) != 1)
  {
    v40 = v45;
    sub_1C05149F8(v35, v45, &qword_1EBE1E7E8, &qword_1C09933B8);
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      goto LABEL_14;
    }

    v41 = v44;
    sub_1C070BA2C(v35 + v34, v44, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    if (*v40 != *v41 || (sub_1C055BF38(*(v40 + 8), *(v41 + 8)) & 1) == 0 || *(v40 + 16) != *(v41 + 16))
    {
      sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      v28 = &qword_1EBE1E7E8;
      v29 = &qword_1C09933B8;
      goto LABEL_21;
    }

    v42 = *(v36 + 28);
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    LOBYTE(v42) = sub_1C095D73C();
    sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C05145B4(v35, &qword_1EBE1E7E8, &qword_1C09933B8);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_23:
    v39 = 0;
    return v39 & 1;
  }

  if (v37(v35 + v34, 1, v36) != 1)
  {
LABEL_14:
    v28 = &qword_1EBE1F2F8;
    v29 = &qword_1C0997988;
LABEL_21:
    v30 = v35;
    goto LABEL_22;
  }

  sub_1C05145B4(v35, &qword_1EBE1E7E8, &qword_1C09933B8);
LABEL_11:
  v38 = *(v32 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v39 = sub_1C095D73C();
  return v39 & 1;
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_UserParseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = (&v65 - v8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F370, &qword_1C0997A00);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v65 - v10;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v65 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F378, &qword_1C0997A08);
  v17 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v65 - v18;
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v65 - v31;
  v78 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  v79 = a1;
  v33 = *(v78 + 32);
  v34 = *(v29 + 56);
  sub_1C05149F8(a1 + v33, v32, &qword_1EBE17420, &qword_1C0993380);
  v35 = v80;
  sub_1C05149F8(v80 + v33, &v32[v34], &qword_1EBE17420, &qword_1C0993380);
  v36 = *(v20 + 48);
  if (v36(v32, 1, v19) == 1)
  {
    if (v36(&v32[v34], 1, v19) == 1)
    {
      sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_10;
    }

LABEL_6:
    v37 = &qword_1EBE16D60;
    v38 = &unk_1C0970430;
LABEL_7:
    v39 = v32;
LABEL_8:
    sub_1C05145B4(v39, v37, v38);
    goto LABEL_30;
  }

  sub_1C05149F8(v32, v27, &qword_1EBE17420, &qword_1C0993380);
  if (v36(&v32[v34], 1, v19) == 1)
  {
    sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v32[v34], v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v40 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v27, v23);
  sub_1C0751DA0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  v41 = v79;
  if ((sub_1C055C1E0(*v79, *v35) & 1) == 0 || *(v41 + 1) != *(v35 + 8) || (v41[2] != *(v35 + 16) || v41[3] != *(v35 + 24)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_30;
  }

  v32 = v77;
  v42 = v78;
  v43 = *(v78 + 36);
  v44 = *(v74 + 48);
  sub_1C05149F8(v41 + v43, v77, &qword_1EBE1E7D8, &qword_1C09933A8);
  sub_1C05149F8(v35 + v43, &v32[v44], &qword_1EBE1E7D8, &qword_1C09933A8);
  v45 = v76;
  v46 = *(v75 + 48);
  if (v46(v32, 1, v76) == 1)
  {
    if (v46(&v32[v44], 1, v45) == 1)
    {
      sub_1C05145B4(v32, &qword_1EBE1E7D8, &qword_1C09933A8);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v47 = v73;
  sub_1C05149F8(v32, v73, &qword_1EBE1E7D8, &qword_1C09933A8);
  if (v46(&v32[v44], 1, v45) == 1)
  {
    sub_1C0751DA0(v47, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
LABEL_20:
    v37 = &qword_1EBE1F378;
    v38 = &qword_1C0997A08;
    goto LABEL_7;
  }

  v48 = &v32[v44];
  v49 = v68;
  sub_1C070BA2C(v48, v68, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  v50 = _s12SiriOntology0A34_Nl_Core_Protocol_RepetitionResultV2eeoiySbAC_ACtFZ_0(v47, v49);
  sub_1C0751DA0(v49, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  sub_1C0751DA0(v47, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  sub_1C05145B4(v32, &qword_1EBE1E7D8, &qword_1C09933A8);
  if ((v50 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v51 = *(v42 + 40);
  v52 = *(v69 + 48);
  v53 = v72;
  sub_1C05149F8(v41 + v51, v72, &qword_1EBE1E7E0, &qword_1C09933B0);
  v54 = v35 + v51;
  v55 = v53;
  sub_1C05149F8(v54, v53 + v52, &qword_1EBE1E7E0, &qword_1C09933B0);
  v56 = v71;
  v57 = *(v70 + 48);
  if (v57(v53, 1, v71) != 1)
  {
    v58 = v67;
    sub_1C05149F8(v55, v67, &qword_1EBE1E7E0, &qword_1C09933B0);
    if (v57(v55 + v52, 1, v56) != 1)
    {
      v59 = v55 + v52;
      v60 = v66;
      sub_1C070BA2C(v59, v66, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      v61 = _s12SiriOntology0A24_Nl_Core_Protocol_ParserV2eeoiySbAC_ACtFZ_0(v58, v60);
      sub_1C0751DA0(v60, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      sub_1C0751DA0(v58, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      sub_1C05145B4(v55, &qword_1EBE1E7E0, &qword_1C09933B0);
      if (v61)
      {
        goto LABEL_29;
      }

LABEL_30:
      v63 = 0;
      return v63 & 1;
    }

    sub_1C0751DA0(v58, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
    goto LABEL_27;
  }

  if (v57(v53 + v52, 1, v56) != 1)
  {
LABEL_27:
    v37 = &qword_1EBE1F370;
    v38 = &qword_1C0997A00;
    v39 = v55;
    goto LABEL_8;
  }

  sub_1C05145B4(v53, &qword_1EBE1E7E0, &qword_1C09933B0);
LABEL_29:
  v62 = *(v42 + 28);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v63 = sub_1C095D73C();
  return v63 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_EntityCandidateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v117 = a2;
  v118 = a1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v100 = *(v2 - 8);
  v101 = v2;
  v3 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v97 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = (&v96 - v7);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2B8, &qword_1C0997940);
  v8 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v96 - v9;
  v109 = sub_1C095D32C();
  v112 = *(v109 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v96 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v17 = *(*(v111 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v111);
  v105 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v96 - v20;
  v21 = sub_1C095D2EC();
  v114 = *(v21 - 8);
  v115 = v21;
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v110 = &v96 - v26;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  v27 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v29 = &v96 - v28;
  v30 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v96 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v96 - v42;
  v116 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  v44 = v116[6];
  v45 = *(v40 + 56);
  sub_1C05149F8(v118 + v44, v43, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v117 + v44, &v43[v45], &qword_1EBE17400, &unk_1C0970CA0);
  v46 = *(v31 + 48);
  if (v46(v43, 1, v30) == 1)
  {
    if (v46(&v43[v45], 1, v30) == 1)
    {
      sub_1C05145B4(v43, &qword_1EBE17400, &unk_1C0970CA0);
      goto LABEL_9;
    }

LABEL_6:
    v47 = &qword_1EBE16DE8;
    v48 = &qword_1C09704C0;
LABEL_7:
    v49 = v43;
LABEL_29:
    sub_1C05145B4(v49, v47, v48);
    goto LABEL_30;
  }

  sub_1C05149F8(v43, v38, &qword_1EBE17400, &unk_1C0970CA0);
  if (v46(&v43[v45], 1, v30) == 1)
  {
    sub_1C0751DA0(v38, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v43[v45], v34, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v50 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v38, v34);
  sub_1C0751DA0(v34, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v38, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v43, &qword_1EBE17400, &unk_1C0970CA0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v51 = v116;
  v52 = v116[7];
  v53 = *(v113 + 48);
  v54 = v118;
  sub_1C05149F8(v118 + v52, v29, &qword_1EBE1E830, &qword_1C09933E0);
  v55 = v117;
  sub_1C05149F8(v117 + v52, &v29[v53], &qword_1EBE1E830, &qword_1C09933E0);
  v57 = v114;
  v56 = v115;
  v58 = *(v114 + 48);
  if (v58(v29, 1, v115) == 1)
  {
    if (v58(&v29[v53], 1, v56) == 1)
    {
      sub_1C05145B4(v29, &qword_1EBE1E830, &qword_1C09933E0);
      goto LABEL_16;
    }

LABEL_14:
    v47 = &qword_1EBE1F2A8;
    v48 = &qword_1C0997938;
    v49 = v29;
    goto LABEL_29;
  }

  v59 = v110;
  sub_1C05149F8(v29, v110, &qword_1EBE1E830, &qword_1C09933E0);
  if (v58(&v29[v53], 1, v56) == 1)
  {
    (*(v57 + 8))(v59, v56);
    goto LABEL_14;
  }

  v60 = v107;
  (*(v57 + 32))(v107, &v29[v53], v56);
  sub_1C0752188(&qword_1EBE1F2B0, MEMORY[0x1E69D2668]);
  v61 = sub_1C095D73C();
  v62 = *(v57 + 8);
  v62(v60, v56);
  v62(v59, v56);
  sub_1C05145B4(v29, &qword_1EBE1E830, &qword_1C09933E0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v63 = v51[8];
  v64 = *(v111 + 48);
  v65 = v108;
  sub_1C05149F8(v54 + v63, v108, &qword_1EBE16D68, &unk_1C09933C0);
  v66 = v65;
  sub_1C05149F8(v55 + v63, v65 + v64, &qword_1EBE16D68, &unk_1C09933C0);
  v67 = *(v112 + 48);
  v68 = v109;
  if (v67(v66, 1, v109) == 1)
  {
    if (v67(v66 + v64, 1, v68) == 1)
    {
      sub_1C05145B4(v66, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_23;
    }

LABEL_21:
    v47 = &qword_1EBE16D70;
    v48 = &qword_1C0970440;
    v49 = v66;
    goto LABEL_29;
  }

  v69 = v106;
  sub_1C05149F8(v66, v106, &qword_1EBE16D68, &unk_1C09933C0);
  if (v67(v66 + v64, 1, v68) == 1)
  {
    (*(v112 + 8))(v69, v68);
    goto LABEL_21;
  }

  v70 = v112;
  v71 = v104;
  (*(v112 + 32))(v104, v66 + v64, v68);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  LODWORD(v115) = sub_1C095D73C();
  v72 = *(v70 + 8);
  v51 = v116;
  v72(v71, v68);
  v54 = v118;
  v72(v69, v68);
  sub_1C05145B4(v66, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v73 = v51[9];
  v74 = *(v111 + 48);
  v75 = v105;
  sub_1C05149F8(v54 + v73, v105, &qword_1EBE16D68, &unk_1C09933C0);
  v76 = v55 + v73;
  v77 = v75;
  sub_1C05149F8(v76, v75 + v74, &qword_1EBE16D68, &unk_1C09933C0);
  if (v67(v75, 1, v68) == 1)
  {
    if (v67(v75 + v74, 1, v68) == 1)
    {
      sub_1C05145B4(v75, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_33;
    }

LABEL_28:
    v47 = &qword_1EBE16D70;
    v48 = &qword_1C0970440;
    v49 = v77;
    goto LABEL_29;
  }

  v78 = v75;
  v79 = v103;
  sub_1C05149F8(v78, v103, &qword_1EBE16D68, &unk_1C09933C0);
  if (v67(v77 + v74, 1, v68) == 1)
  {
    (*(v112 + 8))(v79, v68);
    goto LABEL_28;
  }

  v82 = v112;
  v83 = v104;
  (*(v112 + 32))(v104, v77 + v74, v68);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680]);
  v84 = sub_1C095D73C();
  v85 = *(v82 + 8);
  v85(v83, v68);
  v85(v79, v68);
  sub_1C05145B4(v77, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v86 = v116;
  v87 = v116[10];
  v88 = *(v99 + 48);
  v43 = v102;
  sub_1C05149F8(v54 + v87, v102, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C05149F8(v55 + v87, &v43[v88], &qword_1EBE1E838, &qword_1C09933E8);
  v89 = v101;
  v90 = *(v100 + 48);
  if (v90(v43, 1, v101) != 1)
  {
    v91 = v98;
    sub_1C05149F8(v43, v98, &qword_1EBE1E838, &qword_1C09933E8);
    if (v90(&v43[v88], 1, v89) != 1)
    {
      v92 = &v43[v88];
      v93 = v97;
      sub_1C070BA2C(v92, v97, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      v94 = _s12SiriOntology0A35_Nl_Core_Protocol_RRGroupIdentifierV2eeoiySbAC_ACtFZ_0(v91, v93);
      sub_1C0751DA0(v93, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      sub_1C0751DA0(v91, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      sub_1C05145B4(v43, &qword_1EBE1E838, &qword_1C09933E8);
      if ((v94 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    sub_1C0751DA0(v91, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    goto LABEL_38;
  }

  if (v90(&v43[v88], 1, v89) != 1)
  {
LABEL_38:
    v47 = &qword_1EBE1F2B8;
    v48 = &qword_1C0997940;
    goto LABEL_7;
  }

  sub_1C05145B4(v43, &qword_1EBE1E838, &qword_1C09933E8);
LABEL_40:
  if (sub_1C055C234(*v54, *v55))
  {
    v95 = v86[5];
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v80 = sub_1C095D73C();
    return v80 & 1;
  }

LABEL_30:
  v80 = 0;
  return v80 & 1;
}

uint64_t sub_1C074F190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C074F284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v54 = a2;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v45 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v11 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v45 - v12;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  v48 = a3(0);
  v27 = *(v48 + 20);
  v28 = *(v23 + 56);
  v53 = a1;
  sub_1C05149F8(a1 + v27, v26, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v54 + v27, &v26[v28], &qword_1EBE17420, &qword_1C0993380);
  v29 = *(v14 + 48);
  if (v29(v26, 1, v13) != 1)
  {
    sub_1C05149F8(v26, v21, &qword_1EBE17420, &qword_1C0993380);
    if (v29(&v26[v28], 1, v13) != 1)
    {
      sub_1C070BA2C(&v26[v28], v17, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v33 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v21, v17);
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    v30 = &qword_1EBE16D60;
    v31 = &unk_1C0970430;
    v32 = v26;
LABEL_14:
    sub_1C05145B4(v32, v30, v31);
    goto LABEL_15;
  }

  if (v29(&v26[v28], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
LABEL_8:
  v34 = *(v48 + 24);
  v35 = *(v49 + 48);
  v36 = v52;
  sub_1C05149F8(v53 + v34, v52, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v54 + v34, v36 + v35, &qword_1EBE17400, &unk_1C0970CA0);
  v37 = v51;
  v38 = *(v50 + 48);
  if (v38(v36, 1, v51) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      sub_1C05145B4(v36, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_18:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v40 = sub_1C095D73C();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v47;
  sub_1C05149F8(v36, v47, &qword_1EBE17400, &unk_1C0970CA0);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    sub_1C0751DA0(v39, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_13:
    v30 = &qword_1EBE16DE8;
    v31 = &qword_1C09704C0;
    v32 = v36;
    goto LABEL_14;
  }

  v42 = v36 + v35;
  v43 = v46;
  sub_1C070BA2C(v42, v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v44 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v39, v43);
  sub_1C0751DA0(v43, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v39, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v36, &qword_1EBE17400, &unk_1C0970CA0);
  if (v44)
  {
    goto LABEL_18;
  }

LABEL_15:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_SystemDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v73 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v2 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v72 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v75 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v68 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v68 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v68 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v68 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v68 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F398, &qword_1C0997A28);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v68 - v40;
  v42 = *(v39 + 56);
  sub_1C0751E60(v76, &v68 - v40, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  sub_1C0751E60(v77, &v41[v42], type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1C0751E60(v41, v28, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed;
        v52 = v28;
        goto LABEL_29;
      }

      v53 = v70;
      sub_1C070BA2C(&v41[v42], v70, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v46 = sub_1C074A660(v28, v53, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v50 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed;
      sub_1C0751DA0(v53, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v47 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v58 = v75;
        sub_1C0751E60(v41, v75, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v59 = v74;
          sub_1C070BA2C(&v41[v42], v74, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
          v60 = *(v73 + 20);
          v61 = *(v58 + v60);
          v62 = *(v59 + v60);
          if (v61 == v62 || (v63 = *(v58 + v60), , , v64 = sub_1C07423D4(v61, v62), , , v64))
          {
            sub_1C095D38C();
            sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
            if (sub_1C095D73C())
            {
              v56 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
              sub_1C0751DA0(v59, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
              v57 = v58;
              goto LABEL_23;
            }
          }

          v66 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
          sub_1C0751DA0(v59, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
          v67 = v58;
LABEL_37:
          sub_1C0751DA0(v67, v66);
          sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
          goto LABEL_30;
        }

        v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
        v52 = v58;
LABEL_29:
        sub_1C0751DA0(v52, v51);
        sub_1C05145B4(v41, &qword_1EBE1F398, &qword_1C0997A28);
LABEL_30:
        v46 = 0;
        return v46 & 1;
      }

      sub_1C0751E60(v41, v25, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess;
        v52 = v25;
        goto LABEL_29;
      }

      v49 = v71;
      sub_1C070BA2C(&v41[v42], v71, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v46 = sub_1C074F284(v25, v49, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v50 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess;
      sub_1C0751DA0(v49, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v47 = v25;
    }

LABEL_32:
    v48 = v50;
    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1C0751E60(v41, v36, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload())
    {
      v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted;
      v52 = v36;
      goto LABEL_29;
    }

    sub_1C070BA2C(&v41[v42], v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v46 = sub_1C074F284(v36, v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v50 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted;
    sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v47 = v36;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0751E60(v41, v34, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = &v41[v42];
      v45 = v69;
      sub_1C070BA2C(v44, v69, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v46 = _s12SiriOntology0A31_Nl_Core_Protocol_SystemOfferedV2eeoiySbAC_ACtFZ_0(v34, v45);
      sub_1C0751DA0(v45, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v47 = v34;
      v48 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered;
LABEL_33:
      sub_1C0751DA0(v47, v48);
      sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      return v46 & 1;
    }

    v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered;
    v52 = v34;
    goto LABEL_29;
  }

  sub_1C0751E60(v41, v31, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v51 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
    v52 = v31;
    goto LABEL_29;
  }

  v54 = v72;
  sub_1C070BA2C(&v41[v42], v72, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  if ((sub_1C055C1E0(*v31, *v54) & 1) == 0 || (v55 = *(v68 + 20), sub_1C095D38C(), sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]), (sub_1C095D73C() & 1) == 0))
  {
    v66 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
    sub_1C0751DA0(v54, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    v67 = v31;
    goto LABEL_37;
  }

  v56 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
  sub_1C0751DA0(v54, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  v57 = v31;
LABEL_23:
  sub_1C0751DA0(v57, v56);
  sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  v46 = 1;
  return v46 & 1;
}

uint64_t _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB8, &unk_1C0970480);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v33 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v17 = *(v33 + 24);
  v18 = *(v13 + 56);
  v35 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16DB0, &qword_1C0970478);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C05145B4(v16, &qword_1EBE16DB0, &qword_1C0970478);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16DB0, &qword_1C0970478);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
LABEL_6:
    v20 = &qword_1EBE16DB8;
    v21 = &unk_1C0970480;
LABEL_7:
    sub_1C05145B4(v16, v20, v21);
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  v22 = v34;
  sub_1C070BA2C(&v16[v18], v34, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v23 = *(v4 + 20);
  v24 = *&v11[v23];
  v25 = *(v22 + v23);
  if (v24 != v25)
  {
    v26 = *&v11[v23];

    v27 = sub_1C073D9FC(v24, v25);

    if (!v27)
    {
      sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
      sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
      v20 = &qword_1EBE16DB0;
      v21 = &qword_1C0970478;
      goto LABEL_7;
    }
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v28 = sub_1C095D73C();
  sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  sub_1C05145B4(v16, &qword_1EBE16DB0, &qword_1C0970478);
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_1C055EEC0(*v35, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v33 + 20);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v30 = sub_1C095D73C();
  return v30 & 1;
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_NLContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A0, &unk_1C0997928);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v17 = *(v27 + 36);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE1E770, &qword_1C0993388);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C05149F8(v16, v11, &qword_1EBE1E770, &qword_1C0993388);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_1C070BA2C(&v16[v18], v28, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      v21 = _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(v11, v20);
      sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      sub_1C05145B4(v16, &qword_1EBE1E770, &qword_1C0993388);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
LABEL_6:
    sub_1C05145B4(v16, &qword_1EBE1F2A0, &unk_1C0997928);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v16, &qword_1EBE1E770, &qword_1C0993388);
LABEL_8:
  v22 = v29;
  if ((sub_1C055F4F4(*v29, *a2) & 1) == 0 || (sub_1C055F4F4(v22[1], a2[1]) & 1) == 0 || (sub_1C055F548(v22[2], a2[2]) & 1) == 0 || (sub_1C055F59C(v22[3], a2[3]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 32);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  return v24 & 1;
}

uint64_t _s12SiriOntology0A24_Nl_Core_Protocol_ParserV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_18:
      v6 = *(type metadata accessor for Siri_Nl_Core_Protocol_Parser(0) + 24);
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      return sub_1C095D73C() & 1;
    }

    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s12SiriOntology0A22_Nl_Core_Protocol_TaskV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v70 = sub_1C095D2EC();
  v72 = *(v70 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v66 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  v8 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v79 = &v66 - v9;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = &v66 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v16 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v66 - v17;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = (&v66 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v74 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v32 = *(v74 + 20);
  v33 = *(v28 + 56);
  v80 = a1;
  sub_1C05149F8(a1 + v32, v31, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v81 + v32, &v31[v33], &qword_1EBE17420, &qword_1C0993380);
  v34 = *(v19 + 48);
  if (v34(v31, 1, v18) == 1)
  {
    if (v34(&v31[v33], 1, v18) == 1)
    {
      sub_1C05145B4(v31, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v35 = &qword_1EBE16D60;
    v36 = &unk_1C0970430;
    v37 = v31;
LABEL_21:
    sub_1C05145B4(v37, v35, v36);
    goto LABEL_22;
  }

  sub_1C05149F8(v31, v26, &qword_1EBE17420, &qword_1C0993380);
  if (v34(&v31[v33], 1, v18) == 1)
  {
    sub_1C0751DA0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v31[v33], v22, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v38 = _s12SiriOntology0A22_Nl_Core_Protocol_UUIDV2eeoiySbAC_ACtFZ_0(v26, v22);
  sub_1C0751DA0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v31, &qword_1EBE17420, &qword_1C0993380);
  if ((v38 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v39 = v74;
  v40 = *(v74 + 24);
  v41 = *(v73 + 48);
  v42 = v80;
  v43 = v77;
  sub_1C05149F8(v80 + v40, v77, &qword_1EBE17400, &unk_1C0970CA0);
  v44 = v81;
  sub_1C05149F8(v81 + v40, v43 + v41, &qword_1EBE17400, &unk_1C0970CA0);
  v45 = v76;
  v46 = *(v75 + 48);
  if (v46(v43, 1, v76) != 1)
  {
    v50 = v71;
    sub_1C05149F8(v43, v71, &qword_1EBE17400, &unk_1C0970CA0);
    v51 = v46(v43 + v41, 1, v45);
    v49 = v78;
    v48 = v79;
    if (v51 != 1)
    {
      v52 = v43 + v41;
      v53 = v68;
      sub_1C070BA2C(v52, v68, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      v54 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v50, v53);
      sub_1C0751DA0(v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C05145B4(v43, &qword_1EBE17400, &unk_1C0970CA0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    goto LABEL_13;
  }

  v47 = v46(v43 + v41, 1, v45);
  v49 = v78;
  v48 = v79;
  if (v47 != 1)
  {
LABEL_13:
    v35 = &qword_1EBE16DE8;
    v36 = &qword_1C09704C0;
    v37 = v43;
    goto LABEL_21;
  }

  sub_1C05145B4(v43, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_15:
  v55 = *(v39 + 28);
  v56 = *(v69 + 48);
  sub_1C05149F8(v42 + v55, v48, &qword_1EBE1E830, &qword_1C09933E0);
  sub_1C05149F8(v44 + v55, v48 + v56, &qword_1EBE1E830, &qword_1C09933E0);
  v57 = *(v72 + 48);
  v58 = v70;
  if (v57(v48, 1, v70) == 1)
  {
    if (v57(v48 + v56, 1, v58) == 1)
    {
      sub_1C05145B4(v48, &qword_1EBE1E830, &qword_1C09933E0);
LABEL_25:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v59 = sub_1C095D73C();
      return v59 & 1;
    }

    goto LABEL_20;
  }

  sub_1C05149F8(v48, v49, &qword_1EBE1E830, &qword_1C09933E0);
  if (v57(v48 + v56, 1, v58) == 1)
  {
    (*(v72 + 8))(v49, v58);
LABEL_20:
    v35 = &qword_1EBE1F2A8;
    v36 = &qword_1C0997938;
    v37 = v48;
    goto LABEL_21;
  }

  v61 = v72;
  v62 = v48 + v56;
  v63 = v67;
  (*(v72 + 32))(v67, v62, v58);
  sub_1C0752188(&qword_1EBE1F2B0, MEMORY[0x1E69D2668]);
  v64 = sub_1C095D73C();
  v65 = *(v61 + 8);
  v65(v63, v58);
  v65(v49, v58);
  sub_1C05145B4(v48, &qword_1EBE1E830, &qword_1C09933E0);
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_22:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s12SiriOntology0A22_Nl_Core_Protocol_SpanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    goto LABEL_19;
  }

  v27 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  v17 = *(v27 + 44);
  v18 = *(v13 + 48);
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE17400, &unk_1C0970CA0);
  v19 = a2 + v17;
  v20 = v18;
  sub_1C05149F8(v19, &v16[v18], &qword_1EBE17400, &unk_1C0970CA0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1C05149F8(v16, v12, &qword_1EBE17400, &unk_1C0970CA0);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      sub_1C070BA2C(&v16[v20], v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      v22 = _s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_1C0751DA0(v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C05145B4(v16, &qword_1EBE17400, &unk_1C0970CA0);
      if (v22)
      {
        goto LABEL_16;
      }

LABEL_19:
      v24 = 0;
      return v24 & 1;
    }

    sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_14:
    sub_1C05145B4(v16, &qword_1EBE16DE8, &qword_1C09704C0);
    goto LABEL_19;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1C05145B4(v16, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_16:
  if (*(a1 + 40) != *(a2 + 40) || (sub_1C05603B4(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_19;
  }

  v23 = *(v27 + 40);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v24 = sub_1C095D73C();
  return v24 & 1;
}

uint64_t sub_1C07518CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - v8;
  v10 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks) = v13;
  v48 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks) = v13;
  v15 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs) = v13;
  v16 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v49 = v15;
  v50 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v51 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit) = 0;
  v52 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp) = 0;
  v19 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(a1 + v19, v9, &qword_1EBE1E770, &qword_1C0993388);
  swift_beginAccess();
  sub_1C051F9D4(v9, v1 + v10, &qword_1EBE1E770, &qword_1C0993388);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  v22 = *(v1 + v12);
  *(v1 + v12) = v21;

  v23 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v24 = *(a1 + v23);
  swift_beginAccess();
  v25 = *(v1 + v14);
  *(v1 + v14) = v24;

  v26 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v48;
  swift_beginAccess();
  v29 = *(v1 + v28);
  *(v1 + v28) = v27;

  v30 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v31 = *(a1 + v30);
  v32 = v49;
  swift_beginAccess();
  v33 = *(v1 + v32);
  *(v1 + v32) = v31;

  v34 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v35 = v53;
  sub_1C05149F8(a1 + v34, v53, &qword_1EBE1E7A0, &qword_1C0993390);
  v36 = v50;
  swift_beginAccess();
  sub_1C051F9D4(v35, v1 + v36, &qword_1EBE1E7A0, &qword_1C0993390);
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_beginAccess();
  v40 = v18[1];
  *v18 = v39;
  v18[1] = v38;

  v41 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v51;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v52;
  swift_beginAccess();
  *(v1 + v45) = v44;
  return v1;
}

uint64_t sub_1C0751DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0751E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0752188(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C07521D0()
{
  result = qword_1EBE1E890;
  if (!qword_1EBE1E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E890);
  }

  return result;
}

unint64_t sub_1C0752224()
{
  result = qword_1EBE1E8A0;
  if (!qword_1EBE1E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8A0);
  }

  return result;
}

unint64_t sub_1C0752278()
{
  result = qword_1EBE1E8B0;
  if (!qword_1EBE1E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8B0);
  }

  return result;
}

unint64_t sub_1C07522CC()
{
  result = qword_1EBE1E8B8;
  if (!qword_1EBE1E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8B8);
  }

  return result;
}

unint64_t sub_1C0752320()
{
  result = qword_1EBE1EA10;
  if (!qword_1EBE1EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA10);
  }

  return result;
}

unint64_t sub_1C0752378()
{
  result = qword_1EBE1EA20;
  if (!qword_1EBE1EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA20);
  }

  return result;
}

unint64_t sub_1C07523D0()
{
  result = qword_1EBE1EA28;
  if (!qword_1EBE1EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA28);
  }

  return result;
}

unint64_t sub_1C0752428()
{
  result = qword_1EBE1EA30;
  if (!qword_1EBE1EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA30);
  }

  return result;
}

unint64_t sub_1C07524B0()
{
  result = qword_1EBE1EA48;
  if (!qword_1EBE1EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA48);
  }

  return result;
}

unint64_t sub_1C0752508()
{
  result = qword_1EBE1EA50;
  if (!qword_1EBE1EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA50);
  }

  return result;
}

unint64_t sub_1C0752560()
{
  result = qword_1EBE1EA58;
  if (!qword_1EBE1EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA58);
  }

  return result;
}

unint64_t sub_1C07525E8()
{
  result = qword_1EBE1EA70;
  if (!qword_1EBE1EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA70);
  }

  return result;
}

unint64_t sub_1C0752640()
{
  result = qword_1EBE1EA78;
  if (!qword_1EBE1EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA78);
  }

  return result;
}

unint64_t sub_1C0752698()
{
  result = qword_1EBE1EA80;
  if (!qword_1EBE1EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA80);
  }

  return result;
}

unint64_t sub_1C0752720()
{
  result = qword_1EBE1EA98;
  if (!qword_1EBE1EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA98);
  }

  return result;
}

unint64_t sub_1C0752778()
{
  result = qword_1EBE1EAA0;
  if (!qword_1EBE1EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAA0);
  }

  return result;
}

unint64_t sub_1C07527D0()
{
  result = qword_1EBE1EAA8;
  if (!qword_1EBE1EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAA8);
  }

  return result;
}

unint64_t sub_1C0752858()
{
  result = qword_1EBE1EAC0;
  if (!qword_1EBE1EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAC0);
  }

  return result;
}

unint64_t sub_1C07528B0()
{
  result = qword_1EBE1EAC8;
  if (!qword_1EBE1EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAC8);
  }

  return result;
}

unint64_t sub_1C0752908()
{
  result = qword_1EBE1EAD0;
  if (!qword_1EBE1EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAD0);
  }

  return result;
}

void sub_1C07553F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C075547C()
{
  sub_1C07553F0(319, &qword_1EBE1EE30, type metadata accessor for Siri_Nl_Core_Protocol_Task, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EE38, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EE40, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C095D38C();
        if (v3 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EE48, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0755630()
{
  sub_1C07553F0(319, &qword_1EBE1EE60, MEMORY[0x1E69D2680], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C07557C8()
{
  sub_1C07553F0(319, &qword_1EBE1EE98, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EEB0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0755994()
{
  sub_1C07553F0(319, &qword_1EBE1EEC8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EED0, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C0755A90()
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(319);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }

  return result;
}

void sub_1C0755DC0()
{
  sub_1C07553F0(319, &qword_1EBE1EFB8, type metadata accessor for Siri_Nl_Core_Protocol_Span, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C0755FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v9 <= 0x3F)
  {
    sub_1C095D38C();
    if (v10 <= 0x3F)
    {
      sub_1C07553F0(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C07560CC()
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C0756200(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C095D38C();
  if (v7 <= 0x3F)
  {
    sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C07562D8()
{
  sub_1C07553F0(319, &qword_1EBE1EE98, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_377Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_378Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_205Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1C095D38C();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t __swift_store_extra_inhabitant_index_206Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1C095D38C();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void sub_1C0756948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C095D38C();
  if (v11 <= 0x3F)
  {
    sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1C07553F0(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0756BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C095D38C();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_287Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C095D38C();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_288Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C095D38C();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1C0756EF4()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0756FD0()
{
  sub_1C07553F0(319, &qword_1EBE1F0B0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C07553F0(319, &qword_1EBE1F0C0, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, MEMORY[0x1E69E6720]);
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

void sub_1C07571CC()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_485Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_486Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1C0757550()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0757634()
{
  sub_1C07553F0(319, &qword_1EBE1F0F8, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1F100, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C095D38C();
      if (v2 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C07577B8()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C075789C()
{
  sub_1C0757994();
  if (v0 <= 0x3F)
  {
    sub_1C095D38C();
    if (v1 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0757994()
{
  if (!qword_1EBE1F128)
  {
    v0 = sub_1C095D9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE1F128);
    }
  }
}

void sub_1C07579FC()
{
  sub_1C07553F0(319, &qword_1EBE1EE48, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C07553F0(319, &qword_1EBE1F140, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C0757B60()
{
  sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C07553F0(319, &qword_1EBE1F158, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C0757CFC()
{
  sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v4 = &a1[*(v3 + 32)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(v3 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C05149F8(v1 + *(v7 + 36), v6, &qword_1EBE16DD0, &unk_1C0997A40);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C07581CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C05149F8(a1 + *(v8 + 36), v7, &qword_1EBE16DD0, &unk_1C0997A40);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C075A678(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C0758330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  sub_1C05145B4(a2 + v9, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UsoGraph.version.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40) - 8) + 64);
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
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DD0, &unk_1C0997A40);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  return sub_1C0758728;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.nodes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.edges.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.alignments.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void (*Siri_Nl_Core_Protocol_UsoNode.stringPayload.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
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
  v9 = sub_1C095D32C();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C071C460;
}

BOOL sub_1C0758C58(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t sub_1C0758D90(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.integerPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v1 + *(v7 + 40), v6, &qword_1EBE16DC0, &unk_1C0997A50);
  v8 = sub_1C095D2AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C095D29C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DC0, &unk_1C0997A50);
  }

  return result;
}

uint64_t sub_1C0758FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(a1 + *(v8 + 40), v7, &qword_1EBE16DC0, &unk_1C0997A50);
  v9 = sub_1C095D2AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D29C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16DC0, &unk_1C0997A50);
  }

  return result;
}

void (*Siri_Nl_Core_Protocol_UsoNode.integerPayload.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50) - 8) + 64);
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
  v9 = sub_1C095D2AC();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DC0, &unk_1C0997A50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D29C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DC0, &unk_1C0997A50);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0759350;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v1 + *(v7 + 44), v6, &qword_1EBE16B58, &unk_1C099B6A0);
  v8 = sub_1C095D26C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C095D25C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C0759540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(a1 + *(v8 + 44), v7, &qword_1EBE16B58, &unk_1C099B6A0);
  v9 = sub_1C095D26C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D25C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C07596A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D26C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(a2 + v9, &qword_1EBE16B58, &unk_1C099B6A0);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(v1 + v3, &qword_1EBE16B58, &unk_1C099B6A0);
  v4 = sub_1C095D26C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0) - 8) + 64);
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
  v9 = sub_1C095D26C();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D25C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B58, &unk_1C099B6A0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0759AC0;
}

BOOL Siri_Nl_Core_Protocol_UsoNode.hasUsoVerbElementID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v0 + *(v5 + 44), v4, &qword_1EBE16B58, &unk_1C099B6A0);
  v6 = sub_1C095D26C();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE16B58, &unk_1C099B6A0);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoNode.clearUsoVerbElementID()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(v0 + v1, &qword_1EBE16B58, &unk_1C099B6A0);
  v2 = sub_1C095D26C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.entityLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.entityLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.verbLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.verbLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.normalizedStringPayloads.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1C0759DD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0759E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v3 = a1 + v2[8];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = v2[9];
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[10];
  v7 = sub_1C095D2AC();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[11];
  v9 = sub_1C095D26C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.label.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(v1 + *(v7 + 28), v6, &qword_1EBE16DA0, &qword_1C0997A60);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  *a1 = 0;
  v10 = &a1[*(v8 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  return result;
}

uint64_t sub_1C075A268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(a1 + *(v8 + 28), v7, &qword_1EBE16DA0, &qword_1C0997A60);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C075A678(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  return result;
}

uint64_t sub_1C075A40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  sub_1C05145B4(a2 + v9, &qword_1EBE16DA0, &qword_1C0997A60);
  sub_1C075A678(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.label.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DA0, &qword_1C0997A60);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C075A678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Siri_Nl_Core_Protocol_UsoEdge.label.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60) - 8) + 64);
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
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DA0, &qword_1C0997A60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(v9 + 24)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DA0, &qword_1C0997A60);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  return sub_1C075A938;
}

uint64_t sub_1C075A960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C075A9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C075AB44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  v5 = a1(0);
  v6 = &a3[*(v5 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v7 = *(v5 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(v1 + *(v7 + 28), v6, &qword_1EBE16D90, &qword_1C0970458);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(v8 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D90, &qword_1C0970458);
  }

  return result;
}

uint64_t sub_1C075AD88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(a1 + *(v8 + 28), v7, &qword_1EBE16D90, &qword_1C0970458);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C075A678(v7, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v11 = a2 + *(v9 + 20);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D90, &qword_1C0970458);
  }

  return result;
}

uint64_t sub_1C075AEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  sub_1C05145B4(a2 + v9, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C075A678(v8, a2 + v9, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0) + 20);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458) - 8) + 64);
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
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D90, &qword_1C0970458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D90, &qword_1C0970458);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  return sub_1C075B320;
}

BOOL sub_1C075B384(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_1C05149F8(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v15;
}

uint64_t sub_1C075B4BC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C075B580@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C075B61C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C075B75C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  sub_1C05149F8(v2 + *(v9 + 36), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C075B8E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  sub_1C05149F8(a1 + *(v10 + 36), v9, &qword_1EBE16D68, &unk_1C09933C0);
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v9, v11);
  }

  sub_1C095D31C();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C075BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(a5(0) + 36);
  sub_1C05145B4(a2 + v13, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v13, v12, v8);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t sub_1C075BBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.namespace.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
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
  v9 = sub_1C095D32C();
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
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.probability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  sub_1C05149F8(v1 + *(v7 + 40), v6, &qword_1EBE1E830, &qword_1C09933E0);
  v8 = sub_1C095D2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C095D2DC();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C075C070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  sub_1C05149F8(a1 + *(v8 + 40), v7, &qword_1EBE1E830, &qword_1C09933E0);
  v9 = sub_1C095D2EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D2DC();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C075C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v14 + 16))(&v20 - v16, a1, v13);
  v18 = *(a6(0) + 40);
  sub_1C05145B4(a2 + v18, a7, a8);
  (*(v14 + 32))(a2 + v18, v17, v13);
  return (*(v14 + 56))(a2 + v18, 0, 1, v13);
}