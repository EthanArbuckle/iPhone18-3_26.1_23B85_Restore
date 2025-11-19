void ArticleScorer.score<A>(article:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v31 = sub_1DACB7CC4();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))();
  v17 = (*(a3 + 56))(a2, a3);
  v18 = (*(a3 + 40))(a2, a3);
  v19 = (*(a3 + 48))(a2, a3);
  v20 = sub_1DAC496DC(a1, v4, a2, a3);
  v21 = (*(a3 + 32))(a2, a3);
  v35 = v4;
  v22 = sub_1DAB6AA74(0, sub_1DAC49A88, &v34, v21);

  v23 = (*(a3 + 64))(a2, a3);
  v24 = (*(a3 + 72))(a2, a3);
  v25 = (*(a3 + 96))(a2, a3);
  (*(a3 + 80))(a2, a3);
  v26 = v4 + *(type metadata accessor for ArticleScorer() + 24);
  sub_1DACB7B84();
  v28 = v27;
  (*(v9 + 8))(v13, v31);
  v29 = (*(a3 + 88))(a2, a3);
  *v37 = v17;
  *&v37[1] = v18;
  *&v37[2] = v19;
  *&v37[3] = v20;
  v37[4] = v22;
  *&v37[5] = v23;
  *&v37[6] = v24;
  v38 = v25 & 1;
  v39 = v28 * 1000.0;
  v40 = v29;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_1DAC487C8(v37, v5 + 1, v36);
  sub_1DAAD8D70(v32, v36, a2, v33);
}

uint64_t sub_1DAC48758(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v4;
  v7[2] = v8;
  result = sub_1DAC78448(sub_1DAA88710, v7, v5);
  if (__OFADD__(*a1, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a1 += result & 1;
  }

  return result;
}

long double sub_1DAC487C8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *a1;
  v96 = *(a1 + 16);
  v97 = *(a1 + 24);
  v5 = *(a1 + 32);
  v98 = *(a1 + 40);
  v99 = *(a1 + 8);
  v100 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 136))(v11, v12);
  v14 = v8 > 0.0 && v7 > 0.0;
  v15 = 1.0;
  v94 = v8;
  v95 = v7;
  v16 = v7 / v8;
  v17 = 1.0;
  if (v14)
  {
    v17 = exp2(-(v13 * v16));
  }

  v92 = v17;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 48))(v18, v19);
  if (v14)
  {
    v15 = exp2(-(v20 * v16));
  }

  v90 = v15;
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = (*(v22 + 40))(v21, v22);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v89 = (*(v25 + 24))(v24, v25);
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v87 = (*(v27 + 32))(v26, v27);
  sub_1DAC49D90(v5, a2);
  v88 = v28;
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v86 = (*(v30 + 104))(v29, v30);
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v33 = (*(v32 + 112))(v31, v32);
  v34 = a2[3];
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  v36 = (*(v35 + 16))(v34, v35);
  v37 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v42 = (*(v41 + 56))(v40, v41);
  v43 = a2[3];
  v44 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v43);
  v45 = (*(v44 + 96))(v43, v44);
  v46 = a2[3];
  v47 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v46);
  v48 = (*(v47 + 120))(v46, v47);
  v49 = a2[3];
  v50 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v49);
  v51 = (*(v50 + 152))(v49, v50);
  v52 = 1.0;
  if (v6)
  {
    v53 = a2[3];
    v54 = a2[4];
    v55 = v51;
    __swift_project_boxed_opaque_existential_1(a2, v53);
    v56 = (*(v54 + 144))(v53, v54);
    v51 = v55;
    v52 = 1.0 - v56;
  }

  v57 = v36;
  v58 = v39;
  v59 = v36 + v39 + v42 + v45 + v48;
  if (v59 <= 0.0)
  {
    v59 = 1.0;
  }

  v60 = v98 * v86 + v33;
  if (v60 <= 1.0)
  {
    v61 = v98 * v86 + v33;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v60 > 0.0;
  v63 = 0.0;
  if (!v62)
  {
    v61 = 0.0;
  }

  v64 = v96 * v89 + v87;
  if (v64 <= 1.0)
  {
    v65 = v96 * v89 + v87;
  }

  else
  {
    v65 = 1.0;
  }

  if (v64 > 0.0)
  {
    v63 = v65;
  }

  v66 = (1.0 - v23) * v63;
  v91 = v90 * (v97 * v23) + v92 * v66;
  v67 = v52 / v59;
  v68 = v99 * v58;
  v69 = v88 * v42;
  v70 = v61 * v45;
  v71 = v100 * v48;
  v72 = ((v97 * v23 + v66) * v36 + v99 * v58 + v69 + v70 + v71) * (v52 / v59);
  v73 = pow(1.0 - v51, v10);
  v74 = v73 * v72;
  v75 = v73 * ((v91 * v57 + v92 * (v68 + v69 + v70 + v71)) * v67);
  sub_1DAC495FC(a2);
  v77 = v93 * v76;
  v78 = 1.0 - v76;
  v79 = v93 * v76 + (1.0 - v76) * v74;
  v80 = v93 * v76 + (1.0 - v76) * v75;
  v81 = a2[3];
  v82 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v81);
  v83 = (*(v82 + 128))(v81, v82);
  v84 = pow(1.0 - v83, v9);
  *a3 = v93;
  *(a3 + 8) = v99;
  result = v77 + v78 * (v75 * v84);
  *(a3 + 16) = v96;
  *(a3 + 24) = v97;
  *(a3 + 32) = v5;
  *(a3 + 40) = v98;
  *(a3 + 48) = v100;
  *(a3 + 56) = v6;
  *(a3 + 64) = v95;
  *(a3 + 72) = v94;
  *(a3 + 80) = v9;
  *(a3 + 88) = v10;
  *(a3 + 96) = v79;
  *(a3 + 104) = v80;
  *(a3 + 112) = result;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArticleScorer.score<A>(articles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v3 = sub_1DACB9724();
  v4 = type metadata accessor for ScoredArticle();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1DAC47EC8(sub_1DAC49AA4, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  sub_1DACB9724();
  v11 = sub_1DACB90F4();
  sub_1DACB91A4();
  swift_getWitnessTable();
  sub_1DACB9534();

  v7 = sub_1DACB9194();

  v12 = v7;
  v11 = sub_1DACB9104();
  swift_getWitnessTable();
  sub_1DACB9534();
}

uint64_t sub_1DAC48F94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(a3, a4);
  v6 = *a1;
  v7 = type metadata accessor for ScoredArticle();
  sub_1DACB9724();
  sub_1DACB71E4();
  sub_1DACB91B4();

  if (!v14)
  {
    sub_1DACB96B4();
  }

  sub_1DACBA124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  v11 = sub_1DACB9684();
  (*(v8 + 16))(v12, a2, v7);
  sub_1DAC8FF44(v11);
  sub_1DACB96A4();

  sub_1DACB91A4();
  return sub_1DACB91C4();
}

uint64_t sub_1DAC4918C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = *a1;
  v26 = a3;
  v27 = a4;
  v8 = type metadata accessor for ScoredArticle();
  v9 = sub_1DACB9724();
  WitnessTable = swift_getWitnessTable();
  sub_1DACB9544();
  MEMORY[0x1E1276FF0](&v30, v9, WitnessTable);

  v29 = v30;
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v20 = sub_1DAC49CFC;
  v21 = &v22;
  v11 = sub_1DACB9E54();
  v28 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v14 = sub_1DAC47EC8(sub_1DAC49D08, v17, v11, v8, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  *a5 = v14;
  return result;
}

void sub_1DAC49360(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(type metadata accessor for ScoredArticle() + 36));
  v15 = *(v14 + 4);
  v16 = *(v14 + 6);
  v31 = *(v14 + 5);
  v30 = *(v14 + 56);
  v17 = *(v14 + 8);
  v18 = *(v14 + 9);
  v19 = *(v14 + 13);
  v32 = *(v14 + 12);
  v20 = a3[4];
  v21 = a3[5];
  v22 = *v14;
  v29 = v14[1];
  v35 = v22;
  __swift_project_boxed_opaque_existential_1(a3 + 1, v20);
  v23 = (*(v21 + 160))(v20, v21);
  (*(v10 + 16))(v13, a2, a4);
  v24 = v23 * *&v35;
  v25 = a3[4];
  v26 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v25);
  v27 = (*(v26 + 128))(v25, v26);
  v28 = pow(1.0 - v27, a1);
  v36[1] = v29;
  v36[0] = v35;
  v37 = v15;
  v38 = v31;
  v39 = v16;
  v40 = v30;
  v41 = v17;
  v42 = v18;
  v43 = a1;
  v44 = 0;
  v45 = v32;
  v46 = v19;
  v47 = v24 + (1.0 - v23) * (v19 * v28);
  sub_1DAAD8D70(v13, v36, a4, v34);
}

uint64_t sub_1DAC495FC(void *a1)
{
  sub_1DACB81F4();
  if ((sub_1DACB81E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE1200C8 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v3 = a1[3];
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v3);
    return (*(v4 + 160))(v3, v4);
  }

  return result;
}

double sub_1DAC496DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 16))(v5, a4);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = v7;
    v38 = v5;
    v13 = *a2;
    v39 = v11;
    v14 = v11 + 32;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      sub_1DAA4D678(v14, v41);
      v17 = v42;
      v18 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v40[0] = (*(v18 + 8))(v17, v18);
      v40[1] = v19;
      MEMORY[0x1EEE9AC00](v40[0]);
      *(&v36 - 2) = v40;
      LOBYTE(v17) = sub_1DAC78448(sub_1DAC49E88, (&v36 - 4), v13);

      if (v17)
      {
        v20 = v42;
        v21 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        if ((*(v21 + 24))(v20, v21) > 0.0)
        {
          v22 = v42;
          v23 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          v24 = (*(v23 + 16))(v22, v23);
          v25 = v42;
          v26 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          v15 = v15 + v24 / (*(v26 + 24))(v25, v26);
          v16 = v16 + 1.0;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v41);
      v14 += 40;
      --v12;
    }

    while (v12);

    v7 = v37;
    v5 = v38;
    if (v16 != 0.0)
    {
      v27 = v15 / v16;
      goto LABEL_13;
    }
  }

  else
  {
  }

  (*(a4 + 8))(v41, v5, a4);
  v28 = v42;
  v29 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  if ((*(v29 + 24))(v28, v29) <= 0.0)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v27 = 0.0;
  }

  else
  {
    v30 = v42;
    v31 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v32 = (*(v31 + 16))(v30, v31);
    v33 = v42;
    v34 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v27 = v32 / (*(v34 + 24))(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

LABEL_13:
  (*(v7 + 8))(v10, v5);
  return v27;
}

void sub_1DAC49AA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  ArticleScorer.score<A>(article:)(a1, v3, v4, a2);
}

uint64_t sub_1DAC49B10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(a2 + 16);
  type metadata accessor for ScoredArticle();
  return sub_1DACB96E4();
}

void sub_1DAC49BA0()
{
  sub_1DAA613E8();
  if (v0 <= 0x3F)
  {
    sub_1DAC49C3C();
    if (v1 <= 0x3F)
    {
      sub_1DACB7CC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DAC49C3C()
{
  result = qword_1EE121200;
  if (!qword_1EE121200)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE121200);
  }

  return result;
}

BOOL sub_1DAC49CA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for ScoredArticle();
  return *(a2 + *(v7 + 36) + 104) < *(a1 + *(v7 + 36) + 104);
}

uint64_t sub_1DAC49D08(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *a1;
  type metadata accessor for ScoredArticle();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1DAC49D90(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v5);
    return (*(v6 + 80))(v5, v6);
  }

  else if (a1 == 1)
  {
    v2 = a2[3];
    v3 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v2);
    return (*(v3 + 72))(v2, v3);
  }

  else
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    if (a1 >= 3)
    {
      return (*(v8 + 88))(v7, v8);
    }

    else
    {
      return (*(v8 + 64))(v7, v8);
    }
  }
}

uint64_t sub_1DAC49EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1DACB8FB4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB9004();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(a5 + 16);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1DAA73914;
  v20[4] = v18;
  aBlock[4] = sub_1DAC4A714;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_33;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1DAA58090(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57D6C(&qword_1EE123EB0, &qword_1EE123EC0, v22);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v13, v21);
  _Block_release(v21);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

uint64_t sub_1DAC4A1C8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v81 = a3;
  v82 = a2;
  v4 = type metadata accessor for QuoteDetail();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v81 - v9);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC8];
    v13 = (a1 + 40);
    v83 = xmmword_1DACDA150;
    do
    {
      v14 = *(v13 - 1);
      v86 = *v13;
      v87 = v14;
      sub_1DACB71E4();
      v15 = arc4random_uniform(0x64u);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v17 = v16;
      v18 = arc4random_uniform(0x64u);
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      v20 = v17 / v19;
      v21 = arc4random_uniform(0x64u);
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22;
      v24 = arc4random_uniform(0x64u);
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      v26 = v23 / v25;
      v27 = arc4random_uniform(0x64u);
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      v29 = v28;
      v30 = arc4random_uniform(0x64u);
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      v32 = v29 / v31;
      v33 = arc4random_uniform(0x64u);
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34;
      v36 = arc4random_uniform(0x64u);
      if (v36 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v36;
      }

      v38 = v35 / v37;
      v39 = arc4random_uniform(0x64u);
      if (v39 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      v41 = v40;
      v42 = arc4random_uniform(0x64u);
      if (v42 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v42;
      }

      v44 = v41 / v43;
      v45 = arc4random_uniform(0x64u);
      if (v45 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      v47 = v46;
      v48 = arc4random_uniform(0x64u);
      if (v48 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      v50 = v47 / v49;
      v51 = arc4random_uniform(0x64u);
      if (v51 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v51;
      }

      v85 = v52;
      v53 = arc4random_uniform(0x64u);
      if (v53 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      v84 = v54;
      v55 = arc4random_uniform(0x64u);
      if (v55 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55;
      }

      v57 = v56;
      v58 = arc4random_uniform(0x64u);
      if (v58 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v58;
      }

      v60 = v57 / v59;
      v61 = v4[15];
      v62 = sub_1DACB7CC4();
      v63 = *(*(v62 - 8) + 56);
      v64 = v8;
      v63(v10 + v61, 1, 1, v62);
      v63(v10 + v4[16], 1, 1, v62);
      v65 = v4[18];
      v66 = sub_1DACB7AB4();
      v67 = *(*(v66 - 8) + 56);
      v68 = v10 + v65;
      v8 = v64;
      v67(v68, 1, 1, v66);
      v67(v10 + v4[19], 1, 1, v66);
      v69 = v4[20];
      v70 = sub_1DACB7F54();
      (*(*(v70 - 8) + 56))(v10 + v69, 1, 1, v70);
      v71 = v10 + v4[28];
      sub_1DACB7CB4();
      *v10 = v20;
      *(v10 + 8) = 0;
      v10[2] = v26;
      *(v10 + 24) = 0;
      v10[4] = v32;
      *(v10 + 40) = 0;
      v10[6] = v38;
      *(v10 + 56) = 0;
      v10[8] = v44;
      *(v10 + 72) = 0;
      v10[10] = v50;
      *(v10 + 88) = 0;
      v72 = v84;
      *(v10 + 12) = v85;
      *(v10 + 104) = 0;
      *(v10 + 14) = v72;
      *(v10 + 120) = 0;
      v10[16] = v60;
      *(v10 + 136) = 0;
      v10[18] = 0.0;
      *(v10 + 152) = 1;
      v10[20] = 0.0;
      *(v10 + 168) = 1;
      *(v10 + v4[17]) = v83;
      v73 = v10 + v4[21];
      *v73 = 0;
      *(v73 + 1) = 0;
      v74 = v10 + v4[22];
      *v74 = 0;
      *(v74 + 1) = 0;
      v75 = v10 + v4[23];
      *v75 = 0;
      *(v75 + 1) = 0;
      v76 = v10 + v4[24];
      *v76 = 0;
      *(v76 + 1) = 0;
      v77 = v10 + v4[25];
      *v77 = 0;
      *(v77 + 1) = 0;
      v78 = MEMORY[0x1E69E7CC0];
      *(v10 + v4[26]) = MEMORY[0x1E69E7CC0];
      *(v10 + v4[27]) = v78;
      sub_1DAC2FF24(v10, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v12;
      sub_1DACA5564(v64, v87, v86, isUniquelyReferenced_nonNull_native);

      v12 = v88;
      v13 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  v82(v12);
}

uint64_t sub_1DAC4A67C()
{
  v5 = *v0;
  sub_1DAA58090(0, &qword_1EE11FE78, sub_1DAAE8134, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void *sub_1DAC4A720()
{
  result = sub_1DAA99408(0xD000000000000017, 0x80000001DACF0300);
  off_1ECBE94F8 = result;
  return result;
}

uint64_t sub_1DAC4A758()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    sub_1DACB8954();
    v3 = *(v2 + 24);
    sub_1DACB8954();
  }

  return result;
}

uint64_t sub_1DAC4A7C0()
{
  v1 = v0;
  v2 = v0[4];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DACB99F4();
  swift_unknownObjectRelease();
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC4A894@<X0>(char *a1@<X8>)
{
  v3 = sub_1DACB93A4();
  v4 = v2;
  if (v3 == 0x79636E6572727563 && v2 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 1;
  }

  else if (v3 == 0x75636F7470797263 && v4 == 0xEE0079636E657272 || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 2;
  }

  else if (v3 == 0x6B636F7473 && v4 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0 || v3 == 0x797469757165 && v4 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 3;
  }

  else if (v3 == 6714469 && v4 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0 || v3 == 0x74652D6B636F7473 && v4 == 0xE900000000000066 || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 4;
  }

  else if (v3 == 0x7865646E69 && v4 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 6;
  }

  else if (v3 == 0x75666C617574756DLL && v4 == 0xEA0000000000646ELL || (sub_1DACBA174() & 1) != 0)
  {

    v6 = 7;
  }

  else if (v3 == 0x73657275747566 && v4 == 0xE700000000000000)
  {

    v6 = 5;
  }

  else
  {
    v7 = sub_1DACBA174();

    if (v7)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1DAC4AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB8FB4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB9004();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1DAC4AF1C;
  *(v18 + 24) = v16;
  aBlock[4] = sub_1DAC4AF7C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1DAA58158(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57E34(&qword_1EE123EB0, &qword_1EE123EC0, v20);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v15, v11, v19);
  _Block_release(v19);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_1DAC4AE90()
{
  v1 = *v0;
  sub_1DAA58158(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC4AF1C(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v6 = a1;
  v7 = a2;
  sub_1DACB71E4();
  v4(&v6);
}

uint64_t sub_1DAC4AF7C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1DAAA4DD0(50);
  v2(v3, 0);
}

uint64_t sub_1DAC4AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB82E4();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_1DAA4D678(a2 + 16, v25);
  v13 = *(a2 + 56);
  (*(v7 + 16))(v10, a3, v6);
  v14 = v26;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v21 = sub_1DAC4B300(v11, v12, v20, v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v22 = sub_1DACB82B4();

  return v22;
}

uint64_t sub_1DAC4B1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  return sub_1DACB71E4();
}

uint64_t sub_1DAC4B208(__int128 *a1)
{
  v2 = *v1;
  v12 = a1[6];
  v13 = a1[7];
  v14 = *(a1 + 16);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v6 = *a1;
  v7 = a1[1];
  sub_1DAB7B4A0();
  sub_1DACB8BB4();
  v3 = sub_1DACB89D4();
  sub_1DAAD4E00();
  v4 = sub_1DACB8A64();

  return v4;
}

id sub_1DAC4B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SDSBaseOperationFactory();
  v27[3] = v10;
  v27[4] = &off_1F5690858;
  v27[0] = a3;
  v11 = type metadata accessor for SDSNewsOperation();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_1F5690858;
  v26[0] = v18;
  v19 = &v12[qword_1ECBE92D8];
  *v19 = a1;
  *(v19 + 1) = a2;
  sub_1DAA4D678(v26, &v12[qword_1ECBE92E0]);
  *&v12[qword_1ECBE92E8] = a4;
  v20 = qword_1ECBE92F0;
  v21 = sub_1DACB8204();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v12[v20], a5, v21);
  v25.receiver = v12;
  v25.super_class = v11;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  (*(v22 + 8))(a5, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

uint64_t sub_1DAC4B4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  if (a3)
  {
    if (a4)
    {
      v14 = sub_1DACB92F4();
      v15 = [a4 dateFromString_];

      if (v15)
      {
        sub_1DACB7C74();

        v16 = sub_1DACB7CC4();
        (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
      }

      else
      {
        v22 = sub_1DACB7CC4();
        (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
      }

      return sub_1DABD4334(v13, a5);
    }

    else
    {
      v20 = sub_1DACB7CC4();
      v21 = *(*(v20 - 8) + 56);

      return v21(a5, 1, 1, v20);
    }
  }

  else
  {
    v23[1] = 0;
    if (sub_1DAC2E880(a1, a2))
    {
      sub_1DACB7C44();
      v17 = sub_1DACB7CC4();
      return (*(*(v17 - 8) + 56))(a5, 0, 1, v17);
    }

    else
    {
      v19 = sub_1DACB7CC4();
      return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
    }
  }
}

uint64_t sub_1DAC4B770@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v73 = a4;
  v81 = a3;
  v72 = a2;
  sub_1DAA82998();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v70 - v13;
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v70 - v17;
  v18 = sub_1DACB7CC4();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v70 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  v30 = *(a1 + 16);
  if (!v30)
  {
    if (qword_1EE11FD88 == -1)
    {
LABEL_7:
      v43 = sub_1DACB8C94();
      __swift_project_value_buffer(v43, qword_1EE13E2B8);
      v44 = sub_1DACB8C74();
      v45 = sub_1DACB9904();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DAA3F000, v44, v45, "failed to create date range: no values", v46, 2u);
        MEMORY[0x1E1278C00](v46, -1, -1);
      }

      sub_1DAA49610();
      v48 = *(*(v47 - 8) + 56);

      return v48(a5, 1, 1, v47);
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v76 = v14;
  v77 = v8;
  v74 = v12;
  v75 = a5;
  v78 = v27;
  a5 = type metadata accessor for Chart.Entry(0) - 8;
  v31 = *a5;
  v32 = a1 + ((*(*a5 + 80) + 32) & ~*(*a5 + 80));
  v33 = v19[2];
  v33(v26, v32, v18);
  v80 = v19;
  v79 = v19[4];
  v79(v29, v26, v18);
  v34 = v32 + *(v31 + 72) * (v30 - 1);
  v35 = v78;
  v33(v78, v34, v18);
  sub_1DAB56348(0xD000000000000013, 0x80000001DACF03E0, v81);
  v38 = v29;
  if (!v39 || (v40 = v36, v41 = v37, , !v41))
  {
LABEL_16:
    sub_1DAA49674();
    if (sub_1DACB9244())
    {
      v62 = v76;
      v63 = v79;
      v79(v76, v38, v18);
      v64 = v77;
      v63(v62 + *(v77 + 48), v35, v18);
      v65 = v74;
      sub_1DAA948B0(v62, v74, sub_1DAA82998);
      v66 = *(v64 + 48);
      v58 = v75;
      v63(v75, v65, v18);
      v67 = v80[1];
      v67(v65 + v66, v18);
      sub_1DAC4E5F8(v62, v65, sub_1DAA82998);
      v68 = *(v64 + 48);
      sub_1DAA49610();
      v61 = v69;
      v63(v58 + *(v69 + 36), v65 + v68, v18);
      v67(v65, v18);
      return (*(*(v61 - 8) + 56))(v58, 0, 1, v61);
    }

    __break(1u);
    goto LABEL_20;
  }

  a5 = v71;
  sub_1DAC4B4F8(v40, v41, v72 & 1, v73, v71);

  v42 = v80;
  if ((v80[6])(a5, 1, v18) == 1)
  {
    sub_1DAA89E50(a5, &qword_1EE125280, MEMORY[0x1E6969530]);
    goto LABEL_16;
  }

  v50 = v70;
  v79(v70, a5, v18);
  if ((sub_1DACB7C14() & 1) == 0)
  {
    (v42[1])(v50, v18);
    goto LABEL_16;
  }

  sub_1DAA49674();
  v51 = sub_1DACB9244();
  v52 = v42[1];
  result = v52(v35, v18);
  v54 = v76;
  v53 = v77;
  if (v51)
  {
    v55 = v79;
    v79(v76, v38, v18);
    v55(v54 + *(v53 + 48), v50, v18);
    v56 = v74;
    sub_1DAA948B0(v54, v74, sub_1DAA82998);
    v57 = *(v53 + 48);
    v58 = v75;
    v55(v75, v56, v18);
    v52(v56 + v57, v18);
    sub_1DAC4E5F8(v54, v56, sub_1DAA82998);
    v59 = *(v53 + 48);
    sub_1DAA49610();
    v61 = v60;
    v55(v58 + *(v60 + 36), (v56 + v59), v18);
    v52(v56, v18);
    return (*(*(v61 - 8) + 56))(v58, 0, 1, v61);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1DAC4BEF0@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v60 = a2;
  sub_1DAC4E5A4(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v61[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v61[-1] - v8;
  v10 = sub_1DACB7F54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v61[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61[-1] - v16;
  sub_1DAB56348(0x657366666F746D67, 0xE900000000000074, a1);
  if (v20)
  {
    v21 = v18;
    v22 = v19;

    if (v22)
    {
      v24 = HIBYTE(v22) & 0xF;
      v25 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v22 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v26 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          sub_1DABBDB84(v21, v22, 10);
          v51 = v59;
LABEL_65:

          if ((v51 & 1) == 0)
          {
            sub_1DACB7F24();
            if ((*(v11 + 48))(v9, 1, v10) != 1)
            {
              v57 = *(v11 + 32);
              v57(v17, v9, v10);
              v58 = v60;
              v57(v60, v17, v10);
              return (*(v11 + 56))(v58, 0, 1, v10);
            }

            sub_1DAA89E50(v9, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
          }

          goto LABEL_68;
        }

        if ((v22 & 0x2000000000000000) != 0)
        {
          v61[0] = v21;
          v61[1] = v22 & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (v24)
            {
              if (--v24)
              {
                v40 = 0;
                v41 = v61 + 1;
                while (1)
                {
                  v42 = *v41 - 48;
                  if (v42 > 9)
                  {
                    break;
                  }

                  v43 = 10 * v40;
                  if ((v40 * 10) >> 64 != (10 * v40) >> 63)
                  {
                    break;
                  }

                  v40 = v43 + v42;
                  if (__OFADD__(v43, v42))
                  {
                    break;
                  }

                  ++v41;
                  if (!--v24)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_81:
            __break(1u);
            return result;
          }

          if (v21 != 45)
          {
            if (v24)
            {
              v47 = 0;
              v48 = v61;
              while (1)
              {
                v49 = *v48 - 48;
                if (v49 > 9)
                {
                  break;
                }

                v50 = 10 * v47;
                if ((v47 * 10) >> 64 != (10 * v47) >> 63)
                {
                  break;
                }

                v47 = v50 + v49;
                if (__OFADD__(v50, v49))
                {
                  break;
                }

                ++v48;
                if (!--v24)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v24)
          {
            if (--v24)
            {
              v32 = 0;
              v33 = v61 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v32;
                if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                {
                  break;
                }

                v32 = v35 - v34;
                if (__OFSUB__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v24)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            result = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_1DACB9D24();
          }

          v27 = *result;
          if (v27 == 43)
          {
            if (v25 >= 1)
            {
              v24 = v25 - 1;
              if (v25 != 1)
              {
                v36 = 0;
                if (result)
                {
                  v37 = result + 1;
                  while (1)
                  {
                    v38 = *v37 - 48;
                    if (v38 > 9)
                    {
                      goto LABEL_63;
                    }

                    v39 = 10 * v36;
                    if ((v36 * 10) >> 64 != (10 * v36) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v36 = v39 + v38;
                    if (__OFADD__(v39, v38))
                    {
                      goto LABEL_63;
                    }

                    ++v37;
                    if (!--v24)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_80;
          }

          if (v27 != 45)
          {
            if (v25)
            {
              v44 = 0;
              if (result)
              {
                while (1)
                {
                  v45 = *result - 48;
                  if (v45 > 9)
                  {
                    goto LABEL_63;
                  }

                  v46 = 10 * v44;
                  if ((v44 * 10) >> 64 != (10 * v44) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v44 = v46 + v45;
                  if (__OFADD__(v46, v45))
                  {
                    goto LABEL_63;
                  }

                  ++result;
                  if (!--v25)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v24) = 1;
            goto LABEL_64;
          }

          if (v25 >= 1)
          {
            v24 = v25 - 1;
            if (v25 != 1)
            {
              v28 = 0;
              if (result)
              {
                v29 = result + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_63;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v28 = v31 - v30;
                  if (__OFSUB__(v31, v30))
                  {
                    goto LABEL_63;
                  }

                  ++v29;
                  if (!--v24)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v24) = 0;
LABEL_64:
              v62 = v24;
              v51 = v24;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }
  }

LABEL_68:
  sub_1DAB56348(0x656E6F7A656D6974, 0xE800000000000000, a1);
  if (!v53)
  {
    return sub_1DACB7F14();
  }

  v54 = v52;

  if (!v54)
  {
    return sub_1DACB7F14();
  }

  sub_1DACB7F14();

  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1DAA89E50(v7, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    return sub_1DACB7F14();
  }

  v55 = *(v11 + 32);
  v55(v15, v7, v10);
  v56 = v60;
  v55(v60, v15, v10);
  return (*(v11 + 56))(v56, 0, 1, v10);
}

uint64_t sub_1DAC4C51C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v27 = a2;
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      v5 = *(v4 + v3);
      if (v5 <= 2 && v5 != 1 && v5 != 2)
      {
        break;
      }

      v6 = sub_1DACBA174();

      if (v6)
      {
        goto LABEL_9;
      }

      if (v2 == ++v3)
      {
        v3 = 0;
LABEL_9:
        v26 = v6 ^ 1;
        goto LABEL_10;
      }
    }

    v26 = 0;
LABEL_10:
    v7 = 0;
    while (v2 != v7)
    {
      if (*(v4 + v7) <= 2u && *(v4 + v7) && *(v4 + v7) != 2)
      {

        v9 = 0;
        goto LABEL_19;
      }

      v8 = sub_1DACBA174();

      if (v8)
      {
        goto LABEL_18;
      }

      if (v2 == ++v7)
      {
        v7 = 0;
LABEL_18:
        v9 = v8 ^ 1;
LABEL_19:
        v10 = 0;
        while (1)
        {
          if (v2 == v10)
          {
            goto LABEL_52;
          }

          v11 = *(v4 + v10);
          if (v11 > 1 && v11 != 3 && v11 != 4)
          {
            break;
          }

          v12 = sub_1DACBA174();

          if (v12)
          {
            goto LABEL_27;
          }

          if (v2 == ++v10)
          {
            v10 = 0;
LABEL_27:
            v25 = v12 ^ 1;
LABEL_28:
            v13 = 0;
            while (1)
            {
              if (v2 == v13)
              {
                goto LABEL_53;
              }

              v14 = *(v4 + v13);
              if (v14 > 2 && v14 != 4)
              {
                break;
              }

              v15 = sub_1DACBA174();

              if (v15)
              {
                goto LABEL_35;
              }

              if (v2 == ++v13)
              {
                v13 = 0;
LABEL_35:
                v24 = v15 ^ 1;
LABEL_36:
                v16 = 0;
                while (1)
                {
                  if (v2 == v16)
                  {
                    goto LABEL_54;
                  }

                  v17 = *(v4 + v16);
                  if (v17 >= 4)
                  {
                    break;
                  }

                  v18 = sub_1DACBA174();

                  if (v18)
                  {
                    goto LABEL_42;
                  }

                  if (v2 == ++v16)
                  {
                    v16 = 0;
LABEL_42:
                    v19 = v18 ^ 1;
LABEL_43:
                    a2 = v27;
                    v21 = v9;
                    v20 = v26;
                    v23 = v24;
                    v22 = v25;
                    goto LABEL_45;
                  }
                }

                v19 = 0;
                goto LABEL_43;
              }
            }

            v24 = 0;
            goto LABEL_36;
          }
        }

        v25 = 0;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v10 = 0;
    v7 = 0;
    v3 = 0;
    v19 = 1;
    v23 = 1;
    v22 = 1;
    v21 = 1;
    v20 = 1;
LABEL_45:
    *a2 = v3;
    *(a2 + 8) = v20 & 1;
    *(a2 + 16) = v7;
    *(a2 + 24) = v21 & 1;
    *(a2 + 32) = v10;
    *(a2 + 40) = v22 & 1;
    *(a2 + 48) = v13;
    *(a2 + 56) = v23 & 1;
    *(a2 + 64) = v16;
    *(a2 + 72) = v19 & 1;
  }

  return result;
}

uint64_t sub_1DAC4C9C4(char a1, uint64_t a2)
{
  if (a1)
  {
    return 0;
  }

  sub_1DAB56348(0x73756F6976657270, 0xEE0065736F6C635FLL, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;

  if (!v7)
  {
    return 0;
  }

  sub_1DAC2E880(v6, v7);

  return 0;
}

void sub_1DAC4CA90(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v215 = a2;
  v7 = type metadata accessor for Chart(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC4E5A4(0, qword_1EE120360, type metadata accessor for Chart);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v198 - v14;
  sub_1DAC4E5A4(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v214 = &v198 - v18;
  v221 = sub_1DACB7F54();
  v229 = *(v221 - 8);
  v19 = *(v229 + 64);
  v20 = MEMORY[0x1EEE9AC00](v221);
  v216 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v213 = &v198 - v22;
  sub_1DAC4E5A4(0, &qword_1EE11FC30, sub_1DAA49610);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v219 = &v198 - v25;
  sub_1DAA49610();
  v218 = v26;
  v217 = *(v26 - 8);
  v27 = *(v217 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v212 = &v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v198 - v30;
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v230 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v241 = &v198 - v36;
  v247 = sub_1DACB7CC4();
  v220 = *(v247 - 8);
  v37 = *(v220 + 64);
  v38 = MEMORY[0x1EEE9AC00](v247);
  v211 = &v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v234 = &v198 - v40;
  sub_1DAC4E5A4(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v246 = &v198 - v43;
  v242 = type metadata accessor for Chart.Entry(0);
  v235 = *(v242 - 8);
  v44 = *(v235 + 64);
  v45 = MEMORY[0x1EEE9AC00](v242);
  v227 = &v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v222 = &v198 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v240 = &v198 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v198 - v51;
  v52 = *(a1 + 8);
  v223 = *a1;
  v244 = v52;
  v243 = *(a1 + 16);
  v53 = *(a1 + 24);
  sub_1DAB56348(0x72656B636974, 0xE600000000000000, v53);
  v232 = v56;
  if (!v54)
  {
LABEL_73:
    if (qword_1EE11FD88 == -1)
    {
LABEL_74:
      v143 = sub_1DACB8C94();
      __swift_project_value_buffer(v143, qword_1EE13E2B8);
      v144 = sub_1DACB8C74();
      v145 = sub_1DACB9904();
      if (!os_log_type_enabled(v144, v145))
      {
LABEL_77:

        return;
      }

      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_1DAA3F000, v144, v145, "failed to created chart model: no ticker found", v146, 2u);
LABEL_76:
      MEMORY[0x1E1278C00](v146, -1, -1);
      goto LABEL_77;
    }

LABEL_114:
    swift_once();
    goto LABEL_74;
  }

  v57 = v55;
  if (!v55)
  {

    goto LABEL_73;
  }

  v58 = v223;
  if (!*(v223 + 16))
  {

    if (qword_1EE11FD88 != -1)
    {
LABEL_116:
      swift_once();
    }

    v147 = sub_1DACB8C94();
    __swift_project_value_buffer(v147, qword_1EE13E2B8);
    sub_1DACB71E4();
    v144 = sub_1DACB8C74();
    v148 = sub_1DACB9904();

    if (!os_log_type_enabled(v144, v148))
    {

      goto LABEL_77;
    }

    v146 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v252 = v149;
    *v146 = 136446210;
    v150 = sub_1DAA7ABE4(v232, v57, &v252);

    *(v146 + 4) = v150;
    _os_log_impl(&dword_1DAA3F000, v144, v148, "failed to created chart model for %{public}s: no entries", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v149);
    MEMORY[0x1E1278C00](v149, -1, -1);
    goto LABEL_76;
  }

  v205 = v54;
  v249 = v53;
  v199 = v15;
  v202 = v11;
  v200 = v8;
  v203 = v7;
  v201 = a3;
  v204 = v31;
  v248 = v4;
  sub_1DACB71E4();
  sub_1DAC4C51C(v58, &v252);
  v59 = sub_1DACB92F4();
  v231 = [objc_opt_self() dateFormatterWithFormat:v59 forReuse:1];

  v61 = v244;
  v62 = *(v244 + 16);
  v245 = v57;
  v239 = v62;
  if (!v62)
  {
    v65 = MEMORY[0x1E69E7CC0];
    v93 = v249;
LABEL_82:

    v151 = v219;
    v152 = v231;
    sub_1DAC4B770(v65, v243, v93, v231, v219);
    if ((*(v217 + 48))(v151, 1, v218) == 1)
    {

      sub_1DAA89E50(v151, &qword_1EE11FC30, sub_1DAA49610);
      if (qword_1EE11FD88 != -1)
      {
        swift_once();
      }

      v153 = sub_1DACB8C94();
      __swift_project_value_buffer(v153, qword_1EE13E2B8);
      sub_1DACB71E4();
      v154 = sub_1DACB8C74();
      v155 = sub_1DACB9904();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v262 = v157;
        *v156 = 136446210;
        v158 = sub_1DAA7ABE4(v232, v57, &v262);

        *(v156 + 4) = v158;
        _os_log_impl(&dword_1DAA3F000, v154, v155, "failed to create chart model for %{public}s: unable to determine date range", v156, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v157);
        MEMORY[0x1E1278C00](v157, -1, -1);
        MEMORY[0x1E1278C00](v156, -1, -1);
      }

      else
      {
      }

      return;
    }

    v66 = v204;
    sub_1DAC4E5F8(v151, v204, sub_1DAA49610);
    v251 = sub_1DAC4C9C4(v215, v93);
    LODWORD(v250) = v159;
    v160 = v93;
    v161 = v214;
    sub_1DAC4BEF0(v160, v214);
    v162 = v229;
    v163 = v221;
    if ((*(v229 + 48))(v161, 1, v221) == 1)
    {

      sub_1DAA89E50(v161, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      if (qword_1EE11FD88 != -1)
      {
        goto LABEL_121;
      }

      goto LABEL_89;
    }

    v170 = v213;
    (*(v162 + 32))(v213, v161, v163);
    v171 = v212;
    sub_1DAA948B0(v66, v212, sub_1DAA49610);
    v249 = *(v162 + 16);
    v249(v216, v170, v163);
    v172 = v65;
    v173 = v211;
    sub_1DACB7CB4();
    v174 = v202;
    *v202 = v172;
    v175 = v203;
    sub_1DAA948B0(v171, &v174[v203[5]], sub_1DAA49610);
    v176 = &v174[v175[6]];
    *v176 = v251;
    v176[8] = v250 & 1;
    v249(&v174[v175[7]], v216, v163);
    (*(v220 + 16))(&v174[v175[8]], v173, v247);
    v177 = v172[2];
    v178 = v172;
    sub_1DACB71E4();
    v179 = v163;
    if (!v177)
    {
      v181 = MEMORY[0x1E69E7CC0];
      v184 = v229;
LABEL_109:

      v191 = v179;
      v192 = *(v181 + 16);

      (*(v220 + 8))(v211, v247);
      v193 = *(v184 + 8);
      v193(v216, v191);
      sub_1DAA85464(v212, sub_1DAA49610);
      v194 = v203;
      v195 = &unk_1F567C2B0;
      if (!v192)
      {
        v195 = MEMORY[0x1E69E7CC0];
      }

      v196 = v202;
      *&v202[v203[9]] = v195;
      v197 = v199;
      sub_1DAC4E5F8(v196, v199, type metadata accessor for Chart);
      (*(v200 + 56))(v197, 0, 1, v194);
      sub_1DAB59950(v197, v232, v57);

      v193(v213, v191);
      sub_1DAA85464(v204, sub_1DAA49610);
      return;
    }

    v180 = 0;
    v181 = MEMORY[0x1E69E7CC0];
    v182 = v242;
    v183 = v222;
    while (v180 < v178[2])
    {
      v185 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v186 = *(v235 + 72);
      sub_1DAA948B0(v178 + v185 + v186 * v180, v183, type metadata accessor for Chart.Entry);
      v187 = v183 + *(v182 + 36);
      if ((*(v187 + 8) & 1) != 0 || *v187 <= 0.0)
      {
        sub_1DAA85464(v183, type metadata accessor for Chart.Entry);
        v57 = v245;
      }

      else
      {
        sub_1DAC4E5F8(v183, v227, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v262 = v181;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v181 + 16) + 1, 1);
          v179 = v221;
          v181 = v262;
        }

        v190 = *(v181 + 16);
        v189 = *(v181 + 24);
        if (v190 >= v189 >> 1)
        {
          sub_1DAA83020(v189 > 1, v190 + 1, 1);
          v179 = v221;
          v181 = v262;
        }

        *(v181 + 16) = v190 + 1;
        sub_1DAC4E5F8(v227, v181 + v185 + v190 * v186, type metadata accessor for Chart.Entry);
        v57 = v245;
        v182 = v242;
        v183 = v222;
      }

      ++v180;
      v184 = v229;
      if (v177 == v180)
      {
        goto LABEL_109;
      }
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v63 = 0;
  v238 = (v220 + 56);
  v224 = (v220 + 48);
  v226 = (v220 + 32);
  v206 = (v220 + 16);
  v225 = (v220 + 8);
  v237 = (v235 + 56);
  v236 = (v235 + 48);
  v64 = (v244 + 48);
  v65 = MEMORY[0x1E69E7CC0];
  *&v60 = 136446722;
  v228 = v60;
  v66 = v247;
  v67 = v242;
  while (1)
  {
    if (v63 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_113;
    }

    v250 = v65;
    v68 = *(v64 - 2);
    v69 = *(v64 - 1);
    v251 = *v64;
    if ((v243 & 1) == 0)
    {
      v262 = 0;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v75 = v248;
      v76 = sub_1DAC2E880(v68, v69);
      v248 = v75;
      v77 = v241;
      if (v76)
      {
        sub_1DACB7C44();
        (*v238)(v77, 0, 1, v66);
        goto LABEL_20;
      }

      (*v238)(v241, 1, 1, v66);
LABEL_19:
      sub_1DAA89E50(v77, &qword_1EE125280, MEMORY[0x1E6969530]);
LABEL_22:
      if (qword_1EE11FD88 != -1)
      {
        swift_once();
      }

      v82 = sub_1DACB8C94();
      __swift_project_value_buffer(v82, qword_1EE13E2B8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v83 = sub_1DACB8C74();
      v84 = sub_1DACB9904();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v262 = v86;
        *v85 = v228;
        *(v85 + 4) = sub_1DAA7ABE4(v232, v245, &v262);
        *(v85 + 12) = 2082;
        *(v85 + 14) = sub_1DAA7ABE4(v68, v69, &v262);
        *(v85 + 22) = 2082;
        v87 = MEMORY[0x1E1277130](v251, MEMORY[0x1E69E6158]);
        v89 = sub_1DAA7ABE4(v87, v88, &v262);

        *(v85 + 24) = v89;
        _os_log_impl(&dword_1DAA3F000, v83, v84, "failed to create entry for %{public}s. ref: %{public}s, values: %{public}s", v85, 0x20u);
        swift_arrayDestroy();
        v90 = v86;
        v67 = v242;
        MEMORY[0x1E1278C00](v90, -1, -1);
        v91 = v85;
        v57 = v245;
        MEMORY[0x1E1278C00](v91, -1, -1);
      }

      v61 = v244;
      v92 = v246;
      (*v237)(v246, 1, 1, v67);

      goto LABEL_27;
    }

    v70 = v231;
    if (!v231)
    {
      v77 = v241;
      (*v238)(v241, 1, 1, v66);
      sub_1DACB71E4();
      sub_1DACB71E4();
      goto LABEL_19;
    }

    sub_1DACB71E4();
    sub_1DACB71E4();
    v71 = sub_1DACB92F4();
    v72 = [v70 dateFromString_];

    if (v72)
    {
      v73 = v230;
      sub_1DACB7C74();

      v74 = 0;
    }

    else
    {
      v74 = 1;
      v73 = v230;
    }

    (*v238)(v73, v74, 1, v66);
    v78 = v73;
    v77 = v241;
    sub_1DABD4334(v78, v241);
    v79 = (*v224)(v77, 1, v66);
    v67 = v242;
    if (v79 == 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v80 = v234;
    (*v226)(v234, v77, v66);
    sub_1DACB7C54();
    if (v81 == 0.0)
    {
      (*v225)(v80, v66);
      goto LABEL_22;
    }

    v98 = *(v251 + 16);
    if (!v98)
    {
      (*v225)(v234, v66);
      goto LABEL_22;
    }

    (*v206)(v246, v234, v66);
    v99 = 0;
    v100 = 1;
    if ((v253 & 1) == 0 && v252 < v98)
    {
      if (v252 < 0)
      {
        __break(1u);
        goto LABEL_116;
      }

      v101 = v251 + 16 * v252;
      v103 = *(v101 + 32);
      v102 = *(v101 + 40);
      v262 = 0;
      sub_1DACB71E4();
      v104 = v103;
      v105 = v248;
      v106 = sub_1DAC2E880(v104, v102);
      v248 = v105;

      if (v106)
      {
        v100 = 0;
        v99 = v262;
      }

      else
      {
        v99 = 0;
      }
    }

    v107 = v251;
    if ((v255 & 1) != 0 || v254 >= *(v251 + 16))
    {
      v66 = 0;
      v57 = 1;
      if (v257)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v254 < 0)
    {
      break;
    }

    v108 = v251 + 16 * v254;
    v110 = *(v108 + 32);
    v109 = *(v108 + 40);
    v262 = 0;
    sub_1DACB71E4();
    v111 = v110;
    v112 = v248;
    v113 = sub_1DAC2E880(v111, v109);
    v248 = v112;

    if (v113)
    {
      v57 = 0;
      v66 = v262;
    }

    else
    {
      v66 = 0;
      v57 = 1;
    }

    v107 = v251;
    if (v257)
    {
LABEL_54:
      v208 = 0;
      v207 = 1;
      goto LABEL_57;
    }

LABEL_50:
    if (v256 >= *(v107 + 16))
    {
      goto LABEL_54;
    }

    if (v256 < 0)
    {
      goto LABEL_118;
    }

    v114 = v107 + 16 * v256;
    v116 = *(v114 + 32);
    v115 = *(v114 + 40);
    v262 = 0;
    sub_1DACB71E4();
    v117 = v116;
    v118 = v248;
    v119 = sub_1DAC2E880(v117, v115);
    v248 = v118;

    if (v119)
    {
      v207 = 0;
      v208 = v262;
    }

    else
    {
      v208 = 0;
      v207 = 1;
    }

    v107 = v251;
LABEL_57:
    v210 = v66;
    v209 = v57;
    if ((v259 & 1) != 0 || v258 >= *(v107 + 16))
    {
      v66 = v100;
      v120 = v99;
      v127 = 0;
      v57 = 1;
      if (v261)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v258 < 0)
      {
        goto LABEL_119;
      }

      v66 = v100;
      v120 = v99;
      v121 = v107 + 16 * v258;
      v123 = *(v121 + 32);
      v122 = *(v121 + 40);
      v262 = 0;
      sub_1DACB71E4();
      v124 = v123;
      v125 = v248;
      v126 = sub_1DAC2E880(v124, v122);
      v248 = v125;

      if (v126)
      {
        v57 = 0;
        v127 = v262;
      }

      else
      {
        v127 = 0;
        v57 = 1;
      }

      v107 = v251;
      if (v261)
      {
LABEL_70:
        v135 = 0;
        v134 = 1;
        goto LABEL_71;
      }
    }

    if (v260 >= *(v107 + 16))
    {
      goto LABEL_70;
    }

    if (v260 < 0)
    {
      goto LABEL_120;
    }

    v128 = v107 + 16 * v260;
    v130 = *(v128 + 32);
    v129 = *(v128 + 40);
    v262 = 0;
    sub_1DACB71E4();
    v131 = v130;
    v132 = v248;
    v133 = sub_1DAC2E880(v131, v129);
    v248 = v132;

    if (!v133)
    {
      goto LABEL_70;
    }

    v134 = 0;
    v135 = v262;
LABEL_71:
    (*v225)(v234, v247);
    v136 = v242;
    v137 = v246;
    v138 = &v246[*(v242 + 20)];
    *v138 = v120;
    v138[8] = v66;
    v139 = &v137[v136[6]];
    *v139 = v210;
    v139[8] = v209;
    v140 = &v137[v136[7]];
    *v140 = v208;
    v67 = v136;
    v140[8] = v207;
    v92 = v137;
    v141 = &v137[v136[8]];
    *v141 = v127;
    v141[8] = v57;
    v142 = &v137[v136[9]];
    *v142 = v135;
    v142[8] = v134;
    (*v237)(v137, 0, 1, v136);

    v61 = v244;
    v57 = v245;
LABEL_27:
    v93 = v249;

    if ((*v236)(v92, 1, v67) == 1)
    {
      sub_1DAA89E50(v92, qword_1EE120438, type metadata accessor for Chart.Entry);
      v66 = v247;
      v65 = v250;
    }

    else
    {
      v94 = v233;
      sub_1DAC4E5F8(v92, v233, type metadata accessor for Chart.Entry);
      sub_1DAC4E5F8(v94, v240, type metadata accessor for Chart.Entry);
      v65 = v250;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v247;
      if ((v95 & 1) == 0)
      {
        v65 = sub_1DAADC780(0, v65[2] + 1, 1, v65);
      }

      v97 = v65[2];
      v96 = v65[3];
      if (v97 >= v96 >> 1)
      {
        v65 = sub_1DAADC780(v96 > 1, v97 + 1, 1, v65);
      }

      v65[2] = v97 + 1;
      sub_1DAC4E5F8(v240, v65 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v97, type metadata accessor for Chart.Entry);
      v93 = v249;
    }

    ++v63;
    v64 += 3;
    if (v239 == v63)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  swift_once();
LABEL_89:
  v164 = sub_1DACB8C94();
  __swift_project_value_buffer(v164, qword_1EE13E2B8);
  sub_1DACB71E4();
  v165 = sub_1DACB8C74();
  v166 = sub_1DACB9904();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v262 = v168;
    *v167 = 136446210;
    v169 = sub_1DAA7ABE4(v232, v57, &v262);

    *(v167 + 4) = v169;
    _os_log_impl(&dword_1DAA3F000, v165, v166, "failed to create chart time zone in %{public}s", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v168);
    MEMORY[0x1E1278C00](v168, -1, -1);
    MEMORY[0x1E1278C00](v167, -1, -1);
  }

  else
  {
  }

  sub_1DAA85464(v66, sub_1DAA49610);
}

void sub_1DAC4E5A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAC4E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DAC4E6C8()
{
  type metadata accessor for ForYouConfigRecord.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_1DAA61680(319, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC4E7C8()
{
  result = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAC4E85C()
{
  sub_1DAC4E944(319, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DACB7CC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAC4E944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAC4E9BC()
{
  sub_1DAC4E944(319, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DAA61680(319, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC4EAA8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4EBA8()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC4EC94()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4ED90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC524A0();
  *a2 = result;
  return result;
}

void sub_1DAC4EDC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E64726F6365725FLL;
  v5 = 0xD000000000000014;
  v6 = 0x80000001DACE2AB0;
  v7 = 0x80000001DACE2AD0;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001DACE2AF0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x72756769666E6F63;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DAC4EE7C()
{
  v1 = *v0;
  v2 = 0x4E64726F6365725FLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72756769666E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAC4EF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC524A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC4EF5C(uint64_t a1)
{
  v2 = sub_1DAC51BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC4EF98(uint64_t a1)
{
  v2 = sub_1DAC51BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4EFD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7504();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB9364();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC51FD8(0, &qword_1EE11CFA0, sub_1DAC51BDC, &type metadata for ForYouConfigRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v66 = *(v11 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = type metadata accessor for ForYouConfigRecord(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51BDC();
  v67 = v15;
  v21 = v68;
  sub_1DACBA2F4();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v66;
  v68 = a1;
  v24 = v19;
  v71 = 0;
  sub_1DACB9F84();
  v25 = v12;
  v26 = v69;
  v27 = v70;
  if (!v70)
  {
    v26 = 0x676E697373696DLL;
    v27 = 0xE700000000000000;
  }

  *v24 = v26;
  v24[1] = v27;
  v56 = v27;
  v71 = 2;
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA9642C(&qword_1EE123E88);
  sub_1DACB9F84();
  v28 = v23;
  v29 = v25;
  if (v69)
  {
    v30 = v69;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  *(v24 + v16[6]) = v30;
  v71 = 3;
  v55 = 0;
  sub_1DACB9F84();
  v31 = v69;
  v32 = v70;
  if (!v70)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = (v24 + v16[7]);
  *v33 = v31;
  v33[1] = v32;
  v71 = 4;
  sub_1DACB71E4();
  sub_1DACB9F84();
  v54 = v29;
  v34 = v69;
  if (v69)
  {
  }

  else
  {
    v34 = v30;
  }

  v35 = MEMORY[0x1E69E7CC0];
  *(v24 + v16[8]) = v34;
  LOBYTE(v69) = 1;
  v36 = v67;
  v37 = sub_1DACB9F34();
  v39 = v36;
  if (!v38)
  {
    goto LABEL_20;
  }

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

LABEL_20:
    v50 = (v24 + v16[5]);
    v51 = v50 + *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
    sub_1DACB7CB4();
    (*(v28 + 8))(v39, v54);
    *v50 = v35;
    v52 = v65;
    goto LABEL_21;
  }

  v41 = v57;
  sub_1DACB9354();
  v53 = sub_1DACB9334();
  v42 = v41;
  v44 = v43;
  result = (*(v58 + 8))(v42, v59);
  if (v44 >> 60 != 15)
  {

    v45 = sub_1DACB7554();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_1DACB7544();
    (*(v61 + 104))(v60, *MEMORY[0x1E6967F30], v62);
    sub_1DACB7514();
    sub_1DAC51C30(&qword_1EE11E840, type metadata accessor for ForYouConfigRecord.Configuration);
    v48 = v64;
    sub_1DACB7524();
    v49 = v65;
    (*(v28 + 8))(v67, v54);

    sub_1DAB4D534(v53, v44);
    sub_1DAC51CCC(v48, v24 + v16[5], type metadata accessor for ForYouConfigRecord.Configuration);
    v52 = v49;
LABEL_21:
    sub_1DAC51DF8(v24, v52, type metadata accessor for ForYouConfigRecord);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return sub_1DAC51F78(v24, type metadata accessor for ForYouConfigRecord);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC4F80C(void *a1)
{
  v2 = v1;
  v4 = sub_1DACB9364();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7564();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC51FD8(0, &qword_1ECBE9560, sub_1DAC51BDC, &type metadata for ForYouConfigRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v34 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51BDC();
  sub_1DACBA304();
  v18 = *v2;
  v19 = v2[1];
  LOBYTE(v39) = 0;
  v20 = v37;
  sub_1DACBA094();
  if (v20)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v37 = v10;
  v21 = type metadata accessor for ForYouConfigRecord(0);
  v39 = *(v2 + v21[6]);
  v38 = 2;
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA9642C(&qword_1EE123E98);
  sub_1DACBA0E4();
  v22 = (v2 + v21[7]);
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v39) = 3;
  sub_1DACBA094();
  v39 = *(v2 + v21[8]);
  v38 = 4;
  sub_1DACBA0E4();
  v26 = sub_1DACB75A4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1DACB7594();
  (*(v35 + 104))(v37, *MEMORY[0x1E6967FC8], v36);
  sub_1DACB7574();
  v29 = v21[5];
  type metadata accessor for ForYouConfigRecord.Configuration(0);
  sub_1DAC51C30(&qword_1ECBE9568, type metadata accessor for ForYouConfigRecord.Configuration);
  v30 = sub_1DACB7584();
  v32 = v31;
  sub_1DACB9354();
  result = sub_1DACB9344();
  if (v33)
  {
    LOBYTE(v39) = 1;
    sub_1DACBA094();
    (*(v13 + 8))(v16, v12);
    sub_1DAA563C0(v30, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC4FCAC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4FD20()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4FD74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DAC4FE04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAC4FE5C(uint64_t a1)
{
  v2 = sub_1DAC51C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC4FE98(uint64_t a1)
{
  v2 = sub_1DAC51C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4FED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1DAC4E944(0, &qword_1EE11E848, type metadata accessor for ForYouConfigRecord.Configuration.TopStories, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v31 - v5;
  v38 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v33 = *(v38 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  sub_1DAC51FD8(0, &qword_1EE11CF98, sub_1DAC51C78, &type metadata for ForYouConfigRecord.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51C78();
  v21 = v39;
  sub_1DACBA2F4();
  if (!v21)
  {
    v22 = v35;
    v32 = v19;
    v39 = v11;
    v23 = v38;
    v24 = v9 + *(v38 + 20);
    sub_1DACB7CB4();
    *v9 = MEMORY[0x1E69E7CC0];
    sub_1DAC51C30(&qword_1EE11E850, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    v25 = v36;
    v26 = v37;
    sub_1DACB9F84();
    (*(v22 + 8))(v15, v25);
    if ((*(v33 + 48))(v26, 1, v23) == 1)
    {
      sub_1DAC51D88(v26, &qword_1EE11E848, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
      v26 = v9;
    }

    else
    {
      sub_1DAC51F78(v9, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    }

    v27 = v34;
    v28 = v39;
    v29 = v32;
    sub_1DAC51CCC(v26, v39, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    sub_1DAC51CCC(v28, v29, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    sub_1DAC51CCC(v29, v27, type metadata accessor for ForYouConfigRecord.Configuration);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC50314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x446873696C627570;
  }

  if (v3)
  {
    v5 = 0xEB00000000657461;
  }

  else
  {
    v5 = 0x80000001DACE2B20;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x446873696C627570;
  }

  if (*a2)
  {
    v7 = 0x80000001DACE2B20;
  }

  else
  {
    v7 = 0xEB00000000657461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAC503C8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC50458()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC504D4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC50560@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

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

void sub_1DAC505C0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DACE2B20;
  v3 = 0x446873696C627570;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB00000000657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DAC5060C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x446873696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC50654@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAC506B8(uint64_t a1)
{
  v2 = sub_1DAC51D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC506F4(uint64_t a1)
{
  v2 = sub_1DAC51D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC50730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v38 - v5;
  v6 = sub_1DACB7CC4();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  sub_1DAC51FD8(0, &qword_1EE11CF90, sub_1DAC51D34, &type metadata for ForYouConfigRecord.Configuration.TopStories.CodingKeys, MEMORY[0x1E69E6F48]);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51D34();
  v49 = v15;
  v21 = v50;
  sub_1DACBA2F4();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v16;
  v40 = v11;
  v41 = v19;
  v22 = v43;
  v23 = v44;
  v50 = a1;
  v25 = v45;
  v24 = v46;
  v53 = 1;
  sub_1DAC4E944(0, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
  sub_1DAC51E60(&qword_1EE11D168, &qword_1EE11E858);
  v26 = v48;
  sub_1DACB9F84();
  v28 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    v28 = v51;
  }

  v38 = v28;
  *v41 = v28;
  v29 = v22;
  sub_1DACB7CB4();
  v52 = 0;
  sub_1DAC51C30(&qword_1EE123A38, MEMORY[0x1E6969530]);
  v30 = v25;
  sub_1DACB9F84();
  (*(v47 + 8))(v49, v26);
  v31 = v23;
  v32 = (*(v23 + 48))(v24, 1, v25);
  v33 = v50;
  if (v32 == 1)
  {
    sub_1DAC51D88(v24, &qword_1EE125280, MEMORY[0x1E6969530]);
    v24 = v29;
  }

  else
  {
    (*(v23 + 8))(v29, v25);
  }

  v35 = v41;
  v34 = v42;
  v36 = v40;
  v37 = *(v31 + 32);
  v37(v40, v24, v30);
  v37((v35 + *(v39 + 20)), v36, v30);
  sub_1DAC51DF8(v35, v34, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1DAC51F78(v35, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
}

uint64_t sub_1DAC50CB4(void *a1)
{
  v3 = v1;
  sub_1DAC51FD8(0, &qword_1ECBE9598, sub_1DAC51F24, &type metadata for ForYouConfigRecord.Configuration.TopStories.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51F24();
  sub_1DACBA304();
  v12 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  v13 = *(v12 + 20);
  v23 = 0;
  sub_1DACB7CC4();
  sub_1DAC51C30(&qword_1EE125288, MEMORY[0x1E6969530]);
  sub_1DACBA074();
  if (!v2)
  {
    v14 = (v3 + *(v12 + 24));
    v15 = *v14;
    v16 = v14[1];
    v22 = 1;
    sub_1DACBA024();
    v17 = *v3;
    v18 = v3[1];
    v21 = 2;
    sub_1DACBA094();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC50EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v28 - v6;
  sub_1DAC51FD8(0, &qword_1EE11CF88, sub_1DAC51F24, &type metadata for ForYouConfigRecord.Configuration.TopStories.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51F24();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v11;
  v16 = v31;
  v17 = v14;
  sub_1DACB7CC4();
  v36 = 0;
  sub_1DAC51C30(&qword_1EE123A38, MEMORY[0x1E6969530]);
  v19 = v32;
  v18 = v33;
  sub_1DACB9F84();
  v20 = v29;
  sub_1DABD4334(v19, v17 + *(v29 + 20));
  v35 = 1;
  v21 = sub_1DACB9F34();
  v22 = (v17 + *(v20 + 24));
  *v22 = v21;
  v22[1] = v23;
  v34 = 2;
  v24 = sub_1DACB9FA4();
  v26 = v25;
  (*(v16 + 8))(v10, v18);
  *v17 = v24;
  v17[1] = v26;
  sub_1DAC51DF8(v17, v30, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAC51F78(v17, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
}

uint64_t sub_1DAC512BC(void *a1)
{
  v3 = v1;
  sub_1DAC51FD8(0, &qword_1ECBE9580, sub_1DAC51D34, &type metadata for ForYouConfigRecord.Configuration.TopStories.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51D34();
  sub_1DACBA304();
  v12 = *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
  v16 = 0;
  sub_1DACB7CC4();
  sub_1DAC51C30(&qword_1EE125288, MEMORY[0x1E6969530]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v14[1] = *v3;
    v15 = 1;
    sub_1DAC4E944(0, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC51E60(&qword_1ECBE9588, &qword_1ECBE9590);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC51530(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70795479726F7473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 25705;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4479616C70736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000657461;
  }

  v7 = 0x70795479726F7473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4479616C70736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000657461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC51628()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC516CC()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC5175C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC517FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC524EC();
  *a2 = result;
  return result;
}

void sub_1DAC5182C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657461;
  v4 = 0xE900000000000065;
  v5 = 0x70795479726F7473;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC5188C()
{
  v1 = 0x70795479726F7473;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4479616C70736964;
  }
}

uint64_t sub_1DAC518E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC524EC();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC51910(uint64_t a1)
{
  v2 = sub_1DAC51F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC5194C(uint64_t a1)
{
  v2 = sub_1DAC51F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC51A00(void *a1)
{
  sub_1DAC51FD8(0, &qword_1ECBE9570, sub_1DAC51C78, &type metadata for ForYouConfigRecord.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51C78();
  sub_1DACBA304();
  type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  sub_1DAC51C30(&qword_1ECBE9578, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
  sub_1DACBA0E4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DAC51BDC()
{
  result = qword_1EE11E8B8;
  if (!qword_1EE11E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8B8);
  }

  return result;
}

uint64_t sub_1DAC51C30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAC51C78()
{
  result = qword_1EE11E8A0;
  if (!qword_1EE11E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8A0);
  }

  return result;
}

uint64_t sub_1DAC51CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAC51D34()
{
  result = qword_1EE11E888;
  if (!qword_1EE11E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E888);
  }

  return result;
}

uint64_t sub_1DAC51D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC4E944(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAC51DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC51E60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC4E944(255, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC51C30(a2, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC51F24()
{
  result = qword_1EE11E870;
  if (!qword_1EE11E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E870);
  }

  return result;
}

uint64_t sub_1DAC51F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAC51FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC52084()
{
  result = qword_1ECBE95A0;
  if (!qword_1ECBE95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95A0);
  }

  return result;
}

unint64_t sub_1DAC520DC()
{
  result = qword_1ECBE95A8;
  if (!qword_1ECBE95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95A8);
  }

  return result;
}

unint64_t sub_1DAC52134()
{
  result = qword_1ECBE95B0;
  if (!qword_1ECBE95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95B0);
  }

  return result;
}

unint64_t sub_1DAC5218C()
{
  result = qword_1ECBE95B8;
  if (!qword_1ECBE95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95B8);
  }

  return result;
}

unint64_t sub_1DAC521E4()
{
  result = qword_1EE11E860;
  if (!qword_1EE11E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E860);
  }

  return result;
}

unint64_t sub_1DAC5223C()
{
  result = qword_1EE11E868;
  if (!qword_1EE11E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E868);
  }

  return result;
}

unint64_t sub_1DAC52294()
{
  result = qword_1EE11E878;
  if (!qword_1EE11E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E878);
  }

  return result;
}

unint64_t sub_1DAC522EC()
{
  result = qword_1EE11E880;
  if (!qword_1EE11E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E880);
  }

  return result;
}

unint64_t sub_1DAC52344()
{
  result = qword_1EE11E890;
  if (!qword_1EE11E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E890);
  }

  return result;
}

unint64_t sub_1DAC5239C()
{
  result = qword_1EE11E898;
  if (!qword_1EE11E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E898);
  }

  return result;
}

unint64_t sub_1DAC523F4()
{
  result = qword_1EE11E8A8;
  if (!qword_1EE11E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8A8);
  }

  return result;
}

unint64_t sub_1DAC5244C()
{
  result = qword_1EE11E8B0;
  if (!qword_1EE11E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8B0);
  }

  return result;
}

uint64_t sub_1DAC524A0()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC524EC()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC52558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "s";
  }

  else
  {
    v5 = "defaultScoringConfig";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (*a2)
  {
    v8 = "defaultScoringConfig";
  }

  else
  {
    v8 = "s";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DACBA174();
  }

  return v10 & 1;
}

uint64_t sub_1DAC52604()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC52684()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC526F0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC5276C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

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

void sub_1DAC527CC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "defaultScoringConfig";
  }

  else
  {
    v3 = "s";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1DAC5280C()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC52848@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAC528AC(uint64_t a1)
{
  v2 = sub_1DAA55C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC528E8(uint64_t a1)
{
  v2 = sub_1DAA55C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC52924@<X0>(void *__src@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(v6, __src, 0x46BuLL);
  memcpy(&v6[1136], a2, 0x46BuLL);
  return memcpy(a3, v6, 0x8DBuLL);
}

uint64_t sub_1DAC5298C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v14 = v3;
  sub_1DAA55BB4(0, &qword_1EE123C68, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15[-v8 - 8];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAA55C18();
  sub_1DACBA2F4();
  if (!v1)
  {
    v11 = v6;
    v12 = v14;
    v18[1159] = 0;
    sub_1DAC52BF4();
    sub_1DACB9F84();
    memcpy(v17, v18, sizeof(v17));
    v18[1158] = 1;
    sub_1DACB9F84();
    (*(v11 + 8))(v9, v5);
    memcpy(&v15[1136], v16, 0x46BuLL);
    memcpy(v15, v17, 0x46BuLL);
    memcpy(v12, v15, 0x8DBuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1DAC52BF4()
{
  result = qword_1EE124FB0;
  if (!qword_1EE124FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FB0);
  }

  return result;
}

uint64_t sub_1DAC52C4C()
{
  memcpy(__dst, v0, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v3, v0, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)();
  }

  memcpy(v3, (v0 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v3) == 1)
  {
    return sub_1DACBA2A4();
  }

  memcpy(v2, (v0 + 1136), sizeof(v2));
  sub_1DACBA2A4();
  return ScoringConfig.hash(into:)();
}

uint64_t sub_1DAC52D30()
{
  sub_1DACBA284();
  memcpy(__dst, v0, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v3, v0, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)();
  }

  memcpy(v3, (v0 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v3) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v2, (v0 + 1136), sizeof(v2));
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)();
  }

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC52E48()
{
  sub_1DACBA284();
  memcpy(__dst, v0, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v3, v0, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)();
  }

  memcpy(v3, (v0 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v3) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v2, (v0 + 1136), sizeof(v2));
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)();
  }

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC52F3C()
{
  result = qword_1ECBE95C0;
  if (!qword_1ECBE95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95C0);
  }

  return result;
}

uint64_t sub_1DAC52F90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2267))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC52FB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *(result + 2266) = 0;
    *(result + 2264) = 0;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 2267) = v3;
  return result;
}

unint64_t sub_1DAC5325C()
{
  result = qword_1ECBE95C8;
  if (!qword_1ECBE95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95C8);
  }

  return result;
}

id sub_1DAC532B0()
{
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_userDefaults);
  qword_1EE11F900 = v0;

  return v0;
}

uint64_t (*sub_1DAC5336C())()
{
  if (qword_1EE11F8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_1DAC5343C())()
{
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_1DAC534E8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_1DAC53574(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*sub_1DAC535DC())()
{
  if (qword_1EE11F8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1DAC53664()
{
  v0 = objc_opt_self();
  v1 = sub_1DACB92F4();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EE13E478 = v2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DAC5370C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1DAC53754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC537D4()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC53920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC544D0();
  *a2 = result;
  return result;
}

void sub_1DAC53950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C6F626D7973;
  v5 = 0xEC00000064657461;
  v6 = 0x6365727065447369;
  if (v2 != 5)
  {
    v6 = 0x6D6563616C706572;
    v5 = 0xED00004449746E65;
  }

  v7 = 0xED00006C6F626D79;
  v8 = 0x5379616C70736964;
  if (v2 != 3)
  {
    v8 = 0x746E456B636F7473;
    v7 = 0xED00004449797469;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001DACE2B90;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x4E79616C70736964;
    v9 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1DAC53A64()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x6365727065447369;
  if (v1 != 5)
  {
    v3 = 0x6D6563616C706572;
  }

  v4 = 0x5379616C70736964;
  if (v1 != 3)
  {
    v4 = 0x746E456B636F7473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAC53B74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC544D0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC53B9C(uint64_t a1)
{
  v2 = sub_1DAC54CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC53BD8(uint64_t a1)
{
  v2 = sub_1DAC54CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC53C14(void *a1)
{
  v2 = v1;
  v4 = sub_1DACB9364();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1DAC54FE0(0, &qword_1ECBE95D0, sub_1DAC54CAC, &type metadata for StockRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54CAC();
  sub_1DACBA304();
  v13 = *v2;
  v14 = v2[1];
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_1DACBA094();
  if (v15)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v26 = v8;
  v27 = *(v2 + 2);
  v29 = 2;
  sub_1DAAA12F0(0, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
  sub_1DAC54D54();
  sub_1DACBA0E4();
  v17 = v7;
  v27 = MEMORY[0x30];
  v29 = 3;
  sub_1DACBA0E4();
  v27 = MEMORY[0x40];
  v29 = 4;
  sub_1DACBA0E4();
  LOBYTE(v27) = 5;
  sub_1DACBA0A4();
  v27 = MEMORY[0x58];
  v29 = 6;
  sub_1DACBA0E4();
  v18 = sub_1DACB75A4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1DACB7594();
  v27 = MEMORY[0x10];
  v28 = MEMORY[0x10];
  sub_1DAC54DE0();
  sub_1DACB71E4();
  v21 = sub_1DACB7584();
  v23 = v22;
  sub_1DAC54E34(&v28);

  sub_1DACB9354();
  result = sub_1DACB9344();
  if (v24)
  {
    LOBYTE(v27) = 1;
    sub_1DACBA094();
    (*(v26 + 8))(v11, v17);
    sub_1DAA563C0(v21, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC54044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444964656566 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC540C8(uint64_t a1)
{
  v2 = sub_1DAC54F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC54104(uint64_t a1)
{
  v2 = sub_1DAC54F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC54140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  sub_1DAC54FE0(0, &qword_1EE11F668, sub_1DAC54F8C, &type metadata for StockRecord.FeedConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54F8C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v17;
  v12 = sub_1DACB9FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_1DAC542F0(void *a1)
{
  sub_1DAC54FE0(0, &qword_1ECBE95E8, sub_1DAC54F8C, &type metadata for StockRecord.FeedConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54F8C();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v5 + 8))(v8, v4);
}

__n128 sub_1DAC54458@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC5451C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1DAC544D0()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC5451C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1DACB9364();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC54FE0(0, &qword_1EE11F670, sub_1DAC54CAC, &type metadata for StockRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v63 = *(v7 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54CAC();
  v13 = v78;
  sub_1DACBA2F4();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v78 = v6;
  v14 = v3;
  v15 = v63;
  LOBYTE(v71[0]) = 0;
  v58 = sub_1DACB9FA4();
  v60 = v17;
  LOBYTE(v71[0]) = 2;
  v18 = sub_1DACB9F34();
  v59 = v19;
  v20 = v8;
  v21 = v15;
  v22 = v18;
  LOBYTE(v71[0]) = 3;
  v23 = sub_1DACB9F34();
  v57 = v24;
  LOBYTE(v71[0]) = 4;
  v53 = sub_1DACB9F34();
  v56 = v25;
  LOBYTE(v71[0]) = 6;
  v50 = sub_1DACB9F34();
  v49 = v23;
  v27 = v26;
  LOBYTE(v71[0]) = 5;
  v55 = v20;
  v54 = v11;
  v28 = sub_1DACB9F64();
  v52 = a1;
  if (v29)
  {
    LOBYTE(v71[0]) = 5;
    v30 = sub_1DACB9F44() & 1;
  }

  else
  {
    v30 = v28 != 0;
  }

  v51 = v30;
  LOBYTE(v71[0]) = 1;
  sub_1DACB9FA4();
  v31 = v78;
  sub_1DACB9354();
  v48 = sub_1DACB9334();
  v33 = v32;
  result = (*(v62 + 8))(v31, v14);
  if (v33 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v34 = sub_1DACB7554();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_1DACB7544();
    sub_1DAC54D00();
    v37 = v48;
    sub_1DACB7524();
    (*(v21 + 8))(v54, v55);

    sub_1DAB4D534(v37, v33);
    v78 = *(&v76 + 1);
    v63 = v76;
    v38 = v58;
    *&v64 = v58;
    v39 = v60;
    *(&v64 + 1) = v60;
    v65 = v76;
    *&v66 = v22;
    *(&v66 + 1) = v59;
    v40 = v49;
    *&v67 = v49;
    v41 = v57;
    *(&v67 + 1) = v57;
    v42 = v53;
    v43 = v56;
    *&v68 = v53;
    *(&v68 + 1) = v56;
    LOBYTE(v69) = v51;
    *(&v69 + 1) = *v77;
    DWORD1(v69) = *&v77[3];
    *(&v69 + 1) = v50;
    v70 = v27;
    sub_1DAB69868(&v64, v71);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v71[0] = v38;
    v71[1] = v39;
    v71[2] = v63;
    v71[3] = v78;
    v71[4] = v22;
    v71[5] = v59;
    v71[6] = v40;
    v71[7] = v41;
    v71[8] = v42;
    v71[9] = v43;
    v72 = v51;
    *v73 = *v77;
    *&v73[3] = *&v77[3];
    v74 = v50;
    v75 = v27;
    result = sub_1DABAF400(v71);
    v44 = v69;
    v45 = v61;
    *(v61 + 64) = v68;
    *(v45 + 80) = v44;
    *(v45 + 96) = v70;
    v46 = v65;
    *v45 = v64;
    *(v45 + 16) = v46;
    v47 = v67;
    *(v45 + 32) = v66;
    *(v45 + 48) = v47;
  }

  return result;
}

unint64_t sub_1DAC54CAC()
{
  result = qword_1EE123790;
  if (!qword_1EE123790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123790);
  }

  return result;
}

unint64_t sub_1DAC54D00()
{
  result = qword_1EE123760;
  if (!qword_1EE123760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123760);
  }

  return result;
}

unint64_t sub_1DAC54D54()
{
  result = qword_1ECBE8330;
  if (!qword_1ECBE8330)
  {
    sub_1DAAA12F0(255, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8330);
  }

  return result;
}

unint64_t sub_1DAC54DE0()
{
  result = qword_1ECBE95D8;
  if (!qword_1ECBE95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95D8);
  }

  return result;
}

unint64_t sub_1DAC54E88()
{
  result = qword_1ECBE95E0;
  if (!qword_1ECBE95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95E0);
  }

  return result;
}

unint64_t sub_1DAC54EE0()
{
  result = qword_1EE123780;
  if (!qword_1EE123780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123780);
  }

  return result;
}

unint64_t sub_1DAC54F38()
{
  result = qword_1EE123788;
  if (!qword_1EE123788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123788);
  }

  return result;
}

unint64_t sub_1DAC54F8C()
{
  result = qword_1EE123778;
  if (!qword_1EE123778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123778);
  }

  return result;
}

void sub_1DAC54FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC5505C()
{
  result = qword_1ECBE95F0;
  if (!qword_1ECBE95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95F0);
  }

  return result;
}

unint64_t sub_1DAC550B4()
{
  result = qword_1EE123768;
  if (!qword_1EE123768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123768);
  }

  return result;
}

unint64_t sub_1DAC5510C()
{
  result = qword_1EE123770;
  if (!qword_1EE123770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123770);
  }

  return result;
}

uint64_t type metadata accessor for SDSSearchOperation()
{
  result = qword_1ECBE9610;
  if (!qword_1ECBE9610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC551AC()
{
  result = sub_1DACB8204();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAC55258(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1DAC55298(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE9600), *(v2 + qword_1ECBE9600 + 24));
  sub_1DAC55EC8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x7972657571;
  *(inited + 40) = 0xE500000000000000;
  v11 = *(v2 + qword_1ECBE95F8 + 8);
  *(inited + 48) = *(v2 + qword_1ECBE95F8);
  *(inited + 56) = v11;
  sub_1DACB71E4();
  v12 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAC56074(inited + 32, sub_1DAA4BD7C);
  v13 = qword_1ECBE9608;
  v14 = *v9;
  sub_1DACB7CB4();
  v15 = sub_1DABF426C(3, v12, v8, (v2 + v13));

  (*(v5 + 8))(v8, v4);
  v16 = (v15 + *((*MEMORY[0x1E69E7D40] & *v15) + qword_1EE13E480 + 16));
  v17 = *v16;
  v18 = v16[1];
  *v16 = sub_1DAC55538;
  v16[1] = 0;
  sub_1DAA4F910(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = a2;
  v20 = v15;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v20 start];
}

uint64_t sub_1DAC55584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAC55E6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  sub_1DAC55F2C(a2, v23 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC560F4(v13);
    sub_1DAA8C2EC();
    v15 = *(v14 + 48);
    v16 = sub_1DACB8754();
    (*(*(v16 - 8) + 16))(a3, a1, v16);
    v17 = 0;
  }

  else
  {
    sub_1DAC55FC0(v13, v9);
    sub_1DAA8C2EC();
    v15 = *(v18 + 48);
    v19 = sub_1DACB8754();
    (*(*(v19 - 8) + 16))(a3, a1, v19);
    sub_1DAC56024();
    sub_1DACB8794();
    v17 = *(v23[1] + 16);

    sub_1DAC56074(v9, sub_1DAC55E6C);
  }

  v20 = (a3 + v15);
  *v20 = 1;
  v20[1] = v17;
  v21 = MEMORY[0x1E69E7CC0];
  v20[2] = MEMORY[0x1E69E7CC0];
  v20[3] = v21;
  type metadata accessor for NetworkEvent();
  v20[4] = 0;
  v20[5] = 0;
  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC557C8(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  sub_1DAC55E6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v49 - v12);
  sub_1DAC55F2C(a1, &v49 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = v14;
    a2(v14, 1);

    return;
  }

  sub_1DAC55FC0(v13, v9);
  sub_1DAC56024();
  sub_1DACB8794();
  v16 = v64;
  v17 = *(v64 + 16);
  if (v17)
  {
    v50 = v9;
    v51 = a3;
    v52 = a2;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1DAA57914(0, v17, 0);
    v18 = 0;
    v58 = v66;
    v62 = v17 - 1;
    v53 = v16;
    while (1)
    {
      v54 = v18;
      v19 = v16 + v18;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      v22 = *(v19 + 56);
      v60 = *(v19 + 48);
      v61 = v20;
      v24 = *(v19 + 64);
      v23 = *(v19 + 72);
      v25 = *(v19 + 80);
      v26 = *(v19 + 88);
      v28 = *(v19 + 96);
      v27 = *(v19 + 104);
      v59 = *(v19 + 112);
      v64 = v20;
      v65 = v21;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v63 = v22;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E1276F20](58, 0xE100000000000000);
      MEMORY[0x1E1276F20](v24, v23);
      v56 = v65;
      v57 = v64;
      v29 = qword_1EE122610;
      sub_1DACB71E4();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = qword_1EE13E388;
      if (*(qword_1EE13E388 + 16))
      {
        v31 = sub_1DAA4BF3C(v24, v23);
        if (v32)
        {
          break;
        }
      }

      v36 = v23;
      v35 = v24;
      if (!v27)
      {
        goto LABEL_12;
      }

      v55 = v28;
      v36 = v27;
LABEL_13:
      v37 = qword_1EE13E390;
      if (*(qword_1EE13E390 + 16) && (v38 = sub_1DAA4BF3C(v24, v23), (v39 & 1) != 0))
      {
        v40 = v38;

        v41 = (*(v37 + 56) + 16 * v40);
        v25 = *v41;
        v42 = v41[1];
        sub_1DACB71E4();
      }

      else
      {

        if (v26)
        {
          v42 = v26;
        }

        else
        {
          v25 = v24;
          v42 = v23;
        }
      }

      v43 = v58;
      v66 = v58;
      v45 = v58[2];
      v44 = v58[3];
      if (v45 >= v44 >> 1)
      {
        sub_1DAA57914((v44 > 1), v45 + 1, 1);
        v43 = v66;
      }

      v43[2] = v45 + 1;
      v46 = &v43[17 * v45];
      v47 = v56;
      v46[4] = v57;
      v46[5] = v47;
      v46[6] = v24;
      v46[7] = v23;
      v48 = v63;
      v46[8] = v60;
      v46[9] = v48;
      v46[10] = v61;
      v46[11] = v21;
      *(v46 + 96) = v59;
      LODWORD(v48) = *(&v64 + 3);
      *(v46 + 97) = v64;
      *(v46 + 25) = v48;
      v46[13] = v55;
      v46[14] = v36;
      v46[15] = v25;
      v46[16] = v42;
      *(v46 + 19) = 0u;
      *(v46 + 17) = 0u;
      v16 = v53;
      if (!v62)
      {

        v9 = v50;
        v52(v43, 0);
        goto LABEL_25;
      }

      v58 = v43;
      --v62;
      v18 = v54 + 88;
    }

    v33 = v31;

    v34 = (*(v30 + 56) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
LABEL_12:
    v55 = v35;
    sub_1DACB71E4();
    goto LABEL_13;
  }

  a2(MEMORY[0x1E69E7CC0], 0);
LABEL_25:

  sub_1DAC56074(v9, sub_1DAC55E6C);
}

uint64_t sub_1DAC55CC0()
{
  v1 = *(v0 + qword_1ECBE95F8 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE9600));
  v2 = qword_1ECBE9608;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t sub_1DAC55D4C(uint64_t a1)
{
  v2 = *(a1 + qword_1ECBE95F8 + 8);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE9600));
  v3 = qword_1ECBE9608;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_1DAC55DDC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC55298(sub_1DAADF554, v4);
}

void sub_1DAC55E6C()
{
  if (!qword_1ECBE9620)
  {
    sub_1DABF475C();
    v0 = type metadata accessor for SDSBaseOperationResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9620);
    }
  }
}

void sub_1DAC55EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC55F2C(uint64_t a1, uint64_t a2)
{
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC55FC0(uint64_t a1, uint64_t a2)
{
  sub_1DAC55E6C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAC56024()
{
  if (!qword_1ECBE9630)
  {
    v0 = sub_1DACB87B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9630);
    }
  }
}

uint64_t sub_1DAC56074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC560F4(uint64_t a1)
{
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SymbolQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28);
  sub_1DACB6D94();
  sub_1DACB6D84();
  *a1 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10);
  sub_1DACB6D84();
  a1[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  a1[2] = result;
  return result;
}

uint64_t sub_1DAC562A0()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE9638);
  __swift_project_value_buffer(v9, qword_1ECBE9638);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAC56480()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE9650);
  __swift_project_value_buffer(v9, qword_1ECBE9650);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t SymbolQuery.entities(for:)(uint64_t a1)
{
  v2[45] = a1;
  v3 = *(type metadata accessor for SymbolEntity() - 8);
  v2[46] = v3;
  v4 = *(v3 + 64) + 15;
  v2[47] = swift_task_alloc();
  v5 = sub_1DACB8204();
  v2[48] = v5;
  v6 = *(v5 - 8);
  v2[49] = v6;
  v7 = *(v6 + 64) + 15;
  v2[50] = swift_task_alloc();
  v8 = sub_1DACB7CC4();
  v2[51] = v8;
  v9 = *(v8 - 8);
  v2[52] = v9;
  v10 = *(v9 + 64) + 15;
  v2[53] = swift_task_alloc();
  v11 = sub_1DACB8344();
  v2[54] = v11;
  v12 = *(v11 - 8);
  v2[55] = v12;
  v13 = *(v12 + 64) + 15;
  v2[56] = swift_task_alloc();
  v14 = sub_1DACB81B4();
  v2[57] = v14;
  v15 = *(v14 - 8);
  v2[58] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = *(v1 + 8);
  v2[59] = v17;
  v2[60] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1DAC5688C, 0, 0);
}

uint64_t sub_1DAC5688C()
{
  v31 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v0[44] = v5;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching stocks for symbol query with identifiers=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[60];
  v12 = v0[57];
  v13 = v0[58];
  v23 = v0[56];
  v14 = v0[53];
  v28 = v0[54];
  v29 = v0[59];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[55];
  v15 = v0[49];
  v16 = v0[50];
  v17 = v0[48];
  v24 = v0[45];
  sub_1DACB6D24();
  v19 = v0[39];
  v18 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v19);
  (*(v13 + 104))(v29, *MEMORY[0x1E69D63C8], v12);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v15 + 104))(v16, *MEMORY[0x1E69D6490], v17);
  v0[62] = (*(v18 + 8))(v24, v29, v23, v14, v16, v19, v18);
  (*(v15 + 8))(v16, v17);
  (*(v25 + 8))(v14, v26);
  (*(v27 + 8))(v23, v28);
  (*(v13 + 8))(v29, v12);
  v20 = *(MEMORY[0x1E69D6B08] + 4);
  v21 = swift_task_alloc();
  v0[63] = v21;
  *v21 = v0;
  v21[1] = sub_1DAC56C04;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAC56C04()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1DAC5711C;
  }

  else
  {
    v5 = *(v2 + 496);

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v4 = sub_1DAC56D28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC56D28()
{
  v52 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB98E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 512);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v50[0] = v49;
    *v8 = 136315394;
    *(v0 + 336) = v7;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v9 = sub_1DACB9214();
    v11 = sub_1DAA7ABE4(v9, v10, v50);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_1DACB71E4();
    v13 = sub_1DAB1C3A0(v12);

    *(v0 + 344) = v13;
    v14 = sub_1DACB9214();
    v16 = v15;

    v17 = sub_1DAA7ABE4(v14, v16, v50);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v49, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v18 = *(v0 + 360);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v0 + 368);
    v21 = (v18 + 40);
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v3 + 16))
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        sub_1DACB71E4();
        v25 = sub_1DAA4BF3C(v23, v24);
        if (v26)
        {
          v27 = *(v0 + 376);
          v28 = *(v3 + 56) + 136 * v25;
          *(v0 + 16) = *v28;
          v29 = *(v28 + 64);
          v31 = *(v28 + 16);
          v30 = *(v28 + 32);
          *(v0 + 64) = *(v28 + 48);
          *(v0 + 80) = v29;
          *(v0 + 32) = v31;
          *(v0 + 48) = v30;
          v33 = *(v28 + 96);
          v32 = *(v28 + 112);
          v34 = *(v28 + 80);
          *(v0 + 144) = *(v28 + 128);
          *(v0 + 112) = v33;
          *(v0 + 128) = v32;
          *(v0 + 96) = v34;
          v35 = *(v28 + 112);
          v50[6] = *(v28 + 96);
          v50[7] = v35;
          v51 = *(v28 + 128);
          v36 = *(v28 + 48);
          v50[2] = *(v28 + 32);
          v50[3] = v36;
          v37 = *(v28 + 80);
          v50[4] = *(v28 + 64);
          v50[5] = v37;
          v38 = *(v28 + 16);
          v50[0] = *v28;
          v50[1] = v38;
          sub_1DAA806E4(v0 + 16, v0 + 152);
          SymbolEntity.init(from:)(v50, v27);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1DAADBEA8(0, v22[2] + 1, 1, v22);
          }

          v40 = v22[2];
          v39 = v22[3];
          if (v40 >= v39 >> 1)
          {
            v22 = sub_1DAADBEA8(v39 > 1, v40 + 1, 1, v22);
          }

          v41 = *(v0 + 376);
          v22[2] = v40 + 1;
          sub_1DAAF5AA4(v41, v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v40);
        }

        else
        {
        }
      }

      v21 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v0 + 472);
  v43 = *(v0 + 448);
  v44 = *(v0 + 424);
  v45 = *(v0 + 400);
  v46 = *(v0 + 376);

  v47 = *(v0 + 8);

  return v47(v22);
}

uint64_t sub_1DAC5711C()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[53];
  v5 = v0[50];
  v6 = v0[47];

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  v7 = v0[1];
  v8 = v0[64];

  return v7();
}

uint64_t SymbolQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = *v1;
  *(v2 + 96) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC57204, 0, 0);
}

uint64_t sub_1DAC57204()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watched stocks for suggested symbol entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[12];

  sub_1DACB6D24();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[14] = (*(v7 + 120))(v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1DAC573A0;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAC573A0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DAC57760;
  }

  else
  {
    v5 = *(v2 + 112);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAC574C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC574C4()
{
  v33 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 104);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v32 = v6;
    *v5 = 136315138;
    v8 = *(v1 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v24 = v6;
      v25 = v5;
      v26 = v4;
      v27 = v3;
      v29 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v29;
      v10 = *(v29 + 16);
      v11 = 16 * v10;
      v28 = v1;
      v12 = (v1 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = v10 + 1;
        v16 = *(v29 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
        }

        *(v29 + 16) = v15;
        v17 = v29 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 17;
        ++v10;
        --v8;
      }

      while (v8);
      v3 = v27;
      v1 = v28;
      v4 = v26;
      v7 = v24;
      v5 = v25;
    }

    *(v0 + 64) = v9;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v32);

    *(v5 + 4) = v21;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v30 = *(v0 + 80);
  v31 = *(v0 + 96);
  sub_1DAC57A10(v1, MEMORY[0x1E69E7CC0], *(v0 + 72));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DAC57760()
{
  v32 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v3 = *(v0 + 104);
  v4 = MEMORY[0x1E69E7CC0];
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB98E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    v31 = v8;
    *v7 = 136315138;
    v10 = v4[2];
    if (v10)
    {
      v25 = v8;
      v26 = v7;
      v27 = v6;
      v28 = v5;
      sub_1DAA5859C(0, v10, 0);
      v11 = v4 + 5;
      v12 = v4[2];
      v13 = 2 * v12;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = v12 + 1;
        v17 = v4[3];
        sub_1DACB71E4();
        if (v12 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v16, 1);
        }

        v4[2] = v16;
        v18 = &v4[v13];
        v18[4] = v14;
        v18[5] = v15;
        v13 += 2;
        v11 += 17;
        ++v12;
        --v10;
      }

      while (v10);
      v5 = v28;
      v6 = v27;
      v9 = v25;
      v7 = v26;
    }

    *(v0 + 64) = v4;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v19 = sub_1DACB9214();
    v21 = v20;

    v22 = sub_1DAA7ABE4(v19, v21, &v31);

    *(v7 + 4) = v22;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v29 = *(v0 + 80);
  v30 = *(v0 + 96);
  sub_1DAC57A10(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], *(v0 + 72));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1DAC57A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  sub_1DAC5F4F0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v68 - v7;
  v8 = sub_1DACB7904();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC5F3FC(0, &qword_1ECBE6A38, &qword_1EE123548, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E695A208]);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v68 - v15;
  v82 = type metadata accessor for SymbolEntity();
  v16 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC5F3FC(0, &qword_1ECBE70F8, &qword_1EE123548, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E6959EE0]);
  v80 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v68 - v24;
  v26 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v68 = a2;
    v69 = v23;
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DAB25EB8(0, v26, 0);
    v27 = v102;
    v28 = a1 + 32;
    v79 = v19 + 32;
    do
    {
      v29 = *(v28 + 80);
      v30 = *(v28 + 112);
      v99 = *(v28 + 96);
      v100 = v30;
      v31 = *(v28 + 16);
      v32 = *(v28 + 48);
      v95 = *(v28 + 32);
      v96 = v32;
      v33 = *(v28 + 48);
      v34 = *(v28 + 80);
      v97 = *(v28 + 64);
      v98 = v34;
      v35 = *(v28 + 16);
      v93 = *v28;
      v94 = v35;
      v36 = *(v28 + 112);
      v90 = v99;
      v91 = v36;
      v86 = v95;
      v87 = v33;
      v88 = v97;
      v89 = v29;
      v101 = *(v28 + 128);
      v92 = *(v28 + 128);
      v84 = v93;
      v85 = v31;
      sub_1DAA806E4(&v93, v83);
      sub_1DAA806E4(&v93, v83);
      SymbolEntity.init(from:)(&v84, v81);
      sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v93);
      v102 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1DAB25EB8(v37 > 1, v38 + 1, 1);
        v27 = v102;
      }

      *(v27 + 16) = v38 + 1;
      (*(v19 + 32))(v27 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v38, v25, v80);
      v28 += 136;
      --v26;
    }

    while (v26);
    a2 = v68;
    v23 = v69;
  }

  v39 = *(a2 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v102 = MEMORY[0x1E69E7CC0];
    sub_1DAB25EB8(0, v39, 0);
    v40 = v102;
    v41 = a2 + 32;
    v79 = v19 + 32;
    do
    {
      v42 = *(v41 + 80);
      v43 = *(v41 + 112);
      v99 = *(v41 + 96);
      v100 = v43;
      v44 = *(v41 + 16);
      v45 = *(v41 + 48);
      v95 = *(v41 + 32);
      v96 = v45;
      v46 = *(v41 + 48);
      v47 = *(v41 + 80);
      v97 = *(v41 + 64);
      v98 = v47;
      v48 = *(v41 + 16);
      v93 = *v41;
      v94 = v48;
      v49 = *(v41 + 112);
      v90 = v99;
      v91 = v49;
      v86 = v95;
      v87 = v46;
      v88 = v97;
      v89 = v42;
      v101 = *(v41 + 128);
      v92 = *(v41 + 128);
      v84 = v93;
      v85 = v44;
      sub_1DAA806E4(&v93, v83);
      sub_1DAA806E4(&v93, v83);
      SymbolEntity.init(from:)(&v84, v81);
      sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v93);
      v102 = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1DAB25EB8(v50 > 1, v51 + 1, 1);
        v40 = v102;
      }

      *(v40 + 16) = v51 + 1;
      (*(v19 + 32))(v40 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v51, v23, v80);
      v41 += 136;
      --v39;
    }

    while (v39);
  }

  v53 = v72;
  v52 = v73;
  v54 = v70;
  if (*(v27 + 16))
  {
    if (qword_1ECBE5BC0 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v52, qword_1ECBE9638);
    v56 = v77;
    (*(v53 + 16))(v77, v55, v52);
    v57 = sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
    MEMORY[0x1E1274B90](v56, v27, v82, v57);
    v58 = sub_1DAADC7B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v60 = v58[2];
    v59 = v58[3];
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1DAADC7B4(v59 > 1, v60 + 1, 1, v58);
    }

    v61 = v71;
    v58[2] = v60 + 1;
    (*(v54 + 32))(v58 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v60, v76, v61);
    if (*(v40 + 16))
    {
      goto LABEL_18;
    }

LABEL_26:

    goto LABEL_27;
  }

  v58 = MEMORY[0x1E69E7CC0];
  v61 = v71;
  if (!*(v40 + 16))
  {
    goto LABEL_26;
  }

LABEL_18:
  if (qword_1ECBE5BC8 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v52, qword_1ECBE9650);
  v63 = v77;
  (*(v53 + 16))(v77, v62, v52);
  v64 = sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
  MEMORY[0x1E1274B90](v63, v40, v82, v64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v58 = sub_1DAADC7B4(0, v58[2] + 1, 1, v58);
  }

  v66 = v58[2];
  v65 = v58[3];
  if (v66 >= v65 >> 1)
  {
    v58 = sub_1DAADC7B4(v65 > 1, v66 + 1, 1, v58);
  }

  v58[2] = v66 + 1;
  (*(v54 + 32))(v58 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v66, v78, v61);
LABEL_27:
  (*(v53 + 56))(v74, 1, 1, v52);
  sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
  return sub_1DACB7144();
}

uint64_t SymbolQuery.defaultResult()(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 472) = a1;
  *(v2 + 480) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC5838C, 0, 0);
}

uint64_t sub_1DAC5838C()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Default symbol entity requested", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[60];

  sub_1DACB6D24();
  v6 = v0[56];
  v7 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v6);
  v0[62] = (*(v7 + 120))(v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1DAC58528;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAC58528()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1DAC58B0C;
  }

  else
  {
    v5 = *(v2 + 496);

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v4 = sub_1DAC5864C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC5864C()
{
  v76 = v0;
  v1 = *(v0 + 464);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 488);
    *(v0 + 16) = *(v1 + 32);
    v3 = *(v1 + 96);
    v5 = *(v1 + 48);
    v4 = *(v1 + 64);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v3;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v1 + 128);
    v6 = *(v1 + 144);
    v8 = *(v1 + 112);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 112) = v7;
    *(v0 + 128) = v6;
    *(v0 + 96) = v8;
    sub_1DAA806E4(v0 + 16, v0 + 152);

    v54 = *(v0 + 136);
    v61 = *(v0 + 120);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v58 = *(v0 + 104);
    v59 = *(v0 + 64);
    v60 = *(v0 + 72);
    v12 = *(v0 + 56);
    v56 = *(v0 + 112);
    v57 = *(v0 + 48);
    v13 = *(v0 + 32);
    v55 = *(v0 + 40);
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    sub_1DAA806E4(v0 + 16, v0 + 288);
    v16 = sub_1DACB8C74();
    v17 = sub_1DACB98E4();
    sub_1DAA9B1C8(v0 + 16);
    if (os_log_type_enabled(v16, v17))
    {
      v53 = v13;
      v18 = swift_slowAlloc();
      v52 = v11;
      v19 = swift_slowAlloc();
      *&v62 = v19;
      *v18 = 136315138;
      sub_1DACB71E4();
      log = v16;
      v20 = v9;
      v21 = v15;
      v22 = sub_1DAA7ABE4(v15, v14, &v62);

      *(v18 + 4) = v22;
      v15 = v21;
      v9 = v20;
      v16 = log;
      _os_log_impl(&dword_1DAA3F000, log, v17, "Returning first watched stock for default symbol entity, stock=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v23 = v19;
      v11 = v52;
      MEMORY[0x1E1278C00](v23, -1, -1);
      v24 = v18;
      v13 = v53;
      MEMORY[0x1E1278C00](v24, -1, -1);
    }

    v25 = v61;
    v27 = v59;
    v26 = v60;
    v28 = v57;
    v29 = v58;
    v31 = v55;
    v30 = v56;
    v32 = v54;
  }

  else
  {
    v37 = *(v0 + 464);

    v38 = *(v0 + 488);
    v39 = sub_1DACB8C74();
    v40 = sub_1DACB9904();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DAA3F000, v39, v40, "No watched symbols to return as default symbol entity, falling back to AAPL", v41, 2u);
      MEMORY[0x1E1278C00](v41, -1, -1);
    }

    v13 = 1280328001;

    *&v62 = 0x51414453414ELL;
    *(&v62 + 1) = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
    v15 = 0x51414453414ELL;
    v14 = 0xE600000000000000;
    if (qword_1EE122610 != -1)
    {
      swift_once();
    }

    v42 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v9 = 0xE400000000000000;
      v43 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      v10 = 1280328001;
      if (v44)
      {
        v45 = (*(v42 + 56) + 16 * v43);
        v10 = *v45;
        v9 = v45[1];
        sub_1DACB71E4();
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v10 = 1280328001;
    }

    v12 = 0xEA00000000002E63;
    v46 = qword_1EE13E390;
    v25 = 0uLL;
    if (*(qword_1EE13E390 + 16))
    {
      v47 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      if (v48)
      {
        v49 = (*(v46 + 56) + 16 * v47);
        v29 = *v49;
        v50 = v49[1];
        v30 = sub_1DACB71E4();
        v11 = 3;
        v26 = 0xE600000000000000;
        v27 = 0x51414453414ELL;
        v28 = 0x6E4920656C707041;
        v32 = 0uLL;
        v31 = 0xE400000000000000;
        v25 = 0uLL;
      }

      else
      {
        v11 = 3;
        v26 = 0xE600000000000000;
        v27 = 0x51414453414ELL;
        v28 = 0x6E4920656C707041;
        v29 = 1280328001;
        v32 = 0uLL;
        v30 = 0xE400000000000000;
        v25 = 0uLL;
        v31 = 0xE400000000000000;
      }
    }

    else
    {
      v11 = 3;
      v26 = 0xE600000000000000;
      v27 = 0x51414453414ELL;
      v28 = 0x6E4920656C707041;
      v31 = 0xE400000000000000;
      v29 = 1280328001;
      v32 = 0uLL;
      v30 = 0xE400000000000000;
    }
  }

  v33 = *(v0 + 472);
  *&v62 = v15;
  *(&v62 + 1) = v14;
  v63 = v13;
  v64 = v31;
  v65 = v28;
  v66 = v12;
  v67 = v27;
  v68 = v26;
  v69 = v11;
  v70 = v10;
  v71 = v9;
  v72 = v29;
  v73 = v30;
  v74 = v25;
  v75 = v32;
  SymbolEntity.init(from:)(&v62, v33);
  v34 = type metadata accessor for SymbolEntity();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DAC58B0C()
{
  v37 = v0;
  v1 = v0[64];
  v2 = v0[62];

  __swift_destroy_boxed_opaque_existential_1(v0 + 53);

  v3 = v0[61];
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "No watched symbols to return as default symbol entity, falling back to AAPL", v6, 2u);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  *&v23 = 0x51414453414ELL;
  *(&v23 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v10 = 1280328001;
    if (v11)
    {
      v12 = (*(v7 + 56) + 16 * v9);
      v10 = *v12;
      v8 = v12[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    v10 = 1280328001;
  }

  v13 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v14 = 0xE400000000000000;
    v15 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v16 = 1280328001;
    if (v17)
    {
      v18 = (*(v13 + 56) + 16 * v15);
      v16 = *v18;
      v14 = v18[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v16 = 1280328001;
    v14 = 0xE400000000000000;
  }

  v19 = v0[59];
  *&v23 = 0x51414453414ELL;
  *(&v23 + 1) = 0xE600000000000000;
  v24 = 1280328001;
  v25 = 0xE400000000000000;
  v26 = 0x6E4920656C707041;
  v27 = 0xEA00000000002E63;
  v28 = 0x51414453414ELL;
  v29 = 0xE600000000000000;
  v30 = 3;
  v31 = v10;
  v32 = v8;
  v33 = v16;
  v34 = v14;
  v35 = 0u;
  v36 = 0u;
  SymbolEntity.init(from:)(&v23, v19);
  v20 = type metadata accessor for SymbolEntity();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1DAC58DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return SymbolQuery.entities(for:)(a1);
}

uint64_t sub_1DAC58E60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA9A3AC;

  return SymbolQuery.suggestedEntities()(a1);
}

uint64_t sub_1DAC58EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return SymbolQuery.entities(matching:)(a1, a2, a3);
}

uint64_t SymbolQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  *(v4 + 120) = *v3;
  *(v4 + 136) = *(v3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC58FDC, 0, 0);
}

uint64_t sub_1DAC58FDC()
{
  v18 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DAA7ABE4(v6, v5, &v17);
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching stocks for symbol entities matching string='%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  sub_1DACB6D24();
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v0[19] = sub_1DAAEA918(v11, v9, v12, v13);
  v14 = *(MEMORY[0x1E69D6B08] + 4);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1DAC591E8;

  return MEMORY[0x1EEE44EE0](v0 + 10);
}

uint64_t sub_1DAC591E8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1DAAFCED0;
  }

  else
  {
    v5 = *(v2 + 152);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DAC5930C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC5930C()
{
  v35 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(v0 + 176) = v3;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DAA7ABE4(v7, v6, &v33);
    *(v8 + 12) = 2080;
    v10 = *(v3 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v28 = v9;
      v29 = v8;
      v30 = v5;
      v31 = v4;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v10, 0);
      v11 = v34;
      v12 = *(v34 + 16);
      v13 = 16 * v12;
      v32 = v3;
      v14 = (v3 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v34 = v11;
        v17 = v12 + 1;
        v18 = *(v11 + 24);
        sub_1DACB71E4();
        if (v12 >= v18 >> 1)
        {
          sub_1DAA5859C((v18 > 1), v17, 1);
          v11 = v34;
        }

        *(v11 + 16) = v17;
        v19 = v11 + v13;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v13 += 16;
        v14 += 17;
        ++v12;
        --v10;
      }

      while (v10);
      v4 = v31;
      v3 = v32;
      v5 = v30;
      v9 = v28;
      v8 = v29;
    }

    *(v0 + 88) = v11;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v20 = sub_1DACB9214();
    v22 = v21;

    v23 = sub_1DAA7ABE4(v20, v22, &v33);

    *(v8 + 14) = v23;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched stocks for symbol entities matching string='%s', stocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v24 = *(v0 + 136);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v24;
  v25 = swift_task_alloc();
  *(v0 + 184) = v25;
  *v25 = v0;
  v25[1] = sub_1DAB7E91C;
  v26 = *(v0 + 96);

  return sub_1DAC5975C(v26, v3);
}

uint64_t sub_1DAC59610(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6959F30] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DAB7A5A0();
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v7);
}

uint64_t sub_1DAC596C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return SymbolQuery.defaultResult()(a1);
}

uint64_t sub_1DAC5975C(uint64_t a1, uint64_t a2)
{
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;
  *(v3 + 496) = *v2;
  *(v3 + 512) = *(v2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC5978C, 0, 0);
}

uint64_t sub_1DAC5978C()
{
  v1 = v0[64];
  sub_1DACB6D24();
  v2 = v0[56];
  v3 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v2);
  v0[65] = (*(v3 + 120))(v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[66] = v5;
  *v5 = v0;
  v5[1] = sub_1DAC59870;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAC59870()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = sub_1DAC59F2C;
  }

  else
  {
    v5 = *(v2 + 520);

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v4 = sub_1DAC59994;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC59994()
{
  v78 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + 152);
    v5 = *(v0 + 536);
    v6 = v2 + 32;
    v7 = v3 - 1;
    v8 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v6;
      v9 = *(v6 + 16);
      v10 = *(v6 + 32);
      v11 = *(v6 + 64);
      *(v0 + 64) = *(v6 + 48);
      *(v0 + 80) = v11;
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      v12 = *(v6 + 80);
      v13 = *(v6 + 96);
      v14 = *(v6 + 112);
      *(v0 + 144) = *(v6 + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v14;
      *(v0 + 96) = v12;
      *v4 = *v6;
      v15 = *(v6 + 16);
      v16 = *(v6 + 32);
      v17 = *(v6 + 64);
      *(v0 + 200) = *(v6 + 48);
      *(v0 + 216) = v17;
      *(v0 + 168) = v15;
      *(v0 + 184) = v16;
      v18 = *(v6 + 80);
      v19 = *(v6 + 96);
      v20 = *(v6 + 112);
      *(v0 + 280) = *(v6 + 128);
      *(v0 + 248) = v19;
      *(v0 + 264) = v20;
      *(v0 + 232) = v18;
      v21 = swift_task_alloc();
      *(v21 + 16) = v4;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v22 = sub_1DAC784F4(sub_1DAB84A28, v21, v1);

      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAA5A0A8(0, *(v8 + 2) + 1, 1, v8);
        }

        v24 = *(v8 + 2);
        v23 = *(v8 + 3);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v26 = sub_1DAA5A0A8((v23 > 1), v24 + 1, 1, v8);
          v8 = v26;
        }

        else
        {
          v26 = v8;
        }
      }

      else
      {
        v27 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DAA5A0A8(0, *(v73 + 16) + 1, 1, v73);
        }

        v24 = *(v27 + 2);
        v28 = *(v27 + 3);
        v29 = v27;
        v25 = v24 + 1;
        if (v24 >= v28 >> 1)
        {
          v26 = sub_1DAA5A0A8((v28 > 1), v24 + 1, 1, v29);
          v73 = v26;
        }

        else
        {
          v73 = v29;
          v26 = v29;
        }
      }

      *(v26 + 2) = v25;
      v30 = &v26[136 * v24];
      *(v30 + 2) = *(v0 + 16);
      v31 = *(v0 + 32);
      v32 = *(v0 + 48);
      v33 = *(v0 + 80);
      *(v30 + 5) = *(v0 + 64);
      *(v30 + 6) = v33;
      *(v30 + 3) = v31;
      *(v30 + 4) = v32;
      v34 = *(v0 + 96);
      v35 = *(v0 + 112);
      v36 = *(v0 + 128);
      *(v30 + 20) = *(v0 + 144);
      *(v30 + 8) = v35;
      *(v30 + 9) = v36;
      *(v30 + 7) = v34;
      if (!v7)
      {
        break;
      }

      --v7;
      v6 += 136;
    }
  }

  else
  {
    v37 = *(v0 + 464);

    v8 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 488);
  v39 = sub_1DACB8C94();
  __swift_project_value_buffer(v39, qword_1EE11D390);
  sub_1DACB71E4();
  v40 = v73;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v41 = sub_1DACB8C74();
  v42 = sub_1DACB9914();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    v77[0] = v44;
    *v43 = 136315650;
    v46 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v68 = v44;
      v69 = v42;
      v70 = v43;
      v71 = v41;
      v72 = v8;
      v47 = *(v0 + 488);
      v74 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v3, 0);
      v46 = v74;
      v48 = *(v74 + 16);
      v49 = 16 * v48;
      v50 = (v47 + 40);
      do
      {
        v51 = *(v50 - 1);
        v52 = *v50;
        v53 = v48 + 1;
        v54 = *(v74 + 24);
        sub_1DACB71E4();
        if (v48 >= v54 >> 1)
        {
          sub_1DAA5859C((v54 > 1), v53, 1);
        }

        *(v74 + 16) = v53;
        v55 = v74 + v49;
        *(v55 + 32) = v51;
        *(v55 + 40) = v52;
        v49 += 16;
        v50 += 17;
        ++v48;
        --v3;
      }

      while (v3);
      v41 = v71;
      v8 = v72;
      v43 = v70;
      v42 = v69;
      v45 = v68;
    }

    *(v0 + 472) = v46;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v56 = sub_1DACB9214();
    v58 = v57;

    v59 = sub_1DAA7ABE4(v56, v58, v77);

    *(v43 + 4) = v59;
    *(v43 + 12) = 2080;
    v60 = sub_1DAB81DD8(v8);
    v62 = sub_1DAA7ABE4(v60, v61, v77);

    *(v43 + 14) = v62;
    *(v43 + 22) = 2080;
    v40 = v73;
    v63 = sub_1DAB81DD8(v73);
    v65 = sub_1DAA7ABE4(v63, v64, v77);

    *(v43 + 24) = v65;

    _os_log_impl(&dword_1DAA3F000, v41, v42, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v45, -1, -1);
    MEMORY[0x1E1278C00](v43, -1, -1);
  }

  else
  {
  }

  v75 = *(v0 + 496);
  v76 = *(v0 + 512);
  sub_1DAC57A10(v8, v40, *(v0 + 480));

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1DAC59F2C()
{
  v75 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);

  __swift_destroy_boxed_opaque_existential_1((v0 + 424));

  v3 = *(v0 + 488);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v0 + 152);
    v6 = v3 + 32;
    v7 = v4 - 1;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v6;
      v10 = *(v6 + 16);
      v11 = *(v6 + 32);
      v12 = *(v6 + 64);
      *(v0 + 64) = *(v6 + 48);
      *(v0 + 80) = v12;
      *(v0 + 32) = v10;
      *(v0 + 48) = v11;
      v13 = *(v6 + 80);
      v14 = *(v6 + 96);
      v15 = *(v6 + 112);
      *(v0 + 144) = *(v6 + 128);
      *(v0 + 112) = v14;
      *(v0 + 128) = v15;
      *(v0 + 96) = v13;
      *v5 = *v6;
      v16 = *(v6 + 16);
      v17 = *(v6 + 32);
      v18 = *(v6 + 64);
      *(v0 + 200) = *(v6 + 48);
      *(v0 + 216) = v18;
      *(v0 + 168) = v16;
      *(v0 + 184) = v17;
      v19 = *(v6 + 80);
      v20 = *(v6 + 96);
      v21 = *(v6 + 112);
      *(v0 + 280) = *(v6 + 128);
      *(v0 + 248) = v20;
      *(v0 + 264) = v21;
      *(v0 + 232) = v19;
      v22 = swift_task_alloc();
      *(v22 + 16) = v5;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v23 = sub_1DAC784F4(sub_1DAB84A28, v22, MEMORY[0x1E69E7CC0]);

      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DAA5A0A8(0, *(v9 + 2) + 1, 1, v9);
        }

        v25 = *(v9 + 2);
        v24 = *(v9 + 3);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v27 = sub_1DAA5A0A8((v24 > 1), v25 + 1, 1, v9);
          v9 = v27;
        }

        else
        {
          v27 = v9;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAA5A0A8(0, *(v8 + 2) + 1, 1, v8);
        }

        v25 = *(v8 + 2);
        v28 = *(v8 + 3);
        v26 = v25 + 1;
        if (v25 >= v28 >> 1)
        {
          v27 = sub_1DAA5A0A8((v28 > 1), v25 + 1, 1, v8);
          v8 = v27;
        }

        else
        {
          v27 = v8;
        }
      }

      *(v27 + 2) = v26;
      v29 = &v27[136 * v25];
      *(v29 + 2) = *(v0 + 16);
      v30 = *(v0 + 32);
      v31 = *(v0 + 48);
      v32 = *(v0 + 80);
      *(v29 + 5) = *(v0 + 64);
      *(v29 + 6) = v32;
      *(v29 + 3) = v30;
      *(v29 + 4) = v31;
      v33 = *(v0 + 96);
      v34 = *(v0 + 112);
      v35 = *(v0 + 128);
      *(v29 + 20) = *(v0 + 144);
      *(v29 + 8) = v34;
      *(v29 + 9) = v35;
      *(v29 + 7) = v33;
      if (!v7)
      {
        break;
      }

      --v7;
      v6 += 136;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];

    v8 = v9;
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 488);
  v37 = sub_1DACB8C94();
  __swift_project_value_buffer(v37, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v38 = sub_1DACB8C74();
  v39 = sub_1DACB9914();

  if (os_log_type_enabled(v38, v39))
  {
    v70 = v8;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    v74[0] = v41;
    *v40 = 136315650;
    v43 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v65 = v41;
      v66 = v39;
      v67 = v40;
      v68 = v38;
      v69 = v9;
      v44 = *(v0 + 488);
      v71 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v4, 0);
      v43 = v71;
      v45 = *(v71 + 16);
      v46 = 16 * v45;
      v47 = (v44 + 40);
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;
        v50 = v45 + 1;
        v51 = *(v71 + 24);
        sub_1DACB71E4();
        if (v45 >= v51 >> 1)
        {
          sub_1DAA5859C((v51 > 1), v50, 1);
        }

        *(v71 + 16) = v50;
        v52 = v71 + v46;
        *(v52 + 32) = v48;
        *(v52 + 40) = v49;
        v46 += 16;
        v47 += 17;
        ++v45;
        --v4;
      }

      while (v4);
      v38 = v68;
      v9 = v69;
      v40 = v67;
      v39 = v66;
      v42 = v65;
    }

    *(v0 + 472) = v43;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v53 = sub_1DACB9214();
    v55 = v54;

    v56 = sub_1DAA7ABE4(v53, v55, v74);

    *(v40 + 4) = v56;
    *(v40 + 12) = 2080;
    v57 = sub_1DAB81DD8(v9);
    v59 = sub_1DAA7ABE4(v57, v58, v74);

    *(v40 + 14) = v59;
    *(v40 + 22) = 2080;
    v8 = v70;
    v60 = sub_1DAB81DD8(v70);
    v62 = sub_1DAA7ABE4(v60, v61, v74);

    *(v40 + 24) = v62;

    _os_log_impl(&dword_1DAA3F000, v38, v39, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v42, -1, -1);
    MEMORY[0x1E1278C00](v40, -1, -1);
  }

  else
  {
  }

  v72 = *(v0 + 496);
  v73 = *(v0 + 512);
  sub_1DAC57A10(v9, v8, *(v0 + 480));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t static SymbolQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v26 = MEMORY[0x1E6968E10];
  sub_1DAC5F4F0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v25 - v3;
  v4 = sub_1DACB78E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB92E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1DACB7904();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v5 + 104);
  v18(v8, v17, v4);
  sub_1DACB7914();
  v19 = *(v14 + 56);
  v14 += 56;
  v19(v29, 1, 1, v13);
  sub_1DAC5F4F0(0, &qword_1ECBE6D78, v26, MEMORY[0x1E69E6F90]);
  v20 = *(v14 + 16);
  v21 = (*(v14 + 24) + 32) & ~*(v14 + 24);
  v26 = swift_allocObject();
  *(v26 + 1) = xmmword_1DACD6260;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18(v8, v17, v4);
  sub_1DACB7914();
  v22 = v28;
  sub_1DACB7094();
  v23 = sub_1DACB7084();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1DAC5AB50()
{
  sub_1DAC5D7B0();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE9668);
  __swift_project_value_buffer(v1, qword_1ECBE9668);
  type metadata accessor for SymbolEntity();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  return sub_1DACB7194();
}

uint64_t sub_1DAC5AC08()
{
  sub_1DAC5F554();
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  sub_1DACB7114();
  v1 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for SymbolEntity();
  sub_1DACB71F4();
  v3 = sub_1DACB7394();

  return v3;
}

uint64_t sub_1DAC5AE50()
{
  sub_1DAC5F628();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v0);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1DAC5F6C0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DACB70C4();
  type metadata accessor for SymbolEntity();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  sub_1DACB73E4();

  sub_1DAC5F744();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAC5F4F0(0, &qword_1ECBE96F0, sub_1DAC5F628, MEMORY[0x1E69E6F90]);
  v15 = *(v2 + 72);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D40;
  v18 = v17 + v16;
  v19 = *(v3 + 16);
  v19(v18, v8, v1);
  v20 = v18 + v15;
  v21 = v26;
  v19(v20, v26, v1);
  sub_1DAA9A574();
  sub_1DAA8D9E8();
  v22 = sub_1DACB73D4();

  v23 = *(v3 + 8);
  v23(v21, v1);
  v23(v8, v1);
  return v22;
}

uint64_t sub_1DAC5B170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[2] = KeyPath;
  v9[3] = a1;
  v9[4] = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAC5B210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = KeyPath;
  v8[3] = v6;
  v8[4] = v5;
  *a3 = v6;
  a3[1] = v5;
  a3[2] = a2;
  a3[3] = v8;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAC5B2BC()
{
  sub_1DAC5D84C(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE9680);
  __swift_project_value_buffer(v1, qword_1ECBE9680);
  type metadata accessor for SymbolEntity();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  return sub_1DACB72F4();
}

uint64_t sub_1DAC5B36C()
{
  sub_1DAC5F4B4(0);
  v1 = v0;
  v36 = *(v0 - 8);
  v2 = v36;
  v33 = v36;
  v3 = *(v36 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v37 = v31 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v35 = v31 - v12;
  swift_getKeyPath();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  sub_1DAC5F378(&qword_1ECBE6E00, sub_1DAA9A574);
  sub_1DACB73F4();
  v13 = type metadata accessor for SymbolEntity();
  sub_1DACB7444();
  v14 = *(v2 + 8);
  v34 = v11;
  v14(v11, v1);
  swift_getKeyPath();
  v15 = v37;
  sub_1DACB73F4();
  v31[1] = v13;
  sub_1DACB7444();
  v32 = v14;
  v14(v15, v1);
  swift_getKeyPath();
  sub_1DACB73F4();
  sub_1DACB7444();
  v14(v6, v1);
  sub_1DAC5F4F0(0, &qword_1ECBE96C8, sub_1DAC5F4B4, MEMORY[0x1E69E6F90]);
  v16 = *(v36 + 72);
  v17 = v33;
  v18 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v19 = 2 * v16;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DACC2610;
  v21 = v20 + v18;
  v22 = *(v17 + 16);
  v23 = v35;
  v22(v21, v35, v1);
  v24 = v21 + v16;
  v25 = v34;
  v22(v24, v34, v1);
  v26 = v21 + v19;
  v27 = v37;
  v22(v26, v37, v1);
  v28 = sub_1DACB7434();

  v29 = v32;
  v32(v27, v1);
  v29(v25, v1);
  v29(v23, v1);
  return v28;
}

uint64_t sub_1DAC5B774@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t SymbolQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 289) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 288) = a3;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  *(v7 + 160) = *v6;
  *(v7 + 176) = *(v6 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC5B854, 0, 0);
}

uint64_t sub_1DAC5B854()
{
  v41 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = sub_1DACB8C94();
  *(v0 + 184) = __swift_project_value_buffer(v3, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 289);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = *(v0 + 288);
    v10 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 134218754;
    *(v11 + 4) = *(v10 + 16);

    *(v11 + 12) = 2080;
    v13 = sub_1DACB72E4();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 6581857;
    }

    else
    {
      v15 = 29295;
    }

    if (v14)
    {
      v16 = 0xE200000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_1DAA7ABE4(v15, v16, &v40);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = *(v7 + 16);

    *(v11 + 24) = v18;

    *(v11 + 32) = 2048;
    if (v6)
    {
      v19 = 0;
    }

    else
    {
      v19 = v8;
    }

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Querying stocks for symbol entities matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v11, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  else
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    swift_bridgeObjectRelease_n();
  }

  v22 = *(v0 + 136);
  v23 = v22[2];
  *(v0 + 192) = v23;
  if (v23)
  {
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    v24 = *(v0 + 184);
    v25 = v22[4];
    *(v0 + 216) = v25;
    v26 = v22[5];
    *(v0 + 224) = v26;
    *(v0 + 232) = v22[6];
    *(v0 + 240) = v22[7];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v27 = sub_1DACB8C74();
    v28 = sub_1DACB98F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      sub_1DACB71E4();
      v31 = sub_1DAA7ABE4(v25, v26, &v40);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_1DAA3F000, v27, v28, "Querying stocks for symbol entities matching property query=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E1278C00](v30, -1, -1);
      MEMORY[0x1E1278C00](v29, -1, -1);
    }

    v32 = *(v0 + 160);
    sub_1DACB6D24();
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v33);
    *(v0 + 248) = sub_1DAAEA918(v25, v26, v33, v34);
    v35 = *(MEMORY[0x1E69D6B08] + 4);
    v36 = swift_task_alloc();
    *(v0 + 256) = v36;
    *v36 = v0;
    v36[1] = sub_1DAC5BCCC;

    return MEMORY[0x1EEE44EE0](v0 + 80);
  }

  else
  {
    v37 = *(v0 + 128);
    type metadata accessor for SymbolEntity();
    sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity);
    sub_1DACB7154();
    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1DAC5BCCC()
{
  v2 = *v1;
  v3 = (*v1)[32];
  v8 = *v1;
  (*v1)[33] = v0;

  v4 = v2[31];
  if (v0)
  {
    v5 = v2[25];

    v6 = sub_1DAB81AFC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = sub_1DAC5BE04;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DAC5BE04()
{
  v137 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = sub_1DAB072D8(*(v0 + 80));

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB98F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v135[0] = v11;
    *v10 = 136315394;
    sub_1DACB71E4();
    v12 = sub_1DAA7ABE4(v9, v8, v135);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v0 + 120) = sub_1DAB7B61C(v4);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v13 = sub_1DACB9214();
    v15 = v14;

    v16 = sub_1DAA7ABE4(v13, v15, v135);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Successfully found stocks for symbol entities matching property query=%s, results=[%s]", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v11, -1, -1);
    MEMORY[0x1E1278C00](v10, -1, -1);
  }

  else
  {

    v7 = *(v0 + 264);
  }

  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 224);
  v20 = *(v0 + 184);
  sub_1DACB71F4();
  v21 = sub_1DAB82B40(v18, v17, v4);
  sub_1DACB71E4();

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v22 = sub_1DACB8C74();
  v23 = sub_1DACB98F4();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v135[0] = v27;
    *v26 = 136315394;
    sub_1DACB71E4();
    v28 = sub_1DAA7ABE4(v25, v24, v135);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    *(v0 + 112) = sub_1DAB7B61C(v21);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v29 = sub_1DACB9214();
    v31 = v30;

    v32 = sub_1DAA7ABE4(v29, v31, v135);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_1DAA3F000, v22, v23, "Filtered stocks for symbol entities matching property query=%s, filtered=[%s]", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v27, -1, -1);
    MEMORY[0x1E1278C00](v26, -1, -1);
  }

  v33 = *(v0 + 200);

  if (!v33)
  {
    v35 = *(v0 + 184);
    v36 = sub_1DACB8C74();
    v37 = sub_1DACB98F4();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 240);
    v40 = *(v0 + 224);
    if (v38)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DAA3F000, v36, v37, "No existing result for symbol property queries, so storing first results", v41, 2u);
      MEMORY[0x1E1278C00](v41, -1, -1);
    }

    goto LABEL_21;
  }

  v34 = *(v0 + 200);
  if (*(v0 + 288))
  {
    v21 = sub_1DAB01D3C(v21, v34);
    sub_1DACB71E4();
  }

  else
  {
    v42 = sub_1DAB0387C(v21, v34);

    sub_1DACB71F4();
    v21 = v42;
  }

  v43 = *(v0 + 184);
  sub_1DACB71E4();
  v44 = sub_1DACB8C74();
  v45 = sub_1DACB98F4();

  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 240);
  v48 = *(v0 + 224);
  if (v46)
  {
    v130 = *(v0 + 288);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v135[0] = v50;
    *v49 = 136315394;
    v51 = sub_1DAB7B61C(v21);

    *(v0 + 104) = v51;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v52 = sub_1DACB9214();
    v54 = v53;

    v55 = sub_1DAA7ABE4(v52, v54, v135);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v56 = sub_1DACB72E4();
    v57 = (v56 & 1) == 0;
    if (v56)
    {
      v58 = 6581857;
    }

    else
    {
      v58 = 29295;
    }

    if (v57)
    {
      v59 = 0xE200000000000000;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v60 = sub_1DAA7ABE4(v58, v59, v135);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_1DAA3F000, v44, v45, "Combined stock query results into accumulated results=[%s], comparatorMode=%s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v50, -1, -1);
    MEMORY[0x1E1278C00](v49, -1, -1);

LABEL_21:

    goto LABEL_23;
  }

LABEL_23:
  v61 = *(v0 + 208) + 1;
  if (v61 == *(v0 + 192))
  {
    v62 = *(v0 + 184);
    sub_1DACB71E4();
    v63 = sub_1DACB8C74();
    v64 = sub_1DACB9914();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v135[0] = v66;
      *v65 = 136315138;
      *(v0 + 96) = sub_1DAB7B61C(v21);
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v67 = sub_1DACB9214();
      v69 = v68;

      v70 = sub_1DAA7ABE4(v67, v69, v135);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1DAA3F000, v63, v64, "Successfully applied all queries, found stocks=[%s]", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1E1278C00](v66, -1, -1);
      MEMORY[0x1E1278C00](v65, -1, -1);
    }

    v71 = *(v21 + 16);
    if (v71)
    {
      v132 = v7;
      v72 = sub_1DAB02C90(v71, 0);
      v73 = sub_1DAB05AA0(v135, v72 + 32, v71, v21);
      v74 = v135[4];
      sub_1DACB71E4();
      sub_1DAA54B38();
      if (v73 != v71)
      {
        __break(1u);
        goto LABEL_64;
      }

      v7 = v132;
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    v89 = *(v0 + 144);
    v135[0] = v72;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAC5F0F4(v135, v89);
    if (v7)
    {
      v90 = *(v0 + 144);
    }

    v91 = *(v0 + 184);
    v92 = *(v0 + 144);

    v93 = v135[0];
    sub_1DACB71F4();
    v94 = sub_1DACB8C74();
    v95 = sub_1DACB9914();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v97;
      v136 = v97;
      *v96 = 136315138;
      v99 = *(v93 + 2);
      v100 = MEMORY[0x1E69E7CC0];
      if (v99)
      {
        v128 = v97;
        v129 = v96;
        v131 = v95;
        v133 = v94;
        v135[0] = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v99, 0);
        v100 = v135[0];
        v101 = *(v135[0] + 2);
        v102 = 16 * v101;
        v134 = v93;
        v103 = (v93 + 40);
        do
        {
          v104 = *(v103 - 1);
          v105 = *v103;
          v135[0] = v100;
          v106 = v101 + 1;
          v107 = *(v100 + 3);
          sub_1DACB71E4();
          if (v101 >= v107 >> 1)
          {
            sub_1DAA5859C((v107 > 1), v106, 1);
            v100 = v135[0];
          }

          *(v100 + 2) = v106;
          v108 = &v100[v102];
          *(v108 + 4) = v104;
          *(v108 + 5) = v105;
          v102 += 16;
          v103 += 17;
          ++v101;
          --v99;
        }

        while (v99);
        v94 = v133;
        v93 = v134;
        v95 = v131;
        v98 = v128;
        v96 = v129;
      }

      *(v0 + 88) = v100;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v109 = sub_1DACB9214();
      v111 = v110;

      v112 = sub_1DAA7ABE4(v109, v111, &v136);

      *(v96 + 4) = v112;
      _os_log_impl(&dword_1DAA3F000, v94, v95, "Applied sorts to sortedStocks=[%s]", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x1E1278C00](v98, -1, -1);
      MEMORY[0x1E1278C00](v96, -1, -1);
    }

    if (*(v0 + 289))
    {
      goto LABEL_60;
    }

    v72 = sub_1DAB01EB0(*(v0 + 152), v93);
    if ((v115 & 1) == 0)
    {
      goto LABEL_49;
    }

    v74 = v115;
    v21 = v114;
    v73 = v113;
    sub_1DACBA194();
    swift_unknownObjectRetain_n();
    v117 = swift_dynamicCastClass();
    if (!v117)
    {
      swift_unknownObjectRelease();
      v117 = MEMORY[0x1E69E7CC0];
    }

    v118 = *(v117 + 16);

    if (!__OFSUB__(v74 >> 1, v21))
    {
      if (v118 == (v74 >> 1) - v21)
      {
        v93 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v93)
        {
LABEL_57:
          v119 = *(v0 + 184);
          v120 = sub_1DACB8C74();
          v121 = sub_1DACB9914();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = *(v0 + 152);
            v123 = swift_slowAlloc();
            *v123 = 134217984;
            *(v123 + 4) = v122;
            _os_log_impl(&dword_1DAA3F000, v120, v121, "Limited results down to limit=%ld", v123, 0xCu);
            MEMORY[0x1E1278C00](v123, -1, -1);
          }

LABEL_60:
          *(v0 + 272) = v93;
          v124 = *(v0 + 176);
          *(v0 + 56) = *(v0 + 160);
          *(v0 + 72) = v124;
          v125 = swift_task_alloc();
          *(v0 + 280) = v125;
          *v125 = v0;
          v125[1] = sub_1DAB819E8;
          v126 = *(v0 + 128);

          return sub_1DAC5975C(v126, v93);
        }

        v93 = MEMORY[0x1E69E7CC0];
LABEL_56:
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      goto LABEL_65;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    swift_unknownObjectRelease();
    v115 = v74;
    v114 = v21;
    v113 = v73;
LABEL_49:
    sub_1DAB03214(v72, v113, v114, v115);
    v93 = v116;
    goto LABEL_56;
  }

  *(v0 + 200) = v21;
  *(v0 + 208) = v61;
  v75 = *(v0 + 184);
  v76 = (*(v0 + 136) + 32 * v61);
  v77 = v76[4];
  *(v0 + 216) = v77;
  v78 = v76[5];
  *(v0 + 224) = v78;
  *(v0 + 232) = v76[6];
  *(v0 + 240) = v76[7];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v79 = sub_1DACB8C74();
  v80 = sub_1DACB98F4();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v135[0] = v82;
    *v81 = 136315138;
    sub_1DACB71E4();
    v83 = sub_1DAA7ABE4(v77, v78, v135);

    *(v81 + 4) = v83;
    _os_log_impl(&dword_1DAA3F000, v79, v80, "Querying stocks for symbol entities matching property query=%s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1E1278C00](v82, -1, -1);
    MEMORY[0x1E1278C00](v81, -1, -1);
  }

  v84 = *(v0 + 160);
  sub_1DACB6D24();
  v86 = *(v0 + 40);
  v85 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v86);
  *(v0 + 248) = sub_1DAAEA918(v77, v78, v86, v85);
  v87 = *(MEMORY[0x1E69D6B08] + 4);
  v88 = swift_task_alloc();
  *(v0 + 256) = v88;
  *v88 = v0;
  v88[1] = sub_1DAC5BCCC;

  return MEMORY[0x1EEE44EE0](v0 + 80);
}

uint64_t sub_1DAC5CD48@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1DAC5CDF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;

  return SymbolQuery.entities(matching:mode:sortedBy:limit:)(a1, a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAC5CECC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v6;
  v7 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v7;
  v16 = v24;
  v17 = *(a1 + 112);
  v12 = v20;
  v13 = v5;
  v14 = v22;
  v15 = v1;
  v26 = *(a1 + 128);
  v18 = *(a1 + 128);
  v10 = v19[0];
  v11 = v3;
  sub_1DAA806E4(v19, v27);
  swift_getAtKeyPath();
  v27[6] = v16;
  v27[7] = v17;
  v28 = v18;
  v27[2] = v12;
  v27[3] = v13;
  v27[4] = v14;
  v27[5] = v15;
  v27[0] = v10;
  v27[1] = v11;
  sub_1DAA9B1C8(v27);
  sub_1DACB93A4();

  sub_1DACB93A4();
  sub_1DAA642D8();
  v8 = sub_1DACB9B64();

  return v8 & 1;
}

uint64_t sub_1DAC5D01C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v28 = *(a1 + 96);
  v29 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v20 = v28;
  v21 = *(a1 + 112);
  v16 = v24;
  v17 = v5;
  v18 = v26;
  v19 = v1;
  v30 = *(a1 + 128);
  v22 = *(a1 + 128);
  v14 = v23[0];
  v15 = v3;
  sub_1DAA806E4(v23, v31);
  swift_getAtKeyPath();
  v31[6] = v20;
  v31[7] = v21;
  v32 = v22;
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v18;
  v31[5] = v19;
  v31[0] = v14;
  v31[1] = v15;
  sub_1DAA9B1C8(v31);
  v8 = sub_1DACB93A4();
  v10 = v9;

  if (v8 == sub_1DACB93A4() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DACBA174();
  }

  return v12 & 1;
}

uint64_t sub_1DAC5D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEntity();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v50 - v10;
  sub_1DAC5F3FC(0, &qword_1ECBE96B8, &unk_1EE11EF70, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E695A128]);
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - v15;
  v17 = *(a1 + 112);
  v78 = *(a1 + 96);
  v79 = v17;
  v80 = *(a1 + 128);
  v18 = *(a1 + 48);
  v74 = *(a1 + 32);
  v75 = v18;
  v19 = *(a1 + 80);
  v76 = *(a1 + 64);
  v77 = v19;
  v20 = *(a1 + 16);
  v72 = *a1;
  v73 = v20;
  v21 = *(a2 + 112);
  v87 = *(a2 + 96);
  v88 = v21;
  v89 = *(a2 + 128);
  v22 = *(a2 + 48);
  v83 = *(a2 + 32);
  v84 = v22;
  v23 = *(a2 + 80);
  v85 = *(a2 + 64);
  v86 = v23;
  v24 = *(a2 + 16);
  v81 = *a2;
  v82 = v24;
  v51 = a3;
  v25 = *(a3 + 16);
  if (!v25)
  {
    return 1;
  }

  v27 = *(v14 + 16);
  v26 = v14 + 16;
  v54 = (v26 - 8);
  v55 = v27;
  v28 = v51 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v56 = v26;
  v52 = *(v26 + 56);
  v53 = v12;
  v29 = 1 - v25;
  v27(v16, v28, v12);
  while (1)
  {
    v69 = v78;
    v70 = v79;
    v71 = v80;
    v65 = v74;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    v63 = v72;
    v64 = v73;
    sub_1DAA806E4(&v72, v62);
    v31 = v58;
    SymbolEntity.init(from:)(&v63, v58);
    sub_1DACB6F74();
    swift_getAtPartialKeyPath();

    sub_1DAAD5434(v31);
    sub_1DAA9A574();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v32 = v12;
    v33 = v62[0];
    v69 = v87;
    v70 = v88;
    v71 = v89;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v63 = v81;
    v64 = v82;
    sub_1DAA806E4(&v81, v62);
    v34 = v57;
    SymbolEntity.init(from:)(&v63, v57);
    sub_1DACB6F74();
    swift_getAtPartialKeyPath();

    sub_1DAAD5434(v34);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v12 = v32;
      break;
    }

    v90 = v29;
    v59 = v28;
    v35 = v62[0];
    v61 = v33;
    sub_1DACB6ED4();
    v36 = v63;
    v60 = v35;
    sub_1DACB6ED4();
    v37 = v63;
    if (sub_1DACB6F84())
    {
      if (v36 == v37)
      {
        goto LABEL_3;
      }
    }

    else if (v37 == v36)
    {
LABEL_3:

      v12 = v53;
      (*v54)(v16, v53);
      v30 = v90;
      if (!v90)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v38 = sub_1DACBA174();

    v12 = v53;
    (*v54)(v16, v53);
    v30 = v90;
    if ((v38 & 1) != 0 || !v90)
    {
      return 1;
    }

LABEL_4:
    v28 = v59 + v52;
    v29 = v30 + 1;
    if (v29 == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v55(v16, v28, v12);
  }

  v28 = v51;
  if (qword_1EE11D388 == -1)
  {
    goto LABEL_17;
  }

LABEL_22:
  swift_once();
LABEL_17:
  v39 = sub_1DACB8C94();
  __swift_project_value_buffer(v39, qword_1EE11D390);
  sub_1DACB71E4();
  v40 = sub_1DACB8C74();
  v41 = sub_1DACB9904();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = v16;
    v44 = swift_slowAlloc();
    *&v63 = v44;
    *v42 = 136315138;
    v45 = MEMORY[0x1E1277130](v28, v12);
    v47 = sub_1DAA7ABE4(v45, v46, &v63);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1DAA3F000, v40, v41, "Symbol sorts unexpectedly contained a parameter which is not a String. sorts=%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v48 = v44;
    v16 = v43;
    MEMORY[0x1E1278C00](v48, -1, -1);
    MEMORY[0x1E1278C00](v42, -1, -1);
  }

  MEMORY[0x1E1275DD0]("Encountered a SymbolEntity value in WatchlistQuery which is not a String. We need to add explicit support for this in the property queries.", 139, 2, MEMORY[0x1E69E7CC0]);
  (*v54)(v16, v12);
  return 1;
}

void sub_1DAC5D7B0()
{
  if (!qword_1ECBE9698)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
    v0 = sub_1DACB71A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9698);
    }
  }
}

uint64_t sub_1DAC5D888(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 136;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 136;
  if (v12 < v14)
  {
    v15 = __dst;
    if (a4 != __dst || &__dst[136 * v12] <= a4)
    {
      memmove(a4, __dst, 136 * v12);
    }

    v16 = (v8 + 136 * v12);
    if (v11 < 136)
    {
LABEL_6:
      v10 = v15;
      goto LABEL_50;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v98 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v101 = *(v10 + 3);
      v102 = v21;
      v99 = v19;
      v100 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v106 = *(v10 + 16);
      v104 = v23;
      v105 = v24;
      v103 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v107 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v110 = *(v8 + 48);
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v115 = *(v8 + 128);
      v113 = v29;
      v114 = v30;
      v112 = v28;
      memmove(&v80, v8, 0x88uLL);
      sub_1DAA806E4(&v98, &v71);
      sub_1DAA806E4(&v107, &v71);
      v31 = sub_1DAC5D170(&__dsta, &v80, a5);
      if (v5)
      {
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v62 = v80;
        v63 = v81;
        sub_1DAA9B1C8(&v62);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v73 = v91;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v71 = __dsta;
        v72 = v90;
        sub_1DAA9B1C8(&v71);
        v56 = &v16[-v8] / 136;
        if (v15 < v8 || v15 >= v8 + 136 * v56 || v15 != v8)
        {
          v57 = 136 * v56;
          v58 = v15;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v32 = v31;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      sub_1DAA9B1C8(&v62);
      v77 = v95;
      v78 = v96;
      v79 = v97;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v71 = __dsta;
      v72 = v90;
      sub_1DAA9B1C8(&v71);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v15 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v15 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v15 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v15, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v14] <= a4)
  {
    memmove(a4, __src, 136 * v14);
  }

  v16 = (v8 + 136 * v14);
  if (v13 < 136 || v10 <= __dst)
  {
LABEL_50:
    v59 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
    {
      v57 = 136 * v59;
      v58 = v10;
LABEL_54:
      memmove(v58, v8, v57);
    }

    goto LABEL_55;
  }

  v33 = -v8;
  v116 = a5;
LABEL_22:
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 -= 136;
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v98 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v101 = *(v16 - 88);
    v102 = v39;
    v99 = v37;
    v100 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v106 = *(v16 - 1);
    v104 = v41;
    v105 = v42;
    v103 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v113 = *(v10 - 40);
    v114 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v109 = *(v10 - 104);
    v110 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v111 = *(v10 - 72);
    v112 = v48;
    v49 = *(v10 - 120);
    v107 = *v34;
    v108 = v49;
    v50 = *(v10 - 24);
    v86 = v113;
    v87 = v50;
    v82 = v109;
    v83 = v47;
    v84 = v111;
    v85 = v43;
    v115 = *(v10 - 1);
    v88 = *(v10 - 1);
    v80 = v107;
    v81 = v45;
    sub_1DAA806E4(&v98, &v71);
    sub_1DAA806E4(&v107, &v71);
    v51 = sub_1DAC5D170(&__dsta, &v80, a5);
    if (v6)
    {
      break;
    }

    v52 = v51;
    v68 = v86;
    v69 = v87;
    v70 = v88;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v62 = v80;
    v63 = v81;
    sub_1DAA9B1C8(&v62);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v71 = __dsta;
    v72 = v90;
    sub_1DAA9B1C8(&v71);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v6 = 0;
        v54 = __dst;
      }

      else
      {
        v54 = __dst;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v6 = 0;
      }

      a5 = v116;
      if (v16 <= v8 || (v10 -= 136, v33 = -v8, v34 <= v54))
      {
        v10 = v34;
        goto LABEL_50;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16)
    {
      memmove(v9, v36, 0x88uLL);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v53 != v16)
      {
        memmove(v9, v36, 0x88uLL);
      }
    }

    a5 = v116;
    v35 -= 136;
    v9 -= 136;
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_50;
    }
  }

  v68 = v86;
  v69 = v87;
  v70 = v88;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v62 = v80;
  v63 = v81;
  sub_1DAA9B1C8(&v62);
  v77 = v95;
  v78 = v96;
  v79 = v97;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v71 = __dsta;
  v72 = v90;
  sub_1DAA9B1C8(&v71);
  v55 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v55)
  {
    memmove(v10, v8, 136 * v55);

    return 1;
  }

  if (v10 != v8)
  {
    memmove(v10, v8, 136 * v55);
  }

LABEL_55:

  return 1;
}

uint64_t sub_1DAC5DF2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v169 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      v62 = (v9 + 1);
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v241 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v245 = *(v14 + 64);
      v244 = v17;
      v243 = v16;
      v242 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v249 = *(v14 + 128);
      v248 = v20;
      v247 = v19;
      v246 = v18;
      v21 = *(v14 + 112);
      v238 = *(v14 + 96);
      v239 = v21;
      v240 = *(v14 + 128);
      v22 = *(v14 + 48);
      v234 = *(v14 + 32);
      v235 = v22;
      v23 = *(v14 + 64);
      v237 = *(v14 + 80);
      v236 = v23;
      v24 = *v14;
      v233 = *(v14 + 16);
      v232 = v24;
      v25 = (v13 + 136 * v11);
      v250 = *v25;
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[4];
      v253 = v25[3];
      v254 = v28;
      v251 = v26;
      v252 = v27;
      v29 = v25[5];
      v30 = v25[6];
      v31 = v25[7];
      v258 = *(v25 + 16);
      v256 = v30;
      v257 = v31;
      v255 = v29;
      v32 = v25[7];
      v229 = v25[6];
      v230 = v32;
      v231 = *(v25 + 16);
      v33 = v25[3];
      v225 = v25[2];
      v226 = v33;
      v34 = v25[4];
      v228 = v25[5];
      v227 = v34;
      v35 = *v25;
      v224 = v25[1];
      v223 = v35;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v36 = sub_1DAC5D170(&v232, &v223, a5);
      if (v6)
      {
LABEL_105:
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v209 = v227;
        v210 = v228;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_106:
        swift_bridgeObjectRelease_n();
      }

      v37 = v36;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v209 = v227;
      v210 = v228;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v38 = v11 + 2;
      if ((v11 + 2) >= v8)
      {
        v62 = (v11 + 2);
        if (v37)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v169 = v11;
        v39 = v13 + 136 * v11 + 272;
        while (1)
        {
          v40 = v38;
          v194[0] = *v39;
          v41 = *(v39 + 16);
          v42 = *(v39 + 32);
          v43 = *(v39 + 64);
          v194[3] = *(v39 + 48);
          v194[4] = v43;
          v194[1] = v41;
          v194[2] = v42;
          v44 = *(v39 + 80);
          v45 = *(v39 + 96);
          v46 = *(v39 + 112);
          v195 = *(v39 + 128);
          v194[6] = v45;
          v194[7] = v46;
          v194[5] = v44;
          v47 = *(v39 + 112);
          v191 = *(v39 + 96);
          v192 = v47;
          v193 = *(v39 + 128);
          v48 = *(v39 + 48);
          v187 = *(v39 + 32);
          v188 = v48;
          v49 = *(v39 + 80);
          v189 = *(v39 + 64);
          v190 = v49;
          v50 = *(v39 + 16);
          v185 = *v39;
          v186 = v50;
          v196 = *(v39 - 136);
          v51 = *(v39 - 120);
          v52 = *(v39 - 104);
          v53 = *(v39 - 72);
          v199 = *(v39 - 88);
          v200 = v53;
          v197 = v51;
          v198 = v52;
          v54 = *(v39 - 56);
          v55 = *(v39 - 40);
          v56 = *(v39 - 24);
          v204 = *(v39 - 8);
          v202 = v55;
          v203 = v56;
          v201 = v54;
          v57 = *(v39 - 56);
          v58 = *(v39 - 24);
          v182 = *(v39 - 40);
          v183 = v58;
          v184 = *(v39 - 8);
          v59 = *(v39 - 120);
          v60 = *(v39 - 88);
          v178 = *(v39 - 104);
          v179 = v60;
          v180 = *(v39 - 72);
          v181 = v57;
          v176 = *(v39 - 136);
          v177 = v59;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v61 = sub_1DAC5D170(&v185, &v176, a5);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v37 ^ v61))
          {
            break;
          }

          v38 = (v40 + 1);
          v39 += 136;
          if (v8 == v40 + 1)
          {
            v12 = v40;
            v62 = v8;
            goto LABEL_15;
          }
        }

        v62 = v40;
        v12 = v40 - 1;
LABEL_15:
        v11 = v169;
        if (v37)
        {
LABEL_16:
          if (v62 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v63 = v11;
            v64 = 136 * v62 - 136;
            v65 = 136 * v63;
            v166 = v62;
            v66 = v63;
            do
            {
              if (v63 != --v62)
              {
                v67 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v68 = v67 + v64;
                v201 = *(v67 + v65 + 80);
                v202 = *(v67 + v65 + 96);
                v203 = *(v67 + v65 + 112);
                v204 = *(v67 + v65 + 128);
                v197 = *(v67 + v65 + 16);
                v198 = *(v67 + v65 + 32);
                v199 = *(v67 + v65 + 48);
                v200 = *(v67 + v65 + 64);
                v196 = *(v67 + v65);
                memmove((v67 + v65), (v67 + v64), 0x88uLL);
                *(v68 + 80) = v201;
                *(v68 + 96) = v202;
                *(v68 + 112) = v203;
                *(v68 + 128) = v204;
                *(v68 + 16) = v197;
                *(v68 + 32) = v198;
                *(v68 + 48) = v199;
                *(v68 + 64) = v200;
                *v68 = v196;
              }

              ++v63;
              v64 -= 136;
              v65 += 136;
            }

            while (v63 < v62);
            v62 = v166;
            v11 = v66;
          }
        }
      }
    }

    v69 = a3[1];
    if (v62 >= v69)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v62, v11))
    {
      goto LABEL_124;
    }

    if (v62 - v11 >= a4)
    {
      goto LABEL_137;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_130:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_131;
    }

    if (&v11[a4] >= v69)
    {
      v70 = a3[1];
    }

    else
    {
      v70 = &v11[a4];
    }

    if (v70 < v11)
    {
      goto LABEL_127;
    }

    if (v62 == v70)
    {
LABEL_137:
      if (v62 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v121 = *a3;
      v122 = *a3 + 136 * v62;
      v123 = &v11[-v62 + 1];
      do
      {
        v168 = v62;
        v169 = v123;
        v124 = v123;
        v125 = v122;
        while (1)
        {
          v241 = *v122;
          v126 = *(v122 + 16);
          v127 = *(v122 + 32);
          v128 = *(v122 + 48);
          v245 = *(v122 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v122 + 80);
          v130 = *(v122 + 96);
          v131 = *(v122 + 112);
          v249 = *(v122 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v122 + 112);
          v238 = *(v122 + 96);
          v239 = v132;
          v240 = *(v122 + 128);
          v133 = *(v122 + 48);
          v234 = *(v122 + 32);
          v235 = v133;
          v134 = *(v122 + 64);
          v237 = *(v122 + 80);
          v236 = v134;
          v135 = *v122;
          v233 = *(v122 + 16);
          v232 = v135;
          v250 = *(v122 - 136);
          v136 = *(v122 - 120);
          v137 = *(v122 - 104);
          v138 = *(v122 - 72);
          v253 = *(v122 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v122 - 56);
          v140 = *(v122 - 40);
          v141 = *(v122 - 24);
          v258 = *(v122 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v122 - 56);
          v143 = *(v122 - 24);
          v229 = *(v122 - 40);
          v230 = v143;
          v231 = *(v122 - 8);
          v144 = *(v122 - 120);
          v145 = *(v122 - 88);
          v225 = *(v122 - 104);
          v226 = v145;
          v146 = *(v122 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v122 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAC5D170(&v232, &v223, a5);
          if (v6)
          {
            goto LABEL_105;
          }

          v149 = v148;
          v211 = v229;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v209 = v227;
          v210 = v228;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v121)
          {
            goto LABEL_130;
          }

          v150 = v122 - 136;
          v201 = *(v122 + 80);
          v202 = *(v122 + 96);
          v203 = *(v122 + 112);
          v204 = *(v122 + 128);
          v197 = *(v122 + 16);
          v198 = *(v122 + 32);
          v199 = *(v122 + 48);
          v200 = *(v122 + 64);
          v196 = *v122;
          v151 = *(v122 - 56);
          *(v122 + 64) = *(v122 - 72);
          *(v122 + 80) = v151;
          v152 = *(v122 - 24);
          *(v122 + 96) = *(v122 - 40);
          *(v122 + 112) = v152;
          *(v122 + 128) = *(v122 - 8);
          v153 = *(v122 - 88);
          *(v122 + 32) = *(v122 - 104);
          *(v122 + 48) = v153;
          v154 = *(v122 - 120);
          *v122 = *(v122 - 136);
          *(v122 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v122 -= 136;
        }

        v62 = v168 + 1;
        v122 = v125 + 136;
        v123 = (v169 - 1);
      }

      while ((v168 + 1) != v70);
      v62 = v70;
      if (v70 < v11)
      {
        goto LABEL_123;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAADB818(0, *(v10 + 2) + 1, 1, v10);
    }

    v72 = *(v10 + 2);
    v71 = *(v10 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v10 = sub_1DAADB818((v71 > 1), v72 + 1, 1, v10);
    }

    *(v10 + 2) = v73;
    v74 = &v10[16 * v72];
    *(v74 + 4) = v11;
    *(v74 + 5) = v62;
    v167 = v62;
    v169 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v72)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v167;
    a4 = v164;
    if (v167 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v75 = v73 - 1;
    if (v73 >= 4)
    {
      v80 = &v10[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_110;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_111;
      }

      v87 = &v10[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_113;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_116;
      }

      if (v91 >= v83)
      {
        v109 = &v10[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_122;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v73 == 3)
    {
      v76 = *(v10 + 4);
      v77 = *(v10 + 5);
      v86 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      v79 = v86;
LABEL_53:
      if (v79)
      {
        goto LABEL_112;
      }

      v92 = &v10[16 * v73];
      v94 = *v92;
      v93 = *(v92 + 1);
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_115;
      }

      v98 = &v10[16 * v75 + 32];
      v100 = *v98;
      v99 = *(v98 + 1);
      v86 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v86)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v96, v101))
      {
        goto LABEL_119;
      }

      if (v96 + v101 >= v78)
      {
        if (v78 < v101)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v102 = &v10[16 * v73];
    v104 = *v102;
    v103 = *(v102 + 1);
    v86 = __OFSUB__(v103, v104);
    v96 = v103 - v104;
    v97 = v86;
LABEL_67:
    if (v97)
    {
      goto LABEL_114;
    }

    v105 = &v10[16 * v75];
    v107 = *(v105 + 4);
    v106 = *(v105 + 5);
    v86 = __OFSUB__(v106, v107);
    v108 = v106 - v107;
    if (v86)
    {
      goto LABEL_117;
    }

    if (v108 < v96)
    {
      goto LABEL_3;
    }

LABEL_74:
    v113 = v75 - 1;
    if (v75 - 1 >= v73)
    {
      break;
    }

    v114 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v115 = *&v10[16 * v113 + 32];
    v116 = *&v10[16 * v75 + 40];
    v117 = (v114 + 136 * v115);
    v118 = (v114 + 136 * *&v10[16 * v75 + 32]);
    v119 = (v114 + 136 * v116);
    sub_1DACB71E4();
    sub_1DAC5D888(v117, v118, v119, v169, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v116 < v115)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAC0694C(v10);
    }

    if (v113 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v120 = &v10[16 * v113];
    *(v120 + 4) = v115;
    *(v120 + 5) = v116;
    v259 = v10;
    sub_1DAC068C0(v75);
    v10 = v259;
    v73 = *(v259 + 2);
    if (v73 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v10 = sub_1DAC0694C(v10);
LABEL_96:
  v259 = v10;
  v155 = *(v10 + 2);
  if (v155 < 2)
  {
LABEL_104:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v10[16 * v155];
      v158 = *&v10[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v10[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71E4();
      sub_1DAC5D888(v159, v160, v161, v169, a5);
      if (v6)
      {
        goto LABEL_104;
      }

      if (v158 < v157)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAC0694C(v10);
      }

      if (v155 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v162 = &v10[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v10;
      sub_1DAC068C0(v155 - 1);
      v10 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_133:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_134:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}