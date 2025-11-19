uint64_t type metadata accessor for SportsScoreboardCompetitorView()
{
  result = qword_1EE292B80;
  if (!qword_1EE292B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3B28508()
{
  result = qword_1EE25F470;
  if (!qword_1EE25F470)
  {
    type metadata accessor for SportsScoreboardLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25F470);
  }

  return result;
}

uint64_t sub_1E3B28560@<X0>(uint64_t a1@<X8>)
{
  *a1 = *sub_1E41F0984();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF336F0);
  return sub_1E3B285B4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1E3B285B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33700);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51[-v14];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33708);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v58 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v56 = v15;
  v57 = &v51[-v23];
  sub_1E3B289A8(a1, v15);
  v24 = type metadata accessor for SportsScoreboardCompetitorView();

  swift_retain_n();
  OUTLINED_FUNCTION_18();

  sub_1E3AC5824();
  v53 = v26;
  v54 = v25;
  v52 = v27;
  LODWORD(v24) = *(a1 + *(v24 + 32));
  sub_1E374709C(v12);
  v28 = (v5 + 8);
  if (v24 == 1)
  {
    v29 = MEMORY[0x1E697E7D0];
  }

  else
  {
    v29 = MEMORY[0x1E697E7D8];
  }

  (*(v5 + 104))(v9, *v29, v3);
  v30 = sub_1E4201314();
  v31 = *v28;
  (*v28)(v9, v3);
  v31(v12, v3);
  if (v30)
  {
    v32 = sub_1E3B2961C();
  }

  else
  {
    v32 = -sub_1E3B2961C();
  }

  v33 = sub_1E4203DA4();
  v35 = v34;
  v36 = v52 & 1;
  sub_1E3741EA0(v56, v21, &qword_1ECF33700);
  v37 = &v21[*(v55 + 36)];
  v38 = v53;
  *v37 = v54;
  *(v37 + 1) = v38;
  v37[16] = v36;
  *(v37 + 3) = v32;
  *(v37 + 4) = 0;
  *(v37 + 5) = v33;
  *(v37 + 6) = v35;
  v39 = v21;
  v40 = v57;
  sub_1E3741EA0(v39, v57, &qword_1ECF33708);
  v43 = nullsub_1(v41, v42);
  v45 = v44;
  v46 = *sub_1E41F0984();
  v47 = v58;
  sub_1E3743538(v40, v58, &qword_1ECF33708);
  v48 = v59;
  sub_1E3743538(v47, v59, &qword_1ECF33708);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33710) + 48));
  *v49 = v43;
  v49[1] = v45;
  v49[2] = v46;
  v49[3] = sub_1E3803508;
  v49[4] = 0;

  sub_1E325F6F0(v40, &qword_1ECF33708);

  return sub_1E325F6F0(v47, &qword_1ECF33708);
}

uint64_t sub_1E3B289A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33718);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33728);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v63 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v62 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v64 = v61 - v17;
  v18 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v61 - v26;
  v28 = type metadata accessor for SportsScoreboardCompetitorView();
  if (*(a1 + *(v28 + 36)) == 1)
  {
    v29 = v28;
    v61[1] = v6;
    v30 = *(a1 + *(v28 + 32));
    v31 = a1;
    sub_1E374709C(v27);
    v32 = (v20 + 8);
    if (v30 == 1)
    {
      v33 = MEMORY[0x1E697E7D0];
    }

    else
    {
      v33 = MEMORY[0x1E697E7D8];
    }

    (*(v20 + 104))(v24, *v33, v18);
    v38 = sub_1E4201314();
    v39 = *v32;
    (*v32)(v24, v18);
    v39(v27, v18);
    if (v38)
    {
      v40 = sub_1E38267CC();
    }

    else
    {
      v40 = sub_1E38267D4();
    }

    v41 = v40;
    v42 = sub_1E3826B74();
    if (v42)
    {
      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
    }

    else
    {
      v44 = 0;
      v43 = 0;
    }

    v45 = *(v31 + *(v29 + 28));
    if (v45)
    {
      v47 = *(v45 + 16);
      v46 = *(v45 + 24);

      if (v43)
      {
        if (v46)
        {
          if (v44 != v47 || v43 != v46)
          {
            v49 = sub_1E42079A4();

            if (v49)
            {
              goto LABEL_27;
            }

LABEL_25:
            v50 = 0;
LABEL_28:
            v52 = v63;
            sub_1E3B28F38(v41, v50, v63);

            v53 = *sub_1E41F0A04();
            v54 = v52;
            v55 = v62;
            sub_1E3741EA0(v54, v62, &qword_1ECF33728);
            v56 = (v55 + *(v12 + 36));
            *v56 = v53;
            v56[1] = sub_1E374AE08;
            v56[2] = 0;
            v35 = &qword_1ECF28D40;
            v57 = v64;
            sub_1E3741EA0(v55, v64, &qword_1ECF28D40);
            sub_1E3743538(v57, v9, &qword_1ECF28D40);
            swift_storeEnumTagMultiPayload();
            sub_1E3B29AA8();
            OUTLINED_FUNCTION_9_0();
            sub_1E32752B0(v58, v59);
            sub_1E4201F44();

            v37 = v57;
            return sub_1E325F6F0(v37, v35);
          }

LABEL_27:
          v51 = *(v31 + *(v29 + 24) + 8);
          swift_beginAccess();
          v50 = *(v51 + 280);

          goto LABEL_28;
        }
      }

      else if (!v46)
      {
        goto LABEL_27;
      }
    }

    else if (!v43)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  *v5 = sub_1E4201B84();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33730);
  sub_1E3B292D4(a1, &v5[*(v34 + 44)]);
  v35 = &qword_1ECF33718;
  sub_1E3743538(v5, v9, &qword_1ECF33718);
  swift_storeEnumTagMultiPayload();
  sub_1E3B29AA8();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v36, &qword_1ECF33718);
  sub_1E4201F44();
  v37 = v5;
  return sub_1E325F6F0(v37, v35);
}

uint64_t sub_1E3B28F38@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v51 = v8;
  v52 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v49 - v22;
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v50 = a3;
    if (a2)
    {
      type metadata accessor for TextLayout();
      swift_dynamicCastClass();
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v49[0] = type metadata accessor for SportsScoreboardCompetitorView();
    v49[1] = v3;
    OUTLINED_FUNCTION_5_29();
    v26 = *(**(*(v25 + 8) + 216) + 176);

    v26(v53, v27);
    v28 = v53[0];
    v29 = v53[1];
    v30 = v53[2];
    v31 = v53[3];

    if (v54)
    {
      v36 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v32.n128_u64[0] = v28;
      v33.n128_u64[0] = v29;
      v34.n128_u64[0] = v30;
      v35.n128_u64[0] = v31;
      v36 = j_nullsub_1(v32, v33, v34, v35);
    }

    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = sub_1E4202734();
    (*(v51 + 32))(v15, v11, v52);
    v45 = &v15[*(v12 + 36)];
    *v45 = v44;
    *(v45 + 1) = v40;
    *(v45 + 2) = v41;
    *(v45 + 3) = v42;
    *(v45 + 4) = v43;
    v45[40] = 0;
    v46 = sub_1E3827278();

    if (v46)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.0;
    }

    sub_1E3741EA0(v15, v20, &qword_1ECF28CC0);
    *(v20 + *(v16 + 36)) = v47;
    OUTLINED_FUNCTION_8_85(v20, v23);
    v48 = v50;
    OUTLINED_FUNCTION_8_85(v23, v50);
    return __swift_storeEnumTagSinglePayload(v48, 0, 1, v16);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v16);
  }
}

uint64_t sub_1E3B292D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v36 = v4;
  v37 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33738);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33740);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for SportsScoreboardCompetitorView();
  if (*(a1 + *(v20 + 28)))
  {
    v21 = v20;
    if (sub_1E39C408C(39))
    {
      type metadata accessor for ImageViewModel();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v35 = v22;
        sub_1E3EB9BB4(v39);
        v23 = sub_1E3827278();
        v24 = *(a1 + *(v21 + 24) + 8);
        if (v23)
        {
          v25 = (v24 + 208);
        }

        else
        {
          v25 = (v24 + 272);
        }

        swift_beginAccess();
        v28 = *v25;

        v29 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v35, v39, v28, v29 & 1, 0, 0, v7);

        sub_1E375C31C(v39);
        v30 = *sub_1E41F0984();
        (*(v36 + 32))(v11, v7, v37);
        v31 = &v11[*(v8 + 36)];
        *v31 = v30;
        v31[1] = sub_1E38034E0;
        v31[2] = 0;
        v32 = *sub_1E41F0A04();

        sub_1E3741EA0(v11, v16, &qword_1ECF33738);
        v33 = (v16 + *(v12 + 36));
        *v33 = v32;
        v33[1] = sub_1E374A0BC;
        v33[2] = 0;
        OUTLINED_FUNCTION_8_85(v16, v19);
        v34 = v38;
        OUTLINED_FUNCTION_8_85(v19, v38);
        return __swift_storeEnumTagSinglePayload(v34, 0, 1, v12);
      }
    }
  }

  v26 = v38;

  return __swift_storeEnumTagSinglePayload(v26, 1, 1, v12);
}

double sub_1E3B2961C()
{
  type metadata accessor for SportsScoreboardCompetitorView();
  OUTLINED_FUNCTION_5_29();
  v1 = *(v0 + 8);
  v2 = *(**(v1 + 184) + 200);

  v4 = COERCE_DOUBLE(v2(v3));
  v6 = v5;

  if (sub_1E3827278())
  {
    v7 = v1 + 208;
  }

  else
  {
    v7 = v1 + 272;
  }

  swift_beginAccess();
  v8 = v4 * 0.5;
  v9 = *(**v7 + 200);

  v11 = COERCE_DOUBLE(v9(v10));
  v13 = v12;

  v14 = v11 * -0.5;
  if (v13)
  {
    v14 = -0.0;
  }

  v15 = 0.0;
  if ((v6 & 1) == 0)
  {
    v15 = v8;
  }

  return v14 - v15;
}

uint64_t sub_1E3B2975C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3B297BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  sub_1E3B29868(a1, a6);
  v11 = type metadata accessor for SportsScoreboardCompetitorView();
  *(a6 + v11[5]) = a2;
  v12 = (a6 + v11[6]);
  type metadata accessor for SportsScoreboardLayout();
  sub_1E3B28508();
  result = sub_1E42010C4();
  *v12 = result;
  v12[1] = v14;
  *(a6 + v11[7]) = a3;
  *(a6 + v11[8]) = a4;
  *(a6 + v11[9]) = a5;
  return result;
}

uint64_t sub_1E3B29868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3B29920()
{
  sub_1E3B29A44(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScoreboardViewModel();
    if (v1 <= 0x3F)
    {
      sub_1E374A2C0();
      if (v2 <= 0x3F)
      {
        sub_1E3B29A44(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3B29A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3B29AA8()
{
  result = qword_1EE289520;
  if (!qword_1EE289520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28D40);
    sub_1E3B29B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289520);
  }

  return result;
}

unint64_t sub_1E3B29B34()
{
  result = qword_1EE289718;
  if (!qword_1EE289718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33728);
    sub_1E3B29BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289718);
  }

  return result;
}

unint64_t sub_1E3B29BB8()
{
  result = qword_1EE289720;
  if (!qword_1EE289720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF28D90);
    sub_1E38C9F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289720);
  }

  return result;
}

void sub_1E3B29C48()
{
  OUTLINED_FUNCTION_31_1();
  v74 = v0;
  v78 = v1;
  v79 = v2;
  v4 = v3;
  v72 = v5;
  v69 = v6;
  v71 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v68 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v67 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v65 - v12;
  v13 = type metadata accessor for ImpressionableItem(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v73 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v70 = &v65 - v26;
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  OUTLINED_FUNCTION_90();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v76 = v35;
  v77 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v75 = &v65 - v37;
  v38 = [objc_opt_self() sharedInstance];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 impressionTrackingDisabled];

    if (v40)
    {
      v41 = *(v27 + 16);
      v41(v33, v74, v4);
      v41(v30, v33, v4);
      OUTLINED_FUNCTION_4_123();
      v44 = sub_1E3B2AB40(v42, v43);
      v45 = v78;
      v80 = v78;
      v81 = v44;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v46 = v75;
      OUTLINED_FUNCTION_90();
      sub_1E37B8D98(v47, v48);
      v49 = *(v27 + 8);
      v49(v30, v4);
      v49(v33, v4);
    }

    else
    {
      sub_1E3B2A208(v69, v66);
      (*(v68 + 16))(v67, v72, v71);
      sub_1E3B2A278();
      v50 = v13;
      v45 = v78;
      MEMORY[0x1E690DE70](v17, v4, v50, v78);
      sub_1E3B2AAE8(v17, type metadata accessor for ImpressionableItem);
      v51 = sub_1E3B2AB40(qword_1EE2A0B80, type metadata accessor for ImpressionableItem);
      v86 = v45;
      v87 = v51;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v52 = v73;
      v53 = *(v73 + 16);
      v54 = v70;
      v53(v70, v23, v18);
      v55 = *(v52 + 8);
      v55(v23, v18);
      v53(v23, v54, v18);
      v46 = v75;
      OUTLINED_FUNCTION_90();
      sub_1E37B8E90(v56, v57, v58);
      v55(v23, v18);
      v55(v54, v18);
    }

    OUTLINED_FUNCTION_4_123();
    v61 = sub_1E3B2AB40(v59, v60);
    v84 = v45;
    v85 = v61;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v82 = v45;
    v83 = WitnessTable;
    OUTLINED_FUNCTION_2_25();
    v63 = v77;
    swift_getWitnessTable();
    v64 = v76;
    (*(v76 + 16))(v79, v46, v63);
    (*(v64 + 8))(v46, v63);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B2A208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3B2A278()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1E4204624();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = objc_opt_self();
  v20 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  if ([v19 isVision])
  {
    goto LABEL_2;
  }

  sub_1E3B2A208(v2, v18);
  v22 = sub_1E4204724();
  if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
  {
    sub_1E38858D4(v18);
LABEL_9:
    sub_1E38858D4(v2);
    v24 = v4;
    v25 = v22;
    goto LABEL_10;
  }

  sub_1E42046F4();
  (*(*(v22 - 8) + 8))(v18, v22);
  sub_1E3F6ABA4(0);
  v23 = sub_1E4204604();
  v29 = v2;
  v20 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;

  (*(v7 + 8))(v11, v5);
  v2 = v29;
  if (v23 == 2 || (v23 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_2:
  if (![v19 v20[497]])
  {
LABEL_13:
    sub_1E3B2B0C4(v2, v4);
    goto LABEL_14;
  }

  sub_1E3B2A208(v2, v15);
  v21 = sub_1E4204724();
  if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
  {
    sub_1E38858D4(v15);
    goto LABEL_13;
  }

  sub_1E42046F4();
  (*(*(v21 - 8) + 8))(v15, v21);
  sub_1E3F6ABA4(0);
  v26 = sub_1E4204604();

  (*(v7 + 8))(v11, v5);
  if (v26 == 2 || (v26 & 1) != 0)
  {
    goto LABEL_13;
  }

  sub_1E38858D4(v2);
  v24 = v4;
  v25 = v21;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
LABEL_14:
  v27 = *(type metadata accessor for ImpressionableItem(0) + 20);
  sub_1E4204874();
  OUTLINED_FUNCTION_2();
  (*(v28 + 32))(v4 + v27, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B2A5DC()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v63 = v1;
  v64 = v2;
  v4 = v3;
  v55 = v6;
  v56 = v5;
  v7 = type metadata accessor for ImpressionableItems(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v58 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v55 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v55 - v26;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v61 = v29;
  v62 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v60 = &v55 - v31;
  v32 = [objc_opt_self() sharedInstance];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 impressionTrackingDisabled];

    if (v34)
    {
      v35 = *(v20 + 16);
      v35(v27, WitnessTable, v4);
      v35(v24, v27, v4);
      OUTLINED_FUNCTION_3_122();
      v38 = sub_1E3B2AB40(v36, v37);
      v39 = v63;
      v65 = v63;
      v66 = v38;
      OUTLINED_FUNCTION_4_1();
      swift_getWitnessTable();
      v40 = v60;
      sub_1E37B8D98(v24, v4);
      v41 = *(v20 + 8);
      v41(v24, v4);
      v41(v27, v4);
    }

    else
    {
      v42 = *(v7 + 20);
      sub_1E4204874();
      OUTLINED_FUNCTION_2();
      (*(v43 + 16))(&v11[v42], v55);
      *v11 = v56;

      v39 = v63;
      MEMORY[0x1E690DE70](v11, v4, v7, v63);
      sub_1E3B2AAE8(v11, type metadata accessor for ImpressionableItems);
      v44 = sub_1E3B2AB40(&qword_1ECF56488, type metadata accessor for ImpressionableItems);
      v71 = v39;
      v72 = v44;
      OUTLINED_FUNCTION_4_1();
      WitnessTable = swift_getWitnessTable();
      v45 = v57;
      v46 = v58;
      v47 = *(v58 + 16);
      v47(v57, v17, v12);
      v48 = *(v46 + 8);
      v48(v17, v12);
      v47(v17, v45, v12);
      v40 = v60;
      sub_1E37B8E90(v17, v4, v12);
      v48(v17, v12);
      v48(v45, v12);
    }

    OUTLINED_FUNCTION_3_122();
    v51 = sub_1E3B2AB40(v49, v50);
    v69 = v39;
    v70 = v51;
    OUTLINED_FUNCTION_4_1();
    v52 = swift_getWitnessTable();
    v67 = v39;
    v68 = v52;
    OUTLINED_FUNCTION_2_25();
    v53 = v62;
    swift_getWitnessTable();
    v54 = v61;
    (*(v61 + 16))(v64, v40, v53);
    (*(v54 + 8))(v40, v53);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B2AAE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3B2AB40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyxAA08ModifiedE0Vyx06VideosB018ImpressionableItem33_279870158F59CE1CECC75FF3E99FC40ELLVGGAaBHPxAaBHD1__AkaBHPxAaBHD1__AjA0C8ModifierHPyHCHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1E42013A4();
  OUTLINED_FUNCTION_90();
  sub_1E4201F54();
  sub_1E3B2AB40(a3, a4);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

void sub_1E3B2ACC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1E3B2AD50(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1E4204874();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3B2AD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4204724();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E3B2ADC8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = sub_1E4203DA4();
  v10 = v9;
  v11 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33748) + 36);
  sub_1E3B2A208(v0, v7);
  v12 = sub_1E4204724();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v12);
  sub_1E38858D4(v7);
  if (EnumTagSinglePayload != 1)
  {
    v18[1] = sub_1E42036E4();
    type metadata accessor for ImpressionableItem(0);
    sub_1E4202C84();

    v13 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33750);
  __swift_storeEnumTagSinglePayload(v11, v13, 1, v15);
  v16 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33758) + 36));
  *v16 = v8;
  v16[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33760);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v4, v2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B2AF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4203DA4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33768) + 36);
  sub_1E42036E4();
  type metadata accessor for ImpressionableItems(0);
  sub_1E4202C94();

  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33770) + 36));
  *v8 = v4;
  v8[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33778);
  OUTLINED_FUNCTION_2();
  return (*(v9 + 16))(a2, a1);
}

uint64_t sub_1E3B2B0C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B2B134()
{
  result = qword_1EE289A70;
  if (!qword_1EE289A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33748);
    sub_1E32752B0(&qword_1EE2888E8, &qword_1ECF33760);
    sub_1E32752B0(&qword_1EE289248, &qword_1ECF33758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A70);
  }

  return result;
}

unint64_t sub_1E3B2B218()
{
  result = qword_1ECF33780;
  if (!qword_1ECF33780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33768);
    sub_1E32752B0(&qword_1ECF33788, &qword_1ECF33778);
    sub_1E32752B0(&qword_1ECF33790, &qword_1ECF33770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33780);
  }

  return result;
}

uint64_t sub_1E3B2B300()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3B2B348(char a1)
{
  result = 0x6E697265746C6966;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x64656C62616E65;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B2B4A0(char a1, char a2)
{
  v3 = sub_1E3B2B348(a1);
  v5 = v4;
  if (v3 == sub_1E3B2B348(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B2B52C(char a1)
{
  sub_1E4207B44();
  sub_1E3B2B348(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B2B598(uint64_t a1, char a2)
{
  sub_1E3B2B348(a2);
  sub_1E4206014();
}

uint64_t sub_1E3B2B5F4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3B2B348(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B2B654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B2B300();
  *a1 = result;
  return result;
}

unint64_t sub_1E3B2B684@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3B2B348(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B2B700(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3B2B758(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_11_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3B2B7DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  OUTLINED_FUNCTION_5_0();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3B2B82C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3B2B938()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6A8))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

double sub_1E3B2B998()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3B2B9D4(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3B2BA40()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
LABEL_17:
    v31 = v2;
    return v3;
  }

  v4 = v0;
  type metadata accessor for GradientView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setVuiUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A1E20;
  v7 = objc_opt_self();
  *(inited + 32) = [v7 blackColor];
  v8 = [v7 blackColor];
  v9 = [v8 colorWithAlphaComponent_];

  *(inited + 40) = v9;
  v10 = [v7 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(inited + 48) = v11;
  v12 = [v7 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(inited + 56) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1E4207574();
  v16 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E6911E60](0, inited);
    goto LABEL_7;
  }

  v17 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    if (v17 > 3)
    {
      v18 = *(inited + 32);
LABEL_7:
      v19 = v18;
      v20 = [v18 CGColor];

      sub_1E4207544();
      OUTLINED_FUNCTION_16_78();
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v21 = MEMORY[0x1E6911E60](1, inited);
      }

      else
      {
        v21 = *(inited + 40);
      }

      v22 = v21;
      v23 = [v21 CGColor];

      sub_1E4207544();
      OUTLINED_FUNCTION_16_78();
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v24 = MEMORY[0x1E6911E60](2, inited);
      }

      else
      {
        v24 = *(inited + 48);
      }

      v25 = v24;
      v26 = [v24 CGColor];

      sub_1E4207544();
      OUTLINED_FUNCTION_16_78();
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      if (v16)
      {
        v27 = MEMORY[0x1E6911E60](3, inited);
      }

      else
      {
        v27 = *(inited + 56);
      }

      v28 = v27;
      v29 = [v27 CGColor];

      sub_1E4207544();
      OUTLINED_FUNCTION_16_78();
      OUTLINED_FUNCTION_25_54();
      sub_1E4207594();
      sub_1E4207554();
      swift_setDeallocating();
      sub_1E377D458();
      sub_1E3960104(v32);
      sub_1E4207574();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_17_73();
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_17_73();
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_17_73();
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_79_12();
      OUTLINED_FUNCTION_17_73();
      OUTLINED_FUNCTION_24_48();
      sub_1E4207594();
      sub_1E4207554();
      sub_1E39601D4(v14);
      sub_1E39602A0();
      sub_1E39602AC();
      [v5 setVuiAlpha_];

      v30 = *(v4 + v1);
      *(v4 + v1) = v5;
      v3 = v5;

      v2 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E3B2BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  *v7 = 0;
  v7[1] = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration) = 0x403E000000000000;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 livePostPlayConfig];

  [v10 clockScorePollingInterval];
  v12 = v11;

  *(v5 + v8) = v12;
  v13 = [objc_opt_self() isPhone];
  v14 = 60.0;
  if (v13)
  {
    v14 = 20.0;
  }

  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset) = v14;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfHeight) = 0x406B800000000000;
  sub_1E41FFCA4();
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask) = 0;
  *(v5 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) = 0;
  if (!a4)
  {
    sub_1E4205CB4();
  }

  v15 = sub_1E3DDBFB4();
  v16 = *v15;
  v17 = v15[1];
  v28 = MEMORY[0x1E69E6370];
  LOBYTE(v27) = 1;
  sub_1E329504C(&v27, v26);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(v26, v16, v17);

  DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)();
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x538);
  v21 = v18;
  v20(0);
  v22 = v21;
  v20(0);

  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *((*v19 & *v22) + 0x2E0);

  v24(sub_1E3B320A8, v23);

  return v22;
}

void sub_1E3B2C2D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_loggingIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 livePostPlayConfig];

  [v4 clockScorePollingInterval];
  v6 = v5;

  *(v0 + v2) = v6;
  v7 = [objc_opt_self() isPhone];
  v8 = 60.0;
  if (v7)
  {
    v8 = 20.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset) = v8;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfHeight) = 0x406B800000000000;
  sub_1E41FFCA4();
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B2C4B0()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LivePostPlayDocumentViewController();
  objc_msgSendSuper2(&v13, sel_vui_viewDidLoad);
  v1 = OUTLINED_FUNCTION_53_25();
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setVuiBackgroundColor_];

  v4 = OUTLINED_FUNCTION_53_25();
  if (!v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_1E3B2BA40();
  [v5 vui:v6 addSubview:0 oldView:?];

  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [v7 vuiView];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v9 superview];

  if (!v10)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_53_25();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 vui:*(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView) sendSubviewToBack:?];
}

void sub_1E3B2C6A8()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for LivePostPlayDocumentViewController();
  objc_msgSendSuper2(&v28, sel_vui_viewDidLayoutSubviews);
  v1 = OUTLINED_FUNCTION_53_25();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = OUTLINED_FUNCTION_53_25();
  if (!v9)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;

  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_shelfBottomInset);
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v16 = [v14 view];

  if (v16)
  {
    [v16 setFrame_];

LABEL_6:
    v17 = sub_1E3B2BA40();
    v18 = OUTLINED_FUNCTION_53_25();
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [v17 setFrame_];
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void sub_1E3B2C8C4(UIViewController_optional *a1)
{
  DocumentViewController.willHostTemplateController(_:)(a1);
  if (a1)
  {
    type metadata accessor for LivePostPlayTemplateViewController();
    v4 = swift_dynamicCastClass();
    v5 = MEMORY[0x1E69E7D40];
    if (v4)
    {
      v2 = v4;
      v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A8))();
      (*((*v5 & *v2) + 0x8A8))(v6);
    }

    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies))
    {
      v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
      v31 = &off_1F5D70CC8;
      LOBYTE(v29[0]) = 6;
      v7 = a1;

      sub_1E3F9F164(v29);
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if ((OUTLINED_FUNCTION_4_124() & 1) == 0)
        {
          goto LABEL_19;
        }

        v8 = v28;
        __swift_destroy_boxed_opaque_existential_1(v29);
        v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v31 = &off_1F5D70CC8;
        OUTLINED_FUNCTION_0_149();
        sub_1E3F9F164(v9);
        if (v33)
        {
          if (OUTLINED_FUNCTION_4_124())
          {
            v2 = v28;
            __swift_destroy_boxed_opaque_existential_1(v29);
            if (v28)
            {
              v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
              v31 = &off_1F5D70CC8;
              OUTLINED_FUNCTION_0_149();
              sub_1E3F9F164(v10);
              if (v33)
              {
                v11 = OUTLINED_FUNCTION_4_124();
                if (v11)
                {
                  v2 = v28;
                }

                else
                {
                  v2 = 0;
                }

                v12 = v11 ^ 1u;
                __swift_destroy_boxed_opaque_existential_1(v29);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(v29);
                sub_1E325F7A8(v32, &unk_1ECF296E0);
                v2 = 0;
                v12 = 1;
              }

              OUTLINED_FUNCTION_5_118();
              (*(v18 + 2240))(v2, v12);
              v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
              v31 = &off_1F5D70CC8;
              OUTLINED_FUNCTION_0_149();
              sub_1E3F9F164(v19);

              if (v33)
              {
                v20 = OUTLINED_FUNCTION_4_124();
                OUTLINED_FUNCTION_48_28(v20);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(v29);
                sub_1E325F7A8(v32, &unk_1ECF296E0);
                v8 = 0;
                v2 = 1;
              }

              OUTLINED_FUNCTION_5_118();
              (*(v26 + 2264))(v8, v2);
            }

            else
            {
            }

LABEL_20:
            v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
            v31 = &off_1F5D70CC8;
            OUTLINED_FUNCTION_0_149();
            sub_1E3F9F164(v13);

            if (v33)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              if ((OUTLINED_FUNCTION_4_124() & 1) == 0)
              {
                goto LABEL_30;
              }

              __swift_destroy_boxed_opaque_existential_1(v29);
              v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
              v31 = &off_1F5D70CC8;
              OUTLINED_FUNCTION_0_149();
              sub_1E3F9F164(v14);
              if (v33)
              {
                if (OUTLINED_FUNCTION_4_124())
                {
                  v15 = v28;
                  __swift_destroy_boxed_opaque_existential_1(v29);
                  if (v28)
                  {
                    v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                    v31 = &off_1F5D70CC8;
                    OUTLINED_FUNCTION_0_149();
                    sub_1E3F9F164(v16);
                    if (v33)
                    {
                      v17 = OUTLINED_FUNCTION_4_124();
                      OUTLINED_FUNCTION_48_28(v17);
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(v29);
                      sub_1E325F7A8(v32, &unk_1ECF296E0);
                      v15 = 0;
                      v2 = 1;
                    }

                    OUTLINED_FUNCTION_5_118();
                    (*(v21 + 2288))(v15, v2);
                    v30 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
                    v31 = &off_1F5D70CC8;
                    OUTLINED_FUNCTION_0_149();
                    sub_1E3F9F164(v22);

                    if (v33)
                    {
                      v23 = OUTLINED_FUNCTION_4_124();
                      if (v23)
                      {
                        v24 = v28;
                      }

                      else
                      {
                        v24 = 0;
                      }

                      v25 = v23 ^ 1u;
                      __swift_destroy_boxed_opaque_existential_1(v29);
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(v29);
                      sub_1E325F7A8(v32, &unk_1ECF296E0);
                      v24 = 0;
                      v25 = 1;
                    }

                    OUTLINED_FUNCTION_5_118();
                    (*(v27 + 2312))(v24, v25);
                  }

                  else
                  {
                  }

                  return;
                }

LABEL_30:

                __swift_destroy_boxed_opaque_existential_1(v29);
                return;
              }
            }

            __swift_destroy_boxed_opaque_existential_1(v29);
            sub_1E325F7A8(v32, &unk_1ECF296E0);
            return;
          }

LABEL_19:
          __swift_destroy_boxed_opaque_existential_1(v29);
          goto LABEL_20;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1E325F7A8(v32, &unk_1ECF296E0);
      goto LABEL_20;
    }
  }
}

void sub_1E3B2CE20(char a1)
{
  v2 = sub_1E3B2BA40();
  v4 = v2;
  v3 = 0.0;
  if (a1)
  {
    v3 = 1.0;
  }

  [v2 setVuiAlpha_];
}

void sub_1E3B2CE80()
{
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_160();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    OUTLINED_FUNCTION_72_4(&dword_1E323F000, v7, v8, "%@ cleanup called");
    sub_1E325F7A8(v5, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  v9 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask;
  if (*&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  *&v1[v9] = 0;

  sub_1E3B2E9E0();
}

void sub_1E3B2CFB8()
{
  v1 = sub_1E3B2D1E8();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))(v1);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v3 + 56);

  if (!v4)
  {
    return;
  }

  (*(*v4 + 464))(v5);
  OUTLINED_FUNCTION_50();

  if (!sub_1E32AE9B0(v4))
  {
LABEL_17:

    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v6)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), (v8 = (*(v7 + 1040))()) == 0))
  {
LABEL_15:

    return;
  }

  v9 = v8;
  if (!sub_1E32AE9B0(v8))
  {

    goto LABEL_17;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_22:
    OUTLINED_FUNCTION_41_1();
    v11 = v14;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_34_0();
  if (v10)
  {
    v11 = *(v9 + 32);

LABEL_13:

    v13 = (*(*v11 + 872))(v12);
    if (v13)
    {
      sub_1E32AE9B0(v13);

      return;
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1E3B2D1E8()
{
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_160();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    OUTLINED_FUNCTION_72_4(&dword_1E323F000, v7, v8, "%@ Filter post play shelf items");
    sub_1E325F7A8(v5, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2F0))();
  if (result)
  {
    v10 = result;
    OUTLINED_FUNCTION_5_0();
    v11 = *(v10 + 56);

    if (v11)
    {
      v12 = (*(*v11 + 464))(result);

      if (v12)
      {
        if (sub_1E32AE9B0(v12))
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_34_0();
          if (!v13)
          {
            __break(1u);
            goto LABEL_71;
          }

          while (1)
          {

            type metadata accessor for CollectionViewModel();
            if (!swift_dynamicCastClass())
            {
            }

            OUTLINED_FUNCTION_26_0();
            v15 = (*(v14 + 1040))();
            if (!v15)
            {
            }

            v11 = v15;
            result = sub_1E32AE9B0(v15);
            if (!result)
            {
            }

            if ((v11 & 0xC000000000000001) != 0)
            {
LABEL_71:
              MEMORY[0x1E6911E60](0, v11);
            }

            else
            {
              if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_73;
              }
            }

            OUTLINED_FUNCTION_8();
            v17 = (*(v16 + 872))();
            if (!v17)
            {
            }

            v18 = v17;
            v19 = [objc_opt_self() sharedInstance];
            v20 = [v19 multiviewIdentifiers];

            v21 = sub_1E42062B4();
            v22 = sub_1E32772D8(v21);
            v23 = MEMORY[0x1E69E7CC0];
            v63 = MEMORY[0x1E69E7CC0];
            v24 = *(v1 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems);
            v25 = sub_1E32AE9B0(v24);
            if (!v25)
            {
              break;
            }

            v26 = v25;
            v55 = v18;
            v27 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_nonLiveGameIds;
            v28 = v24 & 0xC000000000000001;

            v58 = v27;
            OUTLINED_FUNCTION_5_0();
            v29 = 0;
            v61 = v24 + 32;
            v62 = v24 & 0xFFFFFFFFFFFFFF8;
            v56 = MEMORY[0x1E69E7CC0];
            v57 = v24;
            v30 = v24;
            v59 = v24 & 0xC000000000000001;
            v60 = v26;
            while (1)
            {
              if (v28)
              {
                v31 = MEMORY[0x1E6911E60](v29, v30);
              }

              else
              {
                if (v29 >= *(v62 + 16))
                {
                  goto LABEL_68;
                }

                v31 = *(v61 + 8 * v29);
              }

              if (__OFADD__(v29++, 1))
              {
                break;
              }

              v33 = *(v31 + 24);
              if (v33)
              {
                v34 = *(v31 + 16);

                if (sub_1E3B2D8FC())
                {
                  v35 = *(v1 + v58);
                  if (*(v35 + 16))
                  {
                    sub_1E4207B44();

                    sub_1E4206014();
                    v36 = sub_1E4207BA4();
                    v37 = ~(-1 << *(v35 + 32));
                    while (1)
                    {
                      v38 = v36 & v37;
                      if (((*(v35 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
                      {
                        break;
                      }

                      v39 = (*(v35 + 48) + 16 * v38);
                      if (*v39 != v34 || v33 != v39[1])
                      {
                        v41 = sub_1E42079A4();
                        v36 = v38 + 1;
                        if ((v41 & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v30 = v57;
                      v28 = v59;
                      v26 = v60;
                      goto LABEL_50;
                    }

                    v30 = v57;
                  }

                  v28 = v59;
                  if (*(v22 + 16))
                  {
                    sub_1E4207B44();
                    sub_1E4206014();
                    v42 = sub_1E4207BA4();
                    v43 = ~(-1 << *(v22 + 32));
                    while (1)
                    {
                      v44 = v42 & v43;
                      if (((*(v22 + 56 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
                      {
                        break;
                      }

                      v45 = (*(v22 + 48) + 16 * v44);
                      if (*v45 != v34 || v33 != v45[1])
                      {
                        v47 = sub_1E42079A4();
                        v42 = v44 + 1;
                        if ((v47 & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v26 = v60;
                      goto LABEL_50;
                    }
                  }

                  MEMORY[0x1E6910BF0](v48);
                  v26 = v60;
                  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1E42062F4();
                  }

                  sub_1E4206324();

                  v56 = v63;
                }

                else
                {
                }
              }

              else
              {
              }

LABEL_50:
              if (v29 == v26)
              {

                v18 = v55;
                v23 = v56;
                goto LABEL_54;
              }
            }

            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            OUTLINED_FUNCTION_41_1();
          }

LABEL_54:

          result = sub_1E32AE9B0(v18);
          if (!result)
          {
            goto LABEL_61;
          }

          v49 = result;
          if (result >= 1)
          {
            v50 = 0;
            OUTLINED_FUNCTION_8();
            v52 = *(v51 + 1024);
            do
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v53 = MEMORY[0x1E6911E60](v50, v18);
              }

              else
              {
                v53 = *(v18 + 8 * v50 + 32);
              }

              ++v50;
              v52(v53);
            }

            while (v49 != v50);
LABEL_61:

            if (sub_1E32AE9B0(v23))
            {
              OUTLINED_FUNCTION_8();
              (*(v54 + 1016))(v23);
            }
          }

LABEL_73:
          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

BOOL sub_1E3B2D8FC()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(*v0 + 776);
  v3 = OUTLINED_FUNCTION_43_33();
  v2(v3);
  if (!v12)
  {
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_31_39() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v10) = 2;
  v4 = OUTLINED_FUNCTION_43_33();
  v2(v4);
  if (!v12)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_31_39() & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(0x6D69547472617473, 0xE900000000000065, v10, &v11);

  if (!v12)
  {
LABEL_8:
    sub_1E325F7A8(&v11, &unk_1ECF296E0);
    return 0;
  }

  if (OUTLINED_FUNCTION_31_39())
  {
    sub_1E41FE594();
    sub_1E41FE574();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_13_8();
    v8(v7);
    return *&v10 <= v6 * 1000.0;
  }

  return 0;
}

void sub_1E3B2DB20()
{
  v2 = v0;
  OUTLINED_FUNCTION_26_0();
  v4 = (*(v3 + 552))();
  if (v4)
  {
    v64 = &unk_1F5D7BE68;
    v65 = &off_1F5D7BC48;
    v12 = OUTLINED_FUNCTION_37_36(v4, v5, v6, v7, v8, v9, v10, v11, oslog, v50, v53, v56, v59, 15);
    sub_1E3F9F164(v12);

    if (v67)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_78_9())
      {
        v13 = __swift_destroy_boxed_opaque_existential_1(v63);
        v64 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v65 = &off_1F5D70CC8;
        v21 = OUTLINED_FUNCTION_37_36(v13, v14, v15, v16, v17, v18, v19, v20, osloga, v51, v54, v57, v60, 4);
        sub_1E3F9F164(v21);
        if (v67)
        {
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(v63);
            v22 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoDismissalDuration;
            v23 = swift_beginAccess();
            *&v0[v22] = v52;
          }

          else
          {
            v23 = __swift_destroy_boxed_opaque_existential_1(v63);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v63);
          v23 = sub_1E325F7A8(v66, &unk_1ECF296E0);
        }

        v64 = &type metadata for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys;
        v65 = &off_1F5D70CC8;
        v44 = OUTLINED_FUNCTION_37_36(v23, v24, v25, v26, v27, v28, v29, v30, oslogb, v52, v55, v58, v61, 5);
        sub_1E3F9F164(v44);

        if (v67)
        {
          if (OUTLINED_FUNCTION_78_9())
          {
            v45 = v62;
          }

          else
          {
            v45 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v63);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v63);
          sub_1E325F7A8(v66, &unk_1ECF296E0);
          v45 = 0;
        }

        *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_autoPlayPolicies] = v45;

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_1E325F7A8(v66, &unk_1ECF296E0);
    }

    v36 = v0;
    v37 = OUTLINED_FUNCTION_66_11();
    v38 = sub_1E4206814();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_6_21();
      v40 = OUTLINED_FUNCTION_160();
      *v39 = 138412290;
      *(v39 + 4) = v1;
      *v40 = v1;
      v41 = v1;
      OUTLINED_FUNCTION_76_8(&dword_1E323F000, v42, v43, "%@ no shelf policies found in supplementary data");
      sub_1E325F7A8(v40, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    v31 = v0;
    oslogc = OUTLINED_FUNCTION_66_11();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(oslogc, v32))
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_160();
      *v33 = 138412290;
      *(v33 + 4) = v1;
      *v34 = v1;
      v35 = v1;
      _os_log_impl(&dword_1E323F000, oslogc, v32, "%@ no supplementary data found", v33, 0xCu);
      sub_1E325F7A8(v34, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }
  }
}

void sub_1E3B2DED4()
{
  v2 = v0;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_5_0();
    v1 = *(v4 + 56);

    if (v1)
    {
      v6 = (*(*v1 + 464))(v5);

      if (v6)
      {
        if (!sub_1E32AE9B0(v6))
        {
LABEL_18:

          goto LABEL_19;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
          v1 = v20;
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v7)
          {
            __break(1u);
            goto LABEL_25;
          }

          v1 = *(v6 + 32);
        }

        type metadata accessor for CollectionViewModel();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v9 = (*(v8 + 1040))();
          if (v9)
          {
            v10 = v9;
            if (sub_1E32AE9B0(v9))
            {
              if ((v10 & 0xC000000000000001) == 0)
              {
                OUTLINED_FUNCTION_34_0();
                if (!v11)
                {
                  __break(1u);
                  return;
                }

                v12 = *(v10 + 32);

                goto LABEL_14;
              }

LABEL_25:
              OUTLINED_FUNCTION_41_1();
              v12 = v21;
LABEL_14:

              (*(*v12 + 872))(v13);
              OUTLINED_FUNCTION_31_4();

              if (v12)
              {
                *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems] = v12;

                return;
              }

              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }
    }
  }

LABEL_19:
  v14 = v2;
  v15 = OUTLINED_FUNCTION_66_11();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_6_21();
    v18 = OUTLINED_FUNCTION_160();
    *v17 = 138412290;
    *(v17 + 4) = v1;
    *v18 = v2;
    v19 = v1;
    _os_log_impl(&dword_1E323F000, v15, v16, "%@ no items were found in the shelf after fetch", v17, 0xCu);
    sub_1E325F7A8(v18, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }
}

void sub_1E3B2E194()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - v8;
  v9 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  v10 = sub_1E32AE9B0(*&v0[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems]);
  v11 = v0;
  v55 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  v52 = v11;

  v13 = os_log_type_enabled(v55, v12);
  if (v10)
  {
    if (v13)
    {
      OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_70_16(v14, 5.7779e-34);
      OUTLINED_FUNCTION_74_12(&dword_1E323F000, v15, v16, "%@ registering with score push updates");
      sub_1E325F7A8(v14, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_13_4();
    }

    v17 = *&v1[v9];
    v18 = sub_1E32AE9B0(v17);
    v50 = v17 & 0xC000000000000001;
    v51 = v18;
    v49 = v17 & 0xFFFFFFFFFFFFFF8;
    v53 = v17;

    for (i = 0; ; i = v38 + 1)
    {
      if (v51 == i)
      {
        goto LABEL_35;
      }

      if (v50)
      {
        v20 = MEMORY[0x1E6911E60](i, v53);
      }

      else
      {
        if (i >= *(v49 + 16))
        {
          goto LABEL_38;
        }

        v20 = *(v53 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOBYTE(v61) = 1;
      OUTLINED_FUNCTION_8();
      v22 = *(v21 + 776);
      v23 = OUTLINED_FUNCTION_43_33();
      v22(v23, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v64)
      {
        goto LABEL_32;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v24 = v61;
      v25 = v62;
      LOBYTE(v61) = 0;
      v26 = OUTLINED_FUNCTION_43_33();
      v55 = v20;
      v22(v26, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v64)
      {

LABEL_32:

        sub_1E325F7A8(&v63, &unk_1ECF296E0);
        goto LABEL_36;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

LABEL_35:

LABEL_36:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v54 = i;
      v27 = v6;
      v29 = v61;
      v28 = v62;
      v30 = sub_1E4206474();
      v31 = v56;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
      OUTLINED_FUNCTION_4_0();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E4206434();
      OUTLINED_FUNCTION_50();

      v36 = sub_1E4206424();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = MEMORY[0x1E69E85E0];
      v37[4] = v35;
      v37[5] = v24;
      v37[6] = v25;
      v37[7] = v29;
      v37[8] = v28;
      v6 = v27;

      sub_1E325A828(v31, v27);
      LODWORD(v35) = __swift_getEnumTagSinglePayload(v27, 1, v30);

      if (v35 == 1)
      {
        sub_1E325F7A8(v27, &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        (*(*(v30 - 8) + 8))(v27, v30);
      }

      v38 = v54;
      v39 = v37[2];
      swift_unknownObjectRetain();

      if (v39)
      {
        swift_getObjectType();
        v40 = sub_1E42063B4();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      sub_1E325F7A8(v56, &unk_1ECF2C400);
      OUTLINED_FUNCTION_2_4();
      v43 = swift_allocObject();
      *(v43 + 16) = &unk_1E42BBE68;
      *(v43 + 24) = v37;
      if (v42 | v40)
      {
        v57 = 0;
        v58 = 0;
        v59 = v40;
        v60 = v42;
      }

      swift_task_create();
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      OUTLINED_FUNCTION_6_21();
      v44 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_70_16(v44, 5.7779e-34);
      OUTLINED_FUNCTION_74_12(&dword_1E323F000, v45, v46, "%@ cannot register with score push updates as no items were found in the shelf");
      sub_1E325F7A8(v44, &unk_1ECF28E30);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_13_4();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B2E744()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  sub_1E4206434();
  v0[10] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[11] = v6;
  v0[12] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B2E7D4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 112) = *v3;

    v5 = v2;
    *(v0 + 136) = j__OUTLINED_FUNCTION_18() & 1;
    *(v0 + 137) = j__OUTLINED_FUNCTION_18() & 1;
    v6 = *v4;
    *(v0 + 120) = *(*v4 + 488);
    *(v0 + 128) = (v6 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

    return MEMORY[0x1EEE6DFA0](sub_1E3B2E8E4, v4, 0);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v7();
  }
}

uint64_t sub_1E3B2E8E4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 104);
  (*(v0 + 120))(v1, &off_1F5D70BF0, *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 136), 0, *(v0 + 137));

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2E980, v2, v3);
}

uint64_t sub_1E3B2E980()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3B2E9E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  v11 = sub_1E32AE9B0(*&v0[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems]);
  v12 = v0;
  v47 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  v46 = v12;

  v14 = os_log_type_enabled(v47, v13);
  if (v11)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_69_15(v15, 5.7779e-34);
      OUTLINED_FUNCTION_75_9(&dword_1E323F000, v16, v17, "%@ unregistering with score push updates");
      sub_1E325F7A8(v15, &unk_1ECF28E30);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_13_4();
    }

    v18 = *&v1[v10];
    v19 = sub_1E32AE9B0(v18);
    v44 = v18 & 0xC000000000000001;
    v45 = v19;
    v43 = v18 & 0xFFFFFFFFFFFFFF8;
    v47 = v18;

    for (i = 0; ; ++i)
    {
      if (v45 == i)
      {
        goto LABEL_29;
      }

      if (v44)
      {
        MEMORY[0x1E6911E60](i, v47);
      }

      else
      {
        if (i >= *(v43 + 16))
        {
          goto LABEL_32;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOBYTE(v52) = 1;
      v21 = OUTLINED_FUNCTION_43_33();
      v22(v21, &unk_1F5D5E968, &off_1F5D5CCD8);
      if (!v54[3])
      {

        sub_1E325F7A8(v54, &unk_1ECF296E0);
        goto LABEL_30;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_29:

LABEL_30:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v24 = v52;
      v23 = v53;
      v25 = sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      sub_1E4206434();
      v29 = v46;
      v30 = sub_1E4206424();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = MEMORY[0x1E69E85E0];
      v31[4] = v29;
      v31[5] = v24;
      v31[6] = v23;
      sub_1E325A828(v9, v6);
      LODWORD(v29) = __swift_getEnumTagSinglePayload(v6, 1, v25);

      if (v29 == 1)
      {
        sub_1E325F7A8(v6, &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        (*(*(v25 - 8) + 8))(v6, v25);
      }

      v32 = v31[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = sub_1E42063B4();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_1E325F7A8(v9, &unk_1ECF2C400);
      OUTLINED_FUNCTION_2_4();
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_1E42BBE88;
      *(v36 + 24) = v31;
      if (v35 | v33)
      {
        v48 = 0;
        v49 = 0;
        v50 = v33;
        v51 = v35;
      }

      swift_task_create();
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      OUTLINED_FUNCTION_6_21();
      v37 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_69_15(v37, 5.7779e-34);
      OUTLINED_FUNCTION_75_9(&dword_1E323F000, v38, v39, "%@ cannot unregister with score push updates as no items were found in the shelf");
      sub_1E325F7A8(v37, &unk_1ECF28E30);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_13_4();
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B2EECC()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[6] = v4;
  v0[7] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B2EF58()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E376DBD0();
  v2 = *v1;
  *(v0 + 64) = *v1;

  *(v0 + 88) = j__OUTLINED_FUNCTION_18() & 1;
  v3 = *v2;
  *(v0 + 72) = *(*v2 + 496);
  *(v0 + 80) = (v3 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F008, v2, 0);
}

uint64_t sub_1E3B2F008()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 72))(*(v0 + 16), &off_1F5D70BF0, *(v0 + 24), *(v0 + 32), *(v0 + 88));

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F088, v1, v2);
}

uint64_t sub_1E3B2F088()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3B2F0E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_eventAvailabilityPollingTask))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();

    v12 = sub_1E4206424();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;

    *(v1 + v6) = sub_1E37748D8(0, 0, v5, &unk_1E42BBE20, v13);
  }
}

uint64_t sub_1E3B2F224()
{
  OUTLINED_FUNCTION_24();
  v0[10] = v1;
  v2 = sub_1E42075D4();
  v0[11] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[12] = v3;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v4 = sub_1E42075E4();
  v0[15] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[16] = v5;
  v0[17] = swift_task_alloc();
  v0[18] = sub_1E4206434();
  v0[19] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[20] = v6;
  v0[21] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B2F364()
{
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 176) = Strong;
  if (!Strong)
  {

    goto LABEL_12;
  }

  v2 = Strong;
  type metadata accessor for TVAppLauncher();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 appController];

  if (!v4 || (v3 = [v4 appContext], *(v0 + 184) = v3, v4, !v3))
  {

    v11 = v2;
    v12 = OUTLINED_FUNCTION_66_11();
    v13 = sub_1E42067F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_160();
      *v14 = 138412290;
      *(v14 + 4) = v3;
      *v15 = v2;
      v16 = v3;
      _os_log_impl(&dword_1E323F000, v12, v13, "%@ cannot poll event availability since app context is missing", v14, 0xCu);
      sub_1E325F7A8(v15, &unk_1ECF28E30);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

LABEL_12:

    OUTLINED_FUNCTION_54();

    return v17();
  }

  *(v0 + 192) = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_logger;
  v5 = v2;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_160();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v2;
    *(v8 + 12) = 2048;
    *(v8 + 14) = *&v5[OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval];
    v10 = v5;
    _os_log_impl(&dword_1E323F000, v6, v7, "%@ event availability polling interval - %f", v8, 0x16u);
    sub_1E325F7A8(v9, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  if (sub_1E4206504())
  {

    goto LABEL_12;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v20 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_cachedItems;
  *(v0 + 200) = v19;
  *(v0 + 208) = v20;
  *(v0 + 216) = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_clockScorePollInterval;
  v21 = *(v0 + 176);
  v22 = OUTLINED_FUNCTION_66_11();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 176);
    v25 = OUTLINED_FUNCTION_6_21();
    v26 = OUTLINED_FUNCTION_160();
    *v25 = 138412290;
    *(v25 + 4) = v24;
    *v26 = v24;
    v27 = v24;
    OUTLINED_FUNCTION_77_11(&dword_1E323F000, v28, v29, "%@ polling availabilities for all items in the shelf");
    sub_1E325F7A8(v26, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  v30 = *(v0 + 208);
  v31 = *(v0 + 176);

  *(v0 + 224) = *(v31 + v30);

  *(v0 + 232) = sub_1E4206424();
  OUTLINED_FUNCTION_4_0();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_68_15(v32);
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_64_15(v33);
  v34 = swift_task_alloc();
  *(v0 + 256) = v34;
  *v34 = v0;
  OUTLINED_FUNCTION_10_82(v34);
  OUTLINED_FUNCTION_8_87();

  return MEMORY[0x1EEE6DBF8](v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1E3B2F7A4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 168);
  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E3B2F930, v6, v5);
}

uint64_t sub_1E3B2F930()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E4207CA4();
  v3 = v2;
  sub_1E4207AA4();
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3B2F9C0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1E3B32E5C(&unk_1ECF2C4D0, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_13_8();
  sub_1E4207A84();
  sub_1E3B32E5C(&unk_1ECF2CCD0, MEMORY[0x1E69E87E8]);
  sub_1E42075F4();
  v5 = *(v2 + 8);
  v0[33] = v5;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1E3B2FB40;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 5, v7, v4);
}

uint64_t sub_1E3B2FB40()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 288) = v0;

  if (v0)
  {
    (*(v3 + 264))(*(v3 + 112), *(v3 + 88));
    v6 = OUTLINED_FUNCTION_11_1();
  }

  else
  {
    v10 = *(v3 + 128);
    v9 = *(v3 + 136);
    v11 = *(v3 + 120);
    (*(v3 + 264))(*(v3 + 112), *(v3 + 88));
    (*(v10 + 8))(v9, v11);
    v7 = *(v3 + 160);
    v8 = *(v3 + 168);
    v6 = sub_1E3B2FC88;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B2FC88()
{
  OUTLINED_FUNCTION_134();
  v1 = sub_1E4206504();
  v2 = v0[22];
  if (v1)
  {
    v3 = v0[23];

    OUTLINED_FUNCTION_54();

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = sub_1E41FFC94();
    v8 = sub_1E4206814();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[22];
      v10 = OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_160();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      OUTLINED_FUNCTION_77_11(&dword_1E323F000, v13, v14, "%@ polling availabilities for all items in the shelf");
      sub_1E325F7A8(v11, &unk_1ECF28E30);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_51_2();
    }

    v15 = v0[26];
    v16 = v0[22];

    v0[28] = *(v16 + v15);

    v0[29] = sub_1E4206424();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_68_15(v17);
    v18 = swift_task_alloc();
    OUTLINED_FUNCTION_64_15(v18);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_10_82();
    OUTLINED_FUNCTION_8_87();

    return MEMORY[0x1EEE6DBF8](v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_1E3B2FE7C()
{
  OUTLINED_FUNCTION_24();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1E3B2FEEC, v1, v2);
}

uint64_t sub_1E3B2FEEC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3B2FF88()
{
  OUTLINED_FUNCTION_24();
  v0[49] = v1;
  v0[50] = v2;
  v0[47] = v3;
  v0[48] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337A0);
  v0[53] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[54] = v7;
  v0[55] = swift_task_alloc();
  v0[56] = sub_1E4206434();
  v0[57] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[58] = v8;
  v0[59] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3B300B8()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1E32AE9B0(*(v0 + 392));
    if (v3)
    {
      v4 = v3;
      if (v3 >= 1)
      {
        v5 = 0;
        v6 = *(v0 + 392);
        v37 = v6 + 32;
        v40 = v6 & 0xC000000000000001;
        v35 = v3;
        v36 = v2;
        while (1)
        {
          if (v40)
          {
            v7 = MEMORY[0x1E6911E60](v5, *(v0 + 392));
          }

          else
          {
            v7 = *(v37 + 8 * v5);
          }

          *(v0 + 521) = 1;
          (*(*v7 + 776))(v0 + 521, &unk_1F5D5E968, &off_1F5D5CCD8);
          if (!*(v0 + 136))
          {
            break;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          v9 = *(v0 + 408);
          v8 = *(v0 + 416);
          v10 = *(v0 + 400);
          v38 = *(v0 + 352);
          v39 = *(v0 + 344);
          v11 = sub_1E4206474();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
          OUTLINED_FUNCTION_4_0();
          v15 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = swift_allocObject();
          *(v16 + 16) = 0u;
          *(v16 + 32) = v15;
          *(v16 + 40) = v39;
          *(v16 + 48) = v38;
          *(v16 + 56) = v10;
          sub_1E325A828(v8, v9);
          LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
          v17 = v10;
          v18 = *(v0 + 408);
          if (v9 == 1)
          {
            sub_1E325F7A8(*(v0 + 408), &unk_1ECF2C400);
          }

          else
          {
            sub_1E4206464();
            (*(*(v11 - 8) + 8))(v18, v11);
          }

          if (*(v16 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v25 = sub_1E42063B4();
            v27 = v26;
            swift_unknownObjectRelease();
          }

          else
          {
            v25 = 0;
            v27 = 0;
          }

          v2 = v36;
          v28 = **(v0 + 376);
          OUTLINED_FUNCTION_2_4();
          v29 = swift_allocObject();
          *(v29 + 16) = &unk_1E42BBE48;
          *(v29 + 24) = v16;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          v30 = v27 | v25;
          if (v27 | v25)
          {
            v30 = v0 + 144;
            *(v0 + 144) = 0;
            *(v0 + 152) = 0;
            *(v0 + 160) = v25;
            *(v0 + 168) = v27;
          }

          v31 = *(v0 + 416);
          *(v0 + 272) = 1;
          *(v0 + 280) = v30;
          *(v0 + 288) = v28;
          swift_task_create();

          sub_1E325F7A8(v31, &unk_1ECF2C400);
          v4 = v35;
LABEL_23:
          if (v4 == ++v5)
          {
            goto LABEL_24;
          }
        }

        sub_1E325F7A8(v0 + 112, &unk_1ECF296E0);
LABEL_13:
        v19 = v2;
        v20 = sub_1E41FFC94();
        v21 = sub_1E4206814();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = OUTLINED_FUNCTION_6_21();
          v23 = OUTLINED_FUNCTION_160();
          *v22 = 138412290;
          *(v22 + 4) = v19;
          *v23 = v2;
          v24 = v19;
          _os_log_impl(&dword_1E323F000, v20, v21, "%@ cannot poll event availability since canonical id is missing", v22, 0xCu);
          sub_1E325F7A8(v23, &unk_1ECF28E30);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      sub_1E42063E4();
      *(v0 + 488) = sub_1E4206424();
      v32 = swift_task_alloc();
      *(v0 + 496) = v32;
      *v32 = v0;
      OUTLINED_FUNCTION_9_85(v32);
      v3 = v0 + 360;
    }

    return MEMORY[0x1EEE6D8A8](v3);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v33();
  }
}

uint64_t sub_1E3B3062C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 472);
  v6 = *(v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1E3B3075C, v6, v5);
}

uint64_t sub_1E3B3075C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[45];
  v0[63] = v1;
  if (v1)
  {
    swift_unknownObjectWeakInit();
    v2 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = v0[60];
    (*(v0[54] + 8))(v0[55], v0[53]);

    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3B30848()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 512) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3B308CC, v2, v1);
}

uint64_t sub_1E3B308CC()
{
  v57 = v0;

  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v2 = Strong;
  sub_1E3277E60(0x6449746E657665, 0xE700000000000000, *(v0 + 504), (v0 + 16));
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 328);
      v3 = *(v0 + 336);
      goto LABEL_7;
    }
  }

  else
  {
    sub_1E325F7A8(v0 + 16, &unk_1ECF296E0);
  }

  v4 = 0;
  v3 = 0xE000000000000000;
LABEL_7:
  sub_1E3277E60(0x726F727265, 0xE500000000000000, *(v0 + 504), (v0 + 48));
  if (*(v0 + 72))
  {
    if (swift_dynamicCast())
    {
      v55 = v4;
      v6 = *(v0 + 312);
      v5 = *(v0 + 320);
      v7 = v2;

      v8 = sub_1E41FFC94();
      v9 = sub_1E4206814();

      if (os_log_type_enabled(v8, v9))
      {
        v53 = v6;
        v10 = OUTLINED_FUNCTION_100();
        v11 = OUTLINED_FUNCTION_160();
        v56 = swift_slowAlloc();
        *v10 = 138412802;
        *(v10 + 4) = v7;
        *v11 = v2;
        *(v10 + 12) = 2080;
        v54 = v7;
        v12 = sub_1E3270FC8(v53, v5, &v56);

        *(v10 + 14) = v12;
        *(v10 + 22) = 2080;
        v13 = sub_1E3270FC8(v55, v3, &v56);

        *(v10 + 24) = v13;
        _os_log_impl(&dword_1E323F000, v8, v9, "%@ encountered error - %s while fetching availability for %s", v10, 0x20u);
        sub_1E325F7A8(v11, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();
      }

      else
      {
      }

LABEL_23:

      goto LABEL_28;
    }
  }

  else
  {
    sub_1E325F7A8(v0 + 48, &unk_1ECF296E0);
  }

  v14 = OUTLINED_FUNCTION_45_32();
  sub_1E3277E60(v14, v15, v16, (v0 + 80));
  if (!*(v0 + 104))
  {
    sub_1E325F7A8(v0 + 80, &unk_1ECF296E0);
LABEL_19:
    v31 = v2;

    v8 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v8, v32))
    {
      v33 = OUTLINED_FUNCTION_49_0();
      v34 = OUTLINED_FUNCTION_160();
      v35 = OUTLINED_FUNCTION_100();
      v56 = v35;
      *v33 = 138412546;
      *(v33 + 4) = v31;
      *v34 = v2;
      *(v33 + 12) = 2080;
      v36 = v31;
      v40 = OUTLINED_FUNCTION_54_20(v36, v37, v38, v39);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_1E323F000, v8, v32, "%@ hasEventEnded key is missing from the response for %s, skipping this event", v33, 0x16u);
      sub_1E325F7A8(v34, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(v0 + 520);
  v18 = v2;

  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  v21 = os_log_type_enabled(v19, v20);
  if (v17)
  {
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_49_0();
      v23 = OUTLINED_FUNCTION_160();
      v24 = OUTLINED_FUNCTION_100();
      v56 = v24;
      v25 = OUTLINED_FUNCTION_46_29(5.778e-34);
      *(v22 + 14) = OUTLINED_FUNCTION_54_20(v25, v26, v27, v28);
      OUTLINED_FUNCTION_73_9(&dword_1E323F000, v29, v30, "%@ adding %s from nonLive set based on clock score response");
      sub_1E325F7A8(v23, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_11_3();
    sub_1E3277398((v0 + 296), v4, v3);
    swift_endAccess();
  }

  else
  {
    if (v21)
    {
      v41 = OUTLINED_FUNCTION_49_0();
      v42 = OUTLINED_FUNCTION_160();
      v43 = OUTLINED_FUNCTION_100();
      v56 = v43;
      v44 = OUTLINED_FUNCTION_46_29(5.778e-34);
      *(v41 + 14) = OUTLINED_FUNCTION_54_20(v44, v45, v46, v47);
      OUTLINED_FUNCTION_73_9(&dword_1E323F000, v48, v49, "%@ removing %s from nonLive set based on clock score response");
      sub_1E325F7A8(v42, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_11_3();
    sub_1E397B708(v4, v3);
    swift_endAccess();
  }

LABEL_28:
  MEMORY[0x1E69144A0](v0 + 368);

  v50 = *(v0 + 464);
  v51 = *(v0 + 472);

  return MEMORY[0x1EEE6DFA0](sub_1E3B30EF4, v50, v51);
}

uint64_t sub_1E3B30EF4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 488) = sub_1E4206424();
  v1 = swift_task_alloc();
  *(v0 + 496) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_9_85();

  return MEMORY[0x1EEE6D8A8](v0 + 360);
}

uint64_t sub_1E3B30F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  v8 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B30FBC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_32_46();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B310C4;

    return sub_1E3B31218();
  }

  else
  {
    **(v0 + 40) = sub_1E4205CB4();
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B310C4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 96) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3B311B4()
{
  OUTLINED_FUNCTION_24();

  **(v0 + 40) = *(v0 + 96);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B31218()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[8] = v4;
  v0[9] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3B312A8()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1E4206424();
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *v6 = v0;
  v6[1] = sub_1E3B313CC;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v4, v8, 0xD00000000000002ELL, 0x80000001E4271FB0, sub_1E3B32668, v5, v7);
}

uint64_t sub_1E3B313CC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E3B31518, v6, v5);
}

uint64_t sub_1E3B31518()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1E3B31578()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  (*(v10 + 16))(v21 - v15, v7, v8, v14);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v16, v8);
  v19 = (v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v3;
  v19[1] = v1;
  v21[4] = sub_1E3B32674;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1E377674C;
  v21[3] = &block_descriptor_62;
  v20 = _Block_copy(v21);

  [v5 evaluate_];
  _Block_release(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B3173C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = v26 - v13;
  v15 = [v7 objectForKeyedSubscript_];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  if (![v15 hasProperty_])
  {

LABEL_5:
    v26[1] = sub_1E4205CB4();
    sub_1E42063D4();
    goto LABEL_6;
  }

  (*(v10 + 16))(v14, v5, v8);
  v17 = *(v10 + 80);
  v26[0] = v3;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E4299720;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 32) = v26[0];
  *(v20 + 40) = v1;
  v21 = sub_1E3A246B8();

  v22 = sub_1E3A242D8(v7, sub_1E3B32718, v19);
  *(v20 + 88) = v21;
  *(v20 + 64) = v22;
  v23 = sub_1E4205F14();
  v25 = sub_1E3780E30(v23, v24, v20, v16);

LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B31998()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_delegate);

  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayDocumentViewController____lazy_storage___backgroudGradientView);
}

id sub_1E3B31A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePostPlayDocumentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3B31B64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v46 = sub_1E4205014();
  v44 = v12;
  sub_1E4205044();
  v13 = *(v6 + 104);
  v13(v10, *MEMORY[0x1E69D3B68], v4);
  v14 = sub_1E3823168();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v16 = OUTLINED_FUNCTION_13_8();
  v45 = v15;
  (v15)(v16);
  if (v14 & 1) != 0 || (sub_1E4205044(), v13(v10, *MEMORY[0x1E69D3B90], v4), v17 = sub_1E3823168(), (v45)(v10, v4), v18 = OUTLINED_FUNCTION_13_8(), v45(v18), (v17))
  {
    OUTLINED_FUNCTION_47_32();
    sub_1E397B708(v46, v44);
    swift_endAccess();

    v19 = v1;

    v20 = v3;
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_100();
      v43 = OUTLINED_FUNCTION_160();
      v47[0] = swift_slowAlloc();
      *v23 = 138412802;
      *(v23 + 4) = v19;
      *v43 = v19;
      *(v23 + 12) = 2080;
      v24 = v19;
      sub_1E3270FC8(v46, v44, v47);
      OUTLINED_FUNCTION_31_4();

      *(v23 + 14) = v43;
      *(v23 + 22) = 2080;
      sub_1E4205044();
      v25 = sub_1E4205744();
      v27 = v26;
      v28 = OUTLINED_FUNCTION_13_8();
      v45(v28);
      v29 = sub_1E3270FC8(v25, v27, v47);

      *(v23 + 24) = v29;
      _os_log_impl(&dword_1E323F000, v21, v22, "%@ removed %s from nonLive set based on push with status - %s", v23, 0x20u);
      sub_1E325F7A8(v43, &unk_1ECF28E30);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_71_18();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_32();

    sub_1E3277398(&v48, v46, v44);
    swift_endAccess();

    v30 = v1;

    v31 = v3;
    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_100();
      v42 = OUTLINED_FUNCTION_160();
      v47[0] = swift_slowAlloc();
      *v34 = 138412802;
      *(v34 + 4) = v30;
      *v42 = v30;
      *(v34 + 12) = 2080;
      v35 = v30;
      sub_1E3270FC8(v46, v44, v47);
      v36 = v32;
      OUTLINED_FUNCTION_31_4();

      *(v34 + 14) = v32;
      *(v34 + 22) = 2080;
      sub_1E4205044();
      v37 = sub_1E4205744();
      v39 = v38;
      v40 = OUTLINED_FUNCTION_13_8();
      v45(v40);
      v41 = sub_1E3270FC8(v37, v39, v47);

      *(v34 + 24) = v41;
      _os_log_impl(&dword_1E323F000, v36, v33, "%@ added %s from nonLive set based on push with status - %s", v34, 0x20u);
      sub_1E325F7A8(v42, &unk_1ECF28E30);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_71_18();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B320A8()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    v3 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2F0);
    v4 = Strong;
    v5 = v3();

    if (v5)
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v5 + 56))
      {

        sub_1E3B2DB20();
        sub_1E3B2DED4();
        sub_1E3B2E194();
        sub_1E3B2F0E0();
        if ((*((*v2 & *v4) + 0x690))())
        {
          v7 = v6;
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(ObjectType, v7);
          swift_unknownObjectRelease();
        }

        goto LABEL_11;
      }

      v9 = v4;
      v17 = sub_1E41FFC94();
      v18 = sub_1E4206814();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_6_21();
        v20 = OUTLINED_FUNCTION_160();
        *v19 = 138412290;
        *(v19 + 4) = v9;
        *v20 = v1;
        v21 = v9;
        _os_log_impl(&dword_1E323F000, v17, v18, "%@ template view model is nil", v19, 0xCu);
        sub_1E325F7A8(v20, &unk_1ECF28E30);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();

LABEL_11:

        return;
      }
    }

    else
    {
      v9 = v4;
      v10 = sub_1E41FFC94();
      v11 = sub_1E4206814();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_6_21();
        v13 = OUTLINED_FUNCTION_160();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v1;
        v14 = v9;
        OUTLINED_FUNCTION_76_8(&dword_1E323F000, v15, v16, "%@ document is nil");
        sub_1E325F7A8(v13, &unk_1ECF28E30);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_6_0();

        return;
      }
    }
  }
}

uint64_t type metadata accessor for LivePostPlayDocumentViewController()
{
  result = qword_1EE291540;
  if (!qword_1EE291540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B323D4()
{
  result = sub_1E41FFCB4();
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

uint64_t getEnumTagSinglePayload for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LivePostPlayDocumentViewController.LivePostPlayShelfPolicyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3B32614()
{
  result = qword_1EE2916D0;
  if (!qword_1EE2916D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2916D0);
  }

  return result;
}

void sub_1E3B32674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3B3173C();
}

id sub_1E3B32718(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  OUTLINED_FUNCTION_17_2(v5);
  result = sub_1E32AE9B0(a3);
  if (!result)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_12:
    sub_1E325F7A8(&v14, &unk_1ECF296E0);
    goto LABEL_13;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v7 = *(a3 + 32);
  }

  v8 = v7;
  v9 = [v7 toObject];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v10 = v12;
    goto LABEL_14;
  }

LABEL_13:
  v10 = sub_1E4205CB4();
LABEL_14:
  *&v14 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33798);
  sub_1E42063D4();
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v11 = result;

    return v11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E3B32928()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2F224();
}

uint64_t sub_1E3B329B0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2FF88();
}

uint64_t sub_1E3B32A54()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3(v7);
  *v8 = v11;
  v8[1] = sub_1E327C238;

  return sub_1E3B30F8C(v2, v9, v10, v3, v4, v6, v5);
}

uint64_t sub_1E3B32B08(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1E3B32BFC;

  return v5(v2 + 16);
}

uint64_t sub_1E3B32BFC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *(v0 + 24);
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_66_1();
  *v2 = *(v5 + 16);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1E3B32D18()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3B32DAC()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2E744();
}

uint64_t sub_1E3B32E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B32EA4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3B2EECC();
}

uint64_t OUTLINED_FUNCTION_32_46()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_28(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

id OUTLINED_FUNCTION_53_25()
{

  return [v0 (v1 + 2867)];
}

uint64_t OUTLINED_FUNCTION_68_15(uint64_t a1)
{
  *(v1 + 240) = a1;

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_69_15(void *a1, float a2)
{
  *v2 = a2;
  v5 = *(v3 - 176);
  *(v2 + 4) = v5;
  *a1 = v5;

  return v5;
}

id OUTLINED_FUNCTION_70_16(void *a1, float a2)
{
  *v2 = a2;
  v5 = *(v3 - 200);
  *(v2 + 4) = v5;
  *a1 = v5;

  return v5;
}

void OUTLINED_FUNCTION_74_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 176);

  _os_log_impl(a1, v8, v5, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_77_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_79_12()
{

  return sub_1E4207544();
}

void sub_1E3B33074()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = type metadata accessor for SportsLockup(0);
  v12 = v11[9];
  *(v6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(v6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  *v6 = v4;
  memcpy(v6 + 1, v2, 0xC3uLL);
  v14 = *(*v4 + 392);

  if (!v14(v15))
  {
LABEL_4:
    type metadata accessor for SportsLockupCellLayout();
    sub_1E3A06774();
  }

  type metadata accessor for SportsLockupCellLayout();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_4;
  }

  v6[27] = v16;
  type metadata accessor for TextBadgePresenter();
  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 2032);

  v20 = v18(v19);

  *(v6 + v11[11]) = sub_1E3789F30(v20);
  type metadata accessor for ContextMenuModel();

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v9 + 104))(v0, *MEMORY[0x1E697E660], v7);
  v6[26] = sub_1E4188148(v4, v0);
  type metadata accessor for SportsLockupInteractor();
  v6[28] = sub_1E3764DD0(v4);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B33314()
{
  OUTLINED_FUNCTION_31_1();
  v32[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337A8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  v32[1] = type metadata accessor for SportsLockupListView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if ((*(**(v0 + 216) + 2224))())
  {
    sub_1E3B3371C(v8);
    (*(v5 + 16))(v1, v8, v3);
    OUTLINED_FUNCTION_113();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_79();
    sub_1E3B398F4(v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0);
    v19 = sub_1E3B33FF8();
    v37[0] = v18;
    v37[1] = v19;
    OUTLINED_FUNCTION_7_118();
    v20 = OUTLINED_FUNCTION_71_19();
    v37[0] = v17;
    v37[1] = v20;
    OUTLINED_FUNCTION_3_8();
    v21 = OUTLINED_FUNCTION_71_19();
    v37[0] = v16;
    v37[1] = v21;
    OUTLINED_FUNCTION_5_15();
    v22 = OUTLINED_FUNCTION_71_19();
    v37[0] = v15;
    v37[1] = MEMORY[0x1E69E6158];
    v37[2] = v22;
    v37[3] = MEMORY[0x1E69E6168];
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_71_19();
    OUTLINED_FUNCTION_47_33();
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    memcpy(v37, (v0 + 8), 0xC3uLL);
    type metadata accessor for SportsLockup(0);

    sub_1E375C1CC(v37, &v33);

    sub_1E3E45178();
    sub_1E3B38D70(v13, v1, type metadata accessor for SportsLockupListView);
    OUTLINED_FUNCTION_113();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_79();
    sub_1E3B398F4(v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0);
    v28 = sub_1E3B33FF8();
    v33 = v27;
    v34 = v28;
    OUTLINED_FUNCTION_7_118();
    v29 = OUTLINED_FUNCTION_69_16();
    v33 = v26;
    v34 = v29;
    OUTLINED_FUNCTION_3_8();
    v30 = OUTLINED_FUNCTION_69_16();
    v33 = v25;
    v34 = v30;
    OUTLINED_FUNCTION_5_15();
    v31 = OUTLINED_FUNCTION_69_16();
    v33 = v24;
    v34 = MEMORY[0x1E69E6158];
    v35 = v31;
    v36 = MEMORY[0x1E69E6168];
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_69_16();
    OUTLINED_FUNCTION_47_33();
    sub_1E3B38A48(v13, type metadata accessor for SportsLockupListView);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B3371C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1;
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337E0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v107 = v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v105 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337C8);
  OUTLINED_FUNCTION_0_10();
  v98 = v16;
  v99 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v96 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337C0);
  OUTLINED_FUNCTION_0_10();
  v101 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v100 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF337B8);
  OUTLINED_FUNCTION_0_10();
  v102 = v24;
  v103 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v94 = v26;
  v27 = *v1;
  memcpy(v127, v1 + 1, 0xC3uLL);
  v108 = v1;

  sub_1E375C1CC(v127, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33888);
  sub_1E3B38CB8();
  v97 = v27;
  v28 = sub_1E390F194(v27, v127, 0, sub_1E3B38C94, v9);
  v29 = v1[27];
  v30 = (*(*v29 + 2128))(v28);
  v31 = sub_1E3B34AD0();
  v95 = v19;
  if (v31)
  {

    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = sub_1E4203D54();
  v35 = v34;
  v36 = v107;
  sub_1E3741EA0(v9, v107, &qword_1ECF337E0);
  v37 = v36 + *(v10 + 36);
  *v37 = v30;
  *(v37 + 8) = v32;
  *(v37 + 16) = 0;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  OUTLINED_FUNCTION_8();
  v39 = (*(v38 + 488))();
  if (!v39)
  {
LABEL_16:
    v49 = 0.0;
    goto LABEL_17;
  }

  v40 = v39;
  v41 = v39 + 64;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 64);
  v45 = (v42 + 63) >> 6;

  v47 = 0;
  if (v44)
  {
    while (1)
    {
      v48 = v47;
LABEL_12:
      v49 = *(*(v40 + 56) + 8 * (__clz(__rbit64(v44)) | (v48 << 6)));

      if (sub_1E385050C())
      {
        break;
      }

      v44 &= v44 - 1;
      v47 = v48;
      if (!v44)
      {
        goto LABEL_9;
      }
    }

LABEL_17:
    v50 = *(v5 + *(type metadata accessor for SportsLockup(0) + 44));

    v51 = sub_1E3B34AD0();
    v52 = *(*v5[27] + 2032);
    if (v52())
    {

      if (!(v52)(v53))
      {
        goto LABEL_22;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v54 + 2008))();
    }

    OUTLINED_FUNCTION_30();
    (*(v55 + 152))(&v116);
    v32 = v116;
    v2 = v117;
    v3 = v118;
    v4 = v119;

    if ((LOBYTE(v120) & 1) == 0)
    {
      OUTLINED_FUNCTION_13_3(v56, v57, v58, v59);
      goto LABEL_24;
    }

LABEL_22:
    OUTLINED_FUNCTION_5_8();
LABEL_24:
    OUTLINED_FUNCTION_3();
    v60 = sub_1E4202734();
    LOBYTE(v116) = 0;
    v61 = sub_1E4203D44();
    v63 = v62;
    *v115 = v49;
    v115[1] = v50;
    v115[2] = v51;
    LOBYTE(v115[3]) = v60;
    *&v115[4] = v32;
    v115[5] = v2;
    v115[6] = v3;
    v115[7] = v4;
    LOWORD(v115[8]) = 0;
    v115[9] = v61;
    v115[10] = v62;
    v64 = v105;
    sub_1E3741EA0(v107, v105, &qword_1ECF337D8);
    memcpy((v64 + *(v106 + 36)), v115, 0x58uLL);
    v116 = v49;
    v117 = v50;
    v118 = v51;
    LOBYTE(v119) = v60;
    v120 = v32;
    v121 = v2;
    v122 = v3;
    v123 = v4;
    v124 = 0;
    v125 = v61;
    v126 = v63;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v65, v66, v67);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v68, v69);
    v70 = sub_1E3764C50();
    v71 = 30;
    if (v70)
    {
      v71 = 28;
    }

    v72 = *&v29[v71];
    if (sub_1E3764C50())
    {
      v73 = (*(*v29 + 2176))();
    }

    else
    {
      v73 = v29[29];
    }

    v75 = v94;
    v74 = v95;
    (*(*v29 + 552))(v113);
    if (v114)
    {
      v76 = 0.0;
    }

    else
    {
      v76 = v113[0];
    }

    v77 = sub_1E3B33FF8();
    v78 = v106;
    v79 = OUTLINED_FUNCTION_18();
    v80 = OUTLINED_FUNCTION_18();
    v81 = v79 & 1;
    v82 = v96;
    v83 = v105;
    sub_1E391F7FC(v72, v81, v80 & 1, v78, v77, v73, v76);

    sub_1E325F69C(v83, &qword_1ECF337D0);
    v84 = v5[26];
    v111 = v78;
    v112 = v77;
    OUTLINED_FUNCTION_7_118();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = v99;
    v87 = v100;
    sub_1E4187EA8(v84, v99, OpaqueTypeConformance2);
    (*(v98 + 8))(v82, v86);
    v111 = v86;
    v112 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_3_8();
    v88 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_154_0();
    LOBYTE(v84) = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_154_0();
    LOBYTE(v86) = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_154_0();
    v89 = OUTLINED_FUNCTION_51_1();
    sub_1E383F6D4(v29, v84 & 1, v86 & 1, 0, v89 & 1, v74, v88);
    (*(v101 + 8))(v87, v74);
    if (*(v97 + 24))
    {
      v90 = *(v97 + 16);
      v91 = *(v97 + 24);
    }

    else
    {
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    v92 = v103;
    v93 = v102;
    v111 = v90;
    v112 = v91;

    v109 = v74;
    v110 = v88;
    OUTLINED_FUNCTION_5_15();
    swift_getOpaqueTypeConformance2();
    sub_1E4203184();

    return (*(v93 + 8))(v75, v92);
  }

LABEL_9:
  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v45)
    {

      goto LABEL_16;
    }

    v44 = *(v41 + 8 * v48);
    ++v47;
    if (v44)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3B33FF8()
{
  result = qword_1EE289698;
  if (!qword_1EE289698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0);
    sub_1E3B340B0();
    sub_1E3743478(&unk_1EE289320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289698);
  }

  return result;
}

unint64_t sub_1E3B340B0()
{
  result = qword_1EE289B78;
  if (!qword_1EE289B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D8);
    sub_1E3743478(&unk_1EE24B360);
    sub_1E3743478(&unk_1EE289318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B78);
  }

  return result;
}

void sub_1E3B34194()
{
  OUTLINED_FUNCTION_31_1();
  v97 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33890);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v96 = v6;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v93 = v8;
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v92 = v10 - v9;
  v11 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v86 = v16 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v89 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29400);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v83[-v27];
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v83[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v83[-v35];
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78();
  v38 = sub_1E3B34CD8();
  v95 = v0;
  v88 = v30;
  if (v38)
  {
    (*(*v38 + 944))();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  OUTLINED_FUNCTION_51_25(v1, v39);
  v40 = *MEMORY[0x1E69D3B68];
  v91 = v13;
  v87 = *(v13 + 104);
  v87(v36, v40, v11);
  OUTLINED_FUNCTION_51_25(v36, 0);
  v41 = *(v98 + 48);
  sub_1E3743538(v1, v2, &qword_1ECF29400);
  sub_1E3743538(v36, v2 + v41, &qword_1ECF29400);
  OUTLINED_FUNCTION_71_3(v2);
  if (v42)
  {
    sub_1E325F69C(v36, &qword_1ECF29400);
    sub_1E325F69C(v1, &qword_1ECF29400);
    OUTLINED_FUNCTION_71_3(v2 + v41);
    if (v42)
    {
      sub_1E325F69C(v2, &qword_1ECF29400);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1E3743538(v2, v33, &qword_1ECF29400);
    OUTLINED_FUNCTION_71_3(v2 + v41);
    if (!v42)
    {
      v85 = v25;
      v47 = v91;
      v48 = v86;
      (*(v91 + 32))(v86, v2 + v41, v11);
      OUTLINED_FUNCTION_17_74();
      sub_1E3B398F4(v49);
      v84 = sub_1E4205E84();
      v50 = *(v47 + 8);
      v50(v48, v11);
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v51, v52);
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v53, v54);
      v50(v33, v11);
      v25 = v85;
      OUTLINED_FUNCTION_33_38();
      sub_1E325F69C(v55, v56);
      if (v84)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    sub_1E325F69C(v36, &qword_1ECF29400);
    sub_1E325F69C(v1, &qword_1ECF29400);
    (*(v91 + 8))(v33, v11);
  }

  sub_1E325F69C(v2, &qword_1ECF293F8);
LABEL_13:
  if (sub_1E3B34CD8())
  {
    OUTLINED_FUNCTION_30();
    v44 = v88;
    (*(v43 + 944))();

    v45 = 0;
    v46 = v89;
  }

  else
  {
    v45 = 1;
    v46 = v89;
    v44 = v88;
  }

  v57 = v90;
  OUTLINED_FUNCTION_51_25(v44, v45);
  v87(v57, *MEMORY[0x1E69D3B78], v11);
  OUTLINED_FUNCTION_51_25(v57, 0);
  v58 = *(v98 + 48);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v59, v60, v61);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v62, v63, v64);
  OUTLINED_FUNCTION_71_3(v46);
  if (v42)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v65, v66);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v67, v68);
    OUTLINED_FUNCTION_71_3(v46 + v58);
    if (v42)
    {
      sub_1E325F69C(v46, &qword_1ECF29400);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1E3743538(v46, v25, &qword_1ECF29400);
    OUTLINED_FUNCTION_71_3(v46 + v58);
    if (!v69)
    {
      v74 = v91;
      v75 = v86;
      (*(v91 + 32))(v86, v46 + v58, v11);
      OUTLINED_FUNCTION_17_74();
      sub_1E3B398F4(v76);
      sub_1E4205E84();
      v77 = *(v74 + 8);
      v77(v75, v11);
      sub_1E325F69C(v90, &qword_1ECF29400);
      sub_1E325F69C(v44, &qword_1ECF29400);
      v77(v25, v11);
      sub_1E325F69C(v46, &qword_1ECF29400);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v70, v71);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v72, v73);
    (*(v91 + 8))(v25, v11);
  }

  sub_1E325F69C(v46, &qword_1ECF293F8);
LABEL_27:
  if (sub_1E3B34CD8())
  {
    sub_1E3827218();
  }

  type metadata accessor for SportsLockup(0);
  v78 = v92;
  sub_1E3746E10(v92);
  sub_1E3B02B0C();
  (*(v93 + 8))(v78, v94);
  v79 = sub_1E4201D54();
  v80 = v96;
  *v96 = v79;
  *(v80 + 8) = 0;
  *(v80 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33898);
  sub_1E3B34E7C();
  sub_1E4203DA4();
  sub_1E42015C4();
  v81 = v97;
  sub_1E3741EA0(v80, v97, &qword_1ECF33890);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33888);
  memcpy((v81 + *(v82 + 36)), v99, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B34AD0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_16;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v12 == v10 && v13 == v11)
      {

LABEL_20:

        goto LABEL_21;
      }

      v7 = sub_1E42079A4();

      if (v7)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_8();
    result = (*(v8 + 488))();
    if (!result)
    {
      return result;
    }

    v9 = sub_1E373E010(40, result);

    if (v9)
    {
LABEL_21:
      type metadata accessor for ImageViewModel();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E3B34CD8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 464))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_12;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for ScoreboardViewModel();
      if (swift_dynamicCastClass())
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_12:
    OUTLINED_FUNCTION_8();
    v6 += 61;
    v7 = *v6;
    v8 = (*v6)();
    if (v8)
    {
      v9 = sub_1E373E010(185, v8);

      if (v9)
      {
        goto LABEL_18;
      }
    }

    result = v7();
    if (!result)
    {
      return result;
    }

    v10 = sub_1E373E010(186, result);

    if (v10)
    {
LABEL_18:
      type metadata accessor for ScoreboardViewModel();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_1E3B34E7C()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_0_10();
  v35 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338B0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  *v20 = sub_1E4201B84();
  *(v20 + 1) = 0;
  v20[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338B8);
  sub_1E3B35174();
  *&v20[*(v17 + 44)] = 0x3FF0000000000000;
  if (v4)
  {
    v38 = 0;
    v39 = 0;
    sub_1E4203684();
    sub_1E3D414F8(MEMORY[0x1E6981840], v10);

    v21 = OUTLINED_FUNCTION_113();
    v22(v21);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  OUTLINED_FUNCTION_51_25(v15, v23);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v24, v25, v26);
  sub_1E3743538(v15, v0, &qword_1ECF338A8);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 9) = v4 & 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338C0);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v28, v29, v30);
  sub_1E3743538(v0, v6 + *(v27 + 64), &qword_1ECF338A8);
  sub_1E325F69C(v15, &qword_1ECF338A8);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v31, v32);
  sub_1E325F69C(v0, &qword_1ECF338A8);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v33, v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B35174()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v75 = v10;
  v11 = type metadata accessor for SportsLockup.GenericMetadataView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v74 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v63 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  if (v5 & 1) != 0 && (v3)
  {
    v22 = sub_1E3B34CD8();
    memcpy(v82, v1 + 1, 0xC3uLL);
    v23 = v1[27];
    v83[0] = v22;
    memcpy(&v83[1], v1 + 1, 0xC3uLL);
    v83[26] = v23;
    memcpy(v85, v83, 0xD8uLL);
    v81[224] = 0;
    memcpy(v84, v83, sizeof(v84));
    memcpy(&v81[7], v83, 0xD8uLL);
    v80 = 0;
    sub_1E375C1CC(v82, v79);

    sub_1E3B38DCC(v83, v79);
    sub_1E3B38DCC(v84, v79);
    sub_1E3B38E04(v85);
    *v21 = 0;
    v21[8] = 0;
    memcpy(v21 + 9, v81, 0xDFuLL);
    *(v21 + 29) = 0;
    v21[240] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338E0);
    sub_1E3743478(&unk_1EE2882F0);
    sub_1E3743478(&unk_1EE2883A8);
    sub_1E4201F44();
    sub_1E3B38E04(v83);
LABEL_61:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v70 = &v63 - v20;
  v71 = v8;
  v69 = v18;
  v24 = *v1;
  v25 = v1[27];
  type metadata accessor for SportsLockup(0);
  v26 = v11[6];
  v68 = v24;

  v67 = v25;

  v27 = sub_1E3746E10(v17 + v26);
  v77 = v1;
  v28 = *v1;
  v29 = ((**v1)[11].vtable)(v27);
  v72 = v7;
  v73 = v11;
  v76 = v17;
  if (!v29)
  {
LABEL_19:
    OUTLINED_FUNCTION_8();
    v37 = (*(v36 + 488))();
    if (v37)
    {
      v33 = sub_1E373E010(17, v37);

      if (v33)
      {
        v38 = v77;
LABEL_26:
        if (*v33 != _TtC8VideosUI13TextViewModel)
        {

          v33 = 0;
        }

LABEL_28:
        if (sub_1E39C408C(23))
        {
          v39 = j__OUTLINED_FUNCTION_18();
          v40 = sub_1E39C26D0(1, v39 & 1);

          if (!v40 || *v40 == _TtC8VideosUI13TextViewModel)
          {
LABEL_33:
            if (sub_1E39C408C(15))
            {
              v41 = j__OUTLINED_FUNCTION_18();
              v42 = sub_1E39C26D0(1, v41 & 1);

              if (v42)
              {
                if (*v42 == _TtC8VideosUI13TextViewModel)
                {
                  v66 = v42;
LABEL_39:
                  v43 = *v38;
                  OUTLINED_FUNCTION_8();
                  v45 = (*(v44 + 464))();
                  if (v45)
                  {
                    v46 = v45;
                    v64 = v43;
                    v65 = v40;
                    v47 = sub_1E32AE9B0(v45);
                    v48 = 0;
                    v77 = v46 & 0xFFFFFFFFFFFFFF8;
                    v78 = v46 & 0xC000000000000001;
                    while (1)
                    {
                      if (v47 == v48)
                      {

                        v17 = v76;
                        v11 = v73;
                        v43 = v64;
                        v40 = v65;
                        goto LABEL_54;
                      }

                      if (v78)
                      {
                        v49 = MEMORY[0x1E6911E60](v48, v46);
                      }

                      else
                      {
                        if (v48 >= *(v77 + 16))
                        {
                          goto LABEL_65;
                        }

                        v49 = *(v46 + 8 * v48 + 32);
                      }

                      if (__OFADD__(v48, 1))
                      {
                        goto LABEL_64;
                      }

                      LOWORD(v83[0]) = *(v49 + 98);
                      v79[0] = 96;
                      sub_1E3742F1C();
                      OUTLINED_FUNCTION_45_33();
                      OUTLINED_FUNCTION_67_14();
                      OUTLINED_FUNCTION_42_39();
                      if (v34 && v43 == v17)
                      {
                        break;
                      }

                      v51 = sub_1E42079A4();

                      if (v51)
                      {
                        goto LABEL_59;
                      }

                      ++v48;
                    }

LABEL_59:

                    v17 = v76;
                    v11 = v73;
                    v54 = v67;
                    v53 = v68;
                    v40 = v65;
                  }

                  else
                  {
LABEL_54:
                    v52 = ((*v43)[12].superclass)();
                    if (v52)
                    {
                      v49 = sub_1E373E010(96, v52);
                    }

                    else
                    {
                      v49 = 0;
                    }

                    v54 = v67;
                    v53 = v68;
                  }

                  v55 = sub_1E39C408C(67);
                  *v17 = v53;
                  v17[1] = v54;
                  *(v17 + v11[7]) = v33;
                  *(v17 + v11[8]) = v40;
                  *(v17 + v11[9]) = v66;
                  *(v17 + v11[10]) = v49;
                  *(v17 + v11[11]) = v55;
                  v56 = v74;
                  sub_1E3B38D70(v17, v74, type metadata accessor for SportsLockup.GenericMetadataView);
                  v57 = v75;
                  OUTLINED_FUNCTION_33_38();
                  sub_1E3B38D70(v58, v59, v60);
                  v61 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338D8) + 48);
                  *v61 = 0;
                  *(v61 + 8) = 0;
                  sub_1E3B38A48(v56, type metadata accessor for SportsLockup.GenericMetadataView);
                  sub_1E3743538(v57, v70, &qword_1ECF338C8);
                  swift_storeEnumTagMultiPayload();
                  OUTLINED_FUNCTION_73_10();
                  OUTLINED_FUNCTION_18_58();
                  sub_1E3743478(v62);
                  sub_1E3743478(&unk_1EE2883A8);
                  sub_1E4201F44();
                  sub_1E325F69C(v57, &qword_1ECF338C8);
                  sub_1E3B38A48(v76, type metadata accessor for SportsLockup.GenericMetadataView);
                  goto LABEL_61;
                }
              }
            }

            v66 = 0;
            goto LABEL_39;
          }
        }

        v40 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v33 = 0;
    }

    v38 = v77;
    goto LABEL_28;
  }

  v30 = v29;
  v66 = v28;
  v31 = sub_1E32AE9B0(v29);
  v32 = 0;
  v78 = v30 & 0xC000000000000001;
  while (1)
  {
    if (v31 == v32)
    {

      v17 = v76;
      v11 = v73;
      goto LABEL_19;
    }

    if (v78)
    {
      v33 = MEMORY[0x1E6911E60](v32, v30);
    }

    else
    {
      if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    if (__OFADD__(v32, 1))
    {
      break;
    }

    LOWORD(v83[0]) = *(v33 + 98);
    v79[0] = 17;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_45_33();
    OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_42_39();
    v34 = v34 && v28 == v17;
    if (v34)
    {

LABEL_25:

      v17 = v76;
      v38 = v77;
      v11 = v73;
      goto LABEL_26;
    }

    v35 = sub_1E42079A4();

    if (v35)
    {
      goto LABEL_25;
    }

    ++v32;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1E3B35A74@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v9 = (*a1)[4];
  v8 = (*a1)[5];
  v10 = *v3;
  v22 = *(v3 + 8);
  v11 = a1[2];
  v12 = a1[3];
  v13 = v11[4];
  v21 = *(v11 + 40);
  v17 = *(v11 + 1);
  v18 = *v11;
  memcpy(__dst, v12, 0x41uLL);
  memcpy(&__src[7], v12, 0x41uLL);
  v14 = v22;
  v15 = v21;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = v14;
  *(a2 + 64) = v18;
  *(a2 + 80) = v17;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15;
  memcpy((a2 + 105), __src, 0x48uLL);

  return sub_1E3743538(__dst, v19, &qword_1ECF33840);
}

void sub_1E3B35BA8()
{
  OUTLINED_FUNCTION_41_5();
  v6 = v5;
  v7 = *v0;
  memcpy(__dst, v0 + 1, 0xC3uLL);
  v8 = v0[26];

  sub_1E375C1CC(__dst, v40);

  sub_1E4202764();
  v9 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v9 = sub_1E4202774();
  }

  v11 = *(*v8 + 176);
  v11(v44);
  if ((v45 & 1) == 0)
  {
    v14.n128_u64[0] = v44[2];
    v15.n128_u64[0] = v44[3];
    v12.n128_u64[0] = v44[0];
    v13.n128_u64[0] = v44[1];
    j_nullsub_1(v12, v13, v14, v15);
  }

  memcpy(__src, __dst, sizeof(__src));
  sub_1E4200A54();
  v37 = v17;
  v38 = v16;
  v35 = v19;
  v36 = v18;
  v42 = 0;
  sub_1E4202784();
  v20 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v20 = sub_1E4202774();
  }

  v11(v46);
  if ((v47 & 1) == 0)
  {
    v24.n128_u64[0] = v46[3];
    v22.n128_u64[0] = v46[1];
    v23.n128_u64[0] = v46[2];
    v21.n128_u64[0] = v46[0];
    j_nullsub_1(v21, v22, v23, v24);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_7_23();
  v43 = 0;
  sub_1E4202754();
  v25 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v10)
  {
    v25 = sub_1E4202774();
  }

  (*(*v8 + 2104))();
  OUTLINED_FUNCTION_30();
  (*(v26 + 152))(v40);
  v27 = v40[0];
  v28 = v40[1];
  v29 = v40[2];
  v30 = v40[3];

  v34.n128_u64[0] = 0;
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_3(v34, v31, v32, v33);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  *v6 = v7;
  memcpy((v6 + 8), __src, 0xC3uLL);
  *(v6 + 208) = v8;
  *(v6 + 216) = v9;
  *(v6 + 224) = v38;
  *(v6 + 232) = v37;
  *(v6 + 240) = v36;
  *(v6 + 248) = v35;
  *(v6 + 256) = 0;
  *(v6 + 264) = v20;
  *(v6 + 272) = v1;
  *(v6 + 280) = v2;
  *(v6 + 288) = v3;
  *(v6 + 296) = v4;
  *(v6 + 304) = 0;
  *(v6 + 312) = v25;
  *(v6 + 320) = v27;
  *(v6 + 328) = v28;
  *(v6 + 336) = v29;
  *(v6 + 344) = v30;
  *(v6 + 352) = 0;
  OUTLINED_FUNCTION_42();
}

void sub_1E3B35E1C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v4 = v0[1];
  (*(*v4 + 1984))();
  OUTLINED_FUNCTION_30();
  (*(v5 + 176))(v122);
  v6 = v122[0];
  v7 = v122[1];
  v8 = v122[2];
  v9 = v122[3];

  v14 = v123;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if ((v123 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_18(v10, v11, v12, v13);
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  LOBYTE(v124) = v14 & 1;
  v23 = type metadata accessor for SportsLockup.GenericMetadataView(0);
  if (sub_1E3B02B0C())
  {
    v118 = v4;
    v115 = sub_1E4201D54();
    v142[0] = 0;
    LODWORD(v113) = v124;
    v25 = *v1;
    v24 = v1[1];
    v26 = *(v1 + v23[7]);
    v27 = *(v1 + v23[8]);
    v28 = *(v1 + v23[9]);
    v29 = *(v1 + v23[10]);

    v30 = sub_1E39C408C(67);
    v31 = 0uLL;
    if (v30)
    {
      OUTLINED_FUNCTION_8();
      v33 = (*(v32 + 392))();
      if (v33)
      {
        v34 = v33;
        if (*v33 == _TtC8VideosUI23ContextMenuButtonLayout)
        {
          swift_beginAccess();
          v6 = v34[26];
          v7 = v34[27];
          v8 = v34[28];
          v9 = v34[29];

          OUTLINED_FUNCTION_66_18(v35, v36, v37, v38);
          *(&v40 + 1) = v39;
          *(&v42 + 1) = v41;
          *v110 = v42;
          *v111 = v40;
          v43 = sub_1E4202734();

          v44 = *v110;
          v31 = *v111;
          v45 = v43;
          v46 = v25;
          v47 = v24;
LABEL_19:
          v125[0] = v25;
          v125[1] = v26;
          v125[2] = v27;
          v125[3] = v28;
          v125[4] = 0;
          v125[5] = v24;
          __dst[0] = 0;
          LOBYTE(__dst[1]) = 0;
          v126[0] = v125;
          v126[1] = __dst;
          v127[0] = v29;
          v127[1] = v15;
          v127[2] = v16;
          v127[3] = v17;
          v127[4] = v18;
          LOBYTE(v127[5]) = v113 & 1;
          *v128 = v46;
          *&v128[8] = v30;
          *&v128[16] = v47;
          *&v128[24] = v45;
          *&v128[32] = v31;
          *&v128[48] = v44;
          v128[64] = 0;
          v126[2] = v127;
          v126[3] = v128;
          sub_1E3B35A74(v126, v132);
          memcpy(v131, v128, 0x41uLL);
          sub_1E325F69C(v131, &qword_1ECF33840);

          memcpy(v126, v132, 0xB1uLL);
          memcpy(v127, v132, 0xB1uLL);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v69, v70, v71);
          OUTLINED_FUNCTION_82();
          sub_1E325F69C(v72, v73);
          memcpy(v125 + 7, v126, 0xB1uLL);
          OUTLINED_FUNCTION_56_21(v142[0], v108, v109, v110[0], v110[1], v111[0], v111[1], v113, v115);
          memcpy(&v131[2] + 1, v125, 0xB8uLL);
          sub_1E3B38AAC(v131);
          memcpy(v128, v131, 0xCAuLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33828);
          OUTLINED_FUNCTION_73_10();
          OUTLINED_FUNCTION_14_97();
          sub_1E3743478(v74);
          OUTLINED_FUNCTION_40_13();
          sub_1E3743478(v75);
          OUTLINED_FUNCTION_39_27();
          v4 = v118;
          goto LABEL_23;
        }
      }

      v46 = 0;
      v30 = 0;
      v47 = 0;
      v45 = 0;
      v44 = 0uLL;
      v31 = 0uLL;
      goto LABEL_19;
    }

    v46 = 0;
    v47 = 0;
    v45 = 0;
    v44 = 0uLL;
    goto LABEL_19;
  }

  v116 = sub_1E4201D54();
  LOBYTE(v129) = 0;
  v48 = *(v1 + v23[10]);
  v49 = *(v1 + v23[11]);
  if (v48)
  {
    v119 = v4;
    v50 = v124;
    if (v49)
    {
      v51 = *(v1 + v23[7]);
      v52 = *v1;
      v53 = v1[1];
      v113 = *(v1 + v23[8]);
      v111[0] = *(v1 + v23[9]);

      v54 = sub_1E4201B84();
      v128[0] = 0;
      v55 = *(v1 + v23[10]);
      v56 = *(v1 + v23[11]);
      v57 = v50 & 1;
      v132[0] = v57;
      LOBYTE(v131[0]) = 0;

      __src[0] = v55;
      __src[1] = v15;
      __src[2] = v16;
      __src[3] = v17;
      __src[4] = v18;
      LOBYTE(__src[5]) = v57;
      __src[6] = 0;
      LOBYTE(__src[7]) = 0;
      __src[8] = v52;
      __src[9] = v56;
      __src[10] = v53;
      v134[0] = v55;
      v134[1] = v15;
      v134[2] = v16;
      v134[3] = v17;
      v134[4] = v18;
      v135 = v57;
      v136 = 0;
      v137 = 0;
      v138 = v52;
      v139 = v56;
      v140 = v53;
      sub_1E3743538(__src, v132, &qword_1ECF33870);
      sub_1E325F69C(v134, &qword_1ECF33870);
      memcpy(&v132[7], __src, 0x58uLL);
      v141[0] = v54;
      v141[1] = 0;
      LOBYTE(v141[2]) = v128[0];
      memcpy(&v141[2] + 1, v132, 0x5FuLL);
      memcpy(__dst, v141, 0x70uLL);
      memcpy(v142, v141, sizeof(v142));
      memcpy(&v130[6], v141, 0x70uLL);
      v130[0] = v52;
      v130[1] = v51;
      v130[2] = v113;
      v130[3] = v111[0];
      v130[4] = 0;
      v130[5] = v53;
      memcpy(v126, v130, 0xA0uLL);

      sub_1E3743538(v141, v132, &qword_1ECF33878);

      v110[0] = v51;

      sub_1E3743538(v142, v132, &qword_1ECF33878);
      sub_1E325F69C(__dst, &qword_1ECF33878);

      memcpy(v125, v126, 0xA0uLL);
      sub_1E3B38C88(v125);
      memcpy(v132, v125, 0xA1uLL);
      sub_1E3743538(v130, v131, &qword_1ECF33880);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33858);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33860);
      sub_1E3743478(&unk_1EE288398);
      sub_1E3743478(&unk_1EE2883A0);
      OUTLINED_FUNCTION_59_14();
      sub_1E4201F44();
      memcpy(v132, v127, 0xA1uLL);
      sub_1E3B38C7C(v132);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      sub_1E325F69C(v130, &qword_1ECF33880);
      sub_1E325F69C(v141, &qword_1ECF33878);
    }

    else
    {
      v62 = *(v1 + v23[7]);
      v63 = *(v1 + v23[8]);
      v64 = *v1;
      v65 = v1[1];
      v66 = *(v1 + v23[9]);
      LOBYTE(v130[0]) = v124 & 1;
      v126[0] = v64;
      v113 = v64;
      v126[1] = v62;
      v111[0] = v62;
      v126[2] = v63;
      v109 = v66;
      v110[0] = v63;
      v126[3] = v66;
      v126[4] = 0;
      v126[5] = v65;
      v126[6] = v48;
      v126[7] = v15;
      v126[8] = v16;
      v126[9] = v17;
      v126[10] = v18;
      LOBYTE(v126[11]) = v124 & 1;
      memcpy(v125, v126, 0x59uLL);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1E3B38C74(v125);
      memcpy(v132, v125, 0xA1uLL);
      sub_1E3743538(v126, v131, &qword_1ECF33868);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33858);
      OUTLINED_FUNCTION_73_10();
      OUTLINED_FUNCTION_18_58();
      sub_1E3743478(v67);
      OUTLINED_FUNCTION_40_13();
      sub_1E3743478(v68);
      OUTLINED_FUNCTION_59_14();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      memcpy(v132, v127, 0xA1uLL);
      sub_1E3B38C7C(v132);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      sub_1E325F69C(v126, &qword_1ECF33868);
    }

    memcpy(v127, v131, 0xA2uLL);
    v4 = v119;
  }

  else
  {
    if (v49)
    {
      v58 = *(v1 + v23[7]);
      v59 = *(v1 + v23[8]);
      v60 = v1[1];
      v61 = *(v1 + v23[9]);
      v131[0] = *v1;
      v131[1] = v58;
      v131[2] = v59;
      v131[3] = v61;
      v131[4] = v49;
      v131[5] = v60;
      LOBYTE(v131[6]) = 1;
      sub_1E3B38AB4();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_49_28();
      sub_1E3B38B08(v132);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      sub_1E4201F44();
    }

    else
    {
      v76 = v1[1];
      v77 = *(v1 + v23[7]);
      v78 = *(v1 + v23[8]);
      v79 = *(v1 + v23[9]);
      v131[0] = *v1;
      v131[1] = v77;
      v131[2] = v78;
      v131[3] = v79;
      v131[4] = 0;
      v131[5] = v76;
      LOBYTE(v131[6]) = 0;
      sub_1E3B38AB4();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_49_28();
      sub_1E3B38B08(v132);
      OUTLINED_FUNCTION_30_43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33848);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33850);
      sub_1E3B38B10();
      sub_1E3B38B94();
      OUTLINED_FUNCTION_25_55();
      sub_1E4201F44();
    }

    memcpy(v127, v131, 0xA2uLL);
  }

  memcpy(v130, v127, 0xA2uLL);
  memcpy(v126, v127, 0xA2uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v80, v81, v82);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v83, v84);
  memcpy(v125 + 7, v130, 0xA2uLL);
  OUTLINED_FUNCTION_56_21(v129, v108, v109, v110[0], v110[1], v111[0], v111[1], v113, v116);
  memcpy(&v131[2] + 1, v125, 0xA9uLL);
  sub_1E3B38AA0(v131);
  memcpy(v128, v131, 0xCAuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33828);
  OUTLINED_FUNCTION_73_10();
  OUTLINED_FUNCTION_14_97();
  sub_1E3743478(v85);
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v86);
  OUTLINED_FUNCTION_39_27();
LABEL_23:
  memcpy(v131, v132, 0xCAuLL);
  sub_1E4202764();
  v87 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v88)
  {
    v87 = sub_1E4202774();
  }

  v89 = *(*v4 + 176);
  v89(v125);
  if ((v125[4] & 1) == 0)
  {
    v92.n128_u64[0] = v125[2];
    v93.n128_u64[0] = v125[3];
    v90.n128_u64[0] = v125[0];
    v91.n128_u64[0] = v125[1];
    j_nullsub_1(v90, v91, v92, v93);
  }

  sub_1E4200A54();
  v117 = v95;
  v120 = v94;
  v114 = v96;
  v112 = v97;
  memcpy(v121, v131, 0xCAuLL);
  LOBYTE(__dst[0]) = 0;
  sub_1E4202784();
  v98 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v88)
  {
    v98 = sub_1E4202774();
  }

  v89(v128);
  if ((v128[32] & 1) == 0)
  {
    v102.n128_u64[0] = *&v128[24];
    v101.n128_u64[0] = *&v128[16];
    v100.n128_u64[0] = *&v128[8];
    v99.n128_u64[0] = *v128;
    j_nullsub_1(v99, v100, v101, v102);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_7_23();
  LOBYTE(v126[0]) = 0;
  sub_1E4202754();
  v103 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v88)
  {
    v103 = sub_1E4202774();
  }

  v89(v132);
  if ((v132[32] & 1) == 0)
  {
    v107.n128_u64[0] = *&v132[24];
    v106.n128_u64[0] = *&v132[16];
    v105.n128_u64[0] = *&v132[8];
    v104.n128_u64[0] = *v132;
    j_nullsub_1(v104, v105, v106, v107);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  memcpy(v3, v121, 0xD0uLL);
  *(v3 + 208) = v87;
  *(v3 + 216) = v120;
  *(v3 + 224) = v117;
  *(v3 + 232) = v114;
  *(v3 + 240) = v112;
  *(v3 + 248) = 0;
  *(v3 + 256) = v98;
  *(v3 + 264) = v6;
  *(v3 + 272) = v7;
  *(v3 + 280) = v8;
  *(v3 + 288) = v9;
  *(v3 + 296) = 0;
  *(v3 + 304) = v103;
  *(v3 + 312) = v18;
  *(v3 + 320) = v17;
  *(v3 + 328) = v15;
  *(v3 + 336) = v16;
  *(v3 + 344) = 0;
  OUTLINED_FUNCTION_42();
}

void sub_1E3B36E44(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33938);
  sub_1E3B36E94();
}

void sub_1E3B36E94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v92 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v87 = v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v85 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33950);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v86 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33958);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v91 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v85 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v85 - v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_77_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v85 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33968);
  v32 = OUTLINED_FUNCTION_17_2(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  v88 = v33 - v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_78();
  v36 = v3[1];
  v96 = v0;
  if (v36)
  {

    *v30 = sub_1E4201B84();
    *(v30 + 1) = 0;
    v30[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33980);
    OUTLINED_FUNCTION_18();
    v0 = v96;
    sub_1E3F23370();

    sub_1E3741EA0(v30, v0, &qword_1ECF33960);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = 1;
  __swift_storeEnumTagSinglePayload(v0, v37, 1, v27);
  v100 = v3[2];
  if (v100)
  {
    v99 = v3[4];
    if (v99 && !v3[3])
    {
      sub_1E3743538(&v100, &v98, &qword_1ECF29088);
      sub_1E3743538(&v99, &v98, &qword_1ECF2BB28);
      *v13 = sub_1E4201B84();
      *(v13 + 1) = 0;
      v13[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33978);
      OUTLINED_FUNCTION_58_19();
      sub_1E3B37704(v45, v46, v47, v48, v49, v50, v51, v52, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v53, v54, v55);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_82();
      sub_1E3743478(v56);
      sub_1E3A1FD38();
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();
      sub_1E325F69C(&v99, &qword_1ECF2BB28);
      sub_1E325F69C(&v100, &qword_1ECF29088);
    }

    else
    {
      sub_1E3743538(&v100, &v98, &qword_1ECF29088);
      OUTLINED_FUNCTION_18();
      v39 = v87;
      sub_1E3F23370();
      *(v39 + *(v5 + 36)) = 256;
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v40, v41, v42);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      sub_1E3743478(v43);
      sub_1E3A1FD38();
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();
      sub_1E325F69C(&v100, &qword_1ECF29088);
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v57, v58);
    v44 = v95;
    v59 = OUTLINED_FUNCTION_113();
    sub_1E3741EA0(v59, v60, v61);
    v38 = 0;
  }

  else
  {
    v44 = v95;
  }

  v62 = 1;
  __swift_storeEnumTagSinglePayload(v1, v38, 1, v44);
  if (v3[3])
  {
    v98 = v3[4];
    if (v98)
    {

      sub_1E3743538(&v98, &v97, &qword_1ECF2BB28);
      *v13 = sub_1E4201B84();
      *(v13 + 1) = 0;
      v13[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33978);
      OUTLINED_FUNCTION_58_19();
      sub_1E3B37704(v63, v64, v65, v66, v67, v68, v69, v70, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      sub_1E3743538(v13, v10, &qword_1ECF33948);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_58_19();
      sub_1E3743478(v71);
      sub_1E3A1FD38();
      v72 = v86;
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();

      v44 = v95;
      sub_1E325F69C(&v98, &qword_1ECF2BB28);
      OUTLINED_FUNCTION_58_19();
    }

    else
    {

      OUTLINED_FUNCTION_18();
      v76 = v87;
      sub_1E3F23370();
      *(v76 + *(v5 + 36)) = 256;
      sub_1E3743538(v76, v10, &qword_1ECF29D98);
      OUTLINED_FUNCTION_60_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_9_0();
      sub_1E3743478(v77);
      sub_1E3A1FD38();
      v72 = v86;
      OUTLINED_FUNCTION_9_86();
      sub_1E4201F44();

      v73 = OUTLINED_FUNCTION_154_0();
    }

    sub_1E325F69C(v73, v74);
    v75 = v89;
    sub_1E3741EA0(v72, v89, &qword_1ECF33950);
    v62 = 0;
  }

  else
  {
    v75 = v89;
  }

  __swift_storeEnumTagSinglePayload(v75, v62, 1, v44);
  v78 = v96;
  v79 = v88;
  sub_1E3743538(v96, v88, &qword_1ECF33968);
  v80 = v90;
  OUTLINED_FUNCTION_72_15(v1, v90);
  v81 = v91;
  OUTLINED_FUNCTION_72_15(v75, v91);
  v82 = v1;
  v83 = v92;
  sub_1E3743538(v79, v92, &qword_1ECF33968);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33970);
  OUTLINED_FUNCTION_72_15(v80, v83 + *(v84 + 48));
  OUTLINED_FUNCTION_72_15(v81, v83 + *(v84 + 64));
  OUTLINED_FUNCTION_70_17(v75);
  OUTLINED_FUNCTION_70_17(v82);
  sub_1E325F69C(v78, &qword_1ECF33968);
  OUTLINED_FUNCTION_70_17(v81);
  OUTLINED_FUNCTION_70_17(v80);
  OUTLINED_FUNCTION_52_23(v79);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B37704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = OUTLINED_FUNCTION_32_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v29);
  v31 = v30 - 8;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v34[*(v31 + 44)] = 256;
  v35 = *v26;
  v36 = v26[5];
  OUTLINED_FUNCTION_68(v34, v20);
  OUTLINED_FUNCTION_68(v20, v28);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33988);
  v38 = v28 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 0;
  v39 = (v28 + *(v37 + 64));
  *v39 = v35;
  v39[1] = v24;
  v39[2] = v36;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  OUTLINED_FUNCTION_52_23(v34);

  OUTLINED_FUNCTION_52_23(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B37874(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(*a1 + 392);

    v5 = v3(v4);
    if (v5 && (OUTLINED_FUNCTION_8(), v7 = *(v6 + 152), v8 = , v7(&v24, v8), , (v25 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v9, v10, v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    v17 = v13;

    sub_1E397F070(v19, v5, v26);
    v22 = v26[1];
    v23 = v26[0];
    v20 = v27;
    v21 = sub_1E4202734();

    v18 = v22;
    v16 = v23;
    v15 = v20;
    v14 = v21;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0;
    v18 = 0uLL;
  }

  *a2 = v16;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = v17;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
}

void sub_1E3B379E8(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33800);
  sub_1E3B37A58();
}

void sub_1E3B37A58()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v3;
  v40 = v4;
  v6 = v5;
  v46 = v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v42 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v43 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33808);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_77_0();
  if (v6)
  {
    swift_retain_n();

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v6, v40, v19);
    sub_1E3B398F4(qword_1EE23BBE8);
    View.accessibilityIdentifier(key:location:)();

    sub_1E3B38A48(v19, type metadata accessor for TextBadge);
    (*(v22 + 32))(v2, v1, v20);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v30, 1, v20);
  if (v44)
  {

    sub_1E3EB9BB4(v47);
    v31 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v44, v47, 0, v31 & 1, 0, 0, v41);

    sub_1E375C31C(v47);
    v32 = v45;
    (*(v42 + 32))(v0, v41, v45);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v45;
  }

  __swift_storeEnumTagSinglePayload(v0, v33, 1, v32);
  OUTLINED_FUNCTION_68(v2, v28);
  sub_1E3743538(v0, v43, &qword_1ECF29938);
  OUTLINED_FUNCTION_68(v28, v46);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33810);
  v35 = v46 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1E3743538(v43, v46 + *(v34 + 64), &qword_1ECF29938);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v36, v37);
  OUTLINED_FUNCTION_52_23(v2);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_52_23(v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B37EAC@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SportsScoreboardView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = *v1;
  if (*v1)
  {
    v7 = 0.0;
    if (*(v1 + 144))
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(v1 + 128);
    }

    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 176);

    v10(v23, v11);
    if ((v24 & 1) == 0)
    {
      v7 = sub_1E3952BE0(v23[0], v23[1], v23[2], v23[3]);
    }

    memcpy(v25, (v1 + 8), 0x5BuLL);
    sub_1E375C2C0(v25, v26);
    v12 = j__OUTLINED_FUNCTION_18();
    v13 = j__OUTLINED_FUNCTION_18();
    v14 = j__OUTLINED_FUNCTION_51_1();
    sub_1E3EB9DAC(v25, COERCE__INT64(v8 - v7), 0, 0, 0, 0, 1, 0, v22, 1, 0, 0, 256, 3, 0, v12 & 1, v13 & 1, v14 & 1);
    v15 = *(*v6 + 392);

    v17 = v15(v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI22SportsScoreboardLayout)
      {
LABEL_11:
        memcpy(v21, v22, sizeof(v21));
        nullsub_1(v18, v19);
        memcpy(v26, v21, 0xC3uLL);
        sub_1E37474CC(v6, v26, v2);
        sub_1E3B395CC(v2, a1, type metadata accessor for SportsScoreboardView);
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
      }
    }

    type metadata accessor for SportsScoreboardLayout();
    sub_1E39DF330();
    goto LABEL_11;
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_1E3B3819C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for PlaybackStatus(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33990);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*v1)
  {

    sub_1E413D6F4(v14, v8);
    if (*(v1 + 40))
    {
      v15 = OUTLINED_FUNCTION_5_8();
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v19 = *(v1 + 24);
      v21 = *(v1 + 32);
      v15 = *(v1 + 8);
      v17 = *(v1 + 16);
    }

    v23 = sub_1E4202734();
    sub_1E3B395CC(v8, v2, type metadata accessor for PlaybackStatus);
    v24 = v2 + *(v9 + 36);
    *v24 = v23;
    *(v24 + 8) = v15;
    *(v24 + 16) = v17;
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    *(v24 + 40) = 0;
    sub_1E3B3955C(v2, v13);
    sub_1E3B3955C(v13, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

double sub_1E3B38364@<D0>(uint64_t a1@<X8>)
{
  sub_1E3A9D424();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33818) + 36);
  v3 = *MEMORY[0x1E6981E10];
  sub_1E4203E94();
  OUTLINED_FUNCTION_2();
  (*(v4 + 104))(a1 + v2, v3);
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

void sub_1E3B38460()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SportsLockupCellLayout();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsLockupInteractor();
        if (v3 <= 0x3F)
        {
          sub_1E3B38974(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1E3B38974(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TextBadgePresenter();
              if (v6 <= 0x3F)
              {
                OUTLINED_FUNCTION_40_38();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E3B385AC()
{
  result = qword_1EE289078;
  if (!qword_1EE289078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337F8);
    sub_1E3B398F4(&unk_1EE269D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF337D0);
    sub_1E3B33FF8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289078);
  }

  return result;
}

uint64_t sub_1E3B3877C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 24))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3B387B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_50_26(result);
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B38858()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E42012F4();
      if (v2 <= 0x3F)
      {
        sub_1E3B38974(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3B38974(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_40_38();
          }
        }
      }
    }
  }
}

void sub_1E3B38974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3B38A48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3B38AB4()
{
  result = qword_1EE2A7220[0];
  if (!qword_1EE2A7220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7220);
  }

  return result;
}

unint64_t sub_1E3B38B10()
{
  result = qword_1EE289188;
  if (!qword_1EE289188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33848);
    sub_1E3B38AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289188);
  }

  return result;
}

unint64_t sub_1E3B38B94()
{
  result = qword_1EE288D30;
  if (!qword_1EE288D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33850);
    sub_1E3743478(&unk_1EE288398);
    sub_1E3743478(&unk_1EE2883A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D30);
  }

  return result;
}

unint64_t sub_1E3B38CB8()
{
  result = qword_1EE289790;
  if (!qword_1EE289790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33888);
    sub_1E3743478(&unk_1EE288460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289790);
  }

  return result;
}

uint64_t sub_1E3B38D70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3B38E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_50_26(result);
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3B38E84(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3B38ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E3B38F48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3B38F84(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3B38FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 216))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 208);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3B3901C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3B390A0()
{
  result = qword_1EE289A50;
  if (!qword_1EE289A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33818);
    sub_1E3B39628(&unk_1EE289CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A50);
  }

  return result;
}

unint64_t sub_1E3B39158()
{
  result = qword_1EE289CF8;
  if (!qword_1EE289CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CF8);
  }

  return result;
}

unint64_t sub_1E3B391AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B39288()
{
  result = qword_1EE2886E0;
  if (!qword_1EE2886E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33910);
    sub_1E3B3930C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886E0);
  }

  return result;
}

unint64_t sub_1E3B3930C()
{
  result = qword_1EE288DA0;
  if (!qword_1EE288DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33918);
    sub_1E3743478(&unk_1EE2884D8);
    sub_1E3743478(&unk_1EE288528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DA0);
  }

  return result;
}

unint64_t sub_1E3B3941C()
{
  result = qword_1EE289C20;
  if (!qword_1EE289C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33930);
    sub_1E3B394A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C20);
  }

  return result;
}

unint64_t sub_1E3B394A8()
{
  result = qword_1EE2A7440[0];
  if (!qword_1EE2A7440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7440);
  }

  return result;
}

uint64_t sub_1E3B3955C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B395CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3B39628(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3B396CC()
{
  result = qword_1EE289CB8;
  if (!qword_1EE289CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF339A8);
    sub_1E3880454();
    sub_1E3743478(&unk_1EE2889E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CB8);
  }

  return result;
}

unint64_t sub_1E3B39784()
{
  result = qword_1EE289C08;
  if (!qword_1EE289C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33990);
    sub_1E3B398F4(&unk_1EE282150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C08);
  }

  return result;
}

unint64_t sub_1E3B39840()
{
  result = qword_1EE269CA0;
  if (!qword_1EE269CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF339B8);
    sub_1E3B398F4(&unk_1EE269CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269CA0);
  }

  return result;
}

unint64_t sub_1E3B398F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_56_21(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  STACK[0x4F0] = a9;
  STACK[0x4F8] = 0;
  LOBYTE(STACK[0x500]) = a1;
}

uint64_t OUTLINED_FUNCTION_69_16()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_70_17(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

void sub_1E3B39990(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  v3 = a1;
  if (v2)
  {
    if (v2 == v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    [v1 vui:v2 addSubview:v4 oldView:?];
  }

LABEL_4:
}

id sub_1E3B39A2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView];
  }

  else
  {
    v4 = v0;
    sub_1E38D37F0();
    type metadata accessor for MediaShowcaseCollectionLayout();
    v5 = *sub_1E3FC70CC();
    v6 = (*(v5 + 2408))();

    v7 = sub_1E3810954(46, 0xE100000000000000, v6, 0);
    [v4 vui:v7 addSubview:0 oldView:?];
    [v7 setHidden_];

    v8 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

unint64_t sub_1E3B39B4C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD00000000000001ALL;
    *v1 = 0xD00000000000001ALL;
    v1[1] = 0x80000001E4272160;
  }

  return v2;
}

id sub_1E3B39C60(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout;
  type metadata accessor for MediaShowcasingToolbarLayout();
  *(v1 + v3) = sub_1E3FBD718();
  *(v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) = 7;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  *v4 = 0;
  v4[1] = 0;

  OUTLINED_FUNCTION_51_1();
  v5 = sub_1E3ED15A8(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  v7 = sub_1E42001D4();
  v8 = MEMORY[0x1E69DC2B0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206944();

  swift_unknownObjectRelease();

  return v9;
}

void sub_1E3B39DDC()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B39E48()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___inlinePrototypeTitleView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout;
  type metadata accessor for MediaShowcasingToolbarLayout();
  *(v0 + v1) = sub_1E3FBD718();
  *(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) = 7;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController____lazy_storage___logPrefix);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B39F24()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_viewDidLayoutSubviews);
  v1 = sub_1E3B39FF8();
  v2 = OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_previousSizeClass) == 7 || (sub_1E37F99D4(), (sub_1E4205E84() & 1) == 0))
  {
    *(v0 + v2) = v1;
    sub_1E3B3A2A4();
  }

  if (sub_1E39DFFC8())
  {
    sub_1E3B3A99C();
  }

  else
  {
    sub_1E3B3AED8();
    v3 = sub_1E41C85FC();
    sub_1E3B3B340(v3);

    sub_1E3B3BC90();
  }

  sub_1E3B3BDB8();
}

uint64_t sub_1E3B39FF8()
{
  v1 = v0;
  v2 = sub_1E41C8EFC();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v4 = (*(*v2 + 464))(v2);

  if (!v4)
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  type metadata accessor for CollectionViewModel();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
  }

  else
  {
  }

LABEL_11:
  type metadata accessor for MediaShowcaseHostingView();
  v6 = sub_1E40037C8(v3);

  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;

  v12 = objc_opt_self();
  if ([v12 isPad])
  {
    v13 = [v1 vuiIsRTL];
    result = [v1 view];
    v14 = result;
    if (!v13)
    {
      if (result)
      {
        [result safeAreaInsets];
        v16 = v17;
LABEL_18:

        if (v9 - v16 < 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v9 - v16;
        }

        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    if (result)
    {
      [result safeAreaInsets];
      v16 = v15;
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_21:
  type metadata accessor for MediaShowcaseCollectionLayout();
  v18 = sub_1E3FC706C(v9, v11, v6);
  if ([v12 isPad] && (sub_1E3A24FDC(v18) & 1) != 0)
  {
    v19 = [v1 vuiTraitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 1)
    {
      return v18;
    }

    else
    {
      return 3;
    }
  }

  else
  {
  }

  return v18;
}

void sub_1E3B3A2A4()
{
  v1 = v0;
  if (sub_1E39DFFC8())
  {
    return;
  }

  v2 = [v0 parentViewController];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  type metadata accessor for DocumentViewController();
  if (!OUTLINED_FUNCTION_22_10() || (OUTLINED_FUNCTION_64(), (v5 = (*(v4 + 752))()) == 0) || (v6 = v5, swift_beginAccess(), v7 = *(v6 + 64), , v8 = , !v7))
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = (*(*v7 + 488))(v8);
  if (!v9)
  {

    goto LABEL_12;
  }

  if (!sub_1E373E010(39, v9))
  {
LABEL_26:

    goto LABEL_13;
  }

  type metadata accessor for ImageViewModel();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_26;
  }

  v11 = v10;
  if (sub_1E3ED10FC())
  {
    v12 = sub_1E3FC6C0C();
  }

  else
  {
    v12 = sub_1E3FC6C18();
  }

  v23 = *v12;
  v24 = [v1 vuiView];
  if (!v24)
  {
    __break(1u);
    return;
  }

  v25 = v24;

  type metadata accessor for LayoutGrid();
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v62.origin.x = v27;
  v62.origin.y = v29;
  v62.size.width = v31;
  v62.size.height = v33;
  Width = CGRectGetWidth(v62);
  v35 = sub_1E3A2579C(Width);
  v36 = *&v23 * (*(*v11 + 1056))(v35);
  v37 = j__OUTLINED_FUNCTION_18();
  v38 = j__OUTLINED_FUNCTION_18();
  sub_1E3DF9EB0(*&v36, v23, 0, 0, 0, 1, v37 & 1, 0, __src, 0, 1, 2, 1, 0, v38 & 1, 2);
  v39 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v40 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  v60[3] = &unk_1F5D869A0;
  v60[4] = &off_1F5D868A0;
  v60[0] = swift_allocObject();
  memcpy((v60[0] + 16), __src, 0x52uLL);
  v41 = v40;
  v42 = v39;
  v43 = sub_1E393D9C4(v11, v40, v60, 0);

  sub_1E373C624(v60);
  if (v43)
  {
    v44 = v43;
    [v44 setFrame_];

    v14 = v44;
    v45 = v43;
LABEL_34:
    sub_1E3B39990(v45);
LABEL_35:

    goto LABEL_36;
  }

LABEL_13:
  v13 = [v1 parentViewController];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for DocumentViewController();
    if (!OUTLINED_FUNCTION_22_10())
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_64();
    v16 = (*(v15 + 752))();
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = v16;
    swift_beginAccess();
    v18 = *(v17 + 64);

    if (!v18)
    {
      goto LABEL_35;
    }

    v20 = (*(*v18 + 488))(v19);
    if (v20)
    {
      v21 = sub_1E373E010(23, v20);

      if (v21)
      {
        if (*v21 == _TtC8VideosUI13TextViewModel)
        {
          if (sub_1E3ED10FC())
          {
            type metadata accessor for TextLayout();
            v22 = sub_1E38AA7C4();
          }

          else
          {
            type metadata accessor for MediaShowcaseCollectionLayout();
            v22 = sub_1E3FC70CC();
          }

          v46 = v22;
          type metadata accessor for MediaShowcaseCollectionLayout();
          v47 = sub_1E3FC7330();
          (*(*v46 + 608))(v47);
          (*(*v46 + 2320))(1);
          v48 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v49 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
          memset(__src, 0, 40);
          v50 = v49;
          v51 = v48;

          v53 = sub_1E393D9C4(v52, v49, __src, v46);

          sub_1E373C624(__src);
          if (v53)
          {
            v54 = *(*v21 + 344);
            v55 = v53;
            v59 = v53;
            v56 = v54();

            [v55 setAccessibilityIgnoresInvertColors_];

            v14 = v55;
            v45 = v59;
            goto LABEL_34;
          }

          goto LABEL_24;
        }
      }
    }

LABEL_24:
  }

LABEL_36:
  v57 = *&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (v57)
  {
    [v57 vui:2 setOverrideUserInterfaceStyle:?];
  }

  v58 = sub_1E41C85FC();
  sub_1E3B3B340(v58);
}

void sub_1E3B3A99C()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  if (sub_1E39DFFC8())
  {
    v10 = [v0 vuiView];
    if (v10)
    {
      v11 = v10;
      [v10 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v66.origin.x = v13;
      v66.origin.y = v15;
      v66.size.width = v17;
      v66.size.height = v19;
      if (CGRectGetWidth(v66) > 0.0)
      {
        v20 = [v0 parentViewController];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 vuiIsNavigationRoot];
        }

        else
        {
          v22 = 0;
        }

        v23 = objc_opt_self();
        if ([v23 isPhone])
        {
          v24 = 1;
        }

        else if ([v23 isPad])
        {
          v25 = sub_1E3B39FF8();
          v24 = sub_1E3A24FDC(v25);
        }

        else
        {
          v24 = 0;
        }

        v58 = v6;
        v26 = sub_1E3B3CE88();
        v64 = v22;
        if ((v22 & 1) != 0 || (v27 = [v23 isPad], v63 = v26, v24 & 1 | ((v27 & 1) == 0)))
        {
          v63 = 0;
        }

        v61 = v24;
        v28 = sub_1E324FBDC();
        v59 = *(v3 + 16);
        v60 = v28;
        v59(v9);
        v29 = v0;
        v30 = sub_1E41FFC94();
        v31 = sub_1E4206814();

        v32 = os_log_type_enabled(v30, v31);
        v62 = v3;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v65 = v57;
          *v33 = 136315906;
          v34 = sub_1E3B39B4C();
          v36 = v26;
          v37 = sub_1E3270FC8(v34, v35, &v65);

          *(v33 + 4) = v37;
          *(v33 + 12) = 1024;
          *(v33 + 14) = v36 & 1;
          *(v33 + 18) = 1024;
          *(v33 + 20) = v64;
          *(v33 + 24) = 1024;
          *(v33 + 26) = v63 & 1;
          _os_log_impl(&dword_1E323F000, v30, v31, "%s updateNavigationBar: isFloatingTabbar: %{BOOL}d, isRootController: %{BOOL}d, leadingStyle: %{BOOL}d", v33, 0x1Eu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v3 = v62;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v57 = *(v3 + 8);
        v57(v9, v1);
        v38 = [v29 parentViewController];
        v39 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
        if (v38)
        {
          v40 = v38;
          v41 = [v38 navigationItem];

          [v41 setStyle_];
        }

        v42 = v64 & v61;
        v43 = v58;
        (v59)(v58, v60, v1);
        v44 = v29;
        v45 = sub_1E41FFC94();
        v46 = sub_1E4206814();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v65 = v48;
          *v47 = 136315394;
          v49 = sub_1E3B39B4C();
          v51 = sub_1E3270FC8(v49, v50, &v65);

          *(v47 + 4) = v51;
          *(v47 + 12) = 1024;
          *(v47 + 14) = v42;
          _os_log_impl(&dword_1E323F000, v45, v46, "%s updateNavigationBar: useLargeTitle: %{BOOL}d", v47, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v48);
          OUTLINED_FUNCTION_6_0();
          v39 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
          OUTLINED_FUNCTION_6_0();
        }

        v57(v43, v1);
        v52 = [v44 parentViewController];
        if (v52)
        {
          v53 = v52;
          v54 = [v52 v39[510]];

          if (v42)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          [v54 setLargeTitleDisplayMode_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B3AED8()
{
  v1 = v0;
  if (sub_1E39DFFC8())
  {
    goto LABEL_18;
  }

  v2 = objc_opt_self();
  if ([v2 isPhone])
  {
    v3 = 1;
  }

  else if ([v2 isPad])
  {
    v4 = sub_1E3B39FF8();
    v3 = sub_1E3A24FDC(v4);
  }

  else
  {
    v3 = 0;
  }

  v5 = sub_1E3ED10FC();
  if ([v2 isPad] && (v3 & 1) == 0 && (sub_1E3B3CE88() & 1) != 0)
  {
    v5 = 1;
  }

  v6 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (!v6 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_18:
    OUTLINED_FUNCTION_8_19();
    return;
  }

  v8 = v7;
  v9 = v6;
  v10 = [v1 vuiView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_40;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;

  if ([v2 isPad])
  {
    v16 = [v1 vuiIsRTL];
    v17 = [v1 vuiView];
    v18 = v17;
    if (!v16)
    {
      if (v17)
      {
        [v17 safeAreaInsets];
        v20 = v21;
        goto LABEL_21;
      }

LABEL_41:
      __break(1u);
      return;
    }

    if (v17)
    {
      [v17 safeAreaInsets];
      v20 = v19;
LABEL_21:

      v13 = v13 - v20;
      goto LABEL_22;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  v22 = *(*&v1[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_toolbarLayout] + 112);
  v23 = *sub_1E3FBD4AC();
  v24 = (*(v23 + 2096))();

  *&v26 = COERCE_DOUBLE((*(*v24 + 248))(v25));
  v28 = v27;

  v29 = *&v26;
  if (v28)
  {
    v29 = 0.0;
  }

  v30 = v22 + v29;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v13);
  v35 = sub_1E3952BE0(v31, v32, v33, v34);
  if (v5)
  {
    if (v3)
    {
      v36 = v13 - v35 + v30 * -3.0;
    }

    else
    {
      v36 = v13 * 0.6;
    }
  }

  else if (v3)
  {
    v36 = v13 - v35 - (v30 + v30 + v30 + v30);
  }

  else
  {
    v37 = [v1 parentViewController];
    MaxX = 0.0;
    if (v37)
    {
      v39 = v37;
      v40 = [v37 navigationItem];

      v41 = [v40 titleView];
      if (v41)
      {
        type metadata accessor for UberNavigationBarTitleView();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_64();
          v43 = (*(v42 + 176))();

          [v43 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v57.origin.x = v45;
          v57.origin.y = v47;
          v57.size.width = v49;
          v57.size.height = v51;
          MaxX = CGRectGetMaxX(v57);
        }

        else
        {
        }
      }
    }

    v36 = v13 - (v30 + v30 + v35 * 0.5) - (MaxX + *sub_1E3FC6C30());
  }

  v56 = v9;
  [v8 vui:v36 sizeThatFits:v15];
  [v8 setBounds_];

  OUTLINED_FUNCTION_8_19();
}

void sub_1E3B3B340(void *a1)
{
  v2 = v1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v4 = *&v2[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
    if (v4)
    {
      v5 = v4;
      v6 = &selRef_dismissPresentedViewController;
      [v5 frame];
      v8 = v7;
      v10 = v9;
      v117 = v12;
      v118 = v11;
      [a1 contentOffset];
      v13 = objc_opt_self();
      if ([v13 isPhone])
      {
        v14 = 1;
      }

      else if ([v13 isPad])
      {
        v15 = sub_1E3B39FF8();
        v14 = sub_1E3A24FDC(v15);
      }

      else
      {
        v14 = 0;
      }

      v16 = OUTLINED_FUNCTION_11_85();
      if (!v16)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v17 = v16;
      [v16 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v125.origin.x = v19;
      v125.origin.y = v21;
      v125.size.width = v23;
      v125.size.height = v25;
      Width = CGRectGetWidth(v125);
      v27 = sub_1E3ED10FC();
      if ([v13 isPad])
      {
        v28 = OUTLINED_FUNCTION_10_83();
        v29 = OUTLINED_FUNCTION_11_85();
        v30 = v29;
        if (v28)
        {
          if (!v29)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          [v29 safeAreaInsets];
          v32 = v31;
        }

        else
        {
          if (!v29)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          [v29 safeAreaInsets];
          v32 = v33;
        }

        if (sub_1E41C8EFC())
        {
          v122 = &unk_1F5D5DF48;
          v123 = &off_1F5D5CA98;
          LOBYTE(aBlock) = 1;
          v34 = j__OUTLINED_FUNCTION_18();
          v35 = sub_1E39C29F0(&aBlock, v34 & 1);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
        }

        else
        {
          v35 = 0;
        }

        Width = Width - v32;
        if (TVAppFeature.isEnabled.getter(20) & 1) != 0 && (v35)
        {
          v6 = &selRef_dismissPresentedViewController;
          goto LABEL_35;
        }

        if (v14)
        {
          v6 = &selRef_dismissPresentedViewController;
          if ((v27 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v6 = &selRef_dismissPresentedViewController;
          if (((sub_1E3B3CE88() | v27) & 1) == 0)
          {
LABEL_35:
            v54 = OUTLINED_FUNCTION_11_85();
            if (!v54)
            {
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v55 = v54;
            v56 = [v54 window];

            Height = 0.0;
            rect = v10;
            if (v56)
            {
              v58 = [v56 windowScene];

              v36 = &selRef_advisoryDisabledTimeRanges;
              if (v58)
              {
                v59 = [v58 statusBarManager];

                if (v59)
                {
                  [v59 statusBarFrame];
                  v61 = v60;
                  v63 = v62;
                  v65 = v64;
                  v67 = v66;

                  v128.origin.x = v61;
                  v128.origin.y = v63;
                  v128.size.width = v65;
                  v128.size.height = v67;
                  Height = CGRectGetHeight(v128);
                }
              }
            }

            else
            {
              v36 = &selRef_advisoryDisabledTimeRanges;
            }

            v68 = Height + sub_1E3FC6CDC();
            objc_opt_self();
            OUTLINED_FUNCTION_19_3();
            if (swift_dynamicCastObjCClass())
            {
              v69 = sub_1E3B39A2C();
              [v69 sizeThatFits_];
              v71 = v70;

              v72 = *sub_1E3FC6D18() * 0.5 - v71 * 0.5;
            }

            else
            {
              v72 = *sub_1E3FC6C24();
            }

            v73 = v68 + v72;
            if (v14)
            {
              v129.origin.x = v8;
              v129.origin.y = rect;
              v129.size.height = v117;
              v129.size.width = v118;
              CGRectGetWidth(v129);
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v74 = swift_dynamicCastObjCClass();
              if (v74)
              {
                [v74 setVuiTextAlignment_];
              }

LABEL_50:
              [v5 setAlpha_];
LABEL_72:
              v114 = OUTLINED_FUNCTION_11_85();
              if (v114)
              {
                v115 = v114;
                [v114 v36[326]];

                OUTLINED_FUNCTION_10_83();
                VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
                [v5 setFrame_];

                return;
              }

              goto LABEL_76;
            }

            v75 = [v2 parentViewController];
            v76 = 0.0;
            if (v75)
            {
              v77 = v75;
              v78 = [v75 navigationItem];

              v79 = [v78 titleView];
              if (v79)
              {
                type metadata accessor for UberNavigationBarTitleView();
                if (swift_dynamicCastClass())
                {
                  OUTLINED_FUNCTION_64();
                  v81 = (*(v80 + 176))();

                  [v81 v6[440]];
                  v76 = v82;
                  v84 = v83;
                  v86 = v85;
                  v88 = v87;

LABEL_59:
                  v130.origin.x = OUTLINED_FUNCTION_12_80();
                  if (CGRectEqualToRect(v130, v134))
                  {
                    [v5 setAlpha_];
                  }

                  else
                  {
                    [v5 alpha];
                    if (v89 == 0.0)
                    {
                      rect = COERCE_DOUBLE(objc_opt_self());
                      OUTLINED_FUNCTION_4_0();
                      v90 = swift_allocObject();
                      *(v90 + 16) = v5;
                      v123 = sub_1E3B3CFF0;
                      v124 = v90;
                      aBlock = MEMORY[0x1E69E9820];
                      v120 = 1107296256;
                      v121 = sub_1E378AEA4;
                      v122 = &block_descriptor_63;
                      v91 = _Block_copy(&aBlock);
                      v92 = v5;

                      OUTLINED_FUNCTION_4_0();
                      v93 = swift_allocObject();
                      *(v93 + 16) = v92;
                      v123 = sub_1E3B3CFF0;
                      v124 = v93;
                      aBlock = MEMORY[0x1E69E9820];
                      v120 = 1107296256;
                      v121 = sub_1E37EB82C;
                      v122 = &block_descriptor_11_0;
                      v94 = _Block_copy(&aBlock);
                      v95 = v92;
                      v36 = &selRef_advisoryDisabledTimeRanges;

                      [*&rect animateWithDuration:v91 animations:v94 completion:0.2];
                      _Block_release(v94);
                      _Block_release(v91);
                    }
                  }

                  if (OUTLINED_FUNCTION_10_83())
                  {
                    rect = v73;
                    v96 = v88;
                    v97 = v86;
                    v98 = v84;
                    v99 = v76;
                    v100 = OUTLINED_FUNCTION_11_85();
                    if (!v100)
                    {
LABEL_81:
                      __break(1u);
                      return;
                    }

                    v101 = v100;
                    [v100 v36[326]];
                    v103 = v102;
                    v105 = v104;
                    v107 = v106;
                    v109 = v108;

                    v131.origin.x = v103;
                    v131.origin.y = v105;
                    v131.size.width = v107;
                    v131.size.height = v109;
                    CGRectGetWidth(v131);
                    v132.origin.x = v99;
                    v132.origin.y = v98;
                    v132.size.width = v97;
                    v132.size.height = v96;
                    CGRectGetMinX(v132);
                  }

                  else
                  {
                    v133.origin.x = OUTLINED_FUNCTION_12_80();
                    CGRectGetMaxX(v133);
                  }

                  sub_1E3FC6C30();
                  objc_opt_self();
                  OUTLINED_FUNCTION_19_3();
                  v110 = swift_dynamicCastObjCClass();
                  if (v110)
                  {
                    v111 = v110;
                    v112 = v5;
                    if (OUTLINED_FUNCTION_10_83())
                    {
                      v113 = 2;
                    }

                    else
                    {
                      v113 = 0;
                    }

                    [v111 setVuiTextAlignment_];
                  }

                  goto LABEL_72;
                }
              }
            }

            v84 = 0.0;
            v86 = 0.0;
            v88 = 0.0;
            goto LABEL_59;
          }
        }
      }

      else if ((v27 & 1) == 0)
      {
        goto LABEL_35;
      }

      type metadata accessor for LayoutGrid();
      sub_1E3A258E4(Width);
      if ([v13 isPhone])
      {
        sub_1E3FC6D30();
      }

      else
      {
        sub_1E3FC6D3C();
      }

      v36 = &selRef_advisoryDisabledTimeRanges;
      [v5 v6[440]];
      CGRectGetHeight(v126);
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        [v37 vuiBaselineHeight];
      }

      v38 = sub_1E3EDABBC();
      if (v38)
      {
        v39 = v38;
        v40 = [v38 vuiView];
        if (!v40)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v41 = v40;
        [v40 bounds];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v127.origin.x = v43;
        v127.origin.y = v45;
        v127.size.width = v47;
        v127.size.height = v49;
        CGRectGetHeight(v127);
      }

      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
        v52 = v5;
        if (OUTLINED_FUNCTION_10_83())
        {
          v53 = 2;
        }

        else
        {
          v53 = 0;
        }

        [v51 setVuiTextAlignment_];
      }

      goto LABEL_50;
    }
  }
}

void sub_1E3B3BC90()
{
  if (sub_1E39DFFC8())
  {
    goto LABEL_14;
  }

  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 vuiIsNavigationRoot];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  if ([v4 isPhone])
  {
    v5 = 0;
  }

  else if ([v4 isPad])
  {
    v6 = sub_1E3B39FF8();
    v5 = sub_1E3A24FDC(v6) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v7 = *&v0[OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_titleView];
  if (!v7)
  {
LABEL_14:
    OUTLINED_FUNCTION_200();
  }

  else
  {
    [v7 setHidden_];
    OUTLINED_FUNCTION_200();
  }
}

void sub_1E3B3BDB8()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "MediaShowcase:: updateNavigationBarButtonVisibilities", v11, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v7, v2);
  if (sub_1E39DFFC8())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v13 = Strong;
    v14 = [v1 parentViewController];
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (![objc_opt_self() isPad])
  {
    return;
  }

  v15 = [v1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  v17 = swift_unknownObjectWeakLoadStrong();
  v13 = v17;
  if (v16 == 1)
  {
    if (!v17)
    {
      return;
    }

    v14 = [v1 parentViewController];
    if (!v14)
    {
      v19 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (!v17)
  {
    return;
  }

  v14 = [v1 parentViewController];
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = v14;
  v19 = [v14 navigationItem];

LABEL_15:
  sub_1E38B5610();
}

void sub_1E3B3C0B0(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vuiScrollViewDidScroll_, a1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3B3B340(a1);
  }
}

void sub_1E3B3C170(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vui_viewWillAppear_, a1 & 1);
  if (sub_1E39DFFC8())
  {
    sub_1E3B3A99C();
  }

  else
  {
    sub_1E3B3BC90();
  }
}

void sub_1E3B3C214(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_vui_viewDidAppear_, a1 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v3 = [v1 parentViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationItem];

      v6 = [v5 titleView];
      if (v6)
      {
        type metadata accessor for UberNavigationBarTitleView();
        OUTLINED_FUNCTION_19_3();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v7;
          v9 = [v1 vuiView];
          (*((*MEMORY[0x1E69E7D40] & *v8) + 0x178))(v9);
        }
      }
    }
  }
}

void sub_1E3B3C394(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_vui_viewDidDisappear_, a1 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v4 = [v2 parentViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationItem];

      v7 = [v6 titleView];
      if (v7)
      {
        type metadata accessor for UberNavigationBarTitleView();
        v8 = OUTLINED_FUNCTION_22_10();
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_64();
          v12 = (*(v11 + 368))();
          v13 = [v2 vuiView];
          v14 = v13;
          if (v12)
          {
            if (!v13)
            {

              goto LABEL_13;
            }

            if (v14 == v12)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (!v13)
            {
LABEL_11:
              (*((*v10 & *v9) + 0x178))(0);
              goto LABEL_13;
            }
          }
        }

LABEL_13:
      }
    }
  }

  OUTLINED_FUNCTION_200();
}

void sub_1E3B3C574(uint64_t a1, void *a2)
{
  sub_1E3ED6E94();
  if (((sub_1E39DFFC8() & 1) != 0 || [objc_opt_self() isPad]) && (swift_getObjectType(), type metadata accessor for ViewControllerHostingCollectionViewCell(), (v3 = dynamic_cast_existential_1_superclass_conditional(a2)) != 0))
  {
    v4 = v3;
    v9 = a2;
    if ((sub_1E3C7654C() & 1) != 0 && !sub_1E41FE854())
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
      v10 = v9;
      v8 = v7();

      if (v8)
      {
        type metadata accessor for MediaShowcaseHostingViewController();
        if (OUTLINED_FUNCTION_22_10())
        {
          swift_unknownObjectWeakAssign();
          sub_1E3B3BDB8();
        }
      }
    }

    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3B3C754(uint64_t a1, void *a2)
{
  sub_1E3ED75C8();
  if ((sub_1E39DFFC8() & 1) == 0 && ![objc_opt_self() isPad] || (swift_getObjectType(), type metadata accessor for ViewControllerHostingCollectionViewCell(), (v3 = dynamic_cast_existential_1_superclass_conditional(a2)) == 0))
  {
    OUTLINED_FUNCTION_200();
    return;
  }

  v4 = v3;
  v10 = a2;
  if ((sub_1E3C7654C() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (sub_1E41FE854())
  {
    goto LABEL_6;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v9 = v10;
  v11 = v7();

  if (!v11)
  {
    goto LABEL_6;
  }

  type metadata accessor for MediaShowcaseHostingViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    OUTLINED_FUNCTION_200();

    return;
  }

  sub_1E38B5610();

  OUTLINED_FUNCTION_200();

  swift_unknownObjectWeakAssign();
}

void sub_1E3B3C90C()
{
  sub_1E3ED97A0();
  if ((sub_1E39DFFC8() & 1) == 0 && (v1 = [v0 parentViewController]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_navigationItem), v2, v11 = objc_msgSend(v3, sel_titleView), v3, v11))
  {
    type metadata accessor for UberNavigationBarTitleView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xE8);

      v7(sub_1E3B3CA98, v6);

      OUTLINED_FUNCTION_200();
    }

    else
    {
      OUTLINED_FUNCTION_200();
    }
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

void sub_1E3B3CA98()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3B3AED8();
    v2 = v1;
    v3 = sub_1E41C85FC();

    sub_1E3B3B340(v3);
  }
}

uint64_t sub_1E3B3CAF8()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 parentViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 vuiIsNavigationRoot];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1E3B39FF8();
  v12 = v10 & sub_1E3A2511C(v11);
  v13 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v13, v1);
  v14 = v0;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v26) = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315650;
    v20 = sub_1E3B39B4C();
    v22 = sub_1E3270FC8(v20, v21, &v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    v23 = HIDWORD(v26);
    *(v18 + 14) = HIDWORD(v26);
    *(v18 + 18) = 1024;
    *(v18 + 20) = v10;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s shouldHideTitle:%{BOOL}d, isRootController:%{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v7, v1);
    v24 = v23;
  }

  else
  {

    (*(v3 + 8))(v7, v1);
    v24 = v12;
  }

  if (v24)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1E3B3CD70()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI33MediaShowcasingTemplateController_mediaShowcaseHostingViewController);
}

void sub_1E3B3CE54()
{
  if (sub_1E39DFFC8())
  {

    sub_1E3B3A99C();
  }
}

id sub_1E3B3CE88()
{
  if (![objc_opt_self() isPad])
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 splitViewController];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isFloatingTabBarInHierarchy];

  return v2;
}

uint64_t type metadata accessor for MediaShowcasingTemplateController()
{
  result = qword_1EE2919E0;
  if (!qword_1EE2919E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B3D008()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}