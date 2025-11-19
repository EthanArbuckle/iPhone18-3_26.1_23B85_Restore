id sub_227251230(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227251730(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227251C48(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227252148(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227252648(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227252B48(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227253048(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

id sub_227253548(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_227253A6C()
{
  v0 = sub_2276653D0();
  v1 = sub_2272301F0(v0);
  v2 = sub_227230E80(v1, 3, 4);

  v3 = sub_2276653C0();
  v4 = sub_2272301F0(v3);
  v5 = sub_227230E80(v4, 0, 5);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v14 = v7;
    sub_22745F2F8(v11);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227253C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v7 = sub_2276627D0();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC618, &qword_22767E108);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - v12;
  v14 = sub_227667780();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v14);
  v65 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[3];
  v67 = a3;
  v18 = __swift_project_boxed_opaque_existential_0(a3, v17);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = v18[3];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = v19;
  v28 = v20;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  swift_getKeyPath();
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v75[0] = a1;
  v75[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v29 = sub_22766C820();
  sub_226E93170(v75, v73, &unk_27D7BC990, &qword_227670A30);
  v30 = v74;
  if (v74)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v32 = *(v30 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x28223BE20](v31);
    v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v38 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8 qword_22767DC60))];

  sub_226E97D1C(v75, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v39 = v38;
  v40 = sub_22766A080();
  v42 = v41;
  MEMORY[0x22AA985C0]();
  if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v63 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v40(v75, 0);
  swift_endAccess();

  v43 = MEMORY[0x22AA99A00]();
  v44 = v75[5];
  sub_22754459C(v26, v13);
  if (v44)
  {
    objc_autoreleasePoolPop(v43);
    swift_setDeallocating();

    v45 = *(v26 + 40);

    v46 = qword_2813B2078;
    v47 = sub_22766A100();
    (*(*(v47 - 8) + 8))(v26 + v46, v47);
    v48 = *(*v26 + 48);
    v49 = *(*v26 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v43);
    swift_setDeallocating();

    v51 = *(v26 + 40);

    v52 = qword_2813B2078;
    v53 = sub_22766A100();
    (*(*(v53 - 8) + 8))(v26 + v52, v53);
    v54 = *(*v26 + 48);
    v55 = *(*v26 + 52);
    swift_deallocClassInstance();
    v57 = v70;
    v56 = v71;
    if ((*(v70 + 48))(v13, 1, v71) == 1)
    {
      sub_226E97D1C(v13, &qword_27D7BC618, &qword_22767E108);
      v58 = 1;
      v59 = v72;
    }

    else
    {
      v60 = v65;
      (*(v57 + 32))(v65, v13, v56);
      v61 = v66;
      sub_227667740();
      v59 = v72;
      sub_22714E27C(v61, v67, v72);
      (*(v68 + 8))(v61, v69);
      (*(v57 + 8))(v60, v56);
      v58 = 0;
    }

    v62 = sub_2276638D0();
    return (*(*(v62 - 8) + 56))(v59, v58, 1, v62);
  }
}

uint64_t sub_227254380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  v20 = sub_2276627D0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, a1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  v49[3] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
  sub_226E93170(v8, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226E93170(v49, v47, &unk_27D7BC990, &qword_227670A30);
  v24 = v48;
  if (v48)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v47, v48);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC528 &qword_22767DED0))];

  sub_226E97D1C(v8, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v49, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v49, 0);
  swift_endAccess();

  v37 = MEMORY[0x22AA99A00]();
  sub_227544D04(v17, v46);
  objc_autoreleasePoolPop(v37);
  swift_setDeallocating();

  v38 = *(v17 + 40);

  v39 = qword_2813B2078;
  v40 = sub_22766A100();
  (*(*(v40 - 8) + 8))(v17 + v39, v40);
  v41 = *(*v17 + 48);
  v42 = *(*v17 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_227254894@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v57 = a3;
  v54 = sub_227665CA0();
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v51 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v51 - v16;
  v17 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v21 = v17[3];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v18;
  v27 = v19;

  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  swift_getKeyPath();
  v55 = a1;
  sub_227665C40();
  v28 = sub_2276627D0();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  v61[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
  sub_226E93170(v11, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v30 = sub_22766C820();
  sub_226E93170(v61, v59, &unk_27D7BC990, &qword_227670A30);
  v31 = v60;
  if (v60)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v59, v60);
    v33 = *(v31 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v11, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v61, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v40 = v39;
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v50 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v41(v61, 0);
  swift_endAccess();

  swift_getKeyPath();
  v44 = sub_227397FC8();

  v46 = MEMORY[0x22AA99A00](v45);
  v47 = v58;
  v48 = v61[5];
  sub_227544D6C(v44, v58);
  objc_autoreleasePoolPop(v46);
  if (v48)
  {

    *v57 = v48;
  }

  else
  {

    (*(v52 + 16))(v53, v55, v54);
    sub_226E93170(v47, v51, &unk_27D7BB920, &unk_227672480);
    sub_227667CC0();
    return sub_226E97D1C(v47, &unk_27D7BB920, &unk_227672480);
  }

  return result;
}

uint64_t sub_227254EAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v383 = a1;
  v337 = a2;
  v334 = sub_2276688F0();
  v338 = *(v334 - 8);
  v2 = *(v338 + 64);
  MEMORY[0x28223BE20](v334);
  v335 = &v322 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_227664530();
  v342 = *(v341 - 8);
  v4 = *(v342 + 64);
  MEMORY[0x28223BE20](v341);
  v343 = &v322 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_227666FF0();
  v350 = *(v349 - 8);
  v6 = *(v350 + 64);
  MEMORY[0x28223BE20](v349);
  v351 = &v322 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = sub_227666B60();
  v345 = *(v360 - 8);
  v8 = *(v345 + 64);
  MEMORY[0x28223BE20](v360);
  v339 = &v322 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v340 = &v322 - v11;
  MEMORY[0x28223BE20](v12);
  v346 = &v322 - v13;
  MEMORY[0x28223BE20](v14);
  v344 = &v322 - v15;
  MEMORY[0x28223BE20](v16);
  v348 = &v322 - v17;
  MEMORY[0x28223BE20](v18);
  KeyPath = (&v322 - v19);
  v358 = sub_227665F20();
  v353 = *(v358 - 8);
  v20 = *(v353 + 64);
  MEMORY[0x28223BE20](v358);
  v352 = &v322 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_2276627D0();
  v357 = *(v359 - 8);
  v22 = v357[8];
  MEMORY[0x28223BE20](v359);
  v336 = &v322 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v347 = &v322 - v25;
  MEMORY[0x28223BE20](v26);
  v356 = &v322 - v27;
  v355 = sub_227663FA0();
  v354 = *(v355 - 8);
  v28 = *(v354 + 64);
  MEMORY[0x28223BE20](v355);
  v366 = &v322 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_227662190();
  v364 = *(v365 - 1);
  v30 = *(v364 + 64);
  MEMORY[0x28223BE20](v365);
  v363 = &v322 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v362 = &v322 - v33;
  v369 = sub_227663540();
  v368 = *(v369 - 1);
  v34 = *(v368 + 64);
  MEMORY[0x28223BE20](v369);
  v370 = &v322 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = sub_227662940();
  v372 = *(v371 - 8);
  v36 = *(v372 + 64);
  MEMORY[0x28223BE20](v371);
  v375 = &v322 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_227662750();
  v373 = *(v374 - 8);
  v38 = *(v373 + 64);
  MEMORY[0x28223BE20](v374);
  v40 = &v322 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v322 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v322 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v322 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v376 = &v322 - v52;
  v53 = sub_2276638D0();
  v377 = *(v53 - 8);
  v54 = *(v377 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v322 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22766B390();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v379 = &v322 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v322 - v62;
  sub_22766A630();
  sub_22766B370();
  v64 = *(v58 + 8);
  v65 = v63;
  v66 = v383;
  v380 = (v58 + 8);
  v381 = v57;
  v378 = v64;
  v64(v65, v57);
  v67 = v382;
  v68 = sub_226E9B790(0, 1, v66);
  if (v67)
  {
    v69 = v67;
    goto LABEL_19;
  }

  v330 = v40;
  v332 = v43;
  v331 = v46;
  v382 = v49;
  v333 = v56;
  v386[0] = v68;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  sub_226E9CFD0(&qword_281398E78, &qword_27D7BC180, &qword_2276854E0);
  v70 = sub_226E9CF88(&qword_28139BDC0, MEMORY[0x277CC9578]);
  v71 = v376;
  sub_22766C200();

  v72 = v377;

  if ((*(v72 + 48))(v71, 1, v53) == 1)
  {
    sub_226E97D1C(v71, &unk_27D7BB920, &unk_227672480);
    v73 = sub_227664EC0();
    sub_226E9CF88(&qword_28139B898, MEMORY[0x277D51210]);
    v69 = swift_allocError();
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D51188], v73);
    swift_willThrow();
    goto LABEL_19;
  }

  v75 = v53;
  v329 = v70;
  (*(v72 + 32))(v333, v71, v53);
  sub_227662740();
  sub_227662890();
  v76 = v370;
  sub_2276638B0();
  v77 = v331;
  sub_2276634F0();
  (*(v368 + 8))(v76, v369);
  sub_227663870();
  v328 = v75;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
  v78 = sub_227662930();
  v79 = *(v78 - 8);
  v327 = *(v79 + 72);
  v322 = *(v79 + 80);
  v369 = 0;
  v80 = (v322 + 32) & ~v322;
  v81 = swift_allocObject();
  v326 = xmmword_227670CD0;
  *(v81 + 16) = xmmword_227670CD0;
  v325 = *MEMORY[0x277CC9940];
  v324 = *(v79 + 104);
  v324(v81 + v80);
  sub_226F4CE68(v81);
  swift_setDeallocating();
  v323 = *(v79 + 8);
  v82 = v78;
  v323(v81 + v80, v78);
  swift_deallocClassInstance();
  v83 = v362;
  sub_2276628A0();

  v84 = sub_2276620B0();
  v86 = v85;
  v364 = *(v364 + 8);
  v87 = v83;
  v88 = v365;
  (v364)(v87, v365);
  if (v84 <= 1)
  {
    v89 = 1;
  }

  else
  {
    v89 = v84;
  }

  if (v86)
  {
    v89 = 1;
  }

  v368 = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = v326;
  v91 = v82;
  (v324)(v90 + v80, v325, v82);
  sub_226F4CE68(v90);
  v92 = v77;
  swift_setDeallocating();
  v93 = v375;
  v323(v90 + v80, v91);
  swift_deallocClassInstance();
  v94 = v363;
  sub_2276628A0();

  v95 = sub_2276620B0();
  LOBYTE(v91) = v96;
  (v364)(v94, v88);
  v97 = v95 & ~(v95 >> 63);
  if (v91)
  {
    v97 = 0;
  }

  if (v368 >= v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = v368;
  }

  v99 = sub_2276637D0();

  v376 = sub_226F491E8(v100);
  v101 = *__swift_project_boxed_opaque_existential_0(v367 + 7, v367[10]);
  v102 = v366;
  v103 = v383;
  v104 = v369;
  sub_226EAF48C(v383, v366);
  v69 = v104;
  if (v104)
  {

    v105 = *(v373 + 8);
    v106 = v374;
    v105(v332, v374);
    v105(v92, v106);
    (*(v372 + 8))(v93, v371);
    v105(v382, v106);
    goto LABEL_17;
  }

  v367 = v99;
  v364 = v98;
  sub_227663F60();
  v108 = v107;
  (*(v354 + 8))(v102, v355);
  v109 = v356;
  sub_2276637C0();
  v110 = v376;
  v111 = sub_22727227C(v109, v376, v103, v108);
  v112 = v373;
  v363 = v111;
  v369 = v357[1];
  (v369)(v109, v359);
  v113 = v347;
  sub_2276637C0();
  v124 = sub_22727FE50(v113, v110, v103, v108);
  (v369)(v113, v359);

  v365 = sub_22722FB24(v363);
  v366 = 0;
  v125 = v124 + 56;
  v126 = 1 << *(v124 + 32);
  v127 = -1;
  if (v126 < 64)
  {
    v127 = ~(-1 << v126);
  }

  v128 = v127 & *(v124 + 56);
  v129 = (v126 + 63) >> 6;
  v130 = v353;
  v376 = v353 + 16;
  v131 = (v353 + 8);

  v132 = 0;
  v369 = MEMORY[0x277D84F90];
  for (i = v352; v128; v124 = v136)
  {
LABEL_31:
    while (1)
    {
      v135 = __clz(__rbit64(v128));
      v128 &= v128 - 1;
      v136 = v124;
      (*(v130 + 16))(i, *(v124 + 48) + *(v130 + 72) * (v135 | (v132 << 6)), v358);
      v137 = v367;
      if (v367[2])
      {
        v138 = sub_226F3A6FC(i);
        if (v139)
        {
          break;
        }
      }

      (*v131)(i, v358);
      v124 = v136;
      v130 = v353;
      if (!v128)
      {
        goto LABEL_27;
      }
    }

    v140 = (v137[7] + 16 * v138);
    v141 = *v140;
    v142 = v140[1];

    v362 = sub_227667380();
    v359 = v143;

    (*v131)(i, v358);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v369 = sub_226EB3F78(0, *(v369 + 2) + 1, 1, v369);
    }

    v130 = v353;
    v145 = *(v369 + 2);
    v144 = *(v369 + 3);
    if (v145 >= v144 >> 1)
    {
      v149 = sub_226EB3F78((v144 > 1), v145 + 1, 1, v369);
      v130 = v353;
      v369 = v149;
    }

    v146 = v369;
    *(v369 + 2) = v145 + 1;
    v147 = &v146[16 * v145];
    v148 = v359;
    *(v147 + 4) = v362;
    *(v147 + 5) = v148;
    v112 = v373;
  }

  while (1)
  {
LABEL_27:
    v134 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      __break(1u);
      goto LABEL_130;
    }

    if (v134 >= v129)
    {
      break;
    }

    v128 = *(v125 + 8 * v134);
    ++v132;
    if (v128)
    {
      v132 = v134;
      goto LABEL_31;
    }
  }

  v386[0] = v365;
  sub_22745F204(v369);
  v150 = v383;
  v151 = v366;
  v152 = sub_226F86AB0(v386[0], v383);
  v69 = v151;
  if (!v151)
  {
    v155 = v152;
    v358 = v124;

    v156 = *(v155 + 16);
    v157 = MEMORY[0x277D84F90];
    v359 = v155;
    if (v156)
    {
      v369 = 0;
      v386[0] = MEMORY[0x277D84F90];
      sub_226F1EF90(0, v156, 0);
      v157 = v386[0];
      v376 = *(v345 + 16);
      v158 = v155 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
      v366 = *(v345 + 72);
      v365 = (v345 + 16);
      v159 = (v345 + 8);
      v160 = KeyPath;
      do
      {
        v161 = v360;
        (v376)(v160, v158, v360);
        v162 = sub_227666A90();
        v160 = KeyPath;
        v163 = v162;
        v165 = v164;
        (*v159)(KeyPath, v161);
        v386[0] = v157;
        v167 = *(v157 + 16);
        v166 = *(v157 + 24);
        if (v167 >= v166 >> 1)
        {
          sub_226F1EF90(v166 > 1, v167 + 1, 1);
          v160 = KeyPath;
          v157 = v386[0];
        }

        *(v157 + 16) = v167 + 1;
        v168 = v157 + 16 * v167;
        *(v168 + 32) = v163;
        *(v168 + 40) = v165;
        v158 += v366;
        --v156;
      }

      while (v156);
      v112 = v373;
      v69 = v369;
      v150 = v383;
    }

    v169 = v69;
    v170 = sub_226F7FF9C(v157, v150);
    v171 = v374;
    i = v377;
    v172 = v372;
    v173 = v371;
    v174 = v382;
    v369 = v169;
    v175 = v351;
    if (v169)
    {

      v176 = *(v112 + 8);
      v176(v332, v171);
      v176(v331, v171);
      (*(v172 + 8))(v375, v173);
      v176(v174, v171);
      (*(i + 8))(v333, v328);
      v69 = v369;
      goto LABEL_19;
    }

    v357 = v170;

    v177 = v357[2];
    if (v177)
    {
      v386[0] = MEMORY[0x277D84F90];
      v178 = v357;
      sub_226F20248(0, v177, 0);
      v179 = v386[0];
      v365 = *(v350 + 16);
      v180 = v178 + ((*(v350 + 80) + 32) & ~*(v350 + 80));
      v362 = *(v350 + 72);
      KeyPath = (v350 + 8);
      v181 = v349;
      v350 += 16;
      do
      {
        (v365)(v175, v180, v181);
        v366 = sub_227666F70();
        v376 = v182;
        v183 = sub_227666FB0();
        v181 = v349;
        v184 = v183;
        v186 = v185;
        v188 = v187;
        (*KeyPath)(v175, v349);
        v386[0] = v179;
        v190 = *(v179 + 16);
        v189 = *(v179 + 24);
        if (v190 >= v189 >> 1)
        {
          sub_226F20248((v189 > 1), v190 + 1, 1);
          v181 = v349;
          v179 = v386[0];
        }

        *(v179 + 16) = v190 + 1;
        v191 = v179 + 40 * v190;
        v192 = v376;
        *(v191 + 32) = v366;
        *(v191 + 40) = v192;
        *(v191 + 48) = v184;
        *(v191 + 56) = v186;
        *(v191 + 64) = v188 & 1;
        v180 += v362;
        --v177;
        v175 = v351;
      }

      while (v177);

      i = v377;
      v150 = v383;
    }

    else
    {

      v179 = MEMORY[0x277D84F90];
    }

    if (*(v179 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
      v193 = sub_22766D010();
    }

    else
    {
      v193 = MEMORY[0x277D84F98];
    }

    v386[0] = v193;
    v194 = v369;
    sub_226F7E3E0(v179, 1, v386);
    v195 = &v387;
    v362 = v194;
    if (v194)
    {
LABEL_139:
      v320 = *(v195 - 32);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v366 = v386[0];
    v196 = __swift_project_boxed_opaque_existential_0(v150, v150[3]);
    v197 = *v196;
    v198 = v196[1];
    LODWORD(v383) = *(v196 + 16);
    v199 = v196[3];
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
    v201 = *(v200 + 48);
    v202 = *(v200 + 52);
    v203 = swift_allocObject();
    v204 = v197;
    v205 = v198;

    v206 = MEMORY[0x277D84F90];
    sub_22766A070();
    *(v203 + 16) = v204;
    *(v203 + 24) = v205;
    *(v203 + 32) = v383;
    v365 = v203;
    *(v203 + 40) = v199;
    KeyPath = swift_getKeyPath();
    v129 = *(v359 + 16);
    v369 = v129;
    if (v129)
    {
      v383 = *(v345 + 16);
      v125 = v359 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
      v376 = *(v345 + 72);
      v207 = (v345 + 8);
      v208 = v348;
      while (1)
      {
        v209 = v360;
        (v383)(v208, v125, v360);
        i = sub_227666AA0();
        (*v207)(v208, v209);
        v210 = *(i + 16);
        v211 = *(v206 + 2);
        v212 = v211 + v210;
        if (__OFADD__(v211, v210))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v212 > *(v206 + 3) >> 1)
        {
          if (v211 <= v212)
          {
            v214 = v211 + v210;
          }

          else
          {
            v214 = v211;
          }

          v206 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v214, 1, v206);
        }

        v208 = v348;
        if (*(i + 16))
        {
          if ((*(v206 + 3) >> 1) - *(v206 + 2) < v210)
          {
            goto LABEL_132;
          }

          swift_arrayInitWithCopy();

          i = v377;
          if (v210)
          {
            v215 = *(v206 + 2);
            v216 = __OFADD__(v215, v210);
            v217 = v215 + v210;
            if (v216)
            {
              goto LABEL_134;
            }

            *(v206 + 2) = v217;
          }
        }

        else
        {

          i = v377;
          if (v210)
          {
            goto LABEL_131;
          }
        }

        v125 += v376;
        if (!--v129)
        {
          goto LABEL_76;
        }
      }

LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_76:
    v218 = sub_226F3E6A8(v206);

    v219 = sub_227230638(v218);

    v386[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v386[0] = v219;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v220 = sub_22766C820();
    sub_226E93170(v386, &v384, &unk_27D7BC990, &qword_227670A30);
    v221 = v385;
    if (v385)
    {
      v222 = __swift_project_boxed_opaque_existential_0(&v384, v385);
      v223 = *(v221 - 8);
      v224 = *(v223 + 64);
      v225 = MEMORY[0x28223BE20](v222);
      v227 = &v322 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v223 + 16))(v227, v225);
      v228 = sub_22766D170();
      (*(v223 + 8))(v227, v221);
      __swift_destroy_boxed_opaque_existential_0(&v384);
    }

    else
    {
      v228 = 0;
    }

    v229 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9088 &unk_227672D70))];

    sub_226E97D1C(v386, &unk_27D7BC990, &qword_227670A30);
    v129 = v365;
    swift_beginAccess();
    v125 = sub_22766A080();
    v231 = v230;
    MEMORY[0x22AA985C0]();
    if (*((*v231 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v231 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_138;
    }

    while (1)
    {
      sub_22766C3A0();
      (v125)(v386, 0);
      swift_endAccess();

      v232 = swift_getKeyPath();
      v233 = swift_getKeyPath();
      v234 = v362;
      sub_226F7D81C(v232, v233);
      v236 = v374;
      v125 = v359;
      if (v234)
      {

        swift_setDeallocating();

        v237 = *(v129 + 40);

        v238 = qword_2813B2078;
        v239 = sub_22766A100();
        (*(*(v239 - 8) + 8))(v129 + v238, v239);
        v240 = *(*v129 + 48);
        v241 = *(*v129 + 52);
        swift_deallocClassInstance();
        v242 = *(v373 + 8);
        v242(v332, v236);
        v242(v331, v236);
        (*(v372 + 8))(v375, v371);
        v242(v382, v236);
        (*(i + 8))(v333, v328);
        v69 = v234;
        goto LABEL_19;
      }

      v243 = v235;

      swift_setDeallocating();

      v244 = *(v129 + 40);

      v245 = qword_2813B2078;
      v246 = sub_22766A100();
      (*(*(v246 - 8) + 8))(v129 + v245, v246);
      v247 = *(*v129 + 48);
      v248 = *(*v129 + 52);
      swift_deallocClassInstance();
      v378 = sub_2271E5D20(v243);
      v376 = 0;

      if (v369)
      {
        v249 = 0;
        i = v345;
        v383 = (v125 + ((*(i + 80) + 32) & ~*(i + 80)));
        v380 = (v345 + 32);
        v381 = v345 + 16;
        v250 = (v345 + 8);
        v379 = (v345 + 40);
        v251 = MEMORY[0x277D84F98];
        v252 = v360;
        v253 = v344;
        while (1)
        {
          if (v249 >= *(v125 + 16))
          {
            goto LABEL_135;
          }

          v255 = *(i + 72);
          v129 = *(i + 16);
          (v129)(v253, v383 + v255 * v249, v252);
          v256 = sub_227666A50();
          v257 = v252;
          v125 = v256;
          v259 = v258;
          (v129)(v346, v253, v257);
          i = swift_isUniquelyReferenced_nonNull_native();
          v386[0] = v251;
          v260 = sub_226E92000(v125, v259);
          v262 = v251[2];
          v263 = (v261 & 1) == 0;
          v216 = __OFADD__(v262, v263);
          v264 = v262 + v263;
          if (v216)
          {
            goto LABEL_136;
          }

          v129 = v261;
          if (v251[3] >= v264)
          {
            if ((i & 1) == 0)
            {
              v269 = v260;
              sub_226FF41A8();
              v260 = v269;
            }
          }

          else
          {
            sub_226FEB78C(v264, i);
            v260 = sub_226E92000(v125, v259);
            if ((v129 & 1) != (v265 & 1))
            {
              sub_22766D220();
              __break(1u);
              goto LABEL_139;
            }
          }

          i = v345;
          if (v129)
          {
            v254 = v260;

            v251 = v386[0];
            v252 = v360;
            (*v379)(*(v386[0] + 56) + v254 * v255, v346, v360);
            v253 = v344;
            (*v250)(v344, v252);
          }

          else
          {
            v251 = v386[0];
            *(v386[0] + 8 * (v260 >> 6) + 64) |= 1 << v260;
            v266 = (v251[6] + 16 * v260);
            *v266 = v125;
            v266[1] = v259;
            v252 = v360;
            (*v380)(v251[7] + v260 * v255, v346, v360);
            v253 = v344;
            (*v250)(v344, v252);
            v267 = v251[2];
            v216 = __OFADD__(v267, 1);
            v268 = v267 + 1;
            if (v216)
            {
              goto LABEL_137;
            }

            v251[2] = v268;
          }

          v125 = v359;
          if (v369 == ++v249)
          {

            v125 = v333;
            v270 = v338;
            v271 = v341;
            v272 = v343;
            goto LABEL_98;
          }
        }
      }

      v251 = MEMORY[0x277D84F98];
      v125 = v333;
      v270 = v338;
      v271 = v341;
      v272 = v343;
      i = v345;
LABEL_98:
      v273 = v363 + 64;
      v274 = 1 << *(v363 + 32);
      v275 = -1;
      if (v274 < 64)
      {
        v275 = ~(-1 << v274);
      }

      v276 = v275 & *(v363 + 64);
      v277 = (v274 + 63) >> 6;
      v278 = v342;
      v383 = (v342 + 16);
      v380 = (i + 32);
      v381 = i + 16;
      v379 = (i + 8);
      i = v342 + 8;
      v369 = (v270 + 32);

      v129 = 0;
      v365 = MEMORY[0x277D84F90];
      if (v276)
      {
        break;
      }

LABEL_105:
      v279 = v363;
      while (1)
      {
        v280 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          break;
        }

        if (v280 >= v277)
        {

          MEMORY[0x28223BE20](v314);
          *(&v322 - 6) = v367;
          *(&v322 - 5) = v251;
          v315 = v378;
          *(&v322 - 4) = v366;
          *(&v322 - 3) = v315;
          v321 = v125;
          v316 = v376;
          v317 = sub_226FDF694(sub_227283A10, (&v322 - 8), v358);
          v369 = v316;

          sub_2276637C0();
          sub_2276638B0();
          v386[0] = v365;
          sub_227461640(v317);
          swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5B0, &qword_22767E080);
          sub_226E9CFD0(&qword_27D7BC5B8, &qword_27D7BC5B0, &qword_22767E080);
          sub_22766C220();

          sub_227667C50();

          v318 = *(v373 + 8);
          v319 = v374;
          v318(v332, v374);
          v318(v331, v319);
          (*(v372 + 8))(v375, v371);
          v318(v382, v319);
          return (*(v377 + 8))(v125, v328);
        }

        v276 = *(v273 + 8 * v280);
        ++v129;
        if (v276)
        {
          v129 = v280;
          goto LABEL_110;
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      sub_22766C360();
    }

    while (1)
    {
      while (1)
      {
        v279 = v363;
LABEL_110:
        v281 = __clz(__rbit64(v276));
        v276 &= v276 - 1;
        (*(v278 + 16))(v272, *(v279 + 56) + *(v278 + 72) * (v281 | (v129 << 6)), v271);
        v282 = sub_2276644F0();
        if (v251[2])
        {
          break;
        }

LABEL_103:
        v272 = v343;
        (*i)(v343, v271);
        v125 = v333;
        v278 = v342;
        if (!v276)
        {
          goto LABEL_105;
        }
      }

      v284 = sub_226E92000(v282, v283);
      v286 = v285;
      v271 = v341;

      if ((v286 & 1) == 0)
      {
        goto LABEL_103;
      }

      v287 = v345;
      v288 = v251[7] + *(v345 + 72) * v284;
      v289 = v339;
      v290 = v360;
      (*(v345 + 16))(v339, v288, v360);
      v291 = *(v287 + 32);
      v292 = v340;
      v291(v340, v289, v290);
      v293 = sub_227666A90();
      if (!*(v366 + 16))
      {

LABEL_124:
        (*v379)(v292, v360);
        goto LABEL_127;
      }

      v295 = sub_226E92000(v293, v294);
      v297 = v296;
      v292 = v340;

      if ((v297 & 1) == 0)
      {
        goto LABEL_124;
      }

      v298 = *(v366 + 56) + 24 * v295;
      v299 = *v298;
      v300 = *(v298 + 16);
      v301 = *v298;
      KeyPath = *(v298 + 8);
      LODWORD(v362) = v300;
      sub_226EB396C(v301, KeyPath, v300);
      v302 = sub_227666AA0();
      if (!v302[2] || (v303 = v302[4], v304 = v302[5], , , !*(v378 + 16)))
      {

LABEL_126:
        sub_226EB2DFC(v299, KeyPath, v362);
        (*v379)(v340, v360);
LABEL_127:
        v271 = v341;
        goto LABEL_103;
      }

      v359 = sub_226E92000(v303, v304);
      v306 = v305;

      if ((v306 & 1) == 0)
      {
        goto LABEL_126;
      }

      v307 = (*(v378 + 56) + 16 * v359);
      v308 = v307[1];
      v359 = *v307;
      v357 = v308;

      v309 = v340;
      v356 = sub_227666A50();
      v355 = v310;
      sub_227664520();
      sub_227666B40();
      v321 = v357;
      sub_2276688D0();
      (*v379)(v309, v360);
      (*i)(v343, v341);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v365 = sub_2273A69C4(0, v365[2] + 1, 1, v365);
      }

      v312 = v365[2];
      v311 = v365[3];
      if (v312 >= v311 >> 1)
      {
        v365 = sub_2273A69C4(v311 > 1, v312 + 1, 1, v365);
      }

      v313 = v365;
      v365[2] = v312 + 1;
      (*(v338 + 32))(v313 + ((*(v338 + 80) + 32) & ~*(v338 + 80)) + *(v338 + 72) * v312, v335, v334);
      v125 = v333;
      v271 = v341;
      v278 = v342;
      v272 = v343;
      if (!v276)
      {
        goto LABEL_105;
      }
    }
  }

  v153 = *(v112 + 8);
  v154 = v374;
  v153(v332, v374);
  v153(v331, v154);
  (*(v372 + 8))(v375, v371);
  v153(v382, v154);
LABEL_17:
  (*(v377 + 8))(v333, v328);
LABEL_19:
  v114 = v379;
  sub_22766A630();
  v115 = v69;
  v116 = sub_22766B380();
  v117 = sub_22766C890();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v386[0] = v119;
    *v118 = 136315138;
    swift_getErrorValue();
    v120 = sub_22766D250();
    v122 = sub_226E97AE8(v120, v121, v386);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_226E8E000, v116, v117, "Failed to create workout plan snapshot: %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x22AA9A450](v119, -1, -1);
    MEMORY[0x22AA9A450](v118, -1, -1);
  }

  (v378)(v114, v381);
  return swift_willThrow();
}

uint64_t sub_227257CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a6;
  v72 = a5;
  v73 = a4;
  v12 = sub_227665440();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227662750();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_227666B60();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v65 - v25;
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

  v67 = v23;
  v68 = v24;
  v65[1] = a1;
  v27 = sub_226F3A6FC(a1);
  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

  v65[2] = v7;
  v66 = a7;
  v29 = (*(a2 + 56) + 16 * v27);
  v30 = *v29;
  v31 = v29[1];

  v32 = sub_227667380();
  v34 = v33;

  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v35 = sub_226E92000(v32, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_12:
    v62 = 1;
    a7 = v66;
    goto LABEL_17;
  }

  v38 = *(a3 + 56);
  v39 = v68;
  v40 = v38 + *(v68 + 72) * v35;
  v41 = v67;
  (*(v68 + 16))(v21, v40, v67);
  (*(v39 + 32))(v26, v21, v41);
  v42 = sub_227666A90();
  v44 = v73;
  if (!*(v73 + 16))
  {

LABEL_14:
    a7 = v66;
    goto LABEL_15;
  }

  v45 = sub_226E92000(v42, v43);
  v47 = v46;

  a7 = v66;
  if ((v47 & 1) == 0)
  {
LABEL_15:
    (*(v68 + 8))(v26, v67);
LABEL_16:
    v62 = 1;
    goto LABEL_17;
  }

  v48 = *(v44 + 56) + 24 * v45;
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = *(v48 + 16);
  sub_226EB396C(*v48, v50, *(v48 + 16));
  v52 = sub_227666AA0();
  if (!v52[2])
  {
    (*(v68 + 8))(v26, v67);
    sub_226EB2DFC(v49, v50, v51);

    goto LABEL_16;
  }

  v65[0] = v50;
  LODWORD(v73) = v51;
  v54 = v52[4];
  v53 = v52[5];

  v55 = v72;
  if (!*(v72 + 16))
  {
    sub_226EB2DFC(v49, v65[0], v73);

    goto LABEL_15;
  }

  v56 = sub_226E92000(v54, v53);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
    sub_226EB2DFC(v49, v65[0], v73);
    goto LABEL_14;
  }

  v59 = (*(v55 + 56) + 16 * v56);
  v60 = *v59;
  v61 = v59[1];

  sub_227666A50();
  sub_227665F00();
  sub_227663830();
  (*(v69 + 8))(v15, v70);
  sub_227666B40();
  a7 = v66;
  sub_2276688D0();
  (*(v68 + 8))(v26, v67);
  v62 = 0;
LABEL_17:
  v63 = sub_2276688F0();
  return (*(*(v63 - 8) + 56))(a7, v62, 1, v63);
}

id sub_2272581A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v65 = sub_227662750();
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_227667730();
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v61 = &v54 - v12;
    v62 = v17;
    v55 = (v4 + 8);
    v56 = (v4 + 32);
    v60 = v9;
    do
    {
      v18 = MEMORY[0x277D52F50];
      sub_2272838E4(v16, v13, MEMORY[0x277D52F50]);
      sub_2272838E4(v13, v9, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *v9;
        swift_getKeyPath();
        v20 = sub_227664ED0();
        v69 = MEMORY[0x277D83B88];
        v68[0] = v20;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v21 = sub_22766C820();
        sub_226E93170(v68, v66, &unk_27D7BC990, &qword_227670A30);
        v22 = v67;
        if (v67)
        {
          v23 = __swift_project_boxed_opaque_existential_0(v66, v67);
          v24 = *(v22 - 8);
          v25 = *(v24 + 64);
          v26 = MEMORY[0x28223BE20](v23);
          v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v24 + 16))(v28, v26);
          v29 = sub_22766D170();
          (*(v24 + 8))(v28, v22);
          v9 = v60;
          v13 = v61;
          __swift_destroy_boxed_opaque_existential_0(v66);
        }

        else
        {
          v29 = 0;
        }

        v45 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230, qword_22767D000));
        [v46 initWithLeftExpression:v21 rightExpression:v45 modifier:0 type:v58 options:0];
      }

      else
      {
        (*v56)(v64, v9, v65);
        swift_getKeyPath();
        v30 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v31 = sub_2276626A0();
        v32 = [v30 stringFromDate_];

        v33 = sub_22766C000();
        v35 = v34;

        v69 = MEMORY[0x277D837D0];
        v68[0] = v33;
        v68[1] = v35;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v36 = sub_22766C820();
        sub_226E93170(v68, v66, &unk_27D7BC990, &qword_227670A30);
        v37 = v67;
        if (v67)
        {
          v38 = __swift_project_boxed_opaque_existential_0(v66, v67);
          v59 = &v54;
          v39 = *(v37 - 8);
          v40 = *(v39 + 64);
          v41 = MEMORY[0x28223BE20](v38);
          v43 = &v54 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v39 + 16))(v43, v41);
          v44 = sub_22766D170();
          (*(v39 + 8))(v43, v37);
          v9 = v60;
          __swift_destroy_boxed_opaque_existential_0(v66);
        }

        else
        {
          v44 = 0;
        }

        v47 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230, qword_22767D000));
        [v48 initWithLeftExpression:v36 rightExpression:v47 modifier:0 type:v57 options:0];

        (*v55)(v64, v65);
        v13 = v61;
      }

      sub_22728394C(v13);
      v49 = sub_226E97D1C(v68, &unk_27D7BC990, &qword_227670A30);
      MEMORY[0x22AA985C0](v49);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v16 += v62;
      --v15;
    }

    while (v15);
    v14 = v70;
  }

  if (v14 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_18;
    }

LABEL_20:

    return 0;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_18:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v51 = sub_22766C2B0();

  v52 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v52;
}

uint64_t sub_227258904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC568, &unk_22767DF80);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSyncZoneChangeWindow();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283434, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC570, &qword_22767DF90);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedDirtySyncZone();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272834C0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC558, &qword_22767DF08);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSyncOperation();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272833A8, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227258EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B0, &qword_22767DB48);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedRecentSearchTerm();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22727DB24, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272590B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC428, &unk_22767DAC0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277894, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272592A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728455C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272844FC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetEntry();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728452C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundle();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272845BC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetResumableLoad();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728418C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetEntry();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277808, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227259E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlan();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728446C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D8, &unk_22767DD40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22727DC6C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272845EC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D8, &qword_22767E0A8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCompletedMarketingVideo();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283C14, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B8, &qword_22767DB50);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22727DBB0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E0, &qword_22767E0B0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEngagementBadge();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283CA0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogModalityReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277D44, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedMusicGenre();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277C68, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC460, &qword_22767DAF8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedTrainerReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277B50, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC468, &qword_22767DB00);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTheme();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277BDC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C0, &qword_22767E088);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSessionScores();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283A70, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F8, &unk_22767DE20);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedUpNextQueueItem();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282DE0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC508, &qword_22767DE40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipJournal();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282EBC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC488, &qword_22767DB20);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEquipment();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277DD0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC498, &qword_22767DB30);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogMetadataJournal();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277E5C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC478, &qword_22767DB10);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogModalityMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277CF4, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC458, &qword_22767DAF0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedTrainerMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277AC4, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725BED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBodyFocus();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277A38, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSkillLevel();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272779AC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC440, &qword_22767DAD8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227277920, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272844CC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogProgramReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283ED0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725C870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E8, &qword_22767E0B8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogThemeCategory();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283D2C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F0, &unk_22767E0C0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipCategoryReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283DB8, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227284330, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAchievementEnvironmentCache();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282E30, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC418, &unk_22767DAB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAudioLanguagePreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22727777C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC600, &unk_22767E0D8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedSampleContentArchivedSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283E44, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC598, &qword_22767DFB8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728377C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC588, &qword_22767DFA8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283664, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC590, &qword_22767DFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitWorkout();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272836F0, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5A0, &unk_22767DFC0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitMindfulSession();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283808, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227284074, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetRequestKeyMetadata();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227284100, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC520, qword_22767DE58);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedOnboardingSurveyResult();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283060, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C8, &qword_22767E090);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedRecommendation();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283AFC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D0, &qword_22767E098);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogSyncAnchor();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283B88, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEstimatedCalories();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272835D8, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC578, &qword_22767DF98);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedHealthKitActivityType();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728354C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedEstimatedCalories();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728449C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725EB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlan();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v23 = result;
  v15 = sub_22766CD20();
  result = v23;
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](result);
        v24[2] = v21;
        v24[3] = v13;
        v24[4] = a3;
        v24[5] = a4;
        v24[6] = a1;

        a2 = sub_226E9C8CC(v22, sub_227283894, v24, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F0, &qword_22767DE18);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282D54, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC530, &qword_22767DED8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedWorkoutPlanTemplate();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272830EC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC540, &qword_22767DEE8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBurnBarDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283204, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC538, &qword_22767DEE0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedMetricsDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283178, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC510, &qword_22767DE48);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedProgressDisplayPreference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282F48, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetResumableLoad();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728458C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC550, &qword_22767DEF8);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedBookmark();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728331C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC548, &qword_22767DEF0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedPlaylist();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283290, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC518, &qword_22767DE50);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedPrivacyAcknowledgement();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227282FD4, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22725FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogWorkoutReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283FE8, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22726002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC610, &unk_22767E0F0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedCatalogTipReference();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227283F5C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A0, &qword_22767DB38);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAchievementNotificationRecord();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22727DA98, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC628, &qword_22767E158);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_227284218, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272605F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundle();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272842A4, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272607DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundleLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_22728461C, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2272609C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v10 = *(a1 + *(v9 + 32));
  v11 = *(a1 + *(v9 + 28));
  type metadata accessor for ManagedAssetBundleLoadFailure();
  v12 = sub_22766C9E0();
  if (v4)
  {
    return a2;
  }

  v13 = v12;
  if ([v11 fetchBatchSize] < 1)
  {
    result = 100;
    if (!(v13 >> 62))
    {
LABEL_4:
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_5;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = [v11 fetchBatchSize];
    if (!(v13 >> 62))
    {
      goto LABEL_4;
    }
  }

  v22 = result;
  v15 = sub_22766CD20();
  result = v22;
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v15 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_21;
  }

  v17 = v15 / result;
  v18 = v15 / result * result;
  if ((v15 / result * result) >> 64 == v18 >> 63)
  {
    v19 = v18 != v15;
    v20 = v17 + v19;
    if (!__OFADD__(v17, v19))
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        v23[2] = MEMORY[0x28223BE20](result);
        v23[3] = v13;
        v23[4] = a3;
        v23[5] = a4;
        v23[6] = a1;

        a2 = sub_226E9C8CC(v21, sub_2272843BC, v23, 0, v20);

LABEL_17:
        [v10 reset];
        return a2;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227260BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(void), void (*a9)(void), uint64_t *a10, uint64_t *a11)
{
  v19 = a2 * a3;
  v20 = (a2 * a3) >> 64;
  if (v20 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = v19 + a3;
  if (__OFADD__(v19, a3))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = a8;
  v14 = a7;
  v16 = a4;
  v15 = a1;
  v35 = a5;
  v20 = a4 & 0xFFFFFFFFFFFFFF8;
  v13 = a4 >> 62;
  if (!(a4 >> 62))
  {
    v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v21)
    {
      v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17 < v19)
    {
      goto LABEL_44;
    }

    if (v21 >= v19)
    {
      goto LABEL_8;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  if (v16 < 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v20;
  }

  v33 = sub_22766CD20();
  if (v17 >= v33)
  {
    v17 = v33;
  }

  if (v17 < v19)
  {
    goto LABEL_44;
  }

  if (sub_22766CD20() < v19)
  {
    goto LABEL_43;
  }

LABEL_8:
  if (v19 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v13)
  {
    v22 = sub_22766CD20();
  }

  else
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 < v17)
  {
    goto LABEL_46;
  }

  if (v17 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = v14;
  if ((v16 & 0xC000000000000001) != 0 && v19 != v17)
  {
    if (v19 < v17)
    {
      v18(0);

      v23 = v19;
      do
      {
        v24 = v23 + 1;
        sub_22766CE60();
        v23 = v24;
      }

      while (v17 != v24);
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v13)
  {
LABEL_20:
    v16 &= 0xFFFFFFFFFFFFFF8uLL;
    v18 = (v16 + 32);
    v11 = (2 * v17) | 1;
    goto LABEL_23;
  }

LABEL_22:

  v23 = sub_22766CFE0();
  v16 = v23;
  v18 = v25;
  v19 = v26;
  v11 = v27;
LABEL_23:
  v17 = MEMORY[0x22AA99A00](v23);
  if ((v11 & 1) == 0)
  {
LABEL_24:
    sub_22726CF90(v16, v18, v19, v11, a9);
    v29 = v28;
    goto LABEL_31;
  }

  sub_22766D1D0();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v11 >> 1, v19))
  {
    goto LABEL_49;
  }

  if (v31 != (v11 >> 1) - v19)
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

LABEL_31:
  v35(v15, v29);

  objc_autoreleasePoolPop(v17);
  if (!v12)
  {
    [*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a10 a11) + 32))];
  }

  return swift_unknownObjectRelease();
}

void sub_227260E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC568, &unk_22767DF80);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC568, &unk_22767DF80, type metadata accessor for ManagedSyncZoneChangeWindow);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272833F8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC570, &qword_22767DF90);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC570, &qword_22767DF90, type metadata accessor for ManagedDirtySyncZone);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283484, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC558, &qword_22767DF08);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC558, &qword_22767DF08, type metadata accessor for ManagedSyncOperation);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728336C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B0, &qword_22767DB48);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4B0, &qword_22767DB48, type metadata accessor for ManagedRecentSearchTerm);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DAE8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC428, &unk_22767DAC0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC428, &unk_22767DAC0, type metadata accessor for ManagedAssetRequestMediaStreamMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277858, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726180C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC430, &unk_22767FFB0, type metadata accessor for ManagedAssetRequestKeyMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284544, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272619F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC438, &qword_22767DAD0, type metadata accessor for ManagedAssetRequestReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272844E4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}