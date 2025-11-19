void sub_1A49EC13C()
{
  if (!qword_1EB147460)
  {
    sub_1A49EC23C(255);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C);
    sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    sub_1A49ECA0C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147460);
    }
  }
}

void sub_1A49EC2B4()
{
  if (!qword_1EB147480)
  {
    sub_1A49EC318();
    sub_1A49EC558();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147480);
    }
  }
}

void sub_1A49EC318()
{
  if (!qword_1EB147488)
  {
    sub_1A49EECE4(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1A49EC3D8();
    sub_1A3DE77C8();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147488);
    }
  }
}

void sub_1A49EC3D8()
{
  if (!qword_1EB147490)
  {
    sub_1A49EC438();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147490);
    }
  }
}

void sub_1A49EC438()
{
  if (!qword_1EB147498)
  {
    sub_1A49EC4CC();
    sub_1A49EECE4(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147498);
    }
  }
}

void sub_1A49EC4CC()
{
  if (!qword_1EB1474A0)
  {
    sub_1A49EECE4(255, &qword_1EB1474A8, &type metadata for SuggestionPromptView, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1474A0);
    }
  }
}

unint64_t sub_1A49EC558()
{
  result = qword_1EB1474B0;
  if (!qword_1EB1474B0)
  {
    sub_1A49EC318();
    sub_1A49EC5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474B0);
  }

  return result;
}

unint64_t sub_1A49EC5D0()
{
  result = qword_1EB1474B8;
  if (!qword_1EB1474B8)
  {
    sub_1A49EC3D8();
    sub_1A49EC650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474B8);
  }

  return result;
}

unint64_t sub_1A49EC650()
{
  result = qword_1EB1474C0;
  if (!qword_1EB1474C0)
  {
    sub_1A49EC438();
    sub_1A49EC8DC(&qword_1EB1474C8, sub_1A49EC4CC, sub_1A49EC708);
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474C0);
  }

  return result;
}

unint64_t sub_1A49EC708()
{
  result = qword_1EB1474D0;
  if (!qword_1EB1474D0)
  {
    sub_1A49EECE4(255, &qword_1EB1474A8, &type metadata for SuggestionPromptView, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    sub_1A49EC7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474D0);
  }

  return result;
}

unint64_t sub_1A49EC7B4()
{
  result = qword_1EB1E5670;
  if (!qword_1EB1E5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1E5670);
  }

  return result;
}

void sub_1A49EC808(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A49EC8DC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49EC95C()
{
  result = qword_1EB1474F8;
  if (!qword_1EB1474F8)
  {
    sub_1A49EC28C(255);
    sub_1A49EEE18(&qword_1EB147500, sub_1A49EC2B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1474F8);
  }

  return result;
}

unint64_t sub_1A49ECA0C()
{
  result = qword_1EB147508;
  if (!qword_1EB147508)
  {
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C);
    sub_1A49EEE18(&qword_1EB147510, sub_1A49EC86C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147508);
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStorySuggestionsView()
{
  result = qword_1EB1E5700;
  if (!qword_1EB1E5700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49ECB2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GenerativeStorySuggestion(0);
    return a2;
  }

  return result;
}

uint64_t sub_1A49ECBC0@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a3;
  v57 = a5;
  v58 = a6;
  v9 = type metadata accessor for GenerativeStorySuggestionsView();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for GenerativeStorySuggestion(0);
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47[-v15];
  v17 = *a1;
  v18 = *a2;
  result = (*(**a2 + 416))(v14);
  if ((v20 & 1) == 0 && v17 == result)
  {
    result = sub_1A40B1BE4(*(a2 + 32), 1);
    if (result)
    {
      type metadata accessor for GenerativeStorySuggestionViewModel(0);
      result = sub_1A3C5A374();
      if ((result & 1) == 0)
      {
        LOBYTE(v62) = 0;
        HIBYTE(v61) = 0;
        sub_1A49EC438();
        sub_1A49EC650();
        result = sub_1A5249744();
LABEL_17:
        v43 = v75;
        v44 = v58;
        *(v58 + 64) = v74;
        *(v44 + 80) = v43;
        *(v44 + 96) = v76;
        v45 = v71;
        *v44 = v70;
        *(v44 + 16) = v45;
        v46 = v73;
        *(v44 + 32) = v72;
        *(v44 + 48) = v46;
        return result;
      }
    }
  }

  if (v17 < a4 || v17 >= (v57 >> 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1A49EF26C(v56 + *(v59 + 72) * v17, v16, type metadata accessor for GenerativeStorySuggestion);
  v21 = *(a2 + 24);
  if (__OFSUB__(v21, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFSUB__(v21 - v17, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = *sub_1A44964AC();
  result = sub_1A4497E70();
  v23 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = __OFSUB__(v23, v17);
  v25 = v23 - v17;
  if (!v24)
  {
    v26 = v22 + *result + (v22 + *result) * v25;
    v27 = 1.0;
    MEMORY[0x1A5907080](0.5, 1.0, 0.0);
    v57 = sub_1A524BCD4();

    v56 = sub_1A417DA38();
    v51 = *&v16[*(v11 + 36)];
    v52 = v28;

    v29 = sub_1A49ED1A0();
    v49 = v30;
    v50 = v29;
    v48 = sub_1A40B1BE4(*(a2 + 32), 1);
    v31 = v55;
    sub_1A49EF26C(a2, v55, type metadata accessor for GenerativeStorySuggestionsView);
    v32 = v54;
    sub_1A49EF26C(v16, v54, type metadata accessor for GenerativeStorySuggestion);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = (v10 + *(v59 + 80) + v33) & ~*(v59 + 80);
    v35 = swift_allocObject();
    sub_1A49EF048(v31, v35 + v33, type metadata accessor for GenerativeStorySuggestionsView);
    v36 = sub_1A49EF048(v32, v35 + v34, type metadata accessor for GenerativeStorySuggestion);
    *(v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v37 = *(*v18 + 512);
    if ((v37)(v36))
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v26;
    }

    v39 = v48;
    if ((v37() & 1) == 0)
    {
      v27 = 0.0;
    }

    v40 = v57;

    v42 = (v37)(v41);
    *&v62 = v56;
    *(&v62 + 1) = v52;
    *&v63 = v51;
    *(&v63 + 1) = v50;
    *&v64 = v49;
    BYTE8(v64) = v39;
    *&v65 = sub_1A49EF0B0;
    *(&v65 + 1) = v35;
    *&v66 = 0;
    *(&v66 + 1) = v38;
    *&v67 = v27;
    *(&v67 + 1) = v40;
    v68 = v42 & 1;
    v74 = v66;
    v75 = v67;
    LOBYTE(v76) = v42 & 1;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v69 = 1;
    HIBYTE(v76) = 1;
    sub_1A49EF26C(&v62, v60, sub_1A49EC438);
    sub_1A49EC438();
    sub_1A49EC650();
    sub_1A5249744();

    sub_1A49EF20C(&v62, sub_1A49EC438);
    result = sub_1A49EF20C(v16, type metadata accessor for GenerativeStorySuggestion);
    v74 = v60[4];
    v75 = v60[5];
    v76 = v61;
    v70 = v60[0];
    v71 = v60[1];
    v72 = v60[2];
    v73 = v60[3];
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A49ED1A0()
{
  v1 = sub_1A5244A24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 shouldShowSuggestionSourceBadge];

  if (!v6)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB126BB0);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 canShowInternalUI];

  if (!v8)
  {
    return 0;
  }

  v9 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(v2 + 16))(v4, v0 + *(v9 + 24), v1);
  v10 = (*(v2 + 88))(v4, v1);
  if (v10 == *MEMORY[0x1E69C1098])
  {
    return 0xBC859FF020;
  }

  if (v10 == *MEMORY[0x1E69C10A0])
  {
    return 0x82869FF020;
  }

  if (v10 == *MEMORY[0x1E69C10A8])
  {
    return 0x86869FF020;
  }

  if (v10 == *MEMORY[0x1E69C1088])
  {
    return 0xB2859FF020;
  }

  (*(v2 + 8))(v4, v1);
  return 1564433184;
}

uint64_t sub_1A49ED3FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  sub_1A49EF26C(a2, v8, type metadata accessor for GenerativeStorySuggestion);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  (*(*v9 + 280))(v8);
  v14[15] = *(a1 + 32);
  v14[14] = 1;
  sub_1A42C7F04();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    result = (*(*v9 + 424))(a3, 0);
  }

  v13 = a1[1];
  if (v13)
  {
    sub_1A49EF26C(a2, v8, type metadata accessor for GenerativeStorySuggestion);
    v11(v8, 0, 1, v10);
    v13(v8);
    return sub_1A49EF20C(v8, sub_1A4499C00);
  }

  return result;
}

double sub_1A49ED614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  *(a6 + 48) = swift_getKeyPath();
  *(a6 + 56) = 0;
  *(a6 + 64) = swift_getKeyPath();
  *(a6 + 72) = 0;
  *(a6 + 80) = swift_getKeyPath();
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  v8 = type metadata accessor for GenerativeStorySuggestionsView();
  v9 = v8[12];
  *(a6 + v9) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v10 = (a6 + v8[13]);
  sub_1A524B694();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = (a6 + v8[14]);
  sub_1A4491F00();
  sub_1A524B694();
  result = v13;
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

void sub_1A49ED734(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_1A49EF1A8(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  MEMORY[0x1EEE9AC00](v24);
  sub_1A49EEB3C();
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1A49EEE60(0, &qword_1EB147548, sub_1A49EEEE4, sub_1A49EEB3C, MEMORY[0x1E697F948]);
  v20[5] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = v20 - v5;
  v21 = type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0);
  MEMORY[0x1EEE9AC00](v21);
  v20[1] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EEC58();
  v8 = *(v7 - 8);
  v20[2] = v7;
  v20[3] = v8;
  MEMORY[0x1EEE9AC00](v7);
  sub_1A49EEC10(0);
  v20[6] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v20[4] = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EEEE4();
  v22 = v11;
  MEMORY[0x1EEE9AC00](v11);
  if (*(v1 + 40))
  {
    sub_1A3C52C70(0, &qword_1EB126860);
    v12 = [swift_getObjCClassFromMetadata() sharedInstance];
    v13 = [v12 showIntelligenceLightingInSuggestions];

    if (v13)
    {
      v14 = swift_allocObject();
      v15 = *(v1 + 16);
      v14[1] = *v1;
      v14[2] = v15;
      v16 = *(v1 + 48);
      v14[3] = *(v1 + 32);
      v14[4] = v16;
      MEMORY[0x1EEE9AC00](v14);
      v20[-2] = v1;
      sub_1A49EEFC0(v1, &v27);
      sub_1A49EECE4(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
      sub_1A424D1BC();
      sub_1A524B704();
      sub_1A440612C();
      sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v17 = swift_allocObject();
  v18 = *(v1 + 16);
  v17[1] = *v1;
  v17[2] = v18;
  v19 = *(v1 + 48);
  v17[3] = *(v1 + 32);
  v17[4] = v19;
  MEMORY[0x1EEE9AC00](v17);
  v20[-2] = v1;
  sub_1A49EEFC0(v1, &v27);
  sub_1A49EECE4(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  sub_1A424D1BC();
  sub_1A524B704();
  sub_1A440612C();
  sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49EE130(uint64_t a1)
{
  v2 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (*(a1 + 16))
  {

    sub_1A5249414();
    sub_1A5249404();
    sub_1A52493E4();
    sub_1A5249404();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49EE3A4()
{
  if (!qword_1EB147518)
  {
    sub_1A49EC318();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147518);
    }
  }
}

uint64_t sub_1A49EE40C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GenerativeStorySuggestionsView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];

  return sub_1A49ECBC0(a1, v2 + v6, v8, v9, v10, a2);
}

uint64_t sub_1A49EE4C0()
{
  v1 = *(type metadata accessor for GenerativeStorySuggestionsView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  result = (*(*v2 + 512))();
  if ((result & 1) == 0)
  {
    return (*(*v2 + 520))(1);
  }

  return result;
}

void sub_1A49EE584(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (((*(**v5 + 368))() & 1) == 0 || (v6 = 0.0, !sub_1A40B1BE4(v5[32], 1)))
  {
    v6 = 1.0;
  }

  sub_1A49EC86C(0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  sub_1A49EC808(0, &qword_1EB1474D8, sub_1A49EC86C);
  *(a2 + *(v8 + 36)) = v6;
}

void sub_1A49EE6BC()
{
  type metadata accessor for GenerativeStorySuggestionViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A49EF1A8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A49EF1A8(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A49EE8DC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A49EF1A8(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A49EF1A8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A49EE8DC(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
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

void sub_1A49EE8DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49EE92C()
{
  result = qword_1EB147520;
  if (!qword_1EB147520)
  {
    sub_1A49EEA74(255, &qword_1EB147528, MEMORY[0x1E697F960]);
    sub_1A49EC23C(255);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C);
    sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    sub_1A49ECA0C();
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147520);
  }

  return result;
}

void sub_1A49EEA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49EC13C();
    v7 = v6;
    sub_1A49EECE4(255, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A49EEB3C()
{
  if (!qword_1EB147530)
  {
    sub_1A49EEC10(255);
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A49EED38();
    sub_1A49EEE18(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147530);
    }
  }
}

void sub_1A49EEC58()
{
  if (!qword_1EB121AC0)
  {
    sub_1A49EECE4(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A424D1BC();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121AC0);
    }
  }
}

void sub_1A49EECE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A49EED38()
{
  result = qword_1EB147540;
  if (!qword_1EB147540)
  {
    sub_1A49EEC10(255);
    sub_1A49EEE18(&qword_1EB121AC8, sub_1A49EEC58);
    sub_1A49EEE18(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147540);
  }

  return result;
}

uint64_t sub_1A49EEE18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49EEE60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49EEEE4()
{
  if (!qword_1EB147550)
  {
    sub_1A49EEC10(255);
    type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(255);
    sub_1A49EED38();
    sub_1A49EEE18(&qword_1EB125028, type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147550);
    }
  }
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A49EF048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49EF0B0()
{
  v1 = *(type metadata accessor for GenerativeStorySuggestionsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A49ED3FC((v0 + v2), v0 + v5, v6);
}

void sub_1A49EF1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49EF20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49EF26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A49EF2D4()
{
  result = qword_1EB147558;
  if (!qword_1EB147558)
  {
    sub_1A49EEE60(255, &qword_1EB147560, sub_1A49EEEE4, sub_1A49EEB3C, MEMORY[0x1E697F960]);
    sub_1A49EEC10(255);
    type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(255);
    sub_1A49EED38();
    sub_1A49EEE18(&qword_1EB125028, type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A49EEE18(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147558);
  }

  return result;
}

void *PhotosFeedbackActionPerformer.feedbackController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  v2 = v1;
  return v1;
}

uint64_t sub_1A49EF4B8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EC178);
  __swift_project_value_buffer(v0, qword_1EB1EC178);
  return sub_1A5246F14();
}

uint64_t sub_1A49EF53C()
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EC178);
}

id PhotosFeedbackActionPerformer.init(parentViewController:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_previousMemoryUUID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_previousAssetUUID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = sub_1A5241744();
  *(&v30 + 1) = v6;
  v31 = sub_1A49EF998();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v6);
  LOBYTE(v6) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  if ((v6 & 1) == 0)
  {
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB1EC178);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D234();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "FeedbackFrameworks/CentralizedFeedback feature flag disabled. Skipping Centralized Feedback";
    goto LABEL_19;
  }

  if ([objc_opt_self() makeFeedbackController])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    sub_1A3C35B00(&v29);
    goto LABEL_15;
  }

  sub_1A3C652C8(0, &qword_1EB125678);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v23 = sub_1A5246F24();
    __swift_project_value_buffer(v23, qword_1EB1EC178);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to initialize an instance conforming to PXPhotosFeedbackController";
LABEL_19:
    _os_log_impl(&dword_1A3C1C000, v9, v10, v12, v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
LABEL_20:

    type metadata accessor for PhotosFeedbackActionPerformer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v25;
  v14 = v26;
  v15 = &v2[OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController];
  *v15 = v25;
  *(v15 + 1) = v14;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for PhotosFeedbackActionPerformer();
  v16 = v13;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  ObjectType = swift_getObjectType();
  v19 = *(v14 + 16);
  v20 = v17;
  v19(v17, &protocol witness table for PhotosFeedbackActionPerformer, ObjectType, v14);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    [a1 addChildViewController_];
  }

  else
  {
  }

  return v17;
}

unint64_t sub_1A49EF998()
{
  result = qword_1EB124FD0;
  if (!qword_1EB124FD0)
  {
    sub_1A5241744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124FD0);
  }

  return result;
}

id sub_1A49EFA14(uint64_t a1, char a2)
{
  v5 = sub_1A5241784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
  if ((a1 - 1) > 2)
  {
    v14 = MEMORY[0x1E699C1D8];
  }

  else
  {
    v14 = qword_1E772C3A0[a1 - 1];
  }

  (*(v6 + 104))(v8, *v14, v5, v10);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(v12, v8, v5);
  (*(v13 + 64))(v12, a2 & 1, ObjectType, v13);
  (*(v6 + 8))(v12, v5);
  v16 = sub_1A524C634();

  v17 = [objc_opt_self() systemImageNamed_];

  return v17;
}

uint64_t sub_1A49EFC04(uint64_t a1, char a2)
{
  v5 = sub_1A5241784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
  if ((a1 - 1) > 2)
  {
    v14 = MEMORY[0x1E699C1D8];
  }

  else
  {
    v14 = qword_1E772C3A0[a1 - 1];
  }

  (*(v6 + 104))(v8, *v14, v5, v10);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(v12, v8, v5);
  v16 = (*(v13 + 64))(v12, a2 & 1, ObjectType, v13);
  (*(v6 + 8))(v12, v5);
  return v16;
}

uint64_t sub_1A49EFEA4(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_1A49F1130();
  v2[16] = swift_task_alloc();
  v3 = sub_1A52411C4();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49EFF90, 0, 0);
}

uint64_t sub_1A49EFF90()
{
  v1 = [*(v0 + 120) photosGraphProperties];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_1A524C3E4();

  v4 = sub_1A524C674();
  if (!*(v3 + 16))
  {
LABEL_10:

    goto LABEL_11;
  }

  v6 = sub_1A3C5DCA4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1A3C2F0BC(*(v3 + 56) + 32 * v6, v0 + 16);

  sub_1A49F1188();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    (*(*(v0 + 144) + 56))(*(v0 + 112), 1, 1, *(v0 + 136));

    v18 = *(v0 + 8);

    return v18();
  }

  v9 = *(v0 + 96);
  v10 = sub_1A524C674();
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v12 = sub_1A3C5DCA4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1A3C2F0BC(*(v9 + 56) + 32 * v12, v0 + 48);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  sub_1A5241154();

  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_1A49F11EC(*(v0 + 128));
    goto LABEL_12;
  }

  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v21 + 32);
  *(v0 + 160) = v24;
  *(v0 + 168) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v24(v20, v22, v23);
  sub_1A5241774();
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  *v25 = v0;
  v25[1] = sub_1A49F0254;
  v26 = *(v0 + 152);

  return MEMORY[0x1EEE03E90](v26);
}

uint64_t sub_1A49F0254(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1A49F0478;
  }

  else
  {
    v4 = sub_1A49F0368;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A49F0368()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[20];
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    v6 = v0[14];

    v2(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
  }

  else
  {
    v7 = v0[18];
    v8 = v0[17];
    v9 = v0[14];
    (*(v7 + 8))(v0[19], v8);
    (*(v7 + 56))(v9, 1, 1, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A49F0478()
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1EC178);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  if (v6)
  {
    v11 = swift_slowAlloc();
    swift_slowAlloc();
    *v11 = 136315138;
    v0[13] = v7;
    v12 = v7;
    sub_1A3C652C8(0, &qword_1EB126160);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  (*(v8 + 8))(v9, v10);
  (*(v0[18] + 56))(v0[14], 1, 1, v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A49F06B8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A49F1130();
  v2[5] = swift_task_alloc();
  v3 = sub_1A52411C4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F07A4, 0, 0);
}

uint64_t sub_1A49F07A4()
{
  v1 = [*(v0 + 32) uuid];
  if (!v1)
  {
LABEL_4:
    (*(*(v0 + 56) + 56))(*(v0 + 24), 1, 1, *(v0 + 48));

    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = v1;
  sub_1A524C674();

  sub_1A5241154();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1A49F11EC(*(v0 + 40));
    goto LABEL_4;
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v9 + 32);
  *(v0 + 72) = v12;
  *(v0 + 80) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v8, v10, v11);
  sub_1A5241774();
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1A49F0964;
  v14 = *(v0 + 64);

  return MEMORY[0x1EEE03E90](v14);
}

uint64_t sub_1A49F0964(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1A49F0B88;
  }

  else
  {
    v4 = sub_1A49F0A78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A49F0A78()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[9];
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = v0[3];

    v2(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[6];
    v9 = v0[3];
    (*(v7 + 8))(v0[8], v8);
    (*(v7 + 56))(v9, 1, 1, v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A49F0B88()
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1EC178);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  if (v6)
  {
    v11 = swift_slowAlloc();
    swift_slowAlloc();
    *v11 = 136315138;
    v0[2] = v7;
    v12 = v7;
    sub_1A3C652C8(0, &qword_1EB126160);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  (*(v8 + 8))(v9, v10);
  (*(v0[7] + 56))(v0[3], 1, 1, v0[6]);

  v13 = v0[1];

  return v13();
}

void sub_1A49F0DE8(void *a1, uint64_t a2, void *a3)
{
  if (qword_1EB1E5790 != -1)
  {
    swift_once();
  }

  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB1EC178);
  v6 = a3;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D244();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136315138;
    v10 = a3;
    sub_1A3C652C8(0, &qword_1EB126160);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  sub_1A49F12F0(0, a1);
}

id PhotosFeedbackActionPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosFeedbackActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A49F1118@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

void sub_1A49F1130()
{
  if (!qword_1EB12AFA0)
  {
    sub_1A52411C4();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12AFA0);
    }
  }
}

void sub_1A49F1188()
{
  if (!qword_1EB12D8D8)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D8D8);
    }
  }
}

uint64_t sub_1A49F11EC(uint64_t a1)
{
  sub_1A49F1130();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A49F1248(id result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = result;
    v5 = a3;

    return v6;
  }

  return result;
}

void sub_1A49F129C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

void sub_1A49F12F0(char a1, void *a2)
{
  swift_beginAccess();
  v4 = qword_1EB1EC1A0;
  v5 = xmmword_1EB1EC1B0;
  if (xmmword_1EB1EC1B0)
  {
    v6 = qword_1EB1EC1A0 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (qword_1EB1E5790 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1EC178);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Unexpected report completion with missing feedback report request", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }
  }

  else
  {
    v42 = a1;
    v11 = xmmword_1EB1EC190;
    v12 = qword_1EB1EC1A8;
    swift_getObjectType();
    v41 = v5;
    sub_1A49F1248(v11, *(&v11 + 1), v4, v12, v5);
    v13 = v4;
    v14 = sub_1A49FC098(a2);
    if (v14)
    {
      v15 = qword_1EB1E5790;
      v16 = v11;
      if (BYTE8(v11))
      {
        v17 = v42;
        if (v15 != -1)
        {
          swift_once();
        }

        v18 = sub_1A5246F24();
        __swift_project_value_buffer(v18, qword_1EB1EC178);
        v19 = v16;
        v20 = sub_1A5246F04();
        v21 = sub_1A524D224();

        if (os_log_type_enabled(v20, v21))
        {
          LODWORD(v40) = v21;
          v22 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v22 = 136315394;
          v23 = [v19 uuid];
          if (v23)
          {
            v24 = v23;
            sub_1A524C674();
          }

          sub_1A3C371A0(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          sub_1A524C714();
          sub_1A3C2EF94();
        }
      }

      else
      {
        v17 = v42;
        if (v15 != -1)
        {
          swift_once();
        }

        v32 = sub_1A5246F24();
        __swift_project_value_buffer(v32, qword_1EB1EC178);
        v19 = v16;
        v20 = sub_1A5246F04();
        v33 = sub_1A524D224();

        if (os_log_type_enabled(v20, v33))
        {
          v34 = swift_slowAlloc();
          swift_slowAlloc();
          *v34 = 136315394;
          v35 = [v19 uuid];
          sub_1A524C674();

          sub_1A3C2EF94();
        }
      }

      v41(v17 & 1);
    }

    else
    {
      if (qword_1EB1E5790 != -1)
      {
        swift_once();
      }

      v25 = sub_1A5246F24();
      __swift_project_value_buffer(v25, qword_1EB1EC178);
      v26 = v13;
      v27 = a2;
      v28 = sub_1A5246F04();
      v29 = sub_1A524D244();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        swift_slowAlloc();
        *v30 = 136315394;
        v31 = [v26 description];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }
  }

  v36 = xmmword_1EB1EC190;
  v37 = qword_1EB1EC1A0;
  v38 = qword_1EB1EC1A8;
  v39 = xmmword_1EB1EC1B0;
  xmmword_1EB1EC190 = 0u;
  *&qword_1EB1EC1A0 = 0u;
  xmmword_1EB1EC1B0 = 0u;
  sub_1A49F129C(v36, *(&v36 + 1), v37, v38, v39);
}

uint64_t PhotosFeedbackActionPerformer.reportCleanupFeedback(type:asset:originalImageData:renderedImageData:summaryString:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[29] = v16;
  v9[30] = v8;
  v9[27] = a8;
  v9[28] = v15;
  v9[25] = a6;
  v9[26] = a7;
  v9[23] = a4;
  v9[24] = a5;
  v9[21] = a2;
  v9[22] = a3;
  v9[20] = a1;
  v9[31] = swift_getObjectType();
  sub_1A3C56BCC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9[32] = swift_task_alloc();
  v10 = sub_1A52417A4();
  v9[33] = v10;
  v11 = *(v10 - 8);
  v9[34] = v11;
  v9[35] = *(v11 + 64);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v12 = sub_1A5246F24();
  v9[38] = v12;
  v9[39] = *(v12 - 8);
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F1CDC, 0, 0);
}

uint64_t sub_1A49F1CDC()
{
  v1 = sub_1A49F0DC8();
  v0[43] = v1;
  swift_beginAccess();
  v2 = *(v1 + 2);
  v3 = *(v1 + 4);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *v1;
    v52 = *(v1 + 1);
    v6 = *(v1 + 3);
    v7 = v0[39];
    v8 = v0[30];
    swift_getObjectType();
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
    sub_1A49F1248(v5, v52, v2, v6, v3);
    v10 = v2;
    v11 = sub_1A49FC098(v9);
    v12 = sub_1A49EF53C();
    v13 = *(v7 + 16);
    v14 = v0[38];
    if (v11)
    {
      v13(v0[42], v12, v14);
      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1A3C1C000, v15, v16, "Skipping reporting feedback because previous request was not completed", v17, 2u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }

      else
      {
      }

      (*(v0[39] + 8))(v0[42], v0[38]);

      v51 = v0[1];

      return v51();
    }

    v13(v0[41], v12, v14);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D264();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "Ignoring previous request because feedback controller does not match", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    v21 = v0[41];
    v23 = v0[38];
    v22 = v0[39];

    (*(v22 + 8))(v21, v23);
    swift_beginAccess();
    v24 = *v1;
    v25 = *(v1 + 1);
    v26 = *(v1 + 2);
    v27 = *(v1 + 3);
    v28 = *(v1 + 4);
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    sub_1A49F129C(v24, v25, v26, v27, v28);
  }

  v30 = v0[39];
  v29 = v0[40];
  v31 = v0[38];
  v32 = v0[21];
  v33 = sub_1A49EF53C();
  (*(v30 + 16))(v29, v33, v31);
  v34 = v32;
  v35 = sub_1A5246F04();
  LOBYTE(v30) = sub_1A524D264();

  if (os_log_type_enabled(v35, v30))
  {
    v36 = v0[20];
    v37 = swift_slowAlloc();
    swift_slowAlloc();
    *v37 = 136315394;
    v0[19] = v36;
    type metadata accessor for PXPhotosFeedbackType();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v39 = v0[39];
  v38 = v0[40];
  v40 = v0[38];

  (*(v39 + 8))(v38, v40);
  v41 = swift_task_alloc();
  v0[44] = v41;
  *v41 = v0;
  v41[1] = sub_1A49F229C;
  v42 = v0[37];
  v43 = v0[26];
  v44 = v0[27];
  v45 = v0[24];
  v46 = v0[25];
  v47 = v0[22];
  v48 = v0[23];
  v49 = v0[21];

  return sub_1A49F2960(v42, v49, v47, v48, v45, v46, v43, v44);
}

uint64_t sub_1A49F229C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F2398, 0, 0);
}

uint64_t sub_1A49F2398(uint64_t a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 240)) + 0x98))(a1);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v2;
  v5 = v3;
  v6 = [*(v1 + 168) uuid];
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v5 == v10)
  {

    goto LABEL_12;
  }

  v12 = sub_1A524EAB4();

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v13 = *(*(v1 + 240) + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(ObjectType, v13);
  }

LABEL_12:
  v16 = *(v1 + 288);
  v15 = *(v1 + 296);
  v17 = *(v1 + 272);
  v18 = *(v1 + 280);
  v19 = *(v1 + 256);
  v20 = *(v1 + 264);
  v21 = *(v1 + 248);
  v22 = *(v1 + 168);
  v23 = sub_1A524CCB4();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  (*(v17 + 16))(v16, v15, v20);
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v17 + 32))(v25 + v24, v16, v20);
  *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_1A3D4D930(0, 0, v19, &unk_1A537BBB8, v25);

  v26 = [v22 uuid];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1A524C674();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = *(v1 + 344);
  v33 = *(v1 + 232);
  v32 = *(v1 + 240);
  v34 = *(v1 + 224);
  v35 = *(v1 + 168);
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0xA0))(v28, v30);
  v36 = (v32 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  v37 = *(v32 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  *(v1 + 360) = *v36;
  v38 = v36[1];
  *(v1 + 368) = v38;
  v39 = v35;
  v40 = v37;

  sub_1A49F1118(v35, 1, v37, v38, v34, v33, v1 + 16);
  v41 = *(v1 + 16);
  v42 = *(v1 + 24);
  v43 = *(v1 + 32);
  v53 = *(v1 + 40);
  v44 = *(v1 + 56);
  swift_beginAccess();
  v45 = *v31;
  v46 = *(v31 + 8);
  v47 = *(v31 + 16);
  v48 = *(v31 + 24);
  v49 = *(v31 + 32);
  *v31 = v41;
  *(v31 + 8) = v42;
  *(v31 + 16) = v43;
  *(v31 + 24) = v53;
  *(v31 + 40) = v44;
  sub_1A49F129C(v45, v46, v47, v48, v49);
  sub_1A524CC54();
  *(v1 + 376) = sub_1A524CC44();
  v51 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A49F2778, v51, v50);
}

uint64_t sub_1A49F2778()
{
  v1 = v0[20];

  switch(v1)
  {
    case 3:
      v8 = v0[46];
      v9 = v0[37];
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, ObjectType, v8);
      break;
    case 2:
      v5 = v0[46];
      v6 = v0[37];
      v7 = swift_getObjectType();
      (*(v5 + 48))(v6, v7, v5);
      break;
    case 1:
      v2 = v0[46];
      v3 = v0[37];
      v4 = swift_getObjectType();
      (*(v2 + 40))(v3, 1, v4, v2);
      break;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A49F28A0, 0, 0);
}

uint64_t sub_1A49F28A0()
{
  (*(v0[34] + 8))(v0[37], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A49F2960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[7] = a7;
  v9[8] = a8;
  v9[5] = a5;
  v9[6] = a6;
  v9[3] = a3;
  v9[4] = a4;
  v9[2] = a1;
  v11 = sub_1A5241804();
  v9[9] = v11;
  v9[10] = *(v11 - 8);
  v9[11] = swift_task_alloc();
  v12 = sub_1A52417C4();
  v9[12] = v12;
  v9[13] = *(v12 - 8);
  v9[14] = swift_task_alloc();
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C56BCC(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  v9[15] = swift_task_alloc();
  v14 = sub_1A5241844();
  v9[16] = v14;
  v9[17] = *(v14 - 8);
  v9[18] = swift_task_alloc();
  sub_1A3C56BCC(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v13);
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  sub_1A3C56BCC(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v13);
  v15 = swift_task_alloc();
  v9[25] = v15;
  v16 = sub_1A52411C4();
  v9[26] = v16;
  v9[27] = *(v16 - 8);
  v9[28] = swift_task_alloc();
  v17 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xB8);
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v9[29] = v18;
  *v18 = v9;
  v18[1] = sub_1A49F2D58;

  return v20(v15, a2);
}

uint64_t sub_1A49F2D58()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F2E54, 0, 0);
}

uint64_t sub_1A49F2E54()
{
  v1 = v0;
  v2 = v0[27];
  v4 = v1[25];
  v3 = v1[26];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v1[4];
    sub_1A49F3C9C(v4, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    v6 = MEMORY[0x1E699C5F0];
    if (v5 >> 60 == 15)
    {
      v7 = 1;
    }

    else
    {
      v12 = v1[17];
      v13 = v1[18];
      v15 = v1[15];
      v14 = v1[16];
      v16 = v1[3];
      v17 = v1[4];
      *v13 = v16;
      v13[1] = v17;
      (*(v12 + 104))(v13, *v6, v14);
      sub_1A3DB506C(v16, v17);
      sub_1A3D602A8(v16, v17);
      v18 = sub_1A524C634();
      v19 = PXLocalizedString(v18);

      sub_1A524C674();
      v20 = sub_1A524C634();
      v21 = PXLocalizedString(v20);

      sub_1A524C674();
      v22 = sub_1A52417F4();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      sub_1A52417E4();
      sub_1A3DB556C(v16, v17);
      v7 = 0;
    }

    v23 = v1[6];
    v24 = 1;
    v70 = *(v1[10] + 56);
    v70(v1[24], v7, 1, v1[9]);
    if (v23 >> 60 != 15)
    {
      v25 = v1[17];
      v26 = v1[18];
      v28 = v1[15];
      v27 = v1[16];
      v29 = v1[5];
      v30 = v1[6];
      *v26 = v29;
      v26[1] = v30;
      (*(v25 + 104))(v26, *MEMORY[0x1E699C5F0], v27);
      sub_1A3DB506C(v29, v30);
      sub_1A3D602A8(v29, v30);
      v31 = sub_1A524C634();
      v32 = PXLocalizedString(v31);

      sub_1A524C674();
      v33 = sub_1A524C634();
      v34 = PXLocalizedString(v33);

      sub_1A524C674();
      v35 = sub_1A52417F4();
      (*(*(v35 - 8) + 56))(v28, 1, 1, v35);
      sub_1A52417E4();
      sub_1A3DB556C(v29, v30);
      v24 = 0;
    }

    v36 = v1[8];
    v70(v1[23], v24, 1, v1[9]);
    if (v36)
    {
      v37 = v1[17];
      v38 = v1[18];
      v39 = v1[16];
      v40 = v1[8];
      *v38 = v1[7];
      v38[1] = v40;
      (*(v37 + 104))(v38, *MEMORY[0x1E699C5D0], v39);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v41 = v1 + 22;
    v42 = v1[24];
    v66 = v1[23];
    v67 = v1[22];
    v44 = v1[20];
    v43 = v1[21];
    v45 = v1[13];
    v46 = v1[14];
    v47 = v1[12];
    v48 = v1[10];
    v68 = v1[9];
    v69 = v1[19];
    (v70)(v67, 1, 1);
    (*(v45 + 104))(v46, *MEMORY[0x1E699C2A8], v47);
    v49 = MEMORY[0x1E699C540];
    sub_1A49F3D0C(v42, v43, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    sub_1A49F3D0C(v66, v44, &qword_1EB124FC0, v49);
    v50 = objc_allocWithZone(sub_1A5241854());
    v51 = sub_1A52417D4();
    sub_1A49F3D0C(v67, v69, &qword_1EB124FC0, v49);
    if ((*(v48 + 48))(v69, 1, v68) == 1)
    {
      sub_1A49F3C9C(*v41, &qword_1EB124FC0, MEMORY[0x1E699C540]);
      v41 = v1 + 23;
      v52 = v1 + 24;
      v53 = v1 + 19;
    }

    else
    {
      v55 = v1[10];
      v54 = v1[11];
      v56 = v1[9];
      (*(v55 + 32))(v54, v1[19], v56);
      sub_1A3C56BCC(0, &qword_1EB147580, MEMORY[0x1E699C540], MEMORY[0x1E69E6F90]);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1A52F8E10;
      (*(v55 + 16))(v58 + v57, v54, v56);
      sub_1A52417B4();
      (*(v55 + 8))(v54, v56);
      v52 = v1 + 23;
      v53 = v1 + 24;
    }

    v59 = *v53;
    v60 = *v52;
    v9 = v1[2];
    v61 = MEMORY[0x1E699C540];
    sub_1A49F3C9C(*v41, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    sub_1A49F3C9C(v60, &qword_1EB124FC0, v61);
    sub_1A49F3C9C(v59, &qword_1EB124FC0, v61);
    *v9 = v51;
    v11 = MEMORY[0x1E699C218];
  }

  else
  {
    v8 = v1[28];
    v9 = v1[2];
    v10 = *(v2 + 32);
    v10(v8, v4, v3);
    v10(v9, v8, v3);
    v11 = MEMORY[0x1E699C230];
  }

  v62 = *v11;
  v63 = sub_1A52417A4();
  (*(*(v63 - 8) + 104))(v9, v62, v63);

  v64 = v1[1];

  return v64();
}

uint64_t sub_1A49F37AC()
{
  v1 = sub_1A5246F24();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1A49F389C;

  return MEMORY[0x1EEE03F20]();
}

uint64_t sub_1A49F389C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A49F39D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A49F39D8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1A49EF53C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D244();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136315138;
    *(v0 + 16) = v9;
    v11 = v9;
    sub_1A3DBD9A0();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 24);

  (*(v13 + 8))(v12, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A49F3BD4()
{
  sub_1A52417A4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49F37AC();
}

uint64_t sub_1A49F3C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56BCC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A49F3D0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56BCC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A49F3D8C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EC1C0);
  __swift_project_value_buffer(v0, qword_1EB1EC1C0);
  return sub_1A5246F14();
}

uint64_t static PhotosFeedbackGenerativeStoryFactory.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = a6;
  *(v8 + 128) = a8;
  *(v8 + 328) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  v9 = sub_1A52411C4();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = MEMORY[0x1E69E6720];
  sub_1A49F507C(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_1A5241844();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  sub_1A49F507C(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v10);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = sub_1A52417C4();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_1A5244A24();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F40C0, 0, 0);
}

uint64_t sub_1A49F40C0()
{
  v1 = sub_1A5241744();
  v0[5] = v1;
  v0[6] = sub_1A49F6914(&qword_1EB124FD0, MEMORY[0x1E699C198]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v1);
  LOBYTE(v1) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  if (v1)
  {
    v3 = v0[16];
    v4 = v0[11];
    v5 = [v4 localIdentifier];
    v6 = sub_1A524C674();
    v8 = v7;

    v0[34] = v6;
    v0[35] = v8;
    v9 = sub_1A49F5DE4(v4, v3);
    v0[36] = v9;
    v0[37] = v10;
    if (v10 >> 60 != 15)
    {
      v56 = v10;
      v52 = v9;
      v22 = v0[14];
      if (v22)
      {
        sub_1A52447D4();
        v23 = sub_1A5244874();
      }

      else
      {
        v23 = 0;
      }

      v57 = v6;
      MEMORY[0x1A5907B60](v0[12], v0[13]);
      MEMORY[0x1A5907B60](10, 0xE100000000000000);
      v0[7] = 0x203A74706D6F7250;
      v0[8] = 0xE800000000000000;
      if (v22 && (v23 & 1) != 0)
      {
        v25 = v0[32];
        v24 = v0[33];
        v27 = v0[30];
        v26 = v0[31];
        v28 = v0[29];
        sub_1A52447D4();
        sub_1A5244894();

        (*(v27 + 32))(v24, v25, v28);
        (*(v27 + 104))(v26, *MEMORY[0x1E69C1090], v28);
        sub_1A49F6914(&qword_1EB147588, MEMORY[0x1E69C10B0]);
        v29 = sub_1A524C594();
        v30 = *(v27 + 8);
        v30(v26, v28);
        if ((v29 & 1) == 0)
        {
          sub_1A524E404();

          v31 = sub_1A5244A04();
          MEMORY[0x1A5907B60](v31);

          MEMORY[0x1A5907B60](10, 0xE100000000000000);
          MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53F7180);
        }

        v30(v0[33], v0[29]);
      }

      v32 = v0[25];
      v55 = v0[24];
      v33 = v0[22];
      v34 = v0[23];
      v36 = v0[20];
      v35 = v0[21];
      v54 = v35;
      (*(v0[27] + 104))();
      v37 = v0[8];
      *v34 = v0[7];
      v34[1] = v37;
      v53 = *(v33 + 104);
      v53(v34, *MEMORY[0x1E699C5D0], v35);
      v38 = *MEMORY[0x1E699C518];
      v39 = sub_1A52417F4();
      v40 = *(v39 - 8);
      (*(v40 + 104))(v36, v38, v39);
      v41 = *(v40 + 56);
      v41(v36, 0, 1, v39);
      sub_1A52417E4();
      v42 = sub_1A5241804();
      v51 = *(*(v42 - 8) + 56);
      v51(v32, 0, 1, v42);
      *v34 = v52;
      v34[1] = v56;
      v53(v34, *MEMORY[0x1E699C5F0], v54);
      v41(v36, 1, 1, v39);
      sub_1A3D602A8(v52, v56);
      sub_1A52417E4();
      v51(v55, 0, 1, v42);
      v43 = objc_allocWithZone(sub_1A5241774());
      v0[38] = sub_1A5241754();
      sub_1A49F507C(0, &qword_1EB120328, sub_1A49F6200, MEMORY[0x1E69E6F90]);
      sub_1A49F6200();
      v45 = v44;
      v46 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1A52FC9F0;
      v48 = v47 + v46;
      v49 = *(v45 + 48);
      sub_1A524C674();
      sub_1A5241864();
      sub_1A3C2DFA8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1A52F8E10;
      *(v50 + 32) = v57;
      *(v50 + 40) = v8;
      *(v48 + v49) = v50;
      sub_1A524C674();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1E57A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB1EC1C0);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Skipping feedback donation, couldn't generate image for feedback.";
LABEL_11:
      _os_log_impl(&dword_1A3C1C000, v12, v13, v15, v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EB1E57A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1A5246F24();
    __swift_project_value_buffer(v16, qword_1EB1EC1C0);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Skipping feedback donation, feature flag disabled.";
      goto LABEL_11;
    }
  }

  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[10];

  (*(v18 + 56))(v19, 1, 1, v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1A49F4B68()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1A49F4DAC;
  }

  else
  {

    v2 = sub_1A49F4C84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A49F4C84()
{
  v1 = v0[38];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[10];
  sub_1A3DB556C(v0[36], v0[37]);

  (*(v3 + 32))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = v0[1];

  return v6();
}

void sub_1A49F4DAC()
{
  if (qword_1EB1E57A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB1EC1C0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49F507C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A49F50E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1A3C5DCA4(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A49F5C88();
        v13 = v16;
      }

      result = sub_1A3D74B38(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1A49F5B24(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

void sub_1A49F51D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3C8BDD0();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PhotosFeedbackGenerativeStoryFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosFeedbackGenerativeStoryFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosFeedbackGenerativeStoryFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A49F554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1A3D60150;

  return static PhotosFeedbackGenerativeStoryFactory.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8);
}

unint64_t sub_1A49F5638(uint64_t a1)
{
  sub_1A5241874();
  sub_1A49F6914(&qword_1EB124FB8, MEMORY[0x1E699C658]);
  v2 = sub_1A524C4A4();

  return sub_1A49F56D0(a1, v2);
}

unint64_t sub_1A49F56D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5241874();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A49F6914(&qword_1EB147590, MEMORY[0x1E699C658]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1A49F5890(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A49F6980();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A49F5B24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1A49F5C88();
    result = v19;
    goto LABEL_8;
  }

  sub_1A49F5890(v16, a4 & 1);
  result = sub_1A3C5DCA4(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void *sub_1A49F5C88()
{
  v1 = v0;
  sub_1A49F6980();
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + 8 * v16);
        v21 = (*(v4 + 48) + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A49F5DE4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [a2 librarySpecificFetchOptions];
  v6 = [v4 fetchKeyCuratedAssetInAssetCollection:a1 referenceAsset:0 options:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 firstObject];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = PHCollection.title.getter();
  if (!v10)
  {
LABEL_9:

LABEL_10:
    return 0;
  }

  v11 = v10;
  v32 = v9;
  v12 = dispatch_semaphore_create(0);
  v33 = [objc_opt_self() defaultManager];
  v13 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v13 setSynchronous_];
  [v13 setResizeMode_];
  [v13 setDeliveryMode_];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  *&aBlock.tx = sub_1A49F6B14;
  *&aBlock.ty = v15;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1A3DD5B38;
  *&aBlock.d = &block_descriptor_323;
  v16 = _Block_copy(&aBlock);

  v17 = v12;
  v18 = v33;

  [v33 requestNewCGImageForAsset:v8 targetSize:1 contentMode:v13 options:v16 resultHandler:{400.0, 500.0}];
  _Block_release(v16);
  sub_1A524D704();
  swift_beginAccess();
  v19 = *(v14 + 16);
  if (v19)
  {
    v31 = v17;
    CGAffineTransformMakeScale(&v34, 1.0, -1.0);
    CGAffineTransformTranslate(&aBlock, &v34, 0.0, -500.0);
    type metadata accessor for PXGraphicsImageRenderer();
    v20 = v19;
    v21 = sub_1A4A048F0(400.0, 500.0);
    MEMORY[0x1EEE9AC00](v21);
    v26[2] = &aBlock;
    v26[3] = v20;
    v27 = xmmword_1A537BBC0;
    v28 = v32;
    v29 = v11;
    v30 = a1;
    v22 = sub_1A4A04928(sub_1A49F6B70, v26);

    v23 = UIImageJPEGRepresentation(v22, 0.5);
    if (v23)
    {
      v24 = v23;
      v32 = sub_1A5240EA4();

      return v32;
    }

    goto LABEL_9;
  }

  return 0;
}

void sub_1A49F6200()
{
  if (!qword_1EB124FB0)
  {
    sub_1A5241874();
    sub_1A3C2DFA8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124FB0);
    }
  }
}

unint64_t sub_1A49F6294(uint64_t a1)
{
  sub_1A49F6200();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A49F69E0();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A49F6AB0(v10, v6);
      result = sub_1A49F5638(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5241874();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A49F6454(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_1A5244A74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5244854();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  result = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v29 = v9;
    v30 = v7;
    v31 = v3;
    v32 = a2;

    sub_1A52447C4();
    v18 = sub_1A52451A4();

    sub_1A49F50E4(v18 & 1, 0, 0x4D79726575517369, 0xEF6465696669646FLL);
    sub_1A52447D4();
    v19 = sub_1A5244874();

    sub_1A49F50E4(v19 & 1, 0, 0xD000000000000017, 0x80000001A53F71D0);
    sub_1A52447C4();
    v20 = sub_1A5245194();

    sub_1A49F50E4(v20 & 1, 0, 0x4173497972657571, 0xEF73756F6769626DLL);
    sub_1A52447C4();
    v21 = sub_1A5245194();

    sub_1A49F50E4(v21 & 1, 0, 0xD000000000000010, 0x80000001A53F71F0);
    sub_1A52447D4();
    sub_1A5244884();

    (*(v11 + 104))(v13, *MEMORY[0x1E69C0FE8], v10);
    sub_1A49F6914(&qword_1EB124C90, MEMORY[0x1E69C1030]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v35 == v33 && v36 == v34)
    {
      v22 = v6;
      v23 = 1;
    }

    else
    {
      v22 = v6;
      v23 = sub_1A524EAB4() & 1;
    }

    v24 = *(v11 + 8);
    v24(v13, v10);
    v24(v16, v10);

    sub_1A49F50E4(v23, 0, 0x78696D65527369, 0xE700000000000000);
    sub_1A52447D4();
    v25 = v29;
    sub_1A52448A4();

    v26 = sub_1A5244A64();
    (*(v30 + 8))(v25, v22);
    v3 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v3;
    sub_1A49F5B24(v26, 0x745379726F6D656DLL, 0xEF6570795479726FLL, isUniquelyReferenced_nonNull_native);

    result = v35;
    v37 = v35;
    a2 = v32;
    LOBYTE(v3) = v31;
  }

  if ((v3 & 1) == 0)
  {
    sub_1A49F50E4(a2, 0, 0x69746172656E6567, 0xEE00656D69546E6FLL);
    return v37;
  }

  return result;
}

uint64_t sub_1A49F6914(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49F6980()
{
  if (!qword_1EB120420[0])
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EB120420);
    }
  }
}

void sub_1A49F69E0()
{
  if (!qword_1EB120478)
  {
    sub_1A5241874();
    sub_1A3C2DFA8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A49F6914(&qword_1EB124FB8, MEMORY[0x1E699C658]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120478);
    }
  }
}

uint64_t sub_1A49F6AB0(uint64_t a1, uint64_t a2)
{
  sub_1A49F6200();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49F6B14(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
  v5 = a1;

  return sub_1A524D714();
}

void sub_1A49F6B70(CGContext *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 64);
  v5 = v3[1];
  v6 = v3[2];
  *&transform.a = *v3;
  *&transform.c = v5;
  *&transform.tx = v6;
  CGContextConcatCTM(a1, &transform);
  sub_1A524D154();
  v7 = v3[1];
  v8 = v3[2];
  *&transform.a = *v3;
  *&transform.c = v7;
  *&transform.tx = v8;
  CGContextConcatCTM(a1, &transform);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v9 setAlignment_];
  sub_1A49F507C(0, &qword_1EB120270, sub_1A47A72A0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemFontOfSize_];
  v15 = *MEMORY[0x1E69DB688];
  v16 = MEMORY[0x1E69DB650];
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  v17 = *v16;
  *(inited + 56) = v9;
  *(inited + 64) = v17;
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v9;
  v21 = v17;
  *(inited + 72) = [v18 whiteColor];
  sub_1A47A8FDC(inited);
  swift_setDeallocating();
  sub_1A47A72A0();
  swift_arrayDestroy();
  v22 = [v4 subtitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1A524C674();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1A5907B60](v24, v26);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = swift_getObjectType();
  sub_1A3C56C30(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5[25] = swift_task_alloc();
  v6 = sub_1A52417A4();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A49F70C4, 0, 0);
}

uint64_t sub_1A49F70C4()
{
  v1 = sub_1A49F0DC8();
  v0[36] = v1;
  swift_beginAccess();
  v2 = *(v1 + 2);
  v3 = *(v1 + 4);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *v1;
    v54 = *(v1 + 1);
    v6 = *(v1 + 3);
    v7 = v0[32];
    v8 = v0[23];
    swift_getObjectType();
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
    sub_1A49F1248(v5, v54, v2, v6, v3);
    v10 = v2;
    v11 = sub_1A49FC098(v9);
    v12 = sub_1A49EF53C();
    v13 = *(v7 + 16);
    v14 = v0[31];
    if (v11)
    {
      v15 = v0[20];
      v13(v0[35], v12, v14);
      v16 = v15;
      v17 = sub_1A5246F04();
      v18 = sub_1A524D264();

      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[35];
      v21 = v0[31];
      v22 = v0[32];
      if (v19)
      {
        v23 = v0[19];
        v24 = swift_slowAlloc();
        swift_slowAlloc();
        *v24 = 136315394;
        v0[18] = v23;
        type metadata accessor for PXPhotosFeedbackType();
        sub_1A524C714();
        sub_1A3C2EF94();
      }

      (*(v22 + 8))(v20, v21);

      v53 = v0[1];

      return v53();
    }

    v13(v0[34], v12, v14);
    v25 = sub_1A5246F04();
    v26 = sub_1A524D264();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1A3C1C000, v25, v26, "Ignoring previous request because feedback controller does not match", v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
    }

    v28 = v0[34];
    v30 = v0[31];
    v29 = v0[32];

    (*(v29 + 8))(v28, v30);
    swift_beginAccess();
    v31 = *v1;
    v32 = *(v1 + 1);
    v33 = *(v1 + 2);
    v34 = *(v1 + 3);
    v35 = *(v1 + 4);
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    sub_1A49F129C(v31, v32, v33, v34, v35);
  }

  v37 = v0[32];
  v36 = v0[33];
  v38 = v0[31];
  v39 = v0[20];
  v40 = sub_1A49EF53C();
  (*(v37 + 16))(v36, v40, v38);
  v41 = v39;
  v42 = sub_1A5246F04();
  LOBYTE(v39) = sub_1A524D264();

  v43 = os_log_type_enabled(v42, v39);
  v44 = v0[32];
  v45 = v0[33];
  v46 = v0[31];
  if (v43)
  {
    v47 = v0[19];
    v48 = swift_slowAlloc();
    swift_slowAlloc();
    *v48 = 136315394;
    v0[17] = v47;
    type metadata accessor for PXPhotosFeedbackType();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  (*(v44 + 8))(v45, v46);
  v49 = swift_task_alloc();
  v0[37] = v49;
  *v49 = v0;
  v49[1] = sub_1A49F7718;
  v50 = v0[30];
  v51 = v0[20];

  return sub_1A49F7DC8(v50, v51);
}

uint64_t sub_1A49F7718()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F7814, 0, 0);
}

uint64_t sub_1A49F7814()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 184)) + 0x80))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [*(v0 + 160) uuid];
    v6 = sub_1A524C674();
    v8 = v7;

    if (v3 == v6 && v4 == v8)
    {
    }

    else
    {
      v10 = sub_1A524EAB4();

      if ((v10 & 1) == 0)
      {
        v11 = *(*(v0 + 184) + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(ObjectType, v11);
      }
    }
  }

  v13 = *(v0 + 288);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 184);
  v47 = *(v0 + 176);
  v48 = *(v0 + 168);
  v45 = *(v0 + 192);
  v46 = *(v0 + 160);
  v21 = sub_1A524CCB4();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  (*(v17 + 16))(v14, v15, v18);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v17 + 32))(v23 + v22, v14, v18);
  *(v23 + ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
  sub_1A3D4D930(0, 0, v19, &unk_1A537BC68, v23);

  v24 = [v46 uuid];
  v25 = sub_1A524C674();
  v27 = v26;

  (*((*MEMORY[0x1E69E7D40] & *v20) + 0x88))(v25, v27);
  v28 = v20 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController;
  v29 = *(v20 + OBJC_IVAR____TtC12PhotosUICore29PhotosFeedbackActionPerformer_feedbackController);
  *(v0 + 304) = v29;
  v30 = *(v28 + 1);
  *(v0 + 312) = v30;
  v31 = v46;
  v32 = v29;

  sub_1A49F1118(v46, 0, v29, v30, v48, v47, v0 + 16);
  v33 = *(v0 + 16);
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  v49 = *(v0 + 40);
  v36 = *(v0 + 56);
  swift_beginAccess();
  v37 = *v13;
  v38 = *(v13 + 8);
  v39 = *(v13 + 16);
  v40 = *(v13 + 24);
  v41 = *(v13 + 32);
  *v13 = v33;
  *(v13 + 8) = v34;
  *(v13 + 16) = v35;
  *(v13 + 24) = v49;
  *(v13 + 40) = v36;
  sub_1A49F129C(v37, v38, v39, v40, v41);
  sub_1A524CC54();
  *(v0 + 320) = sub_1A524CC44();
  v43 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A49F7BE4, v43, v42);
}

uint64_t sub_1A49F7BE4()
{
  v1 = v0[19];

  switch(v1)
  {
    case 3:
      v8 = v0[39];
      v9 = v0[30];
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, ObjectType, v8);
      break;
    case 2:
      v5 = v0[39];
      v6 = v0[30];
      v7 = swift_getObjectType();
      (*(v5 + 48))(v6, v7, v5);
      break;
    case 1:
      v2 = v0[39];
      v3 = v0[30];
      v4 = swift_getObjectType();
      (*(v2 + 40))(v3, 1, v4, v2);
      break;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A49F7D0C, 0, 0);
}

uint64_t sub_1A49F7D0C()
{
  (*(v0[27] + 8))(v0[30], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A49F7DC8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = sub_1A5241804();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = sub_1A52417C4();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = MEMORY[0x1E69E6720];
  sub_1A3C56C30(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  v3[10] = swift_task_alloc();
  v8 = sub_1A5241844();
  v3[11] = v8;
  v3[12] = *(v8 - 8);
  v3[13] = swift_task_alloc();
  sub_1A3C56C30(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v7);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_1A3C56C30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v7);
  v9 = swift_task_alloc();
  v3[18] = v9;
  v10 = sub_1A52411C4();
  v3[19] = v10;
  v3[20] = *(v10 - 8);
  v3[21] = swift_task_alloc();
  v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v3[22] = v12;
  *v12 = v3;
  v12[1] = sub_1A49F819C;

  return v14(v9, a2);
}

uint64_t sub_1A49F819C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A49F8298, 0, 0);
}

id sub_1A49F8298()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_1A49F8B84(v3, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A3C56C30(0, &qword_1EB120328, sub_1A49F6200, MEMORY[0x1E69E6F90]);
    sub_1A49F6200();
    v6 = v5 - 8;
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    v9 = v8 + v7;
    v10 = *(v6 + 56);
    sub_1A524C674();
    sub_1A5241864();
    sub_1A49F8BF4(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = [v4 localIdentifier];
    v13 = sub_1A524C674();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    *(v9 + v10) = v11;
    sub_1A49F6294(v8);
    swift_setDeallocating();
    sub_1A49F8C44(v9);
    swift_deallocClassInstance();
    v16 = sub_1A52453B4();
    v18 = v17;
    result = [v4 photoLibrary];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v67 = v18;
    v68 = v16;
    v21 = v0[3];
    type metadata accessor for PhotosFeedbackGenerativeStoryFactory();
    v22 = sub_1A49F50E0(v21, v20);
    v24 = v23;

    if (v24 >> 60 == 15)
    {
      v25 = 1;
    }

    else
    {
      v31 = v0[12];
      v32 = v0[13];
      v34 = v0[10];
      v33 = v0[11];
      *v32 = v22;
      v32[1] = v24;
      (*(v31 + 104))(v32, *MEMORY[0x1E699C5F0], v33);
      v35 = *MEMORY[0x1E699C518];
      v36 = sub_1A52417F4();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v34, v35, v36);
      (*(v37 + 56))(v34, 0, 1, v36);
      sub_1A52417E4();
      v25 = 0;
    }

    v39 = v0 + 17;
    v38 = v0[17];
    v62 = v0[16];
    v63 = v0[15];
    v64 = v38;
    v66 = v0[14];
    v60 = v0 + 14;
    v41 = v0[12];
    v40 = v0[13];
    v69 = v0;
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[8];
    v45 = v0[9];
    v46 = v0[7];
    v65 = v0[5];
    v61 = v0[4];
    v47 = *(v65 + 56);
    v47(v38, v25, 1);
    (*(v44 + 104))(v45, *MEMORY[0x1E699C2B8], v46);
    *v40 = v68;
    v40[1] = v67;
    (*(v41 + 104))(v40, *MEMORY[0x1E699C5D0], v43);
    v48 = v47;
    v49 = sub_1A52417F4();
    (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
    sub_1A52417E4();
    (v47)(v62, 0, 1, v61);
    (v47)(v63, 1, 1, v61);
    v50 = objc_allocWithZone(sub_1A5241854());
    v51 = sub_1A52417D4();
    sub_1A49F8CA0(v64, v66, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    if ((*(v65 + 48))(v66, 1, v61) == 1)
    {
      sub_1A49F8B84(*v39, &qword_1EB124FC0, MEMORY[0x1E699C540]);
      v39 = v60;
      v0 = v69;
    }

    else
    {
      v0 = v69;
      v52 = v69[16];
      v54 = v69[5];
      v53 = v69[6];
      v55 = v69[4];
      (*(v54 + 32))(v53, v69[14], v55);
      (*(v54 + 16))(v52, v53, v55);
      (v48)(v52, 0, 1, v55);
      sub_1A5241834();
      (*(v54 + 8))(v53, v55);
    }

    v56 = v0[2];
    sub_1A49F8B84(*v39, &qword_1EB124FC0, MEMORY[0x1E699C540]);
    *v56 = v51;
    v57 = *MEMORY[0x1E699C218];
    v58 = sub_1A52417A4();
    (*(*(v58 - 8) + 104))(v56, v57, v58);
  }

  else
  {
    v26 = v0[21];
    v27 = v0[2];
    v28 = *(v2 + 32);
    v28(v26, v3, v1);
    v28(v27, v26, v1);
    v29 = *MEMORY[0x1E699C230];
    v30 = sub_1A52417A4();
    (*(*(v30 - 8) + 104))(v27, v29, v30);
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_1A49F8ABC()
{
  sub_1A52417A4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49F37AC();
}

uint64_t sub_1A49F8B84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56C30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A49F8BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49F8C44(uint64_t a1)
{
  sub_1A49F6200();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49F8CA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56C30(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A49F8D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49F8D84@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for LemonadePeopleHomeGroupSection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A49F921C();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49F9B04(0, &qword_1EB147658, sub_1A49F921C);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v24 - v9;
  sub_1A49F9B60();
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  sub_1A49FB9B4(v1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeGroupSection);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_1A49FBFD0(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49FB9B4(v1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeGroupSection);
  v15 = swift_allocObject();
  sub_1A49FBFD0(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A5249584();
  sub_1A49F92F4();
  sub_1A49FB918(0, &qword_1EB147608, MEMORY[0x1E697F960]);
  sub_1A49FBEF0(&qword_1EB147628, sub_1A49F92F4);
  sub_1A49F9888();
  v16 = v27;
  sub_1A5243DC4();
  v17 = v26;
  v18 = *(v25 + 1);
  if (v18)
  {
    v19 = 0.4;
  }

  else
  {
    v19 = 1.0;
  }

  (*(v29 + 32))(v26, v16, v30);
  *(v17 + *(v8 + 44)) = v19;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  sub_1A49FB3DC(v17, v12);
  v22 = &v12[*(v28 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_1A3E07024;
  v22[2] = v21;
  sub_1A49FB45C();
  sub_1A524AA94();
  return sub_1A49FC038(v12, sub_1A49F9B60);
}

uint64_t type metadata accessor for LemonadePeopleHomeGroupSection()
{
  result = qword_1EB1E5850;
  if (!qword_1EB1E5850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A49F921C()
{
  if (!qword_1EB147598)
  {
    sub_1A49F92F4();
    sub_1A49FB918(255, &qword_1EB147608, MEMORY[0x1E697F960]);
    sub_1A49FBEF0(&qword_1EB147628, sub_1A49F92F4);
    sub_1A49F9888();
    v0 = sub_1A5243DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147598);
    }
  }
}

void sub_1A49F92F4()
{
  if (!qword_1EB1475A0)
  {
    sub_1A49F9B04(255, &qword_1EB1475A8, sub_1A49F9390);
    sub_1A49F9680();
    v0 = sub_1A52423F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1475A0);
    }
  }
}

void sub_1A49F9390()
{
  if (!qword_1EB1475B0)
  {
    sub_1A49F9424();
    sub_1A49FBEF0(&qword_1EB1475F0, sub_1A49F9424);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1475B0);
    }
  }
}

void sub_1A49F9424()
{
  if (!qword_1EB1475B8)
  {
    sub_1A49F94B8();
    sub_1A49FBEF0(&qword_1EB1475E8, sub_1A49F94B8);
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1475B8);
    }
  }
}

void sub_1A49F94B8()
{
  if (!qword_1EB1475C0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    sub_1A49F95F8();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1475C0);
    }
  }
}

void sub_1A49F954C()
{
  if (!qword_1EB1475D0)
  {
    sub_1A5243364();
    sub_1A49F95D8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1475D0);
    }
  }
}

unint64_t sub_1A49F95F8()
{
  result = qword_1EB1475E0;
  if (!qword_1EB1475E0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1475E0);
  }

  return result;
}

unint64_t sub_1A49F9680()
{
  result = qword_1EB1475F8;
  if (!qword_1EB1475F8)
  {
    sub_1A49F9B04(255, &qword_1EB1475A8, sub_1A49F9390);
    sub_1A49FBEF0(&qword_1EB147600, sub_1A49F9390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1475F8);
  }

  return result;
}

void sub_1A49F9780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49F97F4()
{
  if (!qword_1EB147620)
  {
    type metadata accessor for LemonadeSocialGroupSectionProvider(255);
    sub_1A49FBEF0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147620);
    }
  }
}

unint64_t sub_1A49F9888()
{
  result = qword_1EB147630;
  if (!qword_1EB147630)
  {
    sub_1A49FB918(255, &qword_1EB147608, MEMORY[0x1E697F960]);
    sub_1A49F9924();
    sub_1A49F9A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147630);
  }

  return result;
}

unint64_t sub_1A49F9924()
{
  result = qword_1EB147638;
  if (!qword_1EB147638)
  {
    sub_1A49FB794(255, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49F99D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147638);
  }

  return result;
}

unint64_t sub_1A49F99D0()
{
  result = qword_1EB147640;
  if (!qword_1EB147640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147640);
  }

  return result;
}

unint64_t sub_1A49F9A24()
{
  result = qword_1EB147648;
  if (!qword_1EB147648)
  {
    sub_1A49F974C(255);
    sub_1A49FBEF0(&qword_1EB147650, sub_1A49F97F4);
    sub_1A49FBEF0(&qword_1EB1220A8, sub_1A4558B3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147648);
  }

  return result;
}

void sub_1A49F9B04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49F9B60()
{
  if (!qword_1EB147660)
  {
    sub_1A49F9B04(255, &qword_1EB147658, sub_1A49F921C);
    sub_1A49FB7E8(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147660);
    }
  }
}

uint64_t sub_1A49F9C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1A5243334();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadePeopleHomeGroupSection();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v8;
  v9 = sub_1A5242D14();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = sub_1A52486A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0;
  if (*(a1 + 3) == 1)
  {
    v19 = sub_1A3C38BD4();
  }

  v34 = v20;
  v35 = v19;
  sub_1A49FB1A4(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v18);
  v21 = sub_1A5248684();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    sub_1A49FB1A4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v14);
    v22 = v31;
    (*(v31 + 104))(v11, *MEMORY[0x1E69C2210], v9);
    sub_1A49FBEF0(&qword_1EB129148, MEMORY[0x1E69C2218]);
    sub_1A524C594();
    v23 = *(v22 + 8);
    v23(v11, v9);
    v23(v14, v9);
  }

  v24 = v33;
  sub_1A49FB9B4(a1, v33, type metadata accessor for LemonadePeopleHomeGroupSection);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  sub_1A49FBFD0(v24, v26 + v25, type metadata accessor for LemonadePeopleHomeGroupSection);
  v27 = a1;
  v28 = v36;
  sub_1A49FB9B4(v27, v36, type metadata accessor for LemonadePeopleHomeGroupSection);
  v29 = swift_allocObject();
  sub_1A49FBFD0(v28, v29 + v25, type metadata accessor for LemonadePeopleHomeGroupSection);
  (*(v37 + 104))(v39, *MEMORY[0x1E69C2410], v38);
  sub_1A5247BA4();
  sub_1A49F9B04(0, &qword_1EB1475A8, sub_1A49F9390);
  sub_1A49F9680();
  return sub_1A52423E4();
}

void sub_1A49FA1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadePeopleHomeGroupSection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49F9390();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = sub_1A5249584();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A49FBAC0();
  v12 = *(v11 + 44);
  v19 = a1;
  sub_1A49FB9B4(a1, v7, type metadata accessor for LemonadePeopleHomeGroupSection);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1A49FBFD0(v7, v14 + v13, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49F94B8();
  sub_1A49FBEF0(&qword_1EB1475E8, sub_1A49F94B8);

  sub_1A472916C(v15, sub_1A49FBB28, 0, 0, sub_1A49FBD78, v14, &v10[v12]);
  if (*(a1 + 3))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  sub_1A49FBFD0(v10, a2, sub_1A49F9390);
  sub_1A49F9B04(0, &qword_1EB1475A8, sub_1A49F9390);
  *(a2 + *(v17 + 36)) = v16;
}

void sub_1A49FA450(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v49 = a2;
  v2 = type metadata accessor for LemonadeTitleDisclosureImage();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49F95D8(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v48 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v51 = v43 - v11;
  v12 = sub_1A5243334();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A5243364();
  v16 = *(v45 - 8);
  v43[1] = v16;
  MEMORY[0x1EEE9AC00](v45);
  v50 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  sub_1A3C38BD4();
  (*(v13 + 104))(v15, *MEMORY[0x1E69C2410], v12);
  v43[0] = v20;
  sub_1A5243344();
  sub_1A5249434();
  v21 = sub_1A524A444();
  v23 = v22;
  v25 = v24;
  v44 = v26;
  sub_1A43F5FAC(v15);
  v27 = v46;
  sub_1A43F6020(v15, v46);
  if (*v47)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  sub_1A49FBFD0(v27, v9, type metadata accessor for LemonadeTitleDisclosureImage);
  *&v9[*(v5 + 44)] = v28;
  v29 = v51;
  sub_1A49FBFD0(v9, v51, sub_1A49F95D8);
  v30 = *(v16 + 16);
  v31 = v50;
  v32 = v20;
  v33 = v45;
  v30(v50, v32, v45);
  v53 = v25 & 1;
  v34 = v29;
  v35 = v48;
  sub_1A49FB9B4(v34, v48, sub_1A49F95D8);
  v52 = 1;
  v36 = v49;
  v30(v49, v31, v33);
  sub_1A49F954C();
  v38 = v37;
  v39 = &v36[*(v37 + 48)];
  v40 = v53;
  *v39 = v21;
  *(v39 + 1) = v23;
  v39[16] = v40;
  *(v39 + 3) = v44;
  sub_1A49FB9B4(v35, &v36[*(v37 + 64)], sub_1A49F95D8);
  v41 = &v36[*(v38 + 80)];
  v42 = v52;
  *v41 = 0;
  v41[8] = v42;
  sub_1A3E75E68(v21, v23, v40);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49FA91C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_1A49F8D20(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v50 - v4;
  sub_1A49F974C(0);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  sub_1A49FB918(0, &qword_1EB147690, MEMORY[0x1E697F948]);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v17 = sub_1A5249234();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(v21 + 16);
  if (*(a1 + 3) != 1)
  {
    v37 = *(v21 + 40);
    v38 = *(a1 + 1);
    v39 = *(a1 + 2);
    v40 = v37;
    v53 = v22;
    sub_1A4965B64(v53, v37, v38, v39, 1, v12);
    sub_1A49FB9B4(v12, v9, type metadata accessor for LemonadeSocialGroupSectionProvider);
    v41 = *(a1 + 8);
    v42 = sub_1A52442E4();
    v43 = v54;
    (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
    v44 = *(a1 + 24);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v45 = sub_1A49FBEF0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);

    v46 = sub_1A3C5A374();
    sub_1A437CBD4(v9, v41, v43, v44, 0, &v58, 0, 0, v55, v46 & 1, v7, v45);
    swift_getKeyPath();
    v47 = sub_1A49A67A0();
    v49 = *v47;
    v48 = *(v47 + 1);
    *&v58 = v49;
    *(&v58 + 1) = v48;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v55 = v14;
  v23 = v22;
  PXDisplayCollectionDetailedCountsMake(v23);
  v25 = v24;
  v26 = a1 + *(type metadata accessor for LemonadePeopleHomeGroupSection() + 52);
  v27 = *(v26 + 8);
  v28 = *(v26 + 24);
  if (*(v26 + 32) != 1)
  {
    v29 = *v26;
    v51 = *(v26 + 16);
    v30 = v51;

    sub_1A524D254();
    v54 = v23;
    v31 = sub_1A524A014();
    v53 = v25;
    v32 = v31;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v29, v27, v30, v28, 0);
    v33 = *(v18 + 8);
    v33(v20, v17);
    v52 = *(&v58 + 1);

    sub_1A524D254();
    v34 = sub_1A524A014();
    v25 = v53;
    sub_1A5246DF4();

    v23 = v54;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v29, v27, v51, v28, 0);
    v33(v20, v17);
    v28 = *(&v59 + 1);
    v27 = v52;
  }

  v35 = sub_1A524A064();
  *v16 = v25;
  v16[8] = v35;
  *(v16 + 2) = 0;
  *(v16 + 3) = v27;
  *(v16 + 4) = 0;
  *(v16 + 5) = v28;
  v16[48] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1A49FB794(0, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  sub_1A49F9924();
  sub_1A49F9A24();
  v36 = v25;
  sub_1A5249744();
}

void sub_1A49FB018(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomeGroupSection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A49FA91C(v4, a1);
}

uint64_t sub_1A49FB088@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 8) = a5;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  v9 = type metadata accessor for LemonadePeopleHomeGroupSection();
  v10 = v9[11];
  *(a8 + v10) = swift_getKeyPath();
  v11 = MEMORY[0x1E697DCB8];
  sub_1A49F8D20(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = v9[12];
  *(a8 + v12) = swift_getKeyPath();
  sub_1A49F8D20(0, &qword_1EB128A50, MEMORY[0x1E697E730], v11);
  swift_storeEnumTagMultiPayload();
  v13 = a8 + v9[13];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  return result;
}

uint64_t sub_1A49FB1A4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A49F8D20(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A455A724(v8, &v20 - v15, a1, a2, v13, sub_1A49F8D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A49FB3DC(uint64_t a1, uint64_t a2)
{
  sub_1A49F9B04(0, &qword_1EB147658, sub_1A49F921C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A49FB45C()
{
  result = qword_1EB147668;
  if (!qword_1EB147668)
  {
    sub_1A49F9B60();
    sub_1A49FB4DC();
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147668);
  }

  return result;
}

unint64_t sub_1A49FB4DC()
{
  result = qword_1EB147670;
  if (!qword_1EB147670)
  {
    sub_1A49F9B04(255, &qword_1EB147658, sub_1A49F921C);
    sub_1A49FBEF0(&qword_1EB147678, sub_1A49F921C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147670);
  }

  return result;
}

void sub_1A49FB5EC()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePhotoLibraryContext();
    if (v1 <= 0x3F)
    {
      sub_1A49FB794(319, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
      if (v2 <= 0x3F)
      {
        sub_1A49F8D20(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A49F8D20(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A49FB7E8(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
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

void sub_1A49FB794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49FB7E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49FB838()
{
  result = qword_1EB147680;
  if (!qword_1EB147680)
  {
    sub_1A49F9780(255, &qword_1EB147688, sub_1A49F9B60, MEMORY[0x1E697CBE8]);
    sub_1A49FB45C();
    sub_1A49FBEF0(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147680);
  }

  return result;
}

void sub_1A49FB918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49FB794(255, &qword_1EB147610, &type metadata for LemonadeSocialGroupPlaceholderView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v7 = v6;
    sub_1A49F974C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A49FB9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49FBA3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomeGroupSection() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A49FBAC0()
{
  if (!qword_1EB147698)
  {
    sub_1A49F9424();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147698);
    }
  }
}

void sub_1A49FBB28(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A52492D4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A49FBF38();
  sub_1A49FA450(v3, (a1 + *(v4 + 44)));
}

uint64_t objectdestroyTm_90()
{
  v1 = type metadata accessor for LemonadePeopleHomeGroupSection();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_1A49F8D20(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_1A49F8D20(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[13];
  sub_1A3D35A84(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49FBD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomeGroupSection() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16);
  LOBYTE(v14) = 10;

  v5 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v7 = v6;
  v13 = 2;
  type metadata accessor for LemonadeSocialGroupsShelfProvider();
  sub_1A49FBEF0(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
  sub_1A414D2C8(v4, v5, v7, &v13, &v14);
  v8 = v15;
  v9 = v16;
  *a1 = v14;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, 0, 1, v10);
}

uint64_t sub_1A49FBEF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49FBF38()
{
  if (!qword_1EB1476A0)
  {
    sub_1A49F8D20(255, &qword_1EB1475C8, sub_1A49F954C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1476A0);
    }
  }
}

uint64_t sub_1A49FBFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49FC038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49FC098(void *a1)
{
  if (!a1 || !swift_dynamicCastUnknownClass())
  {
    return 0;
  }

  sub_1A3C7B6A4();
  v2 = a1;
  v3 = sub_1A524DBF4();

  return v3 & 1;
}

uint64_t static LemonadeCollectionCustomizationPeopleModelUtilities.initialString(for:changeToBeMade:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!v3 || (v5 = [v3 name]) == 0)
  {
LABEL_7:
    if (v4 != 2 && (v4 & 1) != 0)
    {
      return 0;
    }

    v11 = [*(a1 + OBJC_IVAR___PXPeopleNamingItem_title) string];
    v7 = sub_1A524C674();

    return v7;
  }

  v6 = v5;
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  return v7;
}

id static LemonadeCollectionCustomizationPeopleModelUtilities.initialResultItem(for:person:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (v4 = [v3 contact]) == 0 || (v5 = v4, type metadata accessor for PeopleNamingItem(), (result = PeopleNamingItem.__allocating_init(contact:searchString:)(v5)) == 0))
  {
    type metadata accessor for PeopleNamingItem();
    return PeopleNamingItem.__allocating_init(person:searchString:)(a2);
  }

  return result;
}

uint64_t LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1A49FC350(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A49FC3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1A49FC43C()
{
  if (!qword_1EB1476A8)
  {
    sub_1A49FC6C0(255, &qword_1EB13FB68, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for LemonadeCollectionCustomizationPeopleModel);
    sub_1A49FC4CC();
    v0 = type metadata accessor for LemonadeCollectionCustomizationView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1476A8);
    }
  }
}

unint64_t sub_1A49FC4CC()
{
  result = qword_1EB13FB78;
  if (!qword_1EB13FB78)
  {
    sub_1A49FC6C0(255, &qword_1EB13FB68, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for LemonadeCollectionCustomizationPeopleModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FB78);
  }

  return result;
}

id sub_1A49FC57C(void *a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v9 = a2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v13 - v10);
  sub_1A49FC728(0, a3, a4, a5, a4);
  sub_1A478C8F8(a1, v11);
  return PXSwiftUIHostingViewController.__allocating_init(rootView:)(v11);
}

void sub_1A49FC630()
{
  if (!qword_1EB1476C0)
  {
    sub_1A49FC6C0(255, &qword_1EB12D338, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel);
    sub_1A3E791CC();
    v0 = type metadata accessor for LemonadeCollectionCustomizationView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1476C0);
    }
  }
}

void sub_1A49FC6C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A49FC728(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A49FC7A8(a4, a5);
    v8 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A49FC7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49FC884(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  *(v2 + v5) = sub_1A4A0357C(MEMORY[0x1E69E7CC0]);
  if (*(v4 + 16))
  {
    type metadata accessor for TTRWorkflowDataSource();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C33378(a2);

  type metadata accessor for TTRWorkflowViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A49FCBA4(__int128 *a1)
{
  v2 = *(a1 + 2);
  v5 = *a1;
  v6 = v2;
  sub_1A457FC00(&v5, &v7);
  if (*(&v7 + 1))
  {
    v3 = objc_allocWithZone(type metadata accessor for TTRStepViewController());
    v4 = sub_1A49FE044(&v7);
    [v1 pushViewController:v4 animated:1];
  }
}

void sub_1A49FCC70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v10[4] = sub_1A3EECF0C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3C2E0D0;
  v10[3] = &block_descriptor_324;
  v8 = _Block_copy(v10);
  sub_1A3C66EE8(a2);
  v9 = a1;

  [v3 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1A49FCE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1A52411C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v14 = sub_1A52411A4();
  (*(v11 + 8))(v13, v10);
  [a1 setTag_];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + v16);
  *(v5 + v16) = 0x8000000000000000;
  sub_1A4A032C4(sub_1A463AC80, v15, v14, isUniquelyReferenced_nonNull_native);
  *(v5 + v16) = v19;
  swift_endAccess();
  return [a1 addTarget:v5 action:sel_handleCachedControl_ forControlEvents:a2];
}

uint64_t sub_1A49FCFD4(void *a1)
{
  v3 = [a1 tag];
  v4 = OBJC_IVAR____TtC12PhotosUICore25TTRWorkflowViewController_actionCache;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (*(v6 + 16))
  {
    result = sub_1A3CAB9BC(v3);
    if (v7)
    {
      v8 = *(*(v6 + 56) + 16 * result);
      v9 = a1;

      v8(&v9);
    }
  }

  return result;
}

id sub_1A49FD2B0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD324()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB958]];
    [v4 setFont_];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A49FD410()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setLineBreakMode_];
    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A49FD55C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRHeaderView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD5CC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A49FD67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton);
  }

  else
  {
    v40 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = objc_opt_self();
    v5 = [v4 currentTraitCollection];
    v6 = [v5 userInterfaceStyle] == 2;

    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.462745098 green:0.462745098 blue:0.501960784 alpha:dbl_1A537BF60[v6]];
    [v3 setBackgroundColor_];

    v8 = [objc_opt_self() boldSystemFontOfSize_];
    v9 = [objc_opt_self() configurationWithFont_];

    v10 = sub_1A524C634();
    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    if (v11)
    {
      v12 = [v4 currentTraitCollection];
      v13 = [v12 userInterfaceStyle];

      v14 = 0x1E69DC000uLL;
      v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      if (v13 == 2)
      {
        v16 = 0.921568627;
        v17 = 0.960784314;
      }

      else
      {
        v16 = 0.235294118;
        v17 = 0.262745098;
      }

      v19 = [v15 initWithDisplayP3Red:v16 green:v16 blue:v17 alpha:0.6];
      v20 = [v11 imageWithTintColor:v19 renderingMode:2];

      v18 = v20;
    }

    else
    {
      v18 = 0;
      v14 = 0x1E69DC000;
    }

    v21 = v18;
    [v3 setImage_forState_];
    v22 = [v4 &selRef_decodeBoolForKey_ + 6];
    v23 = [v22 userInterfaceStyle];

    v24 = objc_allocWithZone(*(v14 + 2184));
    if (v23 == 2)
    {
      v25 = 0.921568627;
      v26 = 0.960784314;
    }

    else
    {
      v25 = 0.235294118;
      v26 = 0.262745098;
    }

    v27 = [v24 &selRef:v25 symbolSystemNamesForItem:{v25, v26, 0.6} + 2];
    [v3 setTintColor_];

    v28 = v3;
    v29 = sub_1A524C634();
    [v28 setAccessibilityHint_];

    [v28 _setCornerRadius_];
    [v28 addTarget:v0 action:sel_handleClose forControlEvents:64];
    v30 = objc_opt_self();
    sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1A52F9DE0;
    v32 = [v28 heightAnchor];
    v33 = [v32 constraintEqualToConstant_];

    *(v31 + 32) = v33;
    v34 = [v28 widthAnchor];

    v35 = [v34 constraintEqualToConstant_];
    *(v31 + 40) = v35;
    sub_1A3C52C70(0, &qword_1EB126A30);
    v36 = sub_1A524CA14();

    [v30 activateConstraints_];

    v37 = *(v0 + v40);
    *(v0 + v40) = v28;
    v2 = v28;

    v1 = 0;
  }

  v38 = v1;
  return v2;
}

id sub_1A49FDB9C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    v6 = [v5 currentTraitCollection];
    v7 = [v6 userInterfaceStyle] == 2;

    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.462745098 green:0.462745098 blue:0.501960784 alpha:dbl_1A537BF60[v7]];
    [v4 setBackgroundColor_];

    v9 = sub_1A524C634();
    v10 = [objc_opt_self() systemImageNamed_];

    if (v10)
    {
      v11 = [v5 currentTraitCollection];
      v12 = [v11 userInterfaceStyle];

      v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      if (v12 == 2)
      {
        v14 = 0.921568627;
        v15 = 0.960784314;
      }

      else
      {
        v14 = 0.235294118;
        v15 = 0.262745098;
      }

      v17 = [v13 initWithDisplayP3Red:v14 green:v14 blue:v15 alpha:0.6];
      v16 = [v10 imageWithTintColor:v17 renderingMode:2];
    }

    else
    {
      v16 = 0;
    }

    [v4 setImage:v16 forState:0];
    v18 = [v5 currentTraitCollection];
    v19 = [v18 userInterfaceStyle];

    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v19 == 2)
    {
      v21 = 0.921568627;
      v22 = 0.960784314;
    }

    else
    {
      v21 = 0.235294118;
      v22 = 0.262745098;
    }

    v23 = [v20 initWithDisplayP3Red:v21 green:v21 blue:v22 alpha:0.6];
    [v4 setTintColor_];

    v24 = v4;
    v25 = sub_1A524C634();
    [v24 setAccessibilityHint_];

    [v24 _setCornerRadius_];
    [v24 addTarget:v0 action:sel_handleBack forControlEvents:64];
    v26 = objc_opt_self();
    sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A52F9DE0;
    v28 = [v24 heightAnchor];
    v29 = [v28 constraintEqualToConstant_];

    *(v27 + 32) = v29;
    v30 = [v24 widthAnchor];

    v31 = [v30 constraintEqualToConstant_];
    *(v27 + 40) = v31;
    sub_1A3C52C70(0, &qword_1EB126A30);
    v32 = sub_1A524CA14();

    [v26 activateConstraints_];

    v33 = *(v0 + v1);
    *(v0 + v1) = v24;
    v3 = v24;

    v2 = 0;
  }

  v34 = v2;
  return v3;
}

id sub_1A49FE044(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView] = 0;
  v5 = *(a1 + 6);
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton] = 0;
  v6 = &v1[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController_step];
  *v6 = v2;
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 2) = a1[2];
  *(v6 + 6) = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRStepViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A49FE118()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TTRStepViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1A49FE298();
  sub_1A49FE820();
  sub_1A49FF504();
  sub_1A49FD324();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49FE298()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1A49FD2B0();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FF960;
  v6 = [*&v0[v4] leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 leadingAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v0[v4] trailingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [*&v0[v4] bottomAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v18 bottomAnchor];

  v21 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v21;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v22 = sub_1A524CA14();

  [v19 activateConstraints_];

  v23 = [objc_opt_self() effectWithStyle_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v25 = v24;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v25 layer];
  [v26 setCornerRadius_];

  [v25 setClipsToBounds_];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 addSubview_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A531C940;
  v30 = [v25 topAnchor];
  v31 = [*&v0[v4] topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v25 leadingAnchor];
  v34 = [*&v0[v4] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v29 + 40) = v35;
  v36 = [v25 trailingAnchor];
  v37 = [*&v0[v4] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v29 + 48) = v38;
  v39 = [v25 bottomAnchor];

  v40 = [*&v0[v4] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v29 + 56) = v41;
  v42 = sub_1A524CA14();

  [v19 activateConstraints_];
}

void sub_1A49FE820()
{
  v1 = sub_1A49FD2B0();
  v2 = [v1 safeAreaLayoutGuide];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v3;
  v5 = sub_1A49FD324();
  [v4 addSubview_];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = sub_1A49FD67C();
  [v7 addSubview_];

  v9 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9DE0;
  v11 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton;
  v12 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton] topAnchor];
  v13 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView;
  v14 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView] topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:10.0];

  *(v10 + 32) = v15;
  v16 = [*&v0[v11] trailingAnchor];
  v17 = [*&v0[v13] trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

  *(v10 + 40) = v18;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v19 = sub_1A524CA14();

  v106 = v9;
  [v9 activateConstraints_];

  v20 = [v0 navigationController];
  v21 = &unk_1A52FF000;
  if (v20 && ((v22 = v20, v23 = [v20 viewControllers], v22, sub_1A3C52C70(0, &qword_1EB126B10), v24 = sub_1A524CA34(), v23, v24 >> 62) ? (v25 = sub_1A524E2B4()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25 > 1))
  {
    v48 = [v0 navigationController];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 navigationBar];

      v51 = [v50 topItem];
      if (v51)
      {
        [v51 setBackBarButtonItem_];
      }
    }

    v52 = [v0 view];
    if (!v52)
    {
      goto LABEL_25;
    }

    v53 = v52;
    v54 = sub_1A49FDB9C();
    [v53 addSubview_];

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1A52FF960;
    v56 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
    v57 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] topAnchor];
    v58 = [v2 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:64.0];

    *(v55 + 32) = v59;
    v60 = [*&v0[v56] leadingAnchor];
    v61 = [v2 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:20.0];

    *(v55 + 40) = v62;
    v63 = [*&v0[v56] trailingAnchor];
    v64 = [v2 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:-20.0];

    *(v55 + 48) = v65;
    v66 = sub_1A524CA14();

    [v106 activateConstraints_];

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1A52F9DE0;
    v68 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton;
    v69 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton] topAnchor];
    v70 = [*&v0[v13] topAnchor];
    v71 = [v69 constraintEqualToAnchor:v70 constant:10.0];

    *(v67 + 32) = v71;
    v44 = (v67 + 40);
    v45 = [*&v0[v68] leadingAnchor];
    v46 = [*&v0[v13] leadingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:10.0];
  }

  else
  {
    v26 = [v0 view];
    if (!v26)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = sub_1A49FD55C();
    [v27 addSubview_];

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A531E190;
    v30 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView;
    v31 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView] topAnchor];
    v32 = [*&v0[v13] topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];

    *(v29 + 32) = v33;
    v34 = [*&v0[v30] leadingAnchor];
    v35 = [v2 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:20.0];

    *(v29 + 40) = v36;
    v37 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel;
    v38 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] topAnchor];
    v39 = [*&v0[v30] bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:32.0];

    *(v29 + 48) = v40;
    v41 = [*&v0[v37] leadingAnchor];
    v42 = [v2 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:20.0];

    *(v29 + 56) = v43;
    v44 = (v29 + 64);
    v45 = [*&v0[v37] trailingAnchor];
    v46 = [v2 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-20.0];
    v21 = &unk_1A52FF000;
  }

  v72 = v47;

  *v44 = v72;
  v73 = sub_1A524CA14();

  [v106 activateConstraints_];

  v74 = [v0 view];
  if (!v74)
  {
    goto LABEL_22;
  }

  v75 = v74;
  v76 = sub_1A49FD410();
  [v75 addSubview_];

  v77 = swift_allocObject();
  *(v77 + 16) = v21[150];
  v78 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel;
  v79 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel] topAnchor];
  v80 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel] bottomAnchor];
  v81 = [v79 &selRef_containerView + 6];

  *(v77 + 32) = v81;
  v82 = [*&v0[v78] leadingAnchor];
  v83 = [v2 leadingAnchor];
  v84 = [v82 &selRef_containerView + 6];

  *(v77 + 40) = v84;
  v85 = [*&v0[v78] trailingAnchor];
  v86 = [v2 trailingAnchor];
  v87 = [v85 &selRef_containerView + 6];

  *(v77 + 48) = v87;
  v88 = sub_1A524CA14();

  [v106 activateConstraints_];

  v89 = [v0 view];
  if (!v89)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v90 = v89;
  v91 = sub_1A49FD5CC();
  [v90 addSubview_];

  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1A531C940;
  v93 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView;
  v94 = [*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView] topAnchor];
  v95 = [*&v0[v78] bottomAnchor];
  v96 = [v94 &selRef_containerView + 6];

  *(v92 + 32) = v96;
  v97 = [*&v0[v93] leadingAnchor];
  v98 = [v2 leadingAnchor];
  v99 = [v97 &selRef_containerView + 6];

  *(v92 + 40) = v99;
  v100 = [*&v0[v93] trailingAnchor];
  v101 = [v2 trailingAnchor];
  v102 = [v100 &selRef_containerView + 6];

  *(v92 + 48) = v102;
  v103 = [*&v0[v93] bottomAnchor];
  v104 = [v2 bottomAnchor];
  v105 = [v103 &selRef_containerView + 6];

  *(v92 + 56) = v105;
  v107 = sub_1A524CA14();

  [v106 activateConstraints_];
}

uint64_t sub_1A49FF504()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController_step + 48);
  if (*(result + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A4A008BC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v59 = a5;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v52 = a1;
  v11 = MEMORY[0x1E69E6720];
  sub_1A3C2A5FC(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = v50 - v13;
  v51 = sub_1A524DD04();
  v50[3] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50[2] = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A5FC(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v11);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v50[0] = v50 - v16;
  v54 = sub_1A524DE34();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a8;
  v19 = a8[1];
  v21 = a8[2];
  sub_1A3C52C70(0, &qword_1EB126570);
  sub_1A3C52C70(0, &qword_1EB126590);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = v20;
  v23[6] = v19;
  v23[7] = v21;
  sub_1A3C66EE8(a6);
  sub_1A40C7F38(v20, v19);
  sub_1A524DC64();
  v50[1] = sub_1A524DE74();
  v60 = v18;
  sub_1A524DE14();
  v24 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v25 = sub_1A524C634();
  v56 = [v24 initWithString_];

  if (v59)
  {
    v26 = [objc_opt_self() whiteColor];
    v27 = [v26 colorWithAlphaComponent_];
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithDisplayP3Red:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  }

  sub_1A3C2A5FC(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v29 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v30 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 40) = v27;
  v31 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v30;
  *(inited + 72) = v31;
  v32 = objc_opt_self();
  v33 = *MEMORY[0x1E69DB970];
  v34 = v29;
  v52 = v27;
  v35 = v31;
  v36 = [v32 systemFontOfSize:17.0 weight:v33];
  *(inited + 104) = sub_1A3C52C70(0, &qword_1EB120610);
  *(inited + 80) = v36;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1A3C29EDC(&unk_1EB1208B0, type metadata accessor for Key);
  v37 = sub_1A524C3D4();

  v38 = v56;
  [v38 addAttributes:v37 range:{0, objc_msgSend(v38, sel_length)}];

  v39 = v50[0];
  v56 = v38;
  sub_1A5240834();
  v40 = sub_1A52407E4();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_1A524DD34();
  if (v58)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v42 = sub_1A524C634();
    v43 = [v41 initWithString_];

    v44 = [objc_opt_self() whiteColor];
    v45 = [v44 colorWithAlphaComponent_];

    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1A52F8E10;
    *(v46 + 32) = v34;
    *(v46 + 64) = v30;
    *(v46 + 40) = v45;
    v47 = v34;
    v48 = v45;
    sub_1A3C8BCC0(v46);
    swift_setDeallocating();
    sub_1A3FE17B0(v46 + 32);
    v49 = sub_1A524C3D4();

    [v43 addAttributes:v49 range:{0, objc_msgSend(v43, sel_length)}];
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A014FC(void *a1, uint64_t a2, void (*a3)(void *, id))
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x60);
      v9 = Strong;
      v10 = a1;
      v11 = v8();
      a3(v11, [v6 isOn]);
    }
  }
}

id sub_1A4A01600()
{
  sub_1A3C2A5FC(0, &qword_1EB126580, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_1A524DE34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  sub_1A524DDE4();
  v8 = sub_1A524C634();
  v9 = [objc_opt_self() systemImageNamed_];

  sub_1A524DDD4();
  sub_1A524DD14();
  sub_1A524DCE4();
  v10 = [objc_opt_self() currentTraitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v11 == 2)
  {
    v13 = 0.874509804;
    v14 = 0.905882353;
    v15 = 1.0;
    v16 = 0.874509804;
  }

  else
  {
    v13 = 0.235294118;
    v15 = 0.6;
    v16 = 0.235294118;
    v14 = 0.235294118;
  }

  [v12 initWithDisplayP3Red:v13 green:v16 blue:v14 alpha:v15];
  sub_1A524DD74();
  sub_1A524DE04();
  v17 = v7;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A52F9DE0;
  v20 = [v17 widthAnchor];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v19 + 32) = v21;
  v22 = [v17 heightAnchor];

  v23 = [v22 constraintGreaterThanOrEqualToConstant_];
  *(v19 + 40) = v23;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v24 = sub_1A524CA14();

  [v18 activateConstraints_];

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1A524DE64();
  [v17 setShowsMenuAsPrimaryAction_];
  (*(v4 + 8))(v6, v3);
  return v17;
}

id sub_1A4A01B0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A4A01C1C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1A4A01C8C(v0, ObjectType);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1A4A01C8C(void *a1, uint64_t a2)
{
  v36 = a2;
  v40 = a1;
  v2 = sub_1A524BEE4();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:50.0 scale:{50.0, 2.0}];
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v14 = sub_1A524D4C4();
  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v36;
  aBlock[4] = sub_1A4A03910;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_41_2;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;
  sub_1A524BF14();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1A3C29EDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A5FC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v4, v16);
  _Block_release(v16);

  (*(v39 + 8))(v4, v2);
  (*(v37 + 8))(v7, v38);

  v19 = [v17 layer];
  [v19 setCornerRadius_];

  v20 = [v17 layer];
  v21 = [objc_opt_self() blackColor];
  v22 = [v21 CGColor];

  [v20 setShadowColor_];
  v23 = [v17 layer];
  LODWORD(v24) = 1047904911;
  [v23 setShadowOpacity_];

  v25 = [v17 layer];
  [v25 setShadowRadius_];

  v26 = [v17 layer];
  [v40 px_screenScale];
  [v26 setRasterizationScale_];

  v27 = [v17 layer];
  [v27 setShouldRasterize_];

  v28 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A52F9DE0;
  v30 = [v17 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v29 + 32) = v31;
  v32 = [v17 heightAnchor];

  v33 = [v32 constraintEqualToConstant_];
  *(v29 + 40) = v33;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v34 = sub_1A524CA14();

  [v28 activateConstraints_];

  return v17;
}

uint64_t sub_1A4A0234C(uint64_t a1, void *a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A524BF64();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v12 = sub_1A524C634();
  v13 = [v11 initWithBundleIdentifier_];

  v14 = [v13 prepareImageForDescriptor_];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a2;
  aBlock[4] = sub_1A4A03918;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_47_2;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  v19 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29EDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A5FC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v17);
  _Block_release(v17);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v22);
}

id sub_1A4A026B4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1A524C634();
    [v4 setText_];

    v6 = [objc_opt_self() systemFontOfSize:28.0 weight:*MEMORY[0x1E69DB958]];
    [v4 setFont_];

    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v8 == 2)
    {
      v10 = 0.874509804;
      v11 = 0.905882353;
      v12 = 1.0;
      v13 = 0.874509804;
    }

    else
    {
      v10 = 0.235294118;
      v12 = 0.6;
      v13 = 0.235294118;
      v11 = 0.235294118;
    }

    v14 = [v9 initWithDisplayP3Red:v10 green:v13 blue:v11 alpha:v12];
    [v4 setTextColor_];

    v15 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1A4A02870()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1A524C634();
    [v4 setText_];

    v6 = [objc_opt_self() systemFontOfSize_];
    [v4 setFont_];

    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v8 == 2)
    {
      v10 = 0.77254902;
      v11 = 0.796078431;
    }

    else
    {
      v10 = 0.388235294;
      v11 = 0.4;
    }

    v12 = [v9 initWithDisplayP3Red:v10 green:v10 blue:v11 alpha:1.0];
    [v4 setTextColor_];

    v13 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

char *sub_1A4A02A1C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView] = 0;
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel] = 0;
  v40.receiver = v0;
  v40.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_1A4A01C1C();
  [v2 addSubview_];

  v4 = sub_1A4A026B4();
  [v2 addSubview_];

  v5 = sub_1A4A02870();
  [v2 addSubview_];

  v39 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A537BF70;
  v7 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView;
  v8 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___imageView] topAnchor];
  v9 = [v2 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [*&v2[v7] leadingAnchor];
  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = [*&v2[v7] bottomAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 48) = v16;
  v17 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel;
  v18 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___titleLabel] topAnchor];
  v19 = [v2 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v6 + 56) = v20;
  v21 = [*&v2[v17] leadingAnchor];
  v22 = [*&v2[v7] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

  *(v6 + 64) = v23;
  v24 = [*&v2[v17] trailingAnchor];
  v25 = [v2 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v6 + 72) = v26;
  v27 = OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel;
  v28 = [*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E13TTRHeaderView____lazy_storage___descriptionLabel] leadingAnchor];
  v29 = [*&v2[v7] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:10.0];

  *(v6 + 80) = v30;
  v31 = [*&v2[v27] trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v6 + 88) = v33;
  v34 = [*&v2[v27] bottomAnchor];
  v35 = [v2 bottomAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v6 + 96) = v36;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v37 = sub_1A524CA14();

  [v39 activateConstraints_];

  return v2;
}

uint64_t sub_1A4A0305C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4A04808();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1A524EC84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1A4A032C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A3CAB9BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A4A0305C(v16, a4 & 1);
      result = sub_1A3CAB9BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A4A03424();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_1A4A03424()
{
  v1 = v0;
  sub_1A4A04808();
  v2 = *v0;
  v3 = sub_1A524E764();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

unint64_t sub_1A4A0357C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4A04808();
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1A3CAB9BC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1A3CAB9BC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A4A036C8(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
  [v3 setDuration_];
  [v3 setType_];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];

    [v6 addAnimation:v3 forKey:0];
    v7.receiver = v1;
    v7.super_class = type metadata accessor for TTRWorkflowViewController();
    objc_msgSendSuper2(&v7, sel_pushViewController_animated_, a1, 0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4A037D0()
{
  v1 = v0;
  sub_1A4580344();
  v2 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
  [v2 setDuration_];
  [v2 setType_];
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result layer];

    [v5 addAnimation:v2 forKey:0];
    v7.receiver = v1;
    v7.super_class = type metadata accessor for TTRWorkflowViewController();
    v6 = objc_msgSendSuper2(&v7, sel_popViewControllerAnimated_, 0);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4A03918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 CGImage];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    [v2 setImage_];
  }

  else
  {
    v6 = sub_1A524C634();
    v7 = [objc_opt_self() systemImageNamed_];

    [v2 setImage_];
    v8 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v2 setBackgroundColor_];
  }
}

void sub_1A4A03A68()
{
  v1 = v0[3];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [Strong navigationController];
  if (!v7)
  {
LABEL_8:

    return;
  }

  v8 = v7;
  type metadata accessor for TTRWorkflowViewController();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v9;
  if (v1)
  {
    v12 = v2;
    v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x60))();
    v1();

    v2 = v12;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
LABEL_6:
    v13 = v2;
    v14 = v4;
    v15 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v13 = v2;
  v14 = 0;
  v15 = v3;
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x70))(&v13);
}

void sub_1A4A03C34()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_C3281DCD2CB9CD0A743AAAFB526C0D5E21TTRStepViewController____lazy_storage___backButton) = 0;
  sub_1A524E6E4();
  __break(1u);
}

id sub_1A4A03CE4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) initWithFrame_];
  [v15 setAxis_];
  [v15 setDistribution_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];
  [v17 addSubview_];
  [a9 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  sub_1A3C4EF08(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A531C940;
  v20 = [a9 leadingAnchor];
  v21 = [v17 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a2];

  *(v19 + 32) = v22;
  v23 = [a9 trailingAnchor];
  v24 = [v17 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a4];

  *(v19 + 40) = v25;
  v26 = [a9 topAnchor];
  v27 = [v17 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:a1];

  *(v19 + 48) = v28;
  v29 = [a9 bottomAnchor];
  v30 = [v17 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:a3];

  *(v19 + 56) = v31;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v32 = sub_1A524CA14();

  [v18 activateConstraints_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v34 = sub_1A524C634();
  [v33 setText_];

  v35 = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB958]];
  [v33 setFont_];

  v36 = [objc_opt_self() currentTraitCollection];
  v37 = [v36 userInterfaceStyle];

  v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v37 == 2)
  {
    v39 = 0.874509804;
    v40 = 0.905882353;
    v41 = 1.0;
    v42 = 0.874509804;
  }

  else
  {
    v39 = 0.235294118;
    v41 = 0.6;
    v42 = 0.235294118;
    v40 = 0.235294118;
  }

  v43 = [v38 initWithDisplayP3Red:v39 green:v42 blue:v40 alpha:v41];
  [v33 setTextColor_];

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a8)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v45 = sub_1A524C634();
    [v44 setText_];

    [v44 setNumberOfLines_];
    v46 = [objc_opt_self() currentTraitCollection];
    v47 = [v46 userInterfaceStyle];

    v48 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    if (v47 == 2)
    {
      v49 = 0.77254902;
      v50 = 0.796078431;
    }

    else
    {
      v49 = 0.388235294;
      v50 = 0.4;
    }

    v51 = [v48 initWithDisplayP3Red:v49 green:v49 blue:v50 alpha:1.0];
    [v44 setTextColor_];

    v52 = objc_opt_self();
    [v52 systemFontSize];
    v54 = [v52 systemFontOfSize_];
    [v44 setFont_];

    [v44 setTranslatesAutoresizingMaskIntoConstraints_];
    [v16 addArrangedSubview_];
    if (v44)
    {
      [v16 addArrangedSubview_];
    }
  }

  else
  {
    [v16 addArrangedSubview_];
    v44 = 0;
  }

  [v14 addSubview_];
  v82 = objc_opt_self();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1A5324BC0;
  v56 = [v16 leadingAnchor];
  v57 = [v14 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:10.0];

  *(v55 + 32) = v58;
  v59 = [v16 topAnchor];
  v60 = [v14 topAnchor];
  v61 = [v59 constraintGreaterThanOrEqualToAnchor_];

  *(v55 + 40) = v61;
  v62 = [v16 bottomAnchor];
  v63 = [v14 bottomAnchor];
  v64 = [v62 constraintLessThanOrEqualToAnchor_];

  *(v55 + 48) = v64;
  v65 = [v16 centerYAnchor];
  v66 = [v14 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v55 + 56) = v67;
  v68 = [v17 centerYAnchor];
  v69 = [v14 centerYAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v55 + 64) = v70;
  v71 = [v17 trailingAnchor];
  v72 = [v14 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:-15.0];

  *(v55 + 72) = v73;
  v74 = [v16 trailingAnchor];

  v75 = [v17 leadingAnchor];
  v76 = [v74 constraintLessThanOrEqualToAnchor:v75 constant:-10.0];

  *(v55 + 80) = v76;
  v77 = [v14 heightAnchor];
  v78 = [v77 constraintEqualToConstant_];

  *(v55 + 88) = v78;
  v79 = sub_1A524CA14();

  [v82 activateConstraints_];

  return v14;
}

uint64_t objectdestroy_71Tm_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1A4A04750()
{
  v1 = v0[2];
  v2 = v0[8];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = sub_1A524C634();

  [v1 setTitle:v6 forState:0];

  return v2(v3, v0 + 3);
}

void sub_1A4A04808()
{
  if (!qword_1EB147758)
  {
    sub_1A4A04870();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147758);
    }
  }
}

unint64_t sub_1A4A04870()
{
  result = qword_1EB147760;
  if (!qword_1EB147760)
  {
    sub_1A3C52C70(255, &qword_1EB126550);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB147760);
  }

  return result;
}

uint64_t sub_1A4A048F0(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A4A04928(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A4A04AC0;
  *(v7 + 24) = v6;
  v11[4] = sub_1A3D78DD0;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3D35A90;
  v11[3] = &block_descriptor_325;
  v8 = _Block_copy(v11);

  v9 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_1A4A04AC0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 CGContext];
  v2();
}

uint64_t PhotosNavigationSourceInfo.path.getter()
{
  if (*(*v0 + 16))
  {
    sub_1A3C2DE64(0, &qword_1EB126ED0, MEMORY[0x1E69E62F8]);
    sub_1A3CAD85C();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

PhotosUICore::PhotosNavigationSourceInfo __swiftcall PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(Swift::String sourceIdentifier, PhotosUICore::PhotosNavigationSourceInfo_optional previousSourceInfo)
{
  object = sourceIdentifier._object;
  countAndFlagsBits = sourceIdentifier._countAndFlagsBits;
  v5 = v2;
  if (*previousSourceInfo.value.sourceIdentifiers._rawValue)
  {
    v6 = *previousSourceInfo.value.sourceIdentifiers._rawValue;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C2DE64(0, &qword_1EB12B260, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;
  result.sourceIdentifiers._rawValue = sub_1A3D3A048(inited);
  *v5 = v6;
  return result;
}

uint64_t static PhotosNavigationSourceInfo.originatesFromWidget(launchType:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A524C724();
    sub_1A524C674();
    sub_1A524C724();

    sub_1A3D5F9DC();
    v2 = sub_1A524E044();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1A4A04D5C()
{
  sub_1A4A04DE4();

  sub_1A5245BB4();
}

unint64_t sub_1A4A04DE4()
{
  result = qword_1EB16C430[0];
  if (!qword_1EB16C430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C430);
  }

  return result;
}

uint64_t sub_1A4A04E5C(void *a1)
{
  v2 = sub_1A5244FD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52469C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4A051EC(0, &qword_1EB1202E0, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v14[0] = v7;
  sub_1A4A05194();
  sub_1A4A051EC(0, &qword_1EB120C98, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  sub_1A52451F4();
  PXSharingFilterFromPhotoLibrary(a1);
  sub_1A5244CE4();
  swift_allocObject();
  v8 = a1;
  sub_1A5244CD4();
  sub_1A5244FC4();
  sub_1A5244D94();
  v9 = sub_1A52451B4();
  v14[3] = sub_1A52469D4();
  v14[4] = MEMORY[0x1E69C1888];
  v14[0] = v9;
  sub_1A3C56110();
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v10 shouldRefreshBackgroundAssetsOnAppRestart];

  v11 = sub_1A5244D84();

  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

unint64_t sub_1A4A05194()
{
  result = qword_1EB124A50;
  if (!qword_1EB124A50)
  {
    sub_1A52469C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A50);
  }

  return result;
}

void sub_1A4A051EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A52469C4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1A4A05254()
{
  v1 = *((*(**(v0 + 16) + 280))() + 24);
  v2 = v1;

  return v1;
}

uint64_t sub_1A4A052B8()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15EFF8 = result;
  return result;
}

uint64_t sub_1A4A0531C()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4A05394@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4A05428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 336))(KeyPath, sub_1A4A07A34, v7, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A4A054DC()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount);
}

uint64_t sub_1A4A05548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount);
  return result;
}

uint64_t sub_1A4A055F0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    v6 = v2;
    (*(*v1 + 336))(v4);
  }

  return result;
}

uint64_t sub_1A4A056DC()
{
  swift_getKeyPath();
  (*(*v0 + 328))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch);
}

uint64_t sub_1A4A05748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 328))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch);
  return result;
}

uint64_t sub_1A4A057F0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 336))(v3);
  }

  return result;
}

uint64_t GenerativeStoryBackgroundAssetsManager.__allocating_init(photoLibrary:assetsFetcher:logger:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = sub_1A4A076EC(a1, v9, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v10;
}

uint64_t GenerativeStoryBackgroundAssetsManager.init(photoLibrary:assetsFetcher:logger:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1A4A07530(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

void sub_1A4A05A5C()
{
  v1 = v0;
  v2 = sub_1A524BFF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v5 = sub_1A524D474();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1A524C024();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_1A4A06884();
    v8 = (*(*v1 + 136))(v7);
    if (!v8 || (v9 = v8, v10 = [v8 count], v9, !v10))
    {
      swift_getKeyPath();
      (*(*v1 + 328))();

      if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        v12 = MEMORY[0x1EEE9AC00](KeyPath);
        *&v15[-16] = v1;
        v15[-8] = 1;
        (*(*v1 + 336))(v12);

        v13 = v1[2];
        v14 = swift_allocObject();
        swift_weakInit();
        (*(*v13 + 416))(sub_1A4A0780C, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4A05D4C()
{
  v0 = sub_1A524BEE4();
  v58 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v56 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A524BF64();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A660(0, &qword_1EB147770, type metadata accessor for GenerativeStoryBackgroundAssetsManager, off_1E77210B0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v43 - v6;
  v46 = sub_1A5246EA4();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A5246E54();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v43 - v14;
  v16 = sub_1A5246F24();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A5246E94();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v43[2] = v0;
    (*(v17 + 16))(v19, Strong + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger, v16);
    sub_1A5246E64();

    sub_1A5246E84();
    sub_1A5246E14();
    v59 = v21;
    v24 = sub_1A5246E84();
    v25 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, v25, v27, "GenerativeStoryBackgroundAssetsManager.fetch", "", v26, 2u);
      MEMORY[0x1A590EEC0](v26, -1, -1);
    }

    v28 = v60;
    (*(v8 + 16))(v12, v15, v60);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v29 = *(v8 + 8);
    v29(v15, v28);
    v30 = v23[7];
    __swift_project_boxed_opaque_existential_1(v23 + 3, v23[6]);
    v31 = *(v30 + 8);
    v32 = *(v23[2] + 200);
    v43[1] = v31();

    v33 = sub_1A5246E84();
    v34 = v47;
    sub_1A5246EB4();
    v35 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      v36 = v44;
      sub_1A5246EE4();

      v37 = v45;
      v38 = v46;
      if ((*(v45 + 88))(v36, v46) == *MEMORY[0x1E69E93E8])
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 8))(v36, v38);
        v39 = "";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, v35, v42, "GenerativeStoryBackgroundAssetsManager.fetch", v39, v41, 2u);
      MEMORY[0x1A590EEC0](v41, -1, -1);
    }

    v29(v34, v60);
    type metadata accessor for GenerativeStoryBackgroundAssetsManager();

    sub_1A5245DF4();
  }

  return [objc_allocWithZone(MEMORY[0x1E6978840]) init];
}

uint64_t sub_1A4A06884()
{
  v1 = v0;
  swift_getKeyPath();
  (*(*v0 + 328))();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver))
  {
    v3 = v0[2];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(*v3 + 1000);

    v6 = v5(sub_1A4A07B44, v4);
    v8 = v7;

    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v1;
    v12 = v6;
    v13 = v8;
    (*(*v1 + 336))(v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t GenerativeStoryBackgroundAssetsManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryBackgroundAssetsManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4A071A0(uint64_t a1)
{
  if (qword_1EB15EFF0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB15EFF8;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1A4A07860((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

id sub_1A4A07258@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = [v10 objectForKey_];
  if (!result)
  {
    PXDisplayCollectionDetailedCountsMake(0);
    v12 = sub_1A3C4A780();
    (*(v7 + 16))(v9, v12, v6);
    type metadata accessor for GenerativeStoryBackgroundAssetsManager();
    v13 = swift_allocObject();
    v14 = a2;
    v15 = sub_1A4A073A4(v14, v9, v13);
    [v10 setObject:v15 forKey:v14];
    result = v15;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1A4A073A4(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = &type metadata for GenerativeStoryBackgroundAssetsFetcher;
  v18 = &off_1F1733C78;
  v6 = (a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);
  *v6 = 0;
  v6[1] = 0;
  *(a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) = 0;
  *(a3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = 0;
  sub_1A5241604();
  sub_1A3C341C8(v16, a3 + 24);
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3 + v7, a2, v8);
  sub_1A4A07A4C();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(&v13[11], 0, 24);
  v10 = sub_1A3C52C70(0, &qword_1EB126660);
  sub_1A43FD8EC(v13, v10);
  v11 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(a1, 0, v14);
  (*(v9 + 8))(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(v16);
  *(a3 + 16) = v11;
  return a3;
}

uint64_t sub_1A4A07530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v12 = (a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver);
  *v12 = 0;
  v12[1] = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__previousAssetsCount) = 0;
  *(a4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__isPerformingFetch) = 0;
  sub_1A5241604();
  sub_1A3C341C8(v22, a4 + 24);
  v13 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager_logger;
  v14 = sub_1A5246F24();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a4 + v13, a3, v14);
  sub_1A4A07A4C();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(&v19[11], 0, 24);
  v16 = sub_1A3C52C70(0, &qword_1EB126660);
  sub_1A43FD8EC(v19, v16);
  v17 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(a1, 0, v20);
  (*(v15 + 8))(a3, v14);
  __swift_destroy_boxed_opaque_existential_0(v22);
  *(a4 + 16) = v17;
  return a4;
}

uint64_t sub_1A4A076EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager();
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a2, a5);
  return sub_1A4A07530(a1, v13, a3, v14, a5, a6);
}

uint64_t type metadata accessor for GenerativeStoryBackgroundAssetsManager()
{
  result = qword_1EB15EFC8;
  if (!qword_1EB15EFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A07894()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1A4A07A4C()
{
  if (!qword_1EB129F98)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    v0 = type metadata accessor for PhotoKitItemListManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129F98);
    }
  }
}

void sub_1A4A07AB4()
{
  sub_1A3C2A660(0, &qword_1EB147770, type metadata accessor for GenerativeStoryBackgroundAssetsManager, off_1E77210B0);

  sub_1A4A06728();
}

uint64_t sub_1A4A07B4C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryBackgroundAssetsManager__itemsObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4A07B98(unint64_t *a1, void (*a2)(uint64_t))
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

id static GenerativeStoryFeedbackMenuFactory.makeMenu(memory:actionPerformer:invertedOrder:presentationPrepareHandler:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v17[4] = sub_1A4A07D5C;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A3D7692C;
  v17[3] = &block_descriptor_327;
  v12 = _Block_copy(v17);
  sub_1A3D607F0(a4);
  v13 = a1;
  v14 = a2;

  v15 = [v10 menuWithDeferredConfiguration_];
  _Block_release(v12);
  return v15;
}

uint64_t sub_1A4A07D5C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A4A0845C;
  *(v9 + 24) = v8;
  v14[4] = sub_1A3D78DD0;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A3D35A90;
  v14[3] = &block_descriptor_13_10;
  v10 = _Block_copy(v14);
  sub_1A3D607F0(v3);
  v11 = v6;
  v12 = v5;

  [a1 addSectionWithConfiguration_];
  _Block_release(v10);
  LODWORD(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1A4A07EE4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_1A524C634();
  v11 = PXMemoryCreationLocalizedString(v10);

  if (!v11)
  {
    sub_1A524C674();
    v11 = sub_1A524C634();
  }

  v12 = sub_1A524C634();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v17[4] = sub_1A4A08514;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A3F4ECC0;
  v17[3] = &block_descriptor_19_7;
  v14 = _Block_copy(v17);
  sub_1A3D607F0(a2);
  v15 = a4;
  v16 = a5;

  [a1 addItemWithTitle:v11 systemImageName:v12 handler:v14];
  _Block_release(v14);
}

void sub_1A4A08084(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_1A524C634();
  v11 = PXMemoryCreationLocalizedString(v10);

  if (!v11)
  {
    sub_1A524C674();
    v11 = sub_1A524C634();
  }

  v12 = sub_1A524C634();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v17[4] = sub_1A4A08658;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1A3F4ECC0;
  v17[3] = &block_descriptor_40_5;
  v14 = _Block_copy(v17);
  sub_1A3D607F0(a2);
  v15 = a4;
  v16 = a5;

  [a1 addItemWithTitle:v11 systemImageName:v12 handler:v14];
  _Block_release(v14);
}

uint64_t sub_1A4A08224(void (*a1)(__n128), uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3DB4F20();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a1(v13);
  }

  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1A524CC54();
  v17 = a4;
  v18 = a3;
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  v20[5] = a6;
  v20[6] = v18;
  sub_1A3D4D930(0, 0, v15, a7, v20);
}

uint64_t sub_1A4A0836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1A524CC54();
  v6[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1A3E5387C;

  return PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(a5, a6, PXDisplayCollectionDetailedCountsMake, 0);
}

void sub_1A4A0845C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (v6 == 1)
  {
    sub_1A4A07EE4(a1, v2, v3, v4, v5);

    sub_1A4A08084(a1, v2, v3, v4, v5);
  }

  else
  {
    sub_1A4A08084(a1, v2, v3, v4, v5);

    sub_1A4A07EE4(a1, v2, v3, v4, v5);
  }
}

uint64_t sub_1A4A08554()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4A0836C(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroyTm_91()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4A086E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4A0836C(v5, v6, v7, v2, v3, v4);
}

void sub_1A4A08908()
{
  v1 = [v0 viewModel];
  v2 = [v1 dataSourceManager];

  v3 = [v2 dataSource];
  v4 = [v3 containerCollection];

  if (v4)
  {
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() px_isStreamSharedAlbum];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4A08A80()
{
  v1 = v0;
  sub_1A4A0971C(0, &unk_1EB13EBC0, type metadata accessor for LemonadeCollectionCustomizationView);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v45 - v3);
  v5 = type metadata accessor for SharedAlbumCreationView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A4A096B8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v45 - v10;
  v12 = type metadata accessor for LemonadeNavigationDestination();
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v0 viewModel];
  v17 = [v16 dataSourceManager];

  v18 = [v17 dataSource];
  v19 = [v18 containerCollection];

  if (!v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  objc_opt_self();
  v20 = [swift_dynamicCastObjCClassUnconditional() px_isStreamSharedAlbum];
  swift_unknownObjectRelease();
  if (!v20)
  {
    v35 = [v0 viewModel];
    v36 = [v35 dataSourceManager];

    v37 = [v36 dataSource];
    v38 = [v37 containerCollection];

    if (v38)
    {
      sub_1A4A0971C(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
      sub_1A4A096B8(0, &qword_1EB13EBB0, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
      objc_opt_self();
      v39 = swift_dynamicCastObjCClassUnconditional();
      v48 = LemonadeCollectionCustomizationAlbumsModel.__allocating_init(collection:)(v39);
      v47 = 1;
      v40 = sub_1A4407D6C(&v48, &v47, 0, 0);
      sub_1A42D6348();
      v41 = v40;
      sub_1A478C8F8(v41, v4);
      v42 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v4);

      v43 = v42;
      [v43 setModalPresentationStyle_];
      v44 = [v1 presentViewController_];

      [v1 completeUserInteractionTaskWithSuccess:v44 error:0];
      return;
    }

    goto LABEL_11;
  }

  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = [v0 viewModel];
  v23 = [v22 dataSourceManager];

  v24 = [v23 dataSource];
  v25 = [v24 containerCollection];

  if (!v25)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  objc_opt_self();
  v26 = [swift_dynamicCastObjCClassUnconditional() photoLibrary];
  swift_unknownObjectRelease();
  if (v26)
  {
    v45[1] = v7;
    type metadata accessor for LemonadeNavigationContext(0);
    type metadata accessor for LemonadePhotoLibraryContext();
    v27 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v26, 0, 0);
    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v46);
    sub_1A3C799F0(v15, 0, 0, 0, v11, &v46, v27, 2);
    v28 = [v1 viewModel];
    v29 = [v28 dataSourceManager];

    v30 = [v29 dataSource];
    v31 = [v30 containerCollection];

    if (v31)
    {
      type metadata accessor for SharedAlbumActionViewModel();
      objc_opt_self();
      v32 = swift_dynamicCastObjCClassUnconditional();
      v33 = sub_1A3C30368();

      SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v34, 0, v32, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v33 & 1, 0, 0, 0, 0);
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  __break(1u);
}

id PXPhotosGridCustomizeCollectionActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PXPhotosGridCustomizeCollectionActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PXPhotosGridCustomizeCollectionActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PXPhotosGridCustomizeCollectionActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotosGridCustomizeCollectionActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4A09470(void *a1)
{
  v1 = [a1 dataSourceManager];
  v2 = [v1 dataSource];

  v3 = [v2 containerCollection];
  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v4;
  if (v4)
  {
    if ([v4 assetCollectionType] == 4)
    {
      v5 = 0;
    }

    else if ([v5 px_isStreamSharedAlbum])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v5 canPerformEditOperation_];
    }
  }

  swift_unknownObjectRelease();
  return v5;
}

void sub_1A4A0956C()
{
  v1 = [v0 viewModel];
  v2 = [v1 dataSourceManager];

  v3 = [v2 dataSource];
  v4 = [v3 containerCollection];

  if (v4)
  {
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() px_isStreamSharedAlbum];
    swift_unknownObjectRelease();
    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    sub_1A524C674();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4A096B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4A0971C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A4A096B8(255, &qword_1EB13EBB0, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationAlbumsModel);
    v7 = v6;
    v8 = sub_1A45FE4E8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4A097F4()
{
  result = qword_1EB16BE10[0];
  if (!qword_1EB16BE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16BE10);
  }

  return result;
}

void sub_1A4A09A68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  a1;
  sub_1A4A09884();
}

id sub_1A4A09CBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A4A09CF4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E58A8);
  __swift_project_value_buffer(v0, qword_1EB1E58A8);
  sub_1A5246EF4();
}

void sub_1A4A09DDC(void *a1, void *a2)
{
  type metadata accessor for TopInsetSpacerLayout();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = a1;
  v7 = [a2 extendedTraitCollection];
  if (!v7)
  {
    __break(1u);
LABEL_17:
    sub_1A524E404();

    swift_getObjectType();
    swift_getWitnessTable();
    v20 = sub_1A4A09DB0();
    MEMORY[0x1A5907B60](v20);

    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 userInterfaceIdiom];

  if (v9 == 2)
  {
    v10 = 28.0;
  }

  else
  {
    v10 = 0.0;
  }

  [a2 safeAreaInsets];
  if (v11 > v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  [a2 topChromeHeight];
  v14 = OBJC_IVAR____TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout_height;
  *&v5[OBJC_IVAR____TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout_height] = v13 + v12;
  [v5 setNeedsUpdate];
  if (qword_1EB1E58A0 != -1)
  {
    swift_once();
  }

  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB1E58A8);
  v16 = v6;
  v17 = a2;
  oslog = sub_1A5246F04();
  v18 = sub_1A524D234();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    *v19 = 134218754;
    *(v19 + 4) = *&v5[v14];
    *(v19 + 12) = 2080;
    [v17 safeAreaInsets];
    type metadata accessor for UIEdgeInsets(0);
    sub_1A524C714();
    sub_1A3C2EF94();
  }
}

id sub_1A4A0A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_1A4A0A254;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A4044608;
  v11[3] = &block_descriptor_328;
  v8 = _Block_copy(v11);

  v9 = [v3 requestFaceCropForOptions:a1 resultHandler:v8];
  _Block_release(v8);
  return v9;
}

void sub_1A4A0A254(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + 16);
  if (!a1)
  {
    goto LABEL_14;
  }

  v32 = sub_1A524C674();
  v33 = v7;
  v8 = a1;
  sub_1A524E384();
  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

  v9 = sub_1A3D5C0BC(v43);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v9, &v34);
  sub_1A3D5FAFC(v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_14;
  }

  v11 = v32;
  v32 = sub_1A524C674();
  v33 = v12;
  sub_1A524E384();
  if (!*(a2 + 16) || (v13 = sub_1A3D5C0BC(v43), (v14 & 1) == 0))
  {
LABEL_12:

    v26 = v43;
LABEL_13:
    sub_1A3D5FAFC(v26);
    goto LABEL_14;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v13, &v34);
  sub_1A3D5FAFC(v43);
  sub_1A3DC0B2C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v15 = v32;
  *&v43[0] = sub_1A524C674();
  *(&v43[0] + 1) = v16;
  sub_1A524E384();
  if (!*(a2 + 16) || (v17 = sub_1A3D5C0BC(v41), (v18 & 1) == 0))
  {

    v26 = v41;
    goto LABEL_13;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v17, v42);
  sub_1A3D5FAFC(v41);
  if (swift_dynamicCast())
  {
    v19 = v39;
    v20 = v40;
    v21 = v8;
    [v32 CGRectValue];
    *&v34 = v21;
    BYTE8(v34) = v11;
    *&v35 = v22;
    *(&v35 + 1) = v23;
    *&v36 = v24;
    *(&v36 + 1) = v25;
    *&v37 = v19;
    *(&v37 + 1) = v20;
    v43[0] = v34;
    v43[1] = v35;
    v43[2] = v36;
    v43[3] = v37;
    v38 = 0;
    v44 = 0;
    sub_1A4A0A5F4(&v34, &v32);
    v5(v43);
    sub_1A4A0A62C(&v34);
    sub_1A4A0A62C(&v34);

    return;
  }

LABEL_14:
  *&v43[0] = sub_1A524C674();
  *(&v43[0] + 1) = v27;
  sub_1A524E384();
  if (*(a2 + 16) && (v28 = sub_1A3D5C0BC(&v34), (v29 & 1) != 0))
  {
    sub_1A3C2F0BC(*(a2 + 56) + 32 * v28, &v32);
    sub_1A3D5FAFC(&v34);
    sub_1A3DBD9A0();
    if (swift_dynamicCast())
    {
      v30 = v41[0];
      v42[0] = 1;
      *&v43[0] = v41[0];
      v44 = 1;
      v31 = v41[0];
      v5(v43);

      return;
    }
  }

  else
  {
    sub_1A3D5FAFC(&v34);
  }

  LOBYTE(v41[0]) = 1;
  *&v43[0] = 0;
  v44 = 1;
  v5(v43);
}

uint64_t PhotosDeleteAlbumsAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB2E98();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A0B170(&qword_1EB12C3B0, sub_1A4829E28);
  sub_1A3DB3554();
  result = sub_1A5240024();
  *a1 = result;
  return result;
}

uint64_t PhotosDeleteAlbumsAssistantIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0A920, v5, v4);
}

uint64_t sub_1A4A0A920()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4A0ACA4();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A537C458);
}

uint64_t sub_1A4A0AA60(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0AAF8, v4, v3);
}

uint64_t sub_1A4A0AAF8()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[7];
  v0[14] = v2;
  v0[8] = v1;
  v3 = sub_1A4A0ACA4();
  v4 = AppIntent.px_intentName.getter();
  v6 = v5;
  v0[15] = v5;
  v0[5] = &type metadata for PhotosDeleteAlbumsAssistantIntent;
  v0[6] = v3;
  v0[2] = v1;

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DB3B20;

  return sub_1A3DB3DF4(v2, v4, v6, (v0 + 2));
}

uint64_t sub_1A4A0AC08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A4A0AA60(a1, v1);
}

unint64_t sub_1A4A0ACA4()
{
  result = qword_1EB147780;
  if (!qword_1EB147780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147780);
  }

  return result;
}

void (*PhotosDeleteAlbumsAssistantIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A4A0ADC4()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E5948);
  __swift_project_value_buffer(v5, qword_1EB1E5948);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosDeleteAlbumsAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E5948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A0AFC4()
{
  result = qword_1EB147788;
  if (!qword_1EB147788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147788);
  }

  return result;
}

unint64_t sub_1A4A0B020()
{
  result = qword_1EB147790;
  if (!qword_1EB147790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147790);
  }

  return result;
}

unint64_t sub_1A4A0B07C()
{
  result = qword_1EB147798;
  if (!qword_1EB147798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147798);
  }

  return result;
}

unint64_t sub_1A4A0B0D4()
{
  result = qword_1EB1477A0;
  if (!qword_1EB1477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477A0);
  }

  return result;
}

uint64_t sub_1A4A0B170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A0B208(uint64_t a1)
{
  v2 = sub_1A4A0B560();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A0B254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosDeleteAlbumsAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A0B2EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB2E98();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A0B170(&qword_1EB12C3B0, sub_1A4829E28);
  sub_1A3DB3554();
  result = sub_1A5240024();
  *a1 = result;
  return result;
}

uint64_t sub_1A4A0B514(uint64_t a1)
{
  v2 = sub_1A4A0ACA4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4A0B560()
{
  result = qword_1EB1477A8;
  if (!qword_1EB1477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477A8);
  }

  return result;
}

uint64_t PhotosRemoveAssetsFromAlbumAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A5240334();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  sub_1A4A0B97C();
  v27 = v15;
  v16 = sub_1A5240BB4();
  v26 = *(*(v16 - 8) + 56);
  v26(v14, 1, 1, v16);
  v17 = sub_1A523FDB4();
  v31 = 0u;
  v32 = 0u;
  v18 = *(*(v17 - 8) + 56);
  v18(v11, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v19 = *MEMORY[0x1E695A500];
  v20 = *(v3 + 104);
  v25 = v3 + 104;
  v21 = v28;
  v20(v5, v19, v28);
  sub_1A3DB3554();
  v22 = sub_1A523FF94();
  v23 = v30;
  *v30 = v22;
  sub_1A3F57E84();
  v26(v14, 1, 1, v16);
  *&v31 = 0;
  sub_1A5240174();
  v20(v5, v19, v21);
  sub_1A4A0C76C(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  result = sub_1A5240024();
  v23[1] = result;
  *(v23 + 16) = 0;
  return result;
}

void sub_1A4A0B97C()
{
  if (!qword_1EB12C428)
  {
    sub_1A3DB2FBC();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C428);
    }
  }
}

uint64_t PhotosRemoveAssetsFromAlbumAssistantIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  *(v2 + 99) = *(v1 + 16);
  sub_1A524CC54();
  *(v2 + 136) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0BA80, v4, v3);
}

uint64_t sub_1A4A0BA80()
{
  v1 = *(v0 + 99);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;
  sub_1A523FF44();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  AlbumEntity.albumType.getter((v0 + 97));

  *(v0 + 98) = *(v0 + 97);
  v8 = AlbumEntity.CollectionType.rawValue.getter();
  v10 = v9;
  *(v0 + 160) = v9;
  sub_1A523FF44();
  v11 = *(*(v0 + 104) + 16);

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *(v12 + 16) = v3;
  *(v12 + 24) = v2;
  *(v12 + 32) = v1;
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  sub_1A4A0C1D4();
  *v13 = v0;
  v13[1] = sub_1A3F58AD0;
  v14 = *(v0 + 112);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v14, 0, 0, v8, v10, v11, 0, &unk_1A537C668);
}

uint64_t sub_1A4A0BC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 97) = a4;
  *(v4 + 144) = a2;
  *(v4 + 152) = a3;
  *(v4 + 136) = a1;
  sub_1A524CC54();
  *(v4 + 160) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 168) = v6;
  *(v4 + 176) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0BD28, v6, v5);
}

uint64_t sub_1A4A0BD28()
{
  v1 = v0;
  v2 = *(v0 + 97);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
  *(v1 + 80) = v4;
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;
  sub_1A523FF44();
  v6 = *(v1 + 128);
  *(v1 + 184) = v6;
  sub_1A523FF44();
  v7 = *(v1 + 32);
  *(v1 + 48) = *(v1 + 16);
  *(v1 + 64) = v7;
  *(v1 + 104) = v4;
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;
  sub_1A4A0C1D4();
  v8 = AppIntent.px_intentName.getter();
  v10 = v9;
  *(v1 + 192) = v9;
  v11 = swift_task_alloc();
  *(v1 + 200) = v11;
  v12 = sub_1A4A0C98C();
  *v11 = v1;
  v11[1] = sub_1A4A0BE88;

  return sub_1A3F5A040(v6, (v1 + 48), IsLaunchedToExecuteTests & v2, v8, v10, &type metadata for PhotosRemoveAssetsFromAlbumAssistantIntent, v12);
}

uint64_t sub_1A4A0BE88()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1A4A0C0BC;
  }

  else
  {
    v5 = sub_1A4A0C04C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0C04C()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0C0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0C120(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4A0BC88(a1, v4, v5, v6);
}

unint64_t sub_1A4A0C1D4()
{
  result = qword_1EB1477B0;
  if (!qword_1EB1477B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477B0);
  }

  return result;
}

void (*PhotosRemoveAssetsFromAlbumAssistantIntent.album.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

void (*PhotosRemoveAssetsFromAlbumAssistantIntent.assets.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A4A0C3F4()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E5CE8);
  __swift_project_value_buffer(v5, qword_1EB1E5CE8);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosRemoveAssetsFromAlbumAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E5CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E5CE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A0C5F0(uint64_t a1)
{
  result = sub_1A4A0C1D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4A0C61C()
{
  result = qword_1EB1477B8;
  if (!qword_1EB1477B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477B8);
  }

  return result;
}

unint64_t sub_1A4A0C678()
{
  result = qword_1EB1477C0;
  if (!qword_1EB1477C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477C0);
  }

  return result;
}

unint64_t sub_1A4A0C6D0()
{
  result = qword_1EB1477C8;
  if (!qword_1EB1477C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477C8);
  }

  return result;
}

uint64_t sub_1A4A0C76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A0C804(uint64_t a1)
{
  v2 = sub_1A4A0C938();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A0C850(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosRemoveAssetsFromAlbumAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A0C8EC(uint64_t a1)
{
  v2 = sub_1A4A0C1D4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4A0C938()
{
  result = qword_1EB1477D0;
  if (!qword_1EB1477D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477D0);
  }

  return result;
}

unint64_t sub_1A4A0C98C()
{
  result = qword_1EB1477D8;
  if (!qword_1EB1477D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477D8);
  }

  return result;
}

uint64_t PhotosUpdateRecognizedPersonAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  sub_1A4A0CF08(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = v33 - v2;
  sub_1A4A0CF08(0, &qword_1EB1477E0, MEMORY[0x1E695A810]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = v33 - v4;
  v42 = sub_1A5240334();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A0CF08(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  sub_1A4A0CF08(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - v15;
  sub_1A4A0CF5C();
  v34 = sub_1A5240BB4();
  v17 = *(v34 - 8);
  v35 = *(v17 + 56);
  v18 = v17 + 56;
  v35(v16, 1, 1, v34);
  v33[2] = v18;
  v19 = sub_1A523FDB4();
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v33[3] = v20 + 56;
  v21(v13, 1, 1, v19);
  v21(v10, 1, 1, v19);
  v22 = v21;
  v41 = *MEMORY[0x1E695A500];
  v23 = *(v5 + 104);
  v39 = v5 + 104;
  v40 = v23;
  v33[0] = v7;
  v23(v7);
  sub_1A3FC19D8();
  v24 = sub_1A523FF94();
  v25 = v36;
  *v36 = v24;
  sub_1A4A0CFB8();
  v33[1] = v26;
  v28 = v34;
  v27 = v35;
  v35(v16, 1, 1, v34);
  LOBYTE(v43) = 2;
  v29 = sub_1A524CBA4();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v22(v13, 1, 1, v19);
  v30 = v33[0];
  v40(v33[0], v41, v42);
  v25[1] = sub_1A5240014();
  sub_1A3DEB5EC();
  v27(v16, 1, 1, v28);
  v31 = sub_1A524C5A4();
  v43 = 0;
  v44 = 0;
  (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
  v22(v13, 1, 1, v19);
  v40(v30, v41, v42);
  result = sub_1A523FFF4();
  v25[2] = result;
  return result;
}

void sub_1A4A0CF08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4A0CF5C()
{
  if (!qword_1EB12FDB8)
  {
    sub_1A3FC0108();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12FDB8);
    }
  }
}

void sub_1A4A0CFB8()
{
  if (!qword_1EB1477E8)
  {
    v0 = MEMORY[0x1E69E6370];
    sub_1A4A0EA1C(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A4A0D074(&qword_1EB133120, &qword_1EB126DF0, v0, sub_1A40D7C08);
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1477E8);
    }
  }
}

uint64_t sub_1A4A0D074(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A0EA1C(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosUpdateRecognizedPersonAssistantIntent.perform()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = *v1;
  *(v2 + 88) = *(v1 + 16);
  sub_1A524CC54();
  *(v2 + 96) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 104) = v4;
  *(v2 + 112) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0D1A8, v4, v3);
}

void sub_1A4A0D1A8()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = *(v0 + 80);
  sub_1A523FF44();
  if (*(v0 + 152) == 2)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = sub_1A3D3D914(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1A3D3D914((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x657469726F766146;
    *(v4 + 5) = 0xE800000000000000;
  }

  sub_1A523FF44();
  if (*(v0 + 48))
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A3D3D914(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1A3D3D914((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v7 = &v1[16 * v6];
    *(v7 + 4) = 1701667150;
    *(v7 + 5) = 0xE400000000000000;
  }

  *(v0 + 56) = v1;
  sub_1A4A0EA1C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A3CAD85C();
  v8 = sub_1A524C514();
  v10 = v9;

  MEMORY[0x1A5907B60](v8, v10);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A0D4B0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A4A0D638;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A4A0D5D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0D5D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0D638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0D6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  sub_1A524CC54();
  v4[20] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0D74C, v6, v5);
}

uint64_t sub_1A4A0D74C()
{
  sub_1A523FF44();
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  if (v1 == 2)
  {
    sub_1A523FF44();
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    *(v0 + 216) = v4;
    if (v4)
    {
      v5 = *(v0 + 152);
      v17 = *(v0 + 136);
      sub_1A523FF44();
      *(v0 + 40) = *(v0 + 16);
      *(v0 + 56) = *(v0 + 32);
      *(v0 + 64) = v17;
      *(v0 + 80) = v5;
      sub_1A4A0E028();
      v6 = AppIntent.px_intentName.getter();
      v8 = v7;
      *(v0 + 224) = v7;
      v9 = swift_task_alloc();
      *(v0 + 232) = v9;
      *v9 = v0;
      v9[1] = sub_1A4A0DC98;

      return sub_1A49542F8(v3, v4, (v0 + 40), v6, v8);
    }

    else
    {

      sub_1A523FDD4();
      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
    sub_1A4A0EA1C(0, &qword_1EB131A98, &type metadata for PersonEntity, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v0 + 184) = v11;
    *(v11 + 16) = xmmword_1A52F8E10;
    v18 = *(v0 + 136);
    sub_1A523FF44();
    *(v0 + 88) = v18;
    *(v0 + 104) = v2;
    sub_1A4A0E028();
    v12 = AppIntent.px_intentName.getter();
    v14 = v13;
    *(v0 + 192) = v13;
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_1A4A0D9F0;

    return sub_1A4827940(v1 & 1, v11, v12, v14);
  }
}

uint64_t sub_1A4A0D9F0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1A4A0DEAC;
  }

  else
  {
    v5 = sub_1A4A0DB24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0DB24()
{
  sub_1A523FF44();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v10 = *(v0 + 136);
    sub_1A523FF44();
    *(v0 + 40) = *(v0 + 16);
    *(v0 + 56) = *(v0 + 32);
    *(v0 + 64) = v10;
    *(v0 + 80) = v3;
    sub_1A4A0E028();
    v4 = AppIntent.px_intentName.getter();
    v6 = v5;
    *(v0 + 224) = v5;
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_1A4A0DC98;

    return sub_1A49542F8(v1, v2, (v0 + 40), v4, v6);
  }

  else
  {

    sub_1A523FDD4();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A4A0DC98()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1A4A0DF10;
  }

  else
  {
    v5 = sub_1A4A0DE40;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0DE40()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0DEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0DF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A0DF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4A0D6B0(a1, v4, v5, v6);
}