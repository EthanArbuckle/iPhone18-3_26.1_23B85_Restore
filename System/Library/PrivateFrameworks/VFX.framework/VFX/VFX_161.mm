void sub_1AFD55360(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFD55430()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AFD55500()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AFD555D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void (*sub_1AFD556C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1AFDFF248();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1AFDFD998();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_1AFD55A94(a2, a3, a4, v16);
  return sub_1AFD558EC;
}

void sub_1AFD558EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  v8 = *(*a1 + 24);
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1AFDFE9F8();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_1AFDFE9F8();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1AFD55A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v56 = a1;
  v57 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  v49 = a2;
  swift_getAssociatedConformanceWitness();
  v23 = sub_1AFDFD998();
  v24 = *(v23 - 8);
  v51 = v23;
  v52 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v46 - v26;
  v48 = v4;
  v50 = v6;
  sub_1AFDFD848();
  sub_1AFDFD888();
  sub_1AFDFCDC8();
  v28 = *(v14 + 32);
  v29 = v13;
  v28(v13, v22, AssociatedTypeWitness);
  v30 = TupleTypeMetadata2;
  v31 = &v13[*(TupleTypeMetadata2 + 48)];
  v46 = v13;
  v28(v31, v18, AssociatedTypeWitness);
  v32 = v28;
  v33 = v54;
  v34 = v55;
  (*(v55 + 16))(v54, v29, v30);
  v35 = *(v30 + 48);
  v32(v27, v33, AssociatedTypeWitness);
  v47 = v32;
  v36 = *(v14 + 8);
  v36(&v33[v35], AssociatedTypeWitness);
  (*(v34 + 32))(v33, v46, v30);
  v37 = v51;
  v32(&v27[*(v51 + 36)], &v33[*(v30 + 48)], AssociatedTypeWitness);
  v36(v33, AssociatedTypeWitness);
  v38 = v56;
  v39 = v48;
  v40 = v49;
  sub_1AFDFD858();
  v41 = v52;
  (*(v52 + 8))(v27, v37);
  v42 = sub_1AFDFF248();
  v43 = v57;
  (*(*(v40 - 8) + 16))(&v57[*(v42 + 40)], v39, v40);
  (*(v41 + 16))(v27, v38, v37);
  v44 = v47;
  v47(v43, v27, AssociatedTypeWitness);
  return v44(&v43[*(v42 + 36)], &v27[*(v37 + 36)], AssociatedTypeWitness);
}

uint64_t sub_1AFD55F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = a3;
  v175 = a3;
  v176 = a3;
  v177 = a3;
  v178 = a3;
  v179 = a3;
  v180 = a3;
  v181 = a3;
  v182 = a3;
  v183 = a3;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v10);
  v12 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v151 - v16;
  v18 = *(v9 + 16);
  v156 = a1;
  v18(&v151 - v16, a1, TupleTypeMetadata, v15);
  v19 = TupleTypeMetadata[12];
  v172 = TupleTypeMetadata[16];
  v173 = v19;
  v20 = TupleTypeMetadata[20];
  v170 = TupleTypeMetadata[24];
  v171 = v20;
  v21 = TupleTypeMetadata[28];
  v167 = TupleTypeMetadata[32];
  v168 = v21;
  v22 = TupleTypeMetadata[36];
  v165 = TupleTypeMetadata[40];
  v166 = v22;
  v164 = TupleTypeMetadata[44];
  v157 = a2;
  v155 = v9 + 16;
  v154 = v18;
  (v18)(v12, a2, TupleTypeMetadata);
  v163 = TupleTypeMetadata[12];
  v162 = TupleTypeMetadata[16];
  v161 = TupleTypeMetadata[20];
  v160 = TupleTypeMetadata[24];
  v159 = TupleTypeMetadata[28];
  v23 = TupleTypeMetadata[32];
  v24 = TupleTypeMetadata[36];
  v25 = TupleTypeMetadata[40];
  v26 = TupleTypeMetadata[44];
  v158 = a4;
  LODWORD(v169) = sub_1AFDFCE58();
  v27 = *(a3 - 8);
  v28 = *(v27 + 8);
  v153 = v27 + 8;
  v28(&v12[v26], a3);
  v28(&v12[v25], a3);
  v28(&v12[v24], a3);
  v28(&v12[v23], a3);
  v28(&v12[v159], a3);
  v28(&v12[v160], a3);
  v28(&v12[v161], a3);
  v28(&v12[v162], a3);
  v28(&v163[v12], a3);
  v163 = v12;
  v28(v12, a3);
  v28(&v17[v164], a3);
  v28(&v17[v165], a3);
  v28(&v17[v166], a3);
  v28(&v17[v167], a3);
  v28(&v17[v168], a3);
  v28(&v17[v170], a3);
  v28(&v17[v171], a3);
  v28(v172 + v17, a3);
  v28(&v173[v17], a3);
  v172 = v28;
  v173 = v17;
  v28(v17, a3);
  if ((v169 & 1) != 0
    && (v29 = v173, v30 = v154, v154(v173, v156, TupleTypeMetadata), v31 = TupleTypeMetadata[12], v32 = TupleTypeMetadata[16], v170 = TupleTypeMetadata[20], v171 = v32, v169 = TupleTypeMetadata[24], v33 = TupleTypeMetadata[28], v166 = v31, v167 = v33, v34 = TupleTypeMetadata[32], v164 = TupleTypeMetadata[36], v165 = v34, v162 = TupleTypeMetadata[40], v161 = TupleTypeMetadata[44], v35 = v163, v30(v163, v157, TupleTypeMetadata), v36 = TupleTypeMetadata[12], v160 = TupleTypeMetadata[16], v159 = TupleTypeMetadata[20], v152 = TupleTypeMetadata[24], v151 = TupleTypeMetadata[28], v37 = TupleTypeMetadata[32], v38 = TupleTypeMetadata[36], v39 = TupleTypeMetadata[40], v40 = TupleTypeMetadata[44], LODWORD(v168) = sub_1AFDFCE58(), v41 = &v35[v40], v42 = v172, v172(v41, a3), v42(&v35[v39], a3), v42(&v35[v38], a3), v42(&v35[v37], a3), v42(&v35[v151], a3), v42(&v35[v152], a3), v42(&v35[v159], a3), v42(&v35[v160], a3), v42(&v35[v36], a3), v42(v35, a3), v42(&v29[v161], a3), v42(&v29[v162], a3), v42(&v29[v164], a3), v42(&v29[v165], a3), v42(&v29[v167], a3), v42(&v29[v169], a3), v42(&v29[v170], a3), v42(&v29[v171], a3), v42(&v29[v166], a3), v42(v29, a3), (v168 & 1) != 0)
    && (v43 = v173, v44 = v154, v154(v173, v156, TupleTypeMetadata), v45 = TupleTypeMetadata[12], v46 = TupleTypeMetadata[16], v170 = TupleTypeMetadata[20], v171 = v45, v169 = TupleTypeMetadata[24], v167 = TupleTypeMetadata[28], v47 = TupleTypeMetadata[32], v165 = v46, v166 = v47, v164 = TupleTypeMetadata[36], v162 = TupleTypeMetadata[40], v161 = TupleTypeMetadata[44], v48 = v163, v44(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v49 = TupleTypeMetadata[16], v159 = TupleTypeMetadata[20], v152 = TupleTypeMetadata[24], v151 = TupleTypeMetadata[28], v50 = TupleTypeMetadata[32], v51 = TupleTypeMetadata[36], v52 = TupleTypeMetadata[40], v53 = TupleTypeMetadata[44], LODWORD(v168) = sub_1AFDFCE58(), v54 = &v48[v53], v55 = v172, v172(v54, a3), v55(&v48[v52], a3), v55(&v48[v51], a3), v55(&v48[v50], a3), v55(&v48[v151], a3), v55(&v48[v152], a3), v55(&v48[v159], a3), v55(&v48[v49], a3), v55(&v48[v160], a3), v55(v48, a3), v55(&v43[v161], a3), v55(&v43[v162], a3), v55(&v43[v164], a3), v55(&v43[v166], a3), v55(&v43[v167], a3), v55(&v43[v169], a3), v55(&v43[v170], a3), v55(&v43[v165], a3), v55(&v43[v171], a3), v55(v43, a3), (v168 & 1) != 0)
    && (v56 = v173, v57 = v154, v154(v173, v156, TupleTypeMetadata), v58 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v58, v59 = TupleTypeMetadata[20], v169 = TupleTypeMetadata[24], v167 = TupleTypeMetadata[28], v60 = TupleTypeMetadata[32], v165 = v59, v166 = v60, v164 = TupleTypeMetadata[36], v162 = TupleTypeMetadata[40], v161 = TupleTypeMetadata[44], v61 = v163, v57(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v62 = TupleTypeMetadata[20], v152 = TupleTypeMetadata[24], v151 = TupleTypeMetadata[28], v63 = TupleTypeMetadata[32], v64 = TupleTypeMetadata[36], v65 = TupleTypeMetadata[40], v66 = TupleTypeMetadata[44], LODWORD(v168) = sub_1AFDFCE58(), v67 = &v61[v66], v68 = v172, v172(v67, a3), v68(&v61[v65], a3), v68(&v61[v64], a3), v68(&v61[v63], a3), v68(&v61[v151], a3), v68(&v61[v152], a3), v68(&v61[v62], a3), v68(&v61[v159], a3), v68(&v61[v160], a3), v68(v61, a3), v68(&v56[v161], a3), v68(&v56[v162], a3), v68(&v56[v164], a3), v68(&v56[v166], a3), v68(&v56[v167], a3), v68(&v56[v169], a3), v68(&v56[v165], a3), v68(&v56[v170], a3), v68(&v56[v171], a3), v68(v56, a3), (v168 & 1) != 0)
    && (v69 = v173, v70 = v154, v154(v173, v156, TupleTypeMetadata), v71 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v71, v169 = TupleTypeMetadata[20], v72 = TupleTypeMetadata[24], v73 = TupleTypeMetadata[28], v166 = TupleTypeMetadata[32], v167 = v73, v74 = TupleTypeMetadata[36], v164 = v72, v165 = v74, v162 = TupleTypeMetadata[40], v161 = TupleTypeMetadata[44], v75 = v163, v70(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v152 = TupleTypeMetadata[20], v76 = TupleTypeMetadata[24], v151 = TupleTypeMetadata[28], v77 = TupleTypeMetadata[32], v78 = TupleTypeMetadata[36], v79 = TupleTypeMetadata[40], v80 = TupleTypeMetadata[44], LODWORD(v168) = sub_1AFDFCE58(), v81 = &v75[v80], v82 = v172, v172(v81, a3), v82(&v75[v79], a3), v82(&v75[v78], a3), v82(&v75[v77], a3), v82(&v75[v151], a3), v82(&v75[v76], a3), v82(&v75[v152], a3), v82(&v75[v159], a3), v82(&v75[v160], a3), v82(v75, a3), v82(&v69[v161], a3), v82(&v69[v162], a3), v82(&v69[v165], a3), v82(&v69[v166], a3), v82(&v69[v167], a3), v82(&v69[v164], a3), v82(&v69[v169], a3), v82(&v69[v170], a3), v82(&v69[v171], a3), v82(v69, a3), (v168 & 1) != 0)
    && (v83 = v173, v84 = v154, v154(v173, v156, TupleTypeMetadata), v85 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v85, v86 = TupleTypeMetadata[20], v168 = TupleTypeMetadata[24], v169 = v86, v162 = TupleTypeMetadata[28], v87 = TupleTypeMetadata[32], v165 = TupleTypeMetadata[36], v166 = v87, v164 = TupleTypeMetadata[40], v161 = TupleTypeMetadata[44], v88 = v163, v84(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v152 = TupleTypeMetadata[20], v151 = TupleTypeMetadata[24], v89 = TupleTypeMetadata[28], v90 = TupleTypeMetadata[32], v91 = TupleTypeMetadata[36], v92 = TupleTypeMetadata[40], v93 = TupleTypeMetadata[44], LODWORD(v167) = sub_1AFDFCE58(), v94 = &v88[v93], v95 = v172, v172(v94, a3), v95(&v88[v92], a3), v95(&v88[v91], a3), v95(&v88[v90], a3), v95(&v88[v89], a3), v95(&v88[v151], a3), v95(&v88[v152], a3), v95(&v88[v159], a3), v95(&v88[v160], a3), v95(v88, a3), v95(&v83[v161], a3), v95(&v83[v164], a3), v95(&v83[v165], a3), v95(&v83[v166], a3), v95(&v83[v162], a3), v95(&v83[v168], a3), v95(&v83[v169], a3), v95(&v83[v170], a3), v95(&v83[v171], a3), v95(v83, a3), (v167 & 1) != 0)
    && (v96 = v173, v97 = v154, v154(v173, v156, TupleTypeMetadata), v98 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v98, v99 = TupleTypeMetadata[20], v168 = TupleTypeMetadata[24], v169 = v99, v166 = TupleTypeMetadata[28], v161 = TupleTypeMetadata[32], v100 = TupleTypeMetadata[36], v164 = TupleTypeMetadata[40], v165 = v100, v162 = TupleTypeMetadata[44], v101 = v163, v97(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v152 = TupleTypeMetadata[20], v151 = TupleTypeMetadata[24], v102 = TupleTypeMetadata[28], v103 = TupleTypeMetadata[32], v104 = TupleTypeMetadata[36], v105 = TupleTypeMetadata[40], v106 = TupleTypeMetadata[44], LODWORD(v167) = sub_1AFDFCE58(), v107 = &v101[v106], v108 = v172, v172(v107, a3), v108(&v101[v105], a3), v108(&v101[v104], a3), v108(&v101[v103], a3), v108(&v101[v102], a3), v108(&v101[v151], a3), v108(&v101[v152], a3), v108(&v101[v159], a3), v108(&v101[v160], a3), v108(v101, a3), v108(&v96[v162], a3), v108(&v96[v164], a3), v108(&v96[v165], a3), v108(&v96[v161], a3), v108(&v96[v166], a3), v108(&v96[v168], a3), v108(&v96[v169], a3), v108(&v96[v170], a3), v108(&v96[v171], a3), v108(v96, a3), (v167 & 1) != 0)
    && (v109 = v173, v110 = v154, v154(v173, v156, TupleTypeMetadata), v111 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v111, v112 = TupleTypeMetadata[20], v168 = TupleTypeMetadata[24], v169 = v112, v113 = TupleTypeMetadata[28], v165 = TupleTypeMetadata[32], v166 = v113, v161 = TupleTypeMetadata[36], v164 = TupleTypeMetadata[40], v162 = TupleTypeMetadata[44], v114 = v163, v110(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v152 = TupleTypeMetadata[20], v151 = TupleTypeMetadata[24], v115 = TupleTypeMetadata[28], v116 = TupleTypeMetadata[32], v117 = TupleTypeMetadata[36], v118 = TupleTypeMetadata[40], v119 = TupleTypeMetadata[44], LODWORD(v167) = sub_1AFDFCE58(), v120 = &v114[v119], v121 = v172, v172(v120, a3), v121(&v114[v118], a3), v121(&v114[v117], a3), v121(&v114[v116], a3), v121(&v114[v115], a3), v121(&v114[v151], a3), v121(&v114[v152], a3), v121(&v114[v159], a3), v121(&v114[v160], a3), v121(v114, a3), v121(&v109[v162], a3), v121(&v109[v164], a3), v121(&v109[v161], a3), v121(&v109[v165], a3), v121(&v109[v166], a3), v121(&v109[v168], a3), v121(&v109[v169], a3), v121(&v109[v170], a3), v121(&v109[v171], a3), v121(v109, a3), (v167 & 1) != 0)
    && (v122 = v173, v123 = v154, v154(v173, v156, TupleTypeMetadata), v124 = TupleTypeMetadata[12], v170 = TupleTypeMetadata[16], v171 = v124, v125 = TupleTypeMetadata[20], v168 = TupleTypeMetadata[24], v169 = v125, v126 = TupleTypeMetadata[28], v165 = TupleTypeMetadata[32], v166 = v126, v164 = TupleTypeMetadata[36], v161 = TupleTypeMetadata[40], v162 = TupleTypeMetadata[44], v127 = v163, v123(v163, v157, TupleTypeMetadata), v160 = TupleTypeMetadata[12], v159 = TupleTypeMetadata[16], v152 = TupleTypeMetadata[20], v151 = TupleTypeMetadata[24], v128 = TupleTypeMetadata[28], v129 = TupleTypeMetadata[32], v130 = TupleTypeMetadata[36], v131 = TupleTypeMetadata[40], v132 = TupleTypeMetadata[44], LODWORD(v167) = sub_1AFDFCE58(), v133 = &v127[v132], v134 = v172, v172(v133, a3), v134(&v127[v131], a3), v134(&v127[v130], a3), v134(&v127[v129], a3), v134(&v127[v128], a3), v134(&v127[v151], a3), v134(&v127[v152], a3), v134(&v127[v159], a3), v134(&v127[v160], a3), v134(v127, a3), v134(&v122[v162], a3), v134(&v122[v161], a3), v134(&v122[v164], a3), v134(&v122[v165], a3), v134(&v122[v166], a3), v134(&v122[v168], a3), v134(&v122[v169], a3), v134(&v122[v170], a3), v134(&v122[v171], a3), v134(v122, a3), (v167 & 1) != 0))
  {
    v135 = v173;
    v136 = v154;
    v154(v173, v156, TupleTypeMetadata);
    v137 = TupleTypeMetadata[12];
    v170 = TupleTypeMetadata[16];
    v171 = v137;
    v138 = TupleTypeMetadata[20];
    v168 = TupleTypeMetadata[24];
    v169 = v138;
    v139 = TupleTypeMetadata[28];
    v166 = TupleTypeMetadata[32];
    v167 = v139;
    v140 = TupleTypeMetadata[36];
    v164 = TupleTypeMetadata[40];
    v165 = v140;
    v161 = TupleTypeMetadata[44];
    v141 = v163;
    v136(v163, v157, TupleTypeMetadata);
    v162 = TupleTypeMetadata[12];
    v160 = TupleTypeMetadata[16];
    v159 = TupleTypeMetadata[20];
    v157 = TupleTypeMetadata[24];
    v142 = TupleTypeMetadata[28];
    v143 = TupleTypeMetadata[32];
    v144 = TupleTypeMetadata[36];
    v145 = TupleTypeMetadata[40];
    v146 = TupleTypeMetadata[44];
    v147 = sub_1AFDFCE58();
    v148 = &v141[v146];
    v149 = v172;
    v172(v148, a3);
    v149(&v141[v145], a3);
    v149(&v141[v144], a3);
    v149(&v141[v143], a3);
    v149(&v141[v142], a3);
    v149(&v141[v157], a3);
    v149(&v141[v159], a3);
    v149(&v141[v160], a3);
    v149(&v141[v162], a3);
    v149(v141, a3);
    v149(&v135[v161], a3);
    v149(&v135[v164], a3);
    v149(&v135[v165], a3);
    v149(&v135[v166], a3);
    v149(&v135[v167], a3);
    v149(&v135[v168], a3);
    v149(&v135[v169], a3);
    v149(&v135[v170], a3);
    v149(&v135[v171], a3);
    v149(v135, a3);
  }

  else
  {
    v147 = 0;
  }

  return v147 & 1;
}

uint64_t sub_1AFD57D30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a3 + 16);
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = a1;
  v10[5] = v6;
  v10[6] = v6;
  v10[7] = v6;
  v10[8] = v6;
  v10[9] = v6;
  v10[10] = v6;
  v10[11] = v6;
  v10[12] = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1AFD555D4(v3, sub_1AFD62ED8, v10, TupleTypeMetadata, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);
  return (*(*(v6 - 8) + 8))(a1, v6);
}

void (*sub_1AFD57E0C(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v44 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x90uLL);
  }

  v9 = v8;
  v45 = a1;
  *a1 = v8;
  v8[8] = v5;
  v10 = *(a3 + 16);
  v8[9] = v10;
  *v8 = v10;
  v8[1] = v10;
  v8[2] = v10;
  v8[3] = v10;
  v8[4] = v10;
  v8[5] = v10;
  v8[6] = v10;
  v8[7] = v10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9[10] = TupleTypeMetadata;
  v12 = *(TupleTypeMetadata - 1);
  v13 = v12[8];
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
    v9[11] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(*(TupleTypeMetadata - 1) + 64));
    v9[11] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v9[12] = v15;
  v17 = *(v10 - 8);
  v18 = v17;
  v9[13] = v17;
  v19 = *(v17 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v43 = swift_coroFrameAlloc();
    v9[14] = v43;
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v43 = malloc(v19);
    v9[14] = v43;
    v20 = malloc(v19);
  }

  v41 = *v44;
  v21 = v41;
  v42 = v20;
  v9[15] = v20;
  v9[16] = v21;
  (v12[2])(v16, v5, TupleTypeMetadata);
  v22 = TupleTypeMetadata[12];
  v23 = TupleTypeMetadata[16];
  v44 = v12;
  v24 = TupleTypeMetadata[20];
  v25 = TupleTypeMetadata[28];
  v37 = TupleTypeMetadata[24];
  v38 = v25;
  v26 = TupleTypeMetadata[36];
  v39 = TupleTypeMetadata[32];
  v40 = v26;
  v27 = *(v18 + 32);
  v27(v14, v16, v10);
  v28 = v14 + v22;
  v29 = v16 + v22;
  v30 = v42;
  v27(v28, v29, v10);
  v27(v14 + v23, v16 + v23, v10);
  v27(v14 + v24, v16 + v24, v10);
  v27(v14 + v37, v16 + v37, v10);
  v27(v14 + v38, v16 + v38, v10);
  v27(v14 + v39, v16 + v39, v10);
  v31 = (v27)(v14 + v40, v16 + v40, v10);
  MEMORY[0x1EEE9AC00](v31, v32);
  v36[2] = v10;
  v36[3] = v41;
  v33 = v43;
  sub_1AF6F430C(v14, sub_1AFD62EA8, v36, TupleTypeMetadata, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v34);
  v9[17] = 0;
  (v44[1])(v14, TupleTypeMetadata);
  v27(v30, v33, v10);
  return sub_1AFD581F8;
}

void sub_1AFD581F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  v20 = *(*a1 + 96);
  v21 = v7;
  v10 = v2[8];
  v9 = v2[9];
  if (a2)
  {
    v11 = (*(v6 + 16))(v4, v5, v2[9]);
    MEMORY[0x1EEE9AC00](v11, v12);
    v17 = v9;
    v18 = v3;
    v19 = v4;
    sub_1AFD555D4(v10, sub_1AFD60DD4, v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    v14 = *(v6 + 8);
    v14(v4, v9);
    v14(v5, v9);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v17 = v9;
    v18 = v3;
    v19 = v5;
    sub_1AFD555D4(v10, sub_1AFD62ED8, v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
    (*(v6 + 8))(v5, v9);
  }

  free(v5);
  free(v4);
  free(v20);
  free(v21);
  free(v2);
}

uint64_t (*sub_1AFD583DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62903C;
}

uint64_t sub_1AFD584EC()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

uint64_t (*sub_1AFD58594(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AFD5861C(v6, *a2, a3);
  return sub_1AF629E74;
}

void (*sub_1AFD5861C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v38 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x70uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a3 + 16);
  v6[7] = v8;
  v6[8] = v8;
  *v6 = v8;
  v6[1] = v8;
  v6[2] = v8;
  v6[3] = v8;
  v6[4] = v8;
  v6[5] = v8;
  v6[6] = v8;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = *(TupleTypeMetadata - 1);
  v11 = *(v10 + 64);
  v39 = a1;
  if (v5)
  {
    v12 = swift_coroFrameAlloc();
    v7[9] = v12;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
    v7[9] = v12;
    v13 = malloc(v11);
  }

  v14 = v13;
  v7[10] = v13;
  v15 = *(v8 - 8);
  v16 = v15;
  v7[11] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v36 = swift_coroFrameAlloc();
    v7[12] = v36;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v36 = malloc(*(v15 + 64));
    v7[12] = v36;
    v18 = malloc(v17);
  }

  v35 = v18;
  v7[13] = v18;
  (*(v10 + 16))(v14, v37, TupleTypeMetadata);
  v19 = TupleTypeMetadata[12];
  v37 = v10;
  v20 = TupleTypeMetadata[16];
  v21 = TupleTypeMetadata[20];
  v22 = TupleTypeMetadata[24];
  v23 = TupleTypeMetadata[32];
  v32 = TupleTypeMetadata[28];
  v33 = v23;
  v34 = TupleTypeMetadata[36];
  v24 = *(v16 + 32);
  v24(v12, v14, v8);
  v24(v12 + v19, v14 + v19, v8);
  v24(v12 + v20, v14 + v20, v8);
  v24(v12 + v21, v14 + v21, v8);
  v24(v12 + v22, v14 + v22, v8);
  v24(v12 + v32, v14 + v32, v8);
  v24(v12 + v33, v14 + v33, v8);
  v25 = (v24)(v12 + v34, v14 + v34, v8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v31[2] = v8;
  v31[3] = v38;
  v27 = v36;
  sub_1AF6F430C(v12, sub_1AFD62EA8, v31, TupleTypeMetadata, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v28);
  v29 = v35;
  (*(v37 + 8))(v12, TupleTypeMetadata);
  v24(v29, v27, v8);
  return sub_1AFD589E4;
}

void sub_1AFD589E4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 96);
  v2 = *(*a1 + 104);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  (*(*(*a1 + 88) + 8))(v2, *(*a1 + 64));
  free(v2);
  free(v3);
  free(v4);
  free(v5);

  free(v1);
}

uint64_t sub_1AFD58A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AFD58AD0()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

uint64_t sub_1AFD58B3C()
{
  swift_getWitnessTable();

  return sub_1AFDFD7F8();
}

uint64_t sub_1AFD58BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AFD58C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v59 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v68 = v6;
  v69 = v6;
  v70 = v6;
  v71 = v6;
  v72 = v6;
  v73 = v6;
  v74 = v6;
  v75 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v8);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v45 - v12;
  v58 = v6;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_1AFDFE468();
  v46 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v45 - v20;
  v22 = *(*(a2 - 8) + 16);
  v60 = a2;
  v22(v21, v4, a2, v19);
  v23 = 0;
  v24 = 0;
  v47 = v17;
  v25 = *(v17 + 36);
  v67 = v21;
  v52 = v25;
  *&v21[v25] = 0;
  v51 = *(v7 + 16);
  v50 = v13 + 32;
  v56 = v7 + 16;
  v49 = (v7 + 8);
  v48 = (v13 + 8);
  v26 = (v13 + 32);
  v27 = v58;
  do
  {
    v65 = v23;
    v66 = v24;
    v28 = v54;
    v29 = TupleTypeMetadata;
    v51(v54, v67, TupleTypeMetadata);
    v30 = v29[12];
    v31 = v29[16];
    v32 = v29[20];
    v33 = v29[24];
    v34 = v29[32];
    v62 = v29[28];
    v63 = v34;
    v64 = v29[36];
    v35 = *v26;
    v36 = v55;
    (*v26)(v55, v28, v27);
    v35((v36 + v30), &v28[v30], v27);
    v35((v36 + v31), &v28[v31], v27);
    v35((v36 + v32), &v28[v32], v27);
    v35((v36 + v33), &v28[v33], v27);
    v35((v36 + v62), &v28[v62], v27);
    v35((v36 + v63), &v28[v63], v27);
    v37 = (v35)(v36 + v64, &v28[v64], v27);
    MEMORY[0x1EEE9AC00](v37, v38);
    v39 = v65;
    v24 = v66;
    *(&v45 - 2) = v27;
    *(&v45 - 1) = v39;
    v40 = v53;
    sub_1AF6F430C(v36, sub_1AFD60AE0, (&v45 - 4), v29, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v41);
    (*v49)(v36, v29);
    v68 = v39;
    swift_getWitnessTable();
    v42 = v52;
    v43 = v67;
    sub_1AFDFD7F8();
    sub_1AFDFCD08();
    (*v48)(v40, v27);
    v23 = *&v43[v42];
  }

  while (v23 != 8);
  return (*(v46 + 8))(v67, v47);
}

uint64_t sub_1AFD591E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = a3;
  v128 = a3;
  v129 = a3;
  v130 = a3;
  v131 = a3;
  v132 = a3;
  v133 = a3;
  v134 = a3;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v10);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v108 - v16;
  v18 = *(v9 + 16);
  v113 = a1;
  v18(&v108 - v16, a1, TupleTypeMetadata, v15);
  v19 = TupleTypeMetadata[12];
  v125 = TupleTypeMetadata[16];
  v126 = v19;
  v20 = TupleTypeMetadata[20];
  v123 = TupleTypeMetadata[24];
  v124 = v20;
  v21 = TupleTypeMetadata[28];
  v120 = TupleTypeMetadata[32];
  v121 = v21;
  v119 = TupleTypeMetadata[36];
  v114 = a2;
  v112 = v9 + 16;
  v111 = v18;
  (v18)(v12, a2, TupleTypeMetadata);
  v22 = TupleTypeMetadata[12];
  v117 = TupleTypeMetadata[16];
  v118 = v22;
  v23 = TupleTypeMetadata[20];
  v115 = a4;
  v116 = v23;
  v24 = TupleTypeMetadata[24];
  v25 = TupleTypeMetadata[28];
  v26 = TupleTypeMetadata[32];
  v27 = TupleTypeMetadata[36];
  LODWORD(v122) = sub_1AFDFCE58();
  v28 = *(*(a3 - 8) + 8);
  v28(&v12[v27], a3);
  v28(&v12[v26], a3);
  v28(&v12[v25], a3);
  v28(&v12[v24], a3);
  v28(&v12[v116], a3);
  v28(&v12[v117], a3);
  v28(&v118[v12], a3);
  v118 = v12;
  v28(v12, a3);
  v28(&v17[v119], a3);
  v28(&v17[v120], a3);
  v28(&v17[v121], a3);
  v28(&v17[v123], a3);
  v28(&v17[v124], a3);
  v28(&v17[v125], a3);
  v28(&v126[v17], a3);
  v126 = v17;
  v28(v17, a3);
  if ((v122 & 1) != 0
    && (v29 = v126, v30 = v111, v111(v126, v113, TupleTypeMetadata), v31 = TupleTypeMetadata[12], v32 = TupleTypeMetadata[16], v124 = TupleTypeMetadata[20], v125 = v32, v33 = TupleTypeMetadata[24], v122 = v31, v123 = v33, v34 = TupleTypeMetadata[28], v120 = TupleTypeMetadata[32], v121 = v34, v119 = TupleTypeMetadata[36], v35 = v118, v30(v118, v114, TupleTypeMetadata), v36 = TupleTypeMetadata[12], v37 = TupleTypeMetadata[16], v116 = TupleTypeMetadata[20], v117 = v37, v110 = TupleTypeMetadata[24], v109 = TupleTypeMetadata[28], v38 = TupleTypeMetadata[32], v39 = TupleTypeMetadata[36], LOBYTE(v31) = sub_1AFDFCE58(), v28(&v35[v39], a3), v28(&v35[v38], a3), v28(&v35[v109], a3), v28(&v35[v110], a3), v28(&v35[v116], a3), v28(&v35[v117], a3), v28(&v35[v36], a3), v28(v35, a3), v28(&v29[v119], a3), v28(&v29[v120], a3), v28(&v29[v121], a3), v28(&v29[v123], a3), v28(&v29[v124], a3), v28(&v29[v125], a3), v28(&v29[v122], a3), v28(v29, a3), (v31 & 1) != 0)
    && (v40 = v126, v41 = v111, v111(v126, v113, TupleTypeMetadata), v42 = TupleTypeMetadata[12], v43 = TupleTypeMetadata[16], v124 = TupleTypeMetadata[20], v125 = v42, v123 = TupleTypeMetadata[24], v44 = TupleTypeMetadata[28], v121 = v43, v122 = v44, v45 = TupleTypeMetadata[32], v119 = TupleTypeMetadata[36], v120 = v45, v46 = v118, v41(v118, v114, TupleTypeMetadata), v47 = TupleTypeMetadata[12], v48 = TupleTypeMetadata[16], v116 = TupleTypeMetadata[20], v117 = v47, v110 = TupleTypeMetadata[24], v109 = TupleTypeMetadata[28], v49 = TupleTypeMetadata[32], v50 = TupleTypeMetadata[36], LOBYTE(v43) = sub_1AFDFCE58(), v28(&v46[v50], a3), v28(&v46[v49], a3), v28(&v46[v109], a3), v28(&v46[v110], a3), v28(&v46[v116], a3), v28(&v46[v48], a3), v28(&v46[v117], a3), v28(v46, a3), v28(&v40[v119], a3), v28(&v40[v120], a3), v28(&v40[v122], a3), v28(&v40[v123], a3), v28(&v40[v124], a3), v28(&v40[v121], a3), v28(&v40[v125], a3), v28(v40, a3), (v43 & 1) != 0)
    && (v51 = v126, v52 = v111, v111(v126, v113, TupleTypeMetadata), v53 = TupleTypeMetadata[12], v124 = TupleTypeMetadata[16], v125 = v53, v54 = TupleTypeMetadata[20], v55 = TupleTypeMetadata[24], v122 = TupleTypeMetadata[28], v123 = v55, v56 = TupleTypeMetadata[32], v120 = v54, v121 = v56, v119 = TupleTypeMetadata[36], v57 = v118, v52(v118, v114, TupleTypeMetadata), v58 = TupleTypeMetadata[12], v116 = TupleTypeMetadata[16], v117 = v58, v59 = TupleTypeMetadata[20], v110 = TupleTypeMetadata[24], v109 = TupleTypeMetadata[28], v60 = TupleTypeMetadata[32], v61 = TupleTypeMetadata[36], LOBYTE(v54) = sub_1AFDFCE58(), v28(&v57[v61], a3), v28(&v57[v60], a3), v28(&v57[v109], a3), v28(&v57[v110], a3), v28(&v57[v59], a3), v28(&v57[v116], a3), v28(&v57[v117], a3), v28(v57, a3), v28(&v51[v119], a3), v28(&v51[v121], a3), v28(&v51[v122], a3), v28(&v51[v123], a3), v28(&v51[v120], a3), v28(&v51[v124], a3), v28(&v51[v125], a3), v28(v51, a3), (v54 & 1) != 0)
    && (v62 = v126, v63 = v111, v111(v126, v113, TupleTypeMetadata), v64 = TupleTypeMetadata[12], v124 = TupleTypeMetadata[16], v125 = v64, v65 = TupleTypeMetadata[20], v66 = TupleTypeMetadata[24], v122 = TupleTypeMetadata[28], v123 = v65, v121 = TupleTypeMetadata[32], v67 = TupleTypeMetadata[36], v119 = v66, v120 = v67, v68 = v118, v63(v118, v114, TupleTypeMetadata), v69 = TupleTypeMetadata[12], v116 = TupleTypeMetadata[16], v117 = v69, v110 = TupleTypeMetadata[20], v70 = TupleTypeMetadata[24], v109 = TupleTypeMetadata[28], v71 = TupleTypeMetadata[32], v72 = TupleTypeMetadata[36], LOBYTE(v66) = sub_1AFDFCE58(), v28(&v68[v72], a3), v28(&v68[v71], a3), v28(&v68[v109], a3), v28(&v68[v70], a3), v28(&v68[v110], a3), v28(&v68[v116], a3), v28(&v68[v117], a3), v28(v68, a3), v28(&v62[v120], a3), v28(&v62[v121], a3), v28(&v62[v122], a3), v28(&v62[v119], a3), v28(&v62[v123], a3), v28(&v62[v124], a3), v28(&v62[v125], a3), v28(v62, a3), (v66 & 1) != 0)
    && (v73 = v126, v74 = v111, v111(v126, v113, TupleTypeMetadata), v75 = TupleTypeMetadata[12], v124 = TupleTypeMetadata[16], v125 = v75, v76 = TupleTypeMetadata[20], v122 = TupleTypeMetadata[24], v123 = v76, v77 = TupleTypeMetadata[28], v78 = TupleTypeMetadata[32], v119 = TupleTypeMetadata[36], v120 = v78, v79 = v118, v74(v118, v114, TupleTypeMetadata), v80 = TupleTypeMetadata[12], v116 = TupleTypeMetadata[16], v117 = v80, v110 = TupleTypeMetadata[20], v109 = TupleTypeMetadata[24], v81 = TupleTypeMetadata[28], v82 = TupleTypeMetadata[32], v83 = TupleTypeMetadata[36], LODWORD(v121) = sub_1AFDFCE58(), v28(&v79[v83], a3), v28(&v79[v82], a3), v28(&v79[v81], a3), v28(&v79[v109], a3), v28(&v79[v110], a3), v28(&v79[v116], a3), v28(&v79[v117], a3), v28(v79, a3), v28(&v73[v119], a3), v28(&v73[v120], a3), v28(&v73[v77], a3), v28(&v73[v122], a3), v28(&v73[v123], a3), v28(&v73[v124], a3), v28(&v73[v125], a3), v28(v73, a3), (v121 & 1) != 0)
    && (v84 = v126, v85 = v111, v111(v126, v113, TupleTypeMetadata), v86 = TupleTypeMetadata[12], v124 = TupleTypeMetadata[16], v125 = v86, v87 = TupleTypeMetadata[20], v122 = TupleTypeMetadata[24], v123 = v87, v88 = TupleTypeMetadata[28], v89 = TupleTypeMetadata[32], v119 = TupleTypeMetadata[36], v120 = v88, v90 = v118, v85(v118, v114, TupleTypeMetadata), v91 = TupleTypeMetadata[12], v116 = TupleTypeMetadata[16], v117 = v91, v110 = TupleTypeMetadata[20], v109 = TupleTypeMetadata[24], v92 = TupleTypeMetadata[28], v93 = TupleTypeMetadata[32], v94 = TupleTypeMetadata[36], LODWORD(v121) = sub_1AFDFCE58(), v28(&v90[v94], a3), v28(&v90[v93], a3), v28(&v90[v92], a3), v28(&v90[v109], a3), v28(&v90[v110], a3), v28(&v90[v116], a3), v28(&v90[v117], a3), v28(v90, a3), v28(&v84[v119], a3), v28(&v84[v89], a3), v28(&v84[v120], a3), v28(&v84[v122], a3), v28(&v84[v123], a3), v28(&v84[v124], a3), v28(&v84[v125], a3), v28(v84, a3), (v121 & 1) != 0))
  {
    v95 = v126;
    v96 = v111;
    v111(v126, v113, TupleTypeMetadata);
    v97 = TupleTypeMetadata[12];
    v124 = TupleTypeMetadata[16];
    v125 = v97;
    v98 = TupleTypeMetadata[20];
    v122 = TupleTypeMetadata[24];
    v123 = v98;
    v99 = TupleTypeMetadata[28];
    v120 = TupleTypeMetadata[32];
    v121 = v99;
    v100 = TupleTypeMetadata[36];
    v101 = v118;
    v96(v118, v114, TupleTypeMetadata);
    v119 = TupleTypeMetadata[12];
    v102 = TupleTypeMetadata[16];
    v116 = TupleTypeMetadata[20];
    v117 = v102;
    v114 = TupleTypeMetadata[24];
    v103 = TupleTypeMetadata[28];
    v104 = TupleTypeMetadata[32];
    v105 = TupleTypeMetadata[36];
    v106 = sub_1AFDFCE58();
    v28(&v101[v105], a3);
    v28(&v101[v104], a3);
    v28(&v101[v103], a3);
    v28(&v101[v114], a3);
    v28(&v101[v116], a3);
    v28(&v101[v117], a3);
    v28(&v101[v119], a3);
    v28(v101, a3);
    v28(&v95[v100], a3);
    v28(&v95[v120], a3);
    v28(&v95[v121], a3);
    v28(&v95[v122], a3);
    v28(&v95[v123], a3);
    v28(&v95[v124], a3);
    v28(&v95[v125], a3);
    v28(v95, a3);
  }

  else
  {
    v106 = 0;
  }

  return v106 & 1;
}

uint64_t sub_1AFD5A4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int *a12)
{
  v83 = a8;
  v79 = a7;
  v80 = a9;
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v81 = a12;
  v77 = a11;
  v86 = a10;
  v87 = a10;
  v88 = a10;
  v89 = a10;
  v90 = a10;
  v91 = a10;
  v92 = a10;
  v93 = a10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v78 = *(TupleTypeMetadata - 1);
  v15 = v78;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v71 - v22;
  v82 = &v71 - v22;
  v24 = *(a10 - 8);
  v25 = *(v24 + 32);
  v25(&v71 - v22, a1, a10, v21);
  (v25)(&v23[TupleTypeMetadata[12]], a2, a10);
  (v25)(&v23[TupleTypeMetadata[16]], v73, a10);
  (v25)(&v23[TupleTypeMetadata[20]], v74, a10);
  (v25)(&v23[TupleTypeMetadata[24]], v75, a10);
  (v25)(&v23[TupleTypeMetadata[28]], v76, a10);
  (v25)(&v23[TupleTypeMetadata[32]], v79, a10);
  (v25)(&v23[TupleTypeMetadata[36]], v83, a10);
  v84 = v24 + 32;
  v85 = v25;
  v26 = v25;
  v27 = *(v15 + 16);
  v79 = v15 + 16;
  v83 = v27;
  (v27)(v18, v23, TupleTypeMetadata);
  v28 = TupleTypeMetadata[12];
  v75 = TupleTypeMetadata[16];
  v76 = v28;
  v74 = TupleTypeMetadata[20];
  v29 = TupleTypeMetadata[24];
  v30 = TupleTypeMetadata[28];
  v31 = TupleTypeMetadata[32];
  v32 = TupleTypeMetadata[36];
  v26(v80, v18, a10);
  v33 = *(v24 + 8);
  v33(&v18[v32], a10);
  v33(&v18[v31], a10);
  v33(&v18[v30], a10);
  v33(&v18[v29], a10);
  v33(&v18[v74], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  (v83)(v18, v82, TupleTypeMetadata);
  v34 = TupleTypeMetadata[12];
  v35 = TupleTypeMetadata[16];
  v75 = TupleTypeMetadata[20];
  v76 = v35;
  v36 = TupleTypeMetadata[24];
  v73 = TupleTypeMetadata[28];
  v74 = v36;
  v72 = TupleTypeMetadata[32];
  v37 = TupleTypeMetadata[36];
  v81 = type metadata accessor for __FixedArrayCodableStorage8();
  v38 = v80;
  v39 = v85;
  v85(v80 + v81[11], &v18[v34], a10);
  v33(&v18[v37], a10);
  v33(&v18[v72], a10);
  v33(&v18[v73], a10);
  v33(&v18[v74], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  v33(v18, a10);
  (v83)(v18, v82, TupleTypeMetadata);
  v40 = TupleTypeMetadata[12];
  v41 = TupleTypeMetadata[16];
  v76 = TupleTypeMetadata[20];
  v77 = v40;
  v75 = TupleTypeMetadata[24];
  v42 = TupleTypeMetadata[28];
  v43 = TupleTypeMetadata[32];
  v44 = TupleTypeMetadata[36];
  v39(v38 + v81[12], &v18[v41], a10);
  v33(&v18[v44], a10);
  v33(&v18[v43], a10);
  v33(&v18[v42], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  v33(&v18[v77], a10);
  v33(v18, a10);
  v45 = v82;
  (v83)(v18, v82, TupleTypeMetadata);
  v46 = TupleTypeMetadata[12];
  v76 = TupleTypeMetadata[16];
  v77 = v46;
  v47 = TupleTypeMetadata[20];
  v48 = TupleTypeMetadata[24];
  v74 = TupleTypeMetadata[28];
  v75 = v48;
  v49 = TupleTypeMetadata[32];
  v50 = TupleTypeMetadata[36];
  v51 = v80;
  v85(v80 + v81[13], &v18[v47], a10);
  v33(&v18[v50], a10);
  v33(&v18[v49], a10);
  v33(&v18[v74], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  v33(&v18[v77], a10);
  v33(v18, a10);
  (v83)(v18, v45, TupleTypeMetadata);
  v52 = TupleTypeMetadata[12];
  v76 = TupleTypeMetadata[16];
  v77 = v52;
  v75 = TupleTypeMetadata[20];
  v53 = TupleTypeMetadata[28];
  v54 = TupleTypeMetadata[32];
  v55 = TupleTypeMetadata[36];
  v56 = v81;
  v85(v51 + v81[14], &v18[TupleTypeMetadata[24]], a10);
  v33(&v18[v55], a10);
  v33(&v18[v54], a10);
  v33(&v18[v53], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  v33(&v18[v77], a10);
  v33(v18, a10);
  v57 = v82;
  (v83)(v18, v82, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v76 = TupleTypeMetadata[16];
  v77 = v58;
  v59 = TupleTypeMetadata[20];
  v74 = TupleTypeMetadata[24];
  v75 = v59;
  v60 = TupleTypeMetadata[32];
  v61 = TupleTypeMetadata[36];
  v85(v51 + v56[15], &v18[TupleTypeMetadata[28]], a10);
  v33(&v18[v61], a10);
  v33(&v18[v60], a10);
  v33(&v18[v74], a10);
  v33(&v18[v75], a10);
  v33(&v18[v76], a10);
  v33(&v18[v77], a10);
  v33(v18, a10);
  (v83)(v18, v57, TupleTypeMetadata);
  v83 = TupleTypeMetadata[12];
  v79 = TupleTypeMetadata[16];
  v77 = TupleTypeMetadata[20];
  v62 = TupleTypeMetadata[24];
  v63 = TupleTypeMetadata[28];
  v64 = TupleTypeMetadata[36];
  v85(v51 + v81[16], &v18[TupleTypeMetadata[32]], a10);
  v33(&v18[v64], a10);
  v33(&v18[v63], a10);
  v33(&v18[v62], a10);
  v33(&v18[v77], a10);
  v33(&v18[v79], a10);
  v33(&v83[v18], a10);
  v33(v18, a10);
  (*(v78 + 32))(v18, v82, TupleTypeMetadata);
  v65 = TupleTypeMetadata[12];
  v83 = TupleTypeMetadata[16];
  v66 = TupleTypeMetadata[20];
  v67 = TupleTypeMetadata[24];
  v68 = TupleTypeMetadata[28];
  v69 = TupleTypeMetadata[32];
  v85(v80 + v81[17], &v18[TupleTypeMetadata[36]], a10);
  v33(&v18[v69], a10);
  v33(&v18[v68], a10);
  v33(&v18[v67], a10);
  v33(&v18[v66], a10);
  v33(&v83[v18], a10);
  v33(&v18[v65], a10);
  return (v33)(v18, a10);
}

uint64_t sub_1AFD5AF50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3170143 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 3235679 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 3301215 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 3366751 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 3432287 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 3497823 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 3563359 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 3628895 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AFD5B198(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[0] = a2;
  v11[1] = v3;
  type metadata accessor for __FixedArrayCodableStorage8.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AFDFE9A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v19 = 0;
  v9 = v11[3];
  sub_1AFDFE918();
  if (!v9)
  {
    v18 = 1;
    sub_1AFDFE918();
    v17 = 2;
    sub_1AFDFE918();
    v16 = 3;
    sub_1AFDFE918();
    v15 = 4;
    sub_1AFDFE918();
    v14 = 5;
    sub_1AFDFE918();
    v13 = 6;
    sub_1AFDFE918();
    v12 = 7;
    sub_1AFDFE918();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFD5B454@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v67 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v57 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v58 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v59 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v60 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v61 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v62 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v63 = &v53 - v28;
  type metadata accessor for __FixedArrayCodableStorage8.CodingKeys();
  swift_getWitnessTable();
  v69 = sub_1AFDFE818();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v29);
  v31 = &v53 - v30;
  v64 = a2;
  v66 = a3;
  v32 = type metadata accessor for __FixedArrayCodableStorage8();
  v54 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v53 - v34;
  sub_1AF441150(a1, a1[3]);
  v68 = v31;
  v36 = v70;
  sub_1AFDFF3B8();
  if (v36)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v37 = v67;
  v78 = 0;
  v38 = v63;
  v39 = v64;
  sub_1AFDFE768();
  v70 = *(v37 + 32);
  v70(v35, v38, v39);
  v77 = 1;
  v40 = v62;
  sub_1AFDFE768();
  v41 = *(v32 + 44);
  v63 = v35;
  v70(&v35[v41], v40, v39);
  v76 = 2;
  v42 = v61;
  v62 = 0;
  sub_1AFDFE768();
  v53 = a1;
  v70(&v63[*(v32 + 48)], v42, v39);
  v75 = 3;
  v43 = v60;
  sub_1AFDFE768();
  v44 = v32;
  v45 = v63;
  v70(&v63[v44[13]], v43, v39);
  v74 = 4;
  v46 = v59;
  sub_1AFDFE768();
  v70(&v45[v44[14]], v46, v39);
  v73 = 5;
  v47 = v58;
  sub_1AFDFE768();
  v48 = v53;
  v70(&v45[v44[15]], v47, v39);
  v72 = 6;
  v49 = v57;
  sub_1AFDFE768();
  v70(&v45[v44[16]], v49, v39);
  v71 = 7;
  v50 = v56;
  sub_1AFDFE768();
  (*(v65 + 8))(v68, v69);
  v70(&v45[v44[17]], v50, v39);
  v51 = v54;
  (*(v54 + 16))(v55, v45, v44);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
  return (*(v51 + 8))(v45, v44);
}

uint64_t sub_1AFD5BD60()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AFD5BDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFD5AF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFD5BE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF494010();
  *a1 = result;
  return result;
}

uint64_t sub_1AFD5BE4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AFD5BEA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AFD5BF30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = type metadata accessor for __FixedArrayCodableStorage8();
  MEMORY[0x1EEE9AC00](v25, v6);
  v35 = &v19 - v7;
  v8 = type metadata accessor for FixedArray8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v3)
  {
    v21 = v12;
    v22 = v9;
    v23 = v8;
    sub_1AF441150(v34, v34[3]);
    v13 = v25;
    swift_getWitnessTable();
    v14 = v35;
    sub_1AFDFEE88();
    v15 = *(*(a2 - 8) + 32);
    v16 = v21;
    v15(v21, v14, a2);
    v20 = v13[11];
    v26 = a2;
    v27 = a2;
    v28 = a2;
    v29 = a2;
    v30 = a2;
    v31 = a2;
    v32 = a2;
    v33 = a2;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15(&v16[TupleTypeMetadata[12]], &v14[v20], a2);
    v15(&v16[TupleTypeMetadata[16]], &v14[v13[12]], a2);
    v15(&v16[TupleTypeMetadata[20]], &v14[v13[13]], a2);
    v15(&v16[TupleTypeMetadata[24]], &v14[v13[14]], a2);
    v15(&v16[TupleTypeMetadata[28]], &v14[v13[15]], a2);
    v15(&v16[TupleTypeMetadata[32]], &v14[v13[16]], a2);
    v15(&v16[TupleTypeMetadata[36]], &v14[v13[17]], a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
    (*(v22 + 32))(v24, v16, v23);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AFD5C268(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v17 = a3;
  v16 = a4;
  v5 = *(a2 + 16);
  v20[0] = v5;
  v20[1] = v5;
  v20[2] = v5;
  v21 = v5;
  v22 = v5;
  v23 = v5;
  v24 = v5;
  v25 = v5;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for __FixedArrayCodableStorage8();
  v19 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  (*(v7 + 16))(v10, v18, TupleTypeMetadata);
  sub_1AFD5A4FC(v10, &v10[TupleTypeMetadata[12]], &v10[TupleTypeMetadata[16]], &v10[TupleTypeMetadata[20]], &v10[TupleTypeMetadata[24]], &v10[TupleTypeMetadata[28]], &v10[TupleTypeMetadata[32]], &v10[TupleTypeMetadata[36]], v14, v5, v17, v16);
  sub_1AF448018(v20, v21);
  swift_getWitnessTable();
  sub_1AFDFEF28();
  (*(v19 + 8))(v14, v11);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
}

uint64_t sub_1AFD5C534(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *(a3 + 16);
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = a1;
  v11[5] = v7;
  v11[6] = v7;
  v11[7] = v7;
  v11[8] = v7;
  v11[9] = v7;
  v11[10] = v7;
  v11[11] = v7;
  v11[12] = v7;
  v11[13] = v7;
  v11[14] = v7;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1AFD555D4(v4, sub_1AFD62EF0, v11, TupleTypeMetadata, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
  return (*(*(v7 - 8) + 8))(a1, v7);
}

void (*sub_1AFD5C618(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v47 = a2;
  v49 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA0uLL);
  }

  v9 = v8;
  v48 = a1;
  *a1 = v8;
  v8[10] = v5;
  v10 = *(a3 + 16);
  v8[11] = v10;
  *v8 = v10;
  v8[1] = v10;
  v8[2] = v10;
  v8[3] = v10;
  v8[4] = v10;
  v8[5] = v10;
  v8[6] = v10;
  v8[7] = v10;
  v8[8] = v10;
  v8[9] = v10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9[12] = TupleTypeMetadata;
  v12 = *(TupleTypeMetadata - 1);
  v13 = v12[8];
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
    v9[13] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(*(TupleTypeMetadata - 1) + 64));
    v9[13] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v9[14] = v15;
  v17 = *(v10 - 8);
  v18 = v17;
  v9[15] = v17;
  v19 = *(v17 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v46 = swift_coroFrameAlloc();
    v9[16] = v46;
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v46 = malloc(v19);
    v9[16] = v46;
    v20 = malloc(v19);
  }

  v44 = *v47;
  v21 = v44;
  v45 = v20;
  v9[17] = v20;
  v9[18] = v21;
  (v12[2])(v16, v5, TupleTypeMetadata);
  v22 = TupleTypeMetadata[12];
  v47 = v12;
  v23 = TupleTypeMetadata[16];
  v24 = TupleTypeMetadata[20];
  v25 = TupleTypeMetadata[28];
  v38 = TupleTypeMetadata[24];
  v39 = v25;
  v26 = TupleTypeMetadata[36];
  v40 = TupleTypeMetadata[32];
  v41 = v26;
  v27 = TupleTypeMetadata[44];
  v42 = TupleTypeMetadata[40];
  v43 = v27;
  v28 = *(v18 + 32);
  v28(v14, v16, v10);
  v28(v14 + v22, v16 + v22, v10);
  v28(v14 + v23, v16 + v23, v10);
  v29 = v14 + v24;
  v30 = v16 + v24;
  v31 = v45;
  v28(v29, v30, v10);
  v28(v14 + v38, v16 + v38, v10);
  v28(v14 + v39, v16 + v39, v10);
  v28(v14 + v40, v16 + v40, v10);
  v28(v14 + v41, v16 + v41, v10);
  v28(v14 + v42, v16 + v42, v10);
  v32 = (v28)(v14 + v43, v16 + v43, v10);
  MEMORY[0x1EEE9AC00](v32, v33);
  v37[2] = v10;
  v37[3] = v44;
  v34 = v46;
  sub_1AF6F430C(v14, sub_1AFD62EC0, v37, TupleTypeMetadata, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v35);
  v9[19] = 0;
  (v47[1])(v14, TupleTypeMetadata);
  v28(v31, v34, v10);
  return sub_1AFD5CA4C;
}

void sub_1AFD5CA4C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  v4 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 120);
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v20 = *(*a1 + 112);
  v21 = v7;
  v10 = v2[10];
  v9 = v2[11];
  if (a2)
  {
    v11 = (*(v6 + 16))(v4, v5, v2[11]);
    MEMORY[0x1EEE9AC00](v11, v12);
    v17 = v9;
    v18 = v3;
    v19 = v4;
    sub_1AFD555D4(v10, sub_1AFD60E68, v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    v14 = *(v6 + 8);
    v14(v4, v9);
    v14(v5, v9);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v17 = v9;
    v18 = v3;
    v19 = v5;
    sub_1AFD555D4(v10, sub_1AFD62EF0, v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
    (*(v6 + 8))(v5, v9);
  }

  free(v5);
  free(v4);
  free(v20);
  free(v21);
  free(v2);
}

uint64_t sub_1AFD5CC30(uint64_t a1)
{
  sub_1AFD60D3C();
  swift_getWitnessTable();
  v2 = sub_1AFDFF248();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

void (*sub_1AFD5CCC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AFD62F10;
}

uint64_t sub_1AFD5CDD4()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

void (*sub_1AFD5CE7C(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AFD5CF04(v6, *a2, a3);
  return sub_1AFD62F14;
}

void (*sub_1AFD5CF04(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v41 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x80uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a3 + 16);
  v6[9] = v8;
  v6[10] = v8;
  *v6 = v8;
  v6[1] = v8;
  v6[2] = v8;
  v6[3] = v8;
  v6[4] = v8;
  v6[5] = v8;
  v6[6] = v8;
  v6[7] = v8;
  v6[8] = v8;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v10 = *(TupleTypeMetadata - 1);
  v11 = *(v10 + 64);
  v42 = a1;
  if (v5)
  {
    v12 = swift_coroFrameAlloc();
    v7[11] = v12;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
    v7[11] = v12;
    v13 = malloc(v11);
  }

  v14 = v13;
  v7[12] = v13;
  v15 = *(v8 - 8);
  v16 = v15;
  v7[13] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v39 = swift_coroFrameAlloc();
    v7[14] = v39;
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v39 = malloc(*(v15 + 64));
    v7[14] = v39;
    v18 = malloc(v17);
  }

  v38 = v18;
  v7[15] = v18;
  (*(v10 + 16))(v14, v40, TupleTypeMetadata);
  v40 = v10;
  v19 = TupleTypeMetadata[12];
  v20 = TupleTypeMetadata[16];
  v21 = TupleTypeMetadata[20];
  v22 = TupleTypeMetadata[24];
  v23 = TupleTypeMetadata[32];
  v33 = TupleTypeMetadata[28];
  v34 = v23;
  v24 = TupleTypeMetadata[40];
  v35 = TupleTypeMetadata[36];
  v36 = v24;
  v37 = TupleTypeMetadata[44];
  v25 = *(v16 + 32);
  v25(v12, v14, v8);
  v25(v12 + v19, v14 + v19, v8);
  v25(v12 + v20, v14 + v20, v8);
  v25(v12 + v21, v14 + v21, v8);
  v25(v12 + v22, v14 + v22, v8);
  v25(v12 + v33, v14 + v33, v8);
  v25(v12 + v34, v14 + v34, v8);
  v25(v12 + v35, v14 + v35, v8);
  v25(v12 + v36, v14 + v36, v8);
  v26 = (v25)(v12 + v37, v14 + v37, v8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v32[2] = v8;
  v32[3] = v41;
  v28 = v39;
  sub_1AF6F430C(v12, sub_1AFD62EC0, v32, TupleTypeMetadata, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v29);
  v30 = v38;
  (*(v40 + 8))(v12, TupleTypeMetadata);
  v25(v30, v28, v8);
  return sub_1AFD5D314;
}

void sub_1AFD5D314(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 112);
  v2 = *(*a1 + 120);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 88);
  (*(*(*a1 + 104) + 8))(v2, *(*a1 + 80));
  free(v2);
  free(v3);
  free(v4);
  free(v5);

  free(v1);
}

uint64_t sub_1AFD5D398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AFD5D400()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

uint64_t sub_1AFD5D46C()
{
  swift_getWitnessTable();

  return sub_1AFDFD7F8();
}

uint64_t sub_1AFD5D508(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, void))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a5(&v9, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1AFD5D588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_1AFDFE468();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1AFD5D610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AFD5D67C(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1AFD60D38();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1AFD5D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v57 = a1;
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v68 = v6;
  v69 = v6;
  v70 = v6;
  v71 = v6;
  v72 = v6;
  v73 = v6;
  v74 = v6;
  v75 = v6;
  v76 = v6;
  v77 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v45 - v12;
  v53 = v6;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_1AFDFE468();
  v45 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v45 - v20;
  v22 = *(*(a2 - 8) + 16);
  v58 = a2;
  v22(v21, v4, a2, v19);
  v23 = 0;
  v24 = 0;
  v46 = v17;
  v25 = *(v17 + 36);
  v67 = v21;
  v50 = &v21[v25];
  *v50 = 0;
  v49 = *(v7 + 16);
  v26 = (v13 + 32);
  v55 = v7 + 16;
  v48 = (v7 + 8);
  v47 = (v13 + 8);
  v27 = TupleTypeMetadata;
  v28 = v53;
  do
  {
    v65 = v23;
    v66 = v24;
    v29 = v52;
    v49(v52, v67, v27);
    v30 = v27[12];
    v31 = v27[16];
    v32 = v27[20];
    v33 = v27[24];
    v34 = v27[32];
    v60 = v27[28];
    v61 = v34;
    v35 = v27[40];
    v62 = v27[36];
    v63 = v35;
    v64 = v27[44];
    v36 = *v26;
    v37 = v54;
    (*v26)(v54, v29, v28);
    v36((v37 + v30), &v29[v30], v28);
    v36((v37 + v31), &v29[v31], v28);
    v36((v37 + v32), &v29[v32], v28);
    v36((v37 + v33), &v29[v33], v28);
    v36((v37 + v60), &v29[v60], v28);
    v36((v37 + v61), &v29[v61], v28);
    v36((v37 + v62), &v29[v62], v28);
    v36((v37 + v63), &v29[v63], v28);
    v38 = (v36)(v37 + v64, &v29[v64], v28);
    MEMORY[0x1EEE9AC00](v38, v39);
    v40 = v65;
    v24 = v66;
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v40;
    v41 = v51;
    sub_1AF6F430C(v37, sub_1AFD60B14, (&v45 - 4), v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v42);
    (*v48)(v37, v27);
    v68 = v40;
    swift_getWitnessTable();
    v43 = v50;
    sub_1AFDFD7F8();
    sub_1AFDFCD08();
    (*v47)(v41, v28);
    v23 = *v43;
  }

  while (*v43 != 10);
  return (*(v45 + 8))(v67, v46);
}

uint64_t sub_1AFD5DF90(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1AFDFF288();
  a3(v7, a1, a2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFD5E050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1AFDFF288();
  a4(v8, a2, v6);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFD5E0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, int *a14)
{
  v92 = a8;
  v88 = a7;
  v87 = a6;
  v86 = a5;
  v85 = a4;
  v84 = a3;
  v93 = a9;
  v94 = a14;
  v95 = a11;
  v89 = a10;
  v90 = a13;
  v99 = a12;
  v100 = a12;
  v101 = a12;
  v102 = a12;
  v103 = a12;
  v104 = a12;
  v105 = a12;
  v106 = a12;
  v107 = a12;
  v108 = a12;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v91 = *(TupleTypeMetadata - 1);
  v17 = v91;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v18);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v84 - v24;
  v97 = &v84 - v24;
  v26 = *(a12 - 8);
  v27 = *(v26 + 32);
  v27(&v84 - v24, a1, a12, v23);
  (v27)(&v25[TupleTypeMetadata[12]], a2, a12);
  (v27)(&v25[TupleTypeMetadata[16]], v84, a12);
  (v27)(&v25[TupleTypeMetadata[20]], v85, a12);
  (v27)(&v25[TupleTypeMetadata[24]], v86, a12);
  (v27)(&v25[TupleTypeMetadata[28]], v87, a12);
  (v27)(&v25[TupleTypeMetadata[32]], v88, a12);
  (v27)(&v25[TupleTypeMetadata[36]], v92, a12);
  (v27)(&v25[TupleTypeMetadata[40]], v89, a12);
  (v27)(&v25[TupleTypeMetadata[44]], v95, a12);
  v28 = v27;
  v98 = v27;
  v29 = *(v17 + 16);
  v92 = v17 + 16;
  v95 = v29;
  v96 = v26 + 32;
  (v29)(v20, v25, TupleTypeMetadata);
  v30 = TupleTypeMetadata[12];
  v88 = TupleTypeMetadata[16];
  v89 = v30;
  v87 = TupleTypeMetadata[20];
  v86 = TupleTypeMetadata[24];
  v85 = TupleTypeMetadata[28];
  v31 = TupleTypeMetadata[32];
  v32 = TupleTypeMetadata[36];
  v33 = TupleTypeMetadata[40];
  v34 = TupleTypeMetadata[44];
  v28(v93, v20, a12);
  v35 = *(v26 + 8);
  v35(&v20[v34], a12);
  v35(&v20[v33], a12);
  v35(&v20[v32], a12);
  v35(&v20[v31], a12);
  v35(&v20[v85], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v36 = v95;
  (v95)(v20, v97, TupleTypeMetadata);
  v37 = TupleTypeMetadata[12];
  v38 = TupleTypeMetadata[16];
  v88 = TupleTypeMetadata[20];
  v89 = v38;
  v87 = TupleTypeMetadata[24];
  v86 = TupleTypeMetadata[28];
  v85 = TupleTypeMetadata[32];
  v84 = TupleTypeMetadata[36];
  v39 = TupleTypeMetadata[40];
  v40 = TupleTypeMetadata[44];
  v94 = type metadata accessor for __FixedArrayCodableStorage10();
  v98(v93 + v94[11], &v20[v37], a12);
  v35(&v20[v40], a12);
  v35(&v20[v39], a12);
  v35(&v20[v84], a12);
  v35(&v20[v85], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(v20, a12);
  v41 = v97;
  v36(v20, v97, TupleTypeMetadata);
  v42 = TupleTypeMetadata[12];
  v43 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v90 = v42;
  v88 = TupleTypeMetadata[24];
  v87 = TupleTypeMetadata[28];
  v86 = TupleTypeMetadata[32];
  v44 = TupleTypeMetadata[36];
  v45 = TupleTypeMetadata[40];
  v46 = TupleTypeMetadata[44];
  v47 = v93;
  v98(v93 + v94[12], &v20[v43], a12);
  v35(&v20[v46], a12);
  v35(&v20[v45], a12);
  v35(&v20[v44], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v41, TupleTypeMetadata);
  v48 = TupleTypeMetadata[12];
  v89 = TupleTypeMetadata[16];
  v90 = v48;
  v49 = TupleTypeMetadata[20];
  v88 = TupleTypeMetadata[24];
  v87 = TupleTypeMetadata[28];
  v86 = TupleTypeMetadata[32];
  v50 = TupleTypeMetadata[36];
  v51 = TupleTypeMetadata[40];
  v52 = TupleTypeMetadata[44];
  v98(v47 + v94[13], &v20[v49], a12);
  v35(&v20[v52], a12);
  v35(&v20[v51], a12);
  v35(&v20[v50], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v97, TupleTypeMetadata);
  v53 = TupleTypeMetadata[12];
  v89 = TupleTypeMetadata[16];
  v90 = v53;
  v88 = TupleTypeMetadata[20];
  v54 = TupleTypeMetadata[24];
  v87 = TupleTypeMetadata[28];
  v86 = TupleTypeMetadata[32];
  v55 = TupleTypeMetadata[36];
  v56 = TupleTypeMetadata[40];
  v57 = TupleTypeMetadata[44];
  v58 = v94;
  v98(v93 + v94[14], &v20[v54], a12);
  v35(&v20[v57], a12);
  v35(&v20[v56], a12);
  v35(&v20[v55], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v97, TupleTypeMetadata);
  v59 = TupleTypeMetadata[12];
  v89 = TupleTypeMetadata[16];
  v90 = v59;
  v88 = TupleTypeMetadata[20];
  v87 = TupleTypeMetadata[24];
  v60 = TupleTypeMetadata[28];
  v86 = TupleTypeMetadata[32];
  v61 = TupleTypeMetadata[36];
  v62 = TupleTypeMetadata[40];
  v63 = TupleTypeMetadata[44];
  v64 = v93;
  v98(v93 + v58[15], &v20[v60], a12);
  v35(&v20[v63], a12);
  v35(&v20[v62], a12);
  v35(&v20[v61], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v97, TupleTypeMetadata);
  v65 = TupleTypeMetadata[12];
  v89 = TupleTypeMetadata[16];
  v90 = v65;
  v88 = TupleTypeMetadata[20];
  v87 = TupleTypeMetadata[24];
  v86 = TupleTypeMetadata[28];
  v66 = TupleTypeMetadata[36];
  v67 = TupleTypeMetadata[40];
  v68 = TupleTypeMetadata[44];
  v98(v64 + v94[16], &v20[TupleTypeMetadata[32]], a12);
  v35(&v20[v68], a12);
  v35(&v20[v67], a12);
  v35(&v20[v66], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v97, TupleTypeMetadata);
  v69 = TupleTypeMetadata[12];
  v89 = TupleTypeMetadata[16];
  v90 = v69;
  v88 = TupleTypeMetadata[20];
  v87 = TupleTypeMetadata[24];
  v86 = TupleTypeMetadata[28];
  v70 = TupleTypeMetadata[32];
  v71 = TupleTypeMetadata[40];
  v72 = TupleTypeMetadata[44];
  v73 = v98;
  v98(v64 + v94[17], &v20[TupleTypeMetadata[36]], a12);
  v35(&v20[v72], a12);
  v35(&v20[v71], a12);
  v35(&v20[v70], a12);
  v35(&v20[v86], a12);
  v35(&v20[v87], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(v20, a12);
  (v95)(v20, v97, TupleTypeMetadata);
  v95 = TupleTypeMetadata[12];
  v92 = TupleTypeMetadata[16];
  v74 = TupleTypeMetadata[20];
  v89 = TupleTypeMetadata[24];
  v90 = v74;
  v88 = TupleTypeMetadata[28];
  v75 = TupleTypeMetadata[32];
  v76 = TupleTypeMetadata[36];
  v77 = TupleTypeMetadata[44];
  v73(v64 + v94[18], &v20[TupleTypeMetadata[40]], a12);
  v35(&v20[v77], a12);
  v35(&v20[v76], a12);
  v35(&v20[v75], a12);
  v35(&v20[v88], a12);
  v35(&v20[v89], a12);
  v35(&v20[v90], a12);
  v35(&v20[v92], a12);
  v35(&v95[v20], a12);
  v35(v20, a12);
  (*(v91 + 32))(v20, v97, TupleTypeMetadata);
  v97 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v92 = TupleTypeMetadata[20];
  v78 = TupleTypeMetadata[24];
  v79 = TupleTypeMetadata[28];
  v80 = TupleTypeMetadata[32];
  v81 = TupleTypeMetadata[36];
  v82 = TupleTypeMetadata[40];
  v98(v93 + v94[19], &v20[TupleTypeMetadata[44]], a12);
  v35(&v20[v82], a12);
  v35(&v20[v81], a12);
  v35(&v20[v80], a12);
  v35(&v20[v79], a12);
  v35(&v20[v78], a12);
  v35(&v20[v92], a12);
  v35(&v95[v20], a12);
  v35(&v97[v20], a12);
  return (v35)(v20, a12);
}

uint64_t sub_1AFD5F094(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3170143 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 3235679 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 3301215 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 3366751 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 3432287 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 3497823 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 3563359 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 3628895 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 3694431 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 3759967 && a2 == 0xE300000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1AFD5F35C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[1] = a2;
  v11[2] = v3;
  type metadata accessor for __FixedArrayCodableStorage10.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1AFDFE9A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v21 = 0;
  v9 = v11[4];
  sub_1AFDFE918();
  if (!v9)
  {
    v20 = 1;
    sub_1AFDFE918();
    v19 = 2;
    sub_1AFDFE918();
    v18 = 3;
    sub_1AFDFE918();
    v17 = 4;
    sub_1AFDFE918();
    v16 = 5;
    sub_1AFDFE918();
    v15 = 6;
    sub_1AFDFE918();
    v14 = 7;
    sub_1AFDFE918();
    v13 = 8;
    sub_1AFDFE918();
    v12 = 9;
    sub_1AFDFE918();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFD5F66C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v71 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v67 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v68 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v69 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v70 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v74 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v73 = &v60 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v72 = &v60 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v75 = &v60 - v34;
  type metadata accessor for __FixedArrayCodableStorage10.CodingKeys();
  swift_getWitnessTable();
  v35 = sub_1AFDFE818();
  v77 = *(v35 - 8);
  v78 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v60 - v37;
  v79 = a2;
  v76 = a3;
  v39 = type metadata accessor for __FixedArrayCodableStorage10();
  v63 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v60 - v41;
  sub_1AF441150(a1, a1[3]);
  v80 = v38;
  v43 = v81;
  sub_1AFDFF3B8();
  if (v43)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v45 = v72;
  v44 = v73;
  v46 = v74;
  v81 = v42;
  v61 = v39;
  v62 = a1;
  v91 = 0;
  v47 = v75;
  v48 = v79;
  sub_1AFDFE768();
  v75 = *(v71 + 32);
  v60 = v71 + 32;
  (v75)(v81, v47, v48);
  v90 = 1;
  v49 = v45;
  sub_1AFDFE768();
  v50 = v61;
  (v75)(&v81[v61[11]], v49, v48);
  v89 = 2;
  v72 = 0;
  sub_1AFDFE768();
  (v75)(&v81[v50[12]], v44, v48);
  v88 = 3;
  sub_1AFDFE768();
  (v75)(&v81[v50[13]], v46, v48);
  v87 = 4;
  v51 = v70;
  sub_1AFDFE768();
  (v75)(&v81[v50[14]], v51, v48);
  v86 = 5;
  v52 = v69;
  sub_1AFDFE768();
  (v75)(&v81[v50[15]], v52, v48);
  v85 = 6;
  v53 = v68;
  sub_1AFDFE768();
  (v75)(&v81[v50[16]], v53, v48);
  v84 = 7;
  v54 = v67;
  sub_1AFDFE768();
  (v75)(&v81[v61[17]], v54, v48);
  v83 = 8;
  v55 = v66;
  sub_1AFDFE768();
  (v75)(&v81[v61[18]], v55, v79);
  v82 = 9;
  sub_1AFDFE768();
  (*(v77 + 8))(v80, v78);
  v56 = v61;
  v57 = v81;
  (v75)(&v81[v61[19]], v65, v79);
  v58 = v63;
  (*(v63 + 16))(v64, v57, v56);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
  return (*(v58 + 8))(v57, v56);
}

uint64_t sub_1AFD601E4()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AFD60250(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_1AFDFF288();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFD602AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFD5F094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFD602E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9FA774();
  *a1 = result;
  return result;
}

uint64_t sub_1AFD60314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AFD60368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AFD603F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = type metadata accessor for __FixedArrayCodableStorage10();
  MEMORY[0x1EEE9AC00](v26, v6);
  v38 = &v21 - v7;
  v8 = type metadata accessor for FixedArray10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v3)
  {
    v20 = a1;
  }

  else
  {
    v23 = v8;
    v24 = a1;
    v21 = v12;
    v22 = v9;
    sub_1AF441150(v37, v37[3]);
    v13 = v26;
    swift_getWitnessTable();
    v14 = v38;
    sub_1AFDFEE88();
    v16 = *(*(a2 - 8) + 32);
    v17 = v21;
    v16(v21, v14, a2);
    v18 = v13[11];
    v27 = a2;
    v28 = a2;
    v29 = a2;
    v30 = a2;
    v31 = a2;
    v32 = a2;
    v33 = a2;
    v34 = a2;
    v35 = a2;
    v36 = a2;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16(&v17[TupleTypeMetadata[12]], &v14[v18], a2);
    v16(&v17[TupleTypeMetadata[16]], &v14[v13[12]], a2);
    v16(&v17[TupleTypeMetadata[20]], &v14[v13[13]], a2);
    v16(&v17[TupleTypeMetadata[24]], &v14[v13[14]], a2);
    v16(&v17[TupleTypeMetadata[28]], &v14[v13[15]], a2);
    v16(&v17[TupleTypeMetadata[32]], &v14[v13[16]], a2);
    v16(&v17[TupleTypeMetadata[36]], &v14[v13[17]], a2);
    v16(&v17[TupleTypeMetadata[40]], &v14[v13[18]], a2);
    v16(&v17[TupleTypeMetadata[44]], &v14[v13[19]], a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
    (*(v22 + 32))(v25, v17, v23);
    v20 = v24;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
}

uint64_t sub_1AFD60774(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v17 = a3;
  v16 = a4;
  v5 = *(a2 + 16);
  v20[0] = v5;
  v20[1] = v5;
  v20[2] = v5;
  v21 = v5;
  v22 = v5;
  v23 = v5;
  v24 = v5;
  v25 = v5;
  v26 = v5;
  v27 = v5;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for __FixedArrayCodableStorage10();
  v19 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  (*(v7 + 16))(v10, v18, TupleTypeMetadata);
  sub_1AFD5E0AC(v10, &v10[TupleTypeMetadata[12]], &v10[TupleTypeMetadata[16]], &v10[TupleTypeMetadata[20]], &v10[TupleTypeMetadata[24]], &v10[TupleTypeMetadata[28]], &v10[TupleTypeMetadata[32]], &v10[TupleTypeMetadata[36]], v14, &v10[TupleTypeMetadata[40]], &v10[TupleTypeMetadata[44]], v5, v17, v16);
  sub_1AF448018(v20, v21);
  swift_getWitnessTable();
  sub_1AFDFEF28();
  (*(v19 + 8))(v14, v11);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
}

uint64_t sub_1AFD60BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AFDFCDC8();
  v12 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  return a6(a1, a2 + *(v12 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1AFD60C78()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AFDFCDC8();
  sub_1AFDFD998();
  return sub_1AFDFCDC8();
}

uint64_t sub_1AFD60D3C()
{
  sub_1AFDFF248();
  swift_getWitnessTable();

  return sub_1AFDFE9F8();
}

uint64_t sub_1AFD60DF0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1AFDFCE78();
  return (*(*(v4 - 8) + 16))(a1, v5 + *(*(v4 - 8) + 72) * v3, v4);
}

uint64_t sub_1AFD60E84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_1AFDFDD78();
  return (*(*(v1 - 8) + 24))(v4 + *(*(v1 - 8) + 72) * v2, v3, v1);
}

uint64_t sub_1AFD60EFC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AFD60F9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v7 <= 7 && (*(v5 + 80) & 0x100000) == 0;
  if (v9 && (v10 = v6 + v7, ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7) + v6 <= 0x18))
  {
    v11 = *(v5 + 16);
    v11(a1, a2, v4);
    v13 = (a2 + v10) & v8;
    v11(((v3 + v10) & v8), v13, v4);
    v14 = (v10 + v13) & v8;
    v11(((v10 + ((v3 + v10) & v8)) & v8), v14, v4);
    v15 = (v10 + v14) & v8;
    v11(((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8), v15, v4);
    v16 = (v10 + v15) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8), v16, v4);
    v17 = (v10 + v16) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8), v17, v4);
    v18 = (v10 + v17) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), v18, v4);
    v19 = (v10 + v18) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), v19, v4);
    v20 = (v10 + v19) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), v20, v4);
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), ((v10 + v20) & v8), v4);
  }

  else
  {
    v21 = *a2;
    *v3 = *a2;
    v3 = (v21 + ((v7 + 16) & v8));
  }

  return v3;
}

uint64_t sub_1AFD61228(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v16 = *(v4 + 8);
  v16(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v16(v7, v3);
  v8 = (v6 + v7) & ~v5;
  v16(v8, v3);
  v9 = (v6 + v8) & ~v5;
  v16(v9, v3);
  v10 = (v6 + v9) & ~v5;
  v16(v10, v3);
  v11 = (v6 + v10) & ~v5;
  v16(v11, v3);
  v12 = (v6 + v11) & ~v5;
  v16(v12, v3);
  v13 = (v6 + v12) & ~v5;
  v16(v13, v3);
  v14 = (v6 + v13) & ~v5;
  v16(v14, v3);

  return (v16)((v6 + v14) & ~v5, v3);
}

uint64_t sub_1AFD613CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v16 = (v9 + v15) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v16, v5);
  v17 = (v9 + v16) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v17, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v17) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD615A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v16 = (v9 + v15) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v16, v5);
  v17 = (v9 + v16) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v17, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v17) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD61784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v16 = (v9 + v15) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v16, v5);
  v17 = (v9 + v16) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v17, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v17) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD61960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v16 = (v9 + v15) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v16, v5);
  v17 = (v9 + v16) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v17, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v17) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD61B3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1AFD61CCC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1AFD61F24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AFD61FC0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v7 <= 7 && (*(v5 + 80) & 0x100000) == 0;
  if (v9 && (v10 = v6 + v7, ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v7) + v6 <= 0x18))
  {
    v11 = *(v5 + 16);
    v11(a1, a2, v4);
    v13 = (a2 + v10) & v8;
    v11(((v3 + v10) & v8), v13, v4);
    v14 = (v10 + v13) & v8;
    v11(((v10 + ((v3 + v10) & v8)) & v8), v14, v4);
    v15 = (v10 + v14) & v8;
    v11(((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8), v15, v4);
    v16 = (v10 + v15) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8), v16, v4);
    v17 = (v10 + v16) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8), v17, v4);
    v18 = (v10 + v17) & v8;
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), v18, v4);
    v11(((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v10 + ((v3 + v10) & v8)) & v8)) & v8)) & v8)) & v8)) & v8)) & v8), ((v10 + v18) & v8), v4);
  }

  else
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v7 + 16) & v8));
  }

  return v3;
}

uint64_t sub_1AFD621EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v14 = *(v4 + 8);
  v14(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v14(v7, v3);
  v8 = (v6 + v7) & ~v5;
  v14(v8, v3);
  v9 = (v6 + v8) & ~v5;
  v14(v9, v3);
  v10 = (v6 + v9) & ~v5;
  v14(v10, v3);
  v11 = (v6 + v10) & ~v5;
  v14(v11, v3);
  v12 = (v6 + v11) & ~v5;
  v14(v12, v3);

  return (v14)((v6 + v12) & ~v5, v3);
}

uint64_t sub_1AFD62350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v15) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD624DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v15) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD62668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v15) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD627F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v12 = (v9 + v11) & ~v8;
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, v12, v5);
  v13 = (v9 + v12) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8, v13, v5);
  v14 = (v9 + v13) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v14, v5);
  v15 = (v9 + v14) & ~v8;
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, v15, v5);
  v7((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8, (v9 + v15) & ~v8, v5);
  return a1;
}

uint64_t sub_1AFD62980(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1AFD62B00(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1AFD62F64()
{
  v0 = 0xD00000000000001ELL;
  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000020;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001CLL;
  }

  v1 = 0xD00000000000001DLL;
  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000020;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001CLL;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return v0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000028;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000023;
  }

  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000026;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001ALL;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000021;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000025;
  }

  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000025;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000026;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD00000000000001BLL;
  }

  if (swift_dynamicCastMetatype())
  {
    return v0;
  }

  v1 = 0xD000000000000021;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000020;
  }

  v1 = 0xD000000000000022;
  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  if (swift_dynamicCastMetatype())
  {
    return v1;
  }

  v1 = 0xD000000000000022;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return v1;
  }

  sub_1AFDFE218();

  v3 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

float vfx_script_particle_set_position(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02960(a1, a2);
  if (v3)
  {
    result = 1.0;
    v5 = a3;
    v5.n128_u32[3] = 1.0;
    *v3 = v5;
  }

  return result;
}

double vfx_script_particle_get_position(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02960(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

float *vfx_script_particle_set_mass(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02988(a1, a2);
  if (result)
  {
    v5 = 0.001;
    if (a3 > 0.001)
    {
      v5 = a3;
    }

    *result = 1.0 / v5;
  }

  return result;
}

float *vfx_script_particle_set_mass(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02988(a1, a2);
  if (result)
  {
    v5 = 0.001;
    if (a3 > 0.001)
    {
      v5 = a3;
    }

    *result = 1.0 / v5;
  }

  return result;
}

double vfx_script_particle_get_mass(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02988(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  *&result = 1.0 / *v2;
  return result;
}

double vfx_script_particle_get_mass(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02988(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  *&result = 1.0 / *v2;
  return result;
}

__n128 vfx_script_particle_set_color(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02E38(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_color(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02E38(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_color(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02E38(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_color(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02E38(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

void sub_1AFD637B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v3)
  {
    v4 = v3;
    sub_1AF57B4FC();
    *v4 = v5;
  }
}

__n128 vfx_script_particle_set_velocity(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02E5C(a1, a2);
  if (v3)
  {
    result = a3;
    result.n128_u32[3] = 0;
    *v3 = result;
  }

  return result;
}

double sub_1AFD63868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(__n128))
{
  v5 = a3();
  if (!v5)
  {
    return 0.0;
  }

  a4(*v5);
  return result;
}

double vfx_script_particle_get_velocity(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02E5C(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_size(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02E84(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_size(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02E84(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_size(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02E84(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_size(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02E84(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_size3d(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02EA8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_size3d(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02EA8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_size3d(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02EA8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_size3d(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02EA8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

float *vfx_script_particle_set_size1d(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02ECC(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_size1d(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02ECC(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_size1d(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02ECC(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_size1d(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02ECC(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double *vfx_script_particle_set_size2d(void *a1, unint64_t a2, double a3)
{
  result = sub_1AFC02EF0(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double *vfx_script_particle_set_size2d(_:_:_:)(void *a1, unint64_t a2, double a3)
{
  result = sub_1AFC02EF0(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_size2d(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02EF0(a1, a2);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

double vfx_script_particle_get_size2d(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02EF0(a1, a2);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

__n128 vfx_script_particle_set_angular_velocity(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02F14(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_angular_velocity(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02F14(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_angular_velocity(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F14(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_angular_velocity(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F14(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_orientation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02F48(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_orientation(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC02F48(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_orientation(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F48(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_orientation(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F48(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

float *vfx_script_particle_set_angle(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02F78(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_angle(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02F78(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_angle(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F78(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_angle(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02F78(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

float *vfx_script_particle_set_angle_velocity(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02FAC(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_angle_velocity(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC02FAC(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_angle_velocity(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02FAC(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_angle_velocity(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC02FAC(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

_DWORD *vfx_script_particle_set_id(void *a1, unint64_t a2, int a3)
{
  result = sub_1AFC03438(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

_DWORD *vfx_script_particle_set_id(_:_:_:)(void *a1, unint64_t a2, int a3)
{
  result = sub_1AFC03438(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

unsigned int *vfx_script_particle_get_id(void *a1, unint64_t a2)
{
  result = sub_1AFC03438(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

unsigned int *vfx_script_particle_get_id(_:_:)(void *a1, unint64_t a2)
{
  result = sub_1AFC03438(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

_DWORD *vfx_script_particle_set_parent_id(void *a1, unint64_t a2, int a3)
{
  result = sub_1AFC03464(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

_DWORD *vfx_script_particle_set_parent_id(_:_:_:)(void *a1, unint64_t a2, int a3)
{
  result = sub_1AFC03464(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

unsigned int *vfx_script_particle_get_parent_id(void *a1, unint64_t a2)
{
  result = sub_1AFC03464(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

unsigned int *vfx_script_particle_get_parent_id(_:_:)(void *a1, unint64_t a2)
{
  result = sub_1AFC03464(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

float *vfx_script_particle_set_texture_frame(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC0347C(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_texture_frame(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC0347C(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_texture_frame(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0347C(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_texture_frame(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0347C(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

uint64_t vfx_script_particle_set_pivot(void *a1, unint64_t a2, float32x4_t a3)
{
  result = sub_1AFC03494(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = a3;
    v5.i32[3] = 1.0;
    result = sub_1AF57EFBC(v5);
    *v4 = result;
  }

  return result;
}

uint64_t vfx_script_particle_set_pivot(_:_:_:)(void *a1, unint64_t a2, float32x4_t a3)
{
  result = sub_1AFC03494(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = a3;
    v5.i32[3] = 1.0;
    result = sub_1AF57EFBC(v5);
    *v4 = result;
  }

  return result;
}

double vfx_script_particle_get_pivot(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03494(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  v3 = sub_1AF57F008(*v2);
  nullsub_210(v3);
  return result;
}

double vfx_script_particle_get_pivot(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03494(a1, a2);
  if (v2)
  {
    return sub_1AF57F008(*v2);
  }

  else
  {
    return 0.0;
  }
}

__n128 vfx_script_particle_set_linear_factor(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC034C8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_linear_factor(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC034C8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_linear_factor(void *a1, unint64_t a2)
{
  v2 = sub_1AFC034C8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_linear_factor(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC034C8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_angular_factor(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC034F8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_angular_factor(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC034F8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_angular_factor(void *a1, unint64_t a2)
{
  v2 = sub_1AFC034F8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_angular_factor(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC034F8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

float *vfx_script_particle_set_age(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC0352C(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_age(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC0352C(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_age(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0352C(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_age(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0352C(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

__n128 vfx_script_particle_set_target(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC0355C(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_target(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC0355C(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_target(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0355C(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_target(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0355C(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

float *vfx_script_particle_set_roughness(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC03590(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_roughness(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC03590(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_roughness(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03590(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_roughness(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03590(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

float *vfx_script_particle_set_metalness(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC035A8(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_metalness(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC035A8(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_metalness(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035A8(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_metalness(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035A8(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

float *vfx_script_particle_set_emission(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC035C0(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

float *vfx_script_particle_set_emission(_:_:_:)(void *a1, unint64_t a2, float a3)
{
  result = sub_1AFC035C0(a1, a2);
  if (result)
  {
    *result = a3;
  }

  return result;
}

double vfx_script_particle_get_emission(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035C0(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

double vfx_script_particle_get_emission(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035C0(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

__n128 vfx_script_particle_set_user_data1(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC035D8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_user_data1(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC035D8(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_user_data1(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035D8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_user_data1(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC035D8(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_user_data2(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC03604(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_user_data2(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC03604(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_user_data2(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03604(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_user_data2(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03604(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_user_data3(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC03630(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_user_data3(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC03630(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_user_data3(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03630(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_user_data3(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC03630(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

__n128 vfx_script_particle_set_user_data4(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC0365C(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

__n128 vfx_script_particle_set_user_data4(_:_:_:)(void *a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1AFC0365C(a1, a2);
  if (v3)
  {
    result = a3;
    *v3 = a3;
  }

  return result;
}

double vfx_script_particle_get_user_data4(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0365C(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double vfx_script_particle_get_user_data4(_:_:)(void *a1, unint64_t a2)
{
  v2 = sub_1AFC0365C(a1, a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

double sub_1AFD64914(uint64_t a1)
{
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 64) = 0u;
  sub_1AFD64D14(a1, xmmword_1AFEABBC0);
  *(a1 + 240) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 248) = 1065353216;
  *(a1 + 256) = 0;
  *(a1 + 264) = 2;
  *(a1 + 268) = 0;
  *(a1 + 272) = 1;
  *(a1 + 280) = -1082130432;
  *(a1 + 288) = 0;
  *(a1 + 296) = 3;
  *(a1 + 300) = 0;
  *(a1 + 304) = 2;
  *(a1 + 312) = -1082130432;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 336) = 3;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1;
  *(a1 + 364) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  result = 0.000000789642512;
  *(a1 + 44) = 0x3EAA7EFA3F400000;
  *(a1 + 728) = 0;
  *(a1 + 730) = 0;
  return result;
}

void sub_1AFD649F8(uint64_t a1, float a2, float a3, float a4)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  *(a1 + 232) = a4;
  v5 = fmaxf(a4, 1.0e-12);
  *(a1 + 144) = v5;
  *(a1 + 148) = 1.0 / v5;
  v6 = llroundf((1.0 / v5) * a2);
  if (v6 >= 1024)
  {
    v6 = 1024;
  }

  if (v6 <= 8)
  {
    LOWORD(v6) = 8;
  }

  v7 = v6 & 0x7FC;
  v8 = llroundf((1.0 / v5) * a3);
  if (v8 >= 1024)
  {
    v9 = 1024;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  *a1 = v7;
  *(a1 + 4) = v9;
  v10 = v5 * v7;
  v11 = v5 * v9;
  *(a1 + 128) = v10;
  *(a1 + 132) = v11;
  if (v10 < v11)
  {
    v10 = v5 * v9;
  }

  *(a1 + 136) = v10;
  *(a1 + 140) = 1.0 / v10;
  *(a1 + 8) = v7 | 2;
  *(a1 + 12) = v9 + 2;
  v12 = (v9 + 2) * (v7 | 2);
  *(a1 + 16) = v12;
  if (v7 <= v9)
  {
    v7 = v9;
  }

  *(a1 + 20) = v7;
  sub_1AF121C28((a1 + 152), v12);
  sub_1AF121C28((a1 + 176), *(a1 + 16));
  sub_1AF121C28((a1 + 200), *(a1 + 16));
  sub_1AFD64E5C((a1 + 368), *a1, *(a1 + 4));
  sub_1AFD64E5C((a1 + 464), *a1, *(a1 + 4));
  sub_1AFD64E5C((a1 + 560), *a1, *(a1 + 4));
  sub_1AF121C28((a1 + 656), *(a1 + 16));
  sub_1AF121C28((a1 + 680), *(a1 + 16));
  sub_1AF121C28((a1 + 704), *(a1 + 16));
  sub_1AF121C28((a1 + 736), *(a1 + 16));
  sub_1AF121C28((a1 + 760), *(a1 + 16));
  sub_1AF121C28((a1 + 784), *(a1 + 16));
  sub_1AF121C28((a1 + 808), *(a1 + 16));
  sub_1AF121C28((a1 + 832), *(a1 + 16));
  sub_1AFD64EC8(a1);
  v13 = *(a1 + 16);
  if (v13 >= 1)
  {
    v14 = 4 * v13;
    bzero(*(a1 + 200), 4 * v13);
    bzero(*(a1 + 784), v14);
  }

  sub_1AFD64FB0(a1, (a1 + 152), a1 + 368);
  sub_1AFD64FB0(a1, (a1 + 176), a1 + 464);
  sub_1AFD64FB0(a1, (a1 + 200), a1 + 560);
  v15 = *(a1 + 16);
  if (v15 < 1)
  {
    *(a1 + 728) = 257;
    *(a1 + 730) = 1;
  }

  else
  {
    v16 = 4 * v15;
    bzero(*(a1 + 656), 4 * v15);
    bzero(*(a1 + 680), v16);
    bzero(*(a1 + 704), v16);
    *(a1 + 728) = 257;
    *(a1 + 730) = 1;
    bzero(*(a1 + 808), v16);
    v17 = *(a1 + 832);

    bzero(v17, v16);
  }
}

uint64_t sub_1AFD64C58(uint64_t a1, float a2, float a3, float a4)
{
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 736) = 0u;
  sub_1AFD64914(a1);
  sub_1AFD649F8(a1, a2, a3, a4);
  return a1;
}

float32x4_t *sub_1AFD64D14(float32x4_t *result, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  v3 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v4 = vaddv_f32(v3);
  if (sqrtf(v4) != 1.0)
  {
    if (v4 == 0.0)
    {
      a2 = xmmword_1AFE201A0;
    }

    else
    {
      v5 = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
      v6 = vrsqrte_f32(v5);
      v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
      a2 = vmulq_n_f32(a2, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    }
  }

  v8 = vmulq_f32(a2, a2);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v9 = vmulq_f32(a2, xmmword_1AFE21390);
  v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  v10 = vrecpe_f32(v8.u32[0]);
  v11 = vmul_f32(v10, vrecps_f32(v8.u32[0], v10));
  result[7] = vmulq_n_f32(v9, vmul_f32(v11, vrecps_f32(v8.u32[0], v11)).f32[0]);
  v12 = vnegq_f32(v9);
  v13 = vtrn2q_s32(v9, vtrn1q_s32(v9, v12));
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(v9, v12, 8uLL), 0), 0, vextq_s8(v13, v13, 8uLL));
  v15 = vrev64q_s32(v9);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  v16 = vaddq_f32(v15, v14);
  v17 = vnegq_f32(v16);
  v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
  v19 = vrev64q_s32(v16);
  v19.i32[0] = v17.i32[1];
  v19.i32[3] = v17.i32[2];
  result[5] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, a2, 3), v19, a2, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *a2.f32, 1), vextq_s8(v18, v18, 8uLL), a2.f32[0]));
  result[6] = a2;
  return result;
}

void sub_1AFD64E5C(void *a1, int a2, int a3)
{
  v5 = a2;
  sub_1AF121C28(a1, a2);
  sub_1AF121C28(a1 + 3, a3);
  sub_1AF121C28(a1 + 6, v5);

  sub_1AF121C28(a1 + 9, a3);
}

void sub_1AFD64EC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 1)
  {
    v4 = 4 * v2;
    memset_pattern16(*(a1 + 152), &unk_1AFEABBB0, 4 * v2);
    memset_pattern16(*(a1 + 176), &unk_1AFEABBB0, v4);
    memset_pattern16(*(a1 + 736), &unk_1AFEABBB0, v4);
    v5 = *(a1 + 760);

    memset_pattern16(v5, &unk_1AFEABBB0, v4);
  }
}

void sub_1AFD64F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 1)
  {
    v4 = 4 * v2;
    bzero(*(a1 + 200), 4 * v2);
    v5 = *(a1 + 784);

    bzero(v5, v4);
  }
}

float sub_1AFD64FB0(int *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 >= 1)
  {
    v5 = a1[2];
    v6 = v5 * v3;
    v7 = *a3;
    v8 = *(a3 + 48);
    v9 = (*a2 + 4 * v5 + 4);
    v10 = (*a2 + 4 * v6 + 4);
    v11 = *a1;
    do
    {
      v12 = *v10++;
      *v7++ = v12;
      v13 = *v9++;
      result = v13;
      *v8++ = v13;
      --v11;
    }

    while (v11);
  }

  if (v3 >= 1)
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 72);
    v17 = 4 * a1[2];
    v18 = *a2 + v17;
    do
    {
      *v15++ = *(v18 + 4);
      result = *(v18 + 4 * v4);
      v18 += v17;
      *v16++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

float sub_1AFD65040(uint64_t a1)
{
  sub_1AFD64FB0(a1, (a1 + 152), a1 + 368);
  sub_1AFD64FB0(a1, (a1 + 176), a1 + 464);

  return sub_1AFD64FB0(a1, (a1 + 200), a1 + 560);
}

void sub_1AFD65098(uint64_t a1, char a2, char a3, char a4, char a5, char a6, float a7)
{
  v13 = llroundf((*(a1 + 44) * 16.0) + 4.0);
  v14 = fmaxf(fminf(a7, 1.0), 0.0);
  if (v13 >= 20)
  {
    v13 = 20;
  }

  v15 = llroundf((*(a1 + 48) * 16.0) + 4.0);
  if (v13 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 20)
  {
    v17 = 20;
  }

  else
  {
    v17 = v15;
  }

  if (v17 <= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = v17;
  }

  v19 = powf(*(a1 + 24), 3.0);
  v21 = *(a1 + 28);
  v20 = *(a1 + 32);
  v22 = powf(v14, 0.888);
  v23 = powf(fmaxf(*(a1 + 36) + *(a1 + 36), 0.0), 0.777);
  v24 = powf(fmaxf(*(a1 + 40) + *(a1 + 40), 0.0), 0.777);
  if ((a2 & 1) == 0)
  {
    v25 = v22 * v23;
    if ((v22 * v23) > 0.0)
    {
      if (v25 >= 1.0)
      {
        sub_1AFD64EC8(a1);
      }

      else
      {
        v26 = 1.0 - v25;
        if (v26 != 1.0)
        {
          v27 = *(a1 + 16);
          if (v27 >= 1)
          {
            v28 = *(a1 + 152);
            v29 = *(a1 + 16);
            do
            {
              *v28 = v26 * *v28;
              ++v28;
              --v29;
            }

            while (v29);
            v30 = *(a1 + 176);
            do
            {
              *v30 = v26 * *v30;
              ++v30;
              --v27;
            }

            while (v27);
          }
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    v31 = v22 * v24;
    if ((v22 * v24) > 0.0)
    {
      if (v31 >= 1.0)
      {
        v35 = *(a1 + 16);
        if (v35 >= 1)
        {
          v36 = 4 * v35;
          bzero(*(a1 + 200), 4 * v35);
          bzero(*(a1 + 784), v36);
        }
      }

      else
      {
        v32 = 1.0 - v31;
        if (v32 != 1.0)
        {
          v33 = *(a1 + 16);
          if (v33 >= 1)
          {
            v34 = *(a1 + 200);
            do
            {
              *v34 = v32 * *v34;
              ++v34;
              --v33;
            }

            while (v33);
          }
        }
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    if ((*(a1 + 728) & 1) == 0 && v14 != 0.0)
    {
      v37 = *(a1 + 16);
      if (v37 >= 1)
      {
        v38 = *(a1 + 656);
        v39 = *(a1 + 152);
        do
        {
          v40 = *v38++;
          *v39 = *v39 + (v14 * v40);
          ++v39;
          --v37;
        }

        while (v37);
      }
    }

    if ((*(a1 + 729) & 1) == 0 && v14 != 0.0)
    {
      v41 = *(a1 + 16);
      if (v41 >= 1)
      {
        v42 = *(a1 + 680);
        v43 = *(a1 + 176);
        do
        {
          v44 = *v42++;
          *v43 = *v43 + (v14 * v44);
          ++v43;
          --v41;
        }

        while (v41);
      }
    }

    if ((*(a1 + 730) & 1) == 0 && v14 != 0.0)
    {
      v45 = *(a1 + 16);
      if (v45 >= 1)
      {
        v46 = *(a1 + 704);
        v47 = *(a1 + 200);
        do
        {
          v48 = *v46++;
          *v47 = *v47 + (v14 * v48);
          ++v47;
          --v45;
        }

        while (v45);
      }
    }
  }

  if ((a5 & 1) == 0)
  {
    v49 = v19 * 0.01;
    if ((v19 * 0.01) > 0.0)
    {
      v50 = *(a1 + 152);
      v51 = *(a1 + 752);
      *(a1 + 152) = *(a1 + 736);
      v52 = *(a1 + 168);
      *(a1 + 168) = v51;
      *(a1 + 736) = v50;
      *(a1 + 752) = v52;
      v53 = *(a1 + 184);
      *(a1 + 184) = *(a1 + 768);
      *(a1 + 768) = v53;
      sub_1AFD655BC(a1, 1, (a1 + 152), (a1 + 736), v18, v49, v14);
      sub_1AFD655BC(a1, 2, (a1 + 176), (a1 + 760), v18, v49, v14);
    }

    if ((v21 * 10.0) > 0.0)
    {
      sub_1AFD656FC(a1, (a1 + 152), (a1 + 176), (a1 + 736), (a1 + 760), (a1 + 784), v21 * 10.0, v14);
    }

    sub_1AFD659B8(a1, (a1 + 152), (a1 + 176), (a1 + 736), (a1 + 760), v16);
    v54 = *(a1 + 152);
    v55 = *(a1 + 752);
    *(a1 + 152) = *(a1 + 736);
    v56 = *(a1 + 168);
    *(a1 + 168) = v55;
    *(a1 + 736) = v54;
    *(a1 + 752) = v56;
    v57 = *(a1 + 184);
    *(a1 + 184) = *(a1 + 768);
    *(a1 + 768) = v57;
    sub_1AFD65CA8(a1, 1, (a1 + 152), (a1 + 736), (a1 + 736), (a1 + 760), v14);
    sub_1AFD65CA8(a1, 2, (a1 + 176), (a1 + 760), (a1 + 736), (a1 + 760), v14);
    sub_1AFD659B8(a1, (a1 + 152), (a1 + 176), (a1 + 736), (a1 + 760), v16);
  }

  if ((a6 & 1) == 0)
  {
    if ((v20 * 0.1) > 0.0)
    {
      v58 = *(a1 + 200);
      *(a1 + 200) = *(a1 + 784);
      *(a1 + 784) = v58;
      v59 = *(a1 + 216);
      *(a1 + 216) = *(a1 + 800);
      *(a1 + 800) = v59;
      sub_1AFD655BC(a1, 0, (a1 + 200), (a1 + 784), v18, v20 * 0.1, v14);
    }

    v60 = *(a1 + 200);
    *(a1 + 200) = *(a1 + 784);
    *(a1 + 784) = v60;
    v61 = *(a1 + 216);
    *(a1 + 216) = *(a1 + 800);
    *(a1 + 800) = v61;
    sub_1AFD65CA8(a1, 0, (a1 + 200), (a1 + 784), (a1 + 152), (a1 + 176), v14);
  }

  if ((*(a1 + 728) & 1) == 0)
  {
    v62 = *(a1 + 16);
    if (v62 >= 1)
    {
      bzero(*(a1 + 656), 4 * v62);
    }

    *(a1 + 728) = 1;
  }

  if ((*(a1 + 729) & 1) == 0)
  {
    v63 = *(a1 + 16);
    if (v63 >= 1)
    {
      bzero(*(a1 + 680), 4 * v63);
    }

    *(a1 + 729) = 1;
  }

  if ((*(a1 + 730) & 1) == 0)
  {
    v64 = *(a1 + 16);
    if (v64 >= 1)
    {
      bzero(*(a1 + 704), 4 * v64);
    }

    *(a1 + 730) = 1;
  }
}

void sub_1AFD655BC(int *a1, int a2, float **a3, uint64_t *a4, int a5, float a6, float a7)
{
  if (a5 >= 1)
  {
    v12 = 0;
    v13 = *a1;
    v14 = a1[1];
    v15 = (a6 * a7) * (v14 * *a1);
    v16 = (*a1 + 1);
    do
    {
      if (v13 >= 1)
      {
        v17 = *a4;
        v18 = *a3;
        v19 = 1;
        do
        {
          if (v14 <= 0)
          {
            v21 = v19 + 1;
          }

          else
          {
            v20 = a1[2];
            v21 = v19 + 1;
            v22 = &v18[v19];
            v23 = 4 * v20;
            v24 = 2 * v20;
            v25 = (v17 + 4 * (v19 + v20));
            v26 = (v14 + 1) - 1;
            do
            {
              v27 = *v22;
              v28 = v22[v24];
              v22 = (v22 + v23);
              *v22 = (1.0 / ((v15 * 4.0) + 1.0)) * (*v25 + (v15 * (((*(v22 - 1) + v22[1]) + v27) + v28)));
              v25 = (v25 + v23);
              --v26;
            }

            while (v26);
          }

          v19 = v21;
        }

        while (v21 != v16);
      }

      sub_1AFD66694(a1, a2, a3);
      ++v12;
    }

    while (v12 != a5);
  }
}

float sub_1AFD656FC(unsigned int *a1, float **a2, float **a3, float **a4, float **a5, float **a6, float a7, float a8)
{
  v14 = *a1;
  v15 = a1[4];
  if (v14 <= 0)
  {
    sub_1AFD66694(a1, 0, a6);
  }

  else
  {
    v18 = a1[1];
    v19 = *a2;
    v20 = *a6;
    v21 = v14 + 1;
    v22 = (*a3 + 1);
    v23 = 1;
    do
    {
      if (v18 <= 0)
      {
        v27 = v23 + 1;
      }

      else
      {
        v24 = a1[2];
        v25 = &v19[v23];
        v26 = 4 * v23 + 4 * v24;
        v27 = v23 + 1;
        v28 = 4 * v24;
        v29 = (v20 + v26);
        v30 = 2 * v24;
        v31 = (v22 + v26);
        v32 = (v18 + 1) - 1;
        do
        {
          *v29 = vabds_f32((v25[v30] - *v25) + *(v31 - 2), *v31);
          v25 = (v25 + v28);
          v29 = (v29 + v28);
          v31 = (v31 + v28);
          --v32;
        }

        while (v32);
      }

      v23 = v27;
    }

    while (v27 != v21);
    sub_1AFD66694(a1, 0, a6);
    v33 = *a6;
    v34 = (*a6 + 1);
    v35 = 1;
    do
    {
      if (v18 <= 0)
      {
        v38 = v35 + 1;
      }

      else
      {
        v36 = 0;
        v37 = a1[2];
        v38 = v35 + 1;
        v39 = *a5;
        v40 = &(*a2)[v35];
        v41 = v35 + v37;
        v42 = &(*a4)[v35 + v37];
        v43 = 8 * v37 + 4 * v35;
        v44 = *a2 + v43;
        v45 = v33 + v43;
        v46 = &(*a3)[v35 + 1 + v37];
        v47 = (v18 + 1) - 1;
        v48 = 1;
        do
        {
          v49 = v33[v35 + v36 / 4] - *&v45[v36];
          v50 = *(v34 + 4 * (v35 + v37) + v36) - *(v34 + 4 * (v35 + v37) + v36 - 8);
          v51 = (v50 * v50) + (v49 * v49);
          if (v51 <= 1.0e-12)
          {
            *(v42 + v36) = 0;
            v54 = 0.0;
            v53 = v41;
          }

          else
          {
            v52 = ((a7 * a8) * (((*&v44[v36] - *(v40 + v36)) + *(v46 + v36 - 8)) - *(v46 + v36))) / sqrtf(v51);
            v53 = v48 * v37 + v35;
            *(v42 + v36) = v49 * v52;
            v54 = v50 * v52;
          }

          v39[v53] = v54;
          v36 += 4 * v37;
          v41 += v37;
          ++v48;
          --v47;
        }

        while (v47);
      }

      v35 = v38;
    }

    while (v38 != v21);
  }

  if (v15 >= 1)
  {
    v55 = *a4;
    v56 = *a2;
    v57 = *a5;
    v58 = *a3;
    do
    {
      v59 = *v55++;
      *v56 = v59 + *v56;
      ++v56;
      v60 = *v57++;
      *v58 = v60 + *v58;
      ++v58;
      --v15;
    }

    while (v15);
  }

  sub_1AFD66694(a1, 1, a2);

  return sub_1AFD66694(a1, 2, a3);
}

float sub_1AFD659B8(float *a1, float **a2, float **a3, float **a4, float **a5, int a6)
{
  v13 = *a1;
  v12 = *(a1 + 1);
  if (v13 >= 1)
  {
    v14 = *a3;
    v15 = *a5;
    v16 = *a4;
    v17 = (*a2 + 2);
    v18 = 1;
    v19 = 4;
    v20 = -0.5 / a1[5];
    do
    {
      if (v12 >= 1)
      {
        v21 = *(a1 + 2);
        v22 = 4 * v21;
        v23 = &v14[2 * v21];
        v24 = v17 + 4 * v21;
        v25 = &v15[v21];
        v26 = &v16[v21];
        v27 = (v12 + 1) - 1;
        v28 = v19;
        do
        {
          *(v25 + v28) = v20 * (((*(v24 + v28 - 4) - *(v24 + v28 - 12)) + *(v23 + v28)) - *(v14 + v28));
          *(v26 + v28) = 0.0;
          v28 += v22;
          --v27;
        }

        while (v27);
      }

      ++v18;
      v19 += 4;
    }

    while (v18 != v13 + 1);
  }

  sub_1AFD66694(a1, 0, a5);
  sub_1AFD665FC(a1, a4, 0.0);
  if (a6 >= 1)
  {
    v29 = 0;
    v30 = *a4;
    v31 = *a5;
    __asm { FMOV            V5.4S, #0.25 }

    v58 = _Q5;
    do
    {
      if (v13 >= 1)
      {
        v37 = 1;
        do
        {
          if (v12 >= 1)
          {
            for (i = 0; i != v12; ++i)
            {
              v39 = *(a1 + 2);
              v40 = v39 * (i + 1);
              *&v30[v40 + v37] = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&v31[v40 + v37], *&v30[v37 + v39 * i]), *&v30[v37 - 1 + v40]), *&v30[v37 + 1 + v40]), *&v30[v37 + v39 * (i + 2)]), _Q5);
            }
          }

          v37 += 4;
        }

        while (v37 <= v13);
      }

      sub_1AFD66694(a1, 0, a4);
      _Q5 = v58;
      ++v29;
    }

    while (v29 != a6);
  }

  if (v13 >= 1)
  {
    v41 = 0;
    v42 = *a4;
    v43 = a1[5] * -0.5;
    v44 = (*a4 + 1);
    v45 = (*a4 + 2);
    v46 = (*a2 + 1);
    v47 = (*a3 + 1);
    v48 = 1;
    do
    {
      if (v12 >= 1)
      {
        v49 = *(a1 + 2);
        v50 = 4 * v49;
        v51 = v44 + 8 * v49;
        v52 = v45 + 4 * v49;
        v53 = v46 + 4 * v49;
        v54 = v47 + 4 * v49;
        v55 = (v12 + 1) - 1;
        v56 = v41;
        do
        {
          *(v53 + v56) = *(v53 + v56) + (v43 * (*(v52 + v56) - *(v52 + v56 - 8)));
          *(v54 + v56) = *(v54 + v56) + (v43 * (*(v51 + v56) - *(v42 + v56 + 4)));
          v56 += v50;
          --v55;
        }

        while (v55);
      }

      ++v48;
      v41 += 4;
    }

    while (v48 != v13 + 1);
  }

  sub_1AFD66694(a1, 1, a2);

  return sub_1AFD66694(a1, 2, a3);
}

float sub_1AFD65CA8(unsigned int *a1, int a2, float **a3, uint64_t *a4, void *a5, void *a6, float a7)
{
  v8 = *a1;
  if (v8 >= 1)
  {
    v9 = a1[1];
    v10 = v8 + 0.5;
    v11 = -(*(a1 + 5) * a7);
    v12 = *a4;
    v13 = v8 + 1;
    v14 = *a5 + 4;
    v15 = *a6 + 4;
    v16 = *a3 + 1;
    v17 = 1;
    do
    {
      if (v9 >= 1)
      {
        v18 = v17;
        v19 = a1[2];
        v20 = 4 * v19;
        v21 = 1;
        do
        {
          v22 = v18 + (v11 * *(v14 + v20));
          v23 = 0.5;
          v24 = 0.5;
          if (v22 >= 0.5)
          {
            v24 = v18 + (v11 * *(v14 + v20));
            if (v22 > v10)
            {
              v24 = v10;
            }
          }

          v25 = v21 + (v11 * *(v15 + v20));
          if (v25 >= 0.5)
          {
            v23 = v21 + (v11 * *(v15 + v20));
            if (v25 > (v9 + 0.5))
            {
              v23 = v9 + 0.5;
            }
          }

          v26 = v23;
          v27 = v23 - v23;
          v28 = v19 * v26;
          v16[v20 / 4] = ((v24 - v24) * ((v27 * *(v12 + 4 * (v19 + v28 + v24 + 1))) + ((1.0 - v27) * *(v12 + 4 * (v28 + v24 + 1))))) + ((1.0 - (v24 - v24)) * ((v27 * *(v12 + 4 * (v19 + v28 + v24))) + ((1.0 - v27) * *(v12 + 4 * (v28 + v24)))));
          ++v21;
          v20 += 4 * v19;
        }

        while (v9 + 1 != v21);
      }

      ++v17;
      v14 += 4;
      v15 += 4;
      ++v16;
    }

    while (v17 != v13);
  }

  return sub_1AFD66694(a1, a2, a3);
}

float32x4_t *sub_1AFD65E18(float32x4_t *result, int a2, float32x4_t a3, float a4, float32x4_t a5, float a6)
{
  v8 = result;
  if (a2)
  {
    v9 = vmulq_f32(vsubq_f32(a3, result[4]), result[5]);
    v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  }

  else
  {
    v10 = a3.f32[2];
  }

  v11 = fabsf(v10);
  if (a6 > 0.0 && v11 < a4)
  {
    v13 = result[8].f32[3] / a6;
    v14 = acosf(v10 / a4);
    v15 = sinf(v14) * a4;
    if (a2)
    {
      v16 = *(v8 + 112);
      v17 = vsubq_f32(a3, *(v8 + 64));
      v18 = vmulq_f32(v16, xmmword_1AFE21390);
      v19 = vnegq_f32(v18);
      v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
      v21 = vextq_s8(v20, v20, 8uLL);
      v22 = vextq_s8(v18, v19, 8uLL);
      v23 = vrev64q_s32(v18);
      v23.i32[0] = v19.i32[1];
      v23.i32[3] = v19.i32[2];
      v24 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v22, *v17.f32, 1), v21, v17.f32[0]), v23, v17, 2);
      v25 = vnegq_f32(v24);
      v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
      v27 = vrev64q_s32(v24);
      v27.i32[0] = v25.i32[1];
      v27.i32[3] = v25.i32[2];
      v28 = vadd_f32(*&vmlaq_laneq_f32(vmulq_laneq_f32(v24, v16, 3), v27, v16, 2), *&vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v16.f32, 1), vextq_s8(v26, v26, 8uLL), v16.f32[0]));
      v29 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v22, *a5.f32, 1), v21, a5.f32[0]), v23, a5, 2);
      v30 = vnegq_f32(v29);
      v31 = vtrn2q_s32(v29, vtrn1q_s32(v29, v30));
      v32 = vrev64q_s32(v29);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v29, v16, 3), v32, v16, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v29, v30, 8uLL), *v16.f32, 1), vextq_s8(v31, v31, 8uLL), v16.f32[0])).u64[0];
    }

    else
    {
      v28 = *a3.f32;
      v33 = a5.i64[0];
    }

    v35 = *&v28;
    v37 = v33;
    *(v8 + 728) &= sub_1AFD65FC4(v8, (v8 + 656), 0, *&v28, v15, v13 * *&v33) ^ 1;
    result = sub_1AFD65FC4(v8, (v8 + 680), 0, v35, v15, vmuls_lane_f32(v13, v37, 1));
    *(v8 + 729) &= result ^ 1;
  }

  return result;
}

uint64_t sub_1AFD65FC4(uint64_t a1, uint64_t *a2, int a3, double a4, float a5, float a6)
{
  v6 = 0;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a6 == 0.0;
  }

  v8 = v7;
  if (a5 > 1.0e-12 && (v8 & 1) == 0)
  {
    v9 = *(a1 + 128);
    if ((*&a4 + a5) <= (v9 * -0.5))
    {
      return 0;
    }

    if ((*&a4 - a5) >= (v9 * 0.5))
    {
      return 0;
    }

    v10 = *(a1 + 132);
    if ((*(&a4 + 1) + a5) <= (v10 * -0.5) || (*(&a4 + 1) - a5) >= (v10 * 0.5))
    {
      return 0;
    }

    else
    {
      v11 = *(a1 + 4);
      v12 = *(a1 + 148);
      v13 = (v12 * (*(&a4 + 1) + (v10 * 0.5))) + 1.0;
      v14 = v12 * a5;
      v15 = vcvtms_s32_f32(v13 - v14);
      v16 = v15 & ~(v15 >> 31);
      v17 = vcvtps_s32_f32(v13 + v14);
      if (v11 + 1 < v17)
      {
        v18 = v11 + 1;
      }

      else
      {
        v18 = v17;
      }

      if (v16 <= v18)
      {
        *&a4 = (v12 * (*&a4 + (v9 * 0.5))) + 1.0;
        *(&a4 + 1) = (v12 * (*(&a4 + 1) + (v10 * 0.5))) + 1.0;
        v21 = (v14 + v14) / 3.0;
        v22 = 0.2 / (v14 - v21);
        v23 = vcvtms_s32_f32(*&a4 - v14);
        v24 = v23 & ~(v23 >> 31);
        v25 = vcvtps_s32_f32(*&a4 + v14);
        if (*a1 + 1 < v25)
        {
          v26 = *a1 + 1;
        }

        else
        {
          v26 = v25;
        }

        do
        {
          if (v24 <= v26)
          {
            v27 = *a2;
            v28 = v24;
            do
            {
              v29.f32[0] = v28;
              v29.f32[1] = v16;
              v30 = vsub_f32(*&a4, v29);
              v31 = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
              v32 = ((v14 - v31) * v22) + 0.0;
              if (v31 >= v14)
              {
                v32 = 0.0;
              }

              v29.f32[0] = v28 + 1.0;
              if (v31 >= v21)
              {
                v33 = v32;
              }

              else
              {
                v33 = 0.2;
              }

              v34 = vsub_f32(*&a4, v29);
              v35 = sqrtf(vaddv_f32(vmul_f32(v34, v34)));
              if (v35 >= v21)
              {
                v36 = v35 < v14;
                v37 = v33 + ((v14 - v35) * v22);
                if (v36)
                {
                  v33 = v37;
                }
              }

              else
              {
                v33 = v33 + 0.2;
              }

              v29.f32[1] = v16 + 1.0;
              v38 = vsub_f32(*&a4, v29);
              v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
              if (v39 >= v21)
              {
                v36 = v39 < v14;
                v40 = v33 + ((v14 - v39) * v22);
                if (v36)
                {
                  v33 = v40;
                }
              }

              else
              {
                v33 = v33 + 0.2;
              }

              v29.f32[0] = (v28 + 1.0) + -1.0;
              v41 = vsub_f32(*&a4, v29);
              v42 = sqrtf(vaddv_f32(vmul_f32(v41, v41)));
              if (v42 >= v21)
              {
                if (v42 < v14)
                {
                  v33 = v33 + ((v14 - v42) * v22);
                }
              }

              else
              {
                v33 = v33 + 0.2;
              }

              v43.f32[0] = ((v28 + 1.0) + -1.0) + 0.5;
              v43.f32[1] = (v16 + 1.0) + -0.5;
              v44 = vsub_f32(*&a4, v43);
              v45 = sqrtf(vaddv_f32(vmul_f32(v44, v44)));
              if (v45 >= v21)
              {
                if (v45 < v14)
                {
                  v33 = v33 + ((v14 - v45) * v22);
                }
              }

              else
              {
                v33 = v33 + 0.2;
              }

              if (v33 != 0.0)
              {
                *(v27 + 4 * (v28 + v16 * *(a1 + 8))) = *(v27 + 4 * (v28 + v16 * *(a1 + 8))) + (v33 * a6);
              }

              ++v28;
            }

            while (v26 + 1 != v28);
          }

          v6 = 1;
          v7 = v16++ == v18;
        }

        while (!v7);
      }

      else
      {
        return 1;
      }
    }
  }

  return v6;
}

float32x4_t *sub_1AFD66268(float32x4_t *result, int a2, float32x4_t a3, float a4, float a5, float a6)
{
  v10 = result;
  if (a2)
  {
    v11 = vmulq_f32(vsubq_f32(a3, result[4]), result[5]);
    v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  }

  else
  {
    v12 = a3.f32[2];
  }

  v13 = fabsf(v12);
  if (a6 > 0.0 && v13 < a4)
  {
    v15 = 1.0 / a6;
    v31 = a3;
    v16 = acosf(v12 / a4);
    v17 = sinf(v16);
    v18 = *v31.i64;
    v19 = v17 * a4;
    if (a2)
    {
      v20 = *(v10 + 112);
      v21 = vsubq_f32(v31, *(v10 + 64));
      v22 = vmulq_f32(v20, xmmword_1AFE21390);
      v23 = vnegq_f32(v22);
      v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
      v25 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v21.f32, 1), vextq_s8(v24, v24, 8uLL), v21.f32[0]);
      v26 = vrev64q_s32(v22);
      v26.i32[0] = v23.i32[1];
      v26.i32[3] = v23.i32[2];
      v27 = vmlaq_laneq_f32(v25, v26, v21, 2);
      v28 = vnegq_f32(v27);
      v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
      v30 = vrev64q_s32(v27);
      v30.i32[0] = v28.i32[1];
      v30.i32[3] = v28.i32[2];
      *&v18 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v20, 3), v30, v20, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *v20.f32, 1), vextq_s8(v29, v29, 8uLL), v20.f32[0])).u64[0];
    }

    result = sub_1AFD65FC4(v10, (v10 + 704), 0, v18, v19, v15 * a5);
    *(v10 + 730) &= result ^ 1;
  }

  return result;
}

uint64_t sub_1AFD663A8(uint64_t result, unsigned int a2, int a3, uint64_t a4, int a5, char a6)
{
  v6 = result + 32 * a2;
  *(v6 + 244) = a3;
  *(v6 + 256) = 0;
  *(v6 + 264) = a5;
  *(v6 + 268) = a6;
  if (a4)
  {
    if (*(result + 4 * ((a2 & 0xFFFFFFFD) == 1)) == *(a4 + 4 * ((a5 & 0xFFFFFFFD) == 1)))
    {
      *(v6 + 256) = a4;
    }
  }

  return result;
}

double sub_1AFD663F4(float32x4_t *a1, float32x4_t a2)
{
  v2 = a1[7];
  v3 = vsubq_f32(a2, a1[4]);
  v4 = vmulq_f32(v2, xmmword_1AFE21390);
  v5 = vnegq_f32(v4);
  v6 = vtrn2q_s32(v4, vtrn1q_s32(v4, v5));
  v7 = vmulq_lane_f32(vextq_s8(v4, v5, 8uLL), *v3.f32, 1);
  v8 = vrev64q_s32(v4);
  v8.i32[0] = v5.i32[1];
  v8.i32[3] = v5.i32[2];
  v9 = vmlaq_laneq_f32(vmlaq_n_f32(v7, vextq_s8(v6, v6, 8uLL), v3.f32[0]), v8, v3, 2);
  v10 = vnegq_f32(v9);
  v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
  v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v2.f32, 1), vextq_s8(v11, v11, 8uLL), v2.f32[0]);
  v13 = vrev64q_s32(v9);
  v13.i32[0] = v10.i32[1];
  v13.i32[3] = v10.i32[2];
  v2.i64[0] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v9, v2, 3), v13, v2, 2), v12).u64[0];
  v13.i32[0] = a1[9].i32[1];
  v14 = (v13.f32[0] * (v2.f32[0] + (a1[8].f32[0] * 0.5))) + 0.5;
  v15 = (v13.f32[0] * (v2.f32[1] + (a1[8].f32[1] * 0.5))) + 0.5;
  v16 = 0.5;
  if (v14 >= 0.5)
  {
    v16 = v14;
    if (v14 > (a1->i32[0] + 0.5))
    {
      v16 = a1->i32[0] + 0.5;
    }
  }

  if (v15 >= 0.5)
  {
    if (v15 > (a1->i32[1] + 0.5))
    {
      v15 = a1->i32[1] + 0.5;
    }
  }

  else
  {
    v15 = 0.5;
  }

  v17 = v15;
  v18 = v16 + 1;
  v19 = v16 - v16;
  v20 = v15 - v15;
  v21 = a1->i32[2];
  v22 = v21 * v17;
  v23 = v22 + v16;
  v24 = a1[9].i64[1];
  v25 = a1[8].f32[2];
  v26 = v21 + v22;
  v27 = v26 + v16;
  v28 = v22 + v18;
  v29 = v26 + v18;
  v30 = v25 * ((v19 * ((v20 * *(v24 + 4 * v29)) + ((1.0 - v20) * *(v24 + 4 * v28)))) + ((1.0 - v19) * ((v20 * *(v24 + 4 * v27)) + ((1.0 - v20) * *(v24 + 4 * v23)))));
  v31 = a1[11].i64[0];
  v32 = v25 * ((v19 * ((v20 * *(v31 + 4 * v29)) + ((1.0 - v20) * *(v31 + 4 * v28)))) + ((1.0 - v19) * ((v20 * *(v31 + 4 * v27)) + ((1.0 - v20) * *(v31 + 4 * v23)))));
  v33 = a1[6];
  v34 = vmulq_f32(v33, xmmword_1AFE21390);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v34, v35, 8uLL), v32), vextq_s8(v36, v36, 8uLL), v30);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vmlaq_f32(v37, 0, v38);
  v40 = vnegq_f32(v39);
  v41 = vtrn2q_s32(v39, vtrn1q_s32(v39, v40));
  v42 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v39, v40, 8uLL), *v33.f32, 1), vextq_s8(v41, v41, 8uLL), v33.f32[0]);
  v43 = vrev64q_s32(v39);
  v43.i32[0] = v40.i32[1];
  v43.i32[3] = v40.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v39, v33, 3), v43, v33, 2), v42).u64[0];
  return result;
}

int *sub_1AFD665FC(int *result, float **a2, float a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = *a2;
  if (*result >= 1)
  {
    v6 = result[2] + result[2] * v3;
    v7 = v5 + 1;
    v8 = *result;
    do
    {
      *v7 = a3;
      v7[v6] = a3;
      ++v7;
      --v8;
    }

    while (v8);
  }

  v9 = result[2];
  if (v3 <= 0)
  {
    v12 = v3 + 1;
    v11 = v4 + 1;
    v10 = v11;
  }

  else
  {
    v10 = v4 + 1;
    v11 = v4 + 1;
    v12 = v3 + 1;
    v13 = &v5[v9];
    do
    {
      *v13 = a3;
      v13[v10] = a3;
      v13 += v9;
      --v3;
    }

    while (v3);
  }

  *v5 = a3;
  v5[v9 * v12] = a3;
  v5[v10] = a3;
  v5[v9 * v12 + v11] = a3;
  return result;
}

float sub_1AFD66694(unsigned int *a1, int a2, float **a3)
{
  v3 = a1;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[61];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 < 1;
  }

  if (!v7)
  {
    v8 = a1[2];
    v9 = v8 * v4;
    v10 = &(*a3)[(v8 + v8 * v4) + 1];
    v11 = &(*a3)[v9 + 1];
    v12 = *a1;
    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = -v13;
      if (a2 == 2)
      {
        v14 = v15;
      }

      *v10++ = v14;
      --v12;
    }

    while (v12);
  }

  v16 = a1[69];
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v4 < 1;
  }

  if (!v17)
  {
    v18 = a1[2];
    v19 = &(*a3)[v18 + 1];
    v20 = v4;
    do
    {
      v21 = *v19;
      if (a2 == 1)
      {
        v21 = -*v19;
      }

      *(v19 - 1) = v21;
      v19 = (v19 + v18 * 4);
      --v20;
    }

    while (v20);
  }

  v22 = a1[77];
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v5 < 1;
  }

  if (!v23)
  {
    v24 = *a3;
    v25 = a1[2] + 1;
    v26 = *a3 + 1;
    v27 = v5;
    do
    {
      v28 = v24[v25];
      if (a2 == 2)
      {
        v28 = -v28;
      }

      *v26++ = v28;
      ++v25;
      --v27;
    }

    while (v27);
  }

  v29 = v5;
  v30 = a1[85];
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = v4 <= 0;
  }

  v149 = v30;
  v150 = v22;
  v148 = v16;
  if (v31)
  {
    v34 = (v5 + 1);
    v36 = v4 + 1;
    v33 = v34;
  }

  else
  {
    v32 = v3[2];
    v33 = v5 + 1;
    v34 = (v5 + 1);
    v35 = *a3;
    v36 = v4 + 1;
    v37 = v32 + v5;
    v38 = &(*a3)[v32 + v33];
    v39 = v4;
    do
    {
      v40 = v35[v37];
      if (a2 == 1)
      {
        v40 = -v40;
      }

      *v38 = v40;
      v37 += v32;
      v38 += v32;
      --v39;
    }

    while (v39);
  }

  v41 = 0;
  v42 = v3 + 60;
  v43 = (v3 + 38);
  v44 = (v3 + 44);
  v45 = (v3 + 50);
  v46 = *a3;
  v47 = (*a3 + 1);
  v48 = 4 * v5;
  v49 = v36;
  v50 = 4 * v33;
  v51 = (v36 + 2) & 0x1FFFFFFFCLL;
  v52 = vdupq_n_s64(v36 - 2);
  v53 = v36 - 1;
  v155 = v5 - 1;
  v54 = xmmword_1AFE21100;
  v55 = xmmword_1AFE21110;
  v56 = v34 - 1;
  v151 = v33;
  v153 = v36;
  v154 = &(*a3)[v33];
  v57 = v4 - 1;
  v152 = v52;
  do
  {
    v58 = &v42[8 * v41];
    if (v58[1] != 1)
    {
      goto LABEL_134;
    }

    LODWORD(v59) = v41 ^ 2;
    v60 = *(v58 + 2);
    v61 = 1.0;
    if (v60)
    {
      if (v43 == a3)
      {
        v62 = (v60 + 24 * v58[6] + 368);
      }

      else
      {
        v62 = 0;
      }

      if (v44 == a3)
      {
        v62 = (v60 + 24 * v58[6] + 464);
      }

      if (v45 == a3)
      {
        LODWORD(v59) = v58[6];
        v62 = (v60 + 24 * v59 + 560);
      }

      else if (v62)
      {
        v59 = v58[6];
        if (((v41 - v59 + 4) & 0x80000001) == 1)
        {
          v62 = (v60 + 24 * v59 + 368);
          v63 = v60 + 24 * v59 + 464;
          if (v43 == a3)
          {
            v62 = v63;
          }
        }

        v64 = v44 != a3;
        if (v41)
        {
          v64 = v43 != a3;
        }

        if (v64)
        {
          v65 = (v59 + 1) & 3;
          if (v59 + 1 <= 0)
          {
            v65 = -(-(v59 + 1) & 3);
          }

          v61 = *&v42[8 * ((v41 + 1) & 3) + 2] * *&v42[8 * v65 + 2];
        }

        else
        {
          v61 = -(*(v58 + 2) * *&v42[8 * v59 + 2]);
        }
      }
    }

    else
    {
      v62 = 0;
    }

    v66 = *(v58 + 28);
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        if (v62)
        {
          if (v5 >= 1)
          {
            v72 = 0;
            v73 = *v62;
            v74 = v155;
            do
            {
              if (v66)
              {
                v75 = v74;
              }

              else
              {
                v75 = v72;
              }

              *(v47 + 4 * v72++) = v61 * *(v73 + 4 * v75);
              --v74;
            }

            while (v56 != v72);
          }
        }

        else
        {
          if (v42[8 * v59 + 1] != 1)
          {
            v102 = v47;
            if (v5 < 1)
            {
              goto LABEL_134;
            }

            goto LABEL_114;
          }

          if (v29 >= 1)
          {
            v93 = v3[2] * v4;
            v94 = v56;
            v95 = v47;
            do
            {
              *v95 = v95[v93];
              ++v95;
              --v94;
            }

            while (v94);
          }
        }
      }

      else if (v62)
      {
        if (v4 >= 1)
        {
          v82 = 0;
          v83 = *v62;
          v84 = 4 * v3[2];
          v85 = (v154 + v84);
          v86 = v57;
          do
          {
            if (v66)
            {
              v87 = v86;
            }

            else
            {
              v87 = v82;
            }

            *v85 = v61 * *(v83 + 4 * v87);
            ++v82;
            --v86;
            v85 = (v85 + v84);
          }

          while (v53 != v82);
        }
      }

      else if (v42[8 * v59 + 1] == 1)
      {
        if (v4 >= 1)
        {
          v99 = v3[2];
          v100 = &v46[v99];
          v101 = v53;
          do
          {
            *(v100 + v50) = v100[1];
            v100 = (v100 + v99 * 4);
            --v101;
          }

          while (v101);
        }
      }

      else if (v4 >= 1)
      {
        v114 = 0;
        v115 = v3[2];
        v116 = v154;
        do
        {
          v117 = vdupq_n_s64(v114);
          v118 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v117, v55)));
          if (vuzp1_s16(v118, *v117.i8).u8[0])
          {
            *(v116 + 4 * v115) = 0;
          }

          if (vuzp1_s16(v118, *&v117).i8[2])
          {
            *(v116 + 8 * v115) = 0;
          }

          v119 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v117, v54)));
          if (vuzp1_s16(v119, v119).i32[1])
          {
            *(v116 + 12 * v115) = 0;
            *(v116 + 16 * v115) = 0;
          }

          v114 += 4;
          v116 += 16 * v115;
        }

        while (v51 != v114);
      }
    }

    else if (v41)
    {
      if (v62)
      {
        if (v4 >= 1)
        {
          v76 = 0;
          v77 = *v62;
          v78 = v3[2];
          v79 = &v46[v78];
          v80 = v57;
          do
          {
            if (v66)
            {
              v81 = v80;
            }

            else
            {
              v81 = v76;
            }

            *v79 = v61 * *(v77 + 4 * v81);
            ++v76;
            --v80;
            v79 = (v79 + v78 * 4);
          }

          while (v53 != v76);
        }
      }

      else if (v42[8 * v59 + 1] == 1)
      {
        if (v4 >= 1)
        {
          v96 = v3[2];
          v97 = &v46[v96];
          v98 = v53;
          do
          {
            *v97 = v97[v29];
            v97 = (v97 + v96 * 4);
            --v98;
          }

          while (v98);
        }
      }

      else if (v4 >= 1)
      {
        v108 = 0;
        v109 = v3[2];
        v110 = v46;
        do
        {
          v111 = vdupq_n_s64(v108);
          v112 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v111, v55)));
          if (vuzp1_s16(v112, *v111.i8).u8[0])
          {
            v110[v109] = 0.0;
          }

          if (vuzp1_s16(v112, *&v111).i8[2])
          {
            v110[2 * v109] = 0.0;
          }

          v113 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v111, v54)));
          if (vuzp1_s16(v113, v113).i32[1])
          {
            v110[3 * v109] = 0.0;
            v110[4 * v109] = 0.0;
          }

          v108 += 4;
          v110 += 4 * v109;
        }

        while (v51 != v108);
      }
    }

    else
    {
      if (v62)
      {
        if (v5 >= 1)
        {
          v67 = 0;
          v68 = *v62;
          v69 = v47 + 4 * (v3[2] * v49);
          v70 = v155;
          do
          {
            if (v66)
            {
              v71 = v70;
            }

            else
            {
              v71 = v67;
            }

            *(v69 + 4 * v67++) = v61 * *(v68 + 4 * v71);
            --v70;
          }

          while (v56 != v67);
        }

        goto LABEL_134;
      }

      if (v42[8 * v59 + 1] != 1)
      {
        if (v5 < 1)
        {
          goto LABEL_134;
        }

        v102 = (v47 + 4 * (v3[2] * v49));
LABEL_114:
        v146 = v29;
        v147 = v34;
        v144 = v3;
        v145 = v5;
        v142 = v45;
        v143 = v4;
        v141 = v50;
        v103 = a3;
        v139 = v57;
        v140 = v6;
        v104 = v48;
        v105 = v42;
        v106 = v43;
        v107 = v44;
        bzero(v102, v48);
        v57 = v139;
        v6 = v140;
        v45 = v142;
        v44 = v107;
        v43 = v106;
        v42 = v105;
        v48 = v104;
        v55 = xmmword_1AFE21110;
        v54 = xmmword_1AFE21100;
        v52 = v152;
        v49 = v153;
        a3 = v103;
        v50 = v141;
        v4 = v143;
        v3 = v144;
        v5 = v145;
        v29 = v146;
        v34 = v147;
        goto LABEL_134;
      }

      if (v5 >= 1)
      {
        v88 = v3[2];
        v89 = (v47 + 4 * v88 * v49);
        v90 = (v47 + 4 * v88);
        v91 = v56;
        do
        {
          v92 = *v90++;
          *v89++ = v92;
          --v91;
        }

        while (v91);
      }
    }

LABEL_134:
    ++v41;
  }

  while (v41 != 4);
  v120 = *a3;
  if (v6 == 2 && v29 >= 1)
  {
    v121 = v4;
    v122 = v48;
    bzero(&v120[(v3[2] * v49) + 1], v48);
    v48 = v122;
    v55 = xmmword_1AFE21110;
    v54 = xmmword_1AFE21100;
    v52 = v152;
    v49 = v153;
    LODWORD(v4) = v121;
  }

  if (v148 == 2 && v4 >= 1)
  {
    v123 = 0;
    v124 = v3[2];
    v125 = v120;
    do
    {
      v126 = vdupq_n_s64(v123);
      v127 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v126, v55)));
      if (vuzp1_s16(v127, *v126.i8).u8[0])
      {
        v125[v124] = 0.0;
      }

      if (vuzp1_s16(v127, *&v126).i8[2])
      {
        v125[2 * v124] = 0.0;
      }

      v128 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v126, v54)));
      if (vuzp1_s16(v128, v128).i32[1])
      {
        v125[3 * v124] = 0.0;
        v125[4 * v124] = 0.0;
      }

      v123 += 4;
      v125 += 4 * v124;
    }

    while (((v49 + 2) & 0x1FFFFFFFCLL) != v123);
  }

  if (v150 == 2 && v5 >= 1)
  {
    v129 = v3;
    v130 = v4;
    bzero(v120 + 1, v48);
    v55 = xmmword_1AFE21110;
    v54 = xmmword_1AFE21100;
    v52 = v152;
    v49 = v153;
    LODWORD(v4) = v130;
    v3 = v129;
  }

  v131 = v3[2];
  if (v149 == 2 && v4 >= 1)
  {
    v132 = 0;
    v133 = &v120[v151];
    do
    {
      v134 = vdupq_n_s64(v132);
      v135 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v134, v55)));
      if (vuzp1_s16(v135, *v134.i8).u8[0])
      {
        v133[v131] = 0.0;
      }

      if (vuzp1_s16(v135, *&v134).i8[2])
      {
        v133[2 * v131] = 0.0;
      }

      v136 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v134, v54)));
      if (vuzp1_s16(v136, v136).i32[1])
      {
        v133[3 * v131] = 0.0;
        v133[4 * v131] = 0.0;
      }

      v132 += 4;
      v133 += 4 * v131;
    }

    while (((v49 + 2) & 0x1FFFFFFFCLL) != v132);
  }

  *v120 = (v120[1] + v120[v131]) * 0.5;
  v137 = v131 * v49;
  v120[v137] = (v120[v137 + 1] + v120[v131 * v4]) * 0.5;
  v120[v151] = (v120[v29] + v120[v131 + v34]) * 0.5;
  result = (v120[v131 * v49 + v29] + v120[v131 * v4 + v34]) * 0.5;
  v120[v137 + v34] = result;
  return result;
}

void *sub_1AFD67078(void *result)
{
  if (result)
  {
    sub_1AFD6724C(result);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

float sub_1AFD670DC(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 24) = result;
  return result;
}

float sub_1AFD670F4(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 28) = result;
  return result;
}

float sub_1AFD6710C(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 32) = result;
  return result;
}

float sub_1AFD67124(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 36) = result;
  return result;
}

float sub_1AFD6713C(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 40) = result;
  return result;
}

float sub_1AFD67154(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 44) = result;
  return result;
}

float sub_1AFD6716C(uint64_t a1, float a2)
{
  result = fmaxf(fminf(a2, 1.0), 0.0);
  *(a1 + 48) = result;
  return result;
}

float sub_1AFD67194(float32x4_t *a1, int a2, float32x4_t a3)
{
  if (a2)
  {
    v3 = a1[7];
    v4 = vsubq_f32(a3, a1[4]);
    v5 = vmulq_f32(v3, xmmword_1AFE21390);
    v6 = vnegq_f32(v5);
    v7 = vtrn2q_s32(v5, vtrn1q_s32(v5, v6));
    v8 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v6, 8uLL), *v4.f32, 1), vextq_s8(v7, v7, 8uLL), v4.f32[0]);
    v9 = vrev64q_s32(v5);
    v9.i32[0] = v6.i32[1];
    v9.i32[3] = v6.i32[2];
    v10 = vmlaq_laneq_f32(v8, v9, v4, 2);
    v11 = vnegq_f32(v10);
    v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
    v13 = vrev64q_s32(v10);
    v13.i32[0] = v11.i32[1];
    v13.i32[3] = v11.i32[2];
    a3 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v10, v3, 3), v13, v3, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v10, v11, 8uLL), *v3.f32, 1), vextq_s8(v12, v12, 8uLL), v3.f32[0]));
  }

  return fmaxf(fmaxf(fabsf(a3.f32[0]) + (a1[8].f32[0] * -0.5), 0.0), fmaxf(fmaxf(fabsf(a3.f32[1]) + (a1[8].f32[1] * -0.5), 0.0), fabsf(a3.f32[2])));
}

void *sub_1AFD6724C(void *a1)
{
  v2 = a1[104];
  if (v2)
  {
    a1[105] = v2;
    operator delete(v2);
  }

  v3 = a1[101];
  if (v3)
  {
    a1[102] = v3;
    operator delete(v3);
  }

  v4 = a1[98];
  if (v4)
  {
    a1[99] = v4;
    operator delete(v4);
  }

  v5 = a1[95];
  if (v5)
  {
    a1[96] = v5;
    operator delete(v5);
  }

  v6 = a1[92];
  if (v6)
  {
    a1[93] = v6;
    operator delete(v6);
  }

  v7 = a1[88];
  if (v7)
  {
    a1[89] = v7;
    operator delete(v7);
  }

  v8 = a1[85];
  if (v8)
  {
    a1[86] = v8;
    operator delete(v8);
  }

  v9 = a1[82];
  if (v9)
  {
    a1[83] = v9;
    operator delete(v9);
  }

  for (i = 0; i != -12; i -= 3)
  {
    v11 = a1[i + 79];
    if (v11)
    {
      a1[i + 80] = v11;
      operator delete(v11);
    }
  }

  for (j = 0; j != -12; j -= 3)
  {
    v13 = a1[j + 67];
    if (v13)
    {
      a1[j + 68] = v13;
      operator delete(v13);
    }
  }

  for (k = 0; k != -12; k -= 3)
  {
    v15 = a1[k + 55];
    if (v15)
    {
      a1[k + 56] = v15;
      operator delete(v15);
    }
  }

  v16 = a1[25];
  if (v16)
  {
    a1[26] = v16;
    operator delete(v16);
  }

  v17 = a1[22];
  if (v17)
  {
    a1[23] = v17;
    operator delete(v17);
  }

  v18 = a1[19];
  if (v18)
  {
    a1[20] = v18;
    operator delete(v18);
  }

  return a1;
}

void sub_1AFD67464(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AF10A1D0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1AFD67ED0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

os_unfair_lock_s *vfx_counters_destroy(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result);
    free(*&v1[2]._os_unfair_lock_opaque);
    v2 = *&v1[14]._os_unfair_lock_opaque;
    if (*&v1[16]._os_unfair_lock_opaque != v2)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = 3 * v3;
        free(*(v2 + 24 * v3));
        v2 = *&v1[14]._os_unfair_lock_opaque;
        v6 = *&v1[16]._os_unfair_lock_opaque;
        *(v2 + 8 * v5) = 0;
        v3 = v4;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3) > v4++);
    }

    os_unfair_lock_unlock(v1);
    v8 = *&v1[26]._os_unfair_lock_opaque;
    if (v8)
    {
      *&v1[28]._os_unfair_lock_opaque = v8;
      operator delete(v8);
    }

    v9 = *&v1[20]._os_unfair_lock_opaque;
    if (v9)
    {
      *&v1[22]._os_unfair_lock_opaque = v9;
      operator delete(v9);
    }

    v10 = *&v1[14]._os_unfair_lock_opaque;
    if (v10)
    {
      *&v1[16]._os_unfair_lock_opaque = v10;
      operator delete(v10);
    }

    sub_1AF144AE4(&v1[4]);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

void vfx_counters_push_frame(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);
    ++*(a1 + 128);
    v3 = *(a1 + 56);
    v2 = *(a1 + 64);
    if (v2 != v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 132);
      v7 = 1;
      do
      {
        v8 = *(a1 + 128) % v6;
        v9 = v8 + v5 * v6;
        v10 = v3 + 24 * v4;
        if (*(v10 + 17) == 1)
        {
          if (v8 <= 0)
          {
            v11 = v6;
          }

          else
          {
            v11 = 0;
          }

          v12 = v9 + v11 - 1;
          v13 = *(a1 + 104);
          v14 = *(v13 + 8 * v12);
          *(v13 + 8 * v9) = v14;
          if (*(v10 + 18) == 1)
          {
            printf("PushFrame #%d last:%d [%p:%s] value:%g\n", v8, v12, a1, *(a1 + 8), v14);
            v3 = *(a1 + 56);
            v2 = *(a1 + 64);
          }
        }

        else
        {
          *(*(a1 + 104) + 8 * v9) = 0;
        }

        ++v5;
        v4 = v7;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) > v7++);
    }

    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_1AFD67790(uint64_t a1, const char *a2, char a3, char a4, unsigned int a5, char a6)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  LOBYTE(v12) = *a2;
  if (*a2)
  {
    v13 = 0;
    v14 = 63689;
    v15 = 1;
    do
    {
      v13 = v14 * v13 + v12;
      v14 *= 378551;
      v12 = a2[v15++];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v25 = v13;
  v17 = sub_1AFD67FE8((a1 + 16), &v25);
  if (v17)
  {
    v16 = *(v17 + 5);
  }

  else
  {
    v18 = *(a1 + 88);
    if (*(a1 + 80) == v18)
    {
      v16 = -1431655765 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
      v23 = 0uLL;
      v24 = 0;
      sub_1AFD67464(a1 + 56, &v23);
    }

    else
    {
      v16 = *(v18 - 4);
      *(a1 + 88) = v18 - 4;
    }

    v19 = strdup(a2);
    v20 = *(a1 + 56) + 24 * v16;
    *v20 = v19;
    *(v20 + 8) = 0;
    v21 = v25 | 0xFF000000;
    if (a5)
    {
      v21 = a5;
    }

    *(v20 + 12) = v21;
    *(v20 + 16) = a4;
    *(v20 + 17) = a3;
    *(v20 + 18) = a6;
    *&v23 = &v25;
    *(sub_1AFD6809C((a1 + 16), &v25) + 5) = v16;
    sub_1AF3436B0((a1 + 104), *(a1 + 132) + ((*(a1 + 112) - *(a1 + 104)) >> 3));
  }

  os_unfair_lock_unlock(a1);
  return v16;
}

void vfx_counters_remove_counter(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);
    v4 = *(*(a1 + 56) + 24 * a2);
    LOBYTE(v5) = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 63689;
      v8 = 1;
      do
      {
        v6 = v7 * v6 + v5;
        v7 *= 378551;
        v5 = v4[v8++];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v23 = v6;
    sub_1AFD682D0((a1 + 16), &v23);
    free(*(*(a1 + 56) + 24 * a2));
    *(*(a1 + 56) + 24 * a2) = 0;
    v10 = *(a1 + 88);
    v9 = *(a1 + 96);
    if (v10 >= v9)
    {
      v12 = *(a1 + 80);
      v13 = v10 - v12;
      v14 = (v10 - v12) >> 2;
      v15 = v14 + 1;
      if ((v14 + 1) >> 62)
      {
        sub_1AF10A1D0();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
      v18 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        sub_1AF123244(a1 + 80, v18);
      }

      v19 = (v10 - v12) >> 2;
      v20 = (4 * v14);
      v21 = (4 * v14 - 4 * v19);
      *v20 = a2;
      v11 = v20 + 1;
      memcpy(v21, v12, v13);
      v22 = *(a1 + 80);
      *(a1 + 80) = v21;
      *(a1 + 88) = v11;
      *(a1 + 96) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = a2;
      v11 = v10 + 4;
    }

    *(a1 + 88) = v11;
    os_unfair_lock_unlock(a1);
  }
}

void vfx_counters_update_with_frame(uint64_t a1, unsigned int a2, unint64_t a3, double a4)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);
    v8 = *(a1 + 132);
    if (a3 == -1)
    {
      a3 = *(a1 + 128);
    }

    v9 = a3 % v8;
    v10 = v9 + v8 * a2;
    v11 = *(a1 + 104);
    v12 = *(v11 + 8 * v10) + a4;
    *(v11 + 8 * v10) = v12;
    v13 = *(a1 + 56) + 24 * a2;
    v14 = *(v13 + 8) + 1;
    *(v13 + 8) = v14;
    if (*(v13 + 18) == 1)
    {
      printf("#%d [%p:%s] add:%g sum:%g record:%d\n", v9, a1, *(a1 + 8), a4, v12, v14);
    }

    os_unfair_lock_unlock(a1);
  }
}

unint64_t vfx_counters_get_count(unint64_t result)
{
  if (result)
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(result + 64) - *(result + 56)) >> 3);
  }

  return result;
}

void vfx_counters_enumerate_counters(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock(a1);
    sub_1AFD67F28(&v8, (a1 + 56));
    os_unfair_lock_unlock(a1);
    v4 = v8;
    v5 = v9;
    if (v9 != v8)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (*(*(a1 + 56) + 24 * v6))
        {
          v3[2](v3, v7);
          v4 = v8;
          v5 = v9;
        }

        v6 = (v7 + 1);
        v7 = v6;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) > v6);
    }

    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }
}

double vfx_counters_get_value(uint64_t a1, int a2, unint64_t a3)
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_lock(a1);
  if (a3 == -1)
  {
    a3 = *(a1 + 128);
  }

  v6 = *(*(a1 + 104) + 8 * (a3 % *(a1 + 132) + *(a1 + 132) * a2));
  os_unfair_lock_unlock(a1);
  return v6;
}

uint64_t vfx_counters_get_values(uint64_t result, unsigned int a2, void *a3, unsigned int a4)
{
  if (result)
  {
    v4 = *(result + 132);
    LODWORD(v5) = *(*(result + 56) + 24 * a2 + 8);
    if (v4 < v5)
    {
      LODWORD(v5) = *(result + 132);
    }

    if (a3)
    {
      if (v5 >= a4)
      {
        v5 = a4;
      }

      else
      {
        v5 = v5;
      }

      if (v5)
      {
        v6 = *(result + 104);
        v7 = *(result + 128) - v5;
        v8 = v5;
        do
        {
          *a3++ = *(v6 + 8 * (v7 % v4 + v4 * a2));
          ++v7;
          --v8;
        }

        while (v8);
      }
    }

    return v5;
  }

  return result;
}

void vfx_counters_get_desc(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFF0));
  values = vfx_counters_get_values(a1, a2, v9, v10);
  if (values)
  {
    v12 = 0.0;
    v13 = -INFINITY;
    v14 = INFINITY;
    v15 = values;
    do
    {
      v16 = *v9++;
      v17 = v16;
      if (v16 < v14)
      {
        v14 = v17;
      }

      if (v13 < v17)
      {
        v13 = v17;
      }

      v12 = v12 + v17;
      --v15;
    }

    while (v15);
    v18 = v12 / values;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    v18 = 0.0;
  }

  *(a3 + 32) = 0;
  v19 = *(a1 + 56) + 24 * a2;
  *a3 = *v19;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  *(a3 + 24) = v18;
  *(a3 + 32) = *(v19 + 12);
  *(a3 + 36) = *(v19 + 16);
  os_unfair_lock_unlock(a1);
}

void sub_1AFD67ED0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void *sub_1AFD67F28(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1AFD67F9C(result, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void sub_1AFD67F9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AFD67ED0(a1, a2);
  }

  sub_1AF10A1D0();
}

uint64_t *sub_1AFD67FE8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1AFD6809C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_1AFD682D0(void *a1, unsigned int *a2)
{
  result = sub_1AFD67FE8(a1, a2);
  if (result)
  {
    sub_1AF145C50(a1, result);
    return 1;
  }

  return result;
}

void sub_1AFD68308()
{
  if (!qword_1EB6C36F0)
  {
    operator new();
  }
}

void prof_eventTime(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_1EB6C36F9 == 1)
  {
    v10 = currentThreadProfiler_0();
    v11 = v10 + 56 * *(v10 + 16);
    v14 = *(v11 + 40);
    v13 = v11 + 40;
    v12 = v14;
    if (v14 + 1 > *(v13 + 4))
    {
      sub_1AFD6A608(v13);
      v12 = *v13;
    }

    v15 = *(v13 + 8) + 48 * v12;
    *v15 = a3;
    *(v15 + 8) = a4;
    *(v15 + 16) = a5;
    *(v15 + 24) = a2;
    *(v15 + 32) = 0;
    *(v15 + 40) = a1;
    *(v15 + 41) = 0;
    ++*v13;
  }
}

uint64_t currentThreadProfiler_0()
{
  v0 = *off_1EE8109F8();
  if (!v0)
  {
    operator new();
  }

  return v0;
}

void prof_eventTimeSmallData(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_1EB6C36F9 == 1)
  {
    v12 = currentThreadProfiler_0();
    v13 = v12 + 56 * *(v12 + 16);
    v16 = *(v13 + 40);
    v15 = v13 + 40;
    v14 = v16;
    if (v16 + 1 > *(v15 + 4))
    {
      sub_1AFD6A608(v15);
      v14 = *v15;
    }

    v17 = *(v15 + 8) + 48 * v14;
    *v17 = a3;
    *(v17 + 8) = a4;
    *(v17 + 16) = a5;
    *(v17 + 24) = a2;
    *(v17 + 32) = a6;
    *(v17 + 40) = a1;
    *(v17 + 41) = 1;
    ++*v15;
  }
}

void prof_eventTimeBlockData(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v25 = a8;
  if (byte_1EB6C36F9 == 1)
  {
    v15 = currentThreadProfiler_0();
    v16 = v15 + 56 * *(v15 + 16);
    v17 = v25;
    v18 = *(v16 + 40);
    v19 = *(v16 + 44);
    v20 = (v16 + 40);
    if (v18 + 1 > v19)
    {
      sub_1AFD6A608(v20);
      v18 = *v20;
    }

    v21 = v20 - 4;
    v22 = *(v21 + 3) + 48 * v18;
    *v22 = a3;
    *(v22 + 8) = a4;
    *(v22 + 16) = a5;
    *(v22 + 24) = a2;
    *(v22 + 32) = a6;
    *(v22 + 40) = a1;
    *(v22 + 41) = a7;
    v23 = v21[8];
    ++v21[4];
    if (v23 + 1 > v21[9])
    {
      sub_1AFD6A68C(v21 + 8);
      v23 = v21[8];
    }

    v24 = *(v21 + 5);
    *(v24 + 8 * v23) = _Block_copy(v17);
    ++v21[8];
  }
}

void prof_eventTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_1EB6C36F9 == 1)
  {
    v10 = currentThreadProfiler_0();
    v11 = v10 + 56 * *(v10 + 16);
    v14 = *(v11 + 40);
    v13 = v11 + 40;
    v12 = v14;
    if (v14 + 1 > *(v13 + 4))
    {
      sub_1AFD6A608(v13);
      v12 = *v13;
    }

    v15 = *(v13 + 8) + 48 * v12;
    *v15 = a3;
    *(v15 + 8) = a4;
    *(v15 + 16) = a5;
    *(v15 + 24) = a1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    v16 = *v13;
    v17 = *(v13 + 4);
    v18 = *v13 + 1;
    *v13 = v18;
    if (v16 + 2 > v17)
    {
      sub_1AFD6A608(v13);
      v18 = *v13;
    }

    v19 = *(v13 + 8) + 48 * v18;
    *v19 = a3;
    *(v19 + 8) = a4;
    *(v19 + 16) = a5;
    *(v19 + 24) = a2;
    *(v19 + 32) = 0;
    *(v19 + 40) = 1;
    ++*v13;
  }
}

void prof_eventTimeRangeSmallData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_1EB6C36F9 == 1)
  {
    v12 = currentThreadProfiler_0();
    v13 = v12 + 56 * *(v12 + 16);
    v16 = *(v13 + 40);
    v15 = v13 + 40;
    v14 = v16;
    if (v16 + 1 > *(v15 + 4))
    {
      sub_1AFD6A608(v15);
      v14 = *v15;
    }

    v17 = *(v15 + 8) + 48 * v14;
    *v17 = a3;
    *(v17 + 8) = a4;
    *(v17 + 16) = a5;
    *(v17 + 24) = a1;
    *(v17 + 32) = a6;
    *(v17 + 40) = 256;
    v18 = *v15;
    v19 = *(v15 + 4);
    v20 = *v15 + 1;
    *v15 = v20;
    if (v18 + 2 > v19)
    {
      sub_1AFD6A608(v15);
      v20 = *v15;
    }

    v21 = *(v15 + 8) + 48 * v20;
    *v21 = a3;
    *(v21 + 8) = a4;
    *(v21 + 16) = a5;
    *(v21 + 24) = a2;
    *(v21 + 32) = a6;
    *(v21 + 40) = 257;
    ++*v15;
  }
}

void prof_eventTimeRangeBlockData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v40 = a8;
  if (byte_1EB6C36F9 == 1)
  {
    v15 = currentThreadProfiler_0();
    v16 = v15 + 56 * *(v15 + 16);
    aBlock = v40;
    v17 = *(v16 + 40);
    v18 = *(v16 + 44);
    v19 = v16 + 40;
    if (v17 + 1 > v18)
    {
      sub_1AFD6A608(v19);
      v17 = *v19;
    }

    v20 = *(v19 + 8) + 48 * v17;
    *v20 = a3;
    *(v20 + 8) = a4;
    *(v20 + 16) = a5;
    *(v20 + 24) = a1;
    *(v20 + 32) = a6;
    *(v20 + 40) = 0;
    *(v20 + 41) = a7;
    v22 = (v19 + 16);
    v21 = *(v19 + 16);
    ++*v19;
    if (v21 + 1 > *(v19 + 20))
    {
      sub_1AFD6A68C((v19 + 16));
      v21 = *v22;
    }

    v38 = a3;
    v23 = a4;
    v24 = a2;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = *(v19 + 24);
    *(v28 + 8 * v21) = _Block_copy(aBlock);
    v29 = v27;
    v30 = v26;
    v31 = v25;
    v32 = v23;
    ++*(v19 + 16);

    v33 = aBlock;
    v34 = *v19;
    if ((*v19 + 1) > *(v19 + 4))
    {
      sub_1AFD6A608(v19);
      v34 = *v19;
    }

    v35 = *(v19 + 8) + 48 * v34;
    *v35 = v38;
    *(v35 + 8) = v32;
    *(v35 + 16) = v31;
    *(v35 + 24) = v24;
    *(v35 + 32) = v30;
    *(v35 + 40) = 1;
    *(v35 + 41) = v29;
    ++*v19;
    v36 = *(v19 + 16);
    if (v36 + 1 > *(v19 + 20))
    {
      sub_1AFD6A68C(v22);
      v36 = *v22;
    }

    v37 = *(v19 + 24);
    *(v37 + 8 * v36) = _Block_copy(v33);
    ++*(v19 + 16);
  }
}

void prof_eventTimeRangeDynamicString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (byte_1EB6C36F9 == 1)
  {
    v12 = currentThreadProfiler_0();
    v13 = *(v12 + 16);
    v14 = strdup(a6);
    v15 = v12 + 56 * v13;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF0F8238;
    v29[3] = &unk_1E7A79EE8;
    v29[4] = v14;
    v16 = v29;
    v17 = *(v15 + 40);
    v18 = *(v15 + 44);
    v19 = v15 + 40;
    if (v17 + 1 > v18)
    {
      sub_1AFD6A608(v19);
      v17 = *v19;
    }

    v20 = *(v19 + 8) + 48 * v17;
    *v20 = a3;
    *(v20 + 8) = a4;
    *(v20 + 16) = a5;
    *(v20 + 24) = a1;
    *(v20 + 32) = v14;
    *(v20 + 40) = 768;
    v21 = (v19 + 16);
    v22 = *(v19 + 16);
    ++*v19;
    if (v22 + 1 > *(v19 + 20))
    {
      sub_1AFD6A68C((v19 + 16));
      v22 = *v21;
    }

    v28 = v14;
    v23 = a2;
    v24 = *(v19 + 24);
    *(v24 + 8 * v22) = _Block_copy(v16);
    ++*(v19 + 16);

    v25 = *v19;
    if ((*v19 + 1) > *(v19 + 4))
    {
      sub_1AFD6A608(v19);
      v25 = *v19;
    }

    v26 = *(v19 + 8) + 48 * v25;
    *v26 = a3;
    *(v26 + 8) = a4;
    *(v26 + 16) = a5;
    *(v26 + 24) = v23;
    *(v26 + 32) = v28;
    *(v26 + 40) = 769;
    ++*v19;
    v27 = *(v19 + 16);
    if (v27 + 1 > *(v19 + 20))
    {
      sub_1AFD6A68C((v19 + 16));
      v27 = *v21;
    }

    *(*(v19 + 24) + 8 * v27) = &unk_1F2570110;
    ++*(v19 + 16);
  }
}

void prof_event(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_1EB6C36F9 == 1)
  {
    v8 = currentThreadProfiler_0();
    v9 = v8 + 56 * *(v8 + 16) + 24;
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    v11 = *(v9 + 16);
    if (v11 + 1 > *(v9 + 20))
    {
      sub_1AFD6A608((v9 + 16));
      v11 = *(v9 + 16);
    }

    v12 = *(v9 + 24) + 48 * v11;
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 16) = a4;
    *(v12 + 24) = StatusReg;
    *(v12 + 32) = 0;
    *(v12 + 40) = a1;
    *(v12 + 41) = 0;
    ++*(v9 + 16);
  }
}

void prof_eventSmallData(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_1EB6C36F9 == 1)
  {
    v10 = currentThreadProfiler_0();
    v11 = v10 + 56 * *(v10 + 16) + 24;
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    v13 = *(v11 + 16);
    if (v13 + 1 > *(v11 + 20))
    {
      sub_1AFD6A608((v11 + 16));
      v13 = *(v11 + 16);
    }

    v14 = *(v11 + 24) + 48 * v13;
    *v14 = a2;
    *(v14 + 8) = a3;
    *(v14 + 16) = a4;
    *(v14 + 24) = StatusReg;
    *(v14 + 32) = a5;
    *(v14 + 40) = a1;
    *(v14 + 41) = 1;
    ++*(v11 + 16);
  }
}

void prof_eventBlockData(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v25 = a7;
  if (byte_1EB6C36F9 == 1)
  {
    v13 = currentThreadProfiler_0();
    v14 = *(v13 + 16);
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    v16 = v13 + 56 * v14;
    v17 = v25;
    v18 = *(v16 + 40);
    v19 = *(v16 + 44);
    v20 = (v16 + 40);
    if (v18 + 1 > v19)
    {
      sub_1AFD6A608(v20);
      v18 = *v20;
    }

    v21 = v20 - 4;
    v22 = *(v21 + 3) + 48 * v18;
    *v22 = a2;
    *(v22 + 8) = a3;
    *(v22 + 16) = a4;
    *(v22 + 24) = StatusReg;
    *(v22 + 32) = a5;
    *(v22 + 40) = a1;
    *(v22 + 41) = a6;
    v23 = v21[8];
    ++v21[4];
    if (v23 + 1 > v21[9])
    {
      sub_1AFD6A68C(v21 + 8);
      v23 = v21[8];
    }

    v24 = *(v21 + 5);
    *(v24 + 8 * v23) = _Block_copy(v17);
    ++v21[8];
  }
}

void prof_beginFlame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_1EB6C36F9 == 1)
  {
    v6 = currentThreadProfiler_0();
    v7 = v6 + 56 * *(v6 + 16);
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    v9 = *(v7 + 72);
    v10 = *(v7 + 76);
    v11 = *(v7 + 24);
    v12 = *(v7 + 76);
    v13 = v11;
    if (v11 + 1 > *(v7 + 28))
    {
      sub_1AFD6A58C((v7 + 24));
      v13 = *(v7 + 24);
      v12 = *(v7 + 76);
    }

    v14 = *(v7 + 32) + (v13 << 6);
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = a3;
    *(v14 + 24) = StatusReg;
    *(v14 + 32) = 0;
    *(v14 + 40) = v9;
    *(v14 + 44) = v10;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    ++*(v7 + 24);
    *(v7 + 72) = v11;
    *(v7 + 76) = v12 + 1;
  }
}

void prof_beginFlameSmallData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_1EB6C36F9 == 1)
  {
    v8 = currentThreadProfiler_0();
    v9 = v8 + 56 * *(v8 + 16);
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    v11 = *(v9 + 72);
    v12 = *(v9 + 76);
    v13 = *(v9 + 24);
    v14 = *(v9 + 76);
    v15 = v13;
    if (v13 + 1 > *(v9 + 28))
    {
      sub_1AFD6A58C((v9 + 24));
      v15 = *(v9 + 24);
      v14 = *(v9 + 76);
    }

    v16 = *(v9 + 32) + (v15 << 6);
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = a3;
    *(v16 + 24) = StatusReg;
    *(v16 + 32) = 0;
    *(v16 + 40) = v11;
    *(v16 + 44) = v12;
    *(v16 + 48) = a4;
    *(v16 + 56) = 1;
    ++*(v9 + 24);
    *(v9 + 72) = v13;
    *(v9 + 76) = v14 + 1;
  }
}

void prof_beginFlameBlockData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v11 = a6;
  if (byte_1EB6C36F9 == 1)
  {
    v15 = v11;
    v12 = currentThreadProfiler_0();
    v13 = *(v12 + 16);
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    sub_1AFD6952C(v12 + 56 * v13 + 24, StatusReg, a1, a2, a3, a4, v15, a5);
    v11 = v15;
  }
}

void sub_1AFD6952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  aBlock = a7;
  v15 = *(a1 + 48);
  v16 = *(a1 + 52);
  v17 = *a1;
  v18 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    sub_1AFD6A58C(a1);
    v18 = *a1;
  }

  v19 = *(a1 + 8) + (v18 << 6);
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = a5;
  *(v19 + 24) = a2;
  *(v19 + 32) = 0;
  *(v19 + 40) = v15;
  *(v19 + 44) = v16;
  *(v19 + 48) = a6;
  *(v19 + 56) = a8;
  ++*a1;
  v20 = *(a1 + 32);
  if (v20 + 1 > *(a1 + 36))
  {
    sub_1AFD6A68C((a1 + 32));
    v20 = *(a1 + 32);
  }

  v21 = *(a1 + 40);
  *(v21 + 8 * v20) = _Block_copy(aBlock);
  ++*(a1 + 32);
  *(a1 + 48) = v17;
  ++*(a1 + 52);
}

void prof_endFlame()
{
  if (byte_1EB6C36F9 == 1)
  {
    if (byte_1EB644770 == 1)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    }

    else if (byte_1EB644770 == 3)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    }

    else
    {
      StatusReg = byte_1EB644770 == 2 ? _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6)) : mach_absolute_time();
    }

    v1 = currentThreadProfiler_0();
    v2 = *(v1 + 16);
    v3 = v1 + 24 + 56 * v2;
    v4 = *(v3 + 52);
    if (!v4 || (v5 = *(v3 + 8) + (*(v3 + 48) << 6), *(v5 + 32) = StatusReg, *(v3 + 48) = *(v5 + 40), v6 = v4 - 1, (*(v3 + 52) = v6) == 0))
    {
      if ((byte_1EB6C36F8 & 1) == 0)
      {
        v2 = (v2 + 1) & 0x1FF;
        *(v1 + 16) = v2;
      }

      sub_1AFD6A514(v1 + 24 + 56 * v2);
    }
  }
}

void prof_commit()
{
  if (byte_1EB6C36F9 == 1)
  {
    v0 = currentThreadProfiler_0();
    v1 = *(v0 + 16);
    v2 = v0 + 24 + 56 * v1;
    if (!*(v2 + 52) && (*(v2 + 16) || *v2))
    {
      if ((byte_1EB6C36F8 & 1) == 0)
      {
        v1 = (v1 + 1) & 0x1FF;
        *(v0 + 16) = v1;
      }

      sub_1AFD6A514(v0 + 24 + 56 * v1);
    }
  }
}

void prof_setData(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (byte_1EB6C36F9 == 1)
  {
    v7 = v5;
    v6 = currentThreadProfiler_0();
    sub_1AFD6986C(v6 + 56 * *(v6 + 16) + 24, a1, a2, v7);
    v5 = v7;
  }
}

void sub_1AFD6986C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  aBlock = a4;
  v7 = 0;
  v8 = *(a1 + 8) + (*(a1 + 48) << 6);
  if ((a3 & 0xFE) == 2 && *(v8 + 48))
  {
    v7 = sub_1AFD6A994(a1 + 32);
  }

  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  if (aBlock)
  {
    v9 = *(a1 + 32);
    if (v9 + 1 > *(a1 + 36))
    {
      sub_1AFD6A68C((a1 + 32));
      v9 = *(a1 + 32);
    }

    v10 = *(a1 + 40);
    *(v10 + 8 * v9) = _Block_copy(aBlock);
    ++*(a1 + 32);
  }

  if (v7)
  {
    v7[2](v7);
  }
}

uint64_t prof_setLabel(uint64_t result)
{
  if (byte_1EB6C36F9 == 1)
  {
    v1 = result;
    result = currentThreadProfiler_0();
    *(*(result + 56 * *(result + 16) + 32) + (*(result + 56 * *(result + 16) + 72) << 6)) = v1;
  }

  return result;
}

double prof_clockTicksToNanoseconds(unint64_t a1)
{
  result = 0.0;
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    return *(qword_1EB6C36F0 + 8) * a1;
  }

  return result;
}

double prof_clockTicksToSeconds(unint64_t a1)
{
  result = 0.0;
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    return *qword_1EB6C36F0 * a1;
  }

  return result;
}

void prof_stopCollectProfilers()
{
  if (byte_1EB6C36F9 == 1)
  {
    byte_1EB6C36FA = 1;
  }
}

void prof_resumeCollectProfilers()
{
  if (byte_1EB6C36F9 == 1)
  {
    byte_1EB6C36FA = 0;
  }
}

void prof_collectProfilers()
{
  if (byte_1EB6C36F9 == 1 && (byte_1EB6C36FA & 1) == 0)
  {
    ++dword_1EB6C19C0;
    HIDWORD(v0) = -1775253149 * dword_1EB6C19C0;
    LODWORD(v0) = -1775253149 * dword_1EB6C19C0;
    if ((v0 >> 2) <= 0xDA740D)
    {
      sub_1AFD69B80();
      os_unfair_lock_lock(&unk_1EB644778);
      sub_1AFD6AA10();
      os_unfair_lock_unlock(&unk_1EB644778);
    }
  }
}

void sub_1AFD69B80()
{
  if (!qword_1EB6C3700)
  {
    operator new();
  }
}

void prof_flag_main()
{
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD69B80();
    v0 = currentThreadProfiler_0();
    *(v0 + 28698) |= 2u;
  }
}

double sub_1AFD69C7C(uint64_t a1)
{
  v1 = 0;
  v2 = -1;
  do
  {
    if (v1 != *(a1 + 16))
    {
      v3 = (a1 + 24 + 56 * v1);
      v4 = *v3;
      if (v4)
      {
        v5 = (*(v3 + 1) + 24);
        v6 = v4 << 6;
        v7 = -1;
        do
        {
          v9 = *v5;
          v5 += 8;
          v8 = v9;
          if (v9 < v7)
          {
            v7 = v8;
          }

          v6 -= 64;
        }

        while (v6);
      }

      else
      {
        v7 = -1;
      }

      v10 = v3[4];
      if (v10)
      {
        v11 = (*(v3 + 3) + 24);
        v12 = 48 * v10;
        do
        {
          v14 = *v11;
          v11 += 6;
          v13 = v14;
          if (v14 < v7)
          {
            v7 = v13;
          }

          v12 -= 48;
        }

        while (v12);
      }

      if (v7 < v2)
      {
        v2 = v7;
      }
    }

    ++v1;
  }

  while (v1 != 512);
  result = 0.0;
  if (v2 != -1 && byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    return *qword_1EB6C36F0 * v2;
  }

  return result;
}

double sub_1AFD69D64(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    if (v1 != *(a1 + 16))
    {
      v3 = (a1 + 24 + 56 * v1);
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = (*(v3 + 1) + 32);
        v7 = v4 << 6;
        do
        {
          v9 = *v6;
          v6 += 8;
          v8 = v9;
          if (v5 <= v9)
          {
            v5 = v8;
          }

          v7 -= 64;
        }

        while (v7);
      }

      else
      {
        v5 = 0;
      }

      v10 = v3[4];
      if (v10)
      {
        v11 = (*(v3 + 3) + 24);
        v12 = 48 * v10;
        do
        {
          v14 = *v11;
          v11 += 6;
          v13 = v14;
          if (v5 <= v14)
          {
            v5 = v13;
          }

          v12 -= 48;
        }

        while (v12);
      }

      if (v2 <= v5)
      {
        v2 = v5;
      }
    }

    ++v1;
  }

  while (v1 != 512);
  result = 0.0;
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    return *qword_1EB6C36F0 * v2;
  }

  return result;
}

uint64_t prof_flameMaxDepth(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    if (v1 != *(a1 + 16))
    {
      v3 = (a1 + 24 + 56 * v1);
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = (*(v3 + 1) + 44);
        v7 = v4 << 6;
        do
        {
          v9 = *v6;
          v6 += 16;
          v8 = v9;
          if (v5 <= v9)
          {
            v5 = v8;
          }

          v7 -= 64;
        }

        while (v7);
      }

      else
      {
        v5 = 0;
      }

      if (v2 <= v5)
      {
        v2 = v5;
      }
    }

    ++v1;
  }

  while (v1 != 512);
  return v2 + 1;
}

uint64_t prof_name(uint64_t a1)
{
  result = a1 + 28712;
  if (*(a1 + 28735) < 0)
  {
    return *result;
  }

  return result;
}

void prof_setEnabled(int a1)
{
  v1 = a1;
  if (a1)
  {
    if ((byte_1EB6C36F9 & 1) == 0)
    {
      sub_1AFD69B80();
      v2 = *qword_1EB6C3700;
      if (v2)
      {
        v3 = *(qword_1EB6C3700 + 8);
        v4 = 8 * v2;
        do
        {
          v5 = *v3++;
          v6 = v5 + 56 * *(v5 + 16);
          *(v6 + 72) = 0;
          *(v6 + 76) = 0;
          *(v6 + 24) = 0;
          v4 -= 8;
        }

        while (v4);
      }
    }
  }

  byte_1EB6C36F9 = v1;
}

uint64_t prof_clockReadTicks()
{
  if (byte_1EB6C36F9 != 1)
  {
    return 0;
  }

  sub_1AFD68308();
  switch(byte_1EB644770)
  {
    case 1:
      return _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
    case 3:
      return _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
    case 2:
      return _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
  }

  return mach_absolute_time();
}

unint64_t prof_clockTicksFromSecondsMonotonic(double a1)
{
  if (byte_1EB6C36F9 != 1)
  {
    return 0;
  }

  sub_1AFD68308();
  return (a1 / *qword_1EB6C36F0) - *(qword_1EB6C36F0 + 16);
}

double prof_clockTimeSeconds()
{
  result = 0.0;
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    v1 = qword_1EB6C36F0;
    switch(byte_1EB644770)
    {
      case 1:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 2));
        break;
      case 3:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 10, 6));
        break;
      case 2:
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 14, 0, 6));
        break;
      default:
        StatusReg = mach_absolute_time();
        break;
    }

    return *v1 * StatusReg;
  }

  return result;
}

void prof_registerRunloopIDLE()
{
  if (byte_1EB6C36F9 == 1)
  {
    v1 = currentThreadProfiler_0();

    sub_1AFD6A0F8(v1);
  }
}

void sub_1AFD6A0F8(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  v3 = CFRunLoopObserverCreate(0, 0x20uLL, 1u, 2000000, sub_1AFD6AC50, 0);
  if (v3)
  {
    *(a1 + 8) = v3;
    v4 = *MEMORY[0x1E695E8D0];

    CFRunLoopAddObserver(Current, v3, v4);
  }
}

uint64_t sub_1AFD6A184(uint64_t a1, char *a2)
{
  v4 = 0;
  v5 = a1 + 28672;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  do
  {
    sub_1AFD6A458(a1 + v4 + 24);
    v4 += 56;
  }

  while (v4 != 28672);
  *(v5 + 24) = 0;
  *(v5 + 26) = *(v5 + 26) & 0xFC | 1;
  v9 = (a1 + 28712);
  *(a1 + 28704) = 0u;
  *(a1 + 28720) = 0u;
  if (a2)
  {
    sub_1AF2737B0((a1 + 28712), a2);
  }

  else
  {
    v10 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v6, v7, v8);
    v14 = objc_msgSend_name(v10, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);

    if (v19)
    {
      if (qword_1EB6C3700)
      {
        v20 = *qword_1EB6C3700;
      }

      else
      {
        v20 = 0;
      }

      if (*v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = "Thread";
      }

      sub_1AFD6A384("%s [%d]", v21, v20, &v23);
      if (*(v5 + 63) < 0)
      {
        operator delete(*v9);
      }

      *v9 = v23;
      *(a1 + 28728) = v24;
    }
  }

  return a1;
}

void sub_1AFD6A2BC(_Unwind_Exception *a1)
{
  if (*(v3 + 63) < 0)
  {
    operator delete(*v2);
  }

  v5 = v1 + 28640;
  v6 = -28672;
  do
  {
    v5 = sub_1AFD6A338(v5) - 56;
    v6 += 56;
  }

  while (v6);
  _Unwind_Resume(a1);
}

uint64_t sub_1AFD6A338(uint64_t a1)
{
  sub_1AFD6A720((a1 + 32));
  free(*(a1 + 40));
  *(a1 + 16) = 0;
  free(*(a1 + 24));
  *a1 = 0;
  free(*(a1 + 8));
  return a1;
}

void sub_1AFD6A384(char *__format@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = snprintf(0, 0, __format, a2, a3);
  if (v8 < 0)
  {
    a4[23] = 0;
    *a4 = 0;
  }

  else
  {
    v9 = (v8 + 1);
    v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
    snprintf(v10, v9, __format, a2, a3);
    sub_1AFD6A76C(a4, v10, &v10[v9 - 1], v9 - 1);

    free(v10);
  }
}

uint64_t sub_1AFD6A458(uint64_t a1)
{
  *a1 = 0x20000000000;
  *(a1 + 8) = 0;
  sub_1AFD6A58C(a1);
  *(a1 + 16) = 0x20000000000;
  *(a1 + 24) = 0;
  sub_1AFD6A608((a1 + 16));
  *(a1 + 32) = 0x2000000000;
  *(a1 + 40) = 0;
  sub_1AFD6A68C((a1 + 32));
  sub_1AFD6A514(a1);
  return a1;
}

void sub_1AFD6A4CC(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_1AFD6A720(v3);
  free(*(v1 + 40));
  *(v1 + 16) = 0;
  free(*(v1 + 24));
  *v1 = 0;
  free(*(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AFD6A514(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = 0;
    do
    {
      (*(*(*(a1 + 40) + 8 * v3++) + 16))();
    }

    while (v3 < *(a1 + 32));
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  sub_1AFD6A720(v2);
  *(a1 + 48) = -1;
  *(a1 + 52) = 0;
}

void sub_1AFD6A58C(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v3 = 2 * a1[1];
  v4 = malloc_type_malloc(v3 << 6, 0x10D00407BA5AEB2uLL);
  memcpy(v4, v2, *a1 << 6);
  *(a1 + 1) = v4;
  a1[1] = v3;

  free(v2);
}

void sub_1AFD6A608(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v3 = 2 * a1[1];
  v4 = malloc_type_malloc(48 * v3, 0x10D0040BB2815FCuLL);
  memcpy(v4, v2, 48 * *a1);
  *(a1 + 1) = v4;
  a1[1] = v3;

  free(v2);
}

void sub_1AFD6A68C(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v3 = 2 * a1[1];
  v4 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
  if (*a1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 1);
      v7 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = 0;
      v4[v5++] = v7;
    }

    while (v5 < *a1);
  }

  *(a1 + 1) = v4;
  a1[1] = v3;

  free(v2);
}

void sub_1AFD6A720(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    do
    {
    }

    while (v2 < *a1);
  }

  *a1 = 0;
}

_BYTE *sub_1AFD6A76C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_1AFD6A81C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRunLoopObserverInvalidate(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 28698) &= ~1u;
  *(a1 + 28704) = sub_1AFD6A868(a1);
}

double sub_1AFD6A868(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    if (v1 != *(a1 + 16))
    {
      v3 = (a1 + 24 + 56 * v1);
      v4 = *v3;
      if (v4)
      {
        v5 = 0;
        v6 = (*(v3 + 1) + 32);
        v7 = v4 << 6;
        do
        {
          v9 = *v6;
          v6 += 8;
          v8 = v9;
          if (v5 <= v9)
          {
            v5 = v8;
          }

          v7 -= 64;
        }

        while (v7);
      }

      else
      {
        v5 = 0;
      }

      if (v2 <= v5)
      {
        v2 = v5;
      }
    }

    ++v1;
  }

  while (v1 != 512);
  result = 0.0;
  if (byte_1EB6C36F9 == 1)
  {
    sub_1AFD68308();
    return *qword_1EB6C36F0 * v2;
  }

  return result;
}

void sub_1AFD6A918(unsigned int *a1)
{
  v2 = *(a1 + 1);
  v3 = 2 * a1[1];
  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  memcpy(v4, v2, 8 * *a1);
  *(a1 + 1) = v4;
  a1[1] = v3;

  free(v2);
}

id sub_1AFD6A994(uint64_t a1)
{
  v2 = *a1 - 1;
  v3 = _Block_copy(*(*(a1 + 8) + 8 * v2));

  --*a1;
  v4 = _Block_copy(v3);

  return v4;
}

void sub_1AFD6AA10()
{
  memset(&v13, 0, sizeof(v13));
  v0 = qword_1EB6C3700;
  v1 = *qword_1EB6C3700;
  if (*qword_1EB6C3700)
  {
    v2 = *(qword_1EB6C3700 + 8);
    v3 = INFINITY;
    do
    {
      v4 = *v2;
      if (*(*v2 + 28698) & 2) != 0 && (*(*v2 + 28698))
      {
        v5 = sub_1AFD69C7C(*v2);
        std::string::operator=(&v13, (v4 + 28712));
        if (v5 < v3)
        {
          v3 = v5;
        }

        v0 = qword_1EB6C3700;
        v1 = *qword_1EB6C3700;
      }

      ++v2;
      v6 = *(v0 + 8);
    }

    while (v2 != (v6 + 8 * v1));
    if (v1)
    {
      v7 = -v6;
      v8 = *(v0 + 8);
      do
      {
        v9 = *v8;
        if ((*(*v8 + 28698) & 1) == 0 && *(v9 + 28704) < v3)
        {
          v10 = v1 - 1;
          *v0 = v10;
          v11 = (v6 + 8 * v10);
          if (v8 != v11)
          {
            memmove(v8, v8 + 1, v11 + v7);
          }

          v12 = sub_1AFD6AB80(v9);
          MEMORY[0x1B271C6B0](v12, 0x10B2C409ECD45A9);
          v0 = qword_1EB6C3700;
          v1 = *qword_1EB6C3700;
        }

        ++v8;
        v6 = *(v0 + 8);
        v7 -= 8;
      }

      while (v8 < v6 + 8 * v1);
    }
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1AFD6AB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AFD6AB80(uint64_t a1)
{
  if (MEMORY[0xFFFFFC088] != *(qword_1EB6C36F0 + 16) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1AF0F8244();
  }

  if (*(a1 + 28735) < 0)
  {
    operator delete(*(a1 + 28712));
  }

  v2 = 0;
  for (i = 28640; i != -32; i -= 56)
  {
    v4 = (a1 + i);
    sub_1AFD6A720((a1 + v2 + 28672));
    free(*(a1 + v2 + 28680));
    v4[4] = 0;
    free(*(a1 + v2 + 28664));
    *v4 = 0;
    free(*(a1 + v2 + 28648));
    v2 -= 56;
  }

  return a1;
}

void sub_1AFD6AC50()
{
  v0 = currentThreadProfiler_0();
  v1 = *(v0 + 16);
  if ((byte_1EB6C36F8 & 1) == 0)
  {
    v1 = (v1 + 1) & 0x1FF;
    *(v0 + 16) = v1;
  }

  v2 = v0 + 56 * v1 + 24;

  sub_1AFD6A514(v2);
}

uint64_t vfx_counters.values(of:)(unsigned int a1, uint64_t a2)
{
  values = vfx_counters_get_values(a2, a1, 0, 0);
  if (values < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = values;
  }

  *(v5 + 16) = vfx_counters_get_values(a2, a1, (v5 + 32), values);
  return v5;
}

uint64_t vfx_counters.addCounter(name:scope:kind:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v8 = sub_1AFDFCFB8();
  v9 = vfx_counters_add_counter(a5, (v8 + 32), a3, a4, 0);

  return v9;
}

uint64_t sub_1AFD6AE48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AFD6AE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1AFD6AEEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 64))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AFD6AF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}