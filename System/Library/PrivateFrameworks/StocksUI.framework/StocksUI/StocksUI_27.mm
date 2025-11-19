uint64_t sub_220784158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 60));
  v5 = sub_22088DDDC();
  v6 = *(*(v5 - 8) + 104);
  v7 = MEMORY[0x277D6EA88];
  if (v4)
  {
    v7 = MEMORY[0x277D6EA80];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t sub_2207841F4()
{
  sub_2207842B4(&qword_2812812B0);

  return sub_22088D90C();
}

uint64_t sub_2207842B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedMastheadViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2207842F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v65 = a2;
  v4 = sub_22088B28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220884E9C();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v69 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2208878AC();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v66 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208877BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v64 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v64 - v26;
  v28 = sub_22088743C();
  v73 = *(v28 - 8);
  v74 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v72 = (v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31, v32);
  v34 = v64 - v33;
  v76 = a1;
  if (sub_22074BA08())
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D6D6F8], v4);
    sub_2208889AC();
    return (*(v5 + 8))(v8, v4);
  }

  v36 = v77[6];
  v64[1] = v77[7];
  v64[0] = __swift_project_boxed_opaque_existential_1(v77 + 3, v36);
  v37 = MEMORY[0x277D2FBB0];
  sub_22047A344(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_220899360;
  sub_2208877AC();
  v78 = v38;
  v39 = MEMORY[0x277D2FBB0];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_22047A344(0, &qword_27CF5A410, v37, MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207872A0(&qword_27CF59858, v39);
  sub_22089167C();
  sub_2207872A0(&qword_27CF5A880, v39);
  sub_220892A8C();
  (*(v16 + 16))(v19, v23, v15);
  sub_2208923DC();
  v40 = *(v16 + 8);
  v40(v23, v15);
  v41 = v76;
  sub_2208875FC();
  v40(v27, v15);
  v43 = v72;
  v42 = v73;
  v44 = v74;
  (*(v73 + 16))(v72, v34, v74);
  v45 = (*(v42 + 88))(v43, v44);
  v46 = v34;
  if (v45 == *MEMORY[0x277D2F978])
  {
    goto LABEL_4;
  }

  v50 = v77;
  if (v45 == *MEMORY[0x277D2F968])
  {
    (*(v42 + 96))(v43, v44);
    __swift_project_boxed_opaque_existential_1(v50 + 8, v50[11]);
    sub_220887F0C();
    (*(v42 + 8))(v34, v44);
    return (*(v70 + 8))(v43, v71);
  }

  if (v45 == *MEMORY[0x277D2F960])
  {
    (*(v42 + 96))(v43, v44);
    v52 = *v43;
    v51 = v43[1];
    sub_220786F34();
    v54 = 48;
LABEL_11:
    v55 = *(v53 + v54);
    v56 = sub_220887C9C();
    (*(*(v56 - 8) + 8))(v43 + v55, v56);
    v58 = v66;
    v57 = v67;
    v59 = v65;
    v60 = v68;
    (*(v67 + 16))(v66, v65, v68);
    v61 = (*(v57 + 88))(v58, v60);
    if (v61 == *MEMORY[0x277D2FC50])
    {
      sub_2207856A4(v52, v51, v50[13]);
    }

    else
    {
      if (v61 != *MEMORY[0x277D2FC58] && v61 != *MEMORY[0x277D2FC40] && v61 != *MEMORY[0x277D2FC48])
      {

        (*(v42 + 8))(v46, v44);
        return (*(v67 + 8))(v66, v68);
      }

      sub_220784FB0(v52, v51, v59);
    }

    return (*(v42 + 8))(v46, v44);
  }

  if (v45 == *MEMORY[0x277D2F970])
  {
    (*(v42 + 96))(v43, v44);
    v52 = *v43;
    v51 = v43[1];

    sub_220786E8C();
    v54 = 64;
    goto LABEL_11;
  }

  if (v45 == *MEMORY[0x277D2F958])
  {
    (*(v42 + 8))(v43, v44);
LABEL_23:
    sub_220784D20(v41, v34);
    return (*(v42 + 8))(v46, v44);
  }

  if (v45 == *MEMORY[0x277D2F950])
  {
    (*(v42 + 96))(v43, v44);

    sub_220786FA0();
    sub_220787240(v43 + *(v62 + 48), &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A344);
    goto LABEL_23;
  }

  if (v45 == *MEMORY[0x277D2F948])
  {
LABEL_4:
    (*(v42 + 96))(v43, v44);
    v48 = v69;
    v47 = v70;
    v49 = v71;
    (*(v70 + 32))(v69, v43, v71);
    sub_220784D20(v48, v34);
    (*(v47 + 8))(v48, v49);
    return (*(v42 + 8))(v46, v44);
  }

  v63 = *(v42 + 8);
  v63(v34, v44);
  return (v63)(v43, v44);
}

void sub_220784D20(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088743C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_220884E3C();
  sub_2205CE854(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2207872A0(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
  v9 = sub_22089125C();

  v10 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v4 + 32))(v12 + v11, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2207872E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2206B2490;
  aBlock[3] = &block_descriptor_41;
  v13 = _Block_copy(aBlock);

  [v7 openURL:v8 options:v9 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_220784FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v53 = a3;
  v3 = sub_2208878AC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088D1DC();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v56 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v57 = &v52 - v11;
  v66 = sub_220887C9C();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x277CC9260];
  v64 = MEMORY[0x277D83D88];
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v52 - v18;
  v63 = sub_2208874DC();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v62, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204481D8();
  v60 = *(v26 + 48);
  v27 = &v25[*(v26 + 64)];
  v28 = sub_220884E9C();
  v29 = *(*(v28 - 8) + 56);
  v29(v19, 1, 1, v28);

  v30 = v25;
  sub_2208874CC();
  v29(v19, 1, 1, v28);
  v31 = v66;
  (*(v12 + 104))(v15, *MEMORY[0x277D2FF08], v66);
  sub_22088764C();
  (*(v12 + 8))(v15, v31);
  sub_220787240(v19, &qword_2812994E0, v65, v64, sub_22047A344);
  (*(v61 + 8))(v22, v63);
  v32 = v68;
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v30 + v60) = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v32 + 120), *(v32 + 144));
  v33 = sub_22088B89C();
  if (v33)
  {
    v34 = v33;
    v35 = v54;
    v36 = v52;
    v37 = v55;
    (*(v54 + 16))(v52, v53, v55);
    v38 = (*(v35 + 88))(v36, v37);
    v39 = v57;
    if (v38 == *MEMORY[0x277D2FC50])
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1((v32 + 120), *(v32 + 144));
      v40 = v34;
      sub_22088B8AC();

      v41 = MEMORY[0x277D6E598];
      v42 = v56;
LABEL_11:
      v50 = v58;
      v49 = v59;
      (*(v58 + 104))(v42, *v41, v59);
      (*(v50 + 32))(v39, v42, v49);
      sub_22088B01C();

      (*(v50 + 8))(v39, v49);
      return sub_2205BA954(v30);
    }

    if (v38 == *MEMORY[0x277D2FC58])
    {
      __swift_project_boxed_opaque_existential_1((v32 + 120), *(v32 + 144));
      v43 = v34;
      v44 = sub_22088B8AC();

      v42 = v56;
      *v56 = v44;
      v41 = MEMORY[0x277D6E588];
      goto LABEL_11;
    }

    if (v38 == *MEMORY[0x277D2FC40])
    {
      __swift_project_boxed_opaque_existential_1((v32 + 120), *(v32 + 144));
      v45 = v34;
      v46 = sub_22088B8AC();

      v42 = v56;
      *v56 = 0;
      v42[1] = v46;
    }

    else
    {
      if (v38 != *MEMORY[0x277D2FC48])
      {
        (*(v35 + 8))(v36, v37);
        goto LABEL_3;
      }

      __swift_project_boxed_opaque_existential_1((v32 + 120), *(v32 + 144));
      v47 = v34;
      v48 = sub_22088B8AC();
      v42 = v56;
      *v56 = v34;
      v42[1] = v48;
    }

    v41 = MEMORY[0x277D6E590];
    goto LABEL_11;
  }

  return sub_2205BA954(v30);
}

uint64_t sub_2207856A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v54 = a2;
  v55 = a1;
  v4 = MEMORY[0x277D83D88];
  v52 = MEMORY[0x277D83D88];
  sub_22047A344(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  MEMORY[0x28223BE20](v8, v9);
  v60 = &v45 - v10;
  v53 = sub_220887C9C();
  v11 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277CC9260];
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v45 - v17;
  v49 = sub_2208874DC();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v48, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v3 + 112);
  sub_2204481D8();
  v46 = *(v25 + 48);
  v26 = &v24[*(v25 + 64)];
  v27 = sub_220884E9C();
  v28 = *(*(v27 - 8) + 56);
  v28(v18, 1, 1, v27);

  sub_2208874CC();
  v28(v18, 1, 1, v27);
  v29 = v53;
  (*(v11 + 104))(v14, *MEMORY[0x277D2FF08], v53);
  sub_22088764C();
  (*(v11 + 8))(v14, v29);
  sub_220787240(v18, &qword_2812994E0, v51, v52, sub_22047A344);
  (*(v47 + 8))(v21, v49);
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *&v24[v46] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v30 = sub_22088969C();
  (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = v50;
  sub_2207870E8(v66, &v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (v62)
  {
    sub_220458198(&v61, v63);
    v31 = sub_220597454(v63);
    v33 = v32;
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_220787240(&v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v31 = qword_2812908F8;
    v33 = qword_281290900;
    v35 = qword_281290908;

    sub_2204A80F4(v33);
  }

  v62 = sub_22088731C();
  v36 = v59;
  *&v61 = v59;
  v37 = v58;
  sub_2207870E8(v60, v58, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047A344);
  sub_2207870E8(v68, v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v38 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v39 = (v56 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  sub_2205A0994(v37, v40 + v38);
  v41 = v40 + v39;
  v42 = v63[1];
  *v41 = v63[0];
  *(v41 + 16) = v42;
  *(v41 + 32) = v64;
  v43 = (v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v43 = v31;
  v43[1] = v33;
  v43[2] = v35;
  swift_retain_n();

  sub_2204A80F4(v33);
  sub_2204549FC();
  sub_2207872A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v33);
  sub_220787240(v66, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_220787240(v68, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220787240(v60, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047A344);
  sub_2205BA954(v24);
  return sub_220787240(&v61, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204B1F2C);
}

uint64_t sub_2207860E4(uint64_t a1)
{
  v79 = a1;
  v2 = sub_220887C9C();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A344(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v72 = &v66 - v7;
  v73 = sub_2208874DC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v78, v10);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v81 = &v66 - v14;
  v15 = sub_2208877BC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088743C();
  v82 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v66 - v26;
  v28 = v1[6];
  v80 = v1[7];
  v77 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v28);
  v83 = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  v29 = v79;
  sub_2208923FC();
  sub_2208875FC();
  v30 = v19;
  v31 = v20;
  v32 = v82;
  (*(v16 + 8))(v30, v15);
  v33 = *(v32 + 16);
  v80 = v27;
  v34 = v27;
  v35 = v23;
  v33(v23, v34, v31);
  v36 = (*(v32 + 88))(v23, v31);
  if (v36 == *MEMORY[0x277D2F960])
  {
    v37 = *(v32 + 96);
    v69 = v31;
    v37(v23, v31);
    v38 = *(v23 + 1);
    v79 = *v23;
    v68 = v38;
    sub_220786F34();
    v40 = 48;
LABEL_5:
    v43 = *(v39 + v40);
    v45 = v75;
    v44 = v76;
    v66 = *(v75 + 8);
    v66(&v23[v43], v76);
    v83 = v77[14];
    v46 = v83;
    sub_2204481D8();
    v67 = *(v47 + 48);
    v48 = v81;
    v49 = v81 + *(v47 + 64);
    v50 = sub_220884E9C();
    v51 = *(*(v50 - 8) + 56);
    v52 = v72;
    v51(v72, 1, 1, v50);
    v77 = v46;

    v53 = v70;
    sub_2208874CC();
    v51(v52, 1, 1, v50);
    v54 = v74;
    (*(v45 + 104))(v74, *MEMORY[0x277D2FF08], v44);
    sub_22088764C();
    v66(v54, v44);
    sub_220787240(v52, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A344);
    (*(v71 + 8))(v53, v73);
    *(v48 + v67) = 0;
    type metadata accessor for StocksActivity.Article(0);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2204549FC();
    sub_2207872A0(&unk_281297EC0, sub_2204549FC);
    v55 = sub_22088E94C();
    v56 = v69;
    sub_2205BA954(v81);

    (*(v82 + 8))(v80, v56);
    return v55;
  }

  if (v36 == *MEMORY[0x277D2F970])
  {
    v41 = *(v32 + 96);
    v69 = v31;
    v41(v23, v31);
    v42 = *(v23 + 1);
    v79 = *v23;
    v68 = v42;

    sub_220786E8C();
    v40 = 64;
    goto LABEL_5;
  }

  if ((sub_220884DBC() & 1) != 0 && (v58 = sub_220884E3C(), v59 = [v58 fc_isNewsURL], v58, (v59 & 1) == 0))
  {
    v83 = v77[14];
    sub_22061013C();
    v62 = *(v61 + 48);
    v63 = sub_220884E9C();
    v64 = v69;
    (*(*(v63 - 8) + 16))(v69, v29, v63);
    *(v64 + v62) = 0;
    swift_storeEnumTagMultiPayload();
    sub_2204549FC();
    sub_2207872A0(&unk_281297EC0, sub_2204549FC);

    v55 = sub_22088E94C();
    sub_2205BA954(v64);

    v65 = *(v32 + 8);
    v65(v80, v31);
    v65(v35, v31);
  }

  else
  {
    v60 = *(v32 + 8);
    v60(v80, v31);
    v60(v35, v31);
    return 0;
  }

  return v55;
}

uint64_t sub_220786A00()
{
  MEMORY[0x223D8B910](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_220786A68(uint64_t a1)
{
  v2 = sub_2208877BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208878AC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277D2FC50], v7, v10);
  v14[1] = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207842F8(a1, v12, v6);
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_220786CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208877BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = MEMORY[0x277D84F90];
  sub_2207872A0(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
  sub_22047A344(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2207842F8(a1, a2, v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_220786E8C()
{
  if (!qword_27CF599D0)
  {
    sub_2204B1F2C(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_220887C9C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF599D0);
    }
  }
}

void sub_220786F34()
{
  if (!qword_27CF599E0)
  {
    sub_220887C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF599E0);
    }
  }
}

void sub_220786FA0()
{
  if (!qword_27CF59860)
  {
    sub_22047A344(255, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59860);
    }
  }
}

uint64_t sub_22078703C(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((result + 64), *(result + 88));

      sub_220887F0C();
    }
  }

  return result;
}

uint64_t sub_2207870E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22078715C(uint64_t a1)
{
  sub_22047A344(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_220787240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2207872A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207872E8(char a1)
{
  sub_22088743C();

  return sub_22078703C(a1);
}

char *sub_22078735C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_2207889D8(0, &qword_27CF56D60, sub_22057E51C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - v13;
  v15 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceLabel;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceChangeLabel;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_22057E588();
  v23 = objc_allocWithZone(v22);

  *&v5[v20] = sub_22088BB5C();
  v5[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected] = 0;
  v5[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlightable] = 1;
  v5[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted] = 0;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel];
  v26 = v24;
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  [v26 addSubview_];
  v28 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  [v26 addSubview_];
  [v26 addSubview_];
  [v26 addSubview_];
  v29 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  [v26 addSubview_];
  [*&v26[v27] setNumberOfLines_];
  [*&v26[v28] setNumberOfLines_];
  [*&v26[v29] setClipsToBounds_];
  sub_22088F0DC();

  return v26;
}

uint64_t sub_2207877F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078783C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2207878F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078793C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void sub_220787A24()
{
  sub_2207883A8(&qword_28128F7B0);

  JUMPOUT(0x223D86790);
}

uint64_t sub_220787AB0()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  if (objc_msgSendSuper2(&v15, sel_isAccessibilityElement))
  {
    v1 = [objc_opt_self() currentRequest];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 technology];

      sub_2207889D8(0, &qword_28127DE98, type metadata accessor for AccessibilityTechnology, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 32) = *MEMORY[0x277CB8880];
      *(inited + 16) = xmmword_220899920;
      v5 = *MEMORY[0x277CB8890];
      *(inited + 40) = *MEMORY[0x277CB8890];
      v14 = v3;
      MEMORY[0x28223BE20](inited, v6);
      v13[2] = &v14;
      v8 = v7;
      v9 = v5;
      v10 = sub_2206A3C78(sub_22078871C, v13, inited);
      swift_setDeallocating();
      type metadata accessor for AccessibilityTechnology(0);
      swift_arrayDestroy();

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_220787CD8()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, sel_accessibilityTraits);
  sub_22088BB3C();
  if (v5 == 2)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    v3 = sub_2208928BC();

    if ((v3 & 1) == 0)
    {
LABEL_2:
      if ((*MEMORY[0x277D76598] & v1) != 0)
      {
        return v1 & ~*MEMORY[0x277D76598];
      }

      else
      {
        return v1;
      }
    }
  }

  else
  {
  }

  v4 = *MEMORY[0x277D76598];
  if ((*MEMORY[0x277D76598] & ~v1) == 0)
  {
    v4 = 0;
  }

  return v4 | v1;
}

uint64_t sub_220787FC0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v16, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    sub_22044D56C(0, &unk_281299868);
    v3 = sub_2208916EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v17 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v6 = [objc_opt_self() configurationWithPointSize_];
  v7 = sub_22089132C();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(MEMORY[0x277D75088]);

  v11 = sub_22089132C();

  aBlock[4] = sub_220788714;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22060CBAC;
  aBlock[3] = &block_descriptor_42;
  v12 = _Block_copy(aBlock);
  [v10 initWithName:v11 image:v8 actionHandler:v12];

  _Block_release(v12);

  MEMORY[0x223D89870](v13);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  return v17;
}

uint64_t sub_2207883A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSearchCellView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2207883E8()
{
  v0 = sub_2208854AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_22044D56C(0, &qword_27CF59750);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (![v10 isKindOfClass_])
    {
      v12 = [v10 superview];

      v10 = v12;
      if (!v12)
      {
        return 0;
      }
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v23 = v1;
      sub_22044D56C(0, &qword_28127E820);
      v15 = swift_getObjCClassFromMetadata();
      v10 = v10;
      v16 = v10;
      while (![v16 isKindOfClass_])
      {
        v17 = [v16 superview];

        v16 = v17;
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {

        return 0;
      }

      v19 = v18;
      v20 = [v18 indexPathForCell_];
      if (v20)
      {
        v21 = v20;
        sub_22088545C();

        v22 = v23;
        (*(v23 + 32))(v8, v4, v0);
        if ([v19 delegate])
        {
          sub_22088D15C();
          if (swift_dynamicCastClass())
          {
            sub_22088D13C();
            swift_unknownObjectRelease();

            (*(v22 + 8))(v8, v0);
            return 1;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v22 + 8))(v8, v0);
        return 0;
      }
    }

LABEL_10:

    return 0;
  }

  return result;
}

void sub_22078873C()
{
  v1 = v0;
  sub_2207889D8(0, &qword_27CF56D60, sub_22057E51C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_symbolLabel;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_nameLabel;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_exchangeLabel;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceLabel;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_priceChangeLabel;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_22057E588();
  objc_allocWithZone(v13);

  *(v1 + v11) = sub_22088BB5C();
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelectable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlightable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI19StockSearchCellView_isHighlighted) = 0;
  sub_22089267C();
  __break(1u);
}

void sub_2207889D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220788A4C()
{
  sub_2205A9918();
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2208AB1B0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE28], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D6DE48], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D6DE50], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D6DE30], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277D6DE58], v0);
  v7 = sub_2207E15E8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_220788C1C(uint64_t a1, void (*a2)(char *))
{
  sub_22051D794(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_220525DD8();
  v11 = *(v10 + 48);
  sub_22051D794(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D850];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF48], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220788DEC()
{
  result = qword_281281F48;
  if (!qword_281281F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281F48);
  }

  return result;
}

uint64_t _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(uint64_t a1)
{
  v2 = sub_22088BA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088685C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088BA4C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  sub_22088E4CC();
  v23[1] = sub_22088E4BC();
  sub_22088678C();
  v18 = sub_220884E9C();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  (*(v8 + 16))(v11, a1, v7);
  sub_22088BA3C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v21 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x277D6D9A8], v2);
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B10C();
}

uint64_t sub_22078925C(uint64_t a1)
{
  v2 = sub_22088BE7C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088BA4C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_22088E4CC();
  sub_22088E4BC();
  sub_22088678C();
  v15 = sub_220884E9C();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  (*(v5 + 16))(v8, a1, v4);
  sub_22088BA3C();
  sub_22089132C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v18 = [objc_opt_self() ts_link];
  sub_22088BE6C();
  sub_22088B25C();
  swift_allocObject();
  return sub_22088B24C();
}

uint64_t sub_2207895A8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a3;
  sub_22046B36C();
  sub_22088AD8C();
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_2204AE454(v13, type metadata accessor for StockListModel);
      __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
      return sub_22078040C();
    }
  }

  else
  {
    sub_2204CDB9C(v13, v9);
    __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
    v16 = sub_2208276B0();
    v18 = v14;
    sub_22077F41C(v9, v16, &v18);

    return sub_2204AE454(v9, type metadata accessor for StockListStockModel);
  }

  return result;
}

uint64_t sub_22078974C(uint64_t a1)
{
  sub_22046D664(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2204D59E8(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      return sub_22057E664(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v12 = *MEMORY[0x277D76488];
      sub_22088C71C();
      v13 = sub_22088BFCC();

      v14 = sub_22088544C();
      v15 = [v13 cellForItemAtIndexPath_];

      UIAccessibilityPostNotification(v12, v15);
      swift_unknownObjectRelease();

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_22078997C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_renderer), *(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_renderer + 24));
    v4 = sub_2204A28F0();
    v2 = *v1;
    sub_2204CF368();
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      sub_22087D43C();
    }

    sub_22088BA7C();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_220789A70()
{
  v0 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_220888FEC();

    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC8StocksUI23StockListViewController_activeWatchlistProvider), *(v5 + OBJC_IVAR____TtC8StocksUI23StockListViewController_activeWatchlistProvider + 24));
    sub_2208863EC();
    v6 = sub_220886A4C();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_220766FCC(v3);
    swift_unknownObjectRelease();
    return sub_2204AE454(v3, type metadata accessor for StockSearchMode);
  }

  return result;
}

uint64_t sub_220789BE4()
{
  v0 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    swift_unknownObjectRetain();
    sub_220888FEC();

    v5 = sub_220886A4C();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_220766FCC(v3);
    swift_unknownObjectRelease();
    return sub_2204AE454(v3, type metadata accessor for StockSearchMode);
  }

  return result;
}

uint64_t sub_220789D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055E050(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078A05C(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  sub_22088E83C();
  sub_22078A05C(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v9, 1, v14) == 1)
  {
    v17 = sub_22055E01C;
    v18 = v9;
LABEL_5:
    sub_22078A150(v18, v17);
    v22 = sub_22088676C();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  sub_22088B3AC();
  (*(v16 + 8))(v9, v15);
  sub_22055D328();
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v13, 1, v19) == 1)
  {
    v17 = sub_22055E050;
    v18 = v13;
    goto LABEL_5;
  }

  sub_22088AD8C();
  (*(v21 + 8))(v13, v20);
  sub_2207A8350(a1);
  return sub_22078A150(v5, type metadata accessor for StockFeedModel);
}

void sub_22078A05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_22044456C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_22044456C(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22078A150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall WelcomeModule.createViewController()(UIViewController *__return_ptr retstr)
{
  v2 = sub_22088A07C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277D68FC0], v2, v5);
  sub_22088721C();
  (*(v3 + 8))(v7, v2);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver), *(v1 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();

  v8 = sub_2208884AC();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22078A330(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

id WelcomeModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WelcomeModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22078A644()
{
  v1 = sub_22088A07C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  (*(v2 + 104))(v6, *MEMORY[0x277D68FC0], v1, v4);
  sub_22088721C();
  (*(v2 + 8))(v6, v1);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver), *(v7 + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();

  v8 = sub_2208884AC();

  if (v8)
  {

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22078A7E0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208854FC();
  v12 = MEMORY[0x28223BE20](v10, v11);
  (*(v14 + 104))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D69120], v12);
  (*(v6 + 104))(v9, *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  sub_22078AA64();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298FB0 = result;
  return result;
}

void sub_22078AA64()
{
  if (!qword_281298CE8)
  {
    sub_2208854FC();
    sub_22078AAC8();
    v0 = sub_220886C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298CE8);
    }
  }
}

unint64_t sub_22078AAC8()
{
  result = qword_2812993B8;
  if (!qword_2812993B8)
  {
    sub_2208854FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812993B8);
  }

  return result;
}

unint64_t sub_22078AB48()
{
  result = qword_27CF598C8;
  if (!qword_27CF598C8)
  {
    type metadata accessor for BilingualFeedCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF598C8);
  }

  return result;
}

void sub_22078AB9C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v3, v3);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  sub_220885E3C();
  (*(v4 + 8))(v7, v2);
  sub_22046DA2C(v1 + 16, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_220885E4C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v10 = sub_22089132C();

  MEMORY[0x223D8ADB0](v10);
}

uint64_t sub_22078ADA4(uint64_t a1)
{
  v3 = sub_2208877BC();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v60 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088743C();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220884E9C();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v66 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088685C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078C150(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v57 - v28;
  v70 = &unk_283496E68;
  v30 = swift_dynamicCastObjCProtocolConditional();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  swift_unknownObjectRetain();
  sub_22078B634(v31, v1, v29);
  v59 = v29;
  sub_220576A98(v29, v25);
  v32 = (*(v18 + 48))(v25, 1, v17);
  v58 = v1;
  if (v32 != 1)
  {
    v57[1] = a1;
    (*(v18 + 32))(v21, v25, v17);
    v69 = *(*(v1 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_router) + 112);
    sub_2205DE35C();
    v34 = *(v33 + 48);
    (*(v18 + 16))(v16, v21, v17);
    *&v16[v34] = 0;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2204549FC();
    sub_22078C108(&unk_281297EC0, sub_2204549FC);

    sub_22088E94C();
    sub_2205BA954(v16);

    v55 = objc_allocWithZone(sub_22088C0BC());
    v38 = sub_22088C0AC();
    swift_unknownObjectRelease();
    (*(v18 + 8))(v21, v17);
LABEL_13:
    sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
    return v38;
  }

  sub_22078C1B4(v25, &qword_281299060, MEMORY[0x277D69810]);
  v35 = v58;
  v36 = [v31 URL];
  v37 = v66;
  sub_220884E4C();

  v38 = sub_2207860E4(v37);
  v39 = v68 + 8;
  v40 = *(v68 + 8);
  v40(v37, v67);
  if (v38)
  {
    v41 = *(v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler + 24);
    v58 = *(v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler + 32);
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_handler), v41);
    v42 = [v31 URL];
    v68 = v39;
    v43 = v42;
    sub_220884E4C();

    v69 = MEMORY[0x277D84F90];
    sub_22078C108(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
    sub_22078C150(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    sub_22055F7F4();
    v44 = v60;
    v45 = v62;
    sub_2208923FC();
    v46 = v65;
    sub_2208875FC();
    (*(v61 + 8))(v44, v45);
    v40(v37, v67);
    v48 = v63;
    v47 = v64;
    v49 = (*(v63 + 88))(v46, v64);
    if (v49 == *MEMORY[0x277D2F960])
    {
      (*(v48 + 96))(v46, v47);

      sub_220786F34();
      v51 = 48;
    }

    else
    {
      if (v49 != *MEMORY[0x277D2F970])
      {
        sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
        swift_unknownObjectRelease();
        (*(v48 + 8))(v46, v47);
        return v38;
      }

      (*(v48 + 96))(v46, v47);

      sub_220786E8C();
      v51 = 64;
    }

    v52 = *(v50 + v51);
    v53 = sub_220887C9C();
    (*(*(v53 - 8) + 8))(&v46[v52], v53);
    v54 = objc_allocWithZone(sub_22088C0BC());
    v38 = sub_22088C0AC();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  sub_22078C1B4(v59, &qword_281299060, MEMORY[0x277D69810]);
  swift_unknownObjectRelease();
  return v38;
}

uint64_t sub_22078B634@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a2;
  v37 = a3;
  v4 = sub_2208887CC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22078C150(0, &qword_281298898, MEMORY[0x277D6CBF0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v31 - v9;
  v11 = sub_22088880C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220884E9C();
  v17 = [a1 URL];
  sub_220884E4C();

  sub_220888A0C();
  swift_allocObject();
  sub_2208889EC();
  v18 = MEMORY[0x277D84560];
  sub_22078C150(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_220888A9C();
  v19 = swift_allocObject();
  v36 = xmmword_220899360;
  *(v19 + 16) = xmmword_220899360;
  sub_22078C150(0, &qword_28127E140, MEMORY[0x277D6CCA0], v18);
  v20 = *(sub_220888A2C() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v36;
  v23 = (v22 + v21);
  *v23 = 0x6C6F626D7973;
  v23[1] = 0xE600000000000000;
  (*(v20 + 104))();
  sub_2205CEF04(MEMORY[0x277D84F90]);
  sub_220888A3C();
  sub_2208889FC();

  (*(v12 + 56))(v10, 0, 1, v11);
  v25 = v32;
  (*(v12 + 32))(v32, v10, v11);
  v26 = v33;
  sub_2208887EC();
  v27 = sub_2208887BC();
  v29 = v28;
  (*(v34 + 8))(v26, v35);
  if (v29)
  {
    v38 = v27;
    v39 = v29;

    sub_220888D3C();

    (*(v12 + 8))(v25, v11);
  }

  else
  {
    (*(v12 + 8))(v25, v11);

    v24 = sub_22088685C();
    return (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  }
}

uint64_t sub_22078BDC0()
{
  v1 = sub_2208877BC();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208878AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220884E9C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &unk_283496E68;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v15 = result;
    v17[1] = *(v0 + OBJC_IVAR____TtC8StocksUI21ActionPreviewActivity_router);
    swift_unknownObjectRetain();
    v16 = [v15 URL];
    sub_220884E4C();

    (*(v6 + 104))(v9, *MEMORY[0x277D2FC50], v5);
    v20 = MEMORY[0x277D84F90];
    sub_22078C108(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
    sub_22078C150(0, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    sub_22055F7F4();
    sub_2208923FC();
    sub_2207842F8(v13, v9, v4);
    swift_unknownObjectRelease();
    (*(v19 + 8))(v4, v1);
    (*(v6 + 8))(v9, v5);
    return (*(v10 + 8))(v13, v18);
  }

  return result;
}

uint64_t sub_22078C108(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22078C150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22078C1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22078C150(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22078C274()
{

  return swift_deallocClassInstance();
}

void *sub_22078C2B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_22078C2F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_22078C390()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *sub_22078C4B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = Strong;
  v2 = [objc_opt_self() currentRequest];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 technology];

    v5 = sub_22089136C();
    v7 = v6;
    if (v5 == sub_22089136C() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_2208928BC();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v11 = *&v1[OBJC_IVAR____TtC8StocksUI9StockView_axElement];
  if (v11)
  {
    v12 = type metadata accessor for StockView.StockViewAXElement();
  }

  else
  {
    v12 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v11;
  v22[3] = v12;
  v14 = v11;
  sub_2205BF038(v22, &v20);
  v18[0] = v20;
  v18[1] = v21;
  if (*(&v21 + 1))
  {
    sub_2204A62A4(v18, v19);
    v13 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_220588200(0, *(v13 + 2) + 1, 1, v13);
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_220588200((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    sub_2204A62A4(v19, &v13[32 * v16 + 32]);
  }

  else
  {
    sub_22056D130(v18);
    v13 = MEMORY[0x277D84F90];
  }

  sub_22056D130(v22);

  return v13;
}

id sub_22078C6DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_2208916DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_22078C960()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel);

    v4 = [v3 text];
    if (v4)
    {
      v5 = sub_22089136C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v47 = v5;
    v48 = v7;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel);

    v11 = [v10 text];
    if (v11)
    {
      v12 = sub_22089136C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v49 = v12;
    v50 = v14;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong);

    v18 = [v17 text];
    if (v18)
    {
      v19 = sub_22089136C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v51 = v19;
    v52 = v21;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v24 = *(v22 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel);
    v23 = *(v22 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel + 8);
    v25 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v53 = v24;
  v54 = v23;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v28 = *(v26 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName);
    v27 = *(v26 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName + 8);
    v29 = v26;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v55 = v28;
  v56 = v27;
  isUniquelyReferenced_nonNull_native = [v0 accessibilityLabel];
  if (isUniquelyReferenced_nonNull_native)
  {
    v32 = isUniquelyReferenced_nonNull_native;
    v33 = sub_22089136C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = 0;
  v57 = v33;
  v58 = v35;
  v37 = MEMORY[0x277D84F90];
  do
  {
    v38 = *(&v48 + v36 * 8);
    if (v38)
    {
      v39 = v46[v36 + 6];
      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v46[0] = v46[v36 + 6];
        v46[1] = v38;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v31);
        v45[2] = v46;

        if (sub_2206A3BCC(sub_2205AB898, v45, v37))
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22045E924(0, *(v37 + 16) + 1, 1, v37);
            v37 = isUniquelyReferenced_nonNull_native;
          }

          v42 = *(v37 + 16);
          v41 = *(v37 + 24);
          if (v42 >= v41 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22045E924((v41 > 1), v42 + 1, 1, v37);
            v37 = isUniquelyReferenced_nonNull_native;
          }

          *(v37 + 16) = v42 + 1;
          v43 = v37 + 16 * v42;
          *(v43 + 32) = v39;
          *(v43 + 40) = v38;
        }
      }
    }

    v36 += 2;
  }

  while (v36 != 12);
  sub_2204D05C8(0, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  return v37;
}

uint64_t sub_22078CDB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(Strong + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
  v2 = Strong;
  sub_2204A80F4(v1);

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1();
  sub_2204DA45C(v1);
  return v3;
}

uint64_t sub_22078CFB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [*(Strong + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong) text];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    v4 = 0;
  }

  v6 = [*&v1[OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel] text];
  if (!v6)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v42 = v4;
  v7 = v6;
  sub_22089136C();

  sub_22078E05C(0, &qword_28127DE80, sub_2204A5D84);
  inited = swift_initStackObject();
  v9 = *MEMORY[0x277D76508];
  *(inited + 32) = *MEMORY[0x277D76508];
  v41 = xmmword_220899360;
  *(inited + 16) = xmmword_220899360;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = v9;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  sub_22078E05C(0, &qword_28127DE98, type metadata accessor for AccessibilityTechnology);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277CB88B0];
  *(v11 + 32) = *MEMORY[0x277CB88B0];
  v13 = *MEMORY[0x277CB88A0];
  *(v11 + 40) = *MEMORY[0x277CB88A0];
  v14 = objc_opt_self();
  v15 = v12;
  v16 = v13;
  v17 = [v14 currentRequest];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 technology];

    v43 = v19;
    MEMORY[0x28223BE20](v20, v21);
    v40[2] = &v43;
    LOBYTE(v18) = sub_2206A3C78(sub_22078871C, v40, v11);
    swift_setDeallocating();
    type metadata accessor for AccessibilityTechnology(0);
    swift_arrayDestroy();
    if (v18)
    {
      if (!v1[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType])
      {

        v23 = swift_initStackObject();
        *(v23 + 16) = v41;
        v24 = *MEMORY[0x277D76518];
        *(v23 + 32) = *MEMORY[0x277D76518];
        *(v23 + 64) = MEMORY[0x277D839B0];
        *(v23 + 40) = 1;
        v25 = v24;
        sub_2204A5EAC(v23);
        swift_setDeallocating();
        sub_2205613E0(v23 + 32);
        sub_2208913EC();

        goto LABEL_16;
      }

      if (v1[OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType] != 1)
      {

        sub_2204A5EAC(MEMORY[0x277D84F90]);
      }
    }
  }

  else
  {
    swift_setDeallocating();
    type metadata accessor for AccessibilityTechnology(0);
    swift_arrayDestroy();
  }

LABEL_16:
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_22049F468(&qword_28127E6A8, 255, type metadata accessor for Key);
  v28 = sub_22089125C();

  v22 = [v26 initWithString:v27 attributes:v28];

  v4 = v42;
LABEL_17:
  sub_22088E00C();
  if (v43 != 2 && (v43 & 1) != 0 && (v29 = [*&v1[OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel] text]) != 0)
  {
    v30 = v29;
    v31 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_22089132C();
  v34 = [v32 initWithString_];

  sub_22078E05C(0, &qword_28127DE88, sub_2204DD854);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22089B140;
  *(v35 + 32) = v4;
  *(v35 + 40) = v22;
  *(v35 + 48) = v31;
  v36 = v31;
  v37 = v4;
  v38 = v22;
  v5 = sub_22088AD2C();

  return v5;
}

uint64_t sub_22078D550()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, , v1, sub_22088E00C(), , v20 == 2) || (v20 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
    v5 = [*(result + OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton) accessibilityLabel];
    if (v5)
    {
      v6 = v5;
      v7 = [*&v3[v4] accessibilityValue];
      if (v7)
      {
        v8 = v7;
        v9 = *&v3[OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString];
        if (v9)
        {
          v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v11 = v9;
          v12 = sub_22089132C();
          v13 = [v10 initWithString_];

          sub_22078E05C(0, &qword_28127DE88, sub_2204DD854);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_22089B140;
          *(v14 + 32) = v9;
          v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v16 = v11;
          v17 = [v15 initWithString_];

          *(v14 + 40) = v17;
          v18 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

          *(v14 + 48) = v18;
          v19 = sub_22088AD2C();

          return v19;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_22078D818(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22078D968()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

id sub_22078DA14(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_sparklineView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_priceLabel) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) setAlpha_];
  v4 = 1.0 - a2;
  [*(a1 + OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel) setAlpha_];
  v5 = *(a1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong);

  return [v5 setAlpha_];
}

void sub_22078DAE4(uint64_t a1, uint64_t a2)
{
  sub_22049F468(&qword_28127EE30, a2, type metadata accessor for StockView);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22078DB50()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_sparklineView);
  v3 = sub_220890CCC();
  [v3 setImage_];

  v4 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  v5 = 0.0;
  [*&v2[OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer] setFrame_];
  [*&v2[v4] setPath_];
  v6 = *(v1 + OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton);
  v7 = *&v6[OBJC_IVAR____TtCC8StocksUI9StockView17PriceChangeButton_onTap];

  sub_22088E00C();
  if (v10 != 2)
  {
    if (v10)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (v10)
    {
      v5 = 1.0;
    }

    [v2 setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_priceLabel) setAlpha_];
    [v6 setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel) setAlpha_];
    [*(v1 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong) setAlpha_];
  }

  return sub_22088E02C();
}

uint64_t sub_22078DD14()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_revision;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22078DD5C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI9StockView_revision;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

id sub_22078DE90()
{
  sub_22088E03C();
  if (v4 != 1)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel) text];
  if (result)
  {
    v2 = result;
    v3 = sub_22089136C();

    return v3;
  }

  return result;
}

unint64_t sub_22078DFE8()
{
  result = qword_27CF59B40;
  if (!qword_27CF59B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59B40);
  }

  return result;
}

void sub_22078E05C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22078E0B0()
{
  v0 = sub_22089136C();
  v2 = v1;
  if (v0 == sub_22089136C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2208928BC();
  }

  return v5 & 1;
}

void sub_22078E140()
{
  v1 = OBJC_IVAR____TtC8StocksUI9StockView_symbolLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI9StockView_companyLabelLong;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI9StockView_exchangeLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI9StockView_priceLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8StocksUI9StockView_priceChangeButton;
  *(v0 + v6) = sub_2204D673C();
  v7 = OBJC_IVAR____TtC8StocksUI9StockView_sparklineView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for StockSparklineView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_axElement) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_revision) = 0;
  v8 = OBJC_IVAR____TtC8StocksUI9StockView_isEditing;
  sub_2204D05C8(0, &qword_2812971A0, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(v0 + v8) = sub_22088DFFC();
  v9 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_makeAccessibilityCustomActions);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityPriceString) = 0;
  v10 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyLabel);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilityUserInputCompanyName);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI9StockView_accessibilitySymbolLabelSpeechType) = 1;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_22078E398@<X0>(uint64_t a1@<X8>)
{
  v40 = sub_22089226C();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C20C();
  v7 = v6;
  sub_22088C20C();
  v9 = v8;
  sub_22088C21C();
  v11 = v10;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = sub_220561394();
  v15 = v13;
  v16 = sub_220891F2C();
  *(inited + 64) = v14;
  *(inited + 40) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  sub_22089224C();
  v21 = sub_220891F2C();
  v22 = [objc_opt_self() configurationWithFont_];

  sub_2208920DC();
  sub_22089216C();
  v23 = sub_22089132C();
  v24 = [objc_opt_self() systemImageNamed_];

  sub_22089223C();
  sub_22089218C();
  sub_22089213C();
  result = sub_22089222C();
  if (result)
  {
    v26 = result;
    result = sub_2208920CC();
    if (result)
    {
      v27 = result;
      v28 = v11 - v7 - v9;
      v29 = [v26 imageWithConfiguration_];

      [v29 size];
      sub_22089212C();
      sub_22089215C();
      sub_220891D9C();
      v31 = v30;
      sub_22089215C();
      v34 = v28 + v32 + v33;
      sub_22089215C();
      v37 = v31 + v35 + v36;
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = v34;
      v41.size.height = v37;
      Height = CGRectGetHeight(v41);

      *a1 = Height;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = v34;
      *(a1 + 32) = v37;
      WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes();
      return (*(v2 + 32))(a1 + *(WatchlistViewLayoutAttributes + 24), v5, v40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double UIEdgeInsets.macUnscaled.getter()
{
  sub_22088736C();
  v1 = v0;
  sub_22088736C();
  sub_22088736C();
  sub_22088736C();
  return v1;
}

uint64_t sub_22078E808()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_22078E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_2208854FC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x277D69120])
  {
    v13 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
    v14 = sub_22088509C();
    v15 = [v13 stringFromDate_];

    v16 = sub_22089136C();
    v18 = v17;

    v64 = v16;
    v65 = v18;
    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v19 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v20 = sub_22088509C();
    v21 = [v19 stringFromDate_];

    v22 = sub_22089136C();
    v24 = v23;

    MEMORY[0x223D89680](v22, v24);

    MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
    v25 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter);
    v26 = sub_22088509C();
    v27 = [v25 stringFromDate_];
LABEL_5:
    v46 = v27;

    v47 = sub_22089136C();
    v49 = v48;

    MEMORY[0x223D89680](v47, v49);

    return v64;
  }

  if (v12 == *MEMORY[0x277D69128])
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_22089254C();
    v28 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
    v29 = sub_22088509C();
    v30 = [v28 stringFromDate_];

    v31 = sub_22089136C();
    v33 = v32;

    v64 = v31;
    v65 = v33;
    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v34 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v35 = sub_22088509C();
    v36 = [v34 stringFromDate_];

    v37 = sub_22089136C();
    v39 = v38;

    MEMORY[0x223D89680](v37, v39);

    MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
    v40 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter);
    v41 = sub_22088509C();
    v42 = [v40 stringFromDate_];

    v43 = sub_22089136C();
    v45 = v44;

    MEMORY[0x223D89680](v43, v45);

    MEMORY[0x223D89680](8236, 0xE200000000000000);
    v25 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter);
    v26 = sub_22088509C();
    v27 = [v25 stringFromDate_];
    goto LABEL_5;
  }

  v51 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
  v52 = sub_22088509C();
  v53 = [v51 stringFromDate_];

  v54 = sub_22089136C();
  v56 = v55;

  v64 = v54;
  v65 = v56;
  MEMORY[0x223D89680](0x209380E220, 0xA500000000000000);
  v57 = *(v4 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter);
  v58 = sub_22088509C();
  v59 = [v57 stringFromDate_];

  v60 = sub_22089136C();
  v62 = v61;

  MEMORY[0x223D89680](v60, v62);

  v63 = v64;
  (*(v7 + 8))(v11, v6);
  return v63;
}

uint64_t sub_22078EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  v11 = *MEMORY[0x277D69120];
  v12 = *MEMORY[0x277D69128];
  v13 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter, &selRef_setDateStyle_, 2);
  v33[1] = a1;
  v14 = sub_22088509C();
  v15 = [v13 stringFromDate_];

  v16 = sub_22089136C();
  v18 = v17;

  if (v10 == v11 || v10 == v12)
  {
    v20 = v18;
    v21 = sub_22078F120(&OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter, &selRef_setTimeStyle_, 1);
    v22 = sub_22088509C();
    v23 = [v21 stringFromDate_];

    v24 = sub_22089136C();
    v26 = v25;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_220899920;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_22048D860();
    *(v29 + 32) = v16;
    *(v29 + 40) = v20;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 64) = v31;
    *(v29 + 72) = v24;
    *(v29 + 80) = v26;
    v16 = sub_22089133C();
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }

  return v16;
}

id sub_22078F120(uint64_t *a1, SEL *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v9 *a2];
    v10 = v3;
    v11 = sub_2208853FC();
    [v9 setTimeZone_];

    v12 = *(v3 + v4);
    *(v10 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

uint64_t sub_22078F1E0()
{
  v1 = OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone;
  v2 = sub_22088543C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCalloutDateFormatter()
{
  result = qword_281285780;
  if (!qword_281285780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22078F2F0()
{
  result = sub_22088543C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_22078F38C()
{
  v1 = v0;
  sub_220790790(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v99 = v94 - v4;
  v5 = sub_22088CA0C();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v98 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220886A4C();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v102 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220790790(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v100 = (v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v17 = v94 - v16;
  v18 = type metadata accessor for StockViewModel();
  v101 = *(v18 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v106 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v94 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = v94 - v27;
  v29 = type metadata accessor for StockSearchLayoutModel();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576F2C();
  sub_22088BC3C();
  sub_220496328();
  v34 = *(v33 + 48);
  v35 = &v32[*(v33 + 64)];
  v125 = *(v35 + 28);
  v36 = *(v35 + 13);
  v123 = *(v35 + 12);
  v124 = v36;
  v37 = *(v35 + 11);
  v121 = *(v35 + 10);
  v122 = v37;
  v38 = *(v35 + 9);
  v119 = *(v35 + 8);
  v120 = v38;
  v39 = *(v35 + 7);
  v117 = *(v35 + 6);
  v118 = v39;
  v40 = *(v35 + 5);
  v115 = *(v35 + 4);
  v116 = v40;
  v41 = *(v35 + 1);
  v111 = *v35;
  v112 = v41;
  v42 = *(v35 + 3);
  v113 = *(v35 + 2);
  v114 = v42;
  v105 = v28;
  sub_22050381C(v32, v28);
  v107 = v17;
  sub_2207907E4(&v32[v34], v17);
  sub_220790864();
  v43 = sub_220891C1C();
  v44 = [v43 backgroundView];
  if (v44)
  {
    v45 = v44;
    swift_beginAccess();
    v46 = v1[7];
    v47 = v1[8];
    v48 = __swift_project_boxed_opaque_existential_1(v1 + 4, v46);
    v95 = v94;
    v49 = v43;
    v50 = *(v46 - 8);
    v51 = MEMORY[0x28223BE20](v48, v48);
    v53 = v94 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v53, v51);
    v54 = (*(*(v47 + 16) + 56))(v46);
    (*(v50 + 8))(v53, v46);
    v43 = v49;
    [v45 setBackgroundColor_];
  }

  sub_22078FE68(v43);
  v55 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v56 = v105;
  sub_220527BCC(v105, v24);
  sub_220527BCC(v24, v106);
  v57 = (*(v101 + 80) + 24) & ~*(v101 + 80);
  v58 = (v19 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v1;
  sub_22050381C(v24, v59 + v57);
  v60 = v59 + v58;
  v61 = v124;
  *(v60 + 192) = v123;
  *(v60 + 208) = v61;
  *(v60 + 224) = v125;
  v62 = v120;
  *(v60 + 128) = v119;
  *(v60 + 144) = v62;
  v63 = v122;
  *(v60 + 160) = v121;
  *(v60 + 176) = v63;
  v64 = v116;
  *(v60 + 64) = v115;
  *(v60 + 80) = v64;
  v65 = v118;
  *(v60 + 96) = v117;
  *(v60 + 112) = v65;
  v66 = v112;
  *v60 = v111;
  *(v60 + 16) = v66;
  v67 = v114;
  *(v60 + 32) = v113;
  *(v60 + 48) = v67;
  *(v59 + ((v58 + 239) & 0xFFFFFFFFFFFFFFF8)) = v55;
  swift_unownedRetain();
  v101 = v55;

  v68 = sub_22088C45C();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_2207908F8;
  *(v69 + 24) = v59;

  v70 = sub_22088C3FC();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_2207908F8;
  *(v71 + 24) = v59;

  v72 = sub_22088C40C();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_2207908F8;
  *(v73 + 24) = v59;

  v74 = v100;
  sub_2205B7424(v107, v100);
  v76 = v103;
  v75 = v104;
  if ((*(v103 + 48))(v74, 1, v104) == 1)
  {
    sub_2204AA93C(v74, &qword_281298FF0, MEMORY[0x277D698E0]);
  }

  else
  {
    v77 = v102;
    (*(v76 + 32))(v102, v74, v75);
    v78 = sub_22088C42C();
    v95 = *&v78[OBJC_IVAR____TtC8StocksUI19StockSearchCellView_watchlistSelectionButton];

    v79 = v1[11];
    v94[1] = v1[12];
    v94[2] = v79;
    (*(v96 + 104))(v98, *MEMORY[0x277D6E0F8], v97);
    v80 = v1[13];
    v109 = sub_22088731C();
    v110 = sub_220790994(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v108 = v80;
    v126 = 0u;
    v127 = 0u;
    v128 = 1;
    sub_22088C4DC();
    swift_allocObject();

    v98 = sub_22088C4BC();
    v81 = v99;
    (*(v76 + 16))(v99, v77, v104);
    v82 = type metadata accessor for WatchlistMembershipCommandContext(0);
    v100 = v1;
    v83 = v43;
    v84 = *(v82 + 20);
    v85 = sub_22088685C();
    v86 = *(v85 - 8);
    (*(v86 + 16))(v81 + v84, v105, v85);
    v87 = v81 + v84;
    v43 = v83;
    (*(v86 + 56))(v87, 0, 1, v85);
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    v88 = v95;
    sub_22088BB7C();

    v56 = v105;
    sub_2204AA93C(v81, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    (*(v76 + 8))(v102, v104);
  }

  swift_unownedRetainStrong();
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v90 = sub_22088C42C();

  v91 = swift_unknownObjectUnownedLoadStrong();
  sub_22088C3EC();

  v92 = v106;
  sub_22083D978(v106, &v111, v90, 0);

  swift_unknownObjectRelease();
  swift_unownedRelease();

  sub_2204EFAD0(v92);
  sub_2204AA93C(v107, &qword_281298FF0, MEMORY[0x277D698E0]);
  sub_2204EFAD0(v56);

  return v43;
}

uint64_t sub_22078FE68(void *a1)
{
  v3 = sub_22088B8CC();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v42 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22088DDFC();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C5AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088C3CC();
  swift_beginAccess();
  v15 = v1[7];
  v16 = v1[8];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 4, v15);
  v18 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17, v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v19);
  v22 = (*(*(v16 + 16) + 112))(v15);
  (*(v18 + 8))(v21, v15);
  [v14 setBackgroundColor_];

  v23 = sub_22088C3CC();
  sub_22088C59C();

  v24 = sub_22088C3CC();
  (*(v10 + 104))(v13, *MEMORY[0x277D6DEE8], v9);
  sub_22088C5BC();

  [a1 setFocusEffect_];
  v25 = sub_22088C3CC();
  sub_22088C58C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = [Strong presentingViewController];
    v28 = [v27 splitViewController];
    swift_unknownObjectRelease();
  }

  v29 = v39;
  sub_22088DDEC();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D6EAA0];
  v32 = v41;
  v30[5] = v41;
  v30[6] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30 + 2);
  v34 = v40;
  (*(v40 + 16))(boxed_opaque_existential_1, v29, v32);
  v36 = v42;
  v35 = v43;
  *v42 = v30;
  (*(v35 + 104))(v36, *MEMORY[0x277D6D928], v44);
  sub_22088C41C();
  return (*(v34 + 8))(v29, v32);
}

void sub_2207902BC(uint64_t a1, uint64_t a2, double *a3)
{
  swift_unownedRetainStrong();
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_22088C42C();

  v6 = swift_unknownObjectUnownedLoadStrong();
  sub_22088C3EC();

  sub_22083D978(a2, a3, v7, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_220790378()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_220790408@<X0>(void *a1@<X8>)
{
  result = sub_22078F38C();
  *a1 = result;
  return result;
}

uint64_t sub_220790438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_22079054C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 horizontalSizeClass] == 2)
  {
    sub_2204D62A8();
    v6 = *(v4 + 48);
    sub_22088DF4C();
  }

  else
  {
    sub_2204D62A8();
    v6 = *(v5 + 48);
    sub_22088DF3C();
  }

  swift_beginAccess();
  v7 = v2[7];
  v8 = v2[8];
  v9 = __swift_project_boxed_opaque_existential_1(v2 + 4, v7);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v9, v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  v14 = (*(*(v8 + 16) + 176))(v7);
  (*(v10 + 8))(v13, v7);
  *(a2 + v6) = v14;
  v15 = *MEMORY[0x277D6EAE0];
  v16 = sub_22088DEBC();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

void sub_220790790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2207907E4(uint64_t a1, uint64_t a2)
{
  sub_220790790(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220790864()
{
  if (!qword_281297958)
  {
    type metadata accessor for StockSearchCellView();
    sub_220790994(&qword_28128F7B0, type metadata accessor for StockSearchCellView);
    v0 = sub_22088C46C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297958);
    }
  }
}

void sub_2207908F8()
{
  v1 = *(type metadata accessor for StockViewModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2207902BC(v3, v0 + v2, v4);
}

uint64_t sub_220790994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207909DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220889FFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088A20C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    v28 = v8;
    v29 = v5;
    v30 = v4;
    v31 = v10;
    v32 = a2;
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v16 = v18;
    v19 = *MEMORY[0x277D34DD8];
    v20 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    while (1)
    {
      v16(v14, v20, v9, v12);
      if ((*(v17 + 72))(v14, v9) == v19)
      {
        break;
      }

      (*(v17 - 8))(v14, v9);
      v20 += v21;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    (*(v31 + 96))(v14, v9);
    v23 = *v14;
    v24 = v14[2];

    if (!v24)
    {
LABEL_11:
      v22 = 1;
      a2 = v32;
      goto LABEL_12;
    }

    if (v23 < 0x16 && ((0x3DFFFFu >> v23) & 1) != 0)
    {
      (*(v29 + 104))(v28, **(&unk_27844A710 + v23), v30);
      a2 = v32;
      sub_220889FCC();
      v22 = 0;
      goto LABEL_12;
    }

    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    v22 = 1;
LABEL_12:
    v25 = sub_220889FEC();
    return (*(*(v25 - 8) + 56))(a2, v22, 1, v25);
  }

  return result;
}

uint64_t sub_220790CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088A0EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088A20C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  if (!v14)
  {
    v21 = 1;
LABEL_12:
    v26 = sub_22088A0DC();
    return (*(*(v26 - 8) + 56))(a2, v21, 1, v26);
  }

  v29 = v7;
  v30 = a2;
  v28 = v9;
  v17 = *(v9 + 16);
  v15 = v9 + 16;
  v16 = v17;
  v18 = *MEMORY[0x277D34DE0];
  v19 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v20 = *(v15 + 56);
  while (1)
  {
    v16(v13, v19, v8, v11);
    if ((*(v15 + 72))(v13, v8) == v18)
    {
      break;
    }

    (*(v15 - 8))(v13, v8);
    v19 += v20;
    if (!--v14)
    {
      v21 = 1;
      a2 = v30;
      goto LABEL_12;
    }
  }

  (*(v28 + 96))(v13, v8);
  v22 = v13[2];
  v24 = v13[5];
  v23 = v13[6];

  result = FCFeedGroupType.groupType()(v22, v29);
  if (v24 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 < 0xFFFFFFFF80000000 || v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    a2 = v30;
    sub_22088A0BC();
    v21 = 0;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_220790F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088A20C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v20 = v5;
    v21 = a2;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *MEMORY[0x277D34E08];
    v15 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v16 = *(v11 + 56);
    while (1)
    {
      v12(v9, v15, v4, v7);
      if ((*(v11 + 72))(v9, v4) == v14)
      {
        break;
      }

      (*(v11 - 8))(v9, v4);
      v15 += v16;
      if (!--v10)
      {
        v17 = 1;
        a2 = v21;
        goto LABEL_8;
      }
    }

    (*(v20 + 96))(v9, v4);
    a2 = v21;
    sub_2208892DC();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_8:
  v18 = sub_22088931C();
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

uint64_t sub_220791164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088A20C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v20 = v5;
    v21 = a2;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *MEMORY[0x277D34DD0];
    v15 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v16 = *(v11 + 56);
    while (1)
    {
      v12(v9, v15, v4, v7);
      if ((*(v11 + 72))(v9, v4) == v14)
      {
        break;
      }

      (*(v11 - 8))(v9, v4);
      v15 += v16;
      if (!--v10)
      {
        v17 = 1;
        a2 = v21;
        goto LABEL_8;
      }
    }

    (*(v20 + 96))(v9, v4);
    a2 = v21;
    sub_2208894AC();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_8:
  v18 = sub_2208894CC();
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

uint64_t sub_220791340(uint64_t a1)
{
  v2 = sub_22088A20C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v18 = v3;
  v11 = *(v3 + 16);
  v9 = v3 + 16;
  v10 = v11;
  v12 = *MEMORY[0x277D34DF8];
  v13 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v14 = *(v9 + 56);
  while (1)
  {
    v10(v7, v13, v2, v5);
    if ((*(v9 + 72))(v7, v2) == v12)
    {
      break;
    }

    (*(v9 - 8))(v7, v2);
    v13 += v14;
    if (!--v8)
    {
      return 0;
    }
  }

  (*(v18 + 96))(v7, v2);
  v16 = *v7;

  return v16;
}

uint64_t sub_2207914E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_220791528(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22079159C(a1, a2);
  }

  return result;
}

uint64_t sub_22079159C(uint64_t a1, uint64_t a2)
{
  sub_2205715CC();
  v5 = v4;
  MEMORY[0x28223BE20](v4, v6);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088519C();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksAudioTrack();
  v84 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v77 = (&v73 - v16);
  sub_220571538();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v81 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = (&v73 - v28);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v73 - v35;
  v79 = a1;
  sub_2208878BC();
  v85 = a2;
  v86 = v5;
  v37 = v84;
  sub_2208878BC();
  v38 = v36;
  v39 = *(v18 + 56);
  sub_2207A0578(v36, v21, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A0578(v33, &v21[v39], qword_281296160, type metadata accessor for StocksAudioTrack);
  v40 = *(v37 + 6);
  v41 = v40(v21, 1, v11);
  v84 = v40;
  if (v41 == 1)
  {
    sub_2207A11D0(v33, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
    if (v40(&v21[v39], 1, v11) == 1)
    {
      result = sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
      v43 = v87;
      v44 = v85;
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v75 = v38;
  sub_2207A0578(v21, v29, qword_281296160, type metadata accessor for StocksAudioTrack);
  if (v40(&v21[v39], 1, v11) == 1)
  {
    sub_2207A11D0(v33, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v75, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v29, type metadata accessor for StocksAudioTrack);
LABEL_6:
    sub_2207A0448(v21, sub_220571538);
    v43 = v87;
    v44 = v85;
LABEL_7:
    if ((sub_2208878CC() & 1) == 0)
    {

      sub_22088724C();
    }

    if (v43[5])
    {
      v45 = v43[5];
    }

    else
    {
      v45 = v43[4];
    }

    type metadata accessor for AudioSessionManager.Session();
    v55 = swift_allocObject();

    v56 = v80;
    sub_22088518C();
    v57 = sub_22088517C();
    v59 = v58;
    (*(v82 + 8))(v56, v83);
    *(v55 + 16) = v57;
    *(v55 + 24) = v59;
    *(v55 + 48) = 1;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    *(v55 + 32) = v45;
    *(v55 + 40) = 0;
    v43[13] = v55;

    if ((sub_2208878CC() & 1) == 0)
    {

      sub_22088723C();
    }

    v43[5] = 0;

    v60 = v81;
    sub_2208878BC();
    if (v84(v60, 1, v11) == 1)
    {
      result = sub_2207A11D0(v60, qword_281296160, type metadata accessor for StocksAudioTrack);
    }

    else
    {
      v61 = v76;
      sub_2207A0510(v60, v76, type metadata accessor for StocksAudioTrack);
      swift_beginAccess();
      v62 = v43[14];
      if (v62)
      {
        swift_endAccess();

        v62(v61);
        sub_2204DA45C(v62);
        sub_2207A0448(v61, type metadata accessor for StocksAudioTrack);
      }

      else
      {
        sub_2207A0448(v61, type metadata accessor for StocksAudioTrack);
        swift_endAccess();
      }

      v64 = v43[14];
      v43[14] = 0;
      v43[15] = 0;
      result = sub_2204DA45C(v64);
    }

    goto LABEL_25;
  }

  v46 = v77;
  sub_2207A0510(&v21[v39], v77, type metadata accessor for StocksAudioTrack);
  v74 = v29;
  v47 = [*v29 identifier];
  v48 = sub_22089136C();
  v50 = v49;

  v51 = [*v46 identifier];
  v52 = sub_22089136C();
  v54 = v53;

  if (v48 == v52 && v50 == v54)
  {

    sub_2207A11D0(v33, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A11D0(v75, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v77, type metadata accessor for StocksAudioTrack);
    sub_2207A0448(v74, type metadata accessor for StocksAudioTrack);
    result = sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
    v43 = v87;
    v44 = v85;
    goto LABEL_25;
  }

  v63 = sub_2208928BC();

  sub_2207A11D0(v33, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A11D0(v75, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2207A0448(v77, type metadata accessor for StocksAudioTrack);
  sub_2207A0448(v74, type metadata accessor for StocksAudioTrack);
  result = sub_2207A11D0(v21, qword_281296160, type metadata accessor for StocksAudioTrack);
  v43 = v87;
  v44 = v85;
  if ((v63 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (*(v43[13] + 48) == 1)
  {
    v65 = v78;
    sub_2207A04A8(v44, v78, sub_2205715CC);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_2207A0448(v65, sub_2205715CC);
    }

    else
    {
      sub_2205D153C(0, v66);
      v68 = *(v65 + v67[12]);
      v69 = v67[16];
      v70 = *(v65 + v67[20]);
      v71 = sub_22088774C();
      (*(*(v71 - 8) + 8))(v65 + v69, v71);
      result = sub_2207A0448(v65, type metadata accessor for StocksAudioTrack);
      if ((v70 & 1) == 0)
      {
        v72 = v43[13];
        *(v72 + 40) = v68;
        *(v72 + 48) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_220791F68()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  sub_2204DA45C(*(v0 + 112));
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  return v0;
}

uint64_t sub_220791FD0()
{
  sub_220791F68();

  return swift_deallocClassInstance();
}

uint64_t sub_220792004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v234 = a3;
  v237 = a2;
  v232 = a1;
  v242 = sub_2208895AC();
  v235 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v3);
  v230 = v4;
  v241 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_220889ACC();
  v233 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v5);
  v231 = v6;
  v243 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_2208895BC();
  v208 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v7);
  v206 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v8;
  MEMORY[0x28223BE20](v9, v10);
  v207 = &v182 - v11;
  v245 = sub_22088959C();
  v239 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v12);
  v236 = v13;
  v244 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_22088698C();
  v211 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v14);
  v204 = v15;
  v216 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v203 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v222 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v219 = &v182 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v16);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v210 = (&v182 - v25);
  v220 = type metadata accessor for StocksAudioTrack();
  v221 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v26);
  v213 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = v27;
  MEMORY[0x28223BE20](v28, v29);
  v218 = (&v182 - v30);
  sub_2205715CC();
  v228 = v31;
  v200 = *(v31 - 1);
  MEMORY[0x28223BE20](v31, v32);
  v214 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v215 = &v182 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v199 = &v182 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v198 = &v182 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v209 = &v182 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v229 = (&v182 - v48);
  MEMORY[0x28223BE20](v49, v50);
  v227 = (&v182 - v51);
  v202 = v52;
  MEMORY[0x28223BE20](v53, v54);
  v226 = &v182 - v55;
  v225 = sub_22088516C();
  v224 = *(v225 - 1);
  MEMORY[0x28223BE20](v225, v56);
  v58 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22088519C();
  v59 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v60);
  v62 = &v182 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088720C();
  v64 = *(v63 - 8);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v68 = &v182 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 104))(v68, *MEMORY[0x277CEAE68], v63, v66);
  sub_22088518C();
  sub_22088517C();
  (*(v59 + 8))(v62, v223);
  sub_22088515C();
  sub_220886FDC();

  (*(v224 + 1))(v58, v225);
  v69 = v240;
  (*(v64 + 8))(v68, v63);
  v70 = *(v69 + 104);
  v71 = v69;

  v72 = v226;
  sub_22088867C();
  v73 = v227;
  sub_2207A0510(v72, v227, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v76 = 0.0;
    v77 = v229;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_6;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v75);
    v77 = v229;
  }

  v76 = *(v73 + *(v78 + 48));
  v79 = *(v78 + 64);
  v80 = sub_22088774C();
  (*(*(v80 - 8) + 8))(v73 + v79, v80);
  sub_2207A0448(v73, type metadata accessor for StocksAudioTrack);
LABEL_6:
  if ((*(v70 + 48) & 1) == 0)
  {
    v81 = v76 - *(v70 + 40);
    if (v81 <= 0.0)
    {
      v81 = 0.0;
    }

    *(v70 + 56) = *(v70 + 56) + v81;
    *(v70 + 64) = v81;
    *(v70 + 40) = 0;
    *(v70 + 48) = 1;
  }

  sub_22088867C();
  if (swift_getEnumCaseMultiPayload())
  {
    v83 = sub_2205715CC;
    v84 = v77;
LABEL_22:
    sub_2207A0448(v84, v83);
    goto LABEL_23;
  }

  sub_2205D153C(0, v82);
  v86 = v85;
  v87 = *(v85 + 64);
  v88 = sub_22088774C();
  v89 = *(*(v88 - 8) + 8);
  v89(v77 + v87, v88);
  sub_2207A0448(v77, type metadata accessor for StocksAudioTrack);
  v90 = v209;
  sub_22088867C();
  v91 = v210;
  sub_2208878BC();
  sub_2207A0448(v90, sub_2205715CC);
  if ((*(v221 + 48))(v91, 1, v220) != 1)
  {
    v92 = v218;
    sub_2207A0510(v91, v218, type metadata accessor for StocksAudioTrack);
    v229 = *(v71 + 96);
    v93 = v198;
    sub_22088867C();
    v94 = v199;
    sub_2207A0510(v93, v199, sub_2205715CC);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95)
    {
      if (v95 != 1)
      {
LABEL_18:
        v97 = v220;
        [*(v92 + *(v220 + 24)) duration];
        if (sub_22088808C())
        {
          v98 = v235;
          v99 = v219;
          v100 = v242;
          (*(v235 + 16))(v219, v234, v242);
          (*(v98 + 56))(v99, 0, 1, v100);
          v101 = v215;
          sub_22088867C();
          v226 = *v92;
          v102 = *(v97 + 20);
          v227 = *(v71 + 104);
          v229 = *(v227 + 4);
          v225 = type metadata accessor for StocksAudioTrack;
          sub_2207A04A8(v92, v213, type metadata accessor for StocksAudioTrack);
          v103 = v211;
          (*(v211 + 16))(v216, v92 + v102, v217);
          v224 = sub_2205715CC;
          sub_2207A04A8(v101, v214, sub_2205715CC);
          v228 = MEMORY[0x277D68648];
          sub_2207A0578(v99, v222, &qword_27CF59B88, MEMORY[0x277D68648]);
          v104 = v239;
          (*(v239 + 16))(v244, v237, v245);
          v105 = (*(v221 + 80) + 16) & ~*(v221 + 80);
          v106 = (v201 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          v108 = (*(v103 + 80) + v107 + 8) & ~*(v103 + 80);
          v109 = (v204 + *(v200 + 80) + v108) & ~*(v200 + 80);
          v110 = (v202 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
          v111 = (v203[80] + v110 + 8) & ~v203[80];
          v112 = (v205 + *(v104 + 80) + v111) & ~*(v104 + 80);
          v113 = swift_allocObject();
          sub_2207A0510(v213, v113 + v105, v225);
          *(v113 + v106) = v226;
          *(v113 + v107) = v240;
          (*(v103 + 32))(v113 + v108, v216, v217);
          sub_2207A0510(v214, v113 + v109, v224);
          *(v113 + v110) = v227;
          v114 = v240;
          sub_2207A066C(v222, v113 + v111);
          (*(v239 + 32))(v113 + v112, v244, v245);
          swift_retain_n();
          swift_unknownObjectRetain();
          v71 = v114;

          sub_22088726C();

          sub_2207A0448(v215, sub_2205715CC);
          sub_2207A11D0(v219, &qword_27CF59B88, v228);
        }

        else
        {
          v115 = v208;
          v116 = v207;
          (*(v208 + 104))(v207, *MEMORY[0x277D68668], v212);
          v117 = v235;
          v118 = v219;
          v119 = v242;
          (*(v235 + 16))(v219, v234, v242);
          (*(v117 + 56))(v118, 0, 1, v119);
          v120 = v215;
          sub_22088867C();
          v223 = *v92;
          v121 = *(v97 + 20);
          v220 = v121;
          v191 = *(v71 + 104);
          v196 = *(v191 + 32);
          v228 = type metadata accessor for StocksAudioTrack;
          sub_2207A04A8(v92, v213, type metadata accessor for StocksAudioTrack);
          v122 = v211;
          v123 = *(v211 + 16);
          v209 = (v211 + 16);
          v210 = v123;
          v123(v216, v92 + v121, v217);
          v227 = sub_2205715CC;
          sub_2207A04A8(v120, v214, sub_2205715CC);
          v124 = v233;
          v125 = *(v233 + 16);
          v198 = (v233 + 16);
          v199 = v125;
          (v125)(v243, v232, v238);
          v126 = *(v115 + 16);
          v194 = v115 + 16;
          v195 = v126;
          v126(v206, v116, v212);
          v229 = MEMORY[0x277D68648];
          sub_2207A0578(v118, v222, &qword_27CF59B88, MEMORY[0x277D68648]);
          v127 = v239;
          v128 = *(v239 + 16);
          v192 = v239 + 16;
          v193 = v128;
          v128(v244, v237, v245);
          v129 = *(v221 + 80);
          v130 = (v129 + 16) & ~v129;
          v190 = v130;
          v131 = (v201 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v221 = v131;
          v132 = *(v122 + 80);
          v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
          v201 = v133;
          v134 = (v132 + v133 + 8) & ~v132;
          v135 = *(v200 + 80);
          v189 = v134;
          v137 = *(v124 + 80);
          v204 = (v204 + v135 + v134) & ~v135;
          v136 = v204;
          v138 = (v202 + v137 + v204) & ~v137;
          v200 = v138;
          v139 = (v231 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
          v140 = *(v115 + 80);
          v202 = v139;
          v224 = ((v140 + v139 + 8) & ~v140);
          v225 = ((v224 + v197 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v141 = v203[80];
          v226 = ((v225 + v141 + 5) & ~v141);
          v142 = *(v127 + 80);
          v143 = &v226[v205 + v142] & ~v142;
          v205 = v129 | v132 | v135 | v137 | v140 | v141 | v142;
          v183 = v143;
          v144 = swift_allocObject();
          sub_2207A0510(v213, v144 + v130, v228);
          *(v144 + v131) = v223;
          *(v144 + v133) = v240;
          v145 = *(v122 + 32);
          v211 = v122 + 32;
          v203 = v145;
          (v145)(v144 + v134, v216, v217);
          v146 = v214;
          sub_2207A0510(v214, v144 + v136, v227);
          v147 = *(v233 + 32);
          v188 = v233 + 32;
          v197 = v147;
          v148 = v243;
          v147(v144 + v138, v243, v238);
          *(v144 + v139) = v191;
          v149 = *(v208 + 32);
          v186 = v208 + 32;
          v187 = v149;
          v150 = v206;
          v149(v224 + v144, v206, v212);
          v151 = v225 + v144;
          *v151 = 0;
          v151[4] = 1;
          sub_2207A066C(v222, &v226[v144]);
          v152 = *(v239 + 32);
          v184 = v239 + 32;
          v185 = v152;
          v153 = v144 + v143;
          v154 = v244;
          v152(v153, v244, v245);
          swift_retain_n();

          swift_unknownObjectRetain();
          sub_22088726C();

          v191 = *(v240 + 104);
          v196 = *(v191 + 32);
          v155 = v218;
          v156 = v213;
          v157 = v228;
          sub_2207A04A8(v218, v213, v228);
          v158 = v216;
          v159 = v217;
          v210(v216, v155 + v220, v217);
          v160 = v146;
          v161 = v227;
          sub_2207A04A8(v215, v160, v227);
          v162 = v238;
          (v199)(v148, v232, v238);
          v163 = v212;
          v195(v150, v207, v212);
          sub_2207A0578(v219, v222, &qword_27CF59B88, v229);
          v164 = v154;
          v165 = v245;
          v193(v164, v237, v245);
          v166 = v183;
          v167 = swift_allocObject();
          sub_2207A0510(v156, v167 + v190, v157);
          *(v167 + v221) = v223;
          *(v167 + v201) = v240;
          (v203)(v167 + v189, v158, v159);
          sub_2207A0510(v214, v167 + v204, v161);
          v197(v167 + v200, v243, v162);
          *(v167 + v202) = v191;
          v187(v224 + v167, v206, v163);
          v168 = v240;
          v169 = v225 + v167;
          *v169 = 0;
          v169[4] = 1;
          sub_2207A066C(v222, &v226[v167]);
          v185(v167 + v166, v244, v165);
          swift_retain_n();
          v71 = v168;

          swift_unknownObjectRetain();
          sub_22088726C();

          sub_2207A0448(v215, sub_2205715CC);
          sub_2207A11D0(v219, &qword_27CF59B88, v229);
          (*(v208 + 8))(v207, v163);
        }

        v83 = type metadata accessor for StocksAudioTrack;
        v84 = v218;
        goto LABEL_22;
      }

      sub_2205D1464();
      v86 = v96;
    }

    v89(&v94[*(v86 + 64)], v88);
    sub_2207A0448(v94, type metadata accessor for StocksAudioTrack);
    goto LABEL_18;
  }

  sub_2207A11D0(v91, qword_281296160, type metadata accessor for StocksAudioTrack);
LABEL_23:
  v170 = swift_allocObject();
  v171 = v71;
  swift_weakInit();
  v172 = v233;
  v173 = v238;
  (*(v233 + 16))(v243, v232, v238);
  v174 = v239;
  (*(v239 + 16))(v244, v237, v245);
  v175 = v235;
  (*(v235 + 16))(v241, v234, v242);
  v176 = (*(v172 + 80) + 24) & ~*(v172 + 80);
  v177 = (v231 + *(v174 + 80) + v176) & ~*(v174 + 80);
  v178 = (v236 + *(v175 + 80) + v177) & ~*(v175 + 80);
  v179 = swift_allocObject();
  *(v179 + 16) = v170;
  (*(v172 + 32))(v179 + v176, v243, v173);
  (*(v174 + 32))(v179 + v177, v244, v245);
  (*(v175 + 32))(v179 + v178, v241, v242);
  swift_beginAccess();
  v180 = *(v171 + 112);
  *(v171 + 112) = sub_2207A1244;
  *(v171 + 120) = v179;

  sub_2204DA45C(v180);
}

uint64_t sub_220793A9C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = a4;
  v131 = a3;
  v130 = a1;
  v139 = sub_22088959C();
  v146 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v6);
  v132 = v7;
  v141 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_220889ACC();
  v150 = *(v145 - 8);
  v8 = v150[8];
  MEMORY[0x28223BE20](v145, v9);
  v144 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_22088698C();
  v149 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v10);
  v125 = v11;
  v148 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for StocksAudioTrack();
  v12 = *(v129 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v129, v14);
  v140 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205715CC();
  v123 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v138 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v17;
  MEMORY[0x28223BE20](v18, v19);
  v142 = &v95 - v20;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v120 = *(v21 - 8);
  v22 = *(v120 + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v147 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v136 = &v95 - v26;
  v27 = sub_2208895BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v137 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v95 - v33;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = *MEMORY[0x277D68660];
    v37 = *(v28 + 104);
    v108 = v13;
    v38 = result;
    v134 = v27;
    v135 = v34;
    v37(v34, v36, v27);
    v39 = sub_2208895AC();
    v40 = *(v39 - 8);
    v41 = v136;
    (*(v40 + 16))(v136, a5, v39);
    v42 = v8;
    v43 = v41;
    (*(v40 + 56))(v41, 0, 1, v39);
    v121 = v38;
    v44 = v142;
    sub_22088867C();
    v45 = v130;
    v122 = *v130;
    v46 = *(v129 + 5);
    v119 = v46;
    v109 = *(v38 + 104);
    v114 = *(v109 + 32);
    v126 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v130, v140, type metadata accessor for StocksAudioTrack);
    v47 = v149;
    v48 = *(v149 + 16);
    v117 = v149 + 16;
    v118 = v48;
    v48(v148, &v45[v46], v143);
    v127 = sub_2205715CC;
    sub_2207A04A8(v44, v138, sub_2205715CC);
    v49 = v150;
    v50 = v150[2];
    v115 = v150 + 2;
    v116 = v50;
    v50(v144, v131, v145);
    v128 = v28;
    v51 = *(v28 + 16);
    v112 = v28 + 16;
    v113 = v51;
    v51(v137, v135, v134);
    v129 = MEMORY[0x277D68648];
    sub_2207A0578(v43, v147, &qword_27CF59B88, MEMORY[0x277D68648]);
    v105 = v22;
    v52 = v146;
    v53 = *(v146 + 16);
    v110 = v146 + 16;
    v111 = v53;
    v53(v141, v133, v139);
    v54 = *(v12 + 80);
    v55 = (v54 + 16) & ~v54;
    v107 = v55;
    v56 = (v108 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = v56;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = *(v47 + 80);
    v106 = v57;
    v59 = (v58 + v57 + 8) & ~v58;
    v60 = *(v123 + 80);
    v103 = v59;
    v61 = *(v49 + 80);
    v62 = (v125 + v60 + v59) & ~v60;
    v104 = v62;
    v63 = v42 + ((v124 + v61 + v62) & ~v61);
    v64 = (v124 + v61 + v62) & ~v61;
    v102 = v64;
    v65 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = *(v28 + 80);
    v100 = v65;
    v67 = (v66 + v65 + 8) & ~v66;
    v99 = v67;
    v124 = (v29 + v67 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v68 = *(v120 + 80);
    v125 = (v68 + v124 + 5) & ~v68;
    v69 = *(v52 + 80);
    v123 = (v105 + v69 + v125) & ~v69;
    v120 = v54 | v58 | v60 | v61 | v66 | v68 | v69;
    v70 = swift_allocObject();
    sub_2207A0510(v140, v70 + v55, v126);
    *(v70 + v56) = v122;
    v71 = v121;
    *(v70 + v57) = v121;
    v72 = *(v149 + 32);
    v149 += 32;
    v105 = v72;
    v72(v70 + v59, v148, v143);
    sub_2207A0510(v138, v70 + v62, v127);
    v73 = v150[4];
    v150 += 4;
    v101 = v73;
    v74 = v70 + v64;
    v75 = v144;
    v73(v74, v144, v145);
    *(v70 + v65) = v109;
    v76 = *(v128 + 32);
    v97 = v128 + 32;
    v98 = v76;
    v77 = v70 + v67;
    v78 = v137;
    v79 = v134;
    v76(v77, v137, v134);
    v80 = v70 + v124;
    *v80 = 0;
    *(v80 + 4) = 1;
    sub_2207A066C(v147, v70 + v125);
    v81 = *(v52 + 32);
    v146 = v52 + 32;
    v96 = v81;
    v82 = v141;
    v81(v70 + v123, v141, v139);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v109 = *(v71 + 104);
    v114 = *(v109 + 32);
    v83 = v130;
    v84 = v140;
    v85 = v126;
    sub_2207A04A8(v130, v140, v126);
    v86 = v143;
    v118(v148, &v83[v119], v143);
    v87 = v138;
    v88 = v127;
    sub_2207A04A8(v142, v138, v127);
    v89 = v145;
    v116(v75, v131, v145);
    v113(v78, v135, v79);
    sub_2207A0578(v136, v147, &qword_27CF59B88, v129);
    v90 = v139;
    v111(v82, v133, v139);
    v91 = v123;
    v92 = swift_allocObject();
    sub_2207A0510(v84, v92 + v107, v85);
    *(v92 + v108) = v122;
    *(v92 + v106) = v121;
    v105(v92 + v103, v148, v86);
    sub_2207A0510(v87, v92 + v104, v88);
    v101(v92 + v102, v144, v89);
    *(v92 + v100) = v109;
    v93 = v134;
    v98(v92 + v99, v137, v134);
    v94 = v92 + v124;
    *v94 = 0;
    *(v94 + 4) = 1;
    sub_2207A066C(v147, v92 + v125);
    v96(v92 + v91, v141, v90);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v142, sub_2205715CC);
    sub_2207A11D0(v136, &qword_27CF59B88, v129);
    (*(v128 + 8))(v135, v93);
  }

  return result;
}

uint64_t sub_2207947F4(uint64_t a1, uint64_t a2)
{
  v153 = a2;
  v151 = a1;
  v3 = sub_22088959C();
  v171 = *(v3 - 8);
  v172 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v152 = v5;
  v170 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_220889ACC();
  v169 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v6);
  v150 = v7;
  v165 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22088698C();
  v168 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v8);
  v149 = v9;
  v159 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v147 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v158 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v13;
  MEMORY[0x28223BE20](v14, v15);
  v163 = &v118 - v16;
  v164 = sub_2208895BC();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v17);
  v167 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v160 = &v118 - v21;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v10);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v118 - v24;
  sub_2205715CC();
  v27 = v26;
  v145 = *(v26 - 1);
  MEMORY[0x28223BE20](v26, v28);
  v156 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v157 = &v118 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v118 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v118 - v39;
  v141 = v41;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v118 - v44;
  v46 = type metadata accessor for StocksAudioTrack();
  v47 = *(v46 - 1);
  MEMORY[0x28223BE20](v46, v48);
  v155 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v49;
  MEMORY[0x28223BE20](v50, v51);
  v53 = (&v118 - v52);
  v154 = v2;
  sub_22088867C();
  v140 = v27;
  sub_2208878BC();
  sub_2207A0448(v45, sub_2205715CC);
  v144 = v47;
  v54 = *(v47 + 48);
  v142 = v46;
  if (v54(v25, 1, v46) == 1)
  {
    return sub_2207A11D0(v25, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  sub_2207A0510(v25, v53, type metadata accessor for StocksAudioTrack);
  v56 = v154;
  v57 = *(v154 + 104);

  sub_22088867C();
  sub_2207A0510(v40, v36, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v59);
    goto LABEL_7;
  }

  v60 = 0.0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464();
LABEL_7:
    v60 = *&v36[*(v61 + 48)];
    v62 = *(v61 + 64);
    v63 = sub_22088774C();
    (*(*(v63 - 8) + 8))(&v36[v62], v63);
    sub_2207A0448(v36, type metadata accessor for StocksAudioTrack);
  }

  if ((*(v57 + 48) & 1) == 0)
  {
    v64 = v60 - *(v57 + 40);
    if (v64 <= 0.0)
    {
      v64 = 0.0;
    }

    *(v57 + 56) = *(v57 + 56) + v64;
    *(v57 + 64) = v64;
    *(v57 + 40) = 0;
    *(v57 + 48) = 1;
  }

  v65 = v162;
  v66 = v160;
  v67 = v164;
  (*(v162 + 104))(v160, *MEMORY[0x277D68668], v164);
  v68 = sub_2208895AC();
  v69 = v163;
  (*(*(v68 - 8) + 56))(v163, 1, 1, v68);
  v70 = v157;
  sub_22088867C();
  v138 = *v53;
  v71 = *(v142 + 5);
  v136 = v71;
  v126 = *(v56 + 104);
  v131 = *(v126 + 32);
  v137 = type metadata accessor for StocksAudioTrack;
  sub_2207A04A8(v53, v155, type metadata accessor for StocksAudioTrack);
  v139 = v53;
  v72 = v168;
  v73 = *(v168 + 16);
  v134 = v168 + 16;
  v135 = v73;
  v73(v159, v53 + v71, v161);
  v140 = sub_2205715CC;
  sub_2207A04A8(v70, v156, sub_2205715CC);
  v74 = v169;
  v75 = *(v169 + 16);
  v132 = v169 + 16;
  v133 = v75;
  v75(v165, v151, v166);
  v76 = *(v65 + 16);
  v129 = v65 + 16;
  v130 = v76;
  v76(v167, v66, v67);
  v142 = MEMORY[0x277D68648];
  sub_2207A0578(v69, v158, &qword_27CF59B88, MEMORY[0x277D68648]);
  v77 = v171;
  v78 = *(v171 + 16);
  v127 = v171 + 16;
  v128 = v78;
  v78(v170, v153, v172);
  v79 = *(v144 + 80);
  v80 = (v79 + 16) & ~v79;
  v144 = v80;
  v81 = (v143 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = v81;
  v82 = *(v72 + 80);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = v83;
  v84 = (v82 + v83 + 8) & ~v82;
  v85 = *(v145 + 80);
  v124 = v84;
  v86 = (v149 + v85 + v84) & ~v85;
  v87 = *(v74 + 80);
  v145 = v86;
  v88 = (v141 + v87 + v86) & ~v87;
  v122 = v88;
  v89 = *(v65 + 80);
  v90 = (v150 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = v90;
  v150 = (v89 + v90 + 8) & ~v89;
  v146 = (v146 + v150 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v91 = v147[80];
  v149 = (v91 + v146 + 5) & ~v91;
  v92 = *(v77 + 80);
  v93 = (v148 + v92 + v149) & ~v92;
  v148 = v79 | v82 | v85 | v87 | v89 | v91 | v92;
  v118 = v93;
  v94 = swift_allocObject();
  v95 = v94 + v80;
  v96 = v137;
  sub_2207A0510(v155, v95, v137);
  *(v94 + v81) = v138;
  *(v94 + v83) = v154;
  v97 = *(v168 + 32);
  v168 += 32;
  v147 = v97;
  (v97)(v94 + v84, v159, v161);
  v98 = v156;
  sub_2207A0510(v156, v94 + v86, v140);
  v99 = *(v169 + 32);
  v169 += 32;
  v141 = v99;
  v99(v94 + v88, v165, v166);
  *(v94 + v90) = v126;
  v100 = *(v162 + 32);
  v120 = v162 + 32;
  v121 = v100;
  v100(v94 + v150, v167, v164);
  v101 = v94 + v146;
  *v101 = 0;
  *(v101 + 4) = 1;
  v102 = v158;
  sub_2207A066C(v158, v94 + v149);
  v103 = *(v171 + 32);
  v171 += 32;
  v119 = v103;
  v103(v94 + v93, v170, v172);
  swift_retain_n();
  swift_unknownObjectRetain();
  v104 = v154;

  sub_22088726C();

  v126 = *(v104 + 104);
  v105 = v104;
  v131 = *(v126 + 32);
  v106 = v139;
  v107 = v155;
  sub_2207A04A8(v139, v155, v96);
  v108 = v159;
  v109 = v161;
  v135(v159, v106 + v136, v161);
  v110 = v98;
  v111 = v140;
  sub_2207A04A8(v157, v110, v140);
  v112 = v165;
  v113 = v166;
  v133(v165, v151, v166);
  v114 = v164;
  v130(v167, v160, v164);
  sub_2207A0578(v163, v102, &qword_27CF59B88, v142);
  v128(v170, v153, v172);
  v115 = v118;
  v116 = swift_allocObject();
  sub_2207A0510(v107, v116 + v144, v137);
  *(v116 + v143) = v138;
  *(v116 + v125) = v105;
  (v147)(v116 + v124, v108, v109);
  sub_2207A0510(v156, v116 + v145, v111);
  v141(v116 + v122, v112, v113);
  *(v116 + v123) = v126;
  v121(v116 + v150, v167, v114);
  v117 = v116 + v146;
  *v117 = 0;
  *(v117 + 4) = 1;
  sub_2207A066C(v158, v116 + v149);
  v119(v116 + v115, v170, v172);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_22088726C();

  sub_2207A0448(v157, sub_2205715CC);
  sub_2207A11D0(v163, &qword_27CF59B88, v142);
  (*(v162 + 8))(v160, v114);

  return sub_2207A0448(v139, type metadata accessor for StocksAudioTrack);
}

uint64_t sub_2207957C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v138 = a3;
  v150 = a2;
  v148 = a1;
  v4 = sub_22088959C();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v139 = v6;
  v151 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_220889ACC();
  v158 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v7);
  v136 = v8;
  v157 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22088698C();
  v155 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v9);
  v135 = v10;
  v144 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v133 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v153 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v146 = &v106 - v17;
  v147 = sub_2208895BC();
  v156 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v18);
  v152 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v154 = &v106 - v22;
  v130 = sub_22088516C();
  v129 = *(v130 - 1);
  MEMORY[0x28223BE20](v130, v23);
  v128 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22088519C();
  v123 = *(v124 - 1);
  MEMORY[0x28223BE20](v124, v25);
  v121 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22088720C();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v27);
  v122 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v106 - v31;
  sub_2205715CC();
  v131 = *(v33 - 8);
  v34 = *(v131 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v142 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v143 = &v106 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v106 - v41;
  v43 = type metadata accessor for StocksAudioTrack();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v141 = &v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v106 - v49;
  v119 = *(v3 + 48);
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v42, sub_2205715CC);
  v127 = v44;
  if ((*(v44 + 48))(v32, 1, v43) == 1)
  {
    sub_2207A11D0(v32, qword_281296160, type metadata accessor for StocksAudioTrack);
    return sub_220792004(v148, v150, v138);
  }

  else
  {
    v140 = type metadata accessor for StocksAudioTrack;
    v137 = v50;
    sub_2207A0510(v32, v50, type metadata accessor for StocksAudioTrack);
    v120 = v3;
    v52 = v125;
    v53 = v122;
    v54 = v126;
    (*(v125 + 104))(v122, *MEMORY[0x277CEAE68], v126);
    v55 = v121;
    sub_22088518C();
    sub_22088517C();
    (*(v123 + 8))(v55, v124);
    v56 = v128;
    sub_22088515C();
    sub_220886FDC();

    (*(v129 + 8))(v56, v130);
    (*(v52 + 8))(v53, v54);
    v57 = v147;
    (*(v156 + 104))(v154, *MEMORY[0x277D68678], v147);
    v58 = sub_2208895AC();
    v59 = *(v58 - 8);
    v60 = v146;
    (*(v59 + 16))(v146, v138, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = v143;
    sub_22088867C();
    v62 = v137;
    v129 = *v137;
    v63 = *(v43 + 20);
    v128 = v63;
    v116 = *(v120 + 104);
    v119 = *(v116 + 32);
    sub_2207A04A8(v137, v141, v140);
    v64 = v155;
    v125 = *(v155 + 16);
    v126 = v155 + 16;
    (v125)(v144, &v63[v62], v145);
    v130 = sub_2205715CC;
    sub_2207A04A8(v61, v142, sub_2205715CC);
    v65 = v158;
    v66 = *(v158 + 16);
    v123 = v158 + 16;
    v124 = v66;
    v66(v157, v148, v149);
    v67 = v156;
    v68 = *(v156 + 16);
    v121 = (v156 + 16);
    v122 = v68;
    (v68)(v152, v154, v57);
    v138 = MEMORY[0x277D68648];
    sub_2207A0578(v60, v153, &qword_27CF59B88, MEMORY[0x277D68648]);
    v69 = v159;
    v70 = *(v159 + 16);
    v117 = v159 + 16;
    v118 = v70;
    v70(v151, v150, v160);
    v71 = *(v127 + 80);
    v72 = (v71 + 16) & ~v71;
    v115 = v72;
    v73 = (v45 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = v73;
    v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = *(v64 + 80);
    v114 = v74;
    v76 = (v75 + v74 + 8) & ~v75;
    v77 = *(v131 + 80);
    v113 = v76;
    v78 = (v135 + v77 + v76) & ~v77;
    v79 = *(v65 + 80);
    v131 = v78;
    v80 = (v34 + v79 + v78) & ~v79;
    v110 = v80;
    v81 = *(v67 + 80);
    v82 = (v136 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = v82;
    v135 = (v81 + v82 + 8) & ~v81;
    v132 = (v132 + v135 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v83 = v133[80];
    v136 = (v83 + v132 + 5) & ~v83;
    v84 = *(v69 + 80);
    v85 = (v134 + v84 + v136) & ~v84;
    v134 = v71 | v75 | v77 | v79 | v81 | v83 | v84;
    v106 = v85;
    v86 = swift_allocObject();
    sub_2207A0510(v141, v86 + v72, v140);
    *(v86 + v73) = v129;
    v87 = v120;
    *(v86 + v74) = v120;
    v88 = *(v155 + 32);
    v155 += 32;
    v133 = v88;
    (v88)(v86 + v76, v144, v145);
    sub_2207A0510(v142, v86 + v78, v130);
    v89 = *(v158 + 32);
    v158 += 32;
    v112 = v89;
    v89(v86 + v80, v157, v149);
    *(v86 + v82) = v116;
    v90 = *(v156 + 32);
    v108 = v156 + 32;
    v109 = v90;
    v90(v86 + v135, v152, v147);
    v91 = v86 + v132;
    *v91 = 0;
    *(v91 + 4) = 1;
    sub_2207A066C(v153, v86 + v136);
    v92 = *(v159 + 32);
    v159 += 32;
    v107 = v92;
    v93 = v151;
    v92(v86 + v85, v151, v160);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v116 = *(v87 + 104);
    v119 = *(v116 + 32);
    v94 = v137;
    v95 = v141;
    sub_2207A04A8(v137, v141, v140);
    v96 = &v128[v94];
    v98 = v144;
    v97 = v145;
    (v125)(v144, v96, v145);
    v99 = v142;
    v100 = v130;
    sub_2207A04A8(v143, v142, v130);
    v101 = v149;
    v124(v157, v148, v149);
    v102 = v147;
    (v122)(v152, v154, v147);
    sub_2207A0578(v146, v153, &qword_27CF59B88, v138);
    v118(v93, v150, v160);
    v103 = v106;
    v104 = swift_allocObject();
    sub_2207A0510(v95, v104 + v115, v140);
    *(v104 + v127) = v129;
    *(v104 + v114) = v87;
    (v133)(v104 + v113, v98, v97);
    sub_2207A0510(v99, v104 + v131, v100);
    v112(v104 + v110, v157, v101);
    *(v104 + v111) = v116;
    v109(v104 + v135, v152, v102);
    v105 = v104 + v132;
    *v105 = 0;
    *(v105 + 4) = 1;
    sub_2207A066C(v153, v104 + v136);
    v107(v104 + v103, v151, v160);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v143, sub_2205715CC);
    sub_2207A11D0(v146, &qword_27CF59B88, v138);
    (*(v156 + 8))(v154, v102);

    return sub_2207A0448(v137, type metadata accessor for StocksAudioTrack);
  }
}

uint64_t sub_2207968AC(uint64_t (*a1)(uint64_t), unint64_t a2)
{
  v76 = a2;
  v74 = a1;
  v92 = sub_22088959C();
  v80 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v3);
  v78 = v4;
  v91 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_220889ACC();
  v79 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v5);
  v75 = v6;
  v89 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22088698C();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v7);
  v73 = v8;
  v86 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v12;
  MEMORY[0x28223BE20](v13, v14);
  v96 = &v62 - v15;
  v16 = sub_2208895BC();
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v85 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v93 = &v62 - v21;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v9);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v62 - v24;
  sub_2205715CC();
  v69 = *(v26 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v83 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v84 = &v62 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v62 - v34;
  v36 = type metadata accessor for StocksAudioTrack();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v82 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = (&v62 - v42);
  v81 = v2;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v35, sub_2205715CC);
  if ((*(v37 + 48))(v25, 1, v36) == 1)
  {
    return sub_2207A11D0(v25, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v64 = type metadata accessor for StocksAudioTrack;
  sub_2207A0510(v25, v43, type metadata accessor for StocksAudioTrack);
  (*(v94 + 13))(v93, *MEMORY[0x277D68658], v95);
  v45 = sub_2208895AC();
  v46 = *(*(v45 - 8) + 56);
  v62 = v37;
  v46(v96, 1, 1, v45);
  v47 = v84;
  sub_22088867C();
  v65 = *v43;
  v48 = *(v36 + 20);
  v66 = *(v81 + 104);
  v67 = *(v66 + 32);
  v68 = v43;
  sub_2207A04A8(v43, v82, type metadata accessor for StocksAudioTrack);
  v49 = v77;
  (*(v77 + 16))(v86, v43 + v48, v88);
  v63 = sub_2205715CC;
  sub_2207A04A8(v47, v83, sub_2205715CC);
  v50 = v79;
  (*(v79 + 16))(v89, v74, v90);
  v51 = v94;
  (*(v94 + 2))(v85, v93, v95);
  v74 = MEMORY[0x277D68648];
  sub_2207A0578(v96, v87, &qword_27CF59B88, MEMORY[0x277D68648]);
  v52 = v80;
  (*(v80 + 16))(v91, v76, v92);
  v53 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v62 = (v38 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v49 + 80) + v54 + 8) & ~*(v49 + 80);
  v56 = (v73 + *(v69 + 80) + v55) & ~*(v69 + 80);
  v57 = (v27 + *(v50 + 80) + v56) & ~*(v50 + 80);
  v69 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v51[80] + v69 + 8) & ~v51[80];
  v75 = (v70 + v73 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v76 = (*(v71 + 80) + v75 + 5) & ~*(v71 + 80);
  v72 = (v72 + *(v52 + 80) + v76) & ~*(v52 + 80);
  v58 = swift_allocObject();
  sub_2207A0510(v82, v58 + v53, v64);
  *(v58 + v62) = v65;
  *(v58 + v54) = v81;
  (*(v49 + 32))(v58 + v55, v86, v88);
  sub_2207A0510(v83, v58 + v56, v63);
  (*(v50 + 32))(v58 + v57, v89, v90);
  *(v58 + v69) = v66;
  v60 = v94;
  v59 = v95;
  (*(v94 + 4))(v58 + v73, v85, v95);
  v61 = v58 + v75;
  *v61 = 0;
  *(v61 + 4) = 1;
  sub_2207A066C(v87, v58 + v76);
  (*(v52 + 32))(v58 + v72, v91, v92);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_22088726C();

  sub_2207A0448(v84, sub_2205715CC);
  sub_2207A11D0(v96, &qword_27CF59B88, v74);
  (v60[1])(v93, v59);

  return sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
}

uint64_t sub_220797310(uint64_t a1, unint64_t a2)
{
  v196 = a2;
  v186 = a1;
  v189 = sub_22088516C();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v3);
  v187 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_220889ACC();
  v198 = *(v191 - 1);
  MEMORY[0x28223BE20](v191, v5);
  v176 = v6;
  v197 = (&v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2208895BC();
  v194 = *(v7 - 8);
  v195 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v190 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v9;
  MEMORY[0x28223BE20](v10, v11);
  v192 = (&v152 - v12);
  v13 = sub_22088959C();
  v205 = *(v13 - 8);
  v206 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v193 = v15;
  v209 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088698C();
  v201 = *(v16 - 8);
  v202 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v184 = v18;
  v200 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v183 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v208 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v22;
  MEMORY[0x28223BE20](v23, v24);
  v204 = &v152 - v25;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v19);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v152 - v28;
  sub_2205715CC();
  v182 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v207 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v203 = &v152 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v178 = (&v152 - v38);
  MEMORY[0x28223BE20](v39, v40);
  v177 = (&v152 - v41);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v152 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v152 - v48;
  v179 = v50;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v152 - v53;
  v55 = type metadata accessor for StocksAudioTrack();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v57);
  v199 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v58;
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v152 - v61;
  v210 = v2;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v54, sub_2205715CC);
  v180 = v56;
  v63 = v56;
  v64 = v55;
  if ((*(v63 + 48))(v29, 1, v55) == 1)
  {
    return sub_2207A11D0(v29, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v66 = v62;
  sub_2207A0510(v29, v62, type metadata accessor for StocksAudioTrack);
  v67 = *(v210 + 104);

  sub_22088867C();
  sub_2207A0510(v49, v45, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v45;
  if (EnumCaseMultiPayload)
  {
    v71 = 0.0;
    v72 = v66;
    v73 = v178;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v69);
    v72 = v66;
    v73 = v178;
  }

  v71 = *(v70 + *(v74 + 48));
  v75 = *(v74 + 64);
  v76 = sub_22088774C();
  (*(*(v76 - 8) + 8))(v70 + v75, v76);
  sub_2207A0448(v70, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v67 + 48) & 1) == 0)
  {
    v77 = v71 - *(v67 + 40);
    if (v77 <= 0.0)
    {
      v77 = 0.0;
    }

    *(v67 + 56) = *(v67 + 56) + v77;
    *(v67 + 64) = v77;
    *(v67 + 40) = 0;
    *(v67 + 48) = 1;
  }

  v78 = v177;
  sub_22088867C();
  sub_2207A0510(v78, v73, sub_2205715CC);
  v79 = swift_getEnumCaseMultiPayload();
  if (!v79)
  {
    sub_2205D153C(0, v80);
    goto LABEL_16;
  }

  if (v79 == 1)
  {
    sub_2205D1464();
LABEL_16:
    v82 = *(v81 + 64);
    v83 = sub_22088774C();
    (*(*(v83 - 8) + 8))(v73 + v82, v83);
    sub_2207A0448(v73, type metadata accessor for StocksAudioTrack);
  }

  [*(v72 + *(v55 + 24)) duration];
  v84 = sub_22088808C();
  v174 = v72;
  if (v84)
  {
    v85 = sub_2208895AC();
    v86 = v204;
    (*(*(v85 - 8) + 56))(v204, 1, 1, v85);
    v87 = v203;
    sub_22088867C();
    v88 = *(v55 + 20);
    v89 = *(v210 + 104);
    v194 = *v72;
    v195 = v89;
    v198 = *(v89 + 32);
    v192 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v72, v199, type metadata accessor for StocksAudioTrack);
    v90 = v201;
    (*(v201 + 16))(v200, v72 + v88, v202);
    v191 = sub_2205715CC;
    sub_2207A04A8(v87, v207, sub_2205715CC);
    v197 = MEMORY[0x277D68648];
    sub_2207A0578(v86, v208, &qword_27CF59B88, MEMORY[0x277D68648]);
    v91 = v205;
    (*(v205 + 16))(v209, v196, v206);
    v92 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v93 = (v181 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = (*(v90 + 80) + v94 + 8) & ~*(v90 + 80);
    v96 = (v184 + *(v182 + 80) + v95) & ~*(v182 + 80);
    v196 = (v179 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = (*(v183 + 80) + v196 + 8) & ~*(v183 + 80);
    v98 = (v185 + *(v91 + 80) + v97) & ~*(v91 + 80);
    v99 = swift_allocObject();
    sub_2207A0510(v199, v99 + v92, v192);
    *(v99 + v93) = v194;
    *(v99 + v94) = v210;
    (*(v90 + 32))(v99 + v95, v200, v202);
    v100 = v195;
    sub_2207A0510(v207, v99 + v96, v191);
    *(v99 + v196) = v100;
    sub_2207A066C(v208, v99 + v97);
    (*(v91 + 32))(v99 + v98, v209, v206);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v203, sub_2205715CC);
    sub_2207A11D0(v204, &qword_27CF59B88, v197);
  }

  else
  {
    v101 = v195;
    v102 = v194;
    v103 = v192;
    (*(v194 + 104))(v192, *MEMORY[0x277D68668], v195);
    v104 = sub_2208895AC();
    v105 = v204;
    (*(*(v104 - 8) + 56))(v204, 1, 1, v104);
    v106 = v203;
    sub_22088867C();
    v172 = *v72;
    v107 = *(v55 + 20);
    v171 = *(v64 + 20);
    v161 = *(v210 + 104);
    v164 = *(v161 + 32);
    v173 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v72, v199, type metadata accessor for StocksAudioTrack);
    v108 = v201;
    v109 = *(v201 + 16);
    v169 = v201 + 16;
    v170 = v109;
    v109(v200, v72 + v107, v202);
    v177 = sub_2205715CC;
    sub_2207A04A8(v106, v207, sub_2205715CC);
    v110 = v198;
    v111 = *(v198 + 16);
    v167 = v198 + 16;
    v168 = v111;
    v111(v197, v186, v191);
    v112 = *(v102 + 16);
    v165 = v102 + 16;
    v166 = v112;
    v112(v190, v103, v101);
    v178 = MEMORY[0x277D68648];
    sub_2207A0578(v105, v208, &qword_27CF59B88, MEMORY[0x277D68648]);
    v113 = v205;
    v114 = *(v205 + 16);
    v162 = v205 + 16;
    v163 = v114;
    v114(v209, v196, v206);
    v115 = *(v180 + 80);
    v116 = (v115 + 16) & ~v115;
    v180 = v116;
    v117 = (v181 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v181 = v117;
    v118 = *(v108 + 80);
    v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
    v160 = v119;
    v120 = (v118 + v119 + 8) & ~v118;
    v121 = *(v182 + 80);
    v159 = v120;
    v122 = *(v110 + 80);
    v123 = (v184 + v121 + v120) & ~v121;
    v158 = v123;
    v124 = (v179 + v122 + v123) & ~v122;
    v156 = v124;
    v125 = (v176 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = *(v102 + 80);
    v157 = v125;
    v184 = (v126 + v125 + 8) & ~v126;
    v127 = (v175 + v184 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v128 = *(v183 + 80);
    v155 = v127;
    v183 = (v128 + v127 + 5) & ~v128;
    v129 = *(v113 + 80);
    v185 = (v185 + v129 + v183) & ~v129;
    v182 = v115 | v118 | v121 | v122 | v126 | v128 | v129;
    v130 = swift_allocObject();
    v131 = v199;
    sub_2207A0510(v199, v130 + v116, v173);
    *(v130 + v117) = v172;
    *(v130 + v119) = v210;
    v132 = *(v201 + 32);
    v201 += 32;
    v179 = v132;
    v132(v130 + v120, v200, v202);
    sub_2207A0510(v207, v130 + v123, v177);
    v133 = *(v198 + 32);
    v198 += 32;
    v176 = v133;
    v133(v130 + v124, v197, v191);
    *(v130 + v125) = v161;
    v134 = *(v194 + 32);
    v154 = v194 + 32;
    v175 = v134;
    v135 = v190;
    v134(v130 + v184, v190, v195);
    v136 = v130 + v127;
    *v136 = 0;
    *(v136 + 4) = 1;
    sub_2207A066C(v208, v130 + v183);
    v137 = *(v205 + 32);
    v205 += 32;
    v153 = v137;
    v138 = v206;
    v137(v130 + v185, v209, v206);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_22088726C();

    v139 = *(v210 + 104);
    v164 = *(v139 + 32);
    v140 = v174;
    v141 = v131;
    v142 = v173;
    sub_2207A04A8(v174, v141, v173);
    v143 = v200;
    v144 = v202;
    v170(v200, v140 + v171, v202);
    v145 = v177;
    sub_2207A04A8(v203, v207, v177);
    v146 = v191;
    v168(v197, v186, v191);
    v147 = v195;
    v166(v135, v192, v195);
    sub_2207A0578(v204, v208, &qword_27CF59B88, v178);
    v163(v209, v196, v138);
    v148 = v185;
    v149 = swift_allocObject();
    sub_2207A0510(v199, v149 + v180, v142);
    *(v149 + v181) = v172;
    *(v149 + v160) = v210;
    v179(v149 + v159, v143, v144);
    sub_2207A0510(v207, v149 + v158, v145);
    v176(v149 + v156, v197, v146);
    *(v149 + v157) = v139;
    v175(v149 + v184, v190, v147);
    v150 = v149 + v155;
    *v150 = 0;
    *(v150 + 4) = 1;
    sub_2207A066C(v208, v149 + v183);
    v153(v149 + v148, v209, v206);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_22088726C();

    sub_2207A0448(v203, sub_2205715CC);
    sub_2207A11D0(v204, &qword_27CF59B88, v178);
    (*(v194 + 8))(v192, v147);
  }

  v151 = v187;
  sub_22088515C();
  sub_220886FCC();
  (*(v188 + 8))(v151, v189);
  return sub_2207A0448(v174, type metadata accessor for StocksAudioTrack);
}

uint64_t sub_2207987FC(uint64_t (*a1)(uint64_t), unint64_t a2, double a3)
{
  v115 = a2;
  v113 = a1;
  v132 = sub_22088959C();
  v119 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v5);
  v117 = v6;
  v131 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_220889ACC();
  v118 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v7);
  v114 = v8;
  v129 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088698C();
  v116 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v9);
  v112 = v10;
  v126 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v110 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v127 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v136 = &v99 - v17;
  v137 = sub_2208895BC();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v18);
  v125 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v134 = &v99 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v99 - v25;
  sub_2205715CC();
  v107 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v124 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v122 = &v99 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v121 = &v99 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v133 = &v99 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v99 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v99 - v45;
  v104 = v47;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v99 - v50;
  v52 = type metadata accessor for StocksAudioTrack();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54);
  v123 = &v99 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v99 - v58;
  v120 = v3;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v51, sub_2205715CC);
  v105 = v53;
  v60 = v53;
  v61 = v52;
  if ((*(v60 + 48))(v26, 1, v52) == 1)
  {
    return sub_2207A11D0(v26, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v109 = v59;
  sub_2207A0510(v26, v59, type metadata accessor for StocksAudioTrack);
  v63 = v120;
  v64 = *(v120 + 104);

  sub_22088867C();
  sub_2207A0510(v46, v42, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v67 = 0.0;
    v68 = v122;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v66);
    v68 = v122;
  }

  v67 = *&v42[*(v69 + 48)];
  v70 = *(v69 + 64);
  v71 = sub_22088774C();
  (*(*(v71 - 8) + 8))(&v42[v70], v71);
  sub_2207A0448(v42, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v64 + 48) & 1) == 0)
  {
    v72 = v67 - *(v64 + 40);
    if (v72 <= 0.0)
    {
      v72 = 0.0;
    }

    *(v64 + 56) = *(v64 + 56) + v72;
    *(v64 + 64) = v72;
    *(v64 + 40) = 0;
    *(v64 + 48) = 1;
  }

  v73 = *(v63 + 104);
  *(v73 + 40) = 0;
  *(v73 + 48) = 1;
  (*(v135 + 13))(v134, *MEMORY[0x277D68688], v137);
  v74 = sub_2208895AC();
  (*(*(v74 - 8) + 56))(v136, 1, 1, v74);
  sub_22088867C();
  v75 = v121;
  sub_22088867C();
  sub_2207A0510(v75, v68, sub_2205715CC);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v77 = 0.0;
    v78 = v109;
    if (result != 1)
    {
      goto LABEL_17;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v76);
    v78 = v109;
  }

  v77 = *(v68 + *(v79 + 48));
  v80 = *(v79 + 64);
  v81 = sub_22088774C();
  (*(*(v81 - 8) + 8))(v68 + v80, v81);
  result = sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
LABEL_17:
  v82 = v77 - a3;
  v83 = COERCE__INT64(fabs(v77 - a3)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v77 - a3 > 0.0)
  {
    if (v83)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v82 = 0.0;
  }

  if (v82 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v82 < 2147483650.0)
  {
    LODWORD(v121) = v82;
    v102 = *v78;
    v84 = *(v61 + 20);
    v103 = *(v63 + 104);
    v122 = *(v103 + 32);
    v101 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v78, v123, type metadata accessor for StocksAudioTrack);
    v85 = v116;
    (*(v116 + 16))(v126, &v78[v84], v128);
    v100 = sub_2205715CC;
    sub_2207A04A8(v133, v124, sub_2205715CC);
    v86 = v118;
    (*(v118 + 16))(v129, v113, v130);
    v87 = v135;
    (*(v135 + 2))(v125, v134, v137);
    v113 = MEMORY[0x277D68648];
    sub_2207A0578(v136, v127, &qword_27CF59B88, MEMORY[0x277D68648]);
    v88 = v119;
    (*(v119 + 16))(v131, v115, v132);
    v89 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v90 = (v106 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = v63;
    v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v85 + 80) + v92 + 8) & ~*(v85 + 80);
    v94 = (v112 + *(v107 + 80) + v93) & ~*(v107 + 80);
    v106 = (v104 + *(v86 + 80) + v94) & ~*(v86 + 80);
    v107 = (v114 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v87[80] + v107 + 8) & ~v87[80];
    v114 = (v108 + v112 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v115 = (*(v110 + 80) + v114 + 5) & ~*(v110 + 80);
    v111 = (v111 + *(v88 + 80) + v115) & ~*(v88 + 80);
    v95 = swift_allocObject();
    sub_2207A0510(v123, v95 + v89, v101);
    *(v95 + v90) = v102;
    *(v95 + v92) = v91;
    (*(v85 + 32))(v95 + v93, v126, v128);
    sub_2207A0510(v124, v95 + v94, v100);
    (*(v86 + 32))(v95 + v106, v129, v130);
    *(v95 + v107) = v103;
    v96 = v135;
    v97 = v137;
    (*(v135 + 4))(v95 + v112, v125, v137);
    v98 = v95 + v114;
    *v98 = v121;
    *(v98 + 4) = 0;
    sub_2207A066C(v127, v95 + v115);
    (*(v88 + 32))(v95 + v111, v131, v132);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v133, sub_2205715CC);
    sub_2207A11D0(v136, &qword_27CF59B88, v113);
    (v96[1])(v134, v97);

    return sub_2207A0448(v109, type metadata accessor for StocksAudioTrack);
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_220799590(uint64_t (*a1)(uint64_t), unint64_t a2, double a3)
{
  v117 = a2;
  v115 = a1;
  v133 = sub_22088959C();
  v121 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v5);
  v119 = v6;
  v132 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_220889ACC();
  v120 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v7);
  v116 = v8;
  v130 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088698C();
  v118 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v9);
  v114 = v10;
  v127 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v112 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v128 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v138 = &v101 - v17;
  v139 = sub_2208895BC();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v18);
  v126 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v19;
  MEMORY[0x28223BE20](v20, v21);
  v136 = &v101 - v22;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v11);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v101 - v25;
  sub_2205715CC();
  v109 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v125 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v123 = &v101 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v122 = &v101 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v135 = &v101 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v101 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v101 - v45;
  v106 = v47;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v101 - v50;
  v52 = type metadata accessor for StocksAudioTrack();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54);
  v124 = &v101 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v101 - v58;
  v134 = v3;
  sub_22088867C();
  sub_2208878BC();
  sub_2207A0448(v51, sub_2205715CC);
  v107 = v53;
  v60 = v53;
  v61 = v52;
  if ((*(v60 + 48))(v26, 1, v52) == 1)
  {
    return sub_2207A11D0(v26, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v111 = v59;
  sub_2207A0510(v26, v59, type metadata accessor for StocksAudioTrack);
  v63 = v134;
  v64 = *(v134 + 104);

  sub_22088867C();
  sub_2207A0510(v46, v42, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v67 = 0.0;
    v68 = v123;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v66);
    v68 = v123;
  }

  v67 = *&v42[*(v69 + 48)];
  v70 = *(v69 + 64);
  v71 = sub_22088774C();
  (*(*(v71 - 8) + 8))(&v42[v70], v71);
  sub_2207A0448(v42, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v64 + 48) & 1) == 0)
  {
    v72 = v67 - *(v64 + 40);
    if (v72 <= 0.0)
    {
      v72 = 0.0;
    }

    *(v64 + 56) = *(v64 + 56) + v72;
    *(v64 + 64) = v72;
    *(v64 + 40) = 0;
    *(v64 + 48) = 1;
  }

  v73 = *(v63 + 104);
  *(v73 + 40) = 0;
  *(v73 + 48) = 1;
  (*(v137 + 13))(v136, *MEMORY[0x277D68650], v139);
  v74 = sub_2208895AC();
  (*(*(v74 - 8) + 56))(v138, 1, 1, v74);
  sub_22088867C();
  v75 = v122;
  sub_22088867C();
  sub_2207A0510(v75, v68, sub_2205715CC);
  v76 = swift_getEnumCaseMultiPayload();
  if (v76)
  {
    v78 = 0.0;
    if (v76 != 1)
    {
      goto LABEL_17;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v77);
  }

  v78 = *(v68 + *(v79 + 48));
  v80 = *(v79 + 64);
  v81 = sub_22088774C();
  (*(*(v81 - 8) + 8))(v68 + v80, v81);
  sub_2207A0448(v68, type metadata accessor for StocksAudioTrack);
LABEL_17:
  v82 = v78 + a3;
  v83 = v111;
  result = [*&v111[*(v61 + 24)] duration];
  if (v84 >= v82)
  {
    v84 = v82;
  }

  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v84 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v84 < 2147483650.0)
  {
    LODWORD(v122) = v84;
    v104 = *v83;
    v85 = *(v61 + 20);
    v105 = *(v63 + 104);
    v123 = *(v105 + 32);
    v103 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v83, v124, type metadata accessor for StocksAudioTrack);
    v86 = v118;
    (*(v118 + 16))(v127, &v83[v85], v129);
    v102 = sub_2205715CC;
    sub_2207A04A8(v135, v125, sub_2205715CC);
    v87 = v120;
    (*(v120 + 16))(v130, v115, v131);
    v88 = v137;
    (*(v137 + 2))(v126, v136, v139);
    v115 = MEMORY[0x277D68648];
    sub_2207A0578(v138, v128, &qword_27CF59B88, MEMORY[0x277D68648]);
    v89 = v121;
    (*(v121 + 16))(v132, v117, v133);
    v90 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v91 = (v108 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v86 + 80) + v92 + 8) & ~*(v86 + 80);
    v94 = (v114 + *(v109 + 80) + v93) & ~*(v109 + 80);
    v108 = (v106 + *(v87 + 80) + v94) & ~*(v87 + 80);
    v109 = (v116 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v88[80] + v109 + 8) & ~v88[80];
    v116 = (v110 + v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v117 = (*(v112 + 80) + v116 + 5) & ~*(v112 + 80);
    v113 = (v113 + *(v89 + 80) + v117) & ~*(v89 + 80);
    v95 = swift_allocObject();
    v96 = v134;
    v97 = v95;
    sub_2207A0510(v124, v95 + v90, v103);
    *(v97 + v91) = v104;
    *(v97 + v92) = v96;
    (*(v86 + 32))(v97 + v93, v127, v129);
    sub_2207A0510(v125, v97 + v94, v102);
    (*(v87 + 32))(v97 + v108, v130, v131);
    *(v97 + v109) = v105;
    v98 = v137;
    v99 = v139;
    (*(v137 + 4))(v97 + v114, v126, v139);
    v100 = v97 + v116;
    *v100 = v122;
    *(v100 + 4) = 0;
    sub_2207A066C(v128, v97 + v117);
    (*(v89 + 32))(v97 + v113, v132, v133);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v135, sub_2205715CC);
    sub_2207A11D0(v138, &qword_27CF59B88, v115);
    (v98[1])(v136, v99);

    return sub_2207A0448(v111, type metadata accessor for StocksAudioTrack);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22079A324(uint64_t a1, uint64_t a2, double a3)
{
  v199 = a2;
  v198 = a1;
  v5 = sub_22088959C();
  v206 = *(v5 - 8);
  v207 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v176 = v7;
  v218 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_220889ACC();
  v216 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v8);
  v196 = v9;
  v205 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22088698C();
  v203 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v10);
  v195 = v11;
  v212 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v175 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v211 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v215 = &v158 - v18;
  v204 = sub_2208895BC();
  v208 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v19);
  v217 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v20;
  MEMORY[0x28223BE20](v21, v22);
  v213 = &v158 - v23;
  sub_2204FC5D8(0, qword_281296160, type metadata accessor for StocksAudioTrack, v12);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v158 - v26;
  sub_2205715CC();
  v29 = v28;
  v193 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v209 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v210 = &v158 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v158 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v158 - v41;
  v183 = v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v158 - v46;
  v48 = type metadata accessor for StocksAudioTrack();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v202 = &v158 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v51;
  MEMORY[0x28223BE20](v52, v53);
  v55 = (&v158 - v54);
  v200 = v3;
  v56 = *(v3 + 48);
  sub_22088867C();
  v197 = v29;
  sub_2208878BC();
  sub_2207A0448(v47, sub_2205715CC);
  v184 = v49;
  v57 = *(v49 + 48);
  v192 = v48;
  if (v57(v27, 1, v48) == 1)
  {
    return sub_2207A11D0(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  sub_2207A0510(v27, v55, type metadata accessor for StocksAudioTrack);
  v59 = v200;
  v60 = *(v200 + 104);

  sub_22088867C();
  sub_2207A0510(v42, v38, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v63 = 0.0;
    v64 = v56;
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_8;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v62);
    v64 = v56;
  }

  v63 = *&v38[*(v65 + 48)];
  v66 = *(v65 + 64);
  v67 = sub_22088774C();
  (*(*(v67 - 8) + 8))(&v38[v66], v67);
  sub_2207A0448(v38, type metadata accessor for StocksAudioTrack);
LABEL_8:
  if ((*(v60 + 48) & 1) == 0)
  {
    v68 = v63 - *(v60 + 40);
    if (v68 <= 0.0)
    {
      v68 = 0.0;
    }

    *(v60 + 56) = *(v60 + 56) + v68;
    *(v60 + 64) = v68;
    *(v60 + 40) = 0;
    *(v60 + 48) = 1;
  }

  v69 = *(v59 + 104);
  *(v69 + 40) = 0;
  *(v69 + 48) = 1;
  v70 = *MEMORY[0x277D68668];
  v71 = v208;
  v72 = v208[13];
  v164 = v208 + 13;
  v165 = v72;
  v73 = v213;
  v74 = v59;
  v75 = v204;
  v72(v213, v70, v204);
  v162 = sub_2208895AC();
  v76 = *(v162 - 1);
  v161 = *(v76 + 56);
  v163 = (v76 + 56);
  v77 = v215;
  v161(v215, 1, 1, v162);
  v78 = v210;
  sub_22088867C();
  v197 = *v55;
  v191 = v55 + *(v192 + 5);
  v79 = v191;
  v158 = *(v74 + 104);
  v159 = *(v158 + 32);
  v167 = type metadata accessor for StocksAudioTrack;
  sub_2207A04A8(v55, v202, type metadata accessor for StocksAudioTrack);
  v80 = v203;
  v81 = *(v203 + 16);
  v190 = v203 + 16;
  v189 = v81;
  v81(v212, v79, v214);
  v166 = sub_2205715CC;
  v160 = v64;
  sub_2207A04A8(v78, v209, sub_2205715CC);
  v82 = v216;
  v83 = *(v216 + 16);
  v179 = v216 + 16;
  v188 = v83;
  v83(v205, v198, v201);
  v84 = v71[2];
  v187 = v71 + 2;
  v186 = v84;
  v84(v217, v73, v75);
  v168 = MEMORY[0x277D68648];
  sub_2207A0578(v77, v211, &qword_27CF59B88, MEMORY[0x277D68648]);
  v192 = v55;
  v85 = v206;
  v86 = *(v206 + 16);
  v178 = v206 + 16;
  v177 = v86;
  v86(v218, v199, v207);
  v87 = *(v184 + 80);
  v88 = (v87 + 16) & ~v87;
  v182 = v88;
  v89 = (v185 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v185 = v89;
  v90 = *(v80 + 80);
  v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v184 = v91;
  v92 = (v90 + v91 + 8) & ~v90;
  v93 = *(v193 + 80);
  v180 = v92;
  v94 = *(v82 + 80);
  v95 = (v195 + v93 + v92) & ~v93;
  v181 = v95;
  v183 = (v183 + v94 + v95) & ~v94;
  v96 = v183;
  v97 = (v196 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = *(v71 + 80);
  v169 = v97;
  v193 = (v98 + v97 + 8) & ~v98;
  v196 = (v174 + v193 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v99 = *(v175 + 80);
  v195 = (v99 + v196 + 5) & ~v99;
  v100 = *(v85 + 80);
  v101 = v85;
  v194 = (v194 + v100 + v195) & ~v100;
  v176 += v194;
  v175 = v87 | v90 | v93 | v94 | v98 | v99 | v100;
  v102 = swift_allocObject();
  sub_2207A0510(v202, v102 + v88, v167);
  v103 = v197;
  *(v102 + v89) = v197;
  v104 = v200;
  *(v102 + v91) = v200;
  v105 = *(v80 + 32);
  v203 = v80 + 32;
  v174 = v105;
  v106 = v212;
  v105(v102 + v92, v212, v214);
  v107 = v209;
  sub_2207A0510(v209, v102 + v95, v166);
  v108 = *(v216 + 32);
  v216 += 32;
  v173 = v108;
  v109 = v205;
  v108(v102 + v96, v205, v201);
  *(v102 + v97) = v158;
  v110 = v104;
  v111 = v208[4];
  v172 = v208 + 4;
  v171 = v111;
  v112 = v217;
  v111(v102 + v193, v217, v204);
  v113 = v102 + v196;
  *v113 = 0;
  *(v113 + 4) = 1;
  sub_2207A066C(v211, v102 + v195);
  v114 = *(v101 + 32);
  v206 = v101 + 32;
  v170 = v114;
  v115 = v218;
  v114(v102 + v194, v218, v207);
  swift_retain_n();
  v116 = v103;
  swift_unknownObjectRetain();

  sub_22088726C();

  v158 = *(v110 + 104);
  v159 = *(v158 + 32);
  v117 = v202;
  v118 = v167;
  sub_2207A04A8(v192, v202, v167);
  v119 = v214;
  v189(v106, v191, v214);
  v120 = v107;
  v121 = v166;
  sub_2207A04A8(v210, v120, v166);
  v122 = v109;
  v123 = v201;
  v188(v122, v198, v201);
  v124 = v204;
  v186(v112, v213, v204);
  v125 = v211;
  sub_2207A0578(v215, v211, &qword_27CF59B88, v168);
  v126 = v115;
  v127 = v207;
  v177(v126, v199, v207);
  v128 = swift_allocObject();
  sub_2207A0510(v117, v128 + v182, v118);
  *(v128 + v185) = v116;
  v129 = v200;
  *(v128 + v184) = v200;
  v174(v128 + v180, v212, v119);
  sub_2207A0510(v209, v128 + v181, v121);
  v173(v128 + v183, v205, v123);
  *(v128 + v169) = v158;
  v171(v128 + v193, v217, v124);
  v130 = v128 + v196;
  *v130 = 0;
  *(v130 + 4) = 1;
  sub_2207A066C(v125, v128 + v195);
  v170(v128 + v194, v218, v127);
  swift_retain_n();
  swift_unknownObjectRetain();
  v131 = v129;

  sub_22088726C();

  sub_2207A0448(v210, sub_2205715CC);
  v132 = v215;
  sub_2207A11D0(v215, &qword_27CF59B88, v168);
  v133 = v208[1];
  v134 = v213;
  ++v208;
  (v133)(v213, v124);

  v165(v134, *MEMORY[0x277D68678], v124);
  v161(v132, 1, 1, v162);
  result = sub_22088867C();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= -2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 2147483650.0)
  {
    LODWORD(v167) = a3;
    v135 = v131;
    v164 = *(v131 + 104);
    v165 = v164[4];
    v136 = v202;
    v163 = type metadata accessor for StocksAudioTrack;
    sub_2207A04A8(v192, v202, type metadata accessor for StocksAudioTrack);
    v189(v212, v191, v214);
    v162 = sub_2205715CC;
    sub_2207A04A8(v210, v209, sub_2205715CC);
    v137 = v205;
    v166 = v133;
    v138 = v201;
    v188(v205, v198, v201);
    v139 = v204;
    v186(v217, v213, v204);
    v168 = MEMORY[0x277D68648];
    sub_2207A0578(v215, v211, &qword_27CF59B88, MEMORY[0x277D68648]);
    v140 = v207;
    v177(v218, v199, v207);
    v141 = swift_allocObject();
    sub_2207A0510(v136, v141 + v182, type metadata accessor for StocksAudioTrack);
    *(v141 + v185) = v197;
    *(v141 + v184) = v131;
    v174(v141 + v180, v212, v214);
    v142 = v209;
    sub_2207A0510(v209, v141 + v181, sub_2205715CC);
    v143 = v138;
    v173(v141 + v183, v137, v138);
    *(v141 + v169) = v164;
    v171(v141 + v193, v217, v139);
    v144 = v141 + v196;
    *v144 = v167;
    *(v144 + 4) = 0;
    v145 = v211;
    sub_2207A066C(v211, v141 + v195);
    v170(v141 + v194, v218, v140);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    v164 = *(v135 + 104);
    v165 = v164[4];
    v146 = v202;
    v147 = v163;
    sub_2207A04A8(v192, v202, v163);
    v148 = v212;
    v149 = v214;
    v189(v212, v191, v214);
    v150 = v142;
    v151 = v162;
    sub_2207A04A8(v210, v150, v162);
    v152 = v205;
    v153 = v143;
    v188(v205, v198, v143);
    v154 = v204;
    v186(v217, v213, v204);
    sub_2207A0578(v215, v145, &qword_27CF59B88, v168);
    v155 = v207;
    v177(v218, v199, v207);
    v156 = swift_allocObject();
    sub_2207A0510(v146, v156 + v182, v147);
    *(v156 + v185) = v197;
    *(v156 + v184) = v200;
    v174(v156 + v180, v148, v149);
    sub_2207A0510(v209, v156 + v181, v151);
    v173(v156 + v183, v152, v153);
    *(v156 + v169) = v164;
    v171(v156 + v193, v217, v154);
    v157 = v156 + v196;
    *v157 = v167;
    *(v157 + 4) = 0;
    sub_2207A066C(v211, v156 + v195);
    v170(v156 + v194, v218, v155);
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_22088726C();

    sub_2207A0448(v210, sub_2205715CC);
    sub_2207A11D0(v215, &qword_27CF59B88, v168);
    (v166)(v213, v154);

    return sub_2207A0448(v192, type metadata accessor for StocksAudioTrack);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22079BBE0()
{
  v1 = v0;
  sub_220889F2C();
  sub_2204FFF04(&qword_27CF59C10, MEMORY[0x277D68E48]);
  sub_2208872BC();
  sub_220889FEC();
  sub_2204FFF04(&qword_2812982D8, MEMORY[0x277D68ED8]);
  sub_2208872BC();
  sub_22088A0DC();
  sub_2204FFF04(&unk_281298290, MEMORY[0x277D68FD8]);
  sub_2208872BC();
  v2 = sub_2208872FC();
  sub_22088A01C();
  sub_2204FFF04(&unk_2812982B0, MEMORY[0x277D68F18]);
  sub_2208872BC();
  *(v1 + 40) = v2;
}

id sub_22079BDEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v140 = a7;
  v141 = a8;
  v144 = a6;
  v137 = a5;
  v117 = a4;
  v136 = a3;
  v156 = a1;
  v13 = sub_22088959C();
  v126 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v123 = &v110 - v20;
  v122 = sub_2208895BC();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v21);
  v145 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22088998C();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v23);
  v124 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &unk_27CF59BA8, MEMORY[0x277D68DE0], v17);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v113 = &v110 - v27;
  v139 = sub_220889E9C();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v28);
  v118 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_220889ACC();
  v30 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v31);
  v142 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22088935C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2208898CC();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v38);
  v146 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22088A10C();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v40);
  v110 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2208891DC();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v42);
  v114 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2208895EC();
  v133 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v44);
  v132 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2208893AC();
  MEMORY[0x28223BE20](v46 - 8, v47);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088A17C();
  v150 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v110 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a2 + *(type metadata accessor for StocksAudioTrack() + 24)) duration];
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v128 = v37;
  v129 = v34;
  v130 = v33;
  v131 = v30;
  v119 = v16;
  v120 = v13;
  sub_22067DEE0(v49);
  v56 = v53;
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v152 = v57;
  v58 = sub_220886F8C();
  v153 = v58;
  v59 = *(v58 - 8);
  v155 = *(v59 + 72);
  v60 = v50;
  v61 = *(v59 + 80);
  v62 = (v61 + 32) & ~v61;
  v63 = swift_allocObject();
  v154 = xmmword_220899360;
  *(v63 + 16) = xmmword_220899360;
  v64 = *MEMORY[0x277CEAD18];
  v65 = *(v59 + 104);
  v65(v63 + v62, v64, v58);
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0]);
  sub_220886F1C();

  v66 = *(v150 + 1);
  v149 = v64;
  v66(v56, v60);
  v67 = v136;
  swift_getObjectType();
  v68 = v132;
  sub_2206F61F0(v132);
  v147 = v61;
  v69 = v59 + 104;
  v70 = v62;
  v71 = swift_allocObject();
  *(v71 + 16) = v154;
  v148 = v65;
  v65(v71 + v62, v64, v153);
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0]);
  v150 = "baseAssetProvider transform ";
  v72 = v151;
  sub_220886F1C();

  (*(v133 + 8))(v68, v72);
  v73 = [v67 sourceChannel];
  if (v73)
  {
    v74 = v73;
    __swift_project_boxed_opaque_existential_1((v117 + 56), *(v117 + 80));
    v75 = v114;
    sub_2206EC95C(v74);
    v76 = swift_allocObject();
    *(v76 + 16) = v154;
    v148(&v70[v76], v149, v153);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340]);
    v77 = v116;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v115 + 8))(v75, v77);
  }

  v151 = v69;
  if ([v67 respondsToSelector_])
  {
    v78 = [v67 parentIssue];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 identifier];
      sub_22089136C();

      v81 = v110;
      sub_22088A0FC();
      v82 = swift_allocObject();
      *(v82 + 16) = v154;
      v148(&v70[v82], v149, v153);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030]);
      v83 = v112;
      sub_220886F1C();

      (*(v111 + 8))(v81, v83);
    }
  }

  sub_22057BB68();
  v84 = swift_allocObject();
  *(v84 + 16) = v154;
  v85 = v149;
  v86 = v153;
  v87 = v148;
  v148(&v70[v84], v149, v153);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860]);
  v88 = v135;
  sub_220886F1C();

  (*(v134 + 8))(v146, v88);
  v89 = v128;
  sub_22079D1CC();
  v90 = swift_allocObject();
  *(v90 + 16) = v154;
  v146 = v70;
  v87(&v70[v90], v85, v86);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400]);
  v91 = v130;
  sub_220886F1C();

  (*(v129 + 8))(v89, v91);
  v92 = *MEMORY[0x277D68A28];
  v93 = v131;
  v94 = *(v131 + 104);
  v96 = v142;
  v95 = v143;
  v94(v142, v92, v143);
  sub_2204FFF04(&qword_27CF59BD0, MEMORY[0x277D68A30]);
  v97 = v140;
  v98 = sub_2208912FC();
  (*(v93 + 8))(v96, v95);
  if (v98)
  {
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0]);
    v99 = v113;
    v100 = v139;
    sub_220886F0C();
    v101 = v138;
    v102 = (*(v138 + 48))(v99, 1, v100);
    result = sub_2207A11D0(v99, &unk_27CF59BA8, MEMORY[0x277D68DE0]);
    v103 = v146;
    if (v102 != 1)
    {
      goto LABEL_14;
    }

    v94(v142, v92, v143);
    v104 = v118;
    sub_220889E8C();
    sub_220886F1C();
  }

  else
  {
    (*(v93 + 16))(v96, v97, v95);
    v104 = v118;
    sub_220889E8C();
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0]);
    v100 = v139;
    sub_220886F1C();
    v103 = v146;
    v101 = v138;
  }

  result = (*(v101 + 8))(v104, v100);
LABEL_14:
  v105 = *(v141 + 56);
  if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v105 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v105 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v106 = *(v141 + 64);
  if ((*&v106 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v106 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v106 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  (*(v121 + 16))(v145, a9, v122);
  if ((a10 & 0x100000000) != 0)
  {
    sub_22079D394();
  }

  sub_2207A0578(a11, v123, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v126 + 16))(v119, a12, v120);

  v107 = v124;
  sub_22088997C();
  v108 = swift_allocObject();
  *(v108 + 16) = v154;
  v148(&v103[v108], v149, v153);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918]);
  v109 = v127;
  sub_220886F1C();

  (*(v125 + 8))(v107, v109);
  sub_220889D2C();
  sub_2204FFF04(&qword_27CF59C00, MEMORY[0x277D68C68]);
  return sub_220886E9C();
}

uint64_t sub_22079D1CC()
{
  v1 = v0;
  v2 = sub_22088774C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205715CC();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A04A8(v1, v10, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v12);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464();
LABEL_5:
    (*(v3 + 32))(v6, &v10[*(v13 + 64)], v2);
    sub_22088773C();
    sub_22088934C();
    (*(v3 + 8))(v6, v2);
    return sub_2207A0448(v10, type metadata accessor for StocksAudioTrack);
  }

  return sub_22088934C();
}

uint64_t sub_22079D394()
{
  sub_2205715CC();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A04A8(v0, v4, sub_2205715CC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v7 = 0.0;
    if (EnumCaseMultiPayload != 1)
    {
      return v7;
    }

    sub_2205D1464();
  }

  else
  {
    sub_2205D153C(0, v6);
  }

  v7 = *&v4[*(v8 + 48)];
  v9 = *(v8 + 64);
  v10 = sub_22088774C();
  (*(*(v10 - 8) + 8))(&v4[v9], v10);
  result = sub_2207A0448(v4, type metadata accessor for StocksAudioTrack);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v7 <= -2147483650.0)
    {
      __break(1u);
    }

    else if (v7 < 2147483650.0)
    {
      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22079D508(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v176 = a8;
  v175 = a7;
  v177 = a6;
  v171 = a5;
  v178 = a4;
  v170 = a3;
  v189 = a1;
  v13 = sub_22088944C();
  v158 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v156 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v154 = &v132 - v18;
  v155 = sub_220886A4C();
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v19);
  v152 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088943C();
  v159 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v157 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22088959C();
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v24);
  v150 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D83D88];
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v145 = &v132 - v29;
  v144 = sub_2208895BC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v30);
  v179 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22088998C();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v32);
  v146 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &unk_27CF59BA8, MEMORY[0x277D68DE0], v26);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v132 - v36;
  v174 = sub_220889E9C();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v38);
  v140 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_220889ACC();
  v172 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_22088935C();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v44);
  v167 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2208898CC();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v46);
  v164 = &v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22088A10C();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v48);
  v133 = &v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2208891DC();
  v139 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51);
  v138 = &v132 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2208895EC();
  v163 = *(v181 - 1);
  MEMORY[0x28223BE20](v181, v53);
  v162 = &v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2208893AC();
  MEMORY[0x28223BE20](v55 - 8, v56);
  v58 = &v132 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22088A17C();
  v188 = *(v59 - 1);
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v132 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + *(type metadata accessor for StocksAudioTrack() + 24)) duration];
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v63 <= -2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v63 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  v137 = v50;
  v160 = v43;
  v161 = v40;
  v136 = v37;
  v141 = v13;
  v142 = v21;
  sub_22067DEE0(v58);
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v185 = v64;
  v65 = sub_220886F8C();
  v184 = v65;
  v66 = *(v65 - 8);
  v186 = *(v66 + 72);
  v67 = *(v66 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = swift_allocObject();
  v190 = xmmword_220899360;
  *(v69 + 16) = xmmword_220899360;
  v70 = *MEMORY[0x277CEAD18];
  v71 = *(v66 + 104);
  v71(v69 + v68, v70, v65);
  v183 = "baseAssetProvider transform ";
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0]);
  sub_220886F1C();
  v72 = v67;

  (*(v188 + 8))(v62, v59);
  v73 = v170;
  swift_getObjectType();
  v74 = v162;
  sub_2206F61F0(v162);
  v187 = v72;
  v75 = swift_allocObject();
  *(v75 + 16) = v190;
  v180 = v68;
  v182 = v70;
  v76 = v70;
  v77 = v184;
  v188 = v66 + 104;
  v71(v75 + v68, v76, v184);
  v78 = v71;
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0]);
  v79 = v181;
  sub_220886F1C();

  v80 = v74;
  v81 = v77;
  (*(v163 + 8))(v80, v79);
  v82 = [v73 sourceChannel];
  if (v82)
  {
    v83 = v82;
    __swift_project_boxed_opaque_existential_1(v178 + 7, v178[10]);
    v84 = v138;
    sub_2206EC95C(v83);
    v85 = v180;
    v86 = swift_allocObject();
    *(v86 + 16) = v190;
    v78(v86 + v85, v182, v81);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340]);
    v87 = v137;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v139 + 8))(v84, v87);
  }

  v181 = v78;
  if ([v73 respondsToSelector_])
  {
    v88 = [v73 parentIssue];
    if (v88)
    {
      v89 = v88;
      v90 = [v88 identifier];
      sub_22089136C();

      v91 = v133;
      v81 = v184;
      sub_22088A0FC();
      v92 = v180;
      v93 = swift_allocObject();
      *(v93 + 16) = v190;
      (v181)(v93 + v92, v182, v81);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030]);
      v94 = v135;
      sub_220886F1C();

      (*(v134 + 8))(v91, v94);
    }
  }

  v95 = v164;
  sub_22057BB68();
  v13 = v180;
  v96 = swift_allocObject();
  *(v96 + 16) = v190;
  v97 = v182;
  (v181)(v96 + v13, v182, v81);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860]);
  v98 = v166;
  sub_220886F1C();

  (*(v165 + 8))(v95, v98);
  v99 = v167;
  sub_22079D1CC();
  v58 = v97;
  v21 = v184;
  v100 = swift_allocObject();
  *(v100 + 16) = v190;
  v59 = v181;
  (v181)(v100 + v13, v97, v21);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400]);
  v101 = v169;
  sub_220886F1C();

  (*(v168 + 8))(v99, v101);
  if (qword_27CF55BA8 != -1)
  {
    goto LABEL_29;
  }

LABEL_10:
  v102 = sub_22088735C();
  __swift_project_value_buffer(v102, qword_27CF59B50);
  v103 = swift_allocObject();
  *(v103 + 16) = v190;
  v59(v103 + v13, v58, v21);
  sub_2204FFF04(&qword_27CF59BC8, MEMORY[0x277CEAED0]);
  sub_220886F1C();

  v104 = *MEMORY[0x277D68A28];
  v105 = v172;
  v106 = v160;
  v107 = v161;
  v171 = *(v172 + 104);
  v171(v160, v104, v161);
  sub_2204FFF04(&qword_27CF59BD0, MEMORY[0x277D68A30]);
  v108 = v175;
  v109 = sub_2208912FC();
  (*(v105 + 8))(v106, v107);
  if (v109)
  {
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0]);
    v110 = v136;
    v111 = v174;
    sub_220886F0C();
    v112 = v173;
    v113 = (*(v173 + 48))(v110, 1, v111);
    result = sub_2207A11D0(v110, &unk_27CF59BA8, MEMORY[0x277D68DE0]);
    if (v113 != 1)
    {
      goto LABEL_15;
    }

    v171(v106, v104, v107);
    v115 = v140;
    sub_220889E8C();
    sub_220886F1C();
  }

  else
  {
    (*(v105 + 16))(v106, v108, v107);
    v115 = v140;
    sub_220889E8C();
    sub_2204FFF04(&qword_27CF59BD8, MEMORY[0x277D68DE0]);
    v111 = v174;
    sub_220886F1C();
    v112 = v173;
  }

  result = (*(v112 + 8))(v115, v111);
LABEL_15:
  v116 = *(v176 + 56);
  if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v116 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v116 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v117 = *(v176 + 64);
  if ((*&v117 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v117 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v117 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  (*(v143 + 16))(v179, a9, v144);
  if ((a10 & 0x100000000) != 0)
  {
    sub_22079D394();
  }

  sub_2207A0578(a11, v145, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v148 + 16))(v150, a12, v151);

  v118 = v146;
  sub_22088997C();
  v119 = v180;
  v120 = swift_allocObject();
  *(v120 + 16) = v190;
  v121 = v181;
  (v181)(v120 + v119, v182, v184);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918]);
  v122 = v149;
  sub_220886F1C();

  (*(v147 + 8))(v118, v122);
  __swift_project_boxed_opaque_existential_1(v178 + 16, v178[19]);
  v123 = v152;
  sub_2208863EC();
  v124 = sub_2208869AC();
  v125 = v158;
  v126 = MEMORY[0x277D68560];
  if ((v124 & 1) == 0)
  {
    v126 = MEMORY[0x277D68558];
  }

  v127 = v154;
  v128 = v141;
  (*(v158 + 104))(v154, *v126, v141);
  (*(v125 + 16))(v156, v127, v128);
  v129 = v157;
  sub_22088942C();
  (*(v125 + 8))(v127, v128);
  (*(v153 + 8))(v123, v155);
  v130 = swift_allocObject();
  *(v130 + 16) = v190;
  v121(v130 + v119, v182, v184);
  sub_2204FFF04(&qword_2812984F0, MEMORY[0x277D68550]);
  v131 = v142;
  sub_220886F1C();

  (*(v159 + 8))(v129, v131);
  sub_2208896EC();
  sub_2204FFF04(&unk_27CF59BF0, MEMORY[0x277D68700]);
  memset(v191, 0, sizeof(v191));
  sub_220886F3C();
  return sub_2207A0448(v191, sub_22055F87C);
}

uint64_t sub_22079EDEC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v124 = a8;
  v143 = a7;
  v145 = a6;
  v142 = a5;
  v144 = a4;
  v141 = a3;
  v152 = a1;
  v10 = sub_22088944C();
  v131 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v129 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v127 = &v105 - v15;
  v128 = sub_220886A4C();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v16);
  v125 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088943C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v130 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22088959C();
  v120 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v22);
  v122 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v117 = &v105 - v26;
  v115 = sub_2208895BC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v27);
  v116 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22088998C();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v29);
  v118 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088935C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2208898CC();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v36);
  v138 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22088A10C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v38);
  v105 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2208891DC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v40);
  v108 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2208895EC();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v42);
  v135 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2208893AC();
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22088A17C();
  v48 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v49);
  v51 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + *(type metadata accessor for StocksAudioTrack() + 24)) duration];
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v52 <= -2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v52 >= 2147483650.0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_10;
  }

  v132 = v35;
  v133 = v32;
  v134 = v31;
  v111 = v10;
  v112 = v19;
  v113 = v18;
  sub_22067DEE0(v47);
  sub_22088A16C();
  sub_2204FC5D8(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v156 = v53;
  v54 = sub_220886F8C();
  v55 = *(v54 - 8);
  v153 = *(v55 + 72);
  v56 = *(v55 + 80);
  v57 = swift_allocObject();
  v155 = xmmword_220899360;
  *(v57 + 16) = xmmword_220899360;
  v151 = *MEMORY[0x277CEAD18];
  v146 = *(v55 + 104);
  v149 = v55 + 104;
  v146(v57 + ((v56 + 32) & ~v56));
  sub_2204FFF04(&qword_27CF59BB8, MEMORY[0x277D690B0]);
  v58 = v154;
  sub_220886F1C();
  v148 = v56;

  (*(v48 + 8))(v51, v58);
  v59 = v141;
  swift_getObjectType();
  v60 = v135;
  sub_2206F61F0(v135);
  v61 = swift_allocObject();
  *(v61 + 16) = v155;
  v147 = (v56 + 32) & ~v56;
  v62 = v146;
  v154 = v54;
  v63 = v54;
  v64 = v59;
  (v146)(v61 + v147, v151, v63);
  sub_2204FFF04(&qword_2812984B0, MEMORY[0x277D686A0]);
  v150 = "baseAssetProvider transform ";
  v65 = v137;
  sub_220886F1C();

  (*(v136 + 8))(v60, v65);
  v66 = [v59 sourceChannel];
  if (v66)
  {
    v67 = v66;
    __swift_project_boxed_opaque_existential_1(v144 + 7, v144[10]);
    v68 = v108;
    sub_2206EC95C(v67);
    v69 = v147;
    v70 = swift_allocObject();
    *(v70 + 16) = v155;
    (v62)(v70 + v69, v151, v154);
    sub_2204FFF04(&qword_281298560, MEMORY[0x277D68340]);
    v71 = v110;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v109 + 8))(v68, v71);
  }

  if ([v64 respondsToSelector_])
  {
    v72 = [v64 parentIssue];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 identifier];
      sub_22089136C();

      v75 = v105;
      sub_22088A0FC();
      v76 = v147;
      v77 = swift_allocObject();
      *(v77 + 16) = v155;
      (v62)(v77 + v76, v151, v154);
      sub_2204FFF04(&qword_281298280, MEMORY[0x277D69030]);
      v78 = v107;
      sub_220886F1C();

      (*(v106 + 8))(v75, v78);
    }
  }

  v79 = v138;
  sub_22057BB68();
  v80 = v147;
  v81 = swift_allocObject();
  *(v81 + 16) = v155;
  (v146)(v81 + v80, v151, v154);
  sub_2204FFF04(&qword_281298430, MEMORY[0x277D68860]);
  v82 = v140;
  sub_220886F1C();

  (*(v139 + 8))(v79, v82);
  v83 = v132;
  sub_22079D1CC();
  v18 = v151;
  v35 = v146;
  v84 = swift_allocObject();
  *(v84 + 16) = v155;
  (v35)(v84 + v80, v18, v154);
  sub_2204FFF04(&qword_27CF59BC0, MEMORY[0x277D68400]);
  v85 = v134;
  sub_220886F1C();

  (*(v133 + 8))(v83, v85);
  if (qword_27CF55BA8 != -1)
  {
    goto LABEL_22;
  }

LABEL_10:
  v86 = sub_22088735C();
  __swift_project_value_buffer(v86, qword_27CF59B50);
  v87 = v147;
  v88 = swift_allocObject();
  *(v88 + 16) = v155;
  (v35)(v88 + v87, v18, v154);
  sub_2204FFF04(&qword_27CF59BC8, MEMORY[0x277CEAED0]);
  sub_220886F1C();

  v90 = *(v143 + 56);
  if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v90 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v90 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v91 = *(v143 + 64);
  if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v91 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v142 = v91;
  (*(v114 + 104))(v116, *MEMORY[0x277D68680], v115);
  sub_22079D394();
  sub_2207A0578(v124, v117, &qword_27CF59B88, MEMORY[0x277D68648]);
  (*(v120 + 16))(v122, a9, v123);

  v92 = v118;
  sub_22088997C();
  v93 = v147;
  v94 = swift_allocObject();
  *(v94 + 16) = v155;
  (v35)(v94 + v93, v18, v154);
  sub_2204FFF04(&unk_27CF59BE0, MEMORY[0x277D68918]);
  v95 = v121;
  sub_220886F1C();

  (*(v119 + 8))(v92, v95);
  __swift_project_boxed_opaque_existential_1(v144 + 16, v144[19]);
  v96 = v125;
  sub_2208863EC();
  v97 = sub_2208869AC();
  v98 = v131;
  v99 = MEMORY[0x277D68560];
  if ((v97 & 1) == 0)
  {
    v99 = MEMORY[0x277D68558];
  }

  v100 = v127;
  v101 = v111;
  (*(v131 + 104))(v127, *v99, v111);
  (*(v98 + 16))(v129, v100, v101);
  v102 = v130;
  sub_22088942C();
  (*(v98 + 8))(v100, v101);
  (*(v126 + 8))(v96, v128);
  v103 = swift_allocObject();
  *(v103 + 16) = v155;
  (v35)(v103 + v93, v151, v154);
  sub_2204FFF04(&qword_2812984F0, MEMORY[0x277D68550]);
  v104 = v113;
  sub_220886F1C();

  (*(v112 + 8))(v102, v104);
  sub_220889E6C();
  sub_2204FFF04(&qword_27CF59C08, MEMORY[0x277D68DA0]);
  memset(v157, 0, sizeof(v157));
  sub_220886F3C();
  return sub_2207A0448(v157, sub_22055F87C);
}

uint64_t sub_2207A02A0()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  v13 = sub_22088735C();
  __swift_allocate_value_buffer(v13, qword_27CF59B50);
  __swift_project_value_buffer(v13, qword_27CF59B50);
  sub_22088515C();
  v14 = *(v1 + 16);
  v14(v8, v12, v0);
  v14(v4, v12, v0);
  sub_22088734C();
  return (*(v1 + 8))(v12, v0);
}

uint64_t sub_2207A0448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207A04A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207A0510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207A0578(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204FC5D8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2207A05F8()
{
  if (!qword_27CF59B90)
  {
    sub_220448488();
    sub_220887D5C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59B90);
    }
  }
}

uint64_t sub_2207A066C(uint64_t a1, uint64_t a2)
{
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for StocksAudioTrack();
  v57 = *(*(v1 - 1) + 80);
  v2 = (v57 + 16) & ~v57;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2205715CC();
  v45 = v6;
  v56 = *(*(v8 - 8) + 80);
  v9 = (v6 + v7 + v56) & ~v56;
  v10 = *(*(v8 - 8) + 64);
  v11 = sub_220889ACC();
  v54 = *(v11 - 8);
  v55 = v11;
  v44 = v9;
  v50 = (v9 + v10 + *(v54 + 80)) & ~*(v54 + 80);
  v12 = (*(v54 + 64) + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = sub_2208895BC();
  v49 = *(v53 - 8);
  v46 = (v12 + *(v49 + 80) + 8) & ~*(v49 + 80);
  v13 = (*(v49 + 64) + v46 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 80);
  v16 = v13 + v15 + 5;
  v51 = *(*(v14 - 8) + 64);
  v52 = sub_22088959C();
  v48 = *(v52 - 8);
  v47 = *(v48 + 80);
  v17 = v0 + v2;
  swift_unknownObjectRelease();
  v18 = *(v5 + 8);
  v18(v17 + v1[5], v4);

  v19 = v17 + v1[12];
  sub_2208875EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207A05F8();
    v22 = *(v21 + 48);
    v23 = sub_220887D5C();
    (*(*(v23 - 8) + 8))(v19 + v22, v23);
  }

  v24 = v16 & ~v15;
  swift_unknownObjectRelease();

  v18(v0 + v45, v4);
  v25 = v0 + v44;
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    swift_unknownObjectRelease();
    v18(v25 + v1[5], v4);

    v34 = v25 + v1[12];
    v35 = swift_getEnumCaseMultiPayload();

    if (v35 == 1)
    {
      sub_2207A05F8();
      v37 = *(v36 + 48);
      v38 = sub_220887D5C();
      (*(*(v38 - 8) + 8))(v34 + v37, v38);
    }

    sub_2205D1464();
  }

  else
  {
    if (v26)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    v18(v25 + v1[5], v4);

    v27 = v25 + v1[12];
    v28 = swift_getEnumCaseMultiPayload();

    if (v28 == 1)
    {
      sub_2207A05F8();
      v31 = *(v30 + 48);
      v32 = sub_220887D5C();
      (*(*(v32 - 8) + 8))(v27 + v31, v32);
    }

    sub_2205D153C(0, v29);
  }

  v39 = *(v33 + 64);
  v40 = sub_22088774C();
  (*(*(v40 - 8) + 8))(v25 + v39, v40);
LABEL_12:
  (*(v54 + 8))(v0 + v50, v55);

  (*(v49 + 8))(v0 + v46, v53);
  v41 = sub_2208895AC();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v0 + v24, 1, v41))
  {
    (*(v42 + 8))(v0 + v24, v41);
  }

  (*(v48 + 8))(v0 + ((v24 + v51 + v47) & ~v47), v52);

  return swift_deallocObject();
}

uint64_t sub_2207A0E84(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void, unint64_t, unint64_t, unint64_t, void, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v3 = *(type metadata accessor for StocksAudioTrack() - 8);
  v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_22088698C() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v23 = v7;
  v8 = *(v6 + 64);
  sub_2205715CC();
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(sub_220889ACC() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_2208895BC() - 8);
  v16 = (v14 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v19 = (v17 + *(*(v18 - 8) + 80) + 5) & ~*(*(v18 - 8) + 80);
  v20 = *(*(v18 - 8) + 64);
  v21 = *(sub_22088959C() - 8);
  return a2(a1, v2 + v24, *(v2 + v4), *(v2 + v5), v2 + v23, v2 + v10, v2 + v13, *(v2 + v14), v2 + v16, *(v2 + v17) | (*(v2 + v17 + 4) << 32), v2 + v19, v2 + ((v19 + v20 + *(v21 + 80)) & ~*(v21 + 80)));
}

uint64_t sub_2207A11D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204FC5D8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2207A1244(char *a1)
{
  v3 = *(sub_220889ACC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088959C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2208895AC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_220793A9C(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for StocksAudioTrack();
  v47 = *(*(v1 - 1) + 80);
  v2 = (v47 + 16) & ~v47;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2205715CC();
  v40 = v6;
  v46 = *(*(v8 - 8) + 80);
  v9 = (v6 + v7 + v46) & ~v46;
  v10 = (*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v45 = *(*(v11 - 8) + 80);
  v12 = v10 + v45 + 8;
  v43 = *(*(v11 - 8) + 64);
  v44 = sub_22088959C();
  v42 = *(v44 - 8);
  v41 = *(v42 + 80);
  v13 = v0 + v2;
  swift_unknownObjectRelease();
  v14 = *(v5 + 8);
  v14(v13 + v1[5], v4);

  v15 = v13 + v1[12];
  sub_2208875EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207A05F8();
    v18 = *(v17 + 48);
    v19 = sub_220887D5C();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
  }

  v20 = v12 & ~v45;
  swift_unknownObjectRelease();

  v14(v0 + v40, v4);
  v21 = v0 + v9;
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 == 1)
  {
    swift_unknownObjectRelease();
    v14(v21 + v1[5], v4);

    v30 = v21 + v1[12];
    v31 = swift_getEnumCaseMultiPayload();

    if (v31 == 1)
    {
      sub_2207A05F8();
      v33 = *(v32 + 48);
      v34 = sub_220887D5C();
      (*(*(v34 - 8) + 8))(v30 + v33, v34);
    }

    sub_2205D1464();
  }

  else
  {
    if (v22)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
    v14(v21 + v1[5], v4);

    v23 = v21 + v1[12];
    v24 = swift_getEnumCaseMultiPayload();

    if (v24 == 1)
    {
      sub_2207A05F8();
      v27 = *(v26 + 48);
      v28 = sub_220887D5C();
      (*(*(v28 - 8) + 8))(v23 + v27, v28);
    }

    sub_2205D153C(0, v25);
  }

  v35 = *(v29 + 64);
  v36 = sub_22088774C();
  (*(*(v36 - 8) + 8))(v21 + v35, v36);
LABEL_12:

  v37 = sub_2208895AC();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v0 + v20, 1, v37))
  {
    (*(v38 + 8))(v0 + v20, v37);
  }

  (*(v42 + 8))(v0 + ((v20 + v43 + v41) & ~v41), v44);

  return swift_deallocObject();
}

uint64_t sub_2207A19B0(uint64_t a1)
{
  v3 = *(type metadata accessor for StocksAudioTrack() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_22088698C() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_2205715CC();
  v11 = (v8 + v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  v12 = (*(*(v10 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2204FC5D8(0, &qword_27CF59B88, MEMORY[0x277D68648], MEMORY[0x277D83D88]);
  v14 = (v12 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80);
  v15 = *(*(v13 - 8) + 64);
  v16 = *(sub_22088959C() - 8);
  return sub_22079EDEC(a1, v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, v1 + v11, *(v1 + v12), v1 + v14, v1 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)));
}

uint64_t sub_2207A1C18()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2207A1C78()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_2207A1DAC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2207A1E68()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

unint64_t sub_2207A1F68()
{
  result = qword_27CF59C18;
  if (!qword_27CF59C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C18);
  }

  return result;
}

uint64_t sub_2207A1FBC(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  v8 = *&a3[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];
  [v8 setFrame_];
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v11 = *(*v9 + 40);
  v10 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v11);
  v12 = (*(*(v10 + 16) + 56))(v11);
  [a3 setBackgroundColor_];

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(a1 + 16);
    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    v15 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
    sub_2207C9204(v8, v14, v13, *(a2 + *(v15 + 28)));
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
}

uint64_t sub_2207A213C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v11 = v5;
  v12 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  v8(a2, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 16);
  sub_220458198(&v10, v3 + 16);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2207A2224(uint64_t result, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_2207A22A4(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 56); ; i += 32)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11[0] = *(i - 3);
      v11[1] = v10;
      v11[2] = v9;
      v12 = v8;

      a2(&v13, v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_2207A235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>)
{
  v5 = v4;
  v10 = MEMORY[0x277D83D88];
  sub_2207A60D0(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v77 - v13;
  sub_2207A60D0(0, &qword_2812994E0, MEMORY[0x277CC9260], v10);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v77 - v17;
  v19 = type metadata accessor for QuoteDetailViewModel();
  sub_2207A5FCC(a1 + *(v19 + 20), v14);
  v20 = sub_2208855EC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_2207A6060(v14, &qword_281299370, MEMORY[0x277D69178]);
    v22 = sub_220884E9C();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
LABEL_4:
    result = sub_2207A6060(v18, &qword_2812994E0, MEMORY[0x277CC9260]);
    v25 = 1;
    LOBYTE(v84) = 1;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    goto LABEL_9;
  }

  sub_22088550C();
  (*(v21 + 8))(v14, v20);
  v23 = sub_220884E9C();
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  sub_2207A6060(v18, &qword_2812994E0, MEMORY[0x277CC9260]);
  sub_22088C31C();
  v33 = v32;
  sub_22088C22C();
  sub_220891A6C();
  v35 = v33 - v34;
  v81 = a2;
  sub_22088C20C();
  sub_220891A6C();
  v37 = v35 - v36;
  v38 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v39 = (a1 + *(v19 + 24));
  v40 = v39[1];
  *&v83 = *v39;
  size.width = v40;
  v41 = *v38;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v43 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v44 = sub_22044D56C(0, &qword_28127E570);
  v45 = v43;
  v46 = sub_220891F2C();
  v47 = MEMORY[0x277D740C0];
  *(inited + 40) = v46;
  v48 = *v47;
  *(inited + 64) = v44;
  *(inited + 72) = v48;
  v50 = v41[5];
  v49 = v41[6];
  __swift_project_boxed_opaque_existential_1(v41 + 2, v50);
  v51 = *(v49 + 16);
  v52 = *(v51 + 128);
  v53 = v48;
  v54 = v52(v50, v51);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v54;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v56 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v57 = sub_22089125C();

  v58 = [v55 initWithString:v56 attributes:v57];

  [v58 boundingRectWithSize:1 options:0 context:{v37, 1.79769313e308}];
  x = v86.origin.x;
  y = v86.origin.y;
  width = v86.size.width;
  height = v86.size.height;
  v63 = CGRectGetWidth(v86);
  v64 = *(v39 + 2);
  if (v64)
  {
    [v64 size];
  }

  else
  {
    v65 = 0.0;
  }

  v66 = v63 + v65;
  v87.origin.x = x;
  v87.origin.y = y;
  v87.size.width = width;
  v87.size.height = height;
  v88.size.height = CGRectGetHeight(v87);
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v88.size.width = v66;
  v89 = CGRectIntegral(v88);
  v67 = v89.origin.x;
  v68 = v89.origin.y;
  v69 = v89.size.width;
  v70 = v89.size.height;
  v71 = v81;
  sub_22088C20C();
  v73 = v72;
  v90.origin.x = v67;
  v90.origin.y = v68;
  v90.size.width = v69;
  v90.size.height = v70;
  v91.size.height = CGRectGetHeight(v90);
  v91.origin.x = v73;
  v91.origin.y = a4;
  v91.size.width = v37;
  v92 = CGRectIntegral(v91);
  origin = v92.origin;
  v80 = *&v92.origin.y;
  size = v92.size;
  v83 = *&v92.size.height;
  MEMORY[0x28223BE20](v74, v75);
  *(&v77 - 4) = v67;
  *(&v77 - 3) = v68;
  *(&v77 - 2) = v69;
  *(&v77 - 1) = v70;
  type metadata accessor for CGRect(0);
  sub_22088C18C();

  v78 = v84;
  v77 = v85;
  result = type metadata accessor for QuoteDetailViewLayoutOptions();
  v27 = v77;
  *&v29 = size.width;
  *&v28 = origin.x;
  v25 = 0;
  v76 = (v71 + *(result + 28));
  v30 = *v76;
  v31 = v76[1];
  LOBYTE(v84) = 0;
  *(&v28 + 1) = v80;
  *(&v29 + 1) = v83;
  v26 = v78;
LABEL_9:
  *a3 = v26;
  *(a3 + 16) = v27;
  *(a3 + 32) = v28;
  *(a3 + 48) = v29;
  *(a3 + 64) = v30;
  *(a3 + 80) = v31;
  *(a3 + 96) = v25;
  return result;
}

void sub_2207A2A70(CGRect *a1@<X8>)
{
  v2 = sub_22088ABEC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277D6D320], v2, v5);
  sub_22088ABDC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v3 + 8))(v7, v2);
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  *a1 = CGRectIntegral(v17);
}

void sub_2207A2BC4(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v36 = *a2;
  v9 = __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_220635404(v8);

  v10 = *v9;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = sub_22044D56C(0, &qword_28127E570);
  v14 = v12;
  v15 = sub_220891F2C();
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v13;
  *(inited + 72) = v17;
  v19 = v10[5];
  v18 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v19);
  v20 = *(v18 + 16);
  v21 = *(v20 + 216);
  v22 = v17;
  v23 = v21(v19, v20);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v27 boundingRectWithSize:0 options:0 context:{a3, a4}];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v32 = ceil(CGRectGetWidth(v38));
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v33 = ceil(CGRectGetHeight(v39));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  sub_2207CF3D8(v27, v36, isUniquelyReferenced_nonNull_native, v32, v33);
  *a1 = v37;
}

uint64_t sub_2207A2ECC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, __int128 *a3@<X4>, int a4@<W5>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>, double a13@<D7>, double a14, uint64_t a15, double a16, double a17, uint64_t a18, double a19)
{
  v89 = a11;
  v88 = a10;
  v87 = a9;
  v86 = a8;
  v85 = a7;
  v84 = a6;
  v26 = a18;
  v25 = a19;
  v27 = a15;
  v28 = a3[5];
  v98 = a3[4];
  v99 = v28;
  v100 = *(a3 + 96);
  v29 = a3[1];
  v94 = *a3;
  v95 = v29;
  v30 = a3[3];
  v96 = a3[2];
  v97 = v30;
  v91 = sub_22088ABEC();
  v80 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v31);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2208852DC();
  v83 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v35);
  v81 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);

  v82 = sub_2207A61FC(v37, a1);

  v39 = sub_2207A61FC(v38, a1);

  v92 = a1;

  v40 = *a2;
  v41 = *(*a2 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v72 = v39;
    v73 = v34;
    v74 = a13;
    v75 = a4;
    v76 = a15;
    v77 = a18;
    v78 = a19;
    v79 = a5;
    v93 = MEMORY[0x277D84F90];

    sub_22070BD84(0, v41, 0);
    v42 = v93;
    v90 = *MEMORY[0x277D6D320];
    v43 = v80 + 104;
    v44 = *(v80 + 104);
    v45 = (v80 + 8);
    v80 = v40;
    v46 = v40 + 56;
    do
    {
      v47 = v91;
      v48 = v43;
      v44(v33, v90, v91);
      sub_22088ABDC();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      (*v45)(v33, v47);
      v93 = v42;
      v58 = *(v42 + 16);
      v57 = *(v42 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22070BD84((v57 > 1), v58 + 1, 1);
        v42 = v93;
      }

      *(v42 + 16) = v58 + 1;
      v59 = (v42 + 32 * v58);
      v59[4] = v50;
      v59[5] = v52;
      v59[6] = v54;
      v59[7] = v56;
      v46 += 32;
      --v41;
      v43 = v48;
    }

    while (v41);

    a5 = v79;
    v25 = v78;
    v26 = v77;
    v27 = v76;
    LOBYTE(a4) = v75;
    a13 = v74;
    v34 = v73;
    v39 = v72;
  }

  v60 = v81;
  sub_22088528C();
  v61 = sub_2208851AC();
  result = (*(v83 + 8))(v60, v34);
  v63 = -a17;
  v64 = v85;
  *a5 = v84;
  *(a5 + 8) = v64;
  if (v61)
  {
    v63 = a14 - a12 + v25;
  }

  v65 = 0.0;
  if ((v61 & 1) == 0)
  {
    v65 = a16;
  }

  v66 = v87;
  *(a5 + 16) = v86;
  *(a5 + 24) = v66;
  v67 = v89;
  *(a5 + 32) = v88;
  *(a5 + 40) = v67;
  *(a5 + 48) = a12;
  *(a5 + 56) = a13;
  *(a5 + 64) = 1;
  *(a5 + 72) = v82;
  *(a5 + 80) = v39;
  *(a5 + 88) = v42;
  v68 = v99;
  *(a5 + 160) = v98;
  *(a5 + 176) = v68;
  *(a5 + 192) = v100;
  v69 = v95;
  *(a5 + 96) = v94;
  *(a5 + 112) = v69;
  v70 = v97;
  *(a5 + 128) = v96;
  *(a5 + 144) = v70;
  *(a5 + 200) = a14;
  *(a5 + 208) = v27;
  *(a5 + 216) = a16;
  *(a5 + 224) = a17;
  *(a5 + 232) = v26;
  *(a5 + 240) = v25;
  *(a5 + 248) = v63;
  *(a5 + 256) = v65;
  *(a5 + 264) = a4 & 1;
  return result;
}

void sub_2207A33DC(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v36 = *a2;
  v9 = __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_220635F94(v8, 0);
  v10 = *v9;
  sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = sub_22044D56C(0, &qword_28127E570);
  v14 = v12;
  v15 = sub_220891F3C();
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v13;
  *(inited + 72) = v17;
  v19 = v10[5];
  v18 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v19);
  v20 = *(v18 + 16);
  v21 = *(v20 + 40);
  v22 = v17;
  v23 = v21(v19, v20);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v27 boundingRectWithSize:0 options:0 context:{a3, a4}];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v32 = ceil(CGRectGetWidth(v38));
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v33 = ceil(CGRectGetHeight(v39));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *a1;
  sub_2207CF3D8(v27, v36, isUniquelyReferenced_nonNull_native, v32, v33);
  *a1 = v37;
}

uint64_t sub_2207A36E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, __int128 *a3@<X4>, int a4@<W5>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>, double a13@<D7>, uint64_t a14, uint64_t a15, double a16, double a17, uint64_t a18, uint64_t a19)
{
  v90 = a11;
  v89 = a10;
  v88 = a9;
  v87 = a8;
  v86 = a7;
  v85 = a6;
  v26 = a18;
  v25 = a19;
  v28 = a14;
  v27 = a15;
  v29 = a3[5];
  v99 = a3[4];
  v100 = v29;
  v101 = *(a3 + 96);
  v30 = a3[1];
  v95 = *a3;
  v96 = v30;
  v31 = a3[3];
  v97 = a3[2];
  v98 = v31;
  v92 = sub_22088ABEC();
  v81 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v32);
  v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2208852DC();
  v84 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v82 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);

  v83 = sub_2207A61FC(v38, a1);

  v40 = sub_2207A61FC(v39, a1);

  v93 = a1;

  v41 = *a2;
  v42 = *(*a2 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v73 = v40;
    v74 = v35;
    v75 = a12;
    v76 = a4;
    v77 = a13;
    v78 = a14;
    v79 = a15;
    v80 = a5;
    v94 = MEMORY[0x277D84F90];

    sub_22070BD84(0, v42, 0);
    v43 = v94;
    v91 = *MEMORY[0x277D6D320];
    v44 = v81 + 104;
    v45 = *(v81 + 104);
    v46 = (v81 + 8);
    v81 = v41;
    v47 = v41 + 56;
    do
    {
      v48 = v92;
      v49 = v44;
      v45(v34, v91, v92);
      sub_22088ABDC();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      (*v46)(v34, v48);
      v94 = v43;
      v59 = *(v43 + 16);
      v58 = *(v43 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22070BD84((v58 > 1), v59 + 1, 1);
        v43 = v94;
      }

      *(v43 + 16) = v59 + 1;
      v60 = (v43 + 32 * v59);
      v60[4] = v51;
      v60[5] = v53;
      v60[6] = v55;
      v60[7] = v57;
      v47 += 32;
      --v42;
      v44 = v49;
    }

    while (v42);

    a5 = v80;
    v25 = a19;
    v26 = a18;
    v27 = v79;
    v28 = v78;
    a13 = v77;
    LOBYTE(a4) = v76;
    a12 = v75;
    v35 = v74;
    v40 = v73;
  }

  v61 = v82;
  sub_22088528C();
  v62 = sub_2208851AC();
  result = (*(v84 + 8))(v61, v35);
  v64 = -a17;
  v65 = 0.0;
  v66 = v86;
  *a5 = v85;
  *(a5 + 8) = v66;
  if (v62)
  {
    v64 = 0.0;
  }

  else
  {
    v65 = a16;
  }

  v67 = v88;
  *(a5 + 16) = v87;
  *(a5 + 24) = v67;
  v68 = v90;
  *(a5 + 32) = v89;
  *(a5 + 40) = v68;
  *(a5 + 48) = a12;
  *(a5 + 56) = a13;
  *(a5 + 64) = 0;
  *(a5 + 72) = v83;
  *(a5 + 80) = v40;
  *(a5 + 88) = v43;
  v69 = v100;
  *(a5 + 160) = v99;
  *(a5 + 176) = v69;
  *(a5 + 192) = v101;
  v70 = v96;
  *(a5 + 96) = v95;
  *(a5 + 112) = v70;
  v71 = v98;
  *(a5 + 128) = v97;
  *(a5 + 144) = v71;
  *(a5 + 200) = v28;
  *(a5 + 208) = v27;
  *(a5 + 216) = a16;
  *(a5 + 224) = a17;
  *(a5 + 232) = v26;
  *(a5 + 240) = v25;
  *(a5 + 248) = v64;
  *(a5 + 256) = v65;
  *(a5 + 264) = a4 & 1;
  return result;
}

uint64_t sub_2207A3BF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_2207A3C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v104 = type metadata accessor for QuoteDetailViewStyler();
  v105 = &off_283425760;
  v103[0] = a4;

  sub_22088C1CC();
  sub_22088C1CC();
  sub_22088C31C();
  v18 = v17;
  sub_22088C22C();
  sub_220891A6C();
  v20 = v19;
  sub_22088C31C();
  sub_220891A6C();
  v22 = v21;
  sub_22088C31C();
  v24 = v23;
  sub_22088C22C();
  sub_220891A6C();
  v26 = v24 - v25;
  v78 = a2;
  sub_22088C31C();
  v81 = a7;
  v97 = a7;
  v98 = v103;
  v99 = a1;
  v100 = v26;
  v101 = 0x7FEFFFFFFFFFFFFFLL;
  v27 = sub_2207A2224(MEMORY[0x277D84F98], sub_2207A64B4, v96, a5);
  v28 = sub_2205CE738(MEMORY[0x277D84F90]);
  v88 = a5;
  v29 = *(a5 + 16);
  if (!v29)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v103);
    return;
  }

  v82 = a6;
  v85 = (v18 - v20 - v22 - a9) / a6;
  v84 = *MEMORY[0x277D740A8];
  v83 = *MEMORY[0x277D740C0];
  v30 = 32;
  v92 = v26;
  v86 = v27;
  v77 = a9;
  while (1)
  {
    if (!*(v27 + 16))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v33 = *(v88 + v30);
    v34 = sub_2205CDFF4(v33);
    if ((v35 & 1) == 0)
    {
      goto LABEL_16;
    }

    v94 = v29;
    v95 = v28;
    v36 = v85 - *(*(v27 + 56) + 24 * v34) - a10;
    sub_220635404(v33);
    v37 = *__swift_project_boxed_opaque_existential_1(v103, v104);
    sub_2207A60D0(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    *(inited + 32) = v84;
    v93 = v33;
    v39 = sub_22044D56C(0, &qword_28127E570);
    v91 = v84;
    *(inited + 40) = sub_220891F2C();
    *(inited + 64) = v39;
    *(inited + 72) = v83;
    v41 = v37[5];
    v40 = v37[6];
    __swift_project_boxed_opaque_existential_1(v37 + 2, v41);
    v42 = *(v40 + 16);
    v43 = *(v42 + 216);
    v90 = v83;
    v44 = v43(v41, v42);
    v89 = sub_22044D56C(0, &qword_28127E530);
    *(inited + 104) = v89;
    *(inited + 80) = v44;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v46 = sub_22089132C();
    type metadata accessor for Key(0);
    sub_2204A63B8();
    v47 = sub_22089125C();

    v48 = [v45 initWithString:v46 attributes:v47];

    [v48 boundingRectWithSize:0 options:0 context:{v26, 1.79769313e308}];
    x = v106.origin.x;
    y = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
    v53 = ceil(CGRectGetWidth(v106));
    v107.origin.x = x;
    v107.origin.y = y;
    v107.size.width = width;
    v107.size.height = height;
    v54 = CGRectGetHeight(v107);
    if (v53 >= v36)
    {
      break;
    }

    v31 = v54;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v95;
    sub_2207CF3D8(v48, v93, isUniquelyReferenced_nonNull_native, v53, ceil(v31));
LABEL_4:
    v28 = v102;
    v27 = v86;
    ++v30;
    v29 = v94 - 1;
    v26 = v92;
    if (v94 == 1)
    {
      goto LABEL_14;
    }
  }

  v55 = *__swift_project_boxed_opaque_existential_1(v103, v104);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_220899920;
  *(v56 + 32) = v91;
  v57 = v91;
  *(v56 + 40) = sub_220891F2C();
  *(v56 + 64) = v39;
  *(v56 + 72) = v90;
  v58 = v55[5];
  v59 = v55[6];
  __swift_project_boxed_opaque_existential_1(v55 + 2, v58);
  v60 = *(v59 + 16);
  v61 = *(v60 + 216);
  v62 = v90;
  v63 = v61(v58, v60);
  *(v56 + 104) = v89;
  *(v56 + 80) = v63;
  sub_2204A5EAC(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v65 = sub_22089132C();
  v66 = sub_22089125C();

  v67 = [v64 initWithString:v65 attributes:v66];

  [v67 boundingRectWithSize:0 options:0 context:{v92, 1.79769313e308}];
  v68 = v108.origin.x;
  v69 = v108.origin.y;
  v70 = v108.size.width;
  v71 = v108.size.height;
  v72 = ceil(CGRectGetWidth(v108));
  v109.origin.x = v68;
  v109.origin.y = v69;
  v109.size.width = v70;
  v109.size.height = v71;
  v73 = CGRectGetHeight(v109);
  if (v72 < v36 || v82 == 1)
  {
    v74 = ceil(v73);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v95;
    sub_2207CF3D8(v67, v93, v75, v72, v74);

    goto LABEL_4;
  }

  if (!__OFSUB__(v82, 1))
  {
    v76 = __swift_project_boxed_opaque_existential_1(v103, v104);
    sub_2207A3C50(a1, v78, a3, *v76, v88, v82 - 1, v81, a8, v77, a10);

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

void sub_2207A43B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v185[3] = a7;
  v185[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  sub_22088C31C();
  v18 = v17;
  sub_22088C22C();
  sub_220891A6C();
  v20 = v19;
  sub_22088C31C();
  v22 = v21;
  sub_22088C22C();
  sub_220891A6C();
  v24 = v22 - v23;
  v164 = a2;
  sub_22088C31C();
  v180[2] = a6;
  v180[3] = v185;
  v180[4] = a1;
  *&v180[5] = v24;
  v180[6] = 0x7FEFFFFFFFFFFFFFLL;
  v25 = MEMORY[0x277D84F98];
  v176 = sub_2207A2224(MEMORY[0x277D84F98], sub_2207A4F64, v180, a5);
  v158 = a1;
  v159 = a6;
  v179[2] = a6;
  v179[3] = v185;
  v179[4] = a1;
  *&v179[5] = v24;
  v179[6] = 0x7FEFFFFFFFFFFFFFLL;
  v175 = sub_2207A2224(v25, sub_2207A6588, v179, a5);
  v26 = a5[2];
  v168 = a3;
  if (v26)
  {
    v27 = (a5 + 4);
    v28 = 0.0;
    v29 = (a5 + 4);
    v30 = a5[2];
    do
    {
      if (!*(v176 + 16))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v32 = *v29++;
      v31 = v32;
      v33 = sub_2205CDFF4(v32);
      if ((v34 & 1) == 0)
      {
        goto LABEL_85;
      }

      if (!*(v175 + 16))
      {
        goto LABEL_86;
      }

      v35 = *(*(v176 + 56) + 24 * v33);
      v36 = sub_2205CDFF4(v31);
      if ((v37 & 1) == 0)
      {
        goto LABEL_87;
      }

      v38 = *(v175 + 56);
      if (v28 <= v35 + *(v38 + 24 * v36))
      {
        v28 = v35 + *(v38 + 24 * v36);
      }

      --v30;
    }

    while (v30);
    v174 = 0.0;
    v39 = v26;
    while (*(v176 + 16))
    {
      v41 = *v27++;
      v40 = v41;
      v42 = sub_2205CDFF4(v41);
      if ((v43 & 1) == 0)
      {
        goto LABEL_89;
      }

      if (!*(v175 + 16))
      {
        goto LABEL_90;
      }

      v44 = *(*(v176 + 56) + 24 * v42 + 8);
      v45 = sub_2205CDFF4(v40);
      if ((v46 & 1) == 0)
      {
        goto LABEL_91;
      }

      v47 = *(*(v175 + 56) + 24 * v45 + 8);
      if (v44 > v47)
      {
        v47 = v44;
      }

      v48 = v174;
      if (v174 <= v47)
      {
        v48 = v47;
      }

      v174 = v48;
      if (!--v39)
      {
        v25 = MEMORY[0x277D84F98];
        v49 = *a3;
        if (!*a3)
        {
          goto LABEL_57;
        }

        goto LABEL_21;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v28 = 0.0;
  v174 = 0.0;
  v49 = *a3;
  if (!*a3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_21:
  v50 = v18 - v20;

  v51 = sub_2207A5C10(0, v26, v49, a5, a3);

  v52 = *(a3 + 24);
  if (*(a3 + 16) > v28 + *(a3 + 32))
  {
    v53 = *(a3 + 16);
  }

  else
  {
    v53 = v28 + *(a3 + 32);
  }

  sub_22088C1CC();
  v55 = v54;
  sub_22088C1CC();
  v56 = *(v51 + 16);
  v58 = (v56 - 1);
  v59 = v50 - v55 - v57 - (v53 * v56 + v52 * v58);
  if (v59 <= 0.0)
  {
    v60 = v53;
  }

  else
  {
    v60 = v53 + v59 * 0.666666667 / v56;
    v52 = v52 + v59 * 0.333333333 / v58;
  }

  v61 = v176;
  v184 = v25;
  v183 = v25;
  v18 = 0.0;
  v167 = v60;
  if (!v56)
  {
LABEL_58:
    v63 = MEMORY[0x277D84F90];
    v129 = 15.0;
    v66 = 0.0;
LABEL_60:

    v182[34] = v63;
    v130 = 1 << *(v25 + 32);
    v131 = -1;
    if (v130 < 64)
    {
      v131 = ~(-1 << v130);
    }

    v132 = v131 & *(v25 + 64);
    v133 = (v130 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v134 = 0;
    while (v132)
    {
      v135 = v134;
LABEL_68:
      v136 = __clz(__rbit64(v132));
      v132 &= v132 - 1;
      MaxY = CGRectGetMaxY(*(*(v25 + 56) + 48 * (v136 | (v135 << 6))));
      if (v18 <= MaxY)
      {
        v18 = MaxY;
      }
    }

    while (1)
    {
      v135 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        break;
      }

      if (v135 >= v133)
      {

        sub_22088C31C();
        v138 = v18;
        v140 = v139;
        sub_22088C22C();
        sub_220891A6C();
        v210.size.width = v140 - v141;
        v210.size.height = v138 + 15.0 + 15.0;
        v210.origin.x = 0.0;
        v210.origin.y = 0.0;
        v211 = CGRectIntegral(v210);
        x = v211.origin.x;
        y = v211.origin.y;
        width = v211.size.width;
        height = v211.size.height;
        v146 = type metadata accessor for QuoteDetailViewLayoutOptions();
        sub_2207A235C(v158, v164, v186, v66 + v129 + *(v164 + *(v146 + 24)));
        sub_22088C31C();
        v148 = v147;
        sub_22088C22C();
        sub_220891A6C();
        v150 = v149;
        sub_22088C31C();
        v151 = x;
        v152 = y;
        v153 = width;
        v154 = height;
        if ((v187 & 1) == 0)
        {
          v154 = *&v186[7];
          v153 = *&v186[6];
          v152 = *&v186[5];
          v151 = *&v186[4];
        }

        v212.size.height = CGRectGetMaxY(*&v151);
        v155 = v148 - v150;
        v212.origin.x = 0.0;
        v212.origin.y = 0.0;
        v212.size.width = v155;
        CGRectIntegral(v212);
        *(v159 + 56) = v155;
        *(v159 + 64) = 0;
        MEMORY[0x28223BE20](v156, v157);
        sub_22088C18C();
        memcpy(v182, v181, 0x109uLL);

        __swift_destroy_boxed_opaque_existential_1(v185);
        memcpy(a9, v182, 0x109uLL);
        return;
      }

      v132 = *(v25 + 64 + 8 * v135);
      ++v134;
      if (v132)
      {
        v134 = v135;
        goto LABEL_68;
      }
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v62 = 0;
  v166 = v51 + 32;
  v161 = v52 * 0.5;
  v165 = v52 + v60;
  v63 = MEMORY[0x277D84F90];
  v64 = 0.0;
  v65 = 0.0;
  v178 = 0.0;
  v66 = 0.0;
  v162 = v56;
  v163 = v51;
  while (v62 < *(v51 + 16))
  {
    v67 = v60;
    v173 = v62;
    v68 = *(v166 + 8 * v62);
    v69 = *(v68 + 16);

    v172 = v69;
    if (v69)
    {
      v70 = 0;
      v171 = v68 + 32;
      v71 = 0.0;
      v72 = v67;
      v170 = v64;
      v169 = v68;
      while (v70 < *(v68 + 16))
      {
        v73 = *(v171 + v70);
        v74 = v64;
        v75 = v174;
        v198 = CGRectIntegral(*(&v71 - 1));
        if (!*(v61 + 16))
        {
          goto LABEL_76;
        }

        v76 = v198.origin.x;
        v77 = v198.origin.y;
        v78 = v198.size.width;
        v79 = v198.size.height;
        v80 = sub_2205CDFF4(v73);
        if ((v81 & 1) == 0)
        {
          goto LABEL_77;
        }

        v177 = v65;
        v82 = *(v61 + 56) + 24 * v80;
        v84 = *v82;
        v83 = *(v82 + 8);
        v85 = *(v82 + 16);
        v199.origin.x = v76;
        v199.origin.y = v77;
        v199.size.width = v78;
        v199.size.height = v79;
        MinX = CGRectGetMinX(v199);
        v200.origin.x = v76;
        v200.origin.y = v77;
        v200.size.width = v78;
        v200.size.height = v79;
        v201.origin.y = CGRectGetMaxY(v200) - v83;
        v201.origin.x = MinX;
        v201.size.width = v84;
        v201.size.height = v83;
        v202 = CGRectIntegral(v201);
        *&v193 = v202.origin.x;
        *(&v193 + 1) = *&v202.origin.y;
        v194 = v202.size.width;
        v195 = v202.size.height;
        v196 = v85;
        v197 = v173;
        v87 = v85;
        v88 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182[0] = v88;
        sub_2207CF268(&v193, v73, isUniquelyReferenced_nonNull_native);
        v90 = v182[0];
        v184 = v182[0];
        if (!*(v175 + 16))
        {
          goto LABEL_78;
        }

        v91 = sub_2205CDFF4(v73);
        if ((v92 & 1) == 0)
        {
          goto LABEL_79;
        }

        v93 = *(v175 + 56) + 24 * v91;
        v94 = *v93;
        v95 = *(v93 + 8);
        v96 = *(v93 + 16);
        v203.origin.x = v76;
        v203.origin.y = v77;
        v203.size.width = v78;
        v203.size.height = v79;
        v97 = CGRectGetMaxX(v203) - v94;
        v204.origin.x = v76;
        v204.origin.y = v77;
        v204.size.width = v78;
        v204.size.height = v79;
        v205.origin.y = CGRectGetMaxY(v204) - v95;
        v205.origin.x = v97;
        v205.size.width = v94;
        v205.size.height = v95;
        v206 = CGRectIntegral(v205);
        *&v188 = v206.origin.x;
        *(&v188 + 1) = *&v206.origin.y;
        v189 = v206.size.width;
        v190 = v206.size.height;
        v191 = v96;
        v192 = v173;
        v98 = v96;
        v99 = v183;
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v182[0] = v99;
        sub_2207CF268(&v188, v73, v100);
        v101 = v182[0];
        v183 = v182[0];
        if (!*(v90 + 16))
        {
          goto LABEL_80;
        }

        v102 = sub_2205CDFF4(v73);
        if ((v103 & 1) == 0)
        {
          goto LABEL_81;
        }

        MinY = CGRectGetMinY(*(*(v90 + 56) + 48 * v102));
        sub_22044D56C(0, &qword_28127E570);
        v105 = sub_220891F2C();
        [v105 ascender];
        v107 = v106;

        v108 = sub_220891F2C();
        [v108 capHeight];
        v110 = v109;

        v111 = MinY + v107 - v110;
        v65 = v177;
        if (v111 < v177)
        {
          v65 = v111;
        }

        if (!*(v90 + 16))
        {
          goto LABEL_82;
        }

        v112 = sub_2205CDFF4(v73);
        if ((v113 & 1) == 0)
        {
          goto LABEL_83;
        }

        ++v70;
        v114 = CGRectGetMaxY(*(*(v90 + 56) + 48 * v112));
        v115 = sub_220891F2C();
        [v115 descender];
        v117 = v116;

        v118 = v178;
        if (v178 <= v114 + v117)
        {
          v118 = v114 + v117;
        }

        v178 = v118;
        v207.origin.x = v76;
        v207.origin.y = v77;
        v207.size.width = v78;
        v207.size.height = v79;
        v119 = CGRectGetMaxY(v207);

        v68 = v169;
        v71 = v119 + *(v168 + 8);
        v72 = v167;
        v61 = v176;
        v64 = v170;
        if (v172 == v70)
        {
          v67 = v167;
          v66 = v65;
          v18 = v178;
          v56 = v162;
          v51 = v163;
          v25 = v101;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_49:

    if (v64 <= 0.0)
    {
      v60 = v67;
    }

    else
    {
      sub_22088C1FC();
      v208.size.height = v178 - v65;
      v208.size.width = 1.0 / v120;
      v208.origin.x = v64 - v161;
      v208.origin.y = v65;
      v209 = CGRectIntegral(v208);
      v121 = v209.origin.x;
      v122 = v209.origin.y;
      v123 = v209.size.width;
      v124 = v209.size.height;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_220587A04(0, *(v63 + 2) + 1, 1, v63);
      }

      v126 = *(v63 + 2);
      v125 = *(v63 + 3);
      if (v126 >= v125 >> 1)
      {
        v128 = sub_220587A04((v125 > 1), v126 + 1, 1, v63);
        v60 = v67;
        v63 = v128;
      }

      else
      {
        v60 = v67;
      }

      *(v63 + 2) = v126 + 1;
      v127 = &v63[32 * v126];
      v127[4] = v121;
      v127[5] = v122;
      v127[6] = v123;
      v127[7] = v124;
      v66 = v65;
      v18 = v178;
    }

    v62 = v173 + 1;
    v64 = v165 + v64;
    if (v173 + 1 == v56)
    {
      v129 = v18 + 15.0;
      v18 = 0.0;
      goto LABEL_60;
    }
  }

LABEL_93:
  __break(1u);
}

void sub_2207A4F88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v177 = a7;
  v178 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v176);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  sub_22088C31C();
  v24 = v23;
  sub_22088C22C();
  sub_220891A6C();
  v26 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(v176, v177);
  v149 = a1;
  v160 = a10;
  v152 = a11;
  v150 = a6;
  sub_2207A3C50(a1, a2, a3, *v27, a5, a3, a6, a10, a11, a12);
  v29 = v28;
  v31 = v30;
  v167 = v32;
  sub_22088C1CC();
  v158 = a2;
  sub_22088C1CC();
  sub_220891A6C();
  v34 = v33;
  v35 = *(a5 + 16);
  if (v35)
  {
    v36 = (a5 + 32);
    v168 = 0.0;
    v37 = *(a5 + 16);
    while (*(v31 + 16))
    {
      v39 = *v36++;
      v38 = v39;
      v40 = sub_2205CDFF4(v39);
      if ((v41 & 1) == 0)
      {
        goto LABEL_99;
      }

      if (!*(v167 + 16))
      {
        goto LABEL_100;
      }

      v42 = *(*(v31 + 56) + 24 * v40 + 8);
      v43 = sub_2205CDFF4(v38);
      if ((v44 & 1) == 0)
      {
        goto LABEL_101;
      }

      v45 = *(*(v167 + 56) + 24 * v43 + 8);
      if (v42 > v45)
      {
        v45 = v42;
      }

      v46 = v168;
      if (v168 <= v45)
      {
        v46 = v45;
      }

      v168 = v46;
      if (!--v37)
      {
        goto LABEL_14;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v168 = 0.0;
LABEL_14:
  v47 = ceil(v35 / v29);
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_109;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v29 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v161 = (v24 - v26 - v34 - v152) / v29;
  v166 = v31;
  if (!v29)
  {

    v62 = v167;

    v50 = MEMORY[0x277D84F90];
    v60 = *(MEMORY[0x277D84F90] + 16);
    v63 = MEMORY[0x277D84F98];
    v175 = MEMORY[0x277D84F98];
    v174 = MEMORY[0x277D84F98];
    if (v60)
    {
LABEL_46:
      v64 = 0;
      v156 = v50 + 32;
      v157 = a10 * 0.5;
      v65 = MEMORY[0x277D84F90];
      v159 = MEMORY[0x277D84F98];
      v169 = 0.0;
      v170 = 0.0;
      v171 = 0.0;
      v154 = v50;
      v155 = v60;
      while (v64 < *(v50 + 16))
      {
        v66 = *(v156 + 8 * v64);
        v67 = *(v66 + 16);

        v165 = v67;
        if (v67)
        {
          v68 = 0;
          v163 = v64;
          v164 = v66 + 32;
          v69 = 0.0;
          v162 = v66;
          while (v68 < *(v66 + 16))
          {
            v71 = *(v164 + v68);
            v192.origin.x = v169;
            v192.origin.y = v69;
            v192.size.width = v161;
            v192.size.height = v168;
            v193 = CGRectIntegral(v192);
            if (!*(v31 + 16))
            {
              goto LABEL_90;
            }

            x = v193.origin.x;
            y = v193.origin.y;
            width = v193.size.width;
            height = v193.size.height;
            v76 = sub_2205CDFF4(v71);
            if ((v77 & 1) == 0)
            {
              goto LABEL_91;
            }

            v78 = *(v31 + 56) + 24 * v76;
            v79 = *v78;
            v80 = *(v78 + 8);
            v81 = *(v78 + 16);
            v194.origin.x = x;
            v194.origin.y = y;
            v194.size.width = width;
            v194.size.height = height;
            MinX = CGRectGetMinX(v194);
            v195.origin.x = x;
            v195.origin.y = y;
            v195.size.width = width;
            v195.size.height = height;
            v196.origin.y = CGRectGetMaxY(v195) - v80;
            v196.origin.x = MinX;
            v196.size.width = v79;
            v196.size.height = v80;
            v197 = CGRectIntegral(v196);
            *&v186 = v197.origin.x;
            *(&v186 + 1) = *&v197.origin.y;
            v187 = v197.size.width;
            v188 = v197.size.height;
            v189 = v81;
            v190 = v64;
            v83 = v81;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v173[0] = v175;
            sub_2207CF268(&v186, v71, isUniquelyReferenced_nonNull_native);
            if (!*(v62 + 16))
            {
              goto LABEL_92;
            }

            v85 = sub_2205CDFF4(v71);
            if ((v86 & 1) == 0)
            {
              goto LABEL_93;
            }

            v87 = *(v62 + 56) + 24 * v85;
            v88 = *v87;
            v89 = *(v87 + 8);
            v90 = *(v87 + 16);
            v198.origin.x = x;
            v198.origin.y = y;
            v198.size.width = width;
            v198.size.height = height;
            v91 = CGRectGetMaxX(v198) - v88;
            v199.origin.x = x;
            v199.origin.y = y;
            v199.size.width = width;
            v199.size.height = height;
            v200.origin.y = CGRectGetMaxY(v199) - v89;
            v200.origin.x = v91;
            v200.size.width = v88;
            v200.size.height = v89;
            v201 = CGRectIntegral(v200);
            *&v181 = v201.origin.x;
            *(&v181 + 1) = *&v201.origin.y;
            v182 = v201.size.width;
            v183 = v201.size.height;
            v184 = v90;
            v185 = v64;
            v92 = v90;
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v173[0] = v174;
            sub_2207CF268(&v181, v71, v93);
            v159 = v174;
            if (!*(v175 + 16))
            {
              goto LABEL_94;
            }

            v94 = sub_2205CDFF4(v71);
            if ((v95 & 1) == 0)
            {
              goto LABEL_95;
            }

            MinY = CGRectGetMinY(*(*(v175 + 56) + 48 * v94));
            sub_22044D56C(0, &qword_28127E570);
            v97 = sub_220891F2C();
            [v97 ascender];
            v99 = v98;

            v100 = sub_220891F2C();
            [v100 capHeight];
            v102 = v101;

            v103 = v171;
            if (MinY + v99 - v102 < v171)
            {
              v103 = MinY + v99 - v102;
            }

            v171 = v103;
            if (!*(v175 + 16))
            {
              goto LABEL_96;
            }

            v104 = sub_2205CDFF4(v71);
            if ((v105 & 1) == 0)
            {
              goto LABEL_97;
            }

            MaxY = CGRectGetMaxY(*(*(v175 + 56) + 48 * v104));
            v107 = sub_220891F2C();
            [v107 descender];
            v109 = v108;

            v110 = v170;
            if (v170 <= MaxY + v109)
            {
              v110 = MaxY + v109;
            }

            v170 = v110;
            if (v68)
            {
              v202.origin.x = x;
              v202.origin.y = y;
              v202.size.width = width;
              v202.size.height = height;
              v111 = CGRectGetWidth(v202);
              sub_22088C1FC();
              v203.size.height = 1.0 / v112;
              v203.origin.x = v169;
              v203.origin.y = v69 - v157;
              v203.size.width = v111;
              v204 = CGRectIntegral(v203);
              v113 = v204.origin.x;
              v114 = v204.origin.y;
              v115 = v204.size.width;
              v116 = v204.size.height;
              v62 = v167;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_220587A04(0, *(v65 + 2) + 1, 1, v65);
              }

              v66 = v162;
              v118 = *(v65 + 2);
              v117 = *(v65 + 3);
              if (v118 >= v117 >> 1)
              {
                v65 = sub_220587A04((v117 > 1), v118 + 1, 1, v65);
              }

              *(v65 + 2) = v118 + 1;
              v119 = &v65[32 * v118];
              v119[4] = v113;
              v119[5] = v114;
              v119[6] = v115;
              v119[7] = v116;
            }

            else
            {
              v62 = v167;
              v66 = v162;
            }

            ++v68;
            v191.origin.x = x;
            v191.origin.y = y;
            v191.size.width = width;
            v191.size.height = height;
            v70 = CGRectGetMaxY(v191);

            v69 = v70 + v160;
            v31 = v166;
            v64 = v163;
            if (v165 == v68)
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

LABEL_47:
        ++v64;

        v169 = v161 + v152 + v169;
        v50 = v154;
        if (v64 == v155)
        {
          v120 = v170 + 15.0;
          v63 = v159;
          goto LABEL_74;
        }
      }

      goto LABEL_108;
    }

    v120 = 15.0;
    v171 = 0.0;
    v65 = MEMORY[0x277D84F90];
LABEL_74:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v173[34] = v65;

    v121 = 1 << *(v63 + 32);
    v122 = -1;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    v123 = v122 & *(v63 + 64);
    v124 = (v121 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v125 = 0;
    v126 = 0.0;
    while (v123)
    {
      v127 = v125;
LABEL_82:
      v128 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
      v129 = CGRectGetMaxY(*(*(v63 + 56) + 48 * (v128 | (v127 << 6))));
      if (v126 <= v129)
      {
        v126 = v129;
      }
    }

    while (1)
    {
      v127 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        break;
      }

      if (v127 >= v124)
      {

        sub_22088C31C();
        v131 = v130;
        sub_22088C22C();
        sub_220891A6C();
        v205.size.width = v131 - v132;
        v205.size.height = v126 + 15.0 + 15.0;
        v205.origin.x = 0.0;
        v205.origin.y = 0.0;
        v206 = CGRectIntegral(v205);
        v133 = v206.origin.x;
        v134 = v206.origin.y;
        v135 = v206.size.width;
        v136 = v206.size.height;
        v137 = type metadata accessor for QuoteDetailViewLayoutOptions();
        sub_2207A235C(v149, v158, v179, v171 + v120 + *(v158 + *(v137 + 24)));
        sub_22088C31C();
        v139 = v138;
        sub_22088C22C();
        sub_220891A6C();
        v141 = v140;
        sub_22088C31C();
        v142 = v133;
        v143 = v134;
        v144 = v135;
        v145 = v136;
        if ((v180 & 1) == 0)
        {
          v145 = *&v179[7];
          v144 = *&v179[6];
          v143 = *&v179[5];
          v142 = *&v179[4];
        }

        v207.size.height = CGRectGetMaxY(*&v142);
        v146 = v139 - v141;
        v207.origin.x = 0.0;
        v207.origin.y = 0.0;
        v207.size.width = v146;
        CGRectIntegral(v207);
        *(v150 + 56) = v146;
        *(v150 + 64) = 0;
        MEMORY[0x28223BE20](v147, v148);
        sub_22088C18C();
        memcpy(v173, v172, 0x109uLL);

        __swift_destroy_boxed_opaque_existential_1(v176);
        memcpy(a9, v173, 0x109uLL);
        return;
      }

      v123 = *(v63 + 64 + 8 * v127);
      ++v125;
      if (v123)
      {
        v125 = v127;
        goto LABEL_82;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v48 = v47;
  v173[0] = MEMORY[0x277D84F90];

  sub_22070BDC4(0, v29, 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    v49 = 0;
    v50 = v173[0];
    while (1)
    {
      v51 = v49 * v48;
      if ((v49 * v48) >> 64 != (v49 * v48) >> 63)
      {
        break;
      }

      if (v51 < 0)
      {
        goto LABEL_103;
      }

      if (v35 >= v51)
      {
        v52 = v49 * v48;
      }

      else
      {
        v52 = v35;
      }

      if (v51)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      if (!v48 || v35 - v53 < 0 || (v54 = v35, v35 - v53 >= v48))
      {
        v54 = v53 + v48;
        if (__OFADD__(v53, v48))
        {
          goto LABEL_106;
        }

        if (v54 < v53)
        {
          goto LABEL_104;
        }

        if (v35 < v54)
        {
          goto LABEL_105;
        }
      }

      v55 = v54 - v53;
      if (v35 == v54 - v53)
      {
        v56 = v50;

        v50 = v56;
        v57 = a5;
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
        if (v54 != v53)
        {
          v153 = v50;
          if (v55 >= 1)
          {
            sub_2207A6140();
            v57 = swift_allocObject();
            v61 = _swift_stdlib_malloc_size(v57);
            v57[2] = v55;
            v57[3] = 2 * v61 - 64;
          }

          memcpy(v57 + 4, (a5 + 32 + v53), v55);
          v50 = v153;
        }
      }

      v173[0] = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_22070BDC4((v58 > 1), v59 + 1, 1);
        v60 = v59 + 1;
        v50 = v173[0];
      }

      ++v49;
      *(v50 + 16) = v60;
      *(v50 + 8 * v59 + 32) = v57;
      v31 = v166;
      if (v29 == v49)
      {
        v175 = MEMORY[0x277D84F98];
        v174 = MEMORY[0x277D84F98];
        v62 = v167;
        goto LABEL_46;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_113:
  __break(1u);
}