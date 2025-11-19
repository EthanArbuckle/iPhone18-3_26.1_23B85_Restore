char *sub_1BDA86D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v15 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD510BBC(v16, v8);

  v9 = type metadata accessor for AccountBalance(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD40EC8);
    v11 = 0.0;
  }

  else
  {
    v11 = *v8;
    sub_1BD0E5E24(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD5DD508(v16, v4);

  if (v10(v4, 1, v9) == 1)
  {
    sub_1BD0DE53C(v4, &qword_1EBD40EC8);
    v12 = 0.0;
  }

  else
  {
    v12 = *v4;
    sub_1BD0E5E24(v4);
  }

  v13 = type metadata accessor for SavingsBalanceHistoryView();
  return sub_1BD43860C(*(v0 + *(v13 + 64)), v11, v12);
}

uint64_t sub_1BDA86FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v36 = a2;
  v43 = a1;
  v44 = a3;
  v5 = type metadata accessor for SavingsBalanceHistoryView();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  v8 = sub_1BE04D474();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v40 = v10;
  v13 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v9 + 16);
  v42(v13, a1, v8, v12);
  sub_1BDA8D41C(a2, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v14 = *(v9 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = *(v41 + 80);
  v17 = (v10 + v16 + v15) & ~v16;
  v39 = v14 | v16;
  v18 = swift_allocObject();
  v19 = *(v9 + 32);
  v20 = v18 + v15;
  v21 = v18;
  v41 = v18;
  v19(v20, v13, v8);
  v22 = v21 + v17;
  v23 = v34;
  sub_1BDA8D270(v34, v22, type metadata accessor for SavingsBalanceHistoryView);
  v24 = sub_1BE051C94();
  v37 = v25;
  v38 = v24;
  sub_1BDA8D41C(v36, v23, type metadata accessor for SavingsBalanceHistoryView);
  (v42)(v13, v43, v8);
  v26 = (v16 + 16) & ~v16;
  v27 = (v35 + v14 + v26) & ~v14;
  v28 = swift_allocObject();
  sub_1BDA8D270(v23, v28 + v26, type metadata accessor for SavingsBalanceHistoryView);
  result = (v19)(v28 + v27, v13, v8);
  v30 = v44;
  v31 = v41;
  *v44 = sub_1BDA8D0EC;
  v30[1] = v31;
  v32 = v37;
  v30[2] = v38;
  v30[3] = v32;
  v30[4] = sub_1BDA8D12C;
  v30[5] = v28;
  return result;
}

double sub_1BDA8727C@<D0>(_OWORD *a1@<X8>)
{
  v24 = a1;
  v2 = sub_1BE04E354();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48298);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B98D0;
  v26 = *(type metadata accessor for SavingsBalanceHistoryView() + 28);
  v27 = v1;
  sub_1BD70A078(v10);
  v12 = *MEMORY[0x1E697DBB8];
  v25 = *(v3 + 104);
  v25(v6, v12, v2);
  v13 = sub_1BE04E344();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v10, v2);
  if ((v13 & 1) == 0)
  {
    if (qword_1EBD36B60 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (qword_1EBD36B58 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_5:
  sub_1BE048964();
  sub_1BE051454();

  *(v11 + 32) = sub_1BE051B04();
  *(v11 + 40) = v15;
  sub_1BD70A078(v10);
  v25(v6, v12, v2);
  v16 = sub_1BE04E344();
  v14(v6, v2);
  v14(v10, v2);
  if ((v16 & 1) == 0)
  {
    if (qword_1EBD36B60 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (qword_1EBD36B58 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_9:
  sub_1BE048964();
  sub_1BE051454();

  *(v11 + 48) = sub_1BE051B04();
  *(v11 + 56) = v17;
  sub_1BD70A078(v10);
  v25(v6, v12, v2);
  v18 = sub_1BE04E344();
  v14(v6, v2);
  v14(v10, v2);
  if (v18)
  {
    if (qword_1EBD36B58 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (qword_1EBD36B60 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_13:
  sub_1BE048964();
  sub_1BE051454();

  *(v11 + 64) = sub_1BE051B04();
  *(v11 + 72) = v19;
  sub_1BE051B14();
  sub_1BE051E94();
  sub_1BE051E84();
  sub_1BE04E874();
  result = *&v28;
  v21 = v29;
  v22 = v24;
  *v24 = v28;
  v22[1] = v21;
  *(v22 + 4) = v30;
  return result;
}

uint64_t sub_1BDA87744(uint64_t a1)
{
  v2 = type metadata accessor for SavingsBalanceHistoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  swift_getKeyPath();
  sub_1BDA8D41C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavingsBalanceHistoryView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BDA8D270(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SavingsBalanceHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD387A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D910);
  sub_1BD0DE4F4(&qword_1EBD5DA88, &qword_1EBD387A0);
  sub_1BDA8E32C(&qword_1EBD52550, MEMORY[0x1E6969530]);
  sub_1BDA8CD9C();
  return sub_1BE0519B4();
}

id sub_1BDA87990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a1;
  v156 = a3;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA90);
  MEMORY[0x1EEE9AC00](v155, v4);
  v154 = &v135 - v5;
  v6 = sub_1BE04E354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v147 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v146 = &v135 - v12;
  v149 = sub_1BE04D754();
  v145 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v13);
  v144 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D918);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v15);
  v148 = &v135 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA98);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v17);
  v170 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v169 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBD8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v141 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v164 = &v135 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v167 = &v135 - v30;
  v31 = sub_1BE04BD74();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v160 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v165 = &v135 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v166 = &v135 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v172 = &v135 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v135 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B498);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v159 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v135 - v53;
  v163 = sub_1BE04D6E4();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v55);
  v161 = &v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DAA0);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v57);
  v168 = &v135 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59, v60);
  v173 = &v135 - v62;
  v63 = *MEMORY[0x1E69B80E0];
  v64 = *(v32 + 104);
  v176 = v31;
  v64(v47, v63, v31, v61);
  v65 = PKPassKitBundle();
  if (!v65)
  {
    __break(1u);
    goto LABEL_16;
  }

  v66 = v65;
  v136 = v7;
  v137 = v6;
  v174 = a2;
  v140 = "e";
  v139 = 0xD000000000000014;
  v67 = sub_1BE04B6F4();
  v69 = v68;

  v70 = *(v32 + 8);
  v71 = v176;
  (v70)(v47, v176);
  *&v182[0] = v67;
  *(&v182[0] + 1) = v69;
  v72 = *(type metadata accessor for AccountBalance(0) + 20);
  v73 = sub_1BE04AF64();
  v74 = sub_1BD0DDEBC();
  v138 = v72;
  v157 = v54;
  v158 = v73;
  v175 = v74;
  sub_1BE04D5E4();

  (v64)(v172, v63, v71);
  v75 = PKPassKitBundle();
  if (!v75)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v75;
  v77 = v63;
  v78 = v64;
  v79 = v172;
  v80 = sub_1BE04B6F4();
  v82 = v81;

  (v70)(v79, v176);
  *&v182[0] = v80;
  *(&v182[0] + 1) = v82;
  v83 = sub_1BDA86D68();
  if (!*(v83 + 2))
  {
LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  v84 = *(v83 + 4);

  *&v180[0] = v84;
  sub_1BE04D5E4();

  v85 = v166;
  (v78)(v166, v77, v176);
  result = PKPassKitBundle();
  v172 = v78;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v87 = result;
  v135 = "DATE_VISUAL_ENCODING";
  v88 = v85;
  v89 = sub_1BE04B6F4();
  v91 = v90;

  v92 = v176;
  (v70)(v88, v176);
  *&v182[0] = v89;
  *(&v182[0] + 1) = v91;
  v166 = v70;
  v93 = *v171;
  *&v180[0] = *v171;
  sub_1BE04D5E4();

  v94 = v161;
  sub_1BE04D6D4();
  sub_1BDA8727C(v180);
  v182[0] = v180[0];
  v182[1] = v180[1];
  v183 = v181;
  v95 = v163;
  sub_1BE04D4B4();
  sub_1BDA8E374(v180);
  (*(v162 + 8))(v94, v95);
  v96 = v165;
  (v172)(v165, v77, v92);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v97 = result;
  v98 = sub_1BE04B6F4();
  v100 = v99;

  v101 = v176;
  v102 = v166;
  (v166)(v96, v176);
  *&v182[0] = v98;
  *(&v182[0] + 1) = v100;
  sub_1BE04D5E4();

  v103 = v160;
  (v172)(v160, v77, v101);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v104 = result;
  v105 = sub_1BE04B6F4();
  v107 = v106;

  v102(v103, v176);
  *&v182[0] = v105;
  *(&v182[0] + 1) = v107;
  v177 = v93;
  sub_1BE04D5E4();

  v108 = v144;
  sub_1BE04D744();
  type metadata accessor for SavingsBalanceHistoryView();
  sub_1BE04E3F4();
  v109 = MEMORY[0x1E695B2A0];
  v110 = v148;
  v111 = v149;
  sub_1BE04D504();
  sub_1BDA8E3C8(v182);
  (*(v145 + 8))(v108, v111);
  v112 = v146;
  sub_1BD70A078(v146);
  v113 = v136;
  v114 = v147;
  v115 = v137;
  (*(v136 + 104))(v147, *MEMORY[0x1E697DBB8], v137);
  LOBYTE(v104) = sub_1BE04E344();
  v116 = *(v113 + 8);
  v116(v114, v115);
  v116(v112, v115);
  if (v104)
  {
    v117 = v151;
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v118 = &qword_1EBDAAE80;
  }

  else
  {
    v117 = v151;
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v118 = &qword_1EBDAAE88;
  }

  v119 = *v118;
  sub_1BE048964();
  v178 = v109;
  v179 = v119;
  v177 = v111;
  swift_getOpaqueTypeConformance2();
  v120 = v169;
  sub_1BE04D4B4();

  (*(v150 + 8))(v110, v117);
  v121 = v142;
  v176 = *(v142 + 16);
  v122 = v168;
  v123 = v143;
  v176(v168, v173, v143);
  v124 = v152;
  v125 = *(v152 + 16);
  v126 = v170;
  v127 = v120;
  v128 = v153;
  v125(v170, v127, v153);
  v129 = v154;
  v176(v154, v122, v123);
  v130 = v155;
  v131 = *(v155 + 48);
  v125(&v129[v131], v126, v128);
  v132 = v156;
  (*(v121 + 32))(v156, v129, v123);
  (*(v124 + 32))(v132 + *(v130 + 48), &v129[v131], v128);
  v133 = *(v124 + 8);
  v133(v169, v128);
  v134 = *(v121 + 8);
  v134(v173, v123);
  v133(v170, v128);
  return (v134)(v168, v123);
}

void sub_1BDA8894C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v76 = a1;
  v78 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA38);
  MEMORY[0x1EEE9AC00](v74, v2);
  v73 = v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v75 = v68 - v6;
  v7 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v68[2] = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v68[1] = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3B8);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v13);
  v68[0] = v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA30);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v72 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v71 = v68 - v20;
  v21 = sub_1BE04D494();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B3C8);
  v26 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v27);
  v29 = v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v68 - v32;
  v34 = sub_1BE04D784();
  type metadata accessor for SavingsBalanceHistoryView();
  if (v34)
  {
    sub_1BE04E3F4();
    v83 = v80;
    v84 = v81;
    v85 = v82;
    sub_1BE04D484();
    if (qword_1EBD36B78 == -1)
    {
LABEL_11:
      v79 = qword_1EBDAAEA0;
      sub_1BE04D6F4();
      (*(v22 + 8))(v25, v21);
      (*(v26 + 32))(v78, v29, v77);
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA40);
      swift_storeEnumTagMultiPayload();
      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  sub_1BE04E3F4();
  v83 = v80;
  v84 = v81;
  v85 = v82;
  sub_1BE04D484();
  if (qword_1EBD36B68 != -1)
  {
    swift_once();
  }

  v79 = qword_1EBDAAE90;
  sub_1BE04D6F4();
  v35 = *(v22 + 8);
  v22 += 8;
  v35(v25, v21);
  v36 = sub_1BE04D784();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v37 = v76;
  if (v36 >= *(v76 + 16))
  {
    __break(1u);
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
    v39 = objc_allocWithZone(MEMORY[0x1E69B8780]);
    v40 = sub_1BE052404();
    v41 = [v39 initWithAmount:v38 currency:v40 exponent:0];

    if (v41)
    {
      v42 = [v41 minimalFormattedStringValue];

      if (v42)
      {
        sub_1BE052434();
        v44 = v43;

        v47 = 1;
        if (v44)
        {
          MEMORY[0x1EEE9AC00](v45, v46);
          sub_1BE04D664();
          sub_1BE04D644();
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
          v67 = sub_1BD2A275C();
          v64 = sub_1BDA8DE38;
          v65 = &v62;
          v63 = 1;
          v62 = 0;
          v48 = v68[0];
          sub_1BE04D5B4();

          v49 = v69;
          v50 = v71;
          v51 = v70;
          (*(v69 + 32))(v71, v48, v70);
          v47 = 0;
LABEL_14:
          (*(v49 + 56))(v50, v47, 1, v51);
          v52 = *(v26 + 16);
          v53 = v33;
          v54 = v26;
          v55 = v77;
          v52(v29, v33, v77);
          v56 = v72;
          sub_1BD0DE19C(v50, v72, &qword_1EBD5DA30);
          v57 = v73;
          v52(v73, v29, v55);
          sub_1BDA8DD18();
          v58 = v74;
          v59 = *(v74 + 48);
          sub_1BD0DE19C(v56, &v57[v59], &qword_1EBD5DA30);
          v60 = v75;
          (*(v54 + 32))(v75, v57, v55);
          sub_1BDA8DDC8(&v57[v59], v60 + *(v58 + 48));
          sub_1BD0DE53C(v50, &qword_1EBD5DA30);
          v61 = *(v54 + 8);
          v61(v53, v55);
          sub_1BD0DE53C(v56, &qword_1EBD5DA30);
          v61(v29, v55);
          sub_1BD0DE204(v60, v78, &qword_1EBD5DA20);
          goto LABEL_15;
        }
      }

      else
      {
        v47 = 1;
      }

      v50 = v71;
      v51 = v70;
      v49 = v69;
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1BDA89280@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  if (qword_1EBD36B70 != -1)
  {
    swift_once();
  }

  v7 = sub_1BE050564();
  v9 = v8;
  v11 = v10;
  sub_1BD0DDF10(v2, v4, v6 & 1);

  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
  if (result)
  {
    sub_1BE050484();
    v13 = sub_1BE0505F4();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    sub_1BD0DDF10(v7, v9, v11 & 1);

    v20 = sub_1BE050204();
    v21 = sub_1BE050214();
    sub_1BE050214();
    if (sub_1BE050214() != v20)
    {
      v21 = sub_1BE050214();
    }

    type metadata accessor for SavingsBalanceHistoryView();
    result = sub_1BE04E1F4();
    *a1 = v13;
    *(a1 + 8) = v15;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v19;
    *(a1 + 32) = v21;
    *(a1 + 40) = v22;
    *(a1 + 48) = v23;
    *(a1 + 56) = v24;
    *(a1 + 64) = v25;
    *(a1 + 72) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA89478@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a3;
  v64 = a1;
  v3 = sub_1BE04D654();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04D674();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA68);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA60);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA58);
  v60 = *(v19 - 8);
  v61 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA78);
  v58 = *(v27 - 8);
  v59 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v55 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v55 - v32;
  sub_1BE04AF64();
  swift_projectBox();
  if (sub_1BE04D784())
  {
    sub_1BE051E64();
    sub_1BE04D664();
    sub_1BE04D644();
    v54 = MEMORY[0x1E6981138];
    v52 = 0;
    v53 = MEMORY[0x1E6981148];
    v51 = sub_1BDA89EA8;
    sub_1BE04D5B4();
    if (qword_1EBD36B70 != -1)
    {
      swift_once();
    }

    v67 = qword_1EBDAAE98;
    v34 = sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68);
    v35 = MEMORY[0x1E69815C0];
    v36 = MEMORY[0x1E6981568];
    v37 = v66;
    sub_1BE04D6F4();
    (*(v65 + 8))(v10, v37);
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      sub_1BE050484();
      v67 = v37;
      v68 = v35;
      v69 = v34;
      v70 = v36;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v40 = v57;
      sub_1BE04D704();

      (*(v56 + 8))(v14, v40);
      type metadata accessor for SavingsBalanceHistoryView();
      v67 = v40;
      v68 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v33 = v55;
      v41 = v61;
      sub_1BE04D714();
      v26 = v22;
LABEL_10:
      (*(v60 + 8))(v26, v41);
      (*(v58 + 32))(v63, v33, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA80);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  else
  {
    v64 = v18;
    v42 = sub_1BE051E54();
    MEMORY[0x1EEE9AC00](v42, v43);
    sub_1BE04D664();
    sub_1BE04D644();
    v54 = MEMORY[0x1E6981138];
    v52 = &v51;
    v53 = MEMORY[0x1E6981148];
    v51 = sub_1BDA8E050;
    sub_1BE04D5B4();
    if (qword_1EBD36B70 != -1)
    {
      swift_once();
    }

    v67 = qword_1EBDAAE98;
    v44 = sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68);
    v45 = MEMORY[0x1E69815C0];
    v46 = MEMORY[0x1E6981568];
    v47 = v64;
    v48 = v66;
    sub_1BE04D6F4();
    (*(v65 + 8))(v10, v48);
    result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    if (result)
    {
      sub_1BE050484();
      v67 = v48;
      v68 = v45;
      v69 = v44;
      v70 = v46;
      v49 = swift_getOpaqueTypeConformance2();
      v50 = v57;
      sub_1BE04D704();

      (*(v56 + 8))(v47, v50);
      type metadata accessor for SavingsBalanceHistoryView();
      v67 = v50;
      v68 = v49;
      swift_getOpaqueTypeConformance2();
      v41 = v61;
      sub_1BE04D714();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1BDA89D3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_1BE04AE64();
  (*(v5 + 8))(v8, v4);
  v10 = PKMediumDateString();

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    v17[1] = v11;
    v17[2] = v13;
    sub_1BD0DDEBC();
    *a2 = sub_1BE0506C4();
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 24) = v16;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BDA89EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80E0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA8A018@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v16 = a1;
  v6 = type metadata accessor for SavingsBalanceHistoryView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = sub_1BE051CD4();
  v12 = v11;
  sub_1BDA8A3BC(v3, v35, a2, a3);
  v30 = v35[12];
  v31 = v35[13];
  v32 = v35[14];
  v33 = v35[15];
  v26 = v35[8];
  v27 = v35[9];
  v28 = v35[10];
  v29 = v35[11];
  v22 = v35[4];
  v23 = v35[5];
  v24 = v35[6];
  v25 = v35[7];
  v18 = v35[0];
  v19 = v35[1];
  v20 = v35[2];
  v21 = v35[3];
  v34[12] = v35[12];
  v34[13] = v35[13];
  v34[14] = v35[14];
  v34[15] = v35[15];
  v34[8] = v35[8];
  v34[9] = v35[9];
  v34[10] = v35[10];
  v34[11] = v35[11];
  v34[4] = v35[4];
  v34[5] = v35[5];
  v34[6] = v35[6];
  v34[7] = v35[7];
  v34[0] = v35[0];
  v34[1] = v35[1];
  v34[2] = v35[2];
  v34[3] = v35[3];
  sub_1BD0DE19C(&v18, v17, &qword_1EBD5D978);
  sub_1BD0DE53C(v34, &qword_1EBD5D978);
  *&v17[208] = v30;
  *&v17[224] = v31;
  *&v17[240] = v32;
  *&v17[256] = v33;
  *&v17[144] = v26;
  *&v17[160] = v27;
  *&v17[176] = v28;
  *&v17[192] = v29;
  *&v17[80] = v22;
  *&v17[96] = v23;
  *&v17[112] = v24;
  *&v17[128] = v25;
  *&v17[16] = v18;
  *&v17[32] = v19;
  *&v17[48] = v20;
  *&v17[64] = v21;
  *v17 = v10;
  *&v17[8] = v12;
  v17[272] = 0;
  sub_1BDA8D41C(v3, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for SavingsBalanceHistoryView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1BDA8D270(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v14 + v13, type metadata accessor for SavingsBalanceHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D980);
  sub_1BDA8D338();
  sub_1BE0509D4();

  memcpy(v35, v17, 0x111uLL);
  return sub_1BD0DE53C(v35, &qword_1EBD5D980);
}

uint64_t sub_1BDA8A3BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v39[1] = a1;
  v40 = sub_1BE04E354();
  v7 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v39 - v13;
  v15 = objc_opt_self();
  v16 = [v15 systemGrayColor];
  v43 = sub_1BE0511C4();
  type metadata accessor for SavingsBalanceHistoryView();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v94[3] = *&v94[27];
  *&v94[11] = *&v94[35];
  *&v94[19] = *&v94[43];
  v17 = sub_1BE051364();
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v18 = [v15 systemGray5Color];
  v41 = sub_1BE0511C4();
  sub_1BD70A078(v14);
  v19 = v40;
  (*(v7 + 104))(v10, *MEMORY[0x1E697DBB8], v40);
  LOBYTE(v15) = sub_1BE04E344();
  v20 = *(v7 + 8);
  v20(v10, v19);
  v20(v14, v19);
  if (v15)
  {
    if (qword_1EBD36B58 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EBDAAE80;
  }

  else
  {
    if (qword_1EBD36B60 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EBDAAE88;
  }

  v22 = *v21;
  sub_1BE048964();
  v23 = a4 + a3 * -0.5;
  v24 = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v25 = KeyPath;
  *&v63[0] = v43;
  WORD4(v63[0]) = 256;
  *(v63 + 10) = *v94;
  *(&v63[1] + 10) = *&v94[8];
  *(&v63[2] + 10) = *&v94[16];
  *(&v63[3] + 1) = *&v94[23];
  *&v64 = KeyPath;
  v26 = v62;
  v44 = v63[0];
  v45 = v63[1];
  *(&v64 + 1) = v17;
  *&v65 = 0;
  v46 = v63[2];
  v47 = v63[3];
  *(&v65 + 1) = v23;
  v67 = v96;
  v68 = v97;
  v66 = v95;
  v27 = v41;
  *&v69 = v41;
  *(&v69 + 1) = 0x4010000000000000;
  v71 = 0;
  v70 = 0;
  v48 = v64;
  v49 = v65;
  v52 = v97;
  v53 = v69;
  v50 = v95;
  v51 = v96;
  *&v72 = v24;
  *(&v72 + 1) = v22;
  *&v73 = 0;
  *(&v73 + 1) = v23;
  v28 = v61;
  v75 = v61;
  v76 = v62;
  v29 = v60;
  v74 = v60;
  v54 = 0u;
  v55 = v72;
  v58 = v61;
  v59 = v62;
  v56 = v73;
  v57 = v60;
  v30 = v63[3];
  a2[2] = v63[2];
  a2[3] = v30;
  v31 = v45;
  *a2 = v44;
  a2[1] = v31;
  v32 = v51;
  a2[6] = v50;
  a2[7] = v32;
  v33 = v49;
  a2[4] = v48;
  a2[5] = v33;
  v34 = v55;
  a2[10] = v54;
  a2[11] = v34;
  v35 = v53;
  a2[8] = v52;
  a2[9] = v35;
  v36 = v59;
  a2[14] = v58;
  a2[15] = v36;
  v37 = v57;
  a2[12] = v56;
  a2[13] = v37;
  v77[0] = v24;
  v77[1] = v22;
  v77[2] = 0;
  *&v77[3] = v23;
  v78 = v29;
  v79 = v28;
  v80 = v26;
  sub_1BD0DE19C(v63, v81, &qword_1EBD3CDC0);
  sub_1BD0DE19C(&v64, v81, &qword_1EBD5D9A0);
  sub_1BD0DE19C(&v72, v81, &qword_1EBD5D9A8);
  sub_1BD0DE53C(v77, &qword_1EBD5D9A8);
  v81[0] = v25;
  v81[1] = v17;
  v81[2] = 0;
  *&v81[3] = v23;
  v82 = v95;
  v83 = v96;
  v84 = v97;
  v85 = v27;
  v86 = 0x4010000000000000;
  v88 = 0;
  v87 = 0;
  sub_1BD0DE53C(v81, &qword_1EBD5D9A0);
  v89 = v43;
  v90 = 256;
  v91 = *v94;
  v92 = *&v94[8];
  *v93 = *&v94[16];
  *&v93[14] = *&v94[23];
  return sub_1BD0DE53C(&v89, &qword_1EBD3CDC0);
}

uint64_t sub_1BDA8A8FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v6 - v2;
  v4 = sub_1BE04AF64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1BDA8A9D8(v3, 0);
  return sub_1BD0DE53C(v3, &unk_1EBD39970);
}

uint64_t sub_1BDA8A9D8(uint64_t a1, int a2)
{
  LODWORD(v107) = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v101, v3);
  v102 = v94 - v4;
  v5 = type metadata accessor for AccountBalance(0);
  v111 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v96 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v109 = v94 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v94 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v94 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v100 = v94 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v108 = v94 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v98 = v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v105 = v94 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v110 = v94 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v94 - v44;
  v46 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v46, v47);
  v95 = v94 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = v94 - v51;
  v53 = a1;
  v55 = v54;
  v57 = v56;
  sub_1BD0DE19C(v53, v45, &unk_1EBD39970);
  v99 = *(v55 + 48);
  if (v99(v45, 1, v57) == 1)
  {
    sub_1BD0DE53C(v45, &unk_1EBD39970);
    (*(v111 + 56))(v22, 1, 1, v5);
    type metadata accessor for SavingsBalanceHistoryView();
    sub_1BD0DE19C(v22, v18, &qword_1EBD40EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
    sub_1BE0518F4();
    return sub_1BD0DE53C(v22, &qword_1EBD40EC8);
  }

  v94[3] = v55 + 48;
  v103 = v57;
  v104 = v18;
  v106 = v55;
  v59 = *(v55 + 32);
  v94[1] = v55 + 32;
  v94[0] = v59;
  v59(v52, v45, v57);
  v60 = v111;
  v112 = *(v111 + 56);
  v113 = v111 + 56;
  v112(v32, 1, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v61 = *(v114 + 16);
  v97 = v22;
  if (v61)
  {
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v94[2] = v114;
    v63 = v114 + v62;
    v64 = *(v60 + 72);
    v65 = 0.0;
    do
    {
      sub_1BDA8D41C(v63, v14, type metadata accessor for AccountBalance);
      sub_1BE04ADC4();
      v67 = fabs(v66);
      if (v65 == 0.0 || v67 < v65)
      {
        sub_1BD0DE53C(v32, &qword_1EBD40EC8);
        sub_1BDA8D270(v14, v32, type metadata accessor for AccountBalance);
        v112(v32, 0, 1, v5);
        v65 = v67;
      }

      else
      {
        sub_1BD0E5E24(v14);
      }

      v63 += v64;
      --v61;
    }

    while (v61);

    v60 = v111;
    v22 = v97;
  }

  else
  {
  }

  v69 = v108;
  sub_1BD0DE19C(v32, v108, &qword_1EBD40EC8);
  v111 = *(v60 + 48);
  v70 = (v111)(v69, 1, v5);
  v71 = v104;
  v72 = v109;
  v73 = v110;
  if (v70 != 1)
  {
    sub_1BDA8D270(v69, v109, type metadata accessor for AccountBalance);
    if (v107)
    {
      v75 = v106;
      v76 = v103;
      (*(v106 + 16))(v73, v72 + *(v5 + 20), v103);
      v77 = v73;
      v78 = *(v75 + 56);
      v78(v77, 0, 1, v76);
      v79 = *(type metadata accessor for SavingsBalanceHistoryView() + 24);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
      v108 = v79;
      v80 = v100;
      MEMORY[0x1BFB3E970]();
      if ((v111)(v80, 1, v5))
      {
        sub_1BD0DE53C(v80, &qword_1EBD40EC8);
        v81 = 1;
        v82 = v105;
      }

      else
      {
        v83 = v96;
        sub_1BDA8D41C(v80, v96, type metadata accessor for AccountBalance);
        sub_1BD0DE53C(v80, &qword_1EBD40EC8);
        v82 = v105;
        (v94[0])(v105, v83 + *(v5 + 20), v76);
        v81 = 0;
      }

      v78(v82, v81, 1, v76);
      v84 = v102;
      v85 = *(v101 + 48);
      v86 = v110;
      sub_1BD0DE19C(v110, v102, &unk_1EBD39970);
      sub_1BD0DE19C(v82, v84 + v85, &unk_1EBD39970);
      v87 = v99;
      if (v99(v84, 1, v76) == 1)
      {
        sub_1BD0DE53C(v82, &unk_1EBD39970);
        sub_1BD0DE53C(v86, &unk_1EBD39970);
        if (v87(v84 + v85, 1, v76) == 1)
        {
          sub_1BD0DE53C(v84, &unk_1EBD39970);
          v72 = v109;
          v71 = v104;
LABEL_30:
          v93 = v97;
          v112(v97, 1, 1, v5);
          sub_1BD0DE19C(v93, v71, &qword_1EBD40EC8);
          sub_1BE0518F4();
          sub_1BD0DE53C(v93, &qword_1EBD40EC8);
          sub_1BD0E5E24(v72);
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      v88 = v98;
      sub_1BD0DE19C(v84, v98, &unk_1EBD39970);
      if (v87(v84 + v85, 1, v76) == 1)
      {
        sub_1BD0DE53C(v105, &unk_1EBD39970);
        sub_1BD0DE53C(v110, &unk_1EBD39970);
        (*(v106 + 8))(v88, v76);
LABEL_26:
        sub_1BD0DE53C(v84, &qword_1EBD3A750);
        v72 = v109;
        v71 = v104;
        goto LABEL_27;
      }

      v90 = v95;
      (v94[0])(v95, v84 + v85, v76);
      sub_1BDA8E32C(&qword_1EBD3E460, MEMORY[0x1E6969530]);
      v91 = sub_1BE052334();
      v92 = *(v106 + 8);
      v92(v90, v76);
      sub_1BD0DE53C(v105, &unk_1EBD39970);
      sub_1BD0DE53C(v110, &unk_1EBD39970);
      v92(v98, v76);
      v71 = v104;
      sub_1BD0DE53C(v84, &unk_1EBD39970);
      v72 = v109;
      if (v91)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v89 = v97;
    sub_1BDA8D41C(v72, v97, type metadata accessor for AccountBalance);
    v112(v89, 0, 1, v5);
    type metadata accessor for SavingsBalanceHistoryView();
    sub_1BD0DE19C(v89, v71, &qword_1EBD40EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
    sub_1BE0518F4();
    sub_1BD0DE53C(v89, &qword_1EBD40EC8);
    sub_1BD0E5E24(v72);
    v74 = v32;
    goto LABEL_28;
  }

  sub_1BD0DE53C(v69, &qword_1EBD40EC8);
  v112(v22, 1, 1, v5);
  type metadata accessor for SavingsBalanceHistoryView();
  sub_1BD0DE19C(v22, v71, &qword_1EBD40EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
  sub_1BE0518F4();
  sub_1BD0DE53C(v22, &qword_1EBD40EC8);
LABEL_16:
  v74 = v32;
LABEL_28:
  sub_1BD0DE53C(v74, &qword_1EBD40EC8);
  return (*(v106 + 8))(v52, v103);
}

uint64_t sub_1BDA8B69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v93 = a2;
  v94 = a1;
  v89 = a4;
  v4 = sub_1BE04E394();
  v5 = *(v4 - 8);
  v85 = v4;
  v86 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v82 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9B0);
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v83 = &v61 - v11;
  v12 = type metadata accessor for SavingsBalanceHistoryView();
  v80 = *(v12 - 8);
  v97 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v92 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1BE04E6A4();
  v15 = *(v91 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v91, v17);
  v18 = sub_1BE04D474();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v65 = sub_1BE04F9F4();
  MEMORY[0x1EEE9AC00](v65, v22);
  v64 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BE04F484();
  v75 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v24);
  v63 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9B8);
  MEMORY[0x1EEE9AC00](v81, v26);
  v95 = &v61 - v27;
  v84 = sub_1BE051404();
  v98 = v84;
  v99 = 256;
  v100 = 0;
  sub_1BE04FD14();
  sub_1BE04F474();
  v28 = v19;
  v29 = *(v19 + 16);
  v78 = v19 + 16;
  v79 = v29;
  v30 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v30;
  v67 = v18;
  v29(v30, v93, v18);
  v31 = *(v15 + 16);
  v76 = v15 + 16;
  v77 = v31;
  v90 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v91;
  v31(v90, v94, v91);
  v62 = type metadata accessor for SavingsBalanceHistoryView;
  sub_1BDA8D41C(v96, v92, type metadata accessor for SavingsBalanceHistoryView);
  v33 = *(v28 + 80);
  v34 = v28;
  v35 = (v33 + 16) & ~v33;
  v36 = *(v15 + 80);
  v72 = v35;
  v37 = *(v80 + 80);
  v38 = v16 + v37 + ((v20 + v36 + v35) & ~v36);
  v39 = (v20 + v36 + v35) & ~v36;
  v68 = v39;
  v40 = v38 & ~v37;
  v80 = v37 | v33 | v36;
  v41 = swift_allocObject();
  v42 = *(v34 + 32);
  v73 = v34 + 32;
  v74 = v42;
  v42(v41 + v35, v30, v18);
  v43 = *(v15 + 32);
  v69 = v15 + 32;
  v70 = v43;
  v43(v41 + v39, v90, v32);
  v44 = v92;
  v45 = v62;
  sub_1BDA8D270(v92, v41 + v40, v62);
  sub_1BDA8E32C(&qword_1EBD5D9C0, MEMORY[0x1E697C468]);
  v46 = v71;
  v47 = v63;
  sub_1BE0519F4();

  (*(v75 + 8))(v47, v46);
  sub_1BE04FD14();
  v48 = v82;
  sub_1BE04E374();
  v49 = v96;
  sub_1BDA8D41C(v96, v44, v45);
  v50 = swift_allocObject();
  sub_1BDA8D270(v44, v50 + ((v37 + 16) & ~v37), v45);
  sub_1BDA8E32C(&qword_1EBD5D9C8, MEMORY[0x1E697BEA8]);
  v51 = v83;
  v52 = v85;
  sub_1BE0519F4();

  (*(v86 + 8))(v48, v52);
  v53 = v66;
  v54 = v67;
  v79(v66, v93, v67);
  v56 = v90;
  v55 = v91;
  v77(v90, v94, v91);
  sub_1BDA8D41C(v49, v44, v45);
  v57 = swift_allocObject();
  v74(v57 + v72, v53, v54);
  v70(v57 + v68, v56, v55);
  sub_1BDA8D270(v44, v57 + v40, v45);
  sub_1BD0DE4F4(&qword_1EBD5D9D0, &qword_1EBD5D9B0);
  sub_1BDA8E32C(&qword_1EBD5D9D8, MEMORY[0x1E697BE90]);
  v58 = v95;
  v59 = v87;
  sub_1BE051A04();

  (*(v88 + 8))(v51, v59);
  sub_1BE04E3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D9E0);
  sub_1BDA8D9E0();
  sub_1BD0DE4F4(&qword_1EBD5DA00, &qword_1EBD5D9B8);
  sub_1BE050FD4();
  sub_1BD0DE53C(v58, &qword_1EBD5D9B8);
}

uint64_t sub_1BDA8C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v18 - v10;
  v12 = sub_1BE04AF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BE04D464();
  if (result)
  {
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    sub_1BE04F464();
    sub_1BE04D434();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1BD0DE53C(v11, &unk_1EBD39970);
      (*(v13 + 56))(v7, 1, 1, v12);
      sub_1BDA8A9D8(v7, 0);

      return sub_1BD0DE53C(v7, &unk_1EBD39970);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      (*(v13 + 16))(v7, v16, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      sub_1BDA8A9D8(v7, 1);

      sub_1BD0DE53C(v7, &unk_1EBD39970);
      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

uint64_t sub_1BDA8C334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v6 - v2;
  v4 = sub_1BE04AF64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1BDA8A9D8(v3, 0);
  return sub_1BD0DE53C(v3, &unk_1EBD39970);
}

uint64_t sub_1BDA8C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a1;
  v22[1] = a4;
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v22 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v22 - v19;
  result = sub_1BE04D464();
  if (result)
  {
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    sub_1BE04E384();
    sub_1BE04D434();
    sub_1BD0DE19C(v20, v16, &unk_1EBD39970);
    if ((*(v5 + 48))(v16, 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD39970);
      (*(v5 + 56))(v12, 1, 1, v4);
      sub_1BDA8A9D8(v12, 0);

      sub_1BD0DE53C(v12, &unk_1EBD39970);
    }

    else
    {
      (*(v5 + 32))(v8, v16, v4);
      (*(v5 + 16))(v12, v8, v4);
      (*(v5 + 56))(v12, 0, 1, v4);
      sub_1BDA8A9D8(v12, 0);

      sub_1BD0DE53C(v12, &unk_1EBD39970);
      (*(v5 + 8))(v8, v4);
    }

    return sub_1BD0DE53C(v20, &unk_1EBD39970);
  }

  return result;
}

uint64_t sub_1BDA8C73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a1;
  v58 = a3;
  v63 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D970);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v53 - v7;
  v54 = sub_1BE04EB44();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  v15 = sub_1BE04AF64();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40EC8);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for AccountBalance(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SavingsBalanceHistoryView();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898);
  v56 = a2;
  MEMORY[0x1BFB3E970](v28);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD40EC8);
LABEL_13:
    v51 = 1;
    v50 = v62;
    v45 = v63;
    return (*(v61 + 56))(v45, v51, 1, v50);
  }

  sub_1BDA8D270(v22, v27, type metadata accessor for AccountBalance);
  if (!sub_1BE04D464())
  {
    sub_1BD0E5E24(v27);
    goto LABEL_13;
  }

  type metadata accessor for CGRect(0);
  sub_1BE04E6B4();
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  (*(v59 + 16))(v18, v27 + *(v23 + 20), v60);
  v64 = *v27;
  v33 = COERCE_DOUBLE(sub_1BE04D454());
  if (v34)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v33;
  }

  v36 = COERCE_DOUBLE(sub_1BE04D444());
  if (v37)
  {
    v36 = 0.0;
  }

  v38 = v29 + v36;
  v68.origin.x = v29;
  v68.origin.y = v30;
  v68.size.width = v31;
  v68.size.height = v32;
  MaxY = CGRectGetMaxY(v68);
  sub_1BD70A548(v14);
  v40 = v53;
  v41 = v54;
  (*(v53 + 104))(v10, *MEMORY[0x1E697E7D8], v54);
  v42 = sub_1BE04EB34();
  v43 = *(v40 + 8);
  v43(v10, v41);
  v43(v14, v41);
  if (v42)
  {
    sub_1BE04E684();
    v38 = v44 - v38;
  }

  v45 = v63;
  v69.origin.x = v29;
  v69.origin.y = v30;
  v69.size.width = v31;
  v69.size.height = v32;
  Height = CGRectGetHeight(v69);
  v47 = v55;
  sub_1BDA8A018(v55, Height, v35);

  (*(v59 + 8))(v18, v60);
  sub_1BD0E5E24(v27);
  v48 = v62;
  v49 = (v47 + *(v62 + 36));
  *v49 = v38;
  v49[1] = MaxY * 0.5;
  sub_1BD0DE204(v47, v45, &qword_1EBD5D970);
  v50 = v48;
  v51 = 0;
  return (*(v61 + 56))(v45, v51, 1, v50);
}

uint64_t sub_1BDA8CCBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D8B8);
  return sub_1BDA85400(v1, a1 + *(v3 + 44));
}

unint64_t sub_1BDA8CD18()
{
  result = qword_1EBD5D900;
  if (!qword_1EBD5D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D8F8);
    sub_1BDA8CD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D900);
  }

  return result;
}

unint64_t sub_1BDA8CD9C()
{
  result = qword_1EBD5D908;
  if (!qword_1EBD5D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D910);
    sub_1BE04D6E4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D918);
    sub_1BE04D754();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D908);
  }

  return result;
}

unint64_t sub_1BDA8CF14()
{
  result = qword_1EBD5D930;
  if (!qword_1EBD5D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D8C8);
    sub_1BD0DE4F4(&qword_1EBD5D920, &qword_1EBD5D8C0);
    sub_1BDA8E32C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D930);
  }

  return result;
}

uint64_t sub_1BDA8D004(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BDA8D06C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA86FB4(a1, v6, a2);
}

uint64_t sub_1BDA8D16C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a2(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(a1, v4 + v8, v11);
}

uint64_t sub_1BDA8D270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA8D2D8()
{
  type metadata accessor for SavingsBalanceHistoryView();

  return sub_1BDA8A8FC();
}

unint64_t sub_1BDA8D338()
{
  result = qword_1EBD5D988;
  if (!qword_1EBD5D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D980);
    sub_1BD0DE4F4(&qword_1EBD5D990, &qword_1EBD5D998);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D988);
  }

  return result;
}

uint64_t sub_1BDA8D41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA8D49C()
{
  type metadata accessor for SavingsBalanceHistoryView();

  return sub_1BDA8C334();
}

uint64_t objectdestroy_30Tm_1()
{
  v1 = sub_1BE04D474();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1BE04E6A4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SavingsBalanceHistoryView();
  v10 = (v7 + v8 + *(*(v9 - 1) + 80)) & ~*(*(v9 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v11 = v0 + v10;

  v12 = v0 + v10 + v9[6];

  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v14 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    v16 = sub_1BE04AF64();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v9[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1BE04E354();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);
  }

  else
  {
  }

  v19 = v9[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1BE04EB44();
    (*(*(v20 - 8) + 8))(v11 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BDA8D894(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1BE04D474() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1BE04E6A4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for SavingsBalanceHistoryView() - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a2(a1, v2 + v5, v2 + v8, v11);
}

unint64_t sub_1BDA8D9E0()
{
  result = qword_1EBD5D9E8;
  if (!qword_1EBD5D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D9E0);
    sub_1BD0DE4F4(&qword_1EBD5D9F0, &qword_1EBD5D9F8);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D9E8);
  }

  return result;
}

void sub_1BDA8DAC4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SavingsBalanceHistoryView() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BDA8894C(v4, a1);
}

unint64_t sub_1BDA8DB70()
{
  result = qword_1EBD5DA10;
  if (!qword_1EBD5DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA08);
    sub_1BDA8DC40();
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA10);
  }

  return result;
}

unint64_t sub_1BDA8DC40()
{
  result = qword_1EBD5DA18;
  if (!qword_1EBD5DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA20);
    sub_1BE04D494();
    swift_getOpaqueTypeConformance2();
    sub_1BDA8DD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA18);
  }

  return result;
}

unint64_t sub_1BDA8DD18()
{
  result = qword_1EBD5DA28;
  if (!qword_1EBD5DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA30);
    sub_1BD0DE4F4(&qword_1EBD4B3B0, &qword_1EBD4B3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA28);
  }

  return result;
}

uint64_t sub_1BDA8DDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DA30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BDA8DE44@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BDA89478(a1, v6, a2);
}

unint64_t sub_1BDA8DEC8()
{
  result = qword_1EBD5DA50;
  if (!qword_1EBD5DA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DA68);
    sub_1BD0DE4F4(&qword_1EBD5DA70, &qword_1EBD5DA68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DA50);
  }

  return result;
}

uint64_t objectdestroyTm_128()
{
  v1 = type metadata accessor for SavingsBalanceHistoryView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D898) + 32);
  v5 = type metadata accessor for AccountBalance(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = *(v5 + 20);
    v7 = sub_1BE04AF64();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1BE04E354();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04EB44();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1BDA8E2AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SavingsBalanceHistoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA87990(a1, v6, a2);
}

uint64_t sub_1BDA8E32C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1BDA8E41C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v68 - v6;
  v73 = sub_1BE04F824();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v68 - v14;
  v16 = [a1 imageName];
  sub_1BE052434();

  v17 = sub_1BE050354();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v70 = sub_1BE0503B4();
  sub_1BD0DE53C(v15, &qword_1EBD49130);
  v18 = [a1 style];
  v72 = a2;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      if (v18 == 3)
      {
        sub_1BE04F7F4();
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_1BE04F814();
  }

  else
  {
    if (v18)
    {
LABEL_7:
      sub_1BE04F7E4();
      goto LABEL_10;
    }

    sub_1BE04F804();
  }

LABEL_10:
  v19 = [a1 color1];
  if (v19)
  {
    v20 = v19;
    sub_1BDA8EFA4();
    v22 = v21;

    v23 = [a1 color2];
    if (v23)
    {
      v24 = v23;
      sub_1BDA8EFA4();
      v26 = v25;

      v27 = [a1 color3];
      if (v27)
      {
        v28 = v27;
        sub_1BDA8EFA4();
        v30 = v29;

        sub_1BE051574();
        v31 = v71;
        v32 = *(v71 + 16);
        v69 = v10;
        v33 = v10;
        v34 = v73;
        v32(v7, v33, v73);
        (*(v31 + 56))(v7, 0, 1, v34);
        v35 = sub_1BE0515B4();

        sub_1BD0DE53C(v7, &qword_1EBD41F00);
        KeyPath = swift_getKeyPath();
        *&v74 = v35;
        *(&v74 + 1) = KeyPath;
        *&v75 = v70;
        *(&v75 + 1) = v22;
        *&v76 = v26;
        *(&v76 + 1) = v30;
        LOBYTE(v77) = 0;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E48);
        sub_1BD3A3050();
        sub_1BD3A3108();
        sub_1BE04F9A4();
        LOBYTE(v79) = v81[16];
        v80 = 0;
        *&v81[16] = v81[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58);
        sub_1BD3A2FC4();
        sub_1BD3A31C0();
        sub_1BE04F9A4();

        (*(v31 + 8))(v69, v73);
        goto LABEL_24;
      }
    }
  }

  v37 = [a1 color1];
  if (v37)
  {
    v38 = v37;
    sub_1BDA8EFA4();
    v40 = v39;

    v41 = [a1 color2];
    if (v41)
    {
      v42 = v41;
      sub_1BDA8EFA4();
      v44 = v43;

      sub_1BE051574();
      v45 = v71;
      v46 = *(v71 + 16);
      v69 = v10;
      v47 = v73;
      v46(v7, v10, v73);
      (*(v45 + 56))(v7, 0, 1, v47);
      v48 = sub_1BE0515B4();

      sub_1BD0DE53C(v7, &qword_1EBD41F00);
      v49 = swift_getKeyPath();
      *&v74 = v48;
      *(&v74 + 1) = v49;
      *&v75 = v70;
      *(&v75 + 1) = v40;
      v76 = v44;
      LOBYTE(v77) = 1;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E48);
      sub_1BD3A3050();
      sub_1BD3A3108();
      sub_1BE04F9A4();
      LOBYTE(v79) = v81[16];
      v80 = 0;
      *&v81[16] = v81[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58);
      sub_1BD3A2FC4();
      sub_1BD3A31C0();
      sub_1BE04F9A4();

      (*(v45 + 8))(v69, v47);
      goto LABEL_24;
    }
  }

  v50 = [a1 color1];
  if (v50)
  {
    v51 = v50;
    sub_1BDA8EFA4();
    v53 = v52;

    sub_1BE051574();
    v54 = v71;
    v55 = v73;
    (*(v71 + 16))(v7, v10, v73);
    (*(v54 + 56))(v7, 0, 1, v55);
    v56 = sub_1BE0515B4();

    sub_1BD0DE53C(v7, &qword_1EBD41F00);
    v57 = swift_getKeyPath();
    *&v74 = v56;
    *(&v74 + 1) = v57;
    *&v75 = v70;
    *(&v75 + 1) = v53;
    LOBYTE(v76) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E78);
    sub_1BD3A324C();
    sub_1BD3A3304();
    sub_1BE04F9A4();
    v80 = v81[0];
    v78 = 1;
    *&v81[1] = v79;
    v81[17] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    sub_1BE04F9A4();

    (*(v54 + 8))(v10, v55);
  }

  else
  {
    sub_1BE051574();
    v58 = v71;
    v59 = v73;
    (*(v71 + 16))(v7, v10, v73);
    (*(v58 + 56))(v7, 0, 1, v59);
    v60 = sub_1BE0515B4();

    sub_1BD0DE53C(v7, &qword_1EBD41F00);
    v61 = swift_getKeyPath();
    v62 = v70;
    sub_1BE048964();
    v63 = sub_1BE04FC74();
    *&v74 = v60;
    *(&v74 + 1) = v61;
    *&v75 = v62;
    *(&v75 + 1) = v63;
    LOBYTE(v76) = 1;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E78);
    sub_1BD3A324C();
    sub_1BD3A3304();
    sub_1BE04F9A4();
    v80 = v81[0];
    v78 = 1;
    *&v81[1] = v79;
    v81[17] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43E58);
    sub_1BD3A2FC4();
    sub_1BD3A31C0();
    sub_1BE04F9A4();

    (*(v58 + 8))(v10, v59);
  }

LABEL_24:
  *v81 = v76;
  v64 = v77;
  v65 = v75;
  v66 = v72;
  *v72 = v74;
  v66[1] = v65;
  result = *v81;
  v66[2] = *v81;
  *(v66 + 24) = v64;
  return result;
}

void sub_1BDA8EFA4()
{
  v1 = [v0 type];
  if (v1 == 1)
  {
    v5 = [v0 builtInColor];
    if (v5 > 1)
    {
      if (v5 == 2)
      {

        sub_1BE051244();
        return;
      }

      if (v5 == 3)
      {
        v6 = [objc_opt_self() quaternaryLabelColor];

        goto LABEL_7;
      }
    }

    else if (v5 == 1)
    {

      sub_1BE051494();
      return;
    }

LABEL_18:

    sub_1BE051464();
    return;
  }

  if (v1)
  {
    goto LABEL_18;
  }

  v2 = [v0 hexString];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = [objc_opt_self() pkui:v2 colorWithHexString:?];

  if (v4)
  {

LABEL_7:
    sub_1BE0511C4();
    return;
  }

  __break(1u);
}

void sub_1BDA8F118(void *a1)
{
  v2 = v1;
  v4 = sub_1BE052404();
  [a1 setText_];

  if ((*(v2 + 16) & 1) == 0)
  {
    [a1 setTextAlignment_];
  }

  if (*(v2 + 40))
  {
    [a1 setTextFont_];
  }

  if (*(v2 + 48))
  {
    sub_1BD0E5E8C(0, &qword_1EBD43100);
    swift_retain_n();
    v5 = sub_1BE052FE4();
    [a1 setTextColor_];
  }

  sub_1BD0E5E8C(0, &qword_1EBD43EA8);
  v6 = sub_1BE052724();
  [a1 setSources_];
}

void sub_1BDA8F250(void *a1, void *a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void (*a5)(char *))
{
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29 - v16;
  v18 = [a1 termsIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    v22 = v21;

    if (a2 && a3)
    {
      v30 = a2;
      sub_1BD0D44B8(a3);
      a3(v30, v20, v22);

      sub_1BD0D4744(a3);
      v23 = v30;
    }

    else
    {
    }
  }

  else
  {
    v24 = [a1 linkURL];
    if (v24)
    {
      v25 = v24;
      sub_1BE04A9F4();

      (*(v10 + 32))(v17, v14, v9);
      if (a5)
      {
        sub_1BE048964();
        v26 = sub_1BE04A9C4();
        v27 = PKIsURLHttpScheme();

        if ((v27 & 1) == 0 || [a1 behavior] == 1)
        {
          v28 = sub_1BE04A9C4();
          PKOpenURL();
          sub_1BD0D4744(a5);
        }

        else
        {
          a5(v17);
          sub_1BD0D4744(a5);
        }
      }

      (*(v10 + 8))(v17, v9);
    }
  }
}

id sub_1BDA8F520()
{
  v0 = [objc_allocWithZone(PKMultiHyperlinkView) init];
  [v0 setAccessibilityIdentifier_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  return v2;
}

id sub_1BDA8F5C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE052404();
  [a3 setText_];

  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v7;
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_1BDA8F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA8F72C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BDA8F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA8F72C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BDA8F700()
{
  sub_1BDA8F72C();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BDA8F72C()
{
  result = qword_1EBD5DAB8;
  if (!qword_1EBD5DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DAB8);
  }

  return result;
}

id sub_1BDA8F780(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_identifier];
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x80000001BE1499C0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_configuration] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1BDA8F920()
{
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1BE04BD74();
  v151 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v6);
  v142 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v143 = &v135 - v10;
  v149 = sub_1BE04B8D4();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v11);
  v147 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v146 = &v135 - v15;
  v16 = sub_1BE04B944();
  v153 = *(v16 - 1);
  v154 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  KeyPath = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04C384();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v135 - v26;
  v28 = *&v0[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_configuration];
  v29 = sub_1BE04C3A4();
  if (!*(v29 + 16))
  {

    return;
  }

  (*(v20 + 16))(v23, v29 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  (*(v20 + 32))(v27, v23, v19);
  v30 = sub_1BE04C2E4();
  if (!v30)
  {
    (*(v20 + 8))(v27, v19);
    return;
  }

  v144 = v28;
  v136 = v20;
  v137 = v19;
  v145 = v0;
  v161 = MEMORY[0x1E69E7CC0];
  v140 = v30;
  v31 = [v30 _effectiveDetails];
  sub_1BD0E5E8C(0, &qword_1EBD5DAF0);
  v32 = sub_1BE052744();

  v135 = v27;
  v139 = v1;
  v138 = v2;
  v141 = v5;
  if (v32 >> 62)
  {
    v33 = sub_1BE053704();
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_18;
    }
  }

  v34 = objc_opt_self();
  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_62;
  }

  v35 = v34;
  v36 = 0;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1BFB40900](v36, v32);
    }

    else
    {
      v39 = *(v32 + 8 * v36 + 32);
    }

    v40 = v39;
    v41 = [v39 label];
    if (!v41)
    {
      sub_1BE052434();
      v41 = sub_1BE052404();
    }

    v42 = [v40 value];
    if (!v42)
    {
      sub_1BE052434();
      v42 = sub_1BE052404();
    }

    ++v36;
    v37 = [v35 readOnlyPaymentSetupFieldWithDisplayName:v41 value:v42];

    v156 = v37;
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AC0);
    sub_1BE052754();
  }

  while (v33 != v36);
LABEL_18:

  v43 = v140;
  v44 = [v140 style];
  v45 = v145;
  v46 = v141;
  if (v44 != 1)
  {
    v47 = [v43 paymentNetwork];
    if (!v47)
    {
      goto LABEL_32;
    }

    v48 = v47;
    v49 = sub_1BE052434();
    v51 = v50;
    if (v49 == sub_1BE052434() && v51 == v52)
    {
    }

    else
    {
      v53 = sub_1BE053B84();

      if ((v53 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v54 = KeyPath;
  sub_1BE04BB94();
  v55 = v146;
  sub_1BE04B924();
  v153[1](v54, v154);
  v56 = v148;
  v57 = v147;
  v58 = v149;
  (*(v148 + 104))(v147, *MEMORY[0x1E69B7F80], v149);
  LOBYTE(v54) = sub_1BE04B8C4();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v55, v58);
  v60 = *MEMORY[0x1E69B80D8];
  v61 = v151[13];
  if (v54)
  {
    v62 = v143;
    v63 = v150;
    v61(v143, v60, v150);
    v64 = PKPassKitBundle();
    if (!v64)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v65 = v64;
  }

  else
  {
    v62 = v142;
    v63 = v150;
    v61(v142, v60, v150);
    v66 = PKPassKitBundle();
    if (!v66)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v65 = v66;
  }

  sub_1BE04B6F4();

  (v151[1])(v62, v63);
  v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v68 = sub_1BE052404();

  v69 = [v67 initWithString_];

  v70 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
  v71 = sub_1BE052404();
  v72 = [v70 initWithIdentifier:v71 body:v69];

  [v72 setPosition_];
  v73 = v72;
  MEMORY[0x1BFB3F7A0]();
  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();

LABEL_32:
  sub_1BD3F0574(v161);

  v74 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v75 = sub_1BE052724();

  v76 = [v74 initWithPaymentSetupFields_];

  v77 = *&v45[OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_context];
  v78 = v43;
  v79 = v76;
  v80 = *(sub_1BE04C3C4() + 16);

  v81 = v80 > 1;
  v82 = type metadata accessor for ProvisioningAddPaymentPassViewController();
  v83 = objc_allocWithZone(v82);
  *&v83[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator] = 0;
  *&v83[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_provisioningContext] = v77;
  *&v83[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_configuration] = v78;
  v83[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_hasMultipleDestinationDevices] = v81;
  sub_1BE052434();
  v84 = v78;
  sub_1BE048964();
  v85 = sub_1BE04BB74();

  *&v83[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter] = v85;
  v86 = KeyPath;
  sub_1BE04BB94();
  v87 = sub_1BE04B8E4();
  v153[1](v86, v154);
  sub_1BE04BC34();
  v88 = sub_1BE04B9A4();
  (*(v138 + 8))(v46, v139);
  v160.receiver = v83;
  v160.super_class = v82;
  v89 = objc_msgSendSuper2(&v160, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v87, v88, 0, v79);

  v154 = v89;
  if (!v89)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v151 = v79;

  v153 = v84;
  KeyPath = swift_getKeyPath();
  v157 = sub_1BD187098(v45, KeyPath) & 1;
  v158 = v90;
  v159 = v91;
  v150 = v77;
  sub_1BD4F8958();
  v92 = v158;
  if (!*(v158 + 16) || (sub_1BE053D04(), sub_1BE052524(), v93 = sub_1BE053D64(), v94 = -1 << *(v92 + 32), v95 = v93 & ~v94, ((*(v92 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0))
  {
LABEL_40:
    v99 = v157;
    v100 = v159;
    v101 = v145;
    sub_1BD12F64C(v99, v92, v100, v101, KeyPath);

    v102 = v137;
    v103 = v153;
LABEL_41:
    v104 = type metadata accessor for ProvisioningUICoordinator();
    v105 = objc_allocWithZone(v104);
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v106 = &v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
    v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v150;
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v144;
    v107 = v154;
    swift_unknownObjectWeakAssign();
    *(v106 + 1) = &off_1F3BAED88;
    swift_unknownObjectWeakAssign();
    v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
    v108 = v107;
    sub_1BE048964();
    v109 = v108;
    sub_1BE048964();
    *&v105[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
    v155.receiver = v105;
    v155.super_class = v104;
    v110 = objc_msgSendSuper2(&v155, sel_init);

    (*(v136 + 8))(v135, v102);
    *&v110[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BCFCE0;
    swift_unknownObjectWeakAssign();
    v111 = *&v109[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator];
    *&v109[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator] = v110;

    return;
  }

  v96 = ~v94;
  while (1)
  {
    v97 = *(*(v92 + 48) + v95);
    if (v97 != 1 && v97 != 2)
    {
      break;
    }

    v98 = sub_1BE053B84();

    if (v98)
    {
      goto LABEL_43;
    }

    v95 = (v95 + 1) & v96;
    if (((*(v92 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  v112 = v159;
  if (*(v159 + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v113 = sub_1BE053D64();
    v114 = -1 << *(v112 + 32);
    v115 = v113 & ~v114;
    if ((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
    {
      v116 = ~v114;
      while (1)
      {
        v117 = *(*(v112 + 48) + v115);
        if (v117 != 1 && v117 != 2)
        {
          break;
        }

        v118 = sub_1BE053B84();

        if (v118)
        {
          goto LABEL_40;
        }

        v115 = (v115 + 1) & v116;
        if (((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_40;
    }
  }

LABEL_50:
  v119 = v157;
  v120 = v145;
  sub_1BD12F64C(v119, v92, v112, v120, KeyPath);

  KeyPath = swift_getKeyPath();
  LODWORD(v148) = sub_1BD187098(v120, KeyPath);
  v149 = v121;
  v123 = v122;
  sub_1BE053D04();
  sub_1BE052524();
  v124 = sub_1BE053D64();
  v125 = -1 << *(v123 + 32);
  v126 = v124 & ~v125;
  if ((*(v123 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126))
  {
    v127 = ~v125;
    while (1)
    {
      v128 = *(*(v123 + 48) + v126);
      if (v128 != 1 && v128 != 2)
      {
        break;
      }

      v129 = sub_1BE053B84();

      if (v129)
      {
        goto LABEL_57;
      }

      v126 = (v126 + 1) & v127;
      if (((*(v123 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
LABEL_56:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v123;
    sub_1BD2A9690(0, v126, isUniquelyReferenced_nonNull_native);
    v123 = v156;
  }

LABEL_57:
  v131 = v120;
  sub_1BD12F64C(v148 & 1, v149, v123, v131, KeyPath);

  v132 = [v154 dockView];
  v103 = v153;
  if (v132)
  {
    v133 = v132;
    v134 = [objc_opt_self() pk:9 privacyLinkForContext:?];
    [v133 setPrivacyLink_];

    v102 = v137;
    goto LABEL_41;
  }

LABEL_65:
  __break(1u);
}

uint64_t sub_1BDA90B4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BDA90B88(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BDA90BE4(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v14[0] = a1;
    sub_1BD0E5E8C(0, qword_1EBD45AD0);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v4 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
    v5 = 1;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses);
    *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_provisionedPasses) = a1;
    v7 = a1;

    v4 = sub_1BE04BD44();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70);
    v5 = 0;
    v14[3] = v8;
  }

  v14[0] = v4;
  v15 = v5;
  v9 = v3 + OBJC_IVAR____TtC9PassKitUI32ProvisioningInAppAddPassFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD39F614(v14, v13);
    sub_1BD865A00(v3, &off_1F3BCFCF0, v13, ObjectType, v10);
    swift_unknownObjectRelease();
    sub_1BD12FF7C(v13);
  }

  return sub_1BD39F670(v14);
}

uint64_t sub_1BDA90D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v48 = a4;
  v4 = sub_1BE04F714();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DAF8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v33 - v9;
  v39 = sub_1BE050274();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v12);
  v13 = sub_1BE04F754();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE0518C4();
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB00);
  MEMORY[0x1EEE9AC00](v44, v22);
  v24 = &v33 - v23;
  v35 = sub_1BE04F7C4();
  v54 = 1;
  v34 = sub_1BE04F504();
  v53 = 1;
  sub_1BDA91360(&v67);
  v61 = v73;
  v62 = v74;
  v63 = v75;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v60 = v72;
  v55 = v67;
  v56 = v68;
  v65[6] = v73;
  v65[7] = v74;
  v65[8] = v75;
  v65[2] = v69;
  v65[3] = v70;
  v65[4] = v71;
  v65[5] = v72;
  v64 = v76;
  v66 = v76;
  v65[0] = v67;
  v65[1] = v68;
  sub_1BD0DE19C(&v55, &v49, &qword_1EBD5DB08);
  sub_1BD0DE53C(v65, &qword_1EBD5DB08);
  *&v52[55] = v58;
  *&v52[39] = v57;
  *&v52[103] = v61;
  *&v52[119] = v62;
  *&v52[135] = v63;
  v52[151] = v64;
  *&v52[71] = v59;
  *&v52[87] = v60;
  *&v52[7] = v55;
  *&v52[23] = v56;
  *&v51[105] = *&v52[96];
  *&v51[121] = *&v52[112];
  *&v51[137] = *&v52[128];
  *&v51[41] = *&v52[32];
  *&v51[57] = *&v52[48];
  *&v51[73] = *&v52[64];
  *&v51[89] = *&v52[80];
  *&v51[9] = *v52;
  v49 = v35;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = v34;
  *v51 = 0;
  v51[8] = v53;
  *&v51[153] = *&v52[144];
  *&v51[25] = *&v52[16];
  sub_1BE051894();
  sub_1BE050264();
  (*(v11 + 56))(v10, 0, 1, v39);
  sub_1BE050254();
  sub_1BD0DE53C(v10, &qword_1EBD5DAF8);
  sub_1BE04F744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB10);
  sub_1BDA917F8();
  sub_1BDA9185C();
  v25 = v42;
  sub_1BE050994();
  (*(v43 + 8))(v17, v25);
  (*(v40 + 8))(v21, v41);
  v77 = *&v51[128];
  v78 = *&v51[144];
  v79 = v51[160];
  v73 = *&v51[64];
  v74 = *&v51[80];
  v75 = *&v51[96];
  v76 = *&v51[112];
  v69 = *v51;
  v70 = *&v51[16];
  v71 = *&v51[32];
  v72 = *&v51[48];
  v67 = v49;
  v68 = v50;
  sub_1BD0DE53C(&v67, &qword_1EBD5DB10);
  LOBYTE(v10) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v26 = v45;
  v27 = &v24[*(v44 + 36)];
  *v27 = v10;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1BE04F6F4();
  sub_1BDA918B4();
  sub_1BE050CB4();
  (*(v46 + 8))(v26, v47);
  return sub_1BD0D2DC4(v24);
}

uint64_t sub_1BDA91360@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04F7C4();
  LOBYTE(v26) = 0;
  sub_1BDA91560(v20);
  *&v19[7] = v20[0];
  *&v19[23] = v20[1];
  *&v19[39] = v20[2];
  *&v19[55] = v20[3];
  v3 = v26;
  v4 = sub_1BE0501D4();
  sub_1BE04E1F4();
  *&v21 = v2;
  *(&v21 + 1) = 0x4000000000000000;
  v22[0] = v3;
  v5 = *v19;
  *&v22[1] = *v19;
  v6 = *&v19[16];
  *&v22[17] = *&v19[16];
  v7 = *&v19[32];
  *&v22[33] = *&v19[32];
  v8 = *&v19[48];
  *&v22[49] = *&v19[48];
  *&v22[64] = *&v19[63];
  v22[72] = v4;
  *&v23 = v9;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = v12;
  v32 = v23;
  v33 = v24;
  v30 = *&v22[48];
  v31 = *&v22[64];
  v28 = *&v22[16];
  v29 = *&v22[32];
  v26 = v21;
  v27 = *v22;
  v13 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v13;
  v14 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v14;
  v15 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v15;
  v16 = v27;
  *a1 = v26;
  *(a1 + 16) = v16;
  v25 = 0;
  LOBYTE(v34) = 0;
  v18[136] = 1;
  *(a1 + 128) = v34;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  v35[0] = v2;
  v35[1] = 0x4000000000000000;
  v36 = v3;
  v38 = v6;
  v39 = v7;
  *v40 = v8;
  *&v40[15] = *&v19[63];
  v37 = v5;
  v41 = v4;
  v42 = v9;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = 0;
  sub_1BD0DE19C(&v21, v18, &qword_1EBD5DB30);
  return sub_1BD0DE53C(v35, &qword_1EBD5DB30);
}

id sub_1BDA91560@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE0502A4();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE051494();
  v12 = sub_1BE050574();
  v30 = v13;
  v31 = v12;
  v29 = v14;
  v32 = v15;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  if (result)
  {
    sub_1BE050484();
    v22 = sub_1BE0505F4();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    *a1 = v31;
    *(a1 + 8) = v30;
    *(a1 + 16) = v29 & 1;
    *(a1 + 24) = v32;
    *(a1 + 32) = v22;
    *(a1 + 40) = v24;
    *(a1 + 48) = v26 & 1;
    *(a1 + 56) = v28;
    sub_1BD0D7F18(v31, v30, v29 & 1);
    sub_1BE048C84();
    sub_1BD0D7F18(v22, v24, v26 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v22, v24, v26 & 1);

    sub_1BD0DDF10(v31, v30, v29 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BDA917F8()
{
  result = qword_1EBD5DB18;
  if (!qword_1EBD5DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB18);
  }

  return result;
}

unint64_t sub_1BDA9185C()
{
  result = qword_1EBD5DB20;
  if (!qword_1EBD5DB20)
  {
    sub_1BE04F754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB20);
  }

  return result;
}

unint64_t sub_1BDA918B4()
{
  result = qword_1EBD5DB28;
  if (!qword_1EBD5DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB10);
    sub_1BE04F754();
    sub_1BDA917F8();
    sub_1BDA9185C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB28);
  }

  return result;
}

void sub_1BDA919EC()
{
  sub_1BD0E5E8C(319, &qword_1EBD46188);
  if (v0 <= 0x3F)
  {
    sub_1BDA91A88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BDA91A88()
{
  if (!qword_1EBD46190)
  {
    sub_1BE0491B4();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46190);
    }
  }
}

void sub_1BDA91B28()
{
  type metadata accessor for FinanceKitTransactionMapView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BDA91BE4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v98 = a1;
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  v82[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v82[1] = v4;
  v83 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB58);
  MEMORY[0x1EEE9AC00](v96, v5);
  v84 = v82 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB60);
  MEMORY[0x1EEE9AC00](v93, v7);
  v9 = v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v90 = v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v91 = v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB68);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v95 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v94 = v82 - v21;
  v89 = sub_1BE04CE54();
  MEMORY[0x1EEE9AC00](v89, v22);
  v88 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D638);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v82 - v26;
  v85 = v82 - v26;
  v28 = sub_1BE04CE74();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE04CE44();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v86 = v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB70);
  MEMORY[0x1EEE9AC00](v87, v36);
  v38 = v82 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DB78);
  v40 = v39 - 8;
  MEMORY[0x1EEE9AC00](v39, v41);
  v92 = v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v47 = v82 - v46;
  [*v98 coordinate];
  sub_1BE04CE64();
  sub_1BE04CE34();
  (*(v29 + 8))(v32, v28);
  v48 = sub_1BE04CE24();
  (*(*(v48 - 8) + 56))(v27, 1, 1, v48);
  *&v117[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA93FA4(&qword_1EBD5D658, MEMORY[0x1E6985CD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D660);
  sub_1BD0DE4F4(&qword_1EBD5D668, &qword_1EBD5D660);
  sub_1BE053664();
  v49 = v98;
  v99 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D688);
  sub_1BD0DE4F4(&qword_1EBD5D680, &qword_1EBD5D688);
  v50 = v90;
  sub_1BE04CDF4();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v51 = &v38[*(v87 + 36)];
  v52 = v117[8];
  *v51 = v117[7];
  *(v51 + 1) = v52;
  *(v51 + 2) = v117[9];
  sub_1BDA93764();
  sub_1BE0506F4();
  sub_1BD0DE53C(v38, &qword_1EBD5DB70);
  v53 = *(v40 + 44);
  v54 = v49;
  v55 = &v47[v53];
  v56 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v55[32] = 0;
  sub_1BD0DE19C(v49 + *(v56 + 24), v50, &qword_1EBD3F7C0);
  v57 = sub_1BE0491B4();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v50, 1, v57) == 1)
  {
    sub_1BD0DE53C(v50, &qword_1EBD3F7C0);
    v59 = sub_1BE049294();
    v60 = v91;
    (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
  }

  else
  {
    v60 = v91;
    sub_1BE0491A4();
    (*(v58 + 8))(v50, v57);
    v61 = sub_1BE049294();
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) != 1)
    {
      sub_1BD0DE53C(v60, &qword_1EBD48358);
      v68 = v83;
      sub_1BDA939E4(v54, v83);
      v69 = (*(v82[0] + 80) + 16) & ~*(v82[0] + 80);
      v70 = swift_allocObject();
      v71 = sub_1BDA93A48(v68, v70 + v69);
      MEMORY[0x1EEE9AC00](v71, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBA0);
      sub_1BDA9381C();
      v73 = v84;
      sub_1BE051704();
      v74 = sub_1BE051464();
      KeyPath = swift_getKeyPath();
      v76 = (v73 + *(v96 + 36));
      *v76 = KeyPath;
      v76[1] = v74;
      sub_1BD0DE19C(v73, v9, &qword_1EBD5DB58);
      swift_storeEnumTagMultiPayload();
      sub_1BDA93900();
      v67 = v94;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v73, &qword_1EBD5DB58);
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(v60, &qword_1EBD48358);
  v62 = sub_1BE04F504();
  v109 = 1;
  sub_1BDA93308(v54, &v101);
  v114 = v105;
  v115 = v106;
  v116 = v107;
  v110 = v101;
  v111 = v102;
  v112 = v103;
  v113 = v104;
  v117[0] = v101;
  v117[1] = v102;
  v117[2] = v103;
  v117[3] = v104;
  v117[4] = v105;
  v117[5] = v106;
  v117[6] = v107;
  sub_1BD0DE19C(&v110, &v100, &qword_1EBD5DB98);
  sub_1BD0DE53C(v117, &qword_1EBD5DB98);
  *&v108[55] = v113;
  *&v108[71] = v114;
  *&v108[87] = v115;
  *&v108[103] = v116;
  *&v108[7] = v110;
  *&v108[23] = v111;
  *&v108[39] = v112;
  v63 = *&v108[80];
  *(v9 + 81) = *&v108[64];
  *(v9 + 97) = v63;
  *(v9 + 113) = *&v108[96];
  v64 = *&v108[16];
  *(v9 + 17) = *v108;
  *(v9 + 33) = v64;
  v65 = *&v108[48];
  *(v9 + 49) = *&v108[32];
  v66 = v109;
  LOBYTE(v101) = 0;
  *v9 = v62;
  *(v9 + 1) = 0;
  v9[16] = v66;
  *(v9 + 16) = *&v108[111];
  *(v9 + 65) = v65;
  *(v9 + 136) = xmmword_1BE0F0EB0;
  *(v9 + 152) = xmmword_1BE0F0EB0;
  v9[168] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBA0);
  sub_1BDA9381C();
  sub_1BDA93900();
  v67 = v94;
  sub_1BE04F9A4();
LABEL_6:
  v77 = v92;
  sub_1BD0D3170(v47, v92);
  v78 = v95;
  sub_1BD0DE19C(v67, v95, &qword_1EBD5DB68);
  v79 = v97;
  sub_1BD0D3170(v77, v97);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBD8);
  sub_1BD0DE19C(v78, v79 + *(v80 + 48), &qword_1EBD5DB68);
  sub_1BD0DE53C(v67, &qword_1EBD5DB68);
  sub_1BD0D31E0(v47);
  sub_1BD0DE53C(v78, &qword_1EBD5DB68);
  return sub_1BD0D31E0(v77);
}

uint64_t sub_1BDA927DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v9 = *(a1 + 8);
  v10 = v1;
  sub_1BE048C84();
  [v2 coordinate];
  v4 = v3;
  v6 = v5;
  v7 = sub_1BD0DDEBC();
  return MEMORY[0x1BFB39F20](&v9, MEMORY[0x1E69E6158], v7, v4, v6);
}

uint64_t sub_1BDA9285C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = a1 + *(v3 + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  v40 = v13;
  v41 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if ((v39 & 1) == 0)
  {
    v37 = objc_opt_self();
    v16 = *MEMORY[0x1E69BB6F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v18 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v19 = sub_1BE052434();
    v20 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v19;
    *(inited + 48) = v21;
    v38 = v4;
    v22 = *v20;
    *(inited + 56) = *v20;
    v23 = sub_1BE052434();
    v24 = MEMORY[0x1E69BA440];
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v26 = *v24;
    *(inited + 80) = *v24;
    *(inited + 88) = sub_1BE052434();
    *(inited + 96) = v27;
    v28 = v18;
    v29 = v22;
    v30 = v26;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BDA93FA4(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
    v31 = sub_1BE052224();

    [v37 subject:v16 sendEvent:v31];

    v32 = sub_1BE0528D4();
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    sub_1BDA939E4(a1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v33 = sub_1BE052894();
    v34 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    *(v35 + 16) = v33;
    *(v35 + 24) = v36;
    sub_1BDA93A48(v7, v35 + v34);
    sub_1BD122C00(0, 0, v11, &unk_1BE113F98, v35);
  }

  return result;
}

uint64_t sub_1BDA92BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v4[7] = swift_task_alloc();
  v5 = sub_1BE0491B4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1BE0528A4();
  v4[12] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA92D20, v7, v6);
}

uint64_t sub_1BDA92D20()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinanceKitTransactionMapView(0);
  *(v0 + 120) = v2;
  v3 = (v1 + *(v2 + 24));
  v4 = *v3;
  *(v0 + 186) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 128) = v5;
  *(v0 + 24) = v5;
  *(v0 + 184) = 1;
  sub_1BE048964();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  *(v0 + 144) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA92E1C, v7, v6);
}

uint64_t sub_1BDA92E1C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(v4 + *(v5 + 24), v3, &qword_1EBD3F7C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[7];

    sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
    v7 = v0[13];
    v8 = v0[14];

    return MEMORY[0x1EEE6DFA0](sub_1BD51F774, v7, v8);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1BDA92F7C;

    return sub_1BD7369D4();
  }
}

uint64_t sub_1BDA92F7C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BDA930A4, v4, v3);
}

uint64_t sub_1BDA930A4()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = [objc_allocWithZone(PKMerchantMapViewController) initWithMapItem:v1 configOptions:129];
    if (!v2)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v5 = v2;
    v6 = v0[15];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = v0[6];

    (*(v10 + *(v6 + 20)))(v5);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v3 = v0[13];
  v4 = v0[14];
  v2 = sub_1BD51F774;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

double sub_1BDA931C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v19 = 1;
  sub_1BDA93308(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  sub_1BD0DE19C(&v20, &v10, &qword_1EBD5DB98);
  sub_1BD0DE53C(v27, &qword_1EBD5DB98);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v18[96];
  v6 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v6;
  v7 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v8 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 128) = *&v18[111];
  *(a2 + 65) = v7;
  result = 8.0;
  *(a2 + 136) = xmmword_1BE0F0EB0;
  *(a2 + 152) = xmmword_1BE0F0EB0;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_1BDA93308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  v45 = *(a1 + 8);
  v46 = v11;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v40 = v15;
  v42 = v16;
  KeyPath = swift_getKeyPath();
  v17 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(a1 + *(v17 + 24), v6, &qword_1EBD3F7C0);
  v18 = sub_1BE0491B4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
    v20 = sub_1BE049294();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  }

  else
  {
    sub_1BE0491A4();
    (*(v19 + 8))(v6, v18);
    v21 = sub_1BE049294();
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD48358);
      v27 = sub_1BE051574();
      v28 = sub_1BE050324();
      v29 = swift_getKeyPath();
      v30 = [objc_opt_self() tertiaryLabelColor];
      v26 = sub_1BE0511C4();
      v25 = swift_getKeyPath();
      v22 = v27;
      sub_1BE048964();
      v23 = v29;
      sub_1BE048964();
      v24 = v28;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(v10, &qword_1EBD48358);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_6:
  v31 = v40 & 1;
  LOBYTE(v45) = v40 & 1;
  v44 = 0;
  v43 = 1;
  sub_1BD0D7F18(v12, v14, v40 & 1);
  v32 = v42;
  sub_1BE048C84();
  v33 = KeyPath;
  sub_1BE048964();
  sub_1BDA79E54(v22);
  sub_1BDA79EC4(v22);
  v34 = v45;
  v35 = v44;
  v36 = v43;
  v37 = v39;
  *v39 = v12;
  v37[1] = v14;
  *(v37 + 16) = v34;
  v37[3] = v32;
  v37[4] = v33;
  v37[5] = 1;
  *(v37 + 48) = v35;
  v37[7] = 0;
  *(v37 + 64) = v36;
  v37[9] = v22;
  v37[10] = v23;
  v37[11] = v24;
  v37[12] = v25;
  v37[13] = v26;
  sub_1BDA79EC4(v22);
  sub_1BD0DDF10(v12, v14, v31);
}

unint64_t sub_1BDA93764()
{
  result = qword_1EBD5DB80;
  if (!qword_1EBD5DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB70);
    sub_1BD0DE4F4(&qword_1EBD5DB88, &qword_1EBD5DB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DB80);
  }

  return result;
}

unint64_t sub_1BDA9381C()
{
  result = qword_1EBD5DBA8;
  if (!qword_1EBD5DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DBA0);
    sub_1BD0DE4F4(&qword_1EBD5DBB0, &qword_1EBD5DBB8);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBA8);
  }

  return result;
}

unint64_t sub_1BDA93900()
{
  result = qword_1EBD5DBC0;
  if (!qword_1EBD5DBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DB58);
    sub_1BD0DE4F4(&qword_1EBD5DBC8, &qword_1EBD5DBD0);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBC0);
  }

  return result;
}

uint64_t sub_1BDA939E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionMapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA93A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionMapView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA93AAC()
{
  v1 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BDA9285C(v2);
}

BOOL sub_1BDA93B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0491B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DBE0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v28 = v8;
  v17 = v5;
  v18 = *(type metadata accessor for FinanceKitTransactionMapView.ViewModel(0) + 24);
  v19 = *(v13 + 48);
  sub_1BD0DE19C(a1 + v18, v16, &qword_1EBD3F7C0);
  v20 = v17;
  sub_1BD0DE19C(a2 + v18, &v16[v19], &qword_1EBD3F7C0);
  v21 = *(v17 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v19], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD3F7C0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1BD0DE19C(v16, v12, &qword_1EBD3F7C0);
  if (v21(&v16[v19], 1, v4) == 1)
  {
    (*(v17 + 8))(v12, v4);
LABEL_10:
    sub_1BD0DE53C(v16, &qword_1EBD5DBE0);
    return 0;
  }

  v23 = *(v17 + 32);
  v24 = v28;
  v23(v28, &v16[v19], v4);
  sub_1BDA93FA4(&qword_1EBD5DBE8, MEMORY[0x1E69676D0]);
  v25 = sub_1BE052334();
  v26 = *(v20 + 8);
  v26(v24, v4);
  v26(v12, v4);
  sub_1BD0DE53C(v16, &qword_1EBD3F7C0);
  return (v25 & 1) != 0;
}

uint64_t sub_1BDA93EB4(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitTransactionMapView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BDA92BF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BDA93FA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA93FEC()
{
  result = qword_1EBD5DBF0;
  if (!qword_1EBD5DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5DBF8);
    sub_1BD0DE4F4(&qword_1EBD5DC00, &qword_1EBD5DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DBF0);
  }

  return result;
}

unint64_t sub_1BDA940A0()
{
  result = qword_1EBD5DC10;
  if (!qword_1EBD5DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC10);
  }

  return result;
}

uint64_t sub_1BDA94114()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || objc_msgSend(v2, sel_isPeerPaymentPass) || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
    {

LABEL_7:
      v3 = swift_task_alloc();
      *(v0 + 24) = v3;
      *v3 = v0;
      v3[1] = sub_1BDA96350;
      v4 = *(v0 + 16);

      return sub_1BD99C8D8(v4);
    }

    v6 = [v2 isEMoneyPass];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1BDA942B4()
{
  v1 = [*(v0 + 16) paymentPass];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAppleCardPass] & 1) != 0 || objc_msgSend(v2, sel_isPeerPaymentPass) || (objc_msgSend(v2, sel_isAppleBalancePass) & 1) != 0 || (objc_msgSend(v2, sel_isTransitPass))
    {

LABEL_7:
      v3 = swift_task_alloc();
      *(v0 + 24) = v3;
      *v3 = v0;
      v3[1] = sub_1BD99DE40;
      v4 = *(v0 + 16);

      return sub_1BD99C8D8(v4);
    }

    v6 = [v2 isEMoneyPass];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1BDA94434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BD13526C;

  return sub_1BD5426E8(a2, a3, 50, 1, &unk_1BE1142A0, 0);
}

unint64_t sub_1BDA94510()
{
  result = qword_1EBD5DC18;
  if (!qword_1EBD5DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC18);
  }

  return result;
}

uint64_t sub_1BDA94564(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, &unk_1BE114298, 0);
}

unint64_t sub_1BDA94628()
{
  result = qword_1EBD5DC20;
  if (!qword_1EBD5DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC20);
  }

  return result;
}

unint64_t sub_1BDA94680()
{
  result = qword_1EBD5DC28;
  if (!qword_1EBD5DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5DC28);
  }

  return result;
}

uint64_t sub_1BDA9470C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB9A8);
  __swift_project_value_buffer(v9, qword_1EBDAB9A8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BDA94920(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v2[44] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_1BE04A3B4();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v5 = sub_1BE04CFC4();
  v2[52] = v5;
  v2[53] = *(v5 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v6 = sub_1BE04CFE4();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA94B44, 0, 0);
}

uint64_t sub_1BDA94B44()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:ViewBalanceIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[59] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v12 = v0[4];
  v0[60] = v12;
  v13 = v12;
  sub_1BD030458((v0 + 2));
  v14 = swift_task_alloc();
  v0[61] = v14;
  *v14 = v0;
  v14[1] = sub_1BDA94D50;

  return sub_1BD99DCA0(v13);
}

uint64_t sub_1BDA94D50(char a1)
{
  v4 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v5 = sub_1BDA95258;
  }

  else
  {

    *(v4 + 513) = a1 & 1;
    v5 = sub_1BDA94E84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BDA94E84()
{
  if (*(v0 + 513) != 1)
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();
LABEL_11:
    sub_1BDA9562C();

    v18 = *(v0 + 8);

    return v18();
  }

  sub_1BE04A3A4();
  sub_1BE048874();
  v1 = *(v0 + 224);
  *(v0 + 144) = *(v0 + 208);
  *(v0 + 160) = v1;
  v2 = *(v0 + 256);
  *(v0 + 176) = *(v0 + 240);
  *(v0 + 192) = v2;
  sub_1BD030458(v0 + 144);
  sub_1BE048874();
  sub_1BE0487C4();
  sub_1BD030458(v0 + 80);
  if (sub_1BD03F124(*(v0 + 512)) == 0x726143656C707061 && v3 == 0xE900000000000064)
  {

LABEL_7:
    v5 = *(v0 + 400);
    v6 = *(v0 + 408);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    sub_1BDA95918();
    (*(v8 + 8))(v6, v7);
    (*(v8 + 32))(v6, v5, v7);
    goto LABEL_9;
  }

  v4 = sub_1BE053B84();

  if (v4)
  {
    goto LABEL_7;
  }

  sub_1BE052434();
  sub_1BE04A394();
  v9 = sub_1BE052434();
  MEMORY[0x1BFB37400](v9);
  sub_1BE048874();
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  sub_1BE048C84();
  sub_1BD030458(v0 + 272);
  MEMORY[0x1BFB3F610](v10, v11);

  MEMORY[0x1BFB37410](47, 0xE100000000000000);
LABEL_9:
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v14 = *(v0 + 352);
  sub_1BE04A364();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_1BD226BBC(*(v0 + 352));
    v15 = *(v0 + 408);
    v16 = *(v0 + 384);
    v17 = *(v0 + 392);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v17 + 8))(v15, v16);
    goto LABEL_11;
  }

  (*(*(v0 + 368) + 32))(*(v0 + 376), *(v0 + 352), *(v0 + 360));
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = sub_1BDA9532C;
  v21 = *(v0 + 376);

  return sub_1BD0D7A54(v21);
}

uint64_t sub_1BDA95258()
{
  sub_1BDA9562C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA9532C(char a1)
{
  *(*v1 + 514) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BDA9542C, 0, 0);
}

uint64_t sub_1BDA9542C()
{
  if (*(v0 + 514) == 1)
  {
    v1 = *(v0 + 408);
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 368);
    v5 = *(v0 + 376);
    v6 = *(v0 + 360);
    sub_1BE048774();
    (*(v4 + 8))(v5, v6);
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v8 = *(v0 + 408);
    v9 = *(v0 + 384);
    v10 = *(v0 + 392);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v10 + 8))(v8, v9);
  }

  sub_1BDA9562C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BDA9562C()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:ViewBalanceIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BDA95918()
{
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v0 = sub_1BE052434();
  MEMORY[0x1BFB37400](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9A8);
  sub_1BE04A324();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  sub_1BE052434();
  sub_1BE048874();
  sub_1BE048C84();
  sub_1BD030458(&v2);
  sub_1BE04A2F4();

  return sub_1BE04A344();
}

uint64_t sub_1BDA95A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD370D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BDA95B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC40);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC48);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5DC50);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BDA95CC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BDA94920(a1, v4);
}

uint64_t sub_1BDA95D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BDA95DEC();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA95D90(uint64_t a1)
{
  v2 = sub_1BD15CFA8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BDA95DEC()
{
  v0 = sub_1BE048D74();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v42 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v38 = &v34 - v8;
  v9 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1BE04A874();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v34 - v20;
  v35 = sub_1BE04A884();
  v22 = *(v35 - 8);
  v24 = MEMORY[0x1EEE9AC00](v35, v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v34 - v26;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298);
  v37 = v27;
  sub_1BE04A864();
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, qword_1EBDAB400);
  v29 = *(v12 + 16);
  v29(v15, v28, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v22 + 56))(v21, 0, 1, v35);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  sub_1BE052354();
  v29(v15, v28, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v30 = v38;
  sub_1BE048664();
  v31 = sub_1BE048654();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  v32(v39, 1, 1, v31);
  (*(v40 + 104))(v42, *MEMORY[0x1E695A500], v41);
  sub_1BDA940A0();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

id sub_1BDA96378()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBD5DC58 = result;
  return result;
}

uint64_t sub_1BDA963D0()
{
  v0 = sub_1BE04CF34();
  __swift_allocate_value_buffer(v0, qword_1EBDAB9C0);
  __swift_project_value_buffer(v0, qword_1EBDAB9C0);
  if (qword_1EBD370E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5DC58;
  return sub_1BE04CF24();
}

uint64_t sub_1BDA96478()
{
  v0 = sub_1BE04CF34();
  __swift_allocate_value_buffer(v0, qword_1EBDAB9D8);
  __swift_project_value_buffer(v0, qword_1EBDAB9D8);
  if (qword_1EBD370E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBD5DC58;
  return sub_1BE04CF24();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EBD6AB78 == -1)
  {
    if (qword_1EBD6AB80)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EBD6AB80)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBD6AB70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_587 < v11;
    if (_MergedGlobals_587 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EBD6AB64 > a3)
      {
        return 1;
      }

      if (dword_1EBD6AB64 >= a3)
      {
        return dword_1EBD6AB68 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_587 < a2;
  if (_MergedGlobals_587 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBD6AB80;
  if (qword_1EBD6AB80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBD6AB80 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1BFB452C0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_587, &dword_1EBD6AB64, &dword_1EBD6AB68);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

__CFString *PKAccessoryDeviceViewStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80109E0[a1];
  }
}

void sub_1BDA97A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKUINetworkImageForCredentialType(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 1:
      v3 = @"AmEx_Small_Logo";
      goto LABEL_25;
    case 2:
      v3 = @"Discover_Small_Logo";
      v4 = @"Discover_Small_Logo_Dark";
      goto LABEL_26;
    case 3:
      v3 = @"Mastercard_Small_Logo";
      goto LABEL_25;
    case 4:
    case 16:
    case 17:
      v3 = @"Visa_Small_Logo";
      v4 = @"Visa_Small_Logo_Dark";
      goto LABEL_26;
    case 5:
    case 7:
    case 8:
    case 20:
    case 21:
    case 23:
    case 27:
      goto LABEL_27;
    case 6:
      v3 = @"JCB_Small_Logo";
      goto LABEL_25;
    case 9:
      v3 = @"CartesBancaires_Small_Logo";
      goto LABEL_25;
    case 10:
      v3 = @"Dankort_Small_Logo";
      v4 = @"Dankort_Small_Logo_Dark";
      goto LABEL_26;
    case 11:
      v3 = @"ChinaUnionPay_Small_Logo";
      goto LABEL_25;
    case 12:
      v3 = @"Eftpos_Small_Logo";
      v4 = @"Eftpos_Small_Logo_Dark";
      goto LABEL_26;
    case 13:
      v3 = @"Interac_Small_Logo";
      goto LABEL_25;
    case 14:
      v3 = @"Mada_Small_Logo";
      v4 = @"Mada_Small_Logo_Dark";
      goto LABEL_26;
    case 15:
      v3 = @"Maestro_Small_Logo";
      v4 = @"Maestro_Small_Logo_Dark";
      goto LABEL_26;
    case 18:
      v3 = @"Girocard_Small_Logo";
      v4 = @"Girocard_Small_Logo_Dark";
      goto LABEL_26;
    case 19:
      v3 = @"Mir_Small_Logo";
      v4 = @"Mir_Small_Logo_Dark";
      goto LABEL_26;
    case 22:
      v3 = @"PostFinance_Small_Logo";
      goto LABEL_25;
    case 24:
      v3 = @"BankAxept_Small_Logo";
      v4 = @"BankAxept_Small_Logo_Dark";
      goto LABEL_26;
    case 25:
      v3 = @"Meeza_Small_Logo";
      goto LABEL_25;
    case 26:
      v3 = @"NAPAS_Small_Logo";
      v4 = @"NAPAS_Small_Logo_Dark";
      goto LABEL_26;
    case 28:
      v3 = @"Himyan_Small_Logo";
      v4 = @"Himyan_Small_Logo_Dark";
      goto LABEL_26;
    case 29:
      v3 = @"Jaywan_Small_Logo";
LABEL_25:
      v4 = 0;
      goto LABEL_26;
    case 30:
      v3 = @"MyDebit_Small_Logo";
      v4 = @"MyDebit_Small_Logo_Dark";
      goto LABEL_26;
    default:
      if (a1 != 112)
      {
        goto LABEL_27;
      }

      v3 = @"Elo_Small_Logo";
      v4 = @"Elo_Small_Logo_Dark";
LABEL_26:
      v2 = PKUIDynamicImageNamed(v3, v4);
LABEL_27:

      return v2;
  }
}

void sub_1BDA9A1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDA9CD14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDA9ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDA9FCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA1D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA1EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA20C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA2A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDAA2E1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDAA36AC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAA4040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDAA4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA52CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAA6110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA65F4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAA6DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAA7710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDAA7CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA8090(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAA8890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAA9650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void PKPaymentSetupApplyContextAppearance(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a1 == 4 || PKPaymentSetupForceBridgeAppearance())
  {
    v3 = PKBridgeAppearanceGetAppearanceSpecifier();
LABEL_4:
    v4 = v3;
    PKAppearanceApplyToContainer(v3, v6);

    v5 = v6;
    goto LABEL_5;
  }

  v5 = v6;
  if (a1 == 5)
  {
    v3 = PKBridgeAppearanceGetSetupAppearanceSpecifier();
    goto LABEL_4;
  }

LABEL_5:
}

void sub_1BDAABA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDAAC62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAACF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAAD374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAADC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKEventTileIssuerActionURLForTypeInDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          [v3 venueEmailURL];
        }

        else
        {
          [v3 venueWebsiteURL];
        }

        goto LABEL_16;
      }

      v5 = [v3 venuePhoneNumberURL];
    }

    else
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          [v3 purchaseParkingURL];
        }

        else
        {
          [v3 partnerAddOnURL];
        }

        goto LABEL_16;
      }

      v5 = [v3 accessibilityURL];
    }
  }

  else if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        [v3 directionsInformationURL];
      }

      else
      {
        [v3 merchandiseURL];
      }

      goto LABEL_16;
    }

    v5 = [v3 parkingInformationURL];
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        [v3 orderFoodURL];
      }

      else
      {
        [v3 transitInformationURL];
      }

      v5 = LABEL_16:;
      goto LABEL_25;
    }

    v5 = [v3 bagPolicyURL];
  }

LABEL_25:
  v6 = v5;

  return v6;
}

void sub_1BDAAEA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v17 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v19 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAAF794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&a24);
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&a37);
  objc_destroyWeak((v38 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDAB11B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v17 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v19 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAB29B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void PKAppearanceApplyToRemoteUIObjectModel(void *a1, void *a2)
{
  v148 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [v4 setNextButtonStyle:2];
  v97 = v4;
  [v4 allPages];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v134 = 0u;
  v103 = [obj countByEnumeratingWithState:&v131 objects:v145 count:16];
  if (v103)
  {
    v102 = *v132;
    v5 = *MEMORY[0x1E69DE3A8];
    v6 = @"RUIWebContainerView";
    v110 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v132 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v7;
        v8 = *(*(&v131 + 1) + 8 * v7);
        if ([v8 hasWebView])
        {
          v9 = [v8 webViewOM];
          [v9 webView];
          v11 = v10 = v8;

          v12 = [v11 scrollView];
          [v12 setDecelerationRate:v5];

          [v11 evaluateJavaScript:@"document.body.style.webkitUserSelect='none';" completionHandler:0];
          v13 = MEMORY[0x1E696AEC0];
          v14 = [v3 foregroundColor];
          v15 = [v14 styleString];
          v16 = [v13 stringWithFormat:@"document.body.style.backgroundColor='%@'", v15];;
          [v11 evaluateJavaScript:v16 completionHandler:0];

          v17 = MEMORY[0x1E696AEC0];
          v18 = [v3 textColor];
          v19 = [v18 styleString];
          v20 = [v17 stringWithFormat:@"document.body.style.color='%@'", v19];;
          [v11 evaluateJavaScript:v20 completionHandler:0];

          v21 = [v11 scrollView];
          if ([v3 hasDarkAppearance])
          {
            v22 = 2;
          }

          else
          {
            v22 = 0;
          }

          [v21 setIndicatorStyle:v22];

          v23 = [v3 tintColor];
          [v11 setTintColor:v23];

          v8 = v10;
        }

        PKAppearanceApplyToContainer(v3, v8);
        v24 = [v8 titleLabel];
        PKAppearanceApplyToContainer(v3, v24);

        if (![v8 hasTableView])
        {
          if ([v8 hasPasscodeView])
          {
            v85 = [v8 passcodeViewOM];
            v86 = [v85 passcodeView];
            v87 = [v3 backgroundColor];
            [v86 setBackgroundColor:v87];

            v88 = [v8 passcodeViewOM];
            v89 = [v3 textColor];
            [v88 setForegroundColor:v89];

            v90 = [v8 passcodeViewOM];
            [v90 setKeyboardAppearance:{objc_msgSend(v3, "hasDarkAppearance")}];
            goto LABEL_72;
          }

          if ([v8 hasSpinnerView])
          {
            v90 = [v8 spinnerViewOM];
            v91 = [v3 textColor];
            [v90 setSpinnerColor:v91];

LABEL_72:
          }

          v83 = [v8 containerView];
          v84 = [v3 backgroundColor];
          [v83 setBackgroundColor:v84];
          goto LABEL_74;
        }

        v101 = v8;
        v25 = [v8 tableViewOM];
        v26 = [v25 tableView];
        v27 = v26;
        if (v3)
        {
          [v26 pk_applyAppearance:v3];
        }

        v99 = v27;
        v100 = v25;
        v28 = [v25 sections];
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v105 = v28;
        v107 = [v28 countByEnumeratingWithState:&v127 objects:v144 count:16];
        if (v107)
        {
          v106 = *v128;
          do
          {
            v29 = 0;
            do
            {
              if (*v128 != v106)
              {
                objc_enumerationMutation(v105);
              }

              v108 = v29;
              v109 = *(*(&v127 + 1) + 8 * v29);
              v30 = [v109 rows];
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v111 = v30;
              v116 = [v30 countByEnumeratingWithState:&v123 objects:v143 count:16];
              if (v116)
              {
                v115 = *v124;
                do
                {
                  v31 = 0;
                  do
                  {
                    if (*v124 != v115)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v118 = v31;
                    v32 = *(*(&v123 + 1) + 8 * v31);
                    v33 = [v32 attributes];
                    v34 = [v33 objectForKey:@"class"];

                    v35 = [v32 tableCell];
                    v117 = v34;
                    if ([v34 isEqualToString:@"label"])
                    {
                      PKAppearanceApplyToContainer(v3, v35);
                      v36 = [v32 attributes];
                      v37 = [v36 mutableCopy];

                      v38 = [v3 textColor];
                      v39 = [v38 styleString];
                      [v37 setObject:v39 forKey:@"labelColor"];

                      v40 = [v37 objectForKey:@"radioGroup"];

                      if (v40)
                      {
                        v41 = [v3 tintColor];
                        v42 = [v41 styleString];
                        [v37 setObject:v42 forKey:@"radioGroupSelectedColor"];
                      }

                      [v32 setAttributes:v37];
                    }

                    else if (([v34 isEqualToString:@"htmlLabel"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"htmlLink"))
                    {
                      v43 = [v3 foregroundColor];
                      [v35 setBackgroundColor:v43];

                      v44 = v32;
                      v45 = [v44 attributes];
                      v46 = [v45 objectForKey:@"class"];

                      v114 = v46;
                      v113 = v44;
                      if (([v46 isEqualToString:@"htmlLabel"] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", @"htmlLink"))
                      {
                        v47 = [v44 tableCell];
                        v139 = 0u;
                        v140 = 0u;
                        v141 = 0u;
                        v142 = 0u;
                        v48 = [v47 contentView];
                        v49 = [v48 subviews];

                        v122 = v49;
                        v50 = [v49 countByEnumeratingWithState:&v139 objects:v147 count:16];
                        v112 = v47;
                        if (v50)
                        {
                          v51 = v50;
                          v52 = 0;
                          v53 = *v140;
                          v119 = *v140;
                          v120 = v35;
                          do
                          {
                            v54 = 0;
                            v121 = v51;
                            do
                            {
                              if (*v140 != v53)
                              {
                                objc_enumerationMutation(v122);
                              }

                              v55 = *(*(&v139 + 1) + 8 * v54);
                              NSClassFromString(&v6->isa);
                              if (objc_opt_isKindOfClass())
                              {
                                v56 = v6;
                                v57 = v55;
                                v135 = 0u;
                                v136 = 0u;
                                v137 = 0u;
                                v138 = 0u;
                                v58 = [v57 subviews];
                                v59 = [v58 countByEnumeratingWithState:&v135 objects:v146 count:16];
                                if (v59)
                                {
                                  v60 = v59;
                                  v61 = *v136;
                                  do
                                  {
                                    for (i = 0; i != v60; ++i)
                                    {
                                      if (*v136 != v61)
                                      {
                                        objc_enumerationMutation(v58);
                                      }

                                      v63 = *(*(&v135 + 1) + 8 * i);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v64 = v63;

                                        v52 = v64;
                                      }
                                    }

                                    v60 = [v58 countByEnumeratingWithState:&v135 objects:v146 count:16];
                                  }

                                  while (v60);
                                }

                                v6 = v56;
                                v53 = v119;
                                v35 = v120;
                                v51 = v121;
                              }

                              ++v54;
                            }

                            while (v54 != v51);
                            v51 = [v122 countByEnumeratingWithState:&v139 objects:v147 count:16];
                          }

                          while (v51);
                        }

                        else
                        {
                          v52 = 0;
                        }

                        v3 = v110;
                      }

                      else
                      {
                        v52 = 0;
                      }

                      v65 = MEMORY[0x1E696AEC0];
                      v66 = [v3 foregroundColor];
                      v67 = [v66 styleString];
                      v68 = [v65 stringWithFormat:@"document.body.style.backgroundColor='%@'", v67];;
                      [v52 evaluateJavaScript:v68 completionHandler:0];

                      v69 = MEMORY[0x1E696AEC0];
                      v70 = [v3 textColor];
                      v71 = [v70 styleString];
                      v72 = [v69 stringWithFormat:@"document.body.style.color='%@'", v71];;
                      [v52 evaluateJavaScript:v72 completionHandler:0];

                      v73 = [v52 scrollView];
                      if ([v3 hasDarkAppearance])
                      {
                        v74 = 2;
                      }

                      else
                      {
                        v74 = 0;
                      }

                      [v73 setIndicatorStyle:v74];

                      v75 = [v3 tintColor];
                      [v52 setTintColor:v75];
                    }

                    else
                    {
                      PKAppearanceApplyToContainer(v3, v35);
                    }

                    v76 = objc_alloc_init(MEMORY[0x1E69DD250]);
                    v77 = [v3 tableViewCellHighlightColor];
                    [v76 setBackgroundColor:v77];

                    [v35 setSelectedBackgroundView:v76];
                    v31 = v118 + 1;
                  }

                  while (v118 + 1 != v116);
                  v116 = [v111 countByEnumeratingWithState:&v123 objects:v143 count:16];
                }

                while (v116);
              }

              v78 = [v109 footerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v79 = [v78 linkButton];
                PKAppearanceApplyToContainer(v3, v79);
              }

              v80 = [v109 headerView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v81 = [v80 headerLabel];
                PKAppearanceApplyToContainer(v3, v81);
                v82 = [v80 subHeaderLabel];
                PKAppearanceApplyToContainer(v3, v82);
              }

              v29 = v108 + 1;
            }

            while (v108 + 1 != v107);
            v107 = [v105 countByEnumeratingWithState:&v127 objects:v144 count:16];
          }

          while (v107);
        }

        v83 = v100;
        v8 = v101;
        v84 = v99;
LABEL_74:

        v92 = [v8 toolbar];
        PKAppearanceApplyToContainer(v3, v92);
        v93 = [v8 leftToolbarItem];
        v94 = [v3 buttonTextColor];
        [v93 setTintColor:v94];

        v95 = [v8 rightToolbarItem];
        v96 = [v3 buttonTextColor];
        [v95 setTintColor:v96];

        v7 = v104 + 1;
      }

      while (v104 + 1 != v103);
      v103 = [obj countByEnumeratingWithState:&v131 objects:v145 count:16];
    }

    while (v103);
  }
}

void sub_1BDAB53C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB6FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB8C6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAB9058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAB9E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___groupForSectionIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 identifier];

  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  return v9;
}

void sub_1BDABB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void InvalidateSession(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v2 = [MEMORY[0x1E69DC668] sharedApplication];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __InvalidateSession_block_invoke;
    v5[3] = &unk_1E8011A18;
    v5[4] = &v6;
    v3 = [v2 beginBackgroundTaskWithExpirationHandler:v5];

    v7[3] = v3;
    [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:v1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __InvalidateSession_block_invoke_2;
    v4[3] = &unk_1E8011A18;
    v4[4] = &v6;
    [v1 invalidateSessionWithCompletion:v4];
    _Block_object_dispose(&v6, 8);
  }
}

void sub_1BDABB358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDABB560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __InvalidateSession_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSession_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __InvalidateSession_block_invoke_3;
  block[3] = &unk_1E8011A18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __InvalidateSession_block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSessionHandle_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSessionHandle_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __InvalidateSessionHandle_block_invoke_3;
  block[3] = &unk_1E8011A18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __InvalidateSessionHandle_block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void sub_1BDABD9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDABEB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC179C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDAC2850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC47E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC5CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 96));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView()
{
  if (qword_1EBDAA7A0 != -1)
  {
    dispatch_once(&qword_1EBDAA7A0, &__block_literal_global_345);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_7 = result;
  _MergedGlobals_614 = CNAvatarViewFunction;
  return result;
}

Class initCNAvatarCardController()
{
  if (qword_1EBDAA7A0 != -1)
  {
    dispatch_once(&qword_1EBDAA7A0, &__block_literal_global_345);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAA7A8 = result;
  off_1EE98A610 = CNAvatarCardControllerFunction;
  return result;
}

void sub_1BDAC79A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAC9C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACA198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACB178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDACCBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection()
{
  if (qword_1EBD68298 != -1)
  {
    dispatch_once(&qword_1EBD68298, &__block_literal_global_10);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_1 = result;
  getNPKCompanionAgentConnectionClass[0] = NPKCompanionAgentConnectionFunction;
  return result;
}

void *__LoadNanoPassKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary = result;
  return result;
}

void sub_1BDACD730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDACE6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKUIViewLayoutIfNeeded(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  if (v4)
  {
    v6 = v5;
    v8 = v4;
    v7 = v4;
    PKCATrackedLayoutPerform();
  }

  else
  {
    __break(1u);
  }
}

void *PKGroupAnimations(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 count]) != 0)
  {
    if (v3 == 1)
    {
      v4 = [v2 firstObject];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        v9 = 0.0;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            [v11 beginTime];
            v13 = v12;
            [v11 duration];
            v9 = fmax(v13 + v14, v9);
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      else
      {
        v9 = 0.0;
      }

      v4 = [MEMORY[0x1E6979308] animation];
      [v4 setBeginTimeMode:*MEMORY[0x1E69795C0]];
      [v4 setAnimations:v5];
      [v4 setDuration:v9];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKSharingMessageExtensionPresenterForURL(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 absoluteString];
  if ([v2 containsString:{@"data:application/vnd.apple.pkshareablecredential;base64, "}] || objc_msgSend(v2, "containsString:", @"data:application/vnd.apple.pkrelayservermessage;base64,") || objc_msgSend(v2, "containsString:", PKFlightShareMessageAbsoluteDataURLPrefix) || PKIsURLHttpScheme())
  {
    v3 = objc_opt_class();
    goto LABEL_6;
  }

  v10 = [PKSharingMessageExtensionCommonMessage messageTypeFromURL:v1];
  v11 = @"pkrelayservermessage";
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_28;
  }

  if (v10 && v11)
  {
    v13 = [(__CFString *)v10 isEqualToString:v11];

    if (v13)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v14 = v10;
  v15 = @"pkflightsharemessage";
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (!v10 || !v15)
    {

LABEL_25:
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Unable to handle unknown message type '%{public}@'", &v19, 0xCu);
      }

      goto LABEL_28;
    }

    v17 = [(__CFString *)v14 isEqualToString:v15];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v3 = objc_opt_class();

LABEL_6:
  v4 = [v3 alloc];
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [v5 targetDevice];
  v7 = objc_alloc_init(MEMORY[0x1E69B8A60]);
  v8 = [v4 initWithTargetDevice:v6 passLibrary:v7];

  return v8;
}

void sub_1BDAD6C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAD71C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDAD79FC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDAD8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDAD8698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPassUserEducationDemoFooterView: Invalidating contactless interface session", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_238;
  v7[3] = &unk_1E8010B50;
  v8 = v3;
  v6 = v3;
  [v5 invalidateSessionWithCompletion:v7];
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_238(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PeformBackgroundTask_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __PeformBackgroundTask_block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void sub_1BDADB250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDADC27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDADE1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *ErrorTypeFromError(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v8 = 0;
    goto LABEL_113;
  }

  v2 = v1;
  v3 = [v1 domain];
  v4 = *MEMORY[0x1E69BC300];
  v5 = v3;
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_9;
  }

  if (!v5 || !v4)
  {

    goto LABEL_15;
  }

  v7 = [v5 isEqualToString:v4];

  if (v7)
  {
LABEL_9:
    v9 = [v2 code];
    v10 = 0;
    if (v9 <= 60078)
    {
      if (v9 == 60009)
      {
        v11 = 0;
        v10 = @"missingActivationCode";
        goto LABEL_93;
      }

      if (v9 != 60010)
      {
        if (v9 != 60011)
        {
          goto LABEL_95;
        }

        v11 = 0;
        v10 = @"activationCodeLockout";
        goto LABEL_93;
      }
    }

    else
    {
      if (v9 <= 60082)
      {
        if (v9 == 60079)
        {
          v11 = 0;
          v10 = @"shareLimitReached";
        }

        else
        {
          if (v9 != 60080)
          {
            goto LABEL_95;
          }

          v11 = 0;
          v10 = @"fidoUnavailable";
        }

        goto LABEL_93;
      }

      if (v9 != 60083)
      {
        if (v9 != 60085)
        {
          goto LABEL_95;
        }

        v11 = 0;
        v10 = @"redemptionMergeUnavailable";
        goto LABEL_93;
      }
    }

    goto LABEL_33;
  }

LABEL_15:
  v12 = *MEMORY[0x1E69BC510];
  v13 = v6;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_25;
  }

  if (!v6 || !v12)
  {

    goto LABEL_35;
  }

  v15 = [v13 isEqualToString:v12];

  if (v15)
  {
LABEL_25:
    v16 = [v2 code];
    v10 = 0;
    if (v16 > 7)
    {
      if (v16 > 10)
      {
        if (v16 == 11)
        {
          v11 = 0;
          v10 = @"invitationOriginatedLocally";
          goto LABEL_93;
        }

        if (v16 == 12)
        {
          v11 = 0;
          v10 = @"relayServerUnavailable";
          goto LABEL_93;
        }

        if (v16 != 13)
        {
          goto LABEL_95;
        }

        goto LABEL_63;
      }

      if (v16 == 8)
      {
LABEL_67:
        v11 = 0;
        v10 = @"invitationNotSupported";
        goto LABEL_93;
      }

      if (v16 != 9)
      {
        v11 = 0;
        v10 = @"invitationAlreadyAccepted";
        goto LABEL_93;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        if ((v16 - 2) >= 2)
        {
          if (v16 != 4)
          {
            goto LABEL_95;
          }

LABEL_63:
          v11 = 0;
          v10 = @"activationCodeTimeOut";
          goto LABEL_93;
        }

LABEL_33:
        v11 = 0;
        v10 = @"invalidActivationCode";
        goto LABEL_93;
      }

      if (v16 == 5)
      {
        v11 = 0;
        v10 = @"invitationCanceled";
        goto LABEL_93;
      }

      if (v16 == 6)
      {
        v11 = 0;
        v10 = @"invitationUnavailable";
        goto LABEL_93;
      }
    }

    v11 = 0;
    v10 = @"shareServiceUnavailable";
    goto LABEL_93;
  }

LABEL_35:
  v17 = *MEMORY[0x1E69B9E70];
  v18 = v14;
  v19 = v18;
  if (v18 == v17)
  {

LABEL_45:
    v21 = [v2 code];
    v10 = 0;
    if (v21 > 3)
    {
      if (v21 == 4)
      {
        v11 = 0;
        v10 = @"deviceNotSupported";
        goto LABEL_93;
      }

      if (v21 == 6)
      {
        v11 = 0;
        v10 = @"osNotSupported";
        goto LABEL_93;
      }

      if (v21 != 5)
      {
        goto LABEL_95;
      }
    }

    else if ((v21 - 1) >= 3)
    {
      if (v21)
      {
        goto LABEL_95;
      }

      v11 = 0;
      v10 = @"unknownSecureElementError";
      goto LABEL_93;
    }

    goto LABEL_67;
  }

  if (v6 && v17)
  {
    v20 = [v18 isEqualToString:v17];

    if (!v20)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_50:
  v22 = *MEMORY[0x1E69BC528];
  v23 = v19;
  v24 = v23;
  if (v23 == v22)
  {
  }

  else
  {
    if (!v6 || !v22)
    {

LABEL_76:
      v30 = *MEMORY[0x1E696A978];
      v31 = v24;
      v32 = v31;
      if (v31 == v30)
      {
      }

      else
      {
        if (!v6 || !v30)
        {

LABEL_90:
          v10 = 0;
          goto LABEL_95;
        }

        v33 = [v31 isEqualToString:v30];

        if (!v33)
        {
          goto LABEL_90;
        }
      }

      v11 = 0;
      v10 = @"networkFailure";
      goto LABEL_93;
    }

    v25 = [v23 isEqualToString:v22];

    if (!v25)
    {
      goto LABEL_76;
    }
  }

  v26 = PKSubcredentialProvisioningDisplayableDAError();
  v11 = v26 == 0;
  if (v26)
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = v26;
      _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Will report DA error: %@", &v45, 0xCu);
    }

    v28 = v26;
    v2 = v28;
  }

  v29 = [v2 code];
  if (v29 > 0x1B)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E8012570[v29];
  }

LABEL_93:
  if (!v11 && v10)
  {
    goto LABEL_105;
  }

LABEL_95:
  v34 = [v2 underlyingErrors];
  v35 = [v34 firstObject];

  if (v35)
  {
    v36 = ErrorTypeFromError(v35);
    v37 = v36;
    if (v36 == @"unknown")
    {
      goto LABEL_99;
    }

    if (!v36)
    {
      v39 = 0;
      goto LABEL_101;
    }

    v38 = [(__CFString *)v36 isEqualToString:@"unknown"];

    v39 = v37;
    if (v38)
    {
LABEL_99:
      v39 = v10;
    }

LABEL_101:
    v10 = v39;
  }

  v40 = @"unknown";
  if (!v10)
  {
    v10 = @"unknown";
    v40 = 0;
    goto LABEL_109;
  }

  v41 = v10;
  if (v41 == @"unknown")
  {
    v10 = @"unknown";
    goto LABEL_109;
  }

  v10 = v41;
LABEL_105:
  v42 = [(__CFString *)v10 isEqualToString:@"unknown"];

  v40 = v10;
  if (v42)
  {
LABEL_109:
    v43 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = v2;
      _os_log_impl(&dword_1BD026000, v43, OS_LOG_TYPE_DEFAULT, "Unable to determine type for %@", &v45, 0xCu);
    }
  }

  v8 = v10;

LABEL_113:

  return v8;
}

void sub_1BDAE06C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAE0A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKPassTileViewTileImageTintColor(void *a1, char *a2)
{
  switch([a1 tintColor])
  {
    case 1:
      v3 = [MEMORY[0x1E69DC888] labelColor];
      goto LABEL_27;
    case 2:
      v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      goto LABEL_27;
    case 3:
      v3 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_27;
    case 4:
      v3 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      goto LABEL_27;
    case 5:
      v3 = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_27;
    case 6:
      v3 = [MEMORY[0x1E69DC888] placeholderTextColor];
      goto LABEL_27;
    case 7:
      v3 = [MEMORY[0x1E69DC888] systemFillColor];
      goto LABEL_27;
    case 8:
      v3 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      goto LABEL_27;
    case 9:
      v3 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      goto LABEL_27;
    case 10:
      v3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      goto LABEL_27;
    case 11:
      v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      goto LABEL_27;
    case 12:
      v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      goto LABEL_27;
    case 13:
      v3 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
      goto LABEL_27;
    case 14:
      v3 = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_27;
    case 15:
      v3 = [MEMORY[0x1E69DC888] systemGreenColor];
      goto LABEL_27;
    case 16:
      v3 = [MEMORY[0x1E69DC888] systemIndigoColor];
      goto LABEL_27;
    case 17:
      v3 = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_27;
    case 18:
      v3 = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_27;
    case 19:
      v3 = [MEMORY[0x1E69DC888] systemPurpleColor];
      goto LABEL_27;
    case 20:
      v3 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_27;
    case 21:
      v3 = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_27;
    case 22:
      v3 = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_27;
    case 23:
      v3 = [MEMORY[0x1E69DC888] systemGrayColor];
      goto LABEL_27;
    case 24:
      v4 = 0;
      v3 = 0;
      goto LABEL_28;
    default:
      v3 = 0;
LABEL_27:
      v4 = 1;
LABEL_28:
      if (v3)
      {
        v4 = 0;
      }

      *a2 = v4;

      return v3;
  }
}

id PKPassTileImageToUIImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = [v3 symbolName];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v4 scale:3];
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5 withConfiguration:v6];
LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

  v6 = [v3 image];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v6];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  if ([v3 tintColor] || !objc_msgSend(v3, "hasColorContent"))
  {
    v10 = [v9 imageWithRenderingMode:2];
  }

  else
  {
    v10 = v9;
  }

  v8 = v10;

LABEL_13:

  return v8;
}

void *CreateAttributedString(void *a1, void *a2)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MEMORY[0x1E696AAB0];
    v4 = a2;
    v5 = v2;
    v6 = [v3 alloc];
    v9 = *MEMORY[0x1E69DB648];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v2 = [v6 initWithString:v5 attributes:v7];
  }

  return v2;
}

id CreateLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v0 setNumberOfLines:1];
  v1 = [MEMORY[0x1E69DC888] clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [MEMORY[0x1E69DC888] tintColor];
  [v0 setTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] labelColor];
  [v0 setTintColor:v3];

  return v0;
}

void sub_1BDAE4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

BOOL PKPassTileViewCanIgnoreUpdatedContent(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (PKEqualObjects())
  {
    v10 = [v7 state];
    v11 = [v8 state];
    v12 = v10;
    if (v12 == v11)
    {
      if ([v9 hash] == a4)
      {
        v13 = 1;
      }

      else
      {
        v14 = [v12 stateTypeDefaultV2];
        v15 = [v14 title];
        v16 = [v15 valueTypeForeignReference];
        v17 = [v16 foreignReferenceType];

        if (v17)
        {
          v13 = 0;
        }

        else
        {
          v18 = [v14 body];
          v19 = [v18 valueTypeForeignReference];
          v20 = [v19 foreignReferenceType];

          if (v20)
          {
            v13 = 0;
          }

          else
          {
            v24 = [v14 footer];
            v21 = [v24 valueTypeForeignReference];
            v22 = [v21 foreignReferenceType];

            v13 = v22 == 0;
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1BDAEB04C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAEBA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAEC7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKBridgeAppearanceGetAppearanceSpecifier()
{
  if (qword_1EBD6AB90 != -1)
  {
    dispatch_once(&qword_1EBD6AB90, &__block_literal_global_18);
  }

  v1 = _MergedGlobals_588;

  return v1;
}

void __PKBridgeAppearanceGetAppearanceSpecifier_block_invoke()
{
  v0 = objc_alloc_init(PKAppearanceSpecifier);
  v1 = _MergedGlobals_588;
  _MergedGlobals_588 = v0;

  if (_MergedGlobals_588)
  {
    [_MergedGlobals_588 setHasDarkAppearance:1];
    v2 = _MergedGlobals_588;
    v3 = PKBridgeBackgroundColor();
    [v2 setBackgroundColor:v3];

    v4 = _MergedGlobals_588;
    v5 = PKBridgeForegroundColor();
    [v4 setForegroundColor:v5];

    v6 = _MergedGlobals_588;
    v7 = BPSBridgeTintColor();
    [v6 setTintColor:v7];

    v8 = _MergedGlobals_588;
    v9 = PKBridgeSeparatorColor();
    [v8 setTableViewSeparatorColor:v9];

    v10 = _MergedGlobals_588;
    v11 = PKBridgeCellHighlightColor();
    [v10 setTableViewCellHighlightColor:v11];

    v12 = _MergedGlobals_588;
    v13 = PKBridgeTableViewCellAccessoryColor();
    [v12 setTableViewCellAccessoryColor:v13];

    v14 = _MergedGlobals_588;
    v15 = PKBridgeTableViewCellAccessoryHighlightColor();
    [v14 setTableViewCellAccessoryHighlightColor:v15];

    v16 = _MergedGlobals_588;
    v17 = PKBridgeTextColor();
    [v16 setTextColor:v17];

    v18 = _MergedGlobals_588;
    v19 = PKBridgeAltTextColor();
    [v18 setAltTextColor:v19];

    v20 = _MergedGlobals_588;
    v21 = PKBridgeButtonTextColor();
    [v20 setButtonTextColor:v21];

    v22 = _MergedGlobals_588;
    v23 = BPSSetupTintDisabledColor();
    [v22 setButtonDisabledTextColor:v23];

    v24 = _MergedGlobals_588;
    v25 = [MEMORY[0x1E69DC888] clearColor];
    [v24 setButtonBackgroundColor:v25];

    v26 = _MergedGlobals_588;
    v27 = BPSPillSelectedColor();
    [v26 setContinueButtonTintColor:v27];

    v28 = _MergedGlobals_588;
    v29 = PKBridgeEditableTextColor();
    [v28 setEditableTextColor:v29];

    v30 = _MergedGlobals_588;
    v31 = PKBridgeEditablePlaceholderTextColor();
    [v30 setEditablePlaceholderTextColor:v31];

    v32 = _MergedGlobals_588;
    v33 = PKBridgeEditableInsertionPointColor();
    [v32 setEditableInsertionPointColor:v33];

    v34 = _MergedGlobals_588;
    v35 = PKBridgeEditableSelectionBarColor();
    [v34 setEditableSelectionBarColor:v35];

    v36 = _MergedGlobals_588;
    v37 = PKBridgeEditableSelectionHighlightColor();
    [v36 setEditableSelectionHighlightColor:v37];

    v38 = _MergedGlobals_588;
    v39 = PKBridgeFooterHyperlinkColor();
    [v38 setFooterHyperlinkColor:v39];

    v40 = _MergedGlobals_588;
    v41 = BPSProgressBarTintColor();
    [v40 setProgressBarTintColor:v41];

    v42 = _MergedGlobals_588;
    v43 = BPSProgressBarTrackTintColor();
    [v42 setProgressBarTrackTintColor:v43];

    v44 = _MergedGlobals_588;
    v45 = [MEMORY[0x1E69DC888] colorWithWhite:0.188235294 alpha:1.0];
    [v44 setSearchBarTintcolor:v45];

    v46 = _MergedGlobals_588;
    v47 = PKBridgeBackgroundColor();
    v48 = [v47 colorWithAlphaComponent:0.400000006];
    [v46 setCameraCaptureMaskColor:v48];

    v49 = _MergedGlobals_588;
    v50 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.796078431 blue:0.184313725 alpha:1.0];
    [v49 setCameraCaptureMaskOutlineColor:v50];

    v51 = _MergedGlobals_588;
    v52 = PKBridgeBackgroundColor();
    v53 = PKPointImageWithColor(v52);
    [v51 setNavBarPointImage:v53];

    v54 = _MergedGlobals_588;
    v56 = PKBridgeSeparatorColor();
    v55 = PKPointImageWithColor(v56);
    [v54 setNavBarShadowPointImage:v55];
  }
}

id PKBridgeBackgroundColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 backgroundColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBackgroundColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeForegroundColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 foregroundColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSForegroundColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeSeparatorColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 separatorColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSSeparatorColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeCellHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSCellHightlightColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTableViewCellAccessoryColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellAccessoryColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSAccessoryColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTableViewCellAccessoryHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 cellAccessoryHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSCellHightlightColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 textColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeAltTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 altTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSDetailTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeButtonTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 buttonTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSTextColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditablePlaceholderTextColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editablePlaceholderTextColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSAccessoryColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableInsertionPointColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableInsertionPointColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableSelectionBarColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableSelectionBarColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeEditableSelectionHighlightColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 editableSelectionHighlightColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = BPSBridgeTintColor();
    v3 = [v4 colorWithAlphaComponent:0.200000003];
  }

  return v3;
}

id PKBridgeFooterHyperlinkColor()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 footerHyperlinkColor];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = BPSBridgeTintColor();
  }

  v4 = v3;

  return v4;
}

id PKBridgeAppearanceGetSetupAppearanceSpecifier()
{
  if (qword_1EBD6ABA0 != -1)
  {
    dispatch_once(&qword_1EBD6ABA0, &__block_literal_global_3);
  }

  v1 = qword_1EBD6AB98;

  return v1;
}

void __PKBridgeAppearanceGetSetupAppearanceSpecifier_block_invoke()
{
  v0 = PKBridgeAppearanceGetAppearanceSpecifier();
  v1 = [v0 copy];
  v2 = qword_1EBD6AB98;
  qword_1EBD6AB98 = v1;

  v3 = qword_1EBD6AB98;
  if (qword_1EBD6AB98)
  {
    v4 = BPSSetupBackgroundColor();
    [v3 setBackgroundColor:v4];
  }
}

uint64_t PKBridgeUsesDarkAppearance()
{
  v0 = [MEMORY[0x1E69C5710] appearance];
  v1 = [v0 usesDarkTheme];

  return v1;
}

void sub_1BDAEE4D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDAF4788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF4F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF5B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF60F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF76A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAF9624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFA4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKRemotePaymentSetupViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D20500];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_didFinishWithPasses_error_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_didFinishWithPasses_error_ argumentIndex:1 ofReply:0];

  return v0;
}

void sub_1BDAFBF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDAFC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFCB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFD1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDAFE744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB02260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose((v72 - 248), 8);
  _Block_object_dispose((v72 - 200), 8);
  _Block_object_dispose((v72 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB0310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB03824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB05DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB07A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDB08464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB08848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKServiceAddPassesViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D35CE8];
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_ingestPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDB09FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB0B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKPostOpenApplicationNotification(void *a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"url";
      v11[1] = @"LSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"bundleID";
      v11[1] = @"LSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E696AD88];
      v6 = a3;
      v7 = a2;
      v8 = a1;
      v9 = [v5 defaultCenter];
      v11[0] = @"bundleID";
      v11[1] = @"FBSConfiguration";
      v12[0] = v7;
      v12[1] = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

      [v9 postNotificationName:@"PKOpenApplicationNotification" object:v8 userInfo:v10];
    }
  }
}

uint64_t PKOpenApplication(NSNotification *a1)
{
  v1 = [(NSNotification *)a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"LSConfiguration"];
  v3 = [v1 objectForKeyedSubscript:@"FBSConfiguration"];
  v4 = [v1 objectForKeyedSubscript:@"url"];
  v5 = [v1 objectForKeyedSubscript:@"bundleID"];
  if (PKOpenApplication(v4, v2) & 1) != 0 || (PKOpenApplication(v5, v2))
  {
    v6 = 1;
  }

  else
  {
    v6 = PKOpenApplication(v5, v3);
  }

  return v6;
}

uint64_t PKOpenApplication(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = MEMORY[0x1E6963608];
    v6 = a2;
    v7 = a1;
    v8 = [v5 defaultWorkspace];
    [v8 openURL:v7 configuration:v6 completionHandler:0];
  }

  return v3;
}

{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = MEMORY[0x1E6963608];
    v6 = a2;
    v7 = a1;
    v8 = [v5 defaultWorkspace];
    [v8 openApplicationWithBundleIdentifier:v7 configuration:v6 completionHandler:0];
  }

  return v3;
}

{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v5 = a2;
    v6 = a1;
    v7 = SBSCreateOpenApplicationService();
    [v7 openApplication:v6 withOptions:v5 completion:0];
  }

  return v3;
}

uint64_t PKCanOpenApplication(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v1 = a1;
  v2 = SBSCreateOpenApplicationService();
  v3 = [v2 canOpenApplication:v1 reason:&v5];

  return v3;
}

uint64_t PKOpenApplicationForApplicationIdentifier(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x1E695DFF8];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:@"itms-appss://apps.apple.com/app/"];
  v4 = [v2 stringValue];

  v5 = [v3 URLByAppendingPathComponent:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v10 = *MEMORY[0x1E699F970];
  v11[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 setFrontBoardOptions:v7];

  v8 = PKOpenApplication(v5, v6);
  return v8;
}

void sub_1BDB0C0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB0FDA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PKBusinessChatApplyIntentFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"wallet_application_duplicateapplication")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"wallet_application_duplicateapplication"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"wallet_application_documentsubmission" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"wallet_application_documentsubmission"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id initBCParameterNameIntent()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameIntent");
  objc_storeStrong(&_MergedGlobals_1_0, *v0);
  _MergedGlobals_615 = BCParameterNameIntentFunction;
  v1 = _MergedGlobals_1_0;

  return v1;
}

void *__LoadBusinessChat_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/BusinessChat.framework/BusinessChat", 2);
  qword_1EBD682B8 = result;
  return result;
}

id initBCParameterNameGroup()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameGroup");
  objc_storeStrong(&qword_1EBD682B0, *v0);
  off_1EE98A620 = BCParameterNameGroupFunction;
  v1 = qword_1EBD682B0;

  return v1;
}

id initBCParameterNameBody()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  v0 = dlsym(qword_1EBD682B8, "BCParameterNameBody");
  objc_storeStrong(&qword_1EBD682A8, *v0);
  off_1EE98A628 = BCParameterNameBodyFunction;
  v1 = qword_1EBD682A8;

  return v1;
}

Class initBCChatAction()
{
  if (qword_1EBD682C0 != -1)
  {
    dispatch_once(&qword_1EBD682C0, &__block_literal_global_737);
  }

  result = objc_getClass("BCChatAction");
  qword_1EBD682C8 = result;
  off_1EE98A630 = BCChatActionFunction;
  return result;
}

void *__LoadAppleMediaServicesUIPaymentSheets_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServicesUIPaymentSheets.framework/AppleMediaServicesUIPaymentSheets", 2);
  LoadAppleMediaServicesUIPaymentSheets_frameworkLibrary = result;
  return result;
}

void sub_1BDB1A548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

Class initQLItem()
{
  if (qword_1EBD6ABB0 != -1)
  {
    dispatch_once(&qword_1EBD6ABB0, &__block_literal_global_31);
  }

  result = objc_getClass("QLItem");
  _MergedGlobals_589 = result;
  getQLItemClass[0] = QLItemFunction;
  return result;
}

void *__LoadQuickLook_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  LoadQuickLook_frameworkLibrary = result;
  return result;
}

Class initQLPreviewController()
{
  if (qword_1EBD6ABB0 != -1)
  {
    dispatch_once(&qword_1EBD6ABB0, &__block_literal_global_31);
  }

  result = objc_getClass("QLPreviewController");
  qword_1EBD6ABB8 = result;
  getQLPreviewControllerClass = QLPreviewControllerFunction;
  return result;
}

void sub_1BDB1BF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB1CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float32x4_t Main_NearbyPeerPaymentVFX_graph_4F3DDB39_11D3_4B83_9014_442D6CE9BF38(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, float32x2_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, void *a10, float32x2_t *a11)
{
  v11 = vmlaq_n_f32(vaddq_f32(a2, vmlaq_f32(a4, 0, a3)), a1, a5);
  __asm { FMOV            V0.4S, #10.0 }

  result = vmulq_f32(v11, _Q0);
  *v11.f32 = vadd_f32(*result.f32, *result.f32);
  *a10 = v11.i64[0];
  *a11 = vmul_f32(*v11.f32, a6);
  *a9 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_4F3DDB39_11D3_4B83_9014_442D6CE9BF38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 56);
  __asm { FMOV            V0.4S, #10.0 }

  result = vmulq_f32(vmlaq_n_f32(vaddq_f32(*(*(arguments_buffer + 16) + 16), vmlaq_f32(*(*(arguments_buffer + 16) + 48), 0, *(*(arguments_buffer + 16) + 32))), **(arguments_buffer + 16), **(arguments_buffer + 24)), _Q0);
  v9 = vadd_f32(*result.f32, *result.f32);
  v10 = vmul_f32(**(arguments_buffer + 32), v9);
  **(arguments_buffer + 48) = v9;
  *v2 = v10;
  *v1 = result;
  return result;
}

float32x4_t Main_NearbyPeerPaymentVFX_graph_7BB9D9EB_AD4F_40D2_BC79_F3E1E47DEF3C(float32x4_t a1, float32x2_t a2, float32x2_t a3, float32x4_t a4, float a5, uint64_t a6, uint64_t a7, float32x4_t *a8)
{
  a1.f32[1] = 1.0 - a1.f32[1];
  *a1.f32 = vsub_f32(vmul_f32(*a1.f32, a2), a3);
  a1.i32[2] = 0;
  v8 = vaddq_f32(a4, a1);
  v9 = vaddq_f32(a1, xmmword_1BE114930);
  v10 = vmulq_f32(v9, v9);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = vdupq_lane_s32(*v10.f32, 0);
  v11.i32[3] = 0;
  v12 = vrsqrteq_f32(v11);
  v13 = vmulq_f32(v12, vrsqrtsq_f32(v11, vmulq_f32(v12, v12)));
  v14 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v10.f32[0] != 0.0)), 0x1FuLL));
  v14.i32[3] = 0;
  result = vaddq_f32(v8, vmulq_n_f32(vbslq_s8(vcltzq_s32(v14), vmulq_f32(v9, vmulq_f32(v13, vrsqrtsq_f32(v11, vmulq_f32(v13, v13)))), v9), a5));
  *a8 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_7BB9D9EB_AD4F_40D2_BC79_F3E1E47DEF3C()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = **(arguments_buffer + 16);
  v1.f32[1] = 1.0 - v1.f32[1];
  *v2.f32 = vsub_f32(vmul_f32(**(arguments_buffer + 24), v1), **(arguments_buffer + 32));
  v2.i32[2] = 0;
  v3 = vaddq_f32(**(arguments_buffer + 40), v2);
  v4 = vaddq_f32(v2, xmmword_1BE114930);
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  v6 = vdupq_lane_s32(*v5.f32, 0);
  v6.i32[3] = 0;
  v7 = vrsqrteq_f32(v6);
  v8 = vmulq_f32(v7, vrsqrtsq_f32(v6, vmulq_f32(v7, v7)));
  v9 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v5.f32[0] != 0.0)), 0x1FuLL));
  v9.i32[3] = 0;
  result = vaddq_f32(v3, vmulq_n_f32(vbslq_s8(vcltzq_s32(v9), vmulq_f32(v4, vmulq_f32(v8, vrsqrtsq_f32(v6, vmulq_f32(v8, v8)))), v4), **(arguments_buffer + 48)));
  **(arguments_buffer + 56) = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_8F63ABD7_3E9E_443A_9762_9A2A6D67CFF2(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_8F63ABD7_3E9E_443A_9762_9A2A6D67CFF2()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_8DB87E8E_072C_4350_A55F_9101BF5BE668(double a1, double a2, double a3, float a4, float a5, uint64_t a6, uint64_t a7, float *a8, float *a9, int32x4_t *a10, float *a11)
{
  *&a3 = vmuls_lane_f32(a4, *&a3, 1) / a5;
  if (fabsf(a5) <= 0.00000011921)
  {
    *&a3 = 0.0;
  }

  v11 = vmuls_lane_f32(0.6, *&a2, 1);
  v12 = 0.6 * *&a2;
  *a10 = vdupq_lane_s32(*&a3, 0);
  *a8 = fminf(*&a1, *(&a1 + 1));
  a8[1] = fmaxf(*&a1, *(&a1 + 1));
  result = fminf(v12, v11);
  v14 = fmaxf(v12, v11);
  *a9 = result;
  a9[1] = v14;
  *a11 = result;
  a11[1] = v14;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_8DB87E8E_072C_4350_A55F_9101BF5BE668()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 80);
  v4 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 24);
  v6 = **(arguments_buffer + 48);
  *v7.i32 = (**(arguments_buffer + 40) * *(*(arguments_buffer + 32) + 4)) / v6;
  if (fabsf(v6) <= 0.00000011921)
  {
    *v7.i32 = 0.0;
  }

  v8 = vmuls_lane_f32(0.6, v5, 1);
  v9 = 0.6 * v5.f32[0];
  **(arguments_buffer + 72) = vdupq_lane_s32(v7, 0);
  *v1 = fminf(*&v4, *(&v4 + 1));
  v1[1] = fmaxf(*&v4, *(&v4 + 1));
  result = fminf(v9, v8);
  v11 = fmaxf(v9, v8);
  *v2 = result;
  v2[1] = v11;
  *v3 = result;
  v3[1] = v11;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_17EDCC0D_8B80_40BF_B717_8C88FA83C130(float a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float a6, uint64_t a7, uint64_t a8, float *a9, float32x2_t *a10, float *a11, _OWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  a2.f32[1] = 1.0 - a2.f32[1];
  *a9 = 1.0 - a1;
  *a10 = vadd_f32(vsub_f32(vmul_f32(a2, a3), a4), a5);
  result = (fminf(fmaxf(fabsf(a6), 0.0), 1.0) * 0.45) + 0.45;
  *a11 = result;
  *a12 = a21;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_17EDCC0D_8B80_40BF_B717_8C88FA83C130()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  v7 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v10 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v12 = *v2;
  v13 = *(v7 + 48);
  result = 1.0 - *v1;
  v12.f32[1] = 1.0 - COERCE_FLOAT(HIDWORD(*v2));
  v15 = vadd_f32(*v5, vsub_f32(vmul_f32(*v3, v12), *v4));
  v16 = (fminf(fmaxf(fabsf(COERCE_FLOAT(*v6)), 0.0), 1.0) * 0.45) + 0.45;
  *v8 = result;
  *v9 = v15;
  *v10 = v16;
  *v11 = v13;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_4C57DC71_48E6_40AC_9B25_2948E9083C8F(float a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, float *a8, __n128 *a9)
{
  result = (fminf(fmaxf(fabsf(a1), 0.0), 1.0) * 0.45) + 0.45;
  *a8 = result;
  *a9 = a5;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_4C57DC71_48E6_40AC_9B25_2948E9083C8F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(*(arguments_buffer + 24) + 48);
  result = (fminf(fmaxf(fabsf(COERCE_FLOAT(**(arguments_buffer + 16))), 0.0), 1.0) * 0.45) + 0.45;
  **(arguments_buffer + 32) = result;
  *v1 = v2;
  return result;
}

simd_quatf Main_NearbyPeerPaymentVFX_graph_83816ECE_5550_45DA_A8E1_A731EE274A87(const void *a1, unsigned int a2, float a3, simd_quatf *a4)
{
  *&v5 = (a3 + 1.5708) * 0.5;
  v6.i64[0] = 0;
  v6.i64[1] = v5;
  x = v6;
  v16 = _simd_cos_f4(v6);
  v7 = _simd_sin_f4(x);
  v8 = vextq_s8(v16, v16, 4uLL);
  v9 = vmulq_f32(vzip1q_s32(vrev64q_s32(v16), v16), vextq_s8(vzip1q_s32(v8, v7), v8, 8uLL));
  v10 = vzip2q_s32(vzip1q_s32(v16, v7), v7);
  v10.f32[3] = -v7.f32[0];
  v11 = vextq_s8(v7, v7, 8uLL);
  v12 = vtrn1q_s32(v7, vextq_s8(v16, v16, 8uLL));
  v7.i32[3] = v7.i32[1];
  v13 = vtrn1q_s32(v11, v16);
  v13.f32[1] = -v16.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v7, v10), v13)), v12, v9);
  *a4 = result;
  return result;
}

float32x4_t __vfx_script_NearbyPeerPaymentVFX_graph_83816ECE_5550_45DA_A8E1_A731EE274A87()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2.i64[0] = 0;
  v2.i32[3] = 0;
  v2.f32[2] = (**(arguments_buffer + 16) + 1.5708) * 0.5;
  x = v2;
  v12 = _simd_cos_f4(v2);
  v3 = _simd_sin_f4(x);
  v4 = vextq_s8(v12, v12, 4uLL);
  v5 = vmulq_f32(vzip1q_s32(vrev64q_s32(v12), v12), vextq_s8(vzip1q_s32(v4, v3), v4, 8uLL));
  v6 = vzip2q_s32(vzip1q_s32(v12, v3), v3);
  v6.f32[3] = -v3.f32[0];
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = vtrn1q_s32(v3, vextq_s8(v12, v12, 8uLL));
  v3.i32[3] = v3.i32[1];
  v9 = vtrn1q_s32(v7, v12);
  v9.f32[1] = -v12.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v3, v6), v9)), v8, v5);
  *v1 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_FA73AA18_EFB4_4967_806A_2605AD218E4B(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a4 = v4;
  a4[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_FA73AA18_EFB4_4967_806A_2605AD218E4B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = **(arguments_buffer + 16);
  v3 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v3;
  v1[1] = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_C775FAB3_BFE7_4B95_8DCB_1678C67CCA6A(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_C775FAB3_BFE7_4B95_8DCB_1678C67CCA6A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_C96D83EA_E1AB_45EB_9461_103DA706828B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = **(arguments_buffer + 16);
  *v1 = result;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_DF9BFC14_437A_4998_A27E_D9A527DD3414(double a1, double a2, float a3, float a4, uint64_t a5, uint64_t a6, float *a7, int32x4_t *a8)
{
  *&a2 = vmuls_lane_f32(a3, *&a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    *&a2 = 0.0;
  }

  *a8 = vdupq_lane_s32(*&a2, 0);
  v8 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a7 = v8;
  a7[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_DF9BFC14_437A_4998_A27E_D9A527DD3414()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = **(arguments_buffer + 16);
  v3 = **(arguments_buffer + 40);
  *v4.i32 = (**(arguments_buffer + 32) * *(*(arguments_buffer + 24) + 4)) / v3;
  if (fabsf(v3) <= 0.00000011921)
  {
    *v4.i32 = 0.0;
  }

  **(arguments_buffer + 56) = vdupq_lane_s32(v4, 0);
  v5 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v5;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_0C69EEE3_4540_4FCD_B77F_475B09488C38(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a4 = v4;
  a4[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_0C69EEE3_4540_4FCD_B77F_475B09488C38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = **(arguments_buffer + 16);
  v3 = fminf(*&v2, *(&v2 + 1));
  result = fmaxf(*&v2, *(&v2 + 1));
  *v1 = v3;
  v1[1] = result;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_9B05635D_4713_45C0_8816_D6E7CBD6CC9F(double a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  result = *(&a1 + 1) + ((-*(&a1 + 1) - *(&a1 + 1)) * fminf(fmaxf(*(&a2 + 1), 0.0), 1.0));
  v6 = *a5;
  *(&v6 + 1) = result;
  DWORD2(v6) = *(a5 + 1);
  *a5 = v6;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_9B05635D_4713_45C0_8816_D6E7CBD6CC9F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[4];
  result = *v1;
  v3 = *v1;
  v3.n128_f32[1] = *(arguments_buffer[2] + 4) + ((-*(arguments_buffer[2] + 4) - *(arguments_buffer[2] + 4)) * fminf(fmaxf(*(arguments_buffer[3] + 4), 0.0), 1.0));
  v3.n128_u32[2] = v1->n128_u64[1];
  *v1 = v3;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_05113D80_F43B_424E_9B9F_5433C213980D(double a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  result = *(&a1 + 1) + ((-*(&a1 + 1) - *(&a1 + 1)) * fminf(fmaxf(*(&a2 + 1), 0.0), 1.0));
  v6 = *a5;
  *(&v6 + 1) = result;
  DWORD2(v6) = *(a5 + 1);
  *a5 = v6;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_05113D80_F43B_424E_9B9F_5433C213980D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[4];
  result = *v1;
  v3 = *v1;
  v3.n128_f32[1] = *(arguments_buffer[2] + 4) + ((-*(arguments_buffer[2] + 4) - *(arguments_buffer[2] + 4)) * fminf(fmaxf(*(arguments_buffer[3] + 4), 0.0), 1.0));
  v3.n128_u32[2] = v1->n128_u64[1];
  *v1 = v3;
  return result;
}

void Main_NearbyPeerPaymentVFX_graph_57E6A463_5A4E_4D6D_A0AA_2E2AA4706DA8(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float a7, float *a8, float *a9, float *a10, float *a11)
{
  v19 = fminf(fmaxf(a5 - a6, 0.0), 1.0);
  vfx_script_clock_delta_time();
  v21 = v20;
  v22 = fmodf((a5 * -6.2832) - (0.0 - ((v19 * -0.4) + 0.4)), 6.2832);
  *a8 = a3 + ((a4 - a3) * v19);
  *a9 = a7 + ((1.0 - a7) * v19);
  *a10 = fmaxf(v21 + a5, 0.0);
  *a11 = v22;
}

void __vfx_script_NearbyPeerPaymentVFX_graph_57E6A463_5A4E_4D6D_A0AA_2E2AA4706DA8()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  v4 = *(arguments_buffer + 72);
  v5 = *(arguments_buffer + 80);
  v6 = **(arguments_buffer + 16);
  v7 = **(arguments_buffer + 24);
  v8 = *v1;
  v9 = **(arguments_buffer + 48);
  v10 = fminf(fmaxf(*v1 - **(arguments_buffer + 40), 0.0), 1.0);
  vfx_script_clock_delta_time();
  v12 = v11;
  v13 = fmodf((v8 * -6.2832) - (0.0 - ((v10 * -0.4) + 0.4)), 6.2832);
  *v2 = v6 + ((v7 - v6) * v10);
  *v3 = v9 + ((1.0 - v9) * v10);
  *v4 = fmaxf(v8 + v12, 0.0);
  *v5 = v13;
}

float Init_NearbyPeerPaymentVFX_graph_910111D1_EA01_4609_B4E1_DDE1A227D97A(float a1, double a2, float a3, uint64_t a4, uint64_t a5, float *a6)
{
  result = ((*(&a2 + 1) + *(&a2 + 1)) * a1) * a3;
  *a6 = result;
  a6[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_910111D1_EA01_4609_B4E1_DDE1A227D97A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  result = **(arguments_buffer + 32) * (**(arguments_buffer + 16) * (*(*(arguments_buffer + 24) + 4) + *(*(arguments_buffer + 24) + 4)));
  *v1 = result;
  v1[1] = result;
  return result;
}

int8x16_t Main_NearbyPeerPaymentVFX_graph_9F8F8EE9_0CF5_4093_80E9_7A652D5C66F4(float32x2_t a1, float32x2_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  *result.i8 = vmul_f32(a1, a2);
  result.i64[1] = vextq_s8(*a5, *a5, 8uLL).u64[0];
  *a5 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_9F8F8EE9_0CF5_4093_80E9_7A652D5C66F4()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  *result.i8 = vmul_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

float Spawn_NearbyPeerPaymentVFX_graph_CB22FE2D_AC12_4FD4_B89C_D8F217E27F7D(float a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1 < 3.0;
  v6 = 1.0;
  if (v5)
  {
    v6 = 0.25;
  }

  result = v6 * a2;
  *a5 = result;
  a5[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_CB22FE2D_AC12_4FD4_B89C_D8F217E27F7D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = 1.0;
  if (**(arguments_buffer + 16) < 3.0)
  {
    v2 = 0.25;
  }

  result = **(arguments_buffer + 24) * v2;
  *v1 = result;
  v1[1] = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_72260DDD_484E_4546_904F_DA4A46379C69(double a1, double a2, float a3, float a4, uint64_t a5, uint64_t a6, float *a7, int32x4_t *a8, float *a9)
{
  *&a2 = vmuls_lane_f32(a3, *&a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    *&a2 = 0.0;
  }

  v9 = vmuls_lane_f32(0.6, *&a1, 1);
  v10 = 0.6 * *&a1;
  *a8 = vdupq_lane_s32(*&a2, 0);
  v11 = fminf(v10, v9);
  result = fmaxf(v10, v9);
  *a7 = v11;
  a7[1] = result;
  *a9 = v11;
  a9[1] = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_72260DDD_484E_4546_904F_DA4A46379C69()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 64);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 40);
  *v5.i32 = (**(arguments_buffer + 32) * *(*(arguments_buffer + 24) + 4)) / v4;
  if (fabsf(v4) <= 0.00000011921)
  {
    *v5.i32 = 0.0;
  }

  v6 = vmuls_lane_f32(0.6, v3, 1);
  v7 = 0.6 * v3.f32[0];
  **(arguments_buffer + 56) = vdupq_lane_s32(v5, 0);
  v8 = fminf(v7, v6);
  result = fmaxf(v7, v6);
  *v1 = v8;
  v1[1] = result;
  *v2 = v8;
  v2[1] = result;
  return result;
}

void Spawn_NearbyPeerPaymentVFX_graph_172EF526_E458_43CB_8E13_B492FE748B25(const void *a1, unsigned int a2, float a3, float *a4)
{
  v4 = 0.0;
  if (a3 > 0.001)
  {
    v4 = (fminf(fmaxf((a3 + -0.3) / 0.9, 0.0), 1.0) * -600.0) + 600.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_NearbyPeerPaymentVFX_graph_172EF526_E458_43CB_8E13_B492FE748B25()
{
  result = vfx_script_get_arguments_buffer();
  v1 = **(result + 16);
  v2 = 0.0;
  if (v1 > 0.001)
  {
    v2 = (fminf(fmaxf((v1 + -0.3) / 0.9, 0.0), 1.0) * -600.0) + 600.0;
  }

  **(result + 24) = v2;
  return result;
}

int8x16_t Init_NearbyPeerPaymentVFX_graph_94B2D548_22ED_45EE_9A64_74CB3894F119(double a1, float a2, float a3, float a4, float32x2_t a5, double a6, float32x2_t a7, uint64_t a8, uint64_t a9, float *a10, int8x16_t *a11, int32x4_t *a12)
{
  v33 = *&a1;
  v34 = *a11;
  v19 = *(&a1 + 1);
  v20 = __sincosf_stret((a2 * 6.2832) + -1.5708);
  v21 = vmuls_lane_f32(a3 - (a3 * a4), a5, 1);
  v22 = a5;
  v23.i32[1] = HIDWORD(a6);
  __asm { FMOV            V5.2S, #1.0 }

  v29 = vminnm_f32(vmaxnm_f32(a7, 0), _D5);
  _D5.i32[0] = vadd_f32(v22, v22).u32[0];
  _D5.f32[1] = -a5.f32[1] - a5.f32[1];
  v22.f32[0] = -a5.f32[0];
  *result.i8 = vadd_f32(vmla_f32(v22, v29, _D5), vmul_n_f32(vmul_n_f32(v20, (v21 * 1.5) + ((v21 - (v21 * 1.5)) * fminf(fmaxf(a2 * 4.0, 0.0), 1.0))), *&a6));
  *v23.i32 = (a3 * a4) + (a3 * a4);
  *a12 = vdupq_lane_s32(v23, 0);
  *a10 = fminf(v33, v19);
  a10[1] = fmaxf(v33, v19);
  result.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
  *a11 = result;
  return result;
}

int8x16_t __vfx_script_NearbyPeerPaymentVFX_graph_94B2D548_22ED_45EE_9A64_74CB3894F119()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 72);
  v2 = *(arguments_buffer + 80);
  v3 = *(arguments_buffer + 88);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  v6 = **(arguments_buffer + 40);
  v21 = **(arguments_buffer + 48);
  HIDWORD(v7) = DWORD1(v21);
  LODWORD(v7) = **(arguments_buffer + 56);
  v22 = v7;
  LODWORD(v23) = **(arguments_buffer + 16);
  v8 = **(arguments_buffer + 64);
  v24 = *v2;
  LODWORD(v9) = HIDWORD(**(arguments_buffer + 16));
  v10 = __sincosf_stret((v4 * 6.2832) + -1.5708);
  v11 = vmuls_lane_f32(v5 - (v5 * v6), *&v21, 1);
  v12 = v21;
  v13.i32[1] = HIDWORD(v22);
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vminnm_f32(vmaxnm_f32(v8, 0), _D5);
  _D5.i32[0] = vadd_f32(v12, v12).u32[0];
  _D5.f32[1] = -*(&v21 + 1) - *(&v21 + 1);
  v12.f32[0] = -*&v21;
  *v13.i32 = (v5 * v6) + (v5 * v6);
  *result.i8 = vadd_f32(vmla_f32(v12, v19, _D5), vmul_n_f32(vmul_n_f32(v10, (v11 * 1.5) + ((v11 - (v11 * 1.5)) * fminf(fmaxf(v4 * 4.0, 0.0), 1.0))), *&v22));
  *v3 = vdupq_lane_s32(v13, 0);
  *v1 = fminf(v23, v9);
  v1[1] = fmaxf(v23, v9);
  result.i64[1] = __PAIR64__(1.0, vextq_s8(v24, v24, 8uLL).u32[0]);
  *v2 = result;
  return result;
}

float Init_NearbyPeerPaymentVFX_graph_29E74450_EE72_47ED_95B2_FB01045FE4EC(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v6 = *a6;
  *(&v6 + 2) = a2;
  *a6 = v6;
  *&v6 = fminf(*&a1, *(&a1 + 1));
  result = fmaxf(*&a1, *(&a1 + 1));
  *a5 = v6;
  *(a5 + 4) = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_29E74450_EE72_47ED_95B2_FB01045FE4EC()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  v3 = **(arguments_buffer + 16);
  v4 = *v2;
  DWORD2(v4) = **(arguments_buffer + 24);
  *v2 = v4;
  *&v4 = fminf(*&v3, *(&v3 + 1));
  result = fmaxf(*&v3, *(&v3 + 1));
  *v1 = v4;
  *(v1 + 4) = result;
  return result;
}

float32_t Init_NearbyPeerPaymentVFX_graph_92D02FA6_BFB5_4867_B063_921EAAFE87AA(double a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 *a5, void *a6)
{
  result = (*(&a1 + 1) + -2.5) + 0.2;
  v7 = &dword_1BE114970;
  v8 = vld1q_dup_f32(v7);
  v8.i32[0] = *a5;
  *a4 = vdup_n_s32(0x40BF5C29u);
  __asm { FMOV            V1.2S, #5.0 }

  *a6 = _D1;
  v8.f32[1] = result;
  *a5 = v8;
  return result;
}

__n128 __vfx_script_NearbyPeerPaymentVFX_graph_92D02FA6_BFB5_4867_B063_921EAAFE87AA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  result = *v1;
  v3 = (*(*(arguments_buffer + 16) + 4) + -2.5) + 0.2;
  **(arguments_buffer + 24) = vdup_n_s32(0x40BF5C29u);
  __asm { FMOV            V2.2S, #5.0 }

  *v2 = _D2;
  result.n128_f32[1] = v3;
  result.n128_u32[2] = -1105618534;
  result.n128_u32[3] = 1.0;
  *v1 = result;
  return result;
}

float Main_NearbyPeerPaymentVFX_graph_1E7187A9_6A89_4E27_96D0_916C073332AA(double a1, uint64_t a2, uint64_t a3, float *a4)
{
  result = (fminf(fmaxf(((*(&a1 + 1) + *(&a1 + 1)) + 2.4) / 4.8, 0.0), 1.0) * 6.2816) + -1.57;
  *a4 = result;
  return result;
}

float __vfx_script_NearbyPeerPaymentVFX_graph_1E7187A9_6A89_4E27_96D0_916C073332AA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = (fminf(fmaxf(((*(*(arguments_buffer + 16) + 4) + *(*(arguments_buffer + 16) + 4)) + 2.4) / 4.8, 0.0), 1.0) * 6.2816) + -1.57;
  **(arguments_buffer + 24) = result;
  return result;
}

float32x4_t ParticleInit_NearbyPeerPaymentVFX_particleInit_2(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float32x4_t *a6, float32x4_t *a7)
{
  v11 = vmulq_f32(a1, a1);
  v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
  v12 = vdupq_lane_s32(*v11.f32, 0);
  v12.i32[3] = 0;
  v13 = vrsqrteq_f32(v12);
  v14 = vmulq_f32(v13, vrsqrtsq_f32(v12, vmulq_f32(v13, v13)));
  v15 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v11.f32[0] != 0.0)), 0x1FuLL));
  v15.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v15), vmulq_f32(vmulq_f32(v14, vrsqrtsq_f32(v12, vmulq_f32(v14, v14))), a1), a1);
  v16 = vfx_script_clock_simulation_index();
  v17 = a5 + a4;
  v18 = 277803737 * (((747796405 * (v16 + v17) - 347334518) >> (((747796405 * (v16 + v17) - 347334518) >> 28) + 4)) ^ (747796405 * (v16 + v17) - 347334518));
  v23 = vmulq_n_f32(v22, ((COERCE_FLOAT((v18 >> 31) ^ (v18 >> 9) | 0x3F800000) + -1.0) * 1.6) + 0.4);
  v19 = vfx_script_clock_simulation_index();
  v20 = 277803737 * (((747796405 * (v19 + v17) + 1359517557) >> (((747796405 * (v19 + v17) + 1359517557) >> 28) + 4)) ^ (747796405 * (v19 + v17) + 1359517557));
  result = vmulq_n_f32(a2, ((COERCE_FLOAT((v20 >> 31) ^ (v20 >> 9) | 0x3F800000) + -1.0) * 0.6) + 0.0);
  *a6 = v23;
  *a7 = result;
  return result;
}

__n128 ParticleInit_NearbyPeerPaymentVFX_particleInit_233(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float32x4_t *a6, __n128 *a7, __n128 *a8, float32x4_t *a9)
{
  v41 = *a7;
  v15 = vfx_script_clock_simulation_index();
  v16 = a5 + a4;
  v17 = 277803737 * (((747796405 * (v15 + v16) + 1340069426) >> (((747796405 * (v15 + v16) + 1340069426) >> 28) + 4)) ^ (747796405 * (v15 + v16) + 1340069426));
  *&v18 = ((COERCE_FLOAT((v17 >> 31) ^ (v17 >> 9) | 0x3F800000) + -1.0) * 0.2) + -0.1;
  *(&v18 + 1) = *&v18;
  v19 = vaddq_f32(a1, v18);
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  v21 = vdupq_lane_s32(*v20.f32, 0);
  v21.i32[3] = 0;
  v22 = vrsqrteq_f32(v21);
  v23 = vmulq_f32(v22, vrsqrtsq_f32(v21, vmulq_f32(v22, v22)));
  v24 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v20.f32[0] != 0.0)), 0x1FuLL));
  v24.i32[3] = 0;
  v38 = vbslq_s8(vcltzq_s32(v24), vmulq_f32(vmulq_f32(v23, vrsqrtsq_f32(v21, vmulq_f32(v23, v23))), v19), v19);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v25 + v16) - 347334518) >> (((747796405 * (v25 + v16) - 347334518) >> 28) + 4)) ^ (747796405 * (v25 + v16) - 347334518));
  v39 = vmulq_n_f32(v38, (((COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0) * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0)) * 7.0) + 1.0);
  v27 = vfx_script_clock_simulation_index();
  v28 = 277803737 * (((747796405 * (v27 + v16) + 1551328691) >> (((747796405 * (v27 + v16) + 1551328691) >> 28) + 4)) ^ (747796405 * (v27 + v16) + 1551328691));
  *&v36 = (COERCE_FLOAT((v28 >> 31) ^ (v28 >> 9) | 0x3F800000) + -1.0) + 5.0;
  v29 = vfx_script_clock_simulation_index();
  v30 = 277803737 * (((747796405 * (v29 + v16) - 97178991) >> (((747796405 * (v29 + v16) - 97178991) >> 28) + 4)) ^ (747796405 * (v29 + v16) - 97178991));
  v35 = fminf(fmaxf(((COERCE_FLOAT((v30 >> 31) ^ (v30 >> 9) | 0x3F800000) + -1.0) * 0.006) + -0.004, 0.0), 1.0);
  v31 = vfx_script_clock_simulation_index();
  v32 = 277803737 * (((747796405 * (v31 + v16) + 1359517557) >> (((747796405 * (v31 + v16) + 1359517557) >> 28) + 4)) ^ (747796405 * (v31 + v16) + 1359517557));
  *a6 = v39;
  *a8 = a2;
  *a9 = vmulq_n_f32(a2, ((COERCE_FLOAT((v32 >> 31) ^ (v32 >> 9) | 0x3F800000) + -1.0) * 0.6) + 0.0);
  v33.n128_u64[0] = __PAIR64__(LODWORD(v35), v36);
  result = v41;
  v33.n128_u64[1] = v41.n128_u64[1];
  *a7 = v33;
  return result;
}

float32x4_t ParticleInit_NearbyPeerPaymentVFX_particleInit_244(float32x4_t a1, uint64_t a2, int a3, int a4, float32x4_t *a5)
{
  v8 = vfx_script_clock_simulation_index();
  v9 = 277803737 * (((747796405 * (a4 + a3 + v8) + 1359517557) >> (((747796405 * (a4 + a3 + v8) + 1359517557) >> 28) + 4)) ^ (747796405 * (a4 + a3 + v8) + 1359517557));
  result = vmulq_n_f32(a1, ((COERCE_FLOAT((v9 >> 31) ^ (v9 >> 9) | 0x3F800000) + -1.0) * 0.85) + 0.0);
  *a5 = result;
  return result;
}

int8x16_t ParticleUpdate_NearbyPeerPaymentVFX_particleUpdate_148(float32x2_t a1, float32x2_t a2, float a3, float a4, uint64_t a5, uint64_t a6, int8x16_t *a7, float *a8)
{
  v8 = *a7;
  v9 = vmuls_lane_f32(a3, a2, 1) / a4;
  if (fabsf(a4) <= 0.00000011921)
  {
    v9 = 0.0;
  }

  *result.i8 = vmul_f32(a1, a2);
  *a8 = v9;
  result.i64[1] = vextq_s8(v8, v8, 8uLL).u64[0];
  *a7 = result;
  return result;
}

void sub_1BDB23054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB23BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2B010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDB2BA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2C234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2ED78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB2F8E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_0()
{
  if (qword_1EBD682D8 != -1)
  {
    dispatch_once(&qword_1EBD682D8, &__block_literal_global_39);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_1 = result;
  _MergedGlobals_616 = CNAvatarViewFunction_0;
  return result;
}

Class initCNAvatarCardController_0()
{
  if (qword_1EBD682D8 != -1)
  {
    dispatch_once(&qword_1EBD682D8, &__block_literal_global_39);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBD682E0 = result;
  off_1EE98A640 = CNAvatarCardControllerFunction_0;
  return result;
}

void sub_1BDB30A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB31408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB327CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __PKAccountBillPaymentPrimaryButtonTintColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v2 = ;

  return v2;
}

id __PKAccountBillPaymentPrimaryButtonTextColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

uint64_t newInstallmentsForAccount(void *a1, void **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [a1 creditDetails];
  v4 = [v3 installmentPlans];

  if (a2)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v24 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v23 = 0;
  v8 = *v26;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      if ([v10 state] == 2)
      {
        v11 = [v10 payments];
        v12 = [v11 firstObject];

        v13 = [v12 statementIdentifier];

        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = [v12 amountPaid];
        v15 = [MEMORY[0x1E696AB90] zero];
        if (PKEqualObjects())
        {
        }

        else
        {
          v16 = PKForceNewInstallmentBillPaymentScreen();

          if ((v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (![v10 userViewedIntroduction])
        {
          if (!a2)
          {

            v19 = 1;
            v20 = v5;
            goto LABEL_29;
          }

LABEL_20:
          [v24 addObject:v10];
          v23 = 1;
LABEL_21:

          continue;
        }

        v17 = PKForceNewInstallmentBillPaymentScreen();
        v18 = v17;
        if (a2 && (v17 & 1) != 0)
        {
          goto LABEL_20;
        }

        if (v18)
        {
          v23 = 1;
          goto LABEL_27;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_27:

  if (a2)
  {
    v21 = [v24 copy];
    v20 = *a2;
    *a2 = v21;
    v19 = v23;
LABEL_29:
  }

  else
  {
    v19 = v23;
  }

  return v19 & 1;
}

void sub_1BDB35C2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_1BDB389A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB39F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3A608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3AF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createDateFormatter()
{
  v0 = createBaseDateFormatter();
  [v0 setLocalizedDateFormatFromTemplate:@"MMMM d"];

  return v0;
}

BOOL accountCurrentStatementIsLastMonthsStatement(void *a1)
{
  v1 = a1;
  v25 = [v1 creditDetails];
  v2 = [v25 accountSummary];
  v3 = [v2 balanceSummary];
  v24 = v2;
  v4 = [v2 currentStatement];
  v5 = [v4 openingDate];
  v6 = [v4 closingDate];
  v7 = PKDatesMidpoint();

  v8 = [v3 openingDate];
  v9 = [v3 closingDate];
  v10 = PKDatesMidpoint();

  v11 = objc_alloc(MEMORY[0x1E695DEE8]);
  v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v13 = [v1 creditDetails];

  v14 = [v13 productTimeZone];
  [v12 setTimeZone:v14];

  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setMonth:-1];
  v16 = [v12 dateByAddingComponents:v15 toDate:v10 options:0];
  v17 = [v12 components:12 fromDate:v16];
  v18 = v7;
  v19 = [v12 components:12 fromDate:v7];
  v20 = [v17 month];
  if (v20 == [v19 month])
  {
    v21 = [v17 year];
    v22 = v21 == [v19 year];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id createBaseDateFormatter()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v0 setLocale:v1];

  [v0 setFormattingContext:1];

  return v0;
}

void sub_1BDB3CE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3DD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB3FBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB40268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB40F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB410F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initNPKIDVRemoteDeviceSession()
{
  if (qword_1EBD682F0 != -1)
  {
    dispatch_once(&qword_1EBD682F0, &__block_literal_global_42);
  }

  result = objc_getClass("NPKIDVRemoteDeviceSession");
  _MergedGlobals_1_2 = result;
  getNPKIDVRemoteDeviceSessionClass[0] = NPKIDVRemoteDeviceSessionFunction;
  return result;
}

void *__LoadNanoPassKit_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_0 = result;
  return result;
}

void sub_1BDB44A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB45654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB45EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB465F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v64 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v65 - 248), 8);
  _Block_object_dispose((v65 - 200), 8);
  _Block_object_dispose((v65 - 152), 8);
  _Unwind_Resume(a1);
}

void __PKLookupAppStoreApplications_block_invoke_4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = a1[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PKLookupAppStoreApplications_block_invoke_5;
  v16[3] = &unk_1E80142B8;
  v12 = a1[6];
  v19 = v9;
  v20 = v12;
  v17 = v7;
  v18 = v8;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  [v10 _cacheLockupsWithRequests:v11 withCompletionBlock:v16];
}

void __PKLookupAppStoreApplications_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    (*(*(a1 + 48) + 16))();
  }
}

void __PKLookupAppStoreApplications_block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (([a2 isCanceled] & 1) == 0)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) containsObject:*(a1 + 32)])
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __PKLookupAppStoreApplications_block_invoke_7;
      v12[3] = &unk_1E80137C8;
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v15 = v8;
      v14 = v7;
      [v9 _lockupDictionaryForRequest:v10 includingKeys:v11 withCompletionBlock:v12];
    }

    else
    {
      (*(v8 + 2))(v8, v7, 0);
    }
  }
}

uint64_t __PKLookupAppStoreApplications_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[PKAMSLookupItem alloc] initWithDict:v4];

  [v3 safelyAddObject:v5];
  v6 = *(*(a1 + 48) + 16);

  return v6();
}