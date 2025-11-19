uint64_t sub_1D8831B2C(uint64_t a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 1752) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8831C44, v2, 0);
}

uint64_t sub_1D8831C44()
{
  v38 = v0;
  v24 = v0[219];
  v27 = v0[186];
  v29 = v0[185];
  v30 = v0[188];
  v34 = v0[183];
  v18 = v0[172];
  v17 = v0[170];
  v32 = v0[153];
  v33 = v0[169];
  v35 = v0[149];
  v36 = v0[168];
  v31 = v0[138];
  v28 = v0[131];
  v25 = v0[116];
  v21 = v0[115];
  v22 = v0[97];
  v1 = v0[93];
  v2 = v0[92];
  v23 = v0[91];
  v20 = v0[88];
  v3 = v0[87];
  v26 = v0[70];
  v4 = v0[53];
  v5 = v0[50];
  v6 = v0[54] + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider;
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v6 + 8);
  sub_1D87A0E38(v8, v3, &qword_1ECA64340);
  v11 = (v18 + *(v17 + 20));
  v12 = v11[3];
  v37[2] = v11[2];
  v37[3] = v12;
  v37[4] = v11[4];
  v13 = v11[1];
  v37[0] = *v11;
  v37[1] = v13;
  swift_unknownObjectRetain();
  v14 = sub_1D8884514();
  sub_1D8865584(v21, v20, v24, Strong, v10, v14 & 1, v7, v3, v1, v37);
  sub_1D88656A4(v1, v5, v4, v22);
  (*(v2 + 8))(v1, v23);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64358);
  v9[4] = sub_1D881CF20(&qword_1ECA64360, &qword_1ECA64358);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1D881CF20(&qword_1ECA64368, &qword_1ECA64348);
  sub_1D8B168B0();
  sub_1D885E3C0(v25, type metadata accessor for BuiltInAction);
  (*(v27 + 8))(v30, v29);
  sub_1D885E3C0(v28, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D885E3C0(v26, type metadata accessor for CVBundle);
  sub_1D885E3C0(v31, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E3C0(v32, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D885E3C0(v18, type metadata accessor for BundleSelector.Output);
  sub_1D885E3C0(v33, type metadata accessor for ActionPin);
  sub_1D885E3C0(v34, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v35, &qword_1ECA64270);
  sub_1D87A14E4(v36, &qword_1ECA640E0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D8832560(uint64_t a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 1784) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8832678, v2, 0);
}

uint64_t sub_1D8832678()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1D8B15EB0();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[224] = v4;
  *v4 = v0;
  v4[1] = sub_1D883279C;
  v5 = v0[223];
  v6 = v0[110];
  v7 = v0[103];
  v8 = v0[70];

  return sub_1D8837994(v7, v6, v8, v5);
}

uint64_t sub_1D883279C()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_1D88340B8;
  }

  else
  {
    v4 = sub_1D88328C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D88328C8()
{
  v31 = v0[223];
  v32 = v0[220];
  v1 = v0[158];
  v2 = v0[153];
  v29 = v0[151];
  v3 = v0[110];
  v4 = v0[109];
  v28 = v0[107];
  v5 = v0[106];
  v6 = v0[105];
  v7 = v0[102];
  v38 = v0[101];
  v40 = v0[103];
  v42 = v0[75];
  v46 = v0[74];
  v48 = v0[73];
  v34 = v0[72];
  v8 = v0[65];
  v30 = v8;
  v9 = v0[54];
  v10 = sub_1D8B15EA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v5 + 16))(v4, v3, v6);
  sub_1D885E420(v2, v1, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  v11 = sub_1D885E288(&qword_1EE0E7928, type metadata accessor for ActionPredictor);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = (v28 + *(v29 + 80) + v12) & ~*(v29 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v31;
  *(v14 + 5) = v9;
  v32(&v14[v12], v4, v6);
  sub_1D885E538(v1, &v14[v13], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  v36 = v31;
  swift_retain_n();
  sub_1D8891CA0(0, 0, v30, &unk_1D8B23CF0, v14);

  (*(v7 + 16))(v34, v40, v38);
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  (*(v46 + 8))(v42, v48);
  (*(v7 + 8))(v40, v38);
  v44 = v0[169];
  v45 = v0[183];
  v41 = v0[153];
  v43 = v0[172];
  v47 = v0[149];
  v49 = v0[168];
  v33 = v0[110];
  v35 = v0[111];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v37 = v0[70];
  v39 = v0[138];
  v20 = v0[59];
  v21 = v0[60];
  v22 = v0[58];
  v23 = v0[43];
  v23[3] = v22;
  v23[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(v20 + 16))(boxed_opaque_existential_1, v21, v22);
  sub_1D8B15EF0();

  (*(v18 + 8))(v17, v19);
  (*(v20 + 8))(v21, v22);
  v25 = *(v15 + 8);
  v25(v33, v16);
  v25(v35, v16);
  sub_1D885E3C0(v37, type metadata accessor for CVBundle);
  sub_1D885E3C0(v39, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E3C0(v41, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D885E3C0(v43, type metadata accessor for BundleSelector.Output);
  sub_1D885E3C0(v44, type metadata accessor for ActionPin);
  sub_1D885E3C0(v45, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v47, &qword_1ECA64270);
  sub_1D87A14E4(v49, &qword_1ECA640E0);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D88332C8()
{
  v1 = v0[207];
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[207];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D8783000, v3, v4, "Action prediction client execution request failed: %@", v7, 0xCu);
    sub_1D87A14E4(v8, &qword_1ECA63128);
    MEMORY[0x1DA721330](v8, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  v11 = v0[154];
  v12 = v0[140];
  (*(v0[106] + 8))(v0[112], v0[105]);
  sub_1D885E3C0(v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E3C0(v11, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[100];
  sub_1D885E420(v0[183] + *(v0[176] + 36), v15, type metadata accessor for ActionPin.Pill.Source);
  v16 = *(v13 + 48);
  if (v16(v15, 1, v14) == 1)
  {
    v17 = v0[183];
    v18 = v0[178];
    sub_1D885E3C0(v0[100], type metadata accessor for ActionPin.Pill.Source);
    sub_1D885E420(v17, v18, type metadata accessor for ActionPin.Pill);
    if (qword_1EE0E8888 != -1)
    {
      swift_once();
    }

    v19 = v0[178];
    v20 = v0[113];
    v21 = v0[84];
    v22 = off_1EE0E8890;
    *(swift_task_alloc() + 16) = v19;
    sub_1D87ED90C(sub_1D886555C, v22, v21);

    v23 = v16(v21, 1, v20);
    v24 = v0[178];
    v25 = v0[114];
    v26 = v0[113];
    v27 = v0[85];
    v28 = v0[84];
    if (v23 == 1)
    {
      sub_1D87A14E4(v28, &qword_1ECA63188);
      sub_1D885E3C0(v24, type metadata accessor for ActionPin.Pill);
      (*(v25 + 56))(v27, 1, 1, v26);
    }

    else
    {
      sub_1D885E538(v28, v0[85], type metadata accessor for BuiltInAction);
      (*(v25 + 56))(v27, 0, 1, v26);
      sub_1D885E3C0(v24, type metadata accessor for ActionPin.Pill);
    }

    v38 = v0[85];
    if (v16(v38, 1, v0[113]) == 1)
    {
      v39 = v0[183];
      v67 = v0[172];
      v68 = v0[169];
      v69 = v0[149];
      v70 = v0[168];
      v40 = v0[82];
      v41 = v0[78];
      v42 = v0[77];
      v61 = v0[76];
      v62 = v0[75];
      v63 = v0[74];
      v64 = v0[79];
      v65 = v0[73];
      v66 = v0[80];
      v43 = v0[72];
      v60 = v0[58];
      v44 = v0[43];
      sub_1D87A14E4(v38, &qword_1ECA63188);
      sub_1D8B16720();

      MEMORY[0x1DA71EFA0](*(v39 + 16), *(v39 + 24));
      MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
      v44[3] = v60;
      v44[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
      __swift_allocate_boxed_opaque_existential_1(v44);
      (*(v42 + 104))(v41, *MEMORY[0x1E69E8650], v61);
      sub_1D8B15EB0();
      (*(v42 + 8))(v41, v61);
      *v43 = 0xD00000000000001ELL;
      v43[1] = 0x80000001D8B42880;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      (*(v63 + 8))(v62, v65);
      sub_1D8B15EF0();
      (*(v66 + 8))(v40, v64);
      sub_1D885E3C0(v67, type metadata accessor for BundleSelector.Output);
      sub_1D885E3C0(v68, type metadata accessor for ActionPin);
      sub_1D885E3C0(v39, type metadata accessor for ActionPin.Pill);
      sub_1D87A14E4(v69, &qword_1ECA64270);
      sub_1D87A14E4(v70, &qword_1ECA640E0);

      v45 = v0[1];

      return v45();
    }

    v47 = v0[199];
    v48 = v0[168];
    v49 = v0[150];
    v50 = v0[118];
    v51 = v0[117];
    v52 = v0[54];
    sub_1D885E538(v38, v50, type metadata accessor for BuiltInAction);
    v0[212] = *(v52 + 112);
    sub_1D885E420(v50, v51, type metadata accessor for BuiltInAction);
    v53 = 1;
    if (!v47(v48, 1, v49))
    {
      sub_1D885E420(v0[168], v0[89], type metadata accessor for CVBundle);
      v53 = 0;
    }

    (*(v0[67] + 56))(v0[89], v53, 1, v0[66]);
    v54 = swift_task_alloc();
    v0[213] = v54;
    *v54 = v0;
    v54[1] = sub_1D882FBC8;
    v37 = v0[118];
  }

  else
  {
    v29 = v0[199];
    v30 = v0[168];
    v31 = v0[150];
    v32 = v0[120];
    v33 = v0[119];
    v34 = v0[54];
    sub_1D885E538(v0[100], v32, type metadata accessor for BuiltInAction);
    v0[209] = *(v34 + 112);
    sub_1D885E420(v32, v33, type metadata accessor for BuiltInAction);
    v35 = 1;
    if (!v29(v30, 1, v31))
    {
      sub_1D885E420(v0[168], v0[90], type metadata accessor for CVBundle);
      v35 = 0;
    }

    (*(v0[67] + 56))(v0[90], v35, 1, v0[66]);
    v36 = swift_task_alloc();
    v0[210] = v36;
    *v36 = v0;
    v36[1] = sub_1D882F258;
    v37 = v0[120];
  }

  v55 = v0[113];
  v56 = v0[54];
  v57 = v0[51];
  v58 = v0[48];
  v59 = v0[44];

  return sub_1D885D45C(v59, v37, v56, v58, v55, v57, &off_1F542BE48);
}

uint64_t sub_1D88340B8()
{
  v54 = v0;
  v1 = v0[225];
  (*(v0[106] + 16))(v0[108], v0[110], v0[105]);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[108];
    v6 = v0[106];
    v48 = v0[105];
    v7 = v0[56];
    v8 = v0[57];
    v9 = v0[55];
    v10 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53[0] = v51;
    *v10 = 136315394;
    v0[34] = 0;
    v0[35] = 0xE000000000000000;
    sub_1D8B14E60();
    sub_1D8B168A0();
    (*(v7 + 8))(v8, v9);
    MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
    v11 = sub_1D8B14DC0();
    MEMORY[0x1DA71EFA0](v11);

    v12 = v0[34];
    v13 = v0[35];
    (*(v6 + 8))(v5, v48);
    v14 = sub_1D89AC714(v12, v13, v53);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1D8B16C90();
    v17 = sub_1D89AC714(v15, v16, v53);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1D8783000, v3, v4, "executeAction %s failed with %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v51, -1, -1);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  else
  {
    v18 = v0[108];
    v19 = v0[106];
    v20 = v0[105];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[225];
  v45 = v0[223];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  swift_getErrorValue();
  *v25 = sub_1D8B16C90();
  v25[1] = v26;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  (*(v23 + 8))(v22, v24);
  v46 = v0[172];
  v47 = v0[169];
  v49 = v0[183];
  v50 = v0[149];
  v52 = v0[168];
  v43 = v0[138];
  v44 = v0[153];
  v40 = v0[110];
  v41 = v0[111];
  v27 = v0[106];
  v28 = v0[105];
  v29 = v0[81];
  v30 = v0[80];
  v31 = v0[79];
  v42 = v0[70];
  v32 = v0[59];
  v33 = v0[60];
  v34 = v0[58];
  v35 = v0[43];
  v35[3] = v34;
  v35[4] = sub_1D881CF20(&qword_1ECA64350, &qword_1ECA64318);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(v32 + 16))(boxed_opaque_existential_1, v33, v34);
  sub_1D8B15EF0();

  (*(v30 + 8))(v29, v31);
  (*(v32 + 8))(v33, v34);
  v37 = *(v27 + 8);
  v37(v40, v28);
  v37(v41, v28);
  sub_1D885E3C0(v42, type metadata accessor for CVBundle);
  sub_1D885E3C0(v43, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  sub_1D885E3C0(v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D885E3C0(v46, type metadata accessor for BundleSelector.Output);
  sub_1D885E3C0(v47, type metadata accessor for ActionPin);
  sub_1D885E3C0(v49, type metadata accessor for ActionPin.Pill);
  sub_1D87A14E4(v50, &qword_1ECA64270);
  sub_1D87A14E4(v52, &qword_1ECA640E0);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1D8834AF4()
{
  v1 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = *(v0 + *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) + 20));
  v22 = *(*&v6 + 16);
  while (1)
  {
    if (v22 == v5)
    {
      v23 = v6;

      sub_1D88558C0(&v23);
      return v23;
    }

    if (v5 >= *(*&v6 + 16))
    {
      break;
    }

    sub_1D885E420(*&v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v5, v4, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D8844D24(&v23);
    v8 = v23;
    if (byte_1F5425948 == 3)
    {
      v9 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v10 = sub_1D8B16BA0();

    if (v10)
    {
      v9 = 0;
      goto LABEL_24;
    }

    if (byte_1F5425949 == 3)
    {
      v9 = 1;
      goto LABEL_23;
    }

    v11 = sub_1D8B16BA0();

    if (v11)
    {
      v9 = 1;
      goto LABEL_24;
    }

    if (byte_1F542594A == 3)
    {
      v9 = 2;
      goto LABEL_23;
    }

    v12 = sub_1D8B16BA0();

    if (v12)
    {
      v9 = 2;
      goto LABEL_24;
    }

    v9 = byte_1F542594B;
    if (byte_1F542594B == 3)
    {
      goto LABEL_23;
    }

    v13 = sub_1D8B16BA0();

    if (v13)
    {
      v9 = 3;
      goto LABEL_24;
    }

    if (byte_1F542594C == 3)
    {
      v9 = 4;
      goto LABEL_23;
    }

    v18 = sub_1D8B16BA0();

    if ((v18 & 1) == 0)
    {
      goto LABEL_51;
    }

    v9 = 4;
LABEL_24:
    if (byte_1F5425970 == 3)
    {
      v7 = 0;
LABEL_40:

      goto LABEL_3;
    }

    v14 = sub_1D8B16BA0();

    if (v14)
    {
      v7 = 0;
    }

    else
    {
      if (byte_1F5425971 == 3)
      {
        v7 = 1;
        goto LABEL_40;
      }

      v15 = sub_1D8B16BA0();

      if (v15)
      {
        v7 = 1;
      }

      else
      {
        if (byte_1F5425972 == 3)
        {
          v7 = 2;
          goto LABEL_40;
        }

        v16 = sub_1D8B16BA0();

        if (v16)
        {
          v7 = 2;
        }

        else
        {
          v7 = byte_1F5425973;
          if (byte_1F5425973 == 3)
          {
            goto LABEL_40;
          }

          v17 = sub_1D8B16BA0();

          if ((v17 & 1) == 0)
          {
            if (byte_1F5425974 != 3)
            {
              v19 = sub_1D8B16BA0();

              if ((v19 & 1) == 0)
              {
                goto LABEL_52;
              }

              v7 = 4;
              goto LABEL_3;
            }

            v7 = 4;
            goto LABEL_40;
          }

          v7 = 3;
        }
      }
    }

LABEL_3:
    sub_1D885E3C0(v4, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    ++v5;
    if (((1 << v9) & *&v8) != 1 << v7)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D88353FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for ActionPin.PermanentPill(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B14E80();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13240();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v53 - v12);
  v14 = type metadata accessor for BuiltInAction(0);
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  v20 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  sub_1D885E420(v2, v25, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v62;
      v28 = v63;
      (*(v62 + 32))(v7, v25, v63);
      PredictedAction.pill.getter(v64);
      return (*(v29 + 8))(v7, v28);
    }

    else
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0);
      v51 = v59;
      sub_1D885E538(&v25[*(v50 + 48)], v59, type metadata accessor for ActionPin.PermanentPill);
      ActionPin.PermanentPill.builtInAction.getter(v17);
      BuiltInAction.pill.getter(v64);
      sub_1D885E3C0(v17, type metadata accessor for BuiltInAction);
      sub_1D885E3C0(v51, type metadata accessor for ActionPin.PermanentPill);
      return (*(v62 + 8))(v25, v63);
    }
  }

  else
  {
    v31 = v19;
    v32 = v57;
    v33 = v58;
    v63 = v26;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);

    sub_1D885E538(v25, v22, type metadata accessor for BundleClassification.ClassificationType);
    BundleClassification.ClassificationType.builtInAction.getter(v13);
    if ((*(v60 + 48))(v13, 1, v61) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA63188);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1D8B16720();

      v65 = 0xD000000000000025;
      v66 = 0x80000001D8B425A0;
      v52 = BundleClassification.ClassificationType.caseDescription.getter();
      MEMORY[0x1DA71EFA0](v52);

      result = sub_1D8B168C0();
      __break(1u);
    }

    else
    {
      v62 = *(v34 + 48);
      v35 = v13;
      v36 = v31;
      sub_1D885E538(v35, v31, type metadata accessor for BuiltInAction);
      sub_1D87ECEF4(v10);
      v59 = sub_1D8B131E0();
      v56 = v37;
      v38 = *(v32 + 8);
      v39 = v33;
      v38(v10, v33);
      v57 = sub_1D88511E8();
      v55 = v40;
      v54 = sub_1D8850A24();
      v42 = v41;
      sub_1D8844D24(&v65);
      sub_1D885E3C0(v22, type metadata accessor for BundleClassification.ClassificationType);
      v43 = v65;
      v44 = *(type metadata accessor for ActionPin.Pill(0) + 36);
      v45 = v64;
      sub_1D885E538(v36, v64 + v44, type metadata accessor for BuiltInAction);
      (*(v60 + 56))(v45 + v44, 0, 1, v61);
      v46 = v56;
      v47 = v57;
      *v45 = v59;
      v45[1] = v46;
      v48 = v54;
      v49 = v55;
      v45[2] = v47;
      v45[3] = v49;
      v45[4] = v48;
      v45[5] = v42;
      v45[6] = 0;
      v45[7] = 0;
      v45[8] = v43;
      return (v38)(&v25[v62], v39);
    }
  }

  return result;
}

uint64_t sub_1D8835A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8865540, 0, 0);
}

uint64_t sub_1D8835A90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8835AB0, 0, 0);
}

uint64_t sub_1D8835AB0()
{
  sub_1D885E420(v0[3], v0[2], type metadata accessor for ResultLookupState);
  type metadata accessor for ActionExecutionState(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[1];

  return v1();
}

uint64_t BundleClassification.ClassificationType.builtInAction.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D885E420(v2, v6, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      *a1 = *v6;
    }

    v10 = type metadata accessor for BuiltInAction(0);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = type metadata accessor for BuiltInAction(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
      return sub_1D885E3C0(v6, type metadata accessor for BundleClassification.ClassificationType);
    }

    *a1 = *v6;
    v10 = type metadata accessor for BuiltInAction(0);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = *v6;
    v12 = v6[1];
    v13 = v6[2];
    v14 = v6[3];
    v15 = v6[4];

    *a1 = v12;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    v10 = type metadata accessor for BuiltInAction(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D885E3C0(v6, type metadata accessor for BundleClassification.ClassificationType);
  }

  v8 = type metadata accessor for BuiltInAction(0);
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_1D8835E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v17;
  v8[8] = v18;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1D8B15030();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  sub_1D8B14DB0();
  v8[12] = swift_task_alloc();
  v10 = sub_1D8B14DF0();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = sub_1D8B14E50();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_1D8B13240();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v13 = sub_1D8B14E80();
  v8[22] = v13;
  v8[23] = *(v13 - 8);
  v8[24] = swift_task_alloc();
  v14 = sub_1D8B14D80();
  v8[25] = v14;
  v8[26] = *(v14 - 8);
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64378);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642E0);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8836174, v17, 0);
}

uint64_t sub_1D8836174()
{
  v1 = v0[28];
  v2 = v0[3];
  v3 = sub_1D8836D10();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  sub_1D87EDC68(sub_1D88654DC, v4, v3, v1);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[26];
  if (v6 == 1)
  {
    sub_1D87A14E4(v0[28], &qword_1ECA64378);
    (*(v10 + 56))(v7, 1, 1, v9);
  }

  else
  {
    v11 = *(v5 + 48);
    (*(v10 + 32))(v0[30], v0[28], v0[25]);
    (*(v10 + 56))(v7, 0, 1, v9);
    sub_1D885E3C0(v8 + v11, type metadata accessor for BundleClassification);
  }

  v12 = v0[29];
  v13 = v0[25];
  v14 = v0[26];
  sub_1D87A0E38(v0[30], v12, &qword_1ECA642E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D87A14E4(v0[29], &qword_1ECA642E0);
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D8B151E0();
    __swift_project_value_buffer(v15, qword_1EE0E43C0);
    v16 = sub_1D8B151C0();
    v17 = sub_1D8B16210();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8783000, v16, v17, "Predicted action could not be constructed from built-in action", v18, 2u);
      MEMORY[0x1DA721330](v18, -1, -1);
    }

    sub_1D87A14E4(v0[30], &qword_1ECA642E0);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[25];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    v27 = v0[17];
    v35 = v0[16];
    v28 = v0[14];
    v36 = v0[15];
    v37 = v0[13];
    v34 = v0[18];
    v29 = v0[4];
    (*(v22 + 32))(v21, v0[29], v23);
    (*(v25 + 16))(v24, v29, v26);
    (*(v22 + 16))(v34, v21, v23);
    (*(v27 + 104))(v34, *MEMORY[0x1E69DFAE8], v35);

    sub_1D8B14D70();
    (*(v28 + 104))(v36, *MEMORY[0x1E69DFAE0], v37);
    sub_1D8B14DA0();
    sub_1D8B14E40();
    v30 = swift_task_alloc();
    v0[31] = v30;
    *v30 = v0;
    v30[1] = sub_1D883669C;
    v31 = v0[24];
    v32 = v0[11];
    v33 = v0[8];

    return sub_1D8837994(v32, v31, v33, 0);
  }
}

uint64_t sub_1D883669C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = sub_1D8836AB0;
  }

  else
  {
    v5 = v2[7];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_1D88367D4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D88367D4()
{
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_1D883686C;
  v2 = v0[24];
  v3 = v0[8];

  return sub_1D8839E44(v2, v3);
}

uint64_t sub_1D883686C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D883697C, v1, 0);
}

uint64_t sub_1D883697C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);
  sub_1D87A14E4(v0[30], &qword_1ECA642E0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8836AB0()
{
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E43C0);
  v3 = v1;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16210();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D8783000, v4, v5, "Action prediction client execution request failed: %@", v8, 0xCu);
    sub_1D87A14E4(v9, &qword_1ECA63128);
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v13 + 8))(v12, v14);
  sub_1D87A14E4(v0[30], &qword_1ECA642E0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D8836D10()
{
  v0 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v0);
  v82 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v57 - v6;
  v8 = sub_1D8B14D80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = type metadata accessor for BundleClassification(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v57 - v18;
  v19 = CVBundle.classifications.getter();
  v78 = v19[2];
  if (!v78)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v69 = v13;
  v20 = 0;
  v76 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v64 = *MEMORY[0x1E69DFAB0];
  v73 = (v9 + 104);
  v77 = (v9 + 56);
  v21 = *MEMORY[0x1E69DFAB8];
  v62 = *MEMORY[0x1E69DFAA0];
  v63 = v21;
  v61 = *MEMORY[0x1E69DFA68];
  v60 = *MEMORY[0x1E69DFA98];
  v59 = *MEMORY[0x1E69DFA80];
  v75 = (v9 + 48);
  v70 = (v9 + 32);
  v72 = (v9 + 16);
  v65 = v9;
  v68 = (v9 + 8);
  v58 = *MEMORY[0x1E69DFA90];
  v57 = *MEMORY[0x1E69DFA88];
  v22 = MEMORY[0x1E69E7CC8];
  v23 = v71;
  v66 = v15;
  v67 = v5;
  v74 = v19;
  while (v20 < v19[2])
  {
    v24 = *(v15 + 72);
    sub_1D885E420(&v76[v24 * v20], v23, type metadata accessor for BundleClassification);
    sub_1D885E420(v23, v82, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v81 = v24;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        v26 = v15;
        v27 = v0;
        if (EnumCaseMultiPayload == 6)
        {
          (*v73)(v5, v61, v8);
        }

        else
        {
          (*v73)(v5, v62, v8);
        }

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v26 = v15;
        v27 = v0;
        v28 = *v73;
        v29 = v5;
        v31 = v63;
LABEL_25:
        v28(v29, v31, v8);
LABEL_26:
        (*v77)(v5, 0, 1, v8);
        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v26 = v15;
        v27 = v0;
        (*v73)(v5, v64, v8);
        goto LABEL_26;
      }

LABEL_27:
      v26 = v15;
      v27 = v0;
      (*v77)(v5, 1, 1, v8);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v26 = v15;
        v27 = v0;
        sub_1D885E3C0(v82, type metadata accessor for BundleClassification.ClassificationType);
        *v5 = 0x65646F63726162;
        v5[1] = 0xE700000000000000;
        v28 = *v73;
        v29 = v5;
        v30 = &v85;
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v26 = v15;
        v27 = v0;
        sub_1D885E3C0(v82, type metadata accessor for BundleClassification.ClassificationType);
        v28 = *v73;
        v29 = v5;
        v30 = (&v85 + 4);
LABEL_23:
        v31 = *(v30 - 64);
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      v26 = v15;
      v27 = v0;
      sub_1D885E3C0(v82, type metadata accessor for BundleClassification.ClassificationType);
      v28 = *v73;
      v29 = v5;
      v30 = &v84;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_27;
    }

    v26 = v15;
    v27 = v0;
    (*v73)(v5, v58, v8);
    (*v77)(v5, 0, 1, v8);
LABEL_28:
    sub_1D885E3C0(v82, type metadata accessor for BundleClassification.ClassificationType);
LABEL_29:
    sub_1D881F6FC(v5, v7, &qword_1ECA642E0);
    if ((*v75)(v7, 1, v8) == 1)
    {
      sub_1D885E3C0(v23, type metadata accessor for BundleClassification);
      sub_1D87A14E4(v7, &qword_1ECA642E0);
      v19 = v74;
      v0 = v27;
      v15 = v26;
    }

    else
    {
      v32 = v69;
      v33 = v7;
      (*v70)(v69, v7, v8);
      v34 = *v72;
      v35 = v80;
      v36 = v32;
      v37 = v32;
      v38 = v23;
      v39 = v8;
      (*v72)(v80, v37, v8);
      sub_1D885E420(v38, v79, type metadata accessor for BundleClassification);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v22;
      v42 = sub_1D87EFD80(v35);
      v43 = v22[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_45;
      }

      v46 = v41;
      if (v22[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8967878();
        }
      }

      else
      {
        sub_1D896DE3C(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_1D87EFD80(v80);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_47;
        }

        v42 = v47;
      }

      v8 = v39;
      v22 = v83;
      if (v46)
      {
        sub_1D8864DC8(v79, v83[7] + v42 * v81, type metadata accessor for BundleClassification);
        v49 = *v68;
        (*v68)(v80, v8);
        v49(v36, v8);
        v23 = v71;
        sub_1D885E3C0(v71, type metadata accessor for BundleClassification);
      }

      else
      {
        v83[(v42 >> 6) + 8] |= 1 << v42;
        v50 = v65;
        v51 = v80;
        v34(v22[6] + *(v65 + 72) * v42, v80, v8);
        sub_1D885E538(v79, v22[7] + v42 * v81, type metadata accessor for BundleClassification);
        v52 = *(v50 + 8);
        v52(v51, v8);
        v52(v36, v8);
        v23 = v71;
        sub_1D885E3C0(v71, type metadata accessor for BundleClassification);
        v53 = v22[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_46;
        }

        v22[2] = v55;
      }

      v0 = v27;
      v7 = v33;
      v15 = v66;
      v5 = v67;
      v19 = v74;
    }

    if (v78 == ++v20)
    {

      return v22;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8837620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  sub_1D87A0E38(a1, &v14 - v9, &qword_1ECA63F98);
  v11 = *(v8 + 56);
  sub_1D885E420(&v10[v11], v6, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D885E3C0(&v10[v11], type metadata accessor for BundleClassification);
  LOBYTE(a2) = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v6, a2);
  sub_1D885E3C0(v6, type metadata accessor for BundleClassification.ClassificationType);
  v12 = sub_1D8B14D80();
  (*(*(v12 - 8) + 8))(v10, v12);
  return a2 & 1;
}

uint64_t sub_1D88377C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D88377E4, a5, 0);
}

uint64_t sub_1D88377E4()
{
  v1 = v0[2];
  if (v1)
  {
    type metadata accessor for SaliencyPixelSmuggler();
    v2 = v1;
    sub_1D888DB40();
  }

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D88378A0;
  v5 = v0[4];
  v4 = v0[5];

  return sub_1D8839E44(v5, v4);
}

uint64_t sub_1D88378A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8837994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_1D8B15060();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = sub_1D8B14FB0();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = sub_1D8B14E50();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v9 = sub_1D8B14E80();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = sub_1D8B15030();
  v5[34] = v10;
  v5[35] = *(v10 - 8);
  v5[36] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640F0);
  v5[37] = v11;
  v5[38] = *(v11 - 8);
  v5[39] = swift_task_alloc();
  v12 = sub_1D8B15000();
  v5[40] = v12;
  v5[41] = *(v12 - 8);
  v5[42] = swift_task_alloc();
  v13 = sub_1D8B15080();
  v5[43] = v13;
  v5[44] = *(v13 - 8);
  v5[45] = swift_task_alloc();
  v14 = sub_1D8B14ED0();
  v5[46] = v14;
  v5[47] = *(v14 - 8);
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642B8);
  v5[49] = swift_task_alloc();
  v15 = sub_1D8B14F70();
  v5[50] = v15;
  v5[51] = *(v15 - 8);
  v5[52] = swift_task_alloc();
  v16 = sub_1D8B14FF0();
  v5[53] = v16;
  v5[54] = *(v16 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v17 = sub_1D8B14F90();
  v5[57] = v17;
  v5[58] = *(v17 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8837EF4, v4, 0);
}

uint64_t sub_1D8837EF4()
{
  v1 = v0[14];
  v2 = v0[59];
  if (v1)
  {
    v3 = v1;
    sub_1D88C9A54(v3, v2);
  }

  else
  {
    v5 = v0[55];
    v4 = v0[56];
    v6 = v0[53];
    v7 = v0[54];
    v9 = v0[51];
    v8 = v0[52];
    v11 = v0[49];
    v10 = v0[50];
    sub_1D8B14FE0();
    (*(v7 + 16))(v5, v4, v6);
    (*(v9 + 104))(v8, *MEMORY[0x1E69DFB78], v10);
    v12 = sub_1D8B14FA0();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_1D8B14F80();
    (*(v7 + 8))(v4, v6);
  }

  v13 = v0[48];
  v15 = v0[41];
  v14 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];
  v30 = v0[37];
  v19 = v0[15];
  (*(v0[58] + 32))(v0[60], v0[59], v0[57]);
  v20 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient);
  v0[61] = v20;
  v0[10] = v20;

  sub_1D883934C(v13);
  *v14 = *(v19 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration);
  (*(v15 + 104))(v14, *MEMORY[0x1E69DFB90], v16);
  (*(v18 + 104))(v17, *MEMORY[0x1E69DFBF8], v30);
  sub_1D8B15070();
  v21 = swift_task_alloc();
  v0[62] = v21;
  v22 = sub_1D8B14C10();
  *v21 = v0;
  v21[1] = sub_1D8838198;
  v23 = v0[60];
  v24 = v0[48];
  v25 = v0[45];
  v26 = v0[11];
  v27 = v0[12];
  v28 = MEMORY[0x1E69DFA40];

  return MEMORY[0x1EEE4F0D0](v26, v27, v24, v23, v25, v22, v28);
}

uint64_t sub_1D8838198()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  v6 = *(*v1 + 360);
  v7 = *(*v1 + 352);
  v8 = *(*v1 + 344);
  *(*v1 + 504) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v9 = *(v2 + 120);
  if (v0)
  {
    v10 = sub_1D88391BC;
  }

  else
  {
    v10 = sub_1D883839C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1D883839C()
{
  v161 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v2 + 16))(v1, v0[11], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69DFBB8])
  {
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v5 = v0[32];
    v6 = v0[28];
    v7 = v0[29];
    v8 = v0[12];
    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1EE0E43C0);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B161F0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[60];
    v14 = v0[57];
    v15 = v0[58];
    v16 = v0[32];
    v18 = v0[28];
    v17 = v0[29];
    if (v12)
    {
      v157 = v0[57];
      v20 = v0[26];
      v19 = v0[27];
      v149 = v11;
      v21 = v0[25];
      v141 = v0[28];
      v22 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v160 = v145;
      *v22 = 136315138;
      v0[6] = 0;
      v0[7] = 0xE000000000000000;
      logb = v13;
      sub_1D8B14E60();
      sub_1D8B168A0();
      (*(v20 + 8))(v19, v21);
      MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
      v23 = sub_1D8B14DC0();
      MEMORY[0x1DA71EFA0](v23);

      v25 = v0[6];
      v24 = v0[7];
      (*(v17 + 8))(v16, v141);
      v26 = sub_1D89AC714(v25, v24, &v160);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D8783000, v10, v149, "Action %s was executed successfully and has followup", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x1DA721330](v145, -1, -1);
      MEMORY[0x1DA721330](v22, -1, -1);

      (*(v15 + 8))(logb, v157);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v13, v14);
    }

    (*(v0[35] + 8))(v0[36], v0[34]);
    goto LABEL_27;
  }

  if (v4 == *MEMORY[0x1E69DFBB0])
  {
    v27 = v0[36];
    v28 = v0[24];
    v29 = v0[20];
    v30 = v0[21];
    (*(v0[35] + 96))(v27, v0[34]);
    (*(v30 + 32))(v28, v27, v29);
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v31 = v0[31];
    v32 = v0[28];
    v33 = v0[29];
    v35 = v0[23];
    v34 = v0[24];
    v36 = v0[20];
    v37 = v0[21];
    v38 = v0[12];
    v39 = sub_1D8B151E0();
    __swift_project_value_buffer(v39, qword_1EE0E43C0);
    (*(v33 + 16))(v31, v38, v32);
    v40 = *(v37 + 16);
    v40(v35, v34, v36);
    v41 = sub_1D8B151C0();
    v42 = sub_1D8B161F0();
    log = v41;
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[60];
    v45 = v0[58];
    v158 = v0[57];
    v46 = v0[31];
    v47 = v0[29];
    v150 = v0[28];
    if (v43)
    {
      v139 = v42;
      v48 = v0[26];
      v49 = v0[27];
      v146 = v0[60];
      v50 = v0[25];
      v142 = v0[24];
      v133 = v0[23];
      v135 = v0[21];
      v131 = v0[22];
      v132 = v0[20];
      v130 = v40;
      v51 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v160 = v137;
      *v51 = 136315394;
      v0[4] = 0;
      v0[5] = 0xE000000000000000;
      sub_1D8B14E60();
      sub_1D8B168A0();
      (*(v48 + 8))(v49, v50);
      MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
      v52 = sub_1D8B14DC0();
      MEMORY[0x1DA71EFA0](v52);

      v53 = v0[4];
      v54 = v0[5];
      (*(v47 + 8))(v46, v150);
      v55 = sub_1D89AC714(v53, v54, &v160);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v130(v131, v133, v132);
      v56 = sub_1D8B159E0();
      v58 = v57;
      v59 = *(v135 + 8);
      v59(v133, v132);
      v60 = sub_1D89AC714(v56, v58, &v160);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_1D8783000, log, v139, "Action %s returned visualSearchQuery result %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v137, -1, -1);
      MEMORY[0x1DA721330](v51, -1, -1);

      v59(v142, v132);
      v61 = *(v45 + 8);
      v62 = v146;
    }

    else
    {
      v97 = v0[23];
      v96 = v0[24];
      v99 = v0[20];
      v98 = v0[21];

      v100 = *(v98 + 8);
      v100(v97, v99);
      (*(v47 + 8))(v46, v150);
      v100(v96, v99);
      v61 = *(v45 + 8);
      v62 = v44;
    }
  }

  else
  {
    if (v4 == *MEMORY[0x1E69DFBC0])
    {
      v63 = v0[36];
      v64 = v0[19];
      v65 = v0[16];
      v66 = v0[17];
      (*(v0[35] + 96))(v63, v0[34]);
      (*(v66 + 32))(v64, v63, v65);
      if (qword_1EE0E43B8 != -1)
      {
        swift_once();
      }

      v68 = v0[29];
      v67 = v0[30];
      v69 = v0[28];
      v71 = v0[18];
      v70 = v0[19];
      v72 = v0[16];
      v73 = v0[17];
      v74 = v0[12];
      v75 = sub_1D8B151E0();
      __swift_project_value_buffer(v75, qword_1EE0E43C0);
      (*(v68 + 16))(v67, v74, v69);
      (*(v73 + 16))(v71, v70, v72);
      v76 = sub_1D8B151C0();
      v77 = sub_1D8B16210();
      v78 = os_log_type_enabled(v76, v77);
      v159 = v0[60];
      v79 = v0[58];
      loga = v0[57];
      v81 = v0[29];
      v80 = v0[30];
      v82 = v0[28];
      if (v78)
      {
        v83 = v0[26];
        v84 = v0[27];
        v85 = v0[25];
        v151 = v0[19];
        v140 = v0[17];
        v134 = v0[16];
        v136 = v0[18];
        v143 = v76;
        v86 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v160 = v147;
        *v86 = 136315394;
        v0[2] = 0;
        v0[3] = 0xE000000000000000;
        v138 = v77;
        sub_1D8B14E60();
        sub_1D8B168A0();
        (*(v83 + 8))(v84, v85);
        MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
        v87 = sub_1D8B14DC0();
        MEMORY[0x1DA71EFA0](v87);

        v88 = v0[2];
        v89 = v0[3];
        (*(v81 + 8))(v80, v82);
        v90 = sub_1D89AC714(v88, v89, &v160);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        sub_1D885E288(&qword_1ECA642C0, MEMORY[0x1E69DFBE0]);
        v91 = sub_1D8B16C90();
        v93 = v92;
        v94 = *(v140 + 8);
        v94(v136, v134);
        v95 = sub_1D89AC714(v91, v93, &v160);

        *(v86 + 14) = v95;
        _os_log_impl(&dword_1D8783000, v143, v138, "Action %s failed with %s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v147, -1, -1);
        MEMORY[0x1DA721330](v86, -1, -1);

        v94(v151, v134);
      }

      else
      {
        v124 = v0[18];
        v123 = v0[19];
        v126 = v0[16];
        v125 = v0[17];

        v127 = *(v125 + 8);
        v127(v124, v126);
        (*(v81 + 8))(v80, v82);
        v127(v123, v126);
      }

      (*(v79 + 8))(v159, loga);
      goto LABEL_27;
    }

    if (v4 != *MEMORY[0x1E69DFBC8])
    {
      return sub_1D8B168C0();
    }

    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v101 = v0[33];
    v102 = v0[28];
    v103 = v0[29];
    v104 = v0[12];
    v105 = sub_1D8B151E0();
    __swift_project_value_buffer(v105, qword_1EE0E43C0);
    (*(v103 + 16))(v101, v104, v102);
    v106 = sub_1D8B151C0();
    v107 = sub_1D8B161F0();
    v108 = os_log_type_enabled(v106, v107);
    v109 = v0[60];
    v110 = v0[57];
    v111 = v0[58];
    v112 = v0[33];
    v114 = v0[28];
    v113 = v0[29];
    if (!v108)
    {

      (*(v113 + 8))(v112, v114);
      (*(v111 + 8))(v109, v110);
      goto LABEL_27;
    }

    v158 = v0[57];
    v116 = v0[26];
    v115 = v0[27];
    v152 = v107;
    v117 = v0[25];
    v144 = v0[28];
    v118 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v160 = v148;
    *v118 = 136315138;
    v0[8] = 0;
    v0[9] = 0xE000000000000000;
    logc = v109;
    sub_1D8B14E60();
    sub_1D8B168A0();
    (*(v116 + 8))(v115, v117);
    MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
    v119 = sub_1D8B14DC0();
    MEMORY[0x1DA71EFA0](v119);

    v121 = v0[8];
    v120 = v0[9];
    (*(v113 + 8))(v112, v144);
    v122 = sub_1D89AC714(v121, v120, &v160);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_1D8783000, v106, v152, "Action %s was executed successfully", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v148);
    MEMORY[0x1DA721330](v148, -1, -1);
    MEMORY[0x1DA721330](v118, -1, -1);

    v61 = *(v111 + 8);
    v62 = logc;
  }

  v61(v62, v158);
LABEL_27:

  v128 = v0[1];

  return v128();
}

uint64_t sub_1D88391BC()
{
  (*(v0[58] + 8))(v0[60], v0[57]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D883934C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v60 - v4;
  v5 = sub_1D8B13240();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v60 - v9;
  v63 = sub_1D8B14EA0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v60 - v14;
  v67 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CVBundle.BundleType(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  v27 = type metadata accessor for CVTrackSnapshot(0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v69 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v60 - v31;
  v76 = v2;
  sub_1D885E420(v2, v20, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v72 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v28 + 56))(v24, 1, 1, v27);
    (*(v6 + 8))(v20, v5);
  }

  else
  {
    sub_1D885E538(v20, v24, type metadata accessor for CVTrackSnapshot);
    (*(v28 + 56))(v24, 0, 1, v27);
  }

  v34 = v5;
  sub_1D881F6FC(v24, v26, &qword_1ECA63E20);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1D87A14E4(v26, &qword_1ECA63E20);
LABEL_11:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1D885E538(v26, v32, type metadata accessor for CVTrackSnapshot);
  if (*&v32[*(v27 + 24)] >> 60 != 11)
  {
    sub_1D885E3C0(v32, type metadata accessor for CVTrackSnapshot);
    goto LABEL_11;
  }

  v35 = swift_projectBox();
  v36 = v68;
  sub_1D885E420(v35, v68, type metadata accessor for SyntheticDetectionResult);
  v37 = v67;
  if (*(v36 + *(v67 + 24)))
  {
    v38 = sub_1D8B16BA0();

    if ((v38 & 1) == 0)
    {
      sub_1D885E3C0(v32, type metadata accessor for CVTrackSnapshot);
      sub_1D885E3C0(v36, type metadata accessor for SyntheticDetectionResult);
LABEL_17:
      v39 = MEMORY[0x1E69E7CC0];
      goto LABEL_18;
    }
  }

  else
  {
  }

  if ((~*(v36 + *(v37 + 36)) & 0xF000000000000007) == 0)
  {
    v40 = v66;
    (*(v64 + 56))(v66, 1, 1, v65);
LABEL_16:
    sub_1D885E3C0(v32, type metadata accessor for CVTrackSnapshot);
    sub_1D885E3C0(v36, type metadata accessor for SyntheticDetectionResult);
    sub_1D87A14E4(v40, &qword_1ECA642F0);
    goto LABEL_17;
  }

  v77 = *(v36 + *(v37 + 36));
  CVDetection.detection.getter(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
  v41 = v65;
  v40 = v66;
  v42 = swift_dynamicCast();
  v43 = v64;
  (*(v64 + 56))(v40, v42 ^ 1u, 1, v41);
  if ((*(v43 + 48))(v40, 1, v41) == 1)
  {
    goto LABEL_16;
  }

  v56 = v36;
  v57 = v40;
  v58 = v60;
  sub_1D881F6FC(v57, v60, &qword_1ECA67750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634E8);
  sub_1D8B14EB0();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D8B1AB90;
  v59 = v62;
  sub_1D8853008();
  (*(v61 + 104))(v59, *MEMORY[0x1E69DFB20], v63);
  sub_1D8B13230();
  LOBYTE(v78[0]) = 1;
  sub_1D8B14E90();
  sub_1D87A14E4(v58, &qword_1ECA67750);
  sub_1D885E3C0(v32, type metadata accessor for CVTrackSnapshot);
  sub_1D885E3C0(v56, type metadata accessor for SyntheticDetectionResult);
LABEL_18:
  v44 = v70;
  sub_1D885E420(v76, v70, type metadata accessor for CVBundle.BundleType);
  v45 = swift_getEnumCaseMultiPayload();
  v47 = v71;
  v46 = v72;
  if (v45 == 1)
  {
    v48 = *(v72 + 32);
    v48(v71, v44, v34);
  }

  else
  {
    v49 = v69;
    sub_1D885E538(v44, v69, type metadata accessor for CVTrackSnapshot);
    (*(v46 + 16))(v47, v49, v34);
    sub_1D885E3C0(v49, type metadata accessor for CVTrackSnapshot);
    v48 = *(v46 + 32);
  }

  v50 = v74;
  v48(v74, v47, v34);
  (*(v46 + 56))(v50, 0, 1, v34);
  v51 = v76;
  sub_1D8847470();
  v52 = CVBundle.classifications.getter();
  MEMORY[0x1EEE9AC00](v52);
  *(&v60 - 2) = v51;
  v53 = sub_1D8AA4238(sub_1D88650D8, (&v60 - 4), v52);

  v54 = sub_1D8853D68();
  v78[5] = v53;
  sub_1D88F3BB0(v54);
  sub_1D88F3BB0(v39);
  sub_1D8B13230();
  return sub_1D8B14EC0();
}

uint64_t sub_1D8839E44(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1D8B131D0();
  v3[9] = swift_task_alloc();
  v4 = sub_1D8B150E0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_1D8B14FC0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_1D8B14E80();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = sub_1D8B13240();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v3[28] = swift_task_alloc();
  v9 = type metadata accessor for BundleSelector.Output(0);
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D883A15C, v2, 0);
}

uint64_t sub_1D883A15C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v4 + v5, v3, &qword_1ECA640E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D87A14E4(v0[28], &qword_1ECA640E8);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[31];
    v9 = v0[29];
    sub_1D885E538(v0[28], v8, type metadata accessor for BundleSelector.Output);
    if (*(v8 + *(v9 + 20) + 40) == 1)
    {
      v10 = sub_1D8834AF4();
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v0[25];
        v13 = v0[21];
        v14 = v0[18];
        v68 = MEMORY[0x1E69E7CC0];
        sub_1D87F3EE0(0, v11, 0);
        v15 = v68;
        v16 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v63 = (v14 + 8);
        v65 = (v14 + 32);
        v67 = *(v13 + 72);
        v17 = (v12 + 32);
        do
        {
          v18 = v0[22];
          v19 = v0[23];
          sub_1D885E420(v16, v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          sub_1D885E420(v19, v18, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v21 = v0[26];
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v22 = v0[23];
              v23 = v0[19];
              v24 = v0[17];
              (*v65)(v23, v0[22], v24);
              sub_1D8B14E30();
              (*v63)(v23, v24);
              v25 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action;
              v26 = v22;
            }

            else
            {
              v30 = v0[22];
              v61 = v0[23];
              v31 = v0[19];
              v32 = v12;
              v33 = v0[17];
              v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
              (*v65)(v31, v30, v33);
              sub_1D8B14E30();
              v34 = v33;
              v12 = v32;
              (*v63)(v31, v34);
              sub_1D885E3C0(v61, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
              v25 = type metadata accessor for ActionPin.PermanentPill;
              v26 = v30 + v59;
            }
          }

          else
          {
            v27 = v0[24];
            v28 = v0[22];
            sub_1D885E3C0(v0[23], type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0) + 48);

            (*v17)(v21, v28 + v29, v27);
            v25 = type metadata accessor for BundleClassification.ClassificationType;
            v26 = v28;
          }

          sub_1D885E3C0(v26, v25);
          v35 = *v17;
          (*v17)(v0[27], v0[26], v0[24]);
          v37 = *(v68 + 16);
          v36 = *(v68 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1D87F3EE0(v36 > 1, v37 + 1, 1);
          }

          v38 = v0[27];
          v39 = v0[24];
          *(v68 + 16) = v37 + 1;
          v35(v68 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37, v38, v39);
          v16 += v67;
          --v11;
        }

        while (v11);
      }

      else
      {

        v15 = MEMORY[0x1E69E7CC0];
      }

      v40 = v0[16];
      v41 = v0[13];
      v42 = v0[14];
      v43 = v0[6];
      v44 = swift_task_alloc();
      *(v44 + 16) = v43;
      v66 = sub_1D883AEE0(sub_1D8864E50, v44, v15);

      (*(v42 + 104))(v40, *MEMORY[0x1E69DFB88], v41);
    }

    else
    {
      (*(v0[14] + 104))(v0[16], *MEMORY[0x1E69DFB80], v0[13]);
      v66 = MEMORY[0x1E69E7CC0];
    }

    v45 = v0[15];
    v46 = v0[14];
    v62 = v0[13];
    v64 = v0[16];
    v60 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642B0);
    v47 = sub_1D8B150C0();
    v48 = *(v47 - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D8B1AB80;
    v52 = v51 + v50;
    sub_1D8B14E30();
    v53 = *(v48 + 104);
    v53(v52, *MEMORY[0x1E69DFC00], v47);
    *(v52 + v49) = v66;
    v53(v52 + v49, *MEMORY[0x1E69DFC08], v47);
    v54 = *(v60 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient);
    v0[32] = v54;
    v0[5] = v54;
    (*(v46 + 16))(v45, v64, v62);

    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    sub_1D8B150D0();
    v55 = swift_task_alloc();
    v0[33] = v55;
    v56 = sub_1D8B14C10();
    *v55 = v0;
    v55[1] = sub_1D883A8C0;
    v57 = v0[12];
    v58 = MEMORY[0x1E69DFA40];

    return MEMORY[0x1EEE4F0D8](v57, v56, v58);
  }
}

uint64_t sub_1D883A8C0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v4 = v2[11];
  v3 = v2[12];
  v5 = v2[10];
  v6 = v2[8];
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = sub_1D883AB4C;
  }

  else
  {
    v7 = sub_1D883AA24;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D883AA24()
{
  v1 = v0[31];
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_1D885E3C0(v1, type metadata accessor for BundleSelector.Output);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D883AB4C()
{
  v1 = v0[31];
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_1D885E3C0(v1, type metadata accessor for BundleSelector.Output);
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v3 = sub_1D8B151E0();
  __swift_project_value_buffer(v3, qword_1EE0E43C0);
  v4 = v2;
  v5 = sub_1D8B151C0();
  v6 = sub_1D8B16210();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[34];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D8783000, v5, v6, "Failed to send feedback to action prediction client: %@", v9, 0xCu);
    sub_1D87A14E4(v10, &qword_1ECA63128);
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

BOOL sub_1D883ADB0()
{
  v0 = sub_1D8B13240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B14E30();
  sub_1D885E288(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
  v4 = sub_1D8B158C0();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_1D883AEE0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v5 = sub_1D8B13240();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v31 = &v22 - v10;
  v25 = *(a3 + 16);
  if (v25)
  {
    v11 = 0;
    v26 = v6 + 16;
    v29 = (v6 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    v23 = v5;
    v24 = a3;
    v22 = v6;
    while (v11 < *(a3 + 16))
    {
      v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v14 = *(v6 + 72);
      v15 = v31;
      (*(v6 + 16))(v31, a3 + v13 + v14 * v11, v5);
      v16 = v27(v15);
      if (v3)
      {
        (*(v6 + 8))(v31, v5);

        goto LABEL_15;
      }

      if ((v16 & 1) == 0)
      {
        (*(v6 + 8))(v31, v5);
        goto LABEL_15;
      }

      v17 = *v29;
      (*v29)(v30, v31, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F3EE0(0, *(v12 + 16) + 1, 1);
        v12 = v32;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D87F3EE0(v19 > 1, v20 + 1, 1);
        v12 = v32;
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v21 = v12 + v13 + v20 * v14;
      v5 = v23;
      result = (v17)(v21, v30, v23);
      a3 = v24;
      v6 = v22;
      if (v25 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v12;
  }

  return result;
}

uint64_t sub_1D883B174(void *a1, uint64_t a2)
{
  v534 = a2;
  v538 = a1;
  v565 = 0;
  v564 = sub_1D8B13240();
  v545 = *(v564 - 8);
  v3 = MEMORY[0x1EEE9AC00](v564);
  v544 = &v494 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v557 = &v494 - v5;
  v6 = type metadata accessor for ActionPin.PermanentPill(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v563 = &v494 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v572 = &v494 - v9;
  v561 = sub_1D8B14E50();
  v504 = *(v561 - 8);
  v10 = MEMORY[0x1EEE9AC00](v561);
  v581 = &v494 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v579 = &v494 - v12;
  v584 = sub_1D8B14E80();
  v503 = *(v584 - 8);
  MEMORY[0x1EEE9AC00](v584);
  v583 = &v494 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v560 = (&v494 - v15);
  v589 = type metadata accessor for BuiltInAction(0);
  v502 = *(v589 - 8);
  v16 = MEMORY[0x1EEE9AC00](v589);
  v576 = &v494 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v559 = &v494 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v558 = &v494 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v562 = &v494 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v575 = &v494 - v24;
  v573 = type metadata accessor for ActionPin.Pill(0);
  v582 = *(v573 - 8);
  MEMORY[0x1EEE9AC00](v573);
  v591 = (&v494 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v568 = type metadata accessor for BundleClassification.ClassificationType(0);
  v26 = MEMORY[0x1EEE9AC00](v568);
  v574 = &v494 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v588 = &v494 - v28;
  v29 = type metadata accessor for BundleClassification(0);
  v567 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v590 = &v494 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v518 = (&v494 - v32);
  v526 = type metadata accessor for BundleSelector.Output(0);
  v517 = *(v526 - 1);
  v33 = MEMORY[0x1EEE9AC00](v526);
  v509 = &v494 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v507 = &v494 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v506 = &v494 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v541 = &v494 - v39;
  v549 = type metadata accessor for ActionPin(0);
  v548 = *(v549 - 1);
  MEMORY[0x1EEE9AC00](v549);
  v515 = &v494 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64270);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v499 = &v494 - v42;
  v585 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v530 = *(v585 - 8);
  v43 = MEMORY[0x1EEE9AC00](v585);
  v578 = &v494 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v577 = &v494 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v496 = &v494 - v47;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64278);
  MEMORY[0x1EEE9AC00](v513);
  v514 = &v494 - v48;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64280);
  MEMORY[0x1EEE9AC00](v542);
  v543 = &v494 - v49;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  v50 = MEMORY[0x1EEE9AC00](v511);
  v510 = &v494 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v554 = (&v494 - v52);
  v521 = type metadata accessor for ActionPredictor.Output(0);
  v524 = *(v521 - 8);
  v53 = MEMORY[0x1EEE9AC00](v521);
  v497 = &v494 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v532 = &v494 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v531 = &v494 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v519 = &v494 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v505 = &v494 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v529 = &v494 - v63;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E50);
  v571 = *(v587 - 8);
  v64 = MEMORY[0x1EEE9AC00](v587);
  v586 = &v494 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v580 = &v494 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v555 = (&v494 - v69);
  MEMORY[0x1EEE9AC00](v68);
  v552 = &v494 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v72 = MEMORY[0x1EEE9AC00](v71 - 8);
  v508 = &v494 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v501 = &v494 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v539 = &v494 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v540 = &v494 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v551 = &v494 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v494 - v82;
  v84 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v85 = *(v84 - 8);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v537 = &v494 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v498 = &v494 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v556 = &v494 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v533 = &v494 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v520 = &v494 - v95;
  MEMORY[0x1EEE9AC00](v94);
  v525 = &v494 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v99 = &v494 - v98;
  v100 = type metadata accessor for CVBundle(0);
  v101 = *(v100 - 8);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v569 = &v494 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1EEE9AC00](v102);
  v536 = &v494 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v535 = &v494 - v107;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v494 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64288);
  v111 = MEMORY[0x1EEE9AC00](v110 - 8);
  v512 = &v494 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x1EEE9AC00](v111);
  v516 = &v494 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v546 = &v494 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v523 = &v494 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v550 = (&v494 - v120);
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v494 - v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  v124 = MEMORY[0x1EEE9AC00](v123 - 8);
  v500 = &v494 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v553 = (&v494 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v566 = &v494 - v129;
  MEMORY[0x1EEE9AC00](v128);
  v527 = &v494 - v130;
  v522 = v2;
  sub_1D88447A0(&v494 - v130);
  v131 = v534;
  sub_1D87A0E38(v534, v99, &qword_1ECA67980);
  v570 = v101;
  v132 = v101;
  v133 = v538;
  v134 = (*(v132 + 48))(v99, 1, v100);
  v547 = v85;
  if (v134 == 1)
  {
    sub_1D87A14E4(v99, &qword_1ECA67980);
    v135 = 1;
    v136 = v587;
    v137 = v556;
    goto LABEL_13;
  }

  v138 = sub_1D885E538(v99, v109, type metadata accessor for CVBundle);
  MEMORY[0x1EEE9AC00](v138);
  v492 = v131;
  v139 = v565;
  sub_1D87EDB98(sub_1D8864D88, v133, v83);
  v565 = v139;
  v140 = *(v85 + 48);
  v141 = v140(v83, 1, v84);
  v137 = v556;
  v142 = v109;
  if (v141 != 1)
  {
    v151 = v525;
    sub_1D885E538(v83, v525, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v136 = v587;
    v152 = *(v587 + 48);
    sub_1D885E538(v142, v122, type metadata accessor for CVBundle);
    v153 = &v122[v152];
    v154 = v151;
LABEL_12:
    sub_1D885E538(v154, v153, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v135 = 0;
    goto LABEL_13;
  }

  v525 = v109;
  sub_1D87A14E4(v83, &qword_1ECA640E0);
  v143 = v551;
  sub_1D88236F4(v551);
  v144 = v140(v143, 1, v84);
  v136 = v587;
  if (v144 != 1)
  {
    sub_1D885E3C0(v525, type metadata accessor for CVBundle);
    v155 = v520;
    sub_1D885E538(v143, v520, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v156 = *(v136 + 48);
    sub_1D885E420(v155, v122, type metadata accessor for CVBundle);
    v153 = &v122[v156];
    v154 = v155;
    goto LABEL_12;
  }

  sub_1D87A14E4(v143, &qword_1ECA640E0);
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v145 = sub_1D8B151E0();
  __swift_project_value_buffer(v145, qword_1EE0E43C0);
  v146 = sub_1D8B151C0();
  v147 = sub_1D8B16210();
  v148 = os_log_type_enabled(v146, v147);
  v149 = v525;
  if (v148)
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_1D8783000, v146, v147, "Output ID isnt present in predictions and there is no prior result; sending nil", v150, 2u);
    MEMORY[0x1DA721330](v150, -1, -1);
  }

  sub_1D885E3C0(v149, type metadata accessor for CVBundle);
  v135 = 1;
LABEL_13:
  v157 = (*(v571 + 56))(v122, v135, 1, v136);
  v520 = v534 + v526[5];
  v158 = *(v520 + 40) == 1;
  v525 = v122;
  v528 = v84;
  if (v158)
  {
    MEMORY[0x1EEE9AC00](v157);
    v492 = v159;
    v160 = v538;

    v161 = v160;
    v162 = v565;
    v163 = sub_1D87C6D34(sub_1D8864CF8, (&v494 - 4), v161);
    v164 = *(v163 + 16);
    if (v164)
    {
      *&v592.f64[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F41E0(0, v164, 0);
      v165 = v592.f64[0];
      v166 = (*(v547 + 80) + 32) & ~*(v547 + 80);
      v565 = v163;
      v167 = v163 + v166;
      v168 = *(v547 + 72);
      v169 = v552;
      do
      {
        v170 = *(v587 + 48);
        sub_1D885E420(v167, v169 + v170, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E420(v169 + v170, v169, type metadata accessor for CVBundle);
        v592.f64[0] = v165;
        v172 = *(*&v165 + 16);
        v171 = *(*&v165 + 24);
        if (v172 >= v171 >> 1)
        {
          sub_1D87F41E0(v171 > 1, v172 + 1, 1);
          v165 = v592.f64[0];
        }

        *(*&v165 + 16) = v172 + 1;
        sub_1D881F6FC(v169, *&v165 + ((*(v571 + 80) + 32) & ~*(v571 + 80)) + *(v571 + 72) * v172, &qword_1ECA63E50);
        v167 += v168;
        --v164;
      }

      while (v164);
      v551 = *&v165;

      v122 = v525;
      v137 = v556;
      v84 = v528;
    }

    else
    {

      v551 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v174);
    v492 = v534;
    v175 = v538;

    v176 = sub_1D87C6D34(sub_1D8864D18, (&v494 - 4), v175);
    v565 = v162;
    v177 = *(v176 + 16);
    if (v177)
    {
      *&v592.f64[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F41E0(0, v177, 0);
      v178 = v592.f64[0];
      v179 = (*(v547 + 80) + 32) & ~*(v547 + 80);
      v495 = v176;
      v180 = v176 + v179;
      v181 = *(v547 + 72);
      v182 = v555;
      do
      {
        v183 = *(v587 + 48);
        sub_1D885E420(v180, v182 + v183, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E420(v182 + v183, v182, type metadata accessor for CVBundle);
        v592.f64[0] = v178;
        v185 = *(*&v178 + 16);
        v184 = *(*&v178 + 24);
        if (v185 >= v184 >> 1)
        {
          sub_1D87F41E0(v184 > 1, v185 + 1, 1);
          v178 = v592.f64[0];
        }

        *(*&v178 + 16) = v185 + 1;
        sub_1D881F6FC(v182, *&v178 + ((*(v571 + 80) + 32) & ~*(v571 + 80)) + *(v571 + 72) * v185, &qword_1ECA63E50);
        v180 += v181;
        --v177;
      }

      while (v177);
      v552 = *&v178;

      v122 = v525;
      v136 = v587;
      v137 = v556;
      v173 = v528;
    }

    else
    {
      v173 = v84;

      v552 = MEMORY[0x1E69E7CC0];
      v136 = v587;
    }
  }

  else
  {
    v173 = v84;
    v552 = MEMORY[0x1E69E7CC0];
    v551 = MEMORY[0x1E69E7CC0];
  }

  v186 = v550;
  sub_1D87A0E38(v122, v550, &qword_1ECA64288);
  v187 = (v571 + 48);
  v188 = *(v571 + 48);
  v189 = (v188)(v186, 1, v136);
  sub_1D87A14E4(v186, &qword_1ECA64288);
  v555 = v188;
  if (v189 == 1)
  {
    v190 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
    v191 = (*(v570 + 80) + 32) & ~*(v570 + 80);
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_1D8B1AB90;
    v192 = v523;
    sub_1D87A0E38(v122, v523, &qword_1ECA64288);
    if ((v188)(v192, 1, v136) == 1)
    {
      __break(1u);
      goto LABEL_239;
    }

    v193 = *(v136 + 48);
    sub_1D885E538(v192, v190 + v191, type metadata accessor for CVBundle);
    sub_1D885E3C0(v192 + v193, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  }

  v194 = v173;
  v195 = v546;
  sub_1D87A0E38(v122, v546, &qword_1ECA64288);
  v550 = v187;
  v196 = v555(v195, 1, v136);
  sub_1D87A14E4(v195, &qword_1ECA64288);
  v197 = MEMORY[0x1E69E7CC0];
  v198 = v566;
  if (v196 == 1)
  {
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63370);
  v189 = ((*(v547 + 80) + 32) & ~*(v547 + 80));
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_1D8B1AB90;
  v199 = v516;
  sub_1D87A0E38(v122, v516, &qword_1ECA64288);
  if (v555(v199, 1, v136) == 1)
  {
LABEL_239:
    __break(1u);
LABEL_240:
    sub_1D87A14E4(v189, &qword_1ECA63188);
    v592.f64[0] = 0.0;
    v592.f64[1] = -2.68156159e154;
    sub_1D8B16720();

    v592.f64[0] = -2.31584178e77;
    *&v592.f64[1] = 0x80000001D8B425A0;
    v491 = BundleClassification.ClassificationType.caseDescription.getter();
    MEMORY[0x1DA71EFA0](v491);

    v493 = 0;
    v492 = 1207;
    goto LABEL_241;
  }

  sub_1D885E538(v199 + *(v136 + 48), v189 + v197, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D885E3C0(v199, type metadata accessor for CVBundle);
LABEL_36:
  LODWORD(v523) = sub_1D8861908(v534, v538);
  v200 = sub_1D8861160(v197, v190);

  if (*(v200 + 16))
  {
    v201 = v548;
    v202 = v554;
    sub_1D885E420(v200 + ((*(v548 + 80) + 32) & ~*(v548 + 80)), v554, type metadata accessor for ActionPin);
    v203 = 0;
  }

  else
  {
    v203 = 1;
    v201 = v548;
    v202 = v554;
  }

  (*(v201 + 56))(v202, v203, 1, v549);
  v604 = *(v520 + 32);
  v204 = *(v520 + 16);
  v602 = *v520;
  v603 = v204;
  v601 = *(v520 + 40);
  *&v600[15] = *(v520 + 72);
  v205 = *(v520 + 57);
  v599 = *(v520 + 41);
  *v600 = v205;
  v206 = *(v551 + 16);
  if (v206)
  {
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    v207 = v551;
    sub_1D87F40FC(0, v206, 0);
    v208 = v592.f64[0];
    v209 = v207 + ((*(v571 + 80) + 32) & ~*(v571 + 80));
    v210 = *(v571 + 72);
    v211 = v209;
    v212 = v206;
    v213 = v533;
    do
    {
      v214 = v580;
      sub_1D87A0E38(v211, v580, &qword_1ECA63E50);
      v215 = v214;
      v216 = v586;
      sub_1D881F6FC(v215, v586, &qword_1ECA63E50);
      sub_1D885E538(v216 + *(v587 + 48), v213, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v216, type metadata accessor for CVBundle);
      v592.f64[0] = v208;
      v218 = *(*&v208 + 16);
      v217 = *(*&v208 + 24);
      if (v218 >= v217 >> 1)
      {
        sub_1D87F40FC(v217 > 1, v218 + 1, 1);
        v208 = v592.f64[0];
      }

      *(*&v208 + 16) = v218 + 1;
      sub_1D885E538(v213, *&v208 + ((*(v547 + 80) + 32) & ~*(v547 + 80)) + *(v547 + 72) * v218, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v211 += v210;
      --v212;
    }

    while (v212);
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v206, 0);
    v219 = v592.f64[0];
    v220 = v535;
    do
    {
      v221 = v580;
      sub_1D87A0E38(v209, v580, &qword_1ECA63E50);
      v222 = v586;
      sub_1D881F6FC(v221, v586, &qword_1ECA63E50);
      v223 = *(v587 + 48);
      sub_1D885E538(v222, v220, type metadata accessor for CVBundle);
      sub_1D885E3C0(v222 + v223, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v592.f64[0] = v219;
      v225 = *(*&v219 + 16);
      v224 = *(*&v219 + 24);
      if (v225 >= v224 >> 1)
      {
        sub_1D87F4074(v224 > 1, v225 + 1, 1);
        v219 = v592.f64[0];
      }

      *(*&v219 + 16) = v225 + 1;
      sub_1D885E538(v220, *&v219 + ((*(v570 + 80) + 32) & ~*(v570 + 80)) + *(v570 + 72) * v225, type metadata accessor for CVBundle);
      v209 += v210;
      --v206;
    }

    while (v206);

    v194 = v528;
    v226 = v553;
    v198 = v566;
    v137 = v556;
  }

  else
  {

    v219 = MEMORY[0x1E69E7CC0];
    v208 = MEMORY[0x1E69E7CC0];
    v226 = v553;
  }

  v227 = sub_1D8861160(*&v208, *&v219);

  v228 = *(v552 + 16);
  if (v228)
  {
    v556 = v227;
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    v229 = v552;
    sub_1D87F40FC(0, v228, 0);
    v230 = v592.f64[0];
    v231 = v229 + ((*(v571 + 80) + 32) & ~*(v571 + 80));
    v232 = v231;
    v233 = v228;
    v234 = v547;
    v571 = *(v571 + 72);
    do
    {
      v235 = v580;
      v236 = v137;
      sub_1D87A0E38(v232, v580, &qword_1ECA63E50);
      v237 = v235;
      v238 = v586;
      sub_1D881F6FC(v237, v586, &qword_1ECA63E50);
      sub_1D885E538(v238 + *(v587 + 48), v137, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v238, type metadata accessor for CVBundle);
      v592.f64[0] = v230;
      v240 = *(*&v230 + 16);
      v239 = *(*&v230 + 24);
      if (v240 >= v239 >> 1)
      {
        sub_1D87F40FC(v239 > 1, v240 + 1, 1);
        v234 = v547;
        v230 = v592.f64[0];
      }

      *(*&v230 + 16) = v240 + 1;
      sub_1D885E538(v236, *&v230 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v240, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v241 = v571;
      v232 += v571;
      --v233;
      v137 = v236;
    }

    while (v233);
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v228, 0);
    v242 = v592.f64[0];
    v243 = v536;
    do
    {
      v244 = v580;
      sub_1D87A0E38(v231, v580, &qword_1ECA63E50);
      v245 = v586;
      sub_1D881F6FC(v244, v586, &qword_1ECA63E50);
      v246 = *(v587 + 48);
      sub_1D885E538(v245, v243, type metadata accessor for CVBundle);
      sub_1D885E3C0(v245 + v246, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v592.f64[0] = v242;
      v248 = *(*&v242 + 16);
      v247 = *(*&v242 + 24);
      if (v248 >= v247 >> 1)
      {
        sub_1D87F4074(v247 > 1, v248 + 1, 1);
        v242 = v592.f64[0];
      }

      *(*&v242 + 16) = v248 + 1;
      sub_1D885E538(v243, *&v242 + ((*(v570 + 80) + 32) & ~*(v570 + 80)) + *(v570 + 72) * v248, type metadata accessor for CVBundle);
      v231 += v241;
      --v228;
    }

    while (v228);

    v194 = v528;
    v226 = v553;
    v198 = v566;
    v227 = v556;
  }

  else
  {

    v242 = MEMORY[0x1E69E7CC0];
    v230 = MEMORY[0x1E69E7CC0];
  }

  v249 = sub_1D8861160(*&v230, *&v242);

  v250 = sub_1D87C40D8(v249);

  v251 = v529;
  sub_1D881F6FC(v554, v529, &qword_1ECA64070);
  v252 = v521;
  v253 = v251 + *(v521 + 20);
  v254 = v603;
  *v253 = v602;
  *(v253 + 16) = v254;
  v255 = *v600;
  *(v253 + 41) = v599;
  *(v253 + 32) = v604;
  *(v253 + 40) = v601;
  *(v253 + 57) = v255;
  *(v253 + 72) = *&v600[15];
  *(v251 + v252[6]) = v227;
  v256 = v252[7];
  v586 = v250;
  *(v251 + v256) = v250;
  *(v251 + v252[8]) = v523 & 1;
  sub_1D885E420(v251, v198, type metadata accessor for ActionPredictor.Output);
  v257 = v524;
  (*(v524 + 56))(v198, 0, 1, v252);
  v258 = *(v542 + 48);
  v259 = v198;
  v260 = v543;
  sub_1D87A0E38(v527, v543, &qword_1ECA64290);
  v261 = v260;
  sub_1D87A0E38(v259, v260 + v258, &qword_1ECA64290);
  v264 = *(v257 + 48);
  v263 = v257 + 48;
  v262 = v264;
  if (v264(v260, 1, v252) == 1)
  {
    sub_1D87A14E4(v259, &qword_1ECA64290);
    v265 = v262(v260 + v258, 1, v252);
    v266 = v587;
    v267 = v550;
    if (v265 == 1)
    {
      sub_1D87A14E4(v261, &qword_1ECA64290);
LABEL_71:
      if (qword_1EE0E43B8 != -1)
      {
        swift_once();
      }

      v275 = sub_1D8B151E0();
      __swift_project_value_buffer(v275, qword_1EE0E43C0);
      v276 = sub_1D8B151C0();
      v277 = sub_1D8B16200();
      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        *v278 = 0;
        _os_log_impl(&dword_1D8783000, v276, v277, "squelched no update", v278, 2u);
        MEMORY[0x1DA721330](v278, -1, -1);
      }

      goto LABEL_233;
    }

    goto LABEL_66;
  }

  sub_1D87A0E38(v260, v226, &qword_1ECA64290);
  v268 = v262(v260 + v258, 1, v252);
  v266 = v587;
  v267 = v550;
  if (v268 == 1)
  {
    sub_1D87A14E4(v566, &qword_1ECA64290);
    sub_1D885E3C0(v226, type metadata accessor for ActionPredictor.Output);
LABEL_66:
    v495 = v262;
    v524 = v263;
    sub_1D87A14E4(v261, &qword_1ECA64280);
    v269 = v555;
    goto LABEL_67;
  }

  v495 = v262;
  v524 = v263;
  v272 = v261 + v258;
  v273 = v505;
  sub_1D885E538(v272, v505, type metadata accessor for ActionPredictor.Output);
  v274 = _s22VisualIntelligenceCore15ActionPredictorC6OutputV2eeoiySbAE_AEtFZ_0(v226, v273);
  v263 = v261;
  sub_1D885E3C0(v273, type metadata accessor for ActionPredictor.Output);
  sub_1D87A14E4(v566, &qword_1ECA64290);
  sub_1D885E3C0(v226, type metadata accessor for ActionPredictor.Output);
  sub_1D87A14E4(v261, &qword_1ECA64290);
  v269 = v555;
  if (v274)
  {
    goto LABEL_71;
  }

LABEL_67:
  LODWORD(v587) = v601;
  if (v601)
  {
    goto LABEL_92;
  }

  sub_1D88236F4(v540);
  v270 = v512;
  sub_1D87A0E38(v525, v512, &qword_1ECA64288);
  if (v269(v270, 1, v266) == 1)
  {
    sub_1D87A14E4(v270, &qword_1ECA64288);
    v271 = v547;
    v266 = v539;
    (*(v547 + 56))(v539, 1, 1, v194);
  }

  else
  {
    v279 = v270 + *(v266 + 48);
    v266 = v539;
    sub_1D885E538(v279, v539, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v271 = v547;
    (*(v547 + 56))(v266, 0, 1, v194);
    sub_1D885E3C0(v270, type metadata accessor for CVBundle);
  }

  v263 = v514;
  v280 = *(v513 + 48);
  v281 = v540;
  sub_1D87A0E38(v540, v514, &qword_1ECA640E0);
  sub_1D87A0E38(v266, v263 + v280, &qword_1ECA640E0);
  v282 = *(v271 + 48);
  if (v282(v263, 1, v194) == 1)
  {
    if (v282(v263 + v280, 1, v194) == 1)
    {
      sub_1D87A14E4(v263, &qword_1ECA640E0);
LABEL_87:
      v292 = v539;
LABEL_90:
      sub_1D87A14E4(v292, &qword_1ECA640E0);
      v288 = v281;
      v287 = &qword_1ECA640E0;
      goto LABEL_91;
    }

    goto LABEL_82;
  }

  v283 = v501;
  sub_1D87A0E38(v263, v501, &qword_1ECA640E0);
  if (v282(v263 + v280, 1, v194) == 1)
  {
    sub_1D885E3C0(v283, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
LABEL_82:
    sub_1D87A14E4(v263, &qword_1ECA64278);
    goto LABEL_83;
  }

  v289 = v263 + v280;
  v290 = v498;
  sub_1D885E538(v289, v498, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  v291 = sub_1D885F904(v283, v290);
  sub_1D885E3C0(v290, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D885E3C0(v283, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  sub_1D87A14E4(v263, &qword_1ECA640E0);
  if (v291)
  {
    goto LABEL_87;
  }

LABEL_83:
  v284 = v522;
  swift_beginAccess();
  sub_1D87A0E38(v284 + 152, &v592, &qword_1ECA64120);
  v285 = v539;
  if (*(&v593 + 1))
  {
    sub_1D87A14E4(&v592, &qword_1ECA64120);
    v286 = v499;
    sub_1D8854220(v285, v281, v499);
    if ((*(v530 + 48))(v286, 1, v585) != 1)
    {
      v293 = v496;
      sub_1D885E538(v286, v496, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D8861FDC(v293);
      sub_1D885E3C0(v293, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v292 = v285;
      goto LABEL_90;
    }

    sub_1D87A14E4(v285, &qword_1ECA640E0);
    sub_1D87A14E4(v281, &qword_1ECA640E0);
    v287 = &qword_1ECA64270;
    v288 = v286;
  }

  else
  {
    sub_1D87A14E4(v539, &qword_1ECA640E0);
    sub_1D87A14E4(v281, &qword_1ECA640E0);
    v287 = &qword_1ECA64120;
    v288 = &v592;
  }

LABEL_91:
  sub_1D87A14E4(v288, v287);
LABEL_92:
  v294 = *(v227 + 16);
  if (v294)
  {
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F3F24(0, v294, 0);
    v295 = v592.f64[0];
    v263 = v227 + ((*(v548 + 80) + 32) & ~*(v548 + 80));
    v296 = *(v548 + 72);
    v297 = v549;
    v194 = v515;
    do
    {
      sub_1D885E420(v263, v194, type metadata accessor for ActionPin);
      v298 = *(*(v194 + v297[7]) + 16);
      sub_1D885E3C0(v194, type metadata accessor for ActionPin);
      v592.f64[0] = v295;
      v266 = *(*&v295 + 16);
      v299 = *(*&v295 + 24);
      v300 = v266 + 1;
      if (v266 >= v299 >> 1)
      {
        sub_1D87F3F24((v299 > 1), v266 + 1, 1);
        v295 = v592.f64[0];
      }

      *(*&v295 + 16) = v300;
      *(*&v295 + 8 * v266 + 32) = v298;
      v263 += v296;
      --v294;
    }

    while (v294);
LABEL_99:
    v301 = v565;
    v302 = 0;
    v303 = 32;
    while (1)
    {
      v304 = *(*&v295 + v303);
      v305 = __OFADD__(v302, v304);
      v302 += v304;
      if (v305)
      {
        break;
      }

      v303 += 8;
      if (!--v300)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
    goto LABEL_235;
  }

  v295 = MEMORY[0x1E69E7CC0];
  v300 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v300)
  {
    goto LABEL_99;
  }

  v302 = 0;
  v301 = v565;
LABEL_102:

  v306 = sub_1D881FA54(v586);
  v307 = *(v306 + 16);
  v263 = v532;
  v194 = v531;
  v300 = v519;
  v266 = 0;
  if (v307)
  {
    v308 = (v306 + 32);
    v267 = v541;
    while (1)
    {
      v309 = *v308++;
      v305 = __OFADD__(v266, v309);
      v266 += v309;
      if (v305)
      {
        break;
      }

      if (!--v307)
      {
        goto LABEL_108;
      }
    }

LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    swift_once();
    goto LABEL_109;
  }

  v267 = v541;
LABEL_108:
  v571 = v301;

  if (qword_1EE0E43B8 != -1)
  {
    goto LABEL_237;
  }

LABEL_109:
  v310 = sub_1D8B151E0();
  v311 = __swift_project_value_buffer(v310, qword_1EE0E43C0);
  v312 = v529;
  sub_1D885E420(v529, v300, type metadata accessor for ActionPredictor.Output);
  sub_1D885E420(v312, v194, type metadata accessor for ActionPredictor.Output);
  sub_1D885E420(v312, v263, type metadata accessor for ActionPredictor.Output);
  sub_1D885E420(v534, v267, type metadata accessor for BundleSelector.Output);
  v516 = v311;
  v313 = sub_1D8B151C0();
  v314 = sub_1D8B16200();
  if (os_log_type_enabled(v313, v314))
  {
    v315 = v194;
    v316 = v263;
    v317 = swift_slowAlloc();
    v586 = swift_slowAlloc();
    v598 = v586;
    *v317 = 134219266;
    v318 = v521;
    v319 = *(*(v300 + *(v521 + 24)) + 16);
    LODWORD(v580) = v314;
    sub_1D885E3C0(v300, type metadata accessor for ActionPredictor.Output);
    *(v317 + 4) = v319;
    *(v317 + 12) = 2048;
    v194 = *(*(v315 + *(v318 + 28)) + 16);
    sub_1D885E3C0(v315, type metadata accessor for ActionPredictor.Output);
    *(v317 + 14) = v194;
    *(v317 + 22) = 2048;
    *(v317 + 24) = v302;
    *(v317 + 32) = 2048;
    *(v317 + 34) = v266;
    *(v317 + 42) = 2080;
    sub_1D87A0E38(v316, v510, &qword_1ECA64070);
    v320 = sub_1D8B159E0();
    v322 = v321;
    sub_1D885E3C0(v316, type metadata accessor for ActionPredictor.Output);
    v323 = sub_1D89AC714(v320, v322, &v598);

    *(v317 + 44) = v323;
    *(v317 + 52) = 2080;
    v324 = v526;
    v325 = v541;
    v326 = v541[v526[5] + 40];
    v592.f64[0] = 0.0;
    v592.f64[1] = -2.68156159e154;
    sub_1D8B16020();
    if (v326)
    {
      v327 = 0x296C6C6974532820;
    }

    else
    {
      v327 = 0;
    }

    if (v326)
    {
      v328 = 0xE800000000000000;
    }

    else
    {
      v328 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v327, v328);

    v329 = v592;
    sub_1D885E3C0(v325, type metadata accessor for BundleSelector.Output);
    v330 = sub_1D89AC714(*&v329.f64[0], *&v329.f64[1], &v598);

    *(v317 + 54) = v330;
    _os_log_impl(&dword_1D8783000, v313, v580, "Pushed update with %ld entities (%ld guaranteed), %ld actions(%ld guaranteed), highest saliency action: %s @ t = %s", v317, 0x3Eu);
    v331 = v586;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v331, -1, -1);
    MEMORY[0x1DA721330](v317, -1, -1);
  }

  else
  {
    sub_1D885E3C0(v194, type metadata accessor for ActionPredictor.Output);
    sub_1D885E3C0(v300, type metadata accessor for ActionPredictor.Output);

    sub_1D885E3C0(v267, type metadata accessor for BundleSelector.Output);
    sub_1D885E3C0(v263, type metadata accessor for ActionPredictor.Output);
    v324 = v526;
  }

  v332 = v581;
  v333 = v522;
  sub_1D8AF5720(v529);
  *(v333 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults) = v538;

  sub_1D8841084();
  v334 = v534;
  v267 = v518;
  sub_1D885E420(v534, v518, type metadata accessor for BundleSelector.Output);
  (*(v517 + 56))(v267, 0, 1, v324);
  v335 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87B6EFC(v267, v333 + v335, &qword_1ECA640E8);
  swift_endAccess();
  if (!v587)
  {
    goto LABEL_233;
  }

  v300 = *(v334 + v324[6]);
  v336 = *(v300 + 16);
  v266 = MEMORY[0x1E69E7CC0];
  if (v336)
  {
    *&v592.f64[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F41A0(0, v336, 0);
    v263 = 0;
    v580 = v300 + ((*(v570 + 80) + 32) & ~*(v570 + 80));
    v337 = *&v592.f64[0];
    v302 = v569;
    v566 = v300;
    v586 = v336;
    do
    {
      if (v263 >= *(v300 + 16))
      {
        goto LABEL_236;
      }

      v540 = v337;
      sub_1D885E420(v580 + *(v570 + 72) * v263, v302, type metadata accessor for CVBundle);
      v338 = CVBundle.classifications.getter();
      v339 = v338[2];
      if (v339)
      {
        v598 = v266;
        sub_1D87F3F54(0, v339, 0);
        v340 = v598;
        v341 = (*(v567 + 80) + 32) & ~*(v567 + 80);
        v587 = v338;
        v342 = v338 + v341;
        v343 = *(v567 + 72);
        do
        {
          v344 = v590;
          sub_1D885E420(v342, v590, type metadata accessor for BundleClassification);
          sub_1D885E420(v344, v588, type metadata accessor for BundleClassification.ClassificationType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 4)
          {
            if (EnumCaseMultiPayload <= 6)
            {
              if (EnumCaseMultiPayload == 5)
              {
                sub_1D885E3C0(v588, type metadata accessor for BundleClassification.ClassificationType);
                v347 = 0x6974634174786574;
                v346 = 0xEB00000000736E6FLL;
              }

              else
              {
                v346 = 0xE500000000000000;
                v347 = 0x746E657665;
              }
            }

            else
            {
              v348 = 0x74616C736E617274;
              if (EnumCaseMultiPayload != 8)
              {
                v348 = 0x7A6972616D6D7573;
              }

              if (EnumCaseMultiPayload == 7)
              {
                v347 = 0x756F6C4164616572;
              }

              else
              {
                v347 = v348;
              }

              if (EnumCaseMultiPayload == 7)
              {
                v346 = 0xE900000000000064;
              }

              else
              {
                v346 = 0xE900000000000065;
              }
            }
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              sub_1D885E3C0(v588, type metadata accessor for BundleClassification.ClassificationType);
              v346 = 0xE800000000000000;
              v347 = 0x796669746E656469;
            }

            else
            {
              sub_1D885E3C0(v588, type metadata accessor for BundleClassification.ClassificationType);
              v346 = 0xE400000000000000;
              v347 = 1936744813;
            }
          }

          else if (EnumCaseMultiPayload == 2)
          {
            sub_1D885E3C0(v588, type metadata accessor for BundleClassification.ClassificationType);
            v346 = 0xE700000000000000;
            v347 = 0x65646F63726162;
          }

          else if (EnumCaseMultiPayload == 3)
          {
            v346 = 0xE600000000000000;
            v347 = 0x686372616573;
          }

          else
          {
            sub_1D885E3C0(v588, type metadata accessor for BundleClassification.ClassificationType);
            v346 = 0xE400000000000000;
            v347 = 1667459446;
          }

          sub_1D885E3C0(v590, type metadata accessor for BundleClassification);
          v598 = v340;
          v194 = *(v340 + 16);
          v349 = *(v340 + 24);
          if (v194 >= v349 >> 1)
          {
            sub_1D87F3F54((v349 > 1), v194 + 1, 1);
            v340 = v598;
          }

          *(v340 + 16) = v194 + 1;
          v350 = v340 + 16 * v194;
          *(v350 + 32) = v347;
          *(v350 + 40) = v346;
          v342 += v343;
          --v339;
        }

        while (v339);
        v302 = v569;
        sub_1D885E3C0(v569, type metadata accessor for CVBundle);

        v266 = MEMORY[0x1E69E7CC0];
        v300 = v566;
      }

      else
      {

        sub_1D885E3C0(v302, type metadata accessor for CVBundle);
        v340 = v266;
      }

      v337 = v540;
      *&v592.f64[0] = v540;
      v352 = *(v540 + 16);
      v351 = *(v540 + 24);
      v267 = (v352 + 1);
      v353 = v538;
      v332 = v581;
      if (v352 >= v351 >> 1)
      {
        sub_1D87F41A0((v351 > 1), v352 + 1, 1);
        v353 = v538;
        v337 = *&v592.f64[0];
      }

      ++v263;
      *(v337 + 16) = v267;
      *(v337 + 8 * v352 + 32) = v340;
    }

    while (v263 != v586);
    v334 = v534;
  }

  else
  {
    v337 = MEMORY[0x1E69E7CC0];
    v353 = v538;
  }

  v540 = v337;
  v354 = v353[2];
  v355 = v579;
  v356 = v578;
  v357 = v577;
  if (v354)
  {
    v358 = v353;
    v598 = MEMORY[0x1E69E7CC0];
    v533 = v354;
    sub_1D87F4160(0, v354, 0);
    v359 = 0;
    v532 = v358 + ((*(v547 + 80) + 32) & ~*(v547 + 80));
    v360 = v598;
    v556 = (v356 + 8);
    v570 = v503 + 8;
    v555 = (v503 + 32);
    v554 = (v504 + 16);
    v553 = (v504 + 88);
    LODWORD(v552) = *MEMORY[0x1E69DFAF8];
    v549 = (v504 + 8);
    v548 = v504 + 96;
    LODWORD(v546) = *MEMORY[0x1E69DFAE8];
    v569 = (v502 + 56);
    v551 = v502 + 48;
    LODWORD(v536) = *MEMORY[0x1E69DFB00];
    v543 = v545 + 16;
    v542 = v545 + 32;
    v550 = (v545 + 8);
    v531 = *(v547 + 72);
    while (1)
    {
      v541 = v360;
      v539 = v359;
      v361 = v537;
      sub_1D885E420(&v532[v531 * v359], v537, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v362 = sub_1D8834AF4();
      v363 = *(v362 + 16);
      if (v363)
      {
        break;
      }

      sub_1D885E3C0(v361, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v365 = MEMORY[0x1E69E7CC0];
LABEL_207:
      v360 = v541;
      v598 = v541;
      v443 = *(v541 + 2);
      v442 = *(v541 + 3);
      v444 = v539;
      if (v443 >= v442 >> 1)
      {
        sub_1D87F4160((v442 > 1), v443 + 1, 1);
        v444 = v539;
        v360 = v598;
      }

      v359 = v444 + 1;
      *(v360 + 16) = v443 + 1;
      *(v360 + 8 * v443 + 32) = v365;
      if (v359 == v533)
      {
        v541 = v360;
        v334 = v534;
        goto LABEL_212;
      }
    }

    v597 = MEMORY[0x1E69E7CC0];
    sub_1D87F40B8(0, v363, 0);
    v364 = 0;
    v365 = v597;
    v366 = (*(v530 + 80) + 32) & ~*(v530 + 80);
    v535 = v362;
    v587 = v362 + v366;
    v586 = *(v530 + 72);
    v580 = v363;
    while (1)
    {
      sub_1D885E420(v587 + v586 * v364, v357, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D885E420(v357, v356, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v367 = swift_getEnumCaseMultiPayload();
      if (!v367)
      {
        v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);

        sub_1D885E538(v356, v574, type metadata accessor for BundleClassification.ClassificationType);
        v189 = v560;
        BundleClassification.ClassificationType.builtInAction.getter(v560);
        if ((*v551)(v189, 1, v589) == 1)
        {
          goto LABEL_240;
        }

        v386 = v575;
        sub_1D885E538(v189, v575, type metadata accessor for BuiltInAction);
        v387 = v559;
        if (qword_1EE0E8870 != -1)
        {
          swift_once();
        }

        v388 = off_1EE0E8878;
        sub_1D885E420(v386, v576, type metadata accessor for BuiltInAction);
        v389 = swift_getEnumCaseMultiPayload();
        v590 = v365;
        if (v389 > 1)
        {
          if (v389 == 3)
          {
            v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
            v413 = v576;

            v414 = *(v412 + 48);
            v415 = sub_1D8B13E30();
            (*(*(v415 - 8) + 56))(v387, 1, 1, v415);
            *(v387 + v414) = MEMORY[0x1E69E7CC0];
            swift_storeEnumTagMultiPayload();
            sub_1D87A14E4(v413, &qword_1ECA635B8);
          }

          else
          {
            if (v389 != 2)
            {
              goto LABEL_191;
            }

            sub_1D885E3C0(v576, type metadata accessor for BuiltInAction);
            *v387 = MEMORY[0x1E69E7CD0];
            swift_storeEnumTagMultiPayload();
          }
        }

        else if (v389)
        {
          if (v389 == 1)
          {
            sub_1D885E3C0(v576, type metadata accessor for BuiltInAction);
            *v387 = 0;
            v387[1] = 0xE000000000000000;
            v387[2] = 0;
            v387[3] = 0xE000000000000000;
            swift_storeEnumTagMultiPayload();
            goto LABEL_194;
          }

LABEL_191:
          sub_1D885E420(v386, v387, type metadata accessor for BuiltInAction);
          sub_1D885E3C0(v576, type metadata accessor for BuiltInAction);
        }

        else
        {
          sub_1D885E3C0(v576, type metadata accessor for BuiltInAction);
          *v387 = MEMORY[0x1E69E7CC0];
          swift_storeEnumTagMultiPayload();
        }

LABEL_194:
        v416 = v558;
        sub_1D885E538(v387, v558, type metadata accessor for BuiltInAction);
        v417 = v388[2];
        v588 = v364;
        if (v417 && (v418 = sub_1D87EFA28(v416), (v419 & 1) != 0))
        {
          v420 = v545;
          (*(v545 + 16))(v544, v388[7] + *(v545 + 72) * v418, v564);
          sub_1D885E3C0(v416, type metadata accessor for BuiltInAction);
          v421 = v557;
          (*(v420 + 32))();
        }

        else
        {
          sub_1D885E3C0(v416, type metadata accessor for BuiltInAction);
          v421 = v557;
          sub_1D8B13230();
        }

        v568 = *(v385 + 48);
        v567 = sub_1D8B131E0();
        v566 = v422;
        v423 = *v550;
        v424 = v564;
        (*v550)(v421, v564);
        v425 = v574;
        v565 = sub_1D88511E8();
        v427 = v426;
        v428 = sub_1D8850A24();
        v430 = v429;
        v431 = v577;
        sub_1D8844D24(&v592);
        sub_1D885E3C0(v425, type metadata accessor for BundleClassification.ClassificationType);
        v432 = v592.f64[0];
        v433 = *(v573 + 36);
        v434 = v591;
        sub_1D885E538(v575, v591 + v433, type metadata accessor for BuiltInAction);
        (*v569)(v434 + v433, 0, 1, v589);
        v435 = v566;
        *v434 = v567;
        v434[1] = v435;
        v434[2] = v565;
        v434[3] = v427;
        v357 = v431;
        v434[4] = v428;
        v434[5] = v430;
        v434[6] = 0;
        v434[7] = 0;
        *(v434 + 8) = v432;
        v356 = v578;
        v423(&v578[v568], v424);
        v332 = v581;
        v355 = v579;
        goto LABEL_199;
      }

      if (v367 != 1)
      {
        v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0);
        v391 = v572;
        sub_1D885E538(v356 + *(v390 + 48), v572, type metadata accessor for ActionPin.PermanentPill);
        v392 = v563;
        sub_1D885E420(v391, v563, type metadata accessor for ActionPin.PermanentPill);
        v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v394 = (*(*(v393 - 8) + 48))(v392, 6, v393);
        if (v394 <= 2 && !v394)
        {
          v436 = *(v393 + 48);
          v437 = *(v563 + v436);
          v438 = v562;
          sub_1D881F6FC(v563, v562, &qword_1ECA635B8);
          *(v438 + v436) = v437;
        }

        v439 = v562;
        swift_storeEnumTagMultiPayload();
        BuiltInAction.pill.getter(v591);
        sub_1D885E3C0(v439, type metadata accessor for BuiltInAction);
        sub_1D885E3C0(v572, type metadata accessor for ActionPin.PermanentPill);
        (*v570)(v356, v584);
        goto LABEL_202;
      }

      v588 = v364;
      v590 = v365;
      (*v555)(v583, v356, v584);
      v368 = sub_1D8B14E10();
      v370 = v369;
      v371 = sub_1D8B14DC0();
      v373 = v372;
      v374 = sub_1D8B14E70();
      v376 = v375;
      sub_1D8B14E60();
      v377 = v561;
      (*v554)(v332, v355, v561);
      v378 = (*v553)(v332, v377);
      v568 = v376;
      if (v378 != v552)
      {
        if (v378 == v546)
        {
          v379 = v371;
          v380 = v368;
          v381 = v370;
          (*v549)(v355, v377);
          (*v548)(v332, v377);
          v382 = sub_1D8B14D80();
          (*(*(v382 - 8) + 8))(v332, v382);
          v383 = 0;
          v384 = 0;
          goto LABEL_181;
        }

        if (v378 != v536)
        {
          while (1)
          {
            v493 = 0;
            v492 = 45;
LABEL_241:
            sub_1D8B168C0();
            __break(1u);
          }
        }
      }

      v379 = v371;
      v380 = v368;
      v381 = v370;
      (*v549)(v355, v377);
      (*v548)(v332, v377);
      v383 = *v332;
      v384 = v332[1];
LABEL_181:
      v395 = sub_1D88CA7BC();
      v396 = v571;
      v397 = sub_1D87DF9F0(v395);
      v571 = v396;

      v398 = v397;
      v399 = *(v397 + 16);
      if (v399)
      {
        v332 = v581;
        if (v399 > 3)
        {
          v400 = v399 & 0x7FFFFFFFFFFFFFFCLL;
          v402 = v398 + 3;
          v403 = 0uLL;
          v404 = v399 & 0x7FFFFFFFFFFFFFFCLL;
          v405 = 0uLL;
          do
          {
            v403 = vorrq_s8(v402[-1], v403);
            v405 = vorrq_s8(*v402, v405);
            v402 += 2;
            v404 -= 4;
          }

          while (v404);
          v406 = vorrq_s8(v405, v403);
          v401 = vorr_s8(*v406.i8, *&vextq_s8(v406, v406, 8uLL));
          if (v399 == v400)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v400 = 0;
          v401 = 0;
        }

        v407 = v399 - v400;
        v408 = &v398[2].i64[v400];
        do
        {
          v409 = *v408++;
          *&v401 |= v409;
          --v407;
        }

        while (v407);
      }

      else
      {
        v401 = 0;
        v332 = v581;
      }

LABEL_190:

      v410 = v591;
      (*v569)(v591 + *(v573 + 36), 1, 1, v589);
      *v410 = v380;
      v410[1] = v381;
      v410[2] = v379;
      v410[3] = v373;
      v411 = v568;
      v410[4] = v374;
      v410[5] = v411;
      v410[6] = v383;
      v410[7] = v384;
      v410[8] = v401;
      (*v570)(v583, v584);
      v355 = v579;
      v356 = v578;
      v357 = v577;
LABEL_199:
      v365 = v590;
      v363 = v580;
      v364 = v588;
LABEL_202:
      sub_1D885E3C0(v357, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v597 = v365;
      v441 = *(v365 + 16);
      v440 = *(v365 + 24);
      if (v441 >= v440 >> 1)
      {
        sub_1D87F40B8(v440 > 1, v441 + 1, 1);
        v365 = v597;
      }

      ++v364;
      *(v365 + 16) = v441 + 1;
      sub_1D885E538(v591, v365 + ((*(v582 + 80) + 32) & ~*(v582 + 80)) + *(v582 + 72) * v441, type metadata accessor for ActionPin.Pill);
      if (v364 == v363)
      {
        sub_1D885E3C0(v537, type metadata accessor for ActionPredictor.BundleActionPredictionResult);

        goto LABEL_207;
      }
    }
  }

  v541 = MEMORY[0x1E69E7CC0];
LABEL_212:
  v445 = v526;
  v591 = *(*(v334 + v526[7]) + 16);
  v446 = v506;
  sub_1D885E420(v334, v506, type metadata accessor for BundleSelector.Output);
  v447 = v507;
  sub_1D885E420(v334, v507, type metadata accessor for BundleSelector.Output);
  v448 = sub_1D8B151C0();
  v449 = sub_1D8B16230();
  if (os_log_type_enabled(v448, v449))
  {
    v450 = swift_slowAlloc();
    v451 = swift_slowAlloc();
    v598 = v451;
    *v450 = 136315650;
    v452 = *(v446 + v445[5] + 40);
    v453 = 0xE000000000000000;
    v592.f64[0] = 0.0;
    v592.f64[1] = -2.68156159e154;
    sub_1D8B16020();
    if (v452)
    {
      v454 = 0x296C6C6974532820;
    }

    else
    {
      v454 = 0;
    }

    if (v452)
    {
      v453 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v454, v453);

    v455 = v592;
    sub_1D885E3C0(v446, type metadata accessor for BundleSelector.Output);
    v456 = sub_1D89AC714(*&v455.f64[0], *&v455.f64[1], &v598);

    *(v450 + 4) = v456;
    *(v450 + 12) = 1024;
    v457 = *(v447 + v445[8]);
    sub_1D885E3C0(v447, type metadata accessor for BundleSelector.Output);
    *(v450 + 14) = v457;
    *(v450 + 18) = 1024;
    *(v450 + 20) = v523 & 1;
    _os_log_impl(&dword_1D8783000, v448, v449, "%s: is all eligible refinement exhausted: %{BOOL}d; is finalized: %{BOOL}d", v450, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v451);
    MEMORY[0x1DA721330](v451, -1, -1);
    MEMORY[0x1DA721330](v450, -1, -1);
  }

  else
  {
    sub_1D885E3C0(v447, type metadata accessor for BundleSelector.Output);

    sub_1D885E3C0(v446, type metadata accessor for BundleSelector.Output);
  }

  v458 = v528;
  v459 = v509;
  sub_1D885E420(v534, v509, type metadata accessor for BundleSelector.Output);
  v460 = v540;

  v461 = sub_1D8B151C0();
  v462 = sub_1D8B16230();

  if (os_log_type_enabled(v461, v462))
  {
    v463 = swift_slowAlloc();
    v464 = swift_slowAlloc();
    *&v592.f64[0] = v464;
    *v463 = 136315650;
    v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    v466 = MEMORY[0x1DA71F1E0](v460, v465);
    v468 = v467;

    v469 = sub_1D89AC714(v466, v468, &v592);

    *(v463 + 4) = v469;
    *(v463 + 12) = 2048;
    v470 = *(*(v459 + v526[6]) + 16);
    sub_1D885E3C0(v459, type metadata accessor for BundleSelector.Output);
    *(v463 + 14) = v470;
    *(v463 + 22) = 2048;
    *(v463 + 24) = v591;
    _os_log_impl(&dword_1D8783000, v461, v462, "bundle selector output: %s (ranked: %ld, guaranteed: %ld)", v463, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v464);
    MEMORY[0x1DA721330](v464, -1, -1);
    MEMORY[0x1DA721330](v463, -1, -1);
  }

  else
  {
    sub_1D885E3C0(v459, type metadata accessor for BundleSelector.Output);
  }

  v471 = v541;

  v472 = sub_1D8B151C0();
  v473 = sub_1D8B16230();

  if (os_log_type_enabled(v472, v473))
  {
    v474 = swift_slowAlloc();
    v475 = swift_slowAlloc();
    *&v592.f64[0] = v475;
    *v474 = 136315138;
    v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637E0);
    v477 = MEMORY[0x1DA71F1E0](v471, v476);
    v479 = v478;

    v480 = sub_1D89AC714(v477, v479, &v592);

    *(v474 + 4) = v480;
    _os_log_impl(&dword_1D8783000, v472, v473, "predicted ranked actions: %s", v474, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v475);
    MEMORY[0x1DA721330](v475, -1, -1);
    MEMORY[0x1DA721330](v474, -1, -1);
  }

  else
  {
  }

  v481 = v522;
  v482 = *(v520 + 48);
  v594 = *(v520 + 32);
  v595 = v482;
  v596 = *(v520 + 64);
  v483 = *v520;
  v593 = *(v520 + 16);
  v592 = v483;
  sub_1D8885324(v538, v523 & 1, &v592);
  v484 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
  swift_beginAccess();
  v485 = v481 + v484;
  v486 = v508;
  sub_1D87A0E38(v485, v508, &qword_1ECA640E0);
  LODWORD(v484) = (*(v547 + 48))(v486, 1, v458);
  sub_1D87A14E4(v486, &qword_1ECA640E0);
  if (v484 == 1)
  {
    v487 = v500;
    sub_1D87A0E38(v527, v500, &qword_1ECA64290);
    if (v495(v487, 1, v521) == 1)
    {
      sub_1D87A14E4(v487, &qword_1ECA64290);
    }

    else
    {
      v488 = v487;
      v489 = v497;
      sub_1D885E538(v488, v497, type metadata accessor for ActionPredictor.Output);
      sub_1D885E3C0(v489, type metadata accessor for ActionPredictor.Output);
    }
  }

  if (v523)
  {
    sub_1D88853F4();
  }

LABEL_233:
  sub_1D87A14E4(v525, &qword_1ECA64288);
  sub_1D87A14E4(v527, &qword_1ECA64290);
  return sub_1D885E3C0(v529, type metadata accessor for ActionPredictor.Output);
}

uint64_t sub_1D884008C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v54 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64298);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v48 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = sub_1D8B13240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v52 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v48 - v28;
  sub_1D885E420(v56, v13, type metadata accessor for CVBundle.BundleType);
  v50 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v13;
    v31 = *(v15 + 32);
    (v31)(v21, v30, v14);
  }

  else
  {
    sub_1D885E538(v13, v8, type metadata accessor for CVTrackSnapshot);
    (*(v15 + 16))(v21, v8, v14);
    sub_1D885E3C0(v8, type metadata accessor for CVTrackSnapshot);
    v31 = *(v15 + 32);
  }

  v53 = v31;
  (v31)(v29, v21, v14);
  v56 = v15;
  v32 = *(v15 + 56);
  v32(v29, 0, 1, v14);
  sub_1D87A0E38(v54, v5, &qword_1ECA67980);
  v33 = type metadata accessor for CVBundle(0);
  if ((*(*(v33 - 8) + 48))(v5, 1, v33) == 1)
  {
    sub_1D87A14E4(v5, &qword_1ECA67980);
    v34 = 1;
  }

  else
  {
    v35 = v51;
    sub_1D885E420(v5, v51, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v49;
      v37 = v53;
      v53();
    }

    else
    {
      sub_1D885E538(v35, v8, type metadata accessor for CVTrackSnapshot);
      v36 = v49;
      (*(v56 + 16))(v49, v8, v14);
      sub_1D885E3C0(v8, type metadata accessor for CVTrackSnapshot);
      v37 = v53;
    }

    (v37)(v27, v36, v14);
    sub_1D885E3C0(v5, type metadata accessor for CVBundle);
    v34 = 0;
  }

  v32(v27, v34, 1, v14);
  v38 = *(v55 + 48);
  v39 = v57;
  sub_1D87A0E38(v29, v57, &qword_1ECA63178);
  sub_1D87A0E38(v27, v39 + v38, &qword_1ECA63178);
  v40 = *(v56 + 48);
  if (v40(v39, 1, v14) != 1)
  {
    v43 = v52;
    sub_1D87A0E38(v39, v52, &qword_1ECA63178);
    if (v40(v39 + v38, 1, v14) != 1)
    {
      v44 = v39 + v38;
      v45 = v48;
      (v53)(v48, v44, v14);
      sub_1D885E288(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v42 = sub_1D8B158C0();
      v46 = *(v56 + 8);
      v46(v45, v14);
      sub_1D87A14E4(v27, &qword_1ECA63178);
      sub_1D87A14E4(v29, &qword_1ECA63178);
      v46(v43, v14);
      sub_1D87A14E4(v57, &qword_1ECA63178);
      return v42 & 1;
    }

    sub_1D87A14E4(v27, &qword_1ECA63178);
    v41 = v57;
    sub_1D87A14E4(v29, &qword_1ECA63178);
    (*(v56 + 8))(v43, v14);
    goto LABEL_15;
  }

  sub_1D87A14E4(v27, &qword_1ECA63178);
  v41 = v57;
  sub_1D87A14E4(v29, &qword_1ECA63178);
  if (v40(v41 + v38, 1, v14) != 1)
  {
LABEL_15:
    sub_1D87A14E4(v41, &qword_1ECA64298);
    v42 = 0;
    return v42 & 1;
  }

  sub_1D87A14E4(v41, &qword_1ECA63178);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1D8840878(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v39 = sub_1D8B13240();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v33 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v33 - v11;
  v34 = type metadata accessor for CVBundle(0);
  v13 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v49 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for BundleSelector.Output(0);
  v16 = *(a2 + *(result + 24));
  v45 = *(v16 + 16);
  if (!v45)
  {
    return 0;
  }

  v33 = v2;
  v17 = 0;
  v43 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v44 = v13;
  v38 = (v4 + 8);
  v35 = (v4 + 32);
  v18 = v40;
  v42 = v16;
  while (v17 < *(v16 + 16))
  {
    v19 = v49;
    sub_1D885E420(v43 + *(v13 + 72) * v17, v49, type metadata accessor for CVBundle);
    v20 = *(v46 + 48);
    sub_1D885E420(v19, v12, type metadata accessor for CVBundle.BundleType);
    sub_1D885E420(v47, &v12[v20], type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D885E420(v12, v48, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D885E3C0(v48, type metadata accessor for CVTrackSnapshot);
        goto LABEL_4;
      }

      sub_1D885E538(&v12[v20], v41, type metadata accessor for CVTrackSnapshot);
      if (sub_1D8B13200() & 1) != 0 && (v26 = v37[5], v51 = *(v48 + v26), v50 = *(v41 + v26), , , v27 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v51, &v50), , , (v27) && (v28 = v37[6], v51 = *(v48 + v28), v50 = *(v41 + v28), , , v29 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v51, &v50), , , (v29) && *(v48 + v37[7]) == *(v41 + v37[7]) && *(v48 + v37[8]) == *(v41 + v37[8]) && *(v48 + v37[9]) == *(v41 + v37[9]))
      {
        v30 = v37[10];
        v31 = *(v48 + v30);
        v32 = *(v41 + v30);
        sub_1D885E3C0(v41, type metadata accessor for CVTrackSnapshot);
        if (v31 == v32)
        {
          sub_1D885E3C0(v48, type metadata accessor for CVTrackSnapshot);
          v13 = v44;
LABEL_11:
          sub_1D885E3C0(v12, type metadata accessor for CVBundle.BundleType);
          if (sub_1D88E4444(*(v49 + v34[5]), *(v47 + v34[5])) & 1) != 0 && (sub_1D88E4444(*(v49 + v34[6]), *(v47 + v34[6])) & 1) != 0 && (sub_1D8854A60(*(v49 + v34[7]), *(v47 + v34[7])))
          {
            sub_1D885E3C0(v49, type metadata accessor for CVBundle);
            return 1;
          }

          goto LABEL_6;
        }
      }

      else
      {
        sub_1D885E3C0(v41, type metadata accessor for CVTrackSnapshot);
      }

      sub_1D885E3C0(v48, type metadata accessor for CVTrackSnapshot);
      sub_1D885E3C0(v12, type metadata accessor for CVBundle.BundleType);
LABEL_5:
      v13 = v44;
      goto LABEL_6;
    }

    sub_1D885E420(v12, v18, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v38)(v18, v39);
LABEL_4:
      sub_1D87A14E4(v12, &qword_1ECA63DA8);
      goto LABEL_5;
    }

    v21 = v36;
    v22 = v39;
    (*v35)(v36, &v12[v20], v39);
    v23 = sub_1D8B13200();
    v24 = *v38;
    v25 = v21;
    v18 = v40;
    (*v38)(v25, v22);
    v24(v18, v22);
    v13 = v44;
    if (v23)
    {
      goto LABEL_11;
    }

    sub_1D885E3C0(v12, type metadata accessor for CVBundle.BundleType);
LABEL_6:
    ++v17;
    result = sub_1D885E3C0(v49, type metadata accessor for CVBundle);
    v16 = v42;
    if (v45 == v17)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8840FF8(uint64_t a1, uint64_t a2)
{
  if (sub_1D893B960(a1, a2) & 1) != 0 && (v4 = type metadata accessor for CVBundle(0), (sub_1D88E4444(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1D88E4444(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    return sub_1D8854A60(*(a1 + v4[7]), *(a2 + v4[7])) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8841084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v161 = &v154 - v2;
  v3 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v164 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64308);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v171 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v154 - v8;
  v157 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionPin.Pill(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v179 = *(v158 - 8);
  v13 = MEMORY[0x1EEE9AC00](v158);
  v160 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v162 = &v154 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v166 = &v154 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v181 = &v154 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v154 - v21;
  v159 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v23 = *(v159 - 8);
  v24 = MEMORY[0x1EEE9AC00](v159);
  v163 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  *&v170 = &v154 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v176 = &v154 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v175 = (&v154 - v30);
  v180 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);
  v169 = *(v31 + 16);
  v173 = v23;
  if (!v169)
  {
    v73 = MEMORY[0x1E69E7CC0];
    v70 = v180;
    goto LABEL_83;
  }

  v155 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults;
  v32 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
  v154 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v168 = v31 + v154;

  v34 = 0;
  v167 = v33;
  while (1)
  {
    if (v34 >= *(v33 + 16))
    {
      goto LABEL_120;
    }

    v174 = *(v23 + 72);
    v172 = v34;
    sub_1D885E420(v168 + v174 * v34, v175, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v35 = sub_1D8834AF4();
    v36 = v35;
    v178 = *(v35 + 16);
    if (v178)
    {
      break;
    }

LABEL_3:
    v34 = v172 + 1;
    sub_1D885E3C0(v175, type metadata accessor for ActionPredictor.BundleActionPredictionResult);

    v23 = v173;
    v33 = v167;
    if (v34 == v169)
    {

      v70 = v180;
      v71 = *(v180 + v155);
      v72 = *(v71 + 16);
      v73 = MEMORY[0x1E69E7CC0];
      if (v72)
      {
        v184 = MEMORY[0x1E69E7CC0];

        sub_1D87F4140(0, v72, 0);
        v74 = v71 + v154;
        v73 = v184;
        do
        {
          sub_1D885E420(v74, v170, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          CVBundle.latestEstimate.getter(&v185);
          switch(v185 >> 60)
          {
            case 1uLL:
              v89 = type metadata accessor for GroundedParseDetectorResult(0);
              v76 = swift_projectBox();
              v186 = v89;
              v187 = sub_1D885E288(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_77;
            case 2uLL:
              v84 = type metadata accessor for MetaDetectionResult();
              v76 = swift_projectBox();
              v186 = v84;
              v187 = sub_1D885E288(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for MetaDetectionResult;
              goto LABEL_77;
            case 3uLL:
            case 8uLL:
              v75 = type metadata accessor for ObjectDetectorResult(0);
              v76 = swift_projectBox();
              v186 = v75;
              v187 = sub_1D885E288(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_77;
            case 4uLL:
              v90 = type metadata accessor for ParseDetectorResult(0);
              v76 = swift_projectBox();
              v186 = v90;
              v187 = sub_1D885E288(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for ParseDetectorResult;
              goto LABEL_77;
            case 5uLL:
              v91 = type metadata accessor for TextDetectorResult(0);
              v76 = swift_projectBox();
              v186 = v91;
              v187 = sub_1D885E288(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for TextDetectorResult;
              goto LABEL_77;
            case 6uLL:
            case 7uLL:
              v79 = type metadata accessor for StreamingBarcodeDetectorResult(0);
              v76 = swift_projectBox();
              v186 = v79;
              v187 = sub_1D885E288(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_77;
            case 9uLL:
            case 0xAuLL:
              v80 = swift_projectBox();
              v81 = v156;
              sub_1D885E420(v80, v156, type metadata accessor for AFMResult);
              v186 = v157;
              v187 = sub_1D885E288(&qword_1EE0E3F80, type metadata accessor for AFMResult);
              v82 = __swift_allocate_boxed_opaque_existential_1(&v185);
              sub_1D885E538(v81, v82, type metadata accessor for AFMResult);
              break;
            case 0xBuLL:
              v83 = type metadata accessor for SyntheticDetectionResult();
              v76 = swift_projectBox();
              v186 = v83;
              v187 = sub_1D885E288(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_77;
            case 0xCuLL:
              v85 = type metadata accessor for GroundedParseEmbeddingsResult(0);
              v76 = swift_projectBox();
              v186 = v85;
              v187 = sub_1D885E288(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_77;
            case 0xDuLL:
              v92 = type metadata accessor for GroundedParseClassificationsResult(0);
              v76 = swift_projectBox();
              v186 = v92;
              v187 = sub_1D885E288(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v185);
              v78 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_77:
              sub_1D885E420(v76, boxed_opaque_existential_1, v78);
              break;
            default:
              v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
              v87 = swift_projectBox();
              v186 = v86;
              v187 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
              v88 = __swift_allocate_boxed_opaque_existential_1(&v185);
              sub_1D87A0E38(v87, v88, &qword_1ECA67750);
              break;
          }

          v94 = v186;
          v93 = v187;
          __swift_project_boxed_opaque_existential_1(&v185, v186);
          v95 = (*(v93 + 88))(v94, v93);
          __swift_destroy_boxed_opaque_existential_1(&v185);

          sub_1D885E3C0(v170, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v184 = v73;
          v97 = *(v73 + 16);
          v96 = *(v73 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_1D87F4140((v96 > 1), v97 + 1, 1);
            v73 = v184;
          }

          *(v73 + 16) = v97 + 1;
          *(v73 + 8 * v97 + 32) = v95;
          v74 += v174;
          --v72;
          v70 = v180;
          v98 = v171;
        }

        while (v72);

LABEL_84:
        *&v99 = COERCE_DOUBLE(sub_1D8918E7C(v73));
        v101 = v100;

        v103 = v162;
        if ((v101 & 1) == 0)
        {
          v172 = v99;
          v104 = *&v99;
          v105 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
          swift_beginAccess();
          v106 = *(v70 + v105);
          v107 = *(v106 + 64);
          v181 = v106 + 64;
          v108 = 1 << *(v106 + 32);
          v109 = -1;
          if (v108 < 64)
          {
            v109 = ~(-1 << v108);
          }

          v110 = v109 & v107;
          v177 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMapTimeout;
          v178 = v105;
          v174 = (v108 + 63) >> 6;
          v175 = (v173 + 56);
          v176 = v106;

          v111 = 0;
          *&v112 = 136315650;
          v170 = v112;
          while (v110)
          {
            v115 = v111;
LABEL_101:
            v118 = __clz(__rbit64(v110));
            v110 &= v110 - 1;
            v119 = v118 | (v115 << 6);
            v120 = v176;
            v121 = v166;
            sub_1D885E420(*(v176 + 48) + *(v179 + 72) * v119, v166, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v122 = v163;
            sub_1D885E420(*(v120 + 56) + *(v173 + 72) * v119, v163, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64310);
            v124 = *(v123 + 48);
            sub_1D885E538(v121, v98, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            sub_1D885E538(v122, v98 + v124, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            (*(*(v123 - 8) + 56))(v98, 0, 1, v123);
LABEL_102:
            v125 = v98;
            v126 = v165;
            sub_1D881F6FC(v125, v165, &qword_1ECA64308);
            v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64310);
            if ((*(*(v127 - 8) + 48))(v126, 1, v127) == 1)
            {
            }

            v128 = *(v127 + 48);
            sub_1D885E538(v126, v103, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v129 = v164;
            sub_1D885E420(v126 + v128, v164, type metadata accessor for CVBundle);
            sub_1D885E3C0(v126 + v128, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            CVBundle.latestEstimate.getter(&v183);
            sub_1D885E3C0(v129, type metadata accessor for CVBundle);
            v182 = v183;
            CVDetection.detection.getter(&v185);
            v130 = v186;
            v131 = v187;
            __swift_project_boxed_opaque_existential_1(&v185, v186);
            v132 = *(v131 + 88);
            v133 = v131;
            v134 = v180;
            v135 = v132(v130, v133);

            __swift_destroy_boxed_opaque_existential_1(&v185);
            if (*(v134 + v177) < v104 - v135)
            {
              if (qword_1EE0E43B8 != -1)
              {
                swift_once();
              }

              v136 = sub_1D8B151E0();
              __swift_project_value_buffer(v136, qword_1EE0E43C0);
              v137 = v160;
              sub_1D885E420(v103, v160, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
              v138 = sub_1D8B151C0();
              v139 = sub_1D8B16230();
              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                v185 = v141;
                *v140 = v170;
                sub_1D885E420(v137, v166, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
                v142 = sub_1D8B159E0();
                v144 = v143;
                sub_1D885E3C0(v137, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
                v145 = sub_1D89AC714(v142, v144, &v185);

                *(v140 + 4) = v145;
                *(v140 + 12) = 2048;
                *(v140 + 14) = v172;
                *(v140 + 22) = 2048;
                *(v140 + 24) = v135;
                _os_log_impl(&dword_1D8783000, v138, v139, "removing %s from cache: current time is %f; bundle timestamp is %f", v140, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v141);
                v146 = v141;
                v134 = v180;
                MEMORY[0x1DA721330](v146, -1, -1);
                MEMORY[0x1DA721330](v140, -1, -1);
              }

              else
              {

                sub_1D885E3C0(v137, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
              }

              swift_beginAccess();
              v103 = v162;
              v147 = sub_1D87EFCC8(v162);
              if (v148)
              {
                v149 = v147;
                v150 = v178;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v152 = *(v134 + v150);
                v183 = v152;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_1D8967D00();
                  v152 = v183;
                }

                sub_1D885E3C0(*(v152 + 48) + *(v179 + 72) * v149, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
                v114 = v161;
                sub_1D885E538(*(v152 + 56) + *(v173 + 72) * v149, v161, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
                sub_1D8AF0A48(v149, v152);
                v113 = 0;
                *(v134 + v178) = v152;
              }

              else
              {
                v113 = 1;
                v114 = v161;
              }

              (*v175)(v114, v113, 1, v159);
              sub_1D87A14E4(v114, &qword_1ECA640E0);
              swift_endAccess();
            }

            sub_1D885E3C0(v103, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
            v98 = v171;
          }

          if (v174 <= v111 + 1)
          {
            v116 = v111 + 1;
          }

          else
          {
            v116 = v174;
          }

          v117 = v116 - 1;
          while (1)
          {
            v115 = v111 + 1;
            if (__OFADD__(v111, 1))
            {
              goto LABEL_118;
            }

            if (v115 >= v174)
            {
              v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64310);
              (*(*(v153 - 8) + 56))(v98, 1, 1, v153);
              v110 = 0;
              v111 = v117;
              goto LABEL_102;
            }

            v110 = *(v181 + 8 * v115);
            ++v111;
            if (v110)
            {
              v111 = v115;
              goto LABEL_101;
            }
          }
        }

        return result;
      }

LABEL_83:
      v98 = v171;
      goto LABEL_84;
    }
  }

  v37 = 0;
  v177 = v35;
  while (v37 < *(v36 + 16))
  {
    v38 = *(v179 + 72);
    sub_1D885E420(v36 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + v38 * v37, v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    sub_1D88353FC(v12);
    v39 = v12[8];
    sub_1D885E3C0(v12, type metadata accessor for ActionPin.Pill);
    if (byte_1F5426798 >= 4u)
    {
      v41 = 0;
      goto LABEL_17;
    }

    v40 = sub_1D8B16BA0();

    if (v40)
    {
      v41 = 0;
      goto LABEL_31;
    }

    if (byte_1F5426799 == 4)
    {
      v41 = 1;
LABEL_17:

      goto LABEL_31;
    }

    v42 = sub_1D8B16BA0();

    if (v42)
    {
      v41 = 1;
    }

    else
    {
      if (byte_1F542679A == 4)
      {
        v41 = 2;
        goto LABEL_17;
      }

      v43 = sub_1D8B16BA0();

      if (v43)
      {
        v41 = 2;
      }

      else
      {
        if (byte_1F542679B == 4)
        {
          v41 = 3;
          goto LABEL_17;
        }

        v44 = sub_1D8B16BA0();

        if (v44)
        {
          v41 = 3;
        }

        else
        {
          v41 = byte_1F542679C;
          if (byte_1F542679C == 4)
          {
            goto LABEL_17;
          }

          v45 = sub_1D8B16BA0();

          if ((v45 & 1) == 0)
          {
            goto LABEL_121;
          }

          v41 = 4;
        }
      }
    }

LABEL_31:
    if (byte_1F54267C0 >= 4u)
    {
      v47 = 0;
      goto LABEL_37;
    }

    v46 = sub_1D8B16BA0();

    if (v46)
    {
      v47 = 0;
      goto LABEL_51;
    }

    if (byte_1F54267C1 == 4)
    {
      v47 = 1;
LABEL_37:

      goto LABEL_51;
    }

    v48 = sub_1D8B16BA0();

    if (v48)
    {
      v47 = 1;
    }

    else
    {
      if (byte_1F54267C2 == 4)
      {
        v47 = 2;
        goto LABEL_37;
      }

      v49 = sub_1D8B16BA0();

      if (v49)
      {
        v47 = 2;
      }

      else
      {
        if (byte_1F54267C3 == 4)
        {
          v47 = 3;
          goto LABEL_37;
        }

        v50 = sub_1D8B16BA0();

        if (v50)
        {
          v47 = 3;
        }

        else
        {
          v47 = byte_1F54267C4;
          if (byte_1F54267C4 == 4)
          {
            goto LABEL_37;
          }

          v51 = sub_1D8B16BA0();

          if ((v51 & 1) == 0)
          {
            goto LABEL_122;
          }

          v47 = 4;
        }
      }
    }

LABEL_51:
    if (((1 << v41) & v39) != 1 << v47)
    {
      goto LABEL_9;
    }

    v52 = v181;
    sub_1D885E420(v22, v181, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    v53 = v180;
    swift_beginAccess();
    sub_1D885E420(v175, v176, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v184 = *(v53 + v32);
    v55 = v184;
    *(v53 + v32) = 0x8000000000000000;
    v57 = sub_1D87EFCC8(v52);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_117;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (v54)
      {
        v64 = v184;
        if ((v56 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        sub_1D8967D00();
        v64 = v184;
        if ((v61 & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      sub_1D896E550(v60, v54);
      v62 = sub_1D87EFCC8(v181);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_123;
      }

      v57 = v62;
      v64 = v184;
      if ((v61 & 1) == 0)
      {
LABEL_59:
        v64[(v57 >> 6) + 8] |= 1 << v57;
        v65 = v64[6] + v57 * v38;
        v66 = v181;
        sub_1D885E420(v181, v65, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D885E538(v176, v64[7] + v57 * v174, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E3C0(v66, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v67 = v64[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_119;
        }

        v64[2] = v69;
        goto LABEL_8;
      }
    }

    sub_1D8864DC8(v176, v64[7] + v57 * v174, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    sub_1D885E3C0(v181, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
LABEL_8:
    *(v180 + v32) = v64;

    swift_endAccess();
LABEL_9:
    ++v37;
    sub_1D885E3C0(v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
    v36 = v177;
    if (v178 == v37)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void sub_1D8842E94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for BundleSelector.Output(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87B6EFC(v6, v0 + v8, &qword_1ECA640E8);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults) = MEMORY[0x1E69E7CC0];

  sub_1D8841084();
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionToPredictionResultMap;
  swift_beginAccess();
  *(v0 + v9) = MEMORY[0x1E69E7CC8];

  v10 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
  swift_beginAccess();
  sub_1D87B6EFC(v3, v0 + v11, &qword_1ECA640E0);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_isPredictionRunning) = 0;
  *(v0 + 136) = 0;
  sub_1D88853F4();
}

uint64_t sub_1D88430D0(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  type metadata accessor for CVBundle(0);
  v3[33] = swift_task_alloc();
  v4 = sub_1D8B14ED0();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = sub_1D8B14F40();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v6 = sub_1D8B15000();
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  v3[43] = swift_task_alloc();
  v7 = sub_1D8B14F20();
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640F0);
  v3[48] = v8;
  v3[49] = *(v8 - 8);
  v3[50] = swift_task_alloc();
  v9 = sub_1D8B14F60();
  v3[51] = v9;
  v3[52] = *(v9 - 8);
  v3[53] = swift_task_alloc();
  v10 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v3[54] = v10;
  v3[55] = *(v10 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v11 = type metadata accessor for BundleSelector.Output(0);
  v3[58] = v11;
  v3[59] = *(v11 - 8);
  v3[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v3[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88434D8, v2, 0);
}

uint64_t sub_1D88434D8()
{
  v38 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 256);
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v4 + v5, v1, &qword_1ECA640E8);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = *(v0 + 488);
  if (v6)
  {
    sub_1D87A14E4(v7, &qword_1ECA640E8);
    sub_1D885E4A8();
    v8 = swift_allocError();
    swift_willThrow();
    if (qword_1EE0E43B8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D8B151E0();
    __swift_project_value_buffer(v9, qword_1EE0E43C0);
    v10 = v8;
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1D8B16C90();
      v17 = sub_1D89AC714(v15, v16, &v37);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D8783000, v11, v12, "Failed to set selection to selection bundle: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA721330](v14, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    v19 = *(v0 + 440);
    v18 = *(v0 + 448);
    v20 = *(v0 + 432);
    v21 = *(v0 + 344);
    v22 = *(v0 + 256);
    v35 = *(v0 + 240);
    sub_1D885E420(*(v0 + 248), v18, type metadata accessor for CVBundle);
    sub_1D8B14F10();
    CVBundle.latestEstimate.getter(&v36);
    v37 = v36;
    CVDetection.detection.getter((v0 + 16));
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v25 = (*(v24 + 88))(v23, v24);

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    *(v18 + *(v20 + 20)) = MEMORY[0x1E69E7CC0];
    *(v18 + *(v20 + 28)) = v25;
    sub_1D885E420(v18, v21, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    (*(v19 + 56))(v21, 0, 1, v20);
    v26 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
    swift_beginAccess();
    sub_1D87B6EFC(v21, v22 + v26, &qword_1ECA640E0);
    swift_endAccess();
    sub_1D8821DD0(v35);

    sub_1D885E3C0(*(v0 + 448), type metadata accessor for ActionPredictor.BundleActionPredictionResult);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 480);
    v30 = *(v0 + 464);
    v31 = *(v0 + 256);
    v32 = *(v0 + 488);
    sub_1D885E420(v7, v29, type metadata accessor for BundleSelector.Output);
    sub_1D87A14E4(v32, &qword_1ECA640E8);
    *(v0 + 536) = *(v29 + *(v30 + 20) + 40);
    sub_1D885E3C0(v29, type metadata accessor for BundleSelector.Output);
    *(v0 + 192) = type metadata accessor for ActionPredictor(0);
    *(v0 + 200) = v33;
    *(v0 + 496) = *(v31 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient);
    v34 = v31 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration;
    *(v0 + 537) = *(v31 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration + 8);
    *(v0 + 504) = *(v34 + 24);
    *(v0 + 512) = *(v34 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1D8843A30, 0, 0);
  }
}

uint64_t sub_1D8843A30()
{
  if (*(v0 + 537) == 1)
  {
    sub_1D8847064(*(v0 + 248), *(v0 + 456));
    v1 = *(v0 + 256);

    return MEMORY[0x1EEE6DFA0](sub_1D8843D28, v1, 0);
  }

  else
  {
    v2 = *(v0 + 536);
    v3 = *(v0 + 392);
    **(v0 + 400) = *(v0 + 504);
    (*(v3 + 104))();
    if (v2 == 1 && (sub_1D8919304() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64100);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D8B1AB80;
      sub_1D8B14EF0();
      sub_1D8B14EE0();
      *(v0 + 232) = v4;
      sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64108);
      sub_1D881CF20(&qword_1EE0E3958, &qword_1ECA64108);
      sub_1D8B16570();
    }

    else
    {
      sub_1D8B14F00();
    }

    v5 = *(v0 + 496);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 320);
    v9 = *(v0 + 288);
    *v7 = *(v0 + 512);
    (*(v6 + 104))(v7, *MEMORY[0x1E69DFB90], v8);
    sub_1D8B14F50();
    *(v0 + 216) = v5;
    sub_1D883934C(v9);
    v10 = swift_task_alloc();
    *(v0 + 520) = v10;
    v11 = sub_1D8B14C10();
    *v10 = v0;
    v10[1] = sub_1D8843EEC;
    v12 = *(v0 + 424);
    v13 = *(v0 + 312);
    v14 = *(v0 + 288);
    v15 = MEMORY[0x1E69DFA40];

    return MEMORY[0x1EEE4F0E0](v13, v14, v12, v11, v15);
  }
}

uint64_t sub_1D8843D28()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[43];
  v4 = v0[32];
  v5 = v0[30];
  sub_1D885E420(v0[57], v3, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  (*(v2 + 56))(v3, 0, 1, v1);
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
  swift_beginAccess();
  sub_1D87B6EFC(v3, v4 + v6, &qword_1ECA640E0);
  swift_endAccess();
  sub_1D8821DD0(v5);
  sub_1D885E3C0(v0[57], type metadata accessor for ActionPredictor.BundleActionPredictionResult);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D8843EEC()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  (*(v2[35] + 8))(v2[36], v2[34]);
  if (v0)
  {
    v3 = sub_1D884436C;
  }

  else
  {
    v3 = sub_1D8844030;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8844030()
{
  v25 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 248);
  sub_1D885E420(v2, *(v0 + 264), type metadata accessor for CVBundle);
  v3 = sub_1D8B14F30();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v23 = sub_1D88205B4(sub_1D885E51C, v4, v3);

  if (v1 == 1 && (sub_1D8919304() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64100);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D8B1AB80;
    sub_1D8B14EF0();
    sub_1D8B14EE0();
    *(v0 + 224) = v5;
    sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64108);
    sub_1D881CF20(&qword_1EE0E3958, &qword_1ECA64108);
    sub_1D8B16570();
  }

  else
  {
    sub_1D8B14F00();
  }

  v6 = *(v0 + 456);
  v7 = *(v0 + 432);
  v8 = *(v0 + 416);
  v18 = *(v0 + 408);
  v19 = *(v0 + 424);
  v9 = *(v0 + 360);
  v21 = *(v0 + 352);
  v22 = *(v0 + 368);
  v10 = *(v0 + 304);
  v16 = *(v0 + 296);
  v17 = *(v0 + 312);
  v20 = *(v0 + 264);
  CVBundle.latestEstimate.getter(v24);
  v24[1] = v24[0];
  CVDetection.detection.getter((v0 + 56));
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
  v13 = (*(v12 + 88))(v11, v12);

  (*(v10 + 8))(v17, v16);
  (*(v8 + 8))(v19, v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_1D885E538(v20, v6, type metadata accessor for CVBundle);
  *(v6 + v7[5]) = v23;
  (*(v9 + 32))(v6 + v7[6], v22, v21);
  *(v6 + v7[7]) = v13;
  v14 = *(v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D8843D28, v14, 0);
}

uint64_t sub_1D884436C()
{
  v1 = v0[32];
  (*(v0[52] + 8))(v0[53], v0[51]);

  return MEMORY[0x1EEE6DFA0](sub_1D88443E8, v1, 0);
}

uint64_t sub_1D88443E8()
{
  v26 = v0;
  v1 = v0[66];
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E43C0);
  v3 = v1;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16210();

  v23 = v1;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D8B16C90();
    v10 = sub_1D89AC714(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8783000, v4, v5, "Failed to set selection to selection bundle: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA721330](v7, -1, -1);
    MEMORY[0x1DA721330](v6, -1, -1);
  }

  v11 = v0[55];
  v12 = v0[56];
  v13 = v0[54];
  v14 = v0[43];
  v15 = v0[32];
  v22 = v0[30];
  sub_1D885E420(v0[31], v12, type metadata accessor for CVBundle);
  sub_1D8B14F10();
  CVBundle.latestEstimate.getter(&v24);
  v25 = v24;
  CVDetection.detection.getter(v0 + 2);
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = (*(v17 + 88))(v16, v17);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *(v12 + *(v13 + 20)) = MEMORY[0x1E69E7CC0];
  *(v12 + *(v13 + 28)) = v18;
  sub_1D885E420(v12, v14, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  (*(v11 + 56))(v14, 0, 1, v13);
  v19 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection;
  swift_beginAccess();
  sub_1D87B6EFC(v14, v15 + v19, &qword_1ECA640E0);
  swift_endAccess();
  sub_1D8821DD0(v22);

  sub_1D885E3C0(v0[56], type metadata accessor for ActionPredictor.BundleActionPredictionResult);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D88447A0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v44[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v44[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44[-v10];
  v12 = type metadata accessor for BundleSelector.Output(0);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44[-v19];
  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v21, v11, &qword_1ECA640E8);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA640E8);
    v23 = type metadata accessor for ActionPredictor.Output(0);
    return (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
  }

  else
  {
    sub_1D885E538(v11, v20, type metadata accessor for BundleSelector.Output);
    v25 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);

    v45 = sub_1D8861908(v20, v25);

    sub_1D8823EB0(v49);
    v26 = v12[5];
    v46 = v20;
    v27 = &v20[v26];
    v28 = v27[3];
    v53 = v27[2];
    v54 = v28;
    v55 = v27[4];
    v29 = v27[1];
    v51 = *v27;
    v52 = v29;
    sub_1D87A0E38(v1 + v21, v9, &qword_1ECA640E8);
    if (v22(v9, 1, v12) == 1)
    {
      sub_1D87A14E4(v9, &qword_1ECA640E8);
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1D885E538(v9, v18, type metadata accessor for BundleSelector.Output);
      v31 = *&v18[v12[6]];

      v30 = sub_1D8861160(v32, v31);

      sub_1D885E3C0(v18, type metadata accessor for BundleSelector.Output);
    }

    v33 = v50;
    v34 = v48;
    sub_1D87A0E38(v1 + v21, v48, &qword_1ECA640E8);
    if (v22(v34, 1, v12) == 1)
    {
      sub_1D87A14E4(v34, &qword_1ECA640E8);
      v35 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v36 = v47;
      sub_1D885E538(v34, v47, type metadata accessor for BundleSelector.Output);
      v37 = *&v36[v12[7]];

      v39 = sub_1D8861BE4(v38, v37);

      v35 = sub_1D87C40D8(v39);

      sub_1D885E3C0(v36, type metadata accessor for BundleSelector.Output);
    }

    sub_1D885E3C0(v46, type metadata accessor for BundleSelector.Output);
    sub_1D881F6FC(v49, v33, &qword_1ECA64070);
    v40 = type metadata accessor for ActionPredictor.Output(0);
    v41 = (v33 + v40[5]);
    v42 = v54;
    v41[2] = v53;
    v41[3] = v42;
    v41[4] = v55;
    v43 = v52;
    *v41 = v51;
    v41[1] = v43;
    *(v33 + v40[6]) = v30;
    *(v33 + v40[7]) = v35;
    *(v33 + v40[8]) = v45 & 1;
    return (*(*(v40 - 1) + 56))(v33, 0, 1, v40);
  }
}

uint64_t sub_1D8844D24@<X0>(int8x8_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8B14E80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v65 - v12);
  v14 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(v2, v19, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);

    sub_1D885E538(v19, v16, type metadata accessor for BundleClassification.ClassificationType);
    BundleClassification.ClassificationType.builtInAction.getter(v13);
    v27 = type metadata accessor for BuiltInAction(0);
    if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA63188);
      sub_1D881FD38(&unk_1F5425900, &v66);
      sub_1D885E3C0(v16, type metadata accessor for BundleClassification.ClassificationType);
LABEL_35:
      v63 = *(v26 + 48);
      v64 = sub_1D8B13240();
      result = (*(*(v64 - 8) + 8))(&v19[v63], v64);
      v25 = v66;
      goto LABEL_36;
    }

    v32 = sub_1D87ED334();
    v33 = sub_1D87DF9F0(v32);

    v34 = *(v33 + 16);
    if (v34)
    {
      if (v34 > 3)
      {
        v35 = v34 & 0x7FFFFFFFFFFFFFFCLL;
        v55 = (v33 + 48);
        v56 = 0uLL;
        v57 = v34 & 0x7FFFFFFFFFFFFFFCLL;
        v58 = 0uLL;
        do
        {
          v56 = vorrq_s8(v55[-1], v56);
          v58 = vorrq_s8(*v55, v58);
          v55 += 2;
          v57 -= 4;
        }

        while (v57);
        v59 = vorrq_s8(v58, v56);
        v36 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
        if (v34 == v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v60 = v34 - v35;
      v61 = (v33 + 8 * v35 + 32);
      do
      {
        v62 = *v61++;
        *&v36 |= v62;
        --v60;
      }

      while (v60);
    }

    else
    {
      v36 = 0;
    }

LABEL_34:

    sub_1D885E3C0(v13, type metadata accessor for BuiltInAction);
    sub_1D885E3C0(v16, type metadata accessor for BundleClassification.ClassificationType);
    v66 = v36;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v5 + 32))(v8, v19, v4);
    v28 = sub_1D88CA7BC();
    v29 = sub_1D87DF9F0(v28);

    v30 = *(v29 + 16);
    if (v30)
    {
      if (v30 > 3)
      {
        v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        v46 = (v29 + 48);
        v47 = 0uLL;
        v48 = v30 & 0x7FFFFFFFFFFFFFFCLL;
        v49 = 0uLL;
        do
        {
          v47 = vorrq_s8(v46[-1], v47);
          v49 = vorrq_s8(*v46, v49);
          v46 += 2;
          v48 -= 4;
        }

        while (v48);
        v50 = vorrq_s8(v49, v47);
        v25 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
        if (v30 == v31)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
        v25 = 0;
      }

      v51 = v30 - v31;
      v52 = (v29 + 8 * v31 + 32);
      do
      {
        v53 = *v52++;
        *&v25 |= v53;
        --v51;
      }

      while (v51);
    }

    else
    {
      v25 = 0;
    }

LABEL_27:
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
    (*(v5 + 8))(v8, v4);

    result = sub_1D885E3C0(&v19[v54], type metadata accessor for ActionPin.PermanentPill);
    goto LABEL_36;
  }

  (*(v5 + 32))(v10, v19, v4);
  v21 = sub_1D88CA7BC();
  v22 = sub_1D87DF9F0(v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    if (v23 > 3)
    {
      v24 = v23 & 0x7FFFFFFFFFFFFFFCLL;
      v37 = (v22 + 48);
      v38 = 0uLL;
      v39 = v23 & 0x7FFFFFFFFFFFFFFCLL;
      v40 = 0uLL;
      do
      {
        v38 = vorrq_s8(v37[-1], v38);
        v40 = vorrq_s8(*v37, v40);
        v37 += 2;
        v39 -= 4;
      }

      while (v39);
      v41 = vorrq_s8(v40, v38);
      v25 = vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
      if (v23 == v24)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v42 = v23 - v24;
    v43 = (v22 + 8 * v24 + 32);
    do
    {
      v44 = *v43++;
      *&v25 |= v44;
      --v42;
    }

    while (v42);
  }

  else
  {
    v25 = 0;
  }

LABEL_21:
  (*(v5 + 8))(v10, v4);

LABEL_36:
  *a1 = v25;
  return result;
}

uint64_t sub_1D8845324(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ActionPin.Pill(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = sub_1D88353FC(v7);
  if (qword_1EE0E8888 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v31 - 2) = v7;
  v34 = v20;
  sub_1D87ED90C(sub_1D886555C, v20, v16);
  v33 = v2;
  v21 = type metadata accessor for BuiltInAction(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v16, 1, v21) == 1)
  {
    sub_1D87A14E4(v16, &qword_1ECA63188);
    sub_1D885E3C0(v7, type metadata accessor for ActionPin.Pill);
    v24 = *(v22 + 56);
    v24(v18, 1, 1, v21);
  }

  else
  {
    sub_1D885E538(v16, v18, type metadata accessor for BuiltInAction);
    v24 = *(v22 + 56);
    v24(v18, 0, 1, v21);
    sub_1D885E3C0(v7, type metadata accessor for ActionPin.Pill);
  }

  result = (v23)(v18, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = sub_1D87EC3AC();
    sub_1D885E3C0(v18, type metadata accessor for BuiltInAction);
    v26 = v37;
    v27 = sub_1D88353FC(v37);
    MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v26;
    v28 = v35;
    v29 = v33;
    sub_1D87ED90C(sub_1D886555C, v34, v35);
    v36 = v29;
    if (v23(v28, 1, v21) == 1)
    {
      sub_1D87A14E4(v28, &qword_1ECA63188);
      sub_1D885E3C0(v26, type metadata accessor for ActionPin.Pill);
      v24(v13, 1, 1, v21);
    }

    else
    {
      sub_1D885E538(v28, v13, type metadata accessor for BuiltInAction);
      v24(v13, 0, 1, v21);
      sub_1D885E3C0(v26, type metadata accessor for ActionPin.Pill);
    }

    result = (v23)(v13, 1, v21);
    if (result != 1)
    {
      v30 = sub_1D87EC3AC();
      sub_1D885E3C0(v13, type metadata accessor for BuiltInAction);
      return v30 < v32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8845820(__int128 *a1)
{
  v26 = a1;
  v2 = type metadata accessor for ActionPin.PermanentPill(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B14E80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B13240();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(v1, v17, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v8, v17, v5);
      MEMORY[0x1DA720210](1);
      sub_1D885E288(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
      sub_1D8B157A0();
    }

    else
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
      (*(v6 + 32))(v8, v17, v5);
      sub_1D885E538(&v17[v23], v4, type metadata accessor for ActionPin.PermanentPill);
      v24 = v26;
      MEMORY[0x1DA720210](2);
      sub_1D885E288(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
      sub_1D8B157A0();
      ActionPin.PermanentPill.hash(into:)(v24);
      sub_1D885E3C0(v4, type metadata accessor for ActionPin.PermanentPill);
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0) + 48);
    sub_1D885E538(v17, v14, type metadata accessor for BundleClassification.ClassificationType);
    v20 = v25;
    (*(v25 + 32))(v11, &v17[v19], v9);
    v21 = v26;
    MEMORY[0x1DA720210](0);
    BundleClassification.ClassificationType.hash(into:)(v21);
    sub_1D885E288(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
    sub_1D8B157A0();
    sub_1D8B15A60();

    (*(v20 + 8))(v11, v9);
    return sub_1D885E3C0(v14, type metadata accessor for BundleClassification.ClassificationType);
  }
}

uint64_t sub_1D8845D1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for ActionPin.Pill(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v29 = (&v23 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - v9;
  v10 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8834AF4();
  v14 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v15 = 0;
    v16 = (v4 + 56);
    v24 = v4;
    v17 = (v4 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v25 = v3;
    v19 = v29;
    while (v15 < *(v14 + 16))
    {
      sub_1D885E420(v14 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v15, v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D88353FC(v19);
      sub_1D885E538(v19, v2, type metadata accessor for ActionPin.Pill);
      (*v16)(v2, 0, 1, v3);
      sub_1D885E3C0(v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      if ((*v17)(v2, 1, v3) == 1)
      {
        result = sub_1D87A14E4(v2, &qword_1ECA641A0);
      }

      else
      {
        v20 = v26;
        sub_1D885E538(v2, v26, type metadata accessor for ActionPin.Pill);
        sub_1D885E538(v20, v30, type metadata accessor for ActionPin.Pill);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D87C7D9C(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_1D87C7D9C(v21 > 1, v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        result = sub_1D885E538(v30, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for ActionPin.Pill);
        v3 = v25;
      }

      if (v27 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v18;
  }

  return result;
}

uint64_t sub_1D8846100(void *a1, uint64_t a2)
{
  v39 = type metadata accessor for BuiltInAction(0);
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v33[-v9];
  v37 = type metadata accessor for ActionPin.Pill(0);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v36 = v8;
  v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = *(v11 + 72);
  v17 = (v4 + 48);
  while (1)
  {
    sub_1D885E420(v15, v13, type metadata accessor for ActionPin.Pill);
    v18 = *v13 == *a1 && v13[1] == a1[1];
    if (!v18 && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_4;
    }

    v19 = v13[2] == a1[2] && v13[3] == a1[3];
    if (!v19 && (sub_1D8B16BA0() & 1) == 0 || (v13[4] != a1[4] || v13[5] != a1[5]) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_4;
    }

    v20 = v13[7];
    v21 = a1[7];
    if (v20)
    {
      break;
    }

    if (!v21)
    {
      goto LABEL_23;
    }

LABEL_4:
    sub_1D885E3C0(v13, type metadata accessor for ActionPin.Pill);
    v15 += v16;
    if (!--v14)
    {
      return 0;
    }
  }

  if (!v21 || (v13[6] != a1[6] || v20 != v21) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  if (v13[8] != a1[8])
  {
    goto LABEL_4;
  }

  v22 = v17;
  v23 = *(v37 + 36);
  v24 = *(v38 + 48);
  sub_1D885E420(v13 + v23, v10, type metadata accessor for ActionPin.Pill.Source);
  v25 = a1 + v23;
  v26 = v39;
  sub_1D885E420(v25, &v10[v24], type metadata accessor for ActionPin.Pill.Source);
  v27 = *v22;
  v28 = v26;
  v17 = v22;
  if ((*v22)(v10, 1, v28) == 1)
  {
    if (v27(&v10[v24], 1, v39) == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  sub_1D885E420(v10, v36, type metadata accessor for ActionPin.Pill.Source);
  if (v27(&v10[v24], 1, v39) == 1)
  {
    sub_1D885E3C0(v36, type metadata accessor for BuiltInAction);
    v17 = v22;
LABEL_29:
    sub_1D87A14E4(v10, &qword_1ECA63E58);
    goto LABEL_4;
  }

  v29 = &v10[v24];
  v30 = v35;
  sub_1D885E538(v29, v35, type metadata accessor for BuiltInAction);
  v31 = v36;
  v34 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v36, v30);
  sub_1D885E3C0(v30, type metadata accessor for BuiltInAction);
  sub_1D885E3C0(v31, type metadata accessor for BuiltInAction);
  if ((v34 & 1) == 0)
  {
    v17 = v22;
    sub_1D885E3C0(v10, type metadata accessor for ActionPin.Pill.Source);
    goto LABEL_4;
  }

LABEL_33:
  sub_1D885E3C0(v10, type metadata accessor for ActionPin.Pill.Source);
  sub_1D885E3C0(v13, type metadata accessor for ActionPin.Pill);
  return 1;
}

uint64_t sub_1D88465D8(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v37 = sub_1D8B13240();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v40 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = v32 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = v32 - v10;
  v32[0] = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v32[0]);
  v44 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v36 = (v3 + 8);
    v32[1] = v6;
    v33 = (v3 + 32);
    do
    {
      v16 = v44;
      sub_1D885E420(v15, v44, type metadata accessor for CVBundle);
      v17 = *(v41 + 48);
      sub_1D885E420(v16, v11, type metadata accessor for CVBundle.BundleType);
      sub_1D885E420(v42, &v11[v17], type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D885E420(v11, v40, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v36)(v40, v37);
          goto LABEL_13;
        }

        v18 = v34;
        v19 = v40;
        v20 = v37;
        (*v33)(v34, &v11[v17], v37);
        v21 = sub_1D8B13200();
        v22 = *v36;
        (*v36)(v18, v20);
        v22(v19, v20);
        if ((v21 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1D885E420(v11, v43, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D885E3C0(v43, type metadata accessor for CVTrackSnapshot);
LABEL_13:
          sub_1D87A14E4(v11, &qword_1ECA63DA8);
          goto LABEL_24;
        }

        sub_1D885E538(&v11[v17], v38, type metadata accessor for CVTrackSnapshot);
        if ((sub_1D8B13200() & 1) == 0 || (v25 = v35[5], v26 = *(v43 + v25), v45 = *(v38 + v25), v46 = v26, , , v27 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v46, &v45), , , (v27 & 1) == 0) || (v28 = v35[6], v29 = *(v43 + v28), v45 = *(v38 + v28), v46 = v29, , , v30 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v46, &v45), , , (v30 & 1) == 0) || *(v43 + v35[7]) != *(v38 + v35[7]) || *(v43 + v35[8]) != *(v38 + v35[8]) || *(v43 + v35[9]) != *(v38 + v35[9]) || *(v43 + v35[10]) != *(v38 + v35[10]))
        {
          sub_1D885E3C0(v38, type metadata accessor for CVTrackSnapshot);
          sub_1D885E3C0(v43, type metadata accessor for CVTrackSnapshot);
LABEL_23:
          sub_1D885E3C0(v11, type metadata accessor for CVBundle.BundleType);
LABEL_24:
          sub_1D885E3C0(v44, type metadata accessor for CVBundle);
          goto LABEL_25;
        }

        sub_1D885E3C0(v38, type metadata accessor for CVTrackSnapshot);
        sub_1D885E3C0(v43, type metadata accessor for CVTrackSnapshot);
      }

      sub_1D885E3C0(v11, type metadata accessor for CVBundle.BundleType);
      if ((sub_1D88E4444(*(v44 + *(v32[0] + 20)), *(v42 + *(v32[0] + 20))) & 1) == 0 || (sub_1D88E4444(*(v44 + *(v32[0] + 24)), *(v42 + *(v32[0] + 24))) & 1) == 0)
      {
        goto LABEL_24;
      }

      v23 = v44;
      v24 = sub_1D8854A60(*(v44 + *(v32[0] + 28)), *(v42 + *(v32[0] + 28)));
      sub_1D885E3C0(v23, type metadata accessor for CVBundle);
      if (v24)
      {
        return 1;
      }

LABEL_25:
      v15 += v39;
      --v14;
    }

    while (v14);
  }

  return 0;
}

BOOL sub_1D8846D18(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1D8846D90(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1D885E288(a4, a5);
  }

  while ((sub_1D8B158C0() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1D8846E98(__int128 *a1)
{
  v2 = v1;
  sub_1D891CA54(a1);
  v4 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(a1, *(v2 + v4[5]));
  sub_1D87CF97C(a1, *(v2 + v4[6]));
  sub_1D893983C(a1, *(v2 + v4[7]));
  v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  sub_1D87D10C4(a1, *(v2 + *(v5 + 20)));
  sub_1D8B14F20();
  sub_1D885E288(&qword_1ECA641D8, MEMORY[0x1E69DFB48]);
  sub_1D8B157A0();
  v6 = *(v2 + *(v5 + 28));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v6);
}

uint64_t sub_1D8846FBC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8847020(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D8847064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1D8B14D80();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v36 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8836D10();
  v32 = v10;
  sub_1D885E420(a1, v10, type metadata accessor for CVBundle);
  v12 = sub_1D8847470();
  v13 = v12[2];
  if (v13)
  {
    v29[1] = a1;
    v30 = a2;
    v39[0] = MEMORY[0x1E69E7CC0];
    v35 = v13;
    sub_1D87F4220(0, v13, 0);
    v14 = 0;
    v15 = v39[0];
    v34 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = v4 + 16;
    v16 = (v4 + 8);
    v17 = v31;
    while (v14 < v12[2])
    {
      v18 = &v34[*(v4 + 72) * v14];
      v19 = v4;
      v20 = *(v4 + 16);
      v21 = v36;
      v20(v36, v18, v17);
      sub_1D884788C(v21, v11, v38);
      (*v16)(v21, v17);
      v39[0] = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4220(v22 > 1, v23 + 1, 1);
        v17 = v31;
        v15 = v39[0];
      }

      ++v14;
      *(v15 + 16) = v23 + 1;
      sub_1D885E538(v38, v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v4 = v19;
      if (v35 == v14)
      {

        a2 = v30;
        goto LABEL_9;
      }
    }

    __break(1u);
    (*v16)(v4, v17);

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v24 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
    sub_1D8B14F00();
    CVBundle.latestEstimate.getter(v43);
    v42 = v43[0];
    CVDetection.detection.getter(v39);
    v25 = v40;
    v26 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v27 = (*(v26 + 88))(v25, v26);

    __swift_destroy_boxed_opaque_existential_1(v39);
    result = sub_1D885E538(v32, a2, type metadata accessor for CVBundle);
    *(a2 + *(v24 + 20)) = v15;
    *(a2 + *(v24 + 28)) = v27;
  }

  return result;
}

void *sub_1D8847470()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v0 = *(v35 - 8);
  v1 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - v3;
  v31 = sub_1D8B14D80();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8836D10();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_1D87F372C(*(v7 + 16), 0);
    v11 = sub_1D8816D3C(v38, v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)), v9, v8);
    v12 = v38[3];
    v36 = v38[4];
    v37 = v11;

    sub_1D87977A0();
    if (v37 != v9)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v38[0] = v10;
  sub_1D8855968(v38);
  v13 = v38[0];
  v14 = v38[0][2];
  v15 = v31;
  if (v14)
  {
    v38[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4030(0, v14, 0);
    v16 = v38[0];
    v17 = *(v0 + 80);
    v30 = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v32 = *(v0 + 72);
    v36 = v4;
    v37 = v6;
    v19 = (v4 + 4);
    do
    {
      v20 = v33;
      sub_1D87A0E38(v18, v33, &qword_1ECA63F98);
      v21 = v34;
      sub_1D881F6FC(v20, v34, &qword_1ECA63F98);
      v22 = *(v35 + 48);
      v23 = *v19;
      (*v19)(v37, v21, v15);
      sub_1D885E3C0(v21 + v22, type metadata accessor for BundleClassification);
      v38[0] = v16;
      v24 = v15;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_1D87F4030(v25 > 1, v26 + 1, 1);
        v16 = v38[0];
      }

      v16[2] = v26 + 1;
      v27 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v23(v16 + v27 + v36[9] * v26, v37, v24);
      v18 += v32;
      --v14;
      v15 = v24;
    }

    while (v14);

    v4 = v36;
  }

  else
  {

    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D8B1AB90;
  (v4[13])(v28 + v27, *MEMORY[0x1E69DFA70], v31);
  v38[0] = v16;
  sub_1D88F3B84(v28);
  return v38[0];
}

uint64_t sub_1D884788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_1D8B13240();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v42 - v10);
  v12 = type metadata accessor for BundleClassification.ClassificationType(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = type metadata accessor for BundleClassification(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v42 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v42 - v26;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v43 = v5;
  v48 = a1;
  result = sub_1D87EFD80(a1);
  if ((v28 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = *(v18 + 72);
  sub_1D885E420(*(a2 + 56) + v29 * result, v27, type metadata accessor for BundleClassification);
  sub_1D885E420(v27, v49, type metadata accessor for BundleClassification.ClassificationType);
  result = sub_1D885E3C0(v27, type metadata accessor for BundleClassification);
  if (!*(a2 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1D87EFD80(v48);
  if ((v30 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1D885E420(*(a2 + 56) + result * v29, v24, type metadata accessor for BundleClassification);
  sub_1D885E420(v24, v16, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D885E3C0(v24, type metadata accessor for BundleClassification);
  BundleClassification.ClassificationType.builtInAction.getter(v11);
  sub_1D885E3C0(v16, type metadata accessor for BundleClassification.ClassificationType);
  v31 = type metadata accessor for BuiltInAction(0);
  v32 = *(*(v31 - 8) + 48);
  result = v32(v11, 1, v31);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);
  sub_1D87ECEF4(v49 + *(v33 + 48));
  result = sub_1D885E3C0(v11, type metadata accessor for BuiltInAction);
  if (!*(a2 + 16))
  {
    goto LABEL_14;
  }

  result = sub_1D87EFD80(v48);
  if ((v34 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1D885E420(*(a2 + 56) + result * v29, v21, type metadata accessor for BundleClassification);
  v35 = v46;
  sub_1D885E420(v21, v46, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D885E3C0(v21, type metadata accessor for BundleClassification);
  v36 = v47;
  BundleClassification.ClassificationType.builtInAction.getter(v47);
  sub_1D885E3C0(v35, type metadata accessor for BundleClassification.ClassificationType);
  result = v32(v36, 1, v31);
  if (result != 1)
  {
    v37 = (v49 + *(v33 + 64));
    v38 = v44;
    sub_1D87ECEF4(v44);
    sub_1D885E3C0(v36, type metadata accessor for BuiltInAction);
    v39 = sub_1D8B131E0();
    v41 = v40;
    (*(v45 + 8))(v38, v43);
    *v37 = v39;
    v37[1] = v41;
    type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8847E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v80 = a2;
  v4 = type metadata accessor for BundleClassification(0);
  v75 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B14D80();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v73 - v9;
  v78 = type metadata accessor for ActionPin.PermanentPill(0);
  v90 = *(v78 - 8);
  v10 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = (&v73 - v22);
  v23 = sub_1D8B14E50();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v73 - v28;
  v85 = a1;
  sub_1D8B14E60();
  v30 = (*(v24 + 88))(v29, v23);
  if (v30 == *MEMORY[0x1E69DFAF8])
  {
    goto LABEL_2;
  }

  if (v30 == *MEMORY[0x1E69DFAE8])
  {
    v35 = *(v24 + 96);
    v74 = v29;
    v35(v29, v23);
    if (qword_1EE0E3EA0 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      swift_beginAccess();
      v36 = off_1EE0E3EA8;
      v37 = *(off_1EE0E3EA8 + 2);
      v38 = MEMORY[0x1E69E7CC0];
      if (!v37)
      {
        break;
      }

      v93 = MEMORY[0x1E69E7CC0];

      sub_1D87F4264(0, v37, 0);
      v39 = 0;
      v88 = v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v89 = v36;
      v38 = v93;
      while (v39 < v36[2])
      {
        sub_1D885E420(&v88[*(v90 + 72) * v39], v16, type metadata accessor for ActionPin.PermanentPill);
        sub_1D885E420(v16, v14, type metadata accessor for ActionPin.PermanentPill);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        if (!(*(*(v40 - 8) + 48))(v14, 6, v40))
        {
          v41 = *(v40 + 48);
          v42 = *&v14[v41];
          sub_1D881F6FC(v14, v21, &qword_1ECA635B8);
          *&v21[v41] = v42;
        }

        v43 = type metadata accessor for BuiltInAction(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v43 - 8) + 56))(v21, 0, 1, v43);
        sub_1D885E3C0(v16, type metadata accessor for ActionPin.PermanentPill);
        v93 = v38;
        v45 = *(v38 + 16);
        v44 = *(v38 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1D87F4264(v44 > 1, v45 + 1, 1);
          v38 = v93;
        }

        ++v39;
        *(v38 + 16) = v45 + 1;
        sub_1D881F6FC(v21, v38 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v45, &qword_1ECA63188);
        v36 = v89;
        if (v37 == v39)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

LABEL_17:
    v23 = sub_1D87C42FC(v38);

    v27 = v81;
    v24 = v85;
    sub_1D88C9D4C(v81);
    v48 = sub_1D89A473C(v27, v23);

    v49 = sub_1D87A14E4(v27, &qword_1ECA63188);
    v50 = v83;
    v51 = v84;
    v52 = v82;
    if (v48)
    {
      v23 = off_1EE0E3EA8;
      MEMORY[0x1EEE9AC00](v49);

      v53 = v79;
      v54 = v87;
      sub_1D87EDF78(sub_1D88650B8, v23, v79);
      v27 = v54;

      if ((*(v90 + 48))(v53, 1, v78) != 1)
      {
        v55 = v53;
        v56 = v77;
        sub_1D885E538(v55, v77, type metadata accessor for ActionPin.PermanentPill);
        v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
        v58 = sub_1D8B14E80();
        v59 = v86;
        (*(*(v58 - 8) + 16))(v86, v24, v58);
        sub_1D885E538(v56, v59 + v57, type metadata accessor for ActionPin.PermanentPill);
        v60 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
        return (*(v50 + 8))(v74, v51);
      }
    }

    else
    {
      (*(v83 + 32))(v82, v74, v84);
      v61 = sub_1D8836D10();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0);
      if (*(v61 + 16))
      {
        v63 = v51;
        v23 = *(v62 + 48);
        v27 = *(v62 + 64);
        v64 = sub_1D87EFD80(v52);
        if (v65)
        {
          v66 = v86;
          v67 = (v86 + v27);
          v68 = v76;
          sub_1D885E420(*(v61 + 56) + *(v75 + 72) * v64, v76, type metadata accessor for BundleClassification);

          sub_1D885E420(v68, v66, type metadata accessor for BundleClassification.ClassificationType);
          sub_1D885E3C0(v68, type metadata accessor for BundleClassification);
          sub_1D8B14E30();
          v69 = sub_1D8B14E10();
          v71 = v70;
          (*(v50 + 8))(v52, v63);
          *v67 = v69;
          v67[1] = v71;
          v72 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v72 - 8) + 56))(v66, 0, 1, v72);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (v30 == *MEMORY[0x1E69DFB00])
    {
LABEL_2:
      (*(v24 + 8))(v29, v23);
      v31 = sub_1D8B14E80();
      v32 = v86;
      (*(*(v31 - 8) + 16))(v86, v85, v31);
      v33 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    }

    if (v30 == *MEMORY[0x1E69DFAF0])
    {
      (*(v24 + 96))(v29, v23);
      v46 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
      (*(*(v46 - 8) + 56))(v86, 1, 1, v46);
      v47 = sub_1D8B15090();
      return (*(*(v47 - 8) + 8))(v29, v47);
    }
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001ELL, 0x80000001D8B426E0);
  sub_1D8B14E60();
  sub_1D8B168A0();
  (*(v24 + 8))(v27, v23);
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8848A18()
{
  v0 = type metadata accessor for BuiltInAction(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v21 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  ActionPin.PermanentPill.builtInAction.getter(&v21 - v13);
  (*(v1 + 56))(v14, 0, 1, v0);
  sub_1D88C9D4C(v12);
  v15 = *(v4 + 56);
  sub_1D87A0E38(v14, v6, &qword_1ECA63188);
  sub_1D87A0E38(v12, &v6[v15], &qword_1ECA63188);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_1D87A0E38(v6, v22, &qword_1ECA63188);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v21;
      sub_1D885E538(&v6[v15], v21, type metadata accessor for BuiltInAction);
      v19 = v22;
      v17 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_1D885E3C0(v18, type metadata accessor for BuiltInAction);
      sub_1D87A14E4(v12, &qword_1ECA63188);
      sub_1D87A14E4(v14, &qword_1ECA63188);
      sub_1D885E3C0(v19, type metadata accessor for BuiltInAction);
      sub_1D87A14E4(v6, &qword_1ECA63188);
      return v17 & 1;
    }

    sub_1D87A14E4(v12, &qword_1ECA63188);
    sub_1D87A14E4(v14, &qword_1ECA63188);
    sub_1D885E3C0(v22, type metadata accessor for BuiltInAction);
    goto LABEL_6;
  }

  sub_1D87A14E4(v12, &qword_1ECA63188);
  sub_1D87A14E4(v14, &qword_1ECA63188);
  if (v16(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_1D87A14E4(v6, &qword_1ECA63FA0);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D87A14E4(v6, &qword_1ECA63188);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1D8848E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E0);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = type metadata accessor for AFMResult(0);
  *(v5 + 208) = swift_task_alloc();
  v7 = sub_1D8B14F20();
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  v8 = type metadata accessor for CVBundle(0);
  *(v5 + 248) = v8;
  *(v5 + 256) = *(v8 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v9 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  *(v5 + 296) = v9;
  *(v5 + 304) = *(v9 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = type metadata accessor for CVBundle.BundleType(0);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v10 = sub_1D8B13240();
  *(v5 + 408) = v10;
  *(v5 + 416) = *(v10 - 8);
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  v11 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v11;
  *(v5 + 48) = *(a3 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D88491A4, 0, 0);
}

uint64_t sub_1D88491A4()
{
  v193 = v0;
  v1 = *(v0 + 22);
  v160 = BundleSelector.Output.allBundles.getter();
  *(v0 + 18) = MEMORY[0x1E69E7CC0];
  v157 = v0 + 18;
  v191 = MEMORY[0x1E69E7CC8];
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64200);
  sub_1D8B15760();
  if (v2)
  {
    v3 = *(v0 + 52);
    v4 = *(v0 + 38);
    v5 = *(v0 + 22) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v190 = v191;
    v182 = (v3 + 16);
    v7 = (v3 + 32);
    v173 = v3;
    v179 = (v3 + 8);
    while (1)
    {
      sub_1D885E420(v5, *(v0 + 50), type metadata accessor for CVBundle.BundleType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v9 = *(v0 + 59);
      v10 = *(v0 + 51);
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v7;
        (*v7)(*(v0 + 59), *(v0 + 50), *(v0 + 51));
      }

      else
      {
        v12 = *(v0 + 45);
        sub_1D885E538(*(v0 + 50), v12, type metadata accessor for CVTrackSnapshot);
        (*v182)(v9, v12, v10);
        sub_1D885E3C0(v12, type metadata accessor for CVTrackSnapshot);
        v11 = *v7;
      }

      v13 = *(v0 + 60);
      v14 = *(v0 + 44);
      v11(v13, *(v0 + 59), *(v0 + 51));
      sub_1D885E420(v5, v14, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v190;
      v16 = sub_1D87EF764(v13);
      v18 = *(v190 + 2);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        break;
      }

      v22 = v17;
      if (*(v190 + 3) >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v16;
          sub_1D8968388();
          v16 = v32;
          v190 = v192;
        }
      }

      else
      {
        v23 = *(v0 + 60);
        sub_1D896FD58(v21, isUniquelyReferenced_nonNull_native);
        v190 = v192;
        v16 = sub_1D87EF764(v23);
        if ((v22 & 1) != (v24 & 1))
        {

          return sub_1D8B16C30();
        }
      }

      v25 = *(v0 + 60);
      v26 = *(v0 + 51);
      v27 = *(v0 + 44);
      if (v22)
      {
        sub_1D8864DC8(*(v0 + 44), *(v190 + 7) + v16 * v6, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        (*v179)(v25, v26);
      }

      else
      {
        v176 = v5;
        v28 = v0;
        v0 = v190;
        *&v190[(v16 >> 6) + 8] |= 1 << v16;
        v29 = v16;
        (*(v173 + 16))(*(v190 + 6) + *(v173 + 72) * v16, v25, v26);
        sub_1D885E538(v27, *(v190 + 7) + v29 * v6, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        (*(v173 + 8))(v25, v26);
        v30 = *(v190 + 2);
        v20 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v20)
        {
          goto LABEL_107;
        }

        *(v190 + 2) = v31;
        v0 = v28;
        v5 = v176;
      }

      v5 += v6;
      if (!--v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v190 = v191;
LABEL_18:
  v156 = v157 - 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_110;
  }

  v33 = v160;
  while (2)
  {
    *(v0 + 61) = v33;
    v34 = *(v0 + 32);
    v35 = *(v33 + 16);
    v36 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    if (!v35)
    {
      *v156 = v33;
      goto LABEL_94;
    }

    v37 = 0;
    v158 = v157 - 6;
    v159 = *(v0 + 20) + 40;
    v160 = v33;
    v38 = *(v0 + 52);
    v161 = (v38 + 16);
    v39 = (v38 + 32);
    v177 = (v38 + 8);
    v40 = *(v34 + 72);
    v154 = -v40;
    v155 = v157 - 11;
    v162 = *(v0 + 38);
    v163 = (*(v0 + 28) + 8);
    v171 = *(v0 + 37);
    v174 = v40;
    v164 = (v38 + 32);
    v165 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    do
    {
      v41 = v40 * v37;
      v42 = v40 + v40 * (v37 - v35);
      v167 = v35;
      while (1)
      {
        sub_1D885E420(v36 + v41, *(v0 + 36), type metadata accessor for CVBundle);
        v183 = *(v159 + *(type metadata accessor for BundleSelector.Output(0) + 20));
        v169 = v37;
        v166 = v41;
        if (v183)
        {
          break;
        }

        v186 = v42;
        sub_1D885E420(*(v0 + 36), *(v0 + 49), type metadata accessor for CVBundle.BundleType);
        v43 = swift_getEnumCaseMultiPayload();
        v44 = *(v0 + 57);
        v45 = *(v0 + 51);
        if (v43 == 1)
        {
          v46 = *v39;
          (*v39)(*(v0 + 57), *(v0 + 49), *(v0 + 51));
        }

        else
        {
          v47 = *(v0 + 45);
          sub_1D885E538(*(v0 + 49), v47, type metadata accessor for CVTrackSnapshot);
          (*v161)(v44, v47, v45);
          sub_1D885E3C0(v47, type metadata accessor for CVTrackSnapshot);
          v46 = *v39;
        }

        v46(*(v0 + 58), *(v0 + 57), *(v0 + 51));
        if (!*(v190 + 2) || (v48 = sub_1D87EF764(*(v0 + 58)), (v49 & 1) == 0))
        {
          (*v177)(*(v0 + 58), *(v0 + 51));
          v35 = v167;
          v37 = v169;
          v40 = v174;
          v42 = v186;
          break;
        }

        v50 = *(v0 + 58);
        v51 = *(v0 + 51);
        v52 = *(v0 + 42);
        v53 = *(v0 + 43);
        sub_1D885E420(*(v190 + 7) + *(v162 + 72) * v48, v52, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        (*v177)(v50, v51);
        sub_1D885E538(v52, v53, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v54 = v0[4];
        sub_1D8B14F00();
        sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
        if (sub_1D8B16550())
        {
          sub_1D885E288(&qword_1ECA64118, MEMORY[0x1E69DFB48]);
          if ((sub_1D8B158C0() & 1) == 0)
          {
            v106 = *(v0 + 43);
            (*v163)(*(v0 + 30), *(v0 + 27));
            sub_1D885E3C0(v106, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
            v35 = v167;
            v37 = v169;
            v39 = v164;
            v40 = v174;
            v42 = v186;
            v41 = v166;
            break;
          }
        }

        v55 = *(v0 + 43);
        v56 = *(v0 + 36);
        v57 = *(v0 + 30);
        v58 = *(v0 + 27);
        CVBundle.latestEstimate.getter(&v191);
        v192 = v191;
        CVDetection.detection.getter(v158);
        v60 = *(v0 + 15);
        v59 = *(v0 + 16);
        __swift_project_boxed_opaque_existential_1(v158, v60);
        v61 = (*(v59 + 88))(v60, v59);
        v36 = v165;

        (*v163)(v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v158);
        v62 = *(v55 + *(v171 + 28));
        sub_1D885E3C0(v55, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E3C0(v56, type metadata accessor for CVBundle);
        v35 = v167;
        v37 = v169;
        v39 = v164;
        v40 = v174;
        v42 = v186;
        v41 = v166;
        if (v54 < v61 - v62)
        {
          goto LABEL_36;
        }

        v37 = v169 + 1;
        v41 = v166 + v174;
        v42 = v186 + v174;
        if (v169 + 1 >= v167)
        {
          goto LABEL_73;
        }
      }

      sub_1D885E3C0(*(v0 + 36), type metadata accessor for CVBundle);
LABEL_36:
      v63 = v35 - 1;
      if (v37 >= v35 - 1)
      {
        break;
      }

      v153 = v36 + v41;
      v64 = v154 * v35--;
      v65 = v40 * v63;
      while (1)
      {
        sub_1D885E420(v36 + v65, *(v0 + 35), type metadata accessor for CVBundle);
        if (v183)
        {
          goto LABEL_39;
        }

        v180 = v64;
        v187 = v42;
        sub_1D885E420(*(v0 + 35), *(v0 + 48), type metadata accessor for CVBundle.BundleType);
        v66 = swift_getEnumCaseMultiPayload();
        v67 = *(v0 + 55);
        v68 = *(v0 + 51);
        if (v66 == 1)
        {
          v69 = *v39;
          (*v39)(*(v0 + 55), *(v0 + 48), *(v0 + 51));
        }

        else
        {
          v70 = *(v0 + 45);
          sub_1D885E538(*(v0 + 48), v70, type metadata accessor for CVTrackSnapshot);
          (*v161)(v67, v70, v68);
          sub_1D885E3C0(v70, type metadata accessor for CVTrackSnapshot);
          v69 = *v39;
        }

        v69(*(v0 + 56), *(v0 + 55), *(v0 + 51));
        v64 = v180;
        if (*(v190 + 2))
        {
          v71 = sub_1D87EF764(*(v0 + 56));
          if (v72)
          {
            break;
          }
        }

        (*v177)(*(v0 + 56), *(v0 + 51));
        v40 = v174;
        v42 = v187;
LABEL_39:
        sub_1D885E3C0(*(v0 + 35), type metadata accessor for CVBundle);
LABEL_40:
        --v35;
        v42 += v40;
        v65 -= v40;
        v64 += v40;
        if (v37 >= v35)
        {
          goto LABEL_73;
        }
      }

      v168 = v35;
      v73 = *(v0 + 56);
      v74 = *(v0 + 51);
      v75 = *(v0 + 40);
      v76 = *(v0 + 41);
      sub_1D885E420(*(v190 + 7) + *(v162 + 72) * v71, v75, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      (*v177)(v73, v74);
      sub_1D885E538(v75, v76, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v77 = v0[4];
      sub_1D8B14F00();
      sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
      if (sub_1D8B16550())
      {
        sub_1D885E288(&qword_1ECA64118, MEMORY[0x1E69DFB48]);
        if ((sub_1D8B158C0() & 1) == 0)
        {
          v82 = *(v0 + 41);
          (*v163)(*(v0 + 29), *(v0 + 27));
          sub_1D885E3C0(v82, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
          v39 = v164;
          v36 = v165;
          v35 = v168;
          v40 = v174;
          v42 = v187;
          v64 = v180;
          goto LABEL_39;
        }
      }

      CVBundle.latestEstimate.getter(&v192);
      switch(v192 >> 60)
      {
        case 1uLL:
          v94 = type metadata accessor for GroundedParseDetectorResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v94;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_62;
        case 2uLL:
          v89 = type metadata accessor for MetaDetectionResult();
          v79 = swift_projectBox();
          *(v0 + 10) = v89;
          *(v0 + 11) = sub_1D885E288(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for MetaDetectionResult;
          goto LABEL_62;
        case 3uLL:
        case 8uLL:
          v78 = type metadata accessor for ObjectDetectorResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v78;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_62;
        case 4uLL:
          v95 = type metadata accessor for ParseDetectorResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v95;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for ParseDetectorResult;
          goto LABEL_62;
        case 5uLL:
          v96 = type metadata accessor for TextDetectorResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v96;
          *(v0 + 11) = sub_1D885E288(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for TextDetectorResult;
          goto LABEL_62;
        case 6uLL:
        case 7uLL:
          v83 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v83;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_62;
        case 9uLL:
        case 0xAuLL:
          v85 = *(v0 + 25);
          v84 = *(v0 + 26);
          v86 = swift_projectBox();
          sub_1D885E420(v86, v84, type metadata accessor for AFMResult);
          *(v0 + 10) = v85;
          *(v0 + 11) = sub_1D885E288(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v87 = __swift_allocate_boxed_opaque_existential_1(v155);
          sub_1D885E538(v84, v87, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v88 = type metadata accessor for SyntheticDetectionResult();
          v79 = swift_projectBox();
          *(v0 + 10) = v88;
          *(v0 + 11) = sub_1D885E288(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_62;
        case 0xCuLL:
          v90 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v90;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_62;
        case 0xDuLL:
          v97 = type metadata accessor for GroundedParseClassificationsResult(0);
          v79 = swift_projectBox();
          *(v0 + 10) = v97;
          *(v0 + 11) = sub_1D885E288(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v155);
          v81 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_62:
          sub_1D885E420(v79, boxed_opaque_existential_1, v81);
          break;
        default:
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v92 = swift_projectBox();
          *(v0 + 10) = v91;
          *(v0 + 11) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v93 = __swift_allocate_boxed_opaque_existential_1(v155);
          sub_1D87A0E38(v92, v93, &qword_1ECA67750);
          break;
      }

      v98 = *(v0 + 41);
      v99 = *(v0 + 35);
      v100 = *(v0 + 29);
      v101 = *(v0 + 27);
      v103 = *(v0 + 10);
      v102 = *(v0 + 11);
      __swift_project_boxed_opaque_existential_1(v155, v103);
      v104 = (*(v102 + 88))(v103, v102);

      (*v163)(v100, v101);
      __swift_destroy_boxed_opaque_existential_1(v155);
      v105 = *(v98 + *(v171 + 28));
      sub_1D885E3C0(v98, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E3C0(v99, type metadata accessor for CVBundle);
      v39 = v164;
      v36 = v165;
      v35 = v168;
      v37 = v169;
      v40 = v174;
      v42 = v187;
      v64 = v180;
      if (v77 < v104 - v105)
      {
        goto LABEL_40;
      }

      if (v169 != v168)
      {
        sub_1D885E538(v153, *(v0 + 34), type metadata accessor for CVBundle);
        if (v166 < v65 || v153 >= v165 - v180)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v187)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D885E538(*(v0 + 34), v165 + v65, type metadata accessor for CVBundle);
      }

      v37 = v169 + 1;
    }

    while (v169 + 1 < v168);
LABEL_73:
    v33 = v160;
    *v156 = v160;
    if (v37 < 0)
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      v33 = sub_1D893943C(v160);
      continue;
    }

    break;
  }

  if (v160[2] < v37)
  {
    goto LABEL_109;
  }

  if (!v37)
  {
LABEL_94:
    v131 = v33;

    v132 = 0;
    v112 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v107 = *(v0 + 52);
  v108 = *(v0 + 38);
  v172 = (v107 + 16);
  v188 = *(*(v0 + 32) + 72);
  v109 = (v107 + 32);
  v181 = (v107 + 8);
  v110 = v37;
  v178 = (v108 + 56);
  v175 = v108;
  v111 = (v108 + 48);

  v112 = MEMORY[0x1E69E7CC0];
  v184 = v109;
  v113 = v36;
  v170 = v110;
  v114 = v110;
  do
  {
    v115 = *(v0 + 47);
    v116 = *(v0 + 33);
    sub_1D885E420(v113, v116, type metadata accessor for CVBundle);
    sub_1D885E420(v116, v115, type metadata accessor for CVBundle.BundleType);
    v117 = swift_getEnumCaseMultiPayload();
    v118 = *(v0 + 53);
    v119 = *(v0 + 51);
    if (v117 == 1)
    {
      v120 = *v184;
      (*v184)(*(v0 + 53), *(v0 + 47), *(v0 + 51));
    }

    else
    {
      v121 = *(v0 + 45);
      sub_1D885E538(*(v0 + 47), v121, type metadata accessor for CVTrackSnapshot);
      (*v172)(v118, v121, v119);
      sub_1D885E3C0(v121, type metadata accessor for CVTrackSnapshot);
      v120 = *v184;
    }

    v120(*(v0 + 54), *(v0 + 53), *(v0 + 51));
    if (*(v190 + 2) && (v122 = sub_1D87EF764(*(v0 + 54)), (v123 & 1) != 0))
    {
      sub_1D885E420(*(v190 + 7) + *(v175 + 72) * v122, *(v0 + 24), type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v124 = 0;
    }

    else
    {
      v124 = 1;
    }

    v125 = *(v0 + 37);
    v126 = *(v0 + 33);
    v127 = *(v0 + 24);
    (*v181)(*(v0 + 54), *(v0 + 51));
    sub_1D885E3C0(v126, type metadata accessor for CVBundle);
    (*v178)(v127, v124, 1, v125);
    if ((*v111)(v127, 1, v125) == 1)
    {
      sub_1D87A14E4(*(v0 + 24), &qword_1ECA640E0);
    }

    else
    {
      sub_1D885E538(*(v0 + 24), *(v0 + 39), type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1D87C7E40(0, v112[2] + 1, 1, v112);
      }

      v129 = v112[2];
      v128 = v112[3];
      if (v129 >= v128 >> 1)
      {
        v112 = sub_1D87C7E40(v128 > 1, v129 + 1, 1, v112);
      }

      v130 = *(v0 + 39);
      v112[2] = v129 + 1;
      sub_1D885E538(v130, v112 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v129, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }

    v113 += v188;
    --v114;
  }

  while (v114);

  v131 = v160;
  v36 = v165;
  v132 = v170;
LABEL_95:

  v134 = sub_1D88F3BDC(v133);
  v142 = v131[2];
  if (v142 < v132)
  {
    __break(1u);
    return MEMORY[0x1EEE6DBF8](v134, v135, v136, v137, v138, v139, v140, v141);
  }

  if (v132 != v142)
  {
    v185 = *(v0 + 23);
    v145 = *(v0 + 21);
    v189 = *(v0 + 20);
    v146 = v131;

    v147 = v132;
    v148 = (2 * v142) | 1;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64208);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64210);
    v151 = swift_task_alloc();
    *(v0 + 62) = v151;
    v151[2] = v146;
    v151[3] = v36;
    v151[4] = v147;
    v151[5] = v148;
    v151[6] = v185;
    v151[7] = v145;
    v151[8] = v157 - 16;
    v151[9] = v189;
    v151[10] = v157;
    v151[11] = v156;
    v152 = swift_task_alloc();
    *(v0 + 63) = v152;
    *v152 = v0;
    v152[1] = sub_1D884AB8C;
    v195 = v150;
    v139 = &unk_1D8B23B50;
    v134 = (v0 + 19);
    v135 = v149;
    v136 = v150;
    v137 = 0;
    v138 = 0;
    v140 = v151;
    v141 = v149;

    return MEMORY[0x1EEE6DBF8](v134, v135, v136, v137, v138, v139, v140, v141);
  }

  v143 = *(v0 + 1);

  return v143(v112);
}

uint64_t sub_1D884AB8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D884ACA4, 0, 0);
}

uint64_t sub_1D884ACA4()
{

  v3 = *(v0 + 152);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t BundleSelector.Output.allBundles.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v34 - v4;
  v36 = type metadata accessor for CVBundle(0);
  v5 = *(v36 - 8);
  v6 = MEMORY[0x1EEE9AC00](v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for BundleSelector.Output(0);
  v14 = *(v13 + 28);
  v15 = *(v0 + *(v13 + 24));
  v38 = v0;
  v16 = *(v0 + v14);
  v17 = v16 + 56;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;

  v40 = v16;

  v23 = 0;
  v39 = v8;
  if (v20)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      do
      {
LABEL_8:
        v25 = *(v5 + 72);
        sub_1D885E420(*(v40 + 48) + v25 * (__clz(__rbit64(v20)) | (v23 << 6)), v12, type metadata accessor for CVBundle);
        sub_1D885E538(v12, v8, type metadata accessor for CVBundle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D87C7E90(0, v15[2] + 1, 1, v15);
        }

        v27 = v15[2];
        v26 = v15[3];
        if (v27 >= v26 >> 1)
        {
          v15 = sub_1D87C7E90(v26 > 1, v27 + 1, 1, v15);
        }

        v20 &= v20 - 1;
        v15[2] = v27 + 1;
        v28 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v27 * v25;
        v8 = v39;
        result = sub_1D885E538(v39, v28, type metadata accessor for CVBundle);
      }

      while (v20);
    }
  }

  v29 = v37;
  sub_1D87A0E38(v38, v37, &qword_1ECA67980);
  if ((*(v5 + 48))(v29, 1, v36) == 1)
  {
    sub_1D87A14E4(v29, &qword_1ECA67980);
  }

  else
  {
    v30 = v35;
    sub_1D885E538(v29, v35, type metadata accessor for CVBundle);
    if ((sub_1D88465D8(v30, v15) & 1) == 0)
    {
      v31 = v34;
      sub_1D885E420(v30, v34, type metadata accessor for CVBundle);
      v32 = v15[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v15;
      if (!isUniquelyReferenced_nonNull_native || v32 >= v15[3] >> 1)
      {
        v15 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v32 + 1, 1, v15);
        v41 = v15;
      }

      sub_1D885D08C(0, 0, 1, v31);
    }

    sub_1D885E3C0(v30, type metadata accessor for CVBundle);
  }

  return v15;
}

uint64_t sub_1D884B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v17;
  *(v8 + 152) = v18;
  *(v8 + 128) = v16;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 72) = a1;
  *(v8 + 160) = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64208);
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for CVBundle.BundleType(0);
  *(v8 + 224) = swift_task_alloc();
  v10 = sub_1D8B13240();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64250);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v11 = *(type metadata accessor for BundleSelector.Output(0) - 8);
  *(v8 + 312) = v11;
  *(v8 + 320) = *(v11 + 64);
  *(v8 + 328) = swift_task_alloc();
  v12 = *(type metadata accessor for CVBundle(0) - 8);
  *(v8 + 336) = v12;
  *(v8 + 344) = *(v12 + 64);
  *(v8 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64258);
  *(v8 + 376) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64260);
  *(v8 + 384) = v13;
  *(v8 + 392) = *(v13 - 8);
  *(v8 + 400) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D884B6EC, 0, 0);
}

uint64_t sub_1D884B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  v6 = *(v4 + 104) >> 1;
  if (v6 != v5)
  {
    v8 = v6 - v5;
    if (v6 <= v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
    }

    v41 = *(v4 + 312);
    v42 = *(v4 + 336);
    v43 = **(v4 + 80);
    v9 = *(v42 + 72);
    v39 = *(v4 + 344) + 7;
    v10 = sub_1D8B15EA0();
    v11 = *(v10 - 8);
    v38 = *(v11 + 56);
    v37 = (v11 + 48);
    v36 = (v11 + 8);
    v40 = v9;
    v12 = v5 * v9;
    do
    {
      v50 = v8;
      v47 = *(v4 + 368);
      v48 = *(v4 + 360);
      v15 = *(v4 + 352);
      v16 = *(v4 + 328);
      v17 = *(v4 + 128);
      v18 = *(v4 + 136);
      v45 = v16;
      v46 = *(v4 + 120);
      v44 = *(v4 + 112);
      v19 = *(v4 + 88);
      v38();
      v49 = v12;
      sub_1D885E420(v19 + v12, v15, type metadata accessor for CVBundle);
      sub_1D885E420(v18, v16, type metadata accessor for BundleSelector.Output);
      v20 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v21 = (v39 + v20) & 0xFFFFFFFFFFFFFFF8;
      v22 = v10;
      v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      v24 = (*(v41 + 80) + v23 + 40) & ~*(v41 + 80);
      v25 = swift_allocObject();
      v25[2] = 0;
      v26 = v25 + 2;
      v25[3] = 0;
      v25[4] = v44;
      sub_1D885E538(v15, v25 + v20, type metadata accessor for CVBundle);
      *(v25 + v21) = v46;
      v27 = v25 + v23;
      v10 = v22;
      v28 = *(v17 + 32);
      v29 = *(v17 + 16);
      *v27 = *v17;
      *(v27 + 1) = v29;
      *(v27 + 4) = v28;
      sub_1D885E538(v45, v25 + v24, type metadata accessor for BundleSelector.Output);
      sub_1D87A0E38(v47, v48, &unk_1ECA675E0);
      LODWORD(v22) = (*v37)(v48, 1, v22);

      v30 = *(v4 + 360);
      if (v22 == 1)
      {
        sub_1D87A14E4(*(v4 + 360), &unk_1ECA675E0);
        if (*v26)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D8B15E90();
        (*v36)(v30, v10);
        if (*v26)
        {
LABEL_13:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v31 = sub_1D8B15E00();
          v32 = v33;
          swift_unknownObjectRelease();
          goto LABEL_14;
        }
      }

      v31 = 0;
      v32 = 0;
LABEL_14:
      v34 = swift_allocObject();
      *(v34 + 16) = &unk_1D8B23B80;
      *(v34 + 24) = v25;

      if (v32 | v31)
      {
        v13 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v31;
        *(v4 + 40) = v32;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v4 + 368);
      *(v4 + 48) = 1;
      *(v4 + 56) = v13;
      *(v4 + 64) = v43;
      swift_task_create();

      sub_1D87A14E4(v14, &unk_1ECA675E0);
      v12 = v49 + v40;
      v8 = v50 - 1;
    }

    while (v50 != 1);
  }

  sub_1D8B15E30();
  v7 = swift_task_alloc();
  *(v4 + 408) = v7;
  *v7 = v4;
  v7[1] = sub_1D884BB54;
  a1 = *(v4 + 376);
  a4 = *(v4 + 384);
  a2 = 0;
  a3 = 0;

  return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
}

uint64_t sub_1D884BB54()
{

  return MEMORY[0x1EEE6DFA0](sub_1D884BC50, 0, 0);
}

uint64_t sub_1D884BC50()
{
  v75 = v0;
  v1 = v0[47];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[19];
    (*(v0[49] + 8))(v0[50], v0[48]);
    v3 = *v2;
    v73 = MEMORY[0x1E69E7CC8];
    v4 = *(*v2 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64268);
    sub_1D8B15760();
    v70 = v4;
    if (v4)
    {
      v5 = 0;
      v6 = v0[42];
      v72 = v0[33];
      v7 = v0[30];
      v65 = v7;
      v67 = (v7 + 8);
      v68 = (v7 + 16);
      v8 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v66 = *(v6 + 72);
      v9 = v73;
      v69 = (v7 + 32);
      while (1)
      {
        v11 = v0[37];
        v10 = v0[38];
        v12 = v0[36];
        v13 = v0[28];
        v14 = *(v72 + 48);
        *v10 = v5;
        v71 = v8;
        sub_1D885E420(v8, v10 + v14, type metadata accessor for CVBundle);
        sub_1D87A0E38(v10, v11, &qword_1ECA64250);
        v15 = *(v72 + 48);
        *v12 = *v11;
        sub_1D885E538(v11 + v15, v12 + v15, type metadata accessor for CVBundle);
        sub_1D885E420(v12 + v15, v13, type metadata accessor for CVBundle.BundleType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v17 = v0[31];
        v18 = v0[29];
        if (EnumCaseMultiPayload == 1)
        {
          v19 = *v69;
          (*v69)(v0[31], v0[28], v0[29]);
        }

        else
        {
          v20 = v0[26];
          sub_1D885E538(v0[28], v20, type metadata accessor for CVTrackSnapshot);
          (*v68)(v17, v20, v18);
          sub_1D885E3C0(v20, type metadata accessor for CVTrackSnapshot);
          v19 = *v69;
        }

        v21 = v0[38];
        v23 = v0[35];
        v22 = v0[36];
        v24 = v0[34];
        v25 = v0[32];
        v19(v25, v0[31], v0[29]);
        sub_1D87A14E4(v22, &qword_1ECA64250);
        sub_1D87A0E38(v21, v23, &qword_1ECA64250);
        v26 = *v23;
        v27 = *(v72 + 48);
        *v24 = *v23;
        sub_1D885E538(v23 + v27, v24 + v27, type metadata accessor for CVBundle);
        sub_1D87A14E4(v24, &qword_1ECA64250);
        sub_1D87A14E4(v21, &qword_1ECA64250);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v9;
        v29 = sub_1D87EF764(v25);
        v31 = v9[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v35 = v30;
        if (v9[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = v29;
            sub_1D89686B4();
            v29 = v43;
            v9 = v74;
          }
        }

        else
        {
          v36 = v0[32];
          sub_1D89701F8(v34, isUniquelyReferenced_nonNull_native);
          v9 = v74;
          v29 = sub_1D87EF764(v36);
          if ((v35 & 1) != (v37 & 1))
          {

            return sub_1D8B16C30();
          }
        }

        v38 = v0[32];
        v39 = v0[29];
        if (v35)
        {
          *(v9[7] + 8 * v29) = v26;
          (*v67)(v38, v39);
        }

        else
        {
          v9[(v29 >> 6) + 8] |= 1 << v29;
          v40 = v29;
          (*(v65 + 16))(v9[6] + *(v65 + 72) * v29, v38, v39);
          *(v9[7] + 8 * v40) = v26;
          (*(v65 + 8))(v38, v39);
          v41 = v9[2];
          v33 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v33)
          {
            goto LABEL_35;
          }

          v9[2] = v42;
        }

        ++v5;
        v8 = v71 + v66;
        if (v70 == v5)
        {
          goto LABEL_28;
        }
      }
    }

    v9 = v73;
LABEL_28:
    v59 = v0[18];

    v74 = *v59;
    swift_bridgeObjectRetain_n();

    sub_1D8863EB4(&v74, v9);
    v60 = v0[9];
    swift_bridgeObjectRelease_n();

    *v60 = v74;

    v61 = v0[1];

    return v61();
  }

  else
  {
    sub_1D881F6FC(v1, v0[25], &qword_1ECA64208);
    v44 = swift_getEnumCaseMultiPayload();
    v45 = v0[25];
    if (v44 == 1)
    {
      sub_1D87A14E4(v45, &qword_1ECA64208);
    }

    else
    {
      v46 = v0[21];
      v47 = v0[22];
      v48 = v0[18];
      sub_1D885E538(v45, v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      sub_1D885E420(v47, v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v9 = *v48;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *v48 = v9;
      if ((v49 & 1) == 0)
      {
LABEL_36:
        v62 = v0[18];
        v9 = sub_1D87C7E40(0, v9[2] + 1, 1, v9);
        *v62 = v9;
      }

      v51 = v9[2];
      v50 = v9[3];
      if (v51 >= v50 >> 1)
      {
        v63 = v0[18];
        *v63 = sub_1D87C7E40(v50 > 1, v51 + 1, 1, v9);
      }

      v52 = v0[21];
      v53 = v0[20];
      v54 = v0[18];
      sub_1D885E3C0(v0[22], type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v55 = *v54;
      *(v55 + 16) = v51 + 1;
      sub_1D885E538(v52, v55 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    }

    v56 = swift_task_alloc();
    v0[51] = v56;
    *v56 = v0;
    v56[1] = sub_1D884BB54;
    v57 = v0[47];
    v58 = v0[48];

    return MEMORY[0x1EEE6D8A8](v57, 0, 0, v58);
  }
}

uint64_t sub_1D884C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a1;
  v8[15] = a4;
  type metadata accessor for CVBundle(0);
  v8[20] = swift_task_alloc();
  v9 = sub_1D8B14ED0();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_1D8B14F40();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v11 = sub_1D8B15000();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v12 = sub_1D8B14F20();
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640F0);
  v8[34] = v13;
  v8[35] = *(v13 - 8);
  v8[36] = swift_task_alloc();
  v14 = sub_1D8B14F60();
  v8[37] = v14;
  v8[38] = *(v14 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v8[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D884C7A8, 0, 0);
}

uint64_t sub_1D884C7A8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v2 + *(type metadata accessor for BundleSelector.Output(0) + 20) + 40);
  *(v0 + 352) = v3;
  if (*(v1 + 8))
  {
    sub_1D8847064(*(v0 + 128), *(v0 + 328));
    sub_1D885E538(*(v0 + 328), *(v0 + 112), type metadata accessor for ActionPredictor.BundleActionPredictionResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64208);
    swift_storeEnumTagMultiPayload();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 280);
    v7 = *(v1 + 32);
    **(v0 + 288) = *(v1 + 24);
    (*(v6 + 104))();
    if (v3 && (sub_1D8919304() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64100);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D8B1AB80;
      sub_1D8B14EF0();
      sub_1D8B14EE0();
      *(v0 + 104) = v8;
      sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64108);
      sub_1D881CF20(&qword_1EE0E3958, &qword_1ECA64108);
      sub_1D8B16570();
    }

    else
    {
      sub_1D8B14F00();
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = *(v0 + 184);
    v13 = *(v0 + 136);
    *v10 = v7;
    (*(v9 + 104))(v10, *MEMORY[0x1E69DFB90], v11);
    sub_1D8B14F50();
    *(v0 + 80) = v13;
    sub_1D883934C(v12);
    v14 = swift_task_alloc();
    *(v0 + 336) = v14;
    v15 = sub_1D8B14C10();
    *v14 = v0;
    v14[1] = sub_1D884CB58;
    v16 = *(v0 + 312);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = MEMORY[0x1E69DFA40];

    return MEMORY[0x1EEE4F0E0](v17, v18, v16, v15, v19);
  }
}

uint64_t sub_1D884CB58()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v3 = sub_1D884D07C;
  }

  else
  {
    v3 = sub_1D884CC9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D884CC9C()
{
  v25 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 128);
  sub_1D885E420(v2, *(v0 + 160), type metadata accessor for CVBundle);
  v3 = sub_1D8B14F30();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v23 = sub_1D88205B4(sub_1D8865544, v4, v3);

  if (v1 == 1 && (sub_1D8919304() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64100);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D8B1AB80;
    sub_1D8B14EF0();
    sub_1D8B14EE0();
    *(v0 + 96) = v5;
    sub_1D885E288(&qword_1EE0E3AA0, MEMORY[0x1E69DFB48]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64108);
    sub_1D881CF20(&qword_1EE0E3958, &qword_1ECA64108);
    sub_1D8B16570();
  }

  else
  {
    sub_1D8B14F00();
  }

  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 304);
  v18 = *(v0 + 296);
  v19 = *(v0 + 312);
  v9 = *(v0 + 248);
  v21 = *(v0 + 240);
  v22 = *(v0 + 256);
  v10 = *(v0 + 200);
  v16 = *(v0 + 192);
  v17 = *(v0 + 208);
  v20 = *(v0 + 160);
  CVBundle.latestEstimate.getter(v24);
  v24[1] = v24[0];
  CVDetection.detection.getter((v0 + 16));
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = (*(v12 + 88))(v11, v12);

  (*(v10 + 8))(v17, v16);
  (*(v8 + 8))(v19, v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D885E538(v20, v6, type metadata accessor for CVBundle);
  *(v6 + v7[5]) = v23;
  (*(v9 + 32))(v6 + v7[6], v22, v21);
  *(v6 + v7[7]) = v13;
  sub_1D885E538(*(v0 + 328), *(v0 + 112), type metadata accessor for ActionPredictor.BundleActionPredictionResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64208);
  swift_storeEnumTagMultiPayload();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D884D07C()
{
  v14 = v0;
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E43C0);
  v3 = v1;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16210();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D8B16C90();
    v10 = sub_1D89AC714(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8783000, v4, v5, "VAP.fetchPredictionResult failed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA721330](v7, -1, -1);
    MEMORY[0x1DA721330](v6, -1, -1);
  }

  **(v0 + 112) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64208);
  swift_storeEnumTagMultiPayload();

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1D884D2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v38 = &v35 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  sub_1D885E420(v40, v12, type metadata accessor for CVBundle.BundleType);
  v40 = v7;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v14 + 32);
    v25(v21, v12, v13);
  }

  else
  {
    sub_1D885E538(v12, v6, type metadata accessor for CVTrackSnapshot);
    (*(v14 + 16))(v21, v6, v13);
    sub_1D885E3C0(v6, type metadata accessor for CVTrackSnapshot);
    v25 = *(v14 + 32);
  }

  result = (v25)(v23, v21, v13);
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1D87EF764(v23);
  if ((v27 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = *(*(a3 + 56) + 8 * result);
  sub_1D885E420(v39, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v37;
    (v25)();
  }

  else
  {
    v30 = v36;
    sub_1D885E538(v10, v36, type metadata accessor for CVTrackSnapshot);
    v29 = v37;
    (*(v14 + 16))(v37, v30, v13);
    sub_1D885E3C0(v30, type metadata accessor for CVTrackSnapshot);
  }

  v31 = v38;
  result = (v25)(v38, v29, v13);
  if (!*(a3 + 16))
  {
    goto LABEL_14;
  }

  result = sub_1D87EF764(v31);
  if (v32)
  {
    v33 = *(*(a3 + 56) + 8 * result);
    v34 = *(v14 + 8);
    v34(v31, v13);
    v34(v23, v13);
    return v28 < v33;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D884D6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D885E420(a1, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  else
  {
    sub_1D885E538(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a2, v6, v12);
    return sub_1D885E3C0(v6, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D884D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  v50 = type metadata accessor for ActionPin(0);
  v48 = *(v50 - 1);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = type metadata accessor for CVBundle(0);
  v43 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v42 - v22;
  v45 = a1;
  sub_1D885E420(a1, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v12 + 32);
    v23(v15, v10, v11);
  }

  else
  {
    sub_1D885E538(v10, v7, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v15, v7, v11);
    sub_1D885E3C0(v7, type metadata accessor for CVTrackSnapshot);
    v23 = *(v12 + 32);
  }

  v23(v17, v15, v11);
  v24 = v47;
  if (*(v47 + 16) && (v25 = sub_1D87EF764(v17), (v26 & 1) != 0))
  {
    sub_1D885E420(*(v24 + 56) + *(v43 + 72) * v25, v21, type metadata accessor for CVBundle);
    (*(v12 + 8))(v17, v11);
    v27 = v44;
    sub_1D885E538(v21, v44, type metadata accessor for CVBundle);
    CVBundle.corners.getter(v53);
    v58 = 0;
    CVBundle.latestEstimate.getter(&v52);
    v51[1] = v52;
    CVDetection.detection.getter(&v54);
    v28 = *(&v55 + 1);
    v29 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    (*(v29 + 80))(v51, v28, v29);

    __swift_destroy_boxed_opaque_existential_1(&v54);
    sub_1D8A5A9D8(&v58, v51, &v54);
    v30 = v46;
    sub_1D8821DD0(v46);
    sub_1D885E3C0(v27, type metadata accessor for CVBundle);
    v31 = v49;
    (*(v12 + 16))(v49, v30, v11);
    v32 = v50;
    v33 = &v30[v50[6]];
    v35 = *v33;
    v34 = *(v33 + 1);
    v36 = *&v30[v50[7]];
    LOBYTE(v29) = v30[v50[8]];

    sub_1D885E3C0(v30, type metadata accessor for ActionPin);
    v37 = (v31 + v32[5]);
    v38 = v55;
    *v37 = v54;
    v37[1] = v38;
    v39 = v57;
    v37[2] = v56;
    v37[3] = v39;
    v40 = (v31 + v32[6]);
    *v40 = v35;
    v40[1] = v34;
    *(v31 + v32[7]) = v36;
    *(v31 + v32[8]) = v29;
    return (*(v48 + 56))(v31, 0, 1, v32);
  }

  else
  {
    (*(v12 + 8))(v17, v11);
    return (*(v48 + 56))(v49, 1, 1, v50);
  }
}

uint64_t sub_1D884DE70()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for LoggingSignposter(0);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D884DF04, v0, 0);
}

uint64_t sub_1D884DF04()
{
  if (qword_1EE0E62F8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = __swift_project_value_buffer(v0[11], qword_1EE0E6300);
  sub_1D885E420(v3, v1, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  inited = swift_initStackObject();
  v0[13] = inited;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("ActionPredictor.prepare", 23, 2u, 1, 0, (inited + 16));
  sub_1D885E3C0(v1, type metadata accessor for LoggingSignposter);
  v0[9] = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient);
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = sub_1D8B14C10();
  *v5 = v0;
  v5[1] = sub_1D884E070;
  v7 = MEMORY[0x1E69DFA40];

  return MEMORY[0x1EEE4F0E8](v6, v7);
}

uint64_t sub_1D884E070()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1D884E1F0;
  }

  else
  {
    v4 = sub_1D884E188;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D884E188()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D884E1F0()
{
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E43C0);
  v3 = v1;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16210();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D8783000, v4, v5, "Failed to prewarm action prediction client: %@", v8, 0xCu);
    sub_1D87A14E4(v9, &qword_1ECA63128);
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D884E398(uint64_t a1, uint64_t a2)
{
  *(v2 + 712) = a2;
  *(v2 + 704) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D884E3C0, a1, 0);
}

uint64_t sub_1D884E3C0()
{
  v1 = swift_task_alloc();
  *(v0 + 720) = v1;
  *(v1 + 16) = *(v0 + 704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64210);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1D884E47C, v0 + 656);
}

uint64_t sub_1D884E498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D884E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D884E598;

  return sub_1D884E8DC(a3);
}

uint64_t sub_1D884E598(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D884E698, 0, 0);
}

uint64_t sub_1D884E6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a4;
  v8 = (a5 + *a5);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1D884E7A8;

  return v8();
}

uint64_t sub_1D884E7A8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D884E8B8, v1, 0);
}

uint64_t sub_1D884E8DC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D884E8FC, v1, 0);
}

uint64_t sub_1D884E8FC()
{
  v1 = *(v0 + 64);
  type metadata accessor for ActionPredictor(0);
  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_actionPredictionClient);
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration + 8);
  v4 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration + 16);
  v5 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration + 24);
  v6 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration + 32);
  *(v0 + 16) = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_configuration);
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);
  *(v0 + 72) = v7;

  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1D884EA1C;
  v9 = *(v0 + 56);

  return sub_1D8848E10(v9, v2, v0 + 16, v7);
}

uint64_t sub_1D884EA1C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D884EB50, v2, 0);
}

uint64_t sub_1D884EB50()
{
  if (qword_1EE0E43B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D8B151E0();
  __swift_project_value_buffer(v1, qword_1EE0E43C0);

  v2 = sub_1D8B151C0();
  v3 = sub_1D8B16200();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_1D8783000, v2, v3, "Calling updateOutput with: %ld prediction results", v6, 0xCu);
    MEMORY[0x1DA721330](v6, -1, -1);
  }

  else
  {
  }

  sub_1D883B174(v0[11], v0[7]);
  v7 = v0[1];
  v8 = v0[11];

  return v7(v8);
}

uint64_t sub_1D884ECAC(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CVBundle.BundleType(0);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v34 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v34 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v47 = v34 - v19;
  v20 = type metadata accessor for CVBundle(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v49 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BundleSelector.Output.allBundles.getter();
  v43 = *(result + 16);
  if (v43)
  {
    v34[1] = v1;
    v35 = v15;
    v24 = 0;
    v40 = result + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v41 = v18;
    v38 = (v10 + 32);
    v39 = (v10 + 16);
    v36 = v21;
    v37 = (v10 + 8);
    v42 = result;
    while (v24 < *(result + 16))
    {
      sub_1D885E420(v40 + *(v21 + 72) * v24, v49, type metadata accessor for CVBundle);
      sub_1D885E420(v45, v8, type metadata accessor for CVBundle.BundleType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = v38;
      if (EnumCaseMultiPayload == 1)
      {
        v27 = *v38;
        v28 = v41;
        (*v38)(v41, v8, v9);
      }

      else
      {
        v29 = v44;
        sub_1D885E538(v8, v44, type metadata accessor for CVTrackSnapshot);
        v28 = v41;
        (*v39)(v41, v29, v9);
        sub_1D885E3C0(v29, type metadata accessor for CVTrackSnapshot);
        v27 = *v26;
      }

      v27(v47, v28, v9);
      sub_1D885E420(v49, v6, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27(v48, v6, v9);
      }

      else
      {
        v30 = v44;
        sub_1D885E538(v6, v44, type metadata accessor for CVTrackSnapshot);
        (*v39)(v48, v30, v9);
        v15 = v35;
        sub_1D885E3C0(v30, type metadata accessor for CVTrackSnapshot);
      }

      v27(v15, v48, v9);
      v31 = v47;
      v32 = sub_1D8B13200();
      v33 = *v37;
      (*v37)(v15, v9);
      v33(v31, v9);
      sub_1D885E3C0(v49, type metadata accessor for CVBundle);
      if (v32)
      {

        return 1;
      }

      ++v24;
      result = v42;
      v21 = v36;
      if (v43 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    return 0;
  }

  return result;
}

uint64_t sub_1D884F1BC()
{
  v1 = type metadata accessor for CVBundle(0);
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D8B14F20();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v6 = *(v46 - 8);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_predictionResults);
  v14 = *(v13 + 16);

  v42 = v14;
  if (v14)
  {
    v16 = 0;
    v40 = (v4 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v38 = v6;
    v39 = v3;
    v41 = v13;
    while (v16 < *(v13 + 16))
    {
      v18 = v17;
      v19 = v3;
      v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v21 = v6;
      v22 = *(v6 + 72);
      sub_1D885E420(v13 + v20 + v22 * v16, v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v23 = v43;
      sub_1D8B14F00();
      sub_1D885E288(&qword_1ECA64118, MEMORY[0x1E69DFB48]);
      v24 = v44;
      v25 = sub_1D8B158C0();
      (*v40)(v23, v24);
      if (v25)
      {
        result = sub_1D885E3C0(v12, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v13 = v41;
        v3 = v19;
        v17 = v18;
        v6 = v21;
      }

      else
      {
        sub_1D885E538(v12, v45, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v17 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F40FC(0, *(v18 + 16) + 1, 1);
          v17 = v48;
        }

        v13 = v41;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D87F40FC(v27 > 1, v28 + 1, 1);
          v13 = v41;
          v17 = v48;
        }

        *(v17 + 16) = v28 + 1;
        result = sub_1D885E538(v45, v17 + v20 + v28 * v22, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v6 = v38;
        v3 = v39;
      }

      if (v42 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v29 = *(v17 + 16);
    if (v29)
    {
      v48 = MEMORY[0x1E69E7CC0];
      sub_1D87F4074(0, v29, 0);
      v30 = v48;
      v31 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v32 = *(v6 + 72);
      v33 = v37;
      do
      {
        v34 = v47;
        sub_1D885E420(v31, v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D885E420(v34, v3, type metadata accessor for CVBundle);
        sub_1D885E3C0(v34, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v48 = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1D87F4074(v35 > 1, v36 + 1, 1);
          v30 = v48;
        }

        *(v30 + 16) = v36 + 1;
        sub_1D885E538(v3, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v36, type metadata accessor for CVBundle);
        v31 += v32;
        --v29;
      }

      while (v29);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v30;
  }

  return result;
}

uint64_t ActionPredictor.deinit()
{

  swift_unknownObjectRelease();

  sub_1D87A14E4(v0 + 152, &qword_1ECA64120);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_latestBundleSelectorOutput, &qword_1ECA640E8);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_selection, &qword_1ECA640E0);

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_outputStreamBufferingPolicy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D885E5A0(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActionPredictor.__deallocating_deinit()
{
  ActionPredictor.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

double *sub_1D884F874@<X0>(void *a1@<X8>)
{
  CVBundle.corners.getter(v12);
  v11 = 0;
  CVBundle.latestEstimate.getter(&v10);
  v9 = v10;
  CVDetection.detection.getter(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 80))(&v5, v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return sub_1D8A5A9D8(&v11, &v5, a1);
}

char sub_1D884F92C()
{
  v1 = type metadata accessor for BuiltInAction(0);
  v99 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v96 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v91 = (&v81 - v8);
  v87 = type metadata accessor for BundleClassification(0);
  v95 = *(v87 - 8);
  v9 = MEMORY[0x1EEE9AC00](v87);
  v102 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v81 - v15;
  v17 = type metadata accessor for BundleClassification.ClassificationType(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v98 = (&v81 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v94 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v81 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v26 = MEMORY[0x1EEE9AC00](v84);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v100 = (&v81 - v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410);
  v30 = *(v18 + 72);
  v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D8B1AB70;
  v33 = (v32 + v31);
  *v33 = MEMORY[0x1E69E7CC0];
  *(v33 + 1) = 0xBFF0000000000000;
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v34 - 8) + 56))(&v33[v30], 1, 1, v34);
  swift_storeEnumTagMultiPayload();
  v35 = &v33[2 * v30];
  *v35 = xmmword_1D8B190C0;
  *(v35 + 2) = 0xE700000000000000;
  *(v35 + 3) = 0x7974706D65;
  *(v35 + 4) = 0xE500000000000000;
  *(v35 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D8A4DDAC(v32);
  swift_setDeallocating();
  v101 = v17;
  v37 = v0;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v104 = v36;
  CVBundle.latestEstimate.getter(&v103);
  if (v103 >> 60)
  {
  }

  else
  {
    v38 = swift_projectBox();
    v39 = v100;
    sub_1D87A0E38(v38, v100, &qword_1ECA67750);

    v40 = sub_1D8A05CB0();
    v41 = sub_1D88E0474(&unk_1F54258D8, v40);

    if ((v41 & 1) == 0)
    {
      v42 = v94;
      swift_storeEnumTagMultiPayload();
      v43 = v85;
      sub_1D87F8208(v85, v42);
      sub_1D885E3C0(v43, type metadata accessor for BundleClassification.ClassificationType);
    }

    sub_1D87A14E4(v39, &qword_1ECA67750);
  }

  v44 = CVBundle.classifications.getter();
  v45 = sub_1D8860378(v44, &v104);

  v46 = *(v45 + 16);
  if (!v46)
  {

    v51 = v95;
    v52 = v87;
    (*(v95 + 56))(v16, 1, 1, v87);
LABEL_10:
    v53 = v86;
    sub_1D87A0E38(v16, v86, &qword_1ECA641B8);
    if ((*(v51 + 48))(v53, 1, v52) == 1)
    {
      sub_1D87A14E4(v53, &qword_1ECA641B8);
    }

    else
    {
      v46 = v85;
      sub_1D885E420(v53, v85, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D885E3C0(v53, type metadata accessor for BundleClassification);
      v54 = sub_1D8850A24();
      v56 = v55;
      sub_1D885E3C0(v46, type metadata accessor for BundleClassification.ClassificationType);
      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        sub_1D87A14E4(v16, &qword_1ECA641B8);
LABEL_80:

        LOBYTE(v68) = v54;
        return v68;
      }
    }

    CVBundle.latestEstimate.getter(&v103);
    if (v103 >> 60)
    {

      sub_1D87A14E4(v16, &qword_1ECA641B8);
      LOBYTE(v54) = 113;
    }

    else
    {
      v78 = swift_projectBox();
      sub_1D87A0E38(v78, v28, &qword_1ECA67750);

      v79 = *&v28[*(v84 + 44)];
      if (!*(v79 + 16))
      {
        goto LABEL_82;
      }

      LOBYTE(v68) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v79 + 32));
      if (v103 == 181)
      {
        goto LABEL_89;
      }

      LOBYTE(v54) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.systemImage.getter();
      sub_1D87A14E4(v16, &qword_1ECA641B8);
      sub_1D87A14E4(v28, &qword_1ECA67750);
    }

    goto LABEL_80;
  }

  v81 = v28;
  v82 = v16;
  v83 = v37;
  v94 = v45 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
  v47 = v90;
  sub_1D885E420(v94, v90, type metadata accessor for BundleClassification);
  v48 = v88;
  v49 = v89;
  v50 = v91;
  if (v46 == 1)
  {
LABEL_8:

    v16 = v82;
    sub_1D885E538(v47, v82, type metadata accessor for BundleClassification);
    v51 = v95;
    v52 = v87;
    (*(v95 + 56))(v16, 0, 1, v87);
    v28 = v81;
    goto LABEL_10;
  }

  v58 = v99;
  v99 += 6;
  v100 = v58 + 7;
  v59 = 1;
  v92 = v46;
  v93 = v45;
  while (v59 < *(v45 + 16))
  {
    sub_1D885E420(v94 + *(v95 + 72) * v59, v102, type metadata accessor for BundleClassification);
    sub_1D885E420(v47, v98, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *v50 = *v98;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        v46 = *v100;
        (*v100)(v50, 0, 1, v1);
        goto LABEL_31;
      }

      swift_storeEnumTagMultiPayload();
      v46 = *v100;
      (*v100)(v50, 0, 1, v1);
      sub_1D885E3C0(v98, type metadata accessor for BundleClassification.ClassificationType);
    }

    else
    {
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_86;
        }

        *v50 = *v98;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_87;
      }

      v61 = *v98;
      v62 = v98[1];
      v63 = v98[2];
      v64 = v98[3];
      v65 = v98[4];

      v66 = v91;
      *v91 = v62;
      v66[1] = v63;
      v66[2] = v64;
      v66[3] = v65;
      v50 = v66;
      swift_storeEnumTagMultiPayload();
      v46 = *v100;
      (*v100)(v50, 0, 1, v1);
      v47 = v90;
    }

LABEL_31:
    v67 = *v99;
    v68 = (*v99)(v50, 1, v1);
    if (v68 == 1)
    {
      goto LABEL_88;
    }

    ++v59;
    sub_1D885E420(v50, v48, type metadata accessor for BuiltInAction);
    v69 = 1000;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D885E3C0(v48, type metadata accessor for BuiltInAction);
        v69 = 900;
        break;
      case 2u:
        sub_1D885E3C0(v48, type metadata accessor for BuiltInAction);
        goto LABEL_39;
      case 3u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

        sub_1D87A14E4(v48, &qword_1ECA635B8);
        goto LABEL_41;
      case 4u:
        break;
      case 5u:
        v69 = 600;
        break;
      case 6u:
      case 0xDu:
      case 0xEu:
LABEL_39:
        v69 = 50;
        break;
      case 7u:
        v69 = 350;
        break;
      case 8u:
        v69 = 20;
        break;
      case 9u:
        v69 = 400;
        break;
      case 0xAu:
        v69 = 850;
        break;
      case 0xBu:
      case 0xCu:
        v69 = 100;
        break;
      case 0xFu:
      case 0x10u:
LABEL_41:
        v69 = 0;
        break;
      default:
        sub_1D885E3C0(v48, type metadata accessor for BuiltInAction);
        v69 = 700;
        break;
    }

    sub_1D885E3C0(v50, type metadata accessor for BuiltInAction);
    sub_1D885E420(v102, v97, type metadata accessor for BundleClassification.ClassificationType);
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 <= 5)
    {
      if (v70 <= 1)
      {
        if (v70)
        {
          swift_storeEnumTagMultiPayload();
          (v46)(v49, 0, 1, v1);
          sub_1D885E3C0(v97, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_57;
        }

        *v49 = *v97;
      }

      else
      {
        if (v70 <= 3)
        {
          if (v70 != 2)
          {
            goto LABEL_84;
          }

          v72 = *v97;
          v71 = v97[1];
          v74 = v97[2];
          v73 = v97[3];
          v75 = v97[4];

          v76 = v89;
          *v89 = v71;
          v76[1] = v74;
          v76[2] = v73;
          v76[3] = v75;
          v49 = v76;
          swift_storeEnumTagMultiPayload();
          (v46)(v49, 0, 1, v1);
          v48 = v88;
          v47 = v90;
          v50 = v91;
          goto LABEL_57;
        }

        if (v70 != 5)
        {
          goto LABEL_83;
        }

        *v49 = *v97;
      }
    }

    swift_storeEnumTagMultiPayload();
    (v46)(v49, 0, 1, v1);
LABEL_57:
    if (v67(v49, 1, v1) == 1)
    {
      goto LABEL_85;
    }

    sub_1D885E420(v49, v96, type metadata accessor for BuiltInAction);
    v46 = 1000;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D885E3C0(v96, type metadata accessor for BuiltInAction);
        v46 = 900;
        break;
      case 2u:
        sub_1D885E3C0(v96, type metadata accessor for BuiltInAction);
        goto LABEL_65;
      case 3u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
        v77 = v96;

        sub_1D87A14E4(v77, &qword_1ECA635B8);
        goto LABEL_67;
      case 4u:
        break;
      case 5u:
        v46 = 600;
        break;
      case 6u:
      case 0xDu:
      case 0xEu:
LABEL_65:
        v46 = 50;
        break;
      case 7u:
        v46 = 350;
        break;
      case 8u:
        v46 = 20;
        break;
      case 9u:
        v46 = 400;
        break;
      case 0xAu:
        v46 = 850;
        break;
      case 0xBu:
      case 0xCu:
        v46 = 100;
        break;
      case 0xFu:
      case 0x10u:
LABEL_67:
        v46 = 0;
        break;
      default:
        sub_1D885E3C0(v96, type metadata accessor for BuiltInAction);
        v46 = 700;
        break;
    }

    sub_1D885E3C0(v49, type metadata accessor for BuiltInAction);
    if (v69 >= v46)
    {
      sub_1D885E3C0(v102, type metadata accessor for BundleClassification);
    }

    else
    {
      sub_1D885E3C0(v47, type metadata accessor for BundleClassification);
      sub_1D885E538(v102, v47, type metadata accessor for BundleClassification);
    }

    v45 = v93;
    if (v92 == v59)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  sub_1D885E3C0(v97, type metadata accessor for BundleClassification.ClassificationType);
LABEL_84:
  (v46)(v89, 1, 1, v1);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_1D885E3C0(v98, type metadata accessor for BundleClassification.ClassificationType);
LABEL_87:
  LOBYTE(v68) = (*v100)(v91, 1, 1, v1);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return v68;
}