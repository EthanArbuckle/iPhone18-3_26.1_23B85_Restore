uint64_t TTSVBVoiceSample.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_23328DA3C();
  v4 = type metadata accessor for TTSVBVoiceSample();
  v5 = v4[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v49 - v8;
  sub_233121D34(v1 + v5, v49 - v8, &qword_27DDE19A0, &unk_233290360);
  v10 = sub_23328CC9C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  if (v12 == 1)
  {
    sub_23328E63C();
  }

  else
  {
    v13 = *(v11 + 64);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 32))(v16, v9, v10, v14);
    sub_23328E63C();
    sub_2332072E8(&qword_27DDE1FA0, MEMORY[0x28220BE00]);
    sub_23328D8CC();
    (*(v11 + 8))(v16, v10);
  }

  v17 = *(v1 + v4[6]);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x23839C3B0](*&v17);
  v18 = (v1 + v4[7]);
  v19 = *v18;
  v20 = v18[1];
  sub_23328DA3C();
  v21 = (v1 + v4[8]);
  v22 = *v21;
  v23 = v21[1];
  sub_23328DA3C();
  v24 = (v1 + v4[9]);
  v25 = *v24;
  v26 = v24[1];
  sub_23328DA3C();
  v27 = (v1 + v4[10]);
  v28 = *v27;
  v29 = v27[1];
  sub_23328DA3C();
  MEMORY[0x23839C380](*(v1 + v4[11]));
  MEMORY[0x23839C380](*(v1 + v4[12]));
  v30 = *(v1 + v4[13]);
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x23839C3B0](*&v30);
  v31 = (v1 + v4[14]);
  v32 = *v31;
  v33 = v31[1];
  sub_23328DA3C();
  v34 = v4[15];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35 - 8);
  v38 = v49 - v37;
  sub_233121D34(v1 + v34, v49 - v37, &qword_27DDE1A18, &unk_233297730);
  v39 = sub_23328CE1C();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v38, 1, v39);
  if (v41 == 1)
  {
    sub_23328E63C();
  }

  else
  {
    v42 = *(v40 + 64);
    v43 = MEMORY[0x28223BE20](v41);
    v45 = v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 32))(v45, v38, v39, v43);
    sub_23328E63C();
    sub_2332072E8(&qword_27DDE2450, MEMORY[0x28220BF40]);
    sub_23328D8CC();
    (*(v40 + 8))(v45, v39);
  }

  v46 = (v1 + v4[16]);
  if (v46[1])
  {
    v47 = *v46;
    sub_23328E63C();
    sub_23328DA3C();
  }

  else
  {
    sub_23328E63C();
  }

  MEMORY[0x23839C380](*(v1 + v4[17]));
  *(v1 + v4[18]);
  sub_23328E64C();
  *(v1 + v4[19]);
  sub_23328E64C();
  *(v1 + v4[20]);
  sub_23328E64C();
  *(v1 + v4[21]);
  sub_23328E64C();
  v49[3] = *(v1 + v4[22]);
  sub_2332066D4();
  return sub_23328D8CC();
}

uint64_t TTSVBVoiceSample.hashValue.getter()
{
  sub_23328E61C();
  TTSVBVoiceSample.hash(into:)();
  return sub_23328E66C();
}

uint64_t TTSVBVoiceSample.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3070, &qword_23329C2B8);
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v58);
  v7 = &v51 - v6;
  v8 = type metadata accessor for TTSVBVoiceSample();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23320662C();
  v57 = v7;
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v54 = a1;
  v55 = v4;
  v52 = v8;
  v53 = v11;
  LOBYTE(v60) = 0;
  v13 = sub_23328E3CC();
  v14 = v53;
  *v53 = v13;
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v51 - v18;
  sub_23328CC9C();
  LOBYTE(v60) = 1;
  sub_2332072E8(&qword_27DDE21D8, MEMORY[0x28220BE00]);
  sub_23328E3BC();
  v20 = v52;
  sub_233121D9C(v19, v14 + v52[5], &qword_27DDE19A0, &unk_233290360);
  LOBYTE(v60) = 2;
  v51 = 0;
  sub_23328E3EC();
  *(v14 + v20[6]) = v21;
  LOBYTE(v60) = 3;
  v22 = sub_23328E3CC();
  v23 = (v14 + v20[7]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v60) = 4;
  v25 = sub_23328E3CC();
  v26 = (v14 + v20[8]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v60) = 5;
  v28 = sub_23328E3CC();
  v29 = (v14 + v20[9]);
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v60) = 6;
  v31 = sub_23328E3CC();
  v32 = (v14 + v20[10]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v60) = 7;
  *(v53 + v52[11]) = sub_23328E40C();
  LOBYTE(v60) = 8;
  *(v53 + v52[12]) = sub_23328E40C();
  LOBYTE(v60) = 9;
  sub_23328E3EC();
  *(v53 + v52[13]) = v34;
  LOBYTE(v60) = 10;
  v35 = sub_23328E3CC();
  v36 = (v53 + v52[14]);
  *v36 = v35;
  v36[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v51 - v40;
  sub_23328CE1C();
  LOBYTE(v60) = 11;
  sub_2332072E8(&qword_27DDE23F8, MEMORY[0x28220BF40]);
  sub_23328E3BC();
  sub_233121D9C(v41, v53 + v52[15], &qword_27DDE1A18, &unk_233297730);
  LOBYTE(v60) = 12;
  v42 = sub_23328E3AC();
  v43 = (v53 + v52[16]);
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v60) = 13;
  *(v53 + v52[17]) = sub_23328E40C();
  LOBYTE(v60) = 14;
  sub_23328E3FC();
  *(v53 + v52[18]) = v45;
  LOBYTE(v60) = 15;
  sub_23328E3FC();
  *(v53 + v52[19]) = v46;
  LOBYTE(v60) = 16;
  sub_23328E3FC();
  *(v53 + v52[20]) = v47;
  LOBYTE(v60) = 17;
  sub_23328E3FC();
  *(v53 + v52[21]) = v48;
  v59 = 18;
  sub_233206728();
  sub_23328E41C();
  (*(v55 + 8))(v57, v58);
  v49 = v53;
  *(v53 + v52[22]) = v60;
  sub_23320677C(v49, v56);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return sub_2332067E0(v49);
}

uint64_t sub_23320589C()
{
  sub_23328E61C();
  TTSVBVoiceSample.hash(into:)();
  return sub_23328E66C();
}

uint64_t sub_2332058E0()
{
  sub_23328E61C();
  TTSVBVoiceSample.hash(into:)();
  return sub_23328E66C();
}

BOOL sub_233205924(void *a1, void *a2)
{
  v4 = type metadata accessor for TTSVBVoiceSample();
  v5 = v4[10];
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    v10 = *v8;
    v11 = v8[1];
    if ((sub_23328E54C() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = v4[11];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v16 = v4[12];
    v17 = *(a2 + v16);
    v18 = *(a1 + v16);
    v15 = v17 < v18;
    if (v17 == v18)
    {
      if (*a2 == *a1 && a2[1] == a1[1])
      {
        v19 = 0;
        return (v19 & 1) == 0;
      }

LABEL_14:
      v19 = sub_23328E54C();
      return (v19 & 1) == 0;
    }
  }

  v19 = v15;
  return (v19 & 1) == 0;
}

BOOL sub_233205A1C(void *a1, void *a2)
{
  v4 = type metadata accessor for TTSVBVoiceSample();
  v5 = v4[10];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    v10 = *v8;
    v11 = v8[1];
    if ((sub_23328E54C() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v12 = v4[11];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v16 = v4[12];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    v15 = v17 < v18;
    if (v17 == v18)
    {
      if (*a1 == *a2 && a1[1] == a2[1])
      {
        v19 = 0;
        return (v19 & 1) == 0;
      }

LABEL_14:
      v19 = sub_23328E54C();
      return (v19 & 1) == 0;
    }
  }

  v19 = v15;
  return (v19 & 1) == 0;
}

uint64_t sub_233205B14(void *a1, void *a2)
{
  v4 = type metadata accessor for TTSVBVoiceSample();
  v5 = v4[10];
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_23328E54C() & 1) != 0))
  {
    v12 = v4[11];
    v13 = *(a2 + v12);
    v14 = *(a1 + v12);
    v15 = v13 < v14;
    if (v13 != v14)
    {
      return v15;
    }

    v16 = v4[12];
    v17 = *(a2 + v16);
    v18 = *(a1 + v16);
    v15 = v17 < v18;
    if (v17 != v18)
    {
      return v15;
    }

    if (*a2 == *a1 && a2[1] == a1[1])
    {
      return 0;
    }
  }

  return sub_23328E54C();
}

uint64_t _s31TextToSpeechVoiceBankingSupport16TTSVBVoiceSampleV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TTSVBVoiceSample();
  v5 = v4[10];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_23328E54C() & 1) != 0))
  {
    v12 = v4[11];
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    v15 = v13 < v14;
    if (v13 != v14)
    {
      return v15;
    }

    v16 = v4[12];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    v15 = v17 < v18;
    if (v17 != v18)
    {
      return v15;
    }

    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 0;
    }
  }

  return sub_23328E54C();
}

BOOL _s31TextToSpeechVoiceBankingSupport16TTSVBVoiceSampleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a2;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TTSVBVoiceSample();
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3088, &qword_23329C5E8);
  v82 = &v79;
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v79 - v9;
  v12 = *(v11 + 56);
  sub_233121D34(a1 + v6, &v79 - v9, &qword_27DDE19A0, &unk_233290360);
  sub_233121D34(v2 + v6, &v10[v12], &qword_27DDE19A0, &unk_233290360);
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v10, 1, v13) == 1)
  {
    if (v15(&v10[v12], 1, v13) == 1)
    {
      v81 = v5;
      sub_233121E04(v10, &qword_27DDE19A0, &unk_233290360);
      goto LABEL_14;
    }

LABEL_11:
    v21 = &qword_27DDE3088;
    v22 = &qword_23329C5E8;
LABEL_12:
    sub_233121E04(v10, v21, v22);
    return 0;
  }

  v81 = v5;
  v79 = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v80 = &v79;
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v79 - v18;
  sub_233121D34(v10, &v79 - v18, &qword_27DDE19A0, &unk_233290360);
  v20 = (v15)(&v10[v12], 1, v13);
  if (v20 == 1)
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_11;
  }

  v23 = *(v14 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 32))(v26, &v10[v12], v13, v24);
  sub_2332072E8(&qword_27DDE3090, MEMORY[0x28220BE00]);
  v27 = sub_23328D90C();
  v28 = *(v14 + 8);
  v28(v26, v13);
  v28(v19, v13);
  sub_233121E04(v10, &qword_27DDE19A0, &unk_233290360);
  v2 = v79;
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v29 = v81;
  if (*(a1 + v81[6]) != *(v2 + v81[6]))
  {
    return 0;
  }

  v30 = v81[7];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v34 = v29[8];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (v2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v38 = v29[9];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (v2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v42 = v29[10];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (v2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v29[11]) != *(v2 + v29[11]) || *(a1 + v29[12]) != *(v2 + v29[12]) || *(a1 + v29[13]) != *(v2 + v29[13]))
  {
    return 0;
  }

  v46 = v29[14];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (v2 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v50 = v29[15];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2490, &qword_233297F20);
  v82 = &v79;
  v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51 - 8);
  v10 = &v79 - v53;
  v55 = *(v54 + 56);
  sub_233121D34(a1 + v50, &v79 - v53, &qword_27DDE1A18, &unk_233297730);
  sub_233121D34(v2 + v50, &v10[v55], &qword_27DDE1A18, &unk_233297730);
  v56 = sub_23328CE1C();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  if (v58(v10, 1, v56) != 1)
  {
    v81 = v29;
    v79 = v2;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v80 = &v79;
    v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v59 - 8);
    v62 = &v79 - v61;
    sub_233121D34(v10, &v79 - v61, &qword_27DDE1A18, &unk_233297730);
    v63 = v58(&v10[v55], 1, v56);
    if (v63 != 1)
    {
      v64 = *(v57 + 64);
      v65 = MEMORY[0x28223BE20](v63);
      v67 = &v79 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 32))(v67, &v10[v55], v56, v65);
      sub_2332072E8(&qword_27DDE24A0, MEMORY[0x28220BF40]);
      v68 = sub_23328D90C();
      v69 = *(v57 + 8);
      v69(v67, v56);
      v69(v62, v56);
      sub_233121E04(v10, &qword_27DDE1A18, &unk_233297730);
      v2 = v79;
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    (*(v57 + 8))(v62, v56);
    goto LABEL_38;
  }

  if (v58(&v10[v55], 1, v56) != 1)
  {
LABEL_38:
    v21 = &qword_27DDE2490;
    v22 = &qword_233297F20;
    goto LABEL_12;
  }

  v81 = v29;
  sub_233121E04(v10, &qword_27DDE1A18, &unk_233297730);
LABEL_40:
  v70 = v81;
  v71 = v81[16];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (v2 + v71);
  v75 = v74[1];
  if (v73)
  {
    if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  if (*(a1 + v70[17]) == *(v2 + v70[17]) && *(a1 + v70[18]) == *(v2 + v70[18]) && *(a1 + v70[19]) == *(v2 + v70[19]) && *(a1 + v70[20]) == *(v2 + v70[20]) && *(a1 + v70[21]) == *(v2 + v70[21]))
  {
    v76 = v70[22];
    v77 = *(a1 + v76);
    v85 = *(v2 + v76);
    v86 = v77;
    sub_233157B68();
    sub_23328DB5C();
    sub_23328DB5C();
    return v84 == v83;
  }

  return 0;
}

unint64_t sub_23320662C()
{
  result = qword_27DDF92A0[0];
  if (!qword_27DDF92A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF92A0);
  }

  return result;
}

unint64_t sub_233206680()
{
  result = qword_27DDE3060;
  if (!qword_27DDE3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3060);
  }

  return result;
}

unint64_t sub_2332066D4()
{
  result = qword_27DDE3068;
  if (!qword_27DDE3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3068);
  }

  return result;
}

unint64_t sub_233206728()
{
  result = qword_27DDE3078;
  if (!qword_27DDE3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3078);
  }

  return result;
}

uint64_t sub_23320677C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceSample();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332067E0(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoiceSample();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_233206840()
{
  result = qword_27DDE3080;
  if (!qword_27DDE3080)
  {
    type metadata accessor for TTSVBVoiceSample();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3080);
  }

  return result;
}

void sub_2332068C0()
{
  sub_2332069E4(319, &qword_280D3A0D8, MEMORY[0x28220BDC8]);
  if (v0 <= 0x3F)
  {
    sub_2332069E4(319, &qword_280D3A630, MEMORY[0x28220BF58]);
    if (v1 <= 0x3F)
    {
      sub_233206A38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2332069E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23328E00C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_233206A38()
{
  if (!qword_280D3A260)
  {
    v0 = sub_23328E00C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A260);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTSVBVoiceSample.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSVBVoiceSample.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_233206BDC()
{
  result = qword_27DDF9740[0];
  if (!qword_27DDF9740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF9740);
  }

  return result;
}

unint64_t sub_233206C34()
{
  result = qword_27DDF9850;
  if (!qword_27DDF9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF9850);
  }

  return result;
}

unint64_t sub_233206C8C()
{
  result = qword_27DDF9858[0];
  if (!qword_27DDF9858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF9858);
  }

  return result;
}

uint64_t sub_233206CE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C706D6173 && a2 == 0xE800000000000000;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002332A9500 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656D656E6F6870 && a2 == 0xE800000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657361726870 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_23328E54C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C7469546B6F6F62 && a2 == 0xE900000000000065 || (sub_23328E54C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEE007865646E4968 || (sub_23328E54C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65636E65746E6573 && a2 == 0xED00007865646E49 || (sub_23328E54C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002332A94C0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xED00006574614467 || (sub_23328E54C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6172685072657375 && a2 == 0xEA00000000006573 || (sub_23328E54C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F635372657375 && a2 == 0xE900000000000065 || (sub_23328E54C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7106675 && a2 == 0xE300000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 7499379 && a2 == 0xE300000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73657268546C7073 && a2 == 0xEC000000646C6F68 || (sub_23328E54C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7365726854726E73 && a2 == 0xEC000000646C6F68 || (sub_23328E54C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 18;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_2332072E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TTSVBAudioService.RecordingResult.audioFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTSVBAudioService.RecordingResult(0) + 20);
  v4 = sub_23328CC9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTSVBAudioService.RecordingResult.userPhrase.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBAudioService.RecordingResult(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBAudioService.RecordingResult.sampleID.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBAudioService.RecordingResult(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

BOOL TTSVBAudioService.RecordingResult.hasErrors.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  if ((*((*v2 & *v1) + 0x100))() < v3)
  {
    return 1;
  }

  v5 = (*((*v2 & *v1) + 0x118))();
  return v5 < (*((*v2 & *v1) + 0x178))();
}

TextToSpeechVoiceBankingSupport::TTSVBAudioService::SoundEffect_optional __swiftcall TTSVBAudioService.SoundEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2332079BC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "recordingWillStart";
  }

  else
  {
    v2 = "VB_INVALID_ASR_DESCRIPTION";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "recordingWillStart";
  }

  else
  {
    v4 = "VB_INVALID_ASR_DESCRIPTION";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23328E54C();
  }

  return v5 & 1;
}

uint64_t sub_233207A60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_233207AC0(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "recordingWillStart";
  }

  else
  {
    v2 = "VB_INVALID_ASR_DESCRIPTION";
  }

  *a1 = 0xD000000000000012;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_233207AF8()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233207B70()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_233207BD4()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

id sub_233207C68()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine);
  }

  else
  {
    v4 = sub_233207CC8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_233207CC8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v3 = sub_23328CC9C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_23328D95C();
  v10 = sub_23328D95C();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_23328CC4C();

    v12 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v13 = sub_2331D1684(v6);
    v14 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode;
    [v2 attachNode_];
    v15 = *(v1 + v14);
    v16 = [v2 outputNode];
    v17 = [v13 processingFormat];
    [v2 connect:v15 to:v16 format:v17];

    return v2;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_233207EFC()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE6598]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t TTSVBAudioService.numberOfAudioMagnitudes.getter()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_numberOfAudioMagnitudes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTSVBAudioService.numberOfAudioMagnitudes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_numberOfAudioMagnitudes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TTSVBAudioService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTSVBAudioService.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE30A8, &qword_23329C688);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v152 = &v149 - v2;
  v3 = sub_23328DEAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328DE7C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_23328D80C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v160 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue;
  v170 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  v159 = "recordingDidFinish";
  sub_23328D7EC();
  v171 = MEMORY[0x277D84F90];
  v12 = sub_23321CD30(&qword_280D3A230, MEMORY[0x277D85230]);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  v13 = sub_23315246C(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  v167 = v8;
  v168 = v13;
  v163 = v12;
  sub_23328E14C();
  v14 = *MEMORY[0x277D85268];
  v15 = *(v4 + 104);
  v157 = v7;
  v158 = v15;
  v16 = v7;
  v17 = v14;
  LODWORD(v162) = v14;
  v164 = v3;
  v15(v16);
  v161 = v4 + 104;
  v18 = sub_23328DEDC();
  v19 = v165;
  *&v165[v160] = v18;
  v160 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue;
  sub_23328D7EC();
  v171 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v20 = v157;
  v21 = v17;
  v22 = v158;
  v158(v157, v21, v3);
  *&v19[v160] = sub_23328DEDC();
  v23 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
  v24 = type metadata accessor for TTSVBAudioService.State(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_23321A144();
  *&v19[v23] = v27;
  v28 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode;
  *&v19[v28] = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  *&v19[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine] = 0;
  *&v19[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer] = 0;
  *&v19[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_cancellables] = MEMORY[0x277D84FA0];
  v29 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioIOQueue;
  sub_23328D7EC();
  v30 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v22(v20, v162, v164);
  *&v19[v29] = sub_23328DEDC();
  *&v19[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_numberOfAudioMagnitudes] = 0;
  v31 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService;
  type metadata accessor for TTSVBSpeechRecognitionService();
  *&v19[v31] = sub_2331C83CC();
  v32 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_cachedSoundEffects;
  *&v19[v32] = sub_23321BC1C(v30);
  v33 = [objc_opt_self() sharedInstance];
  *&v19[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession] = v33;
  v172.receiver = v19;
  v172.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v172, sel_init);
  v35 = objc_opt_self();
  v36 = v34;
  v159 = [v35 defaultCenter];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3100, &qword_23329C690);
  v165 = *(v157 - 8);
  v168 = *(v165 + 8);
  MEMORY[0x28223BE20](v157);
  v154 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v149 - v154;
  v39 = sub_23328DF0C();
  v40 = *(v39 - 8);
  v169 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v167 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v149 - v167;
  v43 = *MEMORY[0x277CE6158];
  v44 = sub_233207EFC();
  sub_23328DF1C();

  v155 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue;
  v171 = *&v36[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v45 = v171;
  v158 = sub_23328DE9C();
  v46 = *(v158 - 1);
  v162 = *(v46 + 56);
  v164 = v46 + 56;
  v47 = v152;
  v162(v152, 1, 1, v158);
  ObjectType = sub_23321CFDC(&qword_27DDE3108, MEMORY[0x28220C428]);
  v163 = sub_23321BD10();
  v48 = v45;
  sub_23328D78C();
  sub_233121E04(v47, &qword_27DDE30A8, &qword_23329C688);

  v153 = *(v40 + 8);
  v161 = v40 + 8;
  v153(v42, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v160 = sub_23315246C(&qword_27DDE3118, &qword_27DDE3100, &qword_23329C690);
  v49 = v157;
  sub_23328D79C();

  v50 = *(v165 + 1);
  v165 += 8;
  v156 = v50;
  v50(v38, v49);
  v51 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_cancellables;
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v52);
  v53 = v154;
  MEMORY[0x28223BE20](v54);
  v55 = &v149 - v167;
  v56 = *MEMORY[0x277CB8008];
  sub_23328DF1C();
  v57 = v155;
  v171 = *&v36[v155];
  v58 = v171;
  v59 = v152;
  v162(v152, 1, 1, v158);
  v60 = v58;
  sub_23328D78C();
  sub_233121E04(v59, &qword_27DDE30A8, &qword_23329C688);

  v153(v55, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v157;
  sub_23328D79C();

  v156(&v149 - v53, v61);
  v151 = v51;
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v62);
  v63 = &v149 - v53;
  MEMORY[0x28223BE20](v64);
  v65 = &v149 - v167;
  v66 = *MEMORY[0x277CB8068];
  sub_23328DF1C();
  v171 = *&v36[v57];
  v67 = v171;
  v162(v59, 1, 1, v158);
  v68 = v67;
  v150 = v39;
  sub_23328D78C();
  sub_233121E04(v59, &qword_27DDE30A8, &qword_23329C688);

  v153(v65, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v157;
  sub_23328D79C();

  v156(v63, v69);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v70);
  v71 = &v149 - v154;
  MEMORY[0x28223BE20](v72);
  v73 = &v149 - v167;
  v74 = *MEMORY[0x277CB8210];
  sub_23328DF1C();
  v75 = v155;
  v171 = *&v36[v155];
  v76 = v171;
  v77 = v152;
  v162(v152, 1, 1, v158);
  v78 = v76;
  v79 = v150;
  sub_23328D78C();
  sub_233121E04(v77, &qword_27DDE30A8, &qword_23329C688);

  v80 = v153;
  v153(v73, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = v157;
  sub_23328D79C();

  v156(v71, v81);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v82);
  v83 = &v149 - v154;
  MEMORY[0x28223BE20](v84);
  v85 = &v149 - v167;
  v86 = *MEMORY[0x277CB8098];
  sub_23328DF1C();
  v171 = *&v36[v75];
  v87 = v171;
  v88 = v152;
  v89 = v158;
  v162(v152, 1, 1, v158);
  v90 = v87;
  v91 = v150;
  sub_23328D78C();
  sub_233121E04(v88, &qword_27DDE30A8, &qword_23329C688);

  v92 = v91;
  v80(v85, v91);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = v157;
  sub_23328D79C();

  v156(v83, v93);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v94);
  v95 = &v149 - v154;
  MEMORY[0x28223BE20](v96);
  v97 = &v149 - v167;
  v98 = *MEMORY[0x277CB80A0];
  sub_23328DF1C();
  v171 = *&v36[v155];
  v99 = v171;
  v100 = v152;
  v101 = v89;
  v102 = v162;
  v162(v152, 1, 1, v101);
  v103 = v99;
  sub_23328D78C();
  sub_233121E04(v100, &qword_27DDE30A8, &qword_23329C688);

  v153(v97, v92);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v104 = v157;
  sub_23328D79C();

  v105 = v156;
  v156(v95, v104);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v106);
  v107 = &v149 - v154;
  MEMORY[0x28223BE20](v108);
  v109 = &v149 - v167;
  v110 = *MEMORY[0x277CB8230];
  sub_23328DF1C();
  v171 = *&v36[v155];
  v111 = v171;
  v102(v100, 1, 1, v158);
  v112 = v111;
  v113 = v150;
  sub_23328D78C();
  sub_233121E04(v100, &qword_27DDE30A8, &qword_23329C688);

  v153(v109, v113);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = v157;
  sub_23328D79C();

  v105(v107, v114);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v115);
  v116 = v154;
  MEMORY[0x28223BE20](v117);
  v118 = &v149 - v167;
  v119 = *MEMORY[0x277CB8248];
  sub_23328DF1C();
  v171 = *&v36[v155];
  v120 = v171;
  v121 = v152;
  v162(v152, 1, 1, v158);
  v122 = v120;
  sub_23328D78C();
  sub_233121E04(v121, &qword_27DDE30A8, &qword_23329C688);

  v153(v118, v113);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = v157;
  sub_23328D79C();

  v124 = v156;
  v156(&v149 - v116, v123);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v125);
  v126 = &v149 - v116;
  MEMORY[0x28223BE20](v127);
  v128 = &v149 - v167;
  v129 = *MEMORY[0x277CB8128];
  sub_23328DF1C();
  v171 = *&v36[v155];
  v130 = v171;
  v131 = v152;
  v162(v152, 1, 1, v158);
  v132 = v130;
  v133 = v150;
  sub_23328D78C();
  sub_233121E04(v131, &qword_27DDE30A8, &qword_23329C688);

  v134 = v153;
  v153(v128, v133);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23328D79C();

  v124(v126, v123);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  MEMORY[0x28223BE20](v135);
  v136 = &v149 - v154;
  MEMORY[0x28223BE20](v137);
  v138 = &v149 - v167;
  v139 = *MEMORY[0x277CB8228];
  sub_23328DF1C();
  v171 = *&v36[v155];
  v140 = v171;
  v141 = v131;
  v162(v131, 1, 1, v158);
  v142 = v140;
  sub_23328D78C();
  sub_233121E04(v141, &qword_27DDE30A8, &qword_23329C688);

  v134(v138, v133);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23328D79C();

  v156(v136, v123);
  swift_beginAccess();
  sub_23328D70C();
  swift_endAccess();

  v143 = *(*&v36[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + 64);
  v144 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession;
  v145 = *&v36[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession];

  LOBYTE(v171) = [v145 isInputAvailable];
  sub_23328D74C();

  v146 = *&v36[v144];
  v147 = sub_23328D95C();
  [v146 addObserver:v36 forKeyPath:v147 options:0 context:0];

  return v36;
}

void sub_233209940()
{
  v1 = v0;
  v32 = 0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = *(*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 16);

  sub_23328D73C();

  v10 = v36;
  v11 = sub_233225380();
  v12 = v2;
  v31 = v3[2];
  v31(v8, v11, v2);
  v13 = sub_23328D6CC();
  v14 = sub_23328DE4C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v10;
    _os_log_impl(&dword_233109000, v13, v14, "Got audio engine config change. wasRunning=%{BOOL}d. Restarting audio engine.", v15, 8u);
    MEMORY[0x23839CFD0](v15, -1, -1);
  }

  v16 = v3[1];
  v16(v8, v12);
  sub_23320C788();
  v17 = v32;
  if (v32)
  {
    v31(v33, v11, v12);
    v22 = v17;
    v23 = sub_23328D6CC();
    v24 = sub_23328DE3C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v17;
      v27 = swift_slowAlloc();
      *v25 = 138412290;
      sub_2331524CC(&v36);
      v34 = v36;
      v35 = v37;
      type metadata accessor for TTSVBError(0);
      sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      static TTSVBError.map(_:_:)(v26, &v34, v28);
      sub_2331220AC(v34, *(&v34 + 1), v35);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_233109000, v23, v24, "%@", v25, 0xCu);
      sub_233121E04(v27, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v27, -1, -1);
      MEMORY[0x23839CFD0](v25, -1, -1);
    }

    else
    {
    }

    v16(v33, v12);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
    v19 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode);
    *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode) = v18;

    v20 = sub_233207CC8();
    v21 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine);
    *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___audioEngine) = v20;

    sub_23320BF7C();
  }
}

void sub_233209D30()
{
  v0 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23328C91C();
    if (*(&v46 + 1))
    {
      sub_233145134(&v45, v44);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v6 = *&v43[0];
      if (*&v43[0] != *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v7 = sub_23328C92C();
      if (!v7)
      {
        goto LABEL_32;
      }

      v8 = v7;
      v9 = *MEMORY[0x277CB8080];
      *&v45 = sub_23328D98C();
      *(&v45 + 1) = v10;

      sub_23328E1EC();
      if (*(v8 + 16))
      {
        v11 = sub_2331EA6D0(v44);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v8 + 56) + 32 * v13, v43);

          sub_2331EACC8(v44);
          sub_233145134(v43, &v45);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v41 = v42;
          v40 = [v42 unsignedIntegerValue];
          v14 = sub_23328C92C();
          if (v14)
          {
            v15 = v14;
            v16 = *MEMORY[0x277CB8070];
            *&v43[0] = sub_23328D98C();
            *(&v43[0] + 1) = v17;
            sub_23328E1EC();
            if (*(v15 + 16))
            {
              v18 = sub_2331EA6D0(v44);
              if (v19)
              {
                sub_23311B0C0(*(v15 + 56) + 32 * v18, &v45);
                sub_2331EACC8(v44);

                if (*(&v46 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v20 = *&v44[0];
                    v39 = [*&v44[0] unsignedIntegerValue];

                    HIDWORD(v38) = 0;
                    goto LABEL_18;
                  }

LABEL_17:
                  v39 = 0;
                  HIDWORD(v38) = 1;
LABEL_18:
                  v21 = sub_23328C92C();
                  if (v21)
                  {
                    v22 = v21;
                    v23 = *MEMORY[0x277CB8078];
                    *&v43[0] = sub_23328D98C();
                    *(&v43[0] + 1) = v24;
                    sub_23328E1EC();
                    if (*(v22 + 16))
                    {
                      v25 = sub_2331EA6D0(v44);
                      if (v26)
                      {
                        sub_23311B0C0(*(v22 + 56) + 32 * v25, &v45);
                        sub_2331EACC8(v44);

                        if (*(&v46 + 1))
                        {
                          v27 = v6;
                          if (swift_dynamicCast())
                          {
                            v28 = *&v44[0];
                            v29 = [*&v44[0] unsignedIntegerValue];

                            v30 = 0;
LABEL_28:
                            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3178, &unk_23329C6E8);
                            v32 = v31[12];
                            v33 = v31[16];
                            v34 = v3 + v31[20];
                            v35 = v3 + v31[24];
                            *v3 = v27;
                            v36 = v27;
                            sub_23328CE0C();
                            v37 = v39;
                            *(v3 + v33) = v40;
                            *v34 = v37;
                            v34[8] = BYTE4(v38);
                            *v35 = v29;
                            v35[8] = v30;
                            swift_storeEnumTagMultiPayload();
                            sub_23320A1F0(v3);

                            sub_23321DB24(v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
                            return;
                          }

LABEL_27:
                          v29 = 0;
                          v30 = 1;
                          goto LABEL_28;
                        }

LABEL_26:
                        v27 = v6;
                        sub_233121E04(&v45, &qword_27DDE2660, &qword_233298100);
                        goto LABEL_27;
                      }
                    }

                    sub_2331EACC8(v44);
                  }

                  v45 = 0u;
                  v46 = 0u;
                  goto LABEL_26;
                }

LABEL_16:
                sub_233121E04(&v45, &qword_27DDE2660, &qword_233298100);
                goto LABEL_17;
              }
            }

            sub_2331EACC8(v44);
          }

          v45 = 0u;
          v46 = 0u;
          goto LABEL_16;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_23320A1F0(uint64_t a1)
{
  v62 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - v7;
  v63 = sub_23328D6EC();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v63);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23328D83C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x277D85200], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_23328D85C();
  result = (*(v14 + 8))(v18, v13);
  if (v19)
  {
    v22 = sub_233225380();
    (*(v9 + 16))(v12, v22, v63);
    sub_23321DF10(a1, v8, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    v23 = v1;
    v24 = sub_23328D6CC();
    v25 = sub_23328DE1C();

    v26 = os_log_type_enabled(v24, v25);
    v61 = v23;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v70 = v59;
      *v27 = 136316162;
      v57 = v24;
      v58 = v25;
      v28 = sub_233219D70();
      v60 = a1;
      v30 = v29;
      sub_23321DB24(v8, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
      v31 = sub_23311A8F4(v28, v30, &v70);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = *&v23[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession];
      v33 = [v32 category];
      v68 = sub_23328D98C();
      v69 = v34;
      v66 = 0xD000000000000016;
      v67 = 0x80000002332AAEE0;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_23311A294();
      v35 = sub_23328E06C();
      v37 = v36;

      v38 = sub_23311A8F4(v35, v37, &v70);

      *(v27 + 14) = v38;
      *(v27 + 22) = 2080;
      v39 = sub_2332169B0([v32 categoryOptions]);
      v41 = sub_23311A8F4(v39, v40, &v70);

      *(v27 + 24) = v41;
      *(v27 + 32) = 2080;
      v42 = [v32 mode];
      v43 = sub_23328D98C();
      v45 = v44;

      v46 = sub_23311A8F4(v43, v45, &v70);

      *(v27 + 34) = v46;
      *(v27 + 42) = 2080;
      v47 = [v32 currentRoute];
      v48 = sub_233218D68();
      v50 = v49;

      a1 = v60;
      v51 = sub_23311A8F4(v48, v50, &v70);

      *(v27 + 44) = v51;
      v52 = v57;
      _os_log_impl(&dword_233109000, v57, v58, "Got audio session event: %s. CurrentCategory=%s CurrentOptions=%s CurrentMode=%s CurrentRoute=%s", v27, 0x34u);
      v53 = v59;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v53, -1, -1);
      MEMORY[0x23839CFD0](v27, -1, -1);
    }

    else
    {

      sub_23321DB24(v8, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    }

    (*(v9 + 8))(v12, v63);
    sub_23321DF10(a1, v5, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
      v55 = *(v54 + 48);

      v56 = sub_23328CE1C();
      (*(*(v56 - 8) + 8))(v5 + v55, v56);
      return sub_233218B40();
    }

    else
    {
      return sub_23321DB24(v5, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23320A814()
{
  v0 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23328C91C();
    if (v35)
    {
      sub_233145134(&v34, v33);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v6 = *&v32[0];
      if (*&v32[0] != *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v7 = sub_23328C92C();
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = v7;
      v9 = *MEMORY[0x277CB8220];
      *&v34 = sub_23328D98C();
      *(&v34 + 1) = v10;

      sub_23328E1EC();
      if (*(v8 + 16))
      {
        v11 = sub_2331EA6D0(v33);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v8 + 56) + 32 * v13, v32);

          sub_2331EACC8(v33);
          sub_233145134(v32, &v34);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v31;
          v15 = [v31 unsignedIntegerValue];
          v16 = sub_23328C92C();
          if (!v16)
          {
LABEL_17:
            __break(1u);
            return;
          }

          v17 = v16;
          v30 = v15;
          v18 = *MEMORY[0x277CB8218];
          *&v34 = sub_23328D98C();
          *(&v34 + 1) = v19;

          sub_23328E1EC();
          if (*(v17 + 16))
          {
            v20 = sub_2331EA6D0(v33);
            if (v21)
            {
              v22 = v20;

              sub_23311B0C0(*(v17 + 56) + 32 * v22, v32);

              sub_2331EACC8(v33);
              sub_233145134(v32, &v34);
              sub_233144EEC(0, &qword_27DDE31D8, 0x277CB8418);
              swift_dynamicCast();
              v23 = v31;
              v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
              v25 = v24[12];
              v26 = v24[16];
              v27 = v24[20];
              *v3 = v6;
              v28 = v6;
              sub_23328CE0C();
              *(v3 + v26) = v30;
              *(v3 + v27) = v23;
              swift_storeEnumTagMultiPayload();
              v29 = v23;
              sub_23320A1F0(v3);

              sub_23321DB24(v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
              return;
            }
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_23320ABB0()
{
  v0 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23328C91C();
    if (v25)
    {
      sub_233145134(&v24, v23);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v6 = *&v22[0];
      if (*&v22[0] != *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v7 = sub_23328C92C();
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = v7;
      v9 = *MEMORY[0x277CB8238];
      *&v24 = sub_23328D98C();
      *(&v24 + 1) = v10;

      sub_23328E1EC();
      if (*(v8 + 16))
      {
        v11 = sub_2331EA6D0(v23);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v8 + 56) + 32 * v13, v22);

          sub_2331EACC8(v23);
          sub_233145134(v22, &v24);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v21;
          v15 = [v21 unsignedIntegerValue];
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8);
          v17 = *(v16 + 48);
          v18 = *(v16 + 64);
          *v3 = v6;
          v19 = v6;
          sub_23328CE0C();
          *(v3 + v18) = v15;
          swift_storeEnumTagMultiPayload();
          sub_23320A1F0(v3);

          sub_23321DB24(v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
          return;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_23320AE4C()
{
  v0 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23328C91C();
    if (v25)
    {
      sub_233145134(&v24, v23);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v6 = *&v22[0];
      if (*&v22[0] != *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v7 = sub_23328C92C();
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = v7;
      v9 = *MEMORY[0x277CB8240];
      *&v24 = sub_23328D98C();
      *(&v24 + 1) = v10;

      sub_23328E1EC();
      if (*(v8 + 16))
      {
        v11 = sub_2331EA6D0(v23);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v8 + 56) + 32 * v13, v22);

          sub_2331EACC8(v23);
          sub_233145134(v22, &v24);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v21;
          v15 = [v21 BOOLValue];

          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0);
          v17 = *(v16 + 48);
          v18 = *(v16 + 64);
          *v3 = v6;
          v19 = v6;
          sub_23328CE0C();
          *(v3 + v18) = v15;
          swift_storeEnumTagMultiPayload();
          sub_23320A1F0(v3);

          sub_23321DB24(v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
          return;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_23320B0E0()
{
  v0 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23328C91C();
    if (v11)
    {
      sub_233145134(&v10, &v12);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v6 = v9;
      if (v9 == *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
        *v3 = v6;
        v8 = v6;
        sub_23328CE0C();
        swift_storeEnumTagMultiPayload();
        sub_23320A1F0(v3);

        sub_23321DB24(v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23320B324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B0, &qword_23329CE60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v11[1] = *(*(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B8, &qword_23329CE68);
  sub_23315246C(&qword_27DDE32C0, &qword_27DDE32B8, &qword_23329CE68);
  sub_23328D77C();

  sub_23315246C(&qword_27DDE32C8, &qword_27DDE32B0, &qword_23329CE60);
  v9 = sub_23328D76C();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_23320B51C()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  sub_23328DEBC();
  return v3;
}

uint64_t TTSVBAudioService.audioMagnitudes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3128, &qword_23329C6A0);
  sub_23328DEBC();
  return v3;
}

double TTSVBAudioService.audioLevel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  sub_23328DEBC();
  return v3;
}

uint64_t TTSVBAudioService.inputSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3140, &qword_23329C6B8);
  sub_23328DEBC();
  return v3;
}

uint64_t TTSVBAudioService.isInputAvailable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  sub_23328DEBC();
  return v3;
}

uint64_t sub_23320B820(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_23328DEBC();
  return v5;
}

void sub_23320B9D0(unsigned __int8 *a1)
{
  swift_getObjectType();
  LODWORD(a1) = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_23328D95C();

  v5 = sub_23328D95C();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_23328CC4C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320BB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320BF7C();
  v14 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_263;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_23320BF7C()
{
  v2 = v0;
  v38 = type metadata accessor for TTSVBError.Reason(0);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D6EC();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_23328D83C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x277D85200], v12, v15);
  v19 = v18;
  LOBYTE(v18) = sub_23328D85C();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    sub_233213B70(*MEMORY[0x277CB80B0]);
    if (!v1)
    {
      v20 = sub_233207C68();
      v21 = [v20 isRunning];

      if (v21)
      {
        v22 = sub_233225380();
        v23 = v42;
        (*(v42 + 16))(v8, v22, v5);
        v24 = sub_23328D6CC();
        v25 = sub_23328DE4C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_233109000, v24, v25, "Will not start audio engine. Already running", v26, 2u);
          MEMORY[0x23839CFD0](v26, -1, -1);
        }

        (*(v23 + 8))(v8, v5);
      }

      else
      {
        v27 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
        v28 = *(**(*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 248);

        v28(v29);

        sub_233214E78();
        v30 = sub_233225380();
        v31 = v42;
        (*(v42 + 16))(v11, v30, v5);
        v32 = sub_23328D6CC();
        v33 = sub_23328DE4C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_233109000, v32, v33, "Will start audio engine", v34, 2u);
          v31 = v42;
          MEMORY[0x23839CFD0](v34, -1, -1);
        }

        v35 = (*(v31 + 8))(v11, v5);
        MEMORY[0x28223BE20](v35);
        *(&v38 - 2) = v2;
        v40 = xmmword_23329C610;
        v41 = 3;
        v36 = v39;
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_23321E054, (&v38 - 4), &v40, v36);
        sub_23321DB24(v36, type metadata accessor for TTSVBError.Reason);
        v37 = *(*(v2 + v27) + 16);
        LOBYTE(v40) = 1;

        sub_23328D74C();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320C4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320C788();
  v18[1] = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_251;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_23320C788()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    [*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode) stop];
    v16 = sub_233225380();
    (*(v3 + 16))(v6, v16, v2);
    v17 = sub_23328D6CC();
    v18 = sub_23328DE4C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_233109000, v17, v18, "Will stop audio engine", v19, 2u);
      MEMORY[0x23839CFD0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = sub_233207C68();
    [v20 stop];

    v21 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    v22 = *(**(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 248);

    v22(v23);

    sub_233215748();
    v24 = *(*(v1 + v21) + 16);
    v25[15] = 0;

    sub_23328D74C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23320CA70(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &unk_27DDE25D0, &unk_233290330);
}

uint64_t TTSVBAudioService.playAudioFile(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v5 = sub_23328D7CC();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v16);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v14 + 32))(v20 + v18, v17, v13);
  v21 = (v20 + v19);
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  aBlock[4] = sub_23321CD84;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_27;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  sub_23328D7DC();
  v33 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v8, v23);
  _Block_release(v23);
  (*(v32 + 8))(v8, v5);
  (*(v30 + 8))(v12, v31);
}

uint64_t sub_23320CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23328D7CC();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D80C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320D1D8(a2);
  v16 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_239;
  v18 = _Block_copy(aBlock);

  sub_23328D7DC();
  v23 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_23320D1D8(uint64_t a1)
{
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v61 = v1;
    v16 = sub_233225380();
    v59 = v4;
    (*(v4 + 16))(v7, v16, v3);
    v17 = sub_23328CC9C();
    v18 = *(v17 - 8);
    v19 = v7;
    v20 = v18[8];
    v21 = MEMORY[0x28223BE20](v17);
    v22 = v18[2];
    v60 = a1;
    v22(&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v21);
    v58 = v19;
    v23 = sub_23328D6CC();
    v24 = sub_23328DE4C();
    v25 = os_log_type_enabled(v23, v24);
    v57 = v18;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v54 = v3;
      v27 = v26;
      v28 = swift_slowAlloc();
      v62[0] = v28;
      *v27 = 136315138;
      v29 = sub_23328CC6C();
      v55 = &v53;
      v31 = v30;
      v56 = v18[1];
      v56(&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      v32 = sub_23311A8F4(v29, v31, v62);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_233109000, v23, v24, "Will play audio file: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23839CFD0](v28, -1, -1);
      MEMORY[0x23839CFD0](v27, -1, -1);

      v33 = (*(v59 + 8))(v58, v54);
    }

    else
    {

      v56 = v18[1];
      v56(&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      v33 = (*(v59 + 8))(v58, v3);
    }

    v34 = v17;
    MEMORY[0x28223BE20](v33);
    v35 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v36);
    v38 = &v53 - v37;
    v39 = v61;
    v40 = sub_233207EFC();
    v41 = [v40 currentItem];

    if (v41)
    {
      v42 = [v41 asset];

      if (v42)
      {
        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          v44 = [v43 URL];

          sub_23328CC4C();
          (v57[4])(v35, v38, v34);
          if (sub_23328CC2C())
          {
            v45 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer;
            v46 = *(v39 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer);
            v47 = *(MEMORY[0x277CC08F0] + 16);
            v62[0] = *MEMORY[0x277CC08F0];
            v62[1] = *(MEMORY[0x277CC08F0] + 8);
            v62[2] = v47;
            [v46 seekToTime_];
            [*(v39 + v45) play];
            v56(v35, v34);
            return;
          }

          v56(v35, v34);
        }

        else
        {
        }
      }
    }

    v48 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v49 = sub_23328CBCC();
    v50 = [v48 initWithURL:v49 options:0];

    v51 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
    v52 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer;
    [*(v39 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer) replaceCurrentItemWithPlayerItem_];
    [*(v39 + v52) play];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320D80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320DAF0();
  v18[1] = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_227;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_23320DAF0()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v47[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47[-1] - v8;
  v10 = sub_23328D83C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v47[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v15 = v16;
  (*(v11 + 104))(v15, *MEMORY[0x277D85200], v10, v13);
  v17 = v16;
  LOBYTE(v16) = sub_23328D85C();
  result = (*(v11 + 8))(v15, v10);
  if (v16)
  {
    v19 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    v20 = *(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 24);

    sub_23328D73C();

    if (v48)
    {
      v21 = sub_233225380();
      (*(v3 + 16))(v6, v21, v2);
      v22 = sub_23328D6CC();
      v23 = sub_23328DE3C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_233109000, v22, v23, "Cannot stop recording. isRecording already false", v24, 2u);
        MEMORY[0x23839CFD0](v24, -1, -1);
      }

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService)) + 0x1B0))(0);
      v25 = *(*(v1 + v19) + 24);

      sub_23328D73C();
      v26 = v47[0];
      v27 = v48;
      v49.value = 0;
      v49.is_nil = 1;
      v28 = TTSVBTimestampInSeconds(when:)(v49);
      if (!v27 || (v29 = 0, v27 == 1))
      {
        v29 = v26;
      }

      v47[0] = v29;
      *&v47[1] = v28;
      v48 = 1;
      sub_23328D74C();

      v30 = sub_233225380();
      (*(v3 + 16))(v9, v30, v2);
      v31 = sub_23328D6CC();
      v32 = sub_23328DE4C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47[0] = v46;
        *v33 = 136315138;
        v50.value = 0;
        v50.is_nil = 1;
        v34 = TTSVBTimestampInSeconds(when:)(v50);
        v35 = sub_23316A360(v34);
        v37 = sub_23311A8F4(v35, v36, v47);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_233109000, v31, v32, "StopRecording. hostTime=%s", v33, 0xCu);
        v38 = v46;
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x23839CFD0](v38, -1, -1);
        MEMORY[0x23839CFD0](v33, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      v39 = *(v1 + v19);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v40 - 8);
      v43 = &v47[-1] - v42;
      v44 = sub_23328CC9C();
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v45 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
      swift_beginAccess();

      sub_23321DEA0(v43, v39 + v45);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTSVBAudioService.beginNewRecording(expectedSpeech:localeInfo:recordingEnvironment:audioFileURL:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v71 = a6;
  v72 = a2;
  v70 = a1;
  v79 = sub_23328D7CC();
  v78 = *(v79 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23328D80C();
  v75 = *(v76 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D6EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[1];
  v84 = *a3;
  v85 = v19;
  v86 = a3[2];
  v69 = *a4;
  v20 = sub_233225380();
  (*(v15 + 16))(v18, v20, v14);
  v21 = sub_23328CC9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v25 = *(v22 + 16);
  v80 = v26;
  v66 = v25;
  (v25)(&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v24);
  v68 = v18;
  v27 = sub_23328D6CC();
  v28 = sub_23328DE4C();
  v29 = os_log_type_enabled(v27, v28);
  v65 = v22;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = a5;
    v31 = v30;
    v32 = swift_slowAlloc();
    v64 = v15;
    v33 = v32;
    aBlock[0] = v32;
    *v31 = 136315138;
    v34 = sub_23328CB9C();
    v63 = v14;
    v36 = v35;
    (*(v22 + 8))(&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
    v37 = sub_23311A8F4(v34, v36, aBlock);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_233109000, v27, v28, "Will begin new recording: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23839CFD0](v33, -1, -1);
    v38 = v31;
    a5 = v67;
    MEMORY[0x23839CFD0](v38, -1, -1);

    v39 = (*(v64 + 8))(v68, v63);
  }

  else
  {

    (*(v22 + 8))(&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
    v39 = (*(v15 + 8))(v68, v14);
  }

  v68 = &v62;
  v67 = *&v81[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v64 = *&v81[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state];
  v40 = v64;
  v41 = MEMORY[0x28223BE20](v39);
  v42 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v80;
  v66(v42, a5, v80, v41);
  v44 = v65;
  v45 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v46 = (v23 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v40;
  (*(v44 + 32))(v48 + v45, v42, v43);
  v49 = v81;
  *(v48 + v46) = v81;
  v50 = (v48 + v47);
  v51 = v72;
  *v50 = v70;
  v50[1] = v51;
  v52 = v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8);
  v53 = v86;
  *(v52 + 16) = v85;
  *(v52 + 32) = v53;
  *v52 = v84;
  *(v52 + 48) = v69;
  v54 = (v48 + ((v47 + 79) & 0xFFFFFFFFFFFFFFF8));
  v55 = v73;
  *v54 = v71;
  v54[1] = v55;
  aBlock[4] = sub_23321CE24;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_39;
  v56 = _Block_copy(aBlock);

  swift_retain_n();
  v57 = v49;
  sub_2331CCAC4(&v84, v82);

  v58 = v74;
  sub_23328D7DC();
  v82[0] = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v59 = v77;
  v60 = v79;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v58, v59, v56);
  _Block_release(v56);

  (*(v78 + 8))(v59, v60);
  (*(v75 + 8))(v58, v76);
}

uint64_t sub_23320E7B8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9)
{
  v109 = a7;
  v108 = a6;
  v110 = a4;
  v111 = a5;
  v119 = a9;
  v120 = a2;
  v12 = sub_23328D7CC();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_23328D80C();
  v113 = *(v115 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTSVBError.Reason(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D6EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  v118 = a1;
  v31 = *(a1 + 24);

  sub_23328D73C();

  LODWORD(a1) = v124;
  v32 = sub_233225380();
  v121 = v22;
  v33 = *(v22 + 16);
  if (!a1)
  {
    v49 = a8;
    v33(v30, v32, v21);
    v50 = sub_23328D6CC();
    v51 = sub_23328DE3C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_233109000, v50, v51, "Cannot begin recording. isRecording already true", v52, 2u);
      MEMORY[0x23839CFD0](v52, -1, -1);
    }

    (*(v121 + 8))(v30, v21);
    aBlock = xmmword_23329C620;
    LOBYTE(v124) = 3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v53 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v20, 0, v54);
    swift_willThrow();
    v77 = *&a3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue];
    v78 = swift_allocObject();
    v79 = v119;
    v78[2] = v49;
    v78[3] = v79;
    v78[4] = v53;
    *&v125 = sub_23321EA5C;
    *(&v125 + 1) = v78;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v124 = sub_2331221F8;
    *(&v124 + 1) = &block_descriptor_212;
    v80 = _Block_copy(&aBlock);

    v81 = v53;
    v82 = v112;
    sub_23328D7DC();
    v122 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v83 = v114;
    v84 = v117;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v82, v83, v80);
    _Block_release(v80);

    (*(v116 + 8))(v83, v84);
    (*(v113 + 8))(v82, v115);
  }

  v105 = a3;
  v106 = a8;
  v103 = v32;
  v100 = v22 + 16;
  v104 = v33;
  (v33)(v27);
  v34 = sub_23328CC9C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v35 + 16);
  v102 = v35 + 16;
  v101 = v40;
  (v40)(v39, v120, v34, v37);
  v41 = sub_23328D6CC();
  v42 = sub_23328DE1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&aBlock = v99;
    *v43 = 136315138;
    v44 = sub_23328CC6C();
    v98 = &v98;
    v46 = v45;
    (*(v35 + 8))(v39, v34);
    v47 = sub_23311A8F4(v44, v46, &aBlock);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_233109000, v41, v42, "Will begin new audio recording: %s", v43, 0xCu);
    v48 = v99;
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x23839CFD0](v48, -1, -1);
    MEMORY[0x23839CFD0](v43, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v39, v34);
  }

  v55 = v21;
  v99 = *(v121 + 8);
  (v99)(v27, v21);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v60 = &v98 - v59;
  v61 = *(v35 + 56);
  v61(&v98 - v59, 1, 1, v34, v58);
  v62 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  v63 = v118;
  swift_beginAccess();
  sub_23321DEA0(v60, v63 + v62);
  sub_233121E04(v63 + v62, &qword_27DDE19A0, &unk_233290360);
  v101(v63 + v62, v120, v34);
  (v61)(v63 + v62, 0, 1, v34);
  swift_endAccess();
  v64 = *sub_233165CA0();
  NSUserDefaults.ttsvb_recordingMode.getter();

  if (aBlock == 2)
  {
    v65 = v105;
    v67 = v110;
    v66 = v111;
    v68 = v104;
    v69 = v103;
  }

  else
  {
    v65 = v105;
    v67 = v110;
    v66 = v111;
    v68 = v104;
    v69 = v103;
    if (aBlock)
    {
      goto LABEL_14;
    }
  }

  v70 = v107;
  v68(v107, v69, v55);
  v71 = sub_23328D6CC();
  v72 = sub_23328DE1C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_233109000, v71, v72, "Will generate new speech recognition task", v73, 2u);
    MEMORY[0x23839CFD0](v73, -1, -1);
  }

  (v99)(v70, v55);
  v74 = *&v65[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService];
  v75 = v108[1];
  aBlock = *v108;
  v124 = v75;
  v125 = v108[2];
  LOBYTE(v122) = v109 & 1;
  (*((*MEMORY[0x277D85000] & *v74) + 0x1A0))(v67, v66, &aBlock, &v122);
LABEL_14:
  sub_23320BF7C();
  v76 = v106;
  v85 = [*&v65[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession] currentRoute];
  v86 = [v85 inputs];

  sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
  v87 = sub_23328DBFC();

  if (v87 >> 62)
  {
    result = sub_23328E19C();
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_20:

      LOBYTE(aBlock) = 0;
      v95 = swift_allocObject();
      v96 = v119;
      v95[2] = v118;
      v95[3] = v65;
      v95[4] = v76;
      v95[5] = v96;

      v97 = v65;

      sub_23320F8E4(&aBlock, sub_23321E544, v95);
    }
  }

  if ((v87 & 0xC000000000000001) != 0)
  {
    v89 = MEMORY[0x23839BFC0](0, v87);
    goto LABEL_19;
  }

  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v89 = *(v87 + 32);
LABEL_19:
    v90 = v89;

    v91 = [v90 portType];
    v92 = sub_23328D98C();
    v94 = v93;

    static TTSVBAnalytics.beganRecording(inputSourceName:)(v92, v94);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_23320F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23328D7CC();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D80C();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D6EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56.value = 0;
  v56.is_nil = 1;
  v20 = TTSVBTimestampInSeconds(when:)(v56);
  v21 = *(a1 + 24);
  aBlock = v20;
  v51 = 0;
  LOBYTE(v52) = 0;

  sub_23328D74C();

  v22 = sub_233225380();
  (*(v16 + 16))(v19, v22, v15);
  v23 = sub_23328D6CC();
  v24 = sub_23328DE4C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v43 = a3;
    v28 = v27;
    aBlock = *&v27;
    *v26 = 136315138;
    v29 = sub_23316A360(v20);
    v41 = v15;
    v31 = a4;
    v32 = sub_23311A8F4(v29, v30, &aBlock);

    *(v26 + 4) = v32;
    a4 = v31;
    _os_log_impl(&dword_233109000, v23, v24, "StartRecording. hostTime=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v33 = v28;
    a3 = v43;
    MEMORY[0x23839CFD0](v33, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);

    (*(v42 + 8))(v19, v41);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v34 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v54 = sub_23321E9E8;
  v55 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2331221F8;
  v53 = &block_descriptor_221;
  v36 = _Block_copy(&aBlock);

  sub_23328D7DC();
  v49 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v37 = v46;
  v38 = v48;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v14, v37, v36);
  _Block_release(v36);
  (*(v47 + 8))(v37, v38);
  (*(v44 + 8))(v14, v45);
}

void sub_23320F8E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v7 = sub_23328D7CC();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23328D80C();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_23328D6EC();
  v13 = *(v71 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v57[-v17];
  v19 = sub_23328D83C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v62) = *a1;
  v25 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x277D85200], v19, v22);
  v63 = v25;
  LOBYTE(v25) = sub_23328D85C();
  (*(v20 + 8))(v24, v19);
  if (v25)
  {
    sub_23320BF7C();
    v61 = a3;
    v26 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_cachedSoundEffects;
    swift_beginAccess();
    v27 = *&v4[v26];
    v28 = v62;
    if (*(v27 + 16) && (v29 = sub_23321B17C(v62), (v30 & 1) != 0))
    {
      v31 = *(*(v27 + 56) + 8 * v29);
      swift_endAccess();
      v32 = v31;
    }

    else
    {
      v58 = v18;
      swift_endAccess();
      v33 = sub_23328CC9C();
      v59 = v57;
      v60 = v33;
      v34 = *(v33 - 8);
      v35 = *(v34 + 64);
      MEMORY[0x28223BE20](v33);
      LOBYTE(aBlock[0]) = v28;
      sub_23320B9D0(aBlock);
      v36 = static TTSVBAudioTools.readPCMBuffer(fromAudioFile:)(&v57[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      (*(v34 + 8))(&v57[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)], v60);
      swift_beginAccess();
      v32 = v36;
      v37 = *&v4[v26];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *&v4[v26];
      *&v4[v26] = 0x8000000000000000;
      sub_23321B5EC(v32, v62, isUniquelyReferenced_nonNull_native);
      *&v4[v26] = v72;
      swift_endAccess();
      v18 = v58;
    }

    v39 = sub_233225380();
    v40 = v71;
    (*(v13 + 16))(v18, v39, v71);
    v41 = v4;
    v42 = sub_23328D6CC();
    v43 = sub_23328DE1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v69 = v13;
      v45 = v44;
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      v47 = "recordingWillStart";
      *v45 = 136315394;
      v48 = v62;
      if (v62)
      {
        v47 = "recordingDidFinish";
      }

      v49 = sub_23311A8F4(0xD000000000000012, (v47 - 32) | 0x8000000000000000, aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 1024;
      LODWORD(v49) = [*&v41[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode] isPlaying];

      *(v45 + 14) = v49;
      _os_log_impl(&dword_233109000, v42, v43, "Asked to play sound effect '%s'. Scheduling audio file. isPlaying=%{BOOL}d", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23839CFD0](v46, -1, -1);
      MEMORY[0x23839CFD0](v45, -1, -1);

      (*(v69 + 8))(v18, v71);
      v50 = v61;
    }

    else
    {

      (*(v13 + 8))(v18, v40);
      v50 = v61;
      v48 = v62;
    }

    v51 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode;
    v52 = *&v41[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode];
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = v48;
    *(v54 + 24) = v53;
    *(v54 + 32) = 0;
    *(v54 + 40) = v70;
    *(v54 + 48) = v50;
    aBlock[4] = sub_23321E040;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_233213B1C;
    aBlock[3] = &block_descriptor_196;
    v55 = _Block_copy(aBlock);

    v56 = v52;

    [v56 scheduleBuffer:v32 atTime:0 options:0 completionCallbackType:2 completionHandler:v55];

    _Block_release(v55);
    [*&v41[v51] play];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2332106DC(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_2331524CC(&v12);
  v10 = v12;
  v11 = v13;
  static TTSVBError.map(_:_:)(a3, &v10, v8);
  sub_2331220AC(v10, *(&v10 + 1), v11);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &unk_27DDE25D0, &unk_233290330);
}

uint64_t TTSVBAudioService.finishCurrentRecording(outputFormat:audioOverrides:userPhrase:userScore:sampleID:completion:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v55 = a6;
  v56 = a8;
  v53 = a3;
  v54 = a5;
  v14 = a9;
  v15 = sub_23328D7CC();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23328D6EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v50 = a2[1];
  v51 = v27;
  v52 = *(a2 + 1);
  v28 = sub_233225380();
  (*(v23 + 16))(v26, v28, v22);
  v29 = sub_23328D6CC();
  v30 = sub_23328DE4C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v49 = a4;
    v32 = a7;
    v33 = v31;
    *v31 = 0;
    _os_log_impl(&dword_233109000, v29, v30, "Will finish current recording", v31, 2u);
    v34 = v33;
    a7 = v32;
    v14 = a9;
    a4 = v49;
    MEMORY[0x23839CFD0](v34, -1, -1);
  }

  (*(v23 + 8))(v26, v22);
  v35 = *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v36 = *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v10;
  v38 = v50;
  *(v37 + 32) = v51;
  *(v37 + 33) = v38;
  v40 = v52;
  v39 = v53;
  *(v37 + 40) = v52;
  *(v37 + 48) = v39;
  v42 = v54;
  v41 = v55;
  *(v37 + 56) = a4;
  *(v37 + 64) = v42;
  *(v37 + 72) = v41;
  *(v37 + 80) = a7;
  *(v37 + 88) = v56;
  *(v37 + 96) = v14;
  aBlock[4] = sub_23321CEE4;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_45_0;
  v43 = _Block_copy(aBlock);
  v44 = v40;

  swift_retain_n();
  v45 = v10;
  sub_23328D7DC();
  v62 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v46 = v59;
  v47 = v61;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v21, v46, v43);
  _Block_release(v43);

  (*(v60 + 8))(v46, v47);
  (*(v57 + 8))(v21, v58);
}

uint64_t sub_233210C98(uint64_t a1, char *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11)
{
  v184 = a8;
  v183 = a7;
  v185 = a6;
  v182 = a5;
  v187 = a4;
  v186 = a3;
  v203 = a2;
  v197 = a11;
  v196 = a10;
  v204 = sub_23328D7CC();
  v202 = *(v204 - 8);
  v12 = *(v202 + 64);
  MEMORY[0x28223BE20](v204);
  v14 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D80C();
  v200 = *(v15 - 8);
  v16 = *(v200 + 64);
  MEMORY[0x28223BE20](v15);
  v198 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for TTSVBError.Reason(0);
  v18 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v195 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D6EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v169 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v169 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v169 - v32;
  v34 = *(a1 + 24);

  sub_23328D73C();

  v201 = v15;
  v199 = v14;
  if (v207)
  {
    v35 = sub_233225380();
    (*(v21 + 16))(v33, v35, v20);
    v36 = sub_23328D6CC();
    v37 = sub_23328DE3C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_233109000, v36, v37, "Cannot stop recording. isRecording already false", v38, 2u);
      MEMORY[0x23839CFD0](v38, -1, -1);
    }

    (*(v21 + 8))(v33, v20);
    aBlock = xmmword_23329C630;
    LOBYTE(v207) = 3;
    v39 = v195;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v40 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v39, 0, v41);
    swift_willThrow();
    v42 = v204;
    goto LABEL_43;
  }

  v191 = v30;
  v180 = v27;
  v192 = v21;
  v188 = v24;
  v181 = v20;
  v193 = a1;
  v43 = *(a1 + 24);

  sub_23328D73C();

  v44 = *&aBlock;
  v45 = v207;
  v212.value = 0;
  v212.is_nil = 1;
  v46 = TTSVBTimestampInSeconds(when:)(v212);
  v47 = v46;
  if (v45)
  {
    v48 = 0.0;
    v42 = v204;
    v49 = v181;
    v50 = v191;
    if (v45 == 1)
    {
      v48 = v44;
    }
  }

  else
  {
    v48 = v44;
    v42 = v204;
    v49 = v181;
    v50 = v191;
  }

  v51 = *(v193 + 24);
  *&aBlock = v48;
  *(&aBlock + 1) = v46;
  LOBYTE(v207) = 1;

  sub_23328D74C();

  v52 = sub_233225380();
  v53 = v192[2];
  v191 = v52;
  v190 = v192 + 2;
  v189 = v53;
  v53(v50);
  v54 = sub_23328D6CC();
  v55 = sub_23328DE4C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v56 = 136315138;
    v213.value = 0;
    v213.is_nil = 1;
    v58 = TTSVBTimestampInSeconds(when:)(v213);
    v59 = sub_23316A360(v58);
    v61 = sub_23311A8F4(v59, v60, &aBlock);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_233109000, v54, v55, "FinishRecording. hostTime=%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23839CFD0](v57, -1, -1);
    MEMORY[0x23839CFD0](v56, -1, -1);
  }

  v62 = v192[1];
  v62(v50, v49);
  LOBYTE(aBlock) = 1;
  sub_23320F8E4(&aBlock, nullsub_1, 0);
  v67 = *(**(v193 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 272);

  v64 = (v67)(v63, v48, v47);

  v65 = v180;
  v189(v180, v191, v49);

  v66 = sub_23328D6CC();
  LODWORD(v67) = sub_23328DE4C();
  if (os_log_type_enabled(v66, v67))
  {
    v178 = v66;
    v68 = swift_slowAlloc();
    *v68 = 134218240;
    v69 = v64 >> 62;
    if (v64 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      *(v68 + 4) = i;

      *(v68 + 12) = 2048;
      v69 = v69 ? sub_23328E19C() : *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v176 = v68;
      LODWORD(v177) = v67;
      v179 = v62;
      if (!v69)
      {
        break;
      }

      v67 = 0;
      v62 = (v64 & 0xC000000000000001);
      v68 = v64 & 0xFFFFFFFFFFFFFF8;
      v72 = 0.0;
      while (1)
      {
        if (v62)
        {
          v73 = v64;
          v74 = MEMORY[0x23839BFC0](v67, v64);
        }

        else
        {
          if (v67 >= *(v68 + 16))
          {
            goto LABEL_46;
          }

          v73 = v64;
          v74 = *(v64 + 8 * v67 + 32);
        }

        v75 = v74;
        v64 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        v76 = [v74 format];
        [v76 sampleRate];
        v78 = v77;

        LODWORD(v76) = [v75 frameLength];
        v72 = v72 + v76 / v78;
        ++v67;
        v79 = v64 == v69;
        v64 = v73;
        if (v79)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    v72 = 0.0;
LABEL_29:
    v80 = v176;
    *(v176 + 14) = v72;
    v81 = v178;
    _os_log_impl(&dword_233109000, v178, v177, "Will compute audio assessment of %ld buffers. Duration=%f", v80, 0x16u);
    MEMORY[0x23839CFD0](v80, -1, -1);

    v42 = v204;
    v49 = v181;
    v71 = v188;
    v65 = v180;
    v62 = v179;
  }

  else
  {

    v71 = v188;
  }

  v62(v65, v49);
  v82 = objc_opt_self();
  sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
  v83 = sub_23328DBDC();
  v84 = [v82 assessAudioForBuffers_];

  v189(v71, v191, v49);

  v85 = v84;
  v86 = sub_23328D6CC();
  v87 = sub_23328DE4C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = v62;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 134218242;
    if (v64 >> 62)
    {
      v91 = sub_23328E19C();
    }

    else
    {
      v91 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v89 + 4) = v91;

    *(v89 + 12) = 2112;
    *(v89 + 14) = v85;
    *v90 = v85;
    v92 = v85;
    _os_log_impl(&dword_233109000, v86, v87, "Did compute audio assessment of %ld buffers: %@", v89, 0x16u);
    sub_233121E04(v90, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v90, -1, -1);
    MEMORY[0x23839CFD0](v89, -1, -1);

    v88(v188, v49);
  }

  else
  {

    v62(v188, v49);
  }

  v93 = v193;
  v94 = *(v193 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat);
  if (!v94)
  {

LABEL_42:
    aBlock = xmmword_23329C630;
    LOBYTE(v207) = 3;
    v123 = v195;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v40 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v123, 0, v124);
    swift_willThrow();

LABEL_43:
    v125 = v202;
    v126 = *&v203[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue];
    v127 = swift_allocObject();
    v128 = v197;
    v127[2] = v196;
    v127[3] = v128;
    v127[4] = v40;
    v209 = sub_23321EA58;
    v210 = v127;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v207 = sub_2331221F8;
    v208 = &block_descriptor_147_0;
    v129 = _Block_copy(&aBlock);

    v130 = v40;
    v131 = v198;
    sub_23328D7DC();
    v205 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v132 = v199;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v131, v132, v129);
    _Block_release(v129);

    (*(v125 + 8))(v132, v42);
    (*(v200 + 8))(v131, v201);
  }

  v192 = v85;
  v95 = sub_23328CC9C();
  v191 = &v169;
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v189 = v98;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v190 = &v169;
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100 - 8);
  v180 = v102;
  v103 = (&v169 - v102);
  v104 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  swift_beginAccess();
  sub_23321DC54(v93 + v104, v103);
  v181 = v96;
  v105 = *(v96 + 48);
  v188 = v95;
  v179 = v105;
  v106 = (v105)(v103, 1, v95);
  if (v106)
  {

    sub_233121E04(v103, &qword_27DDE19A0, &unk_233290360);
    v107 = &v211;
LABEL_41:
    v122 = *(v107 - 32);
    v42 = v204;
    v85 = v192;
    goto LABEL_42;
  }

  v177 = v64;
  v176 = &v169;
  v108 = MEMORY[0x28223BE20](v106);
  v109 = v181;
  v110 = *(v181 + 16);
  v111 = v188;
  v173 = v181 + 16;
  v172 = v110;
  (v110)(&v169 - v99, v103, v188, v108);
  v178 = v94;
  sub_233121E04(v103, &qword_27DDE19A0, &unk_233290360);
  sub_23328CBDC();
  v113 = v109 + 8;
  v112 = *(v109 + 8);
  v112(&v169 - v99, v111);
  v174 = sub_23328CB9C();
  v190 = v114;
  v175 = v112;
  v115 = (v112)(&v169 - v99, v111);
  v191 = &v169;
  MEMORY[0x28223BE20](v115);
  v116 = &v169 - v99;
  v176 = &v169;
  MEMORY[0x28223BE20](v117);
  v118 = &v169 - v99;
  MEMORY[0x28223BE20](v119);
  v120 = (&v169 - v180);
  sub_23321DC54(v193 + v104, &v169 - v180);
  v121 = (v179)(v120, 1, v111);
  if (v121)
  {

    sub_233121E04(v120, &qword_27DDE19A0, &unk_233290360);
    v107 = &v205;
    goto LABEL_41;
  }

  v195 = &v169;
  v180 = a9;
  LODWORD(v179) = v186 >> 8;
  v134 = v189;
  v135 = MEMORY[0x28223BE20](v121);
  v171 = v113;
  v170 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v136 = &v169 - v170;
  v137 = v188;
  v138 = v172;
  v172(&v169 - v170, v120, v135);
  sub_233121E04(v120, &qword_27DDE19A0, &unk_233290360);
  sub_23328CC1C();
  v175(v136, v137);
  v139 = v181 + 32;
  v181 = *(v181 + 32);
  v140 = (v181)(v116, v118, v137);
  v195 = &v169;
  v194 = *&v203[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioIOQueue];
  v141 = MEMORY[0x28223BE20](v140);
  v142 = &v169 - v170;
  v138(&v169 - v170, v116, v137, v141);
  v143 = (*(v139 + 48) + 48) & ~*(v139 + 48);
  v173 = (v134 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v176 = ((v173 + 23) & 0xFFFFFFFFFFFFFFF8);
  v144 = (v176 + 15) & 0xFFFFFFFFFFFFFFF8;
  v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
  v146 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
  v189 = v116;
  v147 = (v146 + 23) & 0xFFFFFFFFFFFFFFF8;
  v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
  v149 = swift_allocObject();
  v150 = v178;
  *(v149 + 16) = v177;
  *(v149 + 24) = v150;
  *(v149 + 32) = v186;
  *(v149 + 33) = v179;
  *(v149 + 40) = v187;
  (v181)(v149 + v143, v142, v188);
  v151 = (v149 + v173);
  v152 = v190;
  *v151 = v174;
  v151[1] = v152;
  v153 = v203;
  *(v176 + v149) = v203;
  v154 = v192;
  *(v149 + v144) = v192;
  *(v149 + v145) = v193;
  v155 = (v149 + v146);
  v156 = v185;
  *v155 = v182;
  v155[1] = v156;
  *(v149 + v147) = v183;
  v157 = (v149 + v148);
  v158 = v180;
  *v157 = v184;
  v157[1] = v158;
  v159 = (v149 + ((v148 + 23) & 0xFFFFFFFFFFFFFFF8));
  v160 = v197;
  *v159 = v196;
  v159[1] = v160;
  v209 = sub_23321DCC4;
  v210 = v149;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v207 = sub_2331221F8;
  v208 = &block_descriptor_153_0;
  v161 = _Block_copy(&aBlock);
  v162 = v187;
  v163 = v153;

  v164 = v154;
  v165 = v178;
  v166 = v198;
  sub_23328D7DC();
  v205 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v167 = v199;
  v168 = v204;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v166, v167, v161);
  _Block_release(v161);

  (*(v202 + 8))(v167, v168);
  (*(v200 + 8))(v166, v201);
  v175(v189, v188);
}

uint64_t sub_23321230C(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17)
{
  v72 = a8;
  v62 = a6;
  v63 = a7;
  v19 = a3;
  v60 = a1;
  v61 = a2;
  v64 = a16;
  v65 = a17;
  v20 = a3 >> 8;
  v21 = sub_23328D7CC();
  v70 = *(v21 - 8);
  v71 = v21;
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v21);
  v67 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23328D80C();
  v68 = *(v24 - 8);
  v69 = v24;
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24);
  v66 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23328CC9C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  LOBYTE(aBlock) = v19;
  BYTE1(aBlock) = v20;
  v75 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = v55 - v34;
  v36 = *(v28 + 16);
  v36(v55 - v34, a5, v27, v33);
  (*(v28 + 56))(v35, 0, 1, v27);
  static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(v60, v61, &aBlock, v35, v62, v63, v55 - v30);
  v60 = a15;
  v58 = a14;
  v57 = a13;
  v63 = a12;
  v56 = a11;
  v55[1] = a10;
  v37 = sub_233121E04(v35, &qword_27DDE19A0, &unk_233290360);
  v62 = v55;
  v61 = *&v72[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v38 = MEMORY[0x28223BE20](v37);
  v39 = v55 - v30;
  v59 = v55 - v30;
  v36(v55 - v30, v55 - v30, v27, v38);
  v40 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v41 = (v29 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 2) = a9;
  *(v42 + 3) = a10;
  v43 = v63;
  *(v42 + 4) = v56;
  *(v42 + 5) = v43;
  v44 = v58;
  *(v42 + 6) = v57;
  *(v42 + 7) = v44;
  *(v42 + 8) = v60;
  (*(v28 + 32))(&v42[v40], v39, v27);
  v45 = v72;
  *&v42[v41] = v72;
  v46 = &v42[(v41 + 15) & 0xFFFFFFFFFFFFFFF8];
  v47 = v65;
  *v46 = v64;
  *(v46 + 1) = v47;
  v78 = sub_23321DDF0;
  v79 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2331221F8;
  v77 = &block_descriptor_165;
  v48 = _Block_copy(&aBlock);
  v49 = a9;

  v50 = v45;

  v51 = v66;
  sub_23328D7DC();
  v73 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v52 = v67;
  v53 = v71;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v51, v52, v48);
  _Block_release(v48);
  (*(v70 + 8))(v52, v53);
  (*(v68 + 8))(v51, v69);
  (*(v28 + 8))(v59, v27);
}

uint64_t sub_233212A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = a8;
  v77 = a6;
  v76 = a5;
  v75 = a3;
  v15 = sub_23328D7CC();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23328D80C();
  v85 = *(v87 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D6EC();
  v90 = *(v20 - 8);
  v91 = v20;
  v21 = *(v90 + 64);
  MEMORY[0x28223BE20](v20);
  v89 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTSVBAudioService.RecordingResult(0);
  v80 = *(v23 - 1);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](v23);
  v81 = v25;
  v82 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v71 - v31;
  v33 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  swift_beginAccess();
  v83 = a2;
  v79 = v33;
  sub_23321DC54(a2 + v33, v32);
  v34 = sub_23328CC9C();
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v32, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v74 = a11;
    v73 = a10;
    v72 = a9;
    *v28 = a1;
    (*(v35 + 32))(&v28[v23[5]], v32, v34);
    v37 = &v28[v23[6]];
    *v37 = v75;
    *(v37 + 1) = a4;
    *&v28[v23[7]] = v76;
    v38 = v23[8];
    v76 = v28;
    v39 = &v28[v38];
    *v39 = v77;
    *(v39 + 1) = a7;

    v40 = a1;
    v41 = sub_233225380();
    v42 = (*(v90 + 16))(v89, v41, v91);
    v43 = *(v35 + 64);
    v44 = MEMORY[0x28223BE20](v42);
    v46 = &v71 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v46, v78, v34, v44);
    v47 = sub_23328D6CC();
    v48 = sub_23328DE1C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78 = v15;
      v51 = v50;
      aBlock[0] = v50;
      *v49 = 136315138;
      v52 = sub_23328CC6C();
      v77 = v30;
      v54 = v53;
      (*(v35 + 8))(v46, v34);
      v55 = sub_23311A8F4(v52, v54, aBlock);
      v30 = v77;

      *(v49 + 4) = v55;
      _os_log_impl(&dword_233109000, v47, v48, "Will end audio recording: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v56 = v51;
      v15 = v78;
      MEMORY[0x23839CFD0](v56, -1, -1);
      MEMORY[0x23839CFD0](v49, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v46, v34);
    }

    v57 = (*(v90 + 8))(v89, v91);
    v58 = MEMORY[0x28223BE20](v57);
    v59 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 56))(v59, 1, 1, v34, v58);
    v60 = v83;
    v61 = v79;
    swift_beginAccess();
    sub_23321DEA0(v59, v60 + v61);
    swift_endAccess();
    v62 = *(v72 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
    v63 = v76;
    v64 = v82;
    sub_23321DF10(v76, v82, type metadata accessor for TTSVBAudioService.RecordingResult);
    v65 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v66 = swift_allocObject();
    v67 = v74;
    *(v66 + 16) = v73;
    *(v66 + 24) = v67;
    sub_23321DF78(v64, v66 + v65);
    aBlock[4] = sub_23321DFDC;
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_171;
    v68 = _Block_copy(aBlock);

    v69 = v84;
    sub_23328D7DC();
    v92 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v70 = v86;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v69, v70, v68);
    _Block_release(v68);
    (*(v88 + 8))(v70, v15);
    (*(v85 + 8))(v69, v87);
    sub_23321DB24(v63, type metadata accessor for TTSVBAudioService.RecordingResult);
  }

  return result;
}

uint64_t sub_233213328(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3260, &qword_23329CE30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_23321DF10(a3, &v10 - v7, type metadata accessor for TTSVBAudioService.RecordingResult);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &qword_27DDE3260, &qword_23329CE30);
}

uint64_t sub_233213414(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3260, &qword_23329CE30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v10 = xmmword_23329C630;
  v11 = 3;
  static TTSVBError.map(_:_:)(a3, &v10, &v10 - v7);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &qword_27DDE3260, &qword_23329CE30);
}

uint64_t sub_233213508(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = sub_23328D7CC();
  v55 = *(v53 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23328D80C();
  v57 = *(v59 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23328D82C();
  v51 = *(v54 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v47 - v16;
  v17 = sub_23328D6EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_233225380();
  (*(v18 + 16))(v21, v22, v17);
  v23 = sub_23328D6CC();
  v24 = sub_23328DE1C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v17;
    v26 = v25;
    v27 = swift_slowAlloc();
    v50 = a2;
    v49 = a4;
    v28 = v27;
    aBlock[0] = v27;
    v29 = "recordingWillStart";
    *v26 = 136315138;
    if (a1)
    {
      v29 = "recordingDidFinish";
    }

    v30 = v14;
    v31 = a3;
    v32 = sub_23311A8F4(0xD000000000000012, (v29 - 32) | 0x8000000000000000, aBlock);

    *(v26 + 4) = v32;
    a3 = v31;
    v14 = v30;
    _os_log_impl(&dword_233109000, v23, v24, "Did finish playing sound effect '%s'. Calling completion", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v33 = v28;
    a4 = v49;
    MEMORY[0x23839CFD0](v33, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);

    (*(v18 + 8))(v21, v48);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    v36 = *(result + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
    v37 = v51;
    v38 = v36;

    sub_23328D81C();
    v39 = v52;
    sub_23328D84C();
    v51 = *(v37 + 8);
    v40 = v14;
    v41 = v54;
    (v51)(v40, v54);
    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    *(v42 + 24) = a4;
    aBlock[4] = sub_2331BE574;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_202;
    v43 = _Block_copy(aBlock);

    v44 = v56;
    sub_23328D7DC();
    v60 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v45 = v58;
    v46 = v53;
    sub_23328E14C();
    MEMORY[0x23839BBE0](v39, v44, v45, v43);
    _Block_release(v43);

    (*(v55 + 8))(v45, v46);
    (*(v57 + 8))(v44, v59);
    (v51)(v39, v41);
  }

  return result;
}

uint64_t sub_233213B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_233213B70(void *a1)
{
  v194 = a1;
  v3 = type metadata accessor for TTSVBError(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v180 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for TTSVBError.Reason(0);
  v6 = *(v190[-1].isa + 8);
  MEMORY[0x28223BE20](v190);
  v179 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v191 = &v174 - v9;
  v198 = sub_23328D6EC();
  v10 = *(v198 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v198);
  v13 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v176 = &v174 - v15;
  MEMORY[0x28223BE20](v16);
  v193 = (&v174 - v17);
  MEMORY[0x28223BE20](v18);
  v188 = &v174 - v19;
  v20 = sub_23328D83C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v25 = v26;
  (*(v21 + 104))(v25, *MEMORY[0x277D85200], v20, v23);
  v27 = v26;
  LOBYTE(v26) = sub_23328D85C();
  (*(v21 + 8))(v25, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v28 = *MEMORY[0x277CB8028];
  v29 = v1;
  v30 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession];
  v31 = [v30 category];
  v32 = [v30 categoryOptions];
  v196 = [v30 mode];
  v182 = v30;
  v33 = [v30 preferredInput];
  if (v33)
  {
    v34 = v33;
    v195 = [v33 portType];
  }

  else
  {
    v195 = 0;
  }

  v189 = v13;
  v35 = sub_23328D98C();
  v37 = v36;
  v199 = v28;
  v38 = sub_23328D98C();
  v197 = v10;
  v192 = v2;
  v181 = v32;
  if (v35 == v38 && v37 == v39)
  {
  }

  else
  {
    v40 = sub_23328E54C();

    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v32 == 44)
  {
    v41 = sub_23328D98C();
    v43 = v42;
    if (v41 == sub_23328D98C() && v43 == v44)
    {
    }

    else
    {
      v45 = sub_23328E54C();

      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v46 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    v47 = *(*&v29[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + 56);

    sub_23328D73C();

    v48 = v204;
    if (v204)
    {
      v49 = [v204 portType];

      if (v195)
      {
        if (v49)
        {
          v50 = sub_23328D98C();
          v52 = v51;
          if (v50 == sub_23328D98C() && v52 == v53)
          {

            v10 = v197;
            goto LABEL_25;
          }

          v54 = sub_23328E54C();

          v10 = v197;
          if (v54)
          {
LABEL_25:
            v193 = v46;
            v55 = sub_233225380();
            v56 = v10;
            v57 = v188;
            v58 = v198;
            (*(v10 + 16))(v188, v55, v198);
            v59 = v199;
            v191 = v29;
            v60 = v29;
            v61 = sub_23328D6CC();
            v62 = sub_23328DE4C();

            LODWORD(v194) = v62;
            if (os_log_type_enabled(v61, v62))
            {
              v190 = v61;
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v206 = v64;
              *v63 = 136315650;
              *&v204 = sub_23328D98C();
              *(&v204 + 1) = v65;
              *&v202 = 0xD000000000000016;
              *(&v202 + 1) = 0x80000002332AAEE0;
              v200 = 0;
              v201 = 0xE000000000000000;
              v172 = sub_23311A294();
              v173 = v172;
              v170 = MEMORY[0x277D837D0];
              v171 = v172;
              v66 = sub_23328E06C();
              v68 = v67;

              v69 = sub_23311A8F4(v66, v68, &v206);

              *(v63 + 4) = v69;
              *(v63 + 12) = 2080;
              v70 = sub_2332169B0(44);
              v72 = sub_23311A8F4(v70, v71, &v206);

              *(v63 + 14) = v72;
              *(v63 + 22) = 2080;
              v73 = *(*(v193 + v191) + 56);

              sub_23328D73C();

              v74 = v204;
              if (v204)
              {
                v75 = [v204 portName];

                v76 = sub_23328D98C();
                v78 = v77;
              }

              else
              {
                v76 = 7104878;
                v78 = 0xE300000000000000;
              }

              v158 = v198;
              v159 = v188;
              v160 = sub_23311A8F4(v76, v78, &v206);

              *(v63 + 24) = v160;
              v161 = v190;
              _os_log_impl(&dword_233109000, v190, v194, "Will not reconfigure audio session. Already in expected configuration category=%s options=%s portType=%s", v63, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23839CFD0](v64, -1, -1);
              MEMORY[0x23839CFD0](v63, -1, -1);

              (*(v197 + 8))(v159, v158);
            }

            else
            {

              (*(v56 + 8))(v57, v58);
            }

            return;
          }
        }
      }

      else
      {
        if (!v49)
        {
          goto LABEL_25;
        }
      }
    }

    else if (!v195)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v79 = sub_233225380();
  v80 = *(v10 + 16);
  v81 = v193;
  v185 = v79;
  v82 = v198;
  v187 = v10 + 16;
  v186 = v80;
  (v80)(v193);
  v83 = v199;
  v84 = v29;
  v177 = v31;
  v85 = v31;
  v86 = v196;
  v87 = v194;
  v88 = sub_23328D6CC();
  v89 = sub_23328DE4C();
  v196 = v84;

  v183 = v87;
  v184 = v83;

  v194 = v85;
  v178 = v89;
  v90 = os_log_type_enabled(v88, v89);
  v188 = v86;
  if (v90)
  {
    v175 = v88;
    v91 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v206 = v174;
    *v91 = 136316930;
    *&v204 = sub_23328D98C();
    *(&v204 + 1) = v92;
    *&v202 = 0xD000000000000016;
    *(&v202 + 1) = 0x80000002332AAEE0;
    v177 = 0x80000002332AAEE0;
    v200 = 0;
    v201 = 0xE000000000000000;
    v93 = sub_23311A294();
    v172 = v93;
    v173 = v93;
    v170 = MEMORY[0x277D837D0];
    v171 = v93;
    v94 = sub_23328E06C();
    v96 = v95;

    v97 = sub_23311A8F4(v94, v96, &v206);

    *(v91 + 4) = v97;
    *(v91 + 12) = 2080;
    v98 = sub_2332169B0(v181);
    v100 = sub_23311A8F4(v98, v99, &v206);

    *(v91 + 14) = v100;
    *(v91 + 22) = 2080;
    v101 = sub_23328D98C();
    v103 = sub_23311A8F4(v101, v102, &v206);

    *(v91 + 24) = v103;
    *(v91 + 32) = 2080;
    v104 = [v182 preferredInput];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 portName];

      v107 = sub_23328D98C();
      v109 = v108;
    }

    else
    {
      v109 = 0xE300000000000000;
      v107 = 7104878;
    }

    v112 = v191;
    v114 = v183;
    v115 = sub_23311A8F4(v107, v109, &v206);

    *(v91 + 34) = v115;
    *(v91 + 42) = 2080;
    *&v204 = sub_23328D98C();
    *(&v204 + 1) = v116;
    *&v202 = 0xD000000000000016;
    *(&v202 + 1) = v177;
    v200 = 0;
    v201 = 0xE000000000000000;
    v172 = v93;
    v173 = v93;
    v171 = v93;
    v170 = MEMORY[0x277D837D0];
    v117 = sub_23328E06C();
    v119 = v118;

    v120 = sub_23311A8F4(v117, v119, &v206);

    *(v91 + 44) = v120;
    *(v91 + 52) = 2080;
    v121 = sub_2332169B0(44);
    v123 = sub_23311A8F4(v121, v122, &v206);

    *(v91 + 54) = v123;
    *(v91 + 62) = 2080;
    v124 = sub_23328D98C();
    v126 = sub_23311A8F4(v124, v125, &v206);

    *(v91 + 64) = v126;
    *(v91 + 72) = 2080;
    v127 = *(*&v196[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + 56);

    sub_23328D73C();

    v128 = v204;
    v129 = 7104878;
    if (v204)
    {
      v130 = [v204 portName];

      v129 = sub_23328D98C();
      v132 = v131;
    }

    else
    {
      v132 = 0xE300000000000000;
    }

    v113 = v192;
    v133 = v197;
    v134 = sub_23311A8F4(v129, v132, &v206);

    *(v91 + 74) = v134;
    v135 = v175;
    _os_log_impl(&dword_233109000, v175, v178, "Will reconfigure audio session from [category=%s options=%s mode=%s portType=%s] to [category=%s options=%s mode=%s] portType=%s", v91, 0x52u);
    v136 = v174;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v136, -1, -1);
    MEMORY[0x23839CFD0](v91, -1, -1);

    v137 = v193;
    v111 = v198;
    v193 = *(v133 + 8);
    v110 = v193(v137);
  }

  else
  {

    v193 = *(v197 + 8);
    v110 = (v193)(v81, v82);
    v111 = v82;
    v112 = v191;
    v113 = v192;
    v114 = v183;
  }

  MEMORY[0x28223BE20](v110);
  v138 = v196;
  v170 = v196;
  v171 = v184;
  v172 = v114;
  v173 = 44;
  *&v204 = sub_23328D98C();
  *(&v204 + 1) = v139;
  v205 = 1;
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_23321DA9C, (&v174 - 6), &v204, v112);
  if (v113)
  {
    sub_23321DB24(v112, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v204, *(&v204 + 1), v205);
    v143 = v189;
    v186(v189, v185, v111);
    v144 = v113;
    v145 = sub_23328D6CC();
    v146 = sub_23328DE3C();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v200 = v148;
      *v147 = 136315138;
      sub_2331524CC(&v204);
      v202 = v204;
      v203 = v205;
      v149 = v180;
      static TTSVBError.map(_:_:)(v113, &v202, v180);
      sub_2331220AC(v202, *(&v202 + 1), v203);
      v150 = TTSVBError.description.getter();
      v152 = v151;
      sub_23321DB24(v149, type metadata accessor for TTSVBError);
      v153 = sub_23311A8F4(v150, v152, &v200);

      *(v147 + 4) = v153;
      _os_log_impl(&dword_233109000, v145, v146, "%s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x23839CFD0](v148, -1, -1);
      MEMORY[0x23839CFD0](v147, -1, -1);

      v154 = v198;
      v155 = v143;
    }

    else
    {

      v155 = v143;
      v154 = v111;
    }

    (v193)(v155, v154);
    v156 = v188;
    swift_willThrow();
  }

  else
  {
    sub_23321DB24(v112, type metadata accessor for TTSVBError.Reason);
    v140 = sub_2331220AC(v204, *(&v204 + 1), v205);
    MEMORY[0x28223BE20](v140);
    v172 = v138;
    *&v204 = 0xD000000000000024;
    *(&v204 + 1) = 0x80000002332AB470;
    v205 = 0;
    v141 = v179;
    sub_2331524D0();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_23321DB84, &v170, &v204, v141);
    sub_23321DB24(v141, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v204, *(&v204 + 1), v205);
    v142 = sub_233216F24();
    if (v142)
    {
      v157 = v142;
      sub_233217864(v142);
    }

    sub_233218B40();
    v162 = v176;
    v186(v176, v185, v111);
    v163 = v138;
    v164 = sub_23328D6CC();
    v165 = sub_23328DE4C();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      *v166 = 67109632;
      v167 = v182;
      *(v166 + 4) = [v182 isInputGainSettable];

      *(v166 + 8) = 2048;
      [v167 inputGain];
      *(v166 + 10) = v168;
      *(v166 + 18) = 2048;
      [v167 sampleRate];
      *(v166 + 20) = v169;
      _os_log_impl(&dword_233109000, v164, v165, "isInputGainSettable=%{BOOL}d inputGain%f sampleRate=%f", v166, 0x1Cu);
      MEMORY[0x23839CFD0](v166, -1, -1);
    }

    else
    {
    }

    (v193)(v162, v111);
  }
}

void sub_233214E78()
{
  v80 = type metadata accessor for TTSVBError.Reason(0);
  v1 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v3 = &v74[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_23328D6EC();
  v4 = *(v81 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v81);
  v78 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v74[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v74[-v11];
  v13 = sub_23328D83C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x277D85200], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_23328D85C();
  (*(v14 + 8))(v18, v13);
  if (v19)
  {
    if ([*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession) isInputAvailable])
    {
      v79 = v0;
      v21 = sub_233225380();
      v76 = v4[2];
      v77 = v21;
      (v76)(v12);
      v22 = sub_23328D6CC();
      v23 = sub_23328DE4C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_233109000, v22, v23, "Will install audio tap", v24, 2u);
        MEMORY[0x23839CFD0](v24, -1, -1);
      }

      v25 = v4[1];
      v26 = v81;
      v25(v12, v81);
      v27 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
      if (*(*(v79 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) == 1)
      {
        (v76)(v9, v77, v26);
        v28 = sub_23328D6CC();
        v29 = sub_23328DE4C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_233109000, v28, v29, "An old audio tap appears to be installed already. Will remove it first", v30, 2u);
          v31 = v30;
          v26 = v81;
          MEMORY[0x23839CFD0](v31, -1, -1);
        }

        v25(v9, v26);
        sub_233215748();
      }

      v32 = sub_233207C68();
      v33 = [v32 inputNode];

      v34 = [v33 inputFormatForBus_];
      [v34 sampleRate];
      if (v35 == 0.0 || ![v34 channelCount])
      {
        aBlock = xmmword_23329C640;
        LOBYTE(v83) = 3;
        [v34 sampleRate];
        v37 = v36;
        v38 = [v34 channelCount];
        *v3 = v37;
        *(v3 + 2) = v38;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for TTSVBError(0);
        sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
        swift_allocError();
        TTSVBError.init(_:_:_:)(&aBlock, v3, 0, v39);
        swift_willThrow();
      }

      else
      {
        v80 = v27;
        v41 = *(v79 + v27);
        v42 = *(v41 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat);
        *(v41 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat) = v34;
        v43 = v34;

        v44 = v78;
        v45 = v81;
        (v76)(v78, v77, v81);
        v46 = v43;
        v47 = v33;
        v48 = sub_23328D6CC();
        v49 = sub_23328DE4C();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v50 = 136315650;
          v51 = [v47 debugDescription];
          v76 = v48;
          v52 = v51;
          v53 = sub_23328D98C();
          v75 = v49;
          v54 = v53;
          v56 = v55;

          v57 = sub_23311A8F4(v54, v56, &aBlock);

          *(v50 + 4) = v57;
          *(v50 + 12) = 2080;
          v58 = [v47 AUAudioUnit];
          v59 = [v58 debugDescription];

          v60 = sub_23328D98C();
          v62 = v61;

          v63 = sub_23311A8F4(v60, v62, &aBlock);

          *(v50 + 14) = v63;
          *(v50 + 22) = 2080;
          sub_2332159F8();
          v66 = sub_23311A8F4(v64, v65, &aBlock);

          *(v50 + 24) = v66;
          v67 = v76;
          _os_log_impl(&dword_233109000, v76, v75, "Installing audio tap input=[%s - %s] format=[%s]", v50, 0x20u);
          v68 = v77;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v68, -1, -1);
          MEMORY[0x23839CFD0](v50, -1, -1);

          v69 = v78;
          v70 = v81;
        }

        else
        {

          v69 = v44;
          v70 = v45;
        }

        v25(v69, v70);
        v71 = swift_allocObject();
        v72 = v79;
        swift_unknownObjectWeakInit();
        v85 = sub_23321E0DC;
        v86 = v71;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v83 = sub_2332161B8;
        v84 = &block_descriptor_206;
        v73 = _Block_copy(&aBlock);

        [v47 installTapOnBus:0 bufferSize:1024 format:v46 block:v73];

        _Block_release(v73);
        *(*(v72 + v80) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 1;
      }
    }

    else
    {
      aBlock = xmmword_23329C640;
      LOBYTE(v83) = 3;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&aBlock, v3, 0, v40);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233215748()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    if (*(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) == 1)
    {
      v16 = sub_233225380();
      (*(v3 + 16))(v6, v16, v2);
      v17 = sub_23328D6CC();
      v18 = sub_23328DE4C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_233109000, v17, v18, "Removing audio tap", v19, 2u);
        MEMORY[0x23839CFD0](v19, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v20 = sub_233207C68();
      v21 = [v20 inputNode];

      [v21 removeTapOnBus_];
      *(*(v1 + v15) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2332159F8()
{
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0x647261646E617473, 0xE90000000000003DLL);
  v1 = [v0 isStandard];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE500000000000000;
  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v3, v5);

  MEMORY[0x23839B7E0](0x6C656E6E61686320, 0xEE003D746E756F43);
  LODWORD(v37) = [v0 channelCount];
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0x52656C706D617320, 0xEC0000003D657461);
  [v0 sampleRate];
  sub_23328DCDC();
  MEMORY[0x23839B7E0](0x656C7265746E6920, 0xED00003D64657661);
  v7 = [v0 isInterleaved];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v9, v10);

  MEMORY[0x23839B7E0](0x466E6F6D6D6F6320, 0xEE003D74616D726FLL);
  v11 = [v0 commonFormat];
  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = 0x726568746FLL;
      goto LABEL_25;
    }

    if (v11 == 1)
    {
      v4 = 0xE300000000000000;
      v12 = 3289958;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        v4 = 0xE300000000000000;
        v12 = 3421798;
        goto LABEL_25;
      case 3:
        v4 = 0xE300000000000000;
        v12 = 3551593;
        goto LABEL_25;
      case 4:
        v12 = 3289961;
        v4 = 0xE300000000000000;
        goto LABEL_25;
    }
  }

  v4 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
LABEL_25:
  MEMORY[0x23839B7E0](v12, v4);

  *(&v41[2] + 8) = v40;
  v13 = [v0 settings];
  v14 = sub_23328D89C();

  v15 = 0;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = *MEMORY[0x277CB8280];
  if (!v18)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
      v23 = v15;
LABEL_40:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = (*(v14 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      sub_23311B0C0(*(v14 + 56) + 32 * v25, v36);
      *&v37 = v28;
      *(&v37 + 1) = v27;
      sub_233145134(v36, &v38);

      v22 = v23;
LABEL_41:
      v40 = v37;
      v41[0] = v38;
      v41[1] = v39;
      v29 = *(&v37 + 1);
      if (!*(&v37 + 1))
      {

        return;
      }

      v30 = v40;
      sub_233145134(v41, &v37);
      if (v30 == sub_23328D98C() && v31 == v29)
      {

        goto LABEL_46;
      }

      v32 = sub_23328E54C();

      if ((v32 & 1) == 0)
      {
        break;
      }

LABEL_46:
      sub_23311B0C0(&v37, v36);
      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v33 = [v35 unsignedIntValue];

        *&v36[0] = 32;
        *(&v36[0] + 1) = 0xE100000000000000;
        MEMORY[0x23839B7E0](v30, v29);

        MEMORY[0x23839B7E0](61, 0xE100000000000000);
        v34 = sub_23321A35C(v33);
        MEMORY[0x23839B7E0](v34);

        goto LABEL_49;
      }

      __swift_destroy_boxed_opaque_existential_0(&v37);

      v15 = v22;
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    MEMORY[0x23839B7E0](v30, v29);

    MEMORY[0x23839B7E0](61, 0xE100000000000000);
    sub_23328E30C();
LABEL_49:
    MEMORY[0x23839B7E0](*&v36[0], *(&v36[0] + 1));

    __swift_destroy_boxed_opaque_existential_0(&v37);
    v15 = v22;
  }

  while (v18);
LABEL_30:
  if (v19 <= v15 + 1)
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v18 = 0;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      goto LABEL_41;
    }

    v18 = *(v14 + 64 + 8 * v23);
    ++v15;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

uint64_t sub_233215FD0(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v24 = MEMORY[0x277D84F90];
  sub_23321B890(0, v8, 0);
  result = v24;
  if (v8)
  {
    while (1)
    {
      v13 = v7 <= a2;
      if (a3 > 0)
      {
        v13 = v7 >= a2;
      }

      if (v13)
      {
        break;
      }

      v14 = *(a4 + 4 * v7);
      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      v25 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23321B890((v16 > 1), v17 + 1, 1);
        result = v25;
      }

      *(result + 16) = v17 + 1;
      *(result + 4 * v17 + 32) = v14;
      v7 = v15;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
LABEL_22:
    v18 = v15 <= a2;
    if (a3 > 0)
    {
      v18 = v15 >= a2;
    }

    if (!v18)
    {
      v19 = *(result + 16);
      do
      {
        if (__OFADD__(v15, a3))
        {
          v20 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v15 + a3;
        }

        v21 = *(a4 + 4 * v15);
        v26 = result;
        v22 = *(result + 24);
        if (v19 >= v22 >> 1)
        {
          sub_23321B890((v22 > 1), v19 + 1, 1);
          result = v26;
        }

        *(result + 16) = v19 + 1;
        *(result + 4 * v19 + 32) = v21;
        v23 = v20 <= a2;
        if (a3 > 0)
        {
          v23 = v20 >= a2;
        }

        ++v19;
        v15 = v20;
      }

      while (!v23);
    }
  }

  return result;
}

void sub_2332161B8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_233216264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_23321653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233213B70(*MEMORY[0x277CB80A8]);
  v14 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_23321DA80;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_141;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_2332169B0(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_233143EE0(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_233143EE0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "mixWithOthers");
  *(v5 + 23) = -4864;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_233143EE0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6568744F6B637564;
    *(v8 + 5) = 0xEA00000000007372;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_233143EE0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "allowBluetooth");
    v11[47] = -18;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_233143EE0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000010;
    *(v14 + 5) = 0x80000002332AAF80;
  }

  if ((~a1 & 0x11) != 0)
  {
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v18 = *(v2 + 2);
    v17 = *(v2 + 3);
    if (v18 >= v17 >> 1)
    {
      v2 = sub_233143EE0((v17 > 1), v18 + 1, 1, v2);
    }

    *(v2 + 2) = v18 + 1;
    v19 = &v2[16 * v18];
    *(v19 + 4) = 0xD000000000000024;
    *(v19 + 5) = 0x80000002332AAF50;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
  }

  v21 = *(v2 + 2);
  v20 = *(v2 + 3);
  if (v21 >= v20 >> 1)
  {
    v2 = sub_233143EE0((v20 > 1), v21 + 1, 1, v2);
  }

  *(v2 + 2) = v21 + 1;
  v22 = &v2[16 * v21];
  *(v22 + 4) = 0xD000000000000012;
  *(v22 + 5) = 0x80000002332AAF30;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v27 = *(v2 + 2);
    v26 = *(v2 + 3);
    v15 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v2 = sub_233143EE0((v26 > 1), v27 + 1, 1, v2);
    }

    *(v2 + 2) = v15;
    v28 = &v2[16 * v27];
    *(v28 + 4) = 0xD000000000000023;
    *(v28 + 5) = 0x80000002332AAF00;
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_51:
    v30 = *(v2 + 4);
    v29 = *(v2 + 5);

    return v30;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
  }

  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_233143EE0((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v25 = &v2[16 * v24];
  strcpy(v25 + 32, "allowAirPlay");
  v25[45] = 0;
  *(v25 + 23) = -5120;
  if (a1 < 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  v15 = *(v2 + 2);
  if (v15 == 1)
  {
    goto LABEL_51;
  }

LABEL_29:
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
    v31 = sub_23328D8FC();
    v33 = v32;

    MEMORY[0x23839B7E0](v31, v33);

    MEMORY[0x23839B7E0](93, 0xE100000000000000);
    return 91;
  }

  else
  {

    return 1701736270;
  }
}

id sub_233216F24()
{
  v100[1] = *MEMORY[0x277D85DE8];
  v92 = sub_23328D6EC();
  v91 = *(v92 - 8);
  v1 = v91[8];
  MEMORY[0x28223BE20](v92);
  v3 = v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = v89 - v5;
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_23328D85C();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

  v93 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v14 = [v93 availableInputs];
  v90 = v3;
  if (v14)
  {
    v15 = v14;
    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v89[0] = sub_23328DBFC();
  }

  else
  {
    v89[0] = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3250, &qword_23329CE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B40;
  v17 = *MEMORY[0x277CB81E0];
  v18 = *MEMORY[0x277CB81E8];
  *(inited + 32) = *MEMORY[0x277CB81E0];
  *(inited + 40) = v18;
  v19 = *MEMORY[0x277CB8200];
  v20 = *MEMORY[0x277CB81F8];
  *(inited + 48) = *MEMORY[0x277CB8200];
  *(inited + 56) = v20;
  v100[0] = inited;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_233297B30;
  v22 = *MEMORY[0x277CB8190];
  *(v21 + 32) = *MEMORY[0x277CB8190];
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v22;
  sub_23321B9B4(v21);
  v28 = [v93 availableInputs];
  if (v28)
  {
    v29 = v28;
    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v11 = sub_23328DBFC();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v6 = v94;
  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v6 = 0;
    v31 = 0;
    v32 = v100[0];
    v98 = i;
    v99 = v11 & 0xC000000000000001;
    v95 = v11;
    v96 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v99)
      {
        v33 = MEMORY[0x23839BFC0](v6, v11);
      }

      else
      {
        if (v6 >= *(v96 + 16))
        {
          goto LABEL_28;
        }

        v33 = *(v11 + 8 * v6 + 32);
      }

      v34 = v33;
      v35 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v36 = [v33 portType];
      v37 = sub_233218EF0(v36, v32);
      v39 = v38;

      if (v39)
      {
      }

      else if (v31)
      {
        v97 = v31;
        v40 = v31;
        v41 = [v40 portType];
        v42 = sub_233218EF0(v41, v32);
        v44 = v43;

        if (v44)
        {
          __break(1u);
        }

        if (v37 >= v42)
        {

          v31 = v97;
        }

        else
        {

          v31 = v34;
        }

        v11 = v95;
      }

      else
      {
        v31 = v34;
      }

      ++v6;
      if (v35 == v98)
      {
        v97 = v31;

        v6 = v94;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v97 = 0;
LABEL_32:

  v45 = sub_233225380();
  v46 = v91;
  v47 = v91[2];
  v48 = v92;
  v47(v6, v45, v92);
  v49 = v6;
  v50 = sub_23328D6CC();
  v51 = sub_23328DE4C();
  if (os_log_type_enabled(v50, v51))
  {
    v99 = v47;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v100[0] = v53;
    *v52 = 136315138;
    if (v97)
    {
      v54 = v97;
      v55 = [v54 portName];
      v98 = v45;
      v56 = v55;
      v57 = sub_23328D98C();
      v59 = v58;

      v45 = v98;
    }

    else
    {
      v57 = 7104878;
      v59 = 0xE300000000000000;
    }

    v61 = sub_23311A8F4(v57, v59, v100);

    *(v52 + 4) = v61;
    _os_log_impl(&dword_233109000, v50, v51, "Will set preferred input: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23839CFD0](v53, -1, -1);
    MEMORY[0x23839CFD0](v52, -1, -1);

    v60 = v91[1];
    v48 = v92;
    v60(v94, v92);
    v47 = v99;
  }

  else
  {

    v60 = v46[1];
    v60(v49, v48);
  }

  v100[0] = 0;
  v62 = v97;
  v63 = [v93 setPreferredInput:v97 error:{v100, v89[0]}];
  v64 = v90;
  if (v63)
  {
    v65 = v100[0];
  }

  else
  {
    v66 = v100[0];
    v67 = sub_23328CA7C();

    swift_willThrow();
    v47(v64, v45, v48);
    v68 = v67;
    v69 = sub_23328D6CC();
    v70 = sub_23328DE3C();

    if (os_log_type_enabled(v69, v70))
    {
      v89[1] = v67;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v100[0] = v72;
      *v71 = 136315394;
      if (v97)
      {
        v73 = v97;
        v74 = [v73 portName];
        v75 = sub_23328D98C();
        v77 = v76;
      }

      else
      {
        v75 = 7104878;
        v77 = 0xE300000000000000;
      }

      v80 = sub_23311A8F4(v75, v77, v100);

      *(v71 + 4) = v80;
      *(v71 + 12) = 2080;
      v81 = sub_23328CA6C();
      v82 = [v81 description];

      v83 = sub_23328D98C();
      v85 = v84;

      v86 = sub_23311A8F4(v83, v85, v100);

      *(v71 + 14) = v86;
      _os_log_impl(&dword_233109000, v69, v70, "Could not set preferred input: %s. Error=%s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v72, -1, -1);
      MEMORY[0x23839CFD0](v71, -1, -1);

      v78 = v90;
      v79 = v92;
    }

    else
    {

      v78 = v64;
      v79 = v48;
    }

    v60(v78, v79);
    swift_willThrow();
    v62 = v97;
  }

  v87 = *MEMORY[0x277D85DE8];
  return v62;
}

void sub_233217864(void *a1)
{
  v198 = a1;
  v210[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v206 = &v191 - v8;
  MEMORY[0x28223BE20](v9);
  v194 = &v191 - v10;
  MEMORY[0x28223BE20](v11);
  v191 = &v191 - v12;
  MEMORY[0x28223BE20](v13);
  v193 = &v191 - v14;
  MEMORY[0x28223BE20](v15);
  v200 = &v191 - v16;
  MEMORY[0x28223BE20](v17);
  v209 = &v191 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v191 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v191 - v23;
  v25 = sub_23328D83C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v30 = v31;
  (*(v26 + 104))(v30, *MEMORY[0x277D85200], v25, v28);
  v32 = v31;
  LOBYTE(v31) = sub_23328D85C();
  (*(v26 + 8))(v30, v25);
  if (v31)
  {
    v33 = *sub_233165CA0();
    v34 = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();

    v35 = TTSVBIsInternalUIBuild();
    v201 = v2;
    v196 = v34;
    v192 = v6;
    if (v35 && v34)
    {
      v36 = sub_233225380();
      v37 = v3;
      v207 = *(v3 + 16);
      v207(v24, v36, v2);
      v38 = v34;
      v39 = sub_23328D6CC();
      v40 = sub_23328DE1C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v210[0] = v42;
        *v41 = 136315138;

        v43 = sub_23328D98C();
        v45 = sub_23311A8F4(v43, v44, v210);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_233109000, v39, v40, "Will consider override polar pattern: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v46 = v42;
        v2 = v201;
        MEMORY[0x23839CFD0](v46, -1, -1);
        MEMORY[0x23839CFD0](v41, -1, -1);
      }

      else
      {
      }

      v208 = *(v37 + 8);
      v208(v24, v2);
      v59 = v198;
      v49 = v37;
      v195 = v38;
    }

    else
    {
      v47 = *MEMORY[0x277CB8130];
      v48 = sub_233225380();
      v49 = v3;
      v207 = *(v3 + 16);
      v207(v21, v48, v2);
      v50 = v47;
      v51 = sub_23328D6CC();
      v52 = sub_23328DE1C();

      v53 = os_log_type_enabled(v51, v52);
      v195 = v50;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v210[0] = v55;
        *v54 = 136315138;
        v56 = sub_23328D98C();
        v58 = sub_23311A8F4(v56, v57, v210);
        v2 = v201;

        *(v54 + 4) = v58;
        _os_log_impl(&dword_233109000, v51, v52, "Will consider default polar pattern: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23839CFD0](v55, -1, -1);
        MEMORY[0x23839CFD0](v54, -1, -1);
      }

      v208 = *(v49 + 8);
      v208(v21, v2);
      v59 = v198;
    }

    v60 = [v59 portType];
    v61 = *MEMORY[0x277CB8190];
    v62 = sub_23328D98C();
    v64 = v63;
    if (v62 == sub_23328D98C() && v64 == v65)
    {
    }

    else
    {
      v66 = sub_23328E54C();

      if ((v66 & 1) == 0)
      {
        v102 = sub_233225380();
        v103 = v206;
        v207(v206, v102, v2);
        v104 = v59;
        v105 = sub_23328D6CC();
        v106 = sub_23328DE2C();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v210[0] = v108;
          *v107 = 136315138;
          v109 = [v104 portName];
          v110 = v2;
          v111 = sub_23328D98C();
          v113 = v112;

          v114 = sub_23311A8F4(v111, v113, v210);

          *(v107 + 4) = v114;
          _os_log_impl(&dword_233109000, v105, v106, "Will not set polar pattern. input is not built-in mic: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x23839CFD0](v108, -1, -1);
          MEMORY[0x23839CFD0](v107, -1, -1);

          v115 = v206;
          v116 = v110;
        }

        else
        {

          v115 = v103;
          v116 = v2;
        }

        v208(v115, v116);
        goto LABEL_75;
      }
    }

    v67 = [v59 dataSources];
    if (v67)
    {
      v68 = v67;
      sub_233144EEC(0, &qword_27DDE3248, 0x277CB8400);
      v3 = sub_23328DBFC();
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v21 = v200;
    v69 = v209;
    v205 = sub_233225380();
    v206 = (v49 + 16);
    (v207)(v69);
    v70 = sub_23328D6CC();
    v71 = sub_23328DE2C();
    v72 = os_log_type_enabled(v70, v71);
    v203 = v3;
    if (v72)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_233109000, v70, v71, "Available datasources for built-in mic:", v73, 2u);
      v74 = v73;
      v3 = v203;
      MEMORY[0x23839CFD0](v74, -1, -1);
    }

    v204 = v49 + 8;
    v208(v69, v2);
    if (!(v3 >> 62))
    {
      v76 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
        goto LABEL_22;
      }

LABEL_72:

      v184 = v194;
      v185 = v201;
      v207(v194, v205, v201);

      v186 = sub_23328D6CC();
      v187 = sub_23328DE2C();

      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v210[0] = v189;
        *v188 = 136315138;
        *(v188 + 4) = sub_23311A8F4(0x746E6F7246, 0xE500000000000000, v210);
        _os_log_impl(&dword_233109000, v186, v187, "Will not set polar pattern. No datasource name matching '%s'", v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v189);
        MEMORY[0x23839CFD0](v189, -1, -1);
        MEMORY[0x23839CFD0](v188, -1, -1);
      }

      v208(v184, v185);
      goto LABEL_75;
    }
  }

  else
  {
LABEL_70:
    __break(1u);
  }

  v76 = sub_23328E19C();
  if (!v76)
  {
    goto LABEL_72;
  }

LABEL_22:
  if (v76 < 1)
  {
    __break(1u);
  }

  v77 = 0;
  v209 = (v3 & 0xC000000000000001);
  *&v75 = 136315138;
  v199 = v75;
  v78 = v201;
  v202 = v76;
  do
  {
    if (v209)
    {
      v79 = MEMORY[0x23839BFC0](v77, v3);
    }

    else
    {
      v79 = *(v3 + 8 * v77 + 32);
    }

    v80 = v79;
    v207(v21, v205, v78);
    v81 = v80;
    v82 = sub_23328D6CC();
    v83 = sub_23328DE2C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v210[0] = v85;
      *v84 = v199;
      v86 = [v81 dataSourceName];
      v87 = sub_23328D98C();
      v89 = v88;

      v90 = v87;
      v21 = v200;
      v91 = sub_23311A8F4(v90, v89, v210);
      v3 = v203;

      *(v84 + 4) = v91;
      _os_log_impl(&dword_233109000, v82, v83, "  - %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      v78 = v201;
      MEMORY[0x23839CFD0](v85, -1, -1);
      v76 = v202;
      MEMORY[0x23839CFD0](v84, -1, -1);
    }

    else
    {
    }

    v208(v21, v78);
    ++v77;
  }

  while (v76 != v77);
  v92 = 0;
  v93 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v209)
    {
      v94 = MEMORY[0x23839BFC0](v92, v3);
    }

    else
    {
      if (v92 >= *(v93 + 16))
      {
        goto LABEL_69;
      }

      v94 = *(v3 + 8 * v92 + 32);
    }

    v95 = v94;
    v96 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v97 = [v94 dataSourceName];
    v21 = sub_23328D98C();
    v99 = v98;

    if (v21 == 0x746E6F7246 && v99 == 0xE500000000000000)
    {
      break;
    }

    v101 = sub_23328E54C();

    if (v101)
    {
      goto LABEL_47;
    }

    ++v92;
    v3 = v203;
    if (v96 == v202)
    {
      goto LABEL_72;
    }
  }

LABEL_47:

  v117 = [v95 supportedPolarPatterns];
  v118 = v197;
  v119 = v198;
  if (v117)
  {
    v120 = v117;
    type metadata accessor for PolarPattern(0);
    v121 = sub_23328DBFC();
  }

  else
  {
    v121 = MEMORY[0x277D84F90];
  }

  v122 = *MEMORY[0x277CB8130];
  v210[0] = *MEMORY[0x277CB8130];
  MEMORY[0x28223BE20](v117);
  *(&v191 - 2) = v210;
  v123 = sub_23321BAAC(sub_23321DC0C, (&v191 - 4), v121);

  if (v123)
  {
    v124 = v193;
    v207(v193, v205, v201);
    v125 = v195;
    v126 = v119;
    v127 = v95;
    v128 = sub_23328D6CC();
    v129 = sub_23328DE4C();

    v130 = os_log_type_enabled(v128, v129);
    v203 = v126;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v209 = v127;
      v132 = v131;
      v133 = swift_slowAlloc();
      v210[0] = v133;
      *v132 = 136315650;
      v134 = sub_23328D98C();
      v136 = sub_23311A8F4(v134, v135, v210);
      v197 = v118;
      v137 = v136;

      *(v132 + 4) = v137;
      *(v132 + 12) = 2080;
      v138 = [v126 portName];
      v139 = sub_23328D98C();
      v140 = v125;
      v142 = v141;

      v143 = sub_23311A8F4(v139, v142, v210);

      *(v132 + 14) = v143;
      *(v132 + 22) = 2080;
      v144 = [v209 dataSourceName];
      v145 = sub_23328D98C();
      v147 = v146;

      v148 = v145;
      v125 = v140;
      v149 = sub_23311A8F4(v148, v147, v210);

      *(v132 + 24) = v149;
      _os_log_impl(&dword_233109000, v128, v129, "Will set preferred polar pattern to %s: input=%s datasource=%s", v132, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v133, -1, -1);
      v150 = v132;
      v127 = v209;
      MEMORY[0x23839CFD0](v150, -1, -1);

      v151 = v193;
    }

    else
    {

      v151 = v124;
    }

    v208(v151, v201);
    v157 = v196;
    v210[0] = 0;
    v158 = [v127 setPreferredPolarPattern:v122 error:v210];
    v159 = v210[0];
    v160 = v192;
    if (v158 && (v210[0] = 0, v161 = v159, v162 = [v203 setPreferredDataSource:v127 error:v210], v159 = v210[0], v162))
    {
      v163 = v210[0];
    }

    else
    {
      v164 = v159;
      v165 = sub_23328CA7C();

      swift_willThrow();
      v166 = v201;
      v207(v160, v205, v201);
      v125 = v125;
      v167 = v165;
      v168 = sub_23328D6CC();
      v169 = sub_23328DE3C();

      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v210[0] = v171;
        *v170 = 136315394;
        v172 = sub_23328D98C();
        v209 = v127;
        v174 = sub_23311A8F4(v172, v173, v210);

        *(v170 + 4) = v174;
        *(v170 + 12) = 2080;
        v175 = sub_23328CA6C();
        v176 = [v175 description];

        v177 = sub_23328D98C();
        v179 = v178;

        v180 = sub_23311A8F4(v177, v179, v210);

        *(v170 + 14) = v180;
        v127 = v209;
        _os_log_impl(&dword_233109000, v168, v169, "Could not set polar pattern to %s. Error=%s", v170, 0x16u);
        swift_arrayDestroy();
        v181 = v171;
        v157 = v196;
        MEMORY[0x23839CFD0](v181, -1, -1);
        MEMORY[0x23839CFD0](v170, -1, -1);

        v182 = v192;
        v183 = v201;
      }

      else
      {

        v182 = v160;
        v183 = v166;
      }

      v208(v182, v183);
      swift_willThrow();
    }
  }

  else
  {
    v152 = v191;
    v153 = v201;
    v207(v191, v205, v201);
    v154 = sub_23328D6CC();
    v155 = sub_23328DE2C();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_233109000, v154, v155, "Will not set polar pattern. Datasource does not support this pattern", v156, 2u);
      MEMORY[0x23839CFD0](v156, -1, -1);
    }

    else
    {
    }

    v208(v152, v153);
  }

LABEL_75:
  v190 = *MEMORY[0x277D85DE8];
}

uint64_t sub_233218B40()
{
  v1 = sub_23328D83C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_23328D85C();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = *(*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 56);
    v10 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);

    v11 = [v10 currentRoute];
    v12 = [v11 inputs];

    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v0 = sub_23328DBFC();

    if (!(v0 >> 62))
    {
      result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_10:

      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_23328E19C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23839BFC0](0, v0);
    goto LABEL_7;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v0 + 32);
LABEL_7:
    v15 = v14;

LABEL_11:
    v16[1] = v15;
    sub_23328D74C();
  }

  __break(1u);
  return result;
}

uint64_t sub_233218D68()
{
  v1 = v0;
  sub_23328E24C();

  v2 = [v0 inputs];
  sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
  v3 = sub_23328DBFC();

  v4 = sub_23321A708(v3);
  v6 = v5;

  MEMORY[0x23839B7E0](v4, v6);

  MEMORY[0x23839B7E0](0x2D6574756F52207DLL, 0xEE007B3D7374754FLL);
  v7 = [v1 outputs];
  v8 = sub_23328DBFC();

  v9 = sub_23321A708(v8);
  v11 = v10;

  MEMORY[0x23839B7E0](v9, v11);

  MEMORY[0x23839B7E0](125, 0xE100000000000000);
  return 0x6E492D6574756F52;
}

uint64_t sub_233218EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = sub_23328D98C();
    v8 = v7;
    if (v6 == sub_23328D98C() && v8 == v9)
    {
      break;
    }

    v11 = sub_23328E54C();

    if (v11)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

id TTSVBAudioService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2332190DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23321DF10(v2, v7, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v9 = &unk_27DDE3168;
        v10 = &unk_23329C6D8;
      }

      else
      {
        v9 = &unk_27DDE3160;
        v10 = &unk_23329C6D0;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_7:
    v9 = &unk_27DDE3158;
    v10 = &unk_23329C6C8;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
    v11 = v7 + *(v14 + 48);

    goto LABEL_9;
  }

  v9 = &unk_27DDE3178;
  v10 = &unk_23329C6E8;
LABEL_8:
  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) + 48);
LABEL_9:
  v12 = sub_23328CE1C();
  return (*(*(v12 - 8) + 32))(a1, v11, v12);
}

unint64_t sub_233219288()
{
  v1 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23321DF10(v0, v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
        v6 = 0xD000000000000013;
      }

      else
      {
        v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
        v6 = 0xD000000000000014;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
      v7 = v4 + *(v8 + 48);

      v6 = 0x6843206574756F52;
    }

    else
    {
      v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3178, &unk_23329C6E8) + 48);
      v6 = 0x7075727265746E49;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v6 = 0xD000000000000017;
      v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8) + 48);
    }

    else
    {
      v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0) + 48);
      v6 = 0xD00000000000001CLL;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
    v6 = 0xD000000000000016;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v6 = 0xD000000000000017;
    v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
  }

  else
  {
    v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
    v6 = 0xD000000000000025;
  }

  v9 = sub_23328CE1C();
  (*(*(v9 - 8) + 8))(v7, v9);
  return v6;
}

uint64_t sub_2332195B4()
{
  v1 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23321DF10(v0, v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8);
      v16 = *(v4 + *(v15 + 64));
      v17 = 0xE500000000000000;
      v55 = 0x3D746E6948;
      v56 = 0xE500000000000000;
      if (v16 == 1)
      {
        v18 = 0x6E69676542;
      }

      else if (v16)
      {
        v17 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E55;
      }

      else
      {
        v17 = 0xE300000000000000;
        v18 = 6581829;
      }
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0);
      v24 = *(v4 + *(v15 + 64));
      v55 = 0x3D64656C62616E45;
      v56 = 0xE800000000000000;
      v25 = v24 == 0;
      v18 = 28494;
      if (v25)
      {
        v17 = 0xE200000000000000;
      }

      else
      {
        v18 = 7562585;
        v17 = 0xE300000000000000;
      }
    }

    v14 = v4 + *(v15 + 48);
    MEMORY[0x23839B7E0](v18, v17);
LABEL_59:

    v13 = v55;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_9:
    v13 = 0;
    v14 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
LABEL_79:
    v48 = sub_23328CE1C();
    (*(*(v48 - 8) + 8))(v14, v48);
    return v13;
  }

  if (EnumCaseMultiPayload)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
    v20 = *(v4 + v19[16]);
    v21 = *(v4 + v19[20]);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_23328E24C();

    v22 = 0xE700000000000000;
    v55 = 0x3D6E6F73616552;
    v56 = 0xE700000000000000;
    if (v20 > 3)
    {
      if (v20 > 6)
      {
        if (v20 == 7)
        {
          v22 = 0x80000002332AB0B0;
          v23 = 0xD00000000000001ELL;
          goto LABEL_58;
        }

        if (v20 == 8)
        {
          v22 = 0x80000002332AB090;
          v23 = 0xD000000000000013;
          goto LABEL_58;
        }
      }

      else
      {
        if (v20 == 4)
        {
          v22 = 0xE800000000000000;
          v23 = 0x656469727265764FLL;
          goto LABEL_58;
        }

        if (v20 == 6)
        {
          v22 = 0xEF7065656C53206DLL;
          v23 = 0x6F726620656B6157;
          goto LABEL_58;
        }
      }
    }

    else
    {
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v22 = 0x80000002332AB0D0;
          v23 = 0xD000000000000016;
        }

        else
        {
          v22 = 0xEF65676E61684320;
          v23 = 0x79726F6765746143;
        }

        goto LABEL_58;
      }

      if (!v20)
      {
        v23 = 0x6E776F6E6B6E55;
        goto LABEL_58;
      }

      if (v20 == 1)
      {
        v22 = 0x80000002332AB0F0;
        v23 = 0xD000000000000014;
LABEL_58:
        v14 = v4 + v19[12];
        MEMORY[0x23839B7E0](v23, v22);

        MEMORY[0x23839B7E0](0x756F697665725020, 0xEF3D6574756F5273);
        v36 = sub_233218D68();
        MEMORY[0x23839B7E0](v36);

        goto LABEL_59;
      }
    }

    v22 = 0xEF746C7561666544;
    v23 = 0x206E776F6E6B6E55;
    goto LABEL_58;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3178, &unk_23329C6E8);
  v7 = result;
  v8 = *(v4 + *(result + 64));
  v9 = v4 + *(result + 80);
  v10 = v9[8];
  v11 = v4 + *(result + 96);
  if (v8 == 1)
  {
    v12 = xmmword_23329C650;
  }

  else if (v8)
  {
    v12 = xmmword_23329C670;
  }

  else
  {
    v12 = xmmword_23329C660;
  }

  v26 = *v11;
  v27 = *v9;
  v28 = v11[8];
  v50 = v12;
  if (v10)
  {
    v51 = 0;
    v52 = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v33 = 0;
    v34 = 0;
    goto LABEL_65;
  }

  v55 = 0x3D736E6F6974704FLL;
  v56 = 0xE800000000000000;
  if (v27)
  {
    v31 = 0x5220646C756F6853;
  }

  else
  {
    v31 = 1701736270;
  }

  if (v27)
  {
    v32 = 0xED0000656D757365;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v31, v32);

  v51 = v55;
  v52 = v56;
  if (v28)
  {
    goto LABEL_42;
  }

LABEL_31:
  v29 = 0xE700000000000000;
  v55 = 0x3D6E6F73616552;
  v56 = 0xE700000000000000;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v30 = 0xD000000000000012;
      v35 = "Built-In Mic Muted";
    }

    else
    {
      if (v26 != 4)
      {
LABEL_60:
        v30 = 0x6E776F6E6B6E55;
        goto LABEL_64;
      }

      v30 = 0xD000000000000012;
      v35 = "Route Disconnected";
    }

    v29 = (v35 - 32) | 0x8000000000000000;
    goto LABEL_64;
  }

  if (!v26)
  {
    v30 = 0x746C7561666544;
    goto LABEL_64;
  }

  if (v26 != 1)
  {
    goto LABEL_60;
  }

  v29 = 0xED00006465646E65;
  v30 = 0x7073755320707041;
LABEL_64:
  MEMORY[0x23839B7E0](v30, v29);

  v33 = v55;
  v34 = v56;
LABEL_65:
  v37 = 0;
  v53 = v33;
  v54 = v34;
  v38 = MEMORY[0x277D84F90];
LABEL_66:
  if (v37 <= 3)
  {
    v39 = 3;
  }

  else
  {
    v39 = v37;
  }

  v40 = v39 + 1;
  v41 = 16 * v37 + 40;
  while (1)
  {
    if (v37 == 3)
    {
      v14 = v4 + *(v7 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
      swift_arrayDestroy();
      v55 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
      sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
      v13 = sub_23328D8FC();

      goto LABEL_79;
    }

    if (v40 == ++v37)
    {
      break;
    }

    v42 = v41 + 16;
    v43 = *&v49[v41];
    v41 += 16;
    if (v43)
    {
      v44 = *&v49[v42 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_233143EE0(0, *(v38 + 16) + 1, 1, v38);
        v38 = result;
      }

      v46 = *(v38 + 16);
      v45 = *(v38 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_233143EE0((v45 > 1), v46 + 1, 1, v38);
        v38 = result;
      }

      *(v38 + 16) = v46 + 1;
      v47 = v38 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_233219D70()
{
  sub_23328E24C();

  v28 = 0xD000000000000013;
  v29 = 0x80000002332AB150;
  v0 = sub_23328CE1C();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2332190DC(v3);
  v4 = sub_23328CD6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CD4C();
  v9 = sub_23328CD3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CD2C();
  v14 = sub_23328CDEC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  (*(v5 + 8))(v8, v4);
  (*(v24 + 8))(v3, v25);
  MEMORY[0x23839B7E0](v14, v16);

  MEMORY[0x23839B7E0](8285, 0xE200000000000000);
  v17 = sub_233219288();
  MEMORY[0x23839B7E0](v17);

  v18 = sub_2332195B4();
  if (v19)
  {
    v26 = 2108704;
    v27 = 0xE300000000000000;
    MEMORY[0x23839B7E0](v18);

    v20 = v26;
    v21 = v27;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x23839B7E0](v20, v21);

  return v28;
}

uint64_t sub_23321A078()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  sub_233121E04(v0 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL, &qword_27DDE19A0, &unk_233290360);
  v8 = *(v0 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_23321A144()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[2] = sub_23328D75C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B8, &qword_23329CE68);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[3] = sub_23328D75C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3290, &qword_23329CE50);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[4] = sub_23328D75C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32A0, &qword_23329CE58);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[5] = sub_23328D75C();
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  v0[6] = sub_23328D75C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3280, &qword_23329CE48);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[7] = sub_23328D75C();
  v19 = *(v2 + 48);
  v20 = *(v2 + 52);
  swift_allocObject();
  v0[8] = sub_23328D75C();
  v21 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  v22 = sub_23328CC9C();
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory;
  type metadata accessor for TTSVBAudioBufferHistory();
  *(v1 + v23) = sub_233174994(300);
  *(v1 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 0;
  *(v1 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat) = 0;
  return v1;
}

uint64_t sub_23321A35C(unsigned int a1)
{
  v30 = 0;
  v31 = 0xE000000000000000;
  v2 = HIBYTE(a1);
  v3 = sub_23321B078(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_23321B078((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[4 * v5 + 32] = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  if (v7 >= v6 >> 1)
  {
    v3 = sub_23321B078((v6 > 1), v7 + 1, 1, v3);
  }

  *(v3 + 2) = v7 + 1;
  *&v3[4 * v7 + 32] = BYTE2(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_23321B078((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  *&v3[4 * v9 + 32] = BYTE1(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v3 = sub_23321B078((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v12;
  *&v3[4 * v11 + 32] = a1;
  v13 = 32;
  do
  {
    v14 = *&v3[v13];
    if (v14 > 0x7F)
    {
      v17 = (*&v3[v13] & 0x3F) << 8;
      if (v14 >= 0x800)
      {
        v18 = v14 >> 12;
        v19 = (v17 | (v14 >> 6) & 0x3F) << 8;
        v20 = HIWORD(v14);
        v15 = (((v19 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
        v21 = v18 + v19 + 8487393;
        if (!v20)
        {
          v15 = v21;
        }
      }

      else
      {
        v15 = (v14 >> 6) + v17 + 33217;
      }
    }

    else
    {
      v15 = v14 + 1;
    }

    v29[0] = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    v16 = sub_23328DA2C();
    MEMORY[0x23839B7E0](v16);

    v13 += 4;
    --v12;
  }

  while (v12);

  v29[0] = v30;
  v29[1] = v31;
  v22 = sub_23328C8EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C8CC();
  sub_23311A294();
  v27 = sub_23328E05C();
  (*(v23 + 8))(v26, v22);

  return v27;
}

unint64_t sub_23321A708(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_23328E19C();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    goto LABEL_16;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23839BFC0](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 portName];
    v8 = sub_23328D98C();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_233143EE0(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v4 = sub_233143EE0((v11 > 1), v12 + 1, 1, v4);
    }

    ++v3;

    *(v4 + 2) = v13;
    v14 = &v4[16 * v12];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
  }

  while (v2 != v3);
LABEL_16:
  if (v13 == 1)
  {
    v16 = *(v4 + 4);
    v15 = *(v4 + 5);

    return v16;
  }

  else if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
    v17 = sub_23328D8FC();
    v19 = v18;

    MEMORY[0x23839B7E0](v17, v19);

    MEMORY[0x23839B7E0](93, 0xE100000000000000);
    return 91;
  }

  else
  {

    return 1701736270;
  }
}

uint64_t RecordingMode.localizedTitle.getter()
{
  *v0;
  *v0;
  v1 = sub_23328D95C();
  v2 = TTSVBSupportLocString(v1);

  v3 = sub_23328D98C();
  return v3;
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional __swiftcall RecordingMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t RecordingState.description.getter()
{
  if (*v0)
  {
    result = 0x6E6964726F636572;
  }

  else
  {
    result = 0x6576697463616E69;
  }

  *v0;
  return result;
}

BOOL sub_23321AB04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23321AB34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23321AB60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23321AC20()
{
  sub_23321CD30(&qword_27DDE3358, type metadata accessor for RateDidChangeReason);
  sub_23321CD30(&qword_27DDE3360, type metadata accessor for RateDidChangeReason);

  return sub_23328E36C();
}

uint64_t sub_23321ACDC()
{
  sub_23321CD30(&qword_27DDE3240, type metadata accessor for NSKeyValueChangeKey);
  sub_23321CD30(&qword_27DDE3388, type metadata accessor for NSKeyValueChangeKey);

  return sub_23328E36C();
}

uint64_t sub_23321AD98()
{
  sub_23321CD30(&qword_27DDE3368, type metadata accessor for Port);
  sub_23321CD30(&qword_27DDE3370, type metadata accessor for Port);

  return sub_23328E36C();
}

uint64_t sub_23321AE54()
{
  sub_23321CD30(&qword_27DDE3378, type metadata accessor for PolarPattern);
  sub_23321CD30(&qword_27DDE3380, type metadata accessor for PolarPattern);

  return sub_23328E36C();
}

uint64_t sub_23321AF10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23321BBE4(a1);

  *a2 = v3;
  return result;
}

void *sub_23321AF50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3250, &qword_23329CE18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Port(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23321B078(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3258, &unk_23329CE20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_23321B17C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23328E61C();
  sub_23328DA3C();

  v5 = sub_23328E66C();

  return sub_23321B214(a1 & 1, v5);
}

unint64_t sub_23321B214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = "recordingDidFinish";
    }

    else
    {
      v6 = "recordingWillStart";
    }

    v7 = (v6 - 32) | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? "recordingDidFinish" : "recordingWillStart";
      if (((v8 - 32) | 0x8000000000000000) == v7)
      {
        break;
      }

      v9 = sub_23328E54C();

      if ((v9 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23321B338(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
  v34 = a2;
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_23328E61C();
      sub_23328DA3C();

      result = sub_23328E66C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_23321B5EC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_23321B17C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_23321B734();
    result = v17;
    goto LABEL_8;
  }

  sub_23321B338(v14, a3 & 1);
  v18 = *v4;
  result = sub_23321B17C(v8);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_23328E5AC();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

id sub_23321B734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

char *sub_23321B890(char *a1, int64_t a2, char a3)
{
  result = sub_23321B8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23321B8B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D8, &qword_233298850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_23321B9B4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23321AF50(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for Port(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23321BAAC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_23321BB54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23328D98C();
  v6 = v5;
  if (v4 == sub_23328D98C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23328E54C();
  }

  return v9 & 1;
}

uint64_t sub_23321BBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_23321BC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
    v3 = sub_23328E35C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23321B17C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23321BD10()
{
  result = qword_27DDE3110;
  if (!qword_27DDE3110)
  {
    sub_233144EEC(255, &qword_280D3A220, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3110);
  }

  return result;
}

void sub_23321BD78()
{
  v0 = sub_23328C92C();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = *MEMORY[0x277CE6160];
  *&v10 = sub_23328D98C();
  *(&v10 + 1) = v3;
  sub_23328E1EC();
  if (!*(v1 + 16) || (v4 = sub_2331EA6D0(v9), (v5 & 1) == 0))
  {

    sub_2331EACC8(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_23311B0C0(*(v1 + 56) + 32 * v4, &v10);
  sub_2331EACC8(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_233121E04(&v10, &qword_27DDE2660, &qword_233298100);
    v6 = 0;
    goto LABEL_11;
  }

  type metadata accessor for RateDidChangeReason(0);
  if (swift_dynamicCast())
  {
    v6 = v9[0];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_23321C6E8();
  }
}

void sub_23321BEC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23328C91C();
    if (v6)
    {
      sub_233145134(&v5, &v7);
      sub_233144EEC(0, &qword_27DDE32D0, 0x277CB8388);
      swift_dynamicCast();
      v2 = v4;
      v3 = sub_233207C68();

      if (v2 == v3)
      {
        sub_233209940();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23321C048()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 16);

  sub_23328D73C();
}

uint64_t sub_23321C09C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C148@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 24);

  sub_23328D73C();

  *a1 = v5 == 0;
  return result;
}

uint64_t sub_23321C1E8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 48);

  sub_23328D73C();
}

uint64_t sub_23321C23C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C2E8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 40);

  sub_23328D73C();
}

uint64_t sub_23321C33C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32A0, &qword_23329CE58);
  sub_23315246C(&qword_27DDE32A8, &qword_27DDE32A0, &qword_23329CE58);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C3E8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 32);

  sub_23328D73C();
}

uint64_t sub_23321C43C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3290, &qword_23329CE50);
  sub_23315246C(&qword_27DDE3298, &qword_27DDE3290, &qword_23329CE50);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C4E8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 56);

  sub_23328D73C();
}

uint64_t sub_23321C53C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3280, &qword_23329CE48);
  sub_23315246C(&qword_27DDE3288, &qword_27DDE3280, &qword_23329CE48);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C5E8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 64);

  sub_23328D73C();
}

uint64_t sub_23321C63C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*(*(v1 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C6E8()
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_23328D85C();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    v15 = sub_233225380();
    (*(v2 + 16))(v5, v15, v1);
    v16 = v0;
    v17 = sub_23328D6CC();
    v18 = sub_23328DE4C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = sub_233207EFC();
      [v20 rate];
      v22 = v21;

      *(v19 + 4) = v22;
      _os_log_impl(&dword_233109000, v17, v18, "Got player rate change: %f", v19, 0xCu);
      MEMORY[0x23839CFD0](v19, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v23 = sub_233207EFC();
    [v23 rate];
    v25 = v24;

    if (v25 == 0.0)
    {
      [*&v16[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer] replaceCurrentItemWithPlayerItem_];
    }

    v26 = *(*&v16[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + 48);
    v27[15] = v25 != 0.0;

    sub_23328D74C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyj6ChangeL0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D80C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 == 0xD000000000000010 && 0x80000002332AAEC0 == a2 || (sub_23328E54C() & 1) != 0))
  {
    v20 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = sub_23321E590;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_269;
    v16 = _Block_copy(aBlock);
    v17 = v2;
    sub_23328D7DC();
    v21 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198]);
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v14, v9, v16);
    _Block_release(v16);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v19);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23321CD30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23321CD84()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_23320CEE8(v3, v0 + v2, v5, v6);
}

uint64_t sub_23321CE24()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_23320E7B8(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 48), *(v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_23321CF58()
{
  result = qword_27DDE3180;
  if (!qword_27DDE3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3180);
  }

  return result;
}

uint64_t sub_23321CFDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23321D028()
{
  result = qword_27DDE3188;
  if (!qword_27DDE3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3188);
  }

  return result;
}

unint64_t sub_23321D0C4()
{
  result = qword_27DDE31A0;
  if (!qword_27DDE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE31A0);
  }

  return result;
}

unint64_t sub_23321D11C()
{
  result = qword_27DDE31A8;
  if (!qword_27DDE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE31A8);
  }

  return result;
}

uint64_t sub_23321D1BC()
{
  result = type metadata accessor for TTSVBAudioQualityMeasurement();
  if (v1 <= 0x3F)
  {
    result = sub_23328CC9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23321D264()
{
  sub_23321D31C();
  if (v0 <= 0x3F)
  {
    sub_23321D3F8(319);
    if (v1 <= 0x3F)
    {
      sub_23321D530();
      if (v2 <= 0x3F)
      {
        sub_23321D5B0();
        if (v3 <= 0x3F)
        {
          sub_23321D65C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23321D31C()
{
  if (!qword_27DDE31B0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for InterruptionType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE31C0, &qword_23329CA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE31C8, &qword_23329CA40);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DDE31B0);
    }
  }
}

void sub_23321D3F8(uint64_t a1)
{
  if (!qword_27DDE31D0)
  {
    MEMORY[0x28223BE20](a1);
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for RouteChangeReason(255);
    sub_233144EEC(255, &qword_27DDE31D8, 0x277CB8418);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DDE31D0);
    }
  }
}

void sub_23321D530()
{
  if (!qword_27DDE31E0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DDE31E0);
    }
  }
}

void sub_23321D5B0()
{
  if (!qword_27DDE31E8)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for SilenceSecondaryAudioHintType(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DDE31E8);
    }
  }
}

void sub_23321D65C()
{
  if (!qword_27DDE31F0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DDE31F0);
    }
  }
}

void sub_23321D6F0()
{
  sub_23321D7B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23321D7B0()
{
  if (!qword_280D3A0D8)
  {
    sub_23328CC9C();
    v0 = sub_23328E00C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A0D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTSVBAudioService.RecordingStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSVBAudioService.RecordingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23321D8C4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23321D8DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_23321DA9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[2] + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v7 = 0;
  if ([v4 setCategory:v1 mode:v2 options:v3 error:&v7])
  {
    return v7;
  }

  v6 = v7;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_23321DB24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23321DB84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v4 = 0;
  if ([v1 setActive:1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_23321DC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DCC4()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_23321230C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23321DDF0()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_233212A9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23321DEA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23321DF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBAudioService.RecordingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DFDC()
{
  v1 = *(type metadata accessor for TTSVBAudioService.RecordingResult(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_233213328(v2, v3, v4);
}

id sub_23321E054()
{
  v1 = *(v0 + 16);
  v2 = sub_233207C68();
  v6 = 0;
  v3 = [v2 startAndReturnError_];

  if (v3)
  {
    return v6;
  }

  v5 = v6;
  sub_23328CA7C();

  return swift_willThrow();
}