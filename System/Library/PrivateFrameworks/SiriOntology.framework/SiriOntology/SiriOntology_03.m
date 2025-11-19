uint64_t sub_1C055DF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1C0575968(v21, v18, a4);
        sub_1C0575968(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_1C0575908(v15, a6);
        sub_1C0575908(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1C055E108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v41 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v11 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v41 - v12;
  v52 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  v14 = *(*(v52 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v52);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v20 = (&v41 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_22;
  }

  if (!v21 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v47 = (&v41 - v19);
  v48 = (v5 + 48);
  v42 = (v5 + 32);
  v43 = (v5 + 8);
  v45 = *(v18 + 72);
  v25 = &qword_1EBE16D68;
  while (1)
  {
    result = sub_1C0575968(v23, v20, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
    if (!v21)
    {
      __break(1u);
      return result;
    }

    v51 = v21;
    sub_1C0575968(v24, v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
    v27 = *(v52 + 24);
    v28 = *(v50 + 48);
    sub_1C05149F8(v20 + v27, v13, v25, &unk_1C09933C0);
    sub_1C05149F8(v17 + v27, &v13[v28], v25, &unk_1C09933C0);
    v29 = v25;
    v30 = *v48;
    if ((*v48)(v13, 1, v4) == 1)
    {
      if (v30(&v13[v28], 1, v4) == 1)
      {
        sub_1C05145B4(v13, v25, &unk_1C09933C0);
        goto LABEL_11;
      }

      sub_1C0575908(v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
      sub_1C0575908(v20, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
LABEL_19:
      sub_1C05145B4(v13, &qword_1EBE16D70, &qword_1C0970440);
      goto LABEL_22;
    }

    sub_1C05149F8(v13, v49, v25, &unk_1C09933C0);
    if (v30(&v13[v28], 1, v4) == 1)
    {
      sub_1C0575908(v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
      sub_1C0575908(v20, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
      (*v43)(v49, v4);
      goto LABEL_19;
    }

    v31 = &v13[v28];
    v32 = v4;
    v33 = v49;
    v34 = v46;
    (*v42)(v46, v31, v32);
    sub_1C0575584(&qword_1EBE16D78, 255, MEMORY[0x1E69D2680]);
    v44 = sub_1C095D73C();
    v35 = *v43;
    v36 = v34;
    v37 = v33;
    v4 = v32;
    (*v43)(v36, v32);
    v35(v37, v32);
    sub_1C05145B4(v13, v29, &unk_1C09933C0);
    v25 = v29;
    if ((v44 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v20 = v47;
    if (*v47 != *v17)
    {
      sub_1C0575908(v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
      v40 = v20;
      goto LABEL_21;
    }

    v38 = *(v52 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v39 = sub_1C095D73C();
    sub_1C0575908(v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
    sub_1C0575908(v20, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
    if (v39)
    {
      v21 = v51 - 1;
      v24 += v45;
      v23 += v45;
      if (v51 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  sub_1C0575908(v17, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
  v40 = v47;
LABEL_21:
  sub_1C0575908(v40, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance);
LABEL_22:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1C055E730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1C0575584(&qword_1EBE16D78, 255, MEMORY[0x1E69D2680]);
    v22 = sub_1C095D73C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055E99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
      sub_1C0575968(v15, v8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = *(v11 + 1);
      v18 = *(v8 + 1);
      if (v8[16] == 1)
      {
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v17 != 2)
            {
              break;
            }
          }

          else if (v17 != 3)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v17 != 1)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v20 = sub_1C095D73C();
      sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
      sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
    sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C055EC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
      sub_1C0575968(v15, v8, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_1C0724B48(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      if ((sub_1C095D73C() & 1) == 0)
      {
        break;
      }

      sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
      sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
    sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_TurnInput);
  }

  return 0;
}

uint64_t sub_1C055EEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB8, &unk_1C0970480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v49 - v14;
  v60 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v15 = *(*(v60 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v60);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v49 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_22;
  }

  if (!v22 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v53 = v11;
  v54 = v18;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v55 = (v5 + 48);
  v56 = &v49 - v20;
  v26 = *(v19 + 72);
  v51 = v4;
  v52 = v26;
  v50 = v12;
  while (1)
  {
    sub_1C0575968(v24, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    v58 = v24;
    sub_1C0575968(v25, v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    v27 = *(v60 + 24);
    v28 = *(v12 + 48);
    v29 = v21 + v27;
    v30 = v59;
    sub_1C05149F8(v29, v59, &qword_1EBE16DB0, &qword_1C0970478);
    sub_1C05149F8(v18 + v27, v30 + v28, &qword_1EBE16DB0, &qword_1C0970478);
    v31 = *v55;
    if ((*v55)(v30, 1, v4) != 1)
    {
      break;
    }

    v32 = v31(v30 + v28, 1, v4);
    v18 = v54;
    if (v32 != 1)
    {
      goto LABEL_18;
    }

    sub_1C05145B4(v30, &qword_1EBE16DB0, &qword_1C0970478);
    v21 = v56;
LABEL_12:
    if ((sub_1C055EEC0(*v21, *v18) & 1) == 0)
    {
      goto LABEL_21;
    }

    v43 = *(v60 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v44 = sub_1C095D73C();
    sub_1C0575908(v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    sub_1C0575908(v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
    if (v44)
    {
      v25 += v52;
      v24 = v58 + v52;
      if (--v22)
      {
        continue;
      }
    }

    return v44 & 1;
  }

  v33 = v53;
  sub_1C05149F8(v30, v53, &qword_1EBE16DB0, &qword_1C0970478);
  if (v31(v30 + v28, 1, v4) == 1)
  {
    sub_1C0575908(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    v18 = v54;
LABEL_18:
    v45 = &qword_1EBE16DB8;
    v46 = &unk_1C0970480;
    v47 = v30;
    goto LABEL_20;
  }

  v34 = v57;
  sub_1C0575688(v30 + v28, v57, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v35 = *(v4 + 20);
  v36 = *(v33 + v35);
  v37 = *(v34 + v35);
  v18 = v54;
  if (v36 == v37 || (v38 = *(v33 + v35), , , v39 = sub_1C073D9FC(v36, v37), , , v39))
  {
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v40 = v53;
    v41 = v57;
    v42 = sub_1C095D73C();
    sub_1C0575908(v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C0575908(v40, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C05145B4(v59, &qword_1EBE16DB0, &qword_1C0970478);
    v12 = v50;
    v4 = v51;
    v21 = v56;
    if ((v42 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_1C0575908(v57, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  sub_1C0575908(v53, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v45 = &qword_1EBE16DB0;
  v46 = &qword_1C0970478;
  v47 = v59;
LABEL_20:
  sub_1C05145B4(v47, v45, v46);
  v21 = v56;
LABEL_21:
  sub_1C0575908(v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  sub_1C0575908(v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
LABEL_22:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1C055F644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v79 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = (&v71 - v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D98, &unk_1C0970460);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v71 - v12;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v84 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = (&v71 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA8, &qword_1C0970470);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - v22;
  v88 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v24 = *(*(v88 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v88);
  v89 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v71 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_40;
  }

  if (!v30 || a1 == a2)
  {
    v66 = 1;
    return v66 & 1;
  }

  v74 = &v71 - v28;
  v75 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = (v14 + 48);
  v34 = a2 + v31;
  v72 = v20;
  v73 = (v5 + 48);
  v77 = *(v27 + 72);
  v78 = v33;
  v71 = v23;
  v76 = v13;
  while (1)
  {
    result = sub_1C0575968(v32, v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (!v30)
    {
      __break(1u);
      return result;
    }

    v36 = v89;
    sub_1C0575968(v34, v89, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (*v29 != *v36 || v29[1] != v89[1])
    {
      goto LABEL_39;
    }

    v85 = v32;
    v86 = v30;
    v83 = v34;
    v37 = *(v88 + 28);
    v38 = *(v20 + 48);
    sub_1C05149F8(v29 + v37, v23, &qword_1EBE16DA0, &qword_1C0997A60);
    sub_1C05149F8(v89 + v37, &v23[v38], &qword_1EBE16DA0, &qword_1C0997A60);
    v39 = *v78;
    if ((*v78)(v23, 1, v13) == 1)
    {
      v40 = v39(&v23[v38], 1, v13);
      v41 = v86;
      if (v40 == 1)
      {
        v42 = v13;
        sub_1C05145B4(v23, &qword_1EBE16DA0, &qword_1C0997A60);
        v43 = v85;
        goto LABEL_23;
      }

      sub_1C0575908(v89, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v69 = v29;
      v70 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge;
LABEL_31:
      sub_1C0575908(v69, v70);
      sub_1C05145B4(v23, &qword_1EBE16DA8, &qword_1C0970470);
      goto LABEL_40;
    }

    v44 = v87;
    sub_1C05149F8(v23, v87, &qword_1EBE16DA0, &qword_1C0997A60);
    if (v39(&v23[v38], 1, v13) == 1)
    {
      sub_1C0575908(v89, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v70 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel;
      v69 = v44;
      goto LABEL_31;
    }

    v45 = &v23[v38];
    v46 = v84;
    sub_1C0575688(v45, v84, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (*v44 != *v46 || v44[1] != v46[1])
    {
      v68 = v46;
      goto LABEL_37;
    }

    v47 = *(v76 + 28);
    v48 = *(v81 + 48);
    v49 = v44 + v47;
    v50 = v82;
    sub_1C05149F8(v49, v82, &qword_1EBE16D90, &qword_1C0970458);
    sub_1C05149F8(v46 + v47, v50 + v48, &qword_1EBE16D90, &qword_1C0970458);
    v51 = *v73;
    v52 = v75;
    if ((*v73)(v50, 1, v75) == 1)
    {
      v53 = v51(v50 + v48, 1, v52);
      v43 = v85;
      v41 = v86;
      if (v53 == 1)
      {
        sub_1C05145B4(v50, &qword_1EBE16D90, &qword_1C0970458);
        v29 = v74;
        goto LABEL_22;
      }

      sub_1C0575908(v84, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_34:
      v29 = v74;
      sub_1C05145B4(v50, &qword_1EBE16D98, &unk_1C0970460);
      goto LABEL_38;
    }

    v54 = v80;
    sub_1C05149F8(v50, v80, &qword_1EBE16D90, &qword_1C0970458);
    v55 = v51(v50 + v48, 1, v52);
    v43 = v85;
    v41 = v86;
    if (v55 == 1)
    {
      sub_1C0575908(v84, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      sub_1C0575908(v54, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
      v23 = v71;
      goto LABEL_34;
    }

    v56 = v50 + v48;
    v57 = v79;
    sub_1C0575688(v56, v79, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    if ((*v54 != *v57 || v54[1] != v57[1]) && (sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

    v58 = *(v75 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v59 = sub_1C095D73C();
    sub_1C0575908(v57, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C0575908(v54, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C05145B4(v82, &qword_1EBE16D90, &qword_1C0970458);
    v23 = v71;
    v29 = v74;
    if ((v59 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_22:
    v42 = v76;
    v60 = *(v76 + 24);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v61 = v87;
    v62 = v84;
    v63 = sub_1C095D73C();
    sub_1C0575908(v62, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C0575908(v61, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C05145B4(v23, &qword_1EBE16DA0, &qword_1C0997A60);
    v20 = v72;
    if ((v63 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v64 = *(v88 + 24);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v65 = v89;
    v66 = sub_1C095D73C();
    sub_1C0575908(v65, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (v66)
    {
      v34 = v83 + v77;
      v32 = v43 + v77;
      v67 = v41 == 1;
      v30 = v41 - 1;
      v13 = v42;
      if (!v67)
      {
        continue;
      }
    }

    return v66 & 1;
  }

  sub_1C0575908(v57, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C0575908(v54, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C05145B4(v82, &qword_1EBE16D90, &qword_1C0970458);
  v23 = v71;
  v29 = v74;
LABEL_36:
  v68 = v84;
LABEL_37:
  sub_1C0575908(v68, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_38:
  sub_1C0575908(v87, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C05145B4(v23, &qword_1EBE16DA0, &qword_1C0997A60);
LABEL_39:
  sub_1C0575908(v89, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
  sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
LABEL_40:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_1C056013C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0575968(v15, v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      if (*v11 != *v8 || (sub_1C055BF38(*(v11 + 1), *(v8 + 1)) & 1) == 0 || *(v11 + 4) != *(v8 + 4))
      {
        break;
      }

      v17 = *(v4 + 28);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v18 = sub_1C095D73C();
      sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1C05603B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            if (v5 != 2)
            {
              return 0;
            }
          }

          else if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v5 != 1)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C0560458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      sub_1C0575968(v15, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(v11[2], v8[2]) & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v19 = sub_1C095D73C();
      sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
    sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1C05606D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v128 = (&v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  v7 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v9 = &v105 - v8;
  v127 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v10 = *(v127 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v127);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v121 = (&v105 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v125 = &v105 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  v21 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v105 - v22;
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v24 = *(v23 - 8);
  v130 = v23;
  v131 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v105 - v29;
  v31 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v33);
  v39 = &v105 - v38;
  v40 = *(a1 + 16);
  if (v40 != *(a2 + 16))
  {
LABEL_97:
    v101 = 0;
    return v101 & 1;
  }

  if (!v40 || a1 == a2)
  {
    v101 = 1;
    return v101 & 1;
  }

  v115 = v36;
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = a1 + v41;
  v43 = 0;
  v119 = a2 + v41;
  v111 = v9;
  v112 = (v10 + 48);
  v44 = *(v37 + 72);
  v105 = v4;
  v120 = v40;
  v113 = v44;
  v114 = v42;
  v122 = v35;
  while (1)
  {
    v45 = v44 * v43;
    result = sub_1C0575968(v42 + v44 * v43, v39, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    if (v43 == v120)
    {
      break;
    }

    result = sub_1C0575968(v119 + v45, v35, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    v47 = &qword_1EBE16D40;
    if (*v39 != *v35 || (v48 = *(v39 + 1), v49 = *(v122 + 1), v50 = *(v48 + 16), v50 != *(v49 + 16)))
    {
LABEL_96:
      sub_1C0575908(v122, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
      sub_1C0575908(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
      goto LABEL_97;
    }

    if (v50 && v48 != v49)
    {
      v51 = 0;
      v52 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v116 = v49 + v52;
      v117 = v48 + v52;
      v110 = v14;
      v108 = v43;
      v109 = v48;
      v107 = v49;
      v106 = v50;
      while (1)
      {
        if (v51 >= *(v48 + 16))
        {
          goto LABEL_101;
        }

        v53 = v47;
        v54 = v51;
        v55 = *(v131 + 72) * v51;
        result = sub_1C0575968(v117 + v55, v30, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v56 = *(v49 + 16);
        v118 = v54;
        if (v54 >= v56)
        {
          goto LABEL_102;
        }

        sub_1C0575968(v116 + v55, v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v47 = v53;
        if ((*v30 != *v28 || *(v30 + 1) != *(v28 + 1)) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_95;
        }

        result = *(v30 + 2);
        if (result != *(v28 + 2) || *(v30 + 3) != *(v28 + 3))
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }
        }

        if (*(v30 + 4) != *(v28 + 4))
        {
          goto LABEL_95;
        }

        if (v30[40] != v28[40])
        {
          goto LABEL_95;
        }

        v57 = *(v30 + 6);
        v58 = *(v28 + 6);
        v59 = *(v57 + 16);
        if (v59 != *(v58 + 16))
        {
          goto LABEL_95;
        }

        if (v59 && v57 != v58)
        {
          v60 = (v57 + 40);
          v61 = (v58 + 40);
          do
          {
            result = *(v60 - 1);
            v62 = result == *(v61 - 1) && *v60 == *v61;
            if (!v62)
            {
              result = sub_1C095DF3C();
              if ((result & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            v60 += 2;
            v61 += 2;
          }

          while (--v59);
        }

        v63 = *(v30 + 7);
        v64 = *(v28 + 7);
        v65 = *(v63 + 16);
        if (v65 != *(v64 + 16))
        {
          goto LABEL_95;
        }

        if (v65 && v63 != v64)
        {
          break;
        }

LABEL_38:
        v67 = v129;
        v68 = *(v130 + 40);
        v69 = *(v126 + 48);
        sub_1C05149F8(&v30[v68], v129, v53, &qword_1C09A7AD0);
        sub_1C05149F8(&v28[v68], v67 + v69, v53, &qword_1C09A7AD0);
        v70 = *v112;
        v71 = v127;
        if ((*v112)(v67, 1, v127) == 1)
        {
          v62 = v70(v67 + v69, 1, v71) == 1;
          v14 = v110;
          v48 = v109;
          v72 = v67;
          if (!v62)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v73 = v47;
          v74 = v125;
          sub_1C05149F8(v67, v125, v73, &qword_1C09A7AD0);
          if (v70(v67 + v69, 1, v71) == 1)
          {
            sub_1C0575908(v74, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v72 = v67;
LABEL_89:
            v102 = &qword_1EBE16D48;
            v103 = &qword_1C0970410;
            goto LABEL_94;
          }

          v75 = v124;
          sub_1C0575688(v67 + v69, v124, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v76 = v111;
          v77 = &v111[*(v123 + 48)];
          sub_1C0575968(v74, v111, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575968(v75, v77, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v78 = v110;
            sub_1C0575968(v76, v110, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v47 = &qword_1EBE16D40;
            v48 = v109;
            if (EnumCaseMultiPayload != 1)
            {
              sub_1C0575908(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              goto LABEL_92;
            }

            v80 = v77;
            v81 = v128;
            sub_1C0575688(v80, v128, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            v14 = v78;
            if ((*v78 != *v81 || *(v78 + 1) != v81[1]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            if ((*(v78 + 2) != v128[2] || *(v78 + 3) != v128[3]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            if ((*(v78 + 4) != v128[4] || *(v78 + 5) != v128[5]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            v82 = *(v78 + 6);
            v83 = v128[6];
            v84 = *(v82 + 16);
            if (v84 != *(v83 + 16))
            {
              goto LABEL_86;
            }

            if (v84 && v82 != v83)
            {
              v85 = (v82 + 40);
              v86 = (v83 + 40);
              while (1)
              {
                v87 = *(v85 - 1) == *(v86 - 1) && *v85 == *v86;
                if (!v87 && (sub_1C095DF3C() & 1) == 0)
                {
                  break;
                }

                v85 += 2;
                v86 += 2;
                if (!--v84)
                {
                  goto LABEL_76;
                }
              }

LABEL_86:
              sub_1C0575908(v128, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              sub_1C0575908(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_87:
              sub_1C0575908(v111, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_93:
              v104 = v125;
              sub_1C0575908(v124, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              sub_1C0575908(v104, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              v102 = &qword_1EBE16D40;
              v103 = &qword_1C09A7AD0;
              v72 = v129;
LABEL_94:
              sub_1C05145B4(v72, v102, v103);
LABEL_95:
              sub_1C0575908(v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              sub_1C0575908(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              goto LABEL_96;
            }

LABEL_76:
            v96 = *(v105 + 32);
            sub_1C095D38C();
            sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
            if ((sub_1C095D73C() & 1) == 0)
            {
              goto LABEL_86;
            }

            sub_1C0575908(v128, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            sub_1C0575908(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          }

          else
          {
            v91 = v121;
            sub_1C0575968(v76, v121, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v93 = *v91;
            v92 = v91[1];
            v47 = &qword_1EBE16D40;
            if (swift_getEnumCaseMultiPayload() == 1)
            {

LABEL_92:
              sub_1C05145B4(v111, &qword_1EBE16D38, &unk_1C0970400);
              goto LABEL_93;
            }

            v94 = *v77;
            v95 = *(v77 + 1);
            if (v93 == v94 && v92 == v95)
            {

              v14 = v110;
              v48 = v109;
            }

            else
            {
              v97 = sub_1C095DF3C();

              v14 = v110;
              v48 = v109;
              if ((v97 & 1) == 0)
              {
                goto LABEL_87;
              }
            }
          }

          sub_1C0575908(v111, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v124, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v125, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v72 = v129;
        }

        sub_1C05145B4(v72, v47, &qword_1C09A7AD0);
        v98 = *(v130 + 44);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        v99 = sub_1C095D73C();
        sub_1C0575908(v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        result = sub_1C0575908(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v43 = v108;
        v49 = v107;
        if ((v99 & 1) == 0)
        {
          goto LABEL_96;
        }

        v51 = v118 + 1;
        if (v118 + 1 == v106)
        {
          goto LABEL_82;
        }
      }

      v88 = (v63 + 40);
      v89 = (v64 + 40);
      while (v65)
      {
        result = *(v88 - 1);
        if (result != *(v89 - 1) || *v88 != *v89)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }
        }

        v88 += 2;
        v89 += 2;
        if (!--v65)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      break;
    }

LABEL_82:
    v100 = *(v115 + 24);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v35 = v122;
    v101 = sub_1C095D73C();
    sub_1C0575908(v35, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    sub_1C0575908(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    if (v101)
    {
      ++v43;
      v44 = v113;
      v42 = v114;
      if (v43 != v120)
      {
        continue;
      }
    }

    return v101 & 1;
  }

  __break(1u);
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_1C0561484(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v4 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v102 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v86 - v8;
  v101 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v10 = *(v101 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v101);
  v103 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97 = (&v86 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v86 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v22 = &v86 - v21;
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v86 - v30;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_89:
    v82 = 0;
    return v82 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v82 = 1;
    return v82 & 1;
  }

  v95 = v28;
  v90 = v9;
  v91 = v32;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v36 = 0;
  v37 = *(v29 + 72);
  v38 = &qword_1C09A7AD0;
  v39 = v101;
  v88 = v37;
  v89 = v34;
  v92 = (v10 + 48);
  v93 = v35;
  while (1)
  {
    v40 = v37 * v36;
    result = sub_1C0575968(v34 + v37 * v36, v31, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    if (v36 == v32)
    {
      goto LABEL_92;
    }

    v94 = v36;
    sub_1C0575968(v93 + v40, v27, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    v42 = *v31 == *v27 && *(v31 + 1) == *(v27 + 1);
    if (!v42 && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_88;
    }

    result = *(v31 + 2);
    if (result != *(v27 + 2) || *(v31 + 3) != *(v27 + 3))
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    if (*(v31 + 4) != *(v27 + 4))
    {
      goto LABEL_88;
    }

    if (v31[40] != v27[40])
    {
      goto LABEL_88;
    }

    v43 = *(v31 + 6);
    v44 = *(v27 + 6);
    v45 = *(v43 + 16);
    if (v45 != *(v44 + 16))
    {
      goto LABEL_88;
    }

    if (v45 && v43 != v44)
    {
      v46 = (v43 + 40);
      v47 = (v44 + 40);
      do
      {
        result = *(v46 - 1);
        if (result != *(v47 - 1) || *v46 != *v47)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        v46 += 2;
        v47 += 2;
      }

      while (--v45);
    }

    v49 = *(v31 + 7);
    v50 = *(v27 + 7);
    v51 = *(v49 + 16);
    if (v51 != *(v50 + 16))
    {
      goto LABEL_88;
    }

    if (v51 && v49 != v50)
    {
      break;
    }

LABEL_33:
    v53 = *(v95 + 40);
    v54 = *(v100 + 48);
    v55 = v38;
    sub_1C05149F8(&v31[v53], v22, &qword_1EBE16D40, v38);
    sub_1C05149F8(&v27[v53], &v22[v54], &qword_1EBE16D40, v38);
    v56 = *v92;
    if ((*v92)(v22, 1, v39) == 1)
    {
      v57 = v56(&v22[v54], 1, v39);
      v32 = v91;
      if (v57 != 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v87 = v6;
      v58 = v99;
      sub_1C05149F8(v22, v99, &qword_1EBE16D40, v38);
      if (v56(&v22[v54], 1, v39) == 1)
      {
        sub_1C0575908(v58, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_82:
        v84 = &qword_1EBE16D48;
        v85 = &qword_1C0970410;
        goto LABEL_87;
      }

      v59 = v98;
      sub_1C0575688(&v22[v54], v98, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      v60 = v90;
      v61 = &v90[*(v87 + 48)];
      sub_1C0575968(v58, v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575968(v59, v61, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v103;
        sub_1C0575968(v60, v103, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1C0575908(v62, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_85:
          v83 = v99;
          sub_1C05145B4(v90, &qword_1EBE16D38, &unk_1C0970400);
          goto LABEL_86;
        }

        v63 = v61;
        v64 = v102;
        sub_1C0575688(v63, v102, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v6 = v87;
        v39 = v101;
        v38 = v55;
        v32 = v91;
        if ((*v62 != *v64 || v62[1] != v64[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        if ((v103[2] != v102[2] || v103[3] != v102[3]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        if ((v103[4] != v102[4] || v103[5] != v102[5]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        v65 = v103[6];
        v66 = v102[6];
        v67 = *(v65 + 16);
        if (v67 != *(v66 + 16))
        {
          goto LABEL_79;
        }

        if (v67 && v65 != v66)
        {
          v68 = (v65 + 40);
          v69 = (v66 + 40);
          while (1)
          {
            v70 = *(v68 - 1) == *(v69 - 1) && *v68 == *v69;
            if (!v70 && (sub_1C095DF3C() & 1) == 0)
            {
              break;
            }

            v68 += 2;
            v69 += 2;
            if (!--v67)
            {
              goto LABEL_71;
            }
          }

LABEL_79:
          sub_1C0575908(v102, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          sub_1C0575908(v103, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_80:
          sub_1C0575908(v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v83 = v99;
LABEL_86:
          sub_1C0575908(v98, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v83, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v84 = &qword_1EBE16D40;
          v85 = &qword_1C09A7AD0;
LABEL_87:
          sub_1C05145B4(v22, v84, v85);
LABEL_88:
          sub_1C0575908(v27, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
          sub_1C0575908(v31, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
          goto LABEL_89;
        }

LABEL_71:
        v79 = *(v96 + 32);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        if ((sub_1C095D73C() & 1) == 0)
        {
          goto LABEL_79;
        }

        sub_1C0575908(v102, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v103, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      }

      else
      {
        v74 = v97;
        sub_1C0575968(v60, v97, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        v76 = *v74;
        v75 = v74[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          goto LABEL_85;
        }

        v77 = *v61;
        v78 = *(v61 + 1);
        if (v76 == v77 && v75 == v78)
        {

          v6 = v87;
          v39 = v101;
          v38 = v55;
          v32 = v91;
        }

        else
        {
          v80 = sub_1C095DF3C();

          v6 = v87;
          v39 = v101;
          v38 = v55;
          v32 = v91;
          if ((v80 & 1) == 0)
          {
            goto LABEL_80;
          }
        }
      }

      sub_1C0575908(v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575908(v98, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575908(v99, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    }

    sub_1C05145B4(v22, &qword_1EBE16D40, v38);
    v81 = *(v95 + 44);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v82 = sub_1C095D73C();
    sub_1C0575908(v27, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    sub_1C0575908(v31, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    if (v82)
    {
      v36 = v94 + 1;
      v37 = v88;
      v34 = v89;
      if (v94 + 1 != v32)
      {
        continue;
      }
    }

    return v82 & 1;
  }

  v71 = (v49 + 40);
  v72 = (v50 + 40);
  while (v51)
  {
    result = *(v71 - 1);
    if (result != *(v72 - 1) || *v71 != *v72)
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v71 += 2;
    v72 += 2;
    if (!--v51)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1C0561FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v31 = a6;
  v33 = a5;
  v32 = a3(0);
  v9 = *(*(v32 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v26 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      while (1)
      {
        sub_1C0575968(v18, v15, a4);
        sub_1C0575968(v19, v12, a4);
        v21 = *(v32 + 20);
        v22 = *&v15[v21];
        v23 = *&v12[v21];
        if (v22 != v23)
        {
          v24 = *&v15[v21];

          v25 = v31(v22, v23);

          if ((v25 & 1) == 0)
          {
            break;
          }
        }

        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        v26 = sub_1C095D73C();
        v27 = v33;
        sub_1C0575908(v12, v33);
        sub_1C0575908(v15, v27);
        if (v26)
        {
          v19 += v20;
          v18 += v20;
          if (--v16)
          {
            continue;
          }
        }

        return v26 & 1;
      }

      v29 = v33;
      sub_1C0575908(v12, v33);
      sub_1C0575908(v15, v29);
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1C0562268(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05622C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_19:
    v34 = 0;
    return v34 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v39 = v15;
  v40 = a2 + v21;
  v41 = *(v16 + 72);
  v42 = a1 + v21;
  v37 = v11;
  v38 = &v35 - v17;
  v36 = v19;
  while (1)
  {
    v22 = v41 * v20;
    result = sub_1C0575968(v42 + v41 * v20, v18, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    if (v20 == v19)
    {
      break;
    }

    v43 = v20;
    result = sub_1C0575968(v40 + v22, v15, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v24 = *v18;
    v25 = *v15;
    v26 = *(*v18 + 16);
    if (v26 != *(v25 + 16))
    {
LABEL_18:
      sub_1C0575908(v39, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0575908(v38, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      goto LABEL_19;
    }

    if (v26 && v24 != v25)
    {
      v27 = 0;
      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v29 = v24 + v28;
      v30 = v25 + v28;
      while (v27 < *(v24 + 16))
      {
        v31 = *(v44 + 72) * v27;
        result = sub_1C0575968(v29 + v31, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_22;
        }

        sub_1C0575968(v30 + v31, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        v32 = static Com_Apple_Siri_Product_Proto_ElementValue.== infix(_:_:)(v10, v8);
        sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        result = sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        if ((v32 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v26 == ++v27)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_14:
    v33 = *(v37 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v18 = v38;
    v15 = v39;
    v34 = sub_1C095D73C();
    sub_1C0575908(v15, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C0575908(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    if (v34)
    {
      v20 = v43 + 1;
      v19 = v36;
      if (v43 + 1 != v36)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0562714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C0575968(v15, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = *(v11 + 1);
      v18 = *(v8 + 1);
      if (v8[16] == 1 && v18 >= 0x2A)
      {
        switch(v18)
        {
          case '+':
            if (v17 != 43)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case ',':
            if (v17 != 44)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '-':
            if (v17 != 45)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '.':
            if (v17 != 46)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '/':
            if (v17 != 47)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '0':
            if (v17 != 48)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '1':
            if (v17 != 49)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '2':
            if (v17 != 50)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '3':
            if (v17 != 51)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '4':
            if (v17 != 52)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '5':
            if (v17 != 53)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '6':
            if (v17 != 54)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          default:
            if (v17 != 42)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
        }
      }

      if (v17 != v18)
      {
        break;
      }

LABEL_9:
      v19 = *(v4 + 24);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v20 = sub_1C095D73C();
      sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_38:
    sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C0562A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v27 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_33:
    v26 = 0;
    return v26 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = a1 + v14;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1C0575968(v28 + v16 * v13, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v13 == v12)
    {
      break;
    }

    sub_1C0575968(v15 + v16 * v13, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v18 = *v11 == *v8 && v11[1] == v8[1];
    if (!v18 && (sub_1C095DF3C() & 1) == 0 || (v11[2] != v8[2] || v11[3] != v8[3]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_32;
    }

    if ((v11[4] != v8[4] || v11[5] != v8[5]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_32;
    }

    v19 = v11[6];
    v20 = v8[6];
    v21 = *(v19 + 16);
    if (v21 != *(v20 + 16))
    {
      goto LABEL_32;
    }

    if (v21 && v19 != v20)
    {
      v22 = (v19 + 40);
      v23 = (v20 + 40);
      while (1)
      {
        v24 = *(v22 - 1) == *(v23 - 1) && *v22 == *v23;
        if (!v24 && (sub_1C095DF3C() & 1) == 0)
        {
          break;
        }

        v22 += 2;
        v23 += 2;
        if (!--v21)
        {
          goto LABEL_28;
        }
      }

LABEL_32:
      sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      goto LABEL_33;
    }

LABEL_28:
    v25 = *(v4 + 32);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v26 = sub_1C095D73C();
    sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if ((v26 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0562D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v74 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v80 = (&v69 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v69 - v15);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C08, &unk_1C0970520);
  v17 = *(*(v76 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v76);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - v21;
  v79 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  v23 = *(*(v79 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v79);
  v81 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v69 - v27;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_67:
    v65 = 0;
    return v65 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = a1 + v29;
  v31 = 0;
  v69 = v4;
  v70 = a2 + v29;
  v77 = (v5 + 48);
  v78 = v14;
  v71 = *(v26 + 72);
  v72 = v30;
  v32 = v76;
  v75 = v28;
  while (1)
  {
    v33 = v71 * v31;
    result = sub_1C0575968(v72 + v71 * v31, v82, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    if (v31 == v75)
    {
      break;
    }

    v73 = v31;
    v35 = v81;
    sub_1C0575968(v70 + v33, v81, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    v36 = *(v79 + 20);
    v37 = *(v32 + 48);
    sub_1C05149F8(v82 + v36, v22, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C05149F8(v35 + v36, &v22[v37], &qword_1EBE16B50, &unk_1C096E0F0);
    v38 = *v77;
    if ((*v77)(v22, 1, v4) == 1)
    {
      if (v38(&v22[v37], 1, v4) != 1)
      {
        goto LABEL_63;
      }

      sub_1C05145B4(v22, &qword_1EBE16B50, &unk_1C096E0F0);
    }

    else
    {
      sub_1C05149F8(v22, v16, &qword_1EBE16B50, &unk_1C096E0F0);
      if (v38(&v22[v37], 1, v4) == 1)
      {
        sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_63:
        v66 = &qword_1EBE16C08;
        v67 = &unk_1C0970520;
        goto LABEL_64;
      }

      v39 = &v22[v37];
      v40 = v80;
      sub_1C0575688(v39, v80, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      if ((*v16 != *v40 || v16[1] != v40[1]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      if ((v16[2] != v80[2] || v16[3] != v80[3]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      if ((v16[4] != v80[4] || v16[5] != v80[5]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      v41 = v16[6];
      v42 = v80[6];
      v43 = *(v41 + 16);
      if (v43 != *(v42 + 16))
      {
        goto LABEL_60;
      }

      if (v43 && v41 != v42)
      {
        v44 = (v41 + 40);
        v45 = (v42 + 40);
        while (1)
        {
          v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
          if (!v46 && (sub_1C095DF3C() & 1) == 0)
          {
            break;
          }

          v44 += 2;
          v45 += 2;
          if (!--v43)
          {
            goto LABEL_30;
          }
        }

LABEL_60:
        sub_1C0575908(v80, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v66 = &qword_1EBE16B50;
        v67 = &unk_1C096E0F0;
LABEL_64:
        v68 = v22;
LABEL_65:
        sub_1C05145B4(v68, v66, v67);
LABEL_66:
        sub_1C0575908(v81, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
        sub_1C0575908(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
        goto LABEL_67;
      }

LABEL_30:
      v4 = v69;
      v47 = *(v69 + 32);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v48 = v80;
      v49 = sub_1C095D73C();
      sub_1C0575908(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C05145B4(v22, &qword_1EBE16B50, &unk_1C096E0F0);
      if ((v49 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v50 = *(v79 + 24);
    v51 = *(v32 + 48);
    sub_1C05149F8(v82 + v50, v20, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C05149F8(v81 + v50, &v20[v51], &qword_1EBE16B50, &unk_1C096E0F0);
    if (v38(v20, 1, v4) == 1)
    {
      if (v38(&v20[v51], 1, v4) != 1)
      {
        goto LABEL_70;
      }

      sub_1C05145B4(v20, &qword_1EBE16B50, &unk_1C096E0F0);
    }

    else
    {
      v52 = v78;
      sub_1C05149F8(v20, v78, &qword_1EBE16B50, &unk_1C096E0F0);
      if (v38(&v20[v51], 1, v4) == 1)
      {
        sub_1C0575908(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_70:
        v66 = &qword_1EBE16C08;
        v67 = &unk_1C0970520;
        v68 = v20;
        goto LABEL_65;
      }

      v53 = v74;
      sub_1C0575688(&v20[v51], v74, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      if ((*v52 != *v53 || v52[1] != v53[1]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      if ((v78[2] != v53[2] || v78[3] != v53[3]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      if ((v78[4] != v53[4] || v78[5] != v53[5]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      v54 = v78[6];
      v55 = v53[6];
      v56 = *(v54 + 16);
      if (v56 != *(v55 + 16))
      {
        goto LABEL_61;
      }

      if (v56 && v54 != v55)
      {
        v57 = (v54 + 40);
        v58 = (v55 + 40);
        while (1)
        {
          v59 = *(v57 - 1) == *(v58 - 1) && *v57 == *v58;
          if (!v59 && (sub_1C095DF3C() & 1) == 0)
          {
            break;
          }

          v57 += 2;
          v58 += 2;
          if (!--v56)
          {
            goto LABEL_55;
          }
        }

LABEL_61:
        sub_1C0575908(v53, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v66 = &qword_1EBE16B50;
        v67 = &unk_1C096E0F0;
        v68 = v20;
        goto LABEL_65;
      }

LABEL_55:
      v4 = v69;
      v60 = *(v69 + 32);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v61 = v78;
      v62 = sub_1C095D73C();
      sub_1C0575908(v53, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v32 = v76;
      sub_1C0575908(v61, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C05145B4(v20, &qword_1EBE16B50, &unk_1C096E0F0);
      if ((v62 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v64 = v81;
    v63 = v82;
    v65 = sub_1C095D73C();
    sub_1C0575908(v64, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    sub_1C0575908(v63, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    if (v65)
    {
      v31 = v73 + 1;
      if (v73 + 1 != v75)
      {
        continue;
      }
    }

    return v65 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0563790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C0563820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v67 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E08, &unk_1C09704E0);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v67 - v12;
  v79 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v13 = *(v79 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v83 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = (&v67 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E18, &qword_1C09704F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - v21;
  v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v23 = *(*(v82 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v82);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v29 = (&v67 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v30 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v68 = v19;
  v69 = v4;
  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v73 = a2 + v32;
  v71 = (&v67 - v28);
  v72 = (v13 + 48);
  v70 = (v5 + 48);
  v74 = *(v27 + 72);
  v75 = a1 + v32;
  v33 = v79;
  v80 = v30;
  while (1)
  {
    v34 = v74 * v31;
    result = sub_1C0575968(v75 + v74 * v31, v29, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if (v31 == v80)
    {
      __break(1u);
      return result;
    }

    sub_1C0575968(v73 + v34, v26, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    v36 = *(v82 + 24);
    v37 = *(v19 + 48);
    sub_1C05149F8(v29 + v36, v22, &qword_1EBE16E10, &unk_1C0971270);
    sub_1C05149F8(v26 + v36, &v22[v37], &qword_1EBE16E10, &unk_1C0971270);
    v38 = *v72;
    if ((*v72)(v22, 1, v33) == 1)
    {
      if (v38(&v22[v37], 1, v33) == 1)
      {
        sub_1C05145B4(v22, &qword_1EBE16E10, &unk_1C0971270);
        v29 = v71;
        goto LABEL_30;
      }

      sub_1C0575908(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v65 = v71;
      v66 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode;
LABEL_37:
      sub_1C0575908(v65, v66);
      sub_1C05145B4(v22, &qword_1EBE16E18, &qword_1C09704F0);
      goto LABEL_42;
    }

    sub_1C05149F8(v22, v84, &qword_1EBE16E10, &unk_1C0971270);
    if (v38(&v22[v37], 1, v33) == 1)
    {
      sub_1C0575908(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      sub_1C0575908(v71, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v66 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element;
      v65 = v84;
      goto LABEL_37;
    }

    v39 = &v22[v37];
    v40 = v83;
    sub_1C0575688(v39, v83, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    v41 = v70;
    if ((*v84 != *v40 || v84[1] != v40[1]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_40;
    }

    v42 = v84[2];
    v43 = v83[2];
    v44 = *(v42 + 16);
    if (v44 != *(v43 + 16))
    {
      goto LABEL_40;
    }

    if (v44 && v42 != v43)
    {
      break;
    }

LABEL_24:
    v48 = *(v79 + 24);
    v49 = *(v78 + 48);
    v50 = v81;
    sub_1C05149F8(v84 + v48, v81, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05149F8(v83 + v48, v50 + v49, &qword_1EBE16E00, &qword_1C099BAE0);
    v51 = *v41;
    v52 = v69;
    if ((*v41)(v50, 1, v69) == 1)
    {
      if (v51(v81 + v49, 1, v52) != 1)
      {
        goto LABEL_39;
      }

      sub_1C05145B4(v81, &qword_1EBE16E00, &qword_1C099BAE0);
    }

    else
    {
      v53 = v81;
      v54 = v77;
      sub_1C05149F8(v81, v77, &qword_1EBE16E00, &qword_1C099BAE0);
      if (v51(v53 + v49, 1, v52) == 1)
      {
        sub_1C0575908(v54, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_39:
        sub_1C05145B4(v81, &qword_1EBE16E08, &unk_1C09704E0);
        goto LABEL_40;
      }

      v55 = v76;
      sub_1C0575688(v53 + v49, v76, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v56 = static Com_Apple_Siri_Product_Proto_Element.OneOf_Node.== infix(_:_:)(v54, v55);
      sub_1C0575908(v55, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      sub_1C0575908(v54, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      sub_1C05145B4(v53, &qword_1EBE16E00, &qword_1C099BAE0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v57 = v79;
    v58 = *(v79 + 28);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C095D73C();
    v62 = v59;
    v33 = v57;
    v19 = v68;
    sub_1C0575908(v62, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C0575908(v60, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C05145B4(v22, &qword_1EBE16E10, &unk_1C0971270);
    v29 = v71;
    if ((v61 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_30:
    if (*v29 != *v26)
    {
      goto LABEL_41;
    }

    v63 = *(v82 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v64 = sub_1C095D73C();
    sub_1C0575908(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    sub_1C0575908(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v64 & 1) != 0 && ++v31 != v80)
    {
      continue;
    }

    return v64 & 1;
  }

  v45 = (v42 + 40);
  v46 = (v43 + 40);
  while (1)
  {
    v47 = *(v45 - 1) == *(v46 - 1) && *v45 == *v46;
    if (!v47 && (sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

    v45 += 2;
    v46 += 2;
    if (!--v44)
    {
      goto LABEL_24;
    }
  }

LABEL_40:
  sub_1C0575908(v83, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C0575908(v84, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C05145B4(v22, &qword_1EBE16E10, &unk_1C0971270);
  v29 = v71;
LABEL_41:
  sub_1C0575908(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  sub_1C0575908(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
LABEL_42:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_1C05641DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = (&v57 - v18);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v19 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v57 - v20;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v57 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_68:
    v56 = 0;
    return v56 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v60 = v11;
  v61 = v4;
  v69 = v30;
  v70 = v26;
  v57 = v15;
  v31 = 0;
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = a1 + v32;
  v67 = a2 + v32;
  v65 = &v57 - v28;
  v66 = (v12 + 48);
  v34 = *(v27 + 72);
  v58 = v34;
  v59 = a1 + v32;
  v64 = v25;
  while (1)
  {
    result = sub_1C0575968(v33 + v34 * v31, v29, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    if (v31 == v69)
    {
      goto LABEL_74;
    }

    sub_1C0575968(v67 + v34 * v31, v25, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    v36 = *(v70 + 36);
    v37 = *(v72 + 48);
    v38 = v74;
    sub_1C05149F8(&v29[v36], v74, &qword_1EBE17420, &qword_1C0993380);
    sub_1C05149F8(&v25[v36], v38 + v37, &qword_1EBE17420, &qword_1C0993380);
    v39 = *v66;
    v40 = (*v66)(v38, 1, v11);
    v68 = v31;
    if (v40 == 1)
    {
      v41 = v39(v38 + v37, 1, v11);
      v25 = v64;
      if (v41 != 1)
      {
        goto LABEL_71;
      }

      sub_1C05145B4(v38, &qword_1EBE17420, &qword_1C0993380);
      v29 = v65;
      goto LABEL_20;
    }

    v42 = v71;
    sub_1C05149F8(v38, v71, &qword_1EBE17420, &qword_1C0993380);
    if (v39(v38 + v37, 1, v11) == 1)
    {
      sub_1C0575908(v42, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v25 = v64;
LABEL_71:
      sub_1C05145B4(v38, &qword_1EBE16D60, &unk_1C0970430);
      v29 = v65;
LABEL_67:
      sub_1C0575908(v25, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
      sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
      goto LABEL_68;
    }

    v43 = v38 + v37;
    v44 = v57;
    sub_1C0575688(v43, v57, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v25 = v64;
    v29 = v65;
    if (*v42 != *v44 || v42[1] != *(v44 + 8))
    {
LABEL_64:
      sub_1C0575908(v44, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0575908(v42, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v74, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_67;
    }

    v45 = v42[2];
    v46 = *(v44 + 16);
    if (*(v44 + 24) == 1)
    {
      if (v46 > 2)
      {
        if (v46 == 3)
        {
          if (v45 != 3)
          {
            goto LABEL_64;
          }
        }

        else if (v46 == 4)
        {
          if (v45 != 4)
          {
            goto LABEL_64;
          }
        }

        else if (v45 != 5)
        {
          goto LABEL_64;
        }
      }

      else if (v46)
      {
        if (v46 == 1)
        {
          if (v45 != 1)
          {
            goto LABEL_64;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v45)
      {
        goto LABEL_64;
      }
    }

    else if (v45 != v46)
    {
      goto LABEL_64;
    }

    v47 = *(v11 + 28);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    LOBYTE(v47) = sub_1C095D73C();
    sub_1C0575908(v44, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0575908(v42, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C05145B4(v74, &qword_1EBE17420, &qword_1C0993380);
    if ((v47 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_20:
    result = *v29;
    if (*v29 != *v25 || *(v29 + 1) != *(v25 + 1))
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (*(v29 + 2) != *(v25 + 2))
    {
      goto LABEL_67;
    }

    v48 = *(v29 + 3);
    v49 = *(v25 + 3);
    v50 = *(v48 + 16);
    if (v50 != *(v49 + 16))
    {
      goto LABEL_67;
    }

    if (v50 && v48 != v49)
    {
      break;
    }

LABEL_49:
    if ((sub_1C055E108(*(v29 + 4), *(v25 + 4)) & 1) == 0)
    {
      goto LABEL_67;
    }

    v55 = *(v70 + 32);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v56 = sub_1C095D73C();
    sub_1C0575908(v25, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    if (v56)
    {
      v31 = v68 + 1;
      v33 = v59;
      v11 = v60;
      v34 = v58;
      if (v68 + 1 != v69)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  v51 = 0;
  v52 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v62 = v49 + v52;
  v63 = v48 + v52;
  while (v51 < *(v48 + 16))
  {
    v53 = *(v73 + 72) * v51;
    result = sub_1C0575968(v63 + v53, v10, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if (v51 >= *(v49 + 16))
    {
      goto LABEL_73;
    }

    sub_1C0575968(v62 + v53, v8, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if ((*v10 != *v8 || *(v10 + 1) != *(v8 + 1)) && (sub_1C095DF3C() & 1) == 0 || (*(v10 + 2) != *(v8 + 2) || *(v10 + 3) != *(v8 + 3)) && (sub_1C095DF3C() & 1) == 0 || (*(v10 + 4) != *(v8 + 4) || *(v10 + 5) != *(v8 + 5)) && (sub_1C095DF3C() & 1) == 0 || v10[48] != v8[48] || v10[49] != v8[49] || v10[50] != v8[50] || *(v10 + 7) != *(v8 + 7) || *(v10 + 16) != *(v8 + 16) || *(v10 + 17) != *(v8 + 17) || *(v10 + 18) != *(v8 + 18) || *(v10 + 19) != *(v8 + 19))
    {
      sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
      sub_1C0575908(v10, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
      goto LABEL_67;
    }

    v54 = *(v61 + 60);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    LOBYTE(v54) = sub_1C095D73C();
    sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    result = sub_1C0575908(v10, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if ((v54 & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v50 == ++v51)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t TerminalIntentNode.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_1C095D7BC();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return sub_1C056D194(a1);
}

uint64_t TerminalIntentNode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C095DFEC();
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_1C095D7BC();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_1C056D194(v10);
  return sub_1C095E03C();
}

uint64_t sub_1C0564D10()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C095DFEC();
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_1C095D7BC();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_1C056D194(v10);
  return sub_1C095E03C();
}

uint64_t sub_1C0564DC0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1C055B128(v3, v4);
}

uint64_t TerminalElement.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v1 + 528);
  v5 = *(v1 + 536);
  v6 = *(v1 + 1320);
  v7 = *(v1 + 1328);
  v8 = *(v1 + 1336);
  memcpy(__dst, v1, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    memcpy(v15, v1, 0x20AuLL);
    sub_1C05735AC(v15, v14);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v14, v1, 0x20AuLL);
    sub_1C05735E4(v14);
  }

  MEMORY[0x1C68DDE90](*(v4 + 16));
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = (v4 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_1C095D7BC();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v14[0] = v5;
  memcpy(&v14[1], (v2 + 537), 0x308uLL);
  if (sub_1C0573614(v14) == 1)
  {
    sub_1C095E00C();
    if (v8)
    {
LABEL_9:
      sub_1C095E00C();
      sub_1C095E00C();
      return sub_1C095D7BC();
    }
  }

  else
  {
    sub_1C095E00C();
    sub_1C095E00C();
    if (v5 != 9)
    {
      sub_1C0559784();
    }

    memcpy(v15, (v2 + 544), 0x301uLL);
    sub_1C056CE08(a1);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0565084()
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05650C8()
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t TerminalIntentNode.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_1C056514C();
}

uint64_t sub_1C056514C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4 && (memmove(__dst, (v3 + 1344 * v4 - 1312), 0x20AuLL), sub_1C0573598(__dst) != 1))
  {
    memcpy(v9, __dst, sizeof(v9));
    v5 = sub_1C0565D0C();
    v6 = v7;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  __dst[0] = v2;
  __dst[1] = v1;

  MEMORY[0x1C68DD690](40, 0xE100000000000000);
  MEMORY[0x1C68DD690](v5, v6);

  MEMORY[0x1C68DD690](41, 0xE100000000000000);
  return __dst[0];
}

uint64_t sub_1C0565234()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_1C056514C();
}

unint64_t TerminalIntentNode.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[3];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v11 = 0xD00000000000001ALL;
  v12 = 0x80000001C09CC2D0;
  MEMORY[0x1C68DD690](v2, v3);
  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  v5 = *(v4 + 16);
  if (v5 && (memmove(__dst, (v4 + 1344 * v5 - 1312), 0x20AuLL), sub_1C0573598(__dst) != 1))
  {
    memcpy(v9, __dst, sizeof(v9));
    v1 = TerminalElement.Value.debugDescription.getter();
    v6 = v7;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v6);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v11;
}

uint64_t TerminalElement.Value.debugDescription.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1C095DC1C();

  strcpy(v15, "<Value: type=");
  HIWORD(v15[1]) = -4864;
  memcpy(v17, v0, 0x20AuLL);
  v1 = sub_1C057363C(v17);
  sub_1C05272F0(v17);
  v2 = 0xE600000000000000;
  if (v1 <= 3)
  {
    v9 = 0x656C62756F64;
    v10 = 0xE300000000000000;
    v11 = 7630441;
    if (v1 != 2)
    {
      v11 = 1735290732;
      v10 = 0xE400000000000000;
    }

    if (v1)
    {
      v9 = 0x74616F6C66;
      v2 = 0xE500000000000000;
    }

    if (v1 <= 1)
    {
      v7 = v9;
    }

    else
    {
      v7 = v11;
    }

    if (v1 <= 1)
    {
      v8 = v2;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0x72616C616373;
    v4 = 0xEB00000000676154;
    if (v1 != 7)
    {
      v4 = 0xE800000000000000;
    }

    if (v1 != 6)
    {
      v3 = 0x6369746E616D6573;
      v2 = v4;
    }

    v5 = 0xE600000000000000;
    v6 = 0x676E69727473;
    if (v1 != 4)
    {
      v6 = 0x656D695465746164;
      v5 = 0xE800000000000000;
    }

    if (v1 <= 5)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (v1 <= 5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  MEMORY[0x1C68DD690](v7, v8);

  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  memcpy(v14, __dst, sizeof(v14));
  v12 = sub_1C0565A10();
  MEMORY[0x1C68DD690](v12);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v15[0];
}

uint64_t TerminalElement.Value.description.getter()
{
  memcpy(__dst, v0, 0x20AuLL);
  memcpy(v22, v0, 0x20AuLL);
  v1 = sub_1C057363C(v22);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v20[0] = *sub_1C05272F0(v22);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      v13 = *sub_1C05272F0(v22);
      return sub_1C095DA4C();
    }

    else
    {
      v6 = *sub_1C05272F0(v22);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v8 = sub_1C05272F0(v22);
      v10 = *v8;
      v9 = v8[1];
      v20[1] = 0xE100000000000000;
      MEMORY[0x1C68DD690](v10, v9);
      MEMORY[0x1C68DD690](34, 0xE100000000000000);
      return 34;
    }

    else
    {
      v16 = sub_1C05272F0(v22);
      memcpy(v19, v16, sizeof(v19));
      memcpy(v20, __dst, 0x20AuLL);
      v17 = sub_1C05272F0(v20);
      sub_1C0573648(v17, &v18);
      return sub_1C095D77C();
    }
  }

  else
  {
    if (v1 == 6)
    {
      v11 = *sub_1C05272F0(v22);
      memcpy(v20, __dst, 0x20AuLL);
      v12 = *sub_1C05272F0(v20);

      v3 = TerminalElement.ScalarValue.description.getter();
      sub_1C05735E4(__dst);
    }

    else if (v1 == 7)
    {
      v2 = sub_1C05272F0(v22);
      v3 = *v2;
      v4 = v2[1];
      memcpy(v20, __dst, 0x20AuLL);
      v5 = *(sub_1C05272F0(v20) + 8);
    }

    else
    {
      v14 = sub_1C05272F0(v22);
      v3 = *(v14 + 16);
      v15 = *(v14 + 24);
    }

    return v3;
  }
}

uint64_t sub_1C05657E4()
{
  memcpy(__dst, v0, 0x20AuLL);
  memcpy(v23, v0, 0x20AuLL);
  v1 = sub_1C057363C(v23);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v21[0] = *sub_1C05272F0(v23);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      v14 = *sub_1C05272F0(v23);
      return sub_1C095DA4C();
    }

    else
    {
      v6 = *sub_1C05272F0(v23);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v8 = sub_1C05272F0(v23);
      v10 = *v8;
      v9 = v8[1];
      v21[1] = 0xE100000000000000;
      MEMORY[0x1C68DD690](v10, v9);
      MEMORY[0x1C68DD690](34, 0xE100000000000000);
      return 34;
    }

    else
    {
      v17 = sub_1C05272F0(v23);
      memcpy(v20, v17, sizeof(v20));
      memcpy(v21, __dst, 0x20AuLL);
      v18 = sub_1C05272F0(v21);
      sub_1C0573648(v18, &v19);
      return sub_1C095D77C();
    }
  }

  else
  {
    if (v1 == 6)
    {
      v11 = *sub_1C05272F0(v23);
      memcpy(v21, __dst, 0x20AuLL);
      v12 = *sub_1C05272F0(v21);

      v3 = TerminalElement.ScalarValue.description.getter(v13);
      sub_1C05735E4(__dst);
    }

    else if (v1 == 7)
    {
      v2 = sub_1C05272F0(v23);
      v3 = *v2;
      v4 = v2[1];
      memcpy(v21, __dst, 0x20AuLL);
      v5 = *(sub_1C05272F0(v21) + 8);
    }

    else
    {
      v15 = sub_1C05272F0(v23);
      v3 = *(v15 + 16);
      v16 = *(v15 + 24);
    }

    return v3;
  }
}

uint64_t sub_1C0565A10()
{
  memcpy(__dst, v0, 0x20AuLL);
  v1 = sub_1C057363C(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v23[0] = *sub_1C05272F0(__dst);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      v12 = *sub_1C05272F0(__dst);
      return sub_1C095DA4C();
    }

    else
    {
      v7 = *sub_1C05272F0(__dst);
      return sub_1C095DA0C();
    }
  }

  else
  {
    if (v1 <= 5)
    {
      if (v1 == 4)
      {
        v8 = sub_1C05272F0(__dst);
        v10 = *v8;
        v9 = v8[1];
        v23[1] = 0xE100000000000000;
        MEMORY[0x1C68DD690](v10, v9);
        MEMORY[0x1C68DD690](34, 0xE100000000000000);
        return 34;
      }

      v19 = sub_1C05272F0(__dst);
      memcpy(v22, v19, 0x20AuLL);
      memcpy(v23, v0, 0x20AuLL);
      v20 = sub_1C05272F0(v23);
      sub_1C0573648(v20, &v21);
    }

    else if (v1 == 6)
    {
      *&v22[0] = *sub_1C05272F0(__dst);
      memcpy(v23, v0, 0x20AuLL);
      v11 = *sub_1C05272F0(v23);
      type metadata accessor for TerminalElement.ScalarValue();
    }

    else
    {
      if (v1 == 7)
      {
        v2 = sub_1C05272F0(__dst);
        v3 = *v2;
        v4 = v2[1];
        memcpy(v23, v0, 0x20AuLL);
        v5 = *(sub_1C05272F0(v23) + 8);

        return v3;
      }

      v13 = sub_1C05272F0(__dst);
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v22[0] = *v13;
      *&v22[1] = v14;
      *(&v22[1] + 1) = v15;
      memcpy(v23, v0, 0x20AuLL);
      v16 = sub_1C05272F0(v23);
      v17 = *(v16 + 8);
      v18 = *(v16 + 24);
    }

    return sub_1C095D78C();
  }
}

BOOL sub_1C0565CAC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  memmove(v4, (v1 + 1344 * v2 - 1312), 0x20AuLL);
  return sub_1C0573598(v4) != 1;
}

uint64_t sub_1C0565D0C()
{
  memcpy(__dst, v0, 0x20AuLL);
  v1 = sub_1C057363C(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v17[0] = *sub_1C05272F0(__dst);
        sub_1C0575530();
      }

      else
      {
        v17[0] = *sub_1C05272F0(__dst);
        sub_1C05754DC();
      }

      return sub_1C095DB9C();
    }

    else if (v1)
    {
      v12 = *sub_1C05272F0(__dst);
      return sub_1C095DA4C();
    }

    else
    {
      v6 = *sub_1C05272F0(__dst);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
LABEL_12:
      v7 = sub_1C05272F0(__dst);
      v8 = *v7;
      v9 = v7[1];
      memcpy(v17, v0, 0x20AuLL);
      v10 = *(sub_1C05272F0(v17) + 8);

      return v8;
    }

    v13 = sub_1C05272F0(__dst);
    memcpy(v16, v13, sizeof(v16));
    memcpy(v17, v0, 0x20AuLL);
    v14 = sub_1C05272F0(v17);
    sub_1C0573648(v14, &v15);
    return sub_1C095D77C();
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {
        v2 = sub_1C05272F0(__dst);
        v4 = *(v2 + 16);
        v3 = *(v2 + 24);

        return v4;
      }

      goto LABEL_12;
    }

    v11 = *sub_1C05272F0(__dst);
    return TerminalElement.ScalarValue.description.getter();
  }
}

uint64_t TerminalElement.ScalarValue.description.getter()
{
  v1 = 7104878;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v9 = 0x3D65756C61767BLL;
  v10 = 0xE700000000000000;
  memcpy(__dst, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v3 = sub_1C05657E4();
    v2 = v4;
  }

  MEMORY[0x1C68DD690](v3, v2);

  MEMORY[0x1C68DD690](0x3D74696E75202CLL, 0xE700000000000000);
  v5 = v0[71];
  if (v5)
  {
    v1 = v0[70];
    v6 = v0[71];
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v5);

  MEMORY[0x1C68DD690](125, 0xE100000000000000);
  return v9;
}

uint64_t TerminalElement.SemanticValue.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C056603C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t TerminalElement.SemanticValue.debugDescription.getter()
{
  MEMORY[0x1C68DD690](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1C05660CC()
{
  MEMORY[0x1C68DD690](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t TerminalElement.ScalarValue.debugDescription.getter()
{
  v1 = 7104878;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v11 = 60;
  v12 = 0xE100000000000000;
  v2 = *v0;
  v3 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v3);

  MEMORY[0x1C68DD690](0x3D65756C6176203ALL, 0xE800000000000000);
  memcpy(__dst, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    memcpy(v10, __dst, 0x20AuLL);
    v5 = TerminalElement.Value.debugDescription.getter();
    v4 = v6;
  }

  MEMORY[0x1C68DD690](v5, v4);

  MEMORY[0x1C68DD690](0x3D74696E75202CLL, 0xE700000000000000);
  if (v0[71])
  {
    v7 = v0[70];
    v10[0] = 0xD000000000000016;
    v10[1] = 0x80000001C09CC2F0;
    MEMORY[0x1C68DD690](v7);
    MEMORY[0x1C68DD690](62, 0xE100000000000000);
    v1 = v10[0];
    v8 = v10[1];
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v8);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v11;
}

uint64_t TerminalElement.Value.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0x20AuLL);
  v3 = sub_1C057363C(__dst);
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 != 4)
      {
        v19 = sub_1C05272F0(__dst);
        memcpy(v23, v19, 0x20AuLL);
        return TerminalElement.DateTimeValue.hash(into:)(a1);
      }

      goto LABEL_15;
    }

    if (v3 != 6)
    {
      if (v3 != 7)
      {
        v4 = sub_1C05272F0(__dst);
        v5 = v4[2];
        v6 = v4[3];
        if (v4[1])
        {
          v7 = *v4;
          sub_1C095E00C();
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
        }

        return sub_1C095D7BC();
      }

LABEL_15:
      v12 = sub_1C05272F0(__dst);
      v13 = *v12;
      v14 = v12[1];
      return sub_1C095D7BC();
    }

    v15 = *sub_1C05272F0(__dst);
    memcpy(__src, v15 + 2, sizeof(__src));
    memmove(v23, v15 + 2, 0x20AuLL);
    if (sub_1C0573598(v23) == 1)
    {
      sub_1C095E00C();
      if (v15[71])
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1C095E00C();
      memcpy(v20, __src, 0x20AuLL);
      sub_1C05735AC(v20, v21);
      TerminalElement.Value.hash(into:)(a1);
      memcpy(v21, __src, 0x20AuLL);
      sub_1C05735E4(v21);
      if (v15[71])
      {
LABEL_18:
        v16 = v15[68];
        v17 = v15[69];
        v18 = v15[70];
        sub_1C095E00C();
        sub_1C095E00C();
        if (v17)
        {
          sub_1C095D7BC();
        }

        return sub_1C095D7BC();
      }
    }

    return sub_1C095E00C();
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v10 = sub_1C05272F0(__dst);
      return MEMORY[0x1C68DDE90](*v10);
    }

    v9 = *sub_1C05272F0(__dst);
  }

  else
  {
    if (v3)
    {
      *sub_1C05272F0(__dst);
      return sub_1C095E01C();
    }

    v8 = *sub_1C05272F0(__dst);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    v9 = v8;
  }

  return MEMORY[0x1C68DDEC0](*&v9);
}

uint64_t TerminalElement.Value.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0566634()
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0566678()
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Origin.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  sub_1C095E00C();
  if (v3 != 9)
  {
    sub_1C0559784();
  }

  return sub_1C056CE08(a1);
}

uint64_t TerminalElement.Origin.hashValue.getter()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 9)
  {
    sub_1C0559784();
  }

  sub_1C056CE08(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C05667C8()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 9)
  {
    sub_1C0559784();
  }

  sub_1C056CE08(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C0566854(__int128 *a1)
{
  v3 = *v1;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  sub_1C095E00C();
  if (v3 != 9)
  {
    sub_1C0559784();
  }

  return sub_1C056CE08(a1);
}

uint64_t sub_1C05668D4()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 9)
  {
    sub_1C0559784();
  }

  sub_1C056CE08(v3);
  return sub_1C095E03C();
}

BOOL static TerminalElement.MatchingSpan.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = v1[1];
  memcpy(v103, v1 + 2, 0x20AuLL);
  v7 = v4[69];
  v93 = v4[71];
  v94 = v4[68];
  v91 = v4[72];
  v92 = v4[70];
  v90 = v4[73];
  v88 = v4[74];
  v86 = v4[75];
  v84 = v4[76];
  v82 = v4[77];
  v80 = v4[78];
  v78 = v4[79];
  v76 = *(v4 + 641);
  v77 = *(v4 + 640);
  v74 = *(v4 + 643);
  v75 = *(v4 + 642);
  v72 = v4[81];
  v73 = v4[82];
  v71 = v4[83];
  v70 = *(v4 + 672);
  v68 = v4[85];
  v69 = v4[86];
  v66 = v4[87];
  v67 = v4[88];
  v62 = v4[89];
  v63 = v4[90];
  v65 = v4[91];
  v64 = *(v4 + 736);
  v9 = *v3;
  v8 = v3[1];
  memcpy(v104, v3 + 2, 0x20AuLL);
  v10 = v3[68];
  v11 = v3[69];
  v12 = v3[70];
  v13 = v3[71];
  v14 = v3[72];
  v89 = v3[73];
  v87 = v3[74];
  v85 = v3[75];
  v83 = v3[76];
  v81 = v3[77];
  v79 = v3[78];
  v15 = v3[79];
  v16 = *(v3 + 640);
  v17 = *(v3 + 641);
  v18 = *(v3 + 642);
  v19 = *(v3 + 643);
  v20 = v3[81];
  v21 = v3[82];
  v22 = v3[83];
  v23 = *(v3 + 672);
  v24 = v3[85];
  v25 = v3[86];
  v26 = v3[87];
  v27 = v3[88];
  v28 = v3[89];
  v29 = v3[90];
  v30 = v3[91];
  v31 = *(v3 + 736);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v60 = v3[70];
    v61 = v3[71];
    v59 = v3[79];
    v57 = *(v3 + 641);
    v58 = *(v3 + 640);
    v55 = *(v3 + 643);
    v56 = *(v3 + 642);
    v53 = v3[81];
    v54 = v3[82];
    v52 = v3[83];
    v51 = *(v3 + 672);
    v48 = v3[85];
    v49 = v3[87];
    v50 = v3[86];
    v46 = v3[88];
    v47 = v3[89];
    v43 = v3[90];
    v44 = v3[91];
    v45 = *(v3 + 736);
    if ((v5 != v9 || v6 != v8) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = v3[70];
    v61 = v3[71];
    v59 = v3[79];
    v57 = *(v3 + 641);
    v58 = *(v3 + 640);
    v55 = *(v3 + 643);
    v56 = *(v3 + 642);
    v53 = v3[81];
    v54 = v3[82];
    v52 = v3[83];
    v51 = *(v3 + 672);
    v48 = v3[85];
    v49 = v3[87];
    v50 = v3[86];
    v46 = v3[88];
    v47 = v3[89];
    v43 = v3[90];
    v44 = v3[91];
    v45 = *(v3 + 736);
    if (v8)
    {
      return 0;
    }
  }

  memcpy(v101, v4 + 2, 0x20AuLL);
  memcpy(&v101[528], v3 + 2, 0x20AuLL);
  memcpy(v102, v4 + 2, 0x20AuLL);
  if (sub_1C0573598(v102) == 1)
  {
    memcpy(__dst, v3 + 2, 0x20AuLL);
    if (sub_1C0573598(__dst) == 1)
    {
      memcpy(v99, v4 + 2, 0x20AuLL);
      sub_1C05149F8(v103, v98, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v104, v98, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v99, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_17;
    }

    sub_1C05149F8(v103, v99, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v104, v99, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_14:
    memcpy(__dst, v101, 0x41AuLL);
    sub_1C05145B4(__dst, &qword_1EBE16C88, &qword_1C096E860);
    return 0;
  }

  memcpy(v99, v4 + 2, 0x20AuLL);
  memcpy(v98, v4 + 2, 0x20AuLL);
  memcpy(__dst, v3 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    memcpy(__src, v4 + 2, 0x20AuLL);
    sub_1C05149F8(v103, v96, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v104, v96, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v99, v96, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_14;
  }

  memcpy(__src, v3 + 2, 0x20AuLL);
  sub_1C05149F8(v103, v96, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v104, v96, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v99, v96, &qword_1EBE16C70, &unk_1C099BB20);
  v33 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v98);
  memcpy(v95, __src, 0x20AuLL);
  sub_1C05735E4(v95);
  memcpy(v96, v98, 0x20AuLL);
  sub_1C05735E4(v96);
  memcpy(__src, v4 + 2, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v7)
  {
    v34 = v61;
    if (!v11)
    {
      return 0;
    }

    v35 = v14;
    if (v94 != v10 || v7 != v11)
    {
      v36 = sub_1C095DF3C();
      v34 = v61;
      v35 = v14;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v35 = v14;
    v34 = v61;
    if (v11)
    {
      return 0;
    }
  }

  if (v93)
  {
    if (!v34)
    {
      return 0;
    }

    if (v92 != v60 || v93 != v34)
    {
      v37 = v35;
      v38 = sub_1C095DF3C();
      v35 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (v91)
  {
    if (!v35)
    {
      return 0;
    }

    v39 = v35;
    memcpy(v98, (v91 + 16), 0x301uLL);
    memcpy(__src, (v91 + 16), 0x301uLL);
    memcpy(v99, (v39 + 16), 0x301uLL);
    memcpy(v96, (v39 + 16), 0x301uLL);
    sub_1C0573F24(v98, v101);
    sub_1C0573F24(v99, v101);
    v40 = static TerminalElement.MatchingSpan.== infix(_:_:)(__src, v96);
    memcpy(__dst, v96, 0x301uLL);
    sub_1C0573F5C(__dst);
    memcpy(v101, __src, 0x301uLL);
    sub_1C0573F5C(v101);
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v90)
  {
    if (!v89)
    {
      return 0;
    }

    memcpy(v98, (v90 + 16), 0x301uLL);
    memcpy(__src, (v90 + 16), 0x301uLL);
    memcpy(v99, (v89 + 16), 0x301uLL);
    memcpy(v96, (v89 + 16), 0x301uLL);
    sub_1C0573F24(v98, v101);
    sub_1C0573F24(v99, v101);
    v41 = static TerminalElement.MatchingSpan.== infix(_:_:)(__src, v96);
    memcpy(__dst, v96, 0x301uLL);
    sub_1C0573F5C(__dst);
    memcpy(v101, __src, 0x301uLL);
    sub_1C0573F5C(v101);
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  if (v88 != v87 || v86 != v85 || v84 != v83 || v82 != v81 || v80 != v79 || v78 != v59 || v77 != v58 || v76 != v57 || v75 != v56 || v74 != v55)
  {
    return 0;
  }

  if (v73)
  {
    if (!v54 || (v72 != v53 || v73 != v54) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  if (v71 != v52)
  {
    return 0;
  }

  if (v70 == 15)
  {
    if (v51 != 15)
    {
      return 0;
    }
  }

  else if (v51 == 15 || v70 != v51)
  {
    return 0;
  }

  if (v69)
  {
    if (!v50 || (v68 != v48 || v69 != v50) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  if ((sub_1C055B098(v66, v49) & 1) == 0 || (sub_1C055B098(v67, v46) & 1) == 0 || (sub_1C056A1D8(v62, v47) & 1) == 0 || (sub_1C056A314(v63, v43) & 1) == 0)
  {
    return 0;
  }

  if ((v64 & 1) == 0)
  {
    v42 = v45;
    if (v65 != v44)
    {
      v42 = 1;
    }

    return (v42 & 1) == 0;
  }

  return v45 != 0;
}

uint64_t TerminalElement.OriginDetail.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, 0x301uLL);
  v3 = sub_1C0573F8C(__dst);
  v4 = sub_1C0527300(__dst);
  if (!v3)
  {
    if (v4[1])
    {
      v6 = *v4;
      sub_1C095E00C();
      return sub_1C095D7BC();
    }

    return sub_1C095E00C();
  }

  if (v3 == 1)
  {
    memcpy(v11, v4, sizeof(v11));
    return TerminalElement.MatchingSpan.hash(into:)(a1);
  }

  if (!v4[4])
  {
    return sub_1C095E00C();
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v10 = v4[3];
  sub_1C095E00C();
  if (v7 == 1)
  {
    goto LABEL_13;
  }

  sub_1C095E00C();
  if (!v7)
  {
    sub_1C095E00C();
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1C095E00C();
    return sub_1C056DF84(a1);
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C056DF84(a1);
}

uint64_t TerminalElement.OriginDetail.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(__dst, v0, 0x301uLL);
  v1 = sub_1C0573F8C(__dst);
  v2 = sub_1C0527300(__dst);
  if (!v1)
  {
    if (v2[1])
    {
      v3 = *v2;
      sub_1C095E00C();
      sub_1C095D7BC();
      return sub_1C095E03C();
    }

    goto LABEL_11;
  }

  if (v1 != 1)
  {
    if (v2[4])
    {
      v5 = *v2;
      v4 = v2[1];
      v6 = v2[2];
      v7 = v2[3];
      sub_1C095E00C();
      if (v4 != 1)
      {
        sub_1C095E00C();
        if (v4)
        {
          sub_1C095E00C();
          sub_1C095D7BC();
          if (v7)
          {
LABEL_10:
            sub_1C095E00C();
            sub_1C095D7BC();
LABEL_14:
            sub_1C056DF84(v10);
            return sub_1C095E03C();
          }
        }

        else
        {
          sub_1C095E00C();
          if (v7)
          {
            goto LABEL_10;
          }
        }
      }

      sub_1C095E00C();
      goto LABEL_14;
    }

LABEL_11:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  memcpy(v9, v2, sizeof(v9));
  TerminalElement.MatchingSpan.hash(into:)(v10);
  return sub_1C095E03C();
}

uint64_t sub_1C05675B4()
{
  sub_1C095DFEC();
  memcpy(__dst, v0, 0x301uLL);
  v1 = sub_1C0573F8C(__dst);
  v2 = sub_1C0527300(__dst);
  if (!v1)
  {
    if (v2[1])
    {
      v3 = *v2;
      sub_1C095E00C();
      sub_1C095D7BC();
      return sub_1C095E03C();
    }

    goto LABEL_11;
  }

  if (v1 != 1)
  {
    if (v2[4])
    {
      v5 = *v2;
      v4 = v2[1];
      v6 = v2[2];
      v7 = v2[3];
      sub_1C095E00C();
      if (v4 != 1)
      {
        sub_1C095E00C();
        if (v4)
        {
          sub_1C095E00C();
          sub_1C095D7BC();
          if (v7)
          {
LABEL_10:
            sub_1C095E00C();
            sub_1C095D7BC();
LABEL_14:
            sub_1C056DF84(v10);
            return sub_1C095E03C();
          }
        }

        else
        {
          sub_1C095E00C();
          if (v7)
          {
            goto LABEL_10;
          }
        }
      }

      sub_1C095E00C();
      goto LABEL_14;
    }

LABEL_11:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  memcpy(v9, v2, sizeof(v9));
  TerminalElement.MatchingSpan.hash(into:)(v10);
  return sub_1C095E03C();
}

uint64_t TerminalElement.DerivedOrigin.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[4];
  if (v3 != 1)
  {
    v5 = *v1;
    v6 = v1[2];
    v7 = v1[3];
    sub_1C095E00C();
    if (v3)
    {
      sub_1C095E00C();
      sub_1C095D7BC();
      if (v7)
      {
LABEL_4:
        sub_1C095E00C();
        sub_1C095D7BC();
        goto LABEL_7;
      }
    }

    else
    {
      sub_1C095E00C();
      if (v7)
      {
        goto LABEL_4;
      }
    }
  }

  sub_1C095E00C();
LABEL_7:

  return sub_1C056DF84(a1);
}

uint64_t TerminalElement.DerivedOrigin.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C095DFEC();
  if (v1 == 1)
  {
    goto LABEL_6;
  }

  sub_1C095E00C();
  if (!v1)
  {
    sub_1C095E00C();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  sub_1C056DF84(v7);
  return sub_1C095E03C();
}

uint64_t sub_1C05678D8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1C095DFEC();
  if (v1 == 1)
  {
    goto LABEL_6;
  }

  sub_1C095E00C();
  if (!v1)
  {
    sub_1C095E00C();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  sub_1C056DF84(v7);
  return sub_1C095E03C();
}

uint64_t TerminalElement.AdjustmentReason.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  v3 = *v0;
  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    return sub_1C095E00C();
  }

LABEL_3:
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t TerminalElement.AdjustmentReason.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C095DFEC();
  if (!v2)
  {
    sub_1C095E00C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0567B14()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  v3 = *v0;
  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    return sub_1C095E00C();
  }

LABEL_3:
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0567BCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C095DFEC();
  if (!v2)
  {
    sub_1C095E00C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t TerminalElement.ScalarValue.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1 + 2, sizeof(__dst));
  memcpy(v10, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(v10) != 1)
  {
    sub_1C095E00C();
    memcpy(v7, __dst, 0x20AuLL);
    sub_1C05735AC(v7, v8);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v8, __dst, 0x20AuLL);
    sub_1C05735E4(v8);
    if (v1[71])
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!v1[71])
  {
    return sub_1C095E00C();
  }

LABEL_3:
  v3 = v1[68];
  v4 = v1[69];
  v5 = v1[70];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v4)
  {
    sub_1C095D7BC();
  }

  return sub_1C095D7BC();
}

uint64_t TerminalElement.ScalarValue.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(__dst, v0 + 2, sizeof(__dst));
  memcpy(v9, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(v9) != 1)
  {
    sub_1C095E00C();
    memcpy(v5, __dst, 0x20AuLL);
    sub_1C05735AC(v5, v6);
    TerminalElement.Value.hash(into:)(v7);
    memcpy(v6, __dst, 0x20AuLL);
    sub_1C05735E4(v6);
    if (v0[71])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  if (!v0[71])
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = v0[68];
  v2 = v0[69];
  v3 = v0[70];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0567F48()
{
  sub_1C095DFEC();
  v1 = *v0;
  memcpy(__dst, (*v0 + 16), sizeof(__dst));
  memmove(v10, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(v10) != 1)
  {
    sub_1C095E00C();
    memcpy(v6, __dst, 0x20AuLL);
    sub_1C05735AC(v6, v7);
    TerminalElement.Value.hash(into:)(v8);
    memcpy(v7, __dst, 0x20AuLL);
    sub_1C05735E4(v7);
    if (v1[71])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  if (!v1[71])
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = v1[68];
  v3 = v1[69];
  v4 = v1[70];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v3)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t TerminalElement.SemanticValue.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095D7BC();
}

uint64_t TerminalElement.SemanticValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05681A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568234()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095D7BC();
}

uint64_t sub_1C05682BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t static TerminalElement.OriginalValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t TerminalElement.OriginalValue.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t TerminalElement.OriginalValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568448()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05684AC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0568500()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568560(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t sub_1C05685A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v13);

      v18 = sub_1C0516A8C(v15, v16);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
LABEL_133:

        return 0;
      }

      v21 = *(*(v2 + 56) + 8 * v18);
      v22 = v21 >> 62;
      if (v21 >> 62)
      {
        v116 = v21;
        v117 = sub_1C095DCDC();
        v21 = v116;
        v23 = v117;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 >> 62)
      {
        v129 = v23;
        v118 = v21;
        result = sub_1C095DCDC();
        v21 = v118;
        v23 = v129;
        if (v129 != result)
        {
          goto LABEL_133;
        }
      }

      else
      {
        result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23 != result)
        {
          goto LABEL_133;
        }
      }

      if (v23)
      {
        v24 = v21 & 0xFFFFFFFFFFFFFF8;
        v25 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
        v131 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v21 < 0)
        {
          v24 = v21;
        }

        if (v22)
        {
          v25 = v24;
        }

        v26 = v17 & 0xFFFFFFFFFFFFFF8;
        v27 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
        v130 = v17 & 0xFFFFFFFFFFFFFF8;
        if (v17 < 0)
        {
          v26 = v17;
        }

        if (v17 >> 62)
        {
          v27 = v26;
        }

        if (v25 != v27)
        {
          break;
        }
      }

LABEL_119:

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if ((v23 & 0x8000000000000000) == 0)
    {
      v28 = v21 & 0xC000000000000001;
      v139 = v17 & 0xC000000000000001;
      v120 = v17 + 32;
      v121 = v21 + 32;
      v146 = v21;

      v29 = 0;
      v147 = v17;
      v126 = v3;
      v127 = v2;
      v124 = v9;
      v125 = v5;
      v122 = v28;
      v123 = v8;
      v128 = v23;
      while (1)
      {
        if (__OFADD__(v29, 1))
        {
          goto LABEL_145;
        }

        v132 = v29 + 1;
        if (v28)
        {
          result = MEMORY[0x1C68DDAD0](v29, v146);
          v30 = result;
          if (v139)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v29 >= *(v131 + 16))
          {
            goto LABEL_147;
          }

          v30 = *(v121 + 8 * v29);

          if (v139)
          {
LABEL_32:
            v31 = MEMORY[0x1C68DDAD0](v29, v17);
            goto LABEL_37;
          }
        }

        if (v29 >= *(v130 + 16))
        {
          goto LABEL_148;
        }

        v32 = *(v120 + 8 * v29);

LABEL_37:
        v33 = *(v30 + 16);
        v34 = *(v30 + 24);
        v35 = *(v31 + 16);
        v36 = *(v31 + 24);
        swift_unownedRetainStrong();
        v37 = v34[7];

        swift_unownedRetain();

        swift_unownedRetain();

        swift_unownedRetainStrong();
        v38 = v36[7];

        if (v37 != v38)
        {
          goto LABEL_128;
        }

        swift_unownedRetainStrong();
        v39 = v34;
        v40 = v34[8];
        v41 = v34[9];
        v42 = v39[10];
        v43 = v39[11];
        v163 = v39[12];

        v44 = v43;

        v165 = v39;

        swift_unownedRetainStrong();
        v45 = v36[8];
        v46 = v36[9];
        v47 = v36[10];
        v48 = v36[11];
        v160 = v36[12];

        if ((v40 != v45 || v41 != v46) && (sub_1C095DF3C() & 1) == 0 || (v42 != v47 || v44 != v48) && (sub_1C095DF3C() & 1) == 0)
        {

          swift_unownedRelease();
          goto LABEL_131;
        }

        v49 = v165;
        if (!v163)
        {
          if (v160)
          {
LABEL_135:

            goto LABEL_130;
          }

          goto LABEL_60;
        }

        if (!v160)
        {
          goto LABEL_135;
        }

        v50 = v163[1];
        v51 = v163[2];
        v52 = v163[3];
        v205 = v163[4];
        v204 = v52;
        v203 = v51;
        v202 = v50;
        v53 = v160[1];
        v54 = v160[2];
        v55 = v160[4];
        v215 = v160[3];
        v216 = v55;
        v214 = v54;
        v213 = v53;
        v169 = v203;
        v170 = v52;
        v171 = v205;
        v56 = *(&v53 + 1);
        v57 = v53;
        v58 = v160[3];
        v166 = v160[2];
        v167 = v58;
        v168 = v160[4];
        if (!*(&v202 + 1))
        {
          if (*(&v53 + 1))
          {
            v119 = *(&v202 + 1);
            v154 = v202;

            sub_1C05149F8(&v202, &v224, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v213, &v224, &qword_1EBE16D80, &qword_1C0970448);
LABEL_143:
            *&v224 = v154;
            *(&v224 + 1) = v119;
            v225 = v169;
            v226 = v170;
            v227 = v171;
            *&v228 = v57;
            *(&v228 + 1) = v56;
            v229 = v166;
            v230 = v167;
            v231 = v168;
            sub_1C05145B4(&v224, &qword_1EBE16D88, &qword_1C0970450);

LABEL_130:
            swift_unownedRelease();
            goto LABEL_131;
          }

          v224 = v202;
          v225 = v203;
          v226 = v204;
          v227 = v205;
          sub_1C05149F8(&v202, &v191, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v213, &v191, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05145B4(&v224, &qword_1EBE16D80, &qword_1C0970448);
LABEL_60:

          goto LABEL_66;
        }

        v224 = v202;
        v226 = v204;
        v227 = v205;
        v225 = v203;
        v154 = v202;
        v156 = *(&v203 + 1);
        v59 = *(&v204 + 1);
        v149 = *(&v205 + 1);
        if (!*(&v53 + 1))
        {
          v119 = *(&v202 + 1);

          sub_1C05149F8(&v202, &v191, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v213, &v191, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v224, &v191, &qword_1EBE16D80, &qword_1C0970448);

          v56 = 0;
          goto LABEL_143;
        }

        v60 = v225;
        v141 = v227;
        v143 = v226;
        v191 = v53;
        v193 = v167;
        v194 = v168;
        v192 = v166;
        v61 = v166;
        v62 = v167;
        v63 = v168;
        v152 = *(&v202 + 1);
        if (v202 == v53 || (sub_1C095DF3C()) && (__PAIR128__(v156, v60) == v61 || (sub_1C095DF3C()) && (__PAIR128__(v59, v143) == v62 || (sub_1C095DF3C()))
        {
          if (__PAIR128__(v149, v141) == v63)
          {

            sub_1C05149F8(&v202, &v180, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v213, &v180, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v224, &v180, &qword_1EBE16D80, &qword_1C0970448);
            v144 = 1;
          }

          else
          {
            v144 = sub_1C095DF3C();

            sub_1C05149F8(&v202, &v180, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v213, &v180, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v224, &v180, &qword_1EBE16D80, &qword_1C0970448);
          }

          v49 = v165;
        }

        else
        {

          sub_1C05149F8(&v202, &v180, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v213, &v180, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v224, &v180, &qword_1EBE16D80, &qword_1C0970448);
          v144 = 0;
          v49 = v165;
        }

        sub_1C05145B4(&v191, &qword_1EBE16D80, &qword_1C0970448);

        *&v180 = v154;
        *(&v180 + 1) = v152;
        v181 = v169;
        v182 = v170;
        v183 = v171;
        sub_1C05145B4(&v180, &qword_1EBE16D80, &qword_1C0970448);

        if ((v144 & 1) == 0)
        {
LABEL_128:

          swift_unownedRelease();
          goto LABEL_131;
        }

LABEL_66:
        swift_unownedRetainStrong();
        swift_beginAccess();
        v64 = v49[13];

        swift_unownedRetainStrong();
        swift_beginAccess();
        v65 = v36[13];

        v66 = *(v64 + 16);
        if (v66 != *(v65 + 16))
        {
LABEL_127:

          goto LABEL_130;
        }

        if (v66 && v64 != v65)
        {
          v67 = 0;
          v158 = v36;
          v133 = v65;
          v134 = v64;
          while (1)
          {
            v68 = *(v64 + v67 + 32);
            v69 = *(v64 + v67 + 40);
            v70 = *(v64 + v67 + 48);
            v71 = *(v64 + v67 + 56);
            v72 = *(v64 + v67 + 72);
            v145 = *(v64 + v67 + 64);
            v73 = *(v64 + v67 + 80);
            v161 = *(v64 + v67 + 88);
            v164 = *(v64 + v67 + 89);
            v142 = *(v64 + v67 + 92);
            v157 = *(v64 + v67 + 96);
            v138 = *(v64 + v67 + 100);
            v153 = *(v64 + v67 + 104);
            v136 = *(v64 + v67 + 112);
            v150 = *(v64 + v67 + 120);
            v74 = v65 + v67;
            v75 = *(v65 + v67 + 32);
            v76 = *(v65 + v67 + 40);
            v77 = *(v65 + v67 + 48);
            v78 = *(v65 + v67 + 56);
            v79 = *(v74 + 64);
            v80 = *(v74 + 72);
            v81 = *(v74 + 80);
            v159 = *(v74 + 88);
            v162 = *(v74 + 89);
            v140 = *(v74 + 92);
            v155 = *(v74 + 96);
            v137 = *(v74 + 100);
            v151 = *(v74 + 104);
            v135 = *(v74 + 112);
            v148 = *(v74 + 120);
            if ((v68 != v75 || v69 != v76) && (sub_1C095DF3C() & 1) == 0)
            {

              swift_unownedRelease();

              goto LABEL_139;
            }

            if ((v70 != v77 || v71 != v78) && (sub_1C095DF3C() & 1) == 0)
            {
              break;
            }

            if (v72)
            {
              v49 = v165;
              v65 = v133;
              v64 = v134;
              if (!v80 || (v145 != v79 || v72 != v80) && (sub_1C095DF3C() & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else
            {
              v49 = v165;
              v65 = v133;
              v64 = v134;
              if (v80)
              {
                goto LABEL_127;
              }
            }

            if (v161)
            {
              v36 = v158;
              v82 = v164;
              v83 = v162;
              if ((v159 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else
            {
              v36 = v158;
              v82 = v164;
              v83 = v162;
              if ((v159 & 1) != 0 || v73 != v81)
              {
                goto LABEL_127;
              }
            }

            if (v82 == 7)
            {
              if (v83 != 7)
              {
                goto LABEL_129;
              }
            }

            else
            {
              if (v83 == 7)
              {
                goto LABEL_129;
              }

              if (v82 != v83)
              {
                goto LABEL_127;
              }
            }

            if (v157)
            {
              if ((v155 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v155 & 1) != 0 || v142 != v140)
            {
              goto LABEL_127;
            }

            if (v153)
            {
              if ((v151 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v151 & 1) != 0 || v138 != v137)
            {
              goto LABEL_127;
            }

            if (v150)
            {
              if ((v148 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v148 & 1) != 0 || v136 != v135)
            {
              goto LABEL_127;
            }

            v67 += 96;
            if (!--v66)
            {
              goto LABEL_109;
            }
          }

          swift_unownedRelease();
LABEL_131:

          swift_unownedRelease();
LABEL_132:

          goto LABEL_133;
        }

LABEL_109:

        swift_unownedRetainStrong();
        v84 = v49[14];

        swift_unownedRetainStrong();
        v85 = v36[14];

        v86 = sub_1C055ACCC(v84, v85);

        if ((v86 & 1) == 0)
        {

          swift_unownedRelease();

LABEL_139:
          swift_unownedRelease();
          goto LABEL_132;
        }

        swift_unownedRetainStrong();
        swift_beginAccess();
        v87 = v49[15];

        swift_unownedRetainStrong();
        swift_beginAccess();
        v88 = v36[15];

        v89 = *(v87 + 16);
        if (v89 != *(v88 + 16))
        {
          goto LABEL_129;
        }

        if (v89 && v87 != v88)
        {
          v90 = v89 - 1;
          for (i = 32; ; i += 192)
          {
            v92 = *(v87 + i);
            v93 = *(v87 + i + 16);
            v94 = *(v87 + i + 48);
            v193 = *(v87 + i + 32);
            v194 = v94;
            v191 = v92;
            v192 = v93;
            v95 = *(v87 + i + 64);
            v96 = *(v87 + i + 80);
            v97 = *(v87 + i + 112);
            v197 = *(v87 + i + 96);
            v198 = v97;
            v195 = v95;
            v196 = v96;
            v98 = *(v87 + i + 128);
            v99 = *(v87 + i + 144);
            v100 = *(v87 + i + 160);
            *(v201 + 9) = *(v87 + i + 169);
            v201[0] = v100;
            v200 = v99;
            v199 = v98;
            v188 = *(v87 + i + 128);
            v189 = *(v87 + i + 144);
            v190[0] = *(v87 + i + 160);
            *(v190 + 9) = *(v87 + i + 169);
            v184 = *(v87 + i + 64);
            v185 = *(v87 + i + 80);
            v186 = *(v87 + i + 96);
            v187 = *(v87 + i + 112);
            v180 = *(v87 + i);
            v181 = *(v87 + i + 16);
            v182 = *(v87 + i + 32);
            v183 = *(v87 + i + 48);
            v101 = *(v88 + i);
            v102 = *(v88 + i + 16);
            v103 = *(v88 + i + 32);
            v205 = *(v88 + i + 48);
            v204 = v103;
            v203 = v102;
            v202 = v101;
            v104 = *(v88 + i + 64);
            v105 = *(v88 + i + 80);
            v106 = *(v88 + i + 96);
            v209 = *(v88 + i + 112);
            v208 = v106;
            v207 = v105;
            v206 = v104;
            v107 = *(v88 + i + 128);
            v108 = *(v88 + i + 144);
            v109 = *(v88 + i + 160);
            *(v212 + 9) = *(v88 + i + 169);
            v212[0] = v109;
            v211 = v108;
            v210 = v107;
            v110 = *(v88 + i + 144);
            v177 = *(v88 + i + 128);
            v178 = v110;
            v179[0] = *(v88 + i + 160);
            *(v179 + 9) = *(v88 + i + 169);
            v111 = *(v88 + i + 80);
            v173 = *(v88 + i + 64);
            v174 = v111;
            v112 = *(v88 + i + 112);
            v175 = *(v88 + i + 96);
            v176 = v112;
            v113 = *(v88 + i + 16);
            v169 = *(v88 + i);
            v170 = v113;
            v114 = *(v88 + i + 48);
            v171 = *(v88 + i + 32);
            v172 = v114;
            sub_1C0521E78(&v191, &v166);
            sub_1C0521E78(&v202, &v166);
            v115 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v180, &v169);
            v221 = v177;
            v222 = v178;
            v223[0] = v179[0];
            *(v223 + 9) = *(v179 + 9);
            v217 = v173;
            v218 = v174;
            v219 = v175;
            v220 = v176;
            v213 = v169;
            v214 = v170;
            v215 = v171;
            v216 = v172;
            sub_1C05755CC(&v213);
            v232 = v188;
            v233 = v189;
            v234[0] = v190[0];
            *(v234 + 9) = *(v190 + 9);
            v228 = v184;
            v229 = v185;
            v230 = v186;
            v231 = v187;
            v224 = v180;
            v225 = v181;
            v226 = v182;
            v227 = v183;
            sub_1C05755CC(&v224);
            if ((v115 & 1) == 0)
            {
              break;
            }

            if (!v90)
            {
              goto LABEL_117;
            }

            --v90;
          }

LABEL_129:

          goto LABEL_130;
        }

LABEL_117:

        swift_unownedRelease();

        result = swift_unownedRelease();
        v29 = v132;
        v2 = v127;
        v17 = v147;
        v5 = v125;
        v3 = v126;
        v8 = v123;
        v9 = v124;
        v28 = v122;
        if (v132 == v128)
        {

          goto LABEL_119;
        }
      }
    }
  }

  else
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
    __break(1u);
LABEL_145:
    __break(1u);
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1C0569898(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v64 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v65 = (v5 + 63) >> 6;
  v61 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1C0514E38(*(*(v3 + 48) + 8 * v12));
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    v16 = *(*(v2 + 56) + 8 * v14);
    v17 = *(v16 + 40);
    v18 = *(v13 + 40);
    if (v17 == 255)
    {
      if (v18 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v18 == 255)
      {
        return 0;
      }

      v19 = *(v16 + 24);
      v20 = *(v16 + 32);
      v22 = *(v13 + 24);
      v21 = *(v13 + 32);
      if (v17)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_68;
        }

        if (v20)
        {
          if (!v21)
          {
            return 0;
          }

          if (v19 != v22 || v20 != v21)
          {
            v24 = *(v13 + 32);
            v25 = *(v16 + 32);
            if ((sub_1C095DF3C() & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v21)
        {
          return 0;
        }
      }

      else
      {
        if (v18)
        {
          return 0;
        }

        if (v20)
        {
          if ((v21 & 1) == 0)
          {
            goto LABEL_68;
          }

          v19 = *(v13 + 24);
        }

        else if (v21 & 1 | (v19 != v22))
        {
LABEL_68:
          v51 = *(v13 + 32);
          v52 = *(v13 + 24);

          sub_1C0514B20(v52, v51, v18);

          return 0;
        }

        sub_1C0518BB4(v19, v21, 0);
      }
    }

    if (*(v16 + 56) != *(v13 + 56))
    {
      return 0;
    }

    v63 = v9;
    v26 = *(v16 + 64);
    v27 = *(v16 + 72);
    v29 = *(v16 + 80);
    v28 = *(v16 + 88);
    v30 = *(v16 + 96);
    v32 = *(v13 + 80);
    v31 = *(v13 + 88);
    v33 = *(v13 + 96);
    if (v26 != *(v13 + 64) || v27 != *(v13 + 72))
    {
      v35 = *(v13 + 96);
      v36 = v31;
      v37 = sub_1C095DF3C();
      v31 = v36;
      v33 = v35;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    v38 = v29 == v32 && v28 == v31;
    if (!v38 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }

    if (v30)
    {
      if (!v33)
      {
        return 0;
      }

      v39 = v30[1];
      v40 = v30[2];
      v41 = v30[4];
      v85 = v30[3];
      v86 = v41;
      v83 = v39;
      v84 = v40;
      v42 = v33[1];
      v43 = v33[2];
      v44 = v33[4];
      v87[2] = v33[3];
      v87[3] = v44;
      v87[0] = v42;
      v87[1] = v43;
      v80 = v84;
      v81 = v85;
      v82 = v86;
      v45 = *(&v42 + 1);
      v46 = v33[3];
      v77 = v33[2];
      v78 = v46;
      v79 = v33[4];
      v47 = v83;
      if (!*(&v83 + 1))
      {
        v57 = v42;

        sub_1C05149F8(&v83, &v68, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v87, &v68, &qword_1EBE16D80, &qword_1C0970448);

        if (v45)
        {
          goto LABEL_70;
        }

        v68 = v47;
        v69 = v80;
        v70 = v81;
        v71 = v82;
        sub_1C05145B4(&v68, &qword_1EBE16D80, &qword_1C0970448);

        v7 = v63;
        goto LABEL_62;
      }

      v68 = v83;
      v70 = v85;
      v71 = v86;
      v69 = v84;
      v60 = *(&v84 + 1);
      v59 = *(&v85 + 1);
      v58 = *(&v86 + 1);
      if (!*(&v42 + 1))
      {
        v57 = v42;

        sub_1C05149F8(&v83, v67, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v87, v67, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(&v68, v67, &qword_1EBE16D80, &qword_1C0970448);

        v45 = 0;
LABEL_70:
        v68 = v47;
        v69 = v80;
        v70 = v81;
        v71 = v82;
        v72 = v57;
        v73 = v45;
        v74 = v77;
        v75 = v78;
        v76 = v79;
        sub_1C05145B4(&v68, &qword_1EBE16D88, &qword_1C0970450);

        return 0;
      }

      v48 = v69;
      v54 = v71;
      v55 = v70;
      v67[0] = v42;
      v67[2] = v78;
      v67[3] = v79;
      v67[1] = v77;
      v49 = v77;
      v50 = v78;
      v53 = v79;
      if (v83 == v42 || (sub_1C095DF3C()) && (__PAIR128__(v60, v48) == v49 || (sub_1C095DF3C()) && (__PAIR128__(v59, v55) == v50 || (sub_1C095DF3C()))
      {
        if (__PAIR128__(v58, v54) == v53)
        {

          sub_1C05149F8(&v83, v66, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(v87, v66, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v68, v66, &qword_1EBE16D80, &qword_1C0970448);
          v56 = 1;
        }

        else
        {
          v56 = sub_1C095DF3C();

          sub_1C05149F8(&v83, v66, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(v87, v66, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v68, v66, &qword_1EBE16D80, &qword_1C0970448);
        }
      }

      else
      {

        sub_1C05149F8(&v83, v66, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v87, v66, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(&v68, v66, &qword_1EBE16D80, &qword_1C0970448);
        v56 = 0;
      }

      sub_1C05145B4(v67, &qword_1EBE16D80, &qword_1C0970448);

      v66[0] = v47;
      v66[1] = v80;
      v66[2] = v81;
      v66[3] = v82;
      sub_1C05145B4(v66, &qword_1EBE16D80, &qword_1C0970448);

      result = 0;
      v2 = a2;
      v7 = v63;
      v3 = v61;
      if ((v56 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      swift_retain_n();

      v7 = v63;
      if (v33)
      {

        return 0;
      }

LABEL_62:
      v3 = v61;
      v2 = a2;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v65)
    {
      return 1;
    }

    v11 = *(v64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056A1D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1C0516A8C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056A314(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1C0516A8C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1C095DF3C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056A4B8(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  v66 = *(v63 - 8);
  v4 = *(v66 + 64);
  v5 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF0, &qword_1C09704C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v65 = (&v58 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = v16;
  v62 = v9;
  v19 = 0;
  v20 = *(a1 + 64);
  v59 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v60 = v24;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v34 = __clz(__rbit64(v23)) | (v19 << 6);
    v35 = v62;
    v36 = v65;
LABEL_17:
    v41 = *(*(a1 + 48) + 4 * v34);
    sub_1C0575968(*(a1 + 56) + *(v66 + 72) * v34, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
    v43 = *(v42 + 48);
    *v16 = v41;
    sub_1C0575688(v11, v16 + v43, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    (*(*(v42 - 8) + 56))(v16, 0, 1, v42);
LABEL_18:
    sub_1C0575620(v16, v36, &qword_1EBE16DF0, &qword_1C09704C8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
    v45 = (*(*(v44 - 8) + 48))(v36, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = *v36;
    sub_1C0575688(v36 + v47, v35, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v49 = sub_1C057EAB4(v48);
    if ((v50 & 1) == 0)
    {
      goto LABEL_30;
    }

    v51 = v67;
    sub_1C0575968(*(a2 + 56) + *(v66 + 72) * v49, v67, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v52 = *v51;
    v53 = *v35;
    v54 = *(*v51 + 16);
    if (v54 != *(*v35 + 16))
    {
      goto LABEL_29;
    }

    if (v54 && v52 != v53)
    {
      v55 = (v52 + 32);
      v56 = (v53 + 32);
      while (*v55 == *v56)
      {
        ++v55;
        ++v56;
        if (!--v54)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      sub_1C0575908(v67, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
LABEL_30:
      sub_1C0575908(v35, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
      return 0;
    }

LABEL_6:
    v25 = a1;
    v26 = a2;
    v27 = *(v63 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v28 = v11;
    v29 = v67;
    v30 = v35;
    v31 = sub_1C095D73C();
    v32 = v29;
    v11 = v28;
    sub_1C0575908(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v33 = v30;
    a2 = v26;
    a1 = v25;
    v16 = v61;
    result = sub_1C0575908(v33, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v24 = v60;
    v23 = v64;
    if ((v31 & 1) == 0)
    {
      return v46;
    }
  }

  if (v24 <= v19 + 1)
  {
    v37 = v19 + 1;
  }

  else
  {
    v37 = v24;
  }

  v38 = v37 - 1;
  v35 = v62;
  v36 = v65;
  while (1)
  {
    v39 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v39 >= v24)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
      (*(*(v57 - 8) + 56))(v16, 1, 1, v57);
      v64 = 0;
      v19 = v38;
      goto LABEL_18;
    }

    v40 = *(v59 + 8 * v39);
    ++v19;
    if (v40)
    {
      v64 = (v40 - 1) & v40;
      v34 = __clz(__rbit64(v40)) | (v39 << 6);
      v19 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1C056AA5C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 4 * v12);
    result = sub_1C057EAB4(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 4 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056AB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v160 = (&v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  v7 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v9 = &v135 - v8;
  v158 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v10 = *(v158 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v158);
  v161 = (&v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = (&v135 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v135 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v156 = &v135 - v20;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  v21 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v23 = &v135 - v22;
  v163 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v165 = *(v163 - 8);
  v24 = *(v165 + 64);
  v25 = MEMORY[0x1EEE9AC00](v163);
  v169 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v135 - v27;
  v159 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
  v167 = *(v159 - 8);
  v29 = *(v167 + 64);
  v30 = MEMORY[0x1EEE9AC00](v159);
  v168 = (&v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v135 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v135 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D50, &qword_1C0970418);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v166 = (&v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v38);
  v164 = (&v135 - v41);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v143 = v17;
  v137 = v4;
  v144 = v9;
  v42 = 0;
  v43 = *(a1 + 64);
  v141 = a1 + 64;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v145 = (v10 + 48);
  v148 = a2;
  v147 = a1;
  v146 = v47;
  v151 = v28;
  while (v46)
  {
    v52 = v23;
    v153 = (v46 - 1) & v46;
    v53 = __clz(__rbit64(v46)) | (v42 << 6);
LABEL_17:
    v59 = (*(a1 + 48) + 16 * v53);
    v61 = *v59;
    v60 = v59[1];
    v62 = v162;
    sub_1C0575968(*(a1 + 56) + *(v167 + 72) * v53, v162, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
    v64 = *(v63 + 48);
    v65 = v166;
    *v166 = v61;
    v65[1] = v60;
    v56 = v65;
    sub_1C0575688(v62, v65 + v64, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    (*(*(v63 - 8) + 56))(v56, 0, 1, v63);

    v23 = v52;
    v28 = v151;
LABEL_18:
    v66 = v164;
    sub_1C0575620(v56, v164, &qword_1EBE16D50, &qword_1C0970418);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
    v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
    v51 = v68 == 1;
    if (v68 == 1)
    {
      return v51;
    }

    v69 = *(v67 + 48);
    v70 = *v66;
    v71 = v66[1];
    sub_1C0575688(v66 + v69, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v72 = sub_1C0516A8C(v70, v71);
    v73 = v34;
    v75 = v74;

    if ((v75 & 1) == 0)
    {
      goto LABEL_109;
    }

    v152 = v51;
    v76 = v168;
    result = sub_1C0575968(*(a2 + 56) + *(v167 + 72) * v72, v168, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v77 = *v76;
    v78 = *v73;
    v79 = *(v77 + 16);
    v34 = v73;
    if (v79 != *(*v73 + 16))
    {
LABEL_108:
      sub_1C0575908(v168, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      v73 = v34;
LABEL_109:
      sub_1C0575908(v73, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      return 0;
    }

    if (v79 && v77 != v78)
    {
      v80 = 0;
      v81 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v82 = v77 + v81;
      v149 = v34;
      v150 = v78 + v81;
      v140 = v77;
      v139 = v78;
      v138 = v79;
      v142 = v77 + v81;
      while (1)
      {
        if (v80 >= *(v77 + 16))
        {
          goto LABEL_114;
        }

        v83 = *(v165 + 72) * v80;
        result = sub_1C0575968(v82 + v83, v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        if (v80 >= *(v78 + 16))
        {
          goto LABEL_115;
        }

        v84 = v169;
        sub_1C0575968(v150 + v83, v169, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        if ((*v28 != *v84 || *(v28 + 1) != v84[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_107;
        }

        result = *(v28 + 2);
        if (result != *(v169 + 16) || *(v28 + 3) != *(v169 + 24))
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        if (*(v28 + 4) != *(v169 + 32))
        {
          goto LABEL_107;
        }

        if (v28[40] != *(v169 + 40))
        {
          goto LABEL_107;
        }

        v85 = *(v28 + 6);
        v86 = *(v169 + 48);
        v87 = *(v85 + 16);
        if (v87 != *(v86 + 16))
        {
          goto LABEL_107;
        }

        if (v87 && v85 != v86)
        {
          v88 = (v85 + 40);
          v89 = (v86 + 40);
          do
          {
            result = *(v88 - 1);
            if (result != *(v89 - 1) || *v88 != *v89)
            {
              result = sub_1C095DF3C();
              if ((result & 1) == 0)
              {
                goto LABEL_107;
              }
            }

            v88 += 2;
            v89 += 2;
          }

          while (--v87);
        }

        v91 = *(v28 + 7);
        v92 = *(v169 + 56);
        v93 = *(v91 + 16);
        if (v93 != *(v92 + 16))
        {
          goto LABEL_107;
        }

        if (v93 && v91 != v92)
        {
          break;
        }

LABEL_51:
        v95 = *(v163 + 40);
        v96 = *(v157 + 48);
        sub_1C05149F8(&v28[v95], v23, &qword_1EBE16D40, &qword_1C09A7AD0);
        sub_1C05149F8(v169 + v95, &v23[v96], &qword_1EBE16D40, &qword_1C09A7AD0);
        v97 = *v145;
        v98 = v158;
        if ((*v145)(v23, 1, v158) == 1)
        {
          v99 = v97(&v23[v96], 1, v98);
          v82 = v142;
          if (v99 != 1)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v100 = v23;
          v101 = v23;
          v102 = v156;
          sub_1C05149F8(v100, v156, &qword_1EBE16D40, &qword_1C09A7AD0);
          if (v97(&v101[v96], 1, v98) == 1)
          {
            sub_1C0575908(v102, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v23 = v101;
LABEL_101:
            v132 = &qword_1EBE16D48;
            v133 = &qword_1C0970410;
            goto LABEL_106;
          }

          v136 = v101;
          v103 = &v101[v96];
          v104 = v143;
          sub_1C0575688(v103, v143, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v105 = v144;
          v106 = &v144[*(v155 + 48)];
          sub_1C0575968(v102, v144, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575968(v104, v106, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v107 = v161;
            sub_1C0575968(v105, v161, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v82 = v142;
            if (EnumCaseMultiPayload != 1)
            {
              sub_1C0575908(v107, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_104:
              v23 = v136;
              sub_1C05145B4(v144, &qword_1EBE16D38, &unk_1C0970400);
              goto LABEL_105;
            }

            v109 = v106;
            v110 = v160;
            sub_1C0575688(v109, v160, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            v23 = v136;
            if ((*v107 != *v110 || v107[1] != v110[1]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            if ((v161[2] != v160[2] || v161[3] != v160[3]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            if ((v161[4] != v160[4] || v161[5] != v160[5]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            v111 = v161[6];
            v112 = v160[6];
            v113 = *(v111 + 16);
            if (v113 != *(v112 + 16))
            {
              goto LABEL_98;
            }

            if (v113 && v111 != v112)
            {
              v114 = (v111 + 40);
              v115 = (v112 + 40);
              while (1)
              {
                v116 = *(v114 - 1) == *(v115 - 1) && *v114 == *v115;
                if (!v116 && (sub_1C095DF3C() & 1) == 0)
                {
                  break;
                }

                v114 += 2;
                v115 += 2;
                if (!--v113)
                {
                  goto LABEL_89;
                }
              }

LABEL_98:
              sub_1C0575908(v160, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              sub_1C0575908(v161, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_99:
              sub_1C0575908(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_105:
              v134 = v156;
              sub_1C0575908(v143, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              sub_1C0575908(v134, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              v132 = &qword_1EBE16D40;
              v133 = &qword_1C09A7AD0;
LABEL_106:
              sub_1C05145B4(v23, v132, v133);
LABEL_107:
              sub_1C0575908(v169, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              sub_1C0575908(v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              v34 = v149;
              goto LABEL_108;
            }

LABEL_89:
            v126 = *(v137 + 32);
            sub_1C095D38C();
            sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
            if ((sub_1C095D73C() & 1) == 0)
            {
              goto LABEL_98;
            }

            sub_1C0575908(v160, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            sub_1C0575908(v161, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          }

          else
          {
            v120 = v154;
            sub_1C0575968(v105, v154, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v122 = *v120;
            v121 = v120[1];
            v123 = swift_getEnumCaseMultiPayload();
            v82 = v142;
            if (v123 == 1)
            {

              goto LABEL_104;
            }

            v124 = *v106;
            v125 = *(v106 + 1);
            v23 = v136;
            if (v122 == v124 && v121 == v125)
            {
            }

            else
            {
              v127 = sub_1C095DF3C();

              if ((v127 & 1) == 0)
              {
                goto LABEL_99;
              }
            }
          }

          sub_1C0575908(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v143, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v156, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        }

        sub_1C05145B4(v23, &qword_1EBE16D40, &qword_1C09A7AD0);
        v128 = *(v163 + 44);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        v129 = v169;
        v130 = sub_1C095D73C();
        sub_1C0575908(v129, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        result = sub_1C0575908(v28, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v34 = v149;
        v77 = v140;
        v78 = v139;
        if ((v130 & 1) == 0)
        {
          goto LABEL_108;
        }

        if (++v80 == v138)
        {
          goto LABEL_6;
        }
      }

      v117 = (v91 + 40);
      v118 = (v92 + 40);
      while (v93)
      {
        result = *(v117 - 1);
        if (result != *(v118 - 1) || *v117 != *v118)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        v117 += 2;
        v118 += 2;
        if (!--v93)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_113;
    }

LABEL_6:
    v48 = *(v159 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v49 = v168;
    v50 = sub_1C095D73C();
    sub_1C0575908(v49, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    result = sub_1C0575908(v34, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    a2 = v148;
    a1 = v147;
    v47 = v146;
    v46 = v153;
    v51 = v152;
    if ((v50 & 1) == 0)
    {
      return v51;
    }
  }

  if (v47 <= v42 + 1)
  {
    v54 = v42 + 1;
  }

  else
  {
    v54 = v47;
  }

  v55 = v54 - 1;
  v56 = v166;
  while (1)
  {
    v57 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v57 >= v47)
    {
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
      (*(*(v131 - 8) + 56))(v56, 1, 1, v131);
      v153 = 0;
      v42 = v55;
      goto LABEL_18;
    }

    v58 = *(v141 + 8 * v57);
    ++v42;
    if (v58)
    {
      v52 = v23;
      v153 = (v58 - 1) & v58;
      v53 = __clz(__rbit64(v58)) | (v57 << 6);
      v42 = v57;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
LABEL_113:
  __break(1u);
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1C056BC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v70 - v10);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v70 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D28, &qword_1C09703F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v23);
  v80 = (&v70 - v27);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v73 = v12;
  v74 = a1;
  v28 = 0;
  v29 = *(a1 + 64);
  v71 = a1 + 64;
  v72 = v20;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v70 = (v30 + 63) >> 6;
  v79 = v25;
  v75 = v18;
  v76 = a2;
  while (v32)
  {
    v78 = (v32 - 1) & v32;
    v36 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v41 = (*(a1 + 48) + 16 * v36);
    v43 = *v41;
    v42 = v41[1];
    sub_1C0575968(*(a1 + 56) + *(v81 + 72) * v36, v20, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
    v45 = *(v44 + 48);
    v46 = v79;
    *v79 = v43;
    *(v46 + 1) = v42;
    v25 = v46;
    sub_1C0575688(v20, &v46[v45], type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    (*(*(v44 - 8) + 56))(v25, 0, 1, v44);

LABEL_18:
    v47 = v80;
    sub_1C0575620(v25, v80, &qword_1EBE16D28, &qword_1C09703F0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48) == 1;
    result = v49;
    if (v49)
    {
      return result;
    }

    v77 = v49;
    v50 = *(v48 + 48);
    v51 = *v47;
    v52 = v47[1];
    sub_1C0575688(v47 + v50, v18, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v53 = v51;
    v54 = v76;
    v55 = sub_1C0516A8C(v53, v52);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_37;
    }

    v58 = *(v54 + 56) + *(v81 + 72) * v55;
    v59 = v82;
    result = sub_1C0575968(v58, v82, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v60 = *v59;
    v61 = *v18;
    v62 = *(*v59 + 16);
    if (v62 != *(v61 + 16))
    {
LABEL_36:
      sub_1C0575908(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      v18 = v75;
LABEL_37:
      sub_1C0575908(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      return 0;
    }

    if (v62 && v60 != v61)
    {
      v63 = 0;
      v64 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v83 = v60 + v64;
      v65 = v61 + v64;
      while (v63 < *(v60 + 16))
      {
        v66 = *(v85 + 72) * v63;
        result = sub_1C0575968(v83 + v66, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if (v63 >= *(v61 + 16))
        {
          goto LABEL_42;
        }

        sub_1C0575968(v65 + v66, v9, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if ((*v11 != *v9 || v11[1] != v9[1]) && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(v11[2], v9[2]) & 1) == 0)
        {
          sub_1C0575908(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
          sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
          goto LABEL_36;
        }

        v67 = *(v84 + 24);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        v68 = sub_1C095D73C();
        sub_1C0575908(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        result = sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if ((v68 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (v62 == ++v63)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_41;
    }

LABEL_6:
    v33 = *(v73 + 20);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v34 = v82;
    v18 = v75;
    v35 = sub_1C095D73C();
    sub_1C0575908(v34, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    sub_1C0575908(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    a1 = v74;
    v20 = v72;
    v32 = v78;
    v25 = v79;
    result = v77;
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  if (v70 <= v28 + 1)
  {
    v37 = v28 + 1;
  }

  else
  {
    v37 = v70;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v39 >= v70)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
      (*(*(v69 - 8) + 56))(v25, 1, 1, v69);
      v78 = 0;
      v28 = v38;
      goto LABEL_18;
    }

    v40 = *(v71 + 8 * v39);
    ++v28;
    if (v40)
    {
      v78 = (v40 - 1) & v40;
      v36 = __clz(__rbit64(v40)) | (v39 << 6);
      v28 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t TerminalElement.MatchingSpan.hash(into:)(__int128 *a1)
{
  v3 = v1[69];
  v25 = v1[68];
  v26 = v1[70];
  v4 = v1[71];
  v30 = v1[72];
  v31 = v1[73];
  v32 = v1[74];
  v33 = v1[75];
  v34 = v1[76];
  v35 = v1[77];
  v36 = v1[78];
  v37 = v1[79];
  v38 = *(v1 + 640);
  v39 = *(v1 + 641);
  v40 = *(v1 + 642);
  v41 = *(v1 + 643);
  v5 = v1[82];
  v42 = v5;
  v43 = v1[83];
  v29 = *(v1 + 672);
  v27 = v1[81];
  v28 = v1[85];
  v6 = v1[86];
  v7 = v1[87];
  v44 = v7;
  v45 = v1[88];
  v46 = v1[89];
  v8 = v1[90];
  v24 = v1[91];
  v9 = *(v1 + 736);
  if (v1[1])
  {
    v10 = *v1;
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  memcpy(__dst, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    memcpy(v48, v1 + 2, 0x20AuLL);
    sub_1C05735AC(v48, v47);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v47, v1 + 2, 0x20AuLL);
    sub_1C05735E4(v47);
  }

  v11 = v9;
  v12 = v8;
  v13 = v6;
  sub_1C095E00C();
  if (v3)
  {
    sub_1C095D7BC();
  }

  if (v4)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1C095E00C();
    v14 = v44;
    if (v31)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1C095E00C();
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1C095E00C();
  memcpy(v47, (v30 + 16), 0x301uLL);
  TerminalElement.MatchingSpan.hash(into:)(a1);
  v14 = v44;
  if (v31)
  {
LABEL_12:
    sub_1C095E00C();
    memcpy(v47, (v31 + 16), 0x301uLL);
    TerminalElement.MatchingSpan.hash(into:)(a1);
    goto LABEL_16;
  }

LABEL_15:
  sub_1C095E00C();
LABEL_16:
  MEMORY[0x1C68DDE90](v32);
  MEMORY[0x1C68DDE90](v33);
  MEMORY[0x1C68DDE90](v34);
  MEMORY[0x1C68DDE90](v35);
  MEMORY[0x1C68DDE90](v36);
  MEMORY[0x1C68DDE90](v37);
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  if (v42)
  {
    sub_1C095D7BC();
  }

  MEMORY[0x1C68DDE90](v43);
  if (v29 == 15)
  {
    sub_1C095E00C();
    if (v13)
    {
LABEL_20:
      sub_1C095E00C();
      sub_1C095D7BC();
      goto LABEL_23;
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v29);
    if (v13)
    {
      goto LABEL_20;
    }
  }

  sub_1C095E00C();
LABEL_23:
  MEMORY[0x1C68DDE90](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_1C095D7BC();

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  MEMORY[0x1C68DDE90](*(v45 + 16));
  v19 = *(v45 + 16);
  if (v19)
  {
    v20 = (v45 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      sub_1C095D7BC();

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  sub_1C0571C3C(a1, v46);
  sub_1C0571AD0(a1, v12);
  if (v11)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDEC0](v24);
}

uint64_t TerminalElement.MatchingSpan.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C056C8B8()
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C056C8FC()
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t AnyMatchingSpan.matchingSpan.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(a1, (v1 + 16), 0x301uLL);
  return sub_1C0573F24(__dst, v4);
}

uint64_t AnyMatchingSpan.__allocating_init(_:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x301uLL);
  return v2;
}

uint64_t AnyMatchingSpan.deinit()
{
  memcpy(__dst, (v0 + 16), 0x301uLL);
  sub_1C0573F5C(__dst);
  return v0;
}

uint64_t AnyMatchingSpan.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), 0x301uLL);
  sub_1C0573F5C(__dst);
  return swift_deallocClassInstance();
}

uint64_t static AnyMatchingSpan.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(__src, (v4 + 16), 0x301uLL);
  memcpy(v9, (v3 + 16), 0x301uLL);
  memcpy(v6, (v3 + 16), sizeof(v6));
  sub_1C0573F24(__dst, v11);
  sub_1C0573F24(v9, v11);
  LOBYTE(v3) = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
  memcpy(v10, v6, 0x301uLL);
  sub_1C0573F5C(v10);
  memcpy(v11, __src, 0x301uLL);
  sub_1C0573F5C(v11);
  return v3 & 1;
}

uint64_t AnyMatchingSpan.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(v2, (v0 + 16), sizeof(v2));
  TerminalElement.MatchingSpan.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C056CC18()
{
  v1 = *v0;
  sub_1C095DFEC();
  memcpy(v3, (v1 + 16), sizeof(v3));
  TerminalElement.MatchingSpan.hash(into:)(v4);
  return sub_1C095E03C();
}

uint64_t sub_1C056CCC8()
{
  sub_1C095DFEC();
  memcpy(v2, (*v0 + 16), sizeof(v2));
  TerminalElement.MatchingSpan.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C056CD1C(uint64_t a1)
{
  v1 = *MEMORY[0x1EEE9AC00](a1);
  v3 = *v2;
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(__src, (v1 + 16), 0x301uLL);
  memcpy(v8, (v3 + 16), 0x301uLL);
  memcpy(v5, (v3 + 16), sizeof(v5));
  sub_1C0573F24(__dst, v10);
  sub_1C0573F24(v8, v10);
  LOBYTE(v1) = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
  memcpy(v9, v5, 0x301uLL);
  sub_1C0573F5C(v9);
  memcpy(v10, __src, 0x301uLL);
  sub_1C0573F5C(v10);
  return v1 & 1;
}

uint64_t sub_1C056CE08(__int128 *a1)
{
  memcpy(__dst, v1, 0x301uLL);
  if (sub_1C05757D8(__dst) == 1)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  memcpy(v12, v1, 0x301uLL);
  v4 = sub_1C0573F8C(v12);
  v5 = sub_1C0527300(v12);
  if (!v4)
  {
    if (v5[1])
    {
      v6 = *v5;
      sub_1C095E00C();
      return sub_1C095D7BC();
    }

    return sub_1C095E00C();
  }

  if (v4 == 1)
  {
    memcpy(v11, v5, sizeof(v11));
    return TerminalElement.MatchingSpan.hash(into:)(a1);
  }

  if (!v5[4])
  {
    return sub_1C095E00C();
  }

  v8 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  sub_1C095E00C();
  if (v7 == 1)
  {
    goto LABEL_14;
  }

  sub_1C095E00C();
  if (!v7)
  {
    sub_1C095E00C();
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1C095E00C();
    return sub_1C056DF84(a1);
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C056DF84(a1);
}

uint64_t sub_1C056CFA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v9 = v5[1];
      v8 = v5[2];
      v11 = v5[3];
      v10 = v5[4];
      v12 = v5[5];
      MEMORY[0x1C68DDEC0](*(v5 - 2));
      MEMORY[0x1C68DDEC0](v6);
      sub_1C095E01C();

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v12 && (sub_1C095E00C(), v12[3]))
      {
        v18 = v12[8];
        v19 = v12[9];
        v16 = v12[6];
        v17 = v12[7];
        v14 = v12[4];
        v13 = v12[5];
        v15 = v12[2];
        sub_1C095E00C();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      v5 += 8;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C056D100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      result = sub_1C095E01C();
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C056D194(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 16);
  result = MEMORY[0x1C68DDE90](v5);
  if (v5)
  {
    v7 = 0;
    v8 = v3 + 32;
    v54 = v5;
    v55 = v8;
    do
    {
      memcpy(v66, (v8 + 1344 * v7), sizeof(v66));
      memcpy(v67, (v8 + 1344 * v7), 0x20AuLL);
      if (sub_1C0573598(v67) == 1)
      {
        sub_1C095E00C();
        goto LABEL_7;
      }

      memcpy(v63, v66, 0x20AuLL);
      sub_1C095E00C();
      memcpy(v64, v63, 0x20AuLL);
      v15 = sub_1C057363C(v64);
      if (v15 <= 3)
      {
        if (v15 > 1)
        {
          if (v15 != 2)
          {
            v21 = *sub_1C05272F0(v64);
            goto LABEL_46;
          }

          v24 = sub_1C05272F0(v64);
          MEMORY[0x1C68DDE90](*v24);
        }

        else if (v15)
        {
          *sub_1C05272F0(v64);
          sub_1C095E01C();
        }

        else
        {
          v20 = *sub_1C05272F0(v64);
          if (v20 == 0.0)
          {
            v20 = 0.0;
          }

          v21 = v20;
LABEL_46:
          MEMORY[0x1C68DDEC0](*&v21);
        }

LABEL_7:
        sub_1C0575738(v66, v65);
        goto LABEL_8;
      }

      if (v15 <= 5)
      {
        if (v15 == 4)
        {
LABEL_36:
          v25 = sub_1C05272F0(v64);
          v26 = *v25;
          v27 = v25[1];
          sub_1C0575738(v66, v65);
          sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
          v8 = v55;
          sub_1C05145B4(v66, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_8;
        }

        v34 = sub_1C05272F0(v64);
        memcpy(__dst, v34, 0x20AuLL);
        sub_1C0575738(v66, v65);
        TerminalElement.DateTimeValue.hash(into:)(v4);
      }

      else
      {
        if (v15 == 6)
        {
          v33 = *sub_1C05272F0(v64);
          memcpy(__src, v33 + 2, 0x20AuLL);
          memmove(__dst, v33 + 2, 0x20AuLL);
          if (sub_1C0573598(__dst) == 1)
          {
            sub_1C095E00C();
            sub_1C0575738(v66, v65);
            goto LABEL_78;
          }

          memcpy(v59, __src, sizeof(v59));
          sub_1C095E00C();
          memcpy(v60, v59, 0x20AuLL);
          v35 = sub_1C057363C(v60);
          if (v35 > 3)
          {
            if (v35 <= 5)
            {
              if (v35 == 4)
              {
                goto LABEL_69;
              }

              v50 = sub_1C05272F0(v60);
              memcpy(v58, v50, 0x20AuLL);
              sub_1C0575738(v66, v65);
              sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.DateTimeValue.hash(into:)(v4);
              goto LABEL_85;
            }

            if (v35 != 6)
            {
              if (v35 != 7)
              {
                v36 = sub_1C05272F0(v60);
                v37 = v36[2];
                v38 = v36[3];
                if (v36[1])
                {
                  v39 = *v36;
                  sub_1C095E00C();
                  sub_1C0575738(v66, v65);
                  sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(__src, v65, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                  sub_1C0575738(v66, v65);
                  sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(__src, v65, &qword_1EBE16C70, &unk_1C099BB20);
                }

                goto LABEL_83;
              }

LABEL_69:
              v43 = sub_1C05272F0(v60);
              v44 = *v43;
              v45 = v43[1];
              sub_1C0575738(v66, v65);
              sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v65, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C095D7BC();
              v8 = v55;
LABEL_84:
              sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_85:
              if (v33[71])
              {
                v51 = v33[68];
                v52 = v33[69];
                v53 = v33[70];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v52)
                {
                  sub_1C095D7BC();
                }

                v5 = v54;
                sub_1C095D7BC();
                sub_1C05145B4(v66, &qword_1EBE16C70, &unk_1C099BB20);
              }

              else
              {
                sub_1C095E00C();
                sub_1C05145B4(v66, &qword_1EBE16C70, &unk_1C099BB20);
                v5 = v54;
              }

              goto LABEL_8;
            }

            v46 = *sub_1C05272F0(v60);
            memcpy(v57, v46 + 2, 0x20AuLL);
            memmove(v58, v46 + 2, 0x20AuLL);
            if (sub_1C0573598(v58) == 1)
            {
              sub_1C095E00C();
              sub_1C0575738(v66, v65);
              sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v65, &qword_1EBE16C70, &unk_1C099BB20);
              if (v46[71])
              {
LABEL_72:
                v47 = v46[68];
                v48 = v46[69];
                v49 = v46[70];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v48)
                {
                  sub_1C095D7BC();
                }

LABEL_83:
                sub_1C095D7BC();
                goto LABEL_84;
              }
            }

            else
            {
              memcpy(v56, v57, sizeof(v56));
              sub_1C095E00C();
              sub_1C0575738(v66, v65);
              sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v65, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v57, v65, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.Value.hash(into:)(v4);
              memcpy(v65, v56, 0x20AuLL);
              sub_1C05735E4(v65);
              if (v46[71])
              {
                goto LABEL_72;
              }
            }

            sub_1C095E00C();
            goto LABEL_84;
          }

          if (v35 > 1)
          {
            if (v35 != 2)
            {
              v41 = *sub_1C05272F0(v60);
              goto LABEL_76;
            }

            v42 = sub_1C05272F0(v60);
            MEMORY[0x1C68DDE90](*v42);
          }

          else if (v35)
          {
            *sub_1C05272F0(v60);
            sub_1C095E01C();
          }

          else
          {
            v40 = *sub_1C05272F0(v60);
            if (v40 == 0.0)
            {
              v40 = 0.0;
            }

            v41 = v40;
LABEL_76:
            MEMORY[0x1C68DDEC0](*&v41);
          }

          sub_1C0575738(v66, v65);
LABEL_78:
          sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_85;
        }

        if (v15 == 7)
        {
          goto LABEL_36;
        }

        v16 = sub_1C05272F0(v64);
        v17 = v16[2];
        v18 = v16[3];
        if (v16[1])
        {
          v19 = *v16;
          sub_1C095E00C();
          sub_1C0575738(v66, v65);
          sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
          sub_1C0575738(v66, v65);
          sub_1C05149F8(v66, v65, &qword_1EBE16C70, &unk_1C099BB20);
        }

        sub_1C095D7BC();
        sub_1C05145B4(v66, &qword_1EBE16C70, &unk_1C099BB20);
        v8 = v55;
      }

LABEL_8:
      v9 = v66[66];
      MEMORY[0x1C68DDE90](*(v66[66] + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = (v9 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;

          sub_1C095D7BC();

          v11 += 2;
          --v10;
        }

        while (v10);
      }

      memcpy(v65, &v66[67], 0x309uLL);
      if (sub_1C0573614(v65) != 1)
      {
        v14 = LOBYTE(v66[67]);
        memcpy(v64, &v66[67] + 1, sizeof(v64));
        sub_1C095E00C();
        sub_1C095E00C();
        if (v14 != 9)
        {
          sub_1C095D7BC();
        }

        memcpy(v63, &v64[7], 0x301uLL);
        if (sub_1C05757D8(v63) != 1)
        {
          sub_1C095E00C();
          memcpy(__dst, &v64[7], 0x301uLL);
          v22 = sub_1C0573F8C(__dst);
          v23 = sub_1C0527300(__dst);
          if (v22)
          {
            if (v22 == 1)
            {
              memcpy(__src, v23, 0x301uLL);
              TerminalElement.MatchingSpan.hash(into:)(v4);
              goto LABEL_28;
            }

            if (v23[4])
            {
              v30 = *v23;
              v29 = v23[1];
              v31 = v23[2];
              v32 = v23[3];
              sub_1C095E00C();
              if (v29 == 1)
              {
                sub_1C095E00C();
                v5 = v54;
              }

              else
              {
                sub_1C095E00C();
                sub_1C095E00C();
                if (v29)
                {
                  sub_1C095D7BC();
                }

                v5 = v54;
                sub_1C095E00C();
                if (v32)
                {
                  sub_1C095D7BC();
                }
              }

              sub_1C056DF84(v4);
              goto LABEL_28;
            }
          }

          else if (v23[1])
          {
            v28 = *v23;
            sub_1C095E00C();
            sub_1C095D7BC();
            goto LABEL_28;
          }
        }
      }

      sub_1C095E00C();
LABEL_28:
      if (v66[167])
      {
        sub_1C095E00C();
        sub_1C095E00C();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      result = sub_1C0575770(v66);
      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t sub_1C056DF84(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 16);
  result = MEMORY[0x1C68DDE90](v5);
  v154 = v5;
  if (v5)
  {
    v7 = 0;
    v153 = v3 + 32;
    while (1)
    {
      v155 = v7;
      v8 = (v153 + 32 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];

      v156 = v12;

      sub_1C095D7BC();
      MEMORY[0x1C68DDE90](*(v11 + 16));
      v157 = v11;
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = (v157 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          sub_1C095D7BC();

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      MEMORY[0x1C68DDE90](*(v156 + 16));
      v17 = *(v156 + 16);
      if (v17)
      {
        break;
      }

LABEL_3:

      v7 = v155 + 1;
      if (v155 + 1 == v154)
      {
        return result;
      }
    }

    v18 = 0;
    v158 = *(v156 + 16);
    v159 = v156 + 32;
    while (1)
    {
      memcpy(v190, (v159 + 1344 * v18), sizeof(v190));
      memcpy(v191, (v159 + 1344 * v18), 0x20AuLL);
      if (sub_1C0573598(v191) == 1)
      {
        sub_1C095E00C();
        goto LABEL_13;
      }

      memcpy(v186, v190, 0x20AuLL);
      sub_1C095E00C();
      memcpy(v187, v186, 0x20AuLL);
      v24 = sub_1C057363C(v187);
      if (v24 <= 3)
      {
        if (v24 > 1)
        {
          if (v24 != 2)
          {
            v31 = *sub_1C05272F0(v187);
            goto LABEL_55;
          }

          v34 = sub_1C05272F0(v187);
          MEMORY[0x1C68DDE90](*v34);
        }

        else if (v24)
        {
          *sub_1C05272F0(v187);
          sub_1C095E01C();
        }

        else
        {
          v30 = *sub_1C05272F0(v187);
          if (v30 == 0.0)
          {
            v30 = 0.0;
          }

          v31 = v30;
LABEL_55:
          MEMORY[0x1C68DDEC0](*&v31);
        }

LABEL_13:
        sub_1C0575738(v190, v189);
        goto LABEL_14;
      }

      if (v24 <= 5)
      {
        if (v24 == 4)
        {
LABEL_41:
          v35 = sub_1C05272F0(v187);
          v36 = *v35;
          v37 = v35[1];
          sub_1C0575738(v190, v189);
          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
          v17 = v158;
          sub_1C05145B4(v190, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_14;
        }

        v45 = sub_1C05272F0(v187);
        memcpy(v188, v45, 0x20AuLL);
        sub_1C0575738(v190, v189);
        TerminalElement.DateTimeValue.hash(into:)(v4);
      }

      else
      {
        if (v24 == 6)
        {
          v44 = *sub_1C05272F0(v187);
          memcpy(v185, v44 + 2, 0x20AuLL);
          memmove(v188, v44 + 2, 0x20AuLL);
          if (sub_1C0573598(v188) == 1)
          {
            sub_1C095E00C();
            sub_1C0575738(v190, v189);
            goto LABEL_92;
          }

          memcpy(v183, v185, sizeof(v183));
          sub_1C095E00C();
          memcpy(v184, v183, 0x20AuLL);
          v46 = sub_1C057363C(v184);
          if (v46 > 3)
          {
            if (v46 <= 5)
            {
              if (v46 == 4)
              {
                goto LABEL_81;
              }

              v63 = sub_1C05272F0(v184);
              memcpy(v182, v63, 0x20AuLL);
              sub_1C0575738(v190, v189);
              sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.DateTimeValue.hash(into:)(v4);
              goto LABEL_104;
            }

            if (v46 != 6)
            {
              if (v46 != 7)
              {
                v47 = sub_1C05272F0(v184);
                v48 = v47[2];
                v49 = v47[3];
                if (v47[1])
                {
                  v50 = *v47;
                  sub_1C095E00C();
                  sub_1C0575738(v190, v189);
                  sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                  sub_1C0575738(v190, v189);
                  sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                }

                goto LABEL_102;
              }

LABEL_81:
              v56 = sub_1C05272F0(v184);
              v57 = *v56;
              v58 = v56[1];
              sub_1C0575738(v190, v189);
              sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C095D7BC();
              v17 = v158;
LABEL_103:
              sub_1C05145B4(v185, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_104:
              if (v44[71])
              {
                v69 = v44[68];
                v70 = v44[69];
                v71 = v44[70];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v70)
                {
                  sub_1C095D7BC();
                }

                sub_1C095D7BC();
                sub_1C05145B4(v190, &qword_1EBE16C70, &unk_1C099BB20);
              }

              else
              {
                sub_1C095E00C();
                sub_1C05145B4(v190, &qword_1EBE16C70, &unk_1C099BB20);
              }

              goto LABEL_14;
            }

            v59 = *sub_1C05272F0(v184);
            memcpy(v181, v59 + 2, 0x20AuLL);
            memmove(v182, v59 + 2, 0x20AuLL);
            if (sub_1C0573598(v182) == 1)
            {
              sub_1C095E00C();
              goto LABEL_84;
            }

            memcpy(v179, v181, sizeof(v179));
            sub_1C095E00C();
            memcpy(v180, v179, 0x20AuLL);
            v64 = sub_1C057363C(v180);
            if (v64 > 3)
            {
              if (v64 <= 5)
              {
                if (v64 == 4)
                {
                  goto LABEL_117;
                }

                v79 = sub_1C05272F0(v180);
                memcpy(v178, v79, 0x20AuLL);
                sub_1C0575738(v190, v189);
                sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                TerminalElement.DateTimeValue.hash(into:)(v4);
LABEL_85:
                if (v59[71])
                {
                  v60 = v59[68];
                  v61 = v59[69];
                  v62 = v59[70];
                  sub_1C095E00C();
                  sub_1C095E00C();
                  if (v61)
                  {
                    sub_1C095D7BC();
                  }

LABEL_102:
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                }

                goto LABEL_103;
              }

              if (v64 != 6)
              {
                if (v64 != 7)
                {
                  v152 = v59;
                  v65 = sub_1C05272F0(v180);
                  v66 = v65[2];
                  v67 = v65[3];
                  if (v65[1])
                  {
                    v68 = *v65;
                    sub_1C095E00C();
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C095D7BC();
                  }

                  else
                  {
                    sub_1C095E00C();
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  }

                  goto LABEL_165;
                }

LABEL_117:
                v75 = sub_1C05272F0(v180);
                v76 = *v75;
                v77 = v75[1];
                sub_1C0575738(v190, v189);
                sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C095D7BC();
                v17 = v158;
                sub_1C05145B4(v181, &qword_1EBE16C70, &unk_1C099BB20);
                goto LABEL_85;
              }

              v152 = v59;
              v78 = *sub_1C05272F0(v180);
              memcpy(v177, v78 + 2, 0x20AuLL);
              memmove(v178, v78 + 2, 0x20AuLL);
              if (sub_1C0573598(v178) == 1)
              {
                sub_1C095E00C();
                goto LABEL_120;
              }

              memcpy(v175, v177, sizeof(v175));
              sub_1C095E00C();
              memcpy(v176, v175, 0x20AuLL);
              v80 = sub_1C057363C(v176);
              if (v80 > 3)
              {
                if (v80 <= 5)
                {
                  if (v80 == 4)
                  {
                    goto LABEL_140;
                  }

                  v94 = sub_1C05272F0(v176);
                  memcpy(v174, v94, 0x20AuLL);
                  sub_1C0575738(v190, v189);
                  sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  TerminalElement.DateTimeValue.hash(into:)(v4);
                  goto LABEL_161;
                }

                if (v80 != 6)
                {
                  if (v80 != 7)
                  {
                    v81 = sub_1C05272F0(v176);
                    v82 = v81[2];
                    v149 = v81[3];
                    if (v81[1])
                    {
                      v83 = *v81;
                      sub_1C095E00C();
                      sub_1C0575738(v190, v189);
                      sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C095D7BC();
                    }

                    else
                    {
                      sub_1C095E00C();
                      sub_1C0575738(v190, v189);
                      sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    }

                    goto LABEL_159;
                  }

LABEL_140:
                  v87 = sub_1C05272F0(v176);
                  v88 = *v87;
                  v89 = v87[1];
                  sub_1C0575738(v190, v189);
                  sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                  v17 = v158;
LABEL_160:
                  sub_1C05145B4(v177, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_161:
                  if (v78[71])
                  {
                    v99 = v78[68];
                    v100 = v78[69];
                    v101 = v78[70];
                    sub_1C095E00C();
                    sub_1C095E00C();
                    if (v100)
                    {
                      sub_1C095D7BC();
                    }

LABEL_165:
                    sub_1C095D7BC();
                  }

                  else
                  {
                    sub_1C095E00C();
                  }

                  sub_1C05145B4(v181, &qword_1EBE16C70, &unk_1C099BB20);
                  v59 = v152;
                  goto LABEL_85;
                }

                v90 = *sub_1C05272F0(v176);
                memcpy(v173, v90 + 2, 0x20AuLL);
                memmove(v174, v90 + 2, 0x20AuLL);
                if (sub_1C0573598(v174) == 1)
                {
                  sub_1C095E00C();
                  goto LABEL_143;
                }

                memcpy(v171, v173, sizeof(v171));
                sub_1C095E00C();
                memcpy(v172, v171, 0x20AuLL);
                v95 = sub_1C057363C(v172);
                if (v95 > 3)
                {
                  if (v95 <= 5)
                  {
                    if (v95 == 4)
                    {
                      goto LABEL_175;
                    }

                    v109 = sub_1C05272F0(v172);
                    memcpy(v170, v109, 0x20AuLL);
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    TerminalElement.DateTimeValue.hash(into:)(v4);
LABEL_144:
                    if (v90[71])
                    {
                      v91 = v90;
                      v92 = v90[68];
                      v93 = v91[69];
                      v150 = v91[70];
                      sub_1C095E00C();
                      sub_1C095E00C();
                      if (v93)
                      {
                        sub_1C095D7BC();
                      }

LABEL_159:
                      sub_1C095D7BC();
                    }

                    else
                    {
                      sub_1C095E00C();
                    }

                    goto LABEL_160;
                  }

                  if (v95 != 6)
                  {
                    if (v95 != 7)
                    {
                      v151 = v90;
                      v96 = sub_1C05272F0(v172);
                      v97 = v96[2];
                      v98 = v96[3];
                      if (v96[1])
                      {
                        v146 = *v96;
                        sub_1C095E00C();
                        sub_1C0575738(v190, v189);
                        sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                        sub_1C0575738(v190, v189);
                        sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      }

                      sub_1C095D7BC();
                      sub_1C05145B4(v173, &qword_1EBE16C70, &unk_1C099BB20);
                      v17 = v158;
                      goto LABEL_250;
                    }

LABEL_175:
                    v105 = sub_1C05272F0(v172);
                    v106 = *v105;
                    v107 = v105[1];
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C095D7BC();
                    v17 = v158;
                    sub_1C05145B4(v173, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_144;
                  }

                  v108 = *sub_1C05272F0(v172);
                  memcpy(v169, v108 + 2, 0x20AuLL);
                  v147 = v108;
                  memmove(v170, v108 + 2, 0x20AuLL);
                  v151 = v90;
                  if (sub_1C0573598(v170) == 1)
                  {
                    sub_1C095E00C();
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_244;
                  }

                  memcpy(__dst, v169, sizeof(__dst));
                  sub_1C095E00C();
                  memcpy(v168, __dst, 0x20AuLL);
                  v110 = sub_1C057363C(v168);
                  if (v110 > 3)
                  {
                    if (v110 <= 5)
                    {
                      if (v110 == 4)
                      {
                        goto LABEL_196;
                      }

                      v122 = sub_1C05272F0(v168);
                      memcpy(v166, v122, 0x20AuLL);
                      sub_1C0575738(v190, v189);
                      sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      TerminalElement.DateTimeValue.hash(into:)(v4);
                      goto LABEL_243;
                    }

                    if (v110 != 6)
                    {
                      if (v110 != 7)
                      {
                        v111 = sub_1C05272F0(v168);
                        v112 = v111[2];
                        v143 = v111[3];
                        if (v111[1])
                        {
                          v113 = *v111;
                          sub_1C095E00C();
                          sub_1C0575738(v190, v189);
                          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C095D7BC();
                        }

                        else
                        {
                          sub_1C095E00C();
                          sub_1C0575738(v190, v189);
                          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        }

                        goto LABEL_241;
                      }

LABEL_196:
                      v116 = sub_1C05272F0(v168);
                      v117 = *v116;
                      v118 = v116[1];
                      sub_1C0575738(v190, v189);
                      sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C095D7BC();
LABEL_242:
                      sub_1C05145B4(v169, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_243:
                      v17 = v158;
LABEL_244:
                      if (v147[71])
                      {
                        v141 = v147[68];
                        v142 = v147[69];
                        v148 = v147[70];
                        sub_1C095E00C();
                        sub_1C095E00C();
                        if (v142)
                        {
                          sub_1C095D7BC();
                        }

                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                      }

                      sub_1C05145B4(v173, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_250:
                      v90 = v151;
                      goto LABEL_144;
                    }

                    v120 = *sub_1C05272F0(v168);
                    memcpy(__src, v120 + 2, 0x20AuLL);
                    v121 = v120;
                    memmove(v166, v120 + 2, 0x20AuLL);
                    if (sub_1C0573598(v166) == 1)
                    {
                      sub_1C095E00C();
                      goto LABEL_201;
                    }

                    memcpy(v163, __src, sizeof(v163));
                    sub_1C095E00C();
                    memcpy(v164, v163, 0x20AuLL);
                    v123 = sub_1C057363C(v164);
                    if (v123 > 3)
                    {
                      if (v123 <= 5)
                      {
                        if (v123 == 4)
                        {
                          goto LABEL_220;
                        }

                        v134 = sub_1C05272F0(v164);
                        memcpy(v162, v134, 0x20AuLL);
                        sub_1C0575738(v190, v189);
                        sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                        TerminalElement.DateTimeValue.hash(into:)(v4);
                      }

                      else
                      {
                        if (v123 == 6)
                        {
                          v133 = *sub_1C05272F0(v164);
                          memcpy(v161, v133 + 2, 0x20AuLL);
                          memmove(v162, v133 + 2, 0x20AuLL);
                          if (sub_1C0573598(v162) == 1)
                          {
                            sub_1C095E00C();
                            sub_1C0575738(v190, v189);
                            sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(__src, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          }

                          else
                          {
                            memcpy(v160, v161, sizeof(v160));
                            sub_1C095E00C();
                            sub_1C0575738(v190, v189);
                            sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(__src, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v161, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            TerminalElement.Value.hash(into:)(v4);
                            memcpy(v189, v160, 0x20AuLL);
                            sub_1C05735E4(v189);
                          }

                          if (v133[71])
                          {
                            v145 = v133[68];
                            v135 = v133[69];
                            v136 = v133[70];
                            sub_1C095E00C();
                            sub_1C095E00C();
                            if (v135)
                            {
                              sub_1C095D7BC();
                            }

LABEL_235:
                            sub_1C095D7BC();
                          }

                          else
                          {
                            sub_1C095E00C();
                          }
                        }

                        else
                        {
                          if (v123 != 7)
                          {
                            v124 = sub_1C05272F0(v164);
                            v125 = v124[3];
                            v144 = v124[2];
                            if (v124[1])
                            {
                              v126 = *v124;
                              sub_1C095E00C();
                              sub_1C0575738(v190, v189);
                              sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(__src, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C095D7BC();
                            }

                            else
                            {
                              sub_1C095E00C();
                              sub_1C0575738(v190, v189);
                              sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(__src, v189, &qword_1EBE16C70, &unk_1C099BB20);
                            }

                            goto LABEL_235;
                          }

LABEL_220:
                          v129 = sub_1C05272F0(v164);
                          v130 = *v129;
                          v131 = v129[1];
                          sub_1C0575738(v190, v189);
                          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(__src, v189, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C095D7BC();
                        }

                        sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
                      }

LABEL_237:
                      if (v121[71])
                      {
                        v137 = v121;
                        v138 = v121[68];
                        v139 = v121[69];
                        v140 = v137[70];
                        sub_1C095E00C();
                        sub_1C095E00C();
                        if (v139)
                        {
                          sub_1C095D7BC();
                        }

LABEL_241:
                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                      }

                      goto LABEL_242;
                    }

                    if (v123 > 1)
                    {
                      if (v123 != 2)
                      {
                        v128 = *sub_1C05272F0(v164);
                        goto LABEL_228;
                      }

                      v132 = sub_1C05272F0(v164);
                      MEMORY[0x1C68DDE90](*v132);
                    }

                    else if (v123)
                    {
                      *sub_1C05272F0(v164);
                      sub_1C095E01C();
                    }

                    else
                    {
                      v127 = *sub_1C05272F0(v164);
                      if (v127 == 0.0)
                      {
                        v127 = 0.0;
                      }

                      v128 = v127;
LABEL_228:
                      MEMORY[0x1C68DDEC0](*&v128);
                    }

LABEL_201:
                    sub_1C0575738(v190, v189);
                    sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v169, v189, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_237;
                  }

                  if (v110 > 1)
                  {
                    if (v110 != 2)
                    {
                      v115 = *sub_1C05272F0(v168);
                      goto LABEL_205;
                    }

                    v119 = sub_1C05272F0(v168);
                    MEMORY[0x1C68DDE90](*v119);
                  }

                  else if (v110)
                  {
                    *sub_1C05272F0(v168);
                    sub_1C095E01C();
                  }

                  else
                  {
                    v114 = *sub_1C05272F0(v168);
                    if (v114 == 0.0)
                    {
                      v114 = 0.0;
                    }

                    v115 = v114;
LABEL_205:
                    MEMORY[0x1C68DDEC0](*&v115);
                  }

                  sub_1C0575738(v190, v189);
                  sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v173, v189, &qword_1EBE16C70, &unk_1C099BB20);
                  goto LABEL_243;
                }

                if (v95 > 1)
                {
                  if (v95 != 2)
                  {
                    v103 = *sub_1C05272F0(v172);
                    goto LABEL_180;
                  }

                  v104 = sub_1C05272F0(v172);
                  MEMORY[0x1C68DDE90](*v104);
                }

                else if (v95)
                {
                  *sub_1C05272F0(v172);
                  sub_1C095E01C();
                }

                else
                {
                  v102 = *sub_1C05272F0(v172);
                  if (v102 == 0.0)
                  {
                    v102 = 0.0;
                  }

                  v103 = v102;
LABEL_180:
                  MEMORY[0x1C68DDEC0](*&v103);
                }

LABEL_143:
                sub_1C0575738(v190, v189);
                sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v177, v189, &qword_1EBE16C70, &unk_1C099BB20);
                goto LABEL_144;
              }

              if (v80 > 1)
              {
                if (v80 != 2)
                {
                  v85 = *sub_1C05272F0(v176);
                  goto LABEL_149;
                }

                v86 = sub_1C05272F0(v176);
                MEMORY[0x1C68DDE90](*v86);
              }

              else if (v80)
              {
                *sub_1C05272F0(v176);
                sub_1C095E01C();
              }

              else
              {
                v84 = *sub_1C05272F0(v176);
                if (v84 == 0.0)
                {
                  v84 = 0.0;
                }

                v85 = v84;
LABEL_149:
                MEMORY[0x1C68DDEC0](*&v85);
              }

LABEL_120:
              sub_1C0575738(v190, v189);
              sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v181, v189, &qword_1EBE16C70, &unk_1C099BB20);
              goto LABEL_161;
            }

            if (v64 > 1)
            {
              if (v64 != 2)
              {
                v73 = *sub_1C05272F0(v180);
                goto LABEL_123;
              }

              v74 = sub_1C05272F0(v180);
              MEMORY[0x1C68DDE90](*v74);
            }

            else if (v64)
            {
              *sub_1C05272F0(v180);
              sub_1C095E01C();
            }

            else
            {
              v72 = *sub_1C05272F0(v180);
              if (v72 == 0.0)
              {
                v72 = 0.0;
              }

              v73 = v72;
LABEL_123:
              MEMORY[0x1C68DDEC0](*&v73);
            }

LABEL_84:
            sub_1C0575738(v190, v189);
            sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
            sub_1C05149F8(v185, v189, &qword_1EBE16C70, &unk_1C099BB20);
            goto LABEL_85;
          }

          if (v46 > 1)
          {
            if (v46 != 2)
            {
              v54 = *sub_1C05272F0(v184);
              goto LABEL_90;
            }

            v55 = sub_1C05272F0(v184);
            MEMORY[0x1C68DDE90](*v55);
          }

          else if (v46)
          {
            *sub_1C05272F0(v184);
            sub_1C095E01C();
          }

          else
          {
            v53 = *sub_1C05272F0(v184);
            if (v53 == 0.0)
            {
              v53 = 0.0;
            }

            v54 = v53;
LABEL_90:
            MEMORY[0x1C68DDEC0](*&v54);
          }

          sub_1C0575738(v190, v189);
LABEL_92:
          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_104;
        }

        if (v24 == 7)
        {
          goto LABEL_41;
        }

        v25 = sub_1C05272F0(v187);
        v26 = v25[2];
        v27 = v25[3];
        if (v25[1])
        {
          v28 = *v25;
          sub_1C095E00C();
          sub_1C0575738(v190, v189);
          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
          sub_1C0575738(v190, v189);
          sub_1C05149F8(v190, v189, &qword_1EBE16C70, &unk_1C099BB20);
        }

        sub_1C095D7BC();
        sub_1C05145B4(v190, &qword_1EBE16C70, &unk_1C099BB20);
        v17 = v158;
      }

LABEL_14:
      v19 = v190[66];
      MEMORY[0x1C68DDE90](*(v190[66] + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;

          sub_1C095D7BC();

          v21 += 2;
          --v20;
        }

        while (v20);
      }

      memcpy(v189, &v190[67], 0x309uLL);
      if (sub_1C0573614(v189) == 1)
      {
        sub_1C095E00C();
        if (!v190[167])
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

      v29 = LOBYTE(v190[67]);
      memcpy(v188, &v190[67] + 1, sizeof(v188));
      sub_1C095E00C();
      sub_1C095E00C();
      memcpy(v187, &v190[67], 0x309uLL);
      sub_1C05149F8(&v190[67], v186, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05757A0(v187, v186);
      if (v29 != 9)
      {
        sub_1C095D7BC();
      }

      memcpy(v186, &v188[7], 0x301uLL);
      if (sub_1C05757D8(v186) == 1)
      {
        sub_1C095E00C();
        goto LABEL_49;
      }

      sub_1C095E00C();
      memcpy(v185, &v188[7], 0x301uLL);
      v32 = sub_1C0573F8C(v185);
      v33 = sub_1C0527300(v185);
      if (!v32)
      {
        if (v33[1])
        {
          v38 = *v33;
          sub_1C095E00C();
          sub_1C095D7BC();
        }

        else
        {
LABEL_47:
          sub_1C095E00C();
        }

        goto LABEL_48;
      }

      if (v32 == 1)
      {
        memcpy(v187, v33, 0x301uLL);
        TerminalElement.MatchingSpan.hash(into:)(v4);
LABEL_48:
        sub_1C05145B4(&v190[67], &qword_1EBE16C78, &qword_1C096E850);
LABEL_49:
        sub_1C05145B4(&v190[67], &qword_1EBE16C78, &qword_1C096E850);
        if (!v190[167])
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

      v39 = v33[4];
      if (!v39)
      {
        goto LABEL_47;
      }

      v41 = *v33;
      v40 = v33[1];
      v42 = v33[2];
      v43 = v33[3];
      sub_1C095E00C();
      if (v40 == 1)
      {
        sub_1C095E00C();
        sub_1C05149F8(&v190[67], v187, &qword_1EBE16C78, &qword_1C096E850);

        goto LABEL_76;
      }

      sub_1C095E00C();
      if (v40)
      {
        sub_1C095E00C();
        sub_1C05149F8(&v190[67], v187, &qword_1EBE16C78, &qword_1C096E850);

        sub_1C0559D40(v41, v40);
        sub_1C095D7BC();
        if (!v43)
        {
          goto LABEL_74;
        }
      }

      else
      {
        sub_1C095E00C();
        sub_1C05149F8(&v190[67], v187, &qword_1EBE16C78, &qword_1C096E850);

        sub_1C0559D40(v41, 0);
        if (!v43)
        {
LABEL_74:
          sub_1C095E00C();
          v51 = v41;
          v52 = v40;
          goto LABEL_75;
        }
      }

      sub_1C095E00C();
      sub_1C095D7BC();
      v51 = v41;
      v52 = v40;
LABEL_75:
      sub_1C05756F0(v51, v52);
LABEL_76:
      sub_1C056DF84(v4, v39);
      sub_1C05145B4(&v190[67], &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05145B4(&v190[67], &qword_1EBE16C78, &qword_1C096E850);

      sub_1C05145B4(&v190[67], &qword_1EBE16C78, &qword_1C096E850);
      if (!v190[167])
      {
LABEL_50:
        sub_1C095E00C();
        goto LABEL_10;
      }

LABEL_9:
      sub_1C095E00C();
      sub_1C095E00C();
      sub_1C095D7BC();
LABEL_10:
      sub_1C0575770(v190);
      if (++v18 == v17)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}