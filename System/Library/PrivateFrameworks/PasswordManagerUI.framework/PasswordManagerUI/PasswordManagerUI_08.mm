uint64_t sub_21C7D1210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7D1258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_21C7D3210(a1, &v25 - v18, type metadata accessor for PMAccount.Storage);
  sub_21C7D3210(a2, &v19[v20], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3210(v19, v12, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(&v19[v20], v7, type metadata accessor for PMAccount.MockData);
      v21 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v12, v7);
      sub_21C7C6B10(v7, type metadata accessor for PMAccount.MockData);
      sub_21C7C6B10(v12, type metadata accessor for PMAccount.MockData);
LABEL_9:
      sub_21C7C6B10(v19, type metadata accessor for PMAccount.Storage);
      return v21 & 1;
    }

    sub_21C7C6B10(v12, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    sub_21C7D3210(v19, v14, type metadata accessor for PMAccount.Storage);
    v22 = *v14;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *&v19[v20];
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v21 = sub_21CB85DD4();

      goto LABEL_9;
    }
  }

  sub_21C6EA794(v19, &unk_27CDF7680, &qword_21CBB4E30);
  v21 = 0;
  return v21 & 1;
}

BOOL sub_21C7D1550(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[5];
  v20 = a2[5];
  if (v19)
  {
    if (!v20 || (a1[4] != a2[4] || v19 != v20) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v40 = v5;
  v38 = v4;
  v39 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v21 = *(v39 + 28);
  sub_21CB85B74();
  sub_21C7D1210(&qword_27CDEB3C0, MEMORY[0x277D49930]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v43 == v41 && v44 == v42)
  {
  }

  else
  {
    v22 = sub_21CB86344();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = v39;
  v24 = *(v39 + 32);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    v29 = v40;
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v29 = v40;
    if (v28)
    {
      return 0;
    }
  }

  v30 = *(v23 + 36);
  v31 = *(v13 + 48);
  sub_21C6EDBAC(a1 + v30, v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2 + v30, &v16[v31], &unk_27CDF20B0, &unk_21CBA0090);
  v32 = *(v29 + 48);
  v33 = v38;
  if (v32(v16, 1, v38) == 1)
  {
    if (v32(&v16[v31], 1, v33) == 1)
    {
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      return 1;
    }

    goto LABEL_34;
  }

  sub_21C6EDBAC(v16, v12, &unk_27CDF20B0, &unk_21CBA0090);
  if (v32(&v16[v31], 1, v33) == 1)
  {
    (*(v29 + 8))(v12, v33);
LABEL_34:
    sub_21C6EA794(v16, &qword_27CDEAC40, &qword_21CBA1A40);
    return 0;
  }

  (*(v29 + 32))(v8, &v16[v31], v33);
  sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978]);
  v35 = sub_21CB85574();
  v36 = *(v29 + 8);
  v36(v8, v33);
  v36(v12, v33);
  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  return (v35 & 1) != 0;
}

BOOL sub_21C7D1A58(void *a1, void *a2)
{
  v4 = sub_21CB85C44();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v70 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v10 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v70 - v11;
  v12 = sub_21CB85BB4();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A8, &qword_21CBA1A48);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v81 = &v70 - v20;
  v21 = sub_21CB85C04();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3B0, &unk_21CBA1A50);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  v34 = a1[1];
  v35 = a2[1];
  if (v34)
  {
    if (!v35 || (*a1 != *a2 || v34 != v35) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = a1[3];
  v37 = a2[3];
  if (v36)
  {
    if (!v37 || (a1[2] != a2[2] || v36 != v37) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if ((sub_21C9675F0(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v71 = v4;
  v72 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v38 = *(v72 + 28);
  v39 = *(v30 + 48);
  sub_21C6EDBAC(a1 + v38, v33, &unk_27CDEC2F0, &unk_21CBA1660);
  v73 = v39;
  sub_21C6EDBAC(a2 + v38, &v33[v39], &unk_27CDEC2F0, &unk_21CBA1660);
  v40 = *(v22 + 48);
  if (v40(v33, 1, v21) == 1)
  {
    if (v40(&v33[v73], 1, v21) == 1)
    {
      sub_21C6EA794(v33, &unk_27CDEC2F0, &unk_21CBA1660);
      goto LABEL_23;
    }

LABEL_21:
    v41 = &qword_27CDEB3B0;
    v42 = &unk_21CBA1A50;
    v43 = v33;
LABEL_36:
    sub_21C6EA794(v43, v41, v42);
    return 0;
  }

  sub_21C6EDBAC(v33, v29, &unk_27CDEC2F0, &unk_21CBA1660);
  if (v40(&v33[v73], 1, v21) == 1)
  {
    (*(v22 + 8))(v29, v21);
    goto LABEL_21;
  }

  (*(v22 + 32))(v25, &v33[v73], v21);
  sub_21C7D1210(&qword_27CDEB3B8, MEMORY[0x277D49960]);
  v44 = sub_21CB85574();
  v45 = *(v22 + 8);
  v45(v25, v21);
  v45(v29, v21);
  sub_21C6EA794(v33, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v46 = v72;
  v47 = *(v72 + 32);
  v48 = *(v18 + 48);
  v49 = v81;
  sub_21C6EDBAC(a1 + v47, v81, &qword_27CDEAF58, &unk_21CBA0980);
  sub_21C6EDBAC(a2 + v47, v49 + v48, &qword_27CDEAF58, &unk_21CBA0980);
  v51 = v82;
  v50 = v83;
  v52 = *(v82 + 48);
  if (v52(v49, 1, v83) != 1)
  {
    v53 = v80;
    sub_21C6EDBAC(v49, v80, &qword_27CDEAF58, &unk_21CBA0980);
    if (v52(v49 + v48, 1, v50) != 1)
    {
      v54 = v76;
      (*(v51 + 32))(v76, v49 + v48, v50);
      sub_21C7D1210(&qword_27CDEAF68, MEMORY[0x277D49948]);
      v55 = sub_21CB85574();
      v56 = *(v51 + 8);
      v56(v54, v50);
      v56(v53, v50);
      sub_21C6EA794(v49, &qword_27CDEAF58, &unk_21CBA0980);
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    (*(v51 + 8))(v53, v50);
    goto LABEL_28;
  }

  if (v52(v49 + v48, 1, v50) != 1)
  {
LABEL_28:
    v41 = &qword_27CDEB3A8;
    v42 = &qword_21CBA1A48;
    v43 = v49;
    goto LABEL_36;
  }

  sub_21C6EA794(v49, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_30:
  v57 = *(v46 + 36);
  v58 = *(v77 + 48);
  v59 = a1 + v57;
  v60 = v78;
  sub_21C6EDBAC(v59, v78, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2 + v57, v60 + v58, &unk_27CDF20B0, &unk_21CBA0090);
  v61 = v79;
  v62 = *(v79 + 48);
  v63 = v71;
  if (v62(v60, 1, v71) == 1)
  {
    if (v62(v60 + v58, 1, v63) == 1)
    {
      sub_21C6EA794(v60, &unk_27CDF20B0, &unk_21CBA0090);
      return 1;
    }

    goto LABEL_35;
  }

  v64 = v75;
  sub_21C6EDBAC(v60, v75, &unk_27CDF20B0, &unk_21CBA0090);
  if (v62(v60 + v58, 1, v63) == 1)
  {
    (*(v61 + 8))(v64, v63);
LABEL_35:
    v41 = &qword_27CDEAC40;
    v42 = &qword_21CBA1A40;
    v43 = v60;
    goto LABEL_36;
  }

  v66 = v60 + v58;
  v67 = v74;
  (*(v61 + 32))(v74, v66, v63);
  sub_21C7D1210(&qword_27CDEAC48, MEMORY[0x277D49978]);
  v68 = sub_21CB85574();
  v69 = *(v61 + 8);
  v69(v67, v63);
  v69(v64, v63);
  sub_21C6EA794(v60, &unk_27CDF20B0, &unk_21CBA0090);
  return (v68 & 1) != 0;
}

BOOL sub_21C7D2434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount.UniqueID(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_21C7D3210(a1, &v31 - v22, type metadata accessor for PMAccount.UniqueID);
  sub_21C7D3210(a2, &v23[v24], type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3210(v23, v16, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7D3278(&v23[v24], v7, type metadata accessor for PMAccount.SIWAUniqueID);
      v25 = sub_21C7D1550(v16, v7);
      sub_21C7C6B10(v7, type metadata accessor for PMAccount.SIWAUniqueID);
      v26 = v16;
      v27 = type metadata accessor for PMAccount.SIWAUniqueID;
LABEL_9:
      sub_21C7C6B10(v26, v27);
      sub_21C7C6B10(v23, type metadata accessor for PMAccount.UniqueID);
      return v25;
    }

    v28 = type metadata accessor for PMAccount.SIWAUniqueID;
    v29 = v16;
  }

  else
  {
    sub_21C7D3210(v23, v18, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21C7D3278(&v23[v24], v11, type metadata accessor for PMAccount.CombinedUniqueID);
      v25 = sub_21C7D1A58(v18, v11);
      sub_21C7C6B10(v11, type metadata accessor for PMAccount.CombinedUniqueID);
      v26 = v18;
      v27 = type metadata accessor for PMAccount.CombinedUniqueID;
      goto LABEL_9;
    }

    v28 = type metadata accessor for PMAccount.CombinedUniqueID;
    v29 = v18;
  }

  sub_21C7C6B10(v29, v28);
  sub_21C6EA794(v23, &qword_27CDEB3C8, &unk_21CBB0010);
  return 0;
}

BOOL _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PMAccount(0);
  if (!sub_21C7D2434(a1 + v5[5], a2 + v5[5]) || (sub_21C7D1258(a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  if (!v8)
  {
    sub_21C7D33AC(v7, 0, v10, v9);
    if (!v13)
    {
      sub_21C7D33AC(v12, 0, v15, v14);
      sub_21C7D33F0(v7, 0, v10, v9);
      return 1;
    }

    sub_21C7D33AC(v12, v13, v15, v14);
LABEL_20:
    sub_21C7D33F0(v7, v8, v10, v9);
    v19 = v12;
    v20 = v13;
    v21 = v15;
    v22 = v14;
    goto LABEL_21;
  }

  if (!v13)
  {
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33AC(v12, 0, v15, v14);
    sub_21C7D33AC(v7, v8, v10, v9);

    goto LABEL_20;
  }

  v16 = v7 == v12 && v8 == v13;
  if (!v16 && (v17 = *v11, v18 = v11[1], (sub_21CB86344() & 1) == 0) || ((v10 ^ v15) & 1) != 0)
  {
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33AC(v12, v13, v15, v14);
    sub_21C7D33AC(v7, v8, v10, v9);
    sub_21C7D33F0(v12, v13, v15, v14);

    v19 = v7;
    v20 = v8;
    v21 = v10;
    v22 = v9;
LABEL_21:
    sub_21C7D33F0(v19, v20, v21, v22);
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  sub_21C7D33AC(v7, v8, v10, v9);
  sub_21C7D33AC(v12, v13, v15, v14);
  sub_21C7D33AC(v7, v8, v10, v9);
  v24 = sub_21CB85DD4();
  sub_21C7D33F0(v12, v13, v15, v14);

  sub_21C7D33F0(v7, v8, v10, v9);
  return (v24 & 1) != 0;
}

BOOL _s17PasswordManagerUI9PMAccountV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  v11 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(a1 + *(v11 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_5:
    sub_21C7C6B10(v12, type metadata accessor for PMAccount.Storage);
    return 1;
  }

  v13 = *v10;
  sub_21C7D3210(a2 + *(v11 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_5;
  }

  v15 = *v8;
  v16 = [v13 compare_];

  return v16 == -1;
}

uint64_t _s17PasswordManagerUI9PMAccountV13generateNewID3for2inSSAC_So15WBSSavedAccountC10SafariCoreE05GroupG0VSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for PMAccount.UniqueID(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  v23 = a1 + *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7C8A3C(v22);
  sub_21C6EDBAC(a2, v15, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C7CE19C(v15);
  sub_21C7D3210(v22, v19, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v19, v7, type metadata accessor for PMAccount.SIWAUniqueID);
    v24 = sub_21C7CE99C();
    v25 = type metadata accessor for PMAccount.SIWAUniqueID;
    v26 = v7;
  }

  else
  {
    sub_21C7D3278(v19, v11, type metadata accessor for PMAccount.CombinedUniqueID);
    v24 = sub_21C7CE408();
    v25 = type metadata accessor for PMAccount.CombinedUniqueID;
    v26 = v11;
  }

  sub_21C7C6B10(v26, v25);
  sub_21C7C6B10(v22, type metadata accessor for PMAccount.UniqueID);
  return v24;
}

uint64_t sub_21C7D2F10(void *a1)
{
  a1[1] = sub_21C7D1210(&qword_27CDEB2C0, type metadata accessor for PMAccount);
  a1[2] = sub_21C7D1210(&qword_27CDEB1C8, type metadata accessor for PMAccount);
  result = sub_21C7D1210(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  a1[3] = result;
  return result;
}

unint64_t sub_21C7D2FCC()
{
  result = qword_27CDEB2D0;
  if (!qword_27CDEB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB2D0);
  }

  return result;
}

unint64_t sub_21C7D3024()
{
  result = qword_27CDEB2D8;
  if (!qword_27CDEB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB2D8);
  }

  return result;
}

uint64_t sub_21C7D3210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D3278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C7D32E0()
{
  result = qword_27CDEB3D0;
  if (!qword_27CDEB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBED0, &unk_21CBA1A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3D0);
  }

  return result;
}

uint64_t sub_21C7D3344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_21C7D33AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    v4 = a4;
  }
}

void sub_21C7D33F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t get_enum_tag_for_layout_string_17PasswordManagerUI23PMAccountDetailsContextO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_21C7D346C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C7D34C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C7D3528(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21C7D3564(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!(a2 >> 62))
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    v2 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = 2;
LABEL_5:
    MEMORY[0x21CF15F90](v3);
    return MEMORY[0x21CF15F90](v2);
  }

  v4 = 3;
  if (a2 != 0x8000000000000008)
  {
    v4 = 4;
  }

  if (a2 == 0x8000000000000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return MEMORY[0x21CF15F90](v2);
}

uint64_t sub_21C7D35DC()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C7D3564(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7D362C()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C7D3564(v3, v1);
  return sub_21CB864D4();
}

BOOL sub_21C7D3670(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      return ((v3 ^ v2) & 0x3FFFFFFFFFFFFFFFLL) == 0;
    }

    return 0;
  }

  v6 = 0x8000000000000000;
  if (v2 == 0x8000000000000000 || (v6 = 0x8000000000000008, v2 == 0x8000000000000008))
  {
    if (v3 == v6)
    {
      return 1;
    }
  }

  else if (v3 == 0x8000000000000010)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21C7D36FC()
{
  result = qword_27CDEB3F0;
  if (!qword_27CDEB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3F0);
  }

  return result;
}

uint64_t sub_21C7D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C7D36FC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C7D37C0()
{
  sub_21C7D37FC();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D37FC()
{
  result = qword_27CDEB3F8;
  if (!qword_27CDEB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB3F8);
  }

  return result;
}

uint64_t sub_21C7D386C()
{
  sub_21C7D38A8();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D38A8()
{
  result = qword_27CDEB400;
  if (!qword_27CDEB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB400);
  }

  return result;
}

uint64_t sub_21C7D390C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7D3980()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI31PMAccountDetailsSheetController__accountIDForPresentedDetailsSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C7D3A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB420, &qword_21CBA1D90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  (*(v7 + 16))(v23 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v23[1]);

  type metadata accessor for PMAccountsState();
  sub_21C705D90(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v14 = sub_21CB82674();
  v16 = v15;

  type metadata accessor for PMAccountDetailsSheetController();
  sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
  v17 = sub_21CB82B84();
  if (a2)
  {
    v19 = v17;
    v20 = v18;
    v21 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController);

    result = sub_21CB81CE4();
    *a3 = v14;
    a3[1] = v16;
    a3[2] = v19;
    a3[3] = v20;
    a3[4] = sub_21C7D4700;
    a3[5] = v12;
    a3[6] = result;
    a3[7] = v21;
  }

  else
  {
    type metadata accessor for PMPasswordManagerState();
    sub_21C705D90(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v45 = &v36 - v8;
  v9 = *(a1 + 16);
  v41 = a1;
  v42 = v9;
  v10 = v9;
  v46 = *(v9 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccount(255);
  v15 = type metadata accessor for PMAccountDetailsView(255);
  v16 = *(a1 + 24);
  v39 = v15;
  v40 = v16;
  v17 = sub_21C705D90(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  v18 = sub_21C705D90(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView);
  v48 = v10;
  v49 = v14;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v53 = v18;
  v37 = v17;
  v38 = v18;
  v43 = MEMORY[0x277CDEE40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v44 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v36 - v25;
  v27 = *(v3 + 40);
  (*(v3 + 32))(v24);
  v28 = v45;
  sub_21C7D40E0(v41);
  v29 = swift_checkMetadataState();
  v30 = swift_checkMetadataState();
  v31 = v40;
  v32 = v42;
  sub_21CB847C4();
  sub_21C7B8864(v28);
  (*(v46 + 8))(v13, v32);
  v48 = v32;
  v49 = v29;
  v50 = v30;
  v51 = v31;
  v52 = v37;
  v53 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C72BE10(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v44 + 8);
  v34(v23, OpaqueTypeMetadata2);
  sub_21C72BE10(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_21C7D40E0(uint64_t a1)
{
  v3 = *v1;
  v16 = v1[1];
  v17 = v3;
  v4 = *(v1 + 5);
  sub_21CB858B4();
  sub_21C6EDBAC(&v17, v15, &qword_27CDEB4E0, &qword_21CBA5F00);
  sub_21C6EDBAC(&v16, v15, &qword_27CDEB4E8, &unk_21CBA1EA0);

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;
  v10 = v1[1];
  *(v6 + 48) = *v1;
  *(v6 + 64) = v10;
  *(v6 + 80) = v1[2];
  sub_21C6EDBAC(&v17, v15, &qword_27CDEB4E0, &qword_21CBA5F00);
  sub_21C6EDBAC(&v16, v15, &qword_27CDEB4E8, &unk_21CBA1EA0);

  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v8;
  v13 = v1[1];
  *(v12 + 48) = *v1;
  *(v12 + 64) = v13;
  *(v12 + 80) = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  return sub_21CB84F64();
}

uint64_t sub_21C7D429C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v9 = v18;
  v10 = *(v18 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_21C7D4990(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v7);
      if (sub_21C7D4484(v7, a1))
      {

        v14 = v17;
        sub_21C7D4AC0(v7, v17);
        v13 = v14;
        v12 = 0;
        return (*(v4 + 56))(v13, v12, 1, v3);
      }

      ++v11;
      sub_21C7D4A64(v7);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = sub_21C7D4A64(v7);
    __break(1u);
  }

  else
  {
LABEL_6:

    v12 = 1;
    v13 = v17;
    return (*(v4 + 56))(v13, v12, 1, v3);
  }

  return result;
}

uint64_t sub_21C7D4484(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *a1;
    v3 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    if (v8)
    {
      if (v2 == v7 && v8 == v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_21CB86344();
      }
    }

    else
    {
      v4 = 0;
    }

    return v4 & 1;
  }

  else
  {
    v6 = *(a2 + 24);
    type metadata accessor for PMAccountDetailsSheetController();
    sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21CB81DC4();
  }

  else
  {
    v5 = *(a4 + 24);
    type metadata accessor for PMAccountDetailsSheetController();
    sub_21C705D90(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C7D4698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_21C7D3D34(a1, a2);
}

uint64_t sub_21C7D4700@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB420, &qword_21CBA1D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_21C7D4780()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C7D47BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C7D4804(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21C7D4868()
{
  result = qword_27CDEB4B0;
  if (!qword_27CDEB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB4B8, &qword_21CBA1E38);
    sub_21C6EADEC(&qword_27CDEB4C0, &qword_27CDEB4C8, &qword_21CBA1E40);
    sub_21C6EADEC(&qword_27CDEB4D0, &qword_27CDEB4D8, &qword_21CBA1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB4B0);
  }

  return result;
}

uint64_t sub_21C7D4990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D49F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[2];
  v5 = v1[3];
  return sub_21C7D429C((v1 + 6), a1);
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21C7D4A54(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_21C7D45C8(a1, v1[2], v1[3], (v1 + 6));
}

uint64_t sub_21C7D4A64(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7D4AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D4B6C()
{
  result = type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C7D4BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_21C7D54F8(v1, &v15 - v8, type metadata accessor for PMAccount);
  sub_21C7D54F8(v9, a1, type metadata accessor for PMAccount);
  sub_21C7D4AC0(v9, v7);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_21C7D4AC0(v7, v11 + v10);
  v12 = a1 + *(type metadata accessor for _PMAccountDetailsView(0) + 20);
  *v12 = sub_21C7D4E2C;
  *(v12 + 8) = v11;
  *(v12 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB500, &qword_21CBA1F68);
  return sub_21C7D54F8(v1, a1 + *(v13 + 52), type metadata accessor for PMAccount);
}

uint64_t sub_21C7D4D80(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D54F8(a1, v5, type metadata accessor for PMAccount);
  v6 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_21CA4B79C(v5);
}

uint64_t sub_21C7D4E2C()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7D4D80(v2);
}

uint64_t sub_21C7D4EAC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB530, &qword_21CBA1FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = type metadata accessor for PMAccount(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C7D54F8(v1 + *(v10 + 32), v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D5560(v21, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v26 = v1 + *(type metadata accessor for _PMAccountDetailsView(0) + 20);
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C6F0670(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    sub_21CB82134();
    sub_21C91D3E0(v4);
    sub_21C7D54F8(v4, v8, type metadata accessor for PMCombinedAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView);
    sub_21CB83494();
    v24 = type metadata accessor for PMCombinedAccountDetailsView;
    v25 = v4;
    return sub_21C7D5560(v25, v24);
  }

  v22 = *v21;
  v23 = [*v21 credentialTypes];

  if (v23 != 4)
  {
    goto LABEL_5;
  }

  sub_21C7D54F8(v1, v13, type metadata accessor for PMAccount);
  sub_21CB2E2C8(v13, v17);
  sub_21C7D54F8(v17, v8, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  swift_storeEnumTagMultiPayload();
  sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB83494();
  v24 = type metadata accessor for PMSignInWithAppleAccountDetailsView;
  v25 = v17;
  return sub_21C7D5560(v25, v24);
}

void sub_21C7D5360()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C7D53E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C7D53E4()
{
  if (!qword_27CDEB518)
  {
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C6F0670(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB518);
    }
  }
}

unint64_t sub_21C7D5478()
{
  result = qword_27CDEB528;
  if (!qword_27CDEB528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB500, &qword_21CBA1F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB528);
  }

  return result;
}

uint64_t sub_21C7D54F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D5560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C7D55C0()
{
  result = qword_27CDEB548;
  if (!qword_27CDEB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB550, &unk_21CBA1FE0);
    sub_21C6F0670(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    sub_21C6F0670(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB548);
  }

  return result;
}

void *sub_21C7D56B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB558, &qword_21CBA2070);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  KeyPath = swift_getKeyPath();
  v12 = MEMORY[0x277D84FA0];
  v3[2] = KeyPath;
  v3[3] = 0;
  v3[6] = v12;
  v3[4] = a1;
  v3[5] = a2;
  sub_21C7D5904();
  v13 = v3[2];
  v14 = qword_27CDEA4C0;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073D0(v13, v16[1]);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C7D5E20();
  sub_21CB81E04();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return v3;
}

uint64_t sub_21C7D5904()
{
  v39 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v1 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMGeneratedPassword(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v35 = v0;
  KeyPath = v0[2];
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
LABEL_19:
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073D0(KeyPath, v44);

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_21CB81DB4();

  v12 = v44;
  v36 = *(v44 + 16);
  if (v36)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = *(v37 + 72);
      sub_21C7D5E84(v12 + v41 + v40 * v13, v9, type metadata accessor for PMGeneratedPassword);
      sub_21C7D5E84(&v9[*(v38 + 20)], v3, type metadata accessor for PMGeneratedPassword.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      KeyPath = *v3;
      if (EnumCaseMultiPayload == 1)
      {
        v16 = *(v3 + 2);

        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
        v18 = sub_21CB80DD4();
        (*(*(v18 - 8) + 8))(&v3[v17], v18);
      }

      else
      {
        v19 = [*v3 protectionSpace];

        KeyPath = v19;
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      v20 = [KeyPath host];
      v21 = v3;
      v22 = v9;
      v23 = sub_21CB855C4();
      v25 = v24;

      v44 = v23;
      v45 = v25;
      v26 = v35[5];
      v42 = v35[4];
      v43 = v26;
      sub_21C71F3FC();

      v27 = sub_21CB85EC4();

      v9 = v22;
      v3 = v21;

      if (v27)
      {
        sub_21C7D5F48(v9, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0B84(0, *(v14 + 16) + 1, 1);
          v14 = v46;
        }

        v30 = *(v14 + 16);
        v29 = *(v14 + 24);
        KeyPath = (v30 + 1);
        if (v30 >= v29 >> 1)
        {
          sub_21C7B0B84(v29 > 1, v30 + 1, 1);
          v14 = v46;
        }

        *(v14 + 16) = KeyPath;
        sub_21C7D5F48(v34, v14 + v41 + v30 * v40);
        goto LABEL_5;
      }

LABEL_4:
      sub_21C7D5EEC(v9);
LABEL_5:
      if (v36 == ++v13)
      {
        goto LABEL_17;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_17:

  v31 = *(v14 + 16);

  v35[3] = v31;
  return result;
}

uint64_t sub_21C7D5D78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C7D5904();
  }

  return result;
}

uint64_t sub_21C7D5DD0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

unint64_t sub_21C7D5E20()
{
  result = qword_27CDEB568;
  if (!qword_27CDEB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB558, &qword_21CBA2070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB568);
  }

  return result;
}

uint64_t sub_21C7D5E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7D5EEC(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7D5F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D5FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_21CB829D4();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB590, &qword_21CBA2170);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB598, &qword_21CBA2178);
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5A0, &qword_21CBA2180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5A8, &qword_21CBA2188);
  sub_21C7D6A38();
  sub_21CB83EF4();
  sub_21CB85294();
  v21 = sub_21C6EADEC(&qword_27CDEB5C8, &qword_27CDEB590, &qword_21CBA2170);
  v22 = sub_21C7D6AF4();
  sub_21CB849C4();
  (*(v27 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  v30 = v7;
  v31 = v3;
  v32 = v21;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v25;
  sub_21CB845F4();
  (*(v26 + 8))(v16, v23);
  *&v20[*(v17 + 36)] = 0x4080400000000000;
  sub_21C7D6B4C();
  sub_21CB84294();
  return sub_21C753B64(v20);
}

uint64_t sub_21C7D6374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5C0, &unk_21CBA2190);
  sub_21C6EADEC(&qword_27CDEB5B8, &qword_27CDEB5C0, &unk_21CBA2190);
  return sub_21CB85054();
}

uint64_t sub_21C7D6418@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  sub_21CB81014();
  v15 = sub_21CB81004();
  v39 = v16;
  v40 = v15;
  v17 = *(v8 + 8);
  v17(v14, v7);
  sub_21CB81014();
  v18 = sub_21CB81004();
  v37 = v19;
  v38 = v18;
  v17(v14, v7);
  sub_21CB81014();
  sub_21CB81014();
  v20 = sub_21CB80FF4();
  v35 = v21;
  v36 = v20;
  v17(v12, v7);
  v17(v14, v7);
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  v17(v14, v7);
  v25 = v42;
  sub_21C7D6D4C(v42, v6);
  v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v27 = swift_allocObject();
  sub_21C7D6DB0(v6, v27 + v26);
  v28 = v43;
  sub_21C7D6D4C(v25, v43);
  v29 = swift_allocObject();
  result = sub_21C7D6DB0(v28, v29 + v26);
  v31 = v39;
  *a1 = v40;
  a1[1] = v31;
  v32 = v37;
  a1[2] = v38;
  a1[3] = v32;
  v33 = v35;
  a1[4] = v36;
  a1[5] = v33;
  a1[6] = v22;
  a1[7] = v24;
  a1[8] = sub_21C7D6E14;
  a1[9] = v27;
  a1[10] = sub_21C7D6E74;
  a1[11] = v29;
  a1[12] = sub_21C7D695C;
  a1[13] = 0;
  return result;
}

uint64_t sub_21C7D67BC()
{
  v0 = sub_21CB80BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB82484();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C95B2F0(v9);
  v10 = [objc_opt_self() passwordManagerURL];
  sub_21CB80B94();

  sub_21CB82454();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21C7D695C@<X0>(int64x2_t *a1@<X8>)
{
  a1->i64[0] = 0;
  a1->i64[1] = 0;
  a1[1] = vdupq_n_s64(0x4040000000000000uLL);
  a1[2].i8[0] = 0;
  v2 = *(type metadata accessor for PMPasswordsIcon() + 28);
  *(a1->i64 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v2) = sub_21CB83D14();
  sub_21CB81F24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB5E8, &qword_21CBA21D8);
  v12 = &a1->i8[*(result + 36)];
  *v12 = v2;
  *(v12 + 1) = v4;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = v10;
  v12[40] = 0;
  return result;
}

unint64_t sub_21C7D6A38()
{
  result = qword_27CDEB5B0;
  if (!qword_27CDEB5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB5A8, &qword_21CBA2188);
    sub_21C6EADEC(&qword_27CDEB5B8, &qword_27CDEB5C0, &unk_21CBA2190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5B0);
  }

  return result;
}

unint64_t sub_21C7D6AF4()
{
  result = qword_27CDED1A0;
  if (!qword_27CDED1A0)
  {
    sub_21CB829D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1A0);
  }

  return result;
}

unint64_t sub_21C7D6B4C()
{
  result = qword_27CDEB5D0;
  if (!qword_27CDEB5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB5A0, &qword_21CBA2180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB598, &qword_21CBA2178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB590, &qword_21CBA2170);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDEB5C8, &qword_27CDEB590, &qword_21CBA2170);
    sub_21C7D6AF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C7D6CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5D0);
  }

  return result;
}

unint64_t sub_21C7D6CA4()
{
  result = qword_27CDEB5D8;
  if (!qword_27CDEB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB5D8);
  }

  return result;
}

__n128 sub_21C7D6CF8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_21C7D6418(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v7[6];
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21C7D6D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D6DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7D6E14()
{
  v0 = *(*(type metadata accessor for PMSafariSettingsBreadcrumbs() - 8) + 80);

  return sub_21C7D67BC();
}

uint64_t sub_21C7D6E74()
{
  v1 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 20));
  return sub_21CB81EA4();
}

uint64_t sub_21C7D6EEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C7D6F28(uint64_t *a1, int a2)
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

uint64_t sub_21C7D6F70(uint64_t result, int a2, int a3)
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

uint64_t sub_21C7D7008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v46 = a1;
  v47 = a2;
  v51 = a5;
  v6 = sub_21CB829D4();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4;
  v11 = sub_21CB83F04();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  WitnessTable = swift_getWitnessTable();
  v38 = sub_21C7D6AF4();
  v60 = v11;
  v61 = v6;
  v62 = WitnessTable;
  v63 = v38;
  v42 = MEMORY[0x277CDEF78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v38 - v17;
  v19 = sub_21CB828F4();
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = sub_21CB828F4();
  v49 = *(v23 - 8);
  v24 = *(v49 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v40 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v43 = &v38 - v27;
  v52 = v41;
  v53 = v10;
  v54 = v46;
  v55 = v47;
  sub_21CB83EF4();
  sub_21CB85294();
  v28 = WitnessTable;
  v29 = v38;
  sub_21CB849C4();
  (*(v50 + 8))(v9, v6);
  (*(v45 + 8))(v14, v11);
  sub_21CB85214();
  v60 = v11;
  v61 = v6;
  v62 = v28;
  v63 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = OpaqueTypeMetadata2;
  sub_21CB847A4();
  (*(v44 + 8))(v18, v30);
  sub_21CB83CF4();
  v58 = OpaqueTypeConformance2;
  v59 = MEMORY[0x277CDFC60];
  v31 = swift_getWitnessTable();
  v32 = v40;
  sub_21CB84884();
  (*(v48 + 8))(v22, v19);
  v56 = v31;
  v57 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = v43;
  sub_21C72BE10(v32, v23, v33);
  v35 = *(v49 + 8);
  v35(v32, v23);
  sub_21C72BE10(v34, v23, v33);
  return (v35)(v34, v23);
}

uint64_t sub_21C7D75B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v11();
  sub_21C72BE10(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  sub_21C72BE10(v13, a3, a4);
  return (v14)(v13, a3);
}

uint64_t getEnumTagSinglePayload for PMAccountDetailsPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMAccountDetailsPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21C7D784C()
{
  result = qword_27CDEB670;
  if (!qword_27CDEB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB670);
  }

  return result;
}

uint64_t sub_21C7D78A0()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7D78E8()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C7D792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C7D784C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C7D7990()
{
  sub_21C7D79CC();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C7D79CC()
{
  result = qword_27CDEB678;
  if (!qword_27CDEB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB678);
  }

  return result;
}

uint64_t (*sub_21C7D7A38())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_21C7D7B14;
}

unint64_t sub_21C7D7AC0()
{
  result = qword_27CDEB680;
  if (!qword_27CDEB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB680);
  }

  return result;
}

uint64_t type metadata accessor for PMShareAccountButton()
{
  result = qword_27CDEB698;
  if (!qword_27CDEB698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7D7BA0()
{
  sub_21C72CAD8(319, &qword_27CDEB6A8, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  if (v0 <= 0x3F)
  {
    sub_21C72CAD8(319, &qword_27CDEB6B0, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_21C7210DC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PMAccount(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C7D7CC0@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for PMShareAccountButton();
  v3 = *(v2 - 8);
  v75 = v2 - 8;
  v69 = v3;
  v68 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C8, &qword_21CBA2498);
  v19 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6D0, &qword_21CBA24A0);
  v23 = *(v22 - 8);
  v71 = v22;
  v72 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v70 = &v62 - v25;
  v76 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6D8, &qword_21CBA24A8);
  sub_21C6EADEC(&qword_27CDEB6E0, &qword_27CDEB6D8, &qword_21CBA24A8);
  sub_21CB83F54();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6E8, &qword_21CBA24B0) + 36)] = 257;
  KeyPath = swift_getKeyPath();
  v27 = &v18[*(v15 + 44)];
  *v27 = KeyPath;
  v27[8] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v28 = v1;
  sub_21CB84D74();
  v29 = v21;
  sub_21CA66AB8(0, 0, v21);
  sub_21C6EA794(v13, &qword_27CDEB6B8, &qword_21CBA2488);
  sub_21C6EA794(v18, &qword_27CDEB6C0, &qword_21CBA2490);
  v63 = v9;
  sub_21CB84D54();
  v30 = *(v6 + 28);
  v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F0, &qword_21CBA24E8) + 36)];
  v32 = v29;
  v66 = v29;
  sub_21C6EDBAC(&v9[v30], v31, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C7DA1B0(v9, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v64 = type metadata accessor for PMShareAccountButton;
  v33 = v28;
  v34 = v67;
  sub_21C7DA0E0(v28, v67, type metadata accessor for PMShareAccountButton);
  v35 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v36 = swift_allocObject();
  v69 = type metadata accessor for PMShareAccountButton;
  sub_21C7DA148(v34, v36 + v35, type metadata accessor for PMShareAccountButton);
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F8, &qword_21CBC23B0) + 36));
  *v37 = sub_21C7D9B0C;
  v37[1] = v36;
  v38 = v63;
  sub_21CB84D54();
  v39 = &v32[*(v74 + 36)];
  sub_21C6EDBAC(v38, v39, &qword_27CDEB700, &unk_21CBA24F0);
  sub_21C7DA1B0(v38, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v40 = v33;
  v41 = v64;
  sub_21C7DA0E0(v33, v34, v64);
  v42 = swift_allocObject();
  v43 = v69;
  sub_21C7DA148(v34, v42 + v35, v69);
  v44 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080) + 36));
  *v44 = sub_21C7D9B24;
  v44[1] = v42;
  v45 = *(v75 + 32);
  v65 = v40;
  v46 = (v40 + v45);
  v47 = *v46;
  v48 = *(v46 + 1);
  LOBYTE(v81) = v47;
  v82 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21C7DA0E0(v40, v34, v41);
  v49 = swift_allocObject();
  sub_21C7DA148(v34, v49 + v35, v43);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB710, &qword_21CBA2508);
  v51 = sub_21C7D9C20();
  v52 = type metadata accessor for PMAirDropView();
  v53 = sub_21CB83994();
  v54 = sub_21C7DA098(&qword_27CDEB788, type metadata accessor for PMAirDropView);
  v77 = v52;
  v78 = v53;
  v79 = v54;
  v80 = MEMORY[0x277CDE2B8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v70;
  v56 = v74;
  v57 = v66;
  sub_21CB847B4();

  sub_21C6EA794(v57, &qword_27CDEB6C8, &qword_21CBA2498);
  v81 = 0x706F7244726961;
  v82 = 0xE700000000000000;
  v58 = *(v65 + *(v75 + 36));
  sub_21CB852C4();
  v77 = v56;
  v78 = v50;
  v79 = v51;
  v80 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v59 = v71;
  sub_21CB845E4();
  return (*(v72 + 8))(v55, v59);
}

uint64_t sub_21C7D84C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB790, &qword_21CBA2528);
  v159 = *(v161 - 8);
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v157 = &v129 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB798, &unk_21CBA2530);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v162 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v160 = &v129 - v9;
  v10 = sub_21CB82874();
  v154 = *(v10 - 8);
  v155 = v10;
  v11 = *(v154 + 64);
  MEMORY[0x28223BE20](v10);
  v153 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for PMAccount.MockData(0);
  v13 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v136 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for PMAccount.Storage(0);
  v15 = *(*(v151 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v151);
  v152 = (&v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v138 = (&v129 - v18);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v144 = *(v145 - 8);
  v19 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v140 = &v129 - v20;
  v21 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v143 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v137 = &v129 - v26;
  v142 = sub_21CB81024();
  v27 = *(v142 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v142);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v129 - v32;
  v148 = type metadata accessor for PMAccount(0);
  v34 = *(*(v148 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v148);
  v156 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v129 - v37;
  v39 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v40 = *(*(v39 - 1) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7A0, &qword_21CBA2540);
  v43 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v141 = &v129 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7A8, &qword_21CBA2548);
  v149 = *(v45 - 8);
  v150 = v45;
  v46 = *(v149 + 64);
  MEMORY[0x28223BE20](v45);
  v147 = &v129 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B0, &qword_21CBA2550);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v146 = &v129 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B8, &qword_21CBA2558);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52 - 8);
  v158 = &v129 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = &v129 - v56;
  v58 = type metadata accessor for PMShareAccountButton();
  v59 = *(a1 + *(v58 + 36));
  v164 = v58;
  if (v59 == 1)
  {
    v133 = v49;
    v134 = v48;
    v132 = v57;
    v131 = a1 + *(v58 + 32);
    sub_21C7DA0E0(v131, v38, type metadata accessor for PMAccount);
    sub_21CB81014();
    sub_21CB81014();
    v60 = sub_21CB80FF4();
    v130 = v61;
    v62 = *(v27 + 8);
    v63 = v142;
    v62(v31, v142);
    v62(v33, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
    v64 = v137;
    v142 = a1;
    sub_21CB84D74();
    v65 = &v42[v39[8]];
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v165);

    type metadata accessor for PMAccountsState();
    sub_21C7DA098(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v67 = sub_21CB82674();
    v69 = v68;

    *v65 = v67;
    v65[1] = v69;
    v70 = &v42[v39[9]];
    v71 = swift_getKeyPath();
    sub_21CB86544();
    sub_21C7073E8(v71, v165);

    type metadata accessor for PMGroupsStore();
    sub_21C7DA098(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
    v72 = sub_21CB82674();
    v74 = v73;

    *v70 = v72;
    v70[1] = v74;
    v75 = &v42[v39[12]];
    v168 = sub_21CB12DEC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    sub_21CB84D44();
    v76 = v166;
    *v75 = v165;
    *(v75 + 1) = v76;
    v77 = &v42[v39[13]];
    LOBYTE(v168) = 0;
    sub_21CB84D44();
    v78 = v166;
    *v77 = v165;
    *(v77 + 1) = v78;
    sub_21C7DA0E0(v38, v42, type metadata accessor for PMAccount);
    v79 = v39;
    v80 = &v42[v39[5]];
    v81 = v130;
    *v80 = v60;
    v80[1] = v81;
    v82 = v148;
    v83 = v138;
    sub_21C7DA0E0(&v38[*(v148 + 24)], v138, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v85 = v140;
    v86 = v64;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C7DA1B0(v38, type metadata accessor for PMAccount);
      v87 = v83;
      v88 = v136;
      sub_21C7DA148(v87, v136, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v88 + *(v135 + 72), v85, &unk_27CDF20B0, &unk_21CBA0090);
      v89 = type metadata accessor for PMAccount.MockData;
      v90 = v88;
    }

    else
    {
      v91 = *v83;
      sub_21CB85B94();

      v89 = type metadata accessor for PMAccount;
      v90 = v38;
    }

    sub_21C7DA1B0(v90, v89);
    v92 = v143;
    sub_21C716934(v85, v143, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v144 + 56))(v92, 0, 2, v145);
    v93 = &v42[v79[10]];
    *(v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
    sub_21C7DA148(v92, v93, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v94 = &v42[v79[11]];
    sub_21C716934(v86, v94, &qword_27CDEB6B8, &qword_21CBA2488);
    type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
    swift_storeEnumTagMultiPayload();
    *(v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)) = 0;
    v42[v79[6]] = 0;
    v42[v79[7]] = 1;
    v95 = v164[5];
    v96 = *(v139 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
    v97 = v141;
    sub_21CB84D54();
    sub_21C7DA148(v42, v97, type metadata accessor for PMMoveAccountToGroupPicker);
    v98 = v153;
    sub_21CB82864();
    sub_21C6EADEC(&qword_27CDEB7E8, &qword_27CDEB7A0, &qword_21CBA2540);
    v99 = v147;
    v100 = v155;
    sub_21CB84194();
    (*(v154 + 8))(v98, v100);
    sub_21C6EA794(v97, &qword_27CDEB7A0, &qword_21CBA2540);
    v101 = v152;
    sub_21C7DA0E0(v131 + *(v82 + 24), v152, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7DA1B0(v101, type metadata accessor for PMAccount.Storage);
      v102 = 0;
    }

    else
    {
      v103 = *v101;
      v102 = [*v101 userIsNeverSaveMarker];
    }

    v57 = v132;
    v104 = v134;
    v105 = v133;
    v106 = swift_getKeyPath();
    v107 = swift_allocObject();
    *(v107 + 16) = v102;
    v108 = v146;
    (*(v149 + 32))(v146, v99, v150);
    v109 = (v108 + *(v104 + 36));
    *v109 = v106;
    v109[1] = sub_21C735744;
    v109[2] = v107;
    sub_21C754180(v108, v57);
    (*(v105 + 56))(v57, 0, 1, v104);
    a1 = v142;
  }

  else
  {
    (*(v49 + 56))(v57, 1, 1, v48);
  }

  if (*(a1 + v164[10]) == 1)
  {
    v110 = v164;
    v111 = v156;
    sub_21C7DA0E0(a1 + v164[8], v156, type metadata accessor for PMAccount);
    v112 = a1 + v110[6];
    v113 = *v112;
    v114 = *(v112 + 8);
    LOBYTE(v168) = v113;
    v169 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v115 = v165;
    v116 = v166;
    v117 = v167;
    v118 = v157;
    sub_21C7DA0E0(v111, v157, type metadata accessor for PMAccount);
    v119 = v161;
    v120 = v118 + *(v161 + 36);
    *v120 = v115;
    *(v120 + 8) = v116;
    *(v120 + 16) = v117;
    v121 = v118 + *(v119 + 40);
    sub_21CB84C84();
    sub_21C7DA1B0(v111, type metadata accessor for PMAccount);
    v122 = v160;
    sub_21C716934(v118, v160, &qword_27CDEB790, &qword_21CBA2528);
    v123 = 0;
  }

  else
  {
    v123 = 1;
    v122 = v160;
    v119 = v161;
  }

  (*(v159 + 56))(v122, v123, 1, v119);
  v124 = v158;
  sub_21C7540F4(v57, v158);
  v125 = v162;
  sub_21C6EDBAC(v122, v162, &qword_27CDEB798, &unk_21CBA2530);
  v126 = v163;
  sub_21C7540F4(v124, v163);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7C0, &qword_21CBA2560);
  sub_21C6EDBAC(v125, v126 + *(v127 + 48), &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v122, &qword_27CDEB798, &unk_21CBA2530);
  sub_21C6EA794(v57, &qword_27CDEB7B8, &qword_21CBA2558);
  sub_21C6EA794(v125, &qword_27CDEB798, &unk_21CBA2530);
  return sub_21C6EA794(v124, &qword_27CDEB7B8, &qword_21CBA2558);
}

uint64_t sub_21C7D95BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C7D96E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84C14();
  *a1 = result;
  return result;
}

uint64_t sub_21C7D9724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C7D9764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_21CB80E34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = a3(0);
  result = (*(*(v13 - 8) + 48))(a1, 1, v13);
  if (result == 1)
  {
    sub_21CB80E24();
    v15 = *(type metadata accessor for PMShareAccountButton() + 20);
    (*(v6 + 16))(v10, v12, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
    sub_21CB84D64();
    return (*(v6 + 8))(v12, v5);
  }

  return result;
}

uint64_t sub_21C7D98F8(uint64_t a1)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAirDropView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMShareAccountButton();
  sub_21C7DA0E0(a1 + *(v11 + 32), v10, type metadata accessor for PMAccount);
  v14[0] = 0x706F7244726961;
  v14[1] = 0xE700000000000000;
  v12 = *(a1 + *(v11 + 28));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C7DA098(&qword_27CDEB788, type metadata accessor for PMAirDropView);
  sub_21CB84524();
  (*(v3 + 8))(v6, v2);
  return sub_21C7DA1B0(v10, type metadata accessor for PMAirDropView);
}

uint64_t sub_21C7D9BB0()
{
  v1 = *(type metadata accessor for PMShareAccountButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7D98F8(v2);
}

unint64_t sub_21C7D9C20()
{
  result = qword_27CDEB718;
  if (!qword_27CDEB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6C8, &qword_21CBA2498);
    sub_21C7D9CD8();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB718);
  }

  return result;
}

unint64_t sub_21C7D9CD8()
{
  result = qword_27CDEB720;
  if (!qword_27CDEB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6F0, &qword_21CBA24E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB728, &unk_21CBA2510);
    type metadata accessor for PMAccount(255);
    type metadata accessor for PMNewGroupFlow(255);
    sub_21C7D9E6C();
    sub_21C7DA098(&qword_27CDEB2C8, type metadata accessor for PMAccount);
    sub_21C7DA098(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB778, &qword_27CDEB6F8, &qword_21CBC23B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB720);
  }

  return result;
}

unint64_t sub_21C7D9E6C()
{
  result = qword_27CDEB730;
  if (!qword_27CDEB730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB728, &unk_21CBA2510);
    sub_21C7D9F28();
    sub_21C7DA098(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB730);
  }

  return result;
}

unint64_t sub_21C7D9F28()
{
  result = qword_27CDEB738;
  if (!qword_27CDEB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6C0, &qword_21CBA2490);
    sub_21C7D9FE0();
    sub_21C6EADEC(&qword_27CDEB758, &qword_27CDEB760, &qword_21CBA2520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB738);
  }

  return result;
}

unint64_t sub_21C7D9FE0()
{
  result = qword_27CDEB740;
  if (!qword_27CDEB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6E8, &qword_21CBA24B0);
    sub_21C6EADEC(&qword_27CDEB748, &qword_27CDEB750, &unk_21CBC26A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB740);
  }

  return result;
}

uint64_t sub_21C7DA098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7DA0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7DA148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7DA1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21C7DA218(uint64_t a1)
{
  sub_21C7DAC98(319, &qword_27CDEB878, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_21CB85E54();
    if (v4 <= 0x3F)
    {
      v5 = MEMORY[0x277D839B0];
      sub_21C7DAC98(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        sub_21C7DAC98(319, &qword_27CDF4000, v5, MEMORY[0x277CE10B8]);
        if (v7 <= 0x3F)
        {
          sub_21C7DAC34();
          if (v8 <= 0x3F)
          {
            sub_21C7DAC98(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v9 <= 0x3F)
            {
              sub_21C7DACE8(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
              if (v10 <= 0x3F)
              {
                sub_21C6EFE5C();
                if (v11 <= 0x3F)
                {
                  sub_21C7DACE8(319, &qword_27CDEB8A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CDD7D0]);
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

uint64_t sub_21C7DA498(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(sub_21CB82834() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600) - 8);
  v12 = *(v6 + 80);
  v13 = *(v11 + 80);
  if (v8 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + 9;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v10 + 8;
  v22 = v13 + 16;
  if (v15 < a2)
  {
    v23 = ((((*(v11 + 64) + ((v22 + ((v21 + ((v20 + ((((((((((((v17 + ((v12 + 56) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v15 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_32:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        return v15 + (v30 | v29) + 1;
      }
    }
  }

  if ((v14 & 0x80000000) == 0)
  {
    v31 = *(a1 + 1);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    return (v31 + 1);
  }

  v33 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  if (v8 == v15)
  {
    if (v7 >= 2)
    {
      v36 = (*(v6 + 48))(v33, v7, v5);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = *(v11 + 48);
  v35 = (v22 + ((v21 + ((v20 + ((((((((((((v17 + v33) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v13;

  return v34(v35);
}

void sub_21C7DA828(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v7 = *(v32 - 8);
  v33 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(sub_21CB82834() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600) - 8);
  v14 = *(v7 + 80);
  v15 = *(v13 + 80);
  if (v9 <= *(v13 + 84))
  {
    v16 = *(v13 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  v19 = v18 + 9;
  v20 = *(v10 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 16;
  v23 = ((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 < a3)
  {
    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a3 - v17 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a2 - v17;
    }

    else
    {
      v26 = 1;
    }

    if (((((*(v13 + 64) + ((v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + ((v14 + 56) & ~v14)) & 0xFFFFFFF8) + 30) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v21)) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v27 = ~v17 + a2;
      bzero(a1, v23);
      *a1 = v27;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v23) = v26;
      }

      else
      {
        *(a1 + v23) = v26;
      }
    }

    else if (v12)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v23) = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v12)
  {
    goto LABEL_45;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
    if (v9 == v17)
    {
      if (v8 >= 2)
      {
        v29 = *(v33 + 56);

        v29(v28, (a2 + 1), v8, v32);
      }
    }

    else
    {
      v30 = *(v13 + 56);
      v31 = (v15 + 16 + ((v11 + 8 + ((v22 + ((((((((((((v19 + v28) & 0xFFFFFFFFFFFFFFF8) + 30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

      v30(v31, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = (a2 - 1);
  }
}

void sub_21C7DAC34()
{
  if (!qword_27CDEB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB888, qword_21CBA2628);
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB880);
    }
  }
}

void sub_21C7DAC98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C7DACE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C7DAD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21C7E4074(v2 + *(a1 + 116), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB82834();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21C7DAF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v158 = a1;
  v166 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
  v161 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v167 = MEMORY[0x277CE0868];
  v225 = WitnessTable;
  v226 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v168 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_21C7E3710();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  v163 = sub_21CB83B74();
  sub_21CB828F4();
  v219 = swift_getWitnessTable();
  v220 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v4 = swift_getWitnessTable();
  v164 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v217 = v4;
  v218 = v164;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB839C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v216 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
  v213 = swift_getWitnessTable();
  v214 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
  v211 = swift_getWitnessTable();
  v212 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
  v209 = swift_getWitnessTable();
  v210 = v164;
  v207 = swift_getWitnessTable();
  v208 = sub_21C7E3870();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v157 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  sub_21CB828F4();
  sub_21CB834A4();
  sub_21CB825E4();
  type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v5 = sub_21C7E38C4();
  v6 = swift_getOpaqueTypeConformance2();
  v156 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
  v205 = v6;
  v206 = v156;
  v203 = swift_getWitnessTable();
  v204 = v6;
  v201 = v5;
  v202 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6F06B8(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB980, &qword_21CBA26F8);
  v199 = swift_getOpaqueTypeConformance2();
  v200 = v164;
  v7 = swift_getWitnessTable();
  type metadata accessor for PMLargeTypeView(255);
  sub_21CB83994();
  sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView);
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v9 = sub_21CB828F4();
  v10 = sub_21CB828F4();
  v223 = v7;
  v224 = v8;
  v197 = swift_getOpaqueTypeConformance2();
  v198 = v164;
  v11 = v164;
  v12 = swift_getWitnessTable();
  v195 = v12;
  v13 = v156;
  v196 = v156;
  v221 = v10;
  v222 = swift_getWitnessTable();
  v166 = v222;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v165 = sub_21CB834A4();
  v148 = *(v165 - 8);
  v15 = *(v148 + 64);
  MEMORY[0x28223BE20](v165);
  v147 = &v130 - v16;
  v162 = swift_checkMetadataState();
  v137 = *(v162 - 8);
  v17 = *(v137 + 64);
  v18 = MEMORY[0x28223BE20](v162);
  v136 = &v130 - v19;
  v144 = OpaqueTypeMetadata2;
  v139 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v139 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v138 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v142 = &v130 - v23;
  v24 = sub_21CB828F4();
  v25 = sub_21CB828F4();
  v167 = v12;
  v193 = v12;
  v194 = v11;
  v163 = swift_getWitnessTable();
  v191 = v163;
  v192 = v13;
  v26 = v160;
  v27 = swift_getWitnessTable();
  v221 = v25;
  v222 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = sub_21CB834A4();
  v145 = *(v29 - 8);
  v30 = *(v145 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v151 = &v130 - v32;
  v153 = v9;
  v152 = *(v9 - 8);
  v33 = *(v152 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v134 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v130 - v37;
  v146 = v24;
  v39 = *(v24 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v36);
  v140 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v150 = &v130 - v43;
  v164 = swift_checkMetadataState();
  v133 = *(v164 - 8);
  v44 = *(v133 + 64);
  v45 = MEMORY[0x28223BE20](v164);
  v132 = &v130 - v46;
  v143 = v28;
  v135 = *(v28 - 8);
  v47 = *(v135 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v149 = &v130 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v141 = &v130 - v50;
  v157 = v29;
  v51 = sub_21CB834A4();
  v155 = *(v51 - 8);
  v156 = v51;
  v52 = *(v155 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v130 - v53;
  LODWORD(WitnessTable) = *(v26 + *(v158 + 52));
  v55 = v158;
  v56 = sub_21C7DC904(v158);
  v57 = v56;
  v168 = v27;
  v154 = v54;
  if (WitnessTable == 1)
  {
    v148 = v39;
    sub_21C7DCA88(v55, v38);
    v58 = *(v55 + 24);
    v59 = v161;
    v60 = sub_21C7E3BD8();
    v147 = v61;
    v62 = v26;
    v64 = v63;
    v66 = v65;
    v158 = v152 + 8;
    if (v57)
    {
      sub_21C7DDE3C(v62, v59, v58);
      v67 = v38;
      v68 = v150;
      v69 = v147;
      v152 = v66;
      v70 = v153;
      sub_21CB84464();

      sub_21C74A72C(v60, v69, v64 & 1);

      (*v158)(v67, v70);
      sub_21C7E3A34();
      v71 = v132;
      v72 = v146;
      v73 = v163;
      sub_21CB841C4();
      (*(v148 + 8))(v68, v72);
      sub_21C7DE164(v160, v161, v58);
      v74 = v164;
      v75 = v168;
      sub_21CB841F4();

      (*(v133 + 8))(v71, v74);
      v221 = v74;
      v222 = v75;
      v76 = swift_getOpaqueTypeConformance2();
      v77 = v141;
      v78 = v149;
      v79 = v143;
      sub_21C72BE10(v149, v143, v76);
      v161 = *(v135 + 8);
      v161(v78, v79);
      sub_21C72BE10(v77, v79, v76);
      sub_21C909A74(v78, v79);
      v171 = v76;
      v172 = v73;
      v80 = v157;
      v160 = swift_getWitnessTable();
      v81 = v162;
      v221 = v162;
      v222 = v166;
      v169 = swift_getOpaqueTypeConformance2();
      v170 = v167;
      swift_getWitnessTable();
      v82 = v154;
      v83 = v151;
      sub_21C909A74(v151, v80);
      (*(v145 + 8))(v83, v80);
      v84 = v161;
      v161(v149, v79);
      v85 = v79;
      v86 = v81;
      v84(v141, v85);
    }

    else
    {
      sub_21C7DE5D4(v62, v59, v58);
      v104 = v140;
      v105 = v147;
      v106 = v153;
      sub_21CB84464();

      sub_21C74A72C(v60, v105, v64 & 1);

      (*v158)(v38, v106);
      v107 = v150;
      v108 = v104;
      v109 = v104;
      v110 = v146;
      v111 = v163;
      sub_21C72BE10(v109, v146, v163);
      v161 = *(v148 + 8);
      v161(v108, v110);
      sub_21C72BE10(v107, v110, v111);
      v221 = v164;
      v222 = v168;
      v112 = swift_getOpaqueTypeConformance2();
      v113 = v151;
      sub_21C72BE68(v108, v143, v110);
      v175 = v112;
      v176 = v111;
      v114 = v157;
      v160 = swift_getWitnessTable();
      v86 = v162;
      v221 = v162;
      v222 = v166;
      v173 = swift_getOpaqueTypeConformance2();
      v174 = v167;
      swift_getWitnessTable();
      v82 = v154;
      sub_21C909A74(v113, v114);
      (*(v145 + 8))(v113, v114);
      v115 = v161;
      v161(v140, v110);
      v115(v150, v110);
      v73 = v111;
      v74 = v164;
    }
  }

  else
  {
    v87 = v55;
    v88 = v161;
    if (v56)
    {
      v89 = v38;
      sub_21C7DCA88(v87, v38);
      sub_21C7E3A34();
      v90 = v136;
      v91 = v153;
      v92 = v167;
      sub_21CB841C4();
      (*(v152 + 8))(v89, v91);
      sub_21C7DE70C(v26, v88, *(v87 + 24));
      v93 = v138;
      v94 = v162;
      v95 = v166;
      sub_21CB841F4();

      (*(v137 + 8))(v90, v94);
      v221 = v94;
      v222 = v95;
      v96 = swift_getOpaqueTypeConformance2();
      v97 = v142;
      v98 = v144;
      sub_21C72BE10(v93, v144, v96);
      v161 = *(v139 + 8);
      v161(v93, v98);
      sub_21C72BE10(v97, v98, v96);
      v99 = v147;
      v100 = v92;
      sub_21C909A74(v93, v98);
      v221 = v164;
      v222 = v168;
      v179 = swift_getOpaqueTypeConformance2();
      v180 = v163;
      v101 = v157;
      v160 = swift_getWitnessTable();
      v177 = v96;
      v178 = v100;
      v102 = v165;
      swift_getWitnessTable();
      v82 = v154;
      sub_21C72BE68(v99, v101, v102);
      (*(v148 + 8))(v99, v102);
      v103 = v161;
      v161(v93, v98);
      v103(v142, v98);
      v73 = v163;
      v74 = v164;
      v86 = v162;
    }

    else
    {
      v116 = v134;
      sub_21C7DCA88(v87, v134);
      v131 = v38;
      v117 = v153;
      v118 = v167;
      sub_21C72BE10(v116, v153, v167);
      v161 = *(v152 + 8);
      v161(v116, v117);
      sub_21C72BE10(v38, v117, v118);
      v221 = v162;
      v222 = v166;
      v119 = swift_getOpaqueTypeConformance2();
      v120 = v147;
      sub_21C72BE68(v116, v144, v117);
      v221 = v164;
      v222 = v168;
      v189 = swift_getOpaqueTypeConformance2();
      v190 = v163;
      v121 = v157;
      swift_getWitnessTable();
      v187 = v119;
      v188 = v118;
      v122 = v165;
      swift_getWitnessTable();
      v82 = v154;
      v86 = v162;
      sub_21C72BE68(v120, v121, v122);
      (*(v148 + 8))(v120, v122);
      v123 = v161;
      v161(v116, v117);
      v124 = v117;
      v74 = v164;
      v123(v131, v124);
      v73 = v163;
    }
  }

  v221 = v74;
  v222 = v168;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = v73;
  v125 = swift_getWitnessTable();
  v221 = v86;
  v222 = v166;
  v183 = swift_getOpaqueTypeConformance2();
  v184 = v167;
  v126 = swift_getWitnessTable();
  v181 = v125;
  v182 = v126;
  v127 = v156;
  v128 = swift_getWitnessTable();
  sub_21C72BE10(v82, v127, v128);
  return (*(v155 + 8))(v82, v127);
}

BOOL sub_21C7DC904(uint64_t a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 108);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
    sub_21C71DD5C(*v8);
    if (!v9)
    {
      return v9 != 0;
    }

    goto LABEL_5;
  }

  sub_21CB85B04();
  v11 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();
  sub_21C7E3CFC(v9, v10, 0);
  (*(v4 + 8))(v7, v3);
  v9 = v13;
  if (v13)
  {
LABEL_5:
    sub_21C71B710(v9);
  }

  return v9 != 0;
}

uint64_t sub_21C7DCA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = sub_21CB81024();
  v149 = *(v3 - 8);
  v150 = v3;
  v4 = *(v149 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v148 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a1;
  v168 = *(a1 - 8);
  v163 = *(v168 + 64);
  MEMORY[0x28223BE20](v5);
  v167 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB83A34();
  v152 = *(v8 - 8);
  v153 = v8;
  v9 = *(v152 + 8);
  MEMORY[0x28223BE20](v8);
  v147 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v11 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v146 = (v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
  v165 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v13 = sub_21CB828F4();
  sub_21CB828F4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v158 = MEMORY[0x277CE0868];
  v16 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v205 = WitnessTable;
  v206 = v16;
  v164 = MEMORY[0x277CDFAD8];
  v17 = swift_getWitnessTable();
  v18 = sub_21C7E3710();
  v201 = v13;
  v202 = v14;
  v203 = v17;
  v204 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v201 = v13;
  v202 = v14;
  v203 = v17;
  v204 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x277D839B0];
  v201 = OpaqueTypeMetadata2;
  v202 = MEMORY[0x277D839B0];
  v22 = MEMORY[0x277D839C8];
  v203 = OpaqueTypeConformance2;
  v204 = MEMORY[0x277D839C8];
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v201 = OpaqueTypeMetadata2;
  v202 = v21;
  v203 = OpaqueTypeConformance2;
  v204 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_21C7E37C0();
  v201 = v23;
  v202 = v24;
  v203 = v25;
  v204 = v26;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  v159 = sub_21CB83B74();
  v27 = sub_21CB828F4();
  v28 = swift_getWitnessTable();
  v29 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v199 = v28;
  v200 = v29;
  v30 = swift_getWitnessTable();
  v166 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v197 = v30;
  v198 = v166;
  v31 = swift_getWitnessTable();
  v201 = v27;
  v202 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = sub_21CB839C4();
  v201 = v27;
  v202 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v201 = v32;
  v202 = v33;
  v203 = v34;
  v204 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  v35 = sub_21CB828F4();
  v201 = v32;
  v202 = v33;
  v203 = v34;
  v204 = MEMORY[0x277CE0758];
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
  v195 = v36;
  v196 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
  v193 = v38;
  v194 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
  v191 = v40;
  v192 = v41;
  v189 = swift_getWitnessTable();
  v190 = v166;
  v42 = swift_getWitnessTable();
  v43 = sub_21C7E3870();
  v187 = v42;
  v188 = v43;
  v44 = swift_getWitnessTable();
  v201 = v35;
  v202 = MEMORY[0x277D837D0];
  v203 = v44;
  v204 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  sub_21CB828F4();
  v130 = sub_21CB834A4();
  v45 = sub_21CB825E4();
  v144 = *(v45 - 8);
  v46 = *(v144 + 64);
  MEMORY[0x28223BE20](v45);
  v135 = v122 - v47;
  v48 = sub_21C7E38C4();
  v128 = v48;
  v201 = v35;
  v202 = MEMORY[0x277D837D0];
  v203 = v44;
  v204 = MEMORY[0x277D837E0];
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
  v185 = v49;
  v186 = v50;
  v183 = swift_getWitnessTable();
  v184 = v49;
  v127 = swift_getWitnessTable();
  v181 = v48;
  v182 = v127;
  v51 = swift_getWitnessTable();
  v52 = sub_21C6F06B8(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  v123 = v45;
  v124 = v52;
  v53 = v160;
  v201 = v45;
  v202 = v160;
  v203 = v51;
  v204 = v52;
  v125 = v51;
  v54 = v52;
  v55 = swift_getOpaqueTypeMetadata2();
  v133 = *(v55 - 8);
  v56 = *(v133 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = v122 - v57;
  v201 = v45;
  v202 = v53;
  v203 = v51;
  v204 = v54;
  v59 = swift_getOpaqueTypeConformance2();
  v201 = v55;
  v202 = v59;
  v60 = v59;
  v122[1] = v59;
  v132 = swift_getOpaqueTypeMetadata2();
  v136 = *(v132 - 8);
  v61 = *(v136 + 64);
  MEMORY[0x28223BE20](v132);
  v154 = v122 - v62;
  v63 = sub_21CB828F4();
  v143 = *(v63 - 8);
  v64 = *(v143 + 64);
  MEMORY[0x28223BE20](v63);
  v158 = v122 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB980, &qword_21CBA26F8);
  v129 = v66;
  v201 = v55;
  v202 = v60;
  v126 = swift_getOpaqueTypeConformance2();
  v179 = v126;
  v180 = v166;
  v131 = v63;
  v67 = swift_getWitnessTable();
  v157 = v67;
  v68 = type metadata accessor for PMLargeTypeView(255);
  v69 = sub_21CB83994();
  v70 = sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView);
  v201 = v68;
  v202 = v69;
  v203 = v70;
  v204 = MEMORY[0x277CDE2B8];
  v156 = swift_getOpaqueTypeConformance2();
  v201 = v63;
  v202 = v66;
  v203 = v67;
  v204 = v156;
  v139 = MEMORY[0x277CDEE28];
  v137 = swift_getOpaqueTypeMetadata2();
  v141 = *(v137 - 8);
  v71 = *(v141 + 64);
  MEMORY[0x28223BE20](v137);
  v155 = v122 - v72;
  v140 = sub_21CB828F4();
  v142 = *(v140 - 8);
  v73 = *(v142 + 64);
  v74 = MEMORY[0x28223BE20](v140);
  v134 = v122 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v138 = v122 - v76;
  v77 = v145;
  v159 = *(v145 + 24);
  v172 = v165;
  v173 = v159;
  v78 = v162;
  v174 = v162;
  v169 = v165;
  v170 = v159;
  v171 = v162;
  v79 = v135;
  sub_21CB825D4();
  v80 = sub_21CB83034();
  v81 = v146;
  *v146 = v80;
  *(v81 + 8) = 1;
  v82 = *(v160 + 24);
  *(v81 + v82) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v83 = v123;
  sub_21CB844C4();
  sub_21C719120(v81, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  (*(v144 + 8))(v79, v83);
  v84 = v147;
  sub_21CB83A24();
  sub_21CB844F4();
  (*(v152 + 1))(v84, v153);
  (*(v133 + 8))(v58, v55);
  v85 = v78;
  v86 = *(v78 + 24);
  v201 = *(v78 + 16);
  v202 = v86;
  v88 = v167;
  v87 = v168;
  v89 = *(v168 + 16);
  v160 = v168 + 16;
  v161 = v89;
  v89(v167, v85, v77);
  v153 = *(v87 + 80);
  v90 = (v153 + 32) & ~v153;
  v91 = swift_allocObject();
  v92 = v165;
  v93 = v159;
  *(v91 + 16) = v165;
  *(v91 + 24) = v93;
  v94 = *(v87 + 32);
  v168 = v87 + 32;
  v152 = v94;
  v94(v91 + v90, v88, v77);
  v147 = sub_21C71F3FC();

  v95 = v132;
  v96 = v154;
  sub_21CB84474();

  (*(v136 + 8))(v96, v95);
  v97 = v77;
  v98 = (v85 + *(v77 + 104));
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v177) = v99;
  v178 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v101 = v167;
  v161(v167, v85, v97);
  v102 = swift_allocObject();
  *(v102 + 16) = v92;
  v103 = v159;
  *(v102 + 24) = v159;
  v152(v102 + v90, v101, v97);
  v104 = v129;
  v105 = v131;
  v106 = v158;
  sub_21CB847B4();

  (*(v143 + 8))(v106, v105);
  v107 = v148;
  sub_21CB81014();
  v108 = sub_21CB81004();
  v110 = v109;
  (*(v149 + 8))(v107, v150);
  v177 = v108;
  v178 = v110;
  v111 = v167;
  v161(v167, v162, v97);
  v112 = swift_allocObject();
  *(v112 + 16) = v165;
  *(v112 + 24) = v103;
  v152(v112 + v90, v111, v97);
  v201 = v105;
  v202 = v104;
  v203 = v157;
  v204 = v156;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v134;
  v115 = v137;
  v116 = v155;
  sub_21CB84474();

  (*(v141 + 8))(v116, v115);
  v175 = v113;
  v176 = v166;
  v117 = v140;
  v118 = swift_getWitnessTable();
  v119 = v138;
  sub_21C72BE10(v114, v117, v118);
  v120 = *(v142 + 8);
  v120(v114, v117);
  sub_21C72BE10(v119, v117, v118);
  return (v120)(v119, v117);
}

uint64_t (*sub_21C7DDE3C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for PMAccountFieldRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_21C7E4308;
}

void sub_21C7DDF74(int *a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + a1[28];
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_21CB85B04();
  v10 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();
  sub_21C7025C4(v9, 0);
  (*(v4 + 8))(v7, v3);
  if (v19 == 1)
  {
LABEL_5:
    v11 = (v1 + a1[25]);
    v12 = *v11;
    v13 = *(v11 + 1);
    v19 = v12;
    v20 = v13;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v14 = (v1 + a1[24]);
    v15 = *v14;
    v16 = *(v14 + 1);
    v19 = v15;
    v20 = v16;
    v18 = 1;
    sub_21CB84D64();
  }

LABEL_6:
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

uint64_t (*sub_21C7DE164(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for PMAccountFieldRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_21C7E3D08;
}

void sub_21C7DE29C(uint64_t a1)
{
  v23 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v24 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PMAccount(0);
  v5 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(a1 + 108);
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*(v13 + 16) != 1)
  {

    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7E3CFC(v14, v15, 0);
    (*(v9 + 8))(v12, v8);
    v14 = v26[0];
    if (!v26[0])
    {
      return;
    }

LABEL_5:
    v17 = sub_21C7E2004(a1);
    v19 = v18;
    if (*(v1 + *(a1 + 120)))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_21CB81DB4();

      v20 = v24;
      sub_21C7E3F20(&v7[*(v22 + 24)], v24, type metadata accessor for PMAccount.Storage);
      sub_21C719120(v7, type metadata accessor for PMAccount);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v21 = *v20;
        goto LABEL_10;
      }

      sub_21C719120(v20, type metadata accessor for PMAccount.Storage);
    }

    v21 = 0;
LABEL_10:
    v26[0] = v17;
    v26[1] = v19;
    v25 = v21;
    v14(v26, &v25);
    sub_21C71B710(v14);

    return;
  }

  sub_21C71DD5C(*v13);
  if (v14)
  {
    goto LABEL_5;
  }
}

uint64_t (*sub_21C7DE5D4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for PMAccountFieldRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_21C7E3D0C;
}

uint64_t (*sub_21C7DE70C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for PMAccountFieldRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_21C7E430C;
}

uint64_t sub_21C7DE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v167 = a1;
  v179 = *(a1 - 8);
  v3 = *(v179 + 64);
  MEMORY[0x28223BE20](a1);
  v177 = v4;
  v178 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_21CB83274();
  v175 = *(v176 - 8);
  v5 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_21CB82B44();
  v172 = *(v173 - 8);
  v7 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_21CB839C4();
  v170 = *(v181 - 8);
  v9 = *(v170 + 64);
  MEMORY[0x28223BE20](v181);
  v169 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = *(a1 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v11 = sub_21CB828F4();
  sub_21CB828F4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v182 = MEMORY[0x277CE0868];
  v14 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v205 = WitnessTable;
  v206 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_21C7E3710();
  v201 = v11;
  v202 = v12;
  v203 = v15;
  v204 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v201 = v11;
  v202 = v12;
  v203 = v15;
  v204 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x277D839B0];
  v201 = OpaqueTypeMetadata2;
  v202 = MEMORY[0x277D839B0];
  v20 = MEMORY[0x277D839C8];
  v203 = OpaqueTypeConformance2;
  v204 = MEMORY[0x277D839C8];
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v201 = OpaqueTypeMetadata2;
  v202 = v19;
  v203 = OpaqueTypeConformance2;
  v204 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_21C7E37C0();
  v201 = v21;
  v202 = v22;
  v203 = v23;
  v204 = v24;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v160 = sub_21CB85354();
  v159 = swift_getWitnessTable();
  v25 = sub_21CB84F04();
  v163 = *(v25 - 8);
  v26 = *(v163 + 64);
  MEMORY[0x28223BE20](v25);
  v150 = v124 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  v143 = v25;
  v28 = sub_21CB828F4();
  v165 = *(v28 - 8);
  v29 = *(v165 + 64);
  MEMORY[0x28223BE20](v28);
  v146 = v124 - v30;
  sub_21CB83B74();
  v144 = v28;
  v31 = sub_21CB828F4();
  v161 = *(v31 - 8);
  v32 = *(v161 + 64);
  MEMORY[0x28223BE20](v31);
  v147 = v124 - v33;
  v34 = swift_getWitnessTable();
  v139 = v34;
  v35 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v199 = v34;
  v200 = v35;
  v36 = swift_getWitnessTable();
  v140 = v36;
  v149 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v197 = v36;
  v198 = v149;
  v37 = swift_getWitnessTable();
  v201 = v31;
  v202 = v37;
  v133 = v31;
  v38 = v37;
  v135 = v37;
  v39 = swift_getOpaqueTypeMetadata2();
  v145 = *(v39 - 8);
  v40 = *(v145 + 64);
  MEMORY[0x28223BE20](v39);
  v134 = v124 - v41;
  v201 = v31;
  v202 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v124[0] = v39;
  v43 = v181;
  v201 = v39;
  v202 = v181;
  v203 = v42;
  v204 = MEMORY[0x277CE0758];
  v124[1] = v42;
  v132 = swift_getOpaqueTypeMetadata2();
  v142 = *(v132 - 8);
  v44 = *(v142 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = v124 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  v46 = sub_21CB828F4();
  v153 = *(v46 - 8);
  v47 = *(v153 + 64);
  MEMORY[0x28223BE20](v46);
  v131 = v124 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  v49 = sub_21CB828F4();
  v155 = *(v49 - 8);
  v50 = *(v155 + 64);
  MEMORY[0x28223BE20](v49);
  v151 = v124 - v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  v52 = sub_21CB828F4();
  v152 = *(v52 - 8);
  v53 = *(v152 + 64);
  MEMORY[0x28223BE20](v52);
  v148 = v124 - v54;
  v55 = sub_21CB828F4();
  v162 = *(v55 - 8);
  v56 = *(v162 + 64);
  MEMORY[0x28223BE20](v55);
  v158 = v124 - v57;
  v58 = sub_21CB828F4();
  v166 = *(v58 - 8);
  v59 = *(v166 + 64);
  MEMORY[0x28223BE20](v58);
  v164 = v124 - v60;
  v201 = v39;
  v202 = v43;
  v203 = v42;
  v204 = MEMORY[0x277CE0758];
  v61 = swift_getOpaqueTypeConformance2();
  v124[2] = v61;
  v62 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
  v195 = v61;
  v196 = v62;
  v156 = v46;
  v63 = swift_getWitnessTable();
  v64 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
  v126 = v63;
  v193 = v63;
  v194 = v64;
  v157 = v49;
  v65 = swift_getWitnessTable();
  v66 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
  v127 = v65;
  v191 = v65;
  v192 = v66;
  v154 = v52;
  v128 = swift_getWitnessTable();
  v189 = v128;
  v190 = v149;
  v182 = v55;
  v67 = swift_getWitnessTable();
  v68 = sub_21C7E3870();
  v129 = v67;
  v187 = v67;
  v188 = v68;
  v69 = swift_getWitnessTable();
  v149 = v58;
  v201 = v58;
  v202 = MEMORY[0x277D837D0];
  v138 = v69;
  v203 = v69;
  v204 = MEMORY[0x277D837E0];
  v70 = swift_getOpaqueTypeMetadata2();
  v141 = *(v70 - 8);
  v71 = *(v141 + 64);
  v72 = MEMORY[0x28223BE20](v70);
  v136 = v124 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v137 = v124 - v74;
  sub_21CB851E4();
  v75 = v167;
  v76 = *(v167 + 24);
  v184 = v183;
  v125 = v76;
  v185 = v76;
  v77 = v168;
  v186 = v168;
  v78 = v150;
  sub_21CB84EF4();
  sub_21C7E0CC8(v75);
  v79 = v146;
  v80 = v143;
  sub_21CB849D4();
  (*(v163 + 8))(v78, v80);
  v201 = sub_21C7E0E40(v75);
  v202 = v81;
  sub_21C71F3FC();
  v82 = v147;
  v83 = v144;
  sub_21CB843E4();

  (*(v165 + 8))(v79, v83);
  v84 = *(v77 + v75[18]);
  v85 = v134;
  v86 = v133;
  sub_21CB84634();
  (*(v161 + 8))(v82, v86);
  v87 = v169;
  sub_21CB839B4();
  v88 = v130;
  v89 = v124[0];
  v90 = v181;
  sub_21CB84244();
  (*(v170 + 8))(v87, v90);
  (*(v145 + 8))(v85, v89);
  v201 = sub_21C7E0ECC(v75);
  v91 = v131;
  v92 = v132;
  sub_21CB842C4();

  (*(v142 + 8))(v88, v92);
  v93 = *(v77 + v75[19]);
  if (v93 == 1)
  {
    sub_21CB85254();
  }

  v94 = *(v77 + 40);
  v201 = *(v77 + 32);
  v202 = v94;

  v95 = v151;
  v96 = v156;
  sub_21CB84994();

  (*(v153 + 8))(v91, v96);
  v97 = v171;
  if (v93)
  {
    sub_21CB82B04();
  }

  else
  {
    sub_21CB82B34();
  }

  v98 = v148;
  v99 = v157;
  sub_21C7E0F78();
  (*(v172 + 8))(v97, v173);
  (*(v155 + 8))(v95, v99);
  v100 = v174;
  sub_21CB83224();
  v101 = v158;
  v102 = v154;
  sub_21CB84594();
  (*(v175 + 8))(v100, v176);
  (*(v152 + 8))(v98, v102);
  v103 = v179;
  v104 = v178;
  v105 = v75;
  (*(v179 + 16))(v178, v77, v75);
  v106 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v107 = swift_allocObject();
  v108 = v125;
  *(v107 + 16) = v183;
  *(v107 + 24) = v108;
  (*(v103 + 32))(v107 + v106, v104, v75);
  v109 = v164;
  v110 = v182;
  sub_21CB84844();

  (*(v162 + 8))(v101, v110);
  v111 = v105[32];
  v112 = (v77 + v105[33]);
  v113 = v112[1];
  v201 = *v112;
  v202 = v113;
  v114 = *(v77 + v111);

  sub_21CB852C4();
  v115 = v136;
  v116 = v149;
  v117 = MEMORY[0x277D837D0];
  v118 = v138;
  v119 = MEMORY[0x277D837E0];
  sub_21CB845E4();

  (*(v166 + 8))(v109, v116);
  v201 = v116;
  v202 = v117;
  v203 = v118;
  v204 = v119;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v137;
  sub_21C72BE10(v115, v70, v120);
  v122 = *(v141 + 8);
  v122(v115, v70);
  sub_21C72BE10(v121, v70, v120);
  return (v122)(v121, v70);
}

uint64_t sub_21C7DFD38@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v44 = a3;
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v55 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v41 = MEMORY[0x277CDFAD8];
  v3 = swift_getWitnessTable();
  sub_21C7E3710();
  v40 = v3;
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_21C7E37C0();
  v50 = OpaqueTypeMetadata2;
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v53 = v36;
  v32 = MEMORY[0x277CDE6A0];
  v35 = swift_getOpaqueTypeMetadata2();
  v34 = *(v35 - 8);
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v7;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_21CB828F4();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v30 - v18;
  v19 = type metadata accessor for PMAccountFieldRow();
  sub_21C7E0390(1, v19);
  v20 = v40;
  sub_21CB847E4();
  (*(v9 + 8))(v12, v8);
  v21 = sub_21C7E40E4();
  v49[2] = v20;
  v49[3] = v21;
  v41 = swift_getWitnessTable();
  sub_21C72BE10(v17, v13, v41);
  v42 = *(v46 + 8);
  v42(v17, v13);
  v22 = v31;
  sub_21C7E054C(v19, v31);
  v50 = OpaqueTypeMetadata2;
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v53 = v36;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v33;
  v25 = v35;
  sub_21C72BE10(v22, v35, v23);
  v26 = v34;
  v27 = *(v34 + 8);
  v27(v22, v25);
  (*(v46 + 16))(v17, v45, v13);
  v50 = v17;
  (*(v26 + 16))(v22, v24, v25);
  v51 = v22;
  v49[0] = v13;
  v49[1] = v25;
  v47 = v41;
  v48 = v23;
  sub_21C74A55C(&v50, 2uLL, v49);
  v27(v24, v25);
  v28 = v42;
  v42(v45, v13);
  v27(v22, v25);
  return v28(v17, v13);
}

uint64_t sub_21C7E0390(char a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v6 = sub_21CB84E14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = *(a2 + 24);
  v15 = v5;
  v16 = v11;
  v17 = v2;
  v18 = a1;
  sub_21CB83074();
  sub_21CB84E04();
  v12 = *(v2 + 48);
  swift_getWitnessTable();
  sub_21CB846C4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21C7E054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v52 = *(a1 - 8);
  v4 = *(v52 + 64);
  v67 = *(MEMORY[0x28223BE20](a1) + 16);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v5 = sub_21CB828F4();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v74 = WitnessTable;
  v75 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_21C7E3710();
  v70 = v5;
  v71 = v8;
  v72 = v11;
  v73 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v65 = &v43 - v15;
  v62 = v5;
  v70 = v5;
  v71 = v8;
  v54 = v8;
  v53 = v11;
  v72 = v11;
  v73 = v12;
  v51 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = OpaqueTypeMetadata2;
  v70 = OpaqueTypeMetadata2;
  v71 = MEMORY[0x277D839B0];
  v56 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v73 = MEMORY[0x277D839C8];
  v17 = swift_getOpaqueTypeMetadata2();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = &v43 - v19;
  if (sub_21C7E1F4C(a1))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v2 + *(a1 + 52));
  }

  v64 = v2;
  sub_21C7E0390(v20, a1);
  v21 = (v2 + *(a1 + 92));
  v50 = *v21;
  v49 = *(v21 + 1);
  v68 = v50;
  v69 = v49;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v22 = v52;
  v47 = *(v52 + 16);
  v47(&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v23 = *(v22 + 80);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  v45 = v4;
  v46 = *(a1 + 24);
  v26 = v46;
  *(v25 + 16) = v67;
  *(v25 + 24) = v26;
  v52 = *(v22 + 32);
  (v52)(v25 + v24, &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v42 = v51;
  v27 = v62;
  v28 = v66;
  sub_21CB848E4();

  (*(v60 + 8))(v28, v27);
  LOBYTE(v70) = v50;
  v71 = v49;
  sub_21CB84D54();
  LOBYTE(v70) = v68;
  v29 = v44;
  v47(v44, v64, a1);
  v30 = swift_allocObject();
  v31 = v67;
  v32 = v46;
  *(v30 + 16) = v67;
  *(v30 + 24) = v32;
  (v52)(v30 + v24, v29, a1);
  v34 = v55;
  v33 = v56;
  v35 = v61;
  v36 = MEMORY[0x277D839B0];
  v37 = MEMORY[0x277D839C8];
  v38 = v65;
  sub_21CB84934();

  v39 = (*(v57 + 8))(v38, v35);
  MEMORY[0x28223BE20](v39);
  *(&v43 - 4) = v31;
  *(&v43 - 3) = v32;
  v42 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  v70 = v35;
  v71 = v36;
  v72 = v33;
  v73 = v37;
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  v40 = v59;
  sub_21CB84154();
  return (*(v58 + 8))(v34, v40);
}

uint64_t sub_21C7E0CC8(int *a1)
{
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + a1[22]))
  {
    goto LABEL_4;
  }

  v9 = v6;
  v10 = (v1 + a1[24]);
  v11 = *v10;
  v12 = *(v10 + 1);
  v20 = v11;
  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v19 & 1) != 0 || (v13 = (v1 + a1[23]), v14 = *v13, v15 = *(v13 + 1), v20 = v14, v21 = v15, sub_21CB84D54(), (v19))
  {
LABEL_4:
    v16 = 1;
  }

  else
  {
    sub_21C7DAD90(a1, v8);
    v16 = sub_21CB82824();
    (*(v4 + 8))(v8, v9);
  }

  return v16 & 1;
}

uint64_t sub_21C7E0E40(int *a1)
{
  if ((sub_21C7E1F4C(a1) & 1) != 0 || *(v1 + a1[13]) != 1)
  {
    return sub_21C7E2004(a1);
  }

  if (qword_27CDEA4B8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CE18768;

  return v3;
}

uint64_t sub_21C7E0ECC(uint64_t a1)
{
  if (sub_21C7DC904(a1))
  {
    sub_21CB84A74();
    sub_21C7E4020();
    sub_21CB84B74();
  }

  else if (*(v1 + *(a1 + 84)) == 1)
  {
    sub_21CB837E4();
  }

  else
  {
    sub_21CB837B4();
  }

  return sub_21CB82384();
}

uint64_t sub_21C7E0F78()
{
  swift_getKeyPath();
  sub_21CB84174();
}

uint64_t sub_21C7E0FEC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for PMAccountFieldRow() + 96));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C7E1068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PMAccountFieldRow();
  v10 = a1 + *(v9 + 112);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {
    v13 = v9;

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v11, 0);
    (*(v5 + 8))(v8, v4);
    v9 = v13;
    if (v17[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21C7E1258(v9);
    v12 = 0;
    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 1;
LABEL_6:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  return (*(*(v15 - 8) + 56))(a2, v12, 1, v15);
}

uint64_t sub_21C7E1258(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, a1);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v3 + 32))(v6 + v5, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v11 = v7;
  v12 = v8;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

uint64_t sub_21C7E1408(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountFieldRow();
  v3 = (a1 + *(v2 + 92));
  v7 = *v3;
  v9 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  result = sub_21CB84D54();
  if (v6 == 1)
  {
    v5 = (a1 + *(v2 + 100));
    v8 = *v5;
    v10 = *(v5 + 1);
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21C7E14BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PMAccountFieldRow();
  v10 = a1 + *(v9 + 112);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v11, 0);
    (*(v5 + 8))(v8, v4);
    if (v16[15] != 1)
    {
LABEL_7:
      v13 = 1;
      goto LABEL_8;
    }
  }

  if (*(a1 + *(v9 + 68)) != 1)
  {
    goto LABEL_7;
  }

  sub_21C7E16C0(v9, a2);
  v13 = 0;
LABEL_8:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t sub_21C7E16C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v32 = &v29 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v31 = &v29 - v15;
  sub_21C7E1258(a1);
  (*(v4 + 16))(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  (*(v4 + 32))(v17 + v16, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v35 = v18;
  v36 = v19;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v20 = v30;
  sub_21CB84DA4();
  v21 = v7[2];
  v23 = v31;
  v22 = v32;
  v21(v32, v31, v6);
  v24 = v33;
  v21(v33, v20, v6);
  v25 = v34;
  v21(v34, v22, v6);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
  v21(&v25[*(v26 + 48)], v24, v6);
  v27 = v7[1];
  v27(v20, v6);
  v27(v23, v6);
  v27(v24, v6);
  return (v27)(v22, v6);
}

uint64_t sub_21C7E1A50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a2;
  v54 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = sub_21CB85E54();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v49 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21);
  v52 = &v43 - v24;
  v50 = type metadata accessor for PMAccountFieldRow();
  v51 = a1;
  v25 = a1 + *(v50 + 48);
  v55 = v17[2];
  v55(v23, v25, v16);
  v26 = (*(v8 + 48))(v23, 1, a3);
  v48 = a4;
  if (v26 == 1)
  {
    v27 = v17[1];
    v27(v23, v16);
    v28 = v49;
    (*(v8 + 56))(v49, 1, 1, a3);
    v29 = v52;
    v55(v52, v28, v16);
    v27(v28, v16);
    v30 = v27;
  }

  else
  {
    v44 = *(v8 + 32);
    v44(v15, v23, a3);
    v31 = v46;
    sub_21C72BE10(v15, a3, a4);
    v45 = v16;
    v32 = v8;
    v33 = *(v8 + 8);
    v33(v15, a3);
    v34 = v47;
    sub_21C72BE10(v31, a3, a4);
    v33(v31, a3);
    v28 = v49;
    v44(v49, v34, a3);
    (*(v32 + 56))(v28, 0, 1, a3);
    v16 = v45;
    v29 = v52;
    v55(v52, v28, v45);
    v35 = v17[1];
    v35(v28, v16);
    v30 = v35;
  }

  v37 = *(v51 + 32);
  v36 = *(v51 + 40);
  v38 = *(v51 + *(v50 + 52));
  KeyPath = swift_getKeyPath();
  v55(v28, v29, v16);
  v60[0] = v37;
  v60[1] = v36;
  v61 = v53 & 1;
  v62 = v38;
  v63 = KeyPath;
  v64 = 0;
  v65[0] = v28;
  v65[1] = v60;
  swift_bridgeObjectRetain_n();

  v59[0] = v16;
  v59[1] = &type metadata for PMObfuscatedText;
  v56 = v48;
  WitnessTable = swift_getWitnessTable();
  v58 = sub_21C7E42A8();
  sub_21C74A55C(v65, 2uLL, v59);

  v30(v29, v16);
  v40 = v63;
  LOBYTE(v37) = HIBYTE(v64);
  v41 = v64;

  sub_21C7E42FC(v40, v41, v37);
  return (v30)(v28, v16);
}

uint64_t sub_21C7E1F4C(int *a1)
{
  if (*(v1 + a1[14]))
  {
    return 1;
  }

  v3 = (v1 + a1[24]);
  v7 = *v3;
  v9 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v6)
  {
    return 1;
  }

  v5 = (v1 + a1[25]);
  v8 = *v5;
  v10 = *(v5 + 1);
  sub_21CB84D54();
  return v6;
}

uint64_t sub_21C7E2004(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = *(v1 + 32);
    v5 = *(v1 + 40);
  }

  return v3;
}

uint64_t sub_21C7E2058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v50 = a4;
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  WitnessTable = swift_getWitnessTable();
  v51 = MEMORY[0x277CE0868];
  v78 = WitnessTable;
  v79 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  swift_getWitnessTable();
  sub_21C7E3710();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  v72 = swift_getWitnessTable();
  v73 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v5 = swift_getWitnessTable();
  v46 = sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v70 = v5;
  v71 = v46;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB839C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  v6 = sub_21CB828F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
  v66 = swift_getWitnessTable();
  v67 = sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
  v64 = swift_getWitnessTable();
  v65 = sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
  v62 = swift_getWitnessTable();
  v63 = v46;
  v60 = swift_getWitnessTable();
  v61 = sub_21C7E3870();
  v7 = swift_getWitnessTable();
  v46 = v6;
  v74 = v6;
  v75 = MEMORY[0x277D837D0];
  v45 = v7;
  v76 = v7;
  v77 = MEMORY[0x277D837E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  v16 = sub_21CB828F4();
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v44 = sub_21CB834A4();
  v43 = *(v44 - 8);
  v23 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v51 = &v41 - v24;
  v25 = type metadata accessor for PMAccountFieldRow();
  if (sub_21C7DC904(v25))
  {
    sub_21C7DE844(v25, v15);
    v26 = v46;
    v74 = v46;
    v27 = v45;
    v75 = MEMORY[0x277D837D0];
    v76 = v45;
    v77 = MEMORY[0x277D837E0];
    v28 = swift_getOpaqueTypeConformance2();
    sub_21C7E3A34();
    sub_21CB841C4();
    (*(v9 + 8))(v15, OpaqueTypeMetadata2);
    v29 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    v52 = v28;
    v53 = v29;
    v30 = swift_getWitnessTable();
    sub_21C72BE10(v20, v16, v30);
    v31 = *(v42 + 8);
    v31(v20, v16);
    sub_21C72BE10(v22, v16, v30);
    sub_21C909A74(v20, v16);
    v31(v20, v16);
    v31(v22, v16);
  }

  else
  {
    sub_21C7DE844(v25, v13);
    v26 = v46;
    v74 = v46;
    v27 = v45;
    v75 = MEMORY[0x277D837D0];
    v76 = v45;
    v77 = MEMORY[0x277D837E0];
    v32 = swift_getOpaqueTypeConformance2();
    sub_21C72BE10(v13, OpaqueTypeMetadata2, v32);
    v33 = *(v9 + 8);
    v33(v13, OpaqueTypeMetadata2);
    sub_21C72BE10(v15, OpaqueTypeMetadata2, v32);
    v34 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    v58 = v32;
    v59 = v34;
    swift_getWitnessTable();
    sub_21C72BE68(v13, v16, OpaqueTypeMetadata2);
    v33(v13, OpaqueTypeMetadata2);
    v33(v15, OpaqueTypeMetadata2);
  }

  v74 = v26;
  v75 = MEMORY[0x277D837D0];
  v76 = v27;
  v77 = MEMORY[0x277D837E0];
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
  v56 = v35;
  v57 = v36;
  v54 = swift_getWitnessTable();
  v55 = v35;
  v37 = v44;
  v38 = swift_getWitnessTable();
  v39 = v51;
  sub_21C72BE10(v51, v37, v38);
  return (*(v43 + 8))(v39, v37);
}

uint64_t sub_21C7E2CE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *a1;
  v16 = a1[1];
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  if (*(a1 + *(type metadata accessor for PMAccountFieldRow() + 80)) == 1)
  {
    v12 = sub_21CB84B34();
  }

  else
  {
    v12 = sub_21CB84B14();
  }

  v13 = v12;
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 48) = 0;
  *(a2 + 56) = result;
  *(a2 + 64) = v13;
  return result;
}

uint64_t sub_21C7E2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for PMLargeTypeView(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PMAccountFieldRow();
  v17 = sub_21C7E2004(v16);
  v19 = v18;
  sub_21C7E3184(v16, v11);
  v20 = v12[5];
  v21 = type metadata accessor for PMLargeTypeView.Icon(0);
  (*(*(v21 - 8) + 56))(v15 + v20, 1, 1, v21);
  v22 = v12[6];
  *(v15 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v23 = v12[7];
  *(v15 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v24 = v12[8];
  *(v15 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  *(v15 + v12[9]) = 7;
  *(v15 + v12[10]) = 0x3FE0000000000000;
  *(v15 + v12[11]) = 0;
  *(v15 + v12[12]) = 0x4030000000000000;
  *(v15 + v12[13]) = 0x4040000000000000;
  *v15 = v17;
  v15[1] = v19;
  sub_21C7E3EB0(v11, v15 + v20);
  v25 = *(v16 + 128);
  v26 = (a1 + *(v16 + 132));
  v27 = v26[1];
  v35 = *v26;
  v36 = v27;
  v28 = *(a1 + v25);

  sub_21CB852C4();
  sub_21CB834F4();

  sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView);
  v29 = v32;
  sub_21CB84524();
  (*(v33 + 8))(v7, v29);
  return sub_21C719120(v15, type metadata accessor for PMLargeTypeView);
}

uint64_t sub_21C7E3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 120)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v4 = type metadata accessor for PMLargeTypeView.Icon(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    v7 = *(a1 + 124);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
    sub_21CB821D4();
    if (v13 == 1)
    {
      if (v12)
      {
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A8, &qword_21CBA2830) + 48);
        swift_getKeyPath();
        sub_21C6F06B8(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
        sub_21CB810D4();

        v9 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
        swift_beginAccess();
        sub_21C7E3F20(v12 + v9, a2, type metadata accessor for PMWiFiNetwork);
        LOBYTE(v9) = sub_21C967FB4();
        j__swift_release();
        *(a2 + v8) = v9 & 1;
        v10 = type metadata accessor for PMLargeTypeView.Icon(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
      }
    }

    else
    {
      j__swift_release();
    }

    v11 = type metadata accessor for PMLargeTypeView.Icon(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_21C7E3440()
{
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE18710;
  v1 = type metadata accessor for PMAccountFieldRow();
  v2 = sub_21C7E2004(v1);
  v3 = *(v0 + 16);
  sub_21CADAA84(v2, v4, 1);
}

uint64_t sub_21C7E34E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C7E3558(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMAccountFieldRow() + 104));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C7E35CC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

unint64_t sub_21C7E3710()
{
  result = qword_27CDEB8C8;
  if (!qword_27CDEB8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB8C8);
  }

  return result;
}

unint64_t sub_21C7E37C0()
{
  result = qword_27CDEB8E0;
  if (!qword_27CDEB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
    sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB8E0);
  }

  return result;
}

unint64_t sub_21C7E3870()
{
  result = qword_27CDEB940;
  if (!qword_27CDEB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB940);
  }

  return result;
}

unint64_t sub_21C7E38C4()
{
  result = qword_27CDEB950;
  if (!qword_27CDEB950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
    sub_21C7E397C();
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB950);
  }

  return result;
}

unint64_t sub_21C7E397C()
{
  result = qword_27CDEB958;
  if (!qword_27CDEB958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB960, &qword_21CBBAFA0);
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB958);
  }

  return result;
}

unint64_t sub_21C7E3A34()
{
  result = qword_27CDEB990;
  if (!qword_27CDEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB990);
  }

  return result;
}

uint64_t sub_21C7E3A88@<X0>(uint64_t a1@<X8>)
{
  result = sub_21CB82F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21C7E3ABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21CB82F44();
}

uint64_t sub_21C7E3B10(uint64_t a1)
{
  v2 = sub_21CB82B44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CB82D14();
}

uint64_t sub_21C7E3BD8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[2] = v5;
  v9[3] = v7;
  sub_21C71F3FC();
  return sub_21CB84054();
}

uint64_t sub_21C7E3CFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21C71B710(result);
  }

  else
  {
  }
}

void sub_21C7E3D10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMAccountFieldRow();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  sub_21C7DDF74(v3);
}

void sub_21C7E3D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMAccountFieldRow();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  sub_21C7DE29C(v3);
}

uint64_t sub_21C7E3DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C7E2CE0(*(v1 + 32), a1);
}

uint64_t sub_21C7E3E30(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PMAccountFieldRow() - 8);
  return a1(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_21C7E3EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7E3F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E3F94(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PMAccountFieldRow() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21C7E0FEC(a1, v6);
}

unint64_t sub_21C7E4020()
{
  result = qword_27CDEB9B8;
  if (!qword_27CDEB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9B8);
  }

  return result;
}

uint64_t sub_21C7E4074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7E40E4()
{
  result = qword_27CDEB9C0;
  if (!qword_27CDEB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9C0);
  }

  return result;
}

uint64_t sub_21C7E4150(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PMAccountFieldRow() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_21C7E41F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMAccountFieldRow() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C7E1408(v4);
}

uint64_t sub_21C7E4274@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21C7E14BC(v1[4], a1);
}

uint64_t sub_21C7E4280()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21C7E35CC();
}

uint64_t sub_21C7E428C()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_21C7E34E0(v0[4]);
}

unint64_t sub_21C7E42A8()
{
  result = qword_27CDEB9D0;
  if (!qword_27CDEB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB9D0);
  }

  return result;
}

uint64_t sub_21C7E42FC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21C7E4338()
{
  v1 = *(v0[2] + 40);
  if (v1)
  {
    v2 = v1;
    v3 = sub_21C7E4490();
  }

  else
  {
    v3 = 0;
  }

  v0[3] = v3;
  sub_21CB858B4();
  v0[4] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7E43FC, v5, v4);
}

uint64_t sub_21C7E43FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(v3 + 16);
  sub_21CB81D44();

  return MEMORY[0x2822009F8](sub_21C74FF00, 0, 0);
}

id sub_21C7E4490()
{
  v38[10] = *MEMORY[0x277D85DE8];
  result = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() areaAverageFilter];
    [v3 setInputImage_];
    [v2 extent];
    [v3 setExtent_];
    v4 = [v3 outputImage];
    if (!v4)
    {

LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    v5 = v4;
    v6 = sub_21CB85844();
    *(v6 + 16) = 4;
    *(v6 + 32) = 0;
    v7 = (v6 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB38, &qword_21CBA2BC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v9 = *MEMORY[0x277CBF948];
    *(inited + 32) = *MEMORY[0x277CBF948];
    v10 = *MEMORY[0x277CBEEE8];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB40, &unk_21CBA2BD0);
    *(inited + 40) = v10;
    v11 = v10;
    v12 = v9;
    v13 = sub_21CB12FD4(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &unk_27CDF8AB0, &unk_21CBC9780);
    v14 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_21C705DD8(&qword_27CDEA998, type metadata accessor for CIContextOption);
    v15 = sub_21CB85464();

    v16 = [v14 initWithOptions_];

    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = 1.0;
    v39.size.height = 1.0;
    Width = CGRectGetWidth(v39);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        v40.origin.x = 0.0;
        v40.origin.y = 0.0;
        v40.size.width = 1.0;
        v40.size.height = 1.0;
        Height = CGRectGetHeight(v40);
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Height > -9.22337204e18)
          {
            if (Height < 9.22337204e18)
            {
              v13 = [objc_allocWithZone(MEMORY[0x277CBF778]) initWithBitmapData:v7 width:Width height:Height bytesPerRow:4 format:*MEMORY[0x277CBF9C8]];
              v38[0] = 0;
              v19 = [v16 startTaskToRender:v5 fromRect:v13 toDestination:v38 atPoint:0.0 error:{0.0, 1.0, 1.0, 0.0, 0.0}];
              if (!v19)
              {
                v27 = v38[0];
                v15 = sub_21CB80B14();

                swift_willThrow();
                if (qword_27CDEA470 == -1)
                {
                  goto LABEL_17;
                }

                goto LABEL_32;
              }

              v15 = v19;
              v20 = v38[0];

              v23 = *(v6 + 16);
              if (v23)
              {
                if (v23 != 1)
                {
                  if (v23 >= 3)
                  {
                    if (v23 != 3)
                    {
                      LOBYTE(v21) = *v7;
                      v24 = 0x406FE00000000000;
                      LOBYTE(v24) = *(v6 + 33);
                      v25 = 0x406FE00000000000;
                      LOBYTE(v25) = *(v6 + 34);
                      LOBYTE(v22) = *(v6 + 35);
                      CGColorCreateGenericRGB(v21 / 255.0, v24 / 255.0, v25 / 255.0, v22 / 255.0);
                      v26 = sub_21CB84A14();

                      result = v26;
                      goto LABEL_21;
                    }

                    goto LABEL_31;
                  }

LABEL_30:
                  __break(1u);
LABEL_31:
                  __break(1u);
LABEL_32:
                  swift_once();
LABEL_17:
                  v28 = sub_21CB81C84();
                  __swift_project_value_buffer(v28, qword_27CE186E0);
                  v29 = v15;
                  v30 = sub_21CB81C64();
                  v31 = sub_21CB85AF4();

                  if (os_log_type_enabled(v30, v31))
                  {
                    v32 = swift_slowAlloc();
                    v37 = v16;
                    v33 = swift_slowAlloc();
                    *v32 = 138412290;
                    v34 = v15;
                    v35 = _swift_stdlib_bridgeErrorToNSError();
                    *(v32 + 4) = v35;
                    *v33 = v35;
                    _os_log_impl(&dword_21C6E5000, v30, v31, "Failed to render average color: %@", v32, 0xCu);
                    sub_21C6EA794(v33, &unk_27CDF76B0, &qword_21CBA2BE0);
                    MEMORY[0x21CF16D90](v33, -1, -1);
                    MEMORY[0x21CF16D90](v32, -1, -1);
                  }

                  else
                  {
                  }

                  goto LABEL_20;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C7E4A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI13PMAccountIconV08FallbackE8StrategyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_21C7E4B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C7E4B84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C7E4BE4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for PMAccountIcon()
{
  result = qword_27CDEB9D8;
  if (!qword_27CDEB9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7E4C98()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21C7E4F08();
    if (v1 <= 0x3F)
    {
      sub_21C71ED34(319, &unk_27CDF2C80, &qword_27CDEB9F0, &unk_21CBA5AC0, type metadata accessor for PMDependency);
      if (v2 <= 0x3F)
      {
        sub_21C7E4F70(319, &qword_27CDEB9F8, type metadata accessor for PMSignInWithAppleIconController, type metadata accessor for PMDependency);
        if (v3 <= 0x3F)
        {
          sub_21C71ED34(319, &qword_27CDEBA00, &qword_27CDEBA08, &qword_21CBA2A40, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21C6EE394(319, &qword_27CDEB308);
            if (v5 <= 0x3F)
            {
              sub_21C7E4F70(319, &qword_27CDEBA10, MEMORY[0x277D49930], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21C6EE394(319, &qword_27CDEBA18);
                if (v7 <= 0x3F)
                {
                  sub_21C7E4FD4();
                  if (v8 <= 0x3F)
                  {
                    sub_21C7E4F70(319, &qword_27CDEB6B0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
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

void sub_21C7E4F08()
{
  if (!qword_27CDEBD40)
  {
    sub_21C6E8F4C(255, &qword_27CDEB9E8, 0x277D499D8);
    v0 = type metadata accessor for PMDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBD40);
    }
  }
}

void sub_21C7E4F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C7E4FD4()
{
  if (!qword_27CDEBA20)
  {
    type metadata accessor for PMAccountIcon.IconCache();
    sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBA20);
    }
  }
}

unint64_t sub_21C7E507C()
{
  result = qword_27CDEBA30;
  if (!qword_27CDEBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA30);
  }

  return result;
}

uint64_t sub_21C7E50EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for PMAccountIcon();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA38, &qword_21CBA2B10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA40, &qword_21CBA2B18);
  v11 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA48, &qword_21CBA2B20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v53 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA50, &qword_21CBA2B28);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v19 = &v53 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA58, &qword_21CBA2B30);
  v20 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v53 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA60, &qword_21CBA2B38);
  v22 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v53 - v23;
  sub_21C7E5780(v2, v10);
  v24 = (v2 + *(v3 + 64));
  v26 = *v24;
  v25 = v24[1];
  v27 = v24[3];
  v56 = v24[2];
  v57 = v25;
  v28 = v24[5];
  v58 = v24[4];
  v29 = v24[6];
  if (v29)
  {
    v30 = v24[6];
    if (v29 == 1)
    {
LABEL_6:
      v30 = 0;
      LOBYTE(v26) = 0;
      v34 = 0x3FD3333333333333;
      v35 = 0x3FD3333333333333;
      v36 = v59;
      goto LABEL_7;
    }
  }

  else
  {
    v31 = v2 + *(v3 + 68);
    v53 = *v31;
    v54 = v10;
    v55 = v19;
    v32 = *(v31 + 8);
    v33 = *(v31 + 16);
    type metadata accessor for PMAccountIcon.IconCache();
    sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache);
    v10 = v54;
    v30 = *(sub_21CB82134() + 56);

    v19 = v55;

    sub_21C7E8D80(v26, v57, v56, v27, v58, v28, 0);
  }

  if (v30 == 1)
  {
    goto LABEL_6;
  }

  if (v27)
  {
    v34 = 0x3FD3333333333333;
    v36 = v59;
    if ((v28 & 1) == 0)
    {
      v37 = v58;
      v35 = 0x3FD3333333333333;
      goto LABEL_8;
    }

    v35 = 0x3FD3333333333333;
  }

  else
  {
    v35 = v56;
    v34 = v57;
    v36 = v59;
    if ((v28 & 1) == 0)
    {
      v37 = v58;
      goto LABEL_8;
    }
  }

LABEL_7:
  v37 = 0x3FE3333333333333;
LABEL_8:
  v69 = 1;
  sub_21C716934(v10, v13, &qword_27CDEBA38, &qword_21CBA2B10);
  v38 = &v13[*(v60 + 36)];
  *v38 = v26 & 1;
  *(v38 + 1) = v34;
  *(v38 + 2) = v35;
  *(v38 + 3) = v37;
  *(v38 + 5) = 0;
  *(v38 + 6) = 0;
  *(v38 + 4) = 0x3FF1EB851EB851ECLL;
  v38[56] = 1;
  *(v38 + 8) = v30;
  sub_21C7E8D94();
  v39 = v62;
  sub_21CB84494();
  sub_21C6EA794(v13, &qword_27CDEBA40, &qword_21CBA2B18);
  sub_21C7E9934(v2, v6, type metadata accessor for PMAccountIcon);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = swift_allocObject();
  sub_21C7E99FC(v6, v41 + v40, type metadata accessor for PMAccountIcon);
  sub_21C716934(v39, v19, &qword_27CDEBA48, &qword_21CBA2B20);
  v42 = &v19[*(v61 + 36)];
  *v42 = sub_21C7E9240;
  v42[1] = v41;
  v42[2] = 0;
  v42[3] = 0;
  sub_21C7E9934(v2, v6, type metadata accessor for PMAccountIcon);
  v43 = swift_allocObject();
  sub_21C7E99FC(v6, v43 + v40, type metadata accessor for PMAccountIcon);
  v44 = v19;
  v45 = v66;
  sub_21C716934(v44, v66, &qword_27CDEBA50, &qword_21CBA2B28);
  v46 = (v45 + *(v63 + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_21C7E929C;
  v46[3] = v43;
  v48 = *(v2 + 56);
  v47 = *(v2 + 64);
  sub_21C7E9934(v2, v6, type metadata accessor for PMAccountIcon);
  v49 = swift_allocObject();
  sub_21C7E99FC(v6, v49 + v40, type metadata accessor for PMAccountIcon);
  v50 = v64;
  sub_21C716934(v45, v64, &qword_27CDEBA58, &qword_21CBA2B30);
  v51 = (v50 + *(v65 + 36));
  *v51 = v48;
  v51[1] = v47;
  v51[2] = sub_21C7E9240;
  v51[3] = v49;
  sub_21C716934(v50, v68, &qword_27CDEBA60, &qword_21CBA2B38);
}

uint64_t sub_21C7E5780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAE8, &unk_21CBA2B70);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB48, &qword_21CBA2C00);
  v5 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - v6;
  v53 = type metadata accessor for PMPasswordsIcon();
  v7 = *(*(v53 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v53);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB50, &qword_21CBA2C08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAD0, &qword_21CBA2B68);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v25 = sub_21C7E5D40();
  if (v25)
  {
    v26 = v25;
    sub_21C7E6764(v25, v20);
    sub_21C6EDBAC(v20, v16, &qword_27CDEBA90, &qword_21CBA2B48);
    swift_storeEnumTagMultiPayload();
    sub_21C7E8F5C();
    sub_21C7E9014();
    sub_21CB83494();

    v27 = v20;
    v28 = &qword_27CDEBA90;
    v29 = &qword_21CBA2B48;
  }

  else
  {
    v48 = v12;
    v49 = v16;
    v30 = v56;
    v50 = v24;
    v51 = v17;
    v32 = v53;
    v31 = v54;
    v52 = v21;
    v33 = type metadata accessor for PMAccountIcon();
    v34 = (a1 + *(v33 + 60));
    v35 = v34[1];
    v36 = *(a1 + *(v33 + 48));
    if (v35 == 1)
    {
      if (*(a1 + *(v33 + 48)))
      {
        sub_21CB85174();
      }

      sub_21C7E8140(v30);
      sub_21C6EDBAC(v30, v31, &qword_27CDEBAE8, &unk_21CBA2B70);
      swift_storeEnumTagMultiPayload();
      sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon);
      sub_21C7E90D0();
      v37 = v50;
      sub_21CB83494();
      sub_21C6EA794(v30, &qword_27CDEBAE8, &unk_21CBA2B70);
      v38 = v49;
      v39 = v37;
    }

    else
    {
      v40 = *v34;
      if (*(a1 + *(v33 + 48)))
      {
        v41 = v34[1];
        v42 = sub_21CB85174();
        v35 = v41;
        v43 = 56.0;
        if (v42)
        {
          v43 = 60.0;
        }
      }

      else
      {
        v43 = 44.0;
      }

      v38 = v49;
      *v10 = v40;
      *(v10 + 1) = v35;
      *(v10 + 2) = v43;
      *(v10 + 3) = v43;
      v10[32] = 0;
      v44 = *(v32 + 28);
      *&v10[v44] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v45 = v48;
      sub_21C7E99FC(v10, v48, type metadata accessor for PMPasswordsIcon);
      sub_21C7E9934(v45, v31, type metadata accessor for PMPasswordsIcon);
      swift_storeEnumTagMultiPayload();
      sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon);
      sub_21C7E90D0();

      v39 = v50;
      sub_21CB83494();
      sub_21C7E999C(v45, type metadata accessor for PMPasswordsIcon);
    }

    sub_21C6EDBAC(v39, v38, &qword_27CDEBAD0, &qword_21CBA2B68);
    swift_storeEnumTagMultiPayload();
    sub_21C7E8F5C();
    sub_21C7E9014();
    sub_21CB83494();
    v27 = v39;
    v28 = &qword_27CDEBAD0;
    v29 = &qword_21CBA2B68;
  }

  return sub_21C6EA794(v27, v28, v29);
}

void *sub_21C7E5D40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v83 - v4;
  v5 = sub_21CB85B74();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v83 - v10;
  v93 = type metadata accessor for PMAccountIcon();
  v12 = v0 + v93[17];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  v16 = type metadata accessor for PMAccountIcon.IconCache();
  v17 = sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache);
  v18 = *(sub_21CB82134() + 40);
  v19 = v18;

  if (!v18)
  {
    goto LABEL_10;
  }

  v87 = v11;
  v20 = v17;
  v21 = v16;
  v22 = v1[10];
  if (v22)
  {
    v23 = v15;
    v24 = v1[9];
    v88 = v13;
    v85 = v14;
    v86 = v23;
    v25 = sub_21CB82134();
    v27 = *(v25 + 24);
    v26 = *(v25 + 32);

    if (!v26)
    {
      goto LABEL_9;
    }

    if (v24 == v27 && v22 == v26)
    {

      return v18;
    }

    v29 = sub_21CB86344();

    if ((v29 & 1) == 0)
    {
LABEL_9:

      v15 = v86;
      v16 = v21;
      v17 = v20;
      v11 = v87;
      v13 = v88;
LABEL_10:
      v30 = *(sub_21CB82134() + 48);

      if (v30 != 1)
      {
        return 0;
      }

      v31 = v1[3];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      v32 = qword_27CE18778;
      sub_21CB86544();
      v33 = sub_21C81C2FC(v31, v94);

      if (!v33)
      {
        return 0;
      }

      v88 = v13;
      v84 = v33;
      v85 = v16;
      v34 = v1[10];
      if (v34)
      {
        v35 = v1[9];
        v36 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v36 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v87 = v11;
          v37 = sub_21CB82134();
          v38 = *(v37 + 32);
          *(v37 + 24) = v35;
          *(v37 + 32) = v34;

          v89 = v17;
          v39 = sub_21CB82134();
          v40 = sub_21CB85584();
          if (*(v1 + v93[12]) == 1)
          {
            v41 = sub_21CB85174();
            v42 = 56.0;
            if (v41)
            {
              v42 = 60.0;
            }
          }

          else
          {
            v42 = 44.0;
          }

          v60 = [v84 cachedIconForDomain:v40 resizedToSize:{v42, v42}];

          v61 = *(v39 + 40);
          *(v39 + 40) = v60;
          if (v61)
          {
            if (v60)
            {
              sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
              v62 = v60;
              v63 = v61;
              v64 = sub_21CB85DD4();

              if (v64)
              {

LABEL_49:
                v77 = sub_21CB82134();
                v78 = *(sub_21CB82134() + 40);
                v79 = v78;

                if (v78)
                {
                }

                *(v77 + 48) = v78 == 0;

                v80 = sub_21CB82134();

                v18 = *(v80 + 40);
                v81 = v18;

                return v18;
              }
            }

LABEL_40:
            v66 = v87;
            sub_21CB858C4();
            v67 = sub_21CB858E4();
            (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
            v68 = swift_allocObject();
            v68[2] = 0;
            v68[3] = 0;
            v68[4] = v39;

            sub_21C9E6C0C(0, 0, v66, &unk_21CBA2D08, v68);

            sub_21C6EA794(v66, &qword_27CDF1D50, &qword_21CBA0C00);

            goto LABEL_49;
          }

          if (v60)
          {
            v65 = v60;
            goto LABEL_40;
          }

LABEL_44:

          goto LABEL_49;
        }
      }

      v43 = v89;
      sub_21C6EDBAC(v1 + v93[11], v89, &qword_27CDEB3A0, &qword_21CBD0650);
      v44 = v91;
      v45 = v92;
      if ((*(v91 + 48))(v43, 1, v92) == 1)
      {
        sub_21C6EA794(v43, &qword_27CDEB3A0, &qword_21CBD0650);
        goto LABEL_42;
      }

      v93 = v32;
      (*(v44 + 32))(v90, v43, v45);
      v46 = sub_21CB85B64();
      v48 = v47;

      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {
        (*(v44 + 8))(v90, v92);
LABEL_42:
        v69 = sub_21CB82134();
        v70 = *(v69 + 40);
        *(v69 + 40) = 0;
        if (v70)
        {
          v71 = v69;
          sub_21CB858C4();
          v72 = sub_21CB858E4();
          (*(*(v72 - 8) + 56))(v11, 0, 1, v72);
          v73 = swift_allocObject();
          v73[2] = 0;
          v73[3] = 0;
          v73[4] = v71;

          sub_21C9E6C0C(0, 0, v11, &unk_21CBA2CF8, v73);

          sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);

          goto LABEL_49;
        }

        goto LABEL_44;
      }

      v86 = v15;
      v89 = v17;
      v50 = sub_21CB82134();
      v51 = v1[4];
      sub_21CB86544();
      v52 = sub_21C81C2E4(v51, v94);

      v53 = *(v52 + 24);
      sub_21CB85B64();
      v54 = sub_21CB85584();

      v55 = [v53 objectForKey_];

      v56 = *(v50 + 40);
      *(v50 + 40) = v55;
      if (v56)
      {
        if (v55)
        {
          sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8);
          v57 = v55;
          v58 = v56;
          v59 = sub_21CB85DD4();

          if (v59)
          {

LABEL_48:
            (*(v91 + 8))(v90, v92);
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (!v55)
        {

          goto LABEL_48;
        }

        v74 = v55;
      }

      sub_21CB858C4();
      v75 = sub_21CB858E4();
      (*(*(v75 - 8) + 56))(v11, 0, 1, v75);
      v76 = swift_allocObject();
      v76[2] = 0;
      v76[3] = 0;
      v76[4] = v50;

      sub_21C9E6C0C(0, 0, v11, &unk_21CBA2D00, v76);

      sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);

      goto LABEL_48;
    }
  }

  return v18;
}

double sub_21C7E6764@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB84BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21CB84BE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v2 + *(type metadata accessor for PMAccountIcon() + 48));
  if (v27 == 1)
  {
    sub_21CB85174();
  }

  v15 = a1;
  sub_21CB84BA4();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0FF0], v10);
  sub_21CB84BF4();

  (*(v11 + 8))(v14, v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
  v16 = sub_21CB84C64();

  (*(v6 + 8))(v9, v5);
  sub_21CB85214();
  sub_21CB82374();
  v29 = 1;
  *&v28[6] = v30;
  *&v28[22] = v31;
  *&v28[38] = v32;
  if (v27)
  {
    v17 = sub_21CB85174();
    v18 = 56.0;
    if (v17)
    {
      v18 = 60.0;
    }
  }

  else
  {
    v18 = 44.0;
  }

  v19 = v18 / 44.0 * 6.0;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA90, &qword_21CBA2B48) + 36));
  v21 = *(sub_21CB82A84() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_21CB831A4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
  v24 = *&v28[16];
  *(a2 + 18) = *v28;
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v24;
  result = *&v28[32];
  *(a2 + 50) = *&v28[32];
  *(a2 + 64) = *&v28[46];
  return result;
}

void sub_21C7E6AF0()
{
  v1 = v0;
  v2 = sub_21CB80E34();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 8);
  MEMORY[0x28223BE20](v2);
  v95 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v88 - v7;
  v9 = type metadata accessor for PMAccountIcon();
  v100 = *(v9 - 1);
  v10 = *(v100 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v99 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v88 - v18;
  v20 = sub_21CB85B74();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v27 = &v88 - v26;
  if (*(v1 + v9[13]) != 1)
  {
    return;
  }

  v98 = v24;
  v93 = *(v1 + v9[12]);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v25;
  if (v93 == 1)
  {
    if (sub_21CB85174())
    {
      v28 = 60.0;
    }

    else
    {
      v28 = 56.0;
    }
  }

  else
  {
    v28 = 44.0;
  }

  sub_21C6EDBAC(v1 + v9[11], v19, &qword_27CDEB3A0, &qword_21CBD0650);
  v29 = *(v21 + 48);
  v30 = v21;
  v31 = v98;
  if (v29(v19, 1, v98) == 1)
  {
    sub_21C6EA794(v19, &qword_27CDEB3A0, &qword_21CBD0650);
    goto LABEL_17;
  }

  v32 = *(v30 + 32);
  v90 = v30 + 32;
  v91 = v8;
  v89 = v32;
  v32(v27, v19, v31);
  v33 = sub_21CB85B64();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    (*(v30 + 8))(v27, v31);
LABEL_17:
    v53 = v94;
    if (v1[10])
    {
      v54 = v1[9];
      v55 = v1[3];
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v56 = sub_21C81C2FC(v55, aBlock);

      if (v56)
      {
        v57 = sub_21CB85584();
        v58 = v9[18];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
        v59 = v95;
        sub_21CB84D54();
        v60 = sub_21CB80E04();
        (*(v96 + 1))(v59, v97);
        sub_21C7E9934(v1, v53, type metadata accessor for PMAccountIcon);
        v61 = (*(v100 + 80) + 16) & ~*(v100 + 80);
        v62 = v53;
        if (v93)
        {
          v63 = swift_allocObject();
          sub_21C7E99FC(v62, v63 + v61, type metadata accessor for PMAccountIcon);
          v105 = sub_21C7E92FC;
          v106 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v102 = 1107296256;
          v64 = &block_descriptor_1;
        }

        else
        {
          v65 = swift_allocObject();
          sub_21C7E99FC(v62, v65 + v61, type metadata accessor for PMAccountIcon);
          v105 = sub_21C7E931C;
          v106 = v65;
          aBlock = MEMORY[0x277D85DD0];
          v102 = 1107296256;
          v64 = &block_descriptor_26;
        }

        v103 = sub_21C7E80D4;
        v104 = v64;
        v66 = _Block_copy(&aBlock);

        [v56 iconForDomain:v57 requestID:v60 responseHandler:v66];

        _Block_release(v66);
      }
    }

    return;
  }

  v37 = v30;
  v38 = v1[4];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v39 = sub_21C81C2E4(v38, aBlock);

  sub_21C7E9934(v1, v15, type metadata accessor for PMAccountIcon);
  v40 = v99;
  sub_21C7E9934(v15, v99, type metadata accessor for PMAccountIcon);
  v41 = *(v100 + 80);
  v97 = swift_allocObject();
  sub_21C7E99FC(v15, v97 + ((v41 + 16) & ~v41), type metadata accessor for PMAccountIcon);
  v100 = v39;
  v42 = *(v39 + 24);
  sub_21CB85B64();
  v43 = sub_21CB85584();

  v44 = [v42 objectForKey_];

  if (v44)
  {
    v45 = sub_21CB858E4();
    v46 = v40;
    v47 = v91;
    (*(*(v45 - 8) + 56))(v91, 1, 1, v45);
    v96 = v27;
    v48 = v94;
    sub_21C7E9934(v46, v94, type metadata accessor for PMAccountIcon);
    sub_21CB858B4();
    v95 = v44;
    v49 = sub_21CB858A4();
    v50 = (v41 + 32) & ~v41;
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D85700];
    *(v51 + 16) = v49;
    *(v51 + 24) = v52;
    sub_21C7E99FC(v48, v51 + v50, type metadata accessor for PMAccountIcon);
    *(v51 + ((v10 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
    sub_21C98B308(0, 0, v47, &unk_21CBA2BB0, v51);

    sub_21C7E999C(v99, type metadata accessor for PMAccountIcon);

    (*(v37 + 8))(v96, v98);
  }

  else
  {
    sub_21C7E999C(v40, type metadata accessor for PMAccountIcon);
    v67 = objc_opt_self();
    v68 = [v67 mainScreen];
    [v68 scale];
    v70 = v69;

    v71 = v28 * v70;
    v72 = [v67 mainScreen];
    [v72 scale];
    v74 = v73;

    v75 = sub_21CB858E4();
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v76 = v92;
    (*(v37 + 16))(v92, v27, v98);
    sub_21CB858B4();
    v77 = v100;

    v78 = v97;

    v79 = sub_21CB858A4();
    v80 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v81 = (v22 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    v83 = MEMORY[0x277D85700];
    v82[2] = v79;
    v82[3] = v83;
    v82[4] = v77;
    v84 = v82 + v80;
    v85 = v98;
    v89(v84, v76, v98);
    v86 = (v82 + v81);
    *v86 = v71;
    v86[1] = v28 * v74;
    v87 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v87 = sub_21C7E933C;
    v87[1] = v78;
    sub_21C98B308(0, 0, v91, &unk_21CBA2BA0, v82);

    (*(v37 + 8))(v27, v85);
  }
}

void sub_21C7E75E4(uint64_t a1)
{
  v2 = sub_21CB80E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_21CB85B74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccountIcon();
  if (*(a1 + *(v16 + 48)))
  {
    return;
  }

  v17 = v16;
  sub_21C6EDBAC(a1 + *(v16 + 44), v10, &qword_27CDEB3A0, &qword_21CBD0650);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21C6EA794(v10, &qword_27CDEB3A0, &qword_21CBD0650);
LABEL_11:
    v23 = *(a1 + 24);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v24 = sub_21C81C2FC(v23, v28);

    if (v24)
    {
      v25 = *(v17 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
      sub_21CB84D54();
      v26 = sub_21CB80E04();
      (*(v3 + 8))(v6, v2);
      [v24 cancelRequest_];
    }

    return;
  }

  (*(v12 + 32))(v15, v10, v11);
  v18 = sub_21CB85B64();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    (*(v12 + 8))(v15, v11);
    goto LABEL_11;
  }

  v22 = *(a1 + 32);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2E4(v22, v28);

  sub_21CA39DB8(v15);

  (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C7E79A0()
{
  type metadata accessor for PMAccountIcon.IconCache();
  v0 = swift_allocObject();
  v1 = sub_21CB81D64();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_21CB81D54();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_21C7E7A08(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = (v1 + *(type metadata accessor for PMAccountIcon() + 68));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  type metadata accessor for PMAccountIcon.IconCache();
  sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache);
  v12 = *(sub_21CB82134() + 16);

  sub_21CB81D44();
  v13 = v9;

  v14 = sub_21CB82134();
  v16 = *(v2 + 72);
  v15 = *(v2 + 80);
  v17 = *(v14 + 32);
  *(v14 + 24) = v16;
  *(v14 + 32) = v15;

  v18 = sub_21CB82134();
  v19 = *(v18 + 40);
  *(v18 + 40) = a1;
  if (!v19)
  {
    if (!a1)
    {

      goto LABEL_8;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (v26[1] = v13, sub_21C6E8F4C(0, &qword_27CDEBB30, 0x277D755B8), a1 = a1, v20 = v19, v21 = sub_21CB85DD4(), v20, (v21 & 1) == 0))
  {
LABEL_7:
    sub_21CB858C4();
    v22 = sub_21CB858E4();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v18;

    sub_21C9E6C0C(0, 0, v7, &unk_21CBA2BC0, v23);

    sub_21C6EA794(v7, &qword_27CDF1D50, &qword_21CBA0C00);

    goto LABEL_8;
  }

LABEL_8:
  v24 = sub_21CB82134();

  *(v24 + 48) = 0;
}

uint64_t sub_21C7E7D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CB858B4();
  v5[4] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7E7DB4, v7, v6);
}

uint64_t sub_21C7E7DB4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = (v3 + *(type metadata accessor for PMAccountIcon() + 68));
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for PMAccountIcon.IconCache();
  sub_21C705DD8(&qword_27CDEBA28, type metadata accessor for PMAccountIcon.IconCache);
  v8 = *(sub_21CB82134() + 40);
  v9 = v8;

  if (!v8)
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = v0[3];

  if (!v2 || v8 != v10)
  {
LABEL_6:
    v12 = v0[2];
    v11 = v0[3];
    v13 = v2;
    sub_21C7E7A08(v11);
  }

LABEL_7:
  v14 = v0[1];

  return v14();
}

uint64_t sub_21C7E7EE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PMAccountIcon();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21C7E9934(a2, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountIcon);
  sub_21CB858B4();
  v15 = a1;
  v16 = sub_21CB858A4();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_21C7E99FC(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMAccountIcon);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21C98B308(0, 0, v13, a4, v18);
}

void sub_21C7E80D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_21C7E8140@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - v4;
  v6 = sub_21CB82A84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB08, &qword_21CBA2B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v63 = &v58 - v16;
  if (*(v1 + *(type metadata accessor for PMAccountIcon() + 48)) == 1)
  {
    sub_21CB85174();
    v17 = sub_21CB85174();
    v18 = 56.0;
    if (v17)
    {
      v18 = 60.0;
    }
  }

  else
  {
    v18 = 44.0;
  }

  v19 = v18 / 44.0 * 6.0;
  v20 = *(v6 + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_21CB831A4();
  (*(*(v22 - 8) + 104))(v9 + v20, v21, v22);
  *v9 = v19;
  v9[1] = v19;
  v23 = sub_21CB84A84();
  sub_21C7E99FC(v9, v13, MEMORY[0x277CDFC08]);
  *&v13[*(v10 + 52)] = v23;
  *&v13[*(v10 + 56)] = 256;
  sub_21CB85214();
  sub_21CB82374();
  v24 = v63;
  sub_21C716934(v13, v63, &qword_27CDEBB08, &qword_21CBA2B80);
  v25 = (v24 + *(v14 + 36));
  v26 = v73;
  *v25 = v72;
  v25[1] = v26;
  v25[2] = v74;
  v61 = sub_21CB85214();
  v60 = v27;
  v28 = sub_21C7E8758();
  v30 = sub_21C7C6DBC(v28, v29);
  v32 = v31;

  if (v32)
  {
    *&v69 = v30;
    *(&v69 + 1) = v32;
    sub_21C71F3FC();
    v64 = sub_21CB84054();
    v65 = v33;
    v66 = v34 & 1;
    v67 = v35;
    v68 = 0;
  }

  else
  {
    v64 = sub_21CB84BB4();
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
  }

  sub_21CB83494();
  v59 = v70;
  v58 = v69;
  v36 = v71;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAE8, &unk_21CBA2B70);
  v38 = v62;
  v39 = v62 + *(v37 + 36);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB60, &unk_21CBA2C40) + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v42 = *MEMORY[0x277CE0B48];
  v43 = sub_21CB84004();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v40 + v41, v42, v43);
  (*(v44 + 56))(v40 + v41, 0, 1, v43);
  *v40 = swift_getKeyPath();
  v45 = v59;
  *v39 = v58;
  *(v39 + 16) = v45;
  *(v39 + 32) = v36;
  v46 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath();
  v48 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB68, &qword_21CBA2CB0) + 36));
  *v48 = KeyPath;
  v48[1] = v46;
  sub_21C7E887C();
  sub_21CB83DF4();
  v49 = *MEMORY[0x277CE09A0];
  v50 = sub_21CB83DC4();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v5, v49, v50);
  (*(v51 + 56))(v5, 0, 1, v50);
  v52 = sub_21CB83E14();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  v53 = swift_getKeyPath();
  v54 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB70, &qword_21CBA2CE8) + 36));
  *v54 = v53;
  v54[1] = v52;
  v55 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB18, &qword_21CBA2B88) + 36));
  v56 = v60;
  *v55 = v61;
  v55[1] = v56;
  return sub_21C716934(v63, v38, &qword_27CDEBAF8, &qword_21CBBA2C0);
}

uint64_t sub_21C7E8758()
{
  if (!v0[8])
  {
LABEL_6:
    if (!v0[10])
    {
      return 0;
    }

    v8 = v0[9];
    v9 = sub_21CB85584();
    v10 = [v9 _lp_userVisibleHost];

    if (!v10)
    {
      sub_21CB855C4();
      v10 = sub_21CB85584();
    }

    v11 = [v10 safari_stringByTrimmingWhitespace];

    v4 = sub_21CB855C4();
    return v4;
  }

  v1 = v0[7];
  v2 = sub_21CB85584();
  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = sub_21CB855C4();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_6;
  }

  return v4;
}

double sub_21C7E887C()
{
  v1 = v0;
  v2 = sub_21CB807A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB78, &qword_21CBA2CF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v42 - v15;
  if (!v1[8])
  {
LABEL_6:
    if (v1[10])
    {
      v24 = v1[9];
      v25 = sub_21CB85584();
      v26 = [v25 _lp_userVisibleHost];

      if (!v26)
      {
        sub_21CB855C4();
        v26 = sub_21CB85584();
      }

      v27 = [v26 safari_stringByTrimmingWhitespace];

      v20 = sub_21CB855C4();
      v22 = v28;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    goto LABEL_11;
  }

  v17 = v1[7];
  v18 = sub_21CB85584();
  v19 = [v18 safari_stringByTrimmingWhitespace];

  v20 = sub_21CB855C4();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_6;
  }

LABEL_11:

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((v20 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (*(v1 + *(type metadata accessor for PMAccountIcon() + 48)) == 1)
    {
      v31 = sub_21CB85174();
      v32 = 56.0;
      if (v31)
      {
        v32 = 60.0;
      }
    }

    else
    {
      v32 = 44.0;
    }

    v41 = 1.75;
    return v32 / v41;
  }

  if ((v22 & 0xF00000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v29 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v29)
  {
    v30 = v29;
    sub_21CB80784();

    (*(v3 + 56))(v14, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  sub_21C716934(v14, v16, &qword_27CDEBB78, &qword_21CBA2CF0);
  v42[0] = sub_21C7E8758();
  v42[1] = v33;
  sub_21C6EDBAC(v16, v11, &qword_27CDEBB78, &qword_21CBA2CF0);
  v34 = *(v3 + 48);
  if (v34(v11, 1, v2) == 1)
  {
    sub_21CB80794();
    if (v34(v11, 1, v2) != 1)
    {
      sub_21C6EA794(v11, &qword_27CDEBB78, &qword_21CBA2CF0);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
  }

  sub_21C71F3FC();
  sub_21CB85E94();
  v36 = v35;
  (*(v3 + 8))(v6, v2);

  v37 = *(v1 + *(type metadata accessor for PMAccountIcon() + 48));
  if ((v36 & 1) == 0)
  {
    if (v37)
    {
      v40 = sub_21CB85174();
      sub_21C6EA794(v16, &qword_27CDEBB78, &qword_21CBA2CF0);
      v32 = 44.8;
      if (v40)
      {
        v32 = 48.0;
      }
    }

    else
    {
      sub_21C6EA794(v16, &qword_27CDEBB78, &qword_21CBA2CF0);
      v32 = 35.2;
    }

    v41 = 1.4;
    return v32 / v41;
  }

  if (v37)
  {
    v38 = sub_21CB85174();
    sub_21C6EA794(v16, &qword_27CDEBB78, &qword_21CBA2CF0);
    result = 44.8;
    if (v38)
    {
      return 48.0;
    }
  }

  else
  {
    sub_21C6EA794(v16, &qword_27CDEBB78, &qword_21CBA2CF0);
    return 35.2;
  }

  return result;
}

uint64_t sub_21C7E8D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_21C7E8D94()
{
  result = qword_27CDEBA68;
  if (!qword_27CDEBA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA40, &qword_21CBA2B18);
    sub_21C7E8E4C();
    sub_21C6EADEC(&qword_27CDEBB20, &qword_27CDEBB28, &unk_21CBA2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA68);
  }

  return result;
}

unint64_t sub_21C7E8E4C()
{
  result = qword_27CDEBA70;
  if (!qword_27CDEBA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA38, &qword_21CBA2B10);
    sub_21C7E8ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA70);
  }

  return result;
}

unint64_t sub_21C7E8ED0()
{
  result = qword_27CDEBA78;
  if (!qword_27CDEBA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA80, &qword_21CBA2B40);
    sub_21C7E8F5C();
    sub_21C7E9014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA78);
  }

  return result;
}

unint64_t sub_21C7E8F5C()
{
  result = qword_27CDEBA88;
  if (!qword_27CDEBA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA90, &qword_21CBA2B48);
    sub_21C738A18();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA88);
  }

  return result;
}

unint64_t sub_21C7E9014()
{
  result = qword_27CDEBAC8;
  if (!qword_27CDEBAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAD0, &qword_21CBA2B68);
    sub_21C705DD8(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon);
    sub_21C7E90D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAC8);
  }

  return result;
}

unint64_t sub_21C7E90D0()
{
  result = qword_27CDEBAE0;
  if (!qword_27CDEBAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAE8, &unk_21CBA2B70);
    sub_21C7E9188();
    sub_21C6EADEC(&qword_27CDEBB10, &qword_27CDEBB18, &qword_21CBA2B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAE0);
  }

  return result;
}

unint64_t sub_21C7E9188()
{
  result = qword_27CDEBAF0;
  if (!qword_27CDEBAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
    sub_21C6EADEC(&qword_27CDEBB00, &qword_27CDEBB08, &qword_21CBA2B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAF0);
  }

  return result;
}

void sub_21C7E9240()
{
  v1 = *(type metadata accessor for PMAccountIcon() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21C7E6AF0();
}

void sub_21C7E929C()
{
  v1 = *(type metadata accessor for PMAccountIcon() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C7E75E4(v2);
}

uint64_t sub_21C7E93D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21CB85B74() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_21C6F35D0;

  return sub_21CA3A040(v13, v14, a1, v9, v10, v11, v1 + v6, v15, v16);
}

uint64_t sub_21C7E9534(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccountIcon() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C7E7D1C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21C7E9654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C7E4318(a1, v4, v5, v6);
}

uint64_t objectdestroy_35Tm()
{
  v1 = type metadata accessor for PMAccountIcon();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 64);

  v13 = *(v0 + v3 + 80);

  v14 = v1[11];
  v15 = sub_21CB85B74();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  if (*(v6 + v1[15] + 8) != 1)
  {
  }

  if (*(v6 + v1[16] + 48) != 1)
  {
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v6 + v1[17]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  sub_21C70AC30();
  v22 = v6 + v1[18];
  v23 = sub_21CB80E34();
  (*(*(v23 - 8) + 8))(v22, v23);
  v24 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30) + 28));

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

uint64_t sub_21C7E9934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E999C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7E99FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7E9A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C7E4318(a1, v4, v5, v6);
}

unint64_t sub_21C7E9B18()
{
  result = qword_27CDEBB80;
  if (!qword_27CDEBB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA60, &qword_21CBA2B38);
    sub_21C7E9C2C(&qword_27CDEBB88, &qword_27CDEBA58, &qword_21CBA2B30, sub_21C7E9BFC);
    sub_21C6EADEC(&qword_27CDEBBA0, &qword_27CDEBBA8, &unk_21CBA2D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBB80);
  }

  return result;
}

uint64_t sub_21C7E9C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C7E9CB0()
{
  result = qword_27CDEBB98;
  if (!qword_27CDEBB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBA48, &qword_21CBA2B20);
    sub_21C7E8D94();
    sub_21C705DD8(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBB98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMGroupMember.PermissionLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMGroupMember.PermissionLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21C7E9ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C7E9F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C7E9FC8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_21C7EA0E0(v4, __dst) & 1;
}

unint64_t sub_21C7EA024()
{
  result = qword_27CDEBBB0;
  if (!qword_27CDEBBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBB8, qword_21CBA2E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBB0);
  }

  return result;
}

unint64_t sub_21C7EA08C()
{
  result = qword_27CDEBBC0;
  if (!qword_27CDEBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBC0);
  }

  return result;
}

uint64_t sub_21C7EA0E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v7 && (sub_21CB86344() & 1) == 0 || (*(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 15) != *(a2 + 15) || *(a1 + 16) != *(a2 + 16)) && (sub_21CB86344() & 1) == 0 || (*(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18)) && (sub_21CB86344() & 1) == 0 || *(a1 + 19) != *(a2 + 19) || (sub_21C7A2154(*(a1 + 20), *(a2 + 20)) & 1) == 0 || (sub_21C7A2154(*(a1 + 21), *(a2 + 21)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 23);
  v9 = *(a2 + 23);
  if (v8)
  {
    if (!v9 || (*(a1 + 22) != *(a2 + 22) || v8 != v9) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 25);
  v11 = *(a2 + 25);
  if (v10)
  {
    if (!v11 || (*(a1 + 24) != *(a2 + 24) || v10 != v11) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 27);
  v13 = *(a2 + 27);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_61;
    }

    return 0;
  }

  if (!v13 || (*(a1 + 26) != *(a2 + 26) || v12 != v13) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  if ((a1[224] ^ a2[224]))
  {
    return 0;
  }

  v15 = *(a1 + 29);
  v16 = *(a2 + 29);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDEBBC8, 0x277D49A48);
    v17 = v16;
    v18 = v15;
    v19 = sub_21CB85DD4();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v20 = a2[272];
  if (a1[272])
  {
    if ((a2[272] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[272])
    {
      return 0;
    }

    v21 = *(a1 + 30);
    v22 = *(a1 + 31);
    v23 = *(a1 + 32);
    v24 = *(a1 + 33);
    v25 = *(a2 + 30);
    v26 = *(a2 + 31);
    v27 = *(a2 + 32);
    v28 = *(a2 + 33);
    if ((sub_21CB85AC4() & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[273] ^ a2[273]))
  {
    return 0;
  }

  v29 = *(a1 + 36);
  v30 = *(a2 + 36);
  if (v29)
  {
    if (!v30 || (*(a1 + 35) != *(a2 + 35) || v29 != v30) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(a1 + 37);
  v32 = *(a2 + 37);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v33 = v32;
    v34 = v31;
    v35 = sub_21CB85DD4();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  if ((a1[304] ^ a2[304]))
  {
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v36 = *(a1 + 39);
  v37 = *(a2 + 39);
  return sub_21CB85DD4() & 1;
}

uint64_t sub_21C7EA4E4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  return v8;
}

uint64_t sub_21C7EA67C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21C7EA7D4(char a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    return 0;
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t type metadata accessor for PMPlatformRoleButton()
{
  result = qword_27CDEBBD0;
  if (!qword_27CDEBBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C7EA9BC()
{
  result = sub_21CB81F14();
  if (v1 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C7EAA6C(uint64_t a1)
{
  v3 = sub_21CB81F14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  (*(v4 + 16))(v7, &v1[*(a1 + 20)], v3);
  v13 = &v1[*(a1 + 24)];
  v14 = *v13;
  v15 = *(v13 + 1);

  MEMORY[0x21CF148B0](v7, v14, v15);
  v16 = *v1;
  v17 = *(v1 + 1);
  v23[2] = v16;
  v23[3] = v17;
  sub_21C71F3FC();

  v18 = sub_21CB84054();
  v20 = v19;
  LOBYTE(v7) = v21;
  sub_21C7EAC8C();
  sub_21CB843D4();
  sub_21C74A72C(v18, v20, v7 & 1);

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_21C7EAC8C()
{
  result = qword_27CDEBBE8;
  if (!qword_27CDEBBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBE0, &unk_21CBC5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBE8);
  }

  return result;
}

unint64_t sub_21C7EACF0()
{
  result = qword_27CDEBBF0;
  if (!qword_27CDEBBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBBF8, &unk_21CBA2F30);
    sub_21C7EAC8C();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBBF0);
  }

  return result;
}

uint64_t sub_21C7EAD88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C7EADD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAccountPickerRow()
{
  result = qword_27CDEBC00;
  if (!qword_27CDEBC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C7EAE90()
{
  result = type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C7EAF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 41))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21C7EAF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21C7EB024()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CB86484();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x21CF15F90](3);
      sub_21CB85DE4();
      return sub_21CB864D4();
    }

    v4 = 2;
  }

  else
  {
    v4 = v3 != 0;
  }

  MEMORY[0x21CF15F90](v4);
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C7EB0D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x21CF15F90](3);
      return sub_21CB85DE4();
    }

    v4 = 2;
  }

  else
  {
    v4 = v3 != 0;
  }

  MEMORY[0x21CF15F90](v4);

  return sub_21CB854C4();
}

uint64_t sub_21C7EB174()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CB86484();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x21CF15F90](3);
      sub_21CB85DE4();
      return sub_21CB864D4();
    }

    v4 = 2;
  }

  else
  {
    v4 = v3 != 0;
  }

  MEMORY[0x21CF15F90](v4);
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C7EB238@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC20, &qword_21CBA3140);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC28, &qword_21CBA3148);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v38 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC30, &qword_21CBA3150);
  v12 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v14 = (&v38 - v13);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC38, &qword_21CBA3158);
  v15 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - v16;
  v17 = type metadata accessor for PMAccountPickerRow();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  if (*(v1 + *(v22 + 32) + 40))
  {
    if (*(v1 + *(v22 + 32) + 40) == 1)
    {
      v25 = v1[1];
      v46 = *v1;
      v47 = v25;
      MEMORY[0x28223BE20](v22);
      v38 = sub_21C7EC110();

      v26 = v39;
      sub_21CB82614();
      v27 = v40;
      (*(v40 + 16))(v14, v26, v6);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC50, &unk_21CBA3160);
      sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160);
      sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140);
      v28 = v42;
      sub_21CB83494();
      sub_21C6EDBAC(v28, v11, &qword_27CDEBC38, &qword_21CBA3158);
      swift_storeEnumTagMultiPayload();
      sub_21C7EC02C();
      sub_21CB83494();
      sub_21C6EA794(v28, &qword_27CDEBC38, &qword_21CBA3158);
      return (*(v27 + 8))(v26, v6);
    }

    sub_21C7EB978(v5);
    v35 = &unk_21CBC6EF0;
    sub_21C6EDBAC(v5, v11, &qword_27CDEBC18, &unk_21CBC6EF0);
    swift_storeEnumTagMultiPayload();
    sub_21C7EC02C();
    sub_21C7EC110();
    sub_21CB83494();
    v36 = v5;
    v37 = &qword_27CDEBC18;
  }

  else
  {
    sub_21C7EC378(v1, &v38 - v23, type metadata accessor for PMAccountPickerRow);
    v39 = v6;
    v40 = v2;
    v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v31 = swift_allocObject();
    v38 = v11;
    v32 = v31;
    sub_21C7EC450(v24, v31 + v30, type metadata accessor for PMAccountPickerRow);
    sub_21C7EC378(v1, v21, type metadata accessor for PMAccountPickerRow);
    v33 = swift_allocObject();
    sub_21C7EC450(v21, v33 + v30, type metadata accessor for PMAccountPickerRow);
    *v14 = sub_21C7EC314;
    v14[1] = v33;
    v14[2] = sub_21C7EC2A8;
    v14[3] = v32;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC50, &unk_21CBA3160);
    sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160);
    sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140);
    v34 = v42;
    sub_21CB83494();
    v35 = &qword_21CBA3158;
    sub_21C6EDBAC(v34, v38, &qword_27CDEBC38, &qword_21CBA3158);
    swift_storeEnumTagMultiPayload();
    sub_21C7EC02C();
    sub_21C7EC110();
    sub_21CB83494();

    v36 = v34;
    v37 = &qword_27CDEBC38;
  }

  return sub_21C6EA794(v36, v37, v35);
}

uint64_t sub_21C7EB978@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for PMAccountRow();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v47 - v7;
  sub_21C7EC378(v1, v5, type metadata accessor for PMAccount);
  v9 = type metadata accessor for PMAccountPickerRow();
  v10 = v1 + *(v9 + 24);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v15 = (v1 + *(v9 + 28));
  v16 = v15[1];
  v50 = *v15;
  sub_21C7EC3E0(v12, v11);
  v48 = v14;
  v49 = v13;
  sub_21C7EC3F4(v13, v14);
  v51 = v16;

  v17 = sub_21CB837E4();
  v18 = &v5[v2[7]];
  v19 = MEMORY[0x277CE04E8];
  *(v18 + 3) = MEMORY[0x277CE04F8];
  *(v18 + 4) = v19;
  *v18 = v17;
  v20 = v2[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v22 = &v5[v20];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v54);

  type metadata accessor for PMGroupsStore();
  sub_21C7EC408(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v23 = sub_21CB82674();
  v25 = v24;

  *v22 = v23;
  v22[1] = v25;
  v26 = &v5[v2[10]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v5[v2[11]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v2[12];
  *&v5[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v29 = v2[13];
  *&v5[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v30 = v2[14];
  *&v5[v30] = swift_getKeyPath();
  v31 = &v5[v2[5]];
  *v31 = v12;
  v31[1] = v11;
  v32 = &v5[v2[6]];
  v33 = v48;
  *v32 = v49;
  *(v32 + 1) = v33;
  v34 = &v5[v2[8]];
  v35 = v51;
  *v34 = v50;
  *(v34 + 1) = v35;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C7EC450(v5, v8, type metadata accessor for PMAccountRow);
  v36 = &v8[*(v52 + 36)];
  v37 = v59;
  *(v36 + 4) = v58;
  *(v36 + 5) = v37;
  *(v36 + 6) = v60;
  v38 = v55;
  *v36 = v54;
  *(v36 + 1) = v38;
  v39 = v57;
  *(v36 + 2) = v56;
  *(v36 + 3) = v39;
  v40 = *v10;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = (v40 & 1) == 0;
  v43 = v8;
  v44 = v53;
  sub_21C7EC4B8(v43, v53);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  v46 = (v44 + *(result + 36));
  *v46 = v41;
  v46[1] = sub_21C735744;
  v46[2] = v42;
  return result;
}

unint64_t sub_21C7EBDFC()
{
  result = qword_27CDEBC10;
  if (!qword_27CDEBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC10);
  }

  return result;
}

uint64_t sub_21C7EBE50@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7EC528();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C7EBEA0(char *a1)
{
  v2 = *a1;
  sub_21C7EC528();
  return sub_21CB82FA4();
}

uint64_t sub_21C7EBEEC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        goto LABEL_19;
      }
    }

    else if (a6 == 3)
    {
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_19:

  return sub_21CB86344();
}

unint64_t sub_21C7EBFE0()
{
  result = qword_27CDF76A0;
  if (!qword_27CDF76A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF76A0);
  }

  return result;
}

unint64_t sub_21C7EC02C()
{
  result = qword_27CDEBC40;
  if (!qword_27CDEBC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC38, &qword_21CBA3158);
    sub_21C6EADEC(&qword_27CDEBC48, &qword_27CDEBC50, &unk_21CBA3160);
    sub_21C6EADEC(&qword_27CDEBC58, &qword_27CDEBC20, &qword_21CBA3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC40);
  }

  return result;
}

unint64_t sub_21C7EC110()
{
  result = qword_27CDEBC60;
  if (!qword_27CDEBC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC18, &unk_21CBC6EF0);
    sub_21C7EC1C8();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC60);
  }

  return result;
}

unint64_t sub_21C7EC1C8()
{
  result = qword_27CDEBC68;
  if (!qword_27CDEBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC70, &qword_21CBAD0C0);
    sub_21C7EC408(&qword_27CDEBC78, type metadata accessor for PMAccountRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC68);
  }

  return result;
}

uint64_t sub_21C7EC2A8()
{
  v1 = type metadata accessor for PMAccountPickerRow();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_21C7EC314@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountPickerRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21C7EB978(a1);
}

uint64_t sub_21C7EC378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7EC3E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_21C7EC3F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_21C7EC408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7EC450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7EC4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7EC528()
{
  result = qword_27CDEBC98;
  if (!qword_27CDEBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBC98);
  }

  return result;
}

unint64_t sub_21C7EC58C()
{
  result = qword_27CDEBCA0;
  if (!qword_27CDEBCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBCA8, qword_21CBA32C0);
    sub_21C7EC02C();
    sub_21C7EC110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBCA0);
  }

  return result;
}